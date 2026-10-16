if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP TBC Dungeonführer (H)
<< Horde
#name 1-6 Durotar
#displayname 1-7 Durotar << Orc !Warrior !Hunter !Shaman !Warlock/Troll !Warrior !Hunter !Shaman
#displayname 1-8 Durotar << Orc Warrior/Troll Warrior
#version 7
#subgroup RestedXP Horde 1-30
#defaultfor Orc/Troll
#next 6-10 Eversong Woods << !Shaman !Hunter !Warlock
#next 6-10 Durotar << Shaman/Hunter/Warlock

step << !Orc !Troll
    #completewith next
    +|cRXP_WARN_Ihr habt einen Leitfaden ausgewählt, der für Orks und Trolle bestimmt ist. Ihr solltet dieselbe Startzone wählen, in der ihr startet|r
step
    .goto Durotar,43.29,68.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kaltunk|r
    .accept 4641 >>Akzeptiert die Quest Euer Platz in der Welt
    .target Kaltunk
step << Warrior/Shaman/Warlock
    #completewith next
    +|cRXP_WARN_Tötet |cRXP_ENEMY_Scheckiger Eber|r. Sammelt Beute von ihnen bis ihr 35 Kupfer Wert an Verkaufsgegenständen habt (einschließlich eurer Rüstung)|r << Warlock
    +|cRXP_WARN_Tötet |cRXP_ENEMY_Scheckiger Eber|r. Sammelt Beute von ihnen bis ihr 10 Kupfer Wert an Verkaufsgegenständen habt (einschließlich eurer Rüstung)|r << Warrior/Shaman
    .goto Durotar,43.85,71.73,30,0 << Warlock
    .goto Durotar,44.19,65.34,30,0 << Warrior/Shaman
    .mob Mottled Boar
    .money >0.01
step << Warlock
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ruzan|r
    .accept 1485 >>Nehmt die Quest Üble Familiare an
    .target Ruzan
step << Warrior/Shaman
    .goto Durotar,42.59,67.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duokna|r
    .vendor >> Verkauft Müll
    .target Duokna
    .money >0.01
step
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gornek|r
    .turnin 4641 >>Gebt die Quest Euer Platz in der Welt ab
    .accept 788 >>Akzeptiert die Quest Scharfe Zähne
    .target Gornek
step << Warrior/Shaman
    .goto Durotar,42.28,68.48,10,0
    .goto Durotar,42.89,69.44 << Warrior
    .goto Durotar,42.39,69.00 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shikrik|r << Shaman
    .train 6673 >>Erlernt |T132333:0|t[Schlachtruf] << Warrior
    .train 8017 >>Erlernen |T136086:0|t[Waffe des Felsbeißers] << Shaman
    .target Frang << Warrior
    .target Shikrik << Shaman
step << Warlock
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Reist zu |cRXP_FRIENDLY_Hraug|r
    .money >0.01
step << Warlock
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hraug|r
    .vendor >>Verkauft Müll
    .target Hraug
    .money >0.01
step << Warlock
    #completewith Nartok
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>Reisen zu |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nartok|r
    .train 348 >>Erlernt |T135817:0|t[Feuerbrand]
    .target Nartok
step << !Warrior !Rogue
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihr|r << !Hunter !Shaman
    >>|cRXP_BUY_Kauft|r |T132382:0|t[Rauer Pfeil] |cRXP_BUY_von ihr|r << Hunter
    .collect 159,30,6394,1 << !Hunter !Shaman --Refreshing Spring Water (30)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .target Duokna
    .money <0.015 << !Hunter
    .money <0.0040 << Hunter
step << Warlock
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihr|r
    .collect 159,5,6394,1 --Refreshing Spring Water (5)
    .target Duokna
    .money <0.0025
step << Warlock
    #completewith next
    .goto Durotar,43.57,67.28,35,0
    >>Tötet |cRXP_ENEMY_Scheckige Eber|r auf dem Weg zu Koven der Brennenden Klinge
    >>|cRXP_WARN_Versucht, Stufe 2 zu erreichen, bevor ihr dort ankommt|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    .goto Durotar,45.30,56.42,100 >> Reist zum Koven der Brennenden Klinge
    .isOnQuest 1485
step << Warlock
    #loop
	.goto Durotar,43.87,58.42,0
	.goto Durotar,43.87,58.42,35,0
	.goto Durotar,44.53,58.62,35,0
	.goto Durotar,45.18,58.42,35,0
	.goto Durotar,45.83,58.59,35,0
	.goto Durotar,45.79,57.43,35,0
	.goto Durotar,46.46,57.57,35,0
	.goto Durotar,47.19,57.12,35,0
	.goto Durotar,46.21,56.69,35,0
	.goto Durotar,46.28,56.11,35,0
	.goto Durotar,45.65,56.90,35,0
	.goto Durotar,45.35,56.32,35,0
	.goto Durotar,44.77,56.87,35,0
	.goto Durotar,44.58,56.10,35,0
	.goto Durotar,44.27,56.59,35,0
	.goto Durotar,43.85,55.52,35,0
    >>Tötet |cRXP_ENEMY_Üble Familiare|r. Plündert sie für |cRXP_LOOT_Kopf eines schändlichen Familiars|r
    .complete 1485,1 --Vile Familiar Head (6)
    .mob Vile Familiar
step
    #completewith Sarkoth
    .goto Durotar,43.57,67.28,35,0 << !Warlock
    .goto Durotar,43.89,65.84,45,0 << !Warlock
    >>Tötet |cRXP_ENEMY_Scheckiger Eber|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step
    .goto Durotar,40.59,62.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hana'zua|r
    .accept 790 >>Akzeptiert die Quest Sarkoth
    .target Hana'zua
step
    #label Sarkoth
    .goto Durotar,40.60,66.80
    >>Tötet |cRXP_ENEMY_Sarkoth|r. Plündert ihn für |cRXP_LOOT_Sarkoths zerstückelte Klaue|r
    .complete 790,1 --Sarkoth's Mangled Claw (1)
    .mob Sarkoth
step
    .goto Durotar,40.59,62.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hana'zua|r
    .turnin 790 >>Gebt die Quest Sarkoth ab
    .accept 804 >>Akzeptiert die Quest Sarkoth
    .target Hana'zua
step
    #loop
    .goto Durotar,41.30,65.03,0
	.goto Durotar,41.30,65.03,35,0
	.goto Durotar,41.92,64.74,35,0
	.goto Durotar,42.66,64.92,35,0
	.goto Durotar,43.31,65.02,35,0
	.goto Durotar,43.90,65.96,35,0
	.goto Durotar,44.54,65.96,35,0
	.goto Durotar,45.16,65.77,35,0
	.goto Durotar,45.72,65.93,35,0
	.goto Durotar,45.72,65.04,35,0
	.goto Durotar,45.21,63.95,35,0
	.goto Durotar,45.83,63.01,35,0
	.goto Durotar,45.81,62.17,35,0
	.goto Durotar,45.78,61.14,35,0
	.goto Durotar,45.15,60.20,35,0
	.goto Durotar,44.50,59.45,35,0
	.goto Durotar,43.86,60.43,35,0
	.goto Durotar,43.07,60.24,35,0
	.goto Durotar,42.58,60.09,35,0
	.goto Durotar,42.02,61.19,35,0
	.goto Durotar,42.02,62.15,35,0
	.goto Durotar,42.00,62.92,35,0
	.goto Durotar,41.99,64.03,35,0
    >>Tötet |cRXP_ENEMY_Scheckiger Eber|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    #xprate <1.5
    #loop
	.goto Durotar,41.30,65.03,35,0
	.goto Durotar,41.92,64.74,35,0
	.goto Durotar,42.66,64.92,35,0
	.goto Durotar,43.31,65.02,35,0
	.goto Durotar,43.90,65.96,35,0
	.goto Durotar,44.54,65.96,35,0
	.goto Durotar,45.16,65.77,35,0
	.goto Durotar,45.72,65.93,35,0
	.goto Durotar,45.72,65.04,35,0
	.goto Durotar,45.21,63.95,35,0
	.goto Durotar,45.83,63.01,35,0
	.goto Durotar,45.81,62.17,35,0
	.goto Durotar,45.78,61.14,35,0
	.goto Durotar,45.15,60.20,35,0
	.goto Durotar,44.50,59.45,35,0
	.goto Durotar,43.86,60.43,35,0
	.goto Durotar,43.07,60.24,35,0
	.goto Durotar,42.58,60.09,35,0
	.goto Durotar,42.02,61.19,35,0
	.goto Durotar,42.02,62.15,35,0
	.goto Durotar,42.00,62.92,35,0
	.goto Durotar,41.99,64.03,35,0
    .xp 3+850 >> Grinde to 850+/1400xp on the way back to town
    .mob Mottled Boar
step << !Rogue !Mage
    #xprate >1.49
    #loop
	.goto Durotar,41.30,65.03,35,0
	.goto Durotar,41.92,64.74,35,0
	.goto Durotar,42.66,64.92,35,0
	.goto Durotar,43.31,65.02,35,0
	.goto Durotar,43.90,65.96,35,0
	.goto Durotar,44.54,65.96,35,0
	.goto Durotar,45.16,65.77,35,0
	.goto Durotar,45.72,65.93,35,0
	.goto Durotar,45.72,65.04,35,0
	.goto Durotar,45.21,63.95,35,0
	.goto Durotar,45.83,63.01,35,0
	.goto Durotar,45.81,62.17,35,0
	.goto Durotar,45.78,61.14,35,0
	.goto Durotar,45.15,60.20,35,0
	.goto Durotar,44.50,59.45,35,0
	.goto Durotar,43.86,60.43,35,0
	.goto Durotar,43.07,60.24,35,0
	.goto Durotar,42.58,60.09,35,0
	.goto Durotar,42.02,61.19,35,0
	.goto Durotar,42.02,62.15,35,0
	.goto Durotar,42.00,62.92,35,0
	.goto Durotar,41.99,64.03,35,0
    .xp 3+980 >> Grind to 980+/1400xp on the way back to town (NOT TRANSLATED IN :deDE YET)
    .mob Mottled Boar
step << Warlock
    #completewith Ruzan2
	>>|cRXP_WARN_Farmt |cRXP_ENEMY_Scheckiger Eber|r. Plündert sie, bis ihr Gegenstände im Wert von 1 Silber habt|r
    .mob Mottled Boar
	.money >0.01
step << Rogue
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duokna|r
    .vendor >> Verkauft Müll
    .target Duokna
step << Warlock
    #label Ruzan2
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ruzan|r
    .turnin 1485 >>Gebt die Quest Üble Familiare ab
    .accept 1499 >>Nehmt die Quest Üble Familiare an
    .target Ruzan
step << Warlock
    #completewith Gornek2
    .cast 688 >>|cRXP_WARN_Wirkt|r |T136218:0|t[Wichtel beschwören]
step << Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zureetha|r
    .turnin 1499 >>Gebt die Quest Üble Familiare ab
    .accept 794 >>Nehmt die Quest Medaillon der Burning Blade an
    .target Zureetha Fargaze
step
    #label Gornek2
    .goto Durotar,42.28,68.48,12,0 << Warlock
    .goto Durotar,42.29,68.39,12,0 << !Warlock
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gornek|r
    .turnin 788,2 >>Gebt die Quest Scharfe Zähne ab << Shaman
    .turnin 788 >>Gebt die Quest Scharfe Zähne ab << !Shaman
    .accept 789 >>Akzeptiert die Quest Stich des Skorpiden
    .accept 2383 >>Akzeptiert die Quest Einfaches Pergament << Orc Warrior
    .accept 3065 >>Akzeptiert die Quest Einfache Schrifttafel << Troll Warrior
    .accept 3082 >>Akzeptiert die Quest Geätzte Schrifttafel << Troll Hunter
    .accept 3083 >>Akzeptiert die Quest Verschlüsselte Schrifttafel << Troll Rogue
    .accept 3084 >>Akzeptiert die Quest Mit Runen beschriftete Schrifttafel << Troll Shaman
    .accept 3085 >>Akzeptiert die Quest Geheiligte Schrifttafel << Troll Priest
    .accept 3086 >>Akzeptiert die Quest Glyphen-Schrifttafel << Troll Mage
    .accept 3087 >>Akzeptiert die Quest Geätztes Pergament << Orc Hunter
    .accept 3088 >>Akzeptiert die Quest Verschlüsseltes Pergament << Orc Rogue
    .accept 3089 >>Akzeptiert die Quest Mit Runen beschriftetes Pergament << Orc Shaman
    .accept 3090 >>Akzeptiert die Quest Besudeltes Pergament << Orc Warlock
    .turnin 804,1 >>Gebt die Quest Sarkoth ab << Shaman
    .turnin 804 >>Gebt die Quest Sarkoth ab << !Shaman
    .target Gornek
step << Rogue
    #completewith Rwag
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>Reist zu |cRXP_FRIENDLY_Rwag|r
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Gebt die Quest Verschlüsselte Schrifttafel ab << Troll Rogue
    .turnin 3088 >>Gebt die Quest Verschlüsseltes Pergament ab << Orc Rogue
    .train 53 >> Erlernt |T132090:0|t[Meucheln]
    .target Rwag
    .money <0.04
    .xp <4,1
step << Rogue
    #label Rwag
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Gebt die Quest Verschlüsselte Schrifttafel ab << Troll Rogue
    .turnin 3088 >>Gebt die Quest Verschlüsseltes Pergament ab << Orc Rogue
    .target Rwag
step << Warlock
    #completewith Nartok2
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>Reisen zu |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Reist zu |cRXP_FRIENDLY_Hraug|r
    .money >0.01
step << Warlock
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hraug|r
    .vendor >>Verkauft Müll
    .target Hraug
    .money >0.01
step << Warlock
    #label Nartok2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Gebt die Quest Besudeltes Pergament ab
    .train 172 >> Erlernt |T136118:0|t[Verderbnis]
    .target Nartok
step
    #label Galgar
    .goto Durotar,42.73,67.23,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Galgar|r
    .accept 4402 >>Akzeptiert die Quest Galgars Kaktusapfel Surprise
    .target Galgar
step << !Rogue
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihr|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Kauft|r |T132382:0|t[Rauer Pfeil] |cRXP_BUY_von ihr|r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Verkauft Müll
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << Shaman
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Abgeben Mit Runen beschriftete Schrifttafel << Troll
    .turnin 3089 >>Abgeben: Mit Runen beschriftetes Pergament << Orc
    .target Shikrik
step << Mage
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Abgeben Glyphen-Schrifttafel << Troll
    .train 1459 >> Erlernt |T135932:0|t[Arkane Intelligenz]
    .target Mai'ah
step << Hunter
    #requires Galgar
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Gebt die Quest Geätzte Schrifttafel ab << Troll
    .turnin 3087 >>Gebt die Quest Geätzte Pergament ab << Orc
    .target Jen'shan
step << Warrior
    #requires Galgar
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Gebt die Quest Einfaches Pergament ab << Orc
    .turnin 3065 >>Gebt die Quest Einfache Schrifttafel ab << Troll
    .target Frang
step << Priest
    #requires Galgar
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
    .turnin 3085 >>Gebt die Quest Geheiligte Schrifttafel ab
    .target Ken'jai
step << !Warlock
    #requires Galgar
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zureetha|r
    .accept 792 >>Nehmt die Quest Üble Familiare an
    .target Zureetha Fargaze
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thazz'ril|r
    .accept 5441 >>Annehmen Faule Peons
    .target Foreman Thazz'ril
step
    #completewith Sting
    >>Beute |cRXP_LOOT_Kaktusapfel|r in der Nähe der Kakteen
    .complete 4402,1 --Cactus Apple (10)
