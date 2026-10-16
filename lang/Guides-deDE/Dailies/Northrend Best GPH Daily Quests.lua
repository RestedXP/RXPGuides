if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#version 1
#wotlk
#cata
#group RestedXP Northrend Täglich Quests
#name Beste Täglich Quests Gold Per Hour Route

--20 daily quests total
--5(rep depending) quests from Hodir (didnt include dragon flying one. its terrible) may not be 5 quests for everyone. should be at least 3 though
--6 from icecrown. quests from Ebon Blade
--9 from icecrown. quests from gunship/surroundings
--all of these quests require pre quests to be completed/unlocked. each section has checks to see if they have completed pre quests or not. if they havnt they're told to do pre quest guide
--gives the player still room to do daily heroic+normal as well as jc/cooking/fishing daily quests


--5 Quest section for The Sons of Hodir Daily Quests. Didn't include slaying dragon quest because its really bad/slow

step
	+Um die täglichen Quests der Söhne von Hodir freizuschalten, müsst ihr zuerst ihre Quest-Kette in Die Sturmgipfel abschließen. Bitte benutzt den Guide 'Söhne von Hodir - Tägliche Quests freischalten', um die täglichen Quests freizuschalten.
	.isQuestAvailable 13047
step
	>>Sprecht mit Fjorns Amboss, Hodir's Horn, Hodir's Helm, der Frostworg-Mutter und Arngrim dem Unersättlichen
    .daily 12981 >>Akzeptiert die Quest Heiß und kalt
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Akzeptiert die Quest Hodirs Horn blasen
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >> Akzeptiert die Quest Den Helm polieren
	.goto TheStormPeaks,64.24,59.23
	.daily 12994 >> Akzeptiert die Quest Jagd auf Spione
	.goto TheStormPeaks,63.49,59.73
	.daily 13046 >> Akzeptiert die Quest Arngrim füttern
	.goto TheStormPeaks,67.61,59.95
	.reputation 1119,revered,<0,1 -- if you're 0 into revered it will display this step
step
	>>Sprecht mit Fjorns Amboss, Hodir's Horn, Hodir's Helm und Frostworg Denmother
    .daily 12981 >>Akzeptiert die Quest Heiß und kalt
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Akzeptiert die Quest Hodirs Horn blasen
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >> Akzeptiert die Quest Den Helm polieren
	.goto TheStormPeaks,64.24,59.23
	.daily 12994 >> Akzeptiert die Quest Jagd auf Spione
	.goto TheStormPeaks,63.49,59.73
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
	.goto TheStormPeaks,64.24,59.23
	.turnin 13046 >> Gebt die Quest Arngrim füttern ab
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 13046
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
step << Mage
	#completewith next
	.zone Dalaran >> Nach Dalaran teleportieren
	>>Fliegt nach Eiskrone
step << !Mage
	#completewith next
    .hs >>Benutzt euren Ruhestein zum Dalaran if von Euch Herd is set there or somewhere near Eiskrone.
	>>Fliegt nach Eiskrone

--9 Quest section from Icecrown Gunship and close surroundings section. 6 Quests from the gunship, other 3 from on the ground/in Ymirheim

step << Alliance
	+Um alle täglichen Quests des Eiskronen-Luftschiffs freizuschalten, müsst ihr zunächst die Vorquestreihe abschließen. Bitte verwendet den Leitfaden 'Eiskronen-Luftschiff: Tägliche Quests freischalten', um alle täglichen Quests freizuschalten.
	.isQuestAvailable 13314,13342,13321,13318
--	13314  Get the Message
-- 	13342  Not a Bug
--	13321  Retest Now
--	13318  Drag and Drop

step << Horde
	+Um alle täglichen Quests des Eiskronen-Luftschiffs freizuschalten, müsst ihr zunächst die Vorquestreihe abschließen. Bitte verwendet den Leitfaden 'Eiskronen-Luftschiff: Vorquests', um alle täglichen Quests freizuschalten.
	.isQuestAvailable 13313,13356,13352,13358
--	13313  Blinding the Eyes in the Sky
--	13356  Retest Now
--	13352  Drag and Drop
--	13358  Not a Bug

