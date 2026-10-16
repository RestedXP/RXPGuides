if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Northrend Täglich Quests
#subgroup Fraktion Täglich Quests
#wotlk
#cata
#name Ebon Blade Täglich Quests Route

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
	>>Die Kisten haben keine hundertprozentige Dropquote für die Dokumente
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
step
	+Ihr habt heute alle Täglichen Quests der Ritter der Schwarzen Klinge abgeschlossen :) Erinnert euch daran, dass ihr ihren Wappenrock tragen könnt, während ihr WotLK-Dungeons absolviert, um zusätzliche Reputation zu erhalten!
]])
