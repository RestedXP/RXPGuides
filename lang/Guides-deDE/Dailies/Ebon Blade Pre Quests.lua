if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Northrend Täglich Quests
#subgroup Fraktion Täglich Quests
#wotlk
#cata
#name Ebon Blade Freischalten Täglich Quests

step
    +Ihr habt die Questreihe Ritter der Schwarzen Klinge abgeschlossen. Bitte benutzt den Leitfaden für die Ebon Blade Täglichen Quests.
	.isQuestTurnedIn 12814

step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Fliegt zur Himmelsbrecher, das große Allianzschiff, das hoch oben in der Luft herumfliegt
	>>Sprecht mit Thassarian in der hinteren linken Ecke des Schiffes
    .accept 12887 >>Akzeptiert die Quest Nichts als Spaß und Spiele
step << Horde
	.goto Icecrown,62.58,45.04
	>>Fliegt zu Orgrims Hammer, dem großen Schiff der Horde, das hoch oben in der Luft herumfliegt
	>>Sprecht mit Koltira Todesweber im vorderen Raum des Schiffes
    .accept 12892 >>Akzeptiert die Quest Nichts als Spaß und Spiele
step
    .goto IcecrownGlacier,44.5,21.6
	.use 41265 >> Fliegt zur Spitze des Turms. Benutzt den Augenschmerzblaster auf dem Ocular, bis dieser stirbt
    .complete 12887,1 << Alliance --The Ocular has been destroyed (1)
    .complete 12892,1 << Horde --The Ocular has been destroyed (1)
step
    .goto IcecrownGlacier,44.1,24.7
	>>Fliegt ganz hinunter zu Baron Silber. Sprecht mit ihm
    .turnin 12887 >>Gebt die Quest Nichts als Spaß und Spiele ab << Alliance
    .turnin 12892 >>Gebt die Quest Nichts als Spaß und Spiele ab << Horde
    .accept 12891 >>Akzeptiert die Quest Ich habe da eine Idee, aber zuerst...
step
	>>Tötet Geister und plündert sie für deren Seil, tötet Abominations und plündert sie für deren Haken, tötet Cultists und plündert sie für deren Rod, und tötet Untote und plündert sie für deren Essenz
    .complete 12891,1 --Cultist Rod (1)
    .goto IcecrownGlacier,43.8,24.2,40,0
    .goto IcecrownGlacier,43.6,25.1,40,0
    .goto IcecrownGlacier,43.7,25.4,40,0
    .goto IcecrownGlacier,42.5,25.1,40,0
    .goto IcecrownGlacier,42.3,26.1
    .complete 12891,3 --Geist Rope (1)
    .goto IcecrownGlacier,43.4,25.6,40,0
    .goto IcecrownGlacier,43.3,26.6,40,0
    .goto IcecrownGlacier,42.5,26.4,40,0
    .goto IcecrownGlacier,42.9,24.5
    .complete 12891,2 --Abomination Hook (1)
    .goto IcecrownGlacier,43.3,24.1,40,0
    .goto IcecrownGlacier,43.5,26.2,40,0
    .goto IcecrownGlacier,42.5,28.1,40,0
    .goto IcecrownGlacier,42.7,25.7
   .complete 12891,4 --Scourge Essence (5)
    .goto IcecrownGlacier,43.6,24.1,40,0
    .goto IcecrownGlacier,42.6,27.2,40,0
    .goto IcecrownGlacier,42.3,26.1
step
    .goto IcecrownGlacier,44.2,24.6
	>>Kehrt zu Baron Silber zurück
    .turnin 12891 >>Gebt die Quest Ich habe da eine Idee, aber zuerst... ab
    .accept 12893 >>Akzeptiert die Quest Befreit Euren Geist
step
    .goto IcecrownGlacier,44.4,27.0
	.use 41366 >> Tötet Ekel. Benutzt den Herrschaftsstab auf seiner Leiche
    .complete 12893,1 --Vile turned (1)
step
    .goto IcecrownGlacier,41.8,24.5
	.use 41366 >> Tötet Lady Nachtwald. Benutzt den Herrschaftsstab auf ihrer Leiche
    .complete 12893,2 --Lady Nightswood turned (1)