step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>In Eiskrone fliegt zum Luftschiff der Allianz, Die Himmelsbrecher.
	>>Sprecht mit Kürassier Drosche, Absalan der Fromme, Stabshauptmann Justin Bartlett, Chefingenieur Bolzenschlüssel und Thassarian
	>>Sie befinden sich jeweils im Vordermagazin, auf dem oberen Deck, im Hauptmagazin und darunter auf dem unteren Deck.
    .daily 13336 >>Akzeptiert die Quest Blut der Auserwählten
    .daily 13300 >>Akzeptiert die Quest Vom Saronit abhängig
    .daily 13322 >>Akzeptiert die Quest Jetzt neu testen
    .daily 13323 >>Akzeptiert die Quest Gefährliche Gewandung
	.daily 13344 >>Akzeptiert die Quest Keine Wanze
    .daily 13333 >>Akzeptiert die Quest Fangen More Dispatches
step << Horde
	.goto IcecrownGlacier,67.00,38,0
	>>In Eiskrone fliegt zum Luftschiff der Horde, Orgrims Hammer.
	>>Sprecht mit Kriegstreiber Davos Rioht, Bruder Keltan, Himmelshäscher Korm Schwarznarbe, Chefingenieur Kupferklammer und Koltira Todesweber
	>>Sie befinden sich jeweils im Vordermagazin, patrouillieren auf dem oberen Deck und darunter auf dem unteren Deck.
    .daily 13330 >>Akzeptiert die Quest Blut der Auserwählten
    .daily 13302 >>Akzeptiert die Quest Vom Saronit abhängig
    .daily 13357 >>Akzeptiert die Quest Jetzt neu testen
    .daily 13353 >>Akzeptiert die Quest Gefährliche Gewandung
	.daily 13365 >>Akzeptiert die Quest Keine Wanze
    .daily 13331 >>Akzeptiert die Quest Keeping the Allianz Blenden
step << Alliance
    .goto IcecrownGlacier,62.6,51.3
	>>Fliegt zu Feldkommandant Koup (auf dem Boden - nicht auf dem Schiff)
    .daily 13309 >>Akzeptiert die Quest Luftangriff
step << Alliance
    #completewith next
    .goto Icecrown,62.55,50.67
    .vehicle 32227 >> Rechtsklickt auf das Geschütz oben auf der Flugmaschine, um die Quest zu starten.
	.isOnQuest 13309
step << Alliance
	>>Schießt auf alle Speerschusswaffen, die ihr sehen könnt, während ihr herumfliegt, um sie zu deaktivieren. Infiltratoren werden dabei auftauchen.
    .goto Icecrown,52.65,56.93
    .complete 13309,1 --4/4 Skybreaker Infiltrators dropped
	.isOnQuest 13309
step << Alliance
    .goto Icecrown,62.55,51.29
	>>Verlasst die Flugmaschine. Ihr werdet einen Fallschirm erhalten. Kehrt zu Koup zurück.
    .turnin 13309 >>Gebt die Quest Luftangriff ab.
	.isQuestComplete 13309
step << Horde
	>>Fliegt zu Feldkommandant Xutjja (auf dem Boden - nicht auf dem Schiff)
    .goto IcecrownGlacier,58.3,46.0
    .daily 13310 >>Akzeptiert die Quest Luftangriff
step << Horde
	#completewith next
	.vehicle >>Rechtsklickt auf das Geschütz oben auf der Flugmaschine, um die Quest zu starten.
    .goto IcecrownGlacier,59.60,45.84
	.isOnQuest 13310
step << Horde
	>>Schießt auf alle Speerschusswaffen, die ihr sehen könnt, während ihr herumfliegt, um sie zu deaktivieren. Infiltratoren werden dabei auftauchen.
    .goto IcecrownGlacier,56.8,64.3
    .complete 13310,1 --Kor'kron Infiltrators dropped (4)
	.isOnQuest 13310
step << Horde
    .goto IcecrownGlacier,58.3,46.0
	>>Verlasst die Flugmaschine. Ihr werdet einen Fallschirm erhalten. Kehrt zu Xutjja zurück.
    .turnin 13310 >>Gebt die Quest Luftangriff ab.
	.isQuestComplete 13310
