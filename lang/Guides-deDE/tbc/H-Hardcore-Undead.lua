if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#tbc
#group RXP TBC Überlebenskunst Dungeonführer (H)
<< Horde
#name 1-6 Tirisfal
#version 7
#subgroup RXP TBC Survival Guide 1-30
#defaultfor Scourge
#next 6-10 Eversong Woods


step << !Undead
    #completewith next
    +|cRXP_WARN_Ihr habt eine Anleitung für Untote ausgewählt. Es wird empfohlen, dass ihr die gleiche Startzone wählt, in der ihr startet|r
step
    #completewith Zombies
	.destroy 6948 >> Zerstört |T134414:0|t[Ruhestein] aus eurer Tasche, da er nicht mehr benötigt wird
step
    #completewith next
    .goto Tirisfal Glades,30.04,72.78,8,0
    .goto Tirisfal Glades,30.27,72.78,8,0
    .goto Tirisfal Glades,30.22,71.65,10 >> Lauft aus der Gruft hinauf zu |cRXP_FRIENDLY_Mordo|r
step
    .goto Tirisfal Glades,30.22,71.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mordo|r
    .accept 363 >> Akzeptiert die Quest Unsanftes Erwachen
    .target Undertaker Mordo
step << Warrior/Warlock/Priest/Mage
    #completewith Vendor
    .goto Tirisfal Glades,30.70,69.28,0 << Warrior/Warlock
    .goto Tirisfal Glades,29.92,70.30,40,0
    .goto Tirisfal Glades,30.70,69.28,40,0
    .goto Tirisfal Glades,29.18,68.94,40,0 << Priest/Mage
    .goto Tirisfal Glades,29.10,67.66,40,0 << Priest/Mage
    .goto Tirisfal Glades,30.19,65.32,40,0 << Priest/Mage
    +|cRXP_WARN_Tötet |cRXP_ENEMY_Junger Aasfresser|r und |cRXP_ENEMY_Nachtsauger|r. Plündert sie, bis ihr Gegenstände im Wert von 60 Kupfer habt (einschließlich der rüstung von Euch)|r << Mage
    +|cRXP_WARN_Tötet |cRXP_ENEMY_Junger Aasfresser|r und |cRXP_ENEMY_Nachtsauger|r. Plündert sie, bis ihr Gegenstände im Wert von 50 Kupfer habt (einschließlich der rüstung von Euch)|r << Priest
    +|cRXP_WARN_Tötet |cRXP_ENEMY_Junger Aasfresser|r und |cRXP_ENEMY_Nachtsauger|r. Plündert sie, bis ihr Gegenstände im Wert von 10 Kupfer habt (einschließlich der rüstung von Euch)|r << Warrior/Warlock
    .mob Young Scavenger
    .mob Duskbat
    .money >0.01
step << Warrior/Priest/Mage
    #completewith Training1
    .goto Tirisfal Glades,32.22,65.64,8 >> Geht ins Gebäude
step << Priest/Mage
    #label Vendor
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    .vendor >> Verkauft Müll
	.collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
step << Warlock/Mage
    #sticky
    #label Piercing
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Venya|r und |cRXP_FRIENDLY_Sarvis|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sarvis|r << Mage
    .accept 1470 >>Akzeptiert die Quest Der zerrissene Schleier << Warlock
    .goto Tirisfal Glades,30.98,66.41,0,0 << Warlock
    .turnin 363 >> Gebt die Quest Unsanftes Erwachen ab
    .accept 364 >> Akzeptiert die Quest Die Hirnlosen
    .goto Tirisfal Glades,30.84,66.20,0,0
    .target Venya Marthand
    .target Shadow Priest Sarvis
step << Warlock/Mage
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elreth|r
    .accept 376 >> Akzeptiert die Quest Die Verdammten
    .goto Tirisfal Glades,30.86,66.05
    .target Shadow Priest Sarvis
    .target Novice Elreth
    .xp <2,1
step << Mage
    #requires Percing
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Isabella|r
    .train 1459 >> Erlernt |T135932:0|t[Arkane Intelligenz]
    .target Isabella
step << Warlock
    #label Vendor
    .goto Tirisfal Glades,30.81,66.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kayla|r
    .vendor >>Verkauft Müll
    .target Kayla Smithe
    .money >0.1
