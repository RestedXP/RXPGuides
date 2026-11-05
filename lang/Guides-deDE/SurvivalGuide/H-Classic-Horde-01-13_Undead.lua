if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Horde
#name 1-6 Untot
#version 1
#group RestedXP Überlebens-Guide (H)
#subgroup RXP Überlebens-Guide 1-20
#defaultfor Undead
#next 6-13 Untot

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
    .goto Tirisfal Glades,30.98,66.41 << Warlock
    .target +Venya Marthand << Warlock
    .turnin 363 >> Gebt die Quest Unsanftes Erwachen ab
    .accept 364 >> Akzeptiert die Quest Die Hirnlosen
    .target +Shadow Priest Sarvis
    .goto Tirisfal Glades,30.84,66.20
step << Warlock/Mage
    .goto Tirisfal Glades,31.35,66.21,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elreth|r
    .accept 376 >> Akzeptiert die Quest Die Verdammten
    .goto Tirisfal Glades,30.86,66.05
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
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
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
    .turnin 3098 >> Gebt die Quest Glyphenrolle ab << Mage
    .goto Tirisfal Glades,30.94,66.06 << Mage
    .target +Isabella << Mage
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
    .goto Tirisfal Glades,34.32,56.79,0
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
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    >>Tötet |cRXP_ENEMY_Klapperndes Skelett|r
    .complete 3901,1 --Kill Rattlecage Skeleton (12)
    .mob Rattlecage Skeleton
step
    #som--xpgate
    #loop
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
    .xp 3+480 >>Farmt bis 480+/1400xp << Warrior/Rogue
    .xp 3+560 >>Farmt bis 560+/1400XP << !Warrior !Rogue
    .mob Mindless Zombie
    .mob Wretched Zombie
step
    #era
    #loop
    .goto Tirisfal Glades,31.82,61.48,30,0
    .goto Tirisfal Glades,31.11,60.71,30,0
    .goto Tirisfal Glades,32.07,60.17,30,0
    .goto Tirisfal Glades,32.26,59.21,30,0
    .goto Tirisfal Glades,33.28,59.53,30,0
    .goto Tirisfal Glades,33.66,60.76,30,0
    .goto Tirisfal Glades,33.94,61.81,30,0
    .goto Tirisfal Glades,34.21,63.05,30,0
    .goto Tirisfal Glades,33.01,63.01,30,0
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
    .collect 159,15,380,1 --Collect Refreshing Spring Water (10)
    .target Joshua Kien
    .money >0.0075
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Saltain|r und |cRXP_FRIENDLY_Arren|r
    .accept 3902 >> Akzeptiert die Quest Beutesuche in Deathknell
    .target +Deathguard Saltain
    .goto Tirisfal Glades,31.61,65.62
    .accept 380 >> Akzeptiert die Quest Nachtweber
    .target +Executor Arren
    .goto Tirisfal Glades,32.15,66.01
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
	.goto Tirisfal Glades,28.25,58.27,25,0
	.goto Tirisfal Glades,28.42,59.07,25,0
	.goto Tirisfal Glades,27.86,60.57,25,0
	.goto Tirisfal Glades,27.17,59.18,25,0
	.goto Tirisfal Glades,27.30,57.97,25,0
	.goto Tirisfal Glades,26.94,56.42,25,0
	.goto Tirisfal Glades,27.51,56.00,25,0
    >>Tötet die |cRXP_ENEMY_Junger Nachtweber|r in der Nähe des Höhleneingangs
    .complete 380,1 --Kill Young Night Web Spider (10)
    .mob Young Night Web Spider
step
    #completewith next
    .goto Tirisfal Glades,26.80,59.40,15,0
    .goto Tirisfal Glades,26.31,59.60,30 >>Geht in die Höhle
step
    #loop
    .goto Tirisfal Glades,24.68,59.54,0
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
step << Warlock
    #softcore
    #completewith ScarletC
    .cast 688 >>|cRXP_WARN_Wirkt|r |T136218:0|t[Wichtel beschwören]
step << skip
    #hardcore
    #completewith next
    >>|cRXP_WARN_Führt einen Ausloggen-Sprung durch, indem ihr in der Höhle von etwas abspringt und dann euer Camp-Makro drückt|r
    .link https://www.youtube.com/watch?v=AOAlX9B5aO0 >> |cRXP_WARN_KLICKT HIER für einen Leitfaden|r
    .link /camp >> |cRXP_WARN_KLICKT HIER für das Makro|r
    >>|cRXP_WARN_Um ein Makro zu erstellen, tippt /makro im Spiel ein. Klickt auf "Neu", gebt ihm einen Namen, dann fügt "/lagern" in das Feld ein. Zieht das neue Makro auf eure Aktionsleisten|r
    .goto Tirisfal Glades,31.08,64.88,30 >> Zurückkehren nach Todesend
step
    #label Scavenging
    .goto Tirisfal Glades,31.61,65.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Saltain|r
    .turnin 3902 >> Gebt die Quest Beutesuche in Deathknell ab
    .target Deathguard Saltain
step
    #sticky
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
	.goto Tirisfal Glades,36.13,68.74,40,0
	.goto Tirisfal Glades,36.46,69.49,40,0
	.goto Tirisfal Glades,36.85,70.02,40,0
	.goto Tirisfal Glades,37.42,69.58,40,0
	.goto Tirisfal Glades,38.05,69.79,40,0
	.goto Tirisfal Glades,37.91,69.22,40,0
	.goto Tirisfal Glades,38.03,68.77,40,0
	.goto Tirisfal Glades,38.49,68.28,40,0
	.goto Tirisfal Glades,38.72,67.07,40,0
	.goto Tirisfal Glades,38.59,66.25,40,0
	.goto Tirisfal Glades,38.65,65.07,40,0
	.goto Tirisfal Glades,37.62,65.36,40,0
	.goto Tirisfal Glades,36.93,65.38,40,0
	.goto Tirisfal Glades,36.51,65.42,40,0
	.goto Tirisfal Glades,36.85,66.59,40,0
	.goto Tirisfal Glades,37.45,67.95,40,0
	.goto Tirisfal Glades,36.93,68.16,40,0
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
    .goto Tirisfal Glades,31.17,65.08
	>>Klickt |cRXP_PICK_Marlas Grab|r auf dem Boden
    .complete 6395,1 --Collect Samuel's Remains Buried (1)
 step << Warlock
    #softcore
	#completewith ScarletC
	.cast 688 >>|cRXP_WARN_Wirkt|r |T136218:0|t[Wichtel beschwören]
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
    .goto Tirisfal Glades,34.08,59.51,50,0
    .goto Tirisfal Glades,35.34,56.55,50,0
    .goto Tirisfal Glades,36.83,56.85,50,0
    .goto Tirisfal Glades,37.76,59.38,50,0
    .goto Tirisfal Glades,37.51,62.99,50,0
	.goto Tirisfal Glades,36.13,68.74,50,0
	.goto Tirisfal Glades,36.46,69.49,50,0
	.goto Tirisfal Glades,36.85,70.02,50,0
	.goto Tirisfal Glades,37.42,69.58,50,0
	.goto Tirisfal Glades,38.05,69.79,50,0
	.goto Tirisfal Glades,37.91,69.22,50,0
	.goto Tirisfal Glades,38.03,68.77,50,0
	.goto Tirisfal Glades,38.49,68.28,50,0
	.goto Tirisfal Glades,38.72,67.07,50,0
	.goto Tirisfal Glades,38.59,66.25,50,0
	.goto Tirisfal Glades,38.65,65.07,50,0
	.goto Tirisfal Glades,37.62,65.36,50,0
	.goto Tirisfal Glades,36.93,65.38,50,0
	.goto Tirisfal Glades,36.51,65.42,50,0
	.goto Tirisfal Glades,36.85,66.59,50,0
	.goto Tirisfal Glades,37.45,67.95,50,0
	.goto Tirisfal Glades,36.93,68.16,50,0
	.goto Tirisfal Glades,36.13,68.74,50,0
    .xp 5+2350 >>Farmt bis 2350+/2800XP
step
    .goto Tirisfal Glades,38.24,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Calvin|r
    .accept 8 >> Akzeptiert die Quest Ein Schurkenhandel
    .target Calvin Montague

]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Horde
#name 6-13 Untot
#version 1
#group RestedXP Überlebens-Guide (H)
#subgroup RXP Überlebens-Guide 1-20
#defaultfor Undead
#next 13-15 Silberwald

step
    .goto Tirisfal Glades,40.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Simmer|r
    .accept 365 >>Akzeptiert die Quest Felder des Kummers
    .target Deathguard Simmer
step
    #loop
    .goto Tirisfal Glades,56.13,52.48,0
    .goto Tirisfal Glades,40.77,54.42,0
    .goto Tirisfal Glades,40.77,54.42,40,0
    .goto Tirisfal Glades,42.04,55.11,40,0
    .goto Tirisfal Glades,43.59,54.30,40,0
    .goto Tirisfal Glades,46.21,56.78,40,0
    .goto Tirisfal Glades,48.88,57.93,40,0
    .goto Tirisfal Glades,50.73,57.27,40,0
    .goto Tirisfal Glades,52.52,54.48,40,0
    .goto Tirisfal Glades,54.49,52.65,40,0
    .goto Tirisfal Glades,56.13,52.48,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gordo|r. Er ist eine Abscheulichkeit, die entlang der Straße nach Brill patrulliert
    .accept 5481 >>Akzeptiert die Quest Gordos Aufgabe
    .target Gordo
    .unitscan Gordo
