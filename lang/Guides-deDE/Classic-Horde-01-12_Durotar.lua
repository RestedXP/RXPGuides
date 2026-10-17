if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate <1.99
<< Horde
#name 1-6 Durotar
#version 11
#group RestedXP Horde 1-22
#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 6-10 Durotar


step << !Orc !Troll
    #completewith next
    +|cRXP_WARN_Ihr habt einen Leitfaden ausgewählt, der für Orks und Trolle bestimmt ist. Ihr solltet dieselbe Startzone wählen, in der ihr startet|r
step << !Troll Mage
    #season 2
    #completewith next
    +In Season of Discovery solltet ihr NICHT außerhalb der Startzone der Rasse von Euch als Magier starten, da ihr sond die erste Rune von Euch nicht erhalten könnt (|T133816:0|t[Handschuhe prägen - Eislanze])
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
    .goto Durotar,42.28,68.48,12,0 << !Warrior !Shaman
    .goto Durotar,42.29,68.39,12,0 << Warrior/Shaman
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
    #softcore
    #completewith Nartok
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>Reisen zu |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock
    #softcore
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Reist zu |cRXP_FRIENDLY_Hraug|r
    .money >0.01
step << Warlock
    #hardcore
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Reist zu |cRXP_FRIENDLY_Hraug|r
step << Warlock
    #softcore
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hraug|r
    .vendor >>Verkauft Müll
    .target Hraug
    .money >0.01
step << Warlock
    #hardcore
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hraug|r
    .vendor >>Verkauft Müll
    .target Hraug
step << Warlock
    #season 2
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nartok|r
    .accept 77586 >>Akzeptiert die Quest Gestohlene Macht
    .train 348 >>Erlernt |T135817:0|t[Feuerbrand]
    .target Nartok
step << Warlock
    #season 0
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nartok|r
    .train 348 >>Erlernt |T135817:0|t[Feuerbrand]
    .target Nartok
step << !Warrior !Rogue
    #softcore
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
    .goto Durotar,43.57,67.28,25,0
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
    .goto Durotar,43.87,58.42,40,0
    .goto Durotar,44.53,58.62,40,0
    .goto Durotar,45.18,58.42,40,0
    .goto Durotar,45.83,58.59,40,0
    .goto Durotar,45.79,57.43,40,0
    .goto Durotar,46.46,57.57,40,0
    .goto Durotar,47.19,57.12,40,0
    .goto Durotar,46.21,56.69,40,0
    .goto Durotar,46.28,56.11,40,0
    .goto Durotar,45.65,56.90,40,0
    .goto Durotar,45.35,56.32,40,0
    .goto Durotar,44.77,56.87,40,0
    .goto Durotar,44.58,56.10,40,0
    .goto Durotar,44.27,56.59,40,0
    .goto Durotar,43.85,55.52,40,0
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
    #season 2
    #label Sarkoth
    .goto Durotar,40.60,66.80
    >>Tötet |cRXP_ENEMY_Sarkoth|r. Plündert ihn für |cRXP_LOOT_Sarkoths zerstückelte Klaue|r << !Hunter !Warrior
    .complete 790,1 --Sarkoth's Mangled Claw (1)
    .mob Sarkoth
step
    #season 0
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
    .goto Durotar,41.30,65.03,40,0
    .goto Durotar,41.92,64.74,40,0
    .goto Durotar,42.66,64.92,40,0
    .goto Durotar,43.31,65.02,40,0
    .goto Durotar,43.90,65.96,40,0
    .goto Durotar,44.54,65.96,40,0
    .goto Durotar,45.16,65.77,40,0
    .goto Durotar,45.72,65.93,40,0
    .goto Durotar,45.72,65.04,40,0
    .goto Durotar,45.21,63.95,40,0
    .goto Durotar,45.83,63.01,40,0
    .goto Durotar,45.81,62.17,40,0
    .goto Durotar,45.78,61.14,40,0
    .goto Durotar,45.15,60.20,40,0
    .goto Durotar,44.50,59.45,40,0
    .goto Durotar,43.86,60.43,40,0
    .goto Durotar,43.07,60.24,40,0
    .goto Durotar,42.58,60.09,40,0
    .goto Durotar,42.02,61.19,40,0
    .goto Durotar,42.02,62.15,40,0
    .goto Durotar,42.00,62.92,40,0
    .goto Durotar,41.99,64.03,40,0
    >>Tötet |cRXP_ENEMY_Scheckiger Eber|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock/Warrior/Shaman/Hunter
    #xprate >1.49
    #loop
	.goto Durotar,41.30,65.03,0
    .goto Durotar,41.30,65.03,40,0
    .goto Durotar,41.92,64.74,40,0
    .goto Durotar,42.66,64.92,40,0
    .goto Durotar,43.31,65.02,40,0
    .goto Durotar,43.90,65.96,40,0
    .goto Durotar,44.54,65.96,40,0
    .goto Durotar,45.16,65.77,40,0
    .goto Durotar,45.72,65.93,40,0
    .goto Durotar,45.72,65.04,40,0
    .goto Durotar,45.21,63.95,40,0
    .goto Durotar,45.83,63.01,40,0
    .goto Durotar,45.81,62.17,40,0
    .goto Durotar,45.78,61.14,40,0
    .goto Durotar,45.15,60.20,40,0
    .goto Durotar,44.50,59.45,40,0
    .goto Durotar,43.86,60.43,40,0
    .goto Durotar,43.07,60.24,40,0
    .goto Durotar,42.58,60.09,40,0
    .goto Durotar,42.02,61.19,40,0
    .goto Durotar,42.02,62.15,40,0
    .goto Durotar,42.00,62.92,40,0
    .goto Durotar,41.99,64.03,40,0
    .xp 3+325 >> Farmt bis 325+/1400xp << Warlock
    .xp 3+925 >> Farmt bis 925+/1400xp << Warrior/Shaman/Hunter
    .mob Mottled Boar
step << Warlock
    #xprate <1.5
    #loop
	.goto Durotar,41.30,65.03,0
    .goto Durotar,41.30,65.03,40,0
    .goto Durotar,41.92,64.74,40,0
    .goto Durotar,42.66,64.92,40,0
    .goto Durotar,43.31,65.02,40,0
    .goto Durotar,43.90,65.96,40,0
    .goto Durotar,44.54,65.96,40,0
    .goto Durotar,45.16,65.77,40,0
    .goto Durotar,45.72,65.93,40,0
    .goto Durotar,45.72,65.04,40,0
    .goto Durotar,45.21,63.95,40,0
    .goto Durotar,45.83,63.01,40,0
    .goto Durotar,45.81,62.17,40,0
    .goto Durotar,45.78,61.14,40,0
    .goto Durotar,45.15,60.20,40,0
    .goto Durotar,44.50,59.45,40,0
    .goto Durotar,43.86,60.43,40,0
    .goto Durotar,43.07,60.24,40,0
    .goto Durotar,42.58,60.09,40,0
    .goto Durotar,42.02,61.19,40,0
    .goto Durotar,42.02,62.15,40,0
    .goto Durotar,42.00,62.92,40,0
    .goto Durotar,41.99,64.03,40,0
    .xp 3+685 >> Farmt bis 685+/1400xp
    .mob Mottled Boar
step << Warlock
    #xprate <1.5
    #completewith Ruzan2
	>>|cRXP_WARN_Farmt |cRXP_ENEMY_Scheckiger Eber|r. Plündert sie, bis ihr Gegenstände im Wert von 1 Silber habt|r
    .mob Mottled Boar
	.money >0.01
step << Warlock/Warrior/Shaman/Hunter
    #xprate >1.49
    #completewith Ruzan2
	>>|cRXP_WARN_Farmt |cRXP_ENEMY_Scheckiger Eber|r. Plündert sie, bis ihr Gegenstände im Wert von 2 Silber habt|r << Warrior
	>>|cRXP_WARN_Farmt |cRXP_ENEMY_Scheckiger Eber|r. Sammelt Beute von ihnen bis ihr 1 Silber 75 Kupfer Wert an Verkaufsgegenständen habt|r << Warlock
	>>|cRXP_WARN_Farmt |cRXP_ENEMY_Scheckiger Eber|r. Sammelt Beute von ihnen bis ihr 1 Silber 10 Kupfer Wert an Verkaufsgegenständen habt|r << Hunter
	>>|cRXP_WARN_Farmt |cRXP_ENEMY_Scheckiger Eber|r. Plündert sie, bis ihr Gegenstände im Wert von 1 Silber habt|r << Shaman
    .mob Mottled Boar
	.money >0.02 << Warrior
	.money >0.0175 << Warlock
	.money >0.011 << Hunter
	.money >0.01 << Shaman
step << Rogue
    #label Duokna2
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
    #season 0
    #completewith Rwag
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>Reist zu |cRXP_FRIENDLY_Rwag|r
step << Rogue
    #season 0
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Gebt die Quest Verschlüsselte Schrifttafel ab << Troll Rogue
    .turnin 3088 >>Gebt die Quest Verschlüsseltes Pergament ab << Orc Rogue
    .train 53 >> Erlernt |T132090:0|t[Meucheln]
    .target Rwag
    .money <0.04
    .xp <4,1
step << Rogue
    #season 0
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
    #season 2
    #label Nartok2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Gebt die Quest Besudeltes Pergament ab
    .accept 77586 >>Akzeptiert die Quest Gestohlene Macht
    .target Nartok
step << Warlock
    #season 0
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
    #xprate <1.5
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
step << !Rogue
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Duokna|r
    >>|cFF0E8312Buy|r |T132794:0|t[Erfrischendes Quellwasser] |cFF0E8312von ihr|r << !Rogue !Warrior !Hunter !Shaman
    >>|cFF0E8312Buy|r |T132382:0|t[Raue Pfeile] |cFF0E8312von ihr|r << Hunter
    >>|cRXP_WARN_Spart 10 Kupfer für das trainieren von|r |T135932:0|t[Arkane Intelligenz] << Mage
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Verkauft Müll
    .target Duokna
    .money <0.005 << Hunter
    .money >0.1 << Rogue/Warrior/Shaman
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << Hunter
    #optional
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Kauft|r |T132382:0|t[Rauer Pfeil] |cRXP_BUY_von ihr|r
    .collect 2512,400,6394,1 --Rough Arrow (400)
    .vendor >> Verkauft Müll
    .target Duokna
    .money <0.002
    .itemcount 2512,<200
step << Hunter
    #optional
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Kauft|r |T132382:0|t[Rauer Pfeil] |cRXP_BUY_von ihr|r
    .collect 2512,200,6394,1 --Rough Arrow (200)
    .vendor >> Verkauft Müll
    .target Duokna
    .money <0.001
    .itemcount 2512,<200
step << Shaman
    #season 2
    #xprate >1.49
    #requires Galgar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shikrik|r und |cRXP_FRIENDLY_Canaga|r
    .turnin 3084 >>Abgeben Mit Runen beschriftete Schrifttafel << Troll
    .turnin 3089 >>Abgeben: Mit Runen beschriftetes Pergament << Orc
    .accept 77587 >>Akzeptiert die Symbole der Macht << Troll Shaman
    .accept 77585 >>Akzeptiert die Symbole der Macht << Orc Shaman
    .train 8042 >>Erlernt |T136026:0|t[Erdschock]
    .goto Durotar,42.39,69.00
    .accept 1516 >>Akzeptiert die Quest Ruf der Erde
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Shaman
    #season 2
    #xprate <1.5
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Abgeben Mit Runen beschriftete Schrifttafel << Troll
    .turnin 3089 >>Abgeben: Mit Runen beschriftetes Pergament << Orc
    .accept 77587 >>Akzeptiert die Symbole der Macht << Troll Shaman
    .accept 77585 >>Akzeptiert die Symbole der Macht << Orc Shaman
    .target Shikrik
step << Shaman
    #season 0
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Abgeben Mit Runen beschriftete Schrifttafel << Troll
    .turnin 3089 >>Abgeben: Mit Runen beschriftetes Pergament << Orc
    .target Shikrik
step << Mage
    #season 2
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Abgeben Glyphen-Schrifttafel << Troll
    .accept 77643 >>Akzeptiert die Quest Zauberforschung << Troll Mage
    .train 1459 >> Erlernt |T135932:0|t[Arkane Intelligenz]
    .target Mai'ah
step << Mage
    #season 0
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Abgeben Glyphen-Schrifttafel << Troll
    .train 1459 >> Erlernt |T135932:0|t[Arkane Intelligenz]
    .target Mai'ah
step << !Warlock
    #requires Galgar
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zureetha|r
    .accept 792 >>Nehmt die Quest Üble Familiare an
    .target Zureetha Fargaze
step << Hunter
    #season 2
    #xprate >1.49
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Gebt die Quest Geätzte Schrifttafel ab << Troll
    .turnin 3087 >>Gebt die Quest Geätzte Pergament ab << Orc
    .accept 77590 >>Akzeptiert die Quest Unwegsames Terrain << Troll Hunter
    .accept 77584 >>Akzeptiert die Quest Jagd auf die Rune << Orc Hunter
    .train 1978 >> Erlernt |T132204:0|t[Schlangengift]
    .target Jen'shan
    .money <0.01
step << Hunter
    #season 2
    #xprate >1.49
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Gebt die Quest Geätzte Schrifttafel ab << Troll
    .turnin 3087 >>Gebt die Quest Geätzte Pergament ab << Orc
    .accept 77590 >>Akzeptiert die Quest Unwegsames Terrain << Troll Hunter
    .accept 77584 >>Akzeptiert die Quest Jagd auf die Rune << Orc Hunter
    .target Jen'shan
step << Hunter
    #xprate <1.5
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Gebt die Quest Geätzte Schrifttafel ab << Troll
    .turnin 3087 >>Gebt die Quest Geätzte Pergament ab << Orc
    .accept 77590 >>Akzeptiert die Quest Unwegsames Terrain << Troll Hunter
    .accept 77584 >>Akzeptiert die Quest Jagd auf die Rune << Orc Hunter
    .target Jen'shan
step << Hunter
    #xprate >1.49
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Gebt die Quest Geätzte Schrifttafel ab << Troll
    .turnin 3087 >>Gebt die Quest Geätzte Pergament ab << Orc
    .train 1978 >> Erlernt |T132204:0|t[Schlangengift]
    .target Jen'shan
    .money <0.01
step << Hunter
    #xprate >1.49
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Gebt die Quest Geätzte Schrifttafel ab << Troll
    .turnin 3087 >>Gebt die Quest Geätzte Pergament ab << Orc
    .target Jen'shan
step << Hunter
    #xprate <1.5
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Gebt die Quest Geätzte Schrifttafel ab << Troll
    .turnin 3087 >>Gebt die Quest Geätzte Pergament ab << Orc
    .target Jen'shan
step << Warrior
    #xprate >1.49
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Gebt die Quest Einfaches Pergament ab << Orc
    .turnin 3065 >>Gebt die Quest Einfache Schrifttafel ab << Troll
    .accept 77588 >>Akzeptiert die Quest Eignungsprüfung << Troll
    .accept 77582 >>Akzeptiert die Quest Eignungsprüfung << Orc
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Frang
    .money <0.01
step << Warrior
    #xprate >1.49
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Gebt die Quest Einfaches Pergament ab << Orc
    .turnin 3065 >>Gebt die Quest Einfache Schrifttafel ab << Troll
    .accept 77588 >>Akzeptiert die Quest Eignungsprüfung << Troll
    .accept 77582 >>Akzeptiert die Quest Eignungsprüfung << Orc
    .target Frang
step << Warrior
    #xprate >1.49
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Gebt die Quest Einfaches Pergament ab << Orc
    .turnin 3065 >>Gebt die Quest Einfache Schrifttafel ab << Troll
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Frang
    .money <0.01
step << Warrior
    #xprate >1.49
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Gebt die Quest Einfaches Pergament ab << Orc
    .turnin 3065 >>Gebt die Quest Einfache Schrifttafel ab << Troll
    .target Frang
step << Warrior
    #xprate <1.5
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Gebt die Quest Einfaches Pergament ab << Orc
    .turnin 3065 >>Gebt die Quest Einfache Schrifttafel ab << Troll
    .accept 77588 >>Akzeptiert die Quest Eignungsprüfung << Troll
    .accept 77582 >>Akzeptiert die Quest Eignungsprüfung << Orc
    .target Frang
step << Warrior
    #xprate <1.5
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Gebt die Quest Einfaches Pergament ab << Orc
    .turnin 3065 >>Gebt die Quest Einfache Schrifttafel ab << Troll
    .target Frang
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
    .turnin 3085 >>Gebt die Quest Geheiligte Schrifttafel ab
    .accept 77642 >>Akzeptiert die Quest Weisheit der Loa
    .target Ken'jai
step << Shaman
    .goto Durotar,40.47,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kzan|r
    .collect 2132,1,5441,1 --Collect Short Staff (1)
    .money <0.0102
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
    .target Kzan Thornslash
step
    #requires Galgar << Warlock
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thazz'ril|r
    .accept 5441 >>Annehmen Faule Peons
    .target Foreman Thazz'ril
step << Priest
    #season 2
    .goto Durotar,55.41,72.84
    >>Reist zur Statue des |cRXP_FRIENDLY_Schlangenloa|r in Sen'Jin und tippt /knien
    .use 205951 >>Sprecht mit dem |cRXP_FRIENDLY_Schlangen Loa|r wenn er erscheint, dann nutze |T136222:0|t[|cRXP_FRIENDLY_Erinnerung an einen besorgten Akolythen|r]
    .complete 77642,1 --Learn Spell: Engrave Gloves - Penance
    .target Serpent Loa
    .skipgossip
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
    .turnin 77642 >>Gebt die Quest Weisheit der Loa ab
    .target Ken'jai
step
    #completewith Sting
    >>Sammelt die |cRXP_LOOT_Kaktusapfel|r in der Nähe der Kakteen
    .complete 4402,1 --Cactus Apple (10)
step
    #completewith Tails
    .goto Durotar,44.98,69.13,20,0
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
step << skip --Shaman
    #season 2
    #completewith OverloadRune
    >>Tötet |cRXP_ENEMY_Üble Familiare|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step << Shaman
    #season 2
    #loop
	.goto Durotar,43.26,58.28,0
    .goto Durotar,43.26,58.28,40,0
    .goto Durotar,42.81,58.41,40,0
    .goto Durotar,41.90,58.35,40,0
    .goto Durotar,41.97,59.20,40,0
    .goto Durotar,41.36,60.35,40,0
    .goto Durotar,40.66,61.27,40,0
    .goto Durotar,40.07,61.35,40,0
    .goto Durotar,39.42,61.29,40,0
    .goto Durotar,39.46,62.17,40,0
    .goto Durotar,39.55,63.10,40,0
    .goto Durotar,40.13,64.04,40,0
    .goto Durotar,40.84,64.06,40,0
    .goto Durotar,40.74,65.86,40,0
    .goto Durotar,39.93,66.03,40,0
    .goto Durotar,40.04,66.99,40,0
    .goto Durotar,40.09,67.66,40,0
    .goto Durotar,40.13,68.50,40,0
    .goto Durotar,40.72,68.55,40,0
    .goto Durotar,41.30,67.84,40,0
    .goto Durotar,41.37,66.72,40,0
    .goto Durotar,41.89,66.05,40,0
    .goto Durotar,41.27,65.71,40,0
    .goto Durotar,41.36,64.07,40,0
    .goto Durotar,41.33,63.12,40,0
    .goto Durotar,41.35,61.98,40,0
    .goto Durotar,41.49,61.25,40,0
    .goto Durotar,41.90,60.24,40,0
    .goto Durotar,42.51,59.34,40,0
    .goto Durotar,43.08,59.62,40,0
    .goto Durotar,43.91,59.33,40,0
    .goto Durotar,45.15,59.46,40,0
    .goto Durotar,45.81,59.30,40,0
    .goto Durotar,45.85,60.34,40,0
    .goto Durotar,46.46,61.11,40,0
    .goto Durotar,47.09,62.24,40,0
    .goto Durotar,47.08,63.15,40,0
    .goto Durotar,47.14,64.08,40,0
    .goto Durotar,47.58,64.04,40,0
    .goto Durotar,47.08,63.15,40,0
    .goto Durotar,47.09,62.24,40,0
    .goto Durotar,46.90,61.15,40,0
    .goto Durotar,46.98,60.18,40,0
    .goto Durotar,47.07,59.34,40,0
    .goto Durotar,46.47,58.28,40,0
    .goto Durotar,45.81,59.30,40,0
    .goto Durotar,45.15,59.46,40,0
    .goto Durotar,43.91,59.33,40,0
    >>Tötet |cRXP_ENEMY_Skorpidarbeiter|r. Plündert sie für |T134918:0|t[|cRXP_FRIENDLY_Dyadisches Symbol|r]
    .collect 206381,1,77587,1 << Troll Shaman --Dyadic Icon (1)
    .collect 206381,1,77585,1 << Orc Shaman --Dyadic Icon (1)
    .mob Scorpid Worker
    .train 410094,1
step << Shaman
    #season 2
    .equip 18,206381 >> Legt das|cRXP_WARN_ |T134918:0|t|r[Dyadisches Symbol]|cRXP_LOOT_ an|r
    .use 206381
    .itemcount 206381,1 --Dyadic Icon (1)
    .train 410094,1
    .xp <3,1
step << Shaman
    #season 2
    #loop
	.goto Durotar,43.26,58.28,0
    .goto Durotar,43.26,58.28,40,0
    .goto Durotar,42.81,58.41,40,0
    .goto Durotar,41.90,58.35,40,0
    .goto Durotar,41.97,59.20,40,0
    .goto Durotar,41.36,60.35,40,0
    .goto Durotar,40.66,61.27,40,0
    .goto Durotar,40.07,61.35,40,0
    .goto Durotar,39.42,61.29,40,0
    .goto Durotar,39.46,62.17,40,0
    .goto Durotar,39.55,63.10,40,0
    .goto Durotar,40.13,64.04,40,0
    .goto Durotar,40.84,64.06,40,0
    .goto Durotar,40.74,65.86,40,0
    .goto Durotar,39.93,66.03,40,0
    .goto Durotar,40.04,66.99,40,0
    .goto Durotar,40.09,67.66,40,0
    .goto Durotar,40.13,68.50,40,0
    .goto Durotar,40.72,68.55,40,0
    .goto Durotar,41.30,67.84,40,0
    .goto Durotar,41.37,66.72,40,0
    .goto Durotar,41.89,66.05,40,0
    .goto Durotar,41.27,65.71,40,0
    .goto Durotar,41.36,64.07,40,0
    .goto Durotar,41.33,63.12,40,0
    .goto Durotar,41.35,61.98,40,0
    .goto Durotar,41.49,61.25,40,0
    .goto Durotar,41.90,60.24,40,0
    .goto Durotar,42.51,59.34,40,0
    .goto Durotar,43.08,59.62,40,0
    .goto Durotar,43.91,59.33,40,0
    .goto Durotar,45.15,59.46,40,0
    .goto Durotar,45.81,59.30,40,0
    .goto Durotar,45.85,60.34,40,0
    .goto Durotar,46.46,61.11,40,0
    .goto Durotar,47.09,62.24,40,0
    .goto Durotar,47.08,63.15,40,0
    .goto Durotar,47.14,64.08,40,0
    .goto Durotar,47.58,64.04,40,0
    .goto Durotar,47.08,63.15,40,0
    .goto Durotar,47.09,62.24,40,0
    .goto Durotar,46.90,61.15,40,0
    .goto Durotar,46.98,60.18,40,0
    .goto Durotar,47.07,59.34,40,0
    .goto Durotar,46.47,58.28,40,0
    .goto Durotar,45.81,59.30,40,0
    .goto Durotar,45.15,59.46,40,0
    .goto Durotar,43.91,59.33,40,0
    .aura 408828 >>Tötet weiter die |cRXP_ENEMY_Skorpid Arbeiter|r und erhaltet 10 Stapel von |T237556:0|t[Inspiration aufbauen], während sie Natur-Schaden gegen euch austeilen
    .mob Scorpid Worker
    .train 410094,1
    --User must be level 3 to be able to use item!
step << skip --Hunter
    #season 2
    #completewith ChimeraRune
    >>Tötet |cRXP_ENEMY_Üble Familiare|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step << !Warlock
    #label Imps
    #loop
    .goto Durotar,43.87,58.42,0
    .goto Durotar,43.87,58.42,40,0
    .goto Durotar,44.53,58.62,40,0
    .goto Durotar,45.18,58.42,40,0
    .goto Durotar,45.83,58.59,40,0
    .goto Durotar,45.79,57.43,40,0
    .goto Durotar,46.46,57.57,40,0
    .goto Durotar,47.19,57.12,40,0
    .goto Durotar,46.21,56.69,40,0
    .goto Durotar,46.28,56.11,40,0
    .goto Durotar,45.65,56.90,40,0
    .goto Durotar,45.35,56.32,40,0
    .goto Durotar,44.77,56.87,40,0
    .goto Durotar,44.58,56.10,40,0
    .goto Durotar,44.27,56.59,40,0
    .goto Durotar,43.85,55.52,40,0
    >>Tötet |cRXP_ENEMY_Üble Familiare|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step
    #label Tails
    #loop
    .goto Durotar,43.26,58.28,0
    .goto Durotar,43.26,58.28,40,0
    .goto Durotar,42.81,58.41,40,0
    .goto Durotar,41.90,58.35,40,0
    .goto Durotar,41.97,59.20,40,0
    .goto Durotar,41.36,60.35,40,0
    .goto Durotar,40.66,61.27,40,0
    .goto Durotar,40.07,61.35,40,0
    .goto Durotar,39.42,61.29,40,0
    .goto Durotar,39.46,62.17,40,0
    .goto Durotar,39.55,63.10,40,0
    .goto Durotar,40.13,64.04,40,0
    .goto Durotar,40.84,64.06,40,0
    .goto Durotar,40.74,65.86,40,0
    .goto Durotar,39.93,66.03,40,0
    .goto Durotar,40.04,66.99,40,0
    .goto Durotar,40.09,67.66,40,0
    .goto Durotar,40.13,68.50,40,0
    .goto Durotar,40.72,68.55,40,0
    .goto Durotar,41.30,67.84,40,0
    .goto Durotar,41.37,66.72,40,0
    .goto Durotar,41.89,66.05,40,0
    .goto Durotar,41.27,65.71,40,0
    .goto Durotar,41.36,64.07,40,0
    .goto Durotar,41.33,63.12,40,0
    .goto Durotar,41.35,61.98,40,0
    .goto Durotar,41.49,61.25,40,0
    .goto Durotar,41.90,60.24,40,0
    .goto Durotar,42.51,59.34,40,0
    .goto Durotar,43.08,59.62,40,0
    .goto Durotar,43.91,59.33,40,0
    .goto Durotar,45.15,59.46,40,0
    .goto Durotar,45.81,59.30,40,0
    .goto Durotar,45.85,60.34,40,0
    .goto Durotar,46.46,61.11,40,0
    .goto Durotar,47.09,62.24,40,0
    .goto Durotar,47.08,63.15,40,0
    .goto Durotar,47.14,64.08,40,0
    .goto Durotar,47.58,64.04,40,0
    .goto Durotar,47.08,63.15,40,0
    .goto Durotar,47.09,62.24,40,0
    .goto Durotar,46.90,61.15,40,0
    .goto Durotar,46.98,60.18,40,0
    .goto Durotar,47.07,59.34,40,0
    .goto Durotar,46.47,58.28,40,0
    .goto Durotar,45.81,59.30,40,0
    .goto Durotar,45.15,59.46,40,0
    .goto Durotar,43.91,59.33,40,0
    >>Tötet |cRXP_ENEMY_Skorpidarbeiter|r. Plündert sie für |cRXP_LOOT_Skorpidarbeiterschwanz|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step
    #loop
	.goto Durotar,44.98,69.13,0
	.goto Durotar,44.98,69.13,25,0
	.goto Durotar,45.64,65.70,25,0
	.goto Durotar,47.37,65.67,25,0
	.goto Durotar,46.74,60.66,25,0
	.goto Durotar,47.09,57.90,25,0
	.goto Durotar,43.90,57.79,25,0
	.goto Durotar,42.70,57.25,25,0
	.goto Durotar,41.27,58.95,25,0
	.goto Durotar,40.91,60.41,25,0
	.goto Durotar,38.83,61.84,25,0
    >>|cRXP_WARN_Benutzt den|r |T133486:0|t[Großknecht-Totschläger] |cRXP_WARN_auf die schlafenden |r|cRXP_FRIENDLY_Faulen Peons|r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step
    #xprate <1.5
    #loop
    .goto Durotar,41.30,65.03,0
    .goto Durotar,41.30,65.03,40,0
    .goto Durotar,41.92,64.74,40,0
    .goto Durotar,42.66,64.92,40,0
    .goto Durotar,43.31,65.02,40,0
    .goto Durotar,43.90,65.96,40,0
    .goto Durotar,44.54,65.96,40,0
    .goto Durotar,45.16,65.77,40,0
    .goto Durotar,45.72,65.93,40,0
    .goto Durotar,45.72,65.04,40,0
    .goto Durotar,45.21,63.95,40,0
    .goto Durotar,45.83,63.01,40,0
    .goto Durotar,45.81,62.17,40,0
    .goto Durotar,45.78,61.14,40,0
    .goto Durotar,45.15,60.20,40,0
    .goto Durotar,44.50,59.45,40,0
    .goto Durotar,43.86,60.43,40,0
    .goto Durotar,43.07,60.24,40,0
    .goto Durotar,42.58,60.09,40,0
    .goto Durotar,42.02,61.19,40,0
    .goto Durotar,42.02,62.15,40,0
    .goto Durotar,42.00,62.92,40,0
    .goto Durotar,41.99,64.03,40,0
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
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<5 << !Rogue !Warrior !Hunter !Shaman
    .itemcount 2512,<600 << Hunter
step
    #label Sting
    .goto Durotar,42.29,68.39,12,0
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gornek|r
    .turnin 789,2 >>Gebt die Quest Stich des Skorpiden ab << Shaman
    .turnin 789 >>Gebt die Quest Stich des Skorpiden ab << !Shaman
    .target Gornek
step << Shaman
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shikrik|r und |cRXP_FRIENDLY_Canaga|r
    .train 8042 >> Erlernt |T136026:0|t[Erdschock]
    .turnin 77587 >>Gebt die Quest Symbole der Macht ab << Troll Shaman
    .turnin 77585 >>Gebt die Quest Symbole der Macht ab << Orc Shaman
    .goto Durotar,42.39,69.00
    .accept 1516 >>Akzeptiert die Quest Ruf der Erde
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Shaman
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shikrik|r und |cRXP_FRIENDLY_Canaga|r
    .train 8042 >> Erlernt |T136026:0|t[Erdschock]
    .goto Durotar,42.39,69.00
    .accept 1516 >>Akzeptiert die Quest Ruf der Erde
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Mage
    #season 0
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mai'ah|r
    .train 116 >> Erlernt |T135846:0|t[Frostblitz]
    .target Mai'ah
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Erlernt |T135987:0|t[Machtwort: Seelenstärke]
    .train 589 >> Erlernt |T136207:0|t[Schattenwort: Schmerz]
    .money <0.011
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Erlernt |T136207:0|t[Schattenwort: Schmerz]
    .money <0.01
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Trainiere deine Klassenfähigkeiten
    .turnin 3085 >>Gebt die Quest Geheiligte Schrifttafel ab
    .money <0.021
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Erlernt |T135987:0|t[Machtwort: Seelenstärke]
    .train 589 >> Erlernt |T136207:0|t[Schattenwort: Schmerz]
    .turnin 3085 >>Gebt die Quest Geheiligte Schrifttafel ab
    .money <0.011
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Erlernt |T136207:0|t[Schattenwort: Schmerz]
    .turnin 3085 >>Gebt die Quest Geheiligte Schrifttafel ab
    .money <0.01
    .target Ken'jai
step << !Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zureetha|r
    .turnin 792 >>Gebt die Quest Üble Familiare ab
    .accept 794 >>Nehmt die Quest Medaillon der Burning Blade an
    .target Zureetha Fargaze
step << Hunter
    #season 2
    #optional
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >> Erlernt |T132204:0|t[Schlangengift]
    .turnin 77590 >>Gebt die Quest Unwegsames Terrain ab << Troll Hunter
    .turnin 77584 >>Gebt die Quest Jagd auf die Rune ab << Orc Hunter
    .target Jen'shan
    .xp <4,1
    .money <0.01
step << Hunter
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jen'shan|r
    .turnin 77590 >>Gebt die Quest Unwegsames Terrain ab << Troll Hunter
    .turnin 77584 >>Gebt die Quest Jagd auf die Rune ab << Orc Hunter
    .target Jen'shan
step << Hunter
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >> Erlernt |T132204:0|t[Schlangengift]
    .target Jen'shan
    .xp <4,1
    .money <0.01
step << Warrior
    #xprate <1.5
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r
    .train 100 >> Erlernt |T132337:0|t[Sturmangriff]
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Frang
    .money <0.02
    .train 772,1
step << Warrior
    #xprate <1.5
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
    #optional
    #xprate <1.5
    #loop
    .goto Durotar,43.87,58.42,0
    .goto Durotar,43.87,58.42,40,0
    .goto Durotar,44.53,58.62,40,0
    .goto Durotar,45.18,58.42,40,0
    .goto Durotar,45.83,58.59,40,0
    .goto Durotar,45.79,57.43,40,0
    .goto Durotar,46.46,57.57,40,0
    .goto Durotar,47.19,57.12,40,0
    .goto Durotar,46.21,56.69,40,0
    .goto Durotar,46.28,56.11,40,0
    .goto Durotar,45.65,56.90,40,0
    .goto Durotar,45.35,56.32,40,0
    .goto Durotar,44.77,56.87,40,0
    .goto Durotar,44.58,56.10,40,0
    .goto Durotar,44.27,56.59,40,0
    .goto Durotar,43.85,55.52,40,0
    .xp 4+1720 >> Farmt bis 1720+/2100xp
    .mob Vile Familiar
    .isOnQuest 4402