step << Warlock
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maximillion|r
    .train 348 >>Erlernt |T135817:0|t[Feuerbrand]
    .target Maximillion
step << !Warlock !Mage
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sarvis|r
    .turnin 363 >> Gebt die Quest Unsanftes Erwachen ab
    .accept 364 >> Akzeptiert die Quest Die Hirnlosen
    .target Shadow Priest Sarvis
step << !Warlock !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elreth|r
    .accept 376 >> Akzeptiert die Quest Die Verdammten
    .goto Tirisfal Glades,30.86,66.05
    .target Shadow Priest Sarvis
    .target Novice Elreth
    .xp <2,1
step << Warrior
    #completewith next
    #label Vendor
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archibald|r
    .vendor >> Verkauft Müll
    .target Archibald Kava
    .money >0.1
step << Warrior
    #label Training1
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dannal|r
    .train 6673 >>Erlernt |T132333:0|t[Schlachtruf]
    .target Dannal Stern
step << Warlock
    #requires Piercing
    #loop
    .goto Tirisfal Glades,31.82,61.48,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    .goto Tirisfal Glades,31.82,61.48,30,0
    >>Tötet |cRXP_ENEMY_Klappernde Skelette|r. Plündert sie für |cRXP_LOOT_Schädel eines klappernden Skeletts|r
    .complete 1470,1 --Rattlecage Skull (3)
    .mob Rattlecage Skeleton
step << Warlock
    #completewith next
    +|cRXP_WARN_Tötet |cRXP_ENEMY_Hirnloser Zombie|r und |cRXP_ENEMY_Elender Zombie|r. Plündert sie, bis ihr 25 Kupfer wert an Händler-Gegenständen (einschließlich eurer Rüstung) habt|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0025
step << Warlock
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
	.collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .target Joshua Kien
    .isOnQuest 1470
step << Warlock
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.98,66.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Venya|r
    .turnin 1470 >>Gebt die Quest Der zerrissene Schleier ab
    .target Venya Marthand
step << Warlock
    #completewith next
    .cast 688 >>|cRXP_WARN_Wirkt|r |T136218:0|t[Wichtel beschwören]
step
    #label Zombies
    #requires Piercing << Warlock/Mage
    #loop
    .goto Tirisfal Glades,31.72,63.98,0
	.goto Tirisfal Glades,31.72,63.98,40,0
	.goto Tirisfal Glades,30.69,63.88,40,0
	.goto Tirisfal Glades,30.90,62.20,40,0
	.goto Tirisfal Glades,30.73,61.66,40,0
	.goto Tirisfal Glades,31.14,61.41,40,0
	.goto Tirisfal Glades,31.80,61.83,40,0
	.goto Tirisfal Glades,32.85,63.02,40,0
	.goto Tirisfal Glades,32.90,63.54,40,0
	.goto Tirisfal Glades,33.41,63.06,40,0
	.goto Tirisfal Glades,33.75,62.86,40,0
	.goto Tirisfal Glades,33.51,63.82,40,0
	.goto Tirisfal Glades,33.55,64.57,40,0
	.goto Tirisfal Glades,33.29,64.96,40,0
    >>Tötet |cRXP_ENEMY_Hirnloser Zombie|r und |cRXP_ENEMY_Elender Zombie|r
    .complete 364,1 --Kill Mindless Zombie (x8)
    .mob +Mindless Zombie
    .complete 364,2 --Kill Wretched Zombie (x8)
    .mob +Wretched Zombie
