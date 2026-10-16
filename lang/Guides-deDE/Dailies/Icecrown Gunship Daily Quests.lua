if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#version 1
#group RestedXP Northrend Täglich Quests
#subgroup Fraktion Täglich Quests
#wotlk
#cata
#name Eiskrone Gunship Täglich Quests Route

step << Alliance -- Checking that the actual pre quests that have been completed, not dailies
	+Um alle Eiskrone-Gunschiff Tagesquests freizuschalten, müsst ihr zunächst die Pre Quest Kette abschließen. Bitte nutzt die Eiskrone-Gunschiff Anleitung, um alle Tagesquests freizuschalten.
	.isQuestAvailable 13314,13346,13342,13318,13321,13295,13288,13380,13291,13231,13296

--	 13314  Get the Message
--	 13346  No Rest For The Wicked
--	 13342  Not a Bug
--	 13318  Drag and Drop
--	 13321  Retest Now
--	 13295  Basic Chemistry
--	 13288  That's Abominable!
--	 13380  Leading the Charge
--	 13291  Borrowed Technology
--	 13231  The Broken Front
--	 13296  Get to Ymirheim!

step << Horde -- Checking that the actual quests that have been completed, not dailies
	+Um alle Eiskrone-Gunschiff Tagesquests freizuschalten, müsst ihr zunächst die Pre Quest Kette abschließen. Bitte nutzt die Eiskrone-Gunschiff Anleitung, um alle Tagesquests freizuschalten.
	.isQuestAvailable 13313,13228,13293,13239,13373,13279,13356,13352,13358,13367,13264

--	 13313  Blinding the Eyes in the Sky
--	 13228  The Broken Front
--	 13293  Get to Ymirheim!
--	 13239  Volatility
--	 13279  Basic Chemistry
--	 13356  Retest Now
--	 13352  Drag and Drop
--	 13358  Not a Bug
--	 13367  No Rest For The Wicked
--	 13264  That's Abominable!

--Alliance Skybreaker Quests (11)
--	Blood of the Chosen, 13336
--	Slaves to Saronite, 13300
--	No Mercy!, 13233
--	The Solution Solution, 13292
--	That's Abominable!, 13289
--	Neutralizing the Plague, 13297
--	Retest Now, 13322
--	Drag and Drop, 13323
--	Not a Bug, 13344
--	No Rest For The Wicked, 13350
--	Capture More Dispatches, 13333

--Alliance other misc quests nearby included with gunship quest chain (5)
--  King of the Mountain, 13280
--  Assault by Air, 13309
--  Assault by Ground, 13284
--  Static Shock Troops: the Bombardment, 13404
--  Putting the Hertz: The Valley of Lost Hope, 13382 -- not implimented by blizzard

--Horde Orgrim's Hammer Quests (11)
--	Blood of the Chosen, 13330
--	Slaves to Saronite, 13302
--	Make Them Pay!, 13234
--	Volatility, 13261
--	That's Abominable!, 13276
--	Neutralizing the Plague, 13281
--	Retest Now, 13357
--	Drag and Drop, 13353
--	Not a Bug, 13365
--	No Rest For The Wicked, 13368
--	Keeping the Alliance Blind, 13331

--Horde other misc quests nearby included with gunship quest chain (5)
--  King of the Mountain, 13283  -- DONE
--  Assault by Air, 13310 -- DONE
--  Assault by Ground, 13301 -- DONE
--  Riding the Wavelength: The Bombardment, 13406
--  Total Ohmage: The Valley of Lost Hope!, 13376 -- not implimented by blizzard

step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Fliegt zum Allianz-Gunschiff Die Himmelsbrecher
	>>Sprecht mit Kürassier Drosche, Absalan der Fromme, Stabshauptmann Justin Bartlett, Chefingenieur Bolzenschlüssel und Thassarian
	>>Hinweis: Die Quest Keine Gnade! ist eine PvP-Quest, für die ihr 15 Horde-Spieler in Eiskrone töten müsst. Ihr könnt diese Tagesquest bei Bedarf aufgeben oder überspringen.
    .daily 13336 >>Akzeptiert die Quest Blut der Auserwählten
    .daily 13300 >>Akzeptiert die Quest Vom Saronit abhängig
	.daily 13233 >>Akzeptiert die Quest Keine Gnade!
    .daily 13292 >>Akzeptiert die Quest Die Lösungslösung
    .daily 13289 >>Akzeptiert die Quest Das ist monströs!
	.daily 13297 >>Akzeptiert die Quest Neutralizing the Seuche
    .daily 13322 >>Akzeptiert die Quest Jetzt neu testen
    .daily 13323 >>Akzeptiert die Quest Gefährliche Gewandung
	.daily 13344 >>Akzeptiert die Quest Keine Wanze
    .daily 13350 >>Akzeptiert die Quest Es kann der Böseste nicht in Frieden ruhen...
    .daily 13333 >>Akzeptiert die Quest Fangen More Dispatches
