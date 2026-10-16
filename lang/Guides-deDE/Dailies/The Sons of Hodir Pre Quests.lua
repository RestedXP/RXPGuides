if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Northrend Täglich Quests
#subgroup Fraktion Täglich Quests
#wotlk
#cata
#name The Sons of Hodir Tägliche Quests

step
    +Ihr habt die The Sons of Hodir Vorbererungs-Questreihe abgeschlossen. Bitte nutzt die The Sons of Hodir Tägliche Quests-Route, um die täglichen Quests abzuschließen.
	.isQuestTurnedIn 13047
step
	.goto TheStormPeaks,41.15,86.14
	>>Fliegt zu K3
    >>Geht in die Taverne. Sprecht mit Gretchen.
    .accept 12843 >>Akzeptiert die Quest Sie haben unsere Männer!
step
    .goto TheStormPeaks,40.1,73.8,70,0
    .goto TheStormPeaks,40.3,69.8,70,0
    .goto TheStormPeaks,42.2,71.0,70,0
    .goto TheStormPeaks,41.6,73.7,60,0
    .goto TheStormPeaks,40.7,72.7
	>>Fliegt nach Sifreldar
	>>Tötet die Sifreldar für Kalt Eisen Keys. Benutzt die Schlüssel auf den Goblingefangener Käfigen in der Gegend.
    .collect 40641,5,12843,1,-1
    .complete 12843,1 --Goblin Prisoner freed (5)
step
    .goto TheStormPeaks,41.15,86.14
	>>Kehrt nach K3 zurück. Sprecht mit Gretchen in der Taverne.
    .turnin 12843 >>Gebt die Quest Sie haben unsere Männer! ab
    .accept 12846 >>Akzeptiert die Quest Lasst keinen Goblin zurück
step << !Human
	#completewith tribute
	>>Sammelt Relics of Ulduar von Mobs überall in Sturmgipfel. Alternativ könnt ihr sie vom Auktionshaus kaufen.
    .collect 42780,10 --Relic of Ulduar (10)
    .reputation 1119,friendly,>0,1 -- Step only shows if rep is below friendly
step
    .goto TheStormPeaks,42.1,69.5,60,0
    .goto TheStormPeaks,42.80,68.90
	>>BETRETET The Forlon Mine. Sprecht mit Lok'lira
    .turnin 12846 >>Gebt die Quest Lasst keinen Goblin zurück ab
    .accept 12841 >>Akzeptiert die Quest Der Handel der Alten
step
    .goto TheStormPeaks,44.3,67.1,30,0
    .goto TheStormPeaks,44.1,70.2,30,0
    .goto TheStormPeaks,45.1,71.0
	>>Tötet Aufseherin Syra in The Forlon Mine. Plündert sie für Runen of Yrkvinn
    .complete 12841,1 --Runes of the Yrkvinn (1)
	.unitscan Overseer Syra
step
    .goto TheStormPeaks,42.80,68.90
	>>Kehrt zu Lok'lira zurück
    .turnin 12841 >>Gebt die Quest Der Handel der Alten ab
    .accept 12905 >>Akzeptiert die Quest Mildred die Grausame
step
    .goto TheStormPeaks,44.39,68.93
	>>Geht die Treppe hinauf. Sprecht mit Mildred.
    .turnin 12905 >>Gebt die Quest Mildred die Grausame ab
    .accept 12906 >>Akzeptiert die Quest Disziplin
step
    .goto TheStormPeaks,44.8,67.2,40,0
    .goto TheStormPeaks,44.6,70.6,40,0
    .goto TheStormPeaks,44.1,69.9,40,0
    .goto TheStormPeaks,44.8,71.3,40,0
    .goto TheStormPeaks,44.3,66.8,40,0
    .goto TheStormPeaks,43.0,68.0,40,0
    .goto TheStormPeaks,43.4,70.5
	.use 42837 >> Benutzt die Disziplinarrute in euren Taschen auf den Erschöpften Vrykul in den Schächten des Bergwerks
    .complete 12906,1 --Exhausted Vrykul Disciplined (6)
step
    .goto TheStormPeaks,44.39,68.93
	>>Sprecht mit Mildred
    .turnin 12906 >>Gebt die Quest Disziplin ab
    .accept 12907 >>Akzeptiert die Quest Exempel statuieren
step
    .goto TheStormPeaks,45.40,69.10
	>>Tötet Garhal gerade östlich von Mildred in der Höhle
    .complete 12907,1 --Garhal (1)
step
    .goto TheStormPeaks,44.39,68.93
	>>Sprecht mit Mildred
    .turnin 12907 >>Gebt die Quest Exempel statuieren ab
    .accept 12908 >>Akzeptiert die Quest Eine bestimmte Gefangene
step
    .goto TheStormPeaks,42.80,68.90
	>>Sprecht mit Lok'lira
    .turnin 12908 >>Gebt die Quest Eine bestimmte Gefangene ab
    .accept 12921 >>Akzeptiert die Quest Tapetenwechsel
