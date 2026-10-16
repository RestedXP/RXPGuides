if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Northrend Täglich Quests
#subgroup Fraktion Täglich Quests
#wotlk
#cata
#name Eiskrone Gunship Freischalten Täglich Quests

step
	+Notiz: Mehrere tägliche Quests haben 5-Spieler-Gruppen-Quests als Voraussetzungen in Eiskrone. Ihr müsst sie abschließen, um die folgenden täglichen Quests freizuschalten. Schließt ALLE Gruppen-Quests ab, wenn der Leitfaden es anweist
	>>Falls ihr sie nicht abschließen könnt, kehrt später zu ihnen zurück
step
    .goto IcecrownGlacier,87.8,78.1
    .fp The Argent Vanguard >> Erlernt die Flugroute nach Argentumvorhut
step
    .goto IcecrownGlacier,87.5,75.8
	>>Fliegt nach Argentumvorhut. Sprecht mit Tirion
    .accept 13036 >>Akzeptiert die Quest Ehre über alles
step
    .goto IcecrownGlacier,87.1,75.8
	>>Sprecht mit Entari unter euch
    .turnin 13036 >>Gebt die Quest Ehre über alles ab
    .accept 13008 >>Akzeptiert die Quest Die Taktik der Geißel
step
    .goto IcecrownGlacier,86.8,76.6
	>>Sprecht mit Gustav
    .accept 13040 >>Akzeptiert die Quest Heilmittel für das Unheilbare
step
    .goto IcecrownGlacier,86.1,75.8
	>>Sprecht mit Dalfors
    .accept 13039 >>Akzeptiert die Quest Die Vorhut verteidigen
step
	#sticky
	#label webbedfreed
    .goto IcecrownGlacier,83.5,75.1,0,0
	>>Tötet die Eingesponnenen Kreuzfahrer-Kokons in der Gegend, um sie zu befreien. Sie werden euch auch buffen und euch heilen << !Paladin
	>>Tötet die Eingesponnenen Kreuzfahrer-Kokons in der Gegend, um sie zu befreien. Buffet euch nicht selbst mit 'Könige', da die NPCs euch damit buffen werden (und euch heilen) << Paladin
    .complete 13008,1 --Webbed Crusader Freed (8)
step
    .goto IcecrownGlacier,84.7,78.8,80,0
    .goto IcecrownGlacier,83.5,75.1,80,0
    .goto IcecrownGlacier,83.1,72.6,80,0
    .goto IcecrownGlacier,84.8,73.0,80,0
    .goto IcecrownGlacier,83.5,75.1
	>>Tötet die Nerubians und Spinnen in der Gegend. Sammelt ihre Beute nach ihren Toxin Sacs
    .complete 13039,1 --Forgotten Depths Nerubians (15)
    .complete 13040,1 --Forgotten Depths Venom Sac (10)
step
	#requires webbedfreed
    .goto IcecrownGlacier,86.1,75.8
	>>Kehrt zurück zu Dalfors
    .turnin 13039 >>Gebt die Quest Die Vorhut verteidigen ab
step
    .goto IcecrownGlacier,86.8,76.6
	>>Kehrt zurück zu Gustav
    .turnin 13040 >>Gebt die Quest Heilmittel für das Unheilbare ab
step
    .goto IcecrownGlacier,87.1,75.8
	>>Kehrt zurück zu Entari
    .turnin 13008 >>Gebt die Quest Die Taktik der Geißel ab
    .accept 13044 >>Akzeptiert die Quest Falls es Überlebende gibt...
step
    .goto IcecrownGlacier,87.0,79.0
	>>Sprecht mit Penumbrius
    .turnin 13044 >>Gebt die Quest Falls es Überlebende gibt... ab
    .accept 13045 >>Akzeptiert die Quest Ins wilde Grün
step
	#completewith next
    .goto IcecrownGlacier,87.1,79.2
	.vehicle 30228 >> Klickt mit der rechten Maustaste auf Argentumhimmelsklaue, um es zu besteigen
step
	>>Fliegt nach Geißelholme. Benutzt "Gefangenen Kreuzfahrer ergreifen" (1), um die Kreuzfahrer zu retten (ihr könnt immer nur einen greifen). Dann fliegt zurück zu Gustav in Argentumvorhut und benutzt "Gefangenen Kreuzfahrer absetzen" (2), um sie abzusetzen. Benutzt "Segeln" (3) regelmäßig, um schneller voranzukommen
	.pin Icecrown,78.7,67.0
    .waypoint IcecrownGlacier,78.7,67.0,0,rescue,VEHICLE_PASSENGERS_CHANGED,VEHICLE_UPDATE
	.goto Icecrown,86.68,76.83
    .complete 13045,1 --Captured Crusader Rescued (3)
step
    .goto IcecrownGlacier,87.5,75.8
	>>Fliegt zurück zu Tirion
    .turnin 13045 >>Gebt die Quest Ins wilde Grün ab
    .accept 13070 >>Akzeptiert die Quest Eine Kaltfront nähert sich
step
    .goto IcecrownGlacier,85.6,76.0
	>>Sprecht mit Fezzik im kleinen Haus
    .turnin 13070 >>Gebt die Quest Eine Kaltfront nähert sich ab
    .accept 13086 >>Akzeptiert die Quest Die letzte Verteidigungslinie
step
	#completewith next
    .goto IcecrownGlacier,85.3,75.8
	.vehicle >>Fliegt zu einem der Türme auf den Mauern und betretet ihn
step
    .goto IcecrownGlacier,84.8,75.8
	--vehicle id 30236
	>>Benutzt "Argentumkanone" (1) wiederholt, um Gegner in einem kleinen Bereich zu töten und Mana zu generieren. Benutzt "Bombe der Abrechnung" (2), um Gegner in einem großen Bereich zu töten, auf Kosten von Mana
    .complete 13086,1 --Scourge Attackers (100)
    .complete 13086,2 --Frostbrood Destroyer (3)
step
    .goto IcecrownGlacier,85.6,76.0
	>>Verlasst die Kanone. Kehrt zurück zu Fezzik
    .turnin 13086 >>Gebt die Quest Die letzte Verteidigungslinie ab
step
    .goto IcecrownGlacier,86.0,75.8
	>>Sprecht mit Tirion hinter euch
    .accept 13104 >>Akzeptiert die Quest Noch einmal in die Bresche, Held << !DK
    .accept 13105 >>Akzeptiert die Quest Noch einmal in die Bresche, Held << DK
step
	>>Reist nach Nordwesten. Sprecht mit dem Schwarzen Wächter, Silas, Spitzpatrick und Gustav im Haus
    .turnin 13104 >>Gebt die Quest Noch einmal in die Bresche, Held ab << !DK
    .turnin 13105 >>Gebt die Quest Noch einmal in die Bresche, Held ab << DK
    .accept 13118 >>Akzeptiert die Quest Die Reinigung von Geißelholme
    .accept 13122 >>Akzeptiert die Quest Der Geißelstein
    .goto IcecrownGlacier,83.0,73.0
    .accept 13130 >>Akzeptiert die Quest Der Stein, der eine Revolution auslöste
    .accept 13135 >>Akzeptiert die Quest Es könnte uns alle umbringen
    .goto IcecrownGlacier,83.0,73.1
    .accept 13110 >>Akzeptiert die Quest Die rastlosen Toten
    .goto IcecrownGlacier,82.9,72.8
step
	#completewith Crusaders
	>>Tötet die Geißel in Geißelholme. Sammelt ihre Beute nach ihrem Geißelstein
    .complete 13122,1 --Scourgestone (15)