step << Horde
	.goto IcecrownGlacier,67.00,38.00,0
	>>Fliegt zum Horde-Gunschiff Orgrims Hammer
	>>Sprecht mit Kriegstreiber Davos Rioht, Bruder Keltan, Himmelshäscher Korm Schwarznarbe, Chefingenieur Kupferklammer und Koltira Todesweber
	>>Hinweis: Die Quest Make Them Pay! ist eine PvP-Quest, für die ihr 15 Allianz-Spieler in Eiskrone töten müsst. Ihr könnt diese Tagesquest bei Bedarf aufgeben oder überspringen.
    .daily 13330 >>Akzeptiert die Quest Blut der Auserwählten
    .daily 13302 >>Akzeptiert die Quest Vom Saronit abhängig
	.daily 13234 >>Akzeptiert die Quest Make Them Pay!
    .daily 13261 >>Akzeptiert die Quest Verflüchtigung
    .daily 13276 >>Akzeptiert die Quest Das ist monströs!
	.daily 13281 >>Akzeptiert die Quest Neutralizing the Seuche
    .daily 13357 >>Akzeptiert die Quest Jetzt neu testen
    .daily 13353 >>Akzeptiert die Quest Gefährliche Gewandung
	.daily 13365 >>Akzeptiert die Quest Keine Wanze
    .daily 13368 >>Akzeptiert die Quest Es kann der Böseste nicht in Frieden ruhen...
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
	>>Schießt auf alle Speer-Schusswaffen auf den Gebäuden, während ihr herumfliegt.
    .goto Icecrown,52.65,56.93
    .complete 13309,1 --4/4 Skybreaker Infiltrators dropped
	.isOnQuest 13309
step << Alliance
    .goto Icecrown,62.55,51.29
	>>Kehrt zu Koup zurück.
    .turnin 13309 >>Gebt die Quest Luftangriff ab.
	.isQuestComplete 13309
step << Horde
	>>Fliegt zu Feldkommandant Xutjja (auf dem Boden - nicht auf dem Schiff)
    .goto IcecrownGlacier,58.3,46.0
    .daily 13310 >>Akzeptiert die Quest Luftangriff
step << Horde
	#completewith next
	.vehicle >>Lauft zum Kor'kron-Unterdrückungsgeschütz auf dem Schiff und klickt es an.
    .goto IcecrownGlacier,59.60,45.84
	.isOnQuest 13310
step << Horde
	>>Schießt auf alle Geschütze, um sie auszuschalten, während ihr herumfliegt. Infiltratoren werden dabei auftauchen.
    .goto IcecrownGlacier,56.8,64.3
    .complete 13310,1 --Kor'kron Infiltrators dropped (4)
	.isOnQuest 13310
step << Horde
    .goto IcecrownGlacier,58.3,46.0
    .turnin 13310 >>Gebt die Quest Luftangriff ab.
	.isQuestComplete 13310
step << Alliance
    .goto IcecrownGlacier,62.5,51.1,15,0
    .goto IcecrownGlacier,62.8,51.6
	>>Sprecht mit dem Schwadronsführer. Es ist möglich, dass er nicht hier ist, wenn jemand anderes die Quest gestartet hat. Die Respawn-Zeit beträgt ungefähr 6 Minuten.
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
	>>Sprecht mit dem Schwadronsführer. Es ist möglich, dass er nicht hier ist, wenn jemand anderes die Quest gestartet hat. Die Respawn-Zeit beträgt ungefähr 6 Minuten.
    .daily 13301 >>Akzeptiert die Quest Bodenangriff