step
    .goto TheStormPeaks,41.8,69.6,30,0
    .goto TheStormPeaks,47.47,69.09
	>>Verlasst The Forlon Mine. Fliegt nach Brunnhildar
    .turnin 12921 >>Gebt die Quest Tapetenwechsel ab
    .accept 12969 >>Akzeptiert die Quest Ist das Euer Goblin?
step
    .goto TheStormPeaks,48.25,69.77
	>>Sprecht mit Agnetta. Tötet sie, um Zeev zu befreien
    .complete 12969,1 --Agnetta Tyrsdottar (1)
	.skipgossip
step
    .goto TheStormPeaks,47.47,69.09
	>>Sprecht mit Lok'lira
    .turnin 12969 >>Gebt die Quest Ist das Euer Goblin? ab
    .accept 12970 >>Akzeptiert die Quest Das Hildarthing
	>>Sprecht mit Lok'lira die Greisin über ihren Vorschlag
    .complete 12970,1 --Listen to Lok'lira's proposal (1)
	.skipgossip 29975,1
    .turnin 12970 >>Gebt die Quest Das Hildarthing ab
    .accept 12971 >>Akzeptiert die Quest Sich allen Herausforderern stellen
step
    .goto TheStormPeaks,50.5,68.1,30,0
    .goto TheStormPeaks,51.5,66.2
	>>Sprecht mit den Siegreichen Herausforderern in der Gegend, um sie anzugreifen. Tötet sie
    .complete 12971,1 --Victorious Challenger (6)
	.skipgossip
step
    .goto TheStormPeaks,47.47,69.09
	>>Sprecht mit Lok'lira
    .turnin 12971 >>Gebt die Quest Sich allen Herausforderern stellen ab
    .accept 12972 >>Akzeptiert die Quest Ihr werdet einen Bären brauchen
step
    .goto TheStormPeaks,53.14,65.72
	>>Sprecht mit Brijana
    .turnin 12972 >>Gebt die Quest Ihr werdet einen Bären brauchen ab
    .accept 12851 >>Akzeptiert die Quest Auf Bärenrücken
step
   	#completewith next
    .goto The Storm Peaks,53.12,65.61
	.vehicle >>Aufsitzen Eiszahn right neben Brijana
step
    .goto TheStormPeaks,53.1,65.6,0
    .goto TheStormPeaks,57.4,63.0
	>>Benutzt Flammenpfeil (1), um Frostworgs und Frostschaden Giants zu verbrennen. Benutzt NICHT Geschwindigkeitsschub (2), konzentriert euch einfach darauf, alle Ziele zu treffen
    .complete 12851,1 --Frostworgs Burned (7)
    .complete 12851,2 --Frost Giants Burned (15)
step
    .goto TheStormPeaks,53.14,65.72
	>>Benutzt "Geschwindigkeitsschub" (2), um schneller zu Brijana zurückzukehren. Sprecht mit ihr
    .turnin 12851 >>Gebt die Quest Auf Bärenrücken ab
    .accept 12856 >>Akzeptiert die Quest Kaltherzig
step
    #completewith next
    .goto TheStormPeaks,63.20,62.88
	.vehicle >>Fliegt nach Dun Niffelem. Besteigt einen Gefangenen Protodrache, sie sind an die großen Eisspitzen um die Außenmauern von Dun Niffelem gekettet
step
    .waypoint TheStormPeaks,53.1,65.7,0,niffelen,VEHICLE_PASSENGERS_CHANGED,VEHICLE_UPDATE
    .goto The Storm Peaks,66.75,60.63
	>>Benutzt die erste Fähigkeit eures Drachen auf einen der Brunnhildar Gefangenen, die im Eisblock eingefroren sind, wenn ihr ihnen nahe seid
    >> Kehrt nach Brunnhildar zurück, wenn ihr 3 Gefangene auf eurem Protodrache habt. Macht das 3-mal
    .complete 12856,1 --Rescued Brunnhildar Prisoners (9)
    .complete 12856,2 --Freed Proto-Drakes (3)
step
    .goto TheStormPeaks,53.14,65.72
	>>Sprecht mit Brijana
    .turnin 12856 >>Gebt die Quest Kaltherzig ab
    .accept 13063 >>Akzeptiert die Quest Für würdig befunden
step
    .goto TheStormPeaks,49.75,71.81
	>>Kehrt nach Brunnhildar zurück. Sprecht mit Astrid
    .turnin 13063 >>Gebt die Quest Für würdig befunden ab
    .accept 12900 >>Akzeptiert die Quest Ein Geschirr anfertigen
step
    .goto TheStormPeaks,48.3,74.7,70,0
    .goto TheStormPeaks,48.3,77.1,70,0
    .goto TheStormPeaks,44.8,74.1
	>>Tötet Icemane Yetis. Plündert sie für Hides
    .complete 12900,1 --Icemane Yeti Hide (3)
step
    .goto TheStormPeaks,49.75,71.81
	>>Sprecht mit Astrid
    .turnin 12900 >>Gebt die Quest Ein Geschirr anfertigen ab
    .accept 12983 >>Akzeptiert die Quest Die Letzte ihrer Art
    .accept 12989 >>Akzeptiert die Quest Die schleimige Dunkelheit