step
	#completewith Kings
	.use 43153 >> Tötet die Reanimierten Kreuzfahrer in Geißelholme. Benutzt das Heilig Wasser in den Taschen von Euch auf ihren Leichen, um ihre Seelen zu befreien
    .goto IcecrownGlacier,78.6,69.7,0
    .goto IcecrownGlacier,77.9,66.2,0
    .goto IcecrownGlacier,78.5,64.6,0
    .goto IcecrownGlacier,80.2,65.7,0
    .complete 13110,1 --Restless Soul Freed (10)
    .complete 13118,3 --Reanimated Crusader (8)
step
	#completewith next
    .goto IcecrownGlacier,79.5,68.6,0
    .goto IcecrownGlacier,80.8,64.5,0
    .goto IcecrownGlacier,77.7,63.2,0
    .goto IcecrownGlacier,78.4,65.7,0
	>>Tötet die Forgotten Underkings in Geißelholme
    .complete 13118,2 --Forgotten Depths Underking (3)
step
    .goto IcecrownGlacier,79.2,64.0,20,0
    .goto IcecrownGlacier,79.6,64.1,15,0
    .goto IcecrownGlacier,77.8,65.1,50,0
    .goto IcecrownGlacier,77.3,68.2,20,0
    .goto IcecrownGlacier,77.6,68.7,15,0
    .goto IcecrownGlacier,79.2,64.0,20,0
    .goto IcecrownGlacier,79.6,64.1,15,0
    .goto IcecrownGlacier,77.8,65.1,50,0
    .goto IcecrownGlacier,77.3,68.2,20,0
    .goto IcecrownGlacier,77.6,68.7
	>>Tötet die Forgotten Hoch Priests hauptsächlich in den Zikkurats der Gegend
    .complete 13118,1 --Forgotten Depths High Priest (3)
step
	#label Kings
    .goto IcecrownGlacier,79.5,68.6,80,0
    .goto IcecrownGlacier,80.8,64.5,80,0
    .goto IcecrownGlacier,77.7,63.2,80,0
    .goto IcecrownGlacier,78.4,65.7
	>>Tötet die Forgotten Underkings in der Gegend
    .complete 13118,2 --Forgotten Depths Underking (3)
step
	#label Crusaders
    .goto IcecrownGlacier,78.6,69.7,80,0
    .goto IcecrownGlacier,77.9,66.2,80,0
    .goto IcecrownGlacier,78.5,64.6,80,0
    .goto IcecrownGlacier,80.2,65.7,80,0
    .goto IcecrownGlacier,78.6,69.7,80,0
    .goto IcecrownGlacier,77.9,66.2,80,0
    .goto IcecrownGlacier,78.5,64.6,80,0
    .goto IcecrownGlacier,80.2,65.7
	.use 43153 >> Tötet die Reanimierten Kreuzfahrer in Geißelholme. Benutzt das Heilig Wasser in den Taschen von Euch auf ihren Leichen, um ihre Seelen zu befreien
    .complete 13110,1 --Restless Soul Freed (10)
    .complete 13118,3 --Reanimated Crusader (8)
step
    .goto IcecrownGlacier,78.6,69.7,80,0
    .goto IcecrownGlacier,77.9,66.2,80,0
    .goto IcecrownGlacier,78.5,64.6,80,0
    .goto IcecrownGlacier,80.2,65.7,80,0
    .goto IcecrownGlacier,78.6,69.7,80,0
    .goto IcecrownGlacier,77.9,66.2,80,0
    .goto IcecrownGlacier,78.5,64.6,80,0
    .goto IcecrownGlacier,80.2,65.7
	>>Tötet die Geißel in Geißelholme. Sammelt ihre Beute nach ihrem Geißelstein
    .complete 13122,1 --Scourgestone (15)
step
	#completewith next
    .goto CrystalsongForest,61.1,52.4,0
    .goto CrystalsongForest,58.9,62.8,0
    .goto CrystalsongForest,81.1,72.4,0
    .goto CrystalsongForest,89.2,55.7,0
    .goto CrystalsongForest,61.1,52.4,0
	>>Tötet die Humanoid/Untot/Elementar-Mobs in der Gegend. Sammelt ihre Energie
    .complete 13135,1 --Crystallized Energy (8)
step
	>>Sammelt die purpurroten Baumstümpfe auf dem Boden in der Gegend
    .complete 13130,1 --Crystalline Heartwood (10)
    .goto CrystalsongForest,65.0,53.5,80,0
    .goto CrystalsongForest,70.6,56.1,80,0
    .goto CrystalsongForest,71.4,67.6,80,0
    .goto CrystalsongForest,63.9,69.0,80,0
    .goto CrystalsongForest,65.0,53.5,80,0
    .goto CrystalsongForest,70.6,56.1,80,0
    .goto CrystalsongForest,71.4,67.6,80,0
    .goto CrystalsongForest,63.9,69.0
    .complete 13130,2 --Ancient Elven Masonry (10)
    .goto CrystalsongForest,73.7,65.4,80,0
    .goto CrystalsongForest,82.6,64.5,80,0
    .goto CrystalsongForest,86.5,59.1,80,0
    .goto CrystalsongForest,73.4,56.9,80,0
    .goto CrystalsongForest,73.7,65.4,80,0
    .goto CrystalsongForest,82.6,64.5,80,0
    .goto CrystalsongForest,86.5,59.1,80,0
    .goto CrystalsongForest,73.4,56.9
	>>Sammelt kleine blaue Marmorstücke um die zerstörten elfischen Gebäude
step
    .goto CrystalsongForest,61.1,52.4,80,0
    .goto CrystalsongForest,58.9,62.8,80,0
    .goto CrystalsongForest,81.1,72.4,80,0
    .goto CrystalsongForest,89.2,55.7,80,0
    .goto CrystalsongForest,61.1,52.4
	>>Tötet die Humanoid/Untot/Elementar-Mobs in der Gegend. Sammelt ihre Energie
    .complete 13135,1 --Crystallized Energy (8)
step
	>>Kehrt zum Schwarzen Wächter zurück
    .turnin 13130 >>Gebt die Quest Der Stein, der eine Revolution auslöste ab
    .turnin 13135 >>Gebt die Quest Es könnte uns alle umbringen ab
    .goto IcecrownGlacier,83.0,73.1
    .turnin 13118 >>Gebt die Quest Die Reinigung von Geißelholme ab
    .turnin 13122 >>Gebt die Quest Der Geißelstein ab
    .accept 13125 >>Akzeptiert die Quest Die Luft steht still
    .goto IcecrownGlacier,83.1,73.0
step
    .goto IcecrownGlacier,82.9,72.8
	>>Betretet die Hütte
    .turnin 13110 >>Gebt die Quest Die rastlosen Toten ab
step
    .goto IcecrownGlacier,77.3,61.9
	.use 43206 >>Betretet das Gebäude. Benutzt das Kriegshorn von Acherus, um einen NPC zu beschwören, der dir beim Töten von Salranax hilft
    .complete 13125,1 --Salranax the Flesh Render (1)
step
    .goto IcecrownGlacier,80.1,61.2
	.use 43206 >>Betretet das Gebäude. Benutzt das Kriegshorn von Acherus, um einen NPC zu beschwören, der dir beim Töten von Yath'amon hilft
    .complete 13125,3 --High Priest Yath'amon (1)
step
    .goto IcecrownGlacier,76.5,53.2
	.use 43206 >>Benutzt das Kriegshorn von Acherus, um einen NPC zu beschwören, der dir beim Töten von Talonox hilft
    .complete 13125,2 --Underking Talonox (1)
step
    .goto IcecrownGlacier,83.0,72.9
	>>Kehrt zum Schwarzen Wächter zurück
    .turnin 13125 >>Gebt die Quest Die Luft steht still ab
step
    .goto IcecrownGlacier,82.9,72.8
	>>Betretet die Hütte
    .accept 13139 >>Akzeptiert die Quest Im gefrorenen Herzen Nordends
step
    .goto IcecrownGlacier,86.0,75.8
	>>Kehrt zu Tirion zurück
    .turnin 13139 >>Gebt die Quest Im gefrorenen Herzen Nordends ab
    .accept 13141 >>Akzeptiert die Quest Die Schlacht um den Kreuzfahrerturm