step << Alliance
    .goto IcecrownGlacier,62.5,51.1,15,0
    .goto IcecrownGlacier,62.8,51.6
	>>Sprecht mit dem Schwadronsführer. Er kann hier nicht sein, wenn jemand anderes die Quest gestartet hat. Er hat eine ungefähre Respawn-Zeit von 6 Minuten und spawnt etwa 10 Yards rechts von Koup. Ihr könnt dies überspringen, wenn ihr nicht warten möchtet oder später nachprüfen wollt.
    .daily 13284 >>Akzeptiert die Quest Bodenangriff
step << Alliance
    .goto IcecrownGlacier,58.2,55.9,0
    .goto IcecrownGlacier,59.6,59.3,0
    .goto IcecrownGlacier,57.8,62.6,0
	#completewith Mineslave
	>>Tötet die Vrykul throughout Ymirheim
	.complete 13336,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13336
step << Alliance
    .goto Icecrown,59.89,53.50
	>>Eskortiert die Truppen. Lasst einige Truppen die Mobs halten, falls nötig.
    .complete 13284,1 --4/4 Alliance troops escorted to Ymirheim
	.isOnQuest 13284
step << Alliance
	#label Mineslave
    .goto IcecrownGlacier,55.7,57.3,40,0
    .goto IcecrownGlacier,56.2,58.9,40,0
    .goto IcecrownGlacier,55.6,59.7,40,0
    .goto IcecrownGlacier,54.5,60.0,40,0
    .goto IcecrownGlacier,55.7,57.3
	>>Geht in die Saronit-Mine. Sprecht mit den Sklaven, um sie zu retten (manchmal greifen sie euch an).
    .complete 13300,1 --Saronite Mine Slave rescued (10)
	.skipgossip
	.isOnQuest 13300
step << Alliance
    .goto IcecrownGlacier,58.2,55.9,70,0
    .goto IcecrownGlacier,59.6,59.3,70,0
    .goto IcecrownGlacier,57.8,62.6
	>>Tötet die Vrykul throughout Ymirheim
	.complete 13336,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13336
step << Alliance
    .goto Icecrown,57.01,62.53
	>>HINWEIS: Diese Quest markiert euch für PvP. Sie ist allerdings SEHR einfach.
    .daily 13280 >>Akzeptiert die Quest König der Berge
step << Alliance
    #completewith next
    .goto Icecrown,56.99,62.60
    .vehicle 31784 >>Rechtsklickt auf den Gnomen-Roboter.
	.isOnQuest 13280
step << Alliance
    .goto Icecrown,54.89,60.12
	>>Spammt "Sprungjets" (3), um schnell den Berg hochzuklettern (keine Abklingzeit). Sobald ihr die Spitze erreicht, benutzt "Schlachtenstandarte der Allianz platzieren" (1), um die Fahne zu pflanzen. Danach verlasst das Fahrzeug.
    .complete 13280,1 --1/1 Alliance Battle Standard planted
	.isOnQuest 13280
step << Alliance
    .goto Icecrown,56.97,62.55
    .turnin 13280 >>Gebt die Quest König der Berge ab.
	.isQuestComplete 13280
step << Alliance
	>>Rückkehr zum Boden Rittmeister Koup
    .goto Icecrown,62.60,51.35
    .turnin 13284 >>Gebt die Quest Bodenangriff ab.
	.isQuestComplete 13284
step << Horde
    .goto IcecrownGlacier,58.3,46.0
	>>Sprecht mit dem Schwadronsführer. Er kann hier nicht sein, wenn jemand anderes die Quest gestartet hat. Er hat eine ungefähre Respawn-Zeit von 6 Minuten. Ihr könnt dies überspringen, wenn ihr nicht warten möchtet oder später nachprüfen wollt.
    .daily 13301 >>Akzeptiert die Quest Bodenangriff
step << Horde
    .goto IcecrownGlacier,58.2,55.9,0
    .goto IcecrownGlacier,59.6,59.3,0
    .goto IcecrownGlacier,57.8,62.6,0
	#completewith Mineslave
	>>Tötet die Vrykul throughout Ymirheim
	.complete 13330,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13330
step << Horde
	>>Eskortiert die Truppen. Lasst einige Truppen die Mobs halten, falls nötig.
    .goto IcecrownGlacier,59.4,52.8
    .complete 13301,1 --Horde troops escorted to Ymirheim (4)
	.isOnQuest 13301