step
    #completewith next
    .goto TheStormPeaks,55.8,63.9,30 >>Betretet die Überwinterungshöhle
step
    .goto TheStormPeaks,54.8,60.4
	>>Tötet die Jormungar in der Höhle
 	>>Reitet noch nicht auf dem verletzten Bär in der Mitte der Höhle
    .complete 12989,1 --Ravenous Jormungar (8)
step
	#completewith next
    .goto TheStormPeaks,54.79,60.37
	.vehicle >>Klickt mit der rechten Maustaste auf die Iceclaw Matriarch, um sie aus der Überwinterungshöhle zu reiten
step
    .goto TheStormPeaks,49.82,71.12
	>>Reitet auf dem Bär zurück nach Brunnhildar. Das dauert 1 Minute 8 Sekunden, daher könnt ihr eine Pause machen
    .complete 12983,1 --Icemaw Matriarch Rescued (1)
step
    .goto TheStormPeaks,49.75,71.81
	>>Sprecht mit Astrid
    .turnin 12983 >>Gebt die Quest Die Letzte ihrer Art ab
    .accept 12996 >>Akzeptiert die Quest Das Aufwärmen
    .turnin 12989 >>Gebt die Quest Die schleimige Dunkelheit ab
step
	#completewith next
    .goto TheStormPeaks,50.79,67.68
	.vehicle >> Fliegt nach Kirgaraak. Benutzt den Zügel der Kriegsbärenmatriarchin in Taschen von Euch zum Besteigen
	.use 42481
step
    .goto TheStormPeaks,50.79,67.68
	.use 42481 >>Tötet Kirgaraak. Benutzt Zermalmen (1) zum Schadensverursachen. Benutzt Schmettern (2) in Ansturm (3) zum Verursachen zusätzlichen Schadens
    .complete 12996,1 --Kirgaraak Defeated (1)
step
	.goto TheStormPeaks,49.75,71.81
	>>Sitzt vom Bär ab. Sprecht mit Astrid
    .turnin 12996 >>Gebt die Quest Das Aufwärmen ab
    .accept 12997 >>Akzeptiert die Quest In die Grube
step
	#completewith next
    .goto TheStormPeaks,49.24,68.46
	.vehicle >> Fliegt zur Reißzahngrube. Benutzt den Zügel der Kriegsbärenmatriarchin in Taschen von Euch zum Besteigen
	.use 42499
step
    .goto TheStormPeaks,49.24,68.46
	.use 42499 >>Tötet die Warbears in der Grube. Benutzt Zermalmen (1) zum Schadensverursachen. Benutzt Schmettern (2) in Ansturm (3) zum Verursachen zusätzlichen Schadens
    .complete 12997,1 --Hyldsmeet Warbear (6)
step
    .goto TheStormPeaks,49.75,71.81
	>>Sitzt vom Bär ab. Sprecht mit Astrid
    .turnin 12997 >>Gebt die Quest In die Grube ab
    .accept 13061 >>Akzeptiert die Quest Bereit für den Ruhm
step
    .goto TheStormPeaks,47.47,69.09
	>>Sprecht mit Lok'lira
    .turnin 13061 >>Gebt die Quest Bereit für den Ruhm ab
    .accept 13062 >>Akzeptiert die Quest Lok'liras Abschiedsgeschenk
step
    .goto TheStormPeaks,50.88,65.58
	>>Sprecht mit Gretta
    .turnin 13062 >>Gebt die Quest Lok'liras Abschiedsgeschenk ab
    .accept 12886 >>Akzeptiert die Quest Der Drakkensryd
step
    .goto TheStormPeaks,35.4,57.8
	.use 41058 >>Fliegt auf dem Drachen zum Tempel der Stürme (das dauert 1 Minute 10 Sekunden, daher könnt ihr eine Pause machen). Benutzt die Hyldnirharpune aus Taschen von Euch, um auf Drachen zu springen, die Drakeriders haben. Tötet sie
    .complete 12886,1 --Hyldsmeet Drakerider Defeated (10)
step
    .goto TheStormPeaks,33.42,57.95
	>>Benutzt die Hyldnirharpune auf einem Säulenornament (kleinere Kugeln) auf den Säulen des Tempels der Stürme, um auf sie zu springen
	>>Sprecht mit Thorim
    .turnin 12886 >>Gebt die Quest Der Drakkensryd ab
    .accept 13064 >>Akzeptiert die Quest Rivalität unter Geschwistern
	>>Sprecht mit Thorim
    .complete 13064,1 --Thorim's History Heard (1)
	.skipgossip 29445,1
    .turnin 13064 >>Gebt die Quest Rivalität unter Geschwistern ab
    .accept 12915 >>Akzeptiert die Quest Zäune reparieren
	.use 41058