step
    .goto IcecrownGlacier,80.04,71.94
	.use 43243 >>Benutzt das Gesegnete Banner des Kreuzzugs in den Taschen von Euch beim Schädelhaufen und verteidigt ihn gegen die ankommenden Wellen. Tötet zuerst Halof der Todesbringer, wenn er erscheint
    .complete 13141,1 --Battle for Crusaders' Pinnacle (1)
step
    .goto IcecrownGlacier,82.9,72.8
	>>Betretet die Hütte
    .turnin 13141 >>Gebt die Quest Die Schlacht um den Kreuzfahrerturm ab
    .accept 13157 >>Akzeptiert die Quest Der Kreuzfahrerturm
step
    .goto IcecrownGlacier,79.8,71.8
	>>Kehrt zum Ort zurück, wo ihr das Banner verteidigt habt. Sprecht mit Tirion
    .turnin 13157 >>Gebt die Quest Der Kreuzfahrerturm ab
    .accept 13068 >>Akzeptiert die Quest Eine Erzählung von Heldenmut
step
    .goto IcecrownGlacier,79.4,72.3
    .fp Crusaders' Pinnacle >> Erlernt die Flugroute nach Kreuzfahrerturm
step << Horde
    .goto IcecrownGlacier,79.5,72.7
	>>BETRETET den Turm. Sprecht mit Strongbrow auf dem unteren Stockwerk auf dem Bett
    .accept 13224 >>Akzeptiert die Quest Orgrims Hammer
step << Alliance
    .goto Icecrown,79.44,72.84
	>>BETRETET den Turm. Sprecht mit Ivalius auf dem unteren Stockwerk auf dem Bett
    .accept 13225 >>Akzeptiert die Quest Die Himmelsbrecher
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2
	>>Fliegt zur Himmelsbrecher, dem großen Allianz-Schiff, das hoch oben in der Luft herumfliegt. Geht in den großen Raum hinten, in den Maraad schaut, und sprecht mit Justin.
    .turnin 13225 >>Gebt die Quest Die Himmelsbrecher ab
    .accept 13231 >>Akzeptiert die Quest Die Zerbrochene Front
step << Alliance
	#label slaves1
	#sticky
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Findet Absalan der Fromme. Er wandelt im hinteren Teil des Schiffes auf und ab zwischen den Treppen links und rechts
    .daily 13300 >>Akzeptiert die Quest Vom Saronit abhängig
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Besteigt die Treppen zum hinteren Teil des Schiffes und sprecht mit Kürassier Drosche
    .daily 13336 >>Akzeptiert die Quest Blut der Auserwählten
    .accept 13341 >>Akzeptiert die Quest Schließt Euch dem Angriff an
step << Alliance
	#requires slaves1
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Besteigt die Treppen in der Mitte des Schiffes (hinter Maraad), dann die Treppen auf beiden Seiten der ersten Treppe, um hinunter in den Maschinenraum zu gehen. Sprecht mit Chefingenieur Bolzenschlüssel
    .accept 13296 >>Akzeptiert die Quest Auf nach Ymirheim!
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>> Fliegt zur Orgrims Hammer, das große Horde-Schiff, das hoch oben in der Luft herumfliegt. Tretet in den großen Raum in der Front ein und sprecht mit Himmelshäscher Korm Schwarznarbe
    .turnin 13224 >>Gebt die Quest Orgrims Hammer ab
    .accept 13228 >>Akzeptiert die Quest Die Zerbrochene Front
step << Horde
	>> Akzeptiert die Quests von Kriegshetzer Davos Rahbatz und Bruder Keltan. Sie gehen umher in der Nähe der Treppen und des unteren Decks
    .daily 13302 >>Akzeptiert die Quest Vom Saronit abhängig
    .daily 13330 >>Akzeptiert die Quest Blut der Auserwählten
    .accept 13340 >>Akzeptiert die Quest Schließt Euch dem Angriff an
step << Horde
	>> Geht zum unteren Deck des Schiffes. Sprecht mit Chefingenieur Kupferklammer
    .accept 13293 >>Akzeptiert die Quest Auf nach Ymirheim!
step << Alliance
    .goto IcecrownGlacier,62.6,51.3
	>>Fliegt zu Feldkommandant Koup (auf dem Boden)
    .turnin 13341 >>Gebt die Quest Schließt Euch dem Angriff an ab
    .daily 13309 >>Akzeptiert die Quest Luftangriff
	>>Ihr könnt die tägliche Quest überspringen, wenn ihr wollt
step << Alliance
    #completewith next
    .goto Icecrown,62.55,50.67
    .vehicle 32227 >> Rechtsklickt auf das Geschütz oben auf der Flugmaschine, um die Quest zu starten.
	.isOnQuest 13309
step << Alliance
	-- completionist
	>>Schießt auf alle Speer-Schusswaffen auf den Gebäuden, während ihr herumfliegt.
    .goto Icecrown,52.65,56.93
    .complete 13309,1 --4/4 Skybreaker Infiltrators dropped
	.isOnQuest 13309
step << Alliance
    .goto Icecrown,62.55,51.29
	>>Kehrt zu Koup zurück.
    .turnin 13309 >>Gebt die Quest Luftangriff ab.
	.isQuestComplete 13309
step << Alliance
    .goto IcecrownGlacier,62.5,51.1,15,0
    .goto IcecrownGlacier,62.8,51.6
	>>Sprecht mit dem Schwadronsführer. Er könnte nicht hier sein, falls jemand anderes die Quest begonnen hat. Er hat eine Wiedererscheinungszeit von etwa 6 Minuten und erscheint etwa 10 Meter rechts von Koup wieder.
	>>Ihr könnt diese Quest überspringen. Es ist nur eine tägliche Quest, die sich schön mit den anderen verbindet.
    .daily 13284 >>Akzeptiert die Quest Bodenangriff
step << Alliance
    .goto IcecrownGlacier,58.2,55.9,0
    .goto IcecrownGlacier,59.6,59.3,0
    .goto IcecrownGlacier,57.8,62.6,0
	#completewith Mineslave
	>>Tötet die Vrykul throughout Ymirheim
	.complete 13336,1 --Ymirheim Vrykul Slain (20)
step << Alliance
    .goto Icecrown,59.89,53.50
	>> Eskortiert die Truppen. Lasst einige Truppen die Mobs halten, falls nötig.
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
	#completewith next
    .goto Icecrown,57.01,62.53
	>>Fliegt zu Frazzle (auf dem Boden)
    .turnin 13296 >>Gebt die Quest Auf nach Ymirheim! ab
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
	>>Klickt die Fahrzeug-verlassen-Schaltfläche
    .turnin 13280 >>Gebt die Quest König der Berge ab.
	.isQuestComplete 13280
step << Horde
	>>Fliegt zu Feldkommandant Xutjja (er ist auf dem Boden - nicht auf dem Schiff)
    .goto IcecrownGlacier,58.3,46.0
    .turnin 13340 >>Gebt die Quest Schließt Euch dem Angriff an ab
step << Horde
    .goto IcecrownGlacier,58.3,46.0
    .daily 13310 >>Akzeptiert die Quest Luftangriff
	>>Ihr könnt die tägliche Quest überspringen, wenn ihr wollt
step << Horde
	#completewith next
	.vehicle >>Lauft zum Kor'kron-Unterdrückungsgeschütz und klickt es
    .goto IcecrownGlacier,59.5,45.94
	.isOnQuest 13310
step << Horde
	>>Schießt auf alle Speerschusswaffen auf den Gebäuden, während ihr herumfliegt. Infiltratoren werden fallen, wenn ihr das tut.
    .goto IcecrownGlacier,56.8,64.3
    .complete 13310,1 --Kor'kron Infiltrators dropped (4)
	.isOnQuest 13310