step << Priest/Warlock
    .goto Tirisfal Glades,52.59,55.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bowen|r
    .train 3908 >> Erlernt |T136249:0|t[Schneiderei]
    >>|cRXP_WARN_Sammelt euren|r |T132889:0|t[Leinenstoff]|cRXP_WARN_. Damit könnt ihr später einen Zauberstab herstellen|r
    .target Bowen Brisboise
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dillinger|r und |cRXP_FRIENDLY_Zygand|r
    .accept 404 >>Akzeptiert die Quest Eine eitrige Aufgabe
    .target +Deathguard Dillinger
    .goto Tirisfal Glades,58.20,51.45
    .turnin 383 >>Gebt die Quest Entscheidende Informationen ab
    .accept 427 >>Akzeptiert die Quest Im Krieg mit dem Scharlachroten Kreuzzug
    .target +Executor Zygand
    .goto Tirisfal Glades,60.59,51.77
step << Rogue
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Mrs. Winters|r|cRXP_BUY_. Kauft|r |T135421:0|t[Beschwerte Wurfaxt] |cRXP_BUY_von ihr|r
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
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
    .collect 2494,1,404,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith Claws
    +|cRXP_WARN_Legt die|r |T135421:0|t[Beschwerte Wurfaxt] an
    .use 3131
    .itemcount 3131,1
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
    .collect 2488,1,404,1 --Collect Gladius (1)
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
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirtin Renee|r
    .turnin 8 >>Gebt die Quest Ein Schurkenhandel ab
    .home >> Setzt euren Ruhestein in Brill
    .target Innkeeper Renee
    .bindlocation 2119
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Beryl|r auf der zweiten Etage
    .turnin 5651 >> Gebt die Quest Der Dunkelheit geneigt ab
    .accept 5650 >> Akzeptiert die Quest Gewänder der Dunkelheit
	.train 591 >>Erlernt |T135924:0|t[Heilige Pein]
    .train 17 >>Erlernt |T135940:0|t[Machtwort: Schild]
    .train 2052 >>Erlernt |T135929:0|t[Geringes Heilen] (Rang 2)
    .target Dark Cleric Beryl
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
step << Priest/Warlock
    .goto Tirisfal Glades,61.76,51.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vance|r
    .train 7411 >> Lernt |T136244:0|t[Verzauberkunst]. Das zusammen mit |T136249:0|t[Schneiderei] wird euch ermöglichen, später einen Stab zu erschaffen
    .target Vance Undergloom
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirtin Renee|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch]|cRXP_BUY_ von ihr|r << Mage/Priest
    >>|cRXP_BUY_Kauft|r |T134532:0|t[Rotgetupfter Pilz] |cRXP_BUY_von ihr|r << Warrior/Rogue
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_und|r |T134532:0|t[Rotgetupfter Pilz] |cRXP_BUY_von ihr|r << Warlock
    .vendor >> Verkauft Müll
    .collect 1179,15,367,1 << Mage/Priest --Ice Cold Milk (15)
    .collect 4605,10,367,1 << Rogue/Warrior --Red-speckled Mushroom (10)
    .collect 1179,10,367,1 << Warlock --Ice Cold Milk (10)
    .collect 4605,5,367,1 << Warlock --Red-speckled Mushroom (5)
    .money <0.025 << Warrior/Rogue
    .money <0.0375 << Mage/Priest/Warlock
    .target Innkeeper Renee
 step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Johaan|r
    .accept 367 >>Akzeptiert die Quest Eine neue Seuche
    .target Apothecary Johaan
step << Priest
    .goto Tirisfal Glades,59.18,46.49
    >>Wirkt |T135929:0|t[Geringes Heilen] und |T135987:0|t[Machtwort: Seelenstärke] auf |cRXP_FRIENDLY_Todeswache Kel|r
    >>|cRXP_WARN_Ihr benötigt|r |T135929:0|t[Geringes Heilen Rang 2] |cRXP_WARN_für diese Quest|r
    .complete 5650,1 --Heal and fortify Deathguard Kel (1)
    .target Deathguard Kel
step
    #completewith Claws
    >>Sammelt das |cRXP_PICK_Düsterkraut|r vom Boden
    .complete 5481,1 --Gloom Weed (3)
step
    #completewith next
    >>Tötet jeden |cRXP_ENEMY_Altersschwacher Schattenhund|r den ihr seht. Plündert sie für ihr |cRXP_LOOT_Schattenhundblut|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
step
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
step
    #completewith next
    >>Sammelt das |cRXP_PICK_Düsterkraut|r vom Boden
    .complete 5481,1 --Gloom Weed (3)
step
    #loop
    .goto Tirisfal Glades,41.70,44.01,0
    .goto Tirisfal Glades,44.41,56.83,100,0
    .goto Tirisfal Glades,42.64,53.40,100,0
    .goto Tirisfal Glades,40.84,46.59,100,0
    .goto Tirisfal Glades,38.69,44.10,100,0
    .goto Tirisfal Glades,38.63,39.44,100,0
    .goto Tirisfal Glades,41.70,44.01,100,0
    >>Tötet jeden |cRXP_ENEMY_Altersschwacher Schattenhund|r den ihr seht. Plündert sie für ihr |cRXP_LOOT_Schattenhundblut|r
    >>|cRXP_WARN_Weicht den|r |cRXP_ENEMY_Cursed Darkhounds|r |cRXP_WARN_aus. Sie haben ein höheres Level|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
step
    #loop
    .goto Tirisfal Glades,39.55,50.64,0
    .goto Tirisfal Glades,44.43,57.33,0
    .goto Tirisfal Glades,39.55,50.64,50,0
    .goto Tirisfal Glades,44.43,57.33,50,0
    >>Beendet das Sammeln von |cRXP_PICK_Düsterkraut|r vom Boden
    .complete 5481,1 --Gloom Weed (3)
step << Priest/Warlock
    #sticky
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_Beginnt mit dem Sammeln von 3 Stapeln|r |T132889:0|t[Leinenstoff]|cRXP_WARN_. Dies wird verwendet, um später von Euch einen Stab zu erstellen|r
    .collect 2589,60 --Linen Cloth (60)
step
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
step
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
    >>|cRXP_WARN_Seid vorsichtig, da sie 8 Sek. lang eine um 50% erhöhte Parierchance nach ihrer Abwehrhaltungsanimation haben|r << Rogue/Warrior
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
step
    #completewith BrillTurnin1
    .hs >> Benutzt euren Ruhestein nach Brill
    .use 6948
    .subzoneskip 159
    .bindlocation 2119,1
    .cooldown item,6948,>0
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Beryl|r auf der zweiten Etage
    .turnin 5650 >>Gebt die Quest Gewänder der Dunkelheit ab
    .train 591 >>Erlernt |T135924:0|t[Heilige Pein]
    .train 17 >>Erlernt |T135940:0|t[Machtwort: Schild]
    .target Dark Cleric Beryl
step
    #label BrillTurnin1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zygand|r, |cRXP_FRIENDLY_Johaan|r und |cRXP_FRIENDLY_Dillinger|r
    .turnin 427 >>Gebt die Quest Im Krieg mit dem Scharlachroten Kreuzzug ab
    .accept 370 >>Akzeptiert die Quest Im Krieg mit dem Scharlachroten Kreuzzug
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 367 >>Gebt die Quest Eine neue Seuche ab
    .turnin 365 >> Gebt die Quest Felder des Kummers ab
    .accept 368 >>Akzeptiert die Quest Eine neue Seuche
    .accept 407 >> Akzeptiert die Quest Felder des Kummers
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 404 >>Gebt die Quest Eine eitrige Aufgabe ab
    .accept 426 >>Akzeptiert die Quest Die überrannte Mühle
    .target +Deathguard Dillinger
    .goto Tirisfal Glades,58.20,51.43
step
    #loop
    .goto Tirisfal Glades,57.71,48.96,0
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,59.26,46.73,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Holland|r, er patrouilliert um den Friedhof herum.
    .turnin 5481 >>Gebt die Quest Gordos Aufgabe ab
    .accept 5482 >>Akzeptiert die Quest Verdammniskraut
    .target Junior Apothecary Holland
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
    .collect 2494,1,404,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #completewith ZeptoDurotar
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
    .collect 2488,1,404,1 --Collect Gladius (1)
    .money <0.0536
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step << Warrior
    #optional
    #completewith ZeptoDurotar
    +|cRXP_WARN_Legt das|r |T135321:0|t[Gladius] an
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.7
step
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirtin Renee|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch]|cRXP_BUY_ von ihr|r << Mage/Priest
    >>|cRXP_BUY_Kauft|r |T134532:0|t[Rotgetupfter Pilz] |cRXP_BUY_von ihr|r << Warrior/Rogue
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_und|r |T134532:0|t[Rotgetupfter Pilz] |cRXP_BUY_von ihr|r << Warlock
    .vendor >> Verkauft Müll
    .collect 1179,20,818,1 << Mage/Priest --Ice Cold Milk (20)
    .collect 4605,10,818,1 << Rogue/Warrior/Warlock --Red-speckled Mushroom (10)
    .collect 1179,10,818,1 << Warlock --Ice Cold Milk (10)
    .money <0.025 << Rogue/Warrior
    .money <0.050 << Warlock/Mage/Priest
    .target Innkeeper Renee