step << Horde
	#label Mineslave
    .goto IcecrownGlacier,55.7,57.3,40,0
    .goto IcecrownGlacier,56.2,58.9,40,0
    .goto IcecrownGlacier,55.6,59.7,40,0
    .goto IcecrownGlacier,54.5,60.0,40,0
    .goto IcecrownGlacier,55.7,57.3
	>>Geht in die Saronit-Mine. Sprecht mit den Sklaven, um sie zu retten (manchmal greifen sie euch an).
    .complete 13302,1 --Saronite Mine Slave rescued (10)
	.skipgossip
	.isOnQuest 13302
step << Horde
    .goto IcecrownGlacier,58.2,55.9,70,0
    .goto IcecrownGlacier,59.6,59.3,70,0
    .goto IcecrownGlacier,57.8,62.6
	>>Tötet die Vrykul throughout Ymirheim
	.complete 13330,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13330
step << Horde
    .goto IcecrownGlacier,51.9,57.6
	>>HINWEIS: Diese Quest markiert dich für PvP. Das ist jedoch SEHR einfach.
    .daily 13283 >>Akzeptiert die Quest König der Berge
step << Horde
    #completewith next
    .goto Icecrown,51.95,57.62
    .vehicle >>Rechtsklickt auf den Gnomen-Roboter.
	.isOnQuest 13283
step << Horde
    .goto Icecrown,54.89,60.12
	>>Benutzt mehrfach "Sprungjets" (3), um schnell die Klippe hochzuklettern (sie hat keine Abklingzeit). Sobald ihr oben auf dem Berg seid, benutzt "Schlachtstandarte der Horde setzen" (1), um die Standarte zu pflanzen. Dann verlasst das Fahrzeug.
    .complete 13283,1 --1/1 Horde Battle Standard planted
	.isOnQuest 13283
step << Horde
    .goto Icecrown,51.9,57.6
    .turnin 13283 >>Gebt die Quest König der Berge ab.
	.isQuestComplete 13283
step << Horde
	>>Rückkehr zum Boden Rittmeister Xutjja
    .goto Icecrown,58.3,46.0
    .turnin 13301 >>Gebt die Quest Bodenangriff ab.
	.isQuestComplete 13301
step
	>>Geht zur Plattform und tötet die Bitter Initiates in der Gegend. Plündert sie für ihre Kugel der Illusion.
	.use 44246 >>Benutzt die Kugel der Illusion auf den Dunkel Subjugators in der Gegend, wenn ihr außer Kampf seid.
	.collect 44246,3,13353,1,-1 << Horde--Orb of Illusion (3 -1)
	.collect 44246,3,13323,1,-1 << Alliance--Orb of Illusion (3 -1)
    .goto IcecrownGlacier,53.7,46.1
    .complete 13323,1 << Alliance --Dark Subjugator dragged and dropped (3)
    .complete 13353,1 << Horde --Dark Subjugator dragged and dropped (3)
    .goto IcecrownGlacier,54.7,45.9,60,0
    .goto IcecrownGlacier,54.0,46.3,60,0
    .goto IcecrownGlacier,52.2,45.7,60,0
    .goto IcecrownGlacier,54.0,46.3
	.isOnQuest 13323 << Alliance
	.isOnQuest 13353 << Horde
step << Alliance
    .goto IcecrownGlacier,46.2,52.1,70,0
    .goto IcecrownGlacier,42.4,59.4,0,0
	.use 44222 >>Benutzt die Pfeilpistole in von Euch Taschen auf den Orgrims Hammer Späher (ihr könnt sie benutzen, während ihr auf von Euch fliegendem Reittier seid). Plündert ihre Leichen für die Dispatches.
    .complete 13333,1 --Orgrim's Hammer Dispatch (6)
	.isOnQuest 13333
step << Horde
	.goto IcecrownGlacier,48.85,40.44
	.use 44212 >>Benutzt die SGM-3 in von Euch Taschen auf den Skybreaker Recon Fighters in der Luft.
	.complete 13331,1 --Skybreaker Recon Fighters shot down (6)
	.isOnQuest 13331