step << Horde
    .goto IcecrownGlacier,58.3,46.0
    .turnin 13310 >>Gebt die Quest Luftangriff ab.
	.isQuestComplete 13310
step << Horde
    .goto IcecrownGlacier,58.3,46.0
	>>Sprecht mit dem Schwadronsführer. Es ist möglich, dass er nicht hier ist, wenn jemand anderes die Quest gestartet hat. Die Respawn-Zeit beträgt ungefähr 6 Minuten.
    .daily 13301 >>Akzeptiert die Quest Bodenangriff
	>>Ihr könnt diese Quest überspringen. Es ist nur eine tägliche Quest, die sich schön mit den anderen verbindet.
step << Horde
	#sticky
	#label ymirheimslain
    .goto IcecrownGlacier,58.2,55.9,0
    .goto IcecrownGlacier,59.6,59.3,0
    .goto IcecrownGlacier,57.8,62.6,0
	#completewith Mineslave
	>>Tötet die Vrykul throughout Ymirheim
	.complete 13330,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13330
step << Horde
	>> Geleitet die Truppen
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
	#requires ymirheimslain
    .goto IcecrownGlacier,51.9,57.6
    .turnin 13293 >>Gebt die Quest Auf nach Ymirheim! ab
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
	>>Klickt die Fahrzeug-verlassen-Schaltfläche
    .turnin 13283 >>Gebt die Quest König der Berge ab.
	.isQuestComplete 13283
step << Alliance
    .goto IcecrownGlacier,66.4,66.5
	>>Findet einen sterbenden Soldaten um die Zerbrochene Front und sprecht mit ihm
    .complete 13231,1 --Dying Soldier Questioned (1)
    .accept 13232 >>Akzeptiert die Quest Tötet mich!
	.skipgossip
step << Alliance
    .goto IcecrownGlacier,69.1,62.1
	>>Findet mehr sterbende Soldaten in der Gegend und tötet sie
	.complete 13232,1
	.skipgossip
step << Horde
    .goto IcecrownGlacier,67.7,68.4
	>>Findet einen sterbenden Berserker um die Zerbrochene Front und sprecht mit ihm
    .complete 13228,1 --Dying Berserker Questioned (1)
    .accept 13230 >>Akzeptiert die Quest Rächt mich!
step << Horde
    .goto IcecrownGlacier,68.7,64.2
	>>Findet mehr sterbende Soldaten in der Gegend und tötet sie
	.complete 13230,1 --Dying Alliance Soldiers Slain (5)
	.skipgossip
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Fliegt zum Himmelsbrecher, dem großen Allianzschiff, das hoch oben in der Luft herumfliegt (ihr könnt es auf eurer Karte sehen). Geht in den großen Raum hinten, in den Maraad schaut, und sprecht mit Justin
    .turnin 13231 >>Gebt die Quest Die Zerbrochene Front ab
    .turnin 13232 >>Gebt die Quest Tötet mich! ab
    .accept 13286 >>Akzeptiert die Quest Jede Hilfe, die wir kriegen können
    .accept 13290 >>Akzeptiert die Quest Bitte recht aufmerksam
step << Alliance
	#label slaves2
	#sticky
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Findet Absalan der Fromme. Er läuft auf der Rückseite des Schiffes umher und geht die Treppen links und rechts hoch und runter
    .turnin 13300 >>Gebt die Quest Vom Saronit abhängig ab.
	.isQuestComplete 13300
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Besteigt die Treppen zum hinteren Teil des Schiffes und sprecht mit Kürassier Drosche
    .turnin 13336 >>Gebt die Quest Blut der Auserwählten ab.
	.isQuestComplete 13336
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Sprecht mit Thassarian in der hinteren linken Ecke des Schiffes
    .turnin 13286 >>Gebt die Quest Jede Hilfe, die wir kriegen können ab
    .accept 13287 >>Akzeptiert die Quest Stechen und Stoßen
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Besteigt die Treppen in der Mitte des Schiffes (hinter Maraad), dann die Treppen auf beiden Seiten der ersten Treppe, um hinunter in den Maschinenraum zu gehen. Sprecht mit Chefingenieur Bolzenschlüssel
    .turnin 13290 >>Gebt die Quest Bitte recht aufmerksam ab
    .accept 13291 >>Akzeptiert die Quest Geliehene Technologie
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Fliegt zum Orgrimms Hammer, dem großen Hordenschiff, das hoch oben in der Luft herumfliegt. Sprecht mit dem Himmelshäscher Korm Schwarznarbe im vorderen Raum
    .turnin 13228 >>Gebt die Quest Die Zerbrochene Front ab
    .turnin 13230 >>Gebt die Quest Rächt mich! ab
    .accept 13238 >>Akzeptiert die Quest Zu etwas zu gebrauchen?
    .accept 13260 >>Akzeptiert die Quest Der Insider
step << Horde
	>>Sprecht mit Koltira neben euch
    .turnin 13260 >>Gebt die Quest Der Insider ab
    .accept 13237 >>Akzeptiert die Quest Stechen und Stoßen
step << Horde
	>>Sprecht mit Bruder Keltan, der in der Nähe der Treppen umhergeht
    .turnin 13302 >>Gebt die Quest Vom Saronit abhängig ab.
	.isQuestComplete 13302
step
	>>Sprecht mit Kriegshetzer Davos Rahbatz. Er patrouilliert auch auf dem Unterdeck
    .turnin 13330 >>Gebt die Quest Blut der Auserwählten ab.
	.isQuestComplete 13330
step << Horde
	>> Geht zum unteren Deck des Schiffes. Sprecht mit Chefingenieur Kupferklammer
    .turnin 13238 >>Gebt die Quest Zu etwas zu gebrauchen? ab
    .accept 13239 >>Akzeptiert die Quest Verflüchtigung
step << Alliance
	>>Rückkehr zum Boden Rittmeister Koup
    .goto Icecrown,62.60,51.35
    .turnin 13284 >>Gebt die Quest Bodenangriff ab.
	.isQuestComplete 13284
step << Horde
	>>Rückkehr zum Boden Rittmeister Xutjja
    .goto IcecrownGlacier,58.3,46.2
    .turnin 13301 >>Gebt die Quest Bodenangriff ab.
	.isQuestComplete 13301
step << Alliance
	#completewith next
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 44048 >>Plündert die Teile der aufgegebenen Ausrüstung, verstreut auf dem Boden um Die Zerbrochene Front herum. Benutzt die Smuggled Solution in von Euch Taschen, wenn ihr ein Stück jeder Ausrüstung habt (ihr müsst nicht auf das RP warten).
	.collect 43609,3,13291,1,-1 --Pile of Bones (3)
	.collect 43610,3,13291,1,-1 --Abandoned Helm (3)
	.collect 43616,3,13291,1,-1 --Abandoned Armor (3)
    .complete 13291,1 --Field Tests Conducted (3)
step << Horde
	#completewith next
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 43608 >>Plündert die Teile der aufgegebenen Ausrüstung, verstreut auf dem Boden um Die Zerbrochene Front herum. Benutzt Copperclaw's Instabil Oil in von Euch Taschen, wenn ihr ein Stück jeder Ausrüstung habt (ihr müsst nicht auf das RP warten).
	.collect 43609,3,13239,1,-1 --Pile of Bones (3)
	.collect 43610,3,13239,1,-1 --Abandoned Helm (3)
	.collect 43616,3,13239,1,-1 --Abandoned Armor (3)
    .complete 13239,1 --Field Tests Conducted (3)
step << Alliance
    .goto IcecrownGlacier,67.0,63.3,70,0
    .goto IcecrownGlacier,67.4,70.2,70,0
    .goto IcecrownGlacier,71.6,61.3
	>>Tötet die Scheusale, Adepten und Totenbeschwörer in der Gegend
    .complete 13287,1 --Hulking Abominations Slain (5)
    .complete 13287,3 --Shadow Adepts Slain (5)
    .complete 13287,2 --Malefic Necromancers Slain (5)