step
    #label ZeptoDurotar
    .goto Tirisfal Glades,60.96,58.63,12,0
    .goto Tirisfal Glades,61.51,59.01,10,0
    .goto Tirisfal Glades,61.27,59.22,8,0
    .goto Tirisfal Glades,61.13,58.84,8,0
    .goto Tirisfal Glades,61.38,58.71,8,0
    .goto Tirisfal Glades,61.34,59.17,8,0
    .goto Tirisfal Glades,60.51,58.69,-1
    .goto Tirisfal Glades,60.94,46.35,-1
    >>Geh auf den Zeppelin-Turm
    .zone Durotar >>Nehmt den Zeppelin nach Durotar. Ihr werdet später zurückkommen, um Tirisfal zu beenden
    .zoneskip Durotar
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Akzeptiert die Quest Wind in der Wüste
    .target Rezlak
step
    #completewith next
    .goto Durotar,47.40,22.57,60,0
    .goto Durotar,49.08,28.48,60,0
    .goto Durotar,52.19,33.49,120,0
    .goto Durotar,52.25,40.17,60 >> Reist nach Klingenhügel
    .subzoneskip 352
step << Warrior/Rogue
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Erlerne |T136241:0|t[Schmiedekunst]
    .target Dwukk
    .skill blacksmithing,1,1
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
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Grosk|r
    .home >> Setzt euren Ruhestein in Klingenhügel
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Kauft|r |T133974:0|t[Fleischschenkel] |cRXP_BUY_bei ihm|r << Rogue/Warrior
    .vendor >> Verkauft Müll
    .target Innkeeper Grosk
    .bindlocation 362
    .subzoneskip 362,1
step
    >>|cRXP_WARN_Ihr könnt mit|r |cRXP_FRIENDLY_Gar'thok|r |cRXP_WARN_sprechen, von außen oder auf der Spitze des Bunkers|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gar'thok|r und |cRXP_FRIENDLY_Torka|r
    .accept 784 >>Akzeptiert die Quest Vernichtet die Verräter
    .accept 837 >>Akzeptiert die Quest Übergriff
    .target +Gar'thok
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
step
    #completewith TravelToTiragarde
    +|cRXP_WARN_Wirkt|r |T136025:0|t[Mineraliensuche] |cRXP_WARN_und baue jede Kupferader ab, die du findest, für|r |T135232:0|t|cRXP_LOOT_[Rauer Stein]|r|cRXP_WARN_. Stellt|r |T135248:0|t[Wetzsteine] |cRXP_WARN_daraus her|r
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
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
    .accept 808 >>Akzeptiert die Quest Minshinas Schädel
    .accept 826 >>Akzeptiert die Quest Zalazane
    .accept 823 >>Akzeptiert die Quest Bericht an Orgnil
    .target +Master Gadrin
    .goto Durotar,55.94,74.72
step << Rogue
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_. Kauft |r |T135421:0|t[Beschwerte Wurfaxt] |cRXP_BUY_bei ihr|r
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
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
step << Rogue
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Legt die|r |T135421:0|t[Beschwerte Wurfaxt] an
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
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
step << Mage
    .goto Durotar,56.30,75.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Un'Thuwa|r
    .train 143 >> Erlernt |T135812:0|t[Feuerball]
    .train 2136 >>Erlernt |T135807:0|t[Feuerschlag]
    .target Un'Thuwa
step
    #completewith next
    .goto Durotar,58.54,75.89,40,0
    .goto Durotar,57.73,77.91,40,0
    .goto Durotar,55.72,79.62,40,0
    .goto Durotar,54.23,82.26,40,0
    .goto Durotar,52.20,83.00,40,0 >>Rennt den Strand hinunter. Tötet |cRXP_ENEMY_Kriecher|r und |cRXP_ENEMY_Makruras|r. Sammelt Beute von ihnen für |cRXP_LOOT_Kriechersekret|r und |cRXP_LOOT_Augen|r. Ihr müsst diesen Schritt hier nicht beenden
    .complete 818,2,4 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1,2 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    .goto Durotar,52.20,83.00,75 >> Erreicht das Ende des Strandes
    .isOnQuest 818
step
    .goto Durotar,50.9,79.2,40 >>BETRETET das Kolkar-Lager
    .isOnQuest 786
step
    #sticky
    #completewith Bonfire
    +|cRXP_WARN_Seid vorsichtig, wenn|r |cRXP_ENEMY_Kolkanis|r |cRXP_WARN_aktiv ist, er ist ein seltener mob der Stufe 9. Ihr müsst möglicherweise einen|r |T134829:0|t[Schwachen Heiltrank] |cRXP_WARN_verwenden, wenn ihr ihn habt|r
    .unitscan Warlord Kolkanis
step
    >>Markiert |cRXP_PICK_Angriffsplan|r im Zelt auf dem Boden
    .goto Durotar,49.8,81.2
    .complete 786,1 --Attack Plan: Valley of Trials destroyed (1)
step
    >>Verbrennt den |cRXP_PICK_Angriffsplan|r auf dem Boden
    .goto Durotar,47.7,77.4
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
step
    #label Bonfire
    >>Verbrennt den |cRXP_PICK_Angriffsplan|r auf dem Boden
    .goto Durotar,46.3,79.0
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step
    #completewith next
    .goto Durotar,50.95,79.14,30 >>Verlasst das Kolkar-Lager
    .isQuestComplete 786
step
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lar|r. Er patrouilliert ein bisschen
    .turnin 786 >>Gebt die Quest Vereitelung der Kolkaraggression ab
    .target Lar Prowltusk
step
    #optional
    .goto Durotar,55.95,74.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vornal|r
    .turnin 818 >>Gebt die Quest Ein geistvolles Getränk ab
    .target Master Vornal
    .isQuestComplete 818
step
    .goto Durotar,55.62,73.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hai'zan|r
    .vendor 3933 >> Verkaufen von Euch trash
    .target Hai'zan
    .money >0.025 << Warrior/Rogue/Shaman
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
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihr|r --Refreshing Spring Water (10)
    .collect 159,10,784,1
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
    .collect 2494,1,823,1 --Collect Stiletto (1)
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
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Legt die|r |T135421:0|t[Beschwerte Wurfaxt] an
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Legt die|r |T132401:0|t[Große Axt] an
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Legt das|r |T135421:0|t[Tomahawk] an
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step
    #label TravelToTiragarde
    .goto Durotar,57.26,54.69,60,0
    .subzone 372 >> Reist zur Burg Tiragarde
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
step << !Priest !Mage
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+2180 >> Farmt bis 2200+/4500 XP
step << Priest
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+1730 >> Farmt bis 1750+/4500 XP
step
    #completewith next
    .subzoneskip 362 >> Reist nach Klingenhügel
step
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
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r und |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>Gebt die Quest Bericht an Orgnil ab
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
    .collect 2901,1,818,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Erlerne |T136241:0|t[Schmiedekunst]
    .target Dwukk
    .skill blacksmithing,1,1
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
    .collect 2494,1,818,1 --Collect Stiletto (1)
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
    .collect 2491,1,818,1 --Collect Large Axe (1)
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
    .collect 2490,1,818,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Legt die|r |T135421:0|t[Beschwerte Wurfaxt] an
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
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
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Grosk|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_Kauft|r |T133974:0|t[Fleischschenkel] |cRXP_BUY_bei ihm|r << Rogue/Warrior
    >>|cRXP_WARN_Behaltet 4 Silber für eure Klassenzauber!|r << Rogue/Warrior/Shaman/Warlock
    >>|cRXP_WARN_Behaltet 2 Silber für eure Klassenzauber!|r << Priest
    .vendor >> Verkauft Müll
    .turnin 2161 >>Gebt die Quest Die Bürde eines Peons ab
    .target Innkeeper Grosk
    .train 6760,1 << Rogue
    .train 139,1 << Priest
    .train 980,1 << Warlock
    .train 8044,1 << Shaman
    .train 284,1 << Warrior
