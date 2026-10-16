if GetLocale() ~= "deDE" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 1-6 Tirisfal
#next 6-10 Immersangwald
#version 1
--#group RXP Cataclysm (H) << cata

#defaultfor Undead
#group RXP Kataklysmus 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000

step << !Undead
    #completewith next
    +|cRXP_WARN_Ihr habt eine Anleitung für Untote ausgewählt. Es wird empfohlen, dass ihr die gleiche Startzone wählt, in der ihr startet|r
step
    .goto 18,29.36,70.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Agatha|r
    .accept 24959 >>Akzeptiert die Quest Frisch aus dem Grab
    .target Agatha
step
    .goto 18,30.07,71.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mordo|r
    .turnin 24959 >>Gebt die Quest Frisch aus dem Grab ab
    .accept 28608 >>Akzeptiert die Quest Das Schattengrab
    .target Undertaker Mordo
step
    #completewith next
    .goto 18,30.33,72.31,8,0
    .goto 18,30.28,72.78,5,0
    .goto 18,30.04,72.78,5,0
    .goto 18,29.94,72.45,5 >>BETRETET das Schattengrab
step
    .goto 18,29.67,71.98
    >>Plündert die |cRXP_LOOT_Corpse-Stitching Twine|r und das |cRXP_LOOT_Thick Balsamierungsflüssigkeit|r auf dem Tisch
    .complete 28608,2 --Corpse-Stitching Twine (1)
    .complete 28608,1 --Thick Embalming Fluid (1)
step
    #completewith next
    .goto 18,29.94,72.45,5,0
    .goto 18,30.04,72.78,5,0
    .goto 18,30.28,72.78,5,0
    .goto 18,30.33,72.31,8,0 >>Verlasst das Grab
step
    .goto 18,30.07,71.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mordo|r
    .turnin 28608 >>Gebt die Quest Das Schattengrab ab
    .accept 26799 >>Akzeptiert die Quest Die nicht gerettet werden konnten
    .target Undertaker Mordo
step
    .goto 18,30.66,71.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Caice|r
    .accept 24960 >>Akzeptiert die Quest Das Erwachen
    .target Caretaker Caice
step
    #completewith ValdredMoray
    >>Tötet |cRXP_ENEMY_Mindless Zombies|r
    .complete 26799,1 --6/6 Mindless Zombie slain
    .mob Mindless Zombie
step
    .goto 1420/0,1640.59998,1753.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Redpath|r
    .complete 24960,2 --1/1 Speak with Marshal Redpath
    .skipgossip
    .target Marshal Redpath
step
    .goto 18,30.24,69.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lilian|r
    .complete 24960,1 --1/1 Speak with Lilian Voss
    .skipgossip
    .target Lilian Voss
step
    #label ValdredMoray
    .goto 1420/0,1704.70007,1740.20007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valdred|r
    .complete 24960,3 --1/1 Speak with Valdred Moray
    .skipgossip
    .target Valdred Moray
step
    #loop
    .goto 18,30.39,69.59,0
    .waypoint 18,30.81,69.74,30,0
    .waypoint 18,30.42,70.07,30,0
    .waypoint 18,29.76,69.98,30,0
    .waypoint 18,29.27,70.03,30,0
    .waypoint 18,29.50,71.75,30,0
    .waypoint 18,30.39,69.59,30,0
    >>Tötet |cRXP_ENEMY_Mindless Zombies|r
    .complete 26799,1 --6/6 Mindless Zombie slain
    .mob Mindless Zombie
step
    .goto 18,30.07,71.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mordo|r
    .turnin 26799 >>Gebt die Quest Die nicht gerettet werden konnten ab
    .target Undertaker Mordo
step
    .goto 18,30.66,71.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Caice|r
    .turnin 24960 >>Gebt die Quest Das Erwachen ab
    .accept 25089 >>Akzeptiert die Quest Nach den Gräbern
    .target Caretaker Caice
step
    #completewith next
    .goto 18,31.38,66.23,8 >>BETRETET die Kirche
step
    .goto 18,30.83,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sarvis|r
    .accept 26801 >>Akzeptiert die Quest Geißel an unseren Grenzen
    .target Shadow Priest Sarvis