step << Horde
    .goto IcecrownGlacier,67.0,63.3,70,0
    .goto IcecrownGlacier,67.4,70.2,70,0
    .goto IcecrownGlacier,71.6,61.3
	>>Tötet die Scheusale, Adepten und Totenbeschwörer in der Gegend
    .complete 13237,1 --Hulking Abominations Slain (5)
    .complete 13237,3 --Shadow Adepts Slain (5)
    .complete 13237,2 --Malefic Necromancers Slain (5)
step << Alliance
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 44048 >>Plündert die Teile der aufgegebenen Ausrüstung, verstreut auf dem Boden um Die Zerbrochene Front herum. Benutzt die Smuggled Solution in von Euch Taschen, wenn ihr ein Stück jeder Ausrüstung habt (ihr müsst nicht auf das RP warten).
	.collect 43609,3,13291,1,-1 --Pile of Bones (3)
	.collect 43610,3,13291,1,-1 --Abandoned Helm (3)
	.collect 43616,3,13291,1,-1 --Abandoned Armor (3)
    .complete 13291,1 --Field Tests Conducted (3)
step << Horde
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 43608 >>Plündert die Teile der aufgegebenen Ausrüstung, verstreut auf dem Boden um Die Zerbrochene Front herum. Benutzt Copperclaw's Instabil Oil in von Euch Taschen, wenn ihr ein Stück jeder Ausrüstung habt (ihr müsst nicht auf das RP warten).
	.collect 43609,3,13239,1,-1 --Pile of Bones (3)
	.collect 43610,3,13239,1,-1 --Abandoned Helm (3)
	.collect 43616,3,13239,1,-1 --Abandoned Armor (3)
    .complete 13239,1 --Field Tests Conducted (3)
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Fliegt zur Himmelsbrecher, dem großen Allianzschiff, das hoch oben in der Luft herumfliegt. Sprecht mit Thassarian in der hinteren linken Ecke des Schiffes.
    .turnin 13287 >>Gebt die Quest Stechen und Stoßen ab
    .accept 13288 >>Akzeptiert die Quest Das ist monströs!
    .accept 13294 >>Akzeptiert die Quest Gegen die Riesen
step << Alliance
	#requires notdead
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Besteigt die Treppen in der Mitte des Schiffes (hinter Maraad), dann die Treppen auf beiden Seiten der ersten Treppe, um hinunter in den Maschinenraum zu gehen. Sprecht mit Chefingenieur Bolzenschlüssel
    .turnin 13291 >>Gebt die Quest Geliehene Technologie ab
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Fliegt zum Orgrims Hammer, dem großen Hordenschiff, das hoch oben in der Luft herumfliegt. Sprecht mit Koltira in der Vorderkabine des Schiffes.
    .turnin 13237 >>Gebt die Quest Stechen und Stoßen ab
    .accept 13264 >>Akzeptiert die Quest Das ist monströs!
	.accept 13277 >>Akzeptiert die Quest Gegen die Riesen
step << Horde
	>> Geht zum unteren Deck des Schiffes. Sprecht mit Chefingenieur Kupferklammer
    .turnin 13239 >>Gebt die Quest Verflüchtigung ab
step
    .goto IcecrownGlacier,68.3,61.5
	>>Tötet die Hulking Abominations in der Gegend und plündert die Kälte Monstrosität Fledder von ihnen.
	.use 43968 >> Benutzt Abominations Zombie erschaffen Kit mit etwas Fledder in von Euch Taschen, um ein Monstrosität zu beschwören, das ihr kontrollieren könnt. Sammelt so viele Gegner wie möglich, indem ihr das Monstrosität die Gegner angreifen lasst und Aggro bekommt, dann benutzt "Aufbrechende Nähte", um alle Gegner in der Nähe von von Euch Monstrosität zu töten (die Gegner müssen im Kampf sein, um Credits zu erhalten).
	>>Wenn euch der Fledder ausgeht, geht und tötet mehr Hulking Abominations. Ihr könnt immer nur 1 gut bei euch tragen.
	.collect 43966,1,13288,-1,1 << Alliance --Chilled Abomination Guts (3)
    .complete 13288,1 << Alliance  --Icy Ghouls Exploded (15)
    .complete 13288,2 << Alliance  --Vicious Geists Exploded (15)
    .complete 13288,3 << Alliance  --Risen Alliance Soldiers Exploded (15)
	.collect 43966,1,13264,-1,1 << Horde  --Chilled Abomination Guts (3)
    .complete 13264,1 << Horde --Icy Ghouls Exploded (15)
    .complete 13264,2 << Horde --Vicious Geists Exploded (15)
    .complete 13264,3 << Horde --Risen Alliance Soldiers Exploded (15)
	.isOnQuest 13288 << Alliance
	.isOnQuest 13264 << Horde
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Kehrt zum Orgrims Hammer zurück. Sprecht mit Koltira
    .turnin 13264 >>Gebt die Quest Das ist monströs! ab.
    .accept 13351 >>Akzeptiert die Quest Vorschau
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Kehrt zur Himmelsbrecher zurück. Sprecht mit Thassarian
    .turnin 13288 >>Gebt die Quest Das ist monströs! ab.
    .accept 13315 >>Akzeptiert die Quest Vorschau
step << Alliance
	>>Fliegt über die Wegpunkte auf der Plattform über der großen Mauer
    .complete 13315,1 --1/1 Aldur'thar South Visited
    .goto Icecrown,55.64,46.73
    .complete 13315,2 --1/1 Aldur'thar Central Visited
    .goto Icecrown,54.10,43.43
    .complete 13315,3 --1/1 Aldur'thar North Visited
    .goto Icecrown,54.09,35.33
    .complete 13315,4 --1/1 Aldur'thar Northwest Visited
    .goto Icecrown,52.06,34.21
step << Horde
	>>Fliegt über die Wegpunkte auf der Plattform über der großen Mauer
    .complete 13351,1 --Aldur'thar South Visited (1)
    .goto IcecrownGlacier,55.3,43.9
    .complete 13351,2 --Aldur'thar Central Visited (1)
    .goto IcecrownGlacier,55.1,41.6
    .complete 13351,3 --Aldur'thar North Visited (1)
    .goto IcecrownGlacier,53.7,35.5
    .complete 13351,4 --Aldur'thar Northwest Visited (1)
    .goto IcecrownGlacier,51.9,34.8
step << Alliance
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7,70,0
    .goto IcecrownGlacier,66.8,58.4,70,0
    .goto IcecrownGlacier,69.5,57.3,70,0
    .goto IcecrownGlacier,72.5,59.0,70,0
    .goto IcecrownGlacier,70.1,57.2,70,0
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7
	>>Tötet die Pustulent Horrors in der Gegend. Plündert sie nach Stacheln. Diese Quest ist SEHR schwierig, bildet eine Gruppe, wenn nötig.
    .complete 13294,1 --Pustulant Spine (5)
step << Horde
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7,70,0
    .goto IcecrownGlacier,66.8,58.4,70,0
    .goto IcecrownGlacier,69.5,57.3,70,0
    .goto IcecrownGlacier,72.5,59.0,70,0
    .goto IcecrownGlacier,70.1,57.2,70,0
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7
	>>Tötet die Pustulent Horrors in der Gegend. Plündert sie nach Stacheln. Diese Quest ist SEHR schwierig, bildet eine Gruppe, wenn nötig.
    .complete 13277,1 --Pustulant Spine (5)
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Fliegt zum Orgrims Hammer, dem großen Hordenschiff, das hoch oben in der Luft herumfliegt. Sprecht mit Koltira in der Vorderkabine des Schiffes.
    .turnin 13351 >>Gebt die Quest Vorschau ab
	.turnin 13277 >>Gebt die Quest Gegen die Riesen ab
    .accept 13355 >>Akzeptiert die Quest Kann nicht reproduziert werden
    .accept 13354 >>Akzeptiert die Quest Befehlskette
    .accept 13352 >>Akzeptiert die Quest Gefährliche Gewandung
	.accept 13279 >>Akzeptiert die Quest Grundkenntnisse der Chemie
    .accept 13278 >>Akzeptiert die Quest Koprus der Entweihte