step << Horde
    .goto IcecrownGlacier,54.9,52.8,0,0
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
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 44048 >>Plündert die Teile der aufgegebenen Ausrüstung, verstreut auf dem Boden um Die Zerbrochene Front herum. Benutzt die Smuggled Solution in von Euch Taschen, wenn ihr ein Stück jeder Ausrüstung habt (ihr müsst nicht auf das RP warten). << Alliance
	.collect 43609,3,13292,1,-1 << Alliance --Pile of Bones (3)
	.collect 43610,3,13292,1,-1 << Alliance --Abandoned Helm (3)
	.collect 43616,3,13292,1,-1  << Alliance --Abandoned Armor (3)
    .complete 13292,1 << Alliance --Field Tests Conducted (3)
	.use 43608 >>Plündert die Teile der aufgegebenen Ausrüstung, verstreut auf dem Boden um Die Zerbrochene Front herum. Benutzt Copperclaw's Instabil Oil in von Euch Taschen, wenn ihr ein Stück jeder Ausrüstung habt (ihr müsst nicht auf das RP warten). << Horde
	.collect 43609,3,13261,1,-1  << Horde --Pile of Bones (3)
	.collect 43610,3,13261,1,-1 << Horde --Abandoned Helm (3)
	.collect 43616,3,13261,1,-1 << Horde --Abandoned Armor (3)
    .complete 13261,1 << Horde --Field Tests Conducted (3)
	.isOnQuest 13292 << Alliance
	.isOnQuest 13261 << Horde
step
    .goto IcecrownGlacier,68.3,61.5
	>>Tötet die Hulking Abominations in der Gegend und plündert die Kälte Monstrosität Fledder von ihnen.
	.use 43968 >> Benutzt Abominations Zombie erschaffen Kit mit etwas Fledder in von Euch Taschen, um ein Monstrosität zu beschwören, das ihr kontrollieren könnt. Sammelt so viele Gegner wie möglich, indem ihr das Monstrosität die Gegner angreifen lasst und Aggro bekommt, dann benutzt "Aufbrechende Nähte", um alle Gegner in der Nähe von von Euch Monstrosität zu töten (die Gegner müssen im Kampf sein, um Credits zu erhalten).
	>>Wenn euch der Fledder ausgeht, geht und tötet mehr Hulking Abominations. Ihr könnt immer nur 1 gut bei euch tragen.
	.collect 43966,1,13289,-1,1 << Alliance --Chilled Abomination Guts (3)
    .complete 13289,1 << Alliance  --Icy Ghouls Exploded (15)
    .complete 13289,2 << Alliance  --Vicious Geists Exploded (15)
    .complete 13289,3 << Alliance  --Risen Alliance Soldiers Exploded (15)
	.collect 43966,1,13276,-1,1 << Horde  --Chilled Abomination Guts (3)
    .complete 13276,1 << Horde --Icy Ghouls Exploded (15)
    .complete 13276,2 << Horde --Vicious Geists Exploded (15)
    .complete 13276,3 << Horde --Risen Alliance Soldiers Exploded (15)
	.isOnQuest 13289 << Alliance
	.isOnQuest 13276 << Horde
step
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7,70,0
    .goto IcecrownGlacier,66.8,58.4,70,0
    .goto IcecrownGlacier,69.5,57.3,70,0
    .goto IcecrownGlacier,72.5,59.0,70,0
    .goto IcecrownGlacier,70.1,57.2,70,0
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7
	>>Tötet die Pustulent Horrors in der Gegend. Plündert sie für ein Flesh Giant Spine. Diese Quest ist SEHR schwer. Gruppiert euch, falls nötig, oder ihr könnt diese tägliche Quest abbrechen/überspringen, wenn ihr möchtet.
	.collect 44009,1 -- Flesh Giant Spine (1)
	.isOnQuest 13297 << Alliance
	.isOnQuest 13281 << Horde
step
	.goto IcecrownGlacier,62.3,63.4
	.use 44009 >> Benutzt die Flesh Giant Spine in von Euch Taschen, um Pustulant Spinal Fluid zu erschaffen.
	.collect 44010,1 -- Pustulant Spinal Fluid (1)
	.isOnQuest 13297 << Alliance
	.isOnQuest 13281 << Horde
