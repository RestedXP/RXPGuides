if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Northrend Täglich Quests
#subgroup Fraktion Täglich Quests
#wotlk
#cata
#name The Sons of Hodir Tägliche Quest-Route

step
	+Um die täglichen Quests der Söhne von Hodir freizuschalten, müsst ihr zuerst ihre Quest-Kette in Die Sturmgipfel abschließen. Bitte benutzt den Guide 'Söhne von Hodir - Tägliche Quests freischalten', um die täglichen Quests freizuschalten.
	.isQuestAvailable 13047
step
	>>Sprecht mit Fjorns Amboss, Hodir's Horn, Hodir's Helm, Frostworg Denmother, Hodir's Speer und Arngrim the Unersättlich
    .daily 12981 >>Akzeptiert die Quest Heiß und kalt
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Akzeptiert die Quest Hodirs Horn blasen
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >> Akzeptiert die Quest Den Helm polieren
	.goto TheStormPeaks,64.24,59.23
	.daily 12994 >> Akzeptiert die Quest Jagd auf Spione
	.goto TheStormPeaks,63.49,59.73
	.daily 13003 >> Akzeptiert die Quest Hodirs Speer werfen
	.goto TheStormPeaks,65.00,60.95
	.daily 13046 >> Akzeptiert die Quest Arngrim füttern
	.goto TheStormPeaks,67.61,59.95
	.reputation 1119,revered,<0,1 -- if you're 0 into revered it will display this step
step
	>>Sprecht mit Fjorns Amboss, Hodir's Horn, Hodir's Helm, Frostworg Denmother und Hodir's Speer
    .daily 12981 >>Akzeptiert die Quest Heiß und kalt
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Akzeptiert die Quest Hodirs Horn blasen
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >> Akzeptiert die Quest Den Helm polieren
	.goto TheStormPeaks,64.24,59.23
	.daily 12994 >> Akzeptiert die Quest Jagd auf Spione
	.goto TheStormPeaks,63.49,59.73
	.daily 13003 >> Akzeptiert die Quest Hodirs Speer werfen
	.goto TheStormPeaks,65.00,60.95
	.reputation 1119,honored,<0,1 -- if you're 0 into honored it will display this step
step
	>>Sprecht mit Fjorns Amboss, Hodir's Horn und Hodir's Helm
    .daily 12981 >>Akzeptiert die Quest Heiß und kalt
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Akzeptiert die Quest Hodirs Horn blasen
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >> Akzeptiert die Quest Den Helm polieren
	.goto TheStormPeaks,64.24,59.23
	.reputation 1119,friendly,<0,1 -- if you're 0 into friendly it will display this step
step
	.goto TheStormPeaks,70.00,58.00,60,0
    .goto TheStormPeaks,70.14,61.16
	>>Tötet die brüchigen Revenant. Plündert Essenz des Eises von ihnen
	.collect 42246,6 --Essence of Ice (6)
	.isOnQuest 12981
step
	.goto TheStormPeaks,73.5,62.9,70,0
    .goto TheStormPeaks,76.2,63.4
	.use 42246 >> Benutzt die Essenz des Eises neben dem Schwelenden Schrott um Fjorns Amboss. Plündert den Gefrorenen Eisenschrott
    .complete 12981,1 --Frozen Iron Scrap (6)
	.isOnQuest 12981
step
    .goto TheStormPeaks,70.73,50.96,65,0
	.goto TheStormPeaks,73.00,49.05,65,0
    .goto TheStormPeaks,71.45,47.76
	.use 42164 >> Tötet die Niffelem Forefathers und die Restless Frostborn in der Gegend. Benutzt Hodirs Horn auf ihren Leichen, um sie zu befreien
    .complete 12977,1 --Niffelem Forefather freed (5)
    .complete 12977,2 --Restless Frostborn freed (5)
	.isOnQuest 12977
step
	#completewith next
    .goto TheStormPeaks,57.23,64.02
	.use 42479 >> Benutzt den Zerrender Biss des Ätherischen Worgs auf der Leiche des Gefallenen Worgs. Folgt dem Ätherischen Frostworg, bis es einen Stormforged Infiltrator aufspürt. Tötet ihn.
	.complete 12994,1 --Stormforged Infiltrators Slain (3)
	.isOnQuest 12994