step
	#completewith Giants
	#label Slag
    .goto TheStormPeaks,71.8,61.1,0
	>>Tötet die Stormforged Eisen Giants. Plündert sie nach Beute (Slag Covered Metall). Startet die Quest
	.collect 41556,1,12922,1 --Slag Covered Metal (1)
    .accept 12922 >>Akzeptiert die Quest Des Veredlers Feuer
step
	#completewith next
	#requires Slag
    .goto TheStormPeaks,70.7,56.7,70,0
    .goto TheStormPeaks,69.6,62.0,70,0
    .goto TheStormPeaks,76.8,62.9
	>>Tötet alle Brodeln Revenants, die ihr seht. Plündert sie nach Beute (Funken)
    .complete 12922,1 --Furious Spark (10)
step
	#label Giants
    .goto TheStormPeaks,75.0,63.6,70,0
    .goto TheStormPeaks,71.8,61.1
	>>Plündert Granite Fels vom Boden bei Frostfeldsee und Fjorns Amboss (ihr könnt nur einen gleichzeitig tragen)
	.use 41505 >> Benutzt Thorim's Bezauberung of Erde aus Taschen von Euch gegen Stormforged Eisen Giants, wenn ihr einen Brocken habt, um sie zu töten
	.collect 41506,1,12915,1,-1
    .complete 12915,2 --Stormforged Iron Giants (5)
step
    .goto TheStormPeaks,71.8,61.1
	>>Tötet die Stormforged Eisen Giants. Plündert sie nach Beute (Slag Covered Metall). Startet die Quest
	.collect 41505,1,12922,1 --Slag Covered Metal (1)
    .accept 12922 >>Akzeptiert die Quest Des Veredlers Feuer
step
    .goto TheStormPeaks,70.7,56.7,70,0
    .goto TheStormPeaks,69.6,62.0,70,0
    .goto TheStormPeaks,76.8,62.9
	>>Tötet Brodeln Revenants. Plündert sie für Funken
    .complete 12922,1 --Furious Spark (10)
step
	#completewith end
	#label FjornAnvil
    .goto TheStormPeaks,77.17,62.84
	>>Zwickt den Amboss bei Fjorn
    .turnin 12922 >>Gebt die Quest Des Veredlers Feuer ab
    .accept 12956 >>Akzeptiert die Quest Ein Funken Hoffnung
step
    .goto TheStormPeaks,77.34,62.87
	>>Plündert Granite Fels vom Boden bei Frostfeldsee und Fjorns Amboss (ihr könnt nur einen gleichzeitig tragen)
	.use 41505 >> Benutzt Thorim's Bezauberung of Erde aus Taschen von Euch gegen Fjorn, wenn ihr einen Brocken habt, um ihn zu töten
    .complete 12915,1 --Fjorn (1)
step
	#label Thorim1
    .goto TheStormPeaks,33.4,57.9
	>>Fliegt hinauf zu Thorim
    .turnin 12915 >>Gebt die Quest Zäune reparieren ab
    .turnin 12956 >>Gebt die Quest Ein Funken Hoffnung ab
    .accept 12924 >>Akzeptiert die Quest Ein Bündnis schließen
step
	.goto TheStormPeaks,65.45,60.16
	>>Sprecht mit König Jokkum
    .accept 12966 >>Akzeptiert die Quest Ihr könnt ihn nicht verpassen
step
	.goto TheStormPeaks,75.37,63.57
	>>Sprecht mit Njormeld
    .turnin 12966 >>Gebt die Quest Ihr könnt ihn nicht verpassen ab
    .accept 12967 >>Akzeptiert die Quest Kampf gegen die Elemente
step
    #completewith next
    .goto TheStormPeaks,75.71,63.91
    .vehicle >>Klickt mit Rechtsklick auf Snorri, um ihn zu besteigen :3
step
    .goto TheStormPeaks,77.2,62.7
	>>Benutzt "Schnee sammeln" (1), um Schnee von nahegelegenen Schneewehen zu sammeln. Benutzt "Schneeball werfen" (2) auf Brodelnde Wiedergänger, um sie zu töten.
    .complete 12967,1 --Seething Revenants (10)
step
    .goto TheStormPeaks,75.37,63.57
	>>Sprecht mit Njormeld
    .turnin 12967 >>Gebt die Quest Kampf gegen die Elemente ab
    .complete 12924,1 --Fjorn's Anvil Brought to Dun Niffelem (1)
step << Human
	>>Kehrt nach Dun Niffelem zurück. Sprecht mit Njormeld und dem Amboss
    .turnin 12924 >>Gebt die Quest Ein Bündnis schließen ab
    .accept 13009 >>Akzeptiert die Quest Ein Neuanfang
    .accept 12985 >>Akzeptiert die Quest Einen Kopf schmieden
    .goto TheStormPeaks,63.20,63.27
	.daily 12981 >>Akzeptiert die Quest Heiß und kalt
    .goto TheStormPeaks,63.13,62.94
	.isQuestAvailable 13047