step
    .goto IcecrownGlacier,62.3,63.4
	.use 44010 >> Benutzt die Pustulant Spinal Fluid in von Euch Taschen auf den sprudelnden grünen Kesseln. Tötet die Gegner, die erscheinen, und benutzt die Spinal Fluid erneut, wenn aufgefordert, "Flüssigkeit bald hinzufügen". Diese Quest ist SEHR schwer. Gruppiert euch, falls nötig, oder ihr könnt diese tägliche Quest abbrechen/überspringen, wenn ihr möchtet.
    .complete 13297,1 << Alliance --Batch of Plague Neutralized (1)
    .complete 13281,1 << Horde --Batch of Plague Neutralized (1)
	.isOnQuest 13297 << Alliance
	.isOnQuest 13281 << Horde
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
step
	#completewith next
    .goto IcecrownGlacier,51.9,32.5,30 >> Geht ins Innere von Aldur'thar.
	.isOnQuest 13350 << Alliance
	.isOnQuest 13368 << Horde
step
	>>Diese Quest ist SEHR schwer. Gruppiert euch, falls nötig, oder brecht diese tägliche Quest ab/überspringt sie.
	>>Öffnet die Truhen im Inneren von Aldur'thar und plündert Alumeth's Schädel, Herz, Scepter und Robes.
	.collect 44476,1 --Alumeth's Skull (1)
    .goto IcecrownGlacier,50.5,30.0
	.collect 44477,1 --Alumeth's Heart (1)
    .goto IcecrownGlacier,52.8,30.7
	.collect 44478,1 --Alumeth's Scepter (1)
    .goto IcecrownGlacier,52.8,29.8
	.collect 44479,1 --Alumeth's Robes (1)
    .goto IcecrownGlacier,53.0,29.0
	.isOnQuest 13350 << Alliance
	.isOnQuest 13368 << Horde
step
    .goto IcecrownGlacier,51.9,29.0
	>>Diese Quest ist SEHR schwer. Gruppiert euch, falls nötig, oder brecht diese tägliche Quest ab/überspringt sie.
	.use 44476 >> Klickt auf alle Gegenstände in von Euch Taschen, um sie in Alumeths Überreste zu kombinieren.
	.collect 44480,1 --Alumeth's Remains (1)
	.isOnQuest 13350 << Alliance
	.isOnQuest 13368 << Horde
step
    .goto IcecrownGlacier,51.9,29.0
	>>Diese Quest ist SEHR schwer. Gruppiert euch, falls nötig, oder brecht diese tägliche Quest ab/überspringt sie.
	.use 44480 >> Benutzt Alumeths Überreste vor dem leuchtenden Kristall, um ihn zu beschwören. Tötet ihn.
    .complete 13350,1 << Alliance --Alumeth the Ascended Defeated (1)
    .complete 13368,1 << Horde --Alumeth the Ascended Defeated (1)
	.isOnQuest 13350 << Alliance
	.isOnQuest 13368 << Horde
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
step << Alliance
	>>Fliegt zur kleinen Plattform in der Luft. Sprecht mit Killohertz.
	.goto IcecrownGlacier,53.96,42.93
	.daily 13404 >>Akzeptiert die Quest Statische Schocktruppen: das Bombardement.
step << Alliance
	.goto IcecrownGlacier,53.96,43.11
	>>Sprecht mit Karen, um in einen Bomber zu steigen. Benutzt Schild aufladen (1), um 100 Schilde zu gewinnen, dann wechselt zu Bombenlader (5) und beginnt damit, die Geißel unten zu bombardieren, bis alle Infanteristen und Anführer besiegt sind. Wechselt zu Luftabwehrgeschütz (4) und beginnt damit, Anti-Luft Raketen (1) zu verwenden, um Gargoyles in der Luft zu schießen. Sobald abgeschlossen, drückt den Fahrzeug verlassen Button, und ihr werdet zur Plattform zurückgebracht.
	.complete 13404,1 -- Bombardment Infantry slain (50)
	.complete 13404,2 -- Bombardment Captain slain (10)
	.complete 13404,3 -- Gargoyle Ambusher slain (20)
	.skipgossip
step << Alliance
	>>Sprecht mit Killohertz
    .goto IcecrownGlacier,53.96,42.93
    .turnin 13404 >>Gebt die Quest Statische Schocktruppen: das Bombardement ab.
	.isQuestComplete 13404