step << Mage/Warlock/Priest
    #completewith Vendor2
    +|cRXP_WARN_Tötet |cRXP_ENEMY_Hirnloser Zombie|r und |cRXP_ENEMY_Elender Zombie|r. Plündert sie, bis ihr 33 Kupfer wert an Händler-Gegenständen (einschließlich eurer Rüstung) habt|r
    .mob Mindless Zombie
    .mob Wretched Zombie
    .money >0.0033
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .vendor >> Verkauft Müll
    .target Joshua Kien
    .isOnQuest 364
    .money <0.0050
    .itemcount 159,<10
 step << Mage/Warlock/Priest
    #label Vendor2
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    .collect 159,5,383,1 --Collect Refreshing Spring Water (5)
    .vendor >> Verkauft Müll
    .target Joshua Kien
    .isOnQuest 364
    .money >0.0050
    .itemcount 159,<5
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sarvis|r und |cRXP_FRIENDLY_Elreth|r << !Warlock !Mage !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r, und |cRXP_FRIENDLY_Maximillion|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r, und |cRXP_FRIENDLY_Isabella|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sarvis|r, |cRXP_FRIENDLY_Elreth|r, und |cRXP_FRIENDLY_Duesten|r << Priest
    .turnin 364 >> Gebt die Quest Die Hirnlosen ab
    .accept 3095 >> Akzeptiert die Quest Einfache Rolle << Warrior
    .accept 3096 >> Akzeptiert die Quest Verschlüsselte Rolle << Rogue
    .accept 3097 >> Akzeptiert die Quest Geheiligte Rolle << Priest
    .accept 3098 >> Akzeptiert die Quest Glyphen-Rolle << Mage
    .accept 3099 >> Akzeptiert die Quest Besudelte Rolle << Warlock
    .accept 3901 >> Akzeptiert die Quest Klappernde Skelette
    .target +Shadow Priest Sarvis
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .accept 376 >> Akzeptiert die Quest Die Verdammten
    .target +Novice Elreth
    .goto Tirisfal Glades,30.86,66.05
    .turnin 3099 >> Gebt die Quest Besudelte Rolle ab << Warlock
    .goto Tirisfal Glades,30.91,66.34 << Warlock
    .target +Maximillion << Warlock
    .target +Isabella << Mage
    .turnin 3098 >> Gebt die Quest Glyphenrolle ab << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .turnin 3097 >> Gebt die Quest Geheiligte Rolle ab << Priest
    .target +Dark Cleric Duesten << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.23,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    .collect 159,10,383,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
    .isOnQuest 364
step
    #loop
    .goto Tirisfal Glades,29.21,66.68,0
    .goto Tirisfal Glades,29.21,66.68,40,0
    .goto Tirisfal Glades,29.48,65.70,40,0
    .goto Tirisfal Glades,29.60,64.04,40,0
    .goto Tirisfal Glades,29.67,63.39,40,0
    .goto Tirisfal Glades,30.09,61.51,40,0
    .goto Tirisfal Glades,30.97,59.66,40,0
    .goto Tirisfal Glades,31.61,58.57,40,0
    .goto Tirisfal Glades,32.07,57.74,40,0
    .goto Tirisfal Glades,32.85,58.35,40,0
    .goto Tirisfal Glades,34.32,56.79,40,0
    >>Tötet |cRXP_ENEMY_Junger Aasfresser|r und |cRXP_ENEMY_Struppiger Aasfresser|r. Plündert sie für |cRXP_LOOT_Aasfressertatze|r
    >>Tötet |cRXP_ENEMY_Nachtsauger|r und |cRXP_ENEMY_Räudiger Nachtsauger|r. Plündert sie für |cRXP_LOOT_Nachtsaugerflügel|r
    >>|cRXP_WARN_Vermeidet wenn möglich |cRXP_ENEMY_Räudiger Nachtsauger|r, da sie viel zäher zu töten sind als |cRXP_ENEMY_Nachtsauger|r|r
    .complete 376,1 --Collect Scavenger Paw (x6)
    .mob +Young Scavenger
    .mob +Ragged Scavenger
    .complete 376,2 --Collect Duskbat Wing (x6)
    .mob +Duskbat
    .mob +Mangy Duskbat
step
    #loop
    .goto Tirisfal Glades,31.82,61.48,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    .goto Tirisfal Glades,31.82,61.48,30,0
    >>Tötet |cRXP_ENEMY_Klapperndes Skelett|r
    .complete 3901,1 --Kill Rattlecage Skeleton (12)
    .mob Rattlecage Skeleton
step
    #optional
    #loop
    .goto Tirisfal Glades,31.82,61.48,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    .goto Tirisfal Glades,31.82,61.48,30,0
    .xp 3+940 >>Farmt bis 940+/1400XP << Warrior/Rogue
    .xp 3+980 >>Farmt bis 980+/1400xp << !Warrior !Rogue
    .mob Mindless Zombie
    .mob Wretched Zombie