step << !Human
	>>Kehrt nach Dun Niffelem zurück. Sprecht mit Njormeld und dem Amboss
    .turnin 12924 >>Gebt die Quest Ein Bündnis schließen ab
    .accept 13009 >>Akzeptiert die Quest Ein Neuanfang
    .goto TheStormPeaks,63.20,63.27
	.daily 12981 >>Akzeptiert die Quest Heiß und kalt
    .goto TheStormPeaks,63.13,62.94
	.isQuestAvailable 13047
step << Human
    .goto TheStormPeaks,65.45,60.16
	>>Sprecht mit König Jokkum
    .accept 13011 >>Akzeptiert die Quest Die Schlachtung von Jorkuttar
    .accept 12975 >>Akzeptiert die Quest In Gedenken an
step << !Human
    .goto TheStormPeaks,65.45,60.16
	>>Sprecht mit König Jokkum
    .accept 12975 >>Akzeptiert die Quest In Gedenken an
step << Human
	#completewith HornF
	>>Haltet Ausschau nach den Immerfrost Chips in der Gegend. Falls ihr eines seht, plündert es und startet die Quest.
	.accept 13420 >> Akzeptiert die Quest Immerfrost
step << Human
    .goto TheStormPeaks,69.6,58.8,70,0
    .goto TheStormPeaks,70.3,62.2
	>>Tötet die brüchigen Revenant. Plündert Essenz des Eises von ihnen
	.use 42424 >> Benutzt die diamantbesetzte Hacke auf die toten Eisengiganten. Manchmal können Mobs erscheinen, die ihr töten müsst; plündert sie anschließend nach ihren Sturmgeschmiedeten Augen.
	.collect 42246,6 --Essence of Ice (6)
	.complete 12985,1 --Stormforged Eye (8)
	.isQuestAvailable 13047
step << !Human
    .goto TheStormPeaks,69.6,58.8,70,0
    .goto TheStormPeaks,70.3,62.2
	>>Tötet die brüchigen Revenant. Plündert Essenz des Eises von ihnen
	.collect 42246,6 --Essence of Ice (6)
	.isOnQuest 12981
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,73.5,62.9,70,0
    .goto TheStormPeaks,76.2,63.4
	.use 42246 >> Benutzt die Essenz des Eises neben dem Schwelenden Schrott um Fjorns Amboss. Plündert den Gefrorenen Eisenschrott
    .complete 12981,1 --Frozen Iron Scrap (6)
	.isQuestAvailable 13047
step
	#label HornF
    .goto TheStormPeaks,71.7,47.6
	>>Sammelt die kleinen flachen Steine vom Boden in der Gegend
    .complete 12975,1 --Horn Fragment (8)
step << Human
	>>Kehrt nach Dun Niffelem zurück. Sprecht mit Calder, König Jokkum, Njormeld, Fjorns Amboss und Hodirs Horn
	.turnin 13420 >> Gebt die Quest Immerfrost ab
    .goto TheStormPeaks,67.11,60.97
    .turnin 12975 >>Gebt die Quest In Gedenken an ab
    .accept 12976 >>Akzeptiert die Quest Ein Monument für die Gefallenen
    .goto TheStormPeaks,65.45,60.16
    .turnin 12976 >>Gebt die Quest Ein Monument für die Gefallenen ab
    .turnin 12985 >>Gebt die Quest Einen Kopf schmieden ab
    .accept 12987 >>Akzeptiert die Quest Hodirs Helm aufsetzen
    .goto TheStormPeaks,63.20,63.27
    .turnin 12981 >>Gebt die Quest Heiß und kalt ab
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Akzeptiert die Quest Hodirs Horn blasen
    .goto TheStormPeaks,64.17,65.01
	.isOnQuest 13420
	.isQuestAvailable 13047
step << Human
	>>Kehrt nach Dun Niffelem zurück. Sprecht mit König Jokkum, Njormeld und Fjorns Amboss
    .turnin 12975 >>Gebt die Quest In Gedenken an ab
    .accept 12976 >>Akzeptiert die Quest Ein Monument für die Gefallenen
    .goto TheStormPeaks,65.45,60.16
    .turnin 12976 >>Gebt die Quest Ein Monument für die Gefallenen ab
    .turnin 12985 >>Gebt die Quest Einen Kopf schmieden ab
    .accept 12987 >>Akzeptiert die Quest Hodirs Helm aufsetzen
    .goto TheStormPeaks,63.20,63.27
    .turnin 12981 >>Gebt die Quest Heiß und kalt ab
    .goto TheStormPeaks,63.13,62.94
	.isQuestAvailable 13047
step << !Human
	>>Kehrt nach Dun Niffelem zurück. Sprecht mit König Jokkum, Fjorns Amboss und Njormeld
    .turnin 12975 >>Gebt die Quest In Gedenken an ab
    .accept 12976 >>Akzeptiert die Quest Ein Monument für die Gefallenen
    .goto TheStormPeaks,65.45,60.16
    .turnin 12981 >>Gebt die Quest Heiß und kalt ab
    .goto TheStormPeaks,63.13,62.94
    .turnin 12976 >>Gebt die Quest Ein Monument für die Gefallenen ab
    .goto TheStormPeaks,63.20,63.27
 step << !Human
	#label tribute
	.goto TheStormPeaks,66.16,61.44
    >>Ihr müsst möglicherweise Relics of Ulduar einmal abgeben, um Freundlich mit The Sons of Hodir zu werden. Überspringt dies, falls ihr bereits Freundlich seid.
    >>Ihr könnt Relics of Ulduar durch das Töten aller Mobs um Sturmgipfel erhalten oder sie vom Auktionshaus kaufen
	>>Sprecht mit Lillehoff
    .collect 42780,10 --Relic of Ulduar (10)
	.turnin 13559 >>Gebt die Quest Hodirs Tribut ab
    .reputation 1119,friendly,>0,1 -- Step only shows if rep is below friendly