step << !Warrior !Rogue !Shaman
    #xprate <1.5
    #optional
    #loop
    .goto Durotar,43.87,58.42,40,0
    .goto Durotar,44.53,58.62,40,0
    .goto Durotar,45.18,58.42,40,0
    .goto Durotar,45.83,58.59,40,0
    .goto Durotar,45.79,57.43,40,0
    .goto Durotar,46.46,57.57,40,0
    .goto Durotar,47.19,57.12,40,0
    .goto Durotar,46.21,56.69,40,0
    .goto Durotar,46.28,56.11,40,0
    .goto Durotar,45.65,56.90,40,0
    .goto Durotar,45.35,56.32,40,0
    .goto Durotar,44.77,56.87,40,0
    .goto Durotar,44.58,56.10,40,0
    .goto Durotar,44.27,56.59,40,0
    .goto Durotar,43.85,55.52,40,0
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
	.goto Durotar,42.70,52.99,25,0
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
    >>Tötet |cRXP_ENEMY_Teufelspirscher|r. Plündert sie für |cRXP_LOOT_Teufelspirscherhufe|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #optional
    #xprate <1.5
    #loop
	.goto Durotar,42.70,52.99,25,0
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
    .xp 5+1680 >> Farmt bis 1680+/2800xp << !Shaman
    .xp 5+690 >> Farmt bis 690+/2800xp << Shaman
    .isQuestTurnedIn 4402
step
    #xprate <1.5
    #optional
    #loop
	.goto Durotar,42.70,52.99,25,0
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
    .xp 5+1300 >> Farmt bis 1300+/2800xp << !Shaman
    .xp 5+310 >> Farmt bis 310+/2800xp << Shaman
    .isOnQuest 4402
step << skip
	#completewith next
    .goto Durotar,44.70,52.47
    .goto Durotar,53.55,44.68,30 >>|cRXP_WARN_Führt einen Logout-Skip durch, indem ihr den Charakter von Euch an der Kante des Steins positioniert, bis es aussieht, als würde er schweben, dann loggt euch aus und wieder ein|r
	.link https://www.youtube.com/watch?v=7vmnvdjbUnM >> KLICKT HIER für ein Beispiel
step
    #softcore
    #completewith next
    .goto Durotar,44.70,52.47
    .deathskip >> |cRXP_WARN_Sterbt und erscheint neu beim |cRXP_FRIENDLY_Geistheiler|r in der Nähe des Pfeils|r
    .target Geistheiler
step
    #softcore
    #label Betrayers
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gar'thok|r
    >>|cRXP_WARN_Ihr könnt mit ihm von außen oder oben auf dem Bunker sprechen|r
    .accept 784 >>Akzeptiert die Quest Vernichtet die Verräter
    .target Gar'thok
step
    #softcore
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Reist zum Turm
step
    #softcore
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Reist den Turm hinauf zu Furl
step
    #softcore
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Akzeptiert die Quest Akzeptiert Euer Schicksal
    .target Furl Scornbrow
step << Warrior/Rogue
    #softcore
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Erlernt |T136248:0|t[Bergbau]
    >>|cRXP_WARN_So könnt ihr|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r finden |cRXP_WARN_von Erzvorkommen, um|r |T135248:0|t[Wetzsteine] herzustellen |cRXP_WARN_(+2 Waffenschaden für 30 Minuten)|r
    .target Krunn
step << Warrior/Rogue
    #softcore
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Kauft eine|r |T134708:0|t[Spitzhacke] |cRXP_BUY_von|r |cRXP_BUY_ihm|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #softcore
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Erlerne |T136241:0|t[Schmiedekunst]
    .target Dwukk
    .skill blacksmithing,1,1
step
    #completewith next
    .hs >>Ruhestein zum Tal der Prüfungen
    .use 6948
step
    #xprate <1.5
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
    .money >0.03
step
    .goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zureetha|r
    .turnin 794 >>Gebt die Quest Medaillon der Burning Blade ab
    .accept 805 >>Nehmt die Quest Bericht erstatten in Sen'jin an
    .target Zureetha Fargaze
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
	.accept 5649 >> Annehmen Der Spiritualität geneigt
	.train 591 >>Erlernt |T135924:0|t[Heilige Pein]
    .train 17 >>Erlernt |T135940:0|t[Machtwort: Schild]
    .target Ken'jai
step << Mage
    #season 2
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mai'ah|r
    .train 143 >> Erlernt |T135812:0|t[Feuerball]
    .train 2136 >>Erlernt |T135807:0|t[Feuerschlag]
    .turnin 77643 >> Gebt die Quest Zauberforschung ab
    .target Mai'ah
    .isQuestComplete 77643
step << Mage
    #season 0
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mai'ah|r
    .train 143 >> Erlernt |T135812:0|t[Feuerball]
    .train 2136 >>Erlernt |T135807:0|t[Feuerschlag]
    .target Mai'ah
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shikrik|r und |cRXP_FRIENDLY_Canaga|r
    .train 332 >>Erlernt |T136052:0|t[Welle der Heilung]
    .target +Shikrik
    .goto Durotar,42.39,69.00
    .turnin 1516 >>Gebt die Quest Ruf der Erde ab
    .accept 1517 >>Akzeptiert die Quest Ruf der Erde
    .target +Canaga Earthcaller
    .goto Durotar,42.40,69.17
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
    .xp <6,1
step << Rogue
    #label RogueTraining
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rwag|r
    .train 1757 >> Erlernt |T136189:0|t[Finsterer Stoß]
    .target Rwag
    .xp <6,1
step << Warlock
    #completewith Hraug3
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Reist zu |cRXP_FRIENDLY_Hraug|r
step << Warlock
    #label Hraug3
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hraug|r
    >>|cRXP_BUY_Kauft den|r |T133738:0|t[Zauberfoliant des Blutpakts] |cRXP_BUY_von ihm|r
    .collect 16321,1,817,1 --Grimoire of Blood Pact
    .vendor >>Verkauft Müll
    .target Hraug
    .money <0.03
    .train 6307,1 --Blood Pact (Rank 1)
step << Warlock
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Erlernt |T136197:0|t[Schattenblitz]
    .train 1454 >> Erlernt |T136126:0|t[Aderlass]
    .turnin 77586 >>Gebt die Quest Gestohlene Macht ab
    .target Nartok
    .money <0.02
step << Warlock
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Erlernt |T136197:0|t[Schattenblitz]
    .turnin 77586 >>Gebt die Quest Gestohlene Macht ab
    .target Nartok
step << Warlock
    #season 0
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Erlernt |T136197:0|t[Schattenblitz]
    .train 1454 >> Erlernt |T136126:0|t[Aderlass]
    .target Nartok
    .money <0.02
step << Warlock
    #season 0
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Erlernt |T136197:0|t[Schattenblitz]
    .target Nartok
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
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate <1.99
<< Horde
#name 6-10 Durotar
#version 11
#group RestedXP Horde 1-22
#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12 Durotar

step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ukor|r
    .accept 2161 >>Akzeptiert die Quest Die Bürde eines Peons
    .target Ukor
step
    #completewith next
    .subzone 367 >>Reist ins Dorf Sen'Jin
step
    #xprate <1.5
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lar|r. Er patrouilliert ein bisschen
    .accept 786 >>Akzeptiert die Quest Vereitelung der Kolkaraggression
    .target Lar Prowltusk
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vel'rin|r, |cRXP_FRIENDLY_Vornal|r und |cRXP_FRIENDLY_Gadrin|r
    .accept 817 >>Akzeptiert die Quest Praktische Beute
    .target +Vel'rin Fang
    .goto Durotar,55.95,73.93
    .accept 818 >>Akzeptiert die Quest Ein geistvolles Getränk
    .target +Master Vornal
    .goto Durotar,55.94,74.40
    .turnin 805 >>Gebt die Quest Bericht erstatten in Sen'jin ab
    .accept 808 >>Akzeptiert die Quest Minshinas Schädel
    .accept 826 >>Akzeptiert die Quest Zalazane
    .accept 823 >>Akzeptiert die Quest Bericht an Orgnil
    .target +Master Gadrin
    .goto Durotar,55.94,74.72
step
    #completewith next
    .goto Durotar,56.16,74.43,8,0
    .goto Durotar,56.31,73.8,8 >> Betretet die große Hütte
step << Rogue
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_. Kauft|r |T132414:0|t[Beschwerte Wurfaxt] |cRXP_BUY_von ihr|r
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihr|r --Refreshing Spring Water (20)
    .collect 159,20,786,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihr|r --Refreshing Spring Water (10)
    .collect 159,10,786,1
    .target K'waii
    .money <0.0050
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
    .collect 2495,1,786,1 --Collect Walking Stick (1)
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
    .collect 2494,1,786,1 --Collect Stiletto (1)
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
    .collect 2491,1,786,1 --Collect Large Axe (1)
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
    .collect 2490,1,786,1 --Collect Tomahawk (1)
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
    .collect 2506,1,786,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Legt die|r |T132414:0|t[Beschwerte Wurfaxt] an
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Legt den|r |T135145:0|t[Wanderstecken] an
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Legt die|r |T132401:0|t[Große Axt] an
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Legt das|r |T135421:0|t[Tomahawk] an
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
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
step << Warrior/Rogue
    #softcore
    #completewith TravelToTiragarde
    +|cRXP_WARN_Wirkt|r |T136025:0|t[Mineraliensuche] |cRXP_WARN_und baue jede Kupferader ab, die du findest, für|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r|cRXP_WARN_. Stellt|r |T135248:0|t[Wetzsteine] |cRXP_WARN_daraus her|r
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #xprate >1.49
    #completewith next
    .goto Durotar,58.54,75.89,40,0
    .goto Durotar,57.73,77.91,40,0
    .goto Durotar,55.72,79.62,40,0
    .goto Durotar,54.23,82.26,40,0
    .goto Durotar,52.20,83.00,40,0
    >>Rennt den Strand hinunter. Tötet |cRXP_ENEMY_Kriecher|r und |cRXP_ENEMY_Makruras|r. Sammelt Beute von ihnen für |cRXP_LOOT_Kriechersekret|r und |cRXP_LOOT_Augen|r. Ihr müsst diesen Schritt hier nicht beenden
    .complete 818,2,4 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1,2 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #xprate >1.49
    .goto Durotar,54.17,82.60,75 >> Erreicht das Ende des Strandes
step
    #xprate <1.5
    #completewith next
    .goto Durotar,58.54,75.89,40,0
    .goto Durotar,57.73,77.91,40,0
    .goto Durotar,55.72,79.62,40,0
    .goto Durotar,54.23,82.26,40,0
    .goto Durotar,52.20,83.00,40,0
    >>Rennt den Strand hinunter. Tötet |cRXP_ENEMY_Kriecher|r und |cRXP_ENEMY_Makruras|r. Sammelt Beute von ihnen für |cRXP_LOOT_Kriechersekret|r und |cRXP_LOOT_Augen|r. Ihr müsst diesen Schritt hier nicht beenden
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
    #completewith Bonfire
    >>Tötet |cRXP_ENEMY_Zwangsarbeiter der Kolkar|r und |cRXP_ENEMY_Kundschafter der Kolkar|r. Plündert sie für |cRXP_LOOT_Segeltuchreste|r
--   >>|cRXP_WARN_Do not focus on completing this|r
    .complete 791,1 --Canvas Scraps (8)
    .isOnQuest 791
step
    #xprate <1.5
    .goto Durotar,50.9,79.2,30 >>BETRETET das Kolkar-Lager
    .isOnQuest 786
step << Priest
    #xprate <1.5
    #sticky
    #softcore
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_Sammelt 3 Stapel|r |T132889:0|t[Leinenstoff] |cRXP_WARN_während ihr in Durotar Quests absolviert. Das wird später verwendet, um deinen Zauberstab herzustellen|r
    >>|cRXP_WARN_Überspringt diesen Schritt, falls ihr bereits einen Zauberstab gekauft habt oder einen billig aus dem Auktionshaus bekommen könnt.|r
    .collect 2589,60 --Linen Cloth (60)
step << Priest
    #xprate <1.5
    #sticky
    #hardcore
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_Sammelt 3 Stapel|r |T132889:0|t[Leinenstoff] |cRXP_WARN_während ihr in Durotar Quests absolviert. Das wird später verwendet, um deinen Zauberstab herzustellen|r
    .collect 2589,60 --Linen Cloth (60)
step
    #sticky
    #xprate <1.5
    #completewith Bonfire
    +|cRXP_WARN_Seid vorsichtig, wenn|r |cRXP_ENEMY_Kolkanis|r |cRXP_WARN_aktiv ist, er ist ein seltener mob der Stufe 9. Ihr müsst möglicherweise einen|r |T134829:0|t[Schwachen Heiltrank] |cRXP_WARN_verwenden, wenn ihr ihn habt|r
    .unitscan Warlord Kolkanis
step << Warrior
    #xprate <1.5
    #season 2
    #completewith Bonfire
    >>Tötet |cRXP_ENEMY_Zwangsarbeiter der Kolkar|r und |cRXP_ENEMY_Kundschafter der Kolkar|r. Plündert sie für |cRXP_LOOT_Abgetrennter Zentaurenkopf|r
    .collect 207062,1 --Severed Centaur Head (1)
    .mob Kolkar Drudge
    .mob Kolkar Outrunner
    .train 403475,1
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
step << Warrior
    #season 2
    #loop
    .goto Durotar,50.10,79.24,0
    .goto Durotar,50.10,79.24,40,0
    .goto Durotar,47.74,80.35,40,0
    .goto Durotar,46.54,80.12,40,0
    >>Tötet |cRXP_ENEMY_Zwangsarbeiter der Kolkar|r und |cRXP_ENEMY_Kundschafter der Kolkar|r. Plündert sie für |cRXP_LOOT_Abgetrennter Zentaurenkopf|r
    .collect 207062,1 --Severed Centaur Head (1)
    .mob Kolkar Drudge
    .mob Kolkar Outrunner
    .train 403475,1
step
    #xprate <1.5
    #softcore
    .goto Durotar,46.43,79.25,-1
    .goto Durotar,57.50,73.26,-1
    .deathskip >> Sterbt am Lagerfeuer und belebt euch am |cRXP_FRIENDLY_Geistheiler|r wieder
    .isQuestComplete 786
step
    #xprate <1.5
    #hardcore
    #completewith next
    .goto Durotar,50.95,79.14,30 >>Verlasst das Kolkar-Lager
    .isQuestComplete 786
step
    #hardcore
    #xprate <1.5
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lar|r. Er patrouilliert ein bisschen
    .turnin 786,1 >>Gebt die Quest Vereitelung der Kolkaraggression ab << Shaman
    .turnin 786 >>Gebt die Quest Vereitelung der Kolkaraggression ab << !Shaman
    .target Lar Prowltusk
    .isQuestComplete 786
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
    .collect 2495,1,823,1 --Collect Walking Stick (1)
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
    .collect 2494,1,823,1 --Collect Stiletto (1)
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
    .collect 2491,1,823,1 --Collect Large Axe (1)
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
    .collect 2490,1,823,1 --Collect Tomahawk (1)
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
    .collect 2506,1,823,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Legt die|r |T132414:0|t[Beschwerte Wurfaxt] an
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Legt den|r |T135145:0|t[Wanderstecken] an
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Legt die|r |T132401:0|t[Große Axt] an
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Legt das|r |T135421:0|t[Tomahawk] an
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
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
    #xprate <1.5
    .goto Durotar,55.62,73.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hai'zan|r
    >>|cRXP_BUY_Kauft|r |T133974:0|t[Fleischschenkel] |cRXP_BUY_bei ihm|r
    .vendor >> Verkauft Müll
    .collect 2287,10,823,1 --Haunch of Meat (10)
    .money <0.025
    .target Hai'zan
step << Warlock/Mage/Priest
    #xprate <1.5
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihr|r --Refreshing Spring Water (20)
    .collect 159,20,784,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    #xprate <1.5
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihr|r --Refreshing Spring Water (10)
    .collect 159,10,784,1
    .target K'waii
    .money <0.0050
step
    #xprate <1.5
    #softcore
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lar|r. Er patrouilliert ein bisschen
    .turnin 786,1 >>Gebt die Quest Vereitelung der Kolkaraggression ab << Shaman
    .turnin 786 >>Gebt die Quest Vereitelung der Kolkaraggression ab << !Shaman
    .target Lar Prowltusk
step << Rogue
    #season 2
    .goto Durotar,51.82,58.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ba'so|r um |T134419:0|t[|cRXP_FRIENDLY_Rune der Verstümmelung|r] zu erhalten
    >>|cRXP_WARN_Er ist unsichtbar!|r
    .collect 203990,1 --Rune of Mutilation (1)
    .target Ba'so
    .skipgossip
    .itemcount 207098,1
    .train 400094,1
step << Rogue
    #season 2
    .train 400094 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Verstümmelung|r] |cRXP_WARN_zum lernen von|r |T132304:0|t[Verstümmeln]
    .use 203990
    .itemcount 203990,1
step
    #hardcore
    #completewith next
    .subzone 362 >>Reist nach Klingenhügel
step
    #hardcore
    #label Betrayers
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
step
    #hardcore
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Reist zum Turm
step
    #hardcore
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Reist den Turm hinauf zu Furl
step
    #hardcore
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Akzeptiert die Quest Akzeptiert Euer Schicksal
    .target Furl Scornbrow
step << Warrior/Rogue
    #hardcore
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Erlernt |T136248:0|t[Bergbau]
    >>|cRXP_WARN_So könnt ihr|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r finden |cRXP_WARN_von Erzvorkommen, um|r |T135248:0|t[Wetzsteine] herzustellen |cRXP_WARN_(+2 Waffenschaden für 30 Minuten)|r
    .target Krunn
step << Warrior/Rogue
    #hardcore
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Kauft eine|r |T134708:0|t[Spitzhacke] |cRXP_BUY_von|r |cRXP_BUY_ihm|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #hardcore
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Erlerne |T136241:0|t[Schmiedekunst]
    .target Dwukk
    .skill blacksmithing,1,1
step << Warrior/Rogue
    #hardcore
    #completewith TravelToTiragarde
    +|cRXP_WARN_Wirkt|r |T136025:0|t[Mineraliensuche] |cRXP_WARN_und baue jede Kupferader ab, die du findest, für|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r|cRXP_WARN_. Stellt|r |T135248:0|t[Wetzsteine] |cRXP_WARN_daraus her|r
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #softcore
    #label TravelToTiragarde
    .goto Durotar,54.42,62.64,60,0
    .subzone 372 >> Reist zur Burg Tiragarde
    >>|cRXP_WARN_Farmt Mobs auf dem Weg|r
    .isOnQuest 784
step
    #hardcore
    #label TravelToTiragarde
    .goto Durotar,57.26,54.69,60,0
    .subzone 372 >> Reist zur Burg Tiragarde
    >>|cRXP_WARN_Farmt Mobs auf dem Weg|r
    .isOnQuest 784
step
    #sticky
    #completewith AgedEnvelope
    +|cRXP_WARN_Seid vorsichtig, wenn|r |cRXP_ENEMY_Wachkommandant Zalaphil|r |cRXP_WARN_aktiv ist, da er ein seltener mob der Stufe 9 ist. Ihr müsst möglicherweise einen|r |T134829:0|t[Schwachen Heiltrank] |cRXP_WARN_verwenden, wenn ihr einen habt|r
    .unitscan Watch Commander Zalaphil
step
    #completewith Benedict
    #requires TravelToTiragarde
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >> Bewegt euch zum zweiten Stock der Burg
step << Priest
    #season 2
    #completewith ScrapsFinished
    >>Tötet |cRXP_ENEMY_Matrosen|r und |cRXP_ENEMY_Marinesoldaten|r. Plündert sie für |T136222:0|t[|cRXP_FRIENDLY_Erinnerung an einen dunklen Zweck|r]
    .collect 205940,1 --Memory of a Dark Purpose (1)
    .train 425216,1
step
    #completewith AgedEnvelope
    >>Tötet |cRXP_ENEMY_Matrose von Kul Tiras|r und |cRXP_ENEMY_Marinesoldat von Kul Tiras|r. Plündert sie für |cRXP_LOOT_Segeltuchreste|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
    .mob +Kul Tiras Marine
    .mob +Kul Tiras Sailor
step
    #label Benedict
    .goto Durotar,59.75,58.27
    >>Tötet |cRXP_ENEMY_Lieutenant Benedict|r. Plündert ihn für seinen |cRXP_LOOT_Schlüssel|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1,830,1 --Collect Benedict's Key (1)
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
step << Priest
    #season 2
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Tötet |cRXP_ENEMY_Matrosen|r und |cRXP_ENEMY_Marinesoldaten|r. Plündert sie für |T136222:0|t[|cRXP_FRIENDLY_Erinnerung an einen dunklen Zweck|r]
    .collect 205940,1 --Memory of a Dark Purpose (1)
    .train 425216,1
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step << Priest
    #season 2
    #completewith next
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>Kniet vor dem |cRXP_PICK_Loaaltar|r und sprecht mit dem |cRXP_FRIENDLY_Schlangenloa|r um den |T136077:0|t[Meditation über die Loa] Effekt zu erhalten
    .skipgossip 208307,1
    .target Serpent Loa
    .train 425216,1
step << Priest
    #season 2
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_Benutzt die|r |T136222:0|t[|cRXP_FRIENDLY_Erinnerung an einen dunklen Zweck|r] |cRXP_WARN_zum Trainieren von|r |T237514:0|t[Pest der Leere]
step << !Priest !Mage
    #xprate <1.5
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+2520 >> Farmt bis 2520+/4500xp
    .isNotOnQuest 823
step << !Priest !Mage
    #xprate <1.5
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+2200 >> Farmt bis 2200+/4500 XP
    .isOnQuest 823
step << !Priest !Mage
    #xprate >1.49
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+1530 >> Farmt bis 1530+/4500xp
    .isNotOnQuest 823
step << !Priest !Mage
    #xprate >1.49
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+1050 >> Farmt bis 1050+/4500xp
    .isOnQuest 823
step << Priest
    #xprate <1.5
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+2070 >> Farmt bis 2070+/4500xp
    .isNotOnQuest 823
step << Priest
    #xprate <1.5
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+1750 >> Farmt bis 1750+/4500 XP
    .isOnQuest 823
step << Priest
    #xprate >1.49
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+855 >> Farmt bis 855+/4500xp
    .isNotOnQuest 823
step << Priest
    #xprate >1.49
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+375 >> Farmt bis 375+/4500xp
    .isOnQuest 823
step
    #softcore
    #completewith RazorTurnins1
    .goto Durotar,57.3,53.5,120,0
    .deathskip >> Sterbt am nördlichen Turm außerhalb von Burg Tiragarde und lasst euch beim |cRXP_FRIENDLY_Geistheiler|r wiederbeleben
step
    #hardcore
    #completewith next
    .subzone 362 >>Reist nach Klingenhügel
step
    #softcore
    #label RazorTurnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r und |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>Gebt die Quest Bericht an Orgnil ab
    .accept 806 >>Akzeptiert die Quest Dunkle Stürme
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .turnin 784 >>Gebt die Quest Vernichtet die Verräter ab
    .turnin 830 >>Gebt die Quest Die Befehle des Admirals ab
    .accept 825 >>Akzeptiert die Quest Aus den Wrackteilen geborgen....
    .accept 831 >>Akzeptiert die Quest Die Befehle des Admirals
    .accept 837 >>Akzeptiert die Quest Übergriff
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
    .accept 815 >>Akzeptiert die Quest Zerbrecht ein paar Eier
    .target +Cook Torka
    .goto Durotar,51.09,42.49
step
    #hardcore
    #label RazorTurnins1
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 784 >>Gebt die Quest Vernichtet die Verräter ab
    .turnin 830 >>Gebt die Quest Die Befehle des Admirals ab
    .accept 825 >>Akzeptiert die Quest Aus den Wrackteilen geborgen....
    .accept 831 >>Akzeptiert die Quest Die Befehle des Admirals
    .target +Gar'Thok
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
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Legt die|r |T132414:0|t[Beschwerte Wurfaxt] an
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Legt den|r |T135145:0|t[Wanderstecken] an
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Legt die|r |T132401:0|t[Große Axt] an
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Toolboxes
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
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #optional
    #completewith Toolboxes
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
    .itemcount 2512,<800 << Hunter
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Grosk|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r << Mage/Warlock/Priest/Shaman/Druid
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
step << !Mage !Hunter !Druid
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
    .collect 4496,1,825,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
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
    .goto Durotar,61.96,55.46,0
    .goto Durotar,61.96,55.46,20,0
    .goto Durotar,62.25,56.34,20,0
    .goto Durotar,62.43,59.84,20,0
    .goto Durotar,62.09,60.68,20,0
    .goto Durotar,62.51,60.56,20,0
    .goto Durotar,63.24,58.10,20,0
    .goto Durotar,62.25,56.34,20,0
    >>Plündert den |cRXP_PICK_Gnomen-Werkzeugkasten|r in und um die Boote herum
    .complete 825,1 --Gnomish Tools (3)
step
    #completewith TaillasherEggs
    .goto Durotar,67.10,69.29,100 >> Schwimmt zur Insel
step
    #completewith MinshinasSkull
    >>Tötet |cRXP_ENEMY_Durotar-Tiger|r. Plündert sie für |cRXP_LOOT_Fell|r
    -->>This does not need to be finished now
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
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
    >>Tötet |cRXP_ENEMY_Zwergbrandungskriecher|r und |cRXP_ENEMY_Brandungskriecher|r. Plündert sie für |cRXP_LOOT_Kriechersekret|r
    >>Tötet |cRXP_ENEMY_Makruramuschelhaut|r und |cRXP_ENEMY_Makruraklacker|r. Plündert sie für ihre |cRXP_LOOT_Augen|r
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
    #completewith MinshinasSkull
    >>Tötet |cRXP_ENEMY_Verhexte Trolle|r und |cRXP_ENEMY_Voodootrolle|r
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
step << Priest
    #season 2
    #completewith Fur
    >>Tötet die |cRXP_ENEMY_Voodootroll|r. Plündert sie für |T135975:0|t[|cRXP_FRIENDLY_Prophezeiung einer entweihten Zitadelle|r]
    .collect 205947,1 --Prophecy of a Desecrated Citadel (1)
    .mob Voodoo Troll
    .train 402852,1
step << Mage
    #season 2
    #completewith ZalazaneKill
    >>Tötet |cRXP_ENEMY_Zalazane|r. Plündert ihn für die |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: ENEGSG IERIFI|r]|r
    .collect 203753,1
    .mob Zalazane
    .train 401765,1
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
step << Mage
    #season 2
    .goto Durotar,67.4,87.8
    >>Tötet |cRXP_ENEMY_Zalazane|r. Plündert ihn für die |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: ENEGSG IERIFI|r]|r
    .collect 203753,1
    .mob Zalazane
    .train 401765,1
step << Mage
    #season 2
    .collect 211779,1 >>Ihr braucht ein |T135933:0|t[Verständnisamulett] von einem |cRXP_FRIENDLY_Reagenzienhändler|r, um den Gegenstand zu verwenden
    .train 401765 >>|cRXP_WARN_Benutzt die|r |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: ENEGSG IERIFI|r] |cRXP_WARN_um|r |T236227:0|t[Eisige Finger] zu erlernen
    .use 203753
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Durotar-Tiger|r. Plündert sie für |cRXP_LOOT_Fell|r
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
step << Priest
    #season 2
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
    >>Tötet die |cRXP_ENEMY_Voodootroll|r. Plündert sie für |T135975:0|t[|cRXP_FRIENDLY_Prophezeiung einer entweihten Zitadelle|r]
    .collect 205947,1 --Prophecy of a Desecrated Citadel (1)
    .mob Voodoo Troll
    .train 402852,1
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
    #completewith next
    .goto Durotar,57.50,73.26,50,0
    .deathskip >> Sterbt und lasst euch beim |cRXP_FRIENDLY_Geistheiler|r wiederbeleben, oder lauft zurück
step
    #hardcore
    #completewith Zalazaneturnin
    .subzone 367 >>Reist ins Dorf Sen'Jin
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
step << Priest
    #season 2
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>Kniet vor dem |cRXP_PICK_Loaaltar|r und sprecht mit dem |cRXP_FRIENDLY_Schlangenloa|r um den |T136077:0|t[Meditation über die Loa] Effekt zu erhalten
    .train 402852,1
step << Priest
    #season 2
    #completewith QuilboarsScouts
    .aura 418459 >>|cRXP_WARN_Jetzt findet einen Untoten Priester mit einem Loa-Buff. Kniet vor ihm und er muss /beten für euch.|r
    .use 205947
    .train 402852 >>|cRXP_WARN_Benutzt die|r |T135975:0|t[|cRXP_FRIENDLY_Prophezeiung einer entweihten Zitadelle|r] |cRXP_WARN_um|r |T237570:0|t[Homunculi] zu lernen
    .itemcount 205947,1
step
    #completewith QuilboarsScouts
    +|cRXP_WARN_Bindet euren|r |T133728:0|t[Schwach leuchtender Schädel] |cRXP_WARN_und|r |T134712:0|t[Echt klebriger Leim]|cRXP_WARN_. Behaltet sie für Notfälle|r
step << Warrior
    #season 2
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
    >>Tötet |cRXP_ENEMY_Stacheleber der Grimmhauer|r und |cRXP_ENEMY_Späher der Grimmhauer|r. Plündert sie für |cRXP_LOOT_Abgetrennter Stacheleberkopf|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .complete 837,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 837,2 --Razormane Scout (4)
    .mob +Razormane Scout
    .train 403475,1
step
    #label QuilboarsScouts
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
    #xprate <1.5
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
step << Hunter
    #optional
    #xprate <1.5
    #loop
	.goto Durotar,47.52,48.67,0
	.goto Durotar,47.52,48.67,50,0
	.goto Durotar,46.12,45.47,50,0
	.goto Durotar,43.65,43.91,50,0
	.goto Durotar,41.68,44.69,50,0
	.goto Durotar,41.00,46.13,50,0
	.goto Durotar,42.47,48.50,50,0
	.goto Durotar,44.21,49.68,50,0
	.goto Durotar,47.17,49.44,50,0
    .xp 9+4470 >> Farmt bis 4470+/6500 XP
step
    #optional
    #xprate >1.49
    #loop
    .goto Durotar,49.14,48.89,0
    .goto Durotar,49.14,48.89,30,0
    .goto Durotar,47.43,49.18,30,0
    .xp 9+4400 >> Farmt bis 4400+/6500 XP
step
    #xprate >1.49 << !Hunter
    #softcore
    #completewith RazorTurnins015
    .deathskip >> Sterbt und respawnt am |cRXP_FRIENDLY_Geistheiler|r, oder lauft zum Klingenhügel
step
    #xprate >1.49 << !Hunter
    #hardcore
    #completewith RazorTurnins015
    .goto Durotar,51.95,43.50,100 >>Lauft nach Klingenhügel
step << Shaman
    #xprate >1.49
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Trainiere deine Klassenfähigkeiten
    .accept 2983 >>Akzeptiert die Quest Ruf des Feuers
    .target Swart
    .isNotOnQuest 1522
    .xp <10,1
step << Hunter
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Torka|r und |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Gebt die Quest Zerbrecht ein paar Eier ab
    .target +Cook Torka
    .goto Durotar,51.12,42.46
    .turnin 825 >>Gebt die Quest Aus den Wrackteilen geborgen... ab
    .turnin 837 >>Gebt die Quest Übergriff ab
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step
    #xprate >1.49
    #label RazorTurnins015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Torka|r und |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Gebt die Quest Zerbrecht ein paar Eier ab
    .target +Cook Torka
    .goto Durotar,51.12,42.46
    .turnin 825 >>Gebt die Quest Aus den Wrackteilen geborgen... ab
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step << Shaman
    #xprate >1.49
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Swart|r
    .train 8050 >>Trainiere deine Klassenfähigkeiten
    .accept 2983 >>Akzeptiert die Quest Ruf des Feuers
    .target Swart
    .isNotOnQuest 1522
step << Warrior
    #xprate >1.49
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarshaw|r
    .accept 1505 >>Akzeptiert die Quest Veteran Uzzek
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Tarshaw Jaggedscar
step << Warlock
    #xprate >1.49
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >>Trainiere deine Klassenfähigkeiten
    .target Dhugru Gorelust
step << Warlock
    #xprate >1.49
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kitha|r und kauft |T133738:0|t[Feuerblitz Rang 2]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Priest
    #xprate >1.49
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tai'jin|r
    .accept 5654 >> Akzeptiert die Quest Verhexung der Schwäche << Troll
    .accept 5660 >> Akzeptiert die Quest Berührung der Schwäche << Undead
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Tai'jin
step << Rogue
    #xprate >1.49
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
    --.collect 11362,1,6082,1 --Medium Quiver (1)
    .target Ghrawt
    --.money <0.1300
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
    .use 15917 >> |cRXP_WARN_Benutzt Eure|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Scheckigen Terroreber|r |cRXP_WARN_aus maximaler Reichweite|r
    .complete 6062,1 --Tame a Dire Mottled Boar
    .mob Dire Mottled Boar
    .isOnQuest 6062
step << Hunter
    .goto Durotar,51.85,43.49
    >>Geht in den Bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thotar|r innerhalb
    .turnin 6062 >>Gebt die Quest Die Zähmung der Bestie ab
    .accept 6083 >>Akzeptiert die Quest Die Zähmung der Bestie
    .target Thotar
    .isQuestComplete 6062