step << Mage/Warlock/Priest
    .goto Tirisfal Glades,32.25,65.59,8,0
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    >>|cRXP_WARN_Fallt NICHT unter 1 Silber|r << Mage/Warlock/Priest
    .vendor >> Verkauft Müll
    .target Joshua Kien
    .money >0.1
    .isOnQuest 3901
    .itemcount 159,<20
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sarvis|r und |cRXP_FRIENDLY_Elreth|r
    .turnin 3901 >> Gebt die Quest Klappernde Skelette ab
    .target +Shadow Priest Sarvis
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.84,66.20
    .turnin 376 >> Gebt die Quest Die Verdammten ab
    .accept 6395 >> Akzeptiert die Quest Marlas letzter Wunsch
    .target +Novice Elreth
    .goto Tirisfal Glades,30.86,66.05
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duesten|r
    .train 589 >> Trainiere deine Klassenfähigkeiten
    .target Dark Cleric Duesten
    .money <0.021
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duesten|r
    .train 2052 >> Erlernt |T135929:0|t[Geringes Heilen] (Rang 2)
    .train 589 >> Erlernt |T136207:0|t[Schattenwort: Schmerz]
    .target Dark Cleric Duesten
    .money <0.02
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duesten|r
    .train 1243 >> Erlernt |T135987:0|t[Machtwort: Seelenstärke]
    .train 589 >> Erlernt |T136207:0|t[Schattenwort: Schmerz]
    .target Dark Cleric Duesten
    .money <0.011
step << Priest
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duesten|r
    .train 589 >> Erlernt |T136207:0|t[Schattenwort: Schmerz]
    .target Dark Cleric Duesten
    .money <0.01
step << Warlock
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maximillion|r
    .train 172 >> Erlernt |T136118:0|t[Verderbnis]
    .target Maximillion
step << Mage
    .goto Tirisfal Glades,30.94,66.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Isabella|r
    .train 116 >> Erlernt |T135846:0|t[Frostblitz]
    .target Isabella
step
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Todeswache Saltain|r und |cRXP_FRIENDLY_Exekutor Arren|r
    .accept 3902 >> Akzeptiert die Quest Beutesuche in Deathknell
    .goto Tirisfal Glades,31.61,65.62
    .target +Deathguard Saltain
    .accept 380 >> Akzeptiert die Quest Nachtweber
    .goto Tirisfal Glades,32.15,66.01
    .target +Executor Arren
step << Rogue/Warrior
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archibald|r
    .vendor >> Verkauft Müll
    .target Archibald Kava
    .money >0.1
    .isOnQuest 3095 << Warrior
    .isOnQuest 3096 << Rogue
step << Warrior
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Gebt die Quest Einfache Rolle ab
    .train 100 >> Erlernt |T132337:0|t[Sturmangriff]
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Dannal Stern
    .money <0.02
 step << Warrior
    #label Training2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >> Gebt die Quest Einfache Rolle ab
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .target Dannal Stern
    .money <0.01
step << Rogue
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_David|r
    .turnin 3096 >> Gebt die Quest Verschlüsselte Rolle ab
    .train 53 >> Erlernt |T132090:0|t[Meucheln]
    .money <0.04
    .target David Trias
step << Rogue
    #label Training2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_David|r
    .turnin 3096 >> Gebt die Quest Verschlüsselte Rolle ab
    .target David Trias
step
    #loop
	.goto Tirisfal Glades,32.37,64.37,0
	.goto Tirisfal Glades,32.37,64.37,12,0
	.goto Tirisfal Glades,32.81,64.39,12,0
	.goto Tirisfal Glades,32.89,64.60,12,0
	.goto Tirisfal Glades,33.01,65.38,12,0
	.goto Tirisfal Glades,33.79,64.57,12,0
	.goto Tirisfal Glades,33.13,63.08,12,0
	.goto Tirisfal Glades,32.79,63.11,12,0
	.goto Tirisfal Glades,31.86,61.49,12,0
	.goto Tirisfal Glades,31.75,61.96,12,0
	.goto Tirisfal Glades,31.70,62.53,12,0
	.goto Tirisfal Glades,31.34,62.44,12,0
    >>Öffnet die |cRXP_PICK_Ausrüstungskästen|r auf dem Boden. Sammelt sie für die |cRXP_LOOT_Aufgestöberte Waren|r
    .complete 3902,1 --Collect Scavenged Goods (x6)