step << !Human
    >>Sprecht mit Njormeld
    .accept 12985 >>Akzeptiert die Quest Einen Kopf schmieden
    .goto TheStormPeaks,63.20,63.27
step << !Human
    .goto TheStormPeaks,69.6,58.8,70,0
    .goto TheStormPeaks,70.3,62.2
	.use 42424 >> Benutzt die diamantbesetzte Hacke auf die toten Eisengiganten. Manchmal können Mobs erscheinen, die ihr töten müsst; plündert sie anschließend nach ihren Sturmgeschmiedeten Augen.
	.complete 12985,1 --Stormforged Eye (8)
step << !Human
	>>Kehrt nach Dun Niffelem zurück. Sprecht mit Njormeld und Hodirs Horn
    .turnin 12985 >>Gebt die Quest Einen Kopf schmieden ab
    .accept 12987 >>Akzeptiert die Quest Hodirs Helm aufsetzen
    .goto TheStormPeaks,63.20,63.27
    .daily 12977 >>Akzeptiert die Quest Hodirs Horn blasen
    .goto TheStormPeaks,64.17,65.01
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,64.24,59.23
	.use 42442 >> Fliegt hinauf zum funkelnden Eispfeil in Dun Niffelem. Benutzt die Tablets of Pronouncement in den Taschen von Euch, während ihr auf dem fliegenden Reittier von Euch fliegt.
    .complete 12987,1 --Hodir's Helm Mounted (1)
step
    .goto TheStormPeaks,63.20,63.27
	>>Sprecht mit Njormeld
    .turnin 12987 >>Gebt die Quest Hodirs Helm aufsetzen ab
step
    .goto TheStormPeaks,64.22,59.39
	>>Sprecht mit dem Helm, den ihr gerade platziert habt
    .daily 13006 >>Akzeptiert die Quest Den Helm polieren
	.isQuestAvailable 13047
step << !Human
    .goto TheStormPeaks,65.45,60.16
	>>Sprecht mit König Jokkum
    .accept 13011 >>Akzeptiert die Quest Die Schlachtung von Jorkuttar
step
	#completewith Jorcuttar
    .goto TheStormPeaks,54.4,63.2,0
	>>Tötet die Viscous Oils in der Überwinterungshöhle. Plündert das Öl von ihnen
    .complete 13006,1 --Viscous Oil (5)
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,55.8,63.9,30,0
    .goto TheStormPeaks,54.7,60.6
	.use 42732 >> Betretet die Überwinterungshöhle und bleibt nah an der rechten Seite. Benutzt den Immerfrostschneider auf Tot Icemaw Bären bis ihr eine Flanke eines Eisschlundbären bekommt
	.collect 42733,1 --Icemaw Bear Flank (1)
	.isQuestAvailable 13047
step
	#label Jorcuttar
    .goto TheStormPeaks,54.8,60.8
	.use 42733 >>Haltet euch an der rechten Seite der Höhle bis ihr zum Hauptraum kommt. Benutzt die Flanke eines Eisschlundbären in der Mitte des gefrorenen, spitzen Sees - Tötet Jorkuttar
    .complete 13011,1 --Jorcuttar (1)
step
    .goto TheStormPeaks,54.4,63.2
	>>Tötet die Viscous Oils in der Überwinterungshöhle. Plündert das Öl von ihnen
    .complete 13006,1 --Viscous Oil (5)
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,33.42,57.95
	>>Fliegt zu Thorim auf dem Tempel der Stürme. Sprecht mit ihm
    .turnin 13009 >>Gebt die Quest Ein Neuanfang ab
    .accept 13050 >>Akzeptiert die Quest Veranus
step
    .goto TheStormPeaks,45.4,66.9,40,0
    .goto TheStormPeaks,43.7,67.5
	>>Sammelt die Eier in den Nestern oben auf dem Berg
    .complete 13050,1 --Small Proto-Drake Egg (5)
step
    .goto TheStormPeaks,33.42,57.95
	>>Fliegt zu Thorim auf dem Tempel der Stürme. Sprecht mit ihm
    .turnin 13050 >>Gebt die Quest Veranus ab
    .accept 13051 >>Akzeptiert die Quest Territoriale Vergehen