step << Horde
	>> Geht zum unteren Deck des Schiffes. Sprecht mit Chefingenieur Kupferklammer
    .accept 13379 >>Akzeptiert die Quest Grüne Technologie
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Fliegt zur Himmelsbrecher, dem großen Allianzschiff, das hoch oben in der Luft herumfliegt. Sprecht mit Thassarian in der hinteren linken Ecke des Schiffes.
    .turnin 13315 >>Gebt die Quest Vorschau ab
    .turnin 13294 >>Gebt die Quest Gegen die Riesen ab
    .accept 13318 >>Akzeptiert die Quest Gefährliche Gewandung
    .accept 13319 >>Akzeptiert die Quest Befehlskette
    .accept 13320 >>Akzeptiert die Quest Kann nicht reproduziert werden
    .accept 13295 >>Akzeptiert die Quest Grundkenntnisse der Chemie
    .accept 13298 >>Akzeptiert die Quest Koprus der Entweihte
step << Alliance
	>>Besteigt die Treppen in der Mitte des Schiffes (hinter Maraad), dann die Treppen auf beiden Seiten der ersten Treppe, um hinunter in den Maschinenraum zu gehen. Sprecht mit Chefingenieur Bolzenschlüssel
    .accept 13383 >>Akzeptiert die Quest Geliehene Technologie
step
	#completewith next
    .goto IcecrownGlacier,63.3,62.1,25 >> BETRETET das Tor zum Inneren von Mord'rethar. Es befindet sich auf der zweiten Ebene und wird von verseuchten Unholden bewacht.
	.isOnQuest 13295 << Alliance
	.isOnQuest 13279 << Horde
step
    .goto IcecrownGlacier,62.3,63.4
	.use 44010 >> Benutzt die eiternde Rückenmarksflüssigkeit in euren Taschen bei den blubbernden grünen Kesseln. Tötet die Gegner, die erscheinen, und benutzt die Rückenmarksflüssigkeit erneut, wenn dazu aufgefordert wird 'Flüssigkeit bald hinzufügen'. Diese Quest ist SEHR schwierig, bildet eine Gruppe, wenn nötig.
    .complete 13295,1 << Alliance --Batch of Plague Neutralized (1)
    .complete 13279,1 << Horde --Batch of Plague Neutralized (1)
step
    .goto IcecrownGlacier,60.8,62.2
	>>Tötet Coprous den Schänder im Inneren von Mord'rethar. Diese Quest ist SEHR schwierig, daher bildet eine Gruppe, wenn nötig.
    .complete 13298,1 << Alliance --Coprous the Defiler Slain (1)
    .complete 13278,1 << Horde --Coprous the Defiler Slain (1)
step
	#sticky
	#label darksub
	>>Geht zur Plattform über der Mauer und tötet Bitterneulinge in der Gegend. Plündert sie nach Kugeln der Täuschung.
	.use 44246 >>Benutzt die Kugel der Illusion auf den Dunkel Subjugators in der Gegend, wenn ihr außer Kampf seid.
	.collect 44246,3,13352,1,-1 << Horde --Orb of Illusion (3 -1)
	.collect 44246,3,13318,1,-1 << Alliance --Orb of Illusion (3 -1)
    .goto IcecrownGlacier,53.7,46.1
    .complete 13352,1 << Horde --Dark Subjugator dragged and dropped (3)
    .complete 13318,1 << Alliance --Dark Subjugator dragged and dropped (3)
    .goto IcecrownGlacier,54.7,45.9,60,0
    .goto IcecrownGlacier,54.0,46.3,60,0
    .goto IcecrownGlacier,52.2,45.7,60,0
    .goto IcecrownGlacier,54.0,46.3
--	.unitscan Dark Subjugator
--X too many in the area, unitscan would be awkward
step
    .goto IcecrownGlacier,53.9,46.1
	>>Tötet Aufseher Faedris im großen Zelt
    .complete 13354,1 << Horde --Overseer Faedris Killed (1)
	.complete 13319,1 << Alliance --Overseer Faedris Killed (1)
step
	#requires darksub
	.use 44251 >> Benutzt das Partitioned Fläschchen auf den Kesseln außerhalb von Aldur'thar
    .complete 13355,3 << Horde --Dark Sample Collected (1)
	.complete 13320,3 << Alliance --Dark Sample Collected (1)
    .goto IcecrownGlacier,49.7,34.4
    .complete 13355,2 << Horde --Green Sample Collected (1)
	.complete 13320,2 << Alliance --Green Sample Collected (1)
    .goto IcecrownGlacier,49.1,34.2
    .complete 13355,1 << Horde --Blue Sample Collected (1)
    .complete 13320,1 << Alliance --Blue Sample Collected (1)
    .goto IcecrownGlacier,48.9,33.2
step
	>>Tötet Aufseher Savryn und Jhaeqon unter den großen Zelten. Dann fliegt zur nächsten Ebene zu Veraj (unter dem großen Zelt) und tötet ihn
    .complete 13354,4 << Horde --Overseer Savryn Killed (1)
	.complete 13319,4 << Alliance --Overseer Savryn Killed (1)
    .goto IcecrownGlacier,49.4,31.2
    .complete 13354,2 << Horde --Overseer Jhaeqon Killed (1)
	.complete 13319,2 << Alliance --Overseer Jhaeqon Killed (1)
    .goto IcecrownGlacier,54.7,32.6
    .complete 13354,3 << Horde --Overseer Veraj Killed (1)
	.complete 13319,3 << Alliance --Overseer Veraj Killed (1)
    .goto IcecrownGlacier,53.7,29.2
step << Alliance
	>>Fliegt zur kleinen Plattform in der Luft. Sprecht mit Killohertz.
	.goto IcecrownGlacier,53.96,42.93
	.turnin 13383 >>Gebt die Quest Killohertz ab
	.accept 13380 >>Akzeptiert die Quest Den Angriff leiten
step << Alliance
	.goto IcecrownGlacier,53.96,43.11
	>>Sprecht mit Karen, um in einen Bomber zu steigen. Benutzt Schild aufladen (1), um 100 Schilde zu gewinnen, dann wechselt zu Bombenlader (5) und beginnt damit, die Geißel unten zu bombardieren, bis alle Infanteristen und Anführer besiegt sind. Wechselt zu Luftabwehrgeschütz (4) und beginnt damit, Anti-Luft Raketen (1) zu verwenden, um Gargoyles in der Luft zu schießen. Sobald abgeschlossen, drückt den Fahrzeug verlassen Button, und ihr werdet zur Plattform zurückgebracht.
	.complete 13380,1 -- Bombardment Infantry slain (40)
	.complete 13380,2 -- Bombardment Captain slain (8)
	.complete 13380,3 -- Gargoyle Ambusher slain (15)
	.skipgossip
step << Alliance
	>>Sprecht mit Killohertz
    .goto IcecrownGlacier,53.96,42.93
    .turnin 13380 >>Gebt die Quest Den Angriff leiten ab
step << Horde
	>>Fliegt zur kleinen Plattform in der Luft. Sprecht mit Tezzla.
    .goto IcecrownGlacier,53.99,36.87
    .turnin 13379 >>Gebt die Quest Grüne Technologie ab
    .accept 13373 >>Akzeptiert die Quest Vorzüge der Grenzwissenschaft