step
    .goto 18,31.62,65.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Saltain|r
    .turnin 25089 >>Gebt die Quest Nach den Gräbern ab
    .accept 26800 >>Akzeptiert die Quest Rekrutierung
    .target Deathguard Saltain
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Rattlecage Skeletons|r und |cRXP_ENEMY_Wretches Ghule|r
    .complete 26801,1 --8/8 Deathknell Scourge slain
    .mob Rattlecage Skeleton
    .mob Wretches Ghoul
step
    #loop
    .goto 18,31.03,63.10,0
    .waypoint 18,31.79,64.38,20,0
    .waypoint 18,31.25,64.05,20,0
    .waypoint 18,31.97,61.99,20,0
    .waypoint 18,33.11,63.07,20,0
    .waypoint 18,33.34,63.87,20,0
    .waypoint 18,33.32,64.56,20,0
    .waypoint 18,32.87,64.62,20,0
    .waypoint 18,31.97,61.99,20,0
    >>Klickt auf die |cRXP_ENEMY_Scarlet Leichen|r auf dem Boden
    .complete 26800,1 --6/6 Scarlet Corpses gathered
    .mob Scarlet Corpse
step
    #loop
    .goto 18,31.24,63.43,0
    .waypoint 18,31.64,63.93,30,0
    .waypoint 18,32.18,63.21,30,0
    .waypoint 18,32.29,61.30,30,0
    .waypoint 18,31.26,61.24,30,0
    .waypoint 18,30.95,62.35,30,0
    .waypoint 18,31.24,63.43,30,0
    >>Tötet |cRXP_ENEMY_Rattlecage Skeletons|r und |cRXP_ENEMY_Wretches Ghule|r
    .complete 26801,1 --8/8 Deathknell Scourge slain
    .mob Rattlecage Skeleton
    .mob Wretches Ghoul
step
    .goto 18,31.62,65.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Saltain|r
    .turnin 26800 >>Gebt die Quest Rekrutierung ab
    .target Deathguard Saltain
step
    #completewith next
    .goto 18,31.38,66.23,8 >>BETRETET die Kirche
step
    .goto 18,30.83,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sarvis|r
    .turnin 26801 >>Gebt die Quest Geißel an unseren Grenzen ab
    .accept 31146 >>Akzeptiert die Quest Bekritzelte Schriftrolle << Monk
    .accept 3096 >>Akzeptiert die Quest Verschlüsselte Rolle << Rogue
    .accept 3095 >>Akzeptiert die Quest Einfache Rolle << Warrior
    .accept 24962 >>Akzeptiert die Quest Die mitgenommene Schriftrolle << Hunter
    .accept 3098 >>Akzeptiert die Quest Glyphen-Rolle << Mage
    .accept 3097 >>Akzeptiert die Quest Geheiligte Rolle << Priest
    .accept 3099 >>Akzeptiert die Quest Besudelte Rolle << Warlock
    .target Shadow Priest Sarvis
step
    .goto 1420/0,1638.70007,1847.70007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elreth|r
    .accept 24961 >>Akzeptiert die Quest Die Wahrheit des Grabes
    .target Novice Elreth
step << Mage
    .goto 18,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Isabella|r
    .turnin 3098 >>Gebt die Quest Glyphenrolle ab
    .accept 24965 >>Akzeptiert die Quest Magielehren
    .train 5143 >>Erlernen |T136096:0|t[Arkane Geschosse] << Cata
    .target Isabella
step << Hunter
    .goto 18,31.45,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Xavier|r
    .turnin 24962 >>Gebt die Quest Die mitgenommene Schriftrolle ab
    .accept 24964 >>Akzeptiert die Quest Das Jagdfieber
    .train 56641 >>Erlernen |T132213:0|t[Zuverlässiger Schuss] << Cata
    .target Xavier the Huntsman
step << Priest
    .goto 18,31.10,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duesten|r
    .turnin 3097 >>Gebt die Quest Geheiligte Rolle ab
    .accept 24966 >>Akzeptiert die Quest Von Licht und Schatten
    .train 2061 >>Erlernen |T135907:0|t[Blitzheilung] << Cata
    .target Dark Cleric Duesten