step
    .goto TheStormPeaks,38.73,65.54
	.cast 56788 >> Benutzt die gestohlenen Proto-Drache-Eier in den Taschen von Euch oben auf dem Nest der Broodmother um Veranus anzulocken
	.timer 42,Veranus RP (QUESTS WEITERFÜHREN)
	.use 42797
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,33.42,57.95
	>>Fliegt zu Thorim auf dem Tempel der Stürme. Sprecht mit ihm. Wartet bei Thorim bis das Rollenspiel der vorherigen Quest beendet ist. Es dauert etwa 1 Minute
    .turnin 13051 >>Gebt die Quest Territoriale Vergehen ab
    .accept 13010 >>Akzeptiert die Quest Krolmir, Hammer der Stürme
step
	#completewith DunNif2
    .goto TheStormPeaks,29.5,74.3
	>>Fliegt nach Dun Niffelem
	.isQuestAvailable 13047
step
	>>Sprecht mit Hodir's Horn
    .daily 12977 >>Akzeptiert die Quest Hodirs Horn blasen
    .goto TheStormPeaks,64.17,65.01
	.isQuestAvailable 13047
step
	#label DunNif2
	>>Sprecht mit Hodir's Helm und König Jokkum in Dun Niffelem
    .turnin 13006 >>Gebt die Quest Den Helm polieren ab
    .goto TheStormPeaks,64.22,59.39
    .turnin 13011 >>Gebt die Quest Jormuttar ist so verdammt fett... ab
	.vehicle >> Sprecht mit König Jokkum. Begleitet ihn nach Donnerfall
	.timer 118,Krolmir, Hammer der Stürme RP
	.skipgossip
	.isQuestAvailable 13047
step
	#completewith TerraceM
	>>Haltet Ausschau nach den Immerfrost Chips in der Gegend. Falls ihr eines seht, plündert es und startet die Quest.
	.accept 13420 >> Akzeptiert die Quest Immerfrost
	.isQuestAvailable 13047
step
	#completewith ThorimRP
    .goto TheStormPeaks,70.7,47.3,0
    .goto TheStormPeaks,70.1,52.5,0
    .goto TheStormPeaks,72.7,52.1,0
    .goto TheStormPeaks,74.7,48.3,0
	.use 42164 >> Tötet die Niffelem Forefathers und die Restless Frostborn in der Gegend. Benutzt Hodirs Horn auf ihren Leichen, um sie zu befreien
	>>Ihr könnt das während des Rollenspiels tun
    .complete 12977,1 --Niffelem Forefather freed (5)
    .complete 12977,2 --Restless Frostborn freed (5)
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,71.37,48.78
	>>Wartet bis das Rollenspiel beendet ist
    .complete 13010,1 --Krolmir's Fate Discovered (1)
	.isQuestAvailable 13047
step
	#label ThorimRP
    .goto TheStormPeaks,71.37,48.78
	>>Sprecht mit Thorim bevor he disappears
    .turnin 13010 >>Gebt die Quest Krolmir, Hammer der Stürme ab
    .accept 13057 >>Akzeptiert die Quest Die Terrasse der Schöpfer
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,70.7,47.3,60,0
    .goto TheStormPeaks,70.1,52.5,60,0
    .goto TheStormPeaks,72.7,52.1,60,0
    .goto TheStormPeaks,74.7,48.3
	.use 42164 >> Tötet die Niffelem Forefathers und die Restless Frostborn in der Gegend. Benutzt Hodirs Horn auf ihren Leichen, um sie zu befreien
    .complete 12977,1 --Niffelem Forefather freed (5)
    .complete 12977,2 --Restless Frostborn freed (5)
	.isQuestAvailable 13047
step
	#label TerraceM
    .goto TheStormPeaks,56.26,51.36
	>>Sprecht mit Thorim bei der Terrasse der Schöpfer
    .turnin 13057 >>Gebt die Quest Die Terrasse der Schöpfer ab
    .accept 13005 >>Akzeptiert die Quest Der Eid der Irdenen
    .accept 13035 >>Akzeptiert die Quest Lokens Lakaien
	.isQuestAvailable 13047
step
	#completewith Duronn
    .goto TheStormPeaks,52.0,50.4,0
	.use 42840 >> Benutzt das Horn der Sturmspitzen in den Taschen von Euch um euch zu helfen die Eisen-Zwerge und Eisen-Wächter auf dem Weg zu töten
    .complete 13005,1 --Iron Sentinel (7)
    .complete 13005,2 --Iron Dwarf Assailant (20)
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,48.72,45.65
	.use 42840 >> Benutzt das Horn der Sturmspitzen in den Taschen von Euch um eine kleine Armee zu beschwören. Benutzt es um Halefnir zu töten
    .complete 13035,2 --Halefnir the Windborn (1)
step
	#label Duronn
    .goto TheStormPeaks,44.94,38.03
	.use 42840 >> Benutzt das Horn der Sturmspitzen in den Taschen von Euch um eine kleine Armee zu beschwören. Benutzt es um Duronn zu töten
    .complete 13035,3 --Duronn the Runewrought (1)