step << !Mage !Hunter !Druid
    #optional
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Grosk|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_Kauft|r |T133974:0|t[Fleischschenkel] |cRXP_BUY_bei ihm|r << Rogue/Warrior
    .vendor >> Verkauft Müll
    .turnin 2161 >>Gebt die Quest Die Bürde eines Peons ab
    .target Innkeeper Grosk
    .train 6760,3 << Rogue
    .train 139,3 << Priest
    .train 980,3 << Warlock
    .train 8044,3 << Shaman
    .train 284,3 << Warrior
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarshaw|r
    .train 284 >> Trainiere deine Klassenfähigkeiten
    .target Tarshaw Jaggedscar
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dhugru|r
    .train 980 >> Trainiere deine Klassenfähigkeiten
    .target Dhugru Gorelust
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kitha|r und kauft |T133738:0|t[Feuerblitz Rang 2]
    .collect 16302,1,818,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Warlock
    #completewith Tools
    .train 20270 >> |cRXP_WARN_Benutzt die|r |T133738:0|t[Grimoire of Feuerblitz Rang 2]
    .use 16302
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
step
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Erlerne |T135966:0|t[Erste Hilfe]
    .money <0.01
    .target Rawrk
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jark|r
    >>|cRXP_BUY_Kauft einen|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_von|r |cRXP_BUY_ihm|r
    .collect 4496,1,818,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
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
    #completewith Fur
    >>Tötet die |cRXP_ENEMY_Tiger|r. Beute sie für ihren |cRXP_LOOT_Pelz|r
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
    .goto Durotar,67.74,69.86,40,0
    .goto Durotar,67.04,71.40,40,0
    .goto Durotar,67.66,73.86,40,0
    .goto Durotar,68.67,74.47,40,0
    .goto Durotar,69.76,74.69,40,0
    .goto Durotar,70.29,73.31,40,0
    .goto Durotar,70.23,70.84,40,0
    .goto Durotar,69.69,70.35,40,0
    .goto Durotar,69.21,69.69,40,0
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
step
    #completewith ZalazaneKill
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
    #label ZalazaneKill
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
    >>Tötet |cRXP_ENEMY_Hexed Trolls|r und |cRXP_ENEMY_Voodoo Trolls|r.
    >>|cRXP_WARN_Be careful!|r |cRXP_ENEMY_Voodoo Trolls|r |cRXP_WARN_can wirkt|r |T136052:0|t[Welle der Heilung]
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
    >>Tötet |cRXP_ENEMY_Kriecher|r und |cRXP_ENEMY_Makruras|r. Plündert sie für |cRXP_LOOT_Kriechersekret|r und |cRXP_LOOT_Augen|r
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
    .goto Durotar,56.48,73.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Verkauft Müll und repariert. Ihr könnt mit ihm von außerhalb der Hütte sprechen
    .target Trayexir
    .isQuestAvailable 837
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
    #completewith next
    .goto Durotar,51.12,42.46,150 >> Lauft nach Klingenhügel
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|r |cRXP_FRIENDLY_Torka|r und |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Gebt die Quest Zerbrecht ein paar Eier ab
    .target +Cook Torka
    .goto Durotar,51.12,42.46
    .turnin 825 >>Gebt die Quest Aus den Wrackteilen geborgen... ab
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Erlerne |T135966:0|t[Erste Hilfe]
    .target Rawrk
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >> Trainiere deine Klassenfähigkeiten
    .target Tarshaw Jaggedscar
    .xp <10,1
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Trainiere deine Klassenfähigkeiten
    .target Dhugru Gorelust
    .xp <10,1
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kitha|r und kauft |T133738:0|t[Feuerblitz Rang 2]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Warlock
    .train 20270 >> |cRXP_WARN_Benutzt das|r |T133738:0|t[Grimoire of Feuerblitz Rang 2]
    .use 16302
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kaplak|r
    .train 674 >> Trainiere deine Klassenfähigkeiten
    .target Kaplak
    .xp <10,1
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tai'jin|r
    .accept 5654 >> Akzeptiert die Quest Verhexung der Schwäche << Troll
    .accept 5660 >> Akzeptiert die Quest Berührung der Schwäche << Undead
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Tai'jin
    .xp <10,1
step
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Akzeptiert die Quest Freiwilliger der Horde
    .target Takrin Pathseeker
    .xp <10,1
step
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
    #label Stolensupplies
    #loop
    .goto Durotar,47.92,33.10,0
    .goto Durotar,47.34,33.38,30,0
    .goto Durotar,47.92,33.10,30,0
    .goto Durotar,49.11,33.11,30,0
    .goto Durotar,48.53,32.00,30,0
    .goto Durotar,47.36,30.98,30,0
    .goto Durotar,47.14,29.68,30,0
    .goto Durotar,46.49,34.67,30,0
    .goto Durotar,50.13,32.35,30,0
    .goto Durotar,49.78,28.26,30,0
    .goto Durotar,50.83,25.94,30,0
    .goto Durotar,49.68,24.38,30,0
    .goto Durotar,49.05,22.49,30,0
    >>Sammelt die |cRXP_PICK_Gestohlener Vorratssack|r vom Boden
    .complete 834,1 --Sack of Supplies (5)
    .isOnQuest 834
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
    .goto Durotar,47.92,33.10,0
    .goto Durotar,47.34,33.38,30,0
    .goto Durotar,47.92,33.10,30,0
    .goto Durotar,49.11,33.11,30,0
    .goto Durotar,48.53,32.00,30,0
    .goto Durotar,47.36,30.98,30,0
    .goto Durotar,47.14,29.68,30,0
    .goto Durotar,46.49,34.67,30,0
    .goto Durotar,50.13,32.35,30,0
    .goto Durotar,49.78,28.26,30,0
    .goto Durotar,50.83,25.94,30,0
    .goto Durotar,49.68,24.38,30,0
    .goto Durotar,49.05,22.49,30,0
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
    .solo
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
    .complete 835,1 --Dustwind Savage (12)
    .mob +Dustwind Savage
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob +Dustwind Storm Witch
    .solo
step << Troll Warrior/Undead Warrior
    #completewith next
    +|cRXP_WARN_Hackt die|r |T135158:0|t[Verunstalteter Holzstab] |cRXP_WARN_als von Euch Questrbelohnung und speichert es. Ihr werdet in Orgrimmar Stabtraining erhalten|r
    .solo
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Gebt die Quest Sicherung der Linien ab
    .target Rezlak
    .solo
step
    #completewith next
    .goto Durotar,44.72,24.86,40,0
    .goto Durotar,42.28,25.45,30,0
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
step
    .hs >> Benutzt euren Ruhestein zum Klingenhügel
    .use 6948
    .cooldown item,6948,>0
    .subzoneskip 362
    .bindlocation 362,1
    .isQuestComplete 806
    .group
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirt Grosk|r
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Kauft|r |T133974:0|t[Fleischschenkel] |cRXP_BUY_bei ihm|r << Rogue/Warrior
    .vendor >> Verkauft Müll
    .collect 1179,15,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (15)
    .collect 2287,15,818,1 << Rogue/Warrior --Haunch of Meat (15)
    .target Innkeeper Grosk
    .money <0.0375
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
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >> Trainiere deine Klassenfähigkeiten
    .target Tarshaw Jaggedscar
    .group
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Trainiere deine Klassenfähigkeiten
    .target Dhugru Gorelust
    .group
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kitha|r und kauft |T133738:0|t[Feuerblitz Rang 2]
    .collect 16302,1,818,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
    .group
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kaplak|r
    .train 674 >> Trainiere deine Klassenfähigkeiten
    .target Kaplak
    .group
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tai'jin|r
    .train 8092 >> Trainiere deine Klassenfähigkeiten
    .target Tai'jin
    .group
step
    #completewith next
    .goto Durotar,55.40,36.73,80,0
    .goto Durotar,56.07,30.05,80,0
    .goto Durotar,56.41,20.04,50 >> Reist zu |cRXP_FRIENDLY_Margoz|r
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
step
    #completewith next
    .goto Durotar,56.49,25.04,50,0
    .goto Durotar,56.11,27.94,50,0
    .goto Durotar,53.18,29.15,50 >> Reist zu Staubwindhöhle
    .isQuestTurnedIn 806
    .group
step
    #label Collars1
    #loop
    .goto Durotar,52.70,27.97,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    >>Tötet |cRXP_ENEMY_ Brennende Klinge Thugs|r, |cRXP_ENEMY_Neophytes|r und |cRXP_ENEMY_Cultists|r. Plündert sie für |cRXP_LOOT_Collars|r
    .complete 827,1 --Searing Collar (6)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .isQuestTurnedIn 806
    .group
step
    #completewith next
    .goto Durotar,56.30,27.91,80,0
    .goto Durotar,56.41,20.04,50 >> Reist zu |cRXP_FRIENDLY_Margoz|r
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
    #completewith next
    .goto Durotar,53.41,27.81,15 >> Reist durch die Höhle
    .group
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
    .group
step << Troll Warrior/Undead Warrior
    #completewith next
    +|cRXP_WARN_Wählt|r |T135158:0|t[Verunstalteter Holzstab] |cRXP_WARN_als Questbelohnung und behaltet ihn. Ihr erhaltet Stabausbildung in Orgrimmar|r
    .group
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Gebt die Quest Sicherung der Linien ab
    .target Rezlak
    .group
step
--    .loop
    .xp 10 >> Farmt bis Stufe 10
    --VV Enter loop coords
step
    #completewith Admiralorders1
    .goto Orgrimmar,48.97,92.84,50 >> Betretet Orgrimmar
    .zoneskip Orgrimmar
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Kauft|r |T135419:0|t[Scharfe Wurfaxt] |cRXP_BUY_von ihm|r
    .collect 3135,200,354,1 --Sharp Throwing Axe (200)
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
step << Undead
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Doras|r
    .fp Orgrimmar >> Erlernt die Orgrimmar-Flugroute
    .target Doras
step
    #label Admiralorders1
    .goto Orgrimmar,32.29,35.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Gebt die Quest Die Befehle des Admirals ab
    .target Nazgrel
step << Rogue
    .goto Orgrimmar,42.75,53.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Therzok|r
	.accept 1963 >> Akzeptiert die Quest Die Shattered-Hand << Orc Rogue/Troll Rogue
    .target Therzok
step
    #label NeeruFireblade
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Gebt die Quest Neeru Fireblade ab
    .accept 809 >>Akzeptiert die Quest Ak'zeloth
    .target Neeru Fireblade
    .isOnQuest 829
    .group
step << Warlock
    .goto Orgrimmar,48.59,46.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mirket|r
    .train 1120 >> Trainiere deine Klassenfähigkeiten
    .target Mirket
step << Troll Warrior/Undead Warrior
    #completewith StaveTraining1
    .goto Orgrimmar,68.02,38.69,30 >> Reist in Das Tal der Ehre
step << Warrior
    .goto Orgrimmar,79.93,31.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Grezz|r
    .train 6546 >> Trainiere deine Klassenfähigkeiten
    .target Grezz Ragefist
step << Troll Warrior/Undead Warrior
    #label StaveTraining1
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hanashi|r
    .train 227 >>Erlernt Stäbe
    .target Hanashi