step
    .goto IcecrownGlacier,43.0,23.5,70,0
    .goto IcecrownGlacier,44.8,24.3,70,0
    .goto IcecrownGlacier,46.2,21.9,70,0
    .goto IcecrownGlacier,45.7,19.7,70,0
    .goto IcecrownGlacier,43.7,19.0,70,0
    .goto IcecrownGlacier,42.6,21.1
	.use 41366 >> Tötet Der Springer. Benutzt den Herrschaftsstab auf seiner Leiche. Er läuft AUSSERHALB des Hauptgebäudes auf der oberen Etage herum.
    .complete 12893,3 --The Leaper turned (1)
	.unitscan The Leaper
step
	#label Freemind
    .goto IcecrownGlacier,44.2,24.7
	>>Kehrt zu Baron Silber zurück
    .turnin 12893 >>Gebt die Quest Befreit Euren Geist ab
    .accept 12896 >>Akzeptiert die Quest Wenn man ihn nicht überzeugen kann << Alliance
    .accept 12897 >>Akzeptiert die Quest Wenn man ihn nicht überzeugen kann << Horde
step
    .goto IcecrownGlacier,44.7,19.8
	>> Geht ins Gebäude und klickt auf den Waffenständer des Generals. Passt auf, dies spawnt einen Elite-Mob. Tötet Kriegsherr Lichtbann
    .complete 12896,1 << Alliance --General Lightsbane (1)
    .complete 12897,1 << Horde --General Lightsbane (1)
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Fliegt zurück zur Himmelsbrecher. Sprecht mit Thassarian in der hinteren linken Ecke des Schiffes
    .turnin 12896 >>Kehrt zurück und gebt die Quest Wenn man ihn nicht überzeugen kann ab
    .accept 12898 >>Akzeptiert die Quest Das Schattengewölbe
step << Horde
	>>Fliegt zurück zu Orgrims Hammer. Sprecht mit Koltira Todesweber im vorderen Raum des Schiffes
    .turnin 12897 >>Gebt die Quest Wenn man ihn nicht überzeugen kann ab
    .accept 12899 >>Akzeptiert die Quest Das Schattengewölbe
step
    .goto IcecrownGlacier,42.8,24.9
	>>Kehrt zu Baron Silber zurück
	.turnin 12898 >>Gebt die Quest Das Schattengewölbe ab << Alliance
    .turnin 12899 >>Gebt die Quest Das Schattengewölbe ab << Horde
    .accept 12938 >>Akzeptiert die Quest Der Herzog
step
	#completewith next
    .goto IcecrownGlacier,43.7,24.4
    .fp The Shadow Vault >> Erlernt die Flugroute Das Schattengewölbe
step
    .goto IcecrownGlacier,44.7,20.3
	>>Geht ins Gebäude. Sprecht mit Lankral
    .turnin 12938 >>Gebt die Quest Der Herzog ab
    .accept 12939 >>Akzeptiert die Quest Ehrenhafte Herausforderung
step
    .goto Icecrown,43.60,25.13
	>>Sprecht mit Der Springer, der im Zelt herumläuft
    .accept 12955 >>Akzeptiert die Quest Eliminiert die Konkurrenz
step
    .goto IcecrownGlacier,37.5,24.7,0,0
	#sticky
	#label mjordincombat
	.use 41372 >> Benutzt die Herausforderungsflagge auf dem Mjordinkrieger aus der Ferne. Ihr könnt mehrere Kampfgegner gleichzeitig herausfordern, solange ihr nicht im Kampf seid (aber nur 1 Mob pro Duo von 2)
    .complete 12939,1 --Mjordin Combatants challenged and defeated (6)
step
	>>Fliegt zur Wilden Klippe
	>>Sprecht mit Tinky, Sigrid, Onu'zun und Efrem an der Wilden Klippe. Besiegt sie
    .complete 12955,4 --Tinky Wickwhistle defeated (1)
    .goto IcecrownGlacier,36.1,23.6
    .complete 12955,1 --Sigrid Iceborn defeated (1)
    .goto IcecrownGlacier,37.1,22.4
    .complete 12955,3 --Onu'zun defeated (1)
    .goto IcecrownGlacier,37.9,22.9
    .complete 12955,2 --Efrem the Faithful defeated (1)
    .goto IcecrownGlacier,37.9,25.1
	.skipgossip
step
    .goto IcecrownGlacier,43.5,25.0
	>>Kehrt zum Springer zurück
    .turnin 12955 >>Gebt die Quest Eliminiert die Konkurrenz ab
step
    .goto IcecrownGlacier,44.7,20.3
	>>Geht ins Gebäude. Sprecht mit Lankral
    .turnin 12939 >>Gebt die Quest Ehrenhafte Herausforderung ab
    .accept 12943 >>Akzeptiert die Quest Erlass des Schattengewölbes