step
    #completewith Tails
    .goto Durotar,44.98,69.13,45,0
    .goto Durotar,45.64,65.70,45,0
    .goto Durotar,47.37,65.67,45,0
    >>|cRXP_WARN_Benutzt den|r |T133486:0|t[Großknecht-Totschläger] |cRXP_WARN_auf die schlafenden |r|cRXP_FRIENDLY_Faulen Peons|r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step << !Warlock
    #completewith Imps
    >>Tötet |cRXP_ENEMY_Skorpidarbeiter|r. Plündert sie für |cRXP_LOOT_Skorpidarbeiterschwanz|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step << !Warlock
    #label Imps
    #loop
	.goto Durotar,43.87,58.42,0
	.goto Durotar,43.87,58.42,35,0
	.goto Durotar,44.53,58.62,35,0
	.goto Durotar,45.18,58.42,35,0
	.goto Durotar,45.83,58.59,35,0
	.goto Durotar,45.79,57.43,35,0
	.goto Durotar,46.46,57.57,35,0
	.goto Durotar,47.19,57.12,35,0
	.goto Durotar,46.21,56.69,35,0
	.goto Durotar,46.28,56.11,35,0
	.goto Durotar,45.65,56.90,35,0
	.goto Durotar,45.35,56.32,35,0
	.goto Durotar,44.77,56.87,35,0
	.goto Durotar,44.58,56.10,35,0
	.goto Durotar,44.27,56.59,35,0
	.goto Durotar,43.85,55.52,35,0
    >>Tötet |cRXP_ENEMY_Üble Familiare|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step
    #label Tails
    #loop
	.goto Durotar,43.26,58.28,0
	.goto Durotar,43.26,58.28,35,0
	.goto Durotar,42.81,58.41,35,0
	.goto Durotar,41.90,58.35,35,0
	.goto Durotar,41.97,59.20,35,0
	.goto Durotar,41.36,60.35,35,0
	.goto Durotar,40.66,61.27,35,0
	.goto Durotar,40.07,61.35,35,0
	.goto Durotar,39.42,61.29,35,0
	.goto Durotar,39.46,62.17,35,0
	.goto Durotar,39.55,63.10,35,0
	.goto Durotar,40.13,64.04,35,0
	.goto Durotar,40.84,64.06,35,0
	.goto Durotar,40.74,65.86,35,0
	.goto Durotar,39.93,66.03,35,0
	.goto Durotar,40.04,66.99,35,0
	.goto Durotar,40.09,67.66,35,0
	.goto Durotar,40.13,68.50,35,0
	.goto Durotar,40.72,68.55,35,0
	.goto Durotar,41.30,67.84,35,0
	.goto Durotar,41.37,66.72,35,0
	.goto Durotar,41.89,66.05,35,0
	.goto Durotar,41.27,65.71,35,0
	.goto Durotar,41.36,64.07,35,0
	.goto Durotar,41.33,63.12,35,0
	.goto Durotar,41.35,61.98,35,0
	.goto Durotar,41.49,61.25,35,0
	.goto Durotar,41.90,60.24,35,0
	.goto Durotar,42.51,59.34,35,0
	.goto Durotar,43.08,59.62,35,0
	.goto Durotar,43.91,59.33,35,0
	.goto Durotar,45.15,59.46,35,0
	.goto Durotar,45.81,59.30,35,0
	.goto Durotar,45.85,60.34,35,0
	.goto Durotar,46.46,61.11,35,0
	.goto Durotar,47.09,62.24,35,0
	.goto Durotar,47.08,63.15,35,0
	.goto Durotar,47.14,64.08,35,0
	.goto Durotar,47.58,64.04,35,0
	.goto Durotar,47.08,63.15,35,0
	.goto Durotar,47.09,62.24,35,0
	.goto Durotar,46.90,61.15,35,0
	.goto Durotar,46.98,60.18,35,0
	.goto Durotar,47.07,59.34,35,0
	.goto Durotar,46.47,58.28,35,0
	.goto Durotar,45.81,59.30,35,0
	.goto Durotar,45.15,59.46,35,0
	.goto Durotar,43.91,59.33,35,0
    >>Tötet |cRXP_ENEMY_Skorpidarbeiter|r. Plündert sie für |cRXP_LOOT_Skorpidarbeiterschwanz|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step
    #loop
	.goto Durotar,44.98,69.13,0
	.goto Durotar,45.64,65.70,35,0
	.goto Durotar,47.37,65.67,35,0
	.goto Durotar,46.74,60.66,35,0
	.goto Durotar,47.09,57.90,35,0
	.goto Durotar,43.90,57.79,35,0
	.goto Durotar,42.70,57.25,35,0
	.goto Durotar,41.27,58.95,35,0
	.goto Durotar,40.91,60.41,35,0
	.goto Durotar,38.83,61.84,35,0
	.goto Durotar,44.98,69.13,35,0
    >>|cRXP_WARN_Benutzt den|r |T133486:0|t[Großknecht-Totschläger] |cRXP_WARN_auf die schlafenden |r|cRXP_FRIENDLY_Faulen Peons|r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step
    #xprate <1.5
    #loop
	.goto Durotar,41.30,65.03,0
	.goto Durotar,41.92,64.74,35,0
	.goto Durotar,42.66,64.92,35,0
	.goto Durotar,43.31,65.02,35,0
	.goto Durotar,43.90,65.96,35,0
	.goto Durotar,44.54,65.96,35,0
	.goto Durotar,45.16,65.77,35,0
	.goto Durotar,45.72,65.93,35,0
	.goto Durotar,45.72,65.04,35,0
	.goto Durotar,45.21,63.95,35,0
	.goto Durotar,45.83,63.01,35,0
	.goto Durotar,45.81,62.17,35,0
	.goto Durotar,45.78,61.14,35,0
	.goto Durotar,45.15,60.20,35,0
	.goto Durotar,44.50,59.45,35,0
	.goto Durotar,43.86,60.43,35,0
	.goto Durotar,43.07,60.24,35,0
	.goto Durotar,42.58,60.09,35,0
	.goto Durotar,42.02,61.19,35,0
	.goto Durotar,42.02,62.15,35,0
	.goto Durotar,42.00,62.92,35,0
	.goto Durotar,41.99,64.03,35,0
	.goto Durotar,41.30,65.03,35,0
    .xp 4 >> Farmt bis Stufe 4
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Gebt die Quest Galgars Kaktusapfel Surprise ab
    .target Galgar
    .isQuestComplete 4402
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihr|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Kauft|r |T132382:0|t[Rauer Pfeil] |cRXP_BUY_von ihr|r << Hunter
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Verkauft Müll
    .target Duokna
    .itemcount 159,<5 << !Rogue !Warrior !Hunter !Shaman
    .itemcount 2512,<600 << Hunter
step
    #label Sting
    .goto Durotar,42.29,68.39,12,0
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gornek|r
    .turnin 789 >>Gebt die Quest Stich des Skorpiden ab
    .target Gornek
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shikrik|r und |cRXP_FRIENDLY_Canaga|r
    .train 8042 >> Erlernt |T136026:0|t[Erdschock]
    .target +Shikrik
    .goto Durotar,42.39,69.00
    .accept 1516 >>Akzeptiert die Quest Ruf der Erde
    .target +Canaga Earthcaller
    .goto Durotar,42.40,69.17
step << Mage
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mai'ah|r
    .train 116 >> Erlernt |T135846:0|t[Frostblitz]
    .target Mai'ah
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Erlernt |T135987:0|t[Machtwort: Seelenstärke]
    .train 589 >> Erlernt |T136207:0|t[Schattenwort: Schmerz]
    .money <0.011
    .target Ken'jai
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Erlernt |T136207:0|t[Schattenwort: Schmerz]
    .money <0.01
    .target Ken'jai
step << !Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zureetha|r
    .turnin 792 >>Gebt die Quest Üble Familiare ab
    .accept 794 >>Nehmt die Quest Medaillon der Burning Blade an
    .target Zureetha Fargaze
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >> Erlernt |T132204:0|t[Schlangengift]
    .target Jen'shan
    .xp <4,1
    .money <0.01
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r
    .train 100 >> Erlernt |T132337:0|t[Sturmangriff]
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Frang
    .money <0.02
    .train 772,1
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Frang
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r
    .train 100 >> Erlernt |T132337:0|t[Sturmangriff]
    .target Frang
    .money <0.01
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 5441 >>Gibt die Quest Faule Peons ab
    .accept 6394 >>Annehmen Thazz'rils Hacke
    .target Foreman Thazz'ril
step
    #xprate <1.5
    #completewith next
    .xp 4+1720 >> Farmt bis 1720+/2100xp
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
    .isOnQuest 4402
step
    #loop
	.goto Durotar,44.67,64.92,0
	.goto Durotar,43.45,62.96,25,0
	.goto Durotar,43.82,62.72,25,0
	.goto Durotar,44.85,61.54,25,0
	.goto Durotar,44.88,59.66,25,0
	.goto Durotar,44.61,58.20,25,0
	.goto Durotar,45.46,58.49,25,0
	.goto Durotar,45.93,60.62,25,0
	.goto Durotar,46.87,60.36,25,0
	.goto Durotar,47.28,62.80,25,0
	.goto Durotar,46.08,62.98,25,0
	.goto Durotar,44.67,64.92,25,0
    >>Beute |cRXP_LOOT_Kaktusapfel|r in der Nähe der Kakteen
    .complete 4402,1 --Cactus Apple (10)
step << !Warrior !Rogue !Shaman
    #xprate <1.5
    #optional
    #loop
	.goto Durotar,43.87,58.42,0
	.goto Durotar,44.53,58.62,25,0
	.goto Durotar,45.18,58.42,25,0
	.goto Durotar,45.83,58.59,25,0
	.goto Durotar,45.79,57.43,25,0
	.goto Durotar,46.46,57.57,25,0
	.goto Durotar,47.19,57.12,25,0
	.goto Durotar,46.21,56.69,25,0
	.goto Durotar,46.28,56.11,25,0
	.goto Durotar,45.65,56.90,25,0
	.goto Durotar,45.35,56.32,25,0
	.goto Durotar,44.77,56.87,25,0
	.goto Durotar,44.58,56.10,25,0
	.goto Durotar,44.27,56.59,25,0
	.goto Durotar,43.85,55.52,25,0
	.goto Durotar,43.87,58.42,25,0
    .xp 4+1720 >> Farmt bis 1720+/2100xp
    .mob Vile Familiar
    .isOnQuest 4402
step << !Warrior !Rogue !Shaman
    #xprate <1.5
    #loop
	.goto Durotar,43.87,58.42,0
	.goto Durotar,44.53,58.62,25,0
	.goto Durotar,45.18,58.42,25,0
	.goto Durotar,45.83,58.59,25,0
	.goto Durotar,45.79,57.43,25,0
	.goto Durotar,46.46,57.57,25,0
	.goto Durotar,47.19,57.12,25,0
	.goto Durotar,46.21,56.69,25,0
	.goto Durotar,46.28,56.11,25,0
	.goto Durotar,45.65,56.90,25,0
	.goto Durotar,45.35,56.32,25,0
	.goto Durotar,44.77,56.87,25,0
	.goto Durotar,44.58,56.10,25,0
	.goto Durotar,44.27,56.59,25,0
	.goto Durotar,43.85,55.52,25,0
	.goto Durotar,43.87,58.42,25,0
    .xp 5 >> Farmt bis Stufe 5
    .mob Vile Familiar
    .isQuestTurnedIn 4402
step
	#completewith Thazz
    #label Cave
    .goto Durotar,45.35,56.27,30 >>Betretet die Höhle
    .isOnQuest 6394
step
	#completewith Thazz
    #requires Cave
    .goto Durotar,45.37,55.39,15,0
    .goto Durotar,44.43,54.51,15,0
    .goto Durotar,43.72,53.79,10 >>Reist zu |cRXP_LOOT_Thazz'ril's Hacke|r
    .isOnQuest 6394
step << Shaman
    #completewith Yarrog
    #requires Cave
    >>Tötet |cRXP_ENEMY_Teufelspirscher|r. Plündert sie für |cRXP_LOOT_Teufelspirscherhufe|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #label Thazz
    .goto Durotar,43.72,53.79
    >>Plündert |cRXP_LOOT_Thazz'rils Hacke|r an der Wand
    .complete 6394,1 --Thazz'ril's Pick (1)
step
    #label Yarrog
    .goto Durotar,42.70,52.99
    >>Tötet |cRXP_ENEMY_Yarrog Schattenbann|r. Plündert ihn für das |cRXP_LOOT_Medaillon der Burning Blade|r
    .complete 794,1 --Burning Blade Medallion (1)
	.mob Yarrog Baneshadow
step << Shaman
    #loop
	.goto Durotar,42.70,52.99,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    >>Tötet |cRXP_ENEMY_Teufelspirscher|r. Plündert sie für |cRXP_LOOT_Teufelspirscherhufe|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #xprate <1.5
    #optional
    #loop
	.goto Durotar,42.70,52.99,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    .xp 5+1680 >> Farmt bis 1680+/2800xp << !Shaman
    .xp 5+690 >> Farmt bis 690+/2800xp << Shaman
    .isQuestTurnedIn 4402
step << !Shaman
    #xprate <1.5
    #loop
	.goto Durotar,42.70,52.99,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    .xp 5+1300 >> Farmt bis 1300+/2800xp
    .isOnQuest 4402
step << !Shaman
    #xprate >1.49
    #optional
    #loop
	.goto Durotar,42.70,52.99,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    .xp 5+1120 >> Grind to 1120+/2800xp (NOT TRANSLATED IN :deDE YET)
    .isQuestTurnedIn 4402
step
    #xprate >1.49
    #loop
	.goto Durotar,42.70,52.99,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    .xp 5+1300 >> Farmt bis 1300+/2800xp << !Shaman
    .xp 5+310 >> Farmt bis 310+/2800xp << Shaman
    .isOnQuest 4402
step << Orc/Troll
    #completewith BurningBladeTurnin
    .hs >>Hearth to Valley of Trials (NOT TRANSLATED IN :deDE YET)
step << !Orc !Troll
    #softcore
    #completewith BurningBladeTurnin
    .deathskip >> Die at the start of the cave and respawn at the |cRXP_FRIENDLY_Geistheiler|r, or run back Valley of Trials
step << !Orc !Troll
    #hardcore
    #completewith BurningBladeTurnin
    .goto Durotar,44.63,68.65,120 >>Travel back to the Valley of Trials (NOT TRANSLATED IN :deDE YET)
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 6394 >>Gebt die Quest Thazz'rils Hacke ab
    .target Foreman Thazz'ril
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Gebt die Quest Galgars Kaktusapfel Surprise ab
    .target Galgar
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duokna|r
    .vendor >> Verkauft Müll
    .target Duokna
step
    #label BurningBladeTurnin
    .goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zureetha|r
    .turnin 794 >>Gebt die Quest Medaillon der Burning Blade ab
    .accept 805 >>Nehmt die Quest Bericht erstatten in Sen'jin an
    .target Zureetha Fargaze
step << !Shaman
    .xp 6 >> Farmt bis Stufe 6
    #loop
    .goto Durotar,42.70,52.99,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
	.accept 5649 >> Annehmen Der Spiritualität geneigt
	.train 591 >>Erlernt |T135924:0|t[Heilige Pein]
    .train 17 >>Erlernt |T135940:0|t[Machtwort: Schild]
    .target Ken'jai
step << Mage
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mai'ah|r
    .train 143 >> Erlernt |T135812:0|t[Feuerball]
    .train 2136 >>Erlernt |T135807:0|t[Feuerschlag]
    .target Mai'ah
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shikrik|r und |cRXP_FRIENDLY_Canaga|r
    .train 332 >>Erlernt |T136052:0|t[Welle der Heilung]
    .goto Durotar,42.39,69.00
    .turnin 1516 >>Gebt die Quest Ruf der Erde ab
    .accept 1517 >>Akzeptiert die Quest Ruf der Erde
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
    .xp <6,1
step << Shaman
    .goto Durotar,42.40,69.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Canaga|r
    .turnin 1516 >>Gebt die Quest Ruf der Erde ab
    .accept 1517 >>Akzeptiert die Quest Ruf der Erde
    .target Canaga Earthcaller
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jen'shan|r
    .train 1130 >>Erlernt |T132212:0|t[Mal des Jägers]
    .train 3044 >>Erlernt |T132218:0|t[Arkaner Schuss]
    .target Jen'shan
    .money <0.02
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jen'shan|r
    .train 3044 >>Erlernt |T132218:0|t[Arkaner Schuss]
    .target Jen'shan
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r
    .train 3127 >>Erlernt |T132269:0|t[Parieren]
    .train 6343 >>Erlernt |T136105:0|t[Donnerknall]
    .target Frang
    .money <0.02
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r
    .train 3127 >>Erlernt |T132269:0|t[Parieren]
    .target Frang
step << Rogue
    #completewith RogueTraining
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>Reist zu |cRXP_FRIENDLY_Rwag|r
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rwag|r
    .train 1757 >> Erlernt |T136189:0|t[Finsterer Stoß]
    .train 1776 >> Erlernt |T132155:0|t[Solarplexus]
    .target Rwag
    .money <0.02
step << Rogue
    #label RogueTraining
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rwag|r
    .train 1757 >> Erlernt |T136189:0|t[Finsterer Stoß]
    .target Rwag
step << Warlock
    #completewith Hraug3
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Travel toward |cRXP_FRIENDLY_Nartok|r and |cRXP_FRIENDLY_Hraug|r (NOT TRANSLATED IN :deDE YET)
    .money <0.01
step << Warlock
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nartok|r
    .train 695 >>Erlernt |T136197:0|t[Schattenblitz]
    .target Nartok
    .money <0.01
step << Warlock
    #label Hraug3
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hraug|r
    >>|cRXP_BUY_Kauft den|r |T133738:0|t[Zauberfoliant des Blutpakts] |cRXP_BUY_von ihm|r
    .collect 16321,1,817,1 --Grimoire of Blood Pact
    .vendor >>Verkauft Müll
    .target Hraug
    .money <0.01
step << Shaman
    #completewith CallOE1
    #label Shrine
    .goto Durotar,43.36,69.60,25,0
    .goto Durotar,43.18,70.93,25,0
    .goto Durotar,41.31,73.63,12,0
    .goto Durotar,40.82,74.37,8,0
    .goto Durotar,42.71,75.18,10,0
    .goto Durotar,43.57,75.51,15,0
    .goto Durotar,44.13,76.36,25 >>Reist zum |cRXP_PICK_Schamanenschrein|r
    .isOnQuest 1517
step << Shaman
    #completewith next
    #requires Shrine
    .cast 8202 >>|cRXP_WARN_Benutzt den|r |T134743:0|t[Erdsapta]
    .use 6635