step << Troll Warrior/Undead Warrior
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Kauft einen|r |T135154:0|t[Hirtenstab] |cRXP_BUY_von ihm|r
    .collect 854,1,398,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Zendo'jian
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Troll Warrior/Undead Warrior
    #optional
    #completewith ZeptoUC1
    +|cRXP_WARN_Legt an|r |T135154:0|t[Hirtenstab] |cRXP_WARN_wenn ihr Stufe 11 seid|r
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Orc Warrior
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Urtharo|r
    .vendor >> Verkauft Müll. Verkauft von Euch Waffe, falls es euch genug Geld für eine |T132395:0|t[Tabar] (22s 14c) bringt. Ihr kommt später zurück, falls ihr noch nicht genug habt
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Orc Warrior
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_. Kauft eine|r |T132395:0|t[Tabar] |cRXP_BUY_von ihm|r
    .collect 1196,1,398,1 --Collect Tabar (1)
    .money <0.2214
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Orc Warrior
    #optional
    #completewith ZeptoUC1
    +|cRXP_WARN_Legt das|r |T132395:0|t[Tabar] an
    .use 1196
    .itemcount 1196,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step
    #label LeaveOrg2
    #completewith ZeptoUC1
    .zone Durotar >> Verlass Orgrimmar
    .zoneskip Durotar
step
    #label ZeptoUC1
    .goto Durotar,50.8,13.8,40 >>Geh auf den Zeppelin-Turm
    .zone Tirisfal Glades >>Nehmt den Zeppelin nach Tirisfal
    >>|cRXP_WARN_Beschwört Wasser, während ihr wartet|r << Mage
    .zoneskip Tirisfal Glades
step
    #completewith next
    .subzoneskip 359 >> Lauf nach Brill
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Coleman|r und |cRXP_FRIENDLY_Gretchen|r im Gasthaus
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_ist im zweiten Stockwerk|r
    .accept 354 >>Akzeptiert die Quest Todesfälle in der Familie
    .accept 362 >>Akzeptiert die Quest Die Spuk-Mühle
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .accept 375 >>Akzeptiert die Quest Die Kälte des Todes
    .target +Gretchen Dedmar
    .goto Tirisfal Glades,61.89,52.73
    .maxlevel 12
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
    .target Austil de Mon << Warrior
    .isQuestAvailable 1498
step << Warlock
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ageron|r im Gasthaus
    .accept 1478 >> Akzeptiert die Quest Halgars Beschwörung
    .target Ageron Kargal
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
    >>|cRXP_BUY_Kauft|r |T134532:0|t[Rotgetupfter Pilz] |cRXP_BUY_von ihr|r << Warrior/Rogue
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Burgess|r, |cRXP_FRIENDLY_Gesucht Poster|r und |cRXP_FRIENDLY_Sevren|r im Gebäude
    .accept 374 >>Akzeptiert die Quest Beweise des Ablebens
    .target +Deathguard Burgess
    .goto Tirisfal Glades,60.93,52.01
    .accept 398 >>Akzeptiert die Quest GESUCHT: Madenauge
    .goto Tirisfal Glades,60.74,51.52
    .accept 358 >>Akzeptiert die Quest Grabräuber
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
    .maxlevel 11
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit|cRXP_FRIENDLY_ Burgess|r und |cRXP_FRIENDLY_Wanted Poster|r
    .accept 374 >>Akzeptiert die Quest Beweise des Ablebens
    .target +Deathguard Burgess
    .goto Tirisfal Glades,60.93,52.01
    .accept 398 >>Akzeptiert die Quest GESUCHT: Madenauge
    .goto Tirisfal Glades,60.74,51.52
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
    .isQuestAvailable 1498
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >> Gebt die Quest Ulag der Spalter ab
    .accept 1820 >> Akzeptiert die Quest Gespräch mit Coleman
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step << Warlock/Mage/Priest
    #completewith next
    .goto Tirisfal Glades,61.80,65.06,20 >> Betrete Unterstadt
    .zoneskip Undercity
    .zoneskip Undercity
step << Warlock/Mage/Priest
    #completewith next
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Nehmt den Aufzug hinab nach Unterstadt
step << Warlock/Mage/Priest
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
step << Priest
    #optional
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5660 >> Gebt die Quest Berührung der Schwäche ab
    .target Aelthalyste
    .isOnQuest 5660
step << Priest
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Aelthalyste|r
    .accept 5658 >> Akzeptiert die Quest Berührung der Schwäche
    .turnin 5658 >> Gebt die Quest Berührung der Schwäche ab
    .target Aelthalyste
step << Rogue
    #optional
    #completewith Swordtraining1
    .goto Tirisfal Glades,61.80,65.06,20 >> Betrete Unterstadt
    .zoneskip Undercity
    .zoneskip Undercity
    .money <0.3023
step << Rogue
    #optional
    #completewith Swordtraining1
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Nehmt den Aufzug hinab nach Unterstadt
    .money <0.3023
step << Undead Rogue
    #optional
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mennet|r
    .turnin 1885 >>Gebt die Quest Mennet Carkad ab
    .accept 1886 >>Akzeptiert die Quest Die Todespirscher
    .target Mennet Carkad
    .money <0.3023
step << Rogue
    #optional
    #label Swordtraining1
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Archibald|r im Kriegsviertel
    .train 201 >>Erlernt 1h Schwerter
    .target Archibald
    .money <0.3023
step << Rogue
    #optional
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Charles|r |cRXP_BUY_im Schurken-Viertel. Kauft eine|r |T135346:0|t[Entersäbel] |cRXP_BUY_von ihm|r
    .collect 851,1,435,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #optional
    #completewith ScarletCrusade1
    +|cRXP_WARN_Rüstet aus:|r |T135346:0|t[Entersäbel]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Undead Rogue
    #optional
    #sticky
    #completewith UnluckyRogue
    >>|cRXP_WARN_Falls ihr|r |cRXP_FRIENDLY_Astor|r seht|cRXP_WARN_, sprecht mit ihm und tötet ihn. Plündert ihn für den Brief. Er patrouilliert die Straße zwischen Brill und dem Grabmal|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
    .isOnQuest 1886
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
step << Warlock/Mage/Rogue/Priest
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
step << Warlock
    #completewith next
    .goto Tirisfal Glades,51.06,67.57
    >>Beute |cRXP_PICK_Perrines Truhe|r für |T133733:0|t[Egalins Zauberfoliant]
    .complete 1473,1 --Egalin's Grimoire (1)
step
    #label ScarletCrusade1
    #loop
	.goto Tirisfal Glades,50.07,68.87,40,0
	.goto Tirisfal Glades,50.23,66.94,40,0
	.goto Tirisfal Glades,51.16,65.73,40,0
	.goto Tirisfal Glades,51.75,66.04,40,0
	.goto Tirisfal Glades,52.93,67.62,40,0
	.goto Tirisfal Glades,52.72,69.33,40,0
	.goto Tirisfal Glades,51.96,69.57,40,0
	.goto Tirisfal Glades,51.03,69.55,40,0
    >>Tötet |cRXP_ENEMY_Captain Perrine|r, |cRXP_ENEMY_Scharlachroter Zelot|r und |cRXP_ENEMY_Scharlachroter Missionar|r. Plündert sie für ihre |cRXP_LOOT_Scharlachroter Insignienring|r
    .complete 370,1 --Captain Perrine (1)
    .mob +Captain Perrine
    .complete 370,2 --Scarlet Zealot (3)
    .mob +Scarlet Zealot
    .complete 370,3 --Scarlet Missionary (3)
    .mob +Scarlet Missionary
    .complete 374,1 --Scarlet Insignia Ring (10)
    .disablecheckbox
step << Warlock
    .goto Tirisfal Glades,51.06,67.57
    >>Beute |cRXP_PICK_Perrine's Truhe|r auf dem Boden für |T133733:0|t[Egalins Zauberfoliant]
    .complete 1473,1 --Egalin's Grimoire (1)
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
step << Warlock
    #completewith next
    .cast 9221 >>|cRXP_WARN_Benutzt die|r |T134416:0|t[Runen der Beschwörung] |cRXP_WARN_am Beschwörungskreis|r
    .use 6284
step << Warlock
    .goto Undercity,86.64,27.10
    >>Tötet den |cRXP_ENEMY_Beschworenen Leerwandler|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
step << Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Carendin|r
    .turnin 1471 >>Gebt die Quest Die Bindung ab
    .target Carendin Halgar
step << skip --Warlock
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Führt einen Logout-Skip durch: Positioniert den Character von Euch auf der höchsten Stelle der niedrigsten Treppenstufe, bis er zu schweben scheint. Meldet euch dann ab und wieder an|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_KLICKT HIER für ein Beispiel|r
    >>|cRXP_WARN_Falls ihr das nicht könnt, lauft einfach normal aus der Unterstadt|r
step << Warlock
    #completewith next
    .goto Tirisfal Glades,61.92,64.85
    .zone Tirisfal Glades >> Verlasst Unterstadt
    .zoneskip Tirisfal Glades
step
    #completewith next
    >>Tötet jeden |cRXP_ENEMY_Nachtsauger|r, den ihr seht. Sammelt ihre |cRXP_LOOT_Nachtsaugerpelz|r als Beute
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    .goto Tirisfal Glades,47.60,44.03,150 >> Reist Nord-westlich zu Agamands Mühlen
    .isOnQuest 362
step
    #completewith MillsOverun
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
    #label KillDevlin
    .goto Tirisfal Glades,47.34,40.78
    >>Tötet |cRXP_ENEMY_Devlin|r. Plündert ihn für |cRXP_LOOT_Devlins sterbliche Überreste|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