step << Horde
	>>Fliegt zur kleinen Plattform in der Luft. Sprecht mit Tezzla.
    .goto IcecrownGlacier,53.99,36.87
    .daily 13406 >>Akzeptiert die Quest Auf derselben Wellenlänge: Das Bombardement.
step << Horde
	.goto IcecrownGlacier,54.00,36.70
	>>Sprecht mit Rizzy, um in einen Bomber zu steigen. Benutzt Schild aufladen (1), um 100 Schilde zu gewinnen, dann wechselt zu Bombenlader (5) und beginnt damit, die Geißel unten zu bombardieren, bis alle Infanteristen und Anführer besiegt sind. Wechselt zu Luftabwehrgeschütz (4) und beginnt damit, Anti-Luft Raketen (1) zu verwenden, um Gargoyles in der Luft zu schießen. Sobald abgeschlossen, drückt den Fahrzeug verlassen Button, und ihr werdet zur Plattform zurückgebracht.
	.complete 13406,1 -- Bombardment Infantry slain (50)
	.complete 13406,2 -- Bombardment Captain slain (10)
	.complete 13406,3 -- Gargoyle Ambusher slain (20)
	.skipgossip
step << Horde
	>>Sprecht mit Tezzla
    .goto IcecrownGlacier,54.00,36.94
    .turnin 13406 >>Gebt die Quest Auf derselben Wellenlänge: Das Bombardement ab.
	.isQuestComplete 13406
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Kehrt zum Skybreaker zurück. Sprecht mit Kürassier Drosche, Absalan der Fromme, Stabshauptmann Justin Bartlett, Chefingenieur Bolzenschlüssel und Thassarian.
    .turnin -13336 >>Gebt die Quest Blut der Auserwählten ab.
    .turnin -13300 >>Gebt die Quest Vom Saronit abhängig ab.
	.turnin -13233 >>Gebt die Quest Keine Gnade! ab.
    .turnin -13292 >>Gebt die Quest Die Lösungslösung ab.
    .turnin -13289 >>Gebt die Quest Das ist monströs! ab.
	.turnin -13297 >>Gebt die Quest Neutralizing the Seuche ab.
    .turnin -13322 >>Gebt die Quest Jetzt neu testen ab.
    .turnin -13323 >>Gebt die Quest Gefährliche Gewandung ab.
	.turnin -13344 >>Gebt die Quest Keine Wanze ab
    .turnin -13350 >>Gebt die Quest Es kann der Böseste nicht in Frieden ruhen... ab
    .turnin -13333 >>Gebt die Quest Mehr Funksprüche ab
step << Horde
	.goto IcecrownGlacier,67.00,38.00,0
	>>Kehrt nach Orgrims Hammer zurück. Sprecht mit Kriegshetzer Davos Rahbatz, Bruder Keltan, Himmelshäscher Korm Schwarznarbe, Chefingenieur Kupferklammer und Koltira Todesweber
    .turnin -13330 >>Gebt die Quest Blut der Auserwählten ab.
    .turnin -13302 >>Gebt die Quest Vom Saronit abhängig ab.
	.turnin -13234 >>Gebt die Quest Lasst sie bezahlen! ab
    .turnin -13261 >>Gebt die Quest Verflüchtigung ab
    .turnin -13276 >>Gebt die Quest Das ist monströs! ab.
	.turnin -13281 >>Gebt die Quest Neutralizing the Seuche ab.
    .turnin -13357 >>Gebt die Quest Jetzt neu testen ab.
    .turnin -13353 >>Gebt die Quest Gefährliche Gewandung ab.
	.turnin -13365 >>Gebt die Quest Keine Wanze ab
    .turnin -13368 >>Gebt die Quest Es kann der Böseste nicht in Frieden ruhen... ab
    .turnin -13331 >>Gebt die Quest Die Allianz im Dunkeln tappen ab
step << Alliance
	+Ihr habt heute alle Täglichen Quests der Himmelsbrecher abgeschlossen :) Denkt daran, alle Gruppenquests, die ihr aufgegeben oder übersprungen habt, abzuschließen, falls ihr möchtet!
step << Horde
	+Ihr habt heute alle Täglichen Quests von Orgrims Hammer abgeschlossen :) Denkt daran, alle Gruppenquests, die ihr aufgegeben oder übersprungen habt, abzuschließen, falls ihr möchtet!
]])