step << Hunter
    .goto Durotar,51.85,43.49
    >>Geht in den Bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thotar|r innerhalb
    .accept 6083 >>Akzeptiert die Quest Die Zähmung der Bestie
    .target Thotar
    .isQuestTurnedIn 6062
step << Hunter
    #completewith next
    +|cRXP_WARN_Gebt euren |cRXP_ENEMY_Scheckiger Terroreber|r frei, indem ihr mit der rechten Maustaste auf seinen Einheitenrahmen klickt und auf Freigeben klickt. Andernfalls könnt ihr einen |rBrandungskriecher|cRXP_ENEMY_ nicht zähmen|r
step << Hunter
    #loop
    .goto Durotar,59.63,23.38,0
    .goto Durotar,59.18,28.35,40,0
    .goto Durotar,59.89,26.42,40,0
    .goto Durotar,60.04,24.79,40,0
    >>|cRXP_WARN_Tötet nicht die|r |cRXP_ENEMY_Gepanzerter Skorpid|r |cRXP_WARN_die ihr seht. Ihr braucht sie später|r
    .use 15919 >> |cRXP_WARN_Benutzt Eure|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Brandungskriecher|r |cRXP_WARN_aus maximaler Reichweite|r
    .complete 6083,1 --Tame a Surf Crawler
    .mob Surf Crawler
    .isQuestTurnedIn 6062
step << Hunter
    .goto Durotar,51.85,43.49
    >>Geht in den Bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thotar|r innerhalb
    .turnin 6083 >>Gebt die Quest Die Zähmung der Bestie ab
    .accept 6082 >>Akzeptiert die Quest Die Zähmung der Bestie
    .target Thotar
    .isQuestTurnedIn 6062
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
    .isQuestTurnedIn 6062
step << Hunter
    .goto Durotar,51.85,43.49
    >>Geht in den Bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thotar|r innerhalb
    .turnin 6082 >>Gebt die Quest Die Zähmung der Bestie ab
    .accept 6081 >>Akzeptiert die Quest Die Ausbildung des Tiers
    .target Thotar
    .isQuestTurnedIn 6062
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
    .isQuestTurnedIn 6062
    .isQuestAvailable 834 --Winds in the Desert
step
    #label ConscriptH
    #xprate >1.49 << !Hunter
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Akzeptiert die Quest Freiwilliger der Horde
    .target Takrin Pathseeker
step
    #xprate >1.49
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
step << Warrior/Shaman
    #xprate >1.49
    .goto The Barrens,62.26,19.38,40 >> Reist zur Fernwacht
    .zoneskip The Barrens
step << Warrior/Shaman
    #xprate >1.49
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Gebt die Quest Freiwilliger der Horde ab
    .accept 842 >>Akzeptiert die Quest Crossroads-Wehrpflicht
    .target Kargal Battlescar
step << Warrior
    #xprate >1.49
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uzzek|r
    .turnin 1505 >>Gebt die Quest Veteran Uzzek ab
    .accept 1498 >>Akzeptiert die Quest Weg der Verteidigung
    .target Uzzek
step << Shaman
    #xprate >1.49
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kranal|r
    .turnin 2983 >>Gebt die Quest Ruf des Feuers ab
    .accept 1524 >>Akzeptiert die Quest Ruf des Feuers
    .target Kranal Fiss
step << Shaman
    #xprate >1.49
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
    #xprate >1.49
    #label CallofFire3
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Gebt die Quest Ruf des Feuers ab
    .accept 1525 >>Akzeptiert die Quest Ruf des Feuers
    .target Telf Joolam
step << Hunter/Shaman/Warrior
    #xprate <1.5 << Shaman/Warrior
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Misha|r
    .accept 816 >>Akzeptiert die Quest Verloren, aber nicht vergessen
    .target Misha Tor'kren
step << Warrior
    #xprate >1.49
    #loop
    .goto Durotar,43.19,24.34,0
    .goto Durotar,39.16,30.84,40,0
    .goto Durotar,39.23,28.38,40,0
    .goto Durotar,39.43,24.94,40,0
    .goto Durotar,41.39,24.28,40,0
    .goto Durotar,43.19,24.34,40,0
    >>Betretet Donnergrat und tötet die |cRXP_ENEMY_Blitzechse|r. Plündert sie für ihre |cRXP_ENEMY_Schuppen|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
step << Shaman
    #xprate >1.49
    #completewith next
    .goto Durotar,41.66,25.68,20 >>Springt in den Donnergrat
step << Warrior/Shaman
    #xprate >1.49
    #softcore
    .goto Durotar,42.13,26.67
    >>Tötet |cRXP_ENEMY_Fizzle Dunkelsturm|r und plündert ihn für seine |cRXP_LOOT_Klaue|r
    >>|cRXP_WARN_Passt auf. Tötet die patrouillierenden|r |cRXP_ENEMY_Fanatiker der Burning Blade|r |cRXP_WARN_und die|r |cRXP_ENEMY_Blitzechse|r |cRXP_WARN_hinten, bevor ihr ihn angreift|r
    >>|cRXP_WARN_Zieht ihn rückwärts zu den|r |cRXP_ENEMY_Donnerechsen|r |cRXP_WARN_die ihr gerade besiegt habt. Andernfalls könnt ihr versehentlich zusätzliche Burning Blade Gegner anziehen.|r
    >>|cRXP_WARN_Habt keine Angst davor, für die |cRXP_LOOT_Klaue|r zu sterben, da ihr danach beim |cRXP_FRIENDLY_Geistheiler|r wieder aufleben werdet|r
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
step << Warrior/Shaman
    #xprate >1.49
    #hardcore
    .goto Durotar,42.13,26.67
    >>Tötet |cRXP_ENEMY_Fizzle Dunkelsturm|r und plündert ihn für seine |cRXP_LOOT_Klaue|r
    >>|cRXP_WARN_Passt auf. Tötet die patrouillierenden|r |cRXP_ENEMY_Fanatiker der Burning Blade|r |cRXP_WARN_und die|r |cRXP_ENEMY_Blitzechse|r |cRXP_WARN_hinten, bevor ihr ihn angreift|r
    >>|cRXP_WARN_Zieht ihn rückwärts zu den|r |cRXP_ENEMY_Donnerechsen|r |cRXP_WARN_die ihr gerade besiegt habt. Andernfalls könnt ihr versehentlich zusätzliche Burning Blade Gegner anziehen.|r
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
step << Warrior/Shaman
    #xprate >1.49
    #softcore
    .goto Durotar,47.04,17.58
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .isQuestComplete 806
step << Warrior/Shaman
    #xprate >1.49
    #hardcore
    .goto Durotar,39.20,32.02,60 >> Kämpft euch den Weg hinaus aus Donnergrat
    .isQuestComplete 806
step
    #completewith next
    .goto Durotar,46.37,22.94,50 >> Reist nach Rezlak
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Akzeptiert die Quest Wind in der Wüste
    .target Rezlak
step << Warrior
    #season 2
    #completewith next
    >>Tötet |cRXP_ENEMY_Harpyie der Staubschwingen|r. Plündert sie für |cRXP_LOOT_Abgetrennter Harpyienkopf|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
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
step << Warrior
    #season 2
    #loop
    .goto Durotar,53.98,23.70,0
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70,40,0
    >>Tötet |cRXP_ENEMY_Harpyie der Staubschwingen|r. Plündert sie für |cRXP_LOOT_Abgetrennter Harpyienkopf|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
step
    #xprate <1.5
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Gebt die Quest Wind in der Wüste ab
    .accept 835 >>Akzeptiert die Quest Sicherung der Linien
    .target Rezlak
step
    #xprate >1.49
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Gebt die Quest Wind in der Wüste ab
    .target Rezlak
step << Shaman
    #xprate >1.49
    #completewith next
    .goto Durotar,49.42,18.47,40,0
    .goto Durotar,51.35,16.76,40,0
    .goto Durotar,54.65,19.02,40,0
    .goto Durotar,55.86,28.31,40,0
    .subzone 371 >>Reist zu Staubwindhöhle
    >>|cRXP_WARN_Reist nach Osten um die Hügel herum, um die Höhle zu erreichen. Folgt dem Pfeil|r
step << Shaman
    #xprate >1.49
    #loop
    .goto Durotar,53.18,29.15,0
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
step
    #xprate <1.5 << Shaman/Warrior
    #completewith next
    .goto Durotar,44.72,24.86,40,0
    .goto Durotar,42.28,25.45,30,0
    .goto Durotar,41.66,25.68,20 >>Springt in den Donnergrat << !Hunter !Warlock
    .goto Durotar,41.66,25.68,20 >>|cRXP_WARN_Gebt euren|r |T136218:0|t[Wichtel] |cRXP_WARN_frei indem ihr auf den Einheitenrahmen und dann auf freigeben klickt |r << Warlock
    .cast 2641 >> |cRXP_WARN_Wirkt|r |T136095:0|t[Tier freigeben] |cRXP_WARN_und springt dann in Donnergrat|r << Hunter
step
    #xprate <1.5 << Shaman/Warrior
    #softcore
    .goto Durotar,42.13,26.67
    >>Tötet |cRXP_ENEMY_Fizzle Dunkelsturm|r und plündert ihn für seine |cRXP_LOOT_Klaue|r
    >>|cRXP_WARN_Passt auf. Tötet die patrouillierenden|r |cRXP_ENEMY_Fanatiker der Burning Blade|r |cRXP_WARN_und die|r |cRXP_ENEMY_Blitzechse|r |cRXP_WARN_hinten, bevor ihr ihn angreift|r
    >>|cRXP_WARN_Zieht ihn rückwärts zu den|r |cRXP_ENEMY_Donnerechsen|r |cRXP_WARN_die ihr gerade besiegt habt. Andernfalls könnt ihr versehentlich zusätzliche Burning Blade Gegner anziehen.|r
    >>|cRXP_WARN_Habt keine Angst davor, für die |cRXP_LOOT_Klaue|r zu sterben, da ihr danach beim |cRXP_FRIENDLY_Geistheiler|r wieder aufleben werdet|r
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
step
    #xprate <1.5 << Shaman/Warrior
    #hardcore
    .goto Durotar,42.13,26.67
    >>Tötet |cRXP_ENEMY_Fizzle Dunkelsturm|r und plündert ihn für seine |cRXP_LOOT_Klaue|r
    >>|cRXP_WARN_Passt auf. Tötet die patrouillierenden|r |cRXP_ENEMY_Fanatiker der Burning Blade|r |cRXP_WARN_und die|r |cRXP_ENEMY_Blitzechse|r |cRXP_WARN_hinten, bevor ihr ihn angreift|r
    >>|cRXP_WARN_Zieht ihn rückwärts zu den|r |cRXP_ENEMY_Donnerechsen|r |cRXP_WARN_die ihr gerade besiegt habt. Andernfalls könnt ihr versehentlich zusätzliche Burning Blade Gegner anziehen.|r
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
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    #softcore
    .goto Durotar,47.04,17.58
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .isQuestComplete 806
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    #hardcore
    .goto Durotar,39.20,32.02,60 >> Kämpft euch den Weg hinaus aus Donnergrat
    .isQuestComplete 806
step << !Warrior !Shaman !Hunter
    #xprate >1.49
    #softcore
    .goto Durotar,47.04,17.58
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .isQuestComplete 806
step << !Warrior !Shaman !Hunter
    #xprate >1.49
    #hardcore
    .goto Durotar,39.20,32.02,60 >> Kämpft euch den Weg hinaus aus Donnergrat
    .isQuestComplete 806
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    .goto Durotar,41.54,18.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rhinag|r
    >>|cRXP_WARN_Dies startet einen 45-Minuten-Timer für die Quest. Geht in den nächsten 5 Minuten NICHT AFK und meldet euch nicht ab|r
    .accept 812 >>Akzeptiert die Quest Heilmittel benötigt
    .target Rhinag
step << Warrior/Shaman
    #optional
    #xprate <1.5
    #loop
    .goto Durotar,43.56,15.08,0
    .goto Durotar,44.16,19.19,60,0
    .goto Durotar,44.13,17.02,60,0
    .goto Durotar,43.56,15.08,60,0
    .xp 9+2930 >>Farmt bis 2930+/6500 auf Level 9
step << Warrior/Shaman
    #optional
    #xprate <1.5
    #loop
    .goto Durotar,43.56,15.08,0
    .goto Durotar,44.16,19.19,60,0
    .goto Durotar,44.13,17.02,60,0
    .goto Durotar,43.56,15.08,60,0
    +Farmt bis euer Ruhestein auf  <5 minuten Ablinkzeit ist
    .cooldown item,6948,<0
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman
    #label EnterOrg
    #completewith next
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Betretet Orgrimmar
    .zoneskip Orgrimmar
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman
    .goto Orgrimmar,32.28,35.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Gebt die Quest Die Befehle des Admirals ab
    .target Nazgrel
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Akzeptiert die Quest Verborgene Feinde
    .target Thrall
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
    #completewith FindAntidote
    +|cRXP_WARN_Legt|r |T132162:0|t[Wildtierausbildung]|cRXP_WARN_(unter dem Allgemein-Reiter),|r |T132163:0|t[Tier wiederbeleben]|cRXP_WARN_, und|r |T132165:0|t[Tier füttern] |cRXP_WARN_auf eure Aktionsleisten|r
    >>|cRXP_WARN_Erinnert euch daran, euer tier zu trainieren, wenn es Trainingspunkte für|r |T132162:0|t[Wildtierausbildung] erhält
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Kauft einen|r |T135499:0|t[Laminierter Doppelbogen] |cRXP_BUY_von ihm|r
    .collect 2507,1,835,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Zendo'jian
step << Hunter
    #optional
    #completewith FindAntidote
    +|cRXP_WARN_Legt den|r |T135499:0|t[Laminierter Doppelbogen] |cRXP_WARN_wenn ihr auf Stufe 11 seid an|r
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp <11,1
step << Hunter
    #optional
    #completewith FindAntidote
    +|cRXP_WARN_Legt |r |T135499:0|t[Laminierter Doppelbogen] an
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp >11,1
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    #label FindAntidote
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kor'ghan|r in der Kluft der Schatten
    .accept 813 >>Akzeptiert die Quest Suche nach dem Gegengift
    .target Kor'ghan
    .isOnQuest 812
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    #completewith RazorTurnins2
    #label NeedACure
    >>|cRXP_WARN_Brecht die Quest Heilmittel benötigt ab. Dies entfernt den Timer der Quest, aber ihr könnt sie dennoch machen|r
    .abandon 812 >>Brecht die Quest Heilmittel benötigt ab
    .isOnQuest 812
step << Warrior
    #season 2
    #completewith next
    .goto Orgrimmar,57.40,53.93,-1
    .goto Orgrimmar,58.05,51.40,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zamja|r und |cRXP_FRIENDLY_Gru'ark|r
    +Tötet |cRXP_ENEMY_Gru'ark|r wenn er feindselig wird
    .target Zamja
    .target Gru'ark
    .skipgossip
    --Gossipoption
step << Warrior
    #season 2
    .goto Orgrimmar,58.52,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zamja|r
    >>Nehmt die |T134419:0|t[|cRXP_FRIENDLY_Rune des rasenden Angriffs|r] von ihr
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Zamja
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Rasenden Angriffs|r]
    .use 204716
    .itemcount 204716,1
step
    #xprate <1.5 << Mage/Warlock/Priest/Rogue
    #completewith RazorTurnins2
    .hs >> Benutzt euren Ruhestein zum Klingenhügel
    .isQuestComplete 806
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
step
    #xprate <1.5 << Mage/Warlock/Priest/Rogue
    #requires NeedACure
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Grosk|r
    .vendor >> Verkauft Müll
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Kauft|r |T133974:0|t[Fleischschenkel] |cRXP_BUY_bei ihm|r << Rogue/Warrior
    .collect 1179,15,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (15)
    .collect 2287,15,818,1 << Rogue/Warrior --Haunch of Meat (15)
    .target Innkeeper Grosk
    .money <0.0375
step << Warrior
    #season 2
    .goto Durotar,53.14,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vahi|r
    >>Gebt die |cRXP_LOOT_Köpfe|r, die ihr gesammelt habt, im Austausch für die |T134455:0|t[Runenfragmente] ab
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vahi Bonesplitter
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
step << Hunter
    #xprate <1.5
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Orgnil|r
    .turnin 806 >>Gebt die Quest Dunkle Stürme ab
    .accept 828 >>Akzeptiert die Quest Margoz
    .target Orgnil Soulscar
step << !Hunter
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Torka|r, |cRXP_FRIENDLY_Orgnil|r und |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Gebt die Quest Zerbrecht ein paar Eier ab
    .target +Cook Torka
    .goto Durotar,51.12,42.46
    .turnin 806 >>Gebt die Quest Dunkle Stürme ab
    .accept 828 >>Akzeptiert die Quest Margoz
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .turnin 825 >>Gebt die Quest Aus den Wrackteilen geborgen... ab
    .turnin 837 >>Gebt die Quest Übergriff ab
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step << Hunter/Shaman/Warrior
    #xprate >1.49
    #label RazorTurnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orgnil|r und |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 806 >>Gebt die Quest Dunkle Stürme ab
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .turnin 837 >>Gebt die Quest Übergriff ab
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step << Warrior
    #xprate <1.5
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >> Trainiere deine Klassenfähigkeiten
    .accept 1505 >>Akzeptiert die Quest Veteran Uzzek
    .target Tarshaw Jaggedscar
step << Shaman
    #xprate <1.5
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Trainiere deine Klassenfähigkeiten
    .accept 2983 >>Akzeptiert die Quest Ruf des Feuers
    .target Swart
    .isNotOnQuest 1522
step << Shaman
    #xprate <1.5
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Trainiere deine Klassenfähigkeiten
    .target Swart
step << Warlock
    #xprate <1.5
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Trainiere deine Klassenfähigkeiten
    .target Dhugru Gorelust
step << Warlock
    #xprate <1.5
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kitha|r und kauft |T133738:0|t[Feuerblitz Rang 2]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Priest
    #xprate <1.5
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tai'jin|r
    .accept 5654 >> Akzeptiert die Quest Verhexung der Schwäche << Troll
    .accept 5660 >> Akzeptiert die Quest Berührung der Schwäche << Undead
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Tai'jin
step << Hunter
    .goto Durotar,51.85,43.49
    >>Geht in den Bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thotar|r innerhalb
    .train 13549 >> Trainiere deine Klassenfähigkeiten
    .target Thotar
step << Rogue
    #xprate <1.5
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kaplak|r
    .train 674 >> Trainiere deine Klassenfähigkeiten
    .target Kaplak
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate <1.99
<< Horde
#name 10-12 Durotar
#version 11
#group RestedXP Horde 1-22
#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12 Tirisfal << Troll Rogue/Orc Rogue/Orc Warlock/Troll Mage/Troll Priest
#next 12-17 das Brachland << Troll !Rogue !Mage !Priest/Orc !Rogue !Warlock


step << Warrior/Shaman
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Akzeptiert die Quest Freiwilliger der Horde
    .target Takrin Pathseeker
step << Warrior/Shaman
    #label FarWatchPost
    .goto The Barrens,62.26,19.38,40 >> Reist zur Fernwacht
    .zoneskip The Barrens
step << Warrior/Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Gebt die Quest Freiwilliger der Horde ab
    .accept 842 >>Akzeptiert die Quest Crossroads-Wehrpflicht
    .target Kargal Battlescar
step << Warrior
    #xprate <1.5
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uzzek|r
    .turnin 1505 >>Gebt die Quest Veteran Uzzek ab
    .accept 1498 >>Akzeptiert die Quest Weg der Verteidigung
    .target Uzzek
step << Warrior
    #xprate >1.49
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Gebt die Quest Weg der Verteidigung ab
    .accept 1502 >>Akzeptiert die Quest Thun'grim Firegaze
    .target Uzzek
step << Shaman
    #xprate <1.5
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kranal|r
    .turnin 2983 >>Gebt die Quest Ruf des Feuers ab
    .accept 1524 >>Akzeptiert die Quest Ruf des Feuers
    .target Kranal Fiss
step << Warrior/Shaman
    #hardcore
    #completewith PoolsPickup
    .goto The Barrens,52.34,29.27,150,0
    .subzone 380 >> Reist zum Wegekreuz
step << Warrior/Shaman
    #softcore
    #completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step << Warrior/Shaman
    #label PoolsPickup
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>Akzeptiert die Quest Die Vergessenen Teiche
    .target Tonga Runetotem
step << Warrior/Shaman
    .goto The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Gebt die Quest Wegekreuz-Wehrpflicht ab
    .accept 844 >>Akzeptiert die Quest Ebenenschreiter-Bedrohung
    .target Sergra Darkthorn
step << Warrior/Shaman
    .goto The Barrens,52.62,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Akzeptiert die Quest Fleisch für Orgrimmar
    .target Zargh
step << Warrior/Shaman
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Akzeptiert die Quest Raptordiebe
    .target Gazrog
step << Warrior/Shaman
    #xprate >1.49
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Boorand|r
    .home >>Setzt euren Ruhestein im Wegekreuz
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .subzoneskip 380,1
step << Warrior/Shaman
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Akzeptiert die Quest Vereitelung der Angriffe
    .accept 5041 >>Akzeptiert die Quest Vorräte für Crossroads
    .target Thork
step << Warrior/Shaman
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    >>|cRXP_WARN_Fliegt NICHT nach Orgrimmar!|r
    .fp The Crossroads >> Erlernt die Flugroute beim Wegekreuz
    .turnin 6365 >>Gebt die Quest Fleisch für Orgrimmar ab
    .accept 6384 >>Akzeptiert die Quest Flug nach Orgrimmar
    .target Devrak
    .zoneskip Orgrimmar
step << Warrior/Shaman
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helbrim|r
    .accept 848 >>Akzeptiert die Quest Pilzsporen
    .accept 1492 >>Werftmeister Flunkerblick annehmen
    .target Apothecary Helbrim
step << Warrior/Shaman
    #completewith next
    >>Sammelt |cRXP_LOOT_Potenter Pilz|r um Die vergessenen Teiche herum
    >>|cRXP_WARN_Haltet maximalen Abstand zu |cRXP_ENEMY_Kolkar|r |cRXP_WARN_während ihr die Pilze plündert. Sie sind Stufe 12-14|r
    >>|cRXP_WARN_Die Folgequest bietet den starken |cRXP_FRIENDLY_Kesselrührer|r |cRXP_WARN_als Belohnung. Ihr könnt diese Quest jetzt überspringen, wenn ihr ihn nicht verwenden wollt|r
    .complete 848,1 --Collect Fungal Spores (x4)
step << Warrior/Shaman
    .goto The Barrens,45.06,22.54
    >>Taucht unter Wasser zur |cRXP_PICK_Blubbernder Felsspalt|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step << Warrior/Shaman
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
step << Warrior/Shaman
    #hardcore
    #completewith FungalSporesComplete
    .goto The Barrens,52.34,29.27,150,0
    .subzone 380 >> Reist zum Wegekreuz
step << Warrior/Shaman
    #softcore
    #completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step << Warrior/Shaman
    #label FungalSporesComplete
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_WARN_Wartet bis das RP vorbei ist|r
    >>|cRXP_WARN_Dies startet eine 45-Minuten-Quest|r
    .turnin 848 >> Gebt die Quest Pilzsporen ab
    .timer 7,Pilzsporen RP
    .accept 853 >> Akzeptiert die Quest Apothekerin Zamah
    .target Apothecary Helbrim
step << Warrior/Shaman
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Kauft einen oder mehrere|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_von|r |cRXP_BUY_ihm|r
    .collect 4496,1,853,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step << Warrior/Shaman
    #sticky
    #completewith ZamahTurnin2
    +|cRXP_WARN_Ihr seid in einer zeitlich begrenzten Quest, geht nicht offline. Sie wird etwa 30 Minuten nach der Annahme automatisch abgegeben|r
    .isOnQuest 853
step << Warrior/Shaman
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >> Gebt die Quest Die Vergessenen Teiche ab
    .target Tonga Runetotem
step << Warrior/Shaman
    #completewith next
    .goto The Barrens,47.44,56.48,70,0
    .subzone 378 >>Reist südlich die Straße hinunter zum Camp Taurajo
step << Warrior/Shaman
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Erlernt die Camp Taurajo-Flugroute
    .target Omusa Thunderhorn
step << Warrior/Shaman
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Er patrouilliert entlang der östlichen Straße|r
    .accept 749 >>Akzeptiert die Quest Die Überfallene Karawane
	.unitscan Morin Cloudstalker
step << Warrior/Shaman
    #xprate <1.5
    .goto Mulgore,48.715,59.325
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harken|r
    .accept 761 >>Akzeptiert die Quest Sturzfliegerjagd
    .target Harken Windtotem
step << Warrior/Shaman
    .goto Mulgore,47.513,60.164
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baine|r
    .accept 767 >>Akzeptiert die Quest Ritus der Sicht
    .accept 746 >>Akzeptiert die Quest Zwergen-Buddelei
    .target Baine Bloodhoof
step << Warrior/Shaman
    .goto Mulgore,47.3,62.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ruul|r
    .accept 743 >>Akzeptiert die Quest Windfuriengefahr
    .target Ruul Eagletalon
step << Warrior/Shaman
    .goto Mulgore,47.8,57.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zarlman|r
    .turnin 767 >>Gebt die Quest Ritus der Sicht ab
    .accept 771 >>Akzeptiert die Quest Ritus der Sicht
    .target Zarlman Two-Moons
step << Warrior/Shaman
    .goto Mulgore,47.0,57.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maur|r
    .accept 766 >>Akzeptiert die Quest Mazzranache
    .target Maur Raincaller
step << Warrior/Shaman
    #xprate <1.5
    #completewith EnterTB
    >>Tötet die |cRXP_ENEMY_Wölfe|r, die |cRXP_ENEMY_Pumas|r, die |cRXP_ENEMY_Ebenenschreiter|r und die |cRXP_ENEMY_Sturzflieger|r, während ihr in der ganzen Zone unterwegs seid
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
    .complete 761,1 --Trophy Swoop Quill (8)
step << Warrior/Shaman
    #xprate >1.49
    #completewith EnterTB
    >>Tötet die |cRXP_ENEMY_Wölfe|r, die |cRXP_ENEMY_Pumas|r, die |cRXP_ENEMY_Ebenenschreiter|r und die |cRXP_ENEMY_Sturzflieger|r, während ihr in der ganzen Zone unterwegs seid
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Warrior/Shaman
	#completewith EnterTB
    >>Haltet Ausschau nach |cRXP_ENEMY_Geistheuler|r. Plündert ihn für seinen |T134358:0|t[|cRXP_LOOT_Dämonennarben-Umhang|r]. Benutzt es, um die Quest zu starten
    >>|cRXP_WARN_Akzeptiert die Quest noch nicht|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .use 4854
    .unitscan Ghost Howl
step << Warrior/Shaman
    #loop
    .goto Mulgore,50.36,66.49,0
    .goto Mulgore,48.71,64.44,15,0
    .goto Mulgore,50.36,66.49,15,0
    .goto Mulgore,51.92,63.85,15,0
    .goto Mulgore,51.13,71.06,15,0
    .goto Mulgore,50.36,66.49,15,0
    >>Sammelt die |cRXP_PICK_Bernsteinkörner|r vom Boden unter den Bäumen
    .complete 771,2 --Ambercorn (2)
step << Warrior/Shaman
    #loop
    .goto Mulgore,54.06,66.40,0
    .goto Mulgore,53.35,65.78,10,0
    .goto Mulgore,53.70,65.59,10,0
    .goto Mulgore,53.98,65.94,10,0
    .goto Mulgore,54.06,66.40,10,0
    >>Sammelt die |cRXP_PICK_Quellsteine|r um den Brunnen ein
    .complete 771,1 --Well Stone (2)
step << Warrior/Shaman
    .goto Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zarlman|r
    >>|cRXP_WARN_Folge nicht dem Wolf, der erscheint|r
    .turnin 771 >>Gebt die Quest Ritus der Sicht ab
    .accept 772 >>Akzeptiert die Quest Ritus der Sicht
    .target Zarlman Two-Moons
step << Warrior/Shaman
    #label EnterTB
    #completewith ZamahTurnin2
    .goto Thunder Bluff,32.0,66.9,60,0
    .zone Thunder Bluff >> Reist nach Donnerfels
step << Warrior
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Erlernt Stäbe
    .train 199 >>Erlernt Zweihandstreitkolben
    .target Ansekhwa
    .money <0.020
step << Warrior
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Erlernt Stäbe
    .target Ansekhwa
    .money <0.010
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eberton Schattentotem|r
    >>|cRXP_WARN_Er ist in|r |T132320:0|t[Verstohlenheit]
    .accept 76156 >>Akzeptiert die Quest Schleicht mit der Erdenmutter
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step << Warrior/Shaman
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .fp Thunder Bluff >> Erlernt die Flugroute nach Donnerfels << !Tauren
    .target Tal
step << Warrior/Shaman
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >> Reist zur Anhöhe der Geister und begebt euch zu den Teichen der Visionen
step << Warrior/Shaman
    #label ZamahTurnin2
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Gebt die Quest Apothekerin Zamah ab
    .target Apothecary Zamah
    .isOnQuest 853
step << Warrior/Shaman
    #optional
    #completewith RiteofWisdomTurnin
    +|cRXP_WARN_Legt |r |T135145:0|t[Kesselrührer] an
    .use 5340
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
    .itemcount 5340,1
step << Warrior/Shaman
    #completewith RiteofWisdomTurnin
    .goto Thunder Bluff,29.04,37.68,55,0
    .goto Mulgore,33.48,36.68,40 >> Lauf aus der Höhle und verlass dann Thunder Bluff, indem du irgendwo unter der Brücke hinunterspringst
    .zoneskip Mulgore
step << Warrior/Shaman
    #xprate <1.5
    #completewith SacredBurialTurnIn
    >>Tötet die |cRXP_ENEMY_Wölfe|r, die |cRXP_ENEMY_Pumas|r, die |cRXP_ENEMY_Ebenenschreiter|r und die |cRXP_ENEMY_Sturzflieger|r, während ihr in der ganzen Zone unterwegs seid
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
    .complete 761,1 --Trophy Swoop Quill (8)
step << Warrior/Shaman
    #xprate >1.49
    #completewith SacredBurialTurnIn
    >>Tötet die |cRXP_ENEMY_Wölfe|r, die |cRXP_ENEMY_Pumas|r, die |cRXP_ENEMY_Ebenenschreiter|r und die |cRXP_ENEMY_Sturzflieger|r, während ihr in der ganzen Zone unterwegs seid
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Warrior/Shaman
	#completewith SacredBurialTurnIn
    >>Haltet Ausschau nach |cRXP_ENEMY_Geistheuler|r. Plündert ihn für seinen |T134358:0|t[|cRXP_LOOT_Dämonennarben-Umhang|r].
    >>|cRXP_WARN_Akzeptiert die Quest noch nicht|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .unitscan Ghost Howl
step << Warrior/Shaman
    #label RiteofWisdomTurnin
    .goto Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wiserunner|r
    >>|cRXP_WARN_Er befindet sich in der Höhle südwestlich von Donnerfels|r
    .turnin 772 >>Gebt die Quest Ritus der Sicht ab
    .accept 773 >>Akzeptiert die Quest Ritus der Weisheit
    .target Seer Wiserunner
step << Warrior/Shaman
    #completewith next
    .destroy 4823 >>Zerstört |T134712:0|t[Wasser der Seher], da ihr es nicht braucht
step << Warrior/Shaman
    #loop
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
step << Shaman
    #season 2
    #completewith next
    >>Tötet |cRXP_ENEMY_Buddler von Bael'dun|r und |cRXP_ENEMY_Gutachter von Bael'dun|r. Plündert sie für |cRXP_LOOT_Artefaktlagertruhenschlüssel|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
step << Warrior/Shaman
    .goto Mulgore,31.27,49.87
    >>Tötet |cRXP_ENEMY_Buddler von Bael'dun|r und |cRXP_ENEMY_Gutachter von Bael'dun|r. Plündert sie für |cRXP_LOOT_Ausgrabungsleiterhacke|r
    .use 4702 >> Benutzt die |T134707:0|t[Spitzhacken] bei der Schmiede
    .complete 746,1 --Broken Tools (5)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
step << Shaman
    #season 2
    #loop
    .goto Mulgore,33.10,47.69,0
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
    #completewith SacredBurialTurnIn
    .aura 408828 >>|cRXP_WARN_Tötet Feinde mit|r |T136026:0|t[Erdschock] |cRXP_WARN_auf ihnen mindestens einmal. Macht dies 10 Mal, um den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Effekt zu erhalten|r
    >>|cRXP_WARN_HINWEIS: Ihr müsst dies auf Feinde wirken, die Erfahrung geben, um Stapel zu erhalten|r
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
step << Warrior/Shaman
    #label SacredBurial
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raintotem|r
    .accept 833 >>Akzeptiert die Quest Eine heilige Bestattung
    .target Lorekeeper Raintotem
step << Warrior/Shaman
    #completewith next
    >>Tötet |cRXP_ENEMY_Eindringling der Borstennacken|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step << Warrior/Shaman
    .goto Mulgore,61.45,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Vorfahrengeist|r
    .turnin 773 >>Gebt die Quest Ritus der Weisheit ab
    .target Ancestral Spirit