step
	#completewith next
    .goto TheStormPeaks,57.7,44.5,50,0
    .goto TheStormPeaks,57.7,44.5,0
	.use 42840 >> Benutzt das Horn der Sturmspitzen um euch zu helfen die Eisen-Wächter außerhalb von Eisenfausts Höhle zu töten
    .complete 13005,1 --Iron Sentinel (7)
step
    .goto TheStormPeaks,56.9,44.1,30,0
    .goto TheStormPeaks,55.30,43.32
	>>Betretet die Halle des Formers am Fuße des Berges auf der östlichen Seite
	.use 42840 >> Benutzt das Horn der Sturmspitzen um eine kleine Armee zu beschwören. Benutzt es um Eisenfaust zu töten
    .complete 13035,1 --Eisenfaust (1)
step
    .goto TheStormPeaks,58.48,45.21
	.use 42840 >> Benutzt das Horn der Sturmspitzen in den Taschen von Euch um euch zu helfen die Eisen-Zwerge und Eisen-Wächter in der Gegend zu töten
    .complete 13005,1 --Iron Sentinel (7)
    .complete 13005,2 --Iron Dwarf Assailant (20)
step
    .goto TheStormPeaks,56.26,51.36
	>>Sprecht mit Thorim bei der Terrasse der Schöpfer
    .turnin 13005 >>Gebt die Quest Der Eid der Irdenen ab
    .turnin 13035 >>Gebt die Quest Lokens Lakaien ab
    .accept 13047 >>Akzeptiert die Quest Die Abrechnung
step
    #completewith next
	.goto TheStormPeaks,44.49,28.19
	>>Fliegt zur Außenseite von Ulduar
    .fp Ulduar >> Erlernt die Flugroute Ulduar
    .skill riding,<300,1
step
    .goto TheStormPeaks,35.93,31.52
	>>Fliegt zu Thorim außerhalb von Ulduar. Sprecht mit ihm und wartet auf das Ende des Rollenspiels
    .complete 13047,1 --Witness the Reckoning (1)
	.skipgossip
	.timer 91,Die Abrechnung RP
step
	#completewith end
    .goto TheStormPeaks,44.49,28.19
	>>Fliegt zur Außenseite von Ulduar
    .fp Ulduar >> Erlernt die Flugroute Ulduar
	.fly Dun Niffelem >> Fliegt nach Dun Niffelem. Das dauert 1 Minute 44 Sekunden, also könnt ihr während dieser Zeit eine Pause machen
    .skill riding,300,1
step
	#completewith next
    .goto TheStormPeaks,36.2,49.3,200 >> Fliegt nach Dun Niffelem on von Euch flying mount
    .skill riding,<300,1
step
	>>Kehrt zurück nach Dun Niffelem. Sprecht mit Jokkum, Calder und Hodir's Horn
    .turnin 13047 >>Gebt die Quest Die Abrechnung ab
--  .accept 13108 >>Accept Whatever it Takes!
    .goto TheStormPeaks,65.45,60.16
	.turnin 13420 >> Gebt die Quest Immerfrost ab
    .goto TheStormPeaks,67.11,60.97
    .turnin 12977 >>Gebt die Quest Hodirs Horn blasen ab
    .goto TheStormPeaks,64.17,65.01
	.isOnQuest 13420
step
	#label end
	>>Kehrt zurück nach Dun Niffelem. Sprecht mit Jokkum und Hodir's Horn
    .turnin 13047 >>Gebt die Quest Die Abrechnung ab
--  .accept 13108 >>Accept Whatever it Takes!
    .goto TheStormPeaks,65.45,60.16
    .turnin 12977 >>Gebt die Quest Hodirs Horn blasen ab
    .goto TheStormPeaks,64.17,65.01
step -- checking that player has honored with hodir to get this quest. will only be humans and any other that turned in rep items
	>>Sprecht mit Wissenshüter Randvir in Dun Niffelem
	.goto TheStormPeaks,64.84,59.05
	.accept 13001 >>Akzeptiert die Quest Der Bau von Hodirs Speer
	.reputation 1119,honored,<0,1
step
	>>Tötet Stoisch Mammoths. Plündert sie für Hides
	.goto TheStormPeaks,58.68,60.94,60,0
	>>Plündert die Immerfrostscherbe in der Überwinterungshöhle
	.complete 13001,2 --Stoic Mammoth Hide (3)
	.complete 13001,1 --Everfrost Shard (3)
	.goto TheStormPeaks,55.84,63.94,50,0
   	.goto TheStormPeaks,54.72,60.82
	.isOnQuest 13001
step
	>>Sprecht mit Wissenshüter Randvir in Dun Niffelem
	.goto TheStormPeaks,64.84,59.05
	.turnin 13001 >>Gebt die Quest Der Bau von Hodirs Speer ab
	.isQuestComplete 13001
step
    +Ihr habt die Questreihe The Sons of Hodir Pre Quest abgeschlossen. Bitte benutzt den Leitfaden The Sons of Hodir Täglich Quests Route, um die täglichen Quests abzuschließen. Hinweis: Einige sind möglicherweise heute nicht verfügbar, da sie bereits früher abgeschlossen wurden.
	.isQuestTurnedIn 13047
]])