step
    .goto Tirisfal Glades,49.34,36.02
    >>Tötet |cRXP_ENEMY_Nissa|r. Plündert sie für |cRXP_LOOT_Nissas sterbliche Überreste|r. Sie kann sich im Gebäude befinden
    .complete 354,2 --Nissa's Remains (1)
    .mob Nissa Agamand
step
    #label ThurmanGregor
    #loop
    .goto Tirisfal Glades,45.08,31.15,0
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15,60,0
    >>Tötet |cRXP_ENEMY_Thurman|r und |cRXP_ENEMY_Gregor|r. Plündert sie für ihre |cRXP_LOOT_Überreste|r. Sie können umher patroullieren
    .complete 354,3 --Thurman's Remains (1)
    .unitscan +Thurman Agamand
    .complete 354,1 --Gregor's Remains (1)
    .unitscan +Gregor Agamand
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
    #completewith MaggotEye
    .goto Tirisfal Glades,54.32,31.56,15,0
    .goto Tirisfal Glades,54.78,32.75,15,0
    .goto Tirisfal Glades,55.84,32.28,15,0
    .goto Tirisfal Glades,56.55,32.43,40,0
    .goto Tirisfal Glades,57.77,31.69,50 >> Reist die Hügel hinab
    >>|cRXP_WARN_Passt auf. Nehmt nicht zu viel Fallschaden. Folgt dem Wegpunkt zur Sicherheit|r
step
    #requires MillsOverun
    #completewith next
    >>Tötet |cRXP_ENEMY_Gnolle|r und |cRXP_ENEMY_Moderfelle|r. Plündert sie für |cRXP_LOOT_Einbalsamierungssekret|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .mob +Rot Hide Mongrel
    .complete 358,3 --Embalming Ichor (8)
    .mob +Rot Hide Gnoll
    .mob +Rot Hide Mongrel
    .isOnQuest 358
    .maxlevel 11
step
    #requires MillsOverun
    #label MaggotEye
    .goto Tirisfal Glades,58.66,30.77
    >>Tötet |cRXP_ENEMY_Madenauge|r. Plündert ihn für seine |cRXP_LOOT_Tatze|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
step
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
step
    #completewith RotHideGnolls
    >>Tötet jeden |cRXP_ENEMY_Nachtsauger|r, den ihr seht. Sammelt ihre |cRXP_LOOT_Nachtsaugerpelz|r als Beute
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Bastarde|r und |cRXP_ENEMY_Grabräuber|r. Plündert sie für |cRXP_LOOT_Einbalsamierungssekret|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .mob +Rot Hide Mongrel
    .complete 358,1 --Rot Hide Graverobber (8)
    .mob +Rot Hide Graverobber
    .complete 358,3 --Embalming Ichor (8)
    .mob +Rot Hide Mongrel
    .mob +Rot Hide Graverobber
    .isOnQuest 358
    .maxlevel 11
step
    #optional
    #loop
    .goto Tirisfal Glades,57.48,35.95,0
    .goto Tirisfal Glades,57.68,34.37,30,0
    .goto Tirisfal Glades,57.45,35.96,30,0
    .goto Tirisfal Glades,56.79,37.79,30,0
    .goto Tirisfal Glades,56.05,38.76,30,0
    .goto Tirisfal Glades,55.09,38.74,30,0
    .goto Tirisfal Glades,55.25,40.16,30,0
    .goto Tirisfal Glades,54.68,42.12,30,0
    .goto Tirisfal Glades,55.29,41.51,30,0
    .goto Tirisfal Glades,56.58,41.99,30,0
    .goto Tirisfal Glades,58.29,42.93,30,0
    .goto Tirisfal Glades,58.83,40.68,30,0
    .goto Tirisfal Glades,58.36,38.55,30,0
    .goto Tirisfal Glades,57.48,35.95,30,0
    >>Plündert die |cRXP_PICK_Verdammniskraut|r auf dem Boden. Sie werden in der Nähe von Bäumen im Gnoll-Gebiet gefunden
    .complete 5482,1 --Doom Weed (10)
    .isOnQuest 5482
    .maxlevel 11
step
    #label RotHideGnolls
    #loop
    .goto Tirisfal Glades,55.24,42.54,0
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    >>Tötet |cRXP_ENEMY_Bastarde|r und |cRXP_ENEMY_Grabräuber|r. Plündert sie für |cRXP_LOOT_Einbalsamierungssekret|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .mob +Rot Hide Mongrel
    .complete 358,1 --Rot Hide Graverobber (8)
    .mob +Rot Hide Graverobber
    .complete 358,3 --Embalming Ichor (8)
    .mob +Rot Hide Mongrel
    .mob +Rot Hide Graverobber
    .isOnQuest 358
    .maxlevel 11
step
    #loop
    .goto Tirisfal Glades,57.71,48.96,0
    .goto Tirisfal Glades,58.29,49.80,30,0
    .goto Tirisfal Glades,57.71,48.96,30,0
    .goto Tirisfal Glades,59.26,46.73,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Holland|r, er patrouilliert um den Friedhof herum.
    .turnin 5482 >>Gebt die Quest Verdammniskraut ab
    .target Junior Apothecary Holland
    .isQuestComplete 5482
step
    #optional
    .abandon 5482 >>Brecht die Quest Verdammniskraut ab
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dillinger|r, |cRXP_FRIENDLY_Johaan|r, |cRXP_FRIENDLY_Zygand|r und |cRXP_FRIENDLY_Sevren|r
    .turnin 426 >>Gebt die Quest Überrannte Mühle ab
    .target +Deathguard Dillinger
    .goto Tirisfal Glades,58.19,51.44
    .turnin 368 >>Gebt die Quest Eine neue Seuche ab
    .accept 369 >>Akzeptiert die Quest Eine neue Seuche
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 398 >>Gebt die Quest GESUCHT: Madenauge ab
    .turnin 370 >>Gebt die Quest Im Krieg mit dem Scharlachroten Kreuzzug ab
    .accept 371 >>Akzeptiert die Quest Im Krieg mit dem Scharlachroten Kreuzzug
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 358 >>Gebt die Quest Grabräuber ab
    .accept 359 >>Akzeptiert die Quest Verlassenen-Pflichten
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
    .isQuestComplete 358
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dillinger|r, |cRXP_FRIENDLY_Johaan|r und |cRXP_FRIENDLY_Zygand|r
    .turnin 426 >>Gebt die Quest Überrannte Mühle ab
    .target +Deathguard Dillinger
    .goto Tirisfal Glades,58.19,51.44
    .turnin 368 >>Gebt die Quest Eine neue Seuche ab
    .accept 369 >>Akzeptiert die Quest Eine neue Seuche
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.40
    .turnin 398 >>Gebt die Quest GESUCHT: Madenauge ab
    .turnin 370 >>Gebt die Quest Im Krieg mit dem Scharlachroten Kreuzzug ab
    .accept 371 >>Akzeptiert die Quest Im Krieg mit dem Scharlachroten Kreuzzug
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
step
    #optional
    .abandon 358 >>Brecht die Quest Grabräuber ab
step
    #completewith HorrorsandSpirits
    +|cRXP_WARN_Bindet euren|r |T133849:0|t[Schlummer Sand]|cRXP_WARN_. Bewahrt ihn für Notfallsituationen auf|r