step
    #loop
	.goto Tirisfal Glades,29.94,57.33,0
	.goto Tirisfal Glades,29.94,57.33,40,0
	.goto Tirisfal Glades,29.82,56.03,40,0
	.goto Tirisfal Glades,29.25,55.77,40,0
	.goto Tirisfal Glades,28.40,56.51,40,0
	.goto Tirisfal Glades,27.68,57.10,40,0
	.goto Tirisfal Glades,28.29,58.31,40,0
	.goto Tirisfal Glades,28.25,59.41,40,0
	.goto Tirisfal Glades,28.80,59.53,40,0
	.goto Tirisfal Glades,29.29,59.40,40,0
	.goto Tirisfal Glades,29.67,58.53,40,0
    >>Tötet |cRXP_ENEMY_Junger Nachtweber|r
    .complete 380,1,6 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    #loop
	.goto Tirisfal Glades,28.25,58.27,0
    .goto Tirisfal Glades,27.86,58.98,40,0
	.goto Tirisfal Glades,28.25,58.27,40,0
	.goto Tirisfal Glades,28.42,59.07,40,0
	.goto Tirisfal Glades,27.86,60.57,40,0
	.goto Tirisfal Glades,27.17,59.18,40,0
	.goto Tirisfal Glades,27.30,57.97,40,0
	.goto Tirisfal Glades,26.94,56.42,40,0
	.goto Tirisfal Glades,27.51,56.00,40,0
    >>Tötet die |cRXP_ENEMY_Junger Nachtweber|r in der Nähe des Höhleneingangs
    .complete 380,1 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    #completewith next
    .goto Tirisfal Glades,26.80,59.40,15,0
    .goto Tirisfal Glades,26.31,59.60,30 >>Geht in die Höhle
step
    #loop
    .goto Tirisfal Glades,26.31,59.60,0
    .goto Tirisfal Glades,26.31,59.60,30,0
    .goto Tirisfal Glades,25.61,59.55,20,0
    .goto Tirisfal Glades,25.11,60.33,20,0
    .goto Tirisfal Glades,24.18,60.77,20,0
    .goto Tirisfal Glades,23.23,59.91,20,0
    .goto Tirisfal Glades,23.89,58.36,20,0
    .goto Tirisfal Glades,24.68,59.54,20,0
    >>Tötet die |cRXP_ENEMY_Nachtweber|r in der Höhle
	.complete 380,2 --Kill Night Web Spider (x8)
    .mob Night Web Spider
step
    #completewith Scavenging
    .goto Tirisfal Glades,31.61,65.62,80 >>Kehrt nach Todesend zurück
step
    #label Scavenging
    .goto Tirisfal Glades,31.61,65.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Saltain|r
    .turnin 3902 >> Gebt die Quest Beutesuche in Deathknell ab
    .target Deathguard Saltain
step
    #label NightWebH
    .goto Tirisfal Glades,32.15,66.01,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arren|r
    .turnin 380 >> Gebt die Quest Nachtweber ab
    .accept 381 >> Akzeptiert die Quest Der Scharlachrote Kreuzzug
    .target Executor Arren
step << Rogue/Warrior
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archibald|r
    .vendor >> Verkauft Müll
    .target Archibald Kava
    .isOnQuest 6395
step << Warlock/Mage/Priest
    .goto Tirisfal Glades,32.29,65.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
	.collect 159,15,383,1 << Warlock/Mage/Priest --Collect Refreshing Spring Water (15)
    .vendor >> Verkauft Müll
    .target Joshua Kien
    .isOnQuest 6395
    .itemcount 159,<15
step
    #requires NightWebH
    #loop
    .goto Tirisfal Glades,36.13,68.74,0
	.goto Tirisfal Glades,36.13,68.74,25,0
	.goto Tirisfal Glades,36.46,69.49,25,0
	.goto Tirisfal Glades,36.85,70.02,25,0
	.goto Tirisfal Glades,37.42,69.58,25,0
	.goto Tirisfal Glades,38.05,69.79,25,0
	.goto Tirisfal Glades,37.91,69.22,25,0
	.goto Tirisfal Glades,38.03,68.77,25,0
	.goto Tirisfal Glades,38.49,68.28,25,0
	.goto Tirisfal Glades,38.72,67.07,25,0
	.goto Tirisfal Glades,38.59,66.25,25,0
	.goto Tirisfal Glades,38.65,65.07,25,0
	.goto Tirisfal Glades,37.62,65.36,25,0
	.goto Tirisfal Glades,36.93,65.38,25,0
	.goto Tirisfal Glades,36.51,65.42,25,0
	.goto Tirisfal Glades,36.85,66.59,25,0
	.goto Tirisfal Glades,37.45,67.95,25,0
	.goto Tirisfal Glades,36.93,68.16,25,0
    >>Tötet |cRXP_ENEMY_Scharlachroter Initiand|r und |cRXP_ENEMY_Scharlachroter Konvertit|r. Plündert sie für |cRXP_LOOT_Scharlachrote Armbinde|r
    >>|cRXP_WARN_Tötet |cRXP_ENEMY_Meven Korgal|r noch nicht|r
    >>|cRXP_WARN_Versucht, die |cRXP_ENEMY_Scharlachroter Initiand|r zu vermeiden, wenn ihr könnt, da sie|r |T135843:0|t[Frostrüstung] |cRXP_WARN_(verlangsamt von Euch die Angriffsgeschwindigkeit)|r haben << Warrior/Rogue
    .complete 381,1 --Collect Scarlet Armband (12)
    .mob Scarlet Initiate
    .mob Scarlet Convert