step
    .goto IcecrownGlacier,49.7,34.4
	.use 44307 >>Benutzt das Verdünntes Kulttonikum in von Euch Taschen, um den "Dunkle Einsicht" Stärkungszauber zu erhalten. Dies ermöglicht es euch, die Besudelt Essences von allen Humanoiden zu plündern, die ihr in der Gegend tötet.
	.collect 44301,10,13322,1 << Alliance
	.collect 44301,10,13357,1 << Horde
	.isOnQuest 13322 << Alliance
	.isOnQuest 13357 << Horde
step
    .goto IcecrownGlacier,49.7,34.4
	.use 44301 -- to combine the 10 tainted essences into a writhing mass
	.use 44304 >> Macht einen Rechtsklick auf die Besudelt Essences in von Euch Taschen, um sie in eine Writhing Mass umzuwandeln. Werft sie in einen Kessel.
	.complete 13322,1 << Alliance
	.complete 13357,1 << Horde
	.isOnQuest 13322 << Alliance
	.isOnQuest 13357 << Horde
step
    .goto IcecrownGlacier,54.1,31.4,70,0
    .goto IcecrownGlacier,54.7,28.0,70,0
    .goto IcecrownGlacier,57.0,28.8,70,0
    .goto IcecrownGlacier,54.1,31.4
	.use 44433 >> Tötet 5 Versklavt Minions (Voidwalkers). Benutzt die Rute des Entzugs auf ihren Leichen, um ihre Dunkle Materie zu bekommen.
	.collect 44434,5,13344,1 << Alliance --Dark Matter (5)
	.collect 44434,5,13365,1 << Horde --Dark Matter (5)
	.isOnQuest 13344 << Alliance
	.isOnQuest 13365 << Horde
step
    .goto IcecrownGlacier,53.8,33.6
	>>Klickt auf den Beschwören Stein.
	.complete 13344,1 << Alliance  --Dark Messenger Summoned (1)
    .complete 13365,1 << Horde --Dark Messenger Summoned (1)
	.isOnQuest 13344 << Alliance
	.isOnQuest 13365 << Horde
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Kehrt zum Skybreaker zurück. Sprecht mit Kürassier Drosche, Absalan der Fromme, Stabshauptmann Justin Bartlett, Chefingenieur Bolzenschlüssel und Thassarian.
    .turnin -13336 >>Gebt die Quest Blut der Auserwählten ab.
    .turnin -13300 >>Gebt die Quest Vom Saronit abhängig ab.
    .turnin -13322 >>Gebt die Quest Jetzt neu testen ab.
    .turnin -13323 >>Gebt die Quest Gefährliche Gewandung ab.
	.turnin -13344 >>Gebt die Quest Keine Wanze ab
    .turnin -13333 >>Gebt die Quest Mehr Funksprüche ab
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Kehrt nach Orgrims Hammer zurück. Sprecht mit Kriegshetzer Davos Rahbatz, Bruder Keltan, Himmelshäscher Korm Schwarznarbe, Chefingenieur Kupferklammer und Koltira Todesweber
    .turnin -13330 >>Gebt die Quest Blut der Auserwählten ab.
    .turnin -13302 >>Gebt die Quest Vom Saronit abhängig ab.
    .turnin -13357 >>Gebt die Quest Jetzt neu testen ab.
    .turnin -13353 >>Gebt die Quest Gefährliche Gewandung ab.
	.turnin -13365 >>Gebt die Quest Keine Wanze ab
    .turnin -13331 >>Gebt die Quest Die Allianz im Dunkeln tappen ab

--6 Quest section from Knights of the Ebon Blade. 3 come from The Shadow Vault, other 3 from Death's Rise

step
	+Um die täglichen Quests der Ritter der Schwarzen Klinge freizuschalten, müsst ihr zunächst deren Questkette in Eiskrone abschließen. Bitte nutzt den Ebon-Blade-Leitfaden zum Freischalten der täglichen Quests, um die täglichen Quests freizuschalten.
	.isQuestAvailable 12814