step << Warlock
    .goto 18,30.92,66.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maximillion|r
    .turnin 3099 >>Gebt die Quest Besudelte Rolle ab
    .accept 24968 >>Akzeptiert die Quest Dunkle Taten
    .train 348 >>Erlernt |T135817:0|t[Feuerbrand] << Cata
    .target Maximillion
step << Mage cata
    .goto 18,31.64,66.91
	>>Cast |T136096:0|t[Arkane Geschosse] on a |cRXP_ENEMY_Training Attrappe|r
	.complete 24965,1 --Cast Arcane Missiles (x3)
	.mob Training Dummy
step << Mage !cata
    .goto 18,31.64,66.91
	>>Cast |T135848:0|t[Frostschadennova] on a |cRXP_ENEMY_Training Attrappe|r
	.complete 24965,2 --Cast Frost Nova
	.mob Training Dummy
step << Priest cata
    .goto 18,31.20,66.02
	>>Cast |T135907:0|t[Blitzheilung] on a |cRXP_FRIENDLY_Wounded Deathguard|r
	.complete 24966,1 --Cast Flash Heal (x5)
	.target Wounded Deathguard
step << Priest !cata
    .goto 18,31.64,66.91
	>>Cast |T136207:0|t[Schattenwort: Schmerz] on a |cRXP_ENEMY_Training Attrappe|r
	.complete 24966,2 --Cast Shadow Word: Pain
	.mob Training Dummy
step << Warlock
    .goto 18,31.64,66.91
	>>Cast |T135817:0|t[Feuerbrand] on a |cRXP_ENEMY_Training Attrappe|r
	.complete 24968,2 << !Cata --Cast Immolate (x3)
	.complete 24968,1 << Cata --Cast Immolate (x3)
	.mob Training Dummy
step
    #completewith next
    .goto 18,32.40,65.56,8 >>BETRETET das Haus
step
    .goto 18,32.69,65.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lilian|r
    >>|cRXP_WARN_Sie könnte oben sein. Wartet nicht auf das RP|r
    .complete 24961,1 --1/1 Show Lilian her reflection
    .timer 9,Die Wahrheit des Grabes RP
    .skipgossip
    .target Lilian Voss
step << Monk
    .goto 465/0,1567.900,1857.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ting die Bauchstarke|r
    .turnin 31146 >>Gebt die Quest Bekritzelte Schriftrolle ab
    .accept 31147 >>Akzeptiert die Quest Tigerpfote
    .target Ting, Strong of Stomach
step << Rogue
    .goto 18,32.53,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_David|r
    .turnin 3096 >>Gebt die Quest Verschlüsselte Rolle ab
    .accept 24967 >>Akzeptiert die Quest Stich!
    .train 2098 >>Erlernen |T132292:0|t[Ausweiden] << Cata
    .target David Trias
step << Warrior
    .goto 18,32.67,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dannal|r
    .turnin 3095 >>Gebt die Quest Einfache Rolle ab
    .accept 24969 >>Akzeptiert die Quest In den Kampf stürmen
    .train 100 >>Erlernt |T132337:0|t[Sturmangriff] << Cata
    .target Dannal Stern
step << Monk
    .goto 18,31.64,66.91
	>>Cast |T606551:0|t[Tigerklaue] on a |cRXP_ENEMY_Training Attrappe|r
    .complete 31147,2 --|Practice Tiger Palm: 1/1
	.mob Training Dummy
step << Rogue
    .goto 18,31.64,66.91
	>>Cast |T132292:0|t[Ausweiden] on a |cRXP_ENEMY_Training Attrappe|r
	.complete 24967,2 << !Cata --Cast Eviscerate (x3)
	.complete 24967,1 << Cata --Cast Eviscerate (x3)
	.mob Training Dummy
step << Warrior
    .goto 18,31.64,66.91
    >>Cast |T132337:0|t[Ansturm] on a |cRXP_ENEMY_Training Attrappe|r
	.complete 24969,2 << !Cata --Cast Charge (x3)
	.complete 24969,1 << Cata --Cast Charge (x3)
	.mob Training Dummy