step
    .goto Tirisfal Glades,36.69,61.67
    >>Tötet |cRXP_ENEMY_Samuel|r. Plündert ihn für |cRXP_LOOT_Samuels sterbliche Überreste|r
    .collect 16333,1,6395,1 --Collect Samuel's Remains
    .mob Samuel Fipps
step
    #completewith next
    .goto Tirisfal Glades,31.17,65.08,80 >>Kehrt nach Todesend zurück
step
    .goto Tirisfal Glades,31.17,65.08
	>>Klickt |cRXP_PICK_Marlas Grab|r auf dem Boden
    .complete 6395,1 --Collect Samuel's Remains Buried (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elreth|r << !Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elreth|r und |cRXP_FRIENDLY_Duesten|r << Priest
    .turnin 6395 >> Gebt die Quest Marlas letzter Wunsch ab
    .target +Novice Elreth
    .goto Tirisfal Glades,31.35,66.21,10,0
    .goto Tirisfal Glades,30.86,66.05
    .accept 5651 >> Akzeptiert die Quest Der Dunkelheit geneigt << Priest
    .target +Dark Cleric Duesten << Priest
    .goto Tirisfal Glades,31.11,66.02 << Priest
step
    #sticky
    #label ScarletC
    .goto Tirisfal Glades,32.15,66.01,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arren|r
    .turnin 381 >> Gebt die Quest Der Scharlachrote Kreuzzug ab
    .accept 382 >> Akzeptiert die Quest Der Rote Bote
    .target Executor Arren
step
    .goto Tirisfal Glades,32.42,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archibald|r
    .vendor >> Verkauft Müll
    .target Archibald Kava
step
    #requires ScarletC
    .goto Tirisfal Glades,36.50,68.82
    >>Tötet |cRXP_ENEMY_Meven|r. Plündert ihn für |cRXP_LOOT_Dokumente des Scharlachroten Kreuzzugs|r
    .complete 382,1 --Collect Scarlet Crusade Documents (1)
    .mob Meven Korgal
step
    .goto Tirisfal Glades,32.15,66.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arren|r
    .turnin 382 >> Gebt die Quest Der Rote Bote ab
    .accept 383 >> Akzeptiert die Quest Entscheidende Informationen
    .target Executor Arren
step
    #loop
    .goto Tirisfal Glades,37.51,62.99,0
    .goto Tirisfal Glades,34.08,59.51,40,0
    .goto Tirisfal Glades,35.34,56.55,40,0
    .goto Tirisfal Glades,36.83,56.85,40,0
    .goto Tirisfal Glades,37.76,59.38,40,0
    .goto Tirisfal Glades,37.51,62.99,40,0
	.goto Tirisfal Glades,36.13,68.74,25,0
	.goto Tirisfal Glades,36.46,69.49,25,0
	.goto Tirisfal Glades,36.85,70.02,25,0
	.goto Tirisfal Glades,37.42,69.58,25,0
	.goto Tirisfal Glades,38.05,69.79,25,0
	.goto Tirisfal Glades,37.91,69.22,25,0
	.goto Tirisfal Glades,38.03,68.77,25,0
	.goto Tirisfal Glades,38.49,68.28,25,0
	.goto Tirisfal Glades,38.72,67.07,25,0
	.goto Tirisfal Glades,38.59,66.25,25,0
	.goto Tirisfal Glades,38.65,65.07,25,0
	.goto Tirisfal Glades,37.62,65.36,25,0
	.goto Tirisfal Glades,36.93,65.38,25,0
	.goto Tirisfal Glades,36.51,65.42,25,0
	.goto Tirisfal Glades,36.85,66.59,25,0
	.goto Tirisfal Glades,37.45,67.95,25,0
	.goto Tirisfal Glades,36.93,68.16,25,0
	.goto Tirisfal Glades,36.13,68.74,25,0
    .xp 5+2350 >>Farmt bis 2350+/2800XP