-- 3 Quests from The Shadow Vault
step
	>>Akzeptiert in Das Schattengewölbe die 3 Täglichen Quests
    >>Sprecht mit Silber
	.daily 12995 >>Akzeptiert die Quest Setzt ein Zeichen
	.goto Icecrown,42.84,24.92
	>>Sprecht mit dem Springer. Er läuft um das Zelt herum
	.daily 13069 >>Akzeptiert die Quest Schießen'Em Up
	.goto IcecrownGlacier,43.5,25.0
	>>Sprecht mit Ekel, er ist ein Gräuel, das den Weg zwischen dem Eingang und dem Hauptgebäude patrouilliert
    .daily 13071 >>Akzeptiert die Quest Ekel mag Feuer!
    .goto IcecrownGlacier,42.7,26.8,60,0
    .goto IcecrownGlacier,43.6,24.1
step
    .goto IcecrownGlacier,29.5,43.4,50,0
    .goto IcecrownGlacier,29.6,45.7,50,0
    .goto IcecrownGlacier,27.9,45.8,50,0
    .goto IcecrownGlacier,27.8,40.2,50,0
    .goto IcecrownGlacier,28.3,38.0,50,0
    .goto IcecrownGlacier,29.0,35.1,50,0
    .goto IcecrownGlacier,34.1,28.7,50,0
    .goto IcecrownGlacier,29.5,43.4
	.use 42480 >>Tötet die Vrykul in der Gegend. Benutzt das Banner der Schwarzen Klinge in den Beuteln von Euch auf ihren Leichen
    .complete 12995,1--Ebon Blade Banner planted near Vrykul corpse (15)
	.isOnQuest 12995
step
    .goto IcecrownGlacier,27.9,33.2
	>>Während ihr in der Harpune seid, nutzt wiederholt "Schnellfeuerharpune" (3), um die Drachen abzuschießen
	.complete 13069,1 --Jotunheim Proto-Drakes & their riders shot down
	.isOnQuest 13069
step
	#completewith next
    .goto IcecrownGlacier,28.0,37.7
    .vehicle 30564 >> Rechtsklick auf einen Protodrachen von Njorndar zum Besteigen
	.isOnQuest 13071
step
    .goto IcecrownGlacier,27.7,41.1,70,0
    .goto IcecrownGlacier,29.2,41.0,70,0
    .goto IcecrownGlacier,29.6,39.7,70,0
    .goto IcecrownGlacier,31.5,36.9,70,0
    .goto IcecrownGlacier,32.0,39.1,70,0
    .goto IcecrownGlacier,30.8,40.2,70,0
    .goto IcecrownGlacier,32.4,40.7,70,0
    .goto IcecrownGlacier,31.5,43.9,70,0
    .goto IcecrownGlacier,30.1,43.1,70,0
    .goto IcecrownGlacier,27.7,41.1
	>>Benutzt "Geschwindigkeitsschub" (1) wenn verfügbar, um schneller zu bewegen. Benutzt "Gebäude von Jotunheim bombardieren" (3), um die Gebäude in Flammen zu setzen
    .complete 13071,1 --Vrykul buildings set ablaze (8)
	.isOnQuest 13071
step
    >>Kehrt zu Das Schattengewölbe zurück. Sprecht mit Silber, Der Springer und Ekel
	.turnin 12995 >>Gebt die Quest Setzt ein Zeichen ab
	.goto Icecrown,42.84,24.92
    .turnin 13069 >>Gebt die Quest Schießen'Em Up ab
	.goto IcecrownGlacier,43.5,25.0
    .turnin 13071 >>Gebt die Quest Ekel mag Feuer! ab
    .goto IcecrownGlacier,43.6,24.1,60,0
    .goto IcecrownGlacier,42.7,26.8

-- 3 Quests from Death's Rise
step
	>>Akzeptiert in Todesanhöhe die 3 Täglichen Quests
	>>Sprecht mit Setaal
	.daily 12813 >>Akzeptiert die Quest Erhebt euch von den Toten!
	.goto Icecrown,19.67,48.39
	>>Sprecht mit Aurochs. Er patrouilliert um das mittlere Feuer herum
    .daily 12838 >>Akzeptiert die Quest Informationsbeschaffung
    .goto IcecrownGlacier,20.1,47.5,20,0
    .goto IcecrownGlacier,20.4,47.9,20,0
    .goto IcecrownGlacier,20.1,48.4,20,0
    .goto IcecrownGlacier,19.7,47.9
	>>Sprecht mit Uzo
    .daily 12815 >>Akzeptiert die Quest Flugsperrzone
	.goto Icecrown,19.64,47.80