step << Hunter
    .goto 18,31.64,66.91
	>>Cast |T132213:0|t[Zuverlässiger Schuss] on a |cRXP_ENEMY_Training Attrappe|r
	.complete 24964,2 << !Cata --Steady Shot (x3)
	.complete 24964,1 << Cata --Steady Shot (x3)
	.mob Training Dummy
step << Monk
    .goto 465/0,1568.100,1857.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ting die Bauchstarke|r
    .turnin 31147 >>Gebt die Quest Tigerpfote ab
    .target Ting, Strong of Stomach
step << Rogue
    .goto 18,32.53,65.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_David|r
    .turnin 24967 >>Gebt die Quest Stich! ab
    .target David Trias
step << Warrior
    .goto 18,32.67,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dannal|r
    .turnin 24969 >>Gebt die Quest Einfache Rolle ab
    .target Dannal Stern
step << Hunter
    .goto 18,31.45,65.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Xavier|r
    .turnin 24964 >>Gebt die Quest Das Jagdfieber ab
    .target Xavier the Huntsman
step
    #completewith next
    .goto 18,31.38,66.23,8 >>BETRETET die Kirche
step
    .goto 18,30.86,66.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elreth|r
    .turnin 24961 >>Gebt die Quest Die Wahrheit des Grabes ab
    .accept 28672 >>Akzeptiert die Quest Der Exekutor im Feld
    .target Novice Elreth
step << Mage
    .goto 18,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit ||cRXP_FRIENDLY_Isabella|r
    .turnin 24965 >>Gebt die Quest Magielehren ab
    .target Isabella
step << Priest
    .goto 18,31.10,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Duesten|r
    .turnin 24966 >>Gebt die Quest Von Licht und Schatten ab
    .target Dark Cleric Duesten
step << Warlock
    .goto 18,30.92,66.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maximillion|r
    .turnin 24968 >>Gebt die Quest Dunkle Taten ab
    .target Maximillion
step
    .goto 18,32.97,61.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arren|r
    .turnin 28672 >>Gebt die Quest Der Exekutor im Feld ab
    .accept 26802 >>Akzeptiert die Quest Die Verdammten
    .target Executor Arren
step
    #loop
    .goto 18,32.00,57.83,0
    .waypoint 18,31.47,58.41,40,0
    .waypoint 18,32.00,57.83,40,0
    .waypoint 18,31.54,56.21,40,0
    .waypoint 18,32.39,56.15,40,0
    .waypoint 18,33.70,57.30,40,0
    .waypoint 18,35.11,56.22,40,0
    .waypoint 18,35.69,58.25,40,0
    .waypoint 18,34.92,59.39,40,0
    .waypoint 18,34.92,59.39,40,0
    .waypoint 18,34.19,59.64,40,0
    .waypoint 18,32.90,58.08,40,0
    >>Tötet |cRXP_ENEMY_Duskbats|r. Plündert sie für |cRXP_LOOT_Wings|r
    >>Tötet |cRXP_ENEMY_Wolves|r. Plündert sie für |cRXP_LOOT_Paws|r
    .complete 26802,2 --4/4 Duskbat Wing
    .mob +Duskbat
    .mob +Mangy Duskbat
    .complete 26802,1 --4/4 Scavenger Paw
    .mob +Young Scavenger
    .mob +Ragged Scavenger
step
    .goto 18,32.97,61.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arren|r
    .turnin 26802 >>Gebt die Quest Die Verdammten ab
    .accept 24973 >>Akzeptiert die Quest Nachtweber
    .target Executor Arren
step
    #completewith NWSpiders
    .subzone 155 >>Reist zur Nachtweberhöhle
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Young Nacht Gespinst Spinnen|r |cRXP_WARN_außerhalb der Mine|r
    .complete 24973,1 --8/8 Young Night Web Spider slain
    .mob Young Night Web Spider