step << Warrior/Shaman
    #loop
	.goto Mulgore,61.12,22.88,0
	.goto Mulgore,59.85,25.62,40,0
	.goto Mulgore,61.14,22.93,40,0
	.goto Mulgore,61.77,22.49,40,0
	.goto Mulgore,62.18,22.05,40,0
	.goto Mulgore,62.32,20.89,40,0
	.goto Mulgore,61.62,19.50,40,0
	.goto Mulgore,60.44,19.50,40,0
	.goto Mulgore,60.16,21.06,40,0
	.goto Mulgore,60.41,21.96,40,0
	.goto Mulgore,61.12,22.88,40,0
    >>Tötet |cRXP_ENEMY_Eindringling der Borstennacken|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step << Warrior/Shaman
    #label SacredBurialTurnIn
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raintotem|r
    .turnin 833 >>Gebt die Quest Eine heilige Bestattung ab
    .target Lorekeeper Raintotem
step << Shaman
    #season 2
    #requires MoltenBlast
    .cast 402265 >>|cRXP_WARN_Benutzt das|r |T134918:0|t|cRXP_LOOT_[Schweflige Symbol]|r |cRXP_WARN_um|r |T133816:0|t[Handschuhe prägen - Schmelzschlag] zu erlernen
    .use 206388
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <3,1
step << Warrior/Shaman
    #xprate <1.5
    #completewith next
    >>Tötet die |cRXP_ENEMY_Wölfe|r, die |cRXP_ENEMY_Pumas|r, die |cRXP_ENEMY_Ebenenschreiter|r und die |cRXP_ENEMY_Sturzflieger|r, während ihr in der ganzen Zone unterwegs seid
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
    .complete 761,1 --Trophy Swoop Quill (8)
step << Warrior/Shaman
    #xprate >1.49
    #completewith next
    >>Tötet die |cRXP_ENEMY_Wölfe|r, die |cRXP_ENEMY_Pumas|r, die |cRXP_ENEMY_Ebenenschreiter|r und die |cRXP_ENEMY_Sturzflieger|r, während ihr in der ganzen Zone unterwegs seid
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Warrior/Shaman
    .goto Mulgore,53.74,48.17
    >>Klickt die |cRXP_PICK_Versiegelte Vorratskiste|r
    .turnin 749 >>Gebt die Quest Die Überfallene Karawane ab
    .accept 751 >>Akzeptiert die Quest Die Überfallene Karawane
step << Warrior/Shaman
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Gebt die Quest Mazzranache ab
    .target Maur Raincaller
    .isQuestComplete 766
step << Warrior/Shaman
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Skorn|r
    .accept 770 >>Akzeptiert die Quest Der Dämonennarbenumhang
    .turnin 770 >>Gebt die Quest Der Dämonennarbenumhang ab
    .target Skorn
    .target Skorn Whitecloud
    .use 4854
    .itemcount 4854,1
step << Warrior/Shaman
    .goto Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Baine|r
    .turnin 746 >>Gebt die Quest Zwergen-Buddelei ab
    .target Baine Bloodhoof
step << Warrior/Shaman
    .goto Mulgore,47.35,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ruul|r
    .turnin 743 >>Gebt die Quest Windfuriengefahr ab
    .target Ruul Eagletalon
step << Warrior/Shaman
    #xprate <1.5
    .goto Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Harken|r
    .turnin 761 >>Gebt die Quest Sturzfliegerjagd ab
    .target Harken Windtotem
    .isQuestComplete 761
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Narm|r
    .train 547 >> Trainiere deine Klassenfähigkeiten
    .target Narm Skychaser
    .xp <12,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krang|r
    .train 7384 >> Trainiere deine Klassenfähigkeiten
    .target Krang Stonehoof
    .xp <12,1
step << Warrior/Shaman
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Er patrouilliert entlang der östlichen Straße|r
    .turnin 751 >> Gebt die Quest Die Überfallene Karawane ab
    .accept 764 >> Akzeptiert die Quest Die Venture Company
    .accept 765 >> Akzeptiert die Quest Vorsteher Fizsprocket
	.unitscan Morin Cloudstalker
step << Warrior/Shaman
    #completewith Fizsprocket
    .goto Mulgore,61.51,47.29,20 >> Reist zur Mine der Venture Company
step << Shaman
    #season 2
    #completewith VentureCoKills
    >>Öffnet die |cRXP_PICK_Sprengvorräte|r im Bergwerk und draußen auf der anderen Seite. Sammelt sie für die |cRXP_LOOT_Zephyriumbergbauladung|r
    >>|cRXP_WARN_Bleibt, wenn möglich, in der oberen Ebenen der Höhle|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
    .xp <4,1
step << Warrior/Shaman
    #completewith next
    >>Tötet |cRXP_ENEMY_Tagelöhner der Venture Co.|r und |cRXP_ENEMY_Vorsteher der Venture Co.|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step << Warrior/Shaman
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>Lauft in die Mine und haltet euch auf der rechten/östlichen Seite. Tötet |cRXP_ENEMY_Vorsteher Fizsprocket|r. Plündert |cRXP_LOOT_Fizsprockets Klemmbrett|r von ihm
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Vorsteher Zischelspross
step << Warrior/Shaman
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
    .goto Mulgore,61.72,35.15,0
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
step << Warrior/Shaman
    #optional
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
step << Warrior/Shaman
    #optional
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
step << Warrior/Shaman
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Er patrouilliert entlang der östlichen Straße|r
    .turnin 764 >>Gebt die Quest Die Venture Company ab
    .turnin 765 >>Gebt die Quest Vorsteher Fizsprocket ab
	.unitscan Morin Cloudstalker
step << Warrior
    #xprate >1.49
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krang|r
    .train 7384 >> Trainiere deine Klassenfähigkeiten
    .target Krang Stonehoof
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
step << Shaman
    #season 2
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eyahn|r
    .accept 744 >>Akzeptiert die Quest Vorbereitungen auf die Zeremonie
    .target Eyahn Eagletalon
    .train 410104,1
step << Shaman
    #season 2
    #completewith next
    .zone Mulgore >>Nehmt den nördlichen Aufzug hinab nach Mulgore
    .train 410104,1
    .xp <4,1
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
    #loop
    .goto Mulgore,30.89,22.41,0
    .goto Mulgore,30.89,22.41,20,0
    .goto Mulgore,29.57,23.43,20,0
    .goto Mulgore,29.63,26.32,20,0
    >>Plündert|cRXP_LOOT_Windzornzapfen|r vom Boden
    .collect 206170,8,76160,1 --Windfury Cone (8)
    .train 410104,1
    .xp <4,1
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
    .train 410104,1
step << Shaman
    #season 2
    >>Benutzt |T133748:0|t[Mörser und Stößel] um |T133213:0|t[Piniensalbe] zu erstellen
    .complete 76160,1 --Pine Salve (1)
    .use 206176
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eyahn|r
    .turnin 744 >>Gebt die Quest Vorbereitungen auf die Zeremonie ab
    .target Eyahn Eagletalon
    .train 410104,1
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
step << Warrior/Shaman
    #optional
    .abandon 766 >> Brecht die Quest Mazzranache ab
step << Warrior/Shaman
    #xprate >1.49
    .hs >> Ruhestein nach Das Wegekreuz
    .subzoneskip 380
    .bindlocation 380,1
    .use 6948
step << Warrior/Shaman
    #xprate <1.5
    #completewith MargozTurnIn
    .hs >> Benutzt euren Ruhestein zum Klingenhügel
    .subzoneskip 362
    .bindlocation 362,1
    .use 6948
step << Warrior
    #xprate <1.5
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >> Trainiere deine Klassenfähigkeiten
    .target Tarshaw Jaggedscar
    .xp <12,1
step << Shaman
    #xprate <1.5
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Trainiere deine Klassenfähigkeiten
    .target Swart
    .xp <12,1
step << Shaman
    #xprate <1.5
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
    #xprate <1.5
    #label CallofFire3
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Gebt die Quest Ruf des Feuers ab
    .accept 1525 >>Akzeptiert die Quest Ruf des Feuers
    .target Telf Joolam
step << Warrior
    #xprate <1.5
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jark|r
    .vendor >>|cRXP_BUY_Kauft|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_von|r |cRXP_BUY_ihn|r
    .target Jark
step << Hunter
    #completewith MargozTurnIn
    +Zähmt einen |cRXP_ENEMY_Siechstachelskorpid|r
    .mob Venomtail Scorpid
    .train 16828,1 --Claw rank 2
step << Shaman
    #xprate <1.5
    #completewith next
    .subzone 371 >>Reist zur Staubwindhöhle
step << Shaman
    #xprate <1.5
    #loop
    .goto Durotar,53.18,29.15,0
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
step
    #xprate <1.5 << !Hunter
    #completewith next
    .goto Durotar,56.30,27.91,80,0
    .goto Durotar,56.41,20.04,50 >> Reist zu |cRXP_FRIENDLY_Margoz|r
    .isQuestTurnedIn 806
step
    #xprate <1.5 << !Hunter
    #label MargozTurnIn
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Margoz|r
    .turnin 828 >>Gebt die Quest Margoz ab
    .accept 827 >>Akzeptiert die Quest Die Knochenhöhle
    .target Margoz
    .isQuestTurnedIn 806
step << !Warrior !Shaman !Hunter
    #xprate <1.5
    #completewith next
    .goto Durotar,56.49,25.04,50,0
    .goto Durotar,56.11,27.94,50,0
    .goto Durotar,53.18,29.15,50 >> Reist zu Staubwindhöhle
    .isQuestTurnedIn 828
step << Mage
    #xprate <1.5
    #season 2
    #completewith next
    >>Tötet |cRXP_ENEMY_Burning Blade Orks|r in der Knochenhöhle. Plündert sie für |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: DEELFANE LMEBM|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .train 401768,1
step << !Warrior !Shaman !Hunter
    #xprate <1.5
    #loop
    .goto Durotar,53.18,29.15,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,52.70,27.97,12,0
    >>Tötet |cRXP_ENEMY_Burning Blade Orks|r. Plündert sie für |cRXP_LOOT_Senghalsband|r
    .complete 827,1 --Searing Collar (6)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .isQuestTurnedIn 828
step << Mage
    #season 2
    #xprate <1.5
    #loop
    .goto Durotar,53.18,29.15,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,52.70,27.97,12,0
    >>Tötet |cRXP_ENEMY_Burning Blade Orks|r in der Knochenhöhle. Plündert sie für |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: DEELFANE LMEBM|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .train 401768,1
step << Mage
    #xprate <1.5
    #season 2
    .collect 211779,1 >>Ihr braucht ein |T135933:0|t[Verständnisamulett] von einem |cRXP_FRIENDLY_Reagenzienhändler|r, um den Gegenstand zu verwenden
    .train 401768 >>|cRXP_WARN_Benutzt|r|T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: DEELFANE LMEBM|r] |cRXP_WARN_um|r |T135820:0|t[Lebende Flamme] zu erlernen
    .use 203752
    .itemcount 203752,1
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #completewith Gazzuz
    .goto Durotar,55.12,10.10,60 >> Reist zur Knochenhöhle
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #completewith Gazzuz
    >>Tötet |cRXP_ENEMY_Siechstachelskorpid|r. Plündert sie für |cRXP_LOOT_Giftbeutel eines Siechstachelskorpiden|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
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
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #label Gazzuz
    .goto Durotar,51.8,10.0
    >>Tötet |cRXP_ENEMY_Gazz'uz|r. Plündert ihn für |T134085:0|t[|cRXP_LOOT_Auge des brennenden Schatten|r]
    >>|cRXP_WARN_Benutzt |T134085:0|t[|cRXP_LOOT_Auge des brennenden Schatten|r] um die Quest zu starten|r
    >>|cRXP_WARN_Benutzt euren|r |T134712:0|t[Echt klebriger Leim] |cRXP_WARN_auf den|r |cRXP_ENEMY_Leerwandler|r |cRXP_WARN_, um Treffer zu vermeiden, und|r |T134829:0|t[Heiltränke] |cRXP_WARN_um die Gesundheit wiederherzustellen. Nutzt LoS (Sichtlinie), um|r |cRXP_ENEMY_Gazz'uz|r |cRXP_WARN_Schattenblitzen auszuweichen|r
    >>|cRXP_WARN_Ihr könnt zu Gewässern innerhalb der Höhle fliehen um dem|r Leerwandler|cRXP_ENEMY_ nach dem Töten von|r |cRXP_WARN_Gazz'uz|r |cRXP_ENEMY_zu entkommen|r
    >>|cRXP_WARN_Seid vorsichtig, da er SEHR schwierig ist. Ihr könnt diese Quest überspringen, falls nötig|r
    .collect 4903,1,832,1 --Collect Eye of Burning Shadow
    .accept 832 >>Akzeptiert die Quest Brennende Schatten
    .use 4903
	.unitscan Gazz'uz
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
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
    .goto Durotar,53.77,8.87,15,0
    >>Tötet |cRXP_ENEMY_Burning Blade Orks|r. Sammelt Beute für |cRXP_LOOT_Senghalsband|r und für |cRXP_LOOT_Insignien des Lieutenants|r
    >>|cRXP_WARN_Überspringt die|r |cRXP_LOOT_Insignien des Lieutenants|r |cRXP_WARN_falls ihr pech mit den Drops habt|r
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #completewith Ravine
    >>Tötet |cRXP_ENEMY_Siechstachelskorpid|r. Plündert sie für |cRXP_LOOT_Giftbeutel eines Siechstachelskorpiden|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step
    #xprate <1.5 << !Hunter
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Margoz|r
    .turnin 827 >>Gebt die Quest Die Knochenhöhle ab
    .accept 829 >>Akzeptiert die Quest Neeru Fireblade
    .target Margoz
    .isQuestTurnedIn 806
step
    #xprate <1.5
    #label Ravine
    #completewith next
    .subzone 370 >> Springt runter in den Staubwindklamm
step
    #xprate <1.5
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
    .complete 835,1 --Dustwind Savage (12)
    .mob +Dustwind Savage
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob +Dustwind Storm Witch
step
    #xprate <1.5
    #softcore
    #completewith SecuringLinesTurnIn
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .isQuestComplete 813 << Warrior/Shaman/Hunter
step
    #xprate <1.5
    #hardcore
    #completewith next
    .goto Durotar,53.75,27.74,60,0
    .goto Durotar,51.75,27.40,60,0
    .goto Durotar,46.37,22.94,60 >> Reist durch die Höhle in Richtung |cRXP_FRIENDLY_Rezlak|r
step
    #xprate <1.5
    #label SecuringLinesTurnIn
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Gebt die Quest Sicherung der Linien ab
    .target Rezlak
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #loop
    .goto Durotar,38.73,22.04,0
    .goto Durotar,42.64,20.45,60,0
    .goto Durotar,40.43,19.72,60,0
    .goto Durotar,40.59,16.41,60,0
    .goto Durotar,38.79,17.00,60,0
    .goto Durotar,38.73,22.04,60,0
    >>Beendet das töten von |cRXP_ENEMY_Siechstachelskorpid|r. Plündert sie für |cRXP_LOOT_Giftbeutel eines Siechstachelskorpiden|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step
    #xprate <1.5 << Warrior/Shaman/Hunter
    #completewith Admiralorders1 << !Warrior !Shaman !Hunter
    #completewith NeeruFireblade << Warrior/Shaman/Hunter
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Betretet Orgrimmar
step << !Rogue
    #xprate <1.5 << Shaman/Warrior
    .goto Orgrimmar,47.21,70.27,15,0
    .goto Orgrimmar,47.55,68.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Urtharo|r
    .vendor >> Verkaufe und Repariere
    .target Urtharo
step << Shaman/Warrior
    #xprate <1.5
    #label Gryhskaturnin1
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit|r|cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Gebt die Quest Flug nach Orgrimmar ab
    .accept 6385 >>Akzeptiert die Quest Doras der Windreitermeister
    .target Innkeeper Gryshka
step << Shaman/Warrior
    #xprate <1.5
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |r |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >> Gebt die Quest Doras der Windreitermeister ab
    .accept 6386 >> Akzeptiert die Quest Kehrt nach Crossroads zurück
    .target Doras
step << Shaman
    #xprate <1.5
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kardris|r
    .train 8050 >> Trainiere deine Klassenfähigkeiten
    .target Kardris Dreamseeker
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Kauft|r |T135419:0|t[Scharfe Wurfaxt] |cRXP_BUY_von ihm|r
    .collect 3135,200,354,1 --Sharp Throwing Axe (200)
    .vendor >> Verkaufe deinen trash
    .target Trak'gen
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #optional
    #completewith ZeptoUC1
    +|cRXP_WARN_Legt die|r |T135421:0|t[Scharfe Wurfaxt] an |cRXP_WARN_wenn ihr Stufe 11 seid|r
    .use 3135
    .itemcount 3135,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5654 >> Gebt die Quest Verhexung der Schwäche ab
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ur'kyo
    .isOnQuest 5654
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5652 >> Gebt die Quest Verhexung der Schwäche ab
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ur'kyo
step << Mage
    .goto Orgrimmar,38.33,85.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Pephredo|r
    .train 122 >> Trainiere deine Klassenfähigkeiten
    .target Pephredo
step << Warrior
    #xprate <1.5
    #completewith next
    .goto Orgrimmar,68.02,38.69,30 >> Reist in Das Tal der Ehre
step << Warrior
    #xprate <1.5
    .goto Orgrimmar,79.93,31.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grezz|r
    .train 6546 >> Trainiere deine Klassenfähigkeiten
    .target Grezz Ragefist
step << !Warrior !Shaman !Hunter
    #label Admiralorders1
    .goto Orgrimmar,32.28,35.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Gebt die Quest Die Befehle des Admirals ab
    .target Nazgrel
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Gebt die Quest Verborgene Feinde ab
    .accept 5727 >>Akzeptiert die Quest Verborgene Feinde
    .target Thrall
    .isQuestComplete 5726
    .dungeon RFC
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Gebt die Quest Verborgene Feinde ab
    .target Thrall
    .isQuestComplete 5726
    .dungeon !RFC
step << Rogue
    .goto Orgrimmar,42.75,53.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Therzok|r
	.accept 1963 >> Akzeptiert die Quest Die Shattered-Hand << Orc Rogue/Troll Rogue
    .target Therzok
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|rSprecht mit|cRXP_FRIENDLY_ Kor'ghan|r
    .turnin 813 >>Gebt die Quest Suche nach dem Gegengift ab
    .target Kor'ghan
    .itemcount 4904,<1 --Venomtail Antidote
step << Warlock
    .goto Orgrimmar,48.59,46.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mirket|r
    .train 1120 >> Trainiere deine Klassenfähigkeiten
    .target Mirket
step
    #xprate <1.5 << !Hunter
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Gebt die Quest Neeru Fireblade ab
    .turnin 832 >>Gebt die Quest Brennende Schatten ab
    .accept 809 >>Akzeptiert die Quest Ak'zeloth
    .target Neeru Fireblade
    .isQuestTurnedIn 827
    .isOnQuest 832
step
    #xprate <1.5 << !Hunter
    #label NeeruFireblade
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Gebt die Quest Neeru Fireblade ab
    .accept 809 >>Akzeptiert die Quest Ak'zeloth
    .target Neeru Fireblade
    .isQuestTurnedIn 827
step << Rogue
    #season 2
    .goto Orgrimmar,55.87,44.89
    >>Sammelt |cRXP_PICK_Verstaubte Kiste|r für |T134419:0|t[|cRXP_FRIENDLY_Rune der Präzision|r]
    >>|cRXP_WARN_Sie befindet sich in Der Gasse im oberen Stock|r
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Präzision|r] |cRXP_WARN_zum Trainieren von|r |T135610:0|t[Zwischen die Augen]
    .use 204174
    .itemcount 204174,1
step << !Warrior !Shaman !Hunter
    #softcore
    #completewith ZeptoUC1
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >> Betretet Der Flammenschlund
step << !Warrior !Shaman !Hunter
    #softcore
    #completewith ZeptoUC1
    .goto Durotar,47.05,17.58
    .deathskip >> Sterbt und spawnt beim |cRXP_FRIENDLY_Geistheiler|r
step << !Warrior !Shaman !Hunter
    #hardcore
    #completewith ZeptoUC1
    .zone Durotar >> Verlass Orgrimmar
    .zoneskip Durotar
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #softcore
    #completewith FoundtheCure
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >> Betretet Der Flammenschlund
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #softcore
    #completewith FoundtheCure
    .goto Durotar,47.05,17.58
    .deathskip >> Sterbt und spawnt beim |cRXP_FRIENDLY_Geistheiler|r
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #hardcore
    #completewith FoundtheCure
    .zone Durotar >> Verlass Orgrimmar
    .zoneskip Durotar
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #label FoundtheCure
    .goto Durotar,41.54,18.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rhinag|r
    .accept 812 >>Akzeptiert die Quest Heilmittel benötigt
    .turnin 812 >>Gebt die Quest Heilmittel benötigt ab
    .target Rhinag
step << Warrior
    #xprate <1.5 << !Hunter
    .goto Durotar,42.01,24.33,90,0
    .goto Durotar,39.18,31.65
    >>Springt hinunter in den Donnergrat und tötet |cRXP_ENEMY_Blitzechse|r. Sammelt sie für ihre |cRXP_ENEMY_Schuppen|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Durotar,34.80,32.84,50,0 << !Warrior
    .goto Durotar,34.81,37.02,50,0 << !Warrior
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.71,42.30
    >>Reist südlich entlang des Flusses zur Fernwacht
    >>Tötet |cRXP_ENEMY_Schaudermagenkrokilisk|r auf dem Weg. Plündert sie für |cRXP_LOOT_Krons Amulett|r
    >>|cRXP_WARN_Überspringt und brecht die Quest ab, falls es nicht droppt.|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Misha|r
    .turnin 816 >>Gebt die Quest Verloren, aber nicht vergessen ab
    .target Misha Tor'kren
    .isQuestComplete 816
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #label FarWatchPost
    .goto The Barrens,62.26,19.38,40 >> Reist zur Fernwacht
    .zoneskip The Barrens
step << Hunter
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Gebt die Quest Freiwilliger der Horde ab
    .accept 842 >>Akzeptiert die Quest Crossroads-Wehrpflicht
    .target Kargal Battlescar
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #label Akzeloth
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Gebt die Quest Ak'zeloth ab
    .accept 924 >>Akzeptiert die Quest Die Dämonensaat
    .target Ak'Zeloth
    .isQuestTurnedIn 829
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
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
step << Mage
    #xprate >1.49
    #season 2
    #loop
    .goto Durotar,52.93,9.01,0
    .goto Durotar,54.96,9.69,30,0
    .goto Durotar,54.69,8.73,30,0
    .goto Durotar,53.78,9.14,30,0
    .goto Durotar,52.93,9.01,30,0
    >>Tötet |cRXP_ENEMY_Burning Blade Orks|r in der Knochenhöhle. Plündert sie für |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: DEELFANE LMEBM|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .train 401768,1
step << Mage
    #xprate >1.49
    #season 2
    .collect 211779,1 >>Ihr braucht ein |T135933:0|t[Verständnisamulett] von einem |cRXP_FRIENDLY_Reagenzienhändler|r, um den Gegenstand zu verwenden
    .train 401768 >>|cRXP_WARN_Benutzt|r|T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: DEELFANE LMEBM|r] |cRXP_WARN_um|r |T135820:0|t[Lebende Flamme] zu erlernen
    .use 203752
    .itemcount 203752,1
step << Rogue/Mage/Priest/Warlock
    #label ZeptoUC1
    .goto Durotar,50.8,13.8,40 >>Geh auf den Zeppelin-Turm
    .zone Tirisfal Glades >>Nehmt den Zeppelin nach Tirisfal
    >>|cRXP_WARN_Beschwört Wasser, während ihr wartet|r << Mage
    .zoneskip Tirisfal Glades
step
    #optional
    .abandon 816 >>Brecht die Quest Verloren, aber nicht vergessen ab
]])