step
    .goto Tirisfal Glades,38.24,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calvin|r
    .accept 8 >>Akzeptiert die Quest Ein Schurkenhandel
    .target Calvin Montague
step
    #completewith next
    .subzone 159 >>Lauf nach Brill
step
    .goto Tirisfal Glades,60.59,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zygand|r
    .turnin 383 >>Gebt die Quest Entscheidende Informationen ab
    .target Executor Zygand
step << Rogue
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Mrs. Winters|r|cRXP_BUY_. Buy |r |T132414:0|t[Weighted Throwing Axe] |cRXP_BUY_from her|r (NOT TRANSLATED IN :deDE YET)
    .collect 29007,1,8475,1 --Weighted Throwing Axe (200)
    .target Mrs. Winters
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Oliver|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn sie euch genug geld für ein |T135641:0|t[Stilett] (4s 01c) gibt. Kommt später zurück, wenn ihr noch nicht genug Geld habt
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Kauft ein|r |T135641:0|t[Stilett] |cRXP_BUY_von ihm|r
    .collect 2494,1,8475,1 --Collect Stiletto (1)
    .target Oliver Dwor
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith Claws
    +|cRXP_WARN_Legt die|r |T132414:0|t[Beschwerte Wurfaxt] an
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #optional
    #completewith Claws
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Oliver|r
    .vendor >> Verkauft trash. Verkauft eure Waffe, wenn sie genug für ein |T135321:0|t[Gladius] (5s 36c) wert ist. Kommt später zurück, wenn ihr noch nicht genug Geld habt.
    .target Oliver Dwor
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    .goto Tirisfal Glades,60.12,53.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Oliver|r|cRXP_BUY_. Kauft ein|r |T135321:0|t[Gladius] |cRXP_BUY_von ihm|r
    .collect 2488,1,8475,1 --Collect Gladius (1)
    .target Oliver Dwor
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith Claws
    +|cRXP_WARN_Legt das|r |T135321:0|t[Gladius] an
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cain|r auf der zweiten Etage
    .train 143 >> Erlernt |T135812:0|t[Feuerball]
    .train 2136 >>Erlernt |T135807:0|t[Feuerschlag]
    .target Cain Firesong
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Austil|r
    .train 3127 >>Erlernt |T132269:0|t[Parieren]
    .target Austil de Mon
    .money <0.01
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marion|r auf der zweiten Etage
    .train 1757 >> Erlernt |T136189:0|t[Finsterer Stoß]
    .target Marion Call
    .money <0.01
step << Warlock
    .goto Tirisfal Glades,61.56,52.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gina Lang|r auf der zweiten Etage
    >>|cRXP_BUY_Kauft den|r |T133738:0|t[Zauberfoliant des Blutpakts] |cRXP_BUY_von ihr|r
    .collect 16321,1,404,1 --Grimoire of Blood Pact
    .vendor >>Verkauft Müll
    .target Gina Lang
    .train 6307,1 --Blood Pact (Rank 1)
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rupert|r
    .train 695 >> Erlernt |T136197:0|t[Schattenblitz]
    .train 1454 >> Erlernt |T136126:0|t[Aderlass]
    .target Rupert Boch
    .money <0.02
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rupert|r
    .train 695 >> Erlernt |T136197:0|t[Schattenblitz]
    .target Rupert Boch
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirtin Renee|r
    .turnin 8 >>Gebt die Quest Ein Schurkenhandel ab
    .home >> Setzt euren Ruhestein in Brill << Priest
    .target Innkeeper Renee
    .bindlocation 2119 << Priest
step << Priest
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Beryl|r eine Etage drüber
    .turnin 5651 >> Gebt die Quest Der Dunkelheit geneigt ab
    .accept 5650 >> Akzeptiert die Quest Gewänder der Dunkelheit
    .train 2052 >> Erlernt |T135929:0|t[Geringes Heilen] (Rang 2)
    .train 1243 >> Erlernt |T135987:0|t[Machtwort: Seelenstärke]
    .target Dark Cleric Beryl
    .train 2052,1
    .train 1243,1