step
    #label NWSpiders
    #loop
    .goto 18,25.43,59.80,0
    .waypoint 18,26.83,59.39,8,0
    .waypoint 18,26.01,59.65,8,0
    .waypoint 18,25.43,59.80,8,0
    .waypoint 18,25.04,60.35,8,0
    .waypoint 18,24.15,60.82,8,0
    .waypoint 18,23.23,60.06,8,0
    .waypoint 18,23.68,58.52,8,0
    >>Tötet |cRXP_ENEMY_Night Gespinst Spinnen|r |cRXP_WARN_in der Mine|r
    .complete 24973,2 --5/5 Night Web Spider slain
    .mob Night Web Spider
step
    #loop
    .goto 18,29.44,58.33,0
    .waypoint 18,27.47,59.05,40,0
    .waypoint 18,28.13,57.32,40,0
    .waypoint 18,29.77,56.26,40,0
    .waypoint 18,29.44,58.33,40,0
    .waypoint 18,28.63,59.20,40,0
    >>Tötet |cRXP_ENEMY_Young Nacht Gespinst Spinnen|r außerhalb der Mine
    .complete 24973,1 --8/8 Young Night Web Spider slain
    .mob Young Night Web Spider
step
    .goto 18,32.97,61.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arren|r
    .turnin 24973 >>Gebt die Quest Nachtweber ab
    .accept 24970 >>Akzeptiert die Quest Auch nicht besser als die Zombies
    .target Executor Arren
step
    .goto 18,35.76,62.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Darnell|r
    .turnin 24970 >>Gebt die Quest Auch nicht besser als die Zombies ab
    .accept 24971 >>Akzeptiert die Quest Angriff auf das Lager der Moderhirne
    .target Darnell
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Rotbrain Magus|r und |cRXP_ENEMY_Rotbrain Berserkers|r
    .complete 24971,2 --8/8 Rotbrain undead slain
    .mob Rotbrain Magus
    .mob Rotbrain Berserker
step
    .goto 18,36.50,68.82
    >>Tötet |cRXP_ENEMY_Marshal Redpath|r
    .complete 24971,1 --1/1 Marshal Redpath slain
    .mob Marshal Redpath
step
    #loop
    .goto 18,37.07,67.02,0
    .waypoint 18,37.57,68.77,40,0
    .waypoint 18,38.07,67.55,40,0
    .waypoint 18,37.07,67.02,40,0
    .waypoint 18,35.94,68.27,40,0
    >>Tötet |cRXP_ENEMY_Rotbrain Magus|r und |cRXP_ENEMY_Rotbrain Berserkers|r
    .complete 24971,2 --8/8 Rotbrain undead slain
    .mob Rotbrain Magus
    .mob Rotbrain Berserkers
step
    #completewith next
    .subzone 154 >>Reist nach Todesend
step
    .goto 18,30.83,66.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sarvis|r
    .turnin 24971 >>Gebt die Quest Angriff auf das Lager der Moderhirne ab
    .accept 24972 >>Akzeptiert die Quest Entscheidende Informationen
    .target Shadow Priest Sarvis
step
    #completewith next
    .goto 18,38.09,56.48,20,0
    .goto 18,38.41,55.69,20,0
    .goto 18,38.78,55.57,20 >>Verlasst Todesend
step
    #completewith next
    .subzone 4916 >>Reist nach Calstonanwesen
step
    #xprate <1.2
    .goto 18,44.75,53.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Simmer|r
    .turnin 24972 >>Gebt die Quest Entscheidende Informationen ab
    .accept 24978 >>Akzeptiert die Quest Schnitter der Ernter
    .target Deathguard Simmer
step
    #xprate >1.19
    .goto 18,44.75,53.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Simmer|r
    .turnin 24972 >>Gebt die Quest Entscheidende Informationen ab
    .target Deathguard Simmer
step
    #xprate <1.2
    .goto 18,44.61,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Johaan|r
    .accept 24975 >>Akzeptiert die Quest Felder des Kummers
    .target Apothecary Johaan
step
    #xprate <1.2
    #completewith next
    .goto 18,44.49,53.85,3,0
    .goto 18,44.63,53.75,3 >> Geh nach oben
step
    #xprate <1.2
    .goto 18,44.75,53.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sedrick|r
    .accept 24974 >>Akzeptiert die Quest So schrecklich allein
    .target Sedrick Calston
step << Hunter Cata
    .goto 18,44.97,53.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Darna|r außerhalb
    .train 2973 >>Trainiere deine Klassenfähigkeiten
    .target Darna Woad
    .xp <6,1