step
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Kauft einen|r |T132891:0|t[Grober Faden] |cRXP_BUY_von|r |cRXP_FRIENDLY_ihr|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yvette|r, |cRXP_FRIENDLY_Coleman|r und |cRXP_FRIENDLY_Gretchen|r im Gasthaus
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_ist in der zweiten Etage|r
    .turnin 361 >>Gebt die Quest Ein nie zugestellter Brief ab
    .target +Yvette Farthing
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>Gebt die Quest Todesfälle in der Familie ab
    .turnin 362 >>Gebt die Quest Die Spuk-Mühle ab
    .accept 355 >>Akzeptiert die Quest Gespräch mit Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 >>Gebt die Quest Die Kälte des Todes ab
    .target +Gretchen Dedmar
    .goto Tirisfal Glades,61.89,52.73
    .isQuestComplete 375
    .isOnQuest 361
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Coleman|r und |cRXP_FRIENDLY_Gretchen|r im Gasthaus
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_ist in der zweiten Etage|r
    .turnin 354 >>Gebt die Quest Todesfälle in der Familie ab
    .turnin 362 >>Gebt die Quest Die Spuk-Mühle ab
    .accept 355 >>Akzeptiert die Quest Gespräch mit Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 >>Gebt die Quest Die Kälte des Todes ab
    .target +Gretchen Dedmar
    .goto Tirisfal Glades,61.89,52.73
    .isQuestComplete 375
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yvette|r und |cRXP_FRIENDLY_Coleman|r im Gasthaus
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_ist in der zweiten Etage|r
    .turnin 361 >>Gebt die Quest Ein nie zugestellter Brief ab
    .target +Yvette Farthing
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>Gebt die Quest Todesfälle in der Familie ab
    .turnin 362 >>Gebt die Quest Die Spuk-Mühle ab
    .accept 355 >>Akzeptiert die Quest Gespräch mit Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .isOnQuest 361
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Coleman|r im Gasthaus
    .turnin 354 >>Gebt die Quest Todesfälle in der Familie ab
    .turnin 362 >>Gebt die Quest Die Spuk-Mühle ab
    .accept 355 >>Akzeptiert die Quest Gespräch mit Sevren
    .goto Tirisfal Glades,61.72,52.29
    .target Coleman Farthing
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yvette|r, |cRXP_FRIENDLY_Coleman|r und |cRXP_FRIENDLY_Gretchen|r im Wirtshaus
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_ist in der zweiten Etage|r
    .turnin 361 >>Gebt die Quest Ein nie zugestellter Brief ab
    .target +Yvette Farthing
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>Gebt die Quest Todesfälle in der Familie ab
    .turnin 362 >>Gebt die Quest Die Spuk-Mühle ab
    .accept 355 >>Akzeptiert die Quest Gespräch mit Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 >>Gebt die Quest Die Kälte des Todes ab
    .target +Gretchen Dedmar
    .goto Tirisfal Glades,61.89,52.73
    .isQuestComplete 375
    .isOnQuest 361
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Coleman|r und |cRXP_FRIENDLY_Gretchen|r im Gasthaus
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_ist in der zweiten Etage|r
    .turnin 354 >>Gebt die Quest Todesfälle in der Familie ab
    .turnin 362 >>Gebt die Quest Die Spuk-Mühle ab
    .accept 355 >>Akzeptiert die Quest Gespräch mit Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 >>Gebt die Quest Die Kälte des Todes ab
    .target +Gretchen Dedmar
    .goto Tirisfal Glades,61.89,52.73
    .isQuestComplete 375
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Yvette|r und |cRXP_FRIENDLY_Coleman|r im Wirtshaus
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_ist in der zweiten Etage|r
    .turnin 361 >>Gebt die Quest Ein nie zugestellter Brief ab
    .target +Yvette Farthing
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>Gebt die Quest Todesfälle in der Familie ab
    .turnin 362 >>Gebt die Quest Die Spuk-Mühle ab
    .accept 355 >>Akzeptiert die Quest Gespräch mit Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .isOnQuest 361
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Coleman|r im Gasthaus
    .turnin 354 >>Gebt die Quest Todesfälle in der Familie ab
    .turnin 362 >>Gebt die Quest Die Spuk-Mühle ab
    .accept 355 >>Akzeptiert die Quest Gespräch mit Sevren
    .goto Tirisfal Glades,61.72,52.29
    .target Coleman Farthing
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Coleman|r im Gasthaus
    .turnin 1820 >>Gebt die Quest Gespräch mit Coleman ab
    .accept 1821 >>Akzeptiert die Quest Agamand-Erbstücke
    .group
    .isQuestTurnedIn 1819
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Coleman|r im Gasthaus
    .turnin 1820 >>Gebt die Quest Gespräch mit Coleman ab
    .solo
    .isQuestTurnedIn 1819
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
    .train 1766 >> Erlernt |T132219:0|t[Tritt]
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
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch]|cRXP_BUY_ von ihr|r << Mage/Priest
    >>|cRXP_BUY_Kauft|r |T134532:0|t[Rotgetupfter Pilz] |cRXP_BUY_von ihr|r <<Warrior/Rogue
    >>|cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_und|r |T134532:0|t[Rotgetupfter Pilz] |cRXP_BUY_von ihr|r << Warlock
    .vendor >> Verkauft Müll
    .collect 1179,20,356,1 << Mage/Priest --Ice Cold Milk (20)
    .collect 4605,20,356,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,356,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,356,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.050 << !Warlock
    .money <0.075 << Warlock
    .target Innkeeper Renee
step
    #label UnluckyRogue
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Linnea|r
    .turnin 359 >>Gebt die Quest Verlassenen-Pflichten ab
    .accept 360 >>Akzeptiert die Quest Rückkehr zum Magistrat
    .accept 356 >>Akzeptiert die Quest Patrouille zur Rückendeckung
    .target Deathguard Linnea
    .isQuestTurnedIn 358
step
    #label UnluckyRogue
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Linnea|r
    .accept 356 >>Akzeptiert die Quest Patrouille zur Rückendeckung
    .target Deathguard Linnea
step
    #completewith HorrorsandSpirits
    >>Tötet jeden |cRXP_ENEMY_Nachtsauger|r, den ihr seht. Sammelt ihre |cRXP_LOOT_Nachtsaugerpelz|r als Beute
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step << Mage
    #completewith next
    >>Tötet |cRXP_ENEMY_Blutender Schrecken|r und |cRXP_ENEMY_Wandernder Geist|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
step << Mage
    .goto Tirisfal Glades,77.48,62.00
    >>Plündert eine der Pflanzen am Boden für einen |cRXP_PICK_Balnirlöwenmäulchen|r
    .complete 1882,1 --Balnir Snapdragons (1)
step
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
step << Priest/Warlock
    #completewith Scarletrings
    >>|cRXP_WARN_Sammelt 3 Stapel|r |T132889:0|t[Leinenstoff] |cRXP_WARN_für euren Geringen Magiezauberstab. Dies ist die letzte Chance, genug davon zu bekommen, bevor ihr den Silberwald erreicht|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .mob Scarlet Friar
    .mob Scarlet Zealot
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Scharlachrotes Ordensmitglied|r und |cRXP_ENEMY_Scharlachroter Zelot|r. Plündert sie für |cRXP_LOOT_Scharlachroter Insignienring|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .isOnQuest 374
step
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
    >>Tötet |cRXP_ENEMY_Scharlachrotes Ordensmitglied|r und |cRXP_ENEMY_Scharlachroter Zelot|r. Plündert sie für |cRXP_LOOT_Scharlachroter Insignienring|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 374
step << Priest/Warlock
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
    >>|cRXP_WARN_Sammelt 3 Stapel|r |T132889:0|t[Leinenstoff] |cRXP_WARN_für euren Stab. Dies ist die letzte Chance, genug davon zu bekommen, bevor ihr nach Silberwald geht|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .mob Scarlet Friar
    .mob Scarlet Zealot
step
    #completewith next
    >>Tötet jeden |cRXP_ENEMY_Nachtsauger|r, den ihr seht. Sammelt ihre |cRXP_LOOT_Nachtsaugerpelz|r als Beute
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
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
step
    #completewith LinneaTurnin
    .goto Tirisfal Glades,65.49,60.25,60 >> Reist zurück zu |cRXP_FRIENDLY_Linnea|r
step
    #completewith next
    >>Beenden das töten von |cRXP_ENEMY_Nachtsauger|r. Plündert sie für |cRXP_LOOT_Pelze|r
    >>|cRXP_WARN_Ihr könnt diese Quest überspringen, wenn RNG von Euch schlecht gewesen ist|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
step
    #label LinneaTurnin
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Linnea|r
    .turnin 356 >>Gebt die Quest Patrouille zur Rückendeckung ab
    .target Deathguard Linnea
step
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Kauft einen|r |T132891:0|t[Grober Faden] |cRXP_BUY_von|r |cRXP_FRIENDLY_ihr|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Burgess|r, |cRXP_FRIENDLY_Zygand|r, |cRXP_FRIENDLY_Sevren|r und |cRXP_FRIENDLY_Johaan|r
    .turnin 374 >>Gebt die Quest Todesbeweise ab
    .target +Deathguard Burgess
    .goto Tirisfal Glades,60.93,52.01
    .turnin 371 >>Gebt die Quest Im Krieg mit dem Scharlachroten Kreuzzug ab
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 360 >>Gebt die Quest Rückkehr zum Magistrat ab
    .turnin 355 >>Gebt die Quest Sprecht mit Sevren ab
    .accept 408 >>Akzeptiert die Quest Die Familiengruft
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
    .turnin 369 >>Gebt die Quest Eine neue Seuche ab
    .accept 445 >>Akzeptiert die Quest Lieferung in den Silberwald
    .accept 492 >>Akzeptiert die Quest Eine neue Seuche
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.39
    .isOnQuest 360
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Burgess|r, |cRXP_FRIENDLY_Zygand|r, |cRXP_FRIENDLY_Sevren|r und |cRXP_FRIENDLY_Johaan|r
    .turnin 374 >>Gebt die Quest Todesbeweise ab
    .target +Deathguard Burgess
    .goto Tirisfal Glades,60.93,52.01
    .turnin 371 >>Gebt die Quest Im Krieg mit dem Scharlachroten Kreuzzug ab
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 355 >>Gebt die Quest Sprecht mit Sevren ab
    .accept 408 >>Akzeptiert die Quest Die Familiengruft
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
    .turnin 369 >>Gebt die Quest Eine neue Seuche ab
    .accept 445 >>Akzeptiert die Quest Lieferung in den Silberwald
    .accept 492 >>Akzeptiert die Quest Eine neue Seuche
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.39
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Burgess|r, |cRXP_FRIENDLY_Zygand|r, |cRXP_FRIENDLY_Sevren|r und |cRXP_FRIENDLY_Johaan|r
    .turnin 374 >>Gebt die Quest Todesbeweise ab
    .target +Deathguard Burgess
    .goto Tirisfal Glades,60.93,52.01
    .turnin 371 >>Gebt die Quest Im Krieg mit dem Scharlachroten Kreuzzug ab
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 360 >>Gebt die Quest Rückkehr zum Magistrat ab
    .turnin 355 >>Gebt die Quest Sprecht mit Sevren ab
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
    .turnin 369 >>Gebt die Quest Eine neue Seuche ab
    .accept 445 >>Akzeptiert die Quest Lieferung in den Silberwald
    .accept 492 >>Akzeptiert die Quest Eine neue Seuche
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.39
    .isOnQuest 360
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Burgess|r, |cRXP_FRIENDLY_Zygand|r, |cRXP_FRIENDLY_Sevren|r und |cRXP_FRIENDLY_Johaan|r
    .turnin 374 >>Gebt die Quest Todesbeweise ab
    .target +Deathguard Burgess
    .goto Tirisfal Glades,60.93,52.01
    .turnin 371 >>Gebt die Quest Im Krieg mit dem Scharlachroten Kreuzzug ab
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 355 >>Gebt die Quest Sprecht mit Sevren ab
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
    .turnin 369 >>Gebt die Quest Eine neue Seuche ab
    .accept 445 >>Akzeptiert die Quest Lieferung in den Silberwald
    .accept 492 >>Akzeptiert die Quest Eine neue Seuche
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.39
step
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gretchen|r oben
    .turnin 375 >>Gebt die Quest Die Kälte des Todes ab
    .target Gretchen Dedmar
    .isOnQuest 375
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
    .train 1766 >> Erlernt |T132219:0|t[Tritt]
    .target Marion Call
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rupert|r
    .train 755 >> Erlernt |T136168:0|t[Lebenslinie]
    .target Rupert Boch
    .xp <12,1