step << Priest
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Beryl|r eine Etage drüber
    .turnin 5651 >> Gebt die Quest Der Dunkelheit geneigt ab
    .accept 5650 >> Akzeptiert die Quest Gewänder der Dunkelheit
    .train 1243 >> Erlernt |T135987:0|t[Machtwort: Seelenstärke]
    .target Dark Cleric Beryl
    .train 1243,1
step << Priest
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Beryl|r eine Etage drüber
    .turnin 5651 >> Gebt die Quest Der Dunkelheit geneigt ab
    .accept 5650 >> Akzeptiert die Quest Gewänder der Dunkelheit
    .train 2052 >> Erlernt |T135929:0|t[Geringes Heilen] (Rang 2)
    .target Dark Cleric Beryl
    .train 2052,1
step << Priest
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Beryl|r eine Etage drüber
    .turnin 5651 >> Gebt die Quest Der Dunkelheit geneigt ab
    .accept 5650 >> Akzeptiert die Quest Gewänder der Dunkelheit
    .target Dark Cleric Beryl
step << Priest
    #completewith next
    .goto Tirisfal Glades,61.75,52.72,8,0
    .goto Tirisfal Glades,61.58,52.99,8 >>Verlasst das Gasthaus
step << Priest
    .goto Tirisfal Glades,59.18,46.49,50 >>Travel toward |cRXP_FRIENDLY_Kel|r (NOT TRANSLATED IN :deDE YET)
    .isOnQuest 5650
step << Priest
    #sticky
    #label Kel1
    .goto Tirisfal Glades,59.18,46.49
    .cast 2052 >> |cRXP_WARN_wirkt|r |T135929:0|t[Lesser Heal Rank 2] |cRXP_WARN_on|r |cRXP_FRIENDLY_Kel|r
    .isOnQuest 5650
step << Priest
    #sticky
    #requires Kel1
    #completewith next
    .goto Tirisfal Glades,59.18,46.49
    .cast 1243 >> |cRXP_WARN_wirkt|r |T135987:0|t[Power Word: Fortitude] |cRXP_WARN_on|r |cRXP_FRIENDLY_Kel|r
step << Priest
    .goto Tirisfal Glades,59.18,46.49
    >>Heal und then Fortify |cRXP_FRIENDLY_Kel|r
    .complete 5650,1 --Heal and fortify Deathguard Kel
    .target Deathguard Kel
step << Priest
    #completewith next
    .hs >> Benutzt euren Ruhestein nach Brill
    .bindlocation 2119,1
    .subzoneskip 159
step << Priest
    .goto Tirisfal Glades,61.99,52.19,6,0
    .goto Tirisfal Glades,61.76,52.31,6,0
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Beryl|r eine Etage drüber
    .turnin 5650 >> Gebt die Quest Gewänder der Dunkelheit ab
    .target Dark Cleric Beryl
step
    #completewith next
    .goto Tirisfal Glades,61.75,52.72,8,0
    .goto Tirisfal Glades,61.58,52.99,8 >>Verlasst das Gasthaus
step
    #completewith next
    .goto Undercity,65.87,1.48,15,0
    .goto Undercity,65.82,5.44,15,0
    .goto Undercity,62.76,11.02,12,0
    .goto Undercity,54.67,11.25
    .zone Silvermoon City >> Nehmt die Translokationskugel nach Silbermond
step
    #completewith next
    .goto Silvermoon City,62.89,31.20,20,0
    .goto Silvermoon City,75.63,58.34,20,0
    .goto Silvermoon City,73.22,59.91,20,0
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>Verlassen Silvermoon
step
    #label SilvermoonFP
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gloaming|r
    .fp Silvermoon >> Get the Silvermoon City flight path (NOT TRANSLATED IN :deDE YET)
    .target Skymistress Gloaming
    .isQuestAvailable 8463
step
    .goto Eversong Woods,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jaela|r
    .accept 8475 >> Die Todesschneise annehmen
    .target Ranger Jaela
step
    .goto Eversong Woods,46.68,49.10,40 >>Lauf nach Falkenplatz
    .isQuestAvailable 8463
]])