step << Horde
	.goto IcecrownGlacier,54.00,36.70
	>>Sprecht mit Rizzy, um in einen Bomber zu steigen. Benutzt Schild aufladen (1), um 100 Schilde zu gewinnen, dann wechselt zu Bombenlader (5) und beginnt damit, die Geißel unten zu bombardieren, bis alle Infanteristen und Anführer besiegt sind. Wechselt zu Luftabwehrgeschütz (4) und beginnt damit, Anti-Luft Raketen (1) zu verwenden, um Gargoyles in der Luft zu schießen. Sobald abgeschlossen, drückt den Fahrzeug verlassen Button, und ihr werdet zur Plattform zurückgebracht.
	.complete 13373,1 -- Bombardment Infantry slain (40)
	.complete 13373,2 -- Bombardment Captain slain (8)
	.complete 13373,3 -- Gargoyle Ambusher slain (15)
	.skipgossip
step << Horde
	>>Sprecht mit Tezzla
    .goto IcecrownGlacier,54.00,36.94
    .turnin 13373 >>Gebt die Quest Vorzüge der Grenzwissenschaft ab
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Fliegt zur Himmelsbrecher, dem großen Allianzschiff, das hoch oben in der Luft herumfliegt. Sprecht mit Thassarian in der hinteren linken Ecke des Schiffes.
    .turnin 13318 >>Gebt die Quest Gefährliche Gewandung ab.
    .turnin 13319 >>Gebt die Quest Befehlskette ab
    .turnin 13295 >>Gebt die Quest Grundkenntnisse der Chemie ab
    .turnin 13298 >>Gebt die Quest Koprus der Entweihte ab
    .accept 13342 >>Akzeptiert die Quest Keine Wanze
    .accept 13345 >>Akzeptiert die Quest Brauche mehr Informationen
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Besteigt die Treppen in der Mitte des Schiffes (hinter Maraad), dann die Treppen auf beiden Seiten der ersten Treppe, um hinunter in den Maschinenraum zu gehen. Sprecht mit Chefingenieur Bolzenschlüssel
    .turnin 13320 >>Gebt die Quest Kann nicht reproduziert werden ab
    .accept 13321 >>Akzeptiert die Quest Jetzt neu testen
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>> Fliegt zu Orgrims Hammer, dem großen Horde-Schiff, das hoch oben in der Luft herumfliegt. Geht in den großen Raum vorne. Sprecht mit Kolitra
	.turnin 13352 >>Gebt die Quest Gefährliche Gewandung ab.
    .turnin 13354 >>Gebt die Quest Befehlskette ab
    .turnin 13279 >>Gebt die Quest Grundkenntnisse der Chemie ab
    .turnin 13278 >>Gebt die Quest Koprus der Entweihte ab
    .accept 13358 >>Akzeptiert die Quest Keine Wanze
    .accept 13366 >>Akzeptiert die Quest Brauche mehr Informationen
step << Horde
	>> Geht zum unteren Deck des Schiffes. Sprecht mit Chefingenieur Kupferklammer
    .turnin 13355 >>Gebt die Quest Kann nicht reproduziert werden ab
    .accept 13356 >>Akzeptiert die Quest Jetzt neu testen
step
	#label taintedessence
	#sticky
    .goto IcecrownGlacier,49.7,34.4,0,0
	.use 44307 >>Benutzt das Verdünntes Kulttonikum in von Euch Taschen, um den "Dunkle Einsicht" Stärkungszauber zu erhalten. Dies ermöglicht es euch, die Besudelt Essences von allen Humanoiden zu plündern, die ihr in der Gegend tötet.
	.collect 44301,10,13356,1 << Horde
	.collect 44301,10,13321,1 << Alliance
step
    .goto IcecrownGlacier,54.1,31.4,70,0
    .goto IcecrownGlacier,54.7,28.0,70,0
    .goto IcecrownGlacier,57.0,28.8,70,0
    .goto IcecrownGlacier,54.1,31.4
	.use 44433 >> Tötet 5 Versklavt Minions (Voidwalkers). Benutzt die Rute des Entzugs auf ihren Leichen, um ihre Dunkle Materie zu bekommen.
	.collect 44434,5,13342,1 << Alliance --Dark Matter (5)
	.collect 44434,5,13358,1 << Horde --Dark Matter (5)
step
    .goto IcecrownGlacier,53.8,33.6
	>>Klickt auf den Beschwören Stein.
	.complete 13342,1 << Alliance  --Dark Messenger Summoned (1)
    .complete 13358,1 << Horde --Dark Messenger Summoned (1)
step
	#completewith next
    .goto IcecrownGlacier,51.9,32.5,30 >> BETRITT das Innere von Aldur'thar
	.isOnQuest 13366 << Horde
	.isOnQuest 13345 << Alliance
step
    .goto IcecrownGlacier,53.1,31.1,60,0
    .goto IcecrownGlacier,53.1,29.2,60,0
    .goto IcecrownGlacier,50.9,29.0,60,0
    .goto IcecrownGlacier,50.9,30.4,60,0
    .goto IcecrownGlacier,53.1,31.1
	>>Tötet die Kultisten-Forscher in der Gegend. Erbeutet ihre Forschungsseiten
	.collect 44459,1 --Cult of the Damned Research - Page 1 (1)
	.collect 44460,1 --Cult of the Damned Research - Page 2 (1)
	.collect 44461,1 --Cult of the Damned Research - Page 3 (1)
	.isOnQuest 13366 << Horde
	.isOnQuest 13345 << Alliance
step
	#sticky
	#label Thesis
    .goto IcecrownGlacier,49.7,34.4
	.use 44459 >> Klickt auf eines der Forschungsseiten in den Taschen von Euch, um sie in die These zu kombinieren
    .complete 13366,1 << Horde --Cult of the Damned Thesis (1)
	.complete 13345,1 << Alliance --Cult of the Damned Thesis (1)
step
	#requires taintedessence
    .goto IcecrownGlacier,49.7,34.4
	.use 44301
	.use 44304 >> Macht einen Rechtsklick auf die Besudelt Essences in von Euch Taschen, um sie in eine Writhing Mass umzuwandeln. Werft sie in einen Kessel.
	.complete 13321,1 << Alliance
	.complete 13356,1 << Horde
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Fliegt zur Himmelsbrecher, dem großen Allianzschiff, das hoch oben in der Luft herumfliegt. Sprecht mit Thassarian in der hinteren linken Ecke des Schiffes.
    .turnin 13342 >>Gebt die Quest Keine Wanze ab
    .turnin 13345 >>Gebt die Quest Brauche mehr Informationen ab
    .accept 13346 >>Akzeptiert die Quest Es kann der Böseste nicht in Frieden ruhen...
    .accept 13332 >>Akzeptiert die Quest Errichtet die Barrikaden
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Besteigt die Treppen in der Mitte des Schiffes (hinter Maraad), dann die Treppen auf beiden Seiten der ersten Treppe, um hinunter in den Maschinenraum zu gehen. Sprecht mit Chefingenieur Bolzenschlüssel
    .turnin 13321 >>Gebt die Quest Jetzt neu testen ab.
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>> Fliegt zu Orgrims Hammer, dem großen Horde-Schiff, das hoch oben in der Luft herumfliegt. Geht in den großen Raum vorne. Sprecht mit Kolitra
    .turnin 13358 >>Gebt die Quest Keine Wanze ab
	.turnin 13366 >>Gebt die Quest Brauche mehr Informationen ab
    .accept 13367 >>Akzeptiert die Quest Es kann der Böseste nicht in Frieden ruhen...
    .accept 13306 >>Akzeptiert die Quest Errichtet die Barrikaden
step << Horde
	>> Geht zum unteren Deck des Schiffes. Sprecht mit Chefingenieur Kupferklammer
    .turnin 13356 >>Gebt die Quest Jetzt neu testen ab.