step
	#completewith next
    .goto IcecrownGlacier,39.01,23.99,25 >> Der Pfad zu Ufrangs Halle beginnt hier
step
    .goto IcecrownGlacier,41.0,23.9
	>> Geht zurück zur Wilden Klippe und geht in Ufrangs Halle hinein. Sprecht mit Vaelen, der darin angekettet ist
    .accept 12949 >>Akzeptiert die Quest Besorgt den Schlüssel
step
    .goto IcecrownGlacier,40.3,23.9
	.use 41776 >> Benutzt den Erlass des Schattengewölbes in den Taschen von Euch vor Thane. Tötet ihn.
    .complete 12943,1 --Thane Ufrang the Mighty (1)
step
    .goto IcecrownGlacier,37.7,23.9,70,0
    .goto IcecrownGlacier,36.7,23.7
	>>Geht nach draußen zur Wilden Klippe. Tötet Instrukteur Hroegar, der in der Gegend herumläuft. Plündert ihn nach seinem Schlüssel
    .complete 12949,1 --Key to Vaelen's Chains (1)
	.unitscan Instructor Hroegar
step
    .goto IcecrownGlacier,41.0,23.9
	>>Geht zurück in die Halle des Ufrang. Kehrt zu Vaelen zurück
    .turnin 12949 >>Gebt die Quest Besorgt den Schlüssel ab
    .accept 12951 >>Akzeptiert die Quest Gebt dem Baron Bescheid
step
    .goto IcecrownGlacier,39.01,23.99,25,0
    .goto IcecrownGlacier,42.9,24.9
	>>Verlasst die Halle. Kehrt zu Baron Silber zurück
    .turnin 12951 >>Gebt die Quest Gebt dem Baron Bescheid ab
    .daily 12995 >>Akzeptiert die Quest Setzt ein Zeichen
    .accept 13085 >>Akzeptiert die Quest Vaelen ist zurückgekehrt
step
    .goto IcecrownGlacier,43.6,24.1,60,0
    .goto IcecrownGlacier,42.7,26.8
	>>Sprecht mit Ekel, der die Hauptstraße entlang patrouilliert
    .accept 12992 >>Akzeptiert die Quest Tötet die Vrykul!
step
    .goto IcecrownGlacier,43.8,23.3,30,0
    .goto IcecrownGlacier,43.1,21.1
	>> Geht ins Gebäude. Sprecht mit Vaelen auf der linken Seite
    .turnin 13085 >>Gebt die Quest Vaelen ist zurückgekehrt ab
    .accept 12982 >>Akzeptiert die Quest Gefangene der Schwarzen Klinge
step
    .goto IcecrownGlacier,44.7,20.4
	>>Sprecht mit Lankral
    .turnin 12943 >>Gebt die Quest Erlass des Schattengewölbes ab
    .accept 13084 >>Akzeptiert die Quest Demoliert Jotunheim
step
    .goto IcecrownGlacier,29.5,43.4,50,0
    .goto IcecrownGlacier,29.6,45.7,50,0
    .goto IcecrownGlacier,27.9,45.8,50,0
    .goto IcecrownGlacier,27.8,40.2,50,0
    .goto IcecrownGlacier,28.3,38.0,50,0
    .goto IcecrownGlacier,29.0,35.1,50,0
    .goto IcecrownGlacier,34.1,28.7,50,0
    .goto IcecrownGlacier,29.5,43.4
	.use 42480 >>Tötet Vrykul in der Gegend und plündert sie nach Käfigschlüsseln. Benutzt das Banner der Schwarzen Klinge in den Taschen von Euch auf ihren Leichen. Klickt jeden gefundenen Schlüssel an den Käfigen überall in Jotunheim
	>>Brandmarkt die Banner überall in Jotunheim
	.collect 42422,8,12982,1,-1 --Jotunheim Cage Key (8)
    .complete 12982,1 --Ebon Blade Prisoners set free (8)
    .complete -12995,1 --Ebon Blade Banner planted near Vrykul corpse (0/15)
    .complete 12992,1 --Jotunheim Vrykul slain (0/15)
    .complete 13084,1 --Vrykul banners burned (10)