step << Shaman
    #label CallOE1
    .goto Durotar,44.03,76.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit der |cRXP_FRIENDLY_Manifestation|r
    .turnin 1517 >>Gebt die Quest Ruf der Erde ab
    .accept 1518 >>Akzeptiert die Quest Ruf der Erde
    .target Minor Manifestation of Earth
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Canaga|r
    .goto Durotar,42.40,69.17
    .turnin 1518 >>Gebt die Quest Ruf der Erde ab
    .target Canaga Earthcaller
step << Shaman
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shikrik|r
    .train 332 >>Erlernt |T136052:0|t[Welle der Heilung]
    .target Shikrik
step
    #xprate >1.49
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 6394 >>Gebt die Quest Thazz'rils Hacke ab
    .target Foreman Thazz'ril
step
    #label Leave
    .goto Durotar,47.09,69.21,25,0
    .goto Durotar,49.02,69.13,20,0
    .goto Durotar,49.90,68.43,25 >>Verlasst Das Tal der Prüfungen
    .isOnQuest 805
step << !Shaman !Hunter !Warlock
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ukor|r
    .accept 2161 >>Akzeptiert die Quest Die Bürde eines Peons
    .target Ukor
step << !Shaman !Hunter !Warlock
    #completewith next
    .subzone 367 >>Reist ins Dorf Sen'Jin
step << !Shaman !Hunter !Warlock
    .goto Durotar,55.94,74.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gadrin|r (NOT TRANSLATED IN :deDE YET)
    .turnin 805 >>Gebt die Quest Bericht erstatten in Sen'jin ab
    .accept 823 >>Akzeptiert die Quest Bericht an Orgnil
    .target Master Gadrin
step << Rogue/Warrior
    #completewith next
    .goto Durotar,56.16,74.43,8,0
    .goto Durotar,56.31,73.8,8 >> Betretet die große Hütte
step << Rogue
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_. Kauft|r |T132414:0|t[Beschwerte Wurfaxt] |cRXP_BUY_von ihr|r
    .collect 29007,1,791,1 --Weighted Throwing Axe (200)
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << skip --Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihr|r --Refreshing Spring Water (20)
    .collect 159,20,791,1
    .target K'waii
    .money <0.010
step << skip --Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihr|r --Refreshing Spring Water (10)
    .collect 159,10,791,1
    .target K'waii
    .money <0.0050
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn sie euch genug geld für ein |T135641:0|t[Stilett] (4s 01c) gibt. Kommt später zurück, wenn ihr noch nicht genug Geld habt
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Kauft |r |T135641:0|t[Stilett] |cRXP_BUY_bei ihm|r
    .collect 2494,1,791,1 --Collect Stiletto (1)
    .target Trayexir
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Verkauft Müll. Verkauft von Euch Waffe, falls es euch genug Geld für eine |T132401:0|t[Große Axt] (4s 84c) bringt. Ihr kommt später zurück, falls ihr noch nicht genug habt
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Kauft eine |r |T132401:0|t[Große Axt] |cRXP_BUY_bei ihm|r
    .collect 2491,1,791,1 --Collect Large Axe (1)
    .target Trayexir
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Verkauft Müll. Verkauft von Euch Waffe, falls es euch genug Geld für eine |T135421:0|t[Tomahawk] (5s 40c) bringt. Ihr kommt später zurück, falls ihr noch nicht genug habt
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Kauft ein|r |T135421:0|t[Tomahawk] |cRXP_BUY_von ihm|r
    .collect 2490,1,791,1 --Collect Tomahawk (1)
    .target Trayexir
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Legt die|r |T132414:0|t[Beschwerte Wurfaxt] an
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Legt die|r |T132401:0|t[Große Axt] an
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Legt das|r |T135421:0|t[Tomahawk] an
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Mage
    .goto Durotar,56.30,75.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Un'Thuwa|r
    .train 143 >> Erlernt |T135812:0|t[Feuerball]
    .train 2136 >>Erlernt |T135807:0|t[Feuerschlag]
    .target Un'Thuwa
step << !Shaman !Hunter !Warlock
    #hardcore
    #label RazorHill1
    #completewith next
    .subzone 362 >>Reist nach Klingenhügel
step << !Shaman !Hunter !Warlock
    #softcore
    #label RazorHill1
    #completewith next
    .goto Durotar,54.53,58.69
    .deathskip >>Travel to the waypoint arrow (or further north of it), then die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r (NOT TRANSLATED IN :deDE YET)
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orgnil|r und |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 823 >>Gebt die Quest Bericht an Orgnil ab
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .accept 784 >>Akzeptiert die Quest Vernichtet die Verräter
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step << !Shaman !Hunter !Warlock
    #xprate >1.49 << !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Orgnil|r
    .turnin 823 >>Gebt die Quest Bericht an Orgnil ab
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Reist zum Turm
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Reist den Turm hinauf zu Furl
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Akzeptiert die Quest Akzeptiert Euer Schicksal
    .target Furl Scornbrow
step << Warrior/Rogue/Paladin
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Erlernt |T136248:0|t[Bergbau]
    >>|cRXP_WARN_So könnt ihr|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r finden |cRXP_WARN_von Erzvorkommen, um|r |T135248:0|t[Wetzsteine] herzustellen |cRXP_WARN_(+2 Waffenschaden für 30 Minuten)|r
    .target Krunn
step << Warrior/Rogue/Paladin
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Kauft eine|r |T134708:0|t[Spitzhacke] |cRXP_BUY_von|r |cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue/Paladin
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Erlerne |T136241:0|t[Schmiedekunst]
    .target Dwukk
    .skill blacksmithing,1,1
step << !Shaman !Hunter !Warlock
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Grosk|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_Kauft|r |T133974:0|t[Fleischschenkel] |cRXP_BUY_bei ihm|r << Rogue/Warrior
    .vendor >> Verkauft Müll
    --.home >> Set your Hearthstone to Razor Hill
    .turnin 2161 >>Gebt die Quest Die Bürde eines Peons ab
    .target Innkeeper Grosk
    --.bindlocation 362
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5649 >> Gebt die Quest Der Spiritualität geneigt ab
    .accept 5648 >> Akzeptiert die Quest Gewänder der Spiritualität
    .train 2052 >> Erlernt |T135929:0|t[Geringes Heilen] (Rang 2)
    .target Tai'jin
step << Priest
    .goto Durotar,53.10,46.46
    >>Wirkt |T135929:0|t[Geringes Heilen] und |T135987:0|t[Machtwort: Seelenstärke] auf |cRXP_FRIENDLY_Kor'ja|r
    .complete 5648,1 --Heal and fortify Grunt Kor'ja
    .target Grunt Kor'ja
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5648 >>Gebt die Quest Gewänder der Spiritualität ab
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Tai'jin
step << Rogue/Warrior
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Erlerne |T135966:0|t[Erste Hilfe]
    .money <0.01
    .target Rawrk
step << Warrior/Rogue/Paladin
    #xprate <1.5 << !Warrior
    #completewith TiragardeArrive
    .cast 2580 >>|cRXP_WARN_Wirkt|r |T136025:0|t[Mineraliensuche] |cRXP_WARN_und baue jede Kupferader ab, die du findest, für|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r|cRXP_WARN_. Stellt|r |T135248:0|t[Wetzsteine] |cRXP_WARN_daraus her|r
    .collect 2862,1,784,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #label TiragardeArrive
    .goto Durotar,57.26,54.69,60,0
    .subzone 372 >>Reist zur Burg Tiragarde
    .isOnQuest 784
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #sticky
    #completewith AgedEnvelope
    +|cRXP_WARN_Seid vorsichtig, wenn|r |cRXP_ENEMY_Wachkommandant Zalaphil|r |cRXP_WARN_aktiv ist, da er ein seltener mob der Stufe 9 ist. Ihr müsst möglicherweise einen|r |T134829:0|t[Schwachen Heiltrank] |cRXP_WARN_verwenden, wenn ihr einen habt|r
    .unitscan Watch Commander Zalaphil
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #completewith Benedict
    #requires TiragardeArrive
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >> Bewegt euch zum zweiten Stock der Burg
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #completewith AgedEnvelope
    >>Tötet |cRXP_ENEMY_Matrose von Kul Tiras|r und |cRXP_ENEMY_Marinesoldat von Kul Tiras|r. Plündert sie für |cRXP_LOOT_Segeltuchreste|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #label Benedict
    .goto Durotar,59.75,58.27
    >>Tötet |cRXP_ENEMY_Lieutenant Benedict|r. Plündert ihn für seinen |cRXP_LOOT_Schlüssel|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1,830 --Collect Benedict's Key (1)
    .mob Lieutenant Benedict
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
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
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
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
    .mob +Kul Tiras Marine
    .mob +Kul Tiras Sailor
    .itemcount 4870,<8 --Canvas Scraps (<8)
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
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
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #optional
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
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #softcore
    #completewith next
    .goto Durotar,57.90,57.57
    .deathskip >> Die at the waypoint arrow (or further north of it), then die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r (NOT TRANSLATED IN :deDE YET)
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #hardcore
    #completewith next
    .goto Durotar,52.38,43.77,120 >> Reist nach Klingenhügel
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gar'thok|r
    >>|cRXP_WARN_Ihr könnt mit ihm von außen oder oben auf dem Bunker sprechen|r
    .turnin 784 >>Gebt die Quest Vernichtet die Verräter ab
    .turnin 830 >>Gebt die Quest Die Befehle des Admirals ab
    .target Gar'thok
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Reist zum Turm
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Reist den Turm hinauf zu Furl
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Furl|r
    .turnin 791 >>Gebt die Quest Akzeptiert Euer Schicksal ab
    .target Furl Scornbrow
step << Warrior/Rogue
    #xprate <1.5 << !Warrior
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Erlernt |T136248:0|t[Bergbau]
    >>|cRXP_WARN_So könnt ihr|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r finden |cRXP_WARN_von Erzvorkommen, um|r |T135248:0|t[Wetzsteine] herzustellen |cRXP_WARN_(+2 Waffenschaden für 30 Minuten)|r
    .target Krunn
step << Warrior/Rogue
    #xprate <1.5 << !Warrior
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Kauft eine|r |T134708:0|t[Spitzhacke] |cRXP_BUY_von|r |cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,825,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #xprate <1.5 << !Warrior
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Erlerne |T136241:0|t[Schmiedekunst]
    .target Dwukk
    .skill blacksmithing,1,1
step << Rogue
    #xprate <1.5
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn sie euch genug geld für ein |T135641:0|t[Stilett] (4s 01c) gibt. Kommt später zurück, wenn ihr noch nicht genug Geld habt
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.5
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Kauft eine|r |T135641:0|t[Stilett] |cRXP_BUY_von ihm|r
    .collect 2494,1,825,1 --Collect Stiletto (1)
    .target Uhgar
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Verkauft Müll. Verkauft von Euch Waffe, falls es euch genug Geld für eine |T132401:0|t[Große Axt] (4s 84c) bringt. Ihr kommt später zurück, falls ihr noch nicht genug habt
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Kauft eine|r |T132401:0|t[Große Axt] |cRXP_BUY_von ihm|r
    .collect 2491,1,825,1 --Collect Large Axe (1)
    .target Uhgar
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Verkauft Müll. Verkauft von Euch Waffe, falls es euch genug Geld für eine |T135421:0|t[Tomahawk] (5s 40c) bringt. Ihr kommt später zurück, falls ihr noch nicht genug habt
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Kauft ein|r |T135421:0|t[Tomahawk] |cRXP_BUY_von ihm|r
    .collect 2490,1,825,1 --Collect Tomahawk (1)
    .target Uhgar
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #xprate <1.5
    #optional
    #completewith WindsinDes
    +|cRXP_WARN_Legt die|r |T132414:0|t[Beschwerte Wurfaxt] an
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #xprate <1.5
    #optional
    #completewith WindsinDes
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith WindsinDes
    +|cRXP_WARN_Legt die|r |T132401:0|t[Große Axt] an
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith WindsinDes
    +|cRXP_WARN_Legt das|r |T135421:0|t[Tomahawk] an
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue/Warrior
    #xprate <1.5
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Erlerne |T135966:0|t[Erste Hilfe]
    .money <0.01
    .target Rawrk
step << !Shaman !Hunter !Warlock
    #xprate <1.5
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jark|r
    >>|cRXP_BUY_Kauft einen|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_von|r |cRXP_BUY_ihm|r
    .collect 4496,1,825,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #label WindsinDes
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Akzeptiert die Quest Wind in der Wüste
    .target Rezlak
    .maxlevel 7
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
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
    .isOnQuest 834
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Gebt die Quest Wind in der Wüste ab
    .target Rezlak
    .isQuestComplete 834
step << !Shaman !Hunter !Warlock
    .goto Durotar,50.8,13.8,40 >>Geh auf den Zeppelin-Turm
    .zone Tirisfal Glades >>Nehmt den Zeppelin nach Tirisfal
    .zoneskip Tirisfal Glades
    .zoneskip Silvermoon City
    .zoneskip Eversong Woods
step << Warrior
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirtin Renee|r
    .home >> Setzt euren Ruhestein in Brill
    .target Innkeeper Renee
    .bindlocation 2119
step << Warrior
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gretchen|r im zweiten Stock des Gasthauses
    .accept 375 >>Accept in The Chill of Death (NOT TRANSLATED IN :deDE YET)
    .target Gretchen Dedmar
    .maxlevel 7 --filler to get level 8 spells
step << Warrior
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Johaan|r
    .accept 367 >>Akzeptiert die Quest Eine neue Seuche
    .target Apothecary Johaan
    .maxlevel 7 --filler to get level 8 spells