step
	#sticky
	#label Gryphon
	.goto IcecrownGlacier,10.5,44.1,70,0
    .goto IcecrownGlacier,5.0,43.4,70,0
    .goto IcecrownGlacier,10.5,39.0,70,0
    .goto IcecrownGlacier,12.7,41.2,70,0
    .goto IcecrownGlacier,10.5,44.1
	>>Tötet die Greifenreiter in der Gegend. Schießt sie mit Fernkampffähigkeiten ab oder gruppiert mehrere von ihnen in der Luft und fliegt dann herunter und tötet sie.
    .complete 12815,1 --Onslaught Gryphon Rider (10)
	.isOnQuest 12815
step
    #completewith next
	.goto IcecrownGlacier,9.5,44.8,50,0
    .goto IcecrownGlacier,9.5,44.8,0,0
	.use 40587 >> Tötet die Anhänger des Ansturms in der Gegend. Benutzt die Tinktur des Dunkelheilers aus eurer Tasche auf ihren Leichen.
    .complete 12813,1 --Scarlet Onslaught corpse transformed (10)
	.isOnQuest 12813
step
	>>Tötet Anhänger des Ansturms, plündert dann ihre Schlüssel. Benutzt diese, um Kisten überall im Hafen des Ansturms zu öffnen und die Dokumente zu sammeln.
	>>|cff00ecffHINWEIS: Öffnet nur funkelnde Truhen für die Dokumente. Truhen, die nicht funkeln, enthalten KEINE Dokumente.|r
    .goto IcecrownGlacier,10.7,45.6,40,0
    .goto IcecrownGlacier,10.3,46.4,40,0
    .goto IcecrownGlacier,8.8,46.7,40,0
    .goto IcecrownGlacier,8.8,42.2,40,0
    .goto IcecrownGlacier,10.6,42.9,40,0
    .goto IcecrownGlacier,9.6,40.6,40,0
    .goto IcecrownGlacier,9.3,37.5,40,0
    .goto IcecrownGlacier,10.1,36.2,40,0
    .goto IcecrownGlacier,9.1,36.3,40,0
    .goto IcecrownGlacier,8.5,36.4,40,0
    .goto IcecrownGlacier,10.7,45.6,40,0
    .goto IcecrownGlacier,10.3,46.4,40,0
    .goto IcecrownGlacier,8.8,46.7,40,0
    .goto IcecrownGlacier,8.8,42.2,40,0
    .goto IcecrownGlacier,10.6,42.9,40,0
    .goto IcecrownGlacier,9.6,40.6,40,0
    .goto IcecrownGlacier,9.3,37.5,40,0
    .goto IcecrownGlacier,10.1,36.2,40,0
    .goto IcecrownGlacier,9.1,36.3,40,0
    .goto IcecrownGlacier,8.5,36.4
	.collect 40652,6,12838,-1
    .complete 12838,1 --Onslaught Intel Documents (5)
	.isOnQuest 12838
step
	.goto IcecrownGlacier,9.5,44.8,50,0
    .goto IcecrownGlacier,9.5,44.8,0,0
	.use 40587 >> Tötet die Anhänger des Ansturms in der Gegend. Benutzt die Tinktur des Dunkelheilers aus eurer Tasche auf ihren Leichen.
    .complete 12813,1 --Scarlet Onslaught corpse transformed (10)
	.isOnQuest 12813
step
	#requires Gryphon
	>>Kehrt zu Todesanhöhe zurück. Sprecht mit Uzo, Setaal und Aurochs
    .turnin 12815 >>Gebt die Quest Flugsperrzone ab
    .goto Icecrown,19.64,47.80
    .turnin 12813 >>Gebt die Quest Erhebt euch von den Toten! ab
    .goto Icecrown,19.67,48.39
    .turnin 12838 >>Gebt die Quest Informationsbeschaffung ab
    .goto IcecrownGlacier,20.1,47.5,20,0
    .goto IcecrownGlacier,20.4,47.9,20,0
    .goto IcecrownGlacier,20.1,48.4,20,0
    .goto IcecrownGlacier,19.7,47.9
]])