step << Warrior Cata
    .goto 18,45.03,53.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Karla|r außerhalb
    .train 34428 >>Trainiere deine Klassenfähigkeiten
    .target Karla Fain
    .xp <5,1
step << Mage Cata
    .goto 18,44.78,53.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Larah|r außerhalb
    .train 2136 >>Trainiere deine Klassenfähigkeiten
    .target Larah Firesong
    .xp <5,1
step << Priest Cata
    .goto 18,44.78,53.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Claressa|r außerhalb
    .train 589 >>Trainiere deine Klassenfähigkeiten
    .target Dark Cleric Claressa
    .xp <5,1
step << Warlock Cata
    .goto 18,44.73,53.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maressa|r außerhalb
    .train 87389 >>Trainiere deine Klassenfähigkeiten
    .target Maressa Milner
    .xp <5,1
step
    #xprate <1.2
    #completewith next
    >>Tötet |cRXP_ENEMY_Tirisfal Farmers|r
    .complete 24978,1 --10/10 Tirisfal Farmer slain
    .mob Tirisfal Farmer
step
    #xprate <1.2
    #loop
    .goto 18,41.12,51.69,0
    .goto 18,35.25,50.90,0
    .waypoint 18,41.12,51.69,30,0
    .waypoint 18,39.67,51.55,30,0
    .waypoint 18,36.95,51.78,30,0
    .waypoint 18,35.25,50.90,30,0
    .waypoint 18,36.88,49.70,30,0
    >>Sammelt die |cRXP_LOOT_Tirisfal Kürbisse|r vom Boden
    .complete 24975,1 --10/10 Tirisfal Pumpkin
step
    #xprate <1.2
    #loop
    .goto 18,41.12,51.69,0
    .goto 18,35.25,50.90,0
    .waypoint 18,41.12,51.69,30,0
    .waypoint 18,39.67,51.55,30,0
    .waypoint 18,36.95,51.78,30,0
    .waypoint 18,35.25,50.90,30,0
    .waypoint 18,36.88,49.70,30,0
    >>Tötet |cRXP_ENEMY_Tirisfal Farmers|r
    .complete 24978,1 --10/10 Tirisfal Farmer slain
    .mob Tirisfal Farmer
step
    #xprate <1.2
    .goto 18,34.37,43.68,40,0
    .goto 18,35.90,42.92,40,0
    .goto 18,36.66,40.40,40,0
    .goto 18,35.91,43.85
    .use 52059 >>Attackiert einen |cRXP_ENEMY_Murloc der Finsterflossen|r, bis er zu fliehen beginnt, dann benutzt eure |T133802:0|t[Murlocleine], um ihn zu fangen
    .complete 24974,1 --1/1 Vile Fin captured
    .mob File Vin Puddlejumper
    .mob File Vin Minor Oracle
step
    #xprate <1.2
    #completewith next
    .subzone 4916 >>Reist nach Calstonanwesen
step
    #xprate <1.2
    .goto 18,44.75,53.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Simmer|r
    .turnin 24978 >>Gebt die Quest Schnitter der Ernter ab
    .target Deathguard Simmer
step
    #xprate <1.2
    .goto 18,44.61,53.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Johaan|r
    .turnin 24975 >>Gebt die Quest Felder des Kummers ab
    .target Apothecary Johaan
step
    #xprate <1.2
    #completewith MurlocDelivery
    .goto 18,44.49,53.85,3,0
    .goto 18,44.63,53.75,3 >> Geh nach oben
step
    #xprate <1.2
    .goto 18,44.75,53.65
    >>Liefert den |cRXP_FRIENDLY_Murloc|r ab
    .complete 24974,2 --1/1 Vile Fin returned
    .target Sedrick Calston
step
    #xprate <1.2
    #label MurlocDelivery
    .goto 18,44.75,53.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sedrick|r
    .turnin 24974 >>Gebt die Quest So schrecklich allein ab
    .target Sedrick Calston