step << Warrior
    #optional
    #completewith next
    >>Kill|cRXP_ENEMY_Duskbats|r. Loot them for their |cRXP_LOOT_Pelts|r (NOT TRANSLATED IN :deDE YET)
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step << Warrior
    #loop
    .goto Tirisfal Glades,42.16,46.76,0
    .goto Tirisfal Glades,60.99,56.15,60,0
    .goto Tirisfal Glades,58.45,57.03,60,0
    .goto Tirisfal Glades,57.34,62.51,60,0
    .goto Tirisfal Glades,53.63,64.73,60,0
    .goto Tirisfal Glades,46.83,60.36,60,0
    .goto Tirisfal Glades,42.61,57.97,60,0
    .goto Tirisfal Glades,40.19,56.33,60,0
    .goto Tirisfal Glades,42.16,46.76,60,0
    .goto Tirisfal Glades,38.95,40.22,60,0
    >>Tötet |cRXP_ENEMY_Schattenhunde|r. Plündert sie für ihr |cRXP_LOOT_Blut|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound`
    .isOnQuest 367
step << Warrior
    #loop
    .goto Tirisfal Glades,50.36,49.51,0
    .goto Tirisfal Glades,60.99,56.15,60,0
    .goto Tirisfal Glades,58.45,57.03,60,0
    .goto Tirisfal Glades,57.34,62.51,60,0
    .goto Tirisfal Glades,53.63,64.73,60,0
    .goto Tirisfal Glades,46.83,60.36,60,0
    .goto Tirisfal Glades,42.61,57.97,60,0
    .goto Tirisfal Glades,40.19,56.33,60,0
    .goto Tirisfal Glades,42.16,46.76,60,0
    .goto Tirisfal Glades,38.95,40.22,60,0
    >>Kill|cRXP_ENEMY_Duskbats|r. Loot them for their |cRXP_LOOT_Pelts|r (NOT TRANSLATED IN :deDE YET)
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .xp >8,1
    .isOnQuest 375
step << Warrior
    #optional
    #loop
    .goto Tirisfal Glades,50.36,49.51,0
    .goto Tirisfal Glades,60.99,56.15,60,0
    .goto Tirisfal Glades,58.45,57.03,60,0
    .goto Tirisfal Glades,57.34,62.51,60,0
    .goto Tirisfal Glades,53.63,64.73,60,0
    .goto Tirisfal Glades,46.83,60.36,60,0
    .goto Tirisfal Glades,42.61,57.97,60,0
    .goto Tirisfal Glades,40.19,56.33,60,0
    .goto Tirisfal Glades,42.16,46.76,60,0
    .goto Tirisfal Glades,38.95,40.22,60,0
    >>Kill|cRXP_ENEMY_Duskbats|r. Loot them for their |cRXP_LOOT_Pelts|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Skip this step if you were unlucky with drops so far|r (NOT TRANSLATED IN :deDE YET)
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .xp <8,1
    .isOnQuest 375
step << Warrior
    #xprate <1.5
    .goto Tirisfal Glades,45.90,50.95,50,0
    .goto Tirisfal Glades,45.11,48.06,50,0
    .goto Tirisfal Glades,47.07,45.37,50,0
    .goto Tirisfal Glades,50.36,49.51,50,0
    .xp 7+3260 >>Grind to 3260/4500 xp (NOT TRANSLATED IN :deDE YET)
step << Warrior
    #xprate >1.49
    .goto Tirisfal Glades,45.90,50.95,50,0
    .goto Tirisfal Glades,45.11,48.06,50,0
    .goto Tirisfal Glades,47.07,45.37,50,0
    .goto Tirisfal Glades,50.36,49.51,50,0
    .xp 7+2640>>Grind to 2640/4500 xp (NOT TRANSLATED IN :deDE YET)
step << Warrior
    #softcore
    #completewith FillerTurnins
    .deathskip >>Die and respawn and the |cRXP_FRIENDLY_Spirit Healer|r (NOT TRANSLATED IN :deDE YET)
step << Warrior
    #hardcore
    #completewith FillerTurnins
    .subzone 159 >>Lauf nach Brill
step << Warrior
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Johaan|r
    .turnin 367 >>Gebt die Quest Eine neue Seuche ab
    .target Apothecary Johaan
    .isQuestComplete 367
step << Warrior
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Kauft einen|r |T132891:0|t[Grober Faden] |cRXP_BUY_von ihr|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step << Warrior
    #label FillerTurnins
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gretchen|r im zweiten Stock des Gasthauses
    .turnin 375 >>Gebt die Quest Die Kälte des Todes ab
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Austil|r
    .train 284 >>Trainiere deine Klassenfähigkeiten
    .target Austil de Mon
step << !Shaman !Hunter !Warlock
    #completewith PorttoSilvermoon
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Betrete Unterstadt
    .zoneskip Undercity
step << skip -- Warlock
    #completewith next
    .goto Undercity,66.11,26.81,20,0
    .goto Undercity,66.07,37.02,20,0
    .goto Undercity,67.74,37.96,20 >>Take the elevator down into the Undercity (NOT TRANSLATED IN :deDE YET)
step << skip -- Warlock
    .goto Undercity,67.74,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Norman|r
    .home >> Setzt euren Ruhestein in Unterstadt
    .target Innkeeper Norman
    .bindlocation 1497
step << skip -- Warlock
    #completewith next
    .goto Undercity,66.07,37.02,20,0
    .goto Undercity,66.11,26.81,20 >>Take the elevator back up (NOT TRANSLATED IN :deDE YET)
step << !Shaman !Hunter !Warlock
    #completewith PorttoSilvermoon
    .goto Undercity,62.0,11.3,18 >>Go up the stairs here (NOT TRANSLATED IN :deDE YET)
step << !Shaman !Hunter !Warlock
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
step << !Shaman !Hunter !Warlock
    #completewith next
    .goto Silvermoon City,62.89,31.20,20,0
    .goto Silvermoon City,75.63,58.34,20,0
    .goto Silvermoon City,73.22,59.91,20,0
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>Verlassen Silvermoon
step << !Shaman !Hunter !Warlock
    #label SilvermoonFP
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gloaming|r (NOT TRANSLATED IN :deDE YET)
    .fp Silvermoon >> Get the Silvermoon City flight path (NOT TRANSLATED IN :deDE YET)
    .target Skymistress Gloaming
    .isQuestAvailable 8463
step << !Shaman !Hunter !Warlock
    .goto Eversong Woods,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jaela|r (NOT TRANSLATED IN :deDE YET)
    .accept 8475 >> Accept The Dead Scar (NOT TRANSLATED IN :deDE YET)
    .target Ranger Jaela
step << !Shaman !Hunter !Warlock
    .goto Eversong Woods,46.68,49.10,40 >>Travel to Falconwing Square (NOT TRANSLATED IN :deDE YET)
    .isQuestAvailable 8463

    ]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP TBC Dungeonführer (H)
<< Horde
#name 6-10 Durotar
#version 7
#subgroup RestedXP Horde 1-30
#defaultfor Orc Hunter/Orc Shaman/Troll Hunter/Troll Shaman/Orc Warlock
#next 10-13 Durotar << Shaman
#next 10-12 Eversong Woods << !Shaman

step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ukor|r
    .accept 2161 >>Akzeptiert die Quest Die Bürde eines Peons
    .target Ukor
step
    #completewith SenjinPickups
    .subzone 367 >>Reist ins Dorf Sen'Jin
step
    #xprate <1.5
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.20,73.36,25,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lar|r
    >>|cRXP_WARN_Er patrouilliert ein bisschen|r
    .accept 786 >>Akzeptiert die Quest Vereitelung der Kolkaraggression
    .target Lar Prowltusk
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vel'rin|r, |cRXP_FRIENDLY_Vornal|r und |cRXP_FRIENDLY_Gadrin|r
    .accept 817 >>Akzeptiert die Quest Praktische Beute
    .goto Durotar,55.95,73.93
    .target +Vel'rin Fang
    .accept 818 >>Akzeptiert die Quest Ein geistvolles Getränk
    .goto Durotar,55.94,74.40
    .target +Master Vornal
    .turnin 805 >>Gebt die Quest Bericht erstatten in Sen'jin ab
    .accept 808 >>Akzeptiert die Quest Minshinas Schädel
    .accept 826 >>Akzeptiert die Quest Zalazane
    .accept 823 >>Akzeptiert die Quest Bericht an Orgnil
    .goto Durotar,55.94,74.72
    .target +Master Gadrin
step
    #xprate <1.5
    #completewith next
    .goto Durotar,56.16,74.43,8,0
    .goto Durotar,56.31,73.8,8 >> Betretet die große Hütte
step << Rogue
    #xprate <1.5
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_. Kauft|r |T132414:0|t[Beschwerte Wurfaxt] |cRXP_BUY_von ihr|r
    .collect 29007,1,786,1 --Weighted Throwing Axe (200)
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Warlock/Mage/Priest
    #xprate <1.5
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihr|r --Refreshing Spring Water (20)
    .collect 159,20,786,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    #xprate <1.5
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihr|r --Refreshing Spring Water (10)
    .collect 159,10,786,1
    .target K'waii
    .money <0.0050
step << Shaman
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Verkauft Müll. Verkauft die Waffe von Euch, wenn sie euch genug Geld für einen |T135145:0|t[Wanderstecken] (5s 04c) einbringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Spricht mit|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Kauft einen|r |T135145:0|t[Wanderstecken] |cRXP_BUY_von ihm|r
    .collect 2495,1,786,1 --Collect Walking Stick (1)
    .target Trayexir
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn sie euch genug geld für ein |T135641:0|t[Stilett] (4s 01c) gibt. Kommt später zurück, wenn ihr noch nicht genug Geld habt
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Kauft |r |T135641:0|t[Stilett] |cRXP_BUY_bei ihm|r
    .collect 2494,1,786,1 --Collect Stiletto (1)
    .target Trayexir
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Verkauft Müll. Verkauft von Euch Waffe, falls es euch genug Geld für eine |T132401:0|t[Große Axt] (4s 84c) bringt. Ihr kommt später zurück, falls ihr noch nicht genug habt
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Kauft eine |r |T132401:0|t[Große Axt] |cRXP_BUY_bei ihm|r
    .collect 2491,1,786,1 --Collect Large Axe (1)
    .target Trayexir
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Verkauft Müll. Verkauft von Euch Waffe, falls es euch genug Geld für eine |T135421:0|t[Tomahawk] (5s 40c) bringt. Ihr kommt später zurück, falls ihr noch nicht genug habt
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Kauft ein|r |T135421:0|t[Tomahawk] |cRXP_BUY_von ihm|r
    .collect 2490,1,786,1 --Collect Tomahawk (1)
    .target Trayexir
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Verkauft Trödel. Verkauft die Waffe von Euch, wenn sie euch genug Geld für einen |T135499:0|t[Hornholz-Doppelbogen] (2s 83c) bringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Kauft einen|r |T135499:0|t[Hornholz-Doppelbogen] |cRXP_BUY_von ihm|r
    .collect 2506,1,786,1 --Collect Hornwood Recurve Bow (1)
    .target Trayexir
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #xprate <1.5
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Legt die|r |T132414:0|t[Beschwerte Wurfaxt] an
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #xprate <1.5
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Legt den|r |T135145:0|t[Wanderstecken] an
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #xprate <1.5
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #xprate <1.5
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Legt die|r |T132401:0|t[Große Axt] an
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #xprate <1.5
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Legt das|r |T135421:0|t[Tomahawk] an
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #xprate <1.5
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Legt den|r |T135499:0|t[Hornholz-Doppelbogen] an
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Mage
    .goto Durotar,56.30,75.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Un'Thuwa|r
    .train 143 >> Erlernt |T135812:0|t[Feuerball]
    .train 2136 >>Erlernt |T135807:0|t[Feuerschlag]
    .target Un'Thuwa
step
    #xprate <1.5
    #completewith next
    .goto Durotar,58.54,75.89,40,0
    .goto Durotar,57.73,77.91,40,0
    .goto Durotar,55.72,79.62,40,0
    .goto Durotar,54.23,82.26,40,0
    .goto Durotar,52.20,83.00,40,0
    >>Run down the beach. Kill |cRXP_ENEMY_Crawlers|r and |cRXP_ENEMY_Makruras|r. Loot them for their |cRXP_LOOT_Mucus|r and |cRXP_LOOT_Eyes|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_You do not have to finish this step here|r (NOT TRANSLATED IN :deDE YET)
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #xprate <1.5
    .goto Durotar,52.20,83.00,75 >> Erreicht das Ende des Strandes
    .isOnQuest 818
step
    #xprate <1.5
    .goto Durotar,50.9,79.2,30 >>BETRETET das Kolkar-Lager
    .isOnQuest 786
step
    #xprate <1.5
    #sticky
    #completewith Bonfire
    +|cRXP_WARN_Seid vorsichtig, wenn|r |cRXP_ENEMY_Kolkanis|r |cRXP_WARN_aktiv ist, er ist ein seltener mob der Stufe 9. Ihr müsst möglicherweise einen|r |T134829:0|t[Schwachen Heiltrank] |cRXP_WARN_verwenden, wenn ihr ihn habt|r
    .unitscan Warlord Kolkanis
step
    #xprate <1.5
    .goto Durotar,49.81,81.29
    >>Verbrennt den |cRXP_PICK_Angriffsplan|r im Zelt auf dem Boden auf
    .complete 786,1 --Attack Plan: Valley of Trials destroyed (1)
step
    #xprate <1.5
    >>Verbrennt den |cRXP_PICK_Angriffsplan|r auf dem Boden
    .goto Durotar,47.66,77.34
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
step
    #xprate <1.5
    #label Bonfire
    >>Verbrennt den |cRXP_PICK_Angriffsplan|r auf dem Boden
    .goto Durotar,46.23,78.94
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step
    #xprate <1.5
    #softcore
    #completewith TurninKolkar
    .goto Durotar,46.43,79.25,-1
    .goto Durotar,57.50,73.26,-1
    .deathskip >> Sterbt am Lagerfeuer und belebt euch am |cRXP_FRIENDLY_Geistheiler|r wieder
    .isQuestComplete 786
step
    #xprate <1.5
    #hardcore
    #completewith TurninKolkar
    .goto Durotar,50.95,79.14,30 >>Verlasst das Kolkar-Lager
    .isQuestComplete 786
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Verkauft Müll. Verkauft die Waffe von Euch, wenn sie euch genug Geld für einen |T135145:0|t[Wanderstecken] (5s 04c) einbringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Spricht mit|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Kauft einen|r |T135145:0|t[Wanderstecken] |cRXP_BUY_von ihm|r
    .collect 2495,1,823,1 --Collect Walking Stick (1)
    .target Trayexir
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn sie euch genug geld für ein |T135641:0|t[Stilett] (4s 01c) gibt. Kommt später zurück, wenn ihr noch nicht genug Geld habt
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Kauft |r |T135641:0|t[Stilett] |cRXP_BUY_bei ihm|r
    .collect 2494,1,823,1 --Collect Stiletto (1)
    .target Trayexir
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Verkauft Müll. Verkauft von Euch Waffe, falls es euch genug Geld für eine |T132401:0|t[Große Axt] (4s 84c) bringt. Ihr kommt später zurück, falls ihr noch nicht genug habt
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Kauft eine |r |T132401:0|t[Große Axt] |cRXP_BUY_bei ihm|r
    .collect 2491,1,823,1 --Collect Large Axe (1)
    .target Trayexir
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Verkauft Müll. Verkauft von Euch Waffe, falls es euch genug Geld für eine |T135421:0|t[Tomahawk] (5s 40c) bringt. Ihr kommt später zurück, falls ihr noch nicht genug habt
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Kauft ein|r |T135421:0|t[Tomahawk] |cRXP_BUY_von ihm|r
    .collect 2490,1,823,1 --Collect Tomahawk (1)
    .target Trayexir
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Verkauft Trödel. Verkauft die Waffe von Euch, wenn sie euch genug Geld für einen |T135499:0|t[Hornholz-Doppelbogen] (2s 83c) bringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Kauft einen|r |T135499:0|t[Hornholz-Doppelbogen] |cRXP_BUY_von ihm|r
    .collect 2506,1,823,1 --Collect Hornwood Recurve Bow (1)
    .target Trayexir
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Legt die|r |T132414:0|t[Beschwerte Wurfaxt] an
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Legt den|r |T135145:0|t[Wanderstecken] an
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Legt die|r |T132401:0|t[Große Axt] an
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Legt das|r |T135421:0|t[Tomahawk] an
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Legt den|r |T135499:0|t[Hornholz-Doppelbogen] an
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step
    #xprate <1.5
    #optional
    .goto Durotar,55.95,74.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vornal|r
    .turnin 818 >>Gebt die Quest Ein geistvolles Getränk ab
    .target Master Vornal
    .isQuestComplete 818
step << Warrior/Rogue/Shaman
    .goto Durotar,55.62,73.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hai'zan|r
    >>|cRXP_BUY_Kauft|r |T133974:0|t[Fleischschenkel] |cRXP_BUY_bei ihm|r
    .vendor >> Verkauft Müll
    .collect 2287,10,823,1 --Haunch of Meat (10)
    .money <0.025
    .target Hai'zan
step << skip --Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihr|r --Refreshing Spring Water (20)
    .collect 159,20,784,1
    .target K'waii
    .money <0.010
step << skip --Warlock/Mage/Priest
    #xprate <1.5
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihr|r --Refreshing Spring Water (10)
    .collect 159,10,784,1
    .target K'waii
    .money <0.0050
step
    #xprate <1.5
    #label TurninKolkar
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.20,73.36,25,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lar|r. Er patrouilliert ein bisschen
    .turnin 786 >>Gebt die Quest Vereitelung der Kolkaraggression ab
    .target Lar Prowltusk
step
    #hardcore
    #label RazorHill1
    #completewith next
    .subzone 362 >>Reist nach Klingenhügel
step
    #softcore
    #label RazorHill1
    #completewith next
    .goto Durotar,54.53,58.69
    .deathskip >>Travel to the waypoint arrow (or further north of it), then die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r (NOT TRANSLATED IN :deDE YET)
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r und |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>Gebt die Quest Bericht an Orgnil ab
    .accept 806 >>Akzeptiert die Quest Dunkle Stürme
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .accept 784 >>Akzeptiert die Quest Vernichtet die Verräter
    .accept 837 >>Akzeptiert die Quest Übergriff
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
    .accept 815 >>Akzeptiert die Quest Zerbrecht ein paar Eier
    .target +Cook Torka
    .goto Durotar,51.09,42.49
step << !Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r und |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>Gebt die Quest Bericht an Orgnil ab
    --.accept 806 >>Accept Dark Storms
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .accept 784 >>Akzeptiert die Quest Vernichtet die Verräter
    .accept 837 >>Akzeptiert die Quest Übergriff
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
    .accept 815 >>Akzeptiert die Quest Zerbrecht ein paar Eier
    .target +Cook Torka
    .goto Durotar,51.09,42.49
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
    .accept 791 >>Akzeptiert die Quest Akzeptiert Euer Schicksal
    .target Furl Scornbrow
step << Warrior/Rogue/Paladin
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Erlernt |T136248:0|t[Bergbau]
    >>|cRXP_WARN_So könnt ihr|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r finden |cRXP_WARN_von Erzvorkommen, um|r |T135248:0|t[Wetzsteine] herzustellen |cRXP_WARN_(+2 Waffenschaden für 30 Minuten)|r
    .target Krunn
step << Warrior/Rogue/Paladin
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Kauft eine|r |T134708:0|t[Spitzhacke] |cRXP_BUY_von|r |cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue/Paladin
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Erlerne |T136241:0|t[Schmiedekunst]
    .target Dwukk
    .skill blacksmithing,1,1
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Verkauft Müll. Verkauft die Waffe von Euch, wenn sie euch genug Geld für einen |T135145:0|t[Wanderstecken] (5s 04c) einbringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Spricht mit|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Kauft einen|r |T135145:0|t[Wanderstecken] |cRXP_BUY_von ihm|r
    .collect 2495,1,784,1 --Collect Walking Stick (1)
    .target Uhgar
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn sie euch genug geld für ein |T135641:0|t[Stilett] (4s 01c) gibt. Kommt später zurück, wenn ihr noch nicht genug Geld habt
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Kauft eine|r |T135641:0|t[Stilett] |cRXP_BUY_von ihm|r
    .collect 2494,1,784,1 --Collect Stiletto (1)
    .target Uhgar
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Verkauft Müll. Verkauft von Euch Waffe, falls es euch genug Geld für eine |T132401:0|t[Große Axt] (4s 84c) bringt. Ihr kommt später zurück, falls ihr noch nicht genug habt
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Kauft eine|r |T132401:0|t[Große Axt] |cRXP_BUY_von ihm|r
    .collect 2491,1,784,1 --Collect Large Axe (1)
    .target Uhgar
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Verkauft Müll. Verkauft von Euch Waffe, falls es euch genug Geld für eine |T135421:0|t[Tomahawk] (5s 40c) bringt. Ihr kommt später zurück, falls ihr noch nicht genug habt
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Kauft ein|r |T135421:0|t[Tomahawk] |cRXP_BUY_von ihm|r
    .collect 2490,1,784,1 --Collect Tomahawk (1)
    .target Uhgar
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_Legt die|r |T132414:0|t[Beschwerte Wurfaxt] an
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_Legt den|r |T135145:0|t[Wanderstecken] an
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_Legt die|r |T132401:0|t[Große Axt] an
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_Legt das|r |T135421:0|t[Tomahawk] an
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ghrawt|r
    .vendor >> Verkauft Trödel. Verkauft die Waffe von Euch, wenn sie euch genug Geld für einen |T135499:0|t[Hornholz-Doppelbogen] (2s 83c) bringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Ghrawt
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Spricht mit|r |cRXP_FRIENDLY_Ghrawt|r|cRXP_BUY_. Kauft einen|r |T135499:0|t[Hornholz-Doppelbogen] |cRXP_BUY_von ihm|r
    .collect 2506,1,818,1 --Collect Hornwood Recurve Bow (1)
    .target Ghrawt
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_Legt den|r |T135499:0|t[Hornholz-Doppelbogen] an
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit |cRXP_FRIENDLY_Ghrawt|r. Kauft|r |T132382:0|t[Raue Pfeile] |cRXP_BUY_von ihm|r
    .collect 2512,1000,818,1 << Hunter --Rough Arrow (1000)
    .target Ghrawt
    .itemcount 2512,<600 << Hunter
step
    #optional
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Grosk|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r << Mage/Warlock/Priest/Shaman/Druid/Paladin
    >>|cRXP_BUY_Kauft|r |T133974:0|t[Fleischschenkel] |cRXP_BUY_bei ihm|r << Rogue/Warrior
    >>|cRXP_WARN_Behaltet 4 Silber für eure Klassenzauber!|r << Rogue/Warrior/Shaman/Warlock
    >>|cRXP_WARN_Behaltet 2 Silber für eure Klassenzauber!|r << Priest
    .vendor >> Verkauft Müll
    .home >> Setzt euren Ruhestein in Klingenhügel
    .turnin 2161 >>Gebt die Quest Die Bürde eines Peons ab
    .target Innkeeper Grosk
    .train 6760,1 << Rogue
    .train 139,1 << Priest
    .train 980,1 << Warlock
    .train 8044,1 << Shaman
    .train 284,1 << Warrior
    .bindlocation 362
    .xp <8,1
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Grosk|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r << Mage/Warlock/Priest/Shaman/Druid/Paladin
    >>|cRXP_BUY_Kauft|r |T133974:0|t[Fleischschenkel] |cRXP_BUY_bei ihm|r << Rogue/Warrior
    .vendor >> Verkauft Müll
    .home >> Setzt euren Ruhestein in Klingenhügel
    .turnin 2161 >>Gebt die Quest Die Bürde eines Peons ab
    .target Innkeeper Grosk
    .bindlocation 362
    .xp >8,1
step << !Mage !Hunter !Druid !Paladin
    #optional
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Grosk|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_Kauft|r |T133974:0|t[Fleischschenkel] |cRXP_BUY_bei ihm|r << Rogue/Warrior
    .vendor >> Verkauft Müll
    .home >> Setzt euren Ruhestein in Klingenhügel
    .turnin 2161 >>Gebt die Quest Die Bürde eines Peons ab
    .target Innkeeper Grosk
    .train 6760,3 << Rogue
    .train 139,3 << Priest
    .train 980,3 << Warlock
    .train 8044,3 << Shaman
    .train 284,3 << Warrior
    .bindlocation 362
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarshaw|r
    .train 284 >> Trainiere deine Klassenfähigkeiten
    .target Tarshaw Jaggedscar
    .xp <8,1
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Swart|r
    .train 8044 >> Trainiere deine Klassenfähigkeiten
    .target Swart
    .xp <8,1
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Trainiere deine Klassenfähigkeiten
    .target Dhugru Gorelust
    .xp <8,1
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kitha|r und kauft |T133738:0|t[Feuerblitz Rang 2]
    .collect 16302,1,784,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .xp <8,1
    .train 7799,1
step << Hunter
    .goto Durotar,51.85,43.49
    >>Geht in den Bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thotar|r innerhalb
    .train 5116 >> Trainiere deine Klassenfähigkeiten
    .target Thotar
    .xp <8,1
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kaplak|r
    .train 6760 >> Trainiere deine Klassenfähigkeiten
    .target Kaplak
    .xp <8,1
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5649 >> Gebt die Quest Der Spiritualität geneigt ab
    .accept 5648 >> Akzeptiert die Quest Gewänder der Spiritualität
    .train 2052 >> Erlernt |T135929:0|t[Geringes Heilen] (Rang 2)
    .target Tai'jin
step << Priest
    .goto Durotar,53.10,46.46
    >>Wirkt |T135929:0|t[Geringes Heilen] und |T135987:0|t[Machtwort: Seelenstärke] auf |cRXP_FRIENDLY_Kor'ja|r
    .complete 5648,1 --Heal and fortify Grunt Kor'ja
    .target Grunt Kor'ja
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5648 >>Gebt die Quest Gewänder der Spiritualität ab
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Tai'jin
step << Rogue/Warrior
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Erlerne |T135966:0|t[Erste Hilfe]
    .money <0.01
    .target Rawrk
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jark|r
    >>|cRXP_BUY_Kauft einen|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_von|r |cRXP_BUY_ihm|r
    .collect 4496,1,784,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step << Warrior/Rogue/Paladin
    #completewith TiragardeArrive
    .cast 2580 >>|cRXP_WARN_Wirkt|r |T136025:0|t[Mineraliensuche] |cRXP_WARN_und baue jede Kupferader ab, die du findest, für|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r|cRXP_WARN_. Stellt|r |T135248:0|t[Wetzsteine] |cRXP_WARN_daraus her|r
    .collect 2862,1,784,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #label TiragardeArrive
    .goto Durotar,57.26,54.69,60,0
    .subzone 372 >>Reist zur Burg Tiragarde
    .isOnQuest 784
step
    #sticky
    #completewith AgedEnvelope
    +|cRXP_WARN_Seid vorsichtig, wenn|r |cRXP_ENEMY_Wachkommandant Zalaphil|r |cRXP_WARN_aktiv ist, da er ein seltener mob der Stufe 9 ist. Ihr müsst möglicherweise einen|r |T134829:0|t[Schwachen Heiltrank] |cRXP_WARN_verwenden, wenn ihr einen habt|r
    .unitscan Watch Commander Zalaphil
step
    #completewith Benedict
    #requires TiragardeArrive
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >> Bewegt euch zum zweiten Stock der Burg
step
    #completewith AgedEnvelope
    >>Tötet |cRXP_ENEMY_Matrose von Kul Tiras|r und |cRXP_ENEMY_Marinesoldat von Kul Tiras|r. Plündert sie für |cRXP_LOOT_Segeltuchreste|r
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
    .collect 4882,1,830 --Collect Benedict's Key (1)
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
    .mob +Kul Tiras Marine
    .mob +Kul Tiras Sailor
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
    #optional
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
step << !Mage
    #xprate <1.5
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+2610 >> Grinde to 2610+/4500xp
step << !Mage
    #xprate >1.49
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+1665 >> Grind to 1665+/4500xp (NOT TRANSLATED IN :deDE YET)
step
    #softcore
    #completewith next
    .goto Durotar,57.93,57.67
    .deathskip >> Die at the waypoint arrow (or further north of it), then die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r (NOT TRANSLATED IN :deDE YET)
step
    #hardcore
    #completewith next
    .goto Durotar,52.38,43.77,120 >> Reist nach Klingenhügel
step
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gar'thok|r
    >>|cRXP_WARN_Ihr könnt mit ihm von außen oder oben auf dem Bunker sprechen|r
    .turnin 784 >>Gebt die Quest Vernichtet die Verräter ab
    .turnin 830 >>Gebt die Quest Die Befehle des Admirals ab
    .accept 825 >>Akzeptiert die Quest Aus den Wrackteilen geborgen....
    .accept 831 >>Akzeptiert die Quest Die Befehle des Admirals
    .accept 837 >>Akzeptiert die Quest Übergriff
    .target Gar'thok
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
step << Warrior/Rogue
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Erlernt |T136248:0|t[Bergbau]
    >>|cRXP_WARN_So könnt ihr|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r finden |cRXP_WARN_von Erzvorkommen, um|r |T135248:0|t[Wetzsteine] herzustellen |cRXP_WARN_(+2 Waffenschaden für 30 Minuten)|r
    .target Krunn
step << Warrior/Rogue
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Kauft eine|r |T134708:0|t[Spitzhacke] |cRXP_BUY_von|r |cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,825,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Erlerne |T136241:0|t[Schmiedekunst]
    .target Dwukk
    .skill blacksmithing,1,1
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Verkauft Müll. Verkauft die Waffe von Euch, wenn sie euch genug Geld für einen |T135145:0|t[Wanderstecken] (5s 04c) einbringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Spricht mit|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Kauft einen|r |T135145:0|t[Wanderstecken] |cRXP_BUY_von ihm|r
    .collect 2495,1,825,1 --Collect Walking Stick (1)
    .target Uhgar
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn sie euch genug geld für ein |T135641:0|t[Stilett] (4s 01c) gibt. Kommt später zurück, wenn ihr noch nicht genug Geld habt
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Kauft eine|r |T135641:0|t[Stilett] |cRXP_BUY_von ihm|r
    .collect 2494,1,825,1 --Collect Stiletto (1)
    .target Uhgar
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Verkauft Müll. Verkauft von Euch Waffe, falls es euch genug Geld für eine |T132401:0|t[Große Axt] (4s 84c) bringt. Ihr kommt später zurück, falls ihr noch nicht genug habt
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Kauft eine|r |T132401:0|t[Große Axt] |cRXP_BUY_von ihm|r
    .collect 2491,1,825,1 --Collect Large Axe (1)
    .target Uhgar
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Verkauft Müll. Verkauft von Euch Waffe, falls es euch genug Geld für eine |T135421:0|t[Tomahawk] (5s 40c) bringt. Ihr kommt später zurück, falls ihr noch nicht genug habt
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Kauft ein|r |T135421:0|t[Tomahawk] |cRXP_BUY_von ihm|r
    .collect 2490,1,825,1 --Collect Tomahawk (1)
    .target Uhgar
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Tools
    +|cRXP_WARN_Legt die|r |T132414:0|t[Beschwerte Wurfaxt] an
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Tools
    +|cRXP_WARN_Legt den|r |T135145:0|t[Wanderstecken] an
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Tools
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Tools
    +|cRXP_WARN_Legt die|r |T132401:0|t[Große Axt] an
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Tools
    +|cRXP_WARN_Legt das|r |T135421:0|t[Tomahawk] an
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ghrawt|r
    .vendor >> Verkauft Trödel. Verkauft die Waffe von Euch, wenn sie euch genug Geld für einen |T135499:0|t[Hornholz-Doppelbogen] (2s 83c) bringt. Ihr kommt später zurück, wenn ihr noch nicht genug habt
    .target Ghrawt
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Spricht mit|r |cRXP_FRIENDLY_Ghrawt|r|cRXP_BUY_. Kauft einen|r |T135499:0|t[Hornholz-Doppelbogen] |cRXP_BUY_von ihm|r
    .collect 2506,1,818,1 --Collect Hornwood Recurve Bow (1)
    .target Ghrawt
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #optional
    #completewith Tools
    +|cRXP_WARN_Legt den|r |T135499:0|t[Hornholz-Doppelbogen] an
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit |cRXP_FRIENDLY_Ghrawt|r. Kauft|r |T132382:0|t[Raue Pfeile] |cRXP_BUY_von ihm|r
    .collect 2512,1000,825,1 << Hunter --Rough Arrow (1000)
    .target Ghrawt
    .itemcount 2512,<600 << Hunter
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarshaw|r
    .train 284 >> Trainiere deine Klassenfähigkeiten
    .target Tarshaw Jaggedscar
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Swart|r
    .train 8044 >> Trainiere deine Klassenfähigkeiten
    .target Swart
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Trainiere deine Klassenfähigkeiten
    .target Dhugru Gorelust
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kitha|r und kauft |T133738:0|t[Feuerblitz Rang 2]
    .collect 16302,1,825,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Hunter
    .goto Durotar,51.85,43.49
    >>Geht in den Bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thotar|r innerhalb
    .train 5116 >> Trainiere deine Klassenfähigkeiten
    .target Thotar
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kaplak|r
    .train 6760 >> Trainiere deine Klassenfähigkeiten
    .target Kaplak
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tai'jin|r
    .train 139 >> Trainiere deine Klassenfähigkeiten
    .target Tai'jin
step << Rogue/Warrior
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Erlerne |T135966:0|t[Erste Hilfe]
    .money <0.01
    .target Rawrk
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jark|r
    >>|cRXP_BUY_Kauft einen|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_von|r |cRXP_BUY_ihm|r
    .collect 4496,1,825,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Grosk|r
    .vendor >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r << Mage/Warlock/Priest/Shaman
    .vendor >>|cRXP_BUY_Kauft|r |T133974:0|t[Fleischschenkel] |cRXP_BUY_bei ihm|r << Rogue/Warrior
    .target Innkeeper Grosk
    .isOnQuest 825 --From the Wreckage
    .money <0.0125
step << Warrior/Rogue/Paladin
    #completewith Tools
    .cast 2580 >>|cRXP_WARN_Wirkt|r |T136025:0|t[Mineraliensuche] |cRXP_WARN_und baue jede Kupferader ab, die du findest, für|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r|cRXP_WARN_. Stellt|r |T135248:0|t[Wetzsteine] |cRXP_WARN_daraus her|r
    .collect 2862,1,784,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Zwergbrandungskriecher|r und |cRXP_ENEMY_Brandungskriecher|r. Plündert sie für |cRXP_LOOT_Kriechersekret|r
    >>Tötet |cRXP_ENEMY_Makruramuschelhaut|r und |cRXP_ENEMY_Makruraklacker|r. Plündert sie für ihre |cRXP_LOOT_Augen|r
    -->>This does not need to be finished now
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #label Tools
    #loop
    .goto Durotar,62.25,56.34,0
    .goto Durotar,61.96,55.46,20,0
    .goto Durotar,62.25,56.34,20,0
    .goto Durotar,62.43,59.84,20,0
    .goto Durotar,62.09,60.68,20,0
    .goto Durotar,62.51,60.56,20,0
    .goto Durotar,63.24,58.10,20,0
    >>Plündert den |cRXP_PICK_Gnomen-Werkzeugkasten|r in und um die Boote herum
    .complete 825,1 --Gnomish Tools (3)
step
    #completewith TaillasherEggs
    .goto Durotar,67.10,69.29,100 >> Schwimmt zur Insel
step
    #completewith MinshinasSkull
    >>Tötet |cRXP_ENEMY_Durotar-Tiger|r. Plündert sie für |cRXP_LOOT_Fell|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Zwergbrandungskriecher|r und |cRXP_ENEMY_Brandungskriecher|r. Plündert sie für |cRXP_LOOT_Kriechersekret|r
    >>Tötet |cRXP_ENEMY_Makruramuschelhaut|r und |cRXP_ENEMY_Makruraklacker|r. Plündert sie für ihre |cRXP_LOOT_Augen|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #label TaillasherEggs
    #loop
    .goto Durotar,67.04,71.40,0
    .goto Durotar,70.23,70.84,0
    .goto Durotar,67.04,71.40,40,0
    .goto Durotar,67.66,73.86,40,0
    .goto Durotar,68.67,74.47,40,0
    .goto Durotar,69.76,74.69,40,0
    .goto Durotar,70.29,73.31,40,0
    .goto Durotar,70.23,70.84,40,0
    .goto Durotar,69.69,70.35,40,0
    .goto Durotar,69.21,69.69,40,0
    .goto Durotar,67.74,69.86,40,0
    >>Sammelt die |cRXP_PICK_Schwanzpeitscher-Eier|r vom Boden
    >>|cRXP_WARN_Sie werden normalerweise von einem|r |cRXP_ENEMY_Blutkrallenschwanzpeitscher|r bewacht
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Kriecher|r und |cRXP_ENEMY_Makruras|r. Plündert sie für |cRXP_LOOT_Kriechersekret|r und |cRXP_LOOT_Augen|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    .goto Durotar,66.94,84.41,150 >>Schwimmt zur Hauptinsel
    .isOnQuest 826
step
    #completewith ZalazaneKill
    >>Tötet |cRXP_ENEMY_Verhexte Trolle|r und |cRXP_ENEMY_Voodootrolle|r
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Zalazane|r. Plündert ihn für seinen |cRXP_LOOT_Kopf|r
    >>|cRXP_WARN_Spart euren|r |T136026:0|t[Erdschock] |cRXP_WARN_für die|r |T136052:0|t[Welle der Heilung] falls er sie wirkt << Shaman
    >>|cRXP_WARN_Spart euren|r |T132155:0|t[Solarplexus] |cRXP_WARN_auf, wenn er|r |T136052:0|t[Welle der Heilung] wirkt << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #label MinshinasSkull
    .goto Durotar,67.4,87.8
    >>Plündert einen der |cRXP_LOOT_Schädel|r vom Boden
    .complete 808,1 --Minshina's Skull (1)
step
    #label ZalazaneKill
    .goto Durotar,67.4,87.8
    >>Tötet |cRXP_ENEMY_Zalazane|r. Plündert ihn für seinen |cRXP_LOOT_Kopf|r
    >>|cRXP_WARN_Spart euren|r |T136026:0|t[Erdschock] |cRXP_WARN_für die|r |T136052:0|t[Welle der Heilung] falls er sie wirkt << Shaman
    >>|cRXP_WARN_Spart euren|r |T132155:0|t[Solarplexus] |cRXP_WARN_auf, wenn er|r |T136052:0|t[Welle der Heilung] wirkt << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Durotar-Tiger|r. Plündert sie für |cRXP_LOOT_Fell|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #label Fur
    #loop
	.goto Durotar,67.23,88.00,0
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
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #loop
    .goto Durotar,65.27,87.86,0
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
    >>Tötet |cRXP_ENEMY_Durotar-Tiger|r. Plündert sie für |cRXP_LOOT_Fell|r
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
    -->>This does not need to be finished now
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #softcore
    #completewith Zalazaneturnin
    .goto Durotar,57.50,73.26,50,0
    .deathskip >> Sterbt und lasst euch beim |cRXP_FRIENDLY_Geistheiler|r wiederbeleben, oder lauft zurück
step
    #hardcore
    #completewith Zalazaneturnin
    .goto Durotar,56.06,74.72,150 >> Reist ins Dorf Sen'Jin
step
    .goto Durotar,56.48,73.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Trayexir|r
    >>|cRXP_WARN_Springt in die Hütte|r
    .vendor >> Verkauft trash und repariert
    .target Trayexir
    .isOnQuest 808
step << Mage
    .goto Durotar,56.3,75.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Un'Thuwa|r
    .train 118 >> Trainiere deine Klassenfähigkeiten
    .target Un'Thuwa
step
    #label Zalazaneturnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gadrin|r, |cRXP_FRIENDLY_Vornal|r und |cRXP_FRIENDLY_Vel'rin|r
    .turnin 808 >>Gebt die Quest Minshinas Schädel ab
    .turnin 826 >>Gebt die Quest Zalazane ab
    .goto Durotar,55.95,74.73
    .target +Master Gadrin
    .turnin 818 >>Gebt die Quest Ein geistvolles Getränk ab
    .goto Durotar,55.95,74.39
    .target +Master Vornal
    .turnin 817 >>Gebt die Quest Praktische Beute ab
    .goto Durotar,55.95,73.93
    .target +Vel'rin Fang
step
    #xprate >1.49
    #loop
	.goto Durotar,43.30,37.32,0
	.goto Durotar,44.45,39.74,30,0
	.goto Durotar,44.49,37.47,30,0
	.goto Durotar,43.30,37.32,30,0
	.goto Durotar,41.70,37.09,30,0
	.goto Durotar,41.64,38.27,30,0
	.goto Durotar,41.94,40.46,30,0
	.goto Durotar,43.30,40.40,30,0
    .xp 9+4400 >>Farmt bis 4400+/6500 XP
step
    #hardcore
    #optional
    #label RazorHill1
    #completewith RazorHill3
    .subzone 362 >>Reist nach Klingenhügel
step
    #softcore
    #optional
    #label RazorHill1
    #completewith RazorHill3
    .goto Durotar,54.53,58.69
    .deathskip >>Travel to the waypoint arrow (or further north of it), then die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r (NOT TRANSLATED IN :deDE YET)
step
    #label RazorHill3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Gar'Thok|r and |cRXP_FRIENDLY_Torka|r (NOT TRANSLATED IN :deDE YET)
    .turnin 825 >>Gebt die Quest Aus den Wrackteilen geborgen... ab
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
    .turnin 815 >>Gebt die Quest Zerbrecht ein paar Eier ab
    .target +Cook Torka
    .goto Durotar,51.12,42.46
step
    #xprate <1.5
    #loop
    .goto Durotar,50.21,50.78,0
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
    #xprate <1.5
    #loop
	.goto Durotar,44.45,39.74,0
	.goto Durotar,44.45,39.74,30,0
	.goto Durotar,44.49,37.47,30,0
	.goto Durotar,43.30,37.32,30,0
	.goto Durotar,41.70,37.09,30,0
	.goto Durotar,41.64,38.27,30,0
	.goto Durotar,41.94,40.46,30,0
	.goto Durotar,43.30,40.40,30,0
    >>Tötet |cRXP_ENEMY_Staubläufer der Grimmhauer|r und |cRXP_ENEMY_Schlachtwache der Grimmhauer|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step
    #xprate <1.5
    #loop
	.goto Durotar,43.30,37.32,0
	.goto Durotar,44.45,39.74,30,0
	.goto Durotar,44.49,37.47,30,0
	.goto Durotar,43.30,37.32,30,0
	.goto Durotar,41.70,37.09,30,0
	.goto Durotar,41.64,38.27,30,0
	.goto Durotar,41.94,40.46,30,0
	.goto Durotar,43.30,40.40,30,0
    .xp 9+5870 >>Grinde to 5870+/6500xp
step
    #xprate <1.5
    #softcore
    #completewith next
    .deathskip >>Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
    #xprate <1.5
    #hardcore
    #completewith next
    .subzone 362 >>Reist nach Klingenhügel
step
    #xprate <1.5
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 837 >>Gebt die Quest Übergriff ab
    .target Gar'Thok
step
    #xprate <1.5
    #loop
	.goto Durotar,41.94,40.46,0
	.goto Durotar,44.45,39.74,30,0
	.goto Durotar,44.49,37.47,30,0
	.goto Durotar,43.30,37.32,30,0
	.goto Durotar,41.70,37.09,30,0
	.goto Durotar,41.64,38.27,30,0
	.goto Durotar,41.94,40.46,30,0
	.goto Durotar,43.30,40.40,30,0
    .xp 10 >>Farmt bis Stufe 10
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Swart|r
    .train 8050 >>Trainiere deine Klassenfähigkeiten
    .accept 2983 >>Akzeptiert die Quest Ruf des Feuers
    .target Swart
    .isNotOnQuest 1522
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarshaw|r
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Tarshaw Jaggedscar
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dhugru|r
    .accept 1506 >>Akzeptiert die Quest Gan'ruls Beschwörung
    .train 1120 >>Trainiere deine Klassenfähigkeiten
    .target Dhugru Gorelust
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kitha|r und kauft |T133738:0|t[Feuerblitz Rang 2]
    .collect 16302,1,1501,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tai'jin|r
    .train 8092 >> Trainiere deine Klassenfähigkeiten
    .target Tai'jin
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kaplak|r
    .train 674 >> Trainiere deine Klassenfähigkeiten
    .target Kaplak
step << Hunter
    .goto Durotar,51.85,43.49
    >>Geht in den Bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thotar|r innerhalb
    .accept 6062 >>Akzeptiert die Quest Die Zähmung der Bestie
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Thotar
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ghrawt|r. Kauft |T132382:0|t[Scharfe Pfeile] und einen |T134410:0|t[Mittleren Köcher] von ihm|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    .collect 11362,1,6082,1 --Medium Quiver (1)
    .target Ghrawt
    .money <0.1300
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ghrawt|r. Kauft |T132382:0|t[Scharfe Pfeile] von ihm|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    .target Ghrawt
    .itemcount 2515,<600 --Sharp Arrow (600)
step << Hunter
    #loop
    .goto Durotar,51.65,56.51,0
    .goto Durotar,51.76,48.41,40,0
    .goto Durotar,51.70,50.23,40,0
    .goto Durotar,51.65,51.34,40,0
    .goto Durotar,51.80,53.18,40,0
    .goto Durotar,50.82,53.65,40,0
    .goto Durotar,51.65,56.51,40,0
    .use 15917 >> |cRXP_WARN_Benutzt Eure|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Scheckigen Terroreber|r |cRXP_WARN_aus maximaler Reichweite|r
    .complete 6062,1 --Tame a Dire Mottled Boar
    .mob Dire Mottled Boar
step << Hunter
    .goto Durotar,51.85,43.49
    >>Geht in den Bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thotar|r innerhalb
    .turnin 6062 >>Gebt die Quest Die Zähmung der Bestie ab
    .accept 6083 >>Akzeptiert die Quest Die Zähmung der Bestie
    .target Thotar
step << Hunter
    .goto Durotar,51.85,43.49
    >>Geht in den Bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thotar|r innerhalb
    .accept 6083 >>Akzeptiert die Quest Die Zähmung der Bestie
    .target Thotar
step << Hunter
    #completewith next
    +|cRXP_WARN_Gebt euren |cRXP_ENEMY_Scheckiger Terroreber|r frei, indem ihr mit der rechten Maustaste auf seinen Einheitenrahmen klickt und auf Freigeben klickt. Andernfalls könnt ihr einen |rBrandungskriecher|cRXP_ENEMY_ nicht zähmen|r
step << Hunter
    #loop
    .goto Durotar,59.63,23.38,0
    .goto Durotar,59.18,28.35,40,0
    .goto Durotar,59.89,26.42,40,0
    .goto Durotar,60.04,24.79,40,0
    .goto Durotar,59.63,23.38,40,0
    >>|cRXP_WARN_Tötet nicht die|r |cRXP_ENEMY_Gepanzerter Skorpid|r |cRXP_WARN_die ihr seht. Ihr braucht sie später|r
    .use 15919 >> |cRXP_WARN_Benutzt Eure|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Brandungskriecher|r |cRXP_WARN_aus maximaler Reichweite|r
    .complete 6083,1 --Tame a Surf Crawler
    .mob Surf Crawler
step << Hunter
    .goto Durotar,51.85,43.49
    >>Geht in den Bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thotar|r innerhalb
    .turnin 6083 >>Gebt die Quest Die Zähmung der Bestie ab
    .accept 6082 >>Akzeptiert die Quest Die Zähmung der Bestie
    .target Thotar
step << Hunter
    #completewith next
    +|cRXP_WARN_Gebt euren |cRXP_ENEMY_Ausgewachsener Brandungskriecher|r frei, indem ihr auf sein Einheitenfenster rechtsklickt und auf Freigeben klickt, sonst könnt ihr keinen|r |cRXP_ENEMY_Gepanzerter Skorpid|r zähmen
step << Hunter
    #loop
    .goto Durotar,54.84,36.94,0
    .goto Durotar,54.84,36.94,40,0
    .goto Durotar,54.01,33.81,40,0
    .goto Durotar,54.22,30.50,40,0
    .goto Durotar,55.71,30.66,40,0
    .goto Durotar,56.19,29.28,40,0
    .goto Durotar,56.95,27.28,40,0
    .goto Durotar,57.15,25.59,40,0
    .use 15920 >> |cRXP_WARN_Benutzt eure|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Gepanzerten Skorpid|r |cRXP_WARN_aus maximaler Reichweite|r
    .complete 6082,1 --Tame an Armored Scorpid
    .mob Armored Scorpid
step << Hunter
    .goto Durotar,51.85,43.49
    >>Geht in den Bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thotar|r innerhalb
    .turnin 6082 >>Gebt die Quest Die Zähmung der Bestie ab
    .accept 6081 >>Akzeptiert die Quest Die Ausbildung des Tiers
    .target Thotar
step << Hunter
    #completewith ConscriptH
    +|cRXP_WARN_Zieht|r |T132164:0|t[Wildtier zähmen]|cRXP_WARN_,|r |T136095:0|t[Tier freigeben]|cRXP_WARN_, und|r |T132161:0|t[Begleiter rufen] |cRXP_WARN_in eure Aktionsleisten|r
step << Hunter
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grimtak|r
    >>|cRXP_BUY_Kauft|r |T133972:0|t[Zähes Stockfleisch] |cRXP_BUY_von ihm|r. |cRXP_BUY_Ihr werdet dies später verwenden, um euer Haustier zu füttern|r
    .vendor >> Verkauft Müll
    .collect 117,5,828,1 --Tough Jerky (5)
    .target Grimtak
    .isQuestAvailable 834 --Winds in the Desert
step << !Hunter
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grimtak|r
	.vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt euer Essen und Trinken auf, wenn nötig|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Verkauft euren trash, dann füllt eure Nahrung auf, falls nötig|r << Rogue/Warrior
    .target Grimtak
step << Hunter
    #xprate <1.5
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Akzeptiert die Quest Wind in der Wüste
    .target Rezlak
step << Warlock/Hunter
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Betretet Orgrimmar
    .zoneskip Orgrimmar
    .isOnQuest 6081 << Hunter
    .isOnQuest 1506 << Warlock
step << Hunter
    #completewith next
    .goto Orgrimmar,68.02,38.69,30 >> Reist in Das Tal der Ehre
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ormak|r
    .turnin 6081 >>Gebt die Quest Die Ausbildung des Tiers ab
    .target Ormak Grimshot
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Xao'tsu|r
    .train 24547 >>Erlernt eure Begleiterfähigkeiten
    .target Xao'tsu
step << Hunter
    #completewith next
    +|cRXP_WARN_Legt|r |T132162:0|t[Wildtierausbildung]|cRXP_WARN_(unter dem Allgemein-Reiter),|r |T132163:0|t[Tier wiederbeleben]|cRXP_WARN_, und|r |T132165:0|t[Tier füttern] |cRXP_WARN_auf eure Aktionsleisten|r
    >>|cRXP_WARN_Erinnert euch daran, euer tier zu trainieren, wenn es Trainingspunkte für|r |T132162:0|t[Wildtierausbildung] erhält
step << Warlock/Hunter
    .goto Orgrimmar,34.37,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vol'Jin|r
    .turnin 831 >>Gebt die Quest Die Befehle des Admirals ab
    .target Vol'Jin
step << Warlock
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Akzeptiert die Quest Verborgene Feinde
    .target Thrall
step << Warlock
    .goto Orgrimmar,48.246,45.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Gan'rul Bloodeye|r
    .turnin 1506 >>Gebt die Quest Gan'ruls Beschwörung ab
    .accept 1501 >>Akzeptiert die Quest Kreatur der Leere
    .target Gan'rul Bloodeye
step << Warlock
    #softcore
    #completewith next
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >> Betretet Der Flammenschlund
step << Warlock
    #softcore
    #completewith SkullRockWarlock
    .goto Durotar,47.05,17.58
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .isOnQuest 1501
step << Warlock
    #hardcore
    #completewith SkullRockWarlock
    .zone Durotar >> Verlass Orgrimmar
    .zoneskip Durotar
step << Warlock
    #label SkullRockWarlock
    .goto Durotar,54.95,9.61
    .subzone 817 >>Reist zur Knochenhöhle
    .isOnQuest 1501
step << Warlock
    #completewith VergaTablet
    >>Tötet |cRXP_ENEMY_Gazz'uz|r falls er up ist. Plündert ihn für |T134085:0|t[|cRXP_LOOT_Auge des brennenden Schatten|r]. Benutzt es, um die Quest zu starten.
    .collect 4903,1,832 --Collect Eye of Burning Shadow
    .accept 832 >>Akzeptiert die Quest Brennende Schatten
    .unitscan Gazz'uz
step << Warlock
    #completewith next
    >>Tötet |cRXP_ENEMY_Burning Blade Orks|r. Plündert sie für |cRXP_LOOT_Insignien des Lieutenants|r
    >>|cRXP_WARN_Überspringt dies, wenn ihr Pech mit dem Drop habt|r
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step << Warlock
    #label VergaTablet
    .goto Durotar,54.16,8.95,15,0
    .goto Durotar,51.62,9.76
    >>Plündert das |cRXP_PICK_Geheimlager der Burning Blade|r im hinteren Teil der Höhle für |cRXP_LOOT_Schrifttafel der Verga|r
    .complete 1501,1 --Tablet of Verga (1)
step << Warlock
    #softcore
    .goto Durotar,47.05,17.58
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .isQuestComplete 1501
step << Warlock
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Betretet Orgrimmar
    .zoneskip Orgrimmar
    .isQuestComplete 1501
step << Warlock
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Gebt die Quest Verborgene Feinde ab
    .accept 5727 >>Akzeptiert die Quest Verborgene Feinde
    .target Thrall
    .isQuestComplete 5726
step << Warlock
    #optional
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .accept 5727 >>Akzeptiert die Quest Verborgene Feinde
    .target Thrall
    .isQuestTurnedIn 5726
step << Warlock
    .goto Orgrimmar,48.246,45.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Gan'rul Bloodeye|r
    .turnin 1501 >>Gebt die Quest Kreatur der Leere ab
    .accept 1504 >>Die Bindung annehmen
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Neeru Fireblade|r
    .accept 832 >>Akzeptiert die Quest Brennende Schatten
    .turnin 832 >>Gebt die Quest Brennende Schatten ab
    .target Neeru Fireblade
    .skipgossip
    .itemcount 4903,1
step << Warlock
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Neeru Fireblade|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .isQuestTurnedIn 5726
step << Warlock
    #completewith next
    .cast 9221 >>|cRXP_WARN_Benutzt die|r |T134416:0|t[Glyphe der Beschwörung] |cRXP_WARN_am Beschwörungskreis|r
    .use 6284
step << Warlock
    .goto Orgrimmar,49.45,50.02
    >>Tötet den |cRXP_ENEMY_Beschworenen Leerwandler|r
    .complete 1504,1 --Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
step << Warlock
    .goto Orgrimmar,48.246,45.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Gan'rul Bloodeye|r
    .turnin 1504 >>Gebt die Quest Die Bindung ab
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >>Gebt die Quest Verborgene Feinde ab
    .target Thrall
    .isQuestTurnedIn 5726
step << Warlock
    #softcore
    #completewith ZeptoUC1
    .goto Orgrimmar,36.0,37.7
    .deathskip >>|cRXP_WARN_Remove your|r |T136185:0|t[Demon Skin] |cRXP_WARN_buff. Run on top of the brazier, and use|r |T136126:0|t[Life Tap] |cRXP_WARN_to deathskip out of Orgrimmar|r (NOT TRANSLATED IN :deDE YET)
step << Warlock
    #hardcore
    #completewith ZeptoUC1
    .goto Durotar,45.54,12.14
    .zone Durotar >>Verlasst Orgrimmar
step << Hunter
    #completewith ZeptoUC1
    .goto Durotar,45.54,12.14
    .zone Durotar >>Verlasst Orgrimmar
step << Hunter
    #completewith ZeptoUC1
    #loop
    .goto Durotar,43.73,16.42,0
    .goto Durotar,43.73,16.42,50,0
    .goto Durotar,41.52,20.06,50,0
    .goto Durotar,38.43,17.65,50,0
    .cast 1515 >>Zähmt einen |cRXP_ENEMY_Siechstachelskorpid|r
    >>|cRXP_WARN_Damit könnt ihr Folgendes trainieren:|r |T132140:0|t[Klaue Rang 2]
    .mob Venomtail Scorpid
    .train 16828,1 --Claw rank 2
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Akzeptiert die Quest Wind in der Wüste
    .target Rezlak
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    #label SupplySacks
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
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Gebt die Quest Wind in der Wüste ab
    .accept 835 >>Akzeptiert die Quest Sicherung der Linien
    .target Rezlak
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    #completewith next
    .goto Durotar,51.9,27.4,20 >>Go through the cave (NOT TRANSLATED IN :deDE YET)
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    #loop
    .goto Durotar,54.02,27.23,0
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70,40,0
    >>Tötet |cRXP_ENEMY_Wilde der Staubschwingen|r und |cRXP_ENEMY_Sturmhexe der Staubschwingen|r
    .complete 835,1 --Dustwind Savage (12)
    .mob +Dustwind Savage
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob +Dustwind Storm Witch
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    #softcore
    #completewith next
    .deathskip >> Die und respawn at the |cRXP_FRIENDLY_Geistheiler|ror run back
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    #hardcore
    #completewith next
    .goto Durotar,53.75,27.74,60,0
    .goto Durotar,51.75,27.40,60,0
    .goto Durotar,46.37,22.94,60 >> Reist durch die Höhle in Richtung |cRXP_FRIENDLY_Rezlak|r
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Gebt die Quest Sicherung der Linien ab
    .target Rezlak
step << !Shaman !Warrior
    #label ZeptoUC1
    .goto Durotar,50.8,13.8,40 >>Geh auf den Zeppelin-Turm
    .zone Tirisfal Glades >>Nehmt den Zeppelin nach Tirisfal
    .zoneskip Undercity
step << !Shaman !Warrior
    #completewith PorttoSilvermoon
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Betrete Unterstadt
step << !Shaman !Warrior
    #completewith PorttoSilvermoon
    .goto Undercity,62.0,11.3,18 >>Go up the stairs here (NOT TRANSLATED IN :deDE YET)
step << !Shaman !Warrior
    #label PorttoSilvermoon
    .goto Undercity,54.9,11.3
    .zone Silvermoon City >>Use the |cRXP_PICK_Orb of Translocation|r (NOT TRANSLATED IN :deDE YET)
step << Paladin
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ithelis|r or |cRXP_FRIENDLY_Osselan|r (NOT TRANSLATED IN :deDE YET)
    .trainer >>Trainiere deine Klassenfähigkeiten
	.target Ithelis
	.target Osselan
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP TBC Dungeonführer (H)
<< Horde
#name 10-13 Durotar
#version 7
#subgroup RestedXP Horde 1-30
#defaultfor Shaman !Tauren
#next 13-18 The Barrens


step << Warrior/Shaman
    #optional
    .xp 10 >>Farmt bis Stufe 10
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarshaw|r
    .accept 1505 >>Akzeptiert die Quest Veteran Uzzek
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Tarshaw Jaggedscar
    .train 355,1
step
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Akzeptiert die Quest Freiwilliger der Horde
    .target Takrin Pathseeker
step
    #xprate >1.49
    #loop
    .goto Durotar,50.21,50.78,0
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
    .isOnQuest 837
step
    #xprate >1.49
    #loop
	.goto Durotar,44.45,39.74,0
	.goto Durotar,44.45,39.74,30,0
	.goto Durotar,44.49,37.47,30,0
	.goto Durotar,43.30,37.32,30,0
	.goto Durotar,41.70,37.09,30,0
	.goto Durotar,41.64,38.27,30,0
	.goto Durotar,41.94,40.46,30,0
	.goto Durotar,43.30,40.40,30,0
    >>Tötet |cRXP_ENEMY_Staubläufer der Grimmhauer|r und |cRXP_ENEMY_Schlachtwache der Grimmhauer|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
    .isOnQuest 837
step
    #completewith next
    .goto The Barrens,62.26,19.38,40 >> Reist zur Fernwacht
    .zoneskip The Barrens
step
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
    .train 355,1
step << Orc Shaman/Troll Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kranal|r
    .turnin 2983 >>Gebt die Quest Ruf des Feuers ab
    .accept 1524 >>Akzeptiert die Quest Ruf des Feuers
    .target Kranal Fiss
step << !Tauren
    #softcore
    #completewith Xroads1
    .goto The Barrens,50.72,32.61
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .subzoneskip 380
step << !Tauren
    #hardcore
    #completewith Xroads1
    .goto The Barrens,52.34,29.27,150 >> Reist zum Wegekreuz
step << !Tauren
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>Akzeptiert die Quest Die Vergessenen Teiche
    .target Tonga Runetotem
step << !Tauren
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Gebt die Quest Wegekreuz-Wehrpflicht ab
    .accept 844 >>Akzeptiert die Quest Ebenenschreiter-Bedrohung
    .target Sergra Darkthorn
step << Orc/Troll
    .goto The Barrens,52.62,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Akzeptiert die Quest Fleisch für Orgrimmar
    .target Zargh
step << !Tauren
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Akzeptiert die Quest Raptordiebe
    .target Gazrog
step << !Tauren
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Akzeptiert die Quest Vereitelung der Angriffe
    .accept 5041 >>Akzeptiert die Quest Vorräte für Crossroads
    .target Thork
step << !Tauren
    #xprate <1.5
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    >>|cRXP_WARN_Fliegt NICHT nach Orgrimmar!|r
    .fp The Crossroads >> Erlernt die Flugroute beim Wegekreuz
    .target Devrak
    .subzoneskip 380,1
step << Orc/Troll
    #xprate <1.5
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    >>|cRXP_WARN_Fliegt NICHT nach Orgrimmar!|r
    .turnin 6365 >>Gebt die Quest Fleisch für Orgrimmar ab
    .accept 6384 >>Akzeptiert die Quest Flug nach Orgrimmar
    .target Devrak
step << !Tauren
    #label Xroads1
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helbrim|r
    .accept 848 >>Akzeptiert die Quest Pilzsporen
    .accept 1492 >>Werftmeister Flunkerblick annehmen
    .target Apothecary Helbrim
step << !Tauren
    #xprate <1.5
    #completewith next
    >>Sammelt |cRXP_LOOT_Potenter Pilz|r um Die vergessenen Teiche herum
    >>|cRXP_WARN_Haltet maximalen Abstand zu |cRXP_ENEMY_Kolkar|r |cRXP_WARN_während ihr die Pilze plündert. Sie sind Stufe 12-14|r
    >>|cRXP_WARN_Die Folgequest bietet den starken |cRXP_FRIENDLY_Kesselrührer|r |cRXP_WARN_als Belohnung. Ihr könnt diese Quest jetzt überspringen, wenn ihr ihn nicht verwenden wollt|r
    .complete 848,1 --Collect Fungal Spores (x4)
step << !Tauren
    #xprate <1.5
    .goto The Barrens,45.06,22.54
    >>Taucht unter Wasser zur |cRXP_PICK_Blubbernder Felsspalt|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step << !Tauren
    #xprate <1.5
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
step << !Tauren
    #xprate <1.5
    #hardcore
    #completewith PoolsTurnin
    .goto The Barrens,52.34,29.27,150,0
    .subzone 380 >> Reist zum Wegekreuz
step << !Tauren
    #xprate <1.5
    #softcore
    #completewith PoolsTurnin
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step << !Tauren
    #xprate <1.5
    #label FungalSporesComplete
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_WARN_Wartet bis das RP vorbei ist|r
    >>|cRXP_WARN_Dies startet eine 45-Minuten-Quest|r
    .turnin 848 >> Gebt die Quest Pilzsporen ab
    .timer 7,Pilzsporen RP
    .accept 853 >> Akzeptiert die Quest Apothekerin Zamah
    .target Apothecary Helbrim
step
    #xprate <1.5
    #sticky
    #completewith ZamahTurnin
    +|cRXP_WARN_Ihr seid auf einer zeitgesteuerten Quest, geht nicht afk. Sie wird 20-30 Minuten nach der Annahme automatisch abgegeben|r
    .isOnQuest 853
step << !Tauren
    #xprate <1.5
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Kauft einen oder mehrere|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_von|r |cRXP_BUY_ihm|r
    .collect 4496,1,853,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step << !Tauren
    #xprate <1.5
    #label PoolsTurnin
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>Gebt die Quest Die Vergessenen Teiche ab
    .accept 877 >>Akzeptiert die Quest Die Brackige Oase
    .target Tonga Runetotem
step << Warrior/Shaman
    #xprate <1.5
    #softcore
    #completewith next
    .goto The Barrens,49.75,49.54
    .subzone 378 >>Reist südlich die Straße hinunter zum Camp Taurajo
    >>|cRXP_WARN_Once you are at the waypoint arrow (or further north of it), die and respawn at the|r |cRXP_FRIENDLY_Spirit Healer|r (NOT TRANSLATED IN :deDE YET)
step << Warrior/Shaman
    #xprate <1.5
    #hardcore
    #completewith next
    .goto The Barrens,47.44,56.48,70,0
    .subzone 378 >>Reist südlich die Straße hinunter zum Camp Taurajo
step << Warrior/Shaman
    #xprate <1.5
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Erlernt die Camp Taurajo-Flugroute
    .target Omusa Thunderhorn
step << Warrior/Shaman
    #xprate <1.5
    #completewith next
    .zone Mulgore >>Travel to Mulgore (NOT TRANSLATED IN :deDE YET)
step << Warrior/Shaman
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
    .accept 749 >>Akzeptiert die Quest Die Überfallene Karawane
	.unitscan Morin Cloudstalker
step << !Tauren
    #xprate <1.5
    #completewith next
    .subzone 222 >>Reist zum Dorf der Bluthufe
step << !Tauren
    #xprate <1.5
    .goto Mulgore,48.2,53.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ahab|r
    .accept 11129 >>Akzeptiert die Quest Kyle wird vermisst!
    .target Ahab Wheathoof
step << !Tauren
    #xprate <1.5
    #completewith RavagedCaravanTI
    >>Kill a |cRXP_ENEMY_Ebenenschreiter|r.Loote it for |T134028:0|t[|cRXP_LOOT_Tender Strider Meat|r]
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .mob Adult Plainstrider
    .mob Elder Plainstrider
step << !Tauren
    #xprate <1.5
    .goto Mulgore,53.74,48.17
    >>Klickt die |cRXP_PICK_Versiegelte Vorratskiste|r
    .turnin 749 >>Gebt die Quest Die Überfallene Karawane ab
    .accept 751 >>Akzeptiert die Quest Die Überfallene Karawane
step << !Tauren
    #xprate <1.5
    #label RavagedCaravanTI
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
    .accept 764 >> Akzeptiert die Quest Die Venture Company
    .accept 765 >> Akzeptiert die Quest Vorsteher Fizsprocket
	.unitscan Morin Cloudstalker
step << !Tauren
    #xprate <1.5
    #completewith next
    >>Tötet |cRXP_ENEMY_Tagelöhner der Venture Co.|r und |cRXP_ENEMY_Vorsteher der Venture Co.|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step << !Tauren
    #xprate <1.5
    #label Fizsprocket1
    .goto Mulgore,64.95,43.33
    >>Tötet |cRXP_ENEMY_Vorsteher Fizsprocket|r. Plündert ihn für |cRXP_LOOT_Fizsprockets Klemmbrett|r
    >>|cRXP_WARN_Lauft in die Mine und haltet euch an der rechten/östlichen Seite, um ihn zu erreichen|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Vorsteher Zischelspross
step << !Tauren
    #xprate <1.5
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
step << !Tauren
    #xprate <1.5
    #completewith next
    >>Kill a |cRXP_ENEMY_Ebenenschreiter|r.Loote it for |T134028:0|t[|cRXP_LOOT_Tender Strider Meat|r]
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .mob Adult Plainstrider
    .mob Elder Plainstrider
step << !Tauren
    #xprate <1.5
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
step << !Tauren
    #xprate <1.5
    #loop
    .goto Mulgore,52.42,64.24,0
    .goto Mulgore,52.42,64.24,70,0
    .goto Mulgore,49.18,67.09,70,0
    .goto Mulgore,44.47,70.52,70,0
    .goto Mulgore,42.32,66.98,70,0
    .goto Mulgore,38.78,66.30,70,0
    >>Kill a |cRXP_ENEMY_Plainstrider|r. Loot it for |T134028:0|t[|cRXP_LOOT_Tender Strider Meat|r] (NOT TRANSLATED IN :deDE YET)
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .mob Adult Plainstrider
    .mob Elder Plainstrider
step << !Tauren
    #xprate <1.5
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
    --TODO: Test beta, bugged on pserver
step << !Tauren
    #xprate <1.5
    .goto Mulgore,48.2,53.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ahab|r
    .turnin 11129 >>Gebt die Quest Kyle wird vermisst! ab
    .target Ahab Wheathoof
step << !Tauren
    #xprate <1.5
    #completewith TBFP
    .goto Thunder Bluff,31.86,66.67,30,0
    .goto Thunder Bluff,36.17,62.76,20 >>Nehmt den Aufzug hinauf nach Donnerfels
step << !Tauren !Paladin !Shaman
    #xprate <1.5
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Erlernt Stäbe
    .target Ansekhwa
step << Paladin/Shaman
    #xprate <1.5
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Erlernen 2h Streitkolben
    .target Ansekhwa
    .money <0.1
step << !Tauren
    #xprate <1.5
    #completewith next
    .goto Thunder Bluff,45.6,52.0,15 >>Go up the tower (NOT TRANSLATED IN :deDE YET)
step << !Tauren
    #xprate <1.5
    #label TBFP
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fp Thunder Bluff >>Get the Thunder Bluff Flight Path (NOT TRANSLATED IN :deDE YET)
	.target Tal
step << !Tauren
    #xprate <1.5
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>Reist zur Anhöhe der Geister und begebt euch zu den Teichen der Visionen
step << !Tauren
    #xprate <1.5
    #label ZamahTurnin
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Gebt die Quest Apothekerin Zamah ab
    .target Apothecary Zamah
step << !Tauren
    #xprate <1.5
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rahauro|r
    .accept 5722 >>Akzeptiert die Quest Die Suche nach dem verloren gegangenen Ranzen
    .accept 5723 >>Akzeptiert die Quest Die Kraft des Feindes wird auf die Probe gestellt
    .target Rahauro
    .dungeon RFC
step << !Tauren
    #completewith LostPickup
    .hs >>Benutzt euren Ruhestein zum Klingenhügel
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
    .cooldown item,6948,>0
step << !Tauren
    #xprate <1.5
    #completewith LostPickup
    .hs >>Grind outside Thunder Bluff until your hearthstone is back up, then hearthstone to Razor Hill (NOT TRANSLATED IN :deDE YET)
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
    .cooldown item,6948,<0
step << !Tauren
    #xprate >1.49
    #completewith LostPickup
    .subzone 362 >>Reist nach Klingenhügel
    .bindlocation 362,1
    .cooldown item,6948,<0
step
    #xprate >1.49
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 837 >>Gebt die Quest Übergriff ab
    .target Gar'Thok
    .isQuestComplete 837
step
    #label LostPickup
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Misha|r
    .accept 816 >>Akzeptiert die Quest Verloren, aber nicht vergessen
    .target Misha Tor'kren
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
    .goto Durotar,41.54,18.59
    >>|cRXP_WARN_Dies startet einen 45-Minuten-Timer für die Quest. Geht in den nächsten 5 Minuten NICHT AFK und meldet euch nicht ab|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rhinag|r
    .accept 812 >>Akzeptiert die Quest Heilmittel benötigt
    .target Rhinag
step
    #completewith FindingAntidote
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Betretet Orgrimmar
    .zoneskip Orgrimmar
step << Orc/Troll
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit|r|cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Gebt die Quest Flug nach Orgrimmar ab
    .accept 6385 >>Akzeptiert die Quest Doras der Windreitermeister
    .target Innkeeper Gryshka
step << Orc/Troll
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |r |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >> Gebt die Quest Doras der Windreitermeister ab
    .accept 6386 >> Akzeptiert die Quest Kehrt nach Crossroads zurück
    .target Doras
step << Orc/Troll
    .goto Orgrimmar,34.37,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vol'Jin|r
    .turnin 831 >>Gebt die Quest Die Befehle des Admirals ab
    .target Vol'Jin
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Akzeptiert die Quest Verborgene Feinde
    .target Thrall
step << Paladin
    .goto Orgrimmar,32.3,35.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Meister Pyreanor|r
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Master Pyreanor
step
    #label FindingAntidote
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kor'ghan|r in der Kluft der Schatten
    .accept 813 >>Akzeptiert die Quest Suche nach dem Gegengift
    .target Kor'ghan
step
    #completewith FizzleKill
    >>|cRXP_WARN_Brecht die Quest Heilmittel benötigt ab. Dies entfernt den Timer der Quest, aber ihr könnt sie dennoch machen|r
    .abandon 812 >>Brecht die Quest Heilmittel benötigt ab
step
    #softcore
    #completewith FizzleKill
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >> Betretet Der Flammenschlund
    .zoneskip Durotar
step
    #softcore
    #completewith FizzleKill
    .goto Durotar,47.05,17.58
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
    #hardcore
    #completewith FizzleKill
    .goto Durotar,45.54,12.14
    .zone Durotar >>Verlasst Orgrimmar
step
    #completewith next
    .goto Durotar,41.66,25.68,20 >>Springt in den Donnergrat
    .goto Durotar,41.66,25.68,20 >>|cRXP_WARN_Dismiss your|r |T136218:0|t[Imp] |cRXP_WARN_oder|r |T136221:0|t[Voidwalker] |cRXP_WARN_by right clicking its unit frame and clicking dismiss|r << Warlock
    .cast 2641 >>|cRXP_WARN_Wirkt|r |T136095:0|t[Tier freigeben] |cRXP_WARN_und springt dann in Donnergrat|r << Hunter
step
    #label FizzleKill
    .goto Durotar,42.13,26.67
    >>Tötet |cRXP_ENEMY_Fizzle Dunkelsturm|r und plündert ihn für seine |cRXP_LOOT_Klaue|r
    >>|cRXP_WARN_Be careful. Kill the patrolling|r |cRXP_ENEMY_Fanatiker der Brennenden Klinge|r |cRXP_WARN_before you pull him|r
    >>Tötet|cRXP_WARN_ den Wichtel zunächst. Benutzt|r |T132155:0|t[Solarplexus] |cRXP_WARN_wenn er|r |T136169:0|t[Seelenentzug] wirkt << Rogue
    >>Tötet|cRXP_WARN_ den Wichtel zunächst. Benutzt|r |T136026:0|t[Erdschock] |cRXP_WARN_wenn er|r |T136169:0|t[Seelenentzug] wirkt << Shaman
    >>|cRXP_WARN_Ihr könnt|r |T136071:0|t[Verwandlung] |cRXP_WARN_auf|r |cRXP_ENEMY_Fizzle|r wirken |cRXP_WARN_und tötet|r |cRXP_ENEMY_Wichtel|r |cRXP_WARN_zuerst|r << Mage
    >>|cRXP_WARN_Tötet den Wichtel zuerst|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_Benutzt einen|r |T134829:0|t[Schwacher Heiltrank] |cRXP_WARN_falls ihr ihn habt und euren|r |T133728:0|t[Schwach leuchtender Schädel] |cRXP_WARN_falls erforderlich|r << !Warlock
    >>|cRXP_WARN_Benutzt einen|r |T134829:0|t[Schwacher Heiltrank], |T133728:0|t[Schwacher Gesundheitsstein] |cRXP_WARN_falls ihr ihn habt und euren|r |T133728:0|t[Schwach leuchtender Schädel] |cRXP_WARN_falls erforderlich|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step << Warrior
    #completewith next
    .goto Durotar,39.2,32.3,30 >>Leave Thunder Ridge (NOT TRANSLATED IN :deDE YET)
step << Warrior
    #loop
    .goto Durotar,43.19,24.34,0
    .goto Durotar,39.16,30.84,40,0
    .goto Durotar,39.23,28.38,40,0
    .goto Durotar,39.43,24.94,40,0
    .goto Durotar,41.39,24.28,40,0
    .goto Durotar,43.19,24.34,40,0
    >>Tötet |cRXP_ENEMY_Blitzechse|r. Plündert sie für ihre |cRXP_ENEMY_Schuppen|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
    .train 355,1
step << !Warrior
    .goto Durotar,39.2,32.3,30 >>Leave Thunder Ridge (NOT TRANSLATED IN :deDE YET)
    .isQuestComplete 806
step << !Troll Shaman !Orc Shaman
    .goto Durotar,34.71,42.30,0
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.71,42.30
    >>|cRXP_WARN_Travel south alongside the river toward Far Watch Post|r (NOT TRANSLATED IN :deDE YET)
    >>Tötet |cRXP_ENEMY_Schaudermagenkrokilisk|r auf dem Weg. Plündert sie für |cRXP_LOOT_Krons Amulett|r
    >>|cRXP_WARN_Skip this quest for now if it won't drop|r (NOT TRANSLATED IN :deDE YET)
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Troll Shaman/Orc Shaman
    #completewith next
    .goto Durotar,34.71,42.30,0
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.71,42.30,50,0
    >>|cRXP_WARN_Travel south alongside the river|r (NOT TRANSLATED IN :deDE YET)
    >>Tötet |cRXP_ENEMY_Schaudermagenkrokilisk|r auf dem Weg. Plündert sie für |cRXP_LOOT_Krons Amulett|r
    >>|cRXP_WARN_Skip this quest for now if it won't drop|r (NOT TRANSLATED IN :deDE YET)
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Troll Shaman/Orc Shaman
    .goto Durotar,35.53,56.89,100 >>Arrive at the southern point of the river (NOT TRANSLATED IN :deDE YET)
    .isOnQuest 1524
step << Troll Shaman/Orc Shaman
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
step << Troll Shaman/Orc Shaman
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Gebt die Quest Ruf des Feuers ab
    .accept 1525 >>Akzeptiert die Quest Ruf des Feuers
    .target Telf Joolam
step
    #softcore
    #completewith next
    .deathskip >>Sterbt und respawnt am |cRXP_FRIENDLY_Geistheiler|r, oder lauft zum Klingenhügel
step
    #hardcore
    #completewith next
    .subzone 362 >>Reist nach Klingenhügel
    .subzoneskip 362
step
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Orgnil|r
    .turnin 806 >>Gebt die Quest Dunkle Stürme ab
    .accept 828 >>Akzeptiert die Quest Margoz
    .target Orgnil Soulscar
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Swart|r
    .train 547 >> Trainiere deine Klassenfähigkeiten
    .target Swart
    .xp <12,1
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarshaw|r
    .train 7384 >> Trainiere deine Klassenfähigkeiten
    .target Tarshaw Jaggedscar
    .xp <12,1
step
    #completewith next
    .goto Durotar,56.30,27.91,80,0
    .goto Durotar,56.41,20.04,50 >> Reist zu |cRXP_FRIENDLY_Margoz|r
step
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Margoz|r
    .turnin 828 >>Gebt die Quest Margoz ab
    .accept 827 >>Akzeptiert die Quest Die Knochenhöhle
    .target Margoz
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Siechstachelskorpid|r. Plündert sie für |cRXP_LOOT_Giftbeutel eines Siechstachelskorpiden|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step
    #label EnterGazzuzCave
    #completewith Gazzuz
    .goto Durotar,55.09,9.91,20 >>Betretet die Höhle
step
    #requires EnterGazzuzCave
    #completewith Gazzuz
    .goto Durotar,54.72,8.78,15,0
    .goto Durotar,54.29,8.89,15,0
    .goto Durotar,53.77,8.87,15,0
    .goto Durotar,53.37,7.73,15,0
    .goto Durotar,52.73,7.85,15,0
    .goto Durotar,52.42,8.59,15,0
    .goto Durotar,51.65,8.19,15,0
    .goto Durotar,51.39,8.71,15,0
    .goto Durotar,51.48,9.71,15,0
    >>Tötet |cRXP_ENEMY_Burning Blade Orks|r. Sammelt Beute für |cRXP_LOOT_Senghalsband|r und für |cRXP_LOOT_Insignien des Lieutenants|r
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step
    #requires EnterGazzuzCave
    #softcore
    #label Gazzuz
    .goto Durotar,51.8,10.0
    >>Tötet |cRXP_ENEMY_Gazz'uz|r. Plündert ihn für |T134085:0|t[|cRXP_LOOT_Auge des brennenden Schatten|r]
    >>|cRXP_WARN_Benutzt |T134085:0|t[|cRXP_LOOT_Auge des brennenden Schatten|r] um die Quest zu starten|r
    >>|cRXP_WARN_Ihr könnt zu Gewässern innerhalb der Höhle fliehen um dem|r Leerwandler|cRXP_ENEMY_ nach dem Töten von|r |cRXP_WARN_Gazz'uz|r |cRXP_ENEMY_zu entkommen|r
    >>|cRXP_WARN_Be careful as he is difficult. You can skip this quest if you need|r (NOT TRANSLATED IN :deDE YET)
    .collect 4903,1,832,1 --Collect Eye of Burning Shadow
    .accept 832 >>Akzeptiert die Quest Brennende Schatten
    .use 4903
	.unitscan Gazz'uz
step
    #requires EnterGazzuzCave
    #hardcore
    #label Gazzuz
    .goto Durotar,51.8,10.0
    >>Tötet |cRXP_ENEMY_Gazz'uz|r. Plündert ihn für |T134085:0|t[|cRXP_LOOT_Auge des brennenden Schatten|r]
    >>|cRXP_WARN_Benutzt |T134085:0|t[|cRXP_LOOT_Auge des brennenden Schatten|r] um die Quest zu starten|r
    >>|cRXP_WARN_Ihr könnt zu Gewässern innerhalb der Höhle fliehen um dem|r Leerwandler|cRXP_ENEMY_ nach dem Töten von|r |cRXP_WARN_Gazz'uz|r |cRXP_ENEMY_zu entkommen|r
    >>|cRXP_WARN_This quest is VERY difficult to solo. Skip it if you can't find a group|r (NOT TRANSLATED IN :deDE YET)
    .collect 4903,1,832,1 --Collect Eye of Burning Shadow
    .accept 832 >>Akzeptiert die Quest Brennende Schatten
    .use 4903
	.unitscan Gazz'uz
    .group 2
step
    #requires EnterGazzuzCave
    #loop
    .goto Durotar,53.77,8.87,0
    .goto Durotar,54.72,8.78,15,0
    .goto Durotar,54.29,8.89,15,0
    .goto Durotar,53.77,8.87,15,0
    .goto Durotar,53.37,7.73,15,0
    .goto Durotar,52.73,7.85,15,0
    .goto Durotar,52.42,8.59,15,0
    .goto Durotar,51.65,8.19,15,0
    .goto Durotar,51.39,8.71,15,0
    .goto Durotar,51.48,9.71,15,0
    >>Tötet |cRXP_ENEMY_Burning Blade Orks|r. Sammelt Beute für |cRXP_LOOT_Senghalsband|r und für |cRXP_LOOT_Insignien des Lieutenants|r
    >>|cRXP_WARN_Überspringt die|r |cRXP_LOOT_Insignien des Lieutenants|r |cRXP_WARN_falls ihr pech mit den Drops habt|r
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Siechstachelskorpid|r. Plündert sie für |cRXP_LOOT_Giftbeutel eines Siechstachelskorpiden|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Margoz|r
    .turnin 827 >>Gebt die Quest Die Knochenhöhle ab
    .accept 829 >>Akzeptiert die Quest Neeru Fireblade
    .target Margoz
step << Shaman
    #completewith next
    .subzone 371 >>Reist zu Staubwindhöhle
step << Shaman
    .goto Durotar,51.90,25.70,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70,12,0
    >>Tötet |cRXP_ENEMY_Kultist der Burning Blade|r. Plündert sie für |cRXP_LOOT_Reagenzienbeutel|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step << !Shaman
    #completewith next
    .goto Durotar,53.41,27.81,15 >>Reist durch die Höhle
step << Shaman
    #completewith next
    .goto Durotar,53.94,27.85,30 >>Jump down into Drygulch Ravine (NOT TRANSLATED IN :deDE YET)
step
    #loop
    .goto Durotar,54.02,27.23,0
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70,40,0
    >>Tötet |cRXP_ENEMY_Wilde der Staubschwingen|r und |cRXP_ENEMY_Sturmhexe der Staubschwingen|r
    .complete 835,1 --Dustwind Savage (12)
    .mob +Dustwind Savage
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob +Dustwind Storm Witch
step
    #softcore
    #completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .isQuestComplete 813 --don't want ress sickness if more Scorpids need to get killed before entering ORG
step
    #hardcore
    #completewith next
    .goto Durotar,53.75,27.74,60,0
    .goto Durotar,51.75,27.40,60,0
    .goto Durotar,46.37,22.94,60 >> Reist durch die Höhle in Richtung |cRXP_FRIENDLY_Rezlak|r
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Gebt die Quest Sicherung der Linien ab
    .target Rezlak
step
    #loop
    .goto Durotar,42.09,20.91,0
    .goto Durotar,42.09,20.91,50,0
    .goto Durotar,39.38,18.69,50,0
    .goto Durotar,41.22,16.82,50,0
    .goto Durotar,44.14,17.17,50,0
    .goto Durotar,36.75,25.47,50,0
    >>Tötet |cRXP_ENEMY_Siechstachelskorpid|r. Plündert sie für |cRXP_LOOT_Giftbeutel eines Siechstachelskorpiden|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
    .isOnQuest 813
step
    #completewith NeeruFireblade
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>Betretet Orgrimmar
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Gebt die Quest Verborgene Feinde ab
    .target Thrall
    .isQuestComplete 5726
step
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|rSprecht mit|cRXP_FRIENDLY_ Kor'ghan|r
    .turnin 813 >>Gebt die Quest Suche nach dem Gegengift ab
    .target Kor'ghan
    .itemcount 4904,<1 --Venomtail Antidote
step
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Gebt die Quest Neeru Fireblade ab
    .turnin 832 >>Gebt die Quest Brennende Schatten ab
    .accept 809 >>Akzeptiert die Quest Ak'zeloth
    .target Neeru Fireblade
    .isOnQuest 832
step
    #label NeeruFireblade
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Gebt die Quest Neeru Fireblade ab
    .accept 809 >>Akzeptiert die Quest Ak'zeloth
    .target Neeru Fireblade
step
    #hardcore
    #completewith FoundtheCure
    .zone Durotar >> Verlass Orgrimmar
step
    #softcore
    #completewith next
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >> Betretet Der Flammenschlund
    .zoneskip Durotar
step
    #softcore
    #completewith FoundtheCure
    .goto Durotar,47.05,17.58
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
    #label FoundtheCure
    .goto Durotar,41.54,18.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rhinag|r
    .accept 812 >>Akzeptiert die Quest Heilmittel benötigt
    .turnin 812 >>Gebt die Quest Heilmittel benötigt ab
    .target Rhinag
step
    #label AmuletFound
    #completewith FarWatchP
    .goto Durotar,34.71,42.30,0
    .goto Durotar,34.44,44.53,50,01
    >>Kill |cRXP_ENEMY_Dreadmaw Crocolisks|r on the way to Far Watch Post. Loot them for |cRXP_LOOT_Kron's Amulet|r (NOT TRANSLATED IN :deDE YET)
    >>|cRXP_WARN_Skip this quest if it won't drop|r (NOT TRANSLATED IN :deDE YET)
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
    .isOnQuest 816
step
    #requires AmuletFound
    #completewith FarWatchP
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Misha|r
    .turnin 816 >>Gebt die Quest Verloren, aber nicht vergessen ab
    .target Misha Tor'kren
step
    #label FarWatchP
    .goto The Barrens,62.26,19.38
    .subzone 379 >>Reist zur Fernwacht
    .zoneskip The Barrens
step
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Gebt die Quest Ak'zeloth ab
    .accept 924 >>Akzeptiert die Quest Die Dämonensaat
    .target Ak'Zeloth
step
    .goto The Barrens,62.34,20.03
    >>|cRXP_WARN_Plündert den|r |T134095:0|t[Fehlerhaften Kraftstein] |cRXP_WARN_neben|r |cRXP_FRIENDLY_Ak'zeloth|r|cRXP_WARN_. Dieser Gegenstand hat einen 30-Minuten-Timer, daher müsst ihr schnell sein|r
    .turnin 926 >>Gebt die Quest Fehlerhafter Kraftstein ab
    .isOnQuest 924
step << Warrior
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Gebt die Quest Weg der Verteidigung ab
    .accept 1502 >>Akzeptiert die Quest Thun'grim Firegaze
    .target Uzzek
    .train 355,1
step
    #optional
    .abandon 816 >>Brecht die Quest Verloren, aber nicht vergessen ab
step
    #optional
    .abandon 5726 >>Brecht die Quest Verborgene Feinde ab
]])