step
	.goto TheStormPeaks,57.92,61.07,60,0
	.goto TheStormPeaks,57.83,63.59,60,0
	.goto TheStormPeaks,56.51,65.00
	.use 42774 >> Benutzt Arngrims Zahn auf dem streifenden Jormungar. Reduziert seine Gesundheit auf 30% oder weniger, aber tötet es nicht.
	.complete 13046,1 --Arngrim's spirit fed (5)
	.isOnQuest 13046
step
    .goto TheStormPeaks,57.23,64.02
	.use 42479 >> Benutzt den Zerrender Biss des Ätherischen Worgs auf der Leiche des Gefallenen Worgs. Folgt dem Ätherischen Frostworg, bis es einen Stormforged Infiltrator aufspürt. Tötet ihn.
	.complete 12994,1 --Stormforged Infiltrators Slain (3)
	.isOnQuest 12994
step
	.goto TheStormPeaks,55.84,63.94,50,0
    .goto TheStormPeaks,54.4,63.2
	>>Tötet die Viscous Oils in der Überwinterungshöhle. Plündert das Öl von ihnen
    .complete 13006,1 --Viscous Oil (5)
	.isOnQuest 13006
step
	.goto TheStormPeaks,58.67,60.64,60,0
	.goto TheStormPeaks,57.23,64.02,60,0
	.goto TheStormPeaks,55.94,65.69,60,0
	.goto TheStormPeaks,59.25,59.94
	.use 42769 >> Benutzt den Speer von Hodir, um euch an einen wilden Wyrm zu befestigen. Stellt sicher, dass ihr volle Gesundheit habt, bevor ihr das macht.
	>>Benutzt Zupacken (1) wiederholt, um euren Griff zu erhöhen. Wenn der Wyrm nach euch schlägt, benutzt Klauen ausweichen (2). Benutzt Speerstoß (3) und Rachsüchtiger Speerstoß (4) sobald ihr könnt.
	>>Denkt daran, Zupacken (1) kontinuierlich zu benutzen, ansonsten fallt ihr runter, wenn ihr nur die Angriffe (3) und (4) spamt!
	>>Sobald der wilde Wyrm unter 30% Gesundheit ist, ändert sich eure Aktionsleiste. Benutzt Kiefer auseinanderdrücken (1) fünfmal, dann benutzt Fataler Stoß (3). Falls Fataler Stoß fehlschlägt, benutzt weiter Kiefer auseinanderdrücken (1), bis der Cooldown für Fataler Stoß (3) bereit ist.
	.complete 13003,1 --Stormforged Infiltrators Slain (3)
	.isOnQuest 13003
step
	>>Kehrt zurück nach Dun Niffelem
	>>Sprecht mit Fjorns Amboss, Hodir's Horn, Hodir's Helm, Frostworg Denmother, Hodir's Speer und Arngrim the Unersättlich
    .turnin 12981 >>Gebt die Quest Heiß und kalt ab
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Gebt die Quest Hodirs Horn blasen ab
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Gebt die Quest Den Helm polieren ab
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >> Gebt die Quest Jagd auf Spione ab
	.goto TheStormPeaks,63.49,59.73
	.turnin 13003 >> Gebt die Quest Hodirs Speer werfen ab
	.goto TheStormPeaks,65.00,60.95
	.turnin 13046 >> Gebt die Quest Arngrim füttern ab
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 12994
	.isQuestComplete 13003
	.isQuestComplete 13046
step
	>>Kehrt zurück nach Dun Niffelem
	>>Sprecht mit Fjorns Amboss, Hodir's Horn, Hodir's Helm, Hodir's Speer und Arngrim the Unersättlich
    .turnin 12981 >>Gebt die Quest Heiß und kalt ab
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Gebt die Quest Hodirs Horn blasen ab
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Gebt die Quest Den Helm polieren ab
	.goto TheStormPeaks,64.24,59.23
	.turnin 13003 >> Gebt die Quest Hodirs Speer werfen ab
	.goto TheStormPeaks,65.00,60.95
	.turnin 13046 >> Gebt die Quest Arngrim füttern ab
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 13003
	.isQuestComplete 13046