step
    #xprate <1.2
    #completewith next
    .goto 18,44.49,53.86,5,0
    .goto 18,44.75,53.65 >> Geht nach oben um den |cRXP_FRIENDLY_Murloc|r zurückzugeben
    .complete 24974,2 --1/1 Vile Fin returned
step
    #xprate <1.2
    .goto 18,44.75,53.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sedrick|r
    .turnin 24974 >>Gebt die Quest So schrecklich allein ab
    .target Sedrick Calston
step << Hunter Cata
    #xprate <1.2
    .goto 18,44.97,53.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Darna|r außerhalb
    .train 2973 >>Trainiere deine Klassenfähigkeiten
    .target Darna Woad
    .xp <6,1
step << Warrior Cata
    #xprate <1.2
    .goto 18,45.03,53.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Karla|r außerhalb
    .train 34428 >>Trainiere deine Klassenfähigkeiten
    .target Karla Fain
    .xp <5,1
step << Mage Cata
    #xprate <1.2
    .goto 18,44.78,53.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Larah|r außerhalb
    .train 2136 >>Trainiere deine Klassenfähigkeiten
    .target Larah Firesong
    .xp <5,1
step << Priest Cata
    #xprate <1.2
    .goto 18,44.78,53.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Claressa|r außerhalb
    .train 589 >>Trainiere deine Klassenfähigkeiten
    .target Dark Cleric Claressa
    .xp <5,1
step << Warlock Cata
    #xprate <1.2
    .goto 18,44.73,53.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maressa|r außerhalb
    .train 87389 >>Trainiere deine Klassenfähigkeiten
    .target Maressa Milner
    .xp <5,1
step
    #completewith next
    .goto 18,45.86,48.38,40,0
    .goto 18,46.61,47.42,40,0
    .goto 18,47.75,47.67
    .deathskip >>Zieht so viele Mobs wie möglich, um zu sterben und am |cRXP_FRIENDLY_Geistheiler|r wiederzubeleben, oder reist nach Brill
step << Undead
    .goto 18,60.13,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morris|r
    .accept 6321 >>Akzeptiert die Quest Nachschub für Brill
    .target Deathguard Morris
step
    .goto 18,60.87,51.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirtin Renee|r
    .home >>Setzt euren Ruhestein in Brill
    .target Innkeeper Renee
    .isQuestAvailable 6323
step << Undead
    .goto 18,58.84,51.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Anette|r
    .turnin 6321 >>Gebt die Quest Nachschub für Brill ab
    .accept 6323 >>Akzeptiert die Quest Flug nach Unterstadt
    .target Anette Williams
step
    .goto 18,58.84,51.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Anette|r
    .fly Undercity >>Fliege nach Unterstadt
    .target Anette Williams
step << Undead
    .goto 90,61.49,41.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gordon|r
    .turnin 6323 >>Gebt die Quest Flug nach Unterstadt ab
    .accept 6322 >>Akzeptiert die Quest Michael Garrett
    .target Gordon Wendham
step << Undead
    .goto 90,63.28,48.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Michael|r
    .turnin 6322 >>Gebt die Quest Michael Garrett ab
    .accept 6324 >>Akzeptiert die Quest Rückkehr zu Morris
    .target Michael Garrett
step << Undead
    #completewith SilvermoonPort
    .goto 90,59.98,47.60,10,0
    .goto 90,59.16,44.02,8,0
    .goto 90,65.87,43.99,15 >>Nehmt den Fahrstuhl nach oben
step << !Undead
    #completewith SilvermoonPort
    .goto 18,66.21,1.16,20,0
    .zone Undercity >>Reist nach Unterstadt
step
    #label SilvermoonPort
    .goto 1420/0,269.10001,1804.59998,15,0
    .goto 1420/0,346.60001,1806.00000
    .zone Silvermoon City >>Benutzt die |cRXP_PICK_Kugel der Translokation|r, um nach Silbermond zu gelangen
step
    .goto 110,72.396,85.242,12,0
    .goto 1941/0,-4877.20020,7012.10059
    .zone Eversong Woods >>Verlassen Silbermond
step
    .goto Eversong Woods,50.331,50.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ranger Jaela|r
    .accept 8475 >>Akzeptiert die Quest Die Todesschneise
    .target Ranger Jaela
    ]])