step
    .goto IcecrownGlacier,42.7,26.8,60,0
    .goto IcecrownGlacier,43.6,24.1
	>>Kehrt zum Schattengewölbe zurück. Sprecht mit Ekel, der die Hauptstraße entlang patrouilliert
    .turnin 12992 >>Gebt die Quest Tötet die Vrykul! ab
    .daily 13071 >>Akzeptiert die Quest Ekel mag Feuer!
step
    .goto IcecrownGlacier,43.8,23.3,30,0
    .goto IcecrownGlacier,43.1,21.1
	>> Geht ins Gebäude. Sprecht mit Vaelen auf der linken Seite
    .turnin 12982 >>Gebt die Quest Gefangene der Schwarzen Klinge ab
step
    .goto IcecrownGlacier,44.7,20.4
	>>Sprecht mit Lankral
    .turnin 13084 >>Gebt die Quest Demoliert Jotunheim ab
step
    .goto IcecrownGlacier,42.9,24.9
    >>Kehrt zu Baron Silber zurück
	.turnin 12995 >>Gebt die Quest Setzt ein Zeichen ab
	.isQuestComplete 12995
step
    .goto IcecrownGlacier,42.9,24.9
	>>Sprecht mit Silber
    .accept 12806 >>Akzeptiert die Quest Zur Todesanhöhe so schnell Ihr könnt!
step
    .goto IcecrownGlacier,43.5,25.0
	>>Sprecht mit Der Springer, der im Zelt herumläuft
    .daily 13069 >>Akzeptiert die Quest Schießt sie ab!
step
    .goto IcecrownGlacier,27.9,33.2
	>> Steigt in eine der zentral gelegenen Schnellfeuer-Harpunen in Jotunheim ein
	>> Während ihr in der Harpune seid, nutzt wiederholt "Schnellfeuerharpune" (3), um die Drachen abzuschießen
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
    .goto IcecrownGlacier,19.5,48.1
	>>Steigt vom Drachen ab, dann geht zur Todesanhöhe. Das ist eine kleine Plattform auf halber Höhe zwischen dem Meeresspiegel und der Bergspitze. Sprecht mit Arete
    .turnin 12806 >>Gebt die Quest Zur Todesanhöhe so schnell Ihr könnt! ab
    .accept 12807 >>Akzeptiert die Quest Was bis jetzt geschehen ist...
step
    .goto IcecrownGlacier,19.5,48.1
	>>Sprecht erneut mit Lordkommandant Arete
    .complete 12807,1 --Lord-Commander Arete's tale listened to. (1)
    .turnin 12807 >>Gebt die Quest Was bis jetzt geschehen ist... ab
    .accept 12810 >>Akzeptiert die Quest Blut im Wasser
	.skipgossip
step
	#sticky
	#label DeathRise
    .goto IcecrownGlacier,19.3,47.8
    .fp Death's Rise >> Erlernt die Flugroute nach Todesanhöhe
step
	>>Sprecht mit Setaal
    .daily 12813 >>Akzeptiert die Quest Erhebt euch von den Toten!
    .goto Icecrown,19.67,48.39
	>>Sprecht mit Aurochs. Er patrouilliert um das mittlere Feuer herum
    .daily 12838 >>Akzeptiert die Quest Informationsbeschaffung
    .goto IcecrownGlacier,20.1,47.5,20,0
    .goto IcecrownGlacier,20.4,47.9,20,0
    .goto IcecrownGlacier,20.1,48.4,20,0
    .goto IcecrownGlacier,19.7,47.9
	>>Optional. Ihr könnt skip oder complete these 2 Täglich quests
step
	#requires DeathRise
    #sticky
	#label transformedcorpse
    .goto IcecrownGlacier,9.5,44.8,50,0
    .goto IcecrownGlacier,9.5,44.8,0,0
	.use 40587 >> Tötet die Anhänger des Ansturms in der Gegend. Benutzt die Tinktur des Dunkelheilers aus eurer Tasche auf ihren Leichen.
    .complete 12813,1 --Scarlet Onslaught corpse transformed (10)
	.isOnQuest 12813