step
    .goto IcecrownGlacier,52.5,42.0,70,0
    .goto IcecrownGlacier,51.3,37.1,70,0
    .goto IcecrownGlacier,47.1,37.4,70,0
    .goto IcecrownGlacier,50.0,44.9,70,0
    .goto IcecrownGlacier,52.5,42.0
	.use 44127 >>Benutzt den Barrikade-Bau-Satz aus den Taschen von Euch im Tal der Gefallenen Helden auf den violetten Glühen, die erscheinen
    .complete 13332,1 << Alliance --Barricades constructed (8)
	.complete 13306,1 << Horde --Barricades constructed (8)
step
	>>Diese Quest ist SEHR schwierig, bildet eine Gruppe dafür, wenn nötig
	>>Öffnet die Truhen im Inneren von Aldur'thar und plündert Alumeth's Schädel, Herz, Scepter und Robes.
	.collect 44476,1 --Alumeth's Skull (1)
    .goto IcecrownGlacier,50.5,30.0
	.collect 44477,1 --Alumeth's Heart (1)
    .goto IcecrownGlacier,52.8,30.7
	.collect 44478,1 --Alumeth's Scepter (1)
    .goto IcecrownGlacier,52.8,29.8
	.collect 44479,1 --Alumeth's Robes (1)
    .goto IcecrownGlacier,53.0,29.0
	.isOnQuest 13346 << Alliance
	.isOnQuest 13367 << Horde
step
    .goto IcecrownGlacier,51.9,29.0
	>>Diese Quest ist SEHR schwierig, bildet eine Gruppe dafür, wenn nötig
	.use 44476 >> Klickt auf alle Gegenstände in von Euch Taschen, um sie in Alumeths Überreste zu kombinieren.
	.collect 44480,1 --Alumeth's Remains (1)
	.isOnQuest 13346 << Alliance
	.isOnQuest 13367 << Horde
step
    .goto IcecrownGlacier,51.9,29.0
	>>Diese Quest ist SEHR schwierig, bildet eine Gruppe dafür, wenn nötig
	.use 44480 >> Benutzt Alumeths Überreste vor dem leuchtenden Kristall, um ihn zu beschwören. Tötet ihn.
    .complete 13346,1 << Alliance --Alumeth the Ascended Defeated (1)
    .complete 13367,1 << Horde --Alumeth the Ascended Defeated (1)
	.isOnQuest 13346 << Alliance
	.isOnQuest 13367 << Horde
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Fliegt zur Himmelsbrecher, dem großen Allianzschiff, das hoch oben in der Luft herumfliegt. Sprecht mit Thassarian in der hinteren linken Ecke des Schiffes.
    .turnin 13346 >>Gebt die Quest Es kann der Böseste nicht in Frieden ruhen... ab
    .turnin 13332 >>Gebt die Quest Errichtet die Barrikaden ab
	.accept 13337 >>Akzeptiert die Quest Das Eisenwallbollwerk
	.accept 13334 >>Akzeptiert die Quest Blutbespritzte Banner
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>> Fliegt zu Orgrims Hammer, dem großen Horde-Schiff, das hoch oben in der Luft herumfliegt. Geht in den großen Raum vorne. Sprecht mit Kolitra
    .turnin 13367 >>Gebt die Quest Es kann der Böseste nicht in Frieden ruhen... ab
    .turnin 13306 >>Gebt die Quest Errichtet die Barrikaden ab
	.accept 13312 >>Akzeptiert die Quest Das Eisenwallbollwerk
	.accept 13307 >>Akzeptiert die Quest Blutbespritzte Banner
step
    .goto IcecrownGlacier,51.3,40.3,70,0
    .goto IcecrownGlacier,49.1,43.8
	>>Tötet die Geißel-Konverter in der Gegend
    .complete 13334,3 << Alliance --Scourge Converter (5)
    .complete 13307,3 << Horde --Scourge Converter (5)
step
    .goto IcecrownGlacier,45.5,46.5
	>>Diese Quest ist SEHR schwierig, bildet eine Gruppe dafür, wenn nötig
	.use 44186 >> Fliegt hinauf zum Balkon, benutzt dann die Rune der Verzerrung aus den Taschen von Euch bei Grimkors Kugel. Tötet Grimkor den Boshaften
    .complete 13337,1 << Alliance --Grimkor the Wicked (1)
    .complete 13312,1 << Horde --Grimkor the Wicked (1)
step
    .goto IcecrownGlacier,47.1,48.5,70,0
    .goto IcecrownGlacier,41.9,48.4,70,0
    .goto IcecrownGlacier,41.9,54.3,70,0
    .goto IcecrownGlacier,46.1,53.1
	>>Tötet die Bannerträger der Geißel und Umgewandelte Helden in der Gegend
    .complete 13334,1 << Alliance --Scourge Banner-Bearer (5)
    .complete 13334,2 << Alliance --Converted Hero (20)
    .complete 13307,1 << Horde --Scourge Banner-Bearer (5)
    .complete 13307,2 << Horde --Converted Hero (20)
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Fliegt zur Himmelsbrecher, dem großen Allianzschiff, das hoch oben in der Luft herumfliegt. Sprecht mit Thassarian in der hinteren linken Ecke des Schiffes.
	.turnin 13334 >>Gebt die Quest Blutbespritzte Banner ab
	.turnin 13337 >>Gebt die Quest Das Eisenwallbollwerk ab
	>>Geht in den großen Raum auf Die Himmelsbrecher, dem sich Maraad zuwendet, und sprecht mit Justin
	.accept 13314 >>Akzeptiert die Quest Get The Message
step << Alliance
    .goto IcecrownGlacier,46.2,52.1,70,0
    .goto IcecrownGlacier,42.4,59.4,0,0
	.use 44222 >>Benutzt die Pfeilpistole in von Euch Taschen auf den Orgrims Hammer Späher (ihr könnt sie benutzen, während ihr auf von Euch fliegendem Reittier seid). Plündert ihre Leichen für die Dispatches.
    .complete 13314,1 --Orgrim's Hammer Dispatch (6)
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Geht in den großen Raum auf Die Himmelsbrecher, dem sich Maraad zuwendet, und sprecht mit Justin
	.turnin 13314 >>Gebt die Quest Get The Message ab
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>> Fliegt zu Orgrims Hammer, dem großen Horde-Schiff, das hoch oben in der Luft herumfliegt. Geht in den großen Raum vorne. Sprecht mit Kolitra
	.turnin 13312 >>Gebt die Quest Das Eisenwallbollwerk ab
	.turnin 13307 >>Gebt die Quest Blutbespritzte Banner ab
step << Horde
	>>Sprecht mit Krom Blackscar neben euch
	.accept 13313 >>Akzeptiert die Quest Die Augen im Himmel erblinden lassen
step << Horde
	.goto IcecrownGlacier,48.85,40.44
	.use 44212 >>Benutzt die SGM-3 in von Euch Taschen auf den Skybreaker Recon Fighters in der Luft.
	.complete 13313,1 --Skybreaker Recon Fighters shot down (6)
step << Horde
	>> Fliegt nach Orgrims Hammer, das große Horde-Schiff, das hoch in der Luft herumfliegt. Geht in den großen Raum an der Front. Sprecht mit Krom Blackscar
	.turnin 13313 >>Gebt die Quest Die Augen im Himmel erblinden lassen ab
step
	+Falls ihr einige Quests in diesem Guide übersprungen oder nicht abgeschlossen habt, startet bitte den Guide neu und schließt sie ab. Klickt dazu auf das Zahnrad und navigiert zurück zum Eiskrone Gunship Aufsperren Täglich Quests Guide
	>>Falls ihr sie alle abgeschlossen habt, könnt ihr mit der Eiskrone Gunship Täglich Quests Route beginnen. Beachtet, dass einige heute möglicherweise nicht verfügbar sind, da ihr möglicherweise bereits einige Tägliche Quests abgeschlossen habt
]])