step
	>>Kehrt zurück nach Dun Niffelem
	>>Sprecht mit Fjorns Amboss, Hodir's Horn, Hodir's Helm, Frostworg Denmother und Hodir's Speer
    .turnin 12981 >>Gebt die Quest Heiß und kalt ab
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Gebt die Quest Hodirs Horn blasen ab
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Gebt die Quest Den Helm polieren ab
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >> Gebt die Quest Jagd auf Spione ab
	.goto TheStormPeaks,63.49,59.73
	.turnin 13003 >> Gebt die Quest Hodirs Speer werfen ab
	.goto TheStormPeaks,65.00,60.95
	.isQuestComplete 12994
	.isQuestComplete 13003
step
	>>Kehrt zurück nach Dun Niffelem
	>>Sprecht mit Fjorns Amboss, Hodir's Horn, Hodir's Helm, der Frostworg-Mutter und Arngrim dem Unersättlichen
    .turnin 12981 >>Gebt die Quest Heiß und kalt ab
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Gebt die Quest Hodirs Horn blasen ab
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Gebt die Quest Den Helm polieren ab
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >> Gebt die Quest Jagd auf Spione ab
	.goto TheStormPeaks,63.49,59.73
	.turnin 13046 >> Gebt die Quest Arngrim füttern ab
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 12994
	.isQuestComplete 13046
step
	>>Kehrt zurück nach Dun Niffelem
	>>Sprecht mit Fjorns Amboss, Hodir's Horn, Hodir's Helm und Arngrim dem Unersättlichen
    .turnin 12981 >>Gebt die Quest Heiß und kalt ab
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Gebt die Quest Hodirs Horn blasen ab
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Gebt die Quest Den Helm polieren ab
	.goto TheStormPeaks,65.00,60.95
	.turnin 13046 >> Gebt die Quest Arngrim füttern ab
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 13046
step
	>>Kehrt zurück nach Dun Niffelem
	>>Sprecht mit Fjorns Amboss, Hodir's Horn, Hodir's Helm und Hodir's Speer
    .turnin 12981 >>Gebt die Quest Heiß und kalt ab
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Gebt die Quest Hodirs Horn blasen ab
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Gebt die Quest Den Helm polieren ab
	.goto TheStormPeaks,64.24,59.23
	.turnin 13003 >> Gebt die Quest Hodirs Speer werfen ab
	.goto TheStormPeaks,65.00,60.95
	.isQuestComplete 13003
step
	>>Kehrt zurück nach Dun Niffelem
	>>Sprecht mit Fjorns Amboss, Hodir's Horn, Hodir's Helm und Frostworg Denmother
    .turnin 12981 >>Gebt die Quest Heiß und kalt ab
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Gebt die Quest Hodirs Horn blasen ab
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Gebt die Quest Den Helm polieren ab
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >> Gebt die Quest Jagd auf Spione ab
	.goto TheStormPeaks,63.49,59.73
	.isQuestComplete 12994
step
	>>Kehrt zurück nach Dun Niffelem
	>>Sprecht mit Fjorns Amboss, Hodir's Horn und Hodir's Helm
    .turnin -12981 >>Gebt die Quest Heiß und kalt ab
    .goto TheStormPeaks,63.13,62.94
    .turnin -12977 >>Gebt die Quest Hodirs Horn blasen ab
    .goto TheStormPeaks,64.17,65.01
	.turnin -13006 >> Gebt die Quest Den Helm polieren ab
	.goto TheStormPeaks,64.24,59.23
step
	+Ihr habt alle täglichen Quests der Söhne von Hodir für heute abgeschlossen :) Denkt daran, dass ihr auf dem Boden in der Gegend gefundene Immerfrost-Chips sowie Relikte von Ulduar für zusätzlichen Ruf abgeben könnt!
]])