step
	#requires DeathRise
	>>Tötet Anhänger des Ansturms, plündert dann ihre Schlüssel. Benutzt diese, um Kisten überall im Hafen des Ansturms zu öffnen und die Dokumente zu sammeln.
	>>Die Kisten haben keine 100%ige Drop-Quote für die Dokumente
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
	#requires transformedcorpse
	.use 40551 >> Geht ins Meer etwa 30-90 Meter vom Ufer entfernt und tötet den ausgehungerten Hai. Benutzt die Blutblase in den Taschen von Euch auf ihren Leichen
    .goto IcecrownGlacier,4.8,41.5,90,0
    .goto IcecrownGlacier,4.3,35.9,90,0
    .goto IcecrownGlacier,11.7,35.6,90,0
    .goto IcecrownGlacier,13.7,42.0,90,0
    .goto IcecrownGlacier,10.3,41.5,90,0
    .goto IcecrownGlacier,4.8,41.5,90,0
    .goto IcecrownGlacier,4.3,35.9,90,0
    .goto IcecrownGlacier,11.7,35.6,90,0
    .goto IcecrownGlacier,13.7,42.0,90,0
    .goto IcecrownGlacier,10.3,41.5
    .complete 12810,1 --Blood collected from Ravenous Jaws (10)
step
	>>Kehrt zur Todesanhöhe zurück. Sprecht mit Arete
    .turnin 12810 >>Gebt die Quest Blut im Wasser ab
    .accept 12814 >>Akzeptiert die Quest Ihr werdet einen Greifen brauchen
    .goto IcecrownGlacier,19.6,48.1
step
	>>Sprecht mit Aurochs. Er patrouilliert um das mittlere Feuer herum
    .turnin -12838 >>Gebt die Quest Informationsbeschaffung ab
    .goto IcecrownGlacier,20.1,47.5,20,0
    .goto IcecrownGlacier,20.4,47.9,20,0
    .goto IcecrownGlacier,20.1,48.4,20,0
    .goto IcecrownGlacier,19.7,47.9
	>>Sprecht mit Setaal
    .turnin -12813 >>Gebt die Quest Erhebt euch von den Toten! ab
    .goto IcecrownGlacier,19.7,48.4
step
    .goto IcecrownGlacier,10.4,44.1
	>> Tötet die Gryphonreiter des Ansturms in der Gegend. Plündert sie nach ihren Gryphenzügeln des Ansturms
	.collect 40970,1,12814,1 --Onslaught Grpyhon Reins (1)
step
    .goto IcecrownGlacier,19.6,47.8
	>>Kehrt zur Todesanhöhe auf dem normalen Reittier von Euch zurück. Wenn ihr dort ankommt, benutzt die Greifenzügel und verwendet "Greifen übergeben" (1), um es abzugeben
    .complete 12814,1 --Onslaught Gryphon delivered to Uzo Deathcaller (1)
	.use 40970
step
    .goto Icecrown,19.64,47.80
	>>Sprecht mit Uzo Todesrufer
    .turnin 12814 >>Gebt die Quest Ihr werdet einen Greifen brauchen ab
    .daily 12815 >>Akzeptiert die Quest Flugsperrzone
step
    .goto IcecrownGlacier,10.5,44.1,70,0
    .goto IcecrownGlacier,5.0,43.4,70,0
    .goto IcecrownGlacier,10.5,39.0,70,0
    .goto IcecrownGlacier,12.7,41.2,70,0
    .goto IcecrownGlacier,10.5,44.1
	>> Tötet die Greif-Reiter in der Gegend. Schießt sie mit Fernkampffähigkeiten ab, oder gruppiert mehrere von ihnen in der Luft zusammen und fliegt dann nach unten, um sie zu töten. Wenn ihr viele zusammen gruppiert, lasst sie euch nicht von hinten treffen, oder ihr werdet abgeworfen
    .complete 12815,1 --Onslaught Gryphon Rider (10)
step
	.goto Icecrown,19.64,47.80
	>>Kehrt zur Todesanhöhe zurück. Sprecht mit Uzo
    .turnin 12815 >>Gebt die Quest Flugsperrzone ab
step
    >>Kehrt zum Schattengewölbe zurück. Sprecht mit Der Springer und Ekel
    .turnin -13069 >>Gebt die Quest Schießt sie ab! ab
	.goto IcecrownGlacier,43.5,25.0
    .turnin -13071 >>Gebt die Quest Ekel mag Feuer! ab
    .goto IcecrownGlacier,43.6,24.1,60,0
    .goto IcecrownGlacier,42.7,26.8
step
    +Ihr habt die Vor-Quest-Kette der Ritter der Schwarzen Klinge abgeschlossen. Bitte nutzt den Ebon Blade Täglich Quests Route Leitfaden, um die Tagesquests abzuschließen. Hinweis: einige könnten heute nicht verfügbar sein, da sie bereits vorher abgeschlossen wurden
	.isQuestTurnedIn 12814
]])