RXPGuides.RegisterGuide([[
#classic
#tbc
<< Horde
#xprate <1.99
#name 10-12 Tirisfal
#version 11
#group RestedXP Horde 1-22
#groupid RXP-SRGCE-H1
#defaultfor Troll Rogue/Orc Rogue/Orc Warlock/Troll Mage/Troll Priest
#next 12-14 Silberwald << Undead/Troll Rogue/Orc Rogue/Orc Warlock/Troll Mage/Troll Priest

step << Orc Rogue/Troll Rogue
    #completewith Swordtraining1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Betrete Unterstadt
    .zoneskip Undercity
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #completewith Swordtraining1
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Nehmt den Aufzug hinab nach Unterstadt
    .money <0.3023
step << Orc Rogue/Troll Rogue
    .goto Undercity,63.25,48.56
    .fp Undercity >> Erlernt die Flugroute Unterstadt
    .target Michael Garrett
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #label Swordtraining1
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Archibald|r im Kriegsviertel
    .train 201 >>Erlernt 1h Schwerter
    .target Archibald
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #ssf
    #optional
    #label RogueCutlass1
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Louis Warren|r im Handelsviertel
    >>|cRXP_BUY_Kauft einen|r |T135346:0|t[Entersäbel] |cRXP_BUY_von ihm|r
    .collect 851,1,435,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Orc Rogue/Troll Rogue
    #ah
    #optional
    #label RogueCutlass1
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Louis Warren|r im Handelsviertel
    >>|cRXP_BUY_Kauft einen|r |T135346:0|t[Entersäbel] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 851,1,435,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Orc Rogue/Troll Rogue
    #optional
    #completewith KillDevlin
    +|cRXP_WARN_Rüstet aus:|r |T135346:0|t[Entersäbel]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Orc Rogue/Troll Rogue
    #optional
    #ah
    .goto Undercity,64.20,49.60
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Rhyker|r
    >>|cRXP_BUY_Kauft sechs|r |T134339:0|t[Verfärbtes Worgherz] |cRXP_BUY_vom Auktionshaus|r
    >>|cRXP_WARN_Überspringt dies, wenn ihr wollt, es spart nur wenig Zeit|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << skip --Orc Rogue/Troll Rogue
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Führt einen Logout-Skip im Magieviertel durch, indem ihr euren Charakter auf dem höchsten Teil der untersten Treppe positioniert, bis es aussieht, als würde er schweben, dann aus- und wieder einloggen|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_KLICKT HIER für ein Beispiel|r
    >>|cRXP_WARN_Falls ihr das nicht könnt, lauft einfach normal aus der Unterstadt|r
    .zoneskip Undercity,1
step
    #completewith next
    .zone Tirisfal Glades >>Verlasst Unterstadt
    .zoneskip Undercity,1
step
    #completewith DeliverytoSPF
    .goto Tirisfal Glades,61.52,53.20,80 >> Lauf nach Brill
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Coleman|r und |cRXP_FRIENDLY_Gretchen|r im Gasthaus
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_ist in der zweiten Etage|r
    .accept 354 >>Akzeptiert die Quest Todesfälle in der Familie
    .accept 362 >>Akzeptiert die Quest Die Spuk-Mühle
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .accept 375 >>Akzeptiert die Quest Die Kälte des Todes
    .target +Gretchen Dedmar
    .goto Tirisfal Glades,61.89,52.73
    .maxlevel 11 << !Warrior !Warlock
    .maxlevel 12 << Warlock
    .maxlevel 13 << Warrior
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
    .accept 1818 >> Akzeptiert die Quest Gespräch mit Dillinger
    .target Austil de Mon
    .isQuestAvailable 1498
step << Warlock
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ageron|r im Gasthaus
    .accept 1478 >> Akzeptiert die Quest Halgars Beschwörung
    .target Ageron Kargal
    .isQuestAvailable 1504
step << Undead Rogue
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marion|r im Gasthaus
    .accept 1885 >>Akzeptiert die Quest Mennet Carkad
    .target Marion Call
step << Mage
    .goto Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cain|r im Gasthaus
    .accept 1881 >> Akzeptiert die Quest Gespräch mit Anastasia
    .target Cain Firesong
step << !Mage
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirtin Renee|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch]|cRXP_BUY_ von ihr|r << Mage/Priest/Shaman
    >>|cRXP_BUY_Kauft|r |T134532:0|t[Rotgetupfter Pilz] |cRXP_BUY_von ihr|r <<Warrior/Rogue
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_und|r |T134532:0|t[Rotgetupfter Pilz] |cRXP_BUY_von ihr|r << Warlock
    .vendor >> Verkauft Müll
    .collect 1179,20,367,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,367,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,367,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,367,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target Innkeeper Renee
step
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mrs. Winters|r
    >>|cRXP_BUY_Kauft einen oder mehrere|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_von|r |cRXP_FRIENDLY_ihr|r
    .collect 4496,1,398,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step
    #season 0,1
    .goto Tirisfal Glades,60.59,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zygand|r
    .accept 427 >>Akzeptiert die Quest Im Krieg mit dem Scharlachroten Kreuzzug
    .target Executor Zygand
    .maxlevel 10 << !Warlock
    .maxlevel 11 << Warlock
step
    #season 2
    .goto Tirisfal Glades,60.59,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zygand|r
    .accept 427 >>Akzeptiert die Quest Im Krieg mit dem Scharlachroten Kreuzzug
    .target Executor Zygand
    .maxlevel 10 << !Warlock !Rogue
    .maxlevel 11 << Warlock
    .train 400095,1 << Rogue
step << Rogue
    #season 2
    #optional
    .goto Tirisfal Glades,60.59,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zygand|r
    .accept 427 >>Akzeptiert die Quest Im Krieg mit dem Scharlachroten Kreuzzug
    .target Executor Zygand
    .maxlevel 10
step
    #season 0,1
    .goto Tirisfal Glades,60.74,51.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gesucht Poster|r
    .accept 398 >>Akzeptiert die Quest GESUCHT: Madenauge
    .maxlevel 11 << !Warrior !Warlock
    .maxlevel 12 << Warlock
    .maxlevel 13 << Warrior
step
    #season 2
    .goto Tirisfal Glades,60.74,51.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gesucht Poster|r
    .accept 398 >>Akzeptiert die Quest GESUCHT: Madenauge
    .maxlevel 11 << !Warrior !Warlock !Rogue
    .maxlevel 12 << Warlock/Rogue
    .maxlevel 13 << Warrior
    .train 400095,1 << Rogue
step
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSpricht mit |cRXP_FRIENDLY_Sevren|r im Gebäude
    .accept 358 >>Akzeptiert die Quest Grabräuber
    .target Magistrate Sevren
    .maxlevel 10
step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Johaan|r
    .accept 445 >>Akzeptiert die Quest Lieferung in den Silberwald
    .accept 367 >>Akzeptiert die Quest Eine neue Seuche
    .target Apothecary Johaan
    .maxlevel 10 << !Warlock
    .maxlevel 11 << Warlock
step
    #label DeliverytoSPF
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Johaan|r
    .accept 445 >>Akzeptiert die Quest Lieferung in den Silberwald
    .target Apothecary Johaan
step
    .goto Tirisfal Glades,58.20,51.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dillinger|r
    .accept 404 >>Akzeptiert die Quest Eine eitrige Aufgabe
    .target Deathguard Dillinger
    .maxlevel 10 << !Warlock
    .maxlevel 11 << Warlock
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >> Gebt die Quest Gespräch mit Dillinger ab
    .accept 1819 >> Akzeptiert die Quest Ulag der Spalter
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_Klickt auf den|r |cRXP_WARN_Mausoleum Auslöser|r |cRXP_WARN_am Boden. Dies wird|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_beschwören. Tötet ihn|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
    .isQuestAvailable 1498
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >> Gebt die Quest Ulag der Spalter ab
    .accept 1820 >> Akzeptiert die Quest Gespräch mit Coleman
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step
    #optional
    #completewith Pumpkins
    >>Tötet alle |cRXP_ENEMY_Schattenhunde|r, die ihr seht. Plündert sie für ihre |cRXP_LOOT_Schattenhundblut|r.
    >>|cRXP_WARN_Ihr erhaltet|r |T133849:0|t[Schlummersand] |cRXP_WARN_von der Folgequest dieser Quest|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound
    .isOnQuest 367
step
    #optional
    #label Claws
    #loop
    .goto Tirisfal Glades,52.63,56.98,0
    .goto Tirisfal Glades,54.95,50.53,50,0
    .goto Tirisfal Glades,53.35,50.29,50,0
    .goto Tirisfal Glades,52.12,50.38,50,0
    .goto Tirisfal Glades,51.28,51.63,50,0
    .goto Tirisfal Glades,52.03,53.74,50,0
    .goto Tirisfal Glades,52.29,56.72,50,0
    .goto Tirisfal Glades,53.95,56.53,50,0
    .goto Tirisfal Glades,53.55,58.25,50,0
    .goto Tirisfal Glades,52.63,56.98,50,0
    >>Tötet |cRXP_ENEMY_Faulender Toter|r und |cRXP_ENEMY_Verheerter Kadaver|r. Plündert sie für |cRXP_LOOT_Eitrige Klaue|r
    .complete 404,1 --Putrid Claw (7)
    .mob Rotting Dead
    .mob Ravaged Corpse
    .isOnQuest 404
step
    #optional
    #completewith Pumpkins
    >>Tötet jeden |cRXP_ENEMY_Nachtsauger|r, den ihr seht. Sammelt ihre |cRXP_LOOT_Nachtsaugerpelze|r als Beute
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #label Pumpkins
    .goto Tirisfal Glades,40.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Simmer|r
    .accept 365 >>Akzeptiert die Quest Felder des Kummers
    .target Deathguard Simmer
    .maxlevel 10 << !Warlock
    .maxlevel 11 << Warlock
step << Rogue
    #season 2
    #optional
    .goto Tirisfal Glades,40.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Simmer|r
    .accept 365 >>Akzeptiert die Quest Felder des Kummers
    .target Deathguard Simmer
    .maxlevel 10
step << Mage
    #season 2
    #completewith next
    .goto Tirisfal Glades,36.72,50.94,0
    .goto Tirisfal Glades,34.78,51.24,0
    >>Wirkt |T136071:0|t[Verwandlung] auf |cRXP_ENEMY_Seltsame Melone|r
    >>Plündert die |T134332:0|t[|cRXP_LOOT_Apothekernotizen|r] vom Boden
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step
    #optional
    #loop
    .goto Tirisfal Glades,36.63,50.09,0
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09,50,0
    >>Plündert die |cRXP_LOOT_Kürbisse|r auf dem Feld
    .complete 365,1 --Tirisfal Pumpkin (10)
    .isOnQuest 365
step
    #optional
    #loop
    .goto Tirisfal Glades,31.78,51.36,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    .goto Tirisfal Glades,33.65,51.07,50,0
    .goto Tirisfal Glades,31.78,51.36,50,0
    .goto Tirisfal Glades,30.02,50.48,50,0
    .goto Tirisfal Glades,29.91,49.24,50,0
    .goto Tirisfal Glades,30.62,47.53,50,0
    .goto Tirisfal Glades,31.01,46.50,50,0
    .goto Tirisfal Glades,32.15,44.83,50,0
    .goto Tirisfal Glades,33.73,45.29,50,0
    .goto Tirisfal Glades,34.10,47.88,50,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    >>Tötet |cRXP_ENEMY_Scharlachroter Krieger|r.
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
    .isOnQuest 427
step
    #optional
    #completewith next
    >>Tötet jeden |cRXP_ENEMY_Nachtsauger|r, den ihr seht. Sammelt ihre |cRXP_LOOT_Nachtsaugerpelze|r als Beute
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #label Darkhounds1
    #loop
    .goto Tirisfal Glades,50.36,49.51,0
    .goto Tirisfal Glades,45.90,50.95,50,0
    .goto Tirisfal Glades,45.11,48.06,50,0
    .goto Tirisfal Glades,47.07,45.37,50,0
    .goto Tirisfal Glades,50.36,49.51,50,0
    >>Tötet alle |cRXP_ENEMY_Schattenhunde|r, die ihr seht. Plündert sie für ihre |cRXP_LOOT_Schattenhundblut|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound`
    .isOnQuest 367
step
    #optional
    #softcore
    #completewith ProofofDemiseTurnin
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .isQuestComplete 427
step
    #optional
    #hardcore
    #completewith ProofofDemiseTurnin
    .goto Tirisfal Glades,58.20,51.43,120 >> Reist zurück nach Brill
    .isQuestComplete 427
step
    #optional
    .goto Tirisfal Glades,58.20,51.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dillinger|r
    .turnin 404 >>Gebt die Quest Eine eitrige Aufgabe ab
    .accept 426 >>Akzeptiert die Quest Die überrannte Mühle
    .isQuestComplete 404
    .target Deathguard Dillinger
step
    #optional
    .goto Tirisfal Glades,58.20,51.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dillinger|r
    .accept 426 >>Akzeptiert die Quest Die überrannte Mühle
    .isQuestTurnedIn 404
    .target Deathguard Dillinger
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Johaan|r
    .turnin 367 >>Gebt die Quest Eine neue Seuche ab
    .accept 368 >>Akzeptiert die Quest Eine neue Seuche
    .isQuestComplete 367
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Johaan|r
    .accept 368 >>Akzeptiert die Quest Eine neue Seuche
    .isQuestTurnedIn 367
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Johaan|r
    .turnin 365 >> Gebt die Quest Felder des Kummers ab
    .accept 407 >> Akzeptiert die Quest Felder des Kummers
    .isQuestComplete 365
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Johaan|r
    .accept 407 >> Akzeptiert die Quest Felder des Kummers
    .isQuestTurnedIn 365
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zygand|r
    .turnin 427 >>Gebt die Quest Im Krieg mit dem Scharlachroten Kreuzzug ab
    .accept 370 >>Akzeptiert die Quest Im Krieg mit dem Scharlachroten Kreuzzug
    .target Executor Zygand
    .isQuestComplete 427
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zygand|r
    .accept 370 >>Akzeptiert die Quest Im Krieg mit dem Scharlachroten Kreuzzug
    .target Executor Zygand
    .isQuestTurnedIn 427
step
    #optional
    #label ProofofDemiseTurnin
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Burgess|r
    .accept 374 >>Akzeptiert die Quest Beweise des Ablebens
    .target Deathguard Burgess
    .isQuestTurnedIn 427
step << Warlock/Mage
    #completewith UCflightpath1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Betrete Unterstadt
    .zoneskip Undercity
step << Warlock/Mage
    #completewith UCflightpath1
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Nehmt den Aufzug hinab nach Unterstadt
step << Warlock/Mage
    #label UCflightpath1
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Erlernt die Flugroute Unterstadt
    .target Michael Garrett
step << Warlock/Mage
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Rhyker|r
    >>|cRXP_BUY_Kauft sechs|r |T134339:0|t[Verfärbtes Worgherz] |cRXP_BUY_vom Auktionshaus|r
    >>|cRXP_WARN_Überspringt dies, wenn ihr wollt, es spart nur wenig Zeit|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Carendin|r im Magierviertel
    .turnin 1478 >> Gebt die Quest Halgars Beschwörung ab
    .accept 1473 >> Akzeptiert die Quest Kreatur der Leere
    .isQuestAvailable 1504
step << Mage
    #optional
    .abandon 1883 >> Brecht die Quest ab, sprecht mit Un'thuwa; andernfalls könnt ihr die nächste Quest nicht annehmen
    .isOnQuest 1883
step << Mage
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Anastasia|r im Magierviertel
    .turnin 1881 >> Gebt die Quest Gespräch mit Anastasia ab
    .accept 1882 >> Akzeptiert die Quest Balnirs Bauernhof
    .target Anastasia Hartwell
step << Undead Priest
    #completewith TouchofWeakness
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Betrete Unterstadt
    .zoneskip Undercity
step << Undead Priest
    #completewith TouchofWeakness
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Nehmt den Aufzug hinab nach Unterstadt
step << Undead Priest
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Rhyker|r
    >>|cRXP_BUY_Kauft sechs|r |T134339:0|t[Verfärbtes Worgherz] |cRXP_BUY_vom Auktionshaus|r
    >>|cRXP_WARN_Überspringt dies, wenn ihr wollt, es spart nur wenig Zeit|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Undead Priest
    #optional
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5660 >> Gebt die Quest Berührung der Schwäche ab
    .target Aelthalyste
    .isOnQuest 5660
step << Undead Priest
    #label TouchofWeakness
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Aelthalyste|r
    .accept 5658 >> Akzeptiert die Quest Berührung der Schwäche
    .turnin 5658 >> Gebt die Quest Berührung der Schwäche ab
    .target Aelthalyste
step << Rogue
    #completewith Swordtraining2
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Betrete Unterstadt
    .zoneskip Undercity
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #completewith Swordtraining2
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Nehmt den Aufzug hinab nach Unterstadt
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .goto Undercity,63.25,48.56
    .fp Undercity >> Erlernt die Flugroute Unterstadt
    .target Michael Garrett
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Orc Rogue/Troll Rogue
    #ssf
    #optional
    #label RogueCutlass2
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Louis Warren|r im Handelsviertel
    >>|cRXP_BUY_Kauft einen|r |T135346:0|t[Entersäbel] |cRXP_BUY_von ihm|r
    .collect 851,1,354,1 --Collect Cutlass (1)
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Orc Rogue/Troll Rogue
    #ah
    #optional
    #label RogueCutlass2
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Louis Warren|r im Handelsviertel
    >>|cRXP_BUY_Kauft einen|r |T135346:0|t[Entersäbel] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 851,1,354,1 --Collect Cutlass (1)
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Undead Rogue
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mennet|r
    .turnin 1885 >>Gebt die Quest Mennet Carkad ab
    .accept 1886 >>Akzeptiert die Quest Die Todespirscher
    .target Mennet Carkad
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .zoneskip Undercity,1
step << Rogue
    #label Swordtraining2
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Archibald|r im Kriegsviertel
    .train 201 >>Erlernt 1h Schwerter
    .target Archibald
    .money <0.1
    .zoneskip Undercity,1
step << Rogue
    #optional
    #completewith KillDevlin
    +|cRXP_WARN_Rüstet aus:|r |T135346:0|t[Entersäbel]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Rhyker|r
    >>|cRXP_BUY_Kauft sechs|r |T134339:0|t[Verfärbtes Worgherz] |cRXP_BUY_vom Auktionshaus|r
    >>|cRXP_WARN_Überspringt dies, wenn ihr wollt, es spart nur wenig Zeit|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Warlock/Mage/Rogue
    #optional
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >> Verlasst die Unterstadt durch die Kanalisation
    .zoneskip Tirisfal Glades
step << Undead Priest
    #optional
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >> Verlasst die Unterstadt durch die Kanalisation
    .zoneskip Tirisfal Glades
step
    #optional
    #completewith ScarletCrusade1
    >>Sammelt |cRXP_LOOT_Scharlachroter Insignienring|r
    >>|cRXP_WARN_Ihr müsst diesen Schritt jetzt nicht abschließen|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .isOnQuest 374
step << Warlock
    #optional
    #completewith next
    .goto Tirisfal Glades,51.06,67.57
    >>Beute |cRXP_PICK_Perrines Truhe|r für |T133733:0|t[Egalins Zauberfoliant]
    .complete 1473,1 --Egalin's Grimoire (1)
    .isQuestAvailable 1504
step
    #optional
    #label ScarletCrusade1
    #loop
	.goto Tirisfal Glades,51.03,69.55,0
	.goto Tirisfal Glades,50.07,68.87,40,0
	.goto Tirisfal Glades,50.23,66.94,40,0
	.goto Tirisfal Glades,51.16,65.73,40,0
	.goto Tirisfal Glades,51.75,66.04,40,0
	.goto Tirisfal Glades,52.93,67.62,40,0
	.goto Tirisfal Glades,52.72,69.33,40,0
	.goto Tirisfal Glades,51.96,69.57,40,0
	.goto Tirisfal Glades,51.03,69.55,40,0
    >>Tötet |cRXP_ENEMY_Captain Perrine|r, |cRXP_ENEMY_Zeloten|r und |cRXP_ENEMY_Missionaries|r.
    .complete 370,1 --Captain Perrine (1)
    .mob +Captain Perrine
    .complete 370,2 --Scarlet Zealot (3)
    .mob +Scarlet Zealot
    .complete 370,3 --Scarlet Missionary (3)
    .mob +Scarlet Missionary
    .isOnQuest 370
step << Warlock
    .goto Tirisfal Glades,51.06,67.57
    >>Beute |cRXP_PICK_Perrine's Truhe|r auf dem Boden für |T133733:0|t[Egalins Zauberfoliant]
    .complete 1473,1 --Egalin's Grimoire (1)
    .isQuestAvailable 1504
step << Warlock
    #completewith next
    .goto Undercity,16.51,42.76,35,0
    .goto Undercity,22.98,39.76,35,0
    .goto Undercity,24.93,32.54,35,0
    .goto Undercity,34.78,33.24,10,0
    .goto Undercity,40.83,34.08,10,0
    .goto Undercity,41.35,38.40,10,0
    .goto Undercity,45.25,39.20,10,0
    .goto Undercity,45.67,43.60,10,0
    .zone Undercity >> Reist zurück nach Unterstadt durch die Kanalisation
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Carendin|r im Magierviertel
    .turnin 1473 >> Gebt die Quest Kreatur der Leere ab
    .accept 1471 >> Die Bindung annehmen
    .target Carendin Halgar
    .isQuestAvailable 1504
step << Warlock
    #completewith next
    .goto Undercity,86.64,27.10
    .cast 9221 >>|cRXP_WARN_Benutzt die|r |T134416:0|t[Runen der Beschwörung] |cRXP_WARN_am Beschwörungskreis|r
    .use 6284
step << Warlock
    .goto Undercity,86.64,27.10
    >>Tötet den |cRXP_ENEMY_Beschworenen Leerwandler|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
    .isQuestAvailable 1504
step << Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Carendin|r
    .turnin 1471 >>Gebt die Quest Die Bindung ab
    .target Carendin Halgar
    .isQuestAvailable 1504
step << skip --Warlock
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Führt einen Logout-Skip durch: Positioniert den Character von Euch auf der höchsten Stelle der niedrigsten Treppenstufe, bis er zu schweben scheint. Meldet euch dann ab und wieder an|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_KLICKT HIER für ein Beispiel|r
    >>|cRXP_WARN_Falls ihr das nicht könnt, lauft einfach normal aus der Unterstadt|r
    .zoneskip Undercity,1
step << Warlock
    #completewith next
    .goto Tirisfal Glades,61.92,64.85,50,0
    .zone Tirisfal Glades >> Verlasst Unterstadt
    .zoneskip Tirisfal Glades
step
    #optional
    #completewith next
    >>Tötet jeden |cRXP_ENEMY_Nachtsauger|r, den ihr seht. Sammelt ihre |cRXP_LOOT_Nachtsaugerpelz|r als Beute
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    .goto Tirisfal Glades,47.60,44.03,150 >> Reist Nord-westlich zu Agamands Mühlen
    .isOnQuest 362
step
    #optional
    #completewith ThurmanGregor
    >>|T134939:0|t[|cRXP_LOOT_Thurman's Brief|r] |cRXP_WARN_kann von diesen Mobs fallen. Akzeptiert die Quest, wenn ihr sie plündert.|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Akzeptiert die Quest Ein nie zugestellter Brief
    .use 2839
step
    #completewith ThurmanGregor
    >>Tötet |cRXP_ENEMY_Soldaten|r und |cRXP_ENEMY_Skelettmagier|r. Plündert sie für |cRXP_LOOT_Schartige Rippe|r und |cRXP_LOOT_Geschwärzter Schädel|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
    .isOnQuest 426
step
    #optional
    #label KillDevlin
    .goto Tirisfal Glades,47.34,40.78
    >>Tötet |cRXP_ENEMY_Devlin|r. Plündert ihn für |cRXP_LOOT_Devlins sterbliche Überreste|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
    .isOnQuest 362
step
    #optional
    .goto Tirisfal Glades,49.34,36.02
    >>Tötet |cRXP_ENEMY_Nissa|r. Plündert sie für |cRXP_LOOT_Nissas sterbliche Überreste|r. Sie kann sich im Gebäude befinden
    .complete 354,2 --Nissa's Remains (1)
    .mob Nissa Agamand
    .isOnQuest 354
step
    #optional
    #label ThurmanGregor
    #loop
    .goto Tirisfal Glades,45.08,31.15,0
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15,60,0
    >>Tötet |cRXP_ENEMY_Thurman|r und |cRXP_ENEMY_Gregor|r. Plündert sie für ihre |cRXP_LOOT_überreste|r. Sie können umher patroullieren
    .complete 354,3 --Thurman's Remains (1)
    .unitscan +Thurman Agamand
    .complete 354,1 --Gregor's Remains (1)
    .unitscan +Gregor Agamand
    .isOnQuest 354
step
    #loop
    #label MillsOverun
    .goto Tirisfal Glades,45.08,31.15,0
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15,60,0
    >>Tötet |cRXP_ENEMY_Soldaten|r und |cRXP_ENEMY_Skelettmagier|r. Plündert sie für |cRXP_LOOT_Schartige Rippe|r und |cRXP_LOOT_Geschwärzter Schädel|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
    .isOnQuest 426
step
    #requires MillsOverun
    #optional
    #completewith MaggotEye
    .goto Tirisfal Glades,54.32,31.56,15,0
    .goto Tirisfal Glades,54.78,32.75,15,0
    .goto Tirisfal Glades,55.84,32.28,15,0
    .goto Tirisfal Glades,56.55,32.43,40,0
    .goto Tirisfal Glades,57.77,31.69,50 >> Reist die Hügel hinab.
    >>|cRXP_WARN_Passt auf. Nehmt nicht zu viel Fallschaden. Folgt dem Wegpunkt zur Sicherheit|r
    .isQuestComplete 354
step
    #optional
    #requires MillsOverun
    #completewith next
    >>Tötet |cRXP_ENEMY_Gnolle|r und |cRXP_ENEMY_Moderfelle|r. Plündert sie für |cRXP_LOOT_Einbalsamierungssekret|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Gnoll
    .mob Rot Hide Mongrel
    .isOnQuest 358
step
    #optional
    #requires MillsOverun
    #label MaggotEye
    .goto Tirisfal Glades,58.66,30.77
    >>Tötet |cRXP_ENEMY_Madenauge|r. Plündert ihn für seine |cRXP_LOOT_Tatze|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
step
    #optional
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
    .goto Tirisfal Glades,59.54,27.86,50,0
    >>Tötet |cRXP_ENEMY_Murlocs|r. Plündert sie für ihre |cRXP_LOOT_Schuppen|r
    .complete 368,1 --Vile Fin Scale (5)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .isOnQuest 368
step
    #optional
    #completewith RotHideGnolls
    >>Tötet jeden |cRXP_ENEMY_Nachtsauger|r, den ihr seht. Sammelt ihre |cRXP_LOOT_Nachtsaugerpelze|r als Beute
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step << Mage
    #season 2
    #optional
    #completewith RotHideGnolls
    .goto Tirisfal Glades,59.84,33.17,0
    .goto Tirisfal Glades,58.38,35.28,0
    .goto Tirisfal Glades,60.09,37.01,0
    >>Wirkt |T136071:0|t[Verwandlung] auf |cRXP_ENEMY_Seltsame Melone|r
    >>Plündert die |T134332:0|t[|cRXP_LOOT_Apothekernotizen|r] vom Boden
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step
    #optional
    #label RotHideGnolls
    #loop
    .goto Tirisfal Glades,55.24,42.54,0
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    >>Tötet |cRXP_ENEMY_Bastarde|r und |cRXP_ENEMY_Grabräuber|r. Plündert sie für |cRXP_LOOT_Einbalsamierungssekret|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,1 --Rot Hide Graverobber (8)
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .isOnQuest 358
step
    #optional
    #softcore
    #completewith MillsTurnin
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step
    #optional
    #hardcore
    #completewith MillsTurnin
    .subzone 159 >> Lauf nach Brill
step
    #optional
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dillinger|r
    .turnin 426 >>Gebt die Quest Überrannte Mühle ab
    .target Deathguard Dillinger
    .isQuestComplete 426
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Johaan|r
    .turnin 368 >>Gebt die Quest Eine neue Seuche ab
    .accept 369 >>Akzeptiert die Quest Eine neue Seuche
    .target Apothecary Johaan
    .isQuestComplete 368
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Johaan|r
    .accept 369 >>Akzeptiert die Quest Eine neue Seuche
    .target Apothecary Johaan
    .isQuestTurnedIn 368
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zygand|r
    .turnin 398 >>Gebt die Quest GESUCHT: Madenauge ab
    .turnin 370 >>Gebt die Quest Im Krieg mit dem Scharlachroten Kreuzzug ab
    .accept 371 >>Akzeptiert die Quest Im Krieg mit dem Scharlachroten Kreuzzug
    .target Executor Zygand
    .isQuestComplete 370
step << Rogue
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    .use 208085 >>Benutzt das |T133385:0|t[|cRXP_LOOT_Signet des Scharlachroten Leutnants|r] um |T134328:0|t[|cRXP_LOOT_Gefälschtes scharlachrotes Memorandum|r] zu erstellen
    .collect 208086,1 --Forged Scarlet Memorandum (1)
    .train 400094,1
step << Rogue
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jamie Nore|r um |T134419:0|t[|cRXP_FRIENDLY_Rune der Verstümmelung|r] zu erhalten
    .collect 203990,1 --Rune of Mutilation (1)
    .target Jamie Nore
    .skipgossip
    .train 400094,1
step << Rogue
    #season 2
    .train 400094 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Verstümmelung|r] |cRXP_WARN_zum lernen von|r |T132304:0|t[Verstümmeln]
    .use 203990
    .itemcount 203990,1
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zygand|r
    .turnin 398 >>Gebt die Quest GESUCHT: Madenauge ab
    .accept 371 >>Akzeptiert die Quest Im Krieg mit dem Scharlachroten Kreuzzug
    .target Executor Zygand
    .isQuestTurnedIn 370
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zygand|r
    .turnin 398 >>Gebt die Quest GESUCHT: Madenauge ab
    .target Executor Zygand
    .isQuestComplete 398
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sevren|r
    .turnin 358 >>Gebt die Quest Grabräuber ab
    .accept 359 >>Akzeptiert die Quest Verlassenen-Pflichten
    .target Magistrate Sevren
    .isQuestComplete 358
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sevren|r
    .accept 359 >>Akzeptiert die Quest Verlassenen-Pflichten
    .target Magistrate Sevren
    .isQuestTurnedIn 358
step
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Kauft einen|r |T132891:0|t[Grober Faden] |cRXP_BUY_von|r |cRXP_FRIENDLY_ihr|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5
    .isOnQuest 375
step
    #optional
    .goto Tirisfal Glades,61.58,52.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yvette|r
    .turnin 361 >>Gebt die Quest Ein nie zugestellter Brief ab
    .target Yvette Farthing
    .isOnQuest 361
step
    #optional
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Coleman|r
    .turnin 354 >>Gebt die Quest Todesfälle in der Familie ab
    .turnin 362 >>Gebt die Quest Die Spuk-Mühle ab
    .accept 355 >>Akzeptiert die Quest Gespräch mit Sevren
    .target Coleman Farthing
    .isQuestComplete 354
step
    #optional
    #label MillsTurnin
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Coleman|r
    .turnin 354 >>Gebt die Quest Todesfälle in der Familie ab
    .turnin 362 >>Gebt die Quest Die Spuk-Mühle ab
    .accept 355 >>Akzeptiert die Quest Gespräch mit Sevren
    .target Coleman Farthing
    .isQuestComplete 362
step
    #optional
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Coleman|r
    .accept 355 >>Akzeptiert die Quest Gespräch mit Sevren
    .target Coleman Farthing
    .isQuestTurnedIn 354
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Coleman|r
    .turnin 1820 >>Gebt die Quest Gespräch mit Coleman ab << Warrior
    .accept 1821 >>Akzeptiert die Quest Agamand-Erbstücke << Warrior
    .accept 355 >>Akzeptiert die Quest Gespräch mit Sevren
    .target Coleman Farthing
    .isQuestTurnedIn 1819
step
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gretchen|r im zweiten Stock des Gasthauses
    .turnin 375 >>Gebt die Quest Die Kälte des Todes ab
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Beryl|r auf der zweiten Etage
	.train 588 >>Erlernt |T135926:0|t[Inneres Feuer]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cain|r auf der zweiten Etage
    .train 145 >> Erlernt |T135812:0|t[Feuerball Rang 3]
    .target Cain Firesong
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Erlernt |T132223:0|t[Überwältigen]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marion|r auf der zweiten Etage
    .train 1766 >> Erlernen |T132219:0|t[Tritt]
    .target Marion Call
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rupert|r
    .train 755 >> Erlernt |T136168:0|t[Lebenslinie]
    .target Rupert Boch
    .xp <12,1
step << !Mage
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirtin Renee|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch]|cRXP_BUY_ von ihr|r << Mage/Priest/Shaman
    >>|cRXP_BUY_Kauft|r |T134532:0|t[Rotgetupfter Pilz] |cRXP_BUY_von ihr|r <<Warrior/Rogue
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_und|r |T134532:0|t[Rotgetupfter Pilz] |cRXP_BUY_von ihr|r << Warlock/Hunter
    .vendor >> Verkauft Müll
    .collect 1179,20,359,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,359,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,359,1 << Warlock/Hunter --Ice Cold Milk (15)
    .collect 4605,15,359,1 << Warlock/Hunter --Red-speckled Mushroom (15)
    .money <0.050 << !Warlock !Hunter
    .money <0.075 << Warlock/Hunter
    .target Innkeeper Renee
step
    #optional
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Linnea|r
    .turnin 359 >>Gebt die Quest Verlassenen-Pflichten ab
    .accept 360 >>Akzeptiert die Quest Rückkehr zum Magistrat
    .accept 356 >>Akzeptiert die Quest Patrouille zur Rückendeckung
    .target Deathguard Linnea
    .isQuestTurnedIn 358
    .maxlevel 13 << !Warrior !Warlock !Mage
step
    #optional
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Linnea|r
    .accept 356 >>Akzeptiert die Quest Patrouille zur Rückendeckung
    .target Deathguard Linnea
    .maxlevel 13 << !Warrior !Warlock !Mage
step
    #optional
    #completewith HorrorsandSpirits
    >>Tötet jeden |cRXP_ENEMY_Nachtsauger|r, den ihr seht. Sammelt ihre |cRXP_LOOT_Nachtsaugerpelz|r als Beute
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step << Mage
    #optional
    #completewith next
    >>Tötet |cRXP_ENEMY_Blutender Schrecken|r und |cRXP_ENEMY_Wandernder Geist|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
    .isOnQuest 356
step << Mage
    #season 2
    #completewith HorrorsandSpirits
    >>Wirkt |T136071:0|t[Verwandlung] auf |cRXP_ENEMY_Seltsame Melone|r
    >>Plündert die |T134332:0|t[|cRXP_LOOT_Apothekernotizen|r] vom Boden
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << Mage
    .goto Tirisfal Glades,77.48,62.00
    >>Plündert eine der Pflanzen am Boden für einen |cRXP_PICK_Balnirlöwenmäulchen|r
    .complete 1882,1 --Balnir Snapdragons (1)
step
    #optional
    #label HorrorsandSpirits
    #loop
	.goto Tirisfal Glades,74.31,60.98,0
	.goto Tirisfal Glades,74.31,60.98,50,0
	.goto Tirisfal Glades,74.45,59.64,50,0
	.goto Tirisfal Glades,75.08,58.56,50,0
	.goto Tirisfal Glades,76.45,58.67,50,0
	.goto Tirisfal Glades,77.41,58.66,50,0
	.goto Tirisfal Glades,78.55,60.43,50,0
	.goto Tirisfal Glades,77.45,61.46,50,0
	.goto Tirisfal Glades,76.79,62.60,50,0
	.goto Tirisfal Glades,74.99,61.98,50,0
    >>Tötet |cRXP_ENEMY_Blutender Schrecken|r und |cRXP_ENEMY_Wandernder Geist|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
    .isOnQuest 356
step << Mage
    #season 2
    #loop
    .goto Tirisfal Glades,76.51,61.77,0
    .goto Tirisfal Glades,75.12,61.49,20,0
    .goto Tirisfal Glades,76.51,61.77,20,0
    .goto Tirisfal Glades,76.04,59.31,20,0
    >>Wirkt |T136071:0|t[Verwandlung] auf |cRXP_ENEMY_Seltsame Melone|r
    >>Plündert die |T134332:0|t[|cRXP_LOOT_Apothekernotizen|r] vom Boden
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << Mage
    #season 2
    >>Benutzt die |T134332:0|t|cRXP_LOOT_[Apothekernotizen]|r um |T134332:0|t|cRXP_LOOT_[Zaubernotizen: Erleuchtung]|r herzustellen
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 208183 --Apothecary Notes
    .train 415942,1
    .itemcount 208183,6
step << Mage
    #season 2
    .train 415942 >>|cRXP_WARN_Benutzt die|r |T134332:0|t|cRXP_LOOT_[Zaubernotizen: Erleuchtung]|r |cRXP_WARN_um|r |T133815:0|t[Brustteil prägen - Erleuchtung] zu lernen
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
step << Priest
    #optional
    #completewith Scarletrings
    >>|cRXP_WARN_Sammelt 3 Stapel|r |T132889:0|t[Leinenstoff] |cRXP_WARN_für euren Geringen Magiezauberstab. Dies ist die letzte Chance, genug davon zu bekommen, bevor ihr den Silberwald erreicht|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .mob Scarlet Friar
    .mob Scarlet Zealot
step
    #optional
    #completewith next
    >>Sammelt |cRXP_LOOT_Scharlachroter Insignienring|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .isOnQuest 374
step
    #optional
    #loop
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,78.82,56.14,20,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>Tötet |cRXP_ENEMY_Captain Vachon|r und |cRXP_ENEMY_Scharlachrotes Ordensmitglied|r
    >>|cRXP_WARN_Seid Vorsichtig!|r |cRXP_ENEMY_Scharlachrotes Ordensmitglied|r |cRXP_WARN_kann|r |T135929:0|t[Geringes Heilen] wirken
    .complete 371,1 --Captain Vachon (1)
    .mob +Captain Vachon
    .complete 371,2 --Scarlet Friar (5)
    .mob +Scarlet Friar
    .isOnQuest 371
step
    #optional
    #label ScarletRings
    #loop
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>Sammelt |cRXP_LOOT_Scharlachroter Insignienring|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 374
step << Priest
    #loop
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>|cRXP_WARN_Sammelt 3 Stapel|r |T132889:0|t[Leinenstoff] |cRXP_WARN_für euren Geringen Magiezauberstab. Dies ist die letzte Chance, genug davon zu bekommen, bevor ihr den Silberwald erreicht|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .mob Scarlet Friar
    .mob Scarlet Zealot
step
    #optional
    #completewith next
    >>Tötet jeden |cRXP_ENEMY_Nachtsauger|r, den ihr seht. Sammelt ihre |cRXP_LOOT_Nachtsaugerpelz|r als Beute
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #loop
    .goto Tirisfal Glades,85.03,54.72,0
    .goto Tirisfal Glades,83.50,55.56,30,0
    .goto Tirisfal Glades,85.03,54.72,30,0
    .goto Tirisfal Glades,86.56,54.51,30,0
    .goto Tirisfal Glades,88.06,54.99,30,0
    .goto Tirisfal Glades,88.94,53.56,30,0
    .goto Tirisfal Glades,89.70,51.88,30,0
    .goto Tirisfal Glades,90.92,50.56,30,0
    .goto Tirisfal Glades,90.87,48.33,30,0
    .goto Tirisfal Glades,89.87,46.65,30,0
    .goto Tirisfal Glades,85.04,46.68,30,0
    .goto Tirisfal Glades,84.52,49.29,30,0
    .goto Tirisfal Glades,83.46,52.09,30,0
    >>Tötet |cRXP_ENEMY_Heimtückischer Nachtweber|r. Plündert sie für |cRXP_LOOT_Heimtückisches Nachtweberspinnengift|r
    .complete 369,1 --Vicious Night Web Spider Venom (4)
    .mob Vicious Night Web Spider
    .isOnQuest 369
step
    #optional
    #completewith LinneaTurnin
    .goto Tirisfal Glades,65.49,60.25,60 >> Reist zurück zu |cRXP_FRIENDLY_Linnea|r
step
    #optional
    #completewith next
    >>Beenden das töten von |cRXP_ENEMY_Nachtsauger|r. Plündert sie für |cRXP_LOOT_Pelze|r
    >>|cRXP_WARN_Ihr könnt diese Quest überspringen, wenn RNG von Euch schlecht gewesen ist|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #label LinneaTurnin
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Linnea|r
    .turnin 356 >>Gebt die Quest Patrouille zur Rückendeckung ab
    .target Deathguard Linnea
    .isQuestComplete 356
step
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Kauft einen|r |T132891:0|t[Grober Faden] |cRXP_BUY_von|r |cRXP_FRIENDLY_ihr|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5
    .isOnQuest 375
step
    #optional
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Burgess|r
    .turnin 374 >>Gebt die Quest Todesbeweise ab
    .target Deathguard Burgess
    .isQuestComplete 374
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zygand|r
    .turnin 371 >>Gebt die Quest Im Krieg mit dem Scharlachroten Kreuzzug ab
    .target Executor Zygand
    .isQuestComplete 371
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sevren|r
    .turnin 360 >>Gebt die Quest Rückkehr zum Magistrat ab
    .target Magistrate Sevren
    .isQuestTurnedIn 359
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sevren|r
    .turnin 355 >>Gebt die Quest Sprecht mit Sevren ab
    .target Magistrate Sevren
    .isQuestTurnedIn 354
step << Warrior
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sevren|r
    .turnin 355 >>Gebt die Quest Gespräch mit Sevren ab
    .accept 408 >>Akzeptiert die Quest Die Familiengruft
    .target Magistrate Sevren
    .isQuestTurnedIn 354
step
    #optional
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Johaan|r
    .turnin 369 >>Gebt die Quest Eine neue Seuche ab
    .accept 492 >>Akzeptiert die Quest Eine neue Seuche
    .accept 445 >>Akzeptiert die Quest Lieferung in den Silberwald
    .target Apothecary Johaan
    .isQuestTurnedIn 368
step
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Johaan|r
    .accept 445 >>Akzeptiert die Quest Lieferung in den Silberwald
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gretchen|r oben
    .turnin 375 >>Gebt die Quest Die Kälte des Todes ab
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Beryl|r auf der zweiten Etage
	.train 588,1 >>Erlernt |T135926:0|t[Inneres Feuer]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cain|r auf der zweiten Etage
    .train 145,1 >> Erlernt |T135812:0|t[Feuerball Rang 3]
    .target Cain Firesong
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Austil|r
    .train 7384,1 >>Erlernt |T132223:0|t[Überwältigen]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marion|r auf der zweiten Etage
    .train 1766,1 >> Erlernt |T132219:0|t[Tritt]
    .target Marion Call
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rupert|r
    .train 755,1 >> Erlernt |T136168:0|t[Lebenslinie]
    .target Rupert Boch
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,47.39,43.64,150,0
    .goto Tirisfal Glades,52.23,26.91,20,0
    .goto Tirisfal Glades,52.29,26.40,8 >> Reist zur Krypta in Agamands Mühlen
    .isOnQuest 1821
step << Warrior
    #completewith CaptainDargol
    >>Sammelt die |cRXP_PICK_Agamand-Waffenregale|r vom Boden
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
step << Warrior
    #completewith next
    >>Tötet |cRXP_ENEMY_Klagende Vorfahrin|r und |cRXP_ENEMY_Faulender Vorfahr|r
    >>|cRXP_WARN_Passt auf! Die Gegner in dieser Krypta spawnen dynamisch nach!|r
    .complete 408,1 --Wailing Ancestor (8)
    .mob +Wailing Ancestor
    .complete 408,2 --Rotting Ancestor (8)
    .mob +Rotting Ancestor
    .isOnQuest 408
step << Warrior
    #label CaptainDargol
    .goto Tirisfal Glades,52.53,26.78,8,0
    .goto Tirisfal Glades,52.08,26.81,8,0
    .goto Tirisfal Glades,52.03,26.43,8,0
    .goto Tirisfal Glades,52.81,26.36
    >>Tötet |cRXP_ENEMY_Captain Dargol|r. plündert ihn für seinen |cRXP_LOOT_Schädel|r. Er ist am Boden der Krypta
    .complete 408,3 --Dargol's Skull (1)
    .mob Captain Dargol
    .isOnQuest 408
step << Warrior
    #completewith next
    >>Sammelt die |cRXP_PICK_Agamand-Waffenregale|r vom Boden
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
step << Warrior
    #loop
	.goto Tirisfal Glades,51.90,26.87,0
	.goto Tirisfal Glades,51.88,25.86,15,0
	.goto Tirisfal Glades,52.61,25.85,15,0
	.goto Tirisfal Glades,52.60,26.88,15,0
	.goto Tirisfal Glades,51.90,26.87,15,0
    >>Tötet |cRXP_ENEMY_Klagende Vorfahrin|r und |cRXP_ENEMY_Faulender Vorfahr|r
    >>|cRXP_WARN_Passt auf! Die Gegner in dieser Krypta spawnen dynamisch nach!|r
    .complete 408,1 --Wailing Ancestor (8)
    .mob +Wailing Ancestor
    .complete 408,2 --Rotting Ancestor (8)
    .mob +Rotting Ancestor
    .isOnQuest 408
step << Warrior
    #loop
    .goto Tirisfal Glades,52.66,25.87,0
    .goto Tirisfal Glades,51.70,25.69,12,0
    .goto Tirisfal Glades,52.62,25.62,12,0
    .goto Tirisfal Glades,52.65,27.02,12,0
    .goto Tirisfal Glades,51.89,27.10,12,0
    .goto Tirisfal Glades,52.66,25.87,12,0
    >>Sammelt die |cRXP_PICK_Agamand-Waffenregale|r vom Boden
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
step << skip --Warrior
    .goto Tirisfal Glades,51.68,25.67
    .goto Tirisfal Glades,56.24,49.42,30 >>|cRXP_WARN_Springt auf einen der Waffenständer. Führt einen Logout-Skip durch, indem ihr euch ausloggt und wieder einloggt|r
    .link https://www.youtube.com/watch?v=bH_NYmWf8Lc&ab >> |cRXP_WARN_Klickt hier für ein Beispiel|r
    .isQuestComplete 408
step << Warrior
    #softcore
    #completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
step << Warrior
    #hardcore
    #completewith next
    .subzone 159 >>Lauf nach Brill
step << Warrior
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sevren|r
    .turnin 408 >>Gebt die Quest Die Familiengruft ab
    .target Magistrate Sevren
    .isQuestComplete 408
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Coleman|r im Gasthaus
    .turnin 1821 >>Gebt die Quest Agamand-Erbstücke ab
    .target Coleman Farthing
    .isQuestComplete 1821
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Coleman|r im Gasthaus
    .turnin 1822 >>Erbstück Waffe
    .target Coleman Farthing
    .isQuestTurnedIn 1821
step
    #optional
    .goto Tirisfal Glades,61.97,51.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gefangener Scharlachroter Zelot|r unten im hinteren Teil des Gasthauses
    .turnin 407 >>Gebt die Quest Felder des Kummers ab
    .target Captured Scarlet Zealot
    .isQuestTurnedIn 365
step
    #optional
    .goto Tirisfal Glades,61.94,51.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Gefangenen Gebirgsjäger|r unten im hinteren Bereich des Gasthauses
    .turnin 492 >> Gebt die Quest Eine neue Seuche ab
    .target Captured Mountaineer
    .isOnQuest 492
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Beryl|r auf der zweiten Etage
	.train 588,1 >>Erlernt |T135926:0|t[Inneres Feuer]
    .target Dark Cleric Beryl
    .xp <12,1
    .xp >14,1
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Beryl|r auf der zweiten Etage
	.train 6074 >> Trainiere deine Klassenfähigkeiten
    .target Dark Cleric Beryl
    .xp <14,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cain|r auf der zweiten Etage
    .train 145,1 >> Erlernt |T135812:0|t[Feuerball Rang 3]
    .target Cain Firesong
    .xp <12,1
    .xp >14,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cain|r auf der zweiten Etage
    .train 2137 >> Trainiere deine Klassenfähigkeiten
    .target Cain Firesong
    .xp <14,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Austil|r
    .train 7384,1 >>Erlernt |T132223:0|t[Überwältigen]
    .target Austil de Mon
    .xp <12,1
    .xp >14,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Austil|r
    .train 1160 >> Trainiere deine Klassenfähigkeiten
    .target Austil de Mon
    .xp <14,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marion|r auf der zweiten Etage
    .train 1766,1 >> Erlernt |T132219:0|t[Tritt]
    .target Marion Call
    .xp <12,1
    .xp >14,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marion|r auf der zweiten Etage
    .train 1758 >> Trainiere deine Klassenfähigkeiten
    .target Marion Call
    .xp <14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rupert|r
    .train 755,1 >> Erlernt |T136168:0|t[Lebenslinie]
    .target Rupert Boch
    .xp <12,1
    .xp >14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rupert|r
    .train 6222 >> Trainiere deine Klassenfähigkeiten
    .target Rupert Boch
    .xp <14,1
step << Mage
    #completewith next
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Betrete Unterstadt
    .zoneskip Undercity
step << Mage
    #completewith next
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Nehmt den Aufzug hinab nach Unterstadt
step << Mage
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Anastasia|r im Magierviertel
    .turnin 1882 >>Gebt die Quest Balnirs Bauernhof ab
    .target Anastasia Hartwell
step << Rogue
    #completewith Swordtraining3
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Betrete Unterstadt
    .zoneskip Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #completewith Swordtraining3
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Nehmt den Aufzug hinab nach Unterstadt
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Rogue !Mage
    #completewith UCflightpath3
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Betrete Unterstadt
    .zoneskip Undercity
step << !Rogue !Mage
    #completewith UCflightpath3
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Nehmt den Aufzug hinab nach Unterstadt
step << !Undead
    #label UCflightpath3
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Erlernt die Flugroute Unterstadt
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn ihr bereits die Flugroute erlernt habt!|r
    .target Michael Garrett
step << Orc Rogue/Troll Rogue
    #ssf
    #optional
    #label RogueCutlass3
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Louis Warren|r im Handelsviertel
    >>|cRXP_BUY_Kauft einen|r |T135346:0|t[Entersäbel] |cRXP_BUY_von ihm|r
    .collect 851,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Orc Rogue/Troll Rogue
    #ah
    #optional
    #label RogueCutlass3
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Louis Warren|r im Handelsviertel
    >>|cRXP_BUY_Kauft einen|r |T135346:0|t[Entersäbel] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 851,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Undead Rogue
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mennet|r
    .turnin 1885 >>Gebt die Quest Mennet Carkad ab
    .accept 1886 >>Akzeptiert die Quest Die Todespirscher
    .target Mennet Carkad
    .isOnQuest 1885
step << Rogue
    #label Swordtraining3
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Archibald|r im Kriegsviertel
    .train 201 >>Erlernt 1h Schwerter
    .target Archibald
    .money <0.1
step << Rogue
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Rüstet aus:|r |T135346:0|t[Entersäbel]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 201,1
step << Undead Warrior
    #completewith Entersilverpine
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Betrete Unterstadt
    .zoneskip Undercity
    .money <0.3022
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Undead Warrior
    #completewith Entersilverpine
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Nehmt den Aufzug hinab nach Unterstadt
    .money <0.3022
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    .goto Undercity,58.82,32.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Benijah|r|cRXP_BUY_. Kauft ein|r |T135154:0|t[Hirtenstab] |cRXP_BUY_von ihm|r
    .collect 854,1,435,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Benijah Fenner
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    #optional
    #completewith Entersilverpine
    +Rüstet |T135154:0|tden|cRXP_WARN_ [Hirtenstab]|r aus
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
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
step << Priest
    .goto Undercity,62.47,61.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lavinia|r
    .train 7411 >> Erlernt |T136244:0|t[Verzauberkunst]
    .target Lavinia Crowe
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,70.77,30.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Josef|r
    .train 3908 >> Erlernt |T136249:0|t[Schneiderei]
    .target Josef Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,70.76,30.67
    >>|cRXP_WARN_Verarbeitet all euren|r |T132889:0|t[Leinenstoff] |cRXP_WARN_in|r |T132890:0|t[Leinenstoffballen]
    .collect 2996,30,435,1 --Bolt of Linen Cloth (30)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,70.76,30.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Josef|r
    .train 7623 >> Erlernt |T132662:0|t[Braune Leinenrobe]
    .target Josef Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,70.57,30.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Millie|r
    >>|cRXP_BUY_Kauft|r |T132891:0|t[Grober Faden] |cRXP_BUY_von ihr|r
    .collect 2320,30,435,1 --Coarse Thread (30)
    .target Millie Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    >>|cRXP_WARN_Stellt so viele|r |T132662:0|t[Braune Leinenrobe] |cRXP_WARN_wie ihr könnt|r her
    .collect 6238,9,398,1 --Brown Linen Robe(9)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,62.35,60.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Thaddeus|r|cRXP_BUY_. Kauft|r |T133942:0|t[Kupferrute] |cRXP_BUY_und|r |T135435:0|t[Einfaches Holz] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Entzaubert alle|r |T132662:0|t[Braune Leinenrobe] |cRXP_WARN_die ihr gemacht habt und erstellt eine|r |T135225:0|t[Runenverzierte Kupferrute]
    >>|cRXP_WARN_Falls ihr|r |T132867:0|t[Geringe Magieessenz] nicht bekommen habt |cRXP_WARN_dann kauft eine bei|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_wenn eine verfügbar ist. Sonst beendet diesen Schritt später|r
    .collect 6218,1,435,1 --Runed Copper Rod (1)
    .collect 4470,1,435,1 --Simple Wood (1)
    .target Thaddeus Webb
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,62.54,60.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malcomb|r
    .train 14293 >> Erlernt |T135139:0|t[Geringer Magiezauberstab]
    .target Malcomb Wynn
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    >>|cRXP_WARN_Stellt einen |r |T135139:0|t[Geringer Magiezauberstab] her
    >>|cRXP_WARN_Falls ihr|r |T132867:0|t[Geringe Magieessenz] nicht bekommen habt |cRXP_WARN_dann kauft eine bei|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_wenn eine verfügbar ist. Sonst beendet diesen Schritt später|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    #completewith Entersilverpine
    +Legt |T135139:0|t[Geringer Magiezauberstab] |cRXP_WARN_an|r
    .use 11287
    .itemcount 11287,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step
    #xprate <1.5
    #optional
    .abandon 806 >> Brecht die Quest Dunkle Stürme ab.
step
    #optional
    .abandon 408 >> Brecht die Quest Die Familiengruft ab.
step << Warrior
    #optional
    .abandon 1821 >> Brecht die Quest Agamand-Erbstücke ab.
step
    #optional
    #xprate >1.49
    .abandon 830 >> Brecht die Quest Die Befehle des Admirals ab
step
    #label LeaveUndercity3
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >> Verlasst die Unterstadt durch die Kanalisation
    .zoneskip Tirisfal Glades
step
    #label Entersilverpine
    .goto Tirisfal Glades,53.20,75.82
    .zone Silverpine Forest >> Reist nach Silberwald
    .zoneskip Silverpine Forest
]])


local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate >1.99
<< Horde
#name 1-7 Durotar
#version 1
#group RestedXP Horde 1-22
#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 7-13 Durotar


step << !Orc !Troll
    #completewith next
    +|cRXP_WARN_Ihr habt einen Leitfaden ausgewählt, der für Orks und Trolle bestimmt ist. Ihr solltet dieselbe Startzone wählen, in der ihr startet|r
step
    .goto Durotar,43.29,68.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kaltunk|r
    .accept 4641 >>Akzeptiert die Quest Euer Platz in der Welt
    .target Kaltunk
step
    #season 2
    .xp 2 >> Tötet vier |cRXP_ENEMY_Scheckiger Eber|r um Stufe 2 zu erreichen
    >>Sammelt sie bis ihr 15 Kupfer im Wert von Händler-Gegenständen habt|cRXP_WARN_ << !Warlock !Priest
    >>Sammelt sie bis ihr 30 Kupfer im Wert von Händler-Gegenständen habt|cRXP_WARN_ << Warlock/Priest
    .goto Durotar,44.32,71.16
    .mob Mottled Boar
step
    #season 2
    .goto Durotar,42.73,68.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Runenhändler|r
    >>|cRXP_WARN_Passt auf, verkauft keine Ausrüstung, die ihr anlegen könnt|r
    >>|cRXP_BUY_Verkauft Müll und kauft|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Siegesrauschs|r] und |T134419:0|t[|cRXP_FRIENDLY_Rune des rasenden Angriffs|r] << Orc Warrior
    >>|cRXP_BUY_Verkauft euren Müll und kauft die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Siegesrausches|r] << Troll Warrior
    >>|cRXP_BUY_Verkauft Müll und kauft|r |T134920:0|t[|cRXP_FRIENDLY_Kajarisches Symbol|r] |cRXP_BUY_und|r |T134918:0|t[|cRXP_FRIENDLY_Dyadisches Symbol|r] << Shaman
    >>|cRXP_BUY_Verkauft die Trashgegenstände und kauft alle wichtigen AoE-Runen|r << Mage
    >>|cRXP_BUY_Verkauft die Trashgegenstände und kauft alle der folgenden Runen:|r << Hunter/Warlock/Rogue/Priest
    .collect 206387,1 << Shaman --Kajaric Icon
    .collect 206381,1 << Shaman --Dyadic Icon
    .collect 204806,1 << Warrior --Rune of Victory Rush
    .collect 204716,1 << Orc Warrior --Rune of Frenzied Assault
    .collect 208799,1 << Mage --Spell Notes: Living Bomb
    .collect 203746,1 << Mage --Spell Notes: Living Flame
    .collect 203748,1 << Mage --Spell Notes: Burnout
    .collect 225690,1 << Mage --Spell Notes: Frozen Orb
    .collect 203745,1 << Mage --Spell Notes: Ice Lance
    .collect 209852,1 << Hunter --Rune of Kill Command
    .collect 226401,1 << Hunter --Treatise on the Heart of the Lion
    .collect 216770,1 << Hunter --Treatise on Aspect of the Viper
    .collect 206168,1 << Hunter --Rune of the Chimera
    .collect 210818,1 << Hunter --Rune of Lone Wolf
    .collect 213124,1 << Hunter --Rune of Close Combat
    .collect 226252,1 << Hunter --Rune of the Guerrilla
    .collect 205215,1 << Warlock --Rune of Tactics
    .collect 210824,1 << Warlock --Rune of the Pact
    .collect 211477,1 << Warlock --Rune of Incinerate
    .collect 205230,1 << Warlock --Rune of Haunting
    .collect 228797,1 << Warlock --Grimoire of Fel Armor
    .collect 210979,1 << Rogue --Rune of Shadowstep
    .collect 221428,1 << Rogue --Rune of Foul Play
    .collect 204795,1 << Rogue --Rune of Shadowstrike
    .collect 208772,1 << Rogue --Rune of Saber Slash
    .collect 227922,1 << Rogue --Rune of the Swashbuckler
    .collect 212552,1 << Priest --Psychosophic Epiphany
    .collect 205940,1 << Priest --Memory of a Dark Purpose
    .collect 205951,1 << Priest --Memory of a Troubled Acolyte
    .collect 205932,1 << Priest --Prophecy of a King's Demise
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel
    >> Eislanze ist nur nützlich, um später eine Quest abzugeben << Mage
    >>|cRXP_WARN_Ihr bekommt den Rest eurer Runen später|r
    .target Rune Broker
    .skipgossip
step
    #season 2
    .train 403470 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Siegesrauschs|r] um |T132342:0|t[Siegesrausch] zu erlernen<< Warrior
    .train 415936 >> Benutzt |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Lebende Bombe|r] um |T236220:0|t[Lebende Bombe] zu erlernen << Mage
    .train 401759 >> Benutzt |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Feuerfontäne|r] um |T236207:0|t[Feuriger Schub] zu erlernen << Mage
    .train 440858 >> Benutzt die |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Gefrorene Kugel|r] um |T135851:0|t[Gefrorene Kugel] zu erlernen << Mage
    .train 401760 >> Benutzt |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Eislanze|r] um |T135844:0|t[Eislanze] zu erlernen << Mage
    .train 401768 >> Benutzt |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: Lebende Flamme|r] um |T135820:0|t[Lebende Flamme] zu erlernen  << Mage
    .train 410121 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Chimäre|r] um |T236176:0|t[Schimärenschuss] zu trainieren << Hunter
    .train 410122 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des einsamen Wolfs|r] um |T132266:0|t[Einsamer Wolf] zu trainieren << Hunter
    .train 416086 >> Benutzt |T134419:0|t[|cRXP_FRIENDLY_Rune des Nahkampfs|r], um |T132394:0|t[Nahkampfspezialist] zu trainieren << Hunter
    .train 440563 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Guerrillas|r] um |T132171:0|t[Drauf und weg] zu trainieren << Hunter
    .train 415423 >> Benutzt die |T133739:0|t[|cRXP_FRIENDLY_Abhandlung zum Aspekt der Viper|r] um |T132160:0|t[Aspekt der Viper]|r zu trainieren << Hunter
    .train 416009 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Taktiken|r] um |T136150:0|t[Dämonische Taktiken] zu erlernen << Warlock
    .train 425476 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Pakts|r] um |T237562:0|t[Dämonischer Pakt] zu erlernen << Warlock
    .train 416015 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Verbrennens|r] um |T135789:0|t[Verbrennen] zu erlernen << Warlock
    .train 403919 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Heimsuchung|r] um |T236298:0|t[Heimsuchung] zu erlernen << Warlock
    .train 403619 >> Benutzt den |T133733:0|t[Zauberfoliant der Teufelsrüstung|cRXP_FRIENDLY_] um |T136156:0|t[Teufelsrüstung]|r zu trainieren |cRXP_WARN_benutzt es als euren Hauptrüstungszauber|r << Warlock
    .train 402852 >> Benutzt die |T135975:0|t[|cRXP_FRIENDLY_Prophezeiung einer entweihten Zitadelle|r] um |T237570:0|t[Homunculi] zu erlernen << Priest
    .train 425447 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des rasenden Angriffs|r] um |T236317:0|t[Rasender Angriff] zu erlernen << Orc Warrior
    .train 410111 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Tötungsbefehls|r], um |T236174:0|t[Tödlicher Schuss] zu erlernen << Hunter
    .train 409580 >> Benutzt die |T133739:0|t[|cRXP_FRIENDLY_Abhandlung über das Löwenherz|r] um |T132185:0|t[Löwenherz] zu trainieren << Hunter
    .train 400101 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Schattenschritts|r] um |T132303:0|t[Schattenschritt] zu erlernen << Rogue
    .train 432301 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des falschen Spiels|r] um |T236285:0|t[Unfairer Vorteil] zu erlernen << Rogue
    .train 400105 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Schattenschlags|r] um |T132323:0|t[Schattenschlag] zu erlernen << Rogue
    .train 424984 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Säbelschlitzers|r] um |T132375:0|t[Säbelhieb] zu erlernen << Rogue
    .train 415922 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Schwadroneurs|r] um |T134538:0|t[Donnerbüchse] zu erlernen << Rogue
    .equip 18 >> Legt das |T134920:0|t |cRXP_FRIENDLY_Kajarisches Symbol|r an. Ihr könnt es nach 30 Sek. benutzen, um |T237582:0|t[Lavaeruption] zu erlernen << Shaman
    .train 431663 >> Benutzt die |T135791:0|t[|cRXP_FRIENDLY_Psychosophische Offenbarung|r] um |T136181:0|t[Gedankenstachel] zu erlernen << Priest
    .train 425216 >> Benutzt die |T136222:0|t[|cRXP_FRIENDLY_Erinnerung an einen dunklen Zweck|r] um |T237514:0|t[Pest der Leere] zu erlernen << Priest
    .train 402862 >> Benutzt die |T136222:0|t[|cRXP_FRIENDLY_Erinnerung eines besorgten Akolyten|r] um |T237545:0|t[Sühne] zu erlernen << Priest
    .train 402849 >> Benutzt die |T135975:0|t[|cRXP_FRIENDLY_Prophezeiung des Tods eines Königs|r] um |T136149:0|t[Schattenwort: Tod] zu erlernen << Priest
    .use 206387 << Shaman --Kajaric Icon
    .use 205947 << Priest --Prophecy of a Desecrated Citadel
    .use 212552 << Priest --Psychosophic Epiphany
    .use 205940 << Priest --Memory of a Dark Purpose
    .use 205951 << Priest --Memory of a Troubled Acolyte
    .use 205932 << Priest --Prophecy of a King's Demise
    .use 204716 << Orc Warrior --Rune of Frenzied Assault
    .use 203746 << Mage --Spell Notes: Living Flame
    .use 209852 << Hunter --Rune of Kill Command
    .use 226401 << Hunter --Treatise on the Heart of the Lion
    .use 208799 << Mage --Spell Notes: Living Bomb
    .use 203748 << Mage --Spell Notes: Burnout
    .use 225690 << Mage --Spell Notes: Frozen Orb
    .use 203746 << Mage --Spell Notes: Living Flame
    .use 203745 << Mage --Spell Notes: Ice Lance
    .use 204716 << Orc Warrior --Rune of Frenzied Assault
    .use 206168 << Hunter --Rune of the Chimera
    .use 210818 << Hunter --Rune of Lone Wolf
    .use 213124 << Hunter --Rune of Close Combat
    .use 226252 << Hunter --Rune of the Guerrilla
    .use 216770 << Hunter --Treatise on Aspect of the Viper
    .use 204806 << Warrior --Rune of Victory Rush
    .use 205215 << Warlock --Rune of Tactics
    .use 210824 << Warlock --Rune of the Pact
    .use 211477 << Warlock --Rune of Incinerate
    .use 205230 << Warlock --Rune of Haunting
    .use 228797 << Warlock --Grimoire of Fel Armor
    .use 210979 << Rogue --Rune of Shadowstep
    .use 221428 << Rogue --Rune of Foul Play
    .use 204795 << Rogue --Rune of Shadowstrike
    .use 208772 << Rogue --Rune of Saber Slash
    .use 227922 << Rogue --Rune of the Swashbuckler
step << Warlock
    #optional
    #sticky
    .aura 403619 >> Vergewissert euch, dass ihr eure |T136156:0|t[Teufelsrüstung] aktiviert
step << Warlock
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ruzan|r
    .accept 1485 >>Nehmt die Quest Üble Familiare an
    .target Ruzan
step << Shaman
    #season 2
    #optional
    #label LavaBurst
    #sticky
    .train 410095 >> Benutzt |T134920:0|t[|cRXP_FRIENDLY_Kajarisches Symbol|r] aus eurem Charakterfenster, um |T237582:0|t[Lavaeruption] zu erlernen
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
    .goto Durotar,42.28,68.48,12,0 << !Warrior !Shaman
    .goto Durotar,42.29,68.39,12,0 << Warrior/Shaman
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gornek|r
    .turnin 4641 >>Gebt die Quest Euer Platz in der Welt ab
    .accept 788 >>Akzeptiert die Quest Scharfe Zähne
    .target Gornek
step << Priest
    #season 2
    .goto Durotar,40.61,67.81
    >>|cRXP_WARN_Lauf tiefer in den Bau hinein.|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Huklah|r
    .vendor >>|cRXP_BUY_Verkauft Müll. Kauft einen|r |T132513:0|t[Zerlumpter Stoffgürtel] |cRXP_BUY_von ihm um eine Rune drauf zu gravieren|r
    .collect 3595,1 --Tattered Cloth Belt
    .target Huklah
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
    .accept 77642 >>Akzeptiert die Quest Weisheit der Loa
    .turnin 77642 >>Gebt die Quest Weisheit der Loa ab
    .target Ken'jai
step << Priest
    #season 2
    .equip 10,711 >> |cRXP_WARN_Legt die|r |T132961:0|t[Zerlumpte Stoffhandschuhe] an
    .equip 6,3595 >> |cRXP_WARN_Legt den|r |T132513:0|t[Zerlumpter Stoffgürtel] an
    .use 711
    .use 3595
    .engrave 6 >> Graviert |T136181:0|t[Gedankenstachel] auf euren Gürtel
    .engrave 10 >> Graviert |T136149:0|t[Schattenwort: Tod] auf eure Handschuhe
    .engrave 7 >> Graviert |T237570:0|t[Homunculi] auf eure Hosen
step << Mage
    #season 2
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mai'ah|r
    .accept 77643 >>Akzeptiert die Quest Zauberforschung << Troll Mage
    .turnin 77643 >>Gebt die Quest Zauberforschung ab << Troll Mage
    .train 1459 >> Erlernt |T135932:0|t[Arkane Intelligenz]
    .target Mai'ah
step << Mage
    #season 2
    #optional
    .equip 10,711 >> |cRXP_WARN_Legt die|r |T132961:0|t[Zerlumpte Stoffhandschuhe] an
    .use 711
    .engrave 10 >>|cRXP_WARN_Graviert|r eure Handschuhe mit|r|T236220:0|t[Lebende Bombe]
    .engrave 7 >>|cRXP_WARN_Graviert|r eure Hose mit |T135820:0|t[Lebende Flamme]
    .engrave 5 >>|cRXP_WARN_Graviert|r eure Rüstung mit |T236207:0|t[Feuriger Schub]
step << Mage
    #season 2
    #optional
    #sticky
    .engrave 15 >> Achtet auf alle Umhang drops. Sobald ihr einen bekommt, graviert |T135851:0|t[Gefrorene Kugel] darauf.
    >>|cRXP_WARN_Dieser Zauber ist äußerst übermächtig|r
step << Hunter
    #season 2
    #xprate >1.49
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jen'shan|r
    .accept 77590 >>Akzeptiert die Quest Unwegsames Terrain << Troll Hunter
    .accept 77584 >>Akzeptiert die Quest Jagd auf die Rune << Orc Hunter
    .turnin 77590 >>Gebt die Quest Unwegsames Terrain ab << Troll Hunter
    .turnin 77584 >>Gebt die Quest Jagd auf die Rune ab << Orc Hunter
    .target Jen'shan
step << Rogue
    #season 2
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rwag|r innerhalb
    .accept 77592 >>Akzeptiert die Quest Oben auf den Klippen << Troll Rogue
    .accept 77583 >>Akzeptiert die Quest Oben auf den Klippen << Orc Rogue
    .turnin 77592 >>Gebt die Quest oben auf den Klippen ab << Troll Rogue
    .turnin 77583 >>Gebt die Quest oben auf den Klippen ab << Orc Rogue
    .train 1784 >>Erlernt |T132320:0|t[Verstohlenheit]
    .target Rwag
step << Rogue
    #season 2
    #optional
    .equip 10 >> Legt die |T132952:0|t[Gesprungenen Lederhandschuhe] an
    .engrave 10 >> Graviert |T132375:0|t[Säbelhieb] auf eure Handschuhe
    .use 2125 --Cracked Leather Gloves
step << Warrior/Shaman
    #season 0
    .goto Durotar,42.28,68.48,10,0
    .goto Durotar,42.89,69.44 << Warrior
    .goto Durotar,42.39,69.00 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shikrik|r << Shaman
    .train 6673 >>Erlernt |T132333:0|t[Schlachtruf] << Warrior
    .train 8017 >>Erlernen |T136086:0|t[Waffe des Felsbeißers] << Shaman
    .target Frang << Warrior
    .target Shikrik << Shaman
step << Warrior/Shaman
    #season 2
    .goto Durotar,42.28,68.48,10,0
    .goto Durotar,42.89,69.44 << Warrior
    .goto Durotar,42.39,69.00 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shikrik|r << Shaman
    .train 6673 >>Erlernt |T132333:0|t[Schlachtruf] << Warrior
    .train 8017 >>Erlernen |T136086:0|t[Waffe des Felsbeißers] << Shaman
    .accept 77588 >>Akzeptiert die Quest Eignungsprüfung << Troll Warrior
    .accept 77582 >>Akzeptiert die Quest Eignungsprüfung << Orc Warrior
    .turnin 77588 >>Gebt Eignungsprüfung ab << Troll Warrior
    .turnin 77582 >>Akzeptiert die Quest Eignungsprüfung << Orc Warrior
    .target Frang << Warrior
    .target Shikrik << Shaman
step << Warrior
    #season 2
    .equip 10 >> Legt die |T132938:0|t[Befleckte Kettenhandschuhe] an << Warrior
    .engrave 10 >> Graviert |T132342:0|t[Siegesrausch] auf eure Handschuhe << Warrior
    .engrave 7 >> Graviert |T236317:0|t[Rasender Angriff] auf eure Hosen << Orc Warrior
    .use 2385 << Warrior -- Tarnished Chain Gloves
step << Warlock
    #softcore
    #completewith Nartok
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>Reisen zu |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock
    #softcore
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Reisen zu |cRXP_FRIENDLY_Nartok|r
    .money >0.01
step << Warlock
    #hardcore
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Reist zu |cRXP_FRIENDLY_Nartok|r
step << Warlock
    #softcore
    #season 0
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hraug|r
    .vendor >>Verkauft Müll
    .target Hraug
    .money >0.01
step << Warlock
    #hardcore
    #season 0
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hraug|r
    .vendor >>Verkauft Müll
    .target Hraug
step << Warlock
    #season 2
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nartok|r
    .accept 77586 >>Akzeptiert die Quest Gestohlene Macht
    .turnin 77586 >>Gebt die Quest Gestohlene Macht ab
    .target Nartok
step << Warlock
    #season 2
    .goto Durotar,40.61,67.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Huklah|r
    .vendor >>|cRXP_BUY_Verkauft Müll. Kauft ein Paar|r [Zerlumpte Stoffarmschienen] |cRXP_BUY_von ihm um eine Rune drauf zu gravieren|r
    .collect 3596,1 --Tattered Cloth Bracers
    .target Huklah
step << Warlock
    #season 2
    .equip 10,711 >> |cRXP_WARN_Legt die|r |T132961:0|t[Zerlumpte Stoffhandschuhe] an
    .equip 9,3596 >> |cRXP_ENEMY_Legt|r die |T132606:0|t[Zerlumpte Stoffarmschienen] an
    .use 711
    .use 3596
    .engrave 10 >>|cRXP_WARN_Graviert eure|r Handschuhe mit|r |T133816:0|t[Heimsuchung] << Warlock
    .engrave 9 >> |cRXP_WARN_Graviert eure Armschienen mit |T135789:0|t[Verbrennen]|r
    .engrave 7 >> |cRXP_WARN_Graviert eure Hose mit |T237562:0|t[Dämonischer Pakt]
step << Warlock
    #season 0
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nartok|r
    .train 348 >>Erlernt |T135817:0|t[Feuerbrand]
    .target Nartok
step << !Warrior !Rogue
    #softcore
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihr|r << !Hunter !Shaman
    >>|cRXP_BUY_Kauft|r |T132382:0|t[Rauer Pfeil] |cRXP_BUY_von ihr|r << Hunter
    .collect 159,30,6394,1 << !Hunter !Shaman --Refreshing Spring Water (30)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .target Duokna
    .money <0.005 << !Hunter
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
    .goto Durotar,43.57,67.28,25,0
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
    .goto Durotar,43.87,58.42,40,0
    .goto Durotar,44.53,58.62,40,0
    .goto Durotar,45.18,58.42,40,0
    .goto Durotar,45.83,58.59,40,0
    .goto Durotar,45.79,57.43,40,0
    .goto Durotar,46.46,57.57,40,0
    .goto Durotar,47.19,57.12,40,0
    .goto Durotar,46.21,56.69,40,0
    .goto Durotar,46.28,56.11,40,0
    .goto Durotar,45.65,56.90,40,0
    .goto Durotar,45.35,56.32,40,0
    .goto Durotar,44.77,56.87,40,0
    .goto Durotar,44.58,56.10,40,0
    .goto Durotar,44.27,56.59,40,0
    .goto Durotar,43.85,55.52,40,0
    >>Tötet |cRXP_ENEMY_Üble Familiare|r. Plündert sie für |cRXP_LOOT_Kopf eines schändlichen Familiars|r
    .complete 1485,1 --Vile Familiar Head (6)
    .mob Vile Familiar
step << Hunter
    #season 2
    #optional
    #completewith sarkoth
    .equip 10 >> Legt die |T132952:0|t[Gesprungenen Lederhandschuhe] an
    .engrave 7 >> Graviert |T236174:0|t[Tödlicher Schuss] auf eure Hosen
    .engrave 10 >> Graviet |T236176:0|t[Schimärenschuss] auf eure Handschuhe
    .aura 409583 >> Denkt daran, Euer |T132185:0|t[Herz des Löwen] zu aktivieren
    .use 2125 --Cracked Leather Gloves
step << Hunter
    #season 2
    #sticky
    #optional
    >>|cRXP_WARN_Haltet Ausschau nach|r Brust/Gürtel/Umhang |cRXP_WARN_drops|r|cRXP_WARN_. Legt sie an und graviert die jeweiligen Runen|r
    .engrave 5 >> Graviert |T132266:0|t[Einsamer Wolf] auf eure |T132724:0|t[Brust]
    .engrave 6 >> Graviert |T132394:0|t[Nahkampfspezialist] auf euren |T132513:0|t[Gürtel]
    .engrave 15 >> Graviert |T132171:0|t[Drauf und weg] auf euren |T133771:0|t[Umhang]
step << Rogue
    #season 2
    #sticky
    #optional
    >>|cRXP_WARN_Haltet Ausschau nach|r Gürtel/Umhang/Armschiene |cRXP_WARN_drops|r|cRXP_WARN_. Legt sie an und graviert die jeweiligen Runen|r
    .engrave 6 >> Graviert |T132303:0|t[Schattenschritt] auf euren |T132513:0|t[Gürtel]
    .engrave 15 >> Graviert |T134538:0|t[Donnerbüchse] auf euren |T133771:0|t[Umhang]
    .engrave 9 >> Graviert |T236285:0|t[Unfairer Vorteil] euren |T133830:0|t[armschienen]
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
    .goto Durotar,41.30,65.03,40,0
    .goto Durotar,41.92,64.74,40,0
    .goto Durotar,42.66,64.92,40,0
    .goto Durotar,43.31,65.02,40,0
    .goto Durotar,43.90,65.96,40,0
    .goto Durotar,44.54,65.96,40,0
    .goto Durotar,45.16,65.77,40,0
    .goto Durotar,45.72,65.93,40,0
    .goto Durotar,45.72,65.04,40,0
    .goto Durotar,45.21,63.95,40,0
    .goto Durotar,45.83,63.01,40,0
    .goto Durotar,45.81,62.17,40,0
    .goto Durotar,45.78,61.14,40,0
    .goto Durotar,45.15,60.20,40,0
    .goto Durotar,44.50,59.45,40,0
    .goto Durotar,43.86,60.43,40,0
    .goto Durotar,43.07,60.24,40,0
    .goto Durotar,42.58,60.09,40,0
    .goto Durotar,42.02,61.19,40,0
    .goto Durotar,42.02,62.15,40,0
    .goto Durotar,42.00,62.92,40,0
    .goto Durotar,41.99,64.03,40,0
    >>Tötet |cRXP_ENEMY_Scheckiger Eber|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    #xprate <1.5
    #completewith Ruzan2
	>>|cRXP_WARN_Farmt |cRXP_ENEMY_Scheckiger Eber|r. Plündert sie, bis ihr Gegenstände im Wert von 1 Silber habt|r
    .mob Mottled Boar
	.money >0.01
step << Warlock/Warrior/Shaman/Hunter
    #xprate >1.49
    #completewith Ruzan2
	>>|cRXP_WARN_Farmt |cRXP_ENEMY_Scheckiger Eber|r. Plündert sie, bis ihr Gegenstände im Wert von 2 Silber habt|r << Warrior
	>>|cRXP_WARN_Farmt |cRXP_ENEMY_Scheckiger Eber|r. Sammelt Beute von ihnen bis ihr 1 Silber 75 Kupfer Wert an Verkaufsgegenständen habt|r << Warlock
	>>|cRXP_WARN_Farmt |cRXP_ENEMY_Scheckiger Eber|r. Sammelt Beute von ihnen bis ihr 1 Silber 10 Kupfer Wert an Verkaufsgegenständen habt|r << Hunter
	>>|cRXP_WARN_Farmt |cRXP_ENEMY_Scheckiger Eber|r. Plündert sie, bis ihr Gegenstände im Wert von 1 Silber habt|r << Shaman
    .mob Mottled Boar
	.money >0.02 << Warrior
	.money >0.0175 << Warlock
	.money >0.011 << Hunter
	.money >0.01 << Shaman
step << Rogue
    #label Duokna2
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
    #season 0
    #completewith Rwag
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>Reist zu |cRXP_FRIENDLY_Rwag|r
step << Rogue
    #season 0
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Gebt die Quest Verschlüsselte Schrifttafel ab << Troll Rogue
    .turnin 3088 >>Gebt die Quest Verschlüsseltes Pergament ab << Orc Rogue
    .train 53 >> Erlernt |T132090:0|t[Meucheln]
    .target Rwag
    .money <0.04
    .xp <4,1
step << Rogue
    #season 0
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
    #season 2
    #label Nartok2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Gebt die Quest Besudeltes Pergament ab
    .target Nartok
step << Warlock
    #season 0
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
    .xp >4,1
step << !Rogue
    #xprate <1.5
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihr|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Kauft|r |T132382:0|t[Rauer Pfeil] |cRXP_BUY_von ihr|r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Verkauft Müll
    .target Duokna
    .money >0.01 << Rogue/Warrior
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << !Rogue
    #xprate >1.49
    #season 0 << Mage
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cFF00FF25Duokna|r
    >>|cFF0E8312Buy|r |T132794:0|t[Erfrischendes Quellwasser] |cFF0E8312von ihr|r << !Rogue !Warrior !Hunter !Shaman
    >>|cFF0E8312Buy|r |T132382:0|t[Raue Pfeile] |cFF0E8312von ihr|r << Hunter
    >>|cRXP_WARN_Spart 10 Kupfer für das trainieren von|r |T135932:0|t[Arkane Intelligenz] << Mage
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Verkauft Müll
    .target Duokna
    .money <0.005 << Hunter
    .money >0.1 << Rogue/Warrior/Shaman
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << Hunter
    #optional
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Kauft|r |T132382:0|t[Rauer Pfeil] |cRXP_BUY_von ihr|r
    .collect 2512,400,6394,1 --Rough Arrow (400)
    .vendor >> Verkauft Müll
    .target Duokna
    .money <0.002
    .itemcount 2512,<200
step << Hunter
    #optional
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Kauft|r |T132382:0|t[Rauer Pfeil] |cRXP_BUY_von ihr|r
    .collect 2512,200,6394,1 --Rough Arrow (200)
    .vendor >> Verkauft Müll
    .target Duokna
    .money <0.001
    .itemcount 2512,<200
step << Shaman
    #season 2
    #xprate >1.49
    #requires Galgar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shikrik|r und |cRXP_FRIENDLY_Canaga|r
    .turnin 3084 >>Abgeben Mit Runen beschriftete Schrifttafel << Troll
    .turnin 3089 >>Abgeben: Mit Runen beschriftetes Pergament << Orc
    .accept 77587 >>Akzeptiert die Symbole der Macht << Troll Shaman
    .accept 77585 >>Akzeptiert die Symbole der Macht << Orc Shaman
    .train 8042 >>Erlernt |T136026:0|t[Erdschock]
    .goto Durotar,42.39,69.00
    .accept 1516 >>Akzeptiert die Quest Ruf der Erde
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Shaman
    #season 2
    #xprate <1.5
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Abgeben Mit Runen beschriftete Schrifttafel << Troll
    .turnin 3089 >>Abgeben: Mit Runen beschriftetes Pergament << Orc
    .accept 77587 >>Akzeptiert die Symbole der Macht << Troll Shaman
    .accept 77585 >>Akzeptiert die Symbole der Macht << Orc Shaman
    .target Shikrik
step << Shaman
    #season 0
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Abgeben Mit Runen beschriftete Schrifttafel << Troll
    .turnin 3089 >>Abgeben: Mit Runen beschriftetes Pergament << Orc
    .target Shikrik
step << Mage
    #season 2
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Abgeben Glyphen-Schrifttafel << Troll
    .target Mai'ah
step << Mage
    #season 0
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Abgeben Glyphen-Schrifttafel << Troll
    .train 1459 >> Erlernt |T135932:0|t[Arkane Intelligenz]
    .target Mai'ah
step << !Warlock
    #requires Galgar
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zureetha|r
    .accept 792 >>Nehmt die Quest Üble Familiare an
    .target Zureetha Fargaze
step << Hunter
    #season 2
    #xprate >1.49
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Gebt die Quest Geätzte Schrifttafel ab << Troll
    .turnin 3087 >>Gebt die Quest Geätzte Pergament ab << Orc
    .train 1978 >> Erlernt |T132204:0|t[Schlangengift]
    .target Jen'shan
    .money <0.01
step << Hunter
    #optional
    #season 2
    #xprate >1.49
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Gebt die Quest Geätzte Schrifttafel ab << Troll
    .turnin 3087 >>Gebt die Quest Geätzte Pergament ab << Orc
    .target Jen'shan
step << Hunter
    #xprate <1.5
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Gebt die Quest Geätzte Schrifttafel ab << Troll
    .turnin 3087 >>Gebt die Quest Geätzte Pergament ab << Orc
    .target Jen'shan
step << Hunter
    #xprate >1.49
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Gebt die Quest Geätzte Schrifttafel ab << Troll
    .turnin 3087 >>Gebt die Quest Geätzte Pergament ab << Orc
    .train 1978 >> Erlernt |T132204:0|t[Schlangengift]
    .target Jen'shan
    .money <0.01
step << Hunter
    #optional
    #xprate >1.49
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Gebt die Quest Geätzte Schrifttafel ab << Troll
    .turnin 3087 >>Gebt die Quest Geätzte Pergament ab << Orc
    .target Jen'shan
step << Hunter
    #xprate <1.5
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Gebt die Quest Geätzte Schrifttafel ab << Troll
    .turnin 3087 >>Gebt die Quest Geätzte Pergament ab << Orc
    .target Jen'sha
step << Warrior
    #xprate >1.49
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Gebt die Quest Einfaches Pergament ab << Orc
    .turnin 3065 >>Gebt die Quest Einfache Schrifttafel ab << Troll
    .train 100 >> Erlernt |T132337:0|t[Sturmangriff]
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Frang
    .money <0.02
step << Warrior
    #xprate >1.49
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Gebt die Quest Einfaches Pergament ab << Orc
    .turnin 3065 >>Gebt die Quest Einfache Schrifttafel ab << Troll
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Frang
    .money <0.01
step << Warrior
    #xprate >1.49
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Gebt die Quest Einfaches Pergament ab << Orc
    .turnin 3065 >>Gebt die Quest Einfache Schrifttafel ab << Troll
    .target Frang
step << Warrior
    #xprate >1.49
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Gebt die Quest Einfaches Pergament ab << Orc
    .turnin 3065 >>Gebt die Quest Einfache Schrifttafel ab << Troll
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Frang
    .money <0.01
step << Warrior
    #xprate >1.49
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Gebt die Quest Einfaches Pergament ab << Orc
    .turnin 3065 >>Gebt die Quest Einfache Schrifttafel ab << Troll
    .target Frang
step << Warrior
    #xprate <1.5
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Gebt die Quest Einfaches Pergament ab << Orc
    .turnin 3065 >>Gebt die Quest Einfache Schrifttafel ab << Troll
    .target Frang
step << Warrior
    #xprate <1.5
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Gebt die Quest Einfaches Pergament ab << Orc
    .turnin 3065 >>Gebt die Quest Einfache Schrifttafel ab << Troll
    .target Frang
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
    .turnin 3085 >>Gebt die Quest Geheiligte Schrifttafel ab
    .accept 77642 >>Akzeptiert die Quest Weisheit der Loa
    .target Ken'jai
step << Shaman
    .goto Durotar,40.47,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kzan|r
    .collect 2132,1,5441,1 --Collect Short Staff (1)
    .money <0.0102
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
    .target Kzan Thornslash
step
    #requires Galgar << Warlock
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thazz'ril|r
    .accept 5441 >>Annehmen Faule Peons
    .target Foreman Thazz'ril
step
    #completewith Sting
    >>Beute |cRXP_LOOT_Kaktusapfel|r in der Nähe der Kakteen
    .complete 4402,1 --Cactus Apple (10)
    .isOnQuest 4402
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
step << skip --Shaman
    #season 2
    #completewith OverloadRune
    >>Tötet |cRXP_ENEMY_Üble Familiare|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step << << skip --Hunter
    #season 2
    #completewith ChimeraRune
    >>Tötet |cRXP_ENEMY_Üble Familiare|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step << !Warlock
    #label Imps
    #loop
    .goto Durotar,43.87,58.42,0
    .goto Durotar,43.87,58.42,40,0
    .goto Durotar,44.53,58.62,40,0
    .goto Durotar,45.18,58.42,40,0
    .goto Durotar,45.83,58.59,40,0
    .goto Durotar,45.79,57.43,40,0
    .goto Durotar,46.46,57.57,40,0
    .goto Durotar,47.19,57.12,40,0
    .goto Durotar,46.21,56.69,40,0
    .goto Durotar,46.28,56.11,40,0
    .goto Durotar,45.65,56.90,40,0
    .goto Durotar,45.35,56.32,40,0
    .goto Durotar,44.77,56.87,40,0
    .goto Durotar,44.58,56.10,40,0
    .goto Durotar,44.27,56.59,40,0
    .goto Durotar,43.85,55.52,40,0
    >>Tötet |cRXP_ENEMY_Üble Familiare|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step
    #label Tails
    #loop
    .goto Durotar,43.26,58.28,0
    .goto Durotar,43.26,58.28,40,0
    .goto Durotar,42.81,58.41,40,0
    .goto Durotar,41.90,58.35,40,0
    .goto Durotar,41.97,59.20,40,0
    .goto Durotar,41.36,60.35,40,0
    .goto Durotar,40.66,61.27,40,0
    .goto Durotar,40.07,61.35,40,0
    .goto Durotar,39.42,61.29,40,0
    .goto Durotar,39.46,62.17,40,0
    .goto Durotar,39.55,63.10,40,0
    .goto Durotar,40.13,64.04,40,0
    .goto Durotar,40.84,64.06,40,0
    .goto Durotar,40.74,65.86,40,0
    .goto Durotar,39.93,66.03,40,0
    .goto Durotar,40.04,66.99,40,0
    .goto Durotar,40.09,67.66,40,0
    .goto Durotar,40.13,68.50,40,0
    .goto Durotar,40.72,68.55,40,0
    .goto Durotar,41.30,67.84,40,0
    .goto Durotar,41.37,66.72,40,0
    .goto Durotar,41.89,66.05,40,0
    .goto Durotar,41.27,65.71,40,0
    .goto Durotar,41.36,64.07,40,0
    .goto Durotar,41.33,63.12,40,0
    .goto Durotar,41.35,61.98,40,0
    .goto Durotar,41.49,61.25,40,0
    .goto Durotar,41.90,60.24,40,0
    .goto Durotar,42.51,59.34,40,0
    .goto Durotar,43.08,59.62,40,0
    .goto Durotar,43.91,59.33,40,0
    .goto Durotar,45.15,59.46,40,0
    .goto Durotar,45.81,59.30,40,0
    .goto Durotar,45.85,60.34,40,0
    .goto Durotar,46.46,61.11,40,0
    .goto Durotar,47.09,62.24,40,0
    .goto Durotar,47.08,63.15,40,0
    .goto Durotar,47.14,64.08,40,0
    .goto Durotar,47.58,64.04,40,0
    .goto Durotar,47.08,63.15,40,0
    .goto Durotar,47.09,62.24,40,0
    .goto Durotar,46.90,61.15,40,0
    .goto Durotar,46.98,60.18,40,0
    .goto Durotar,47.07,59.34,40,0
    .goto Durotar,46.47,58.28,40,0
    .goto Durotar,45.81,59.30,40,0
    .goto Durotar,45.15,59.46,40,0
    .goto Durotar,43.91,59.33,40,0
    >>Tötet |cRXP_ENEMY_Skorpidarbeiter|r. Plündert sie für |cRXP_LOOT_Skorpidarbeiterschwanz|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step
    #loop
	.goto Durotar,44.98,69.13,0
	.goto Durotar,44.98,69.13,25,0
	.goto Durotar,45.64,65.70,25,0
	.goto Durotar,47.37,65.67,25,0
	.goto Durotar,46.74,60.66,25,0
	.goto Durotar,47.09,57.90,25,0
	.goto Durotar,43.90,57.79,25,0
	.goto Durotar,42.70,57.25,25,0
	.goto Durotar,41.27,58.95,25,0
	.goto Durotar,40.91,60.41,25,0
	.goto Durotar,38.83,61.84,25,0
    >>|cRXP_WARN_Benutzt den|r |T133486:0|t[Großknecht-Totschläger] |cRXP_WARN_auf die schlafenden |r|cRXP_FRIENDLY_Faulen Peons|r
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
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
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<5 << !Rogue !Warrior !Hunter !Shaman
    .itemcount 2512,<600 << Hunter
step
    #label Sting
    .goto Durotar,42.29,68.39,12,0
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gornek|r
    .turnin 789,2 >>Gebt die Quest Stich des Skorpiden ab << Shaman
    .turnin 789 >>Gebt die Quest Stich des Skorpiden ab << !Shaman
    .target Gornek
step << Shaman
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shikrik|r und |cRXP_FRIENDLY_Canaga|r
    .train 8042 >> Erlernt |T136026:0|t[Erdschock]
    .turnin 77587 >>Gebt die Quest Symbole der Macht ab << Troll Shaman
    .turnin 77585 >>Gebt die Quest Symbole der Macht ab << Orc Shaman
    .goto Durotar,42.39,69.00
    .accept 1516 >>Akzeptiert die Quest Ruf der Erde
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Shaman
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shikrik|r und |cRXP_FRIENDLY_Canaga|r
    .train 8042 >> Erlernt |T136026:0|t[Erdschock]
    .goto Durotar,42.39,69.00
    .accept 1516 >>Akzeptiert die Quest Ruf der Erde
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Mage
    #season 0
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mai'ah|r
    .train 116 >> Erlernt |T135846:0|t[Frostblitz]
    .target Mai'ah
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Trainiere deine Klassenfähigkeiten
    .money <0.021
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Erlernt |T135987:0|t[Machtwort: Seelenstärke]
    .train 589 >> Erlernt |T136207:0|t[Schattenwort: Schmerz]
    .money <0.011
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Erlernt |T136207:0|t[Schattenwort: Schmerz]
    .money <0.01
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Trainiere deine Klassenfähigkeiten
    .turnin 3085 >>Gebt die Quest Geheiligte Schrifttafel ab
    .money <0.021
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Erlernt |T135987:0|t[Machtwort: Seelenstärke]
    .train 589 >> Erlernt |T136207:0|t[Schattenwort: Schmerz]
    .turnin 3085 >>Gebt die Quest Geheiligte Schrifttafel ab
    .money <0.011
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Erlernt |T136207:0|t[Schattenwort: Schmerz]
    .turnin 3085 >>Gebt die Quest Geheiligte Schrifttafel ab
    .money <0.01
    .target Ken'jai
step << !Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zureetha|r
    .turnin 792 >>Gebt die Quest Üble Familiare ab
    .accept 794 >>Nehmt die Quest Medaillon der Burning Blade an
    .target Zureetha Fargaze
step << Hunter
    #season 2
    #optional
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >> Erlernt |T132204:0|t[Schlangengift]
    .turnin 77590 >>Gebt die Quest Unwegsames Terrain ab << Troll Hunter
    .turnin 77584 >>Gebt die Quest Jagd auf die Rune ab << Orc Hunter
    .target Jen'shan
    .xp <4,1
step << Hunter
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jen'shan|r
    .turnin 77590 >>Gebt die Quest Unwegsames Terrain ab << Troll Hunter
    .turnin 77584 >>Gebt die Quest Jagd auf die Rune ab << Orc Hunter
    .target Jen'shan
step << Hunter
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >> Erlernt |T132204:0|t[Schlangengift]
    .target Jen'shan
    .xp <4,1
    .money <0.01
step << Warrior
    #xprate <1.5
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frang|r
    .train 100 >> Erlernt |T132337:0|t[Sturmangriff]
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Frang
    .money <0.02
    .train 772,1
step << Warrior
    #xprate <1.5
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
    #loop
    .goto Durotar,44.67,64.92,0
    .goto Durotar,44.67,64.92,25,0
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
    >>Beute |cRXP_LOOT_Kaktusapfel|r in der Nähe der Kakteen
    .complete 4402,1 --Cactus Apple (10)
    .isOnQuest 4402
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
	.goto Durotar,42.70,52.99,25,0
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
    >>Tötet |cRXP_ENEMY_Teufelspirscher|r. Plündert sie für |cRXP_LOOT_Teufelspirscherhufe|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step << skip
	#completewith next
    .goto Durotar,44.70,52.47
    .goto Durotar,53.55,44.68,30 >>|cRXP_WARN_Führt einen Logout-Skip durch, indem ihr den Charakter von Euch an der Kante des Steins positioniert, bis es aussieht, als würde er schweben, dann loggt euch aus und wieder ein|r
	.link https://www.youtube.com/watch?v=7vmnvdjbUnM >> KLICKT HIER für ein Beispiel
step
    #softcore
    #completewith next
    .goto Durotar,44.70,52.47
    .deathskip >> |cRXP_WARN_Sterbt und erscheint neu beim |cRXP_FRIENDLY_Geistheiler|r in der Nähe des Pfeils|r
    .target Geistheiler
step
    #softcore
    #label Betrayers
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gar'thok|r
    >>|cRXP_WARN_Ihr könnt mit ihm von außen oder oben auf dem Bunker sprechen|r
    .accept 784 >>Akzeptiert die Quest Vernichtet die Verräter
    .target Gar'thok
step
    #softcore
    .goto Durotar,51.09,42.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Torka|r
    .accept 815 >>Akzeptiert die Quest Zerbrecht ein paar Eier
    .target Cook Torka
step
    #softcore
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Reist zum Turm
step
    #softcore
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Reist den Turm hinauf zu Furl
step
    #softcore
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Akzeptiert die Quest Akzeptiert Euer Schicksal
    .target Furl Scornbrow
step << Warrior/Rogue
    #softcore
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Erlernt |T136248:0|t[Bergbau]
    >>|cRXP_WARN_So könnt ihr|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r finden |cRXP_WARN_von Erzvorkommen, um|r |T135248:0|t[Wetzsteine] herzustellen |cRXP_WARN_(+2 Waffenschaden für 30 Minuten)|r
    .target Krunn
step << Warrior/Rogue
    #softcore
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Kauft eine|r |T134708:0|t[Spitzhacke] |cRXP_BUY_von|r |cRXP_BUY_ihm|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #softcore
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Erlerne |T136241:0|t[Schmiedekunst]
    .target Dwukk
    .skill blacksmithing,1,1
step
    #completewith BurningBladeTurnin
    .hs >>Ruhestein zum Tal der Prüfungen
    .use 6948
step
    #xprate <1.5
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 6394 >>Gebt die Quest Thazz'rils Hacke ab
    .target Foreman Thazz'ril
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Gebt die Quest Galgars Kaktusapfel Surprise ab
    .target Galgar
    .isQuestComplete 4402
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duokna|r
    .vendor >> Verkauft Müll
    .target Duokna
    .money >0.03
step
    #season 2
    .goto Durotar,42.74,68.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Runenhändler|r
    >>|cRXP_WARN_Passt auf, verkauft keine Ausrüstung, die ihr anlegen könnt|r
    .vendor >> |cRXP_BUY_Verkauft-Schrott und kauft alle |T134419:0|t|cRXP_WARN_[Runen]|r, die ihr braucht, von ihm|r
    .target Rune Broker
    .skipgossip
step
    #label BurningBladeTurnin
    .goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zureetha|r
    .turnin 794 >>Gebt die Quest Medaillon der Burning Blade ab
    .accept 805 >>Nehmt die Quest Bericht erstatten in Sen'jin an
    .target Zureetha Fargaze
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
	.accept 5649 >> Annehmen Der Spiritualität geneigt
	.train 591 >>Erlernt |T135924:0|t[Heilige Pein]
    .train 17 >>Erlernt |T135940:0|t[Machtwort: Schild]
    .target Ken'jai
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ken'jai|r
	.accept 5649 >> Annehmen Der Spiritualität geneigt
    .train 17 >>Erlernt |T135940:0|t[Machtwort: Schild]
    .target Ken'jai
step << Mage
    #season 0
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mai'ah|r
    .train 143 >> Erlernt |T135812:0|t[Feuerball]
    .train 2136 >>Erlernt |T135807:0|t[Feuerschlag]
    .target Mai'ah
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shikrik|r und |cRXP_FRIENDLY_Canaga|r
    .train 332 >>Erlernt |T136052:0|t[Welle der Heilung]
    .target +Shikrik
    .goto Durotar,42.39,69.00
    .turnin 1516 >>Gebt die Quest Ruf der Erde ab
    .accept 1517 >>Akzeptiert die Quest Ruf der Erde
    .target +Canaga Earthcaller
    .goto Durotar,42.40,69.17
    .xp <6,1
step << Shaman
    .goto Durotar,42.40,69.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Canaga|r
    .turnin 1516 >>Gebt die Quest Ruf der Erde ab
    .accept 1517 >>Akzeptiert die Quest Ruf der Erde
    .target Canaga Earthcaller
step << Hunter
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jen'shan|r
    .train 1130 >>Erlernt |T132212:0|t[Mal des Jägers]
--    .train 3044 >>Train |T132218:0|t[Arcane Shot]
    .target Jen'shan
    .money <0.01
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
    .xp <6,1
step << Rogue
    #label RogueTraining
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rwag|r
    .train 1757 >> Erlernt |T136189:0|t[Finsterer Stoß]
    .target Rwag
    .xp <6,1
step << Warlock
    #completewith Hraug3
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Reist zu |cRXP_FRIENDLY_Hraug|r
step << Warlock
    #label Hraug3
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hraug|r
    >>|cRXP_BUY_Kauft den|r |T133738:0|t[Zauberfoliant des Blutpakts] |cRXP_BUY_von ihm|r
    .collect 16321,1,817,1 --Grimoire of Blood Pact
    .vendor >>Verkauft Müll
    .target Hraug
    .money <0.03
    .train 6307,1 --Blood Pact (Rank 1)
step << Warlock
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Erlernt |T136197:0|t[Schattenblitz]
    .train 1454 >> Erlernt |T136126:0|t[Aderlass]
    .turnin 77586 >>Gebt die Quest Gestohlene Macht ab
    .target Nartok
    .money <0.02
step << Warlock
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Erlernt |T136197:0|t[Schattenblitz]
    .turnin 77586 >>Gebt die Quest Gestohlene Macht ab
    .target Nartok
step << Warlock
    #season 0
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Erlernt |T136197:0|t[Schattenblitz]
    .train 1454 >> Erlernt |T136126:0|t[Aderlass]
    .target Nartok
    .money <0.02
step << Warlock
    #season 0
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Erlernt |T136197:0|t[Schattenblitz]
    .target Nartok
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
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate >1.99
<< Horde
#name 7-13 Durotar
#version 1
#group RestedXP Horde 1-22
#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 13-20 Das Brachland

step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ukor|r
    .accept 2161 >>Akzeptiert die Quest Die Bürde eines Peons
    .target Ukor
step
    #completewith next
    .subzone 367 >>Reist ins Dorf Sen'Jin
step
    #xprate <1.5
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lar|r. Er patrouilliert ein bisschen
    .accept 786 >>Akzeptiert die Quest Vereitelung der Kolkaraggression
    .target Lar Prowltusk
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vel'rin|r, |cRXP_FRIENDLY_Vornal|r und |cRXP_FRIENDLY_Gadrin|r
    .accept 817 >>Akzeptiert die Quest Praktische Beute
    .target +Vel'rin Fang
    .goto Durotar,55.95,73.93
    .accept 818 >>Akzeptiert die Quest Ein geistvolles Getränk
    .target +Master Vornal
    .goto Durotar,55.94,74.40
    .turnin 805 >>Gebt die Quest Bericht erstatten in Sen'jin ab
    .accept 808 >>Akzeptiert die Quest Minshinas Schädel
    .accept 826 >>Akzeptiert die Quest Zalazane
    .accept 823 >>Akzeptiert die Quest Bericht an Orgnil
    .target +Master Gadrin
    .goto Durotar,55.94,74.72
step
    #completewith next
    .goto Durotar,56.16,74.43,8,0
    .goto Durotar,56.31,73.8,8 >> Betretet die große Hütte
step << Rogue
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_. Kauft|r |T132414:0|t[Beschwerte Wurfaxt] |cRXP_BUY_von ihr|r
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihr|r --Refreshing Spring Water (20)
    .collect 159,20,786,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihr|r --Refreshing Spring Water (10)
    .collect 159,10,786,1
    .target K'waii
    .money >0.001
    .money <0.005
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
    .collect 2495,1,786,1 --Collect Walking Stick (1)
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
    .collect 2494,1,786,1 --Collect Stiletto (1)
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
    .collect 2491,1,786,1 --Collect Large Axe (1)
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
    .collect 2490,1,786,1 --Collect Tomahawk (1)
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
    .collect 2506,1,786,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Legt die|r |T132414:0|t[Beschwerte Wurfaxt] an
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Legt den|r |T135145:0|t[Wanderstecken] an
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Legt die|r |T132401:0|t[Große Axt] an
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Legt das|r |T135421:0|t[Tomahawk] an
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
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
step << Warrior/Rogue
    #completewith TravelToTiragarde
    +|cRXP_WARN_Wirkt|r |T136025:0|t[Mineraliensuche] |cRXP_WARN_und baue jede Kupferader ab, die du findest, für|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r|cRXP_WARN_. Stellt|r |T135248:0|t[Wetzsteine] |cRXP_WARN_daraus her|r
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step << Warrior
    #xprate <2.1
    #season 2
    #loop
    .goto Durotar,50.10,79.24,0
    .goto Durotar,50.10,79.24,40,0
    .goto Durotar,47.74,80.35,40,0
    .goto Durotar,46.54,80.12,40,0
    >>Tötet |cRXP_ENEMY_Zwangsarbeiter der Kolkar|r und |cRXP_ENEMY_Kundschafter der Kolkar|r. Plündert sie für |cRXP_LOOT_Abgetrennter Zentaurenkopf|r
    .collect 207062,1 --Severed Centaur Head (1)
    .mob Kolkar Drudge
    .mob Kolkar Outrunner
    .train 403475,1
step
    #completewith MainIsle
    >>Tötet |cRXP_ENEMY_Kriecher|r und |cRXP_ENEMY_Makruras|r. Plündert sie für |cRXP_LOOT_Kriechersekret|r und |cRXP_LOOT_Augen|r
    .complete 818,2,4 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1,2 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #completewith MainIsle
    >>Tötet |cRXP_ENEMY_Durotar-Tiger|r. Plündert sie für |cRXP_LOOT_Fell|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #softcore
    #completewith MainIsle
    >>Sammelt die |cRXP_PICK_Schwanzpeitscher-Eier|r vom Boden
    >>|cRXP_WARN_Sie werden normalerweise von einem|r |cRXP_ENEMY_Blutkrallenschwanzpeitscher|r bewacht
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #label MainIsle
    .goto Durotar,66.94,84.41,150 >>Schwimmt zur Hauptinsel
    .isOnQuest 826
step
    #completewith ZalazaneKill1
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
    #label ZalazaneKill1
    .goto Durotar,67.4,87.8
    >>Tötet |cRXP_ENEMY_Zalazane|r. Plündert ihn für seinen |cRXP_LOOT_Kopf|r
    >>|cRXP_WARN_Spart euren|r |T136026:0|t[Erdschock] |cRXP_WARN_für die|r |T136052:0|t[Welle der Heilung] falls er sie wirkt << Shaman
    >>|cRXP_WARN_Spart euren|r |T132155:0|t[Solarplexus] |cRXP_WARN_auf, wenn er|r |T136052:0|t[Welle der Heilung] wirkt << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step << Mage
    #season 2
    .goto Durotar,67.4,87.8
    >>Tötet |cRXP_ENEMY_Zalazane|r. Plündert ihn für die |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: ENEGSG IERIFI|r]|r
    .collect 203753,1
    .mob Zalazane
    .train 401765,1
step << Mage
    #season 2
    .collect 211779,1 >>Ihr braucht ein |T135933:0|t[Verständnisamulett] von einem |cRXP_FRIENDLY_Reagenzienhändler|r, um den Gegenstand zu verwenden
    .train 401765 >>|cRXP_WARN_Benutzt die|r |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: ENEGSG IERIFI|r] |cRXP_WARN_um|r |T236227:0|t[Eisige Finger] zu erlernen
    .use 203753
step
    #completewith TrollsDone
    >>Tötet |cRXP_ENEMY_Durotar-Tiger|r. Plündert sie für |cRXP_LOOT_Fell|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #completewith TigerFur
    >>Tötet |cRXP_ENEMY_Zwergbrandungskriecher|r und |cRXP_ENEMY_Brandungskriecher|r. Plündert sie für |cRXP_LOOT_Kriechersekret|r
    >>Tötet |cRXP_ENEMY_Makruramuschelhaut|r und |cRXP_ENEMY_Makruraklacker|r. Plündert sie für ihre |cRXP_LOOT_Augen|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #softcore
    #completewith CrawlMakru
    >>Sammelt die |cRXP_PICK_Schwanzpeitscher-Eier|r vom Boden
    >>|cRXP_WARN_Sie werden normalerweise von einem|r |cRXP_ENEMY_Blutkrallenschwanzpeitscher|r bewacht
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #label TrollsDone
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
step << Priest
    #season 2
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
    >>Tötet die |cRXP_ENEMY_Voodootroll|r. Plündert sie für |T135975:0|t[|cRXP_FRIENDLY_Prophezeiung einer entweihten Zitadelle|r]
    .collect 205947,1 --Prophecy of a Desecrated Citadel (1)
    .mob Voodoo Troll
    .train 402852,1
step
    #label TigerFur
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
    >>Tötet |cRXP_ENEMY_Durotar-Tiger|r. Plündert sie für |cRXP_LOOT_Fell|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #label CrawlMakru
    #loop
    .goto Durotar,62.88,93.48,0
    .goto Durotar,59.48,86.33,0
    .goto Durotar,59.92,80.80,0
    .goto Durotar,57.90,78.13,0
    .goto Durotar,53.27,83.05,0
    .goto Durotar,62.88,93.48,50,0
    .goto Durotar,59.48,86.33,50,0
    .goto Durotar,59.92,80.80,50,0
    .goto Durotar,57.90,78.13,50,0
    .goto Durotar,53.27,83.05,50,0
    >>Tötet |cRXP_ENEMY_Zwergbrandungskriecher|r und |cRXP_ENEMY_Brandungskriecher|r. Plündert sie für |cRXP_LOOT_Kriechersekret|r
    >>Tötet |cRXP_ENEMY_Makruramuschelhaut|r und |cRXP_ENEMY_Makruraklacker|r. Plündert sie für ihre |cRXP_LOOT_Augen|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #softcore
    .goto Durotar,59.86,89.64,0
    .goto Durotar,59.51,83.64,0
    .goto Durotar,60.94,78.75,0
    .goto Durotar,63.54,74.33,0
    .goto Durotar,67.04,71.40,0
    .goto Durotar,59.86,89.64,40,0
    .goto Durotar,59.51,83.64,40,0
    .goto Durotar,60.94,78.75,40,0
    .goto Durotar,63.54,74.33,40,0
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
    #softcore
    #completewith next
    .goto Durotar,57.50,73.26,50,0
    .deathskip >> Sterbt und lasst euch beim |cRXP_FRIENDLY_Geistheiler|r wiederbeleben, oder lauft zurück
step
    #hardcore
    #completewith Zalazaneturnin
    .subzone 367 >>Reist ins Dorf Sen'Jin
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
step << Priest
    #season 2
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>Kniet vor dem |cRXP_PICK_Loaaltar|r und sprecht mit dem |cRXP_FRIENDLY_Schlangenloa|r um den |T136077:0|t[Meditation über die Loa] Effekt zu erhalten
    .train 402852,1
step << Priest
    #season 2
    #completewith TravelToTiragarde
    .aura 418459 >>|cRXP_WARN_Jetzt findet einen Untoten Priester mit einem Loa-Buff. Kniet vor ihm und er muss /beten für euch.|r
    .use 205947
    .train 402852 >>|cRXP_WARN_Benutzt die|r |T135975:0|t[|cRXP_FRIENDLY_Prophezeiung einer entweihten Zitadelle|r] |cRXP_WARN_um|r |T237570:0|t[Homunculi] zu lernen
    .itemcount 205947,1
step
    #completewith TravelToTiragarde
    +|cRXP_WARN_Bindet euren|r |T133728:0|t[Schwach leuchtender Schädel] |cRXP_WARN_und|r |T134712:0|t[Echt klebriger Leim]|cRXP_WARN_. Behaltet sie für Notfälle|r
step << Rogue
    #season 2
    .goto Durotar,51.82,58.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ba'so|r um |T134419:0|t[|cRXP_FRIENDLY_Rune der Verstümmelung|r] zu erhalten
    >>|cRXP_WARN_Er ist unsichtbar!|r
    .collect 203990,1 --Rune of Mutilation (1)
    .target Ba'so
    .skipgossip
    .itemcount 207098,1
    .train 400094,1
step << Rogue
    #season 2
    .train 400094 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Verstümmelung|r] |cRXP_WARN_zum lernen von|r |T132304:0|t[Verstümmeln]
    .use 203990
    .itemcount 203990,1
step
    #hardcore
    #completewith next
    .subzone 362 >>Reist nach Klingenhügel
step
    #hardcore
    #label Betrayers
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gar'thok|r
    >>|cRXP_WARN_Ihr könnt mit ihm von außen oder oben auf dem Bunker sprechen|r
    .accept 784 >>Akzeptiert die Quest Vernichtet die Verräter
    .target Gar'thok
step
    #hardcore
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Reist zum Turm
step
    #hardcore
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Reist den Turm hinauf zu Furl
step
    #hardcore
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Akzeptiert die Quest Akzeptiert Euer Schicksal
    .target Furl Scornbrow
step << Warrior/Rogue
    #hardcore
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Erlernt |T136248:0|t[Bergbau]
    >>|cRXP_WARN_So könnt ihr|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r finden |cRXP_WARN_von Erzvorkommen, um|r |T135248:0|t[Wetzsteine] herzustellen |cRXP_WARN_(+2 Waffenschaden für 30 Minuten)|r
    .target Krunn
step << Warrior/Rogue
    #hardcore
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Kauft eine|r |T134708:0|t[Spitzhacke] |cRXP_BUY_von|r |cRXP_BUY_ihm|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #hardcore
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Erlerne |T136241:0|t[Schmiedekunst]
    .target Dwukk
    .skill blacksmithing,1,1
step
    #softcore
    #xprate <1.5
    #label TravelToTiragarde
    .goto Durotar,59.20,58.38,60,0
    .subzone 372 >> Reist zur Burg Tiragarde
    >>|cRXP_WARN_Farmt Mobs auf dem Weg|r
    .isOnQuest 784
step
    #softcore
    #xprate >1.49
    #label TravelToTiragarde
    .goto Durotar,59.20,58.38,60,0
    .subzone 372 >> Reist zur Burg Tiragarde
    .isOnQuest 784
    .maxlevel 11
step
    #sticky
    #completewith AgedEnvelope
    +|cRXP_WARN_Seid vorsichtig, wenn|r |cRXP_ENEMY_Wachkommandant Zalaphil|r |cRXP_WARN_aktiv ist, da er ein seltener mob der Stufe 9 ist. Ihr müsst möglicherweise einen|r |T134829:0|t[Schwachen Heiltrank] |cRXP_WARN_verwenden, wenn ihr einen habt|r
    .unitscan Watch Commander Zalaphil
step
    #completewith Benedict
    #requires TravelToTiragarde
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >> Bewegt euch zum zweiten Stock der Burg
step << Priest
    #season 2
    #completewith ScrapsFinished
    >>Tötet |cRXP_ENEMY_Matrosen|r und |cRXP_ENEMY_Marinesoldaten|r. Plündert sie für |T136222:0|t[|cRXP_FRIENDLY_Erinnerung an einen dunklen Zweck|r]
    .collect 205940,1 --Memory of a Dark Purpose (1)
    .train 425216,1
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
    .collect 4882,1,830,1 --Collect Benedict's Key (1)
    .mob Lieutenant Benedict
    .maxlevel 11
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
    .maxlevel 11
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
    .maxlevel 11
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
    .maxlevel 11
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
    .maxlevel 11
step << Priest
    #season 2
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Tötet |cRXP_ENEMY_Matrosen|r und |cRXP_ENEMY_Marinesoldaten|r. Plündert sie für |T136222:0|t[|cRXP_FRIENDLY_Erinnerung an einen dunklen Zweck|r]
    .collect 205940,1 --Memory of a Dark Purpose (1)
    .train 425216,1
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
    .maxlevel 11
step << Priest
    #season 2
    #completewith next
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>Kniet vor dem |cRXP_PICK_Loaaltar|r und sprecht mit dem |cRXP_FRIENDLY_Schlangenloa|r um den |T136077:0|t[Meditation über die Loa] Effekt zu erhalten
    .skipgossip 208307,1
    .target Serpent Loa
    .train 425216,1
step << Priest
    #season 2
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_Benutzt die|r |T136222:0|t[|cRXP_FRIENDLY_Erinnerung an einen dunklen Zweck|r] |cRXP_WARN_zum Trainieren von|r |T237514:0|t[Pest der Leere]
step
    #softcore
    #completewith RazorTurnins1
    .goto Durotar,57.3,53.5,120,0
    .deathskip >> Sterbt am nördlichen Turm außerhalb von Burg Tiragarde und lasst euch beim |cRXP_FRIENDLY_Geistheiler|r wiederbeleben
step
    #hardcore
    #completewith next
    .subzone 362 >>Reist nach Klingenhügel
step
    #xprate <2.1
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Orgnil|r
    .turnin 823 >>Gebt die Quest Bericht an Orgnil ab
    .accept 806 >>Akzeptiert die Quest Dunkle Stürme
    .target Orgnil Soulscar
step
    #xprate >2.09
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Orgnil|r
    .turnin 823 >>Gebt die Quest Bericht an Orgnil ab
    .target Orgnil Soulscar
step
    #xprate <2.1
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Orgnil|r und |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 784 >>Gebt die Quest Vernichtet die Verräter ab
    .turnin 830 >>Gebt die Quest Die Befehle des Admirals ab
    .accept 831 >>Akzeptiert die Quest Die Befehle des Admirals << !Mage !Shaman
    .accept 837 >>Akzeptiert die Quest Übergriff
    .target Gar'Thok
    .isQuestComplete 784
    .isOnQuest 830
step
    #xprate <2.1
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Orgnil|r und |cRXP_FRIENDLY_Gar'Thok|r
    .accept 831 >>Akzeptiert die Quest Die Befehle des Admirals << !Mage !Shaman
    .accept 837 >>Akzeptiert die Quest Übergriff
    .target Gar'Thok
    .isQuestTurnedIn 830
step
    #xprate >2.09
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Orgnil|r und |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 784 >>Gebt die Quest Vernichtet die Verräter ab
    .turnin 830 >>Gebt die Quest Die Befehle des Admirals ab
    .accept 831 >>Akzeptiert die Quest Die Befehle des Admirals
    .target Gar'Thok
    .isQuestComplete 784
    .isOnQuest 830
step
    #xprate >2.09
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Orgnil|r und |cRXP_FRIENDLY_Gar'Thok|r
    .accept 831 >>Akzeptiert die Quest Die Befehle des Admirals
    .target Gar'Thok
    .isQuestTurnedIn 830
step
    .goto Durotar,51.09,42.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Torka|r
    .turnin 815 >>Gebt die Quest Zerbrecht ein paar Eier ab
    .target Cook Torka
    .isQuestComplete 815
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
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Legt die|r |T132414:0|t[Beschwerte Wurfaxt] an
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Legt den|r |T135145:0|t[Wanderstecken] an
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Legt die|r |T132401:0|t[Große Axt] an
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Toolboxes
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
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Legt den|r |T135499:0|t[Hornholz-Doppelbogen] an
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ghrawt|r. Kauft |T132382:0|t[Scharfe Pfeile] und einen |T134410:0|t[Mittleren Köcher] von ihm|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    --.collect 11362,1,6082,1 --Medium Quiver (1)
    .target Ghrawt
    --.money <0.1300
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ghrawt|r. Kauft |T132382:0|t[Scharfe Pfeile] von ihm|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    .target Ghrawt
    .itemcount 2515,<600 --Sharp Arrow (600)
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Grosk|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Kauft|r |T133974:0|t[Fleischschenkel] |cRXP_BUY_bei ihm|r << Rogue/Warrior
    .vendor >> Verkauft Müll
    .home >> Setzt euren Ruhestein in Klingenhügel
    .turnin 2161 >>Gebt die Quest Die Bürde eines Peons ab
    .target Innkeeper Grosk
    .bindlocation 362
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
    .collect 4496,1,825,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step << Shaman
    #xprate >1.49
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Trainiere deine Klassenfähigkeiten
    .accept 2983 >>Akzeptiert die Quest Ruf des Feuers
    .target Swart
    .isNotOnQuest 1522
step << Warrior
    #xprate >1.49
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarshaw|r
    .accept 1505 >>Akzeptiert die Quest Veteran Uzzek
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Tarshaw Jaggedscar
step << Warlock
    #xprate >1.49
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dhugru|r
    .accept 1506 >>Akzeptiert die Quest Gan'ruls Beschwörung
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Dhugru Gorelust
step << Warlock
    #xprate >1.49
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kitha|r und kauft |T133738:0|t[Feuerblitz Rang 2]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Priest
    #xprate >1.49
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tai'jin|r
    .accept 5654 >> Akzeptiert die Quest Verhexung der Schwäche << Troll
    .accept 5660 >> Akzeptiert die Quest Berührung der Schwäche << Undead
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Tai'jin
step << Rogue
    #xprate >1.49
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
    #loop
    .goto Durotar,51.65,56.51,0
    .goto Durotar,51.76,48.41,40,0
    .goto Durotar,51.70,50.23,40,0
    .goto Durotar,51.65,51.34,40,0
    .goto Durotar,51.80,53.18,40,0
    .goto Durotar,50.82,53.65,40,0
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
step
    #label ConscriptH
    #xprate >1.49
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Akzeptiert die Quest Freiwilliger der Horde
    .target Takrin Pathseeker
step
    #xprate <2.1
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
step << Warrior
    #season 2
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
    >>Tötet |cRXP_ENEMY_Stacheleber der Grimmhauer|r und |cRXP_ENEMY_Späher der Grimmhauer|r. Plündert sie für |cRXP_LOOT_Abgetrennter Stacheleberkopf|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .complete 837,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 837,2 --Razormane Scout (4)
    .mob +Razormane Scout
    .train 403475,1
step << Warrior/Shaman
    #xprate <2.1
    #completewith next
    .goto The Barrens,62.26,19.38,40 >> Reist zur Fernwacht
    .zoneskip The Barrens
step << Warrior/Shaman
    #xprate <2.1
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Gebt die Quest Freiwilliger der Horde ab
    .accept 842 >>Akzeptiert die Quest Crossroads-Wehrpflicht
    .target Kargal Battlescar
step
    #xprate >2.09
    #completewith next
    .goto The Barrens,62.26,19.38,40 >> Reist zur Fernwacht
    .zoneskip The Barrens
step
    #xprate >2.09
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Gebt die Quest Freiwilliger der Horde ab
    .accept 842 >>Akzeptiert die Quest Crossroads-Wehrpflicht
    .target Kargal Battlescar
step << Warrior
    #xprate >1.49
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uzzek|r
    .turnin 1505 >>Gebt die Quest Veteran Uzzek ab
    .accept 1498 >>Akzeptiert die Quest Weg der Verteidigung
    .target Uzzek
step << Shaman
    #xprate >1.49
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kranal|r
    .turnin 2983 >>Gebt die Quest Ruf des Feuers ab
    .accept 1524 >>Akzeptiert die Quest Ruf des Feuers
    .target Kranal Fiss
step << Shaman
    #xprate >1.49
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
    #xprate >1.49
    #label CallofFire3
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Gebt die Quest Ruf des Feuers ab
    .accept 1525 >>Akzeptiert die Quest Ruf des Feuers
    .target Telf Joolam
step << Warrior
    #xprate >1.49
    #loop
    .goto Durotar,43.19,24.34,0
    .goto Durotar,39.16,30.84,40,0
    .goto Durotar,39.23,28.38,40,0
    .goto Durotar,39.43,24.94,40,0
    .goto Durotar,41.39,24.28,40,0
    .goto Durotar,43.19,24.34,40,0
    >>Betretet Donnergrat und tötet die |cRXP_ENEMY_Blitzechse|r. Plündert sie für ihre |cRXP_ENEMY_Schuppen|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
step << !Warrior
    #xprate <2.1
    #completewith next
    .goto Durotar,41.66,25.68,20 >>Springt in den Donnergrat << !Hunter !Warlock
    .goto Durotar,41.66,25.68,20 >>|cRXP_WARN_Gebt euren|r |T136218:0|t[Wichtel] |cRXP_WARN_frei indem ihr auf den Einheitenrahmen und dann auf freigeben klickt |r << Warlock
    .goto Durotar,41.66,25.68,20 >>|cRXP_WARN_Wirkt|r |T136095:0|t[Tier freigeben] |cRXP_WARN_und springt dann in Donnergrat|r << Hunter
step
    #xprate <2.1
    #softcore
    .goto Durotar,42.13,26.67
    >>Tötet |cRXP_ENEMY_Fizzle Dunkelsturm|r und plündert ihn für seine |cRXP_LOOT_Klaue|r
    >>|cRXP_WARN_Passt auf. Tötet die patrouillierenden|r |cRXP_ENEMY_Fanatiker der Burning Blade|r |cRXP_WARN_und die|r |cRXP_ENEMY_Blitzechse|r |cRXP_WARN_hinten, bevor ihr ihn angreift|r
    >>|cRXP_WARN_Zieht ihn rückwärts zu den|r |cRXP_ENEMY_Donnerechsen|r |cRXP_WARN_die ihr gerade besiegt habt. Andernfalls könnt ihr versehentlich zusätzliche Burning Blade Gegner anziehen.|r
    >>|cRXP_WARN_Habt keine Angst davor, für die |cRXP_LOOT_Klaue|r zu sterben, da ihr danach beim |cRXP_FRIENDLY_Geistheiler|r wieder aufleben werdet|r
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
step
    #xprate <2.1
    #hardcore
    .goto Durotar,42.13,26.67
    >>Tötet |cRXP_ENEMY_Fizzle Dunkelsturm|r und plündert ihn für seine |cRXP_LOOT_Klaue|r
    >>|cRXP_WARN_Passt auf. Tötet die patrouillierenden|r |cRXP_ENEMY_Fanatiker der Burning Blade|r |cRXP_WARN_und die|r |cRXP_ENEMY_Blitzechse|r |cRXP_WARN_hinten, bevor ihr ihn angreift|r
    >>|cRXP_WARN_Zieht ihn rückwärts zu den|r |cRXP_ENEMY_Donnerechsen|r |cRXP_WARN_die ihr gerade besiegt habt. Andernfalls könnt ihr versehentlich zusätzliche Burning Blade Gegner anziehen.|r
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
step
    #xprate <2.1
    #softcore
    .goto Durotar,47.04,17.58
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .isQuestComplete 806
step
    #xprate <2.1
    #hardcore
    .goto Durotar,39.20,32.02,60 >> Kämpft euch den Weg hinaus aus Donnergrat
    .isQuestComplete 806
step
    #xprate <2.1
    #completewith next
    .goto Durotar,46.37,22.94,50 >> Reist zu Rezlak
step
    #xprate <2.1
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Akzeptiert die Quest Wind in der Wüste
    .target Rezlak
step << Warrior
    #xprate <2.1
    #season 2
    #completewith next
    >>Tötet |cRXP_ENEMY_Harpyie der Staubschwingen|r. Plündert sie für |cRXP_LOOT_Abgetrennter Harpyienkopf|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
step
    #xprate <2.1
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
step << Warrior
    #xprate <2.1
    #season 2
    #loop
    .goto Durotar,53.98,23.70,0
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70,40,0
    >>Tötet |cRXP_ENEMY_Harpyie der Staubschwingen|r. Plündert sie für |cRXP_LOOT_Abgetrennter Harpyienkopf|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
step
    #xprate <2.1
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Gebt die Quest Wind in der Wüste ab
    .target Rezlak
step << Shaman
    #xprate <2.1
    #completewith next
    .goto Durotar,49.42,18.47,40,0
    .goto Durotar,51.35,16.76,40,0
    .goto Durotar,54.65,19.02,40,0
    .goto Durotar,55.86,28.31,40,0
    .subzone 371 >>Reist zur Staubwindhöhle
    >>|cRXP_WARN_Reist nach Osten um die Hügel herum, um die Höhle zu erreichen. Folgt dem Pfeil|r
step << Shaman
    #xprate <2.1
    #loop
    .goto Durotar,53.18,29.15,0
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
step << Mage
    #xprate <2.1
    #season 2
    #loop
    .goto Durotar,52.93,9.01,0
    .goto Durotar,54.96,9.69,30,0
    .goto Durotar,54.69,8.73,30,0
    .goto Durotar,53.78,9.14,30,0
    .goto Durotar,52.93,9.01,30,0
    >>Tötet |cRXP_ENEMY_Burning Blade Orks|r in der Knochenhöhle. Plündert sie für |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: DEELFANE LMEBM|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .train 401768,1
    --Living Flame Rune
step << Warrior/Shaman
    #xprate >2.09
    #completewith next
    .goto The Barrens,62.26,19.38,40 >> Reist zur Fernwacht
    .zoneskip The Barrens
step << Warrior
    #xprate >2.09
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Gebt die Quest Weg der Verteidigung ab
    .accept 1502 >>Akzeptiert die Quest Thun'grim Firegaze
    .target Uzzek
step
    #xprate >2.09
    #softcore
    #completewith
    .goto The Barrens,50.72,32.61
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .subzoneskip 380
step
    #xprate >2.09
    #hardcore
    #completewith
    .goto The Barrens,52.34,29.27,150 >> Reist zum Wegekreuz
step
    #xprate >2.09
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Akzeptiert die Quest Vereitelung der Angriffe
    .accept 5041 >>Akzeptiert die Quest Vorräte für Crossroads
    .target Thork
step
    #xprate >2.09
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Gebt die Quest Wegekreuz-Wehrpflicht ab
    .accept 844 >>Akzeptiert die Quest Ebenenschreiter-Bedrohung
    .target Sergra Darkthorn
step
    #xprate >2.09
    .goto The Barrens,52.62,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Akzeptiert die Quest Fleisch für Orgrimmar
    .target Zargh
step
    #xprate >2.09
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Boorand|r
    .home >> Setzt euren Ruhestein im Wegekreuz
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .subzoneskip 380,1
step
    #xprate >2.09
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .fp The Crossroads >> Erlernt die Flugroute beim Wegekreuz
    .turnin 6365 >>Gebt die Quest Fleisch für Orgrimmar ab
    .accept 6384 >>Akzeptiert die Quest Flug nach Orgrimmar
    .target Devrak
step
    #xprate >2.09
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >>Fliege nach Orgrimmar
    .target Devrak
    .zoneskip Orgrimmar

    --Mage/Shaman dont need to go ORG 100% route
step
    #xprate >2.09
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit|r|cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Gebt die Quest Flug nach Orgrimmar ab
    .accept 6385 >>Akzeptiert die Quest Doras der Windreitermeister
    .target Innkeeper Gryshka
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Kauft|r |T135419:0|t[Scharfe Wurfaxt] |cRXP_BUY_von ihm|r
    .collect 3135,200 --Sharp Throwing Axe (200)
    .vendor >> Verkaufe deinen trash
    .target Trak'gen
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #optional
    #completewith AdmiralTurnin
    +|cRXP_WARN_Legt |T135421:0|t[Scharfe Wurfaxt] an|r
    .use 3135
    .itemcount 3135,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step
    #xprate >2.09
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |r |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >> Gebt die Quest Doras der Windreitermeister ab
    .accept 6386 >> Akzeptiert die Quest Kehrt nach Crossroads zurück
    .target Doras
step << Warlock/Hunter/Rogue/Priest/Warrior
    #xprate <2.1
    #season 2 << Warrior
    #completewith AdmiralTurnin
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Betretet Orgrimmar
    .zoneskip Orgrimmar
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5654 >>Gebt die Quest Verhexung der Schwäche ab
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Ur'kyo
    .isOnQuest 5654
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5652 >>Gebt die Quest Verhexung der Schwäche ab
    .trainer >>Trainiere deine Klassenfähigkeiten
    .target Ur'kyo
step << Rogue
    .goto Orgrimmar,42.75,53.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Therzok|r
	.accept 1963 >> Akzeptiert die Quest Die Shattered-Hand << Orc Rogue/Troll Rogue
    .target Therzok
step << Rogue
    .goto Orgrimmar,45.64,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Kareth|r|cRXP_BUY_. Kauft ein oder zwei|r |T135640:0|t[Jambiya] |cRXP_BUY_von ihm|r
    .collect 2207,1 --Collect Jambiya (1)
    .money <0.2390
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Kareth
step << Rogue
    #optional
    #completewith RazorTurnins2
    +|cRXP_WARN_Legt das|r |T135640:0|t[Jambiya] an
    .use 2207
    .itemcount 2207,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Rogue
    #season 2
    .goto Orgrimmar,55.87,44.89
    >>Sammelt |cRXP_PICK_Verstaubte Kiste|r für |T134419:0|t[|cRXP_FRIENDLY_Rune der Präzision|r]
    >>|cRXP_WARN_Sie befindet sich in Der Gasse im oberen Stock|r
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Präzision|r] |cRXP_WARN_zum Trainieren von|r |T135610:0|t[Zwischen die Augen]
    .use 204174
    .itemcount 204174,1
step << Warlock/Hunter/Rogue/Priest/Warrior
    #xprate <2.1
    #season 2 << Warrior
    #label AdmiralTurnin
    .goto Orgrimmar,32.28,35.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Gebt die Quest Die Befehle des Admirals ab
    .target Nazgrel
step
    #xprate >2.09
    #label AdmiralTurnin
    .goto Orgrimmar,32.28,35.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Gebt die Quest Die Befehle des Admirals ab
    .target Nazgrel
step << Warlock
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Akzeptiert die Quest Verborgene Feinde
    .target Thrall
step << Shaman/Hunter
    #season 2
    .goto Orgrimmar,38.923,38.398
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Zor Einbaum|r
    .train 409580 >>|cRXP_WARN_Kauft und benutzt die|r |T133739:0|t|cRXP_LOOT_[Abhandlung über das Löwenherz]|r |cRXP_WARN_um|r |T132185:0|t[Löwenherz] zu erlernen << Hunter
    .train 425336 >>|cRXP_WARN_Kauft und benutzt die|r |T133747:0|t|cRXP_LOOT_[Offenbarung der schamanistischer Wut]|r |cRXP_WARN_um|r |T136088:0|t[Schamanistische Wut]  zu erlernen << Shaman
    .use 226401 << Hunter -- Treatise on the Heart of the Lion
    .use 226402 << Shaman -- Revelation of Shamanistic Rage
    .target Zor Lonetree
    .xp <10,1
    .money <0.5
step << Warrior
    #season 2
    #completewith next
    .goto Orgrimmar,57.40,53.93,-1
    .goto Orgrimmar,58.05,51.40,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zamja|r und |cRXP_FRIENDLY_Gru'ark|r
    +Tötet |cRXP_ENEMY_Gru'ark|r wenn er feindselig wird
    .target Zamja
    .target Gru'ark
    .skipgossip
    --Gossipoption
step << Warrior
    #season 2
    .goto Orgrimmar,58.52,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zamja|r
    >>Nehmt die |T134419:0|t[|cRXP_FRIENDLY_Rune des rasenden Angriffs|r] von ihr
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Zamja
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Rasenden Angriffs|r]
    .use 204716
    .itemcount 204716,1
step << Troll Warrior
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hanashi|r
    .train 227 >>Erlernt Stäbe
    .target Hanashi
    .money <0.100
step << Troll Warrior
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Kauft einen|r |T135154:0|t[Hirtenstab] |cRXP_BUY_von ihm|r
    .collect 854,1,1502,1 --Collect Quarter Staff (1)
    .money <0.3022
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Zendo'jian
    .train 227,3
step << Troll Warrior
    #optional
    #completewith RazorTurnins2
    +Rüstet |T135154:0|tden|cRXP_WARN_ [Hirtenstab]|r aus
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .train 227,3
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
    .train 24547 >>Erlernt eure  Begleiterfähigkeiten
    .target Xao'tsu
step << Hunter
    #season 0
    #completewith RazorTurnins2
    +|cRXP_WARN_Legt|r |T132162:0|t[Wildtierausbildung]|cRXP_WARN_(unter dem Allgemein-Reiter),|r |T132163:0|t[Tier wiederbeleben]|cRXP_WARN_, und|r |T132165:0|t[Tier füttern] |cRXP_WARN_auf eure Aktionsleisten|r
    >>|cRXP_WARN_Erinnert euch daran, euer tier zu trainieren, wenn es Trainingspunkte für|r |T132162:0|t[Wildtierausbildung] erhält
step << Hunter
    #season 2
    #completewith End
    +|cRXP_WARN_Legt|r |T132162:0|t[Wildtierausbildung]|cRXP_WARN_(unter dem Allgemein-Reiter),|r |T132163:0|t[Tier wiederbeleben]|cRXP_WARN_, und|r |T132165:0|t[Tier füttern] |cRXP_WARN_auf eure Aktionsleisten|r
    >>|cRXP_WARN_Erinnert euch daran, euer tier zu trainieren, wenn es Trainingspunkte für|r |T132162:0|t[Wildtierausbildung] erhält
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Kauft einen|r |T135499:0|t[Laminierter Doppelbogen] |cRXP_BUY_von ihm|r
    .collect 2507,1,835,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Zendo'jian
step << Hunter
    #optional
    #completewith RazorTurnins2
    +|cRXP_WARN_Legt den|r |T135499:0|t[Laminierter Doppelbogen] |cRXP_WARN_wenn ihr auf Stufe 11 seid an|r
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp <11,1
step << Hunter
    #optional
    #completewith RazorTurnins2
    +|cRXP_WARN_Legt |r |T135499:0|t[Laminierter Doppelbogen] an
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp >11,1
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
    .goto Durotar,47.05,17.58
    .deathskip >> Sterbt und spawnt beim |cRXP_FRIENDLY_Geistheiler|r
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
    .deathskip >> Sterbt und spawnt beim |cRXP_FRIENDLY_Geistheiler|r
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
    .destroy 14544 >>|cRXP_WARN_Zerstört|r |T134417:0|tInsignien des Lieutenants] |cRXP_WARN_da ihr es nicht mehr braucht|r
step << Shaman/Mage/Hunter
    #xprate >2.09
    #completewith next
    .goto Durotar,45.54,12.14
    .zone Durotar >>Verlasst Orgrimmar
step << Hunter
    #xprate >2.09
    #completewith next
    #loop
    .goto Durotar,43.73,16.42,0
    .goto Durotar,43.73,16.42,50,0
    .goto Durotar,41.52,20.06,50,0
    .goto Durotar,38.43,17.65,50,0
    .cast 1515 >>Zähmt einen |cRXP_ENEMY_Siechstachelskorpid|r
    >>|cRXP_WARN_Damit könnt ihr Folgendes trainieren:|r |T132140:0|t[Klaue Rang 2]
    .mob Venomtail Scorpid
    .train 16828,1 --Claw rank 2
step << Shaman
    #xprate >2.09
    #completewith next
    .goto Durotar,51.35,16.76,40,0
    .goto Durotar,54.65,19.02,40,0
    .goto Durotar,55.86,28.31,40,0
    .subzone 371 >>Reist zu Staubwindhöhle
    >>|cRXP_WARN_Reist nach Osten um die Hügel herum, um die Höhle zu erreichen. Folgt dem Pfeil|r
step << Shaman
    #xprate >2.09
    #loop
    .goto Durotar,53.18,29.15,0
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
step << Mage
    #xprate >2.09
    #season 2
    .goto Durotar,52.93,9.01,0
    .goto Durotar,54.96,9.69,30,0
    .goto Durotar,54.69,8.73,30,0
    .goto Durotar,53.78,9.14,30,0
    .goto Durotar,52.93,9.01,30,0
    >>Tötet |cRXP_ENEMY_Burning Blade Orks|r in der Knochenhöhle. Plündert sie für |T134939:0|t[|cRXP_FRIENDLY_Zaubernotizen: DEELFANE LMEBM|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .train 401768,1
    --Living Flame Rune
step
    #xprate >2.09
    .hs >> Ruhestein nach Das Wegekreuz
    .use 6948
    .subzoneskip 380
    .bindlocation 380,1
    .cooldown item,6948,>0
step
    #xprate >2.09
    .goto Orgrimmar,45.12,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Doras|r
    .fly Crossroads >> Fliege nach Das Wegekreuz
    .target Doras
    .subzoneskip 380
    .cooldown item,6948,<0
step
    #xprate <2.1
    #completewith RazorTurnins2
    .hs >> Benutzt euren Ruhestein zum Klingenhügel
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
step
    #xprate <2.1
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Grosk|r
    .vendor >> Verkauft Müll
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Kauft|r |T133974:0|t[Fleischschenkel] |cRXP_BUY_bei ihm|r << Rogue/Warrior
    .collect 1179,15,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (15)
    .collect 2287,15,818,1 << Rogue/Warrior --Haunch of Meat (15)
    .target Innkeeper Grosk
    .money <0.0375
step << Warrior
    #xprate <2.1
    #season 2
    .goto Durotar,53.14,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vahi|r
    >>Gebt die |cRXP_LOOT_Köpfe|r, die ihr gesammelt habt, im Austausch für die |T134455:0|t[Runenfragmente] ab
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vahi Bonesplitter
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
step
    #xprate <2.1
    #label RazorTurnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orgnil|r und |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 806 >>Gebt die Quest Dunkle Stürme ab
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .turnin 837 >>Gebt die Quest Übergriff ab
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step << Warrior
    #xprate <2.1
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >> Trainiere deine Klassenfähigkeiten
    .target Tarshaw Jaggedscar
    .xp <12,1
step << Shaman
    #xprate <2.1
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Trainiere deine Klassenfähigkeiten
    .target Swart
    .xp <12,1
step << Hunter
    #xprate <2.1
    #completewith next
    .goto Durotar,36.29,47.38,0
    .goto Durotar,36.29,52.09,0
    .goto Durotar,36.29,47.38,40,0
    +Zähmt einen |cRXP_ENEMY_Siechstachelskorpid|r
    >>|cRXP_WARN_Damit könnt ihr Folgendes trainieren:|r |T132140:0|t[Klaue Rang 2]
    .mob Venomtail Scorpid
    .train 16828,1 --Claw rank 2
step
    #xprate <2.1
    #label FarWatchPost
    .goto The Barrens,62.26,19.38,40 >> Reist zur Fernwacht
    .zoneskip The Barrens
step
    #xprate <2.1
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Gebt die Quest Freiwilliger der Horde ab
    .accept 842 >>Akzeptiert die Quest Crossroads-Wehrpflicht
    .target Kargal Battlescar
step << Warrior
    #xprate <2.1
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Gebt die Quest Weg der Verteidigung ab
    .accept 1502 >>Akzeptiert die Quest Thun'grim Firegaze
    .target Uzzek
step
    #optional
    #label End
]])