step
    .goto Tirisfal Glades,47.39,43.64,150,0
    .goto Tirisfal Glades,52.23,26.91,20,0
    .goto Tirisfal Glades,52.29,26.40,8 >> Reist zur Krypta in Agamands Mühlen
    .isOnQuest 408
    .group
step << Warrior
    #completewith CaptainDargol
    >>Sammelt die |cRXP_PICK_Agamand-Waffenregale|r vom Boden
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
    .group 2
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Klagende Vorfahrin|r und |cRXP_ENEMY_Faulender Vorfahr|r
    >>|cRXP_WARN_Passt auf! Die Gegner in dieser Krypta spawnen dynamisch nach!|r
    .complete 408,1 --Wailing Ancestor (8)
    .mob +Wailing Ancestor
    .complete 408,2 --Rotting Ancestor (8)
    .mob +Rotting Ancestor
    .group 2
step
    #label CaptainDargol
    .goto Tirisfal Glades,52.53,26.78,8,0
    .goto Tirisfal Glades,52.08,26.81,8,0
    .goto Tirisfal Glades,52.03,26.43,8,0
    .goto Tirisfal Glades,52.81,26.36
    >>Tötet |cRXP_ENEMY_Captain Dargol|r. plündert ihn für seinen |cRXP_LOOT_Schädel|r. Er ist am Boden der Krypta
    .complete 408,3 --Dargol's Skull (1)
    .mob Captain Dargol
    .isOnQuest 408
    .group 2
step << Warrior
    #completewith next
    >>Sammelt die |cRXP_PICK_Agamand-Waffenregale|r vom Boden
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
    .group 2
step
    #loop
	.goto Tirisfal Glades,51.90,26.87,0
	.goto Tirisfal Glades,51.88,25.86,25,0
	.goto Tirisfal Glades,52.61,25.85,25,0
	.goto Tirisfal Glades,52.60,26.88,25,0
	.goto Tirisfal Glades,51.90,26.87,25,0
    >>Tötet |cRXP_ENEMY_Klagende Vorfahrin|r und |cRXP_ENEMY_Faulender Vorfahr|r
    >>|cRXP_WARN_Passt auf! Die Gegner in dieser Krypta spawnen dynamisch nach!|r
    .complete 408,1 --Wailing Ancestor (8)
    .mob +Wailing Ancestor
    .complete 408,2 --Rotting Ancestor (8)
    .mob +Rotting Ancestor
    .isOnQuest 408
    .group 2
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
    .group 2
step << skip
    .goto Tirisfal Glades,51.68,25.67
    .goto Tirisfal Glades,56.24,49.42,30 >>|cRXP_WARN_Springt auf einen der Waffenständer. Führt einen Logout-Skip durch, indem ihr euch ausloggt und wieder einloggt|r
    .link https://www.youtube.com/watch?v=bH_NYmWf8Lc&ab >> |cRXP_WARN_Klickt hier für ein Beispiel|r
    .isQuestComplete 408
    .group
step
    #completewith NewPlagueFinal
    .subzone 159 >>Lauf nach Brill
    .isQuestComplete 408
    .group
step
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sevren|r
    .turnin 408 >>Gebt die Quest Die Familiengruft ab
    .target Magistrate Sevren
    .isQuestComplete 408
    .group
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Coleman|r im Gasthaus
    .turnin 1821 >>Gebt die Quest Agamand-Erbstücke ab
    .turnin 1822 >>Erbstück Waffe
    .target Coleman Farthing
    .isQuestComplete 1821
    .group
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Coleman|r im Gasthaus
    .turnin 1822 >>Erbstück Waffe
    .target Coleman Farthing
    .isQuestTurnedIn 1821
    .group
step
    #optional
    .goto Tirisfal Glades,61.97,51.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gefangener Scharlachroter Zelot|r unten im hinteren Teil des Gasthauses
    .turnin 407 >>Gebt die Quest Felder des Kummers ab
    .target Captured Scarlet Zealot
    .isQuestTurnedIn 365
step
    #label NewPlagueFinal
    .goto Tirisfal Glades,61.94,51.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Gefangenen Gebirgsjäger|r unten im hinteren Bereich des Gasthauses
    .turnin 492 >> Gebt die Quest Eine neue Seuche ab
    .target Captured Mountaineer
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
    .goto Tirisfal Glades,61.80,65.06,20 >> Betrete Unterstadt
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
step << Undead Rogue
    #completewith Swordtraining2
    .goto Tirisfal Glades,61.80,65.06,20 >> Betrete Unterstadt
    .zoneskip Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Undead Rogue
    #completewith Swordtraining2
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Nehmt den Aufzug hinab nach Unterstadt
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Undead
    #completewith UCflightpath
    .goto Tirisfal Glades,61.80,65.06,20 >> Betrete Unterstadt
    .zoneskip Undercity
step << !Undead
    #completewith UCflightpath
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Nehmt den Aufzug hinab nach Unterstadt
step << !Undead
    #label UCflightpath
    .goto Undercity,63.25,48.56
    .fp Undercity >> Erlernt die Flugroute Unterstadt
    .target Michael Garrett
step << Undead Rogue
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mennet|r
    .turnin 1885 >>Gebt die Quest Mennet Carkad ab
    .accept 1886 >>Akzeptiert die Quest Die Todespirscher
    .target Mennet Carkad
    .isOnQuest 1885
step << Rogue
    #label Swordtraining2
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Archibald|r im Kriegsviertel
    .train 201 >>Erlernt 1h Schwerter
    .target Archibald
step << Rogue
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Charles|r |cRXP_BUY_ im Schurken-Viertel. Kauft ein|r |T135346:0|t[Entersäbel] |cRXP_BUY_von ihm|r
    .collect 851,1,435,1 --Collect Cutlass (1)
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Rüstet aus:|r |T135346:0|t[Entersäbel]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Undead Warrior
    #completewith Entersilverpine
    .goto Tirisfal Glades,61.80,65.06,20 >> Betrete Unterstadt
    .zoneskip Undercity
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
step << Priest/Warlock
    .goto Undercity,62.47,61.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lavinia|r
    .train 7411 >> Erlernt |T136244:0|t[Verzauberkunst]
    .target Lavinia Crowe
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.06,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Victor|r
    .train 3908 >> Erlernt |T136249:0|t[Schneiderei]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.76,30.67
    >>|cRXP_WARN_Verarbeitet all euren|r |T132889:0|t[Leinenstoff] |cRXP_WARN_in|r |T132890:0|t[Leinenstoffballen]
    .collect 2996,30,435,1 --Bolt of Linen Cloth (30)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.06,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Victor|r
    .train 7623 >> Erlernt |T132662:0|t[Braune Leinenrobe]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.57,30.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Millie|r
    >>|cRXP_BUY_Kauft|r |T132891:0|t[Grober Faden] |cRXP_BUY_von ihr|r
    .collect 2320,30,435,1 --Coarse Thread (30)
    .target Millie Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    >>|cRXP_WARN_Stellt so viele|r |T132662:0|t[Braune Leinenrobe] |cRXP_WARN_wie ihr könnt|r her
    .collect 6238,9,398,1 --Brown Linen Robe(9)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,62.35,60.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Sprecht mit|r |cRXP_FRIENDLY_Thaddeus|r|cRXP_BUY_. Kauft|r |T133942:0|t[Kupferrute] |cRXP_BUY_und|r |T135435:0|t[Einfaches Holz] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Entzaubert alle|r |T132662:0|t[Braune Leinenrobe] |cRXP_WARN_die ihr gemacht habt und erstellt eine|r |T135225:0|t[Runenverzierte Kupferrute]
    >>|cRXP_WARN_Falls ihr|r |T132867:0|t[Geringe Magieessenz] nicht bekommen habt |cRXP_WARN_dann kauft eine bei|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_wenn eine verfügbar ist. Sonst beendet diesen Schritt später|r
    .collect 6218,1,435,1 --Runed Copper Rod (1)
    .collect 4470,1,435,1 --Simple Wood (1)
    .target Thaddeus Webb
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,62.54,60.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malcomb|r
    .train 14293 >> Erlernt |T135139:0|t[Geringer Magiezauberstab]
    .target Malcomb Wynn
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    >>|cRXP_WARN_Stellt einen |r |T135139:0|t[Geringer Magiezauberstab] her
    >>|cRXP_WARN_Falls ihr|r |T132867:0|t[Geringe Magieessenz] nicht bekommen habt |cRXP_WARN_dann kauft eine bei|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_wenn eine verfügbar ist. Sonst beendet diesen Schritt später|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    #optional
    #completewith Entersilverpine
    +Legt |T135139:0|t[Geringer Magiezauberstab] |cRXP_WARN_an|r
    .use 11287
    .itemcount 11287,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
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
