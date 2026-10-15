if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Furor von Sturmgrimm - 4 (Laubschattental)
#title Furor von Sturmgrimm

step << Druid
    #season 2
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>Klettert auf den Aldrassil-Baum
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mardant Strongoak|r
    .accept 77571 >> Akzeptiert die Quest Relikte der Kaldorei
    .trainer >> Lernt eure Klassensprüche. Vergewissert euch, dass ihr |T136096:0|t[Mondfeuer] erlernt.
    .target Mardant Strongoak
    .train 410061,1
step << Druid
    #season 2
    .goto Teldrassil,55.0,43.7
    >>Tötet |cRXP_ENEMY_Grell|r und |cRXP_ENEMY_Grellkin|r. Plündert sie für |T134903:0|t[|cRXP_FRIENDLY_Lunar Götze|r]
    .collect 208414,1 -- Lunar Idol (1)
    .mob Grell
    .mob Grellkin
    .train 410061,1
step << Druid
    #season 2
    .equip 18,208414 >> |cRXP_WARN_Legt|r |T134903:0|t[|cRXP_FRIENDLY_Mondgötze|r] an
    .use 208414
    .train 410061,1
step << Druid
    #season 2
    .use 208414 >>|cRXP_WARN_Tötet einen Gegner 6-mal, während sie mit|r |T136096:0|t[Mondfeuer] |cRXP_WARN_gepeinigt sind, um Stapel von|r |T237556:0|t[Inspiration] zu erhalten
    >>|cRXP_WARN_Sobald ihr den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Buff nach 6 Tötungen, benutzt|r |T134903:0|t[|cRXP_FRIENDLY_Mondgötze|r] |cRXP_WARN_erneut, das ihr gerade angelegt habt|r
    .complete 77571,1 -- Learn: Engrave Chest - Fury of Stormrage
    .train 410061,1
step << Druid
    #season 2
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>Klettert auf den Aldrassil-Baum
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mardant Strongoak|r
    .turnin 77571 >> Gebt die Quest Relikte der Kaldorei ab
    .target Mardant Strongoak
    .train 410061,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Samenkorn des Lebens - 10 (Teldrassil)
#title Samenkorn des Lebens

step << Druid
    .goto Teldrassil,64.0,54.0,60,0
    .goto Teldrassil,59.0,60.0,60,0
    .goto Teldrassil,57.0,65.0,60,0
    .goto Teldrassil,69.0,55.0,60,0
    .goto Teldrassil,58.0,73.0,60,0
    .goto Teldrassil,61.0,54.0,60,0
    .goto Teldrassil,66.55,51.52
    >>Beute |T133941:0|t|cRXP_LOOT_Glade Blumen|r auf dem Boden
    >>|cRXP_WARN_Diese sind überall in Teldrassil zu finden|r
    .collect 208609,3 -- Glade Flower (3)
    .train 416050,1
step << Druid
    >>|cRXP_WARN_Benutzt den|r |T133941:0|t|cRXP_LOOT_Glade Blumen|r |cRXP_WARN_um sie zu einer|r |T132767:0|t[Glade Krone] zu kombinieren
    .collect 208760,1 -- Glade Flower (3)
    .train 416050,1
step << Druid
    #completewith NatureSpirit
    .subzone 260 >> Reist nach Starbreeze Village
    .train 416050,1
step << Druid
    #completewith next
    .goto Teldrassil,67.026,58.039
    .cast 414724 >>|cRXP_WARN_Benutzt|r |T132767:0|t[Glade Krone] |cRXP_WARN_auf dem |cRXP_ENEMY_Holzbildnis|r. Dies wird einen |cRXP_ENEMY_Entfesselter Naturgeist|r beschwören.
    >>|cRXP_WARN_Möglicherweise müsst ihr ein paar Minuten warten, bis es respawnt|r
    .use 208760
    .mob Wooden Effigy
    .train 416050,1
step << Druid
    #label NatureSpirit
    .goto Teldrassil,67.026,58.039
    >>Tötet die |cRXP_ENEMY_Unleashed Naturgeist|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Natural Potential|r]
    >>|cRXP_WARN_Das ist eine Elite der Stufe 7|r
    .collect 206963,1 -- Rune of Natural Potential (1)
    .mob Unleashed Nature Spirit
    .train 416050,1
step << Druid
    .train 416050 >> |cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Natural Potential|r] |cRXP_WARN_zum Erlernen von|r |T136152:0|t[Samenkorn des Lebens]
    .use 206963
    .itemcount 206963,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Blühendes Leben - 8 (Teldrassil)
#title Blühendes Leben

step << Druid
    #sticky
    +|cRXP_WARN_Ihr müsst einen Helfer haben, um diese Rune zu sammeln! Sie kann nicht alleine gemacht werden, da ein Spieler bei der Aktivierung eines Beschwörungsrituals helfen muss, das einen zweiten Spieler erfordert!|r
    .train 410033,1
step << Druid
    .goto Teldrassil,33.610,35.732
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Abenteurerüberreste|r
    >>|cRXP_WARN_Dies wird das Beschwörungsritual starten, auf das ein anderer Spieler auch klicken muss.|r
    >>Sammelt |cRXP_FRIENDLY_Abenteurerüberreste|r für |T134419:0|t[|cRXP_FRIENDLY_Rune of Leben|r]
    .collect 206970,1 -- Rune of Life (1)
    .skipgossip
    .target Adventurer's Remains
    .train 410033,1
step << Druid
    .train 410033 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Leben|r] |cRXP_WARN_um zu trainieren|r |T134206:0|t[Blühendes Leben]
    .use 206970
    .itemcount 206970,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Wildes Brüllen - 20 (Dunkelküste)
#title Wildes Brüllen

step << Druid
    #season 2
    #sticky
    +|cRXP_WARN_Hinweis: Ihr müsst Stufe 20 sein, um|r |T132942:0|t[|cRXP_FRIENDLY_Wilder Götze|r] |cRXP_WARN_anzulegen, welches erforderlich ist, um|r |T236167:0|t[Wildes Brüllen] zu erlernen
    .xp 20,1
    .train 407988,1
step << Druid
    #season 2
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Tötet |cRXP_ENEMY_Den Mother|r. Plündert sie für |T132942:0|t[|cRXP_FRIENDLY_Ferocious Götze|r]
    >>|cRXP_WARN_Seid euch der |cRXP_ENEMY_Thistle Cubs bewusst, die euch für 2 Sek. betäuben können.|r
    .collect 208689,1 -- Ferocious Idol (1)
    .mob Den Mother
    .train 407988,1
step << Druid
    #season 2
    .equip 18,208689 >> |cRXP_WARN_Legt|r |T132942:0|t[|cRXP_FRIENDLY_Wilder Götze|r] an
    .use 208689
    .itemcount 208689,1
    .train 407988,1
step << Druid
    #season 2
    .train 407988 >>|cRXP_WARN_Verursacht 20 mal Blutungsschaden durch|r |T132152:0|t[Zerfetzen] |cRXP_WARN_oder|r |T132122:0|t[Krallenhieb] |cRXP_WARN_auf Humanoide, dann benutzt|r |T132942:0|t[|cRXP_FRIENDLY_Wilder Götze|r] |cRXP_WARN_nochmal um |r |T236167:0|t[Wildes Brüllen] zu erlernen
    .use 208689
    .itemcount 208689,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Wildes Brüllen - 20 (Westfall)
#title Wildes Brüllen

step << Druid
    #season 2
    #sticky
    +|cRXP_WARN_Hinweis: Ihr müsst Stufe 20 sein, um|r |T132942:0|t[|cRXP_FRIENDLY_Wilder Götze|r] |cRXP_WARN_anzulegen, welches erforderlich ist, um|r |T236167:0|t[Wildes Brüllen] zu erlernen
    .xp 20,1
    .train 407988,1
step << Druid
    #season 2
    .goto Westfall,56.6,13.2,70,0
    .goto Westfall,52.8,15.4,70,0
    .goto Westfall,44.8,13.8,70,0
    .goto Westfall,41.6,20.6,70,0
    .goto Westfall,56.6,13.2
    >>Tötet |cRXP_ENEMY_Riverpaw Gnolls|r, |cRXP_ENEMY_Riverpaw Späher|r und |cRXP_ENEMY_Riverpaw Mongrels|r. Plündert sie für |T132942:0|t[|cRXP_FRIENDLY_Ferocious Götze|r]
    .collect 208689,1 -- Ferocious Idol (1)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
    .mob Riverpaw Mongrel
    .train 407988,1
step << Druid
    #season 2
    .equip 18,208689 >> |cRXP_WARN_Legt|r |T132942:0|t[|cRXP_FRIENDLY_Wilder Götze|r] an
    .use 208689
    .itemcount 208689,1
    .train 407988,1
step << Druid
    #season 2
    .train 407988 >>|cRXP_WARN_Verursacht 20 mal Blutungsschaden durch|r |T132152:0|t[Zerfetzen] |cRXP_WARN_oder|r |T132122:0|t[Krallenhieb] |cRXP_WARN_auf Humanoide, dann benutzt|r |T132942:0|t[|cRXP_FRIENDLY_Wilder Götze|r] |cRXP_WARN_nochmal um |r |T236167:0|t[Wildes Brüllen] zu erlernen
    .use 208689
    .itemcount 208689,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Sonnenfeuer - 6 (Teldrassil)
#title Sonnenfeuer

step << Druid
    #season 2
    .goto Teldrassil,52.831,78.731,20,0
    .goto Teldrassil,52.988,80.086,15,0
    .goto Teldrassil,52.831,78.731
    >>|cRXP_WARN_Auf dem massiven Baumast werdet ihr 3|r |cRXP_ENEMY_Lunar Stones|r sehen
    >>|cRXP_WARN_Wirkt|r |T136096:0|t[Mondfeuer] |cRXP_WARN_auf alle 3|r |cRXP_ENEMY_Lunar Stones|r |cRXP_WARN_auf dem Ast, dann plündert die Truhe am Pfeil-Ort, die danach erscheint.|r
    .collect 206989,1 -- Rune of the Sun (1)
    .mob Lunar Stone
    .train 416044,1
step << Druid
    #season 2
    .train 416044 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Sonne|r] |cRXP_WARN_zum Erlernen von|r |T236216:0|t[Sonnenfeuer]
    .use 206989
    .itemcount 206989,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Aufschlitzen - 10 (Loch Modan)
#title Aufschlitzen

step << Druid
    #season 2
    .goto Loch Modan,40.371,39.404,10,0
    .goto Loch Modan,39.467,39.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Khara Tiefenwasser|r im Gebäude
    >>|cRXP_BUY_Buy a|r |T237270:0|t[Regenbogenflossenthunfisch Köder]
    .collect 208855,1 -- Rainbow Fin Albacore Chum (1)
    .target Khara Deepwater
    .train 416049,1
step << Druid
    #season 2
    .goto Loch Modan,46.6,35.6
    .use 208855 >> |cRXP_WARN_Benutzt den|r |T237270:0|t[Regenbogenflossenthunfisch Köder] |cRXP_WARN_auf einen|cRXP_ENEMY_ Junger Dreschadon|r um die|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Aufschlitzen|r] zu erhalten
    .collect 208687,1 -- Rune of Lacerate (1)
    .target Young Threshadon
    .train 416049,1
step << Druid
    #season 2
    .train 416049 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune von Aufschlitzen|r] |cRXP_WARN_zum Trainieren von|r |T132131:0|t[Aufschlitzen]
    .use 208687
    .itemcount 208687,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Furor von Sturmgrimm - 4 (Mulgore)
#title Furor von Sturmgrimm


    --Rune of Fury of Stormrage

step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gart|r
    .accept 77648 >>Akzeptiert die Quest Relikte der Tauren
    .trainer >> Benutzt die Klassenzauber von Euch. Stellt sicher, dass ihr |T136096:0|t[Mondfeuer] erlernt
    .target Gart Mistrunner
step << Druid
    #season 2
    .goto Mulgore,60.33,75.10,30,0
    .goto Mulgore,61.62,76.04
    >>Sammelt den |cRXP_PICK_Borstennacken Beute-Behältnis|r für die |T134903:0|t[|cRXP_FRIENDLY_Lunar Götze|r]
    .collect 208414,1,77648,1 --Lunar Idol (1)
    .train 410061,1
step << Druid
    #season 2
    .equip 18,208414 >> Legt die |T134903:0|t[|cRXP_WARN_Lunar Götze|r] |cRXP_FRIENDLY_an|r
    .use 208414
    .train 410061,1
step << Druid
    #season 2
    .use 208414 >>|cRXP_WARN_Tötet Gegner 6-mal, während sie mit|r |T136096:0|t[Mondfeuer] |cRXP_WARN_geplagt sind, um|r |T237556:0|t[Inspiration]-Stapel zu erlangen
    >>|cRXP_WARN_Sobald ihr den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Buff nach 6 Kills habt, benutzt die|r |T134903:0|t[|cRXP_FRIENDLY_Lunar Götze|r] |cRXP_WARN_erneut, welches ihr gerade angelegt habt|r
    .complete 77648,1 -- Learn: Engrave Chest - Fury of Stormrage
    .train 410061,1
step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gart|r
    .turnin 77648 >>Gebt die Quest Relikte der Tauren ab
    .target Gart Mistrunner

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Zerfleischen - 10 (Mulgore)
#title Zerfleischen


    --Rune of Mangle

step
    #season 2
    .goto Mulgore,43.78,10.96,90,0
    .goto Mulgore,39.62,13.35,90,0
    .goto Mulgore,37.12,16.84,90,0
    .goto Mulgore,44.57,17.39,90,0
    .goto Mulgore,48.70,20.85,90,0
    .goto Mulgore,43.78,10.96
    >>Tötet |cRXP_ENEMY_Flachlandstreuner|r und |cRXP_ENEMY_Präriewolfalpha|r. Plündert sie für |T134903:0|t[|cRXP_FRIENDLY_Idol of Bärenwut|r]
    .collect 206954,1 --Idol of Ursine Rage (1)
    .mob Flatland Prowler
    .mob Prairie Wolf Alpha
    .train 410025,1
step
    #season 2
    .equip 18,206954 >> |cRXP_WARN_Legt die|r |T134903:0|t[|cRXP_FRIENDLY_Götze der Bärenwut|r] an
    .use 206954
    .train 410025,1
step
    #completewith next
    +Haltet 50+ Rage für mindestens 60 Sek. um|cRXP_WARN_ |T132135:0|t[Zerfleischen] erlernen zu können|r
step
    #season 2
    .train 410025 >> |cRXP_WARN_Benutzt die|r |T134903:0|t[|cRXP_FRIENDLY_Götze der Bärenwut|r] |cRXP_WARN_um|r |T132135:0|t[Zerfleischen] zu trainieren
    .use 206954
    .itemcount 206954,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Sonnenfeuer - 5 (Mulgore)
#title Sonnenfeuer


    --Rune of Sunfire

step
    #season 2
    .goto Mulgore,35.72,69.57
    >>Wirkt |T136096:0|t[Mondfeuer] auf die drei |cRXP_ENEMY_Lunar Stones|r. Eine Truhe wird zwischen den Steinen erscheinen.
    >>Öffnet die |cRXP_PICK_Mondtruhe|r für die |T134419:0|t[|cRXP_FRIENDLY_Rune der Sonne|r]
    .collect 206989,1 --Rune of the Sun (1)
    .mob Lunar Stone
    .train 416044,1
step
    #season 2
    .train 416044 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Sonne|r] |cRXP_WARN_zum Erlernen von|r |T236216:0|t[Sonnenfeuer]
    .use 206989
    .itemcount 206989,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Blühendes Leben - 10 (Mulgore)
#title Blühendes Leben

    --Rune of Lifebloom

step
    #season 2
    .goto Mulgore,60.39,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Abenteurergeist|r außerhalb der Venture Co. Mine
    >>|cRXP_WARN_Ein anderer Spieler muss auf das Portal klicken. Sammelt die|r |cRXP_FRIENDLY_Abenteurergeist|r |cRXP_WARN_danach für|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Leben|r]
    .collect 206970,1 --Rune of Life (1)
    .target Adventurer's Spirit
    .skipgossip
    .train 410033,1
step << Druid
    #season 2
    .train 410033 >> |cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Leben|r] |cRXP_WARN_zum Erlernen von|r |T134206:0|t[Blühendes Leben]
    .use 206970
    .itemcount 206970,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Samenkorn des Lebens - 8 (Mulgore)
#title Samenkorn des Lebens

    --Rune of Living Seed

step
    #season 2
    .goto Mulgore,58.88,51.18,50,0
    .goto Mulgore,50.94,45.98,50,0
    .goto Mulgore,44.95,46.88,50,0
    .goto Mulgore,39.88,51.61,50,0
    .goto Mulgore,41.36,63.26
    >>Beute |T133941:0|t|cRXP_LOOT_Prairie Blumen|r auf dem Boden
    >>|cRXP_WARN_Diese sind überall in Mulgore zu finden|r
    .collect 206469,3 -- Glade Flower (3)
    .train 416050,1
step
    #season 2
    .use >>|cRXP_WARN_Benutzt den|r |T133941:0|t|cRXP_LOOT_Prairie Blumen|r |cRXP_WARN_um sie zu einer|r |T132767:0|t[Prairie Krone] zu kombinieren
    .collect 206466,1 -- Prairie Crown (1)
    .train 416050,1
step
    #season 2
    #completewith next
    .goto Mulgore,37.70,49.52
    .cast 414724 >>|cRXP_WARN_Benutzt die|r |T132767:0|t[Glade Krone] |cRXP_WARN_auf dem |cRXP_ENEMY_Hölzernen Abbild|r. Das wird einen |cRXP_ENEMY_Entfesselten Naturgeist|r erscheinen lassen
    >>|cRXP_WARN_Ihr könntet möglicherweise ein paar Minuten warten müssen, bis es erneut respawnt|r
    .use 206466
    .mob Wooden Effigy
    .train 416050,1
step
    #season 2
    .goto Mulgore,37.70,49.52
    >>Tötet die |cRXP_ENEMY_Unleashed Naturgeist|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Natural Potential|r]
    >>|cRXP_WARN_Das ist eine Elite der Stufe 7|r
    .collect 206963,1 -- Rune of Natural Potential (1)
    .mob Unleashed Nature Spirit
    .train 416050,1
step
    #season 2
    .train 416050 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Natural Potential|r] |cRXP_WARN_um zu trainieren|r |T136152:0|t[Samenkorn des Lebens]
    .use 206963
    .itemcount 206963,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Aufschlitzen - 15 (The Barrens)
#title Aufschlitzen

    --Rune of Lacerate

step
    #season 2
    #completewith next
    .subzone 386 >>Reist zu den vergessenen Teichen
step
    #season 2
    .goto The Barrens,44.73,22.18
    >>Plündert den |cRXP_PICK_Verlassenes Schnappkiefernest|r auf dem Boden für |T294479:0|t[|cRXP_LOOT_Verlassenes Schnappkieferei|r]
    .collect 208682,1 --Abandoned Snapjaw Egg (1)
    .train 416049,1
step
    #season 2
    #completewith next
    .subzone 387 >>Reist zur Blühenden Oase
step
    #season 2
    .goto The Barrens,48.32,40.25
    >>Öffnet das |cRXP_PICK_Leere Schnappkiefer-Nest|r auf dem Boden für |T134419:0|t[|cRXP_FRIENDLY_Rune of Aufschlitzen|r]
    .collect 208687,1 --Unbalanced Idol (1)
    .train 416049,1
step
    #season 2
    .train 416049 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune von Aufschlitzen|r] |cRXP_WARN_zum Trainieren von|r |T132131:0|t[Aufschlitzen]
    .use 208687 --Rune of Lacerate (1)
    .itemcount 208687,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Wildes Brüllen - 15 (The Barrens)
#title Wildes Brüllen

    --Rune of Savage Roar

step
    #season 2
    #sticky
    +|cRXP_WARN_Hinweis: Du musst Level 20 sein, um das anzulegen|r |T132942:0|t[|cRXP_FRIENDLY_Ferocious Götze|r] |cRXP_WARN_was erforderlich ist, um|r |T236167:0|t[Wildes Brüllen]
    .xp 20,1
    .train 407988,1
step
    #season 2
    .goto The Barrens,43.57,23.48,50,0
    .goto The Barrens,43.84,21.47,50,0
    .goto The Barrens,45.04,20.04,50,0
    .goto The Barrens,46.60,22.98,50,0
    .goto The Barrens,45.71,25.63,50,0
    .goto The Barrens,43.55,26.39,50,0
    .goto The Barrens,42.21,26.92,50,0
    .goto The Barrens,42.02,24.68,50,0
    .goto The Barrens,43.57,23.48
    >>Tötet |cRXP_ENEMY_Kolkar Wranglers|r und |cRXP_ENEMY_Kolkar Stormers|r. Plündert sie für |T134237:0|t[|cRXP_LOOT_Kolkar Booty Schlüssel|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .train 407988,1
step
    #season 2
    #loop
    .goto The Barrens,44.3,37.7,0
    .goto The Barrens,43,23.5,0
    .goto The Barrens,52.7,41.8,0
    .goto The Barrens,44.3,37.7,20,0
    .goto The Barrens,43,23.5,20,0
    .goto The Barrens,52.7,41.8,20,0
    >>Öffnet |cRXP_PICK_Kolkar Beute|r Truhe für |T132942:0|t[|cRXP_FRIENDLY_Wilder Götze|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .collect 208689,1 --Ferocious Idol (1)
    .train 407988,1
step
    #season 2
    .equip 18,208689 >> |cRXP_WARN_Anlegen|r |T132942:0|t[|cRXP_FRIENDLY_Ferocious Götze|r]
    .use 208689
    .itemcount 208689,1
    .train 407988,1
step
    #season 2
    .train 407988 >>|cRXP_WARN_Verursacht 20 mal Blutungsschaden durch|r |T132152:0|t[Zerfetzen] |cRXP_WARN_oder|r |T132122:0|t[Krallenhieb] |cRXP_WARN_auf Humanoide, dann benutzt|r |T132942:0|t[|cRXP_FRIENDLY_Wilder Götze|r] |cRXP_WARN_nochmal um |r |T236167:0|t[Wildes Brüllen] zu erlernen
    .use 208689
    .itemcount 208689,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Gürtel
#name Berserker - 28 (Tausend Nadeln)
#title Berserker

step
    #optional
    +|cRXP_WARN_Du musst mindestens Level 28 sein, um zu erlernen|r |T236149:0|t[Berserker]
    .xp >29,1
step
    #optional
    .train 424760,1
    .train 5209 >> |cRXP_WARN_Ihr müsst|r |T132117:0|t[Herausforderndes Gebrüll] |cRXP_WARN_trainiert haben, um die|r |T236149:0|t[Berserker] |cRXP_WARN_Rune|r
step
    #completewith next
    .train 424760,1
    .zone Thousand Needles >>Laufe nach Tausend Nadeln
step
    .train 424760,1
    .goto Thousand Needles,68.690,55.155
    .aura 435081 >> |cRXP_WARN_Stellt euch neben die |cRXP_PICK_Wildtierbild|r-Statue, um den|r |T134912:0|t[Wildtierbild] |cRXP_WARN_Stärkungszauber zu erhalten|r
step
    #completewith next
    .train 424760,1
    .goto Thousand Needles,68.690,55.155
    .cast 5209 >> |cRXP_WARN_Wechselt in|r |T132276:0|t[Bärengestalt] |cRXP_WARN_und wirkt|r |T132117:0|t[Herausforderndes Gebrüll] |cRXP_WARN_um|r |cRXP_ENEMY_Zai'enki|r |cRXP_WARN_zu beschwören (Stufe 28 Elite)|r
step
    .train 424760,1
    .goto Thousand Needles,68.690,55.155
    >>Tötet |cRXP_ENEMY_Zai'enki|r. Plündert sie für |T134912:0|t[|cRXP_FRIENDLY_Idol of the Heckler|r]
    .collect 213594,1
    .mob Zai'enki
step
    .train 424760,1
    .equip 18,213594 >> Legt |T134912:0|t[|cRXP_FRIENDLY_Götze der Zwischenrufe|r] an
    .use 213594
step
    #title Erhaltet 5x |T237556:0|t[Inspiration aufbauen]
    .itemcount 213594,1
    .train 424760,1
    .aura 408828 >> |cRXP_WARN_Wirkt|r |T132117:0|t[Herausforderndes Gebrüll] |cRXP_WARN_um mindestens 2 Gegner zu reizen und einen von ihnen zu töten, während sie die|r |T132117:0|t[Herausforderndes Gebrüll] |cRXP_WARN_Debuff haben. Dies gibt euch einen Stack des|r |T237556:0|t[Inspiration aufbauen] |cRXP_WARN_Stärkungszaubers. Wiederholt dies 5-mal, bis ihr den|r |T136116:0|t[Inspiriert] |cRXP_WARN_Stärkungszauber erhält|r
    *|cRXP_WARN_Es wird empfohlen, gegen einen Gegner zu kämpfen und ihn fast zu töten, dann einen 2. zu sich zu ziehen und|r |T132117:0|t[Herausforderndes Gebrüll]|cRXP_WARN_ zu wirken, dann den schwachen Gegner zu töten. Ihr verliert alle Stacks von|r |T237556:0|t[Inspiration aufbauen] |cRXP_WARN_wenn ihr sterbt|r
step
    .itemcount 213594,1
    .use 213594
    .train 424760 >> |cRXP_WARN_Benutzt|r |T134912:0|t[|cRXP_FRIENDLY_Götze der Zwischenrufe|r] |cRXP_WARN_zum Trainieren von|r |T236149:0|t[Berserker]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Stiefel
#name Traumzustand - 33 (Desolace)
#title Traumzustand

step
    #completewith next
    .train 410060,1
    .zone Desolace >>Reist nach Desolace
step
    .train 410060,1
    #loop
    .goto Desolace,70.6,39.8,0
    .goto Desolace,70.6,39.8,25,0
    .goto Desolace,69.2,46.6,25,0
    .goto Desolace,68.6,52.6,25,0
    >>Tötet |cRXP_ENEMY_Kolkars|r und plündert sie für |T134187:0|t[Ausgedörrt Samenkapsel]
    .collect 213574,1
    .mob Kolkar Centaur
    .mob Kolkar Mauler
    .mob Kolkar Scout
    .mob Kolkar Windchaser
step
    .train 410060,1
    >>Schwimmt im Wasser und wartet, bis es sich in |T134208:0|t[Satyrweed Bulb] verwandelt
    .goto Desolace,70.8,71.8
    .collect 206966,1
step
    .goto Desolace,75.5,20.7
    .train 410060 >>Klickt |cRXP_PICK_Sandiger Lehm|r, um den Samen zu pflanzen und |T136090:0|t[Traumzustand] zu erlernen
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Gürtel
#name Pflege - 35 (Azeroth)
#title Pflege

-- Probably needs better waypoints to avoid some dangerous mobs or anything else that could kill you

step
    #completewith next
    .train 410059,1
    .goto Dustwallow Marsh,30.2,47.3,200,0
    .zone Dustwallow Marsh >>Reist nach Düstermarschen
step
    .train 410059,1
    >>Tötet den |cRXP_ENEMY_Faulendes Urtum|r. Plündert es für das |T134217:0|t[Verdorben Seed]. |cRXP_WARN_Klickt es in euren Taschen|r
    #loop
    .goto Dustwallow Marsh,43.6,41.0,40,0
    .goto Dustwallow Marsh,40.91,43.52,40,0
    .collect 212693,1
    .accept 79348 >> Akzeptiert die Quest Das verlorene Urtum
    .mob Rotting Ancient
step
    #completewith next
    .train 410059,1
    .zone Moonglade >> Benutzt |T135758:0|t[Teleportieren Mondlichtung]
step
    #completewith next
    +|cRXP_WARN_Ihr müsst jede kommende Anweisung streng befolgen. Sterben, phasenverschoben zu werden, beschwört, Teleportation nutzen oder den "Ehrenloses Ziel" Buff bekommen können die Quest fehlschlagen (ihr verliert den Buff), also nutzt keine Flugrouten in umstrittene Bereiche.|r
step
    .train 410059,1
    .goto Moonglade,41.48,43.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orokai|r
    *|cRXP_WARN_Das Annehmen der nächsten Quest startet einen 1-Stunden-Timer. Stellt sicher, dass ihr die volle Stunde einplanen könnt.|r
    .turnin 79348 >>Gebt die Quest Das verlorene Urtum ab
    .accept 79377 >>Akzeptiert die Quest Die verlorenen Schösslinge
    .timer 3600,Wasser Dauer
    .target Orokai
step << Alliance
    .train 410059,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sindrayl|r
    .goto Moonglade,48.11,67.37
    .fly Auberdine >>Fliege nach Auberdine
    .target Sindrayl
step << Alliance
    .train 410059,1
    .goto Darkshore,36.90,44.13,10,0
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>Nehmt das Boot nach Hafen von Menethil. |cRXP_WARN_LOG OUT AFTER THE BOAT STARTS MOVING. WAIT 40 SECONDS AND THEN LOG BACK IN|r
step << Alliance
    #completewith next
    .zone Arathi Highlands >>Reist nach Arathihochland. |cRXP_WARN_DON'T USE THE FLIGHT MASTER|r
step << Alliance
    .train 410059,1
    >>Benutzt |T132852:0|t[Wasser von Elun'ara] auf dem |cRXP_FRIENDLY_Urtumschössling|r
    .complete 79377,3 --Fall Sapling
    .use 213036
    .goto Arathi Highlands,46.98,71.83
    .target Ancient Sapling
step << Alliance
    #completewith next
    .zone Alterac Mountains >>Reist nach Alteracgebirge. |cRXP_WARN_DON'T USE THE FLIGHT MASTER|r
step << Alliance
    .train 410059,1
    >>Benutzt |T132852:0|t[Wasser von Elun'ara] auf dem |cRXP_FRIENDLY_Urtumschössling|r
    .complete 79377,4 --Winter Sapling
    .use 213036
    .goto Alterac Mountains,58.27,43.57
    .target Ancient Sapling
step << Alliance
    #completewith next
    .zone Western Plaguelands >>Folgt dem Weg nach Westliche Pestländer
step << Alliance
    .train 410059,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bibilfaz Featherwhistle|r
    .goto Western Plaguelands,42.93,85.07
    .fly Stormwind >>Fliege nach Sturmwind
    .target Bibilfaz Featherwhistle
step << Alliance
    #completewith AncientSapling3Alliance
    .goto Deadwind Pass,32.5,35,7,50,0
    .zone Deadwind Pass >>Reist zum Gebirgspass der Totenwinde
step << Alliance
    #completewith AncientSapling3Alliance
    .zone Swamp of Sorrows >>Folgt dem Weg nach Sümpfe des Elends
step << Alliance
    #label AncientSapling3Alliance
    .train 410059,1
    >>Benutzt |T132852:0|t[Wasser von Elun'ara] auf dem |cRXP_FRIENDLY_Urtumschössling|r
    .complete 79377,2 --Spring Sapling
    .use 213036
    .goto Swamp of Sorrows,17.68,42.41,50,0
    .goto Swamp of Sorrows,10.98,38.40
    .target Ancient Sapling
step << Alliance
    #completewith next
    .goto Swamp of Sorrows,3.5,61.3,50,0
    .goto Deadwind Pass,32.3,36.0,50,0
    .goto Duskwood,44.6,87.3,50,0
    .zone Stranglethorn Vale >>Folgt dem Weg zum Schlingendorntal
step << Alliance
    .train 410059,1
    >>Benutzt |T132852:0|t[Wasser von Elun'ara] auf dem |cRXP_FRIENDLY_Urtumschössling|r
    .complete 79377,1 --Summer Sapling
    .use 213036
    .goto Stranglethorn Vale,32.74,64.82
    .target Ancient Sapling
step << Horde
    .train 410059,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bunthen Plainswind|r
    .goto Moonglade,44.29,45.86
    .skipgossip 11798,1
    .zone Thunder Bluff >>Fliege nach Donnerfels
    .target Bunthen Plainswind
step << Horde
    .train 410059,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Tal|r
    .goto Thunder Bluff,47.00,49.82
    .fly Ratchet >>Fliege nach Ratschet
    .target Tal
step << Horde
    .goto The Barrens,63.677,38.618
    .zone Stranglethorn Vale >> Nehmt das Boot nach Beutebucht. |cRXP_WARN_LOG OUT AFTER THE BOAT STARTS MOVING. WAIT 40 SECONDS AND THEN LOG BACK IN.|r
step << Horde
    .train 410059,1
    >>Benutzt |T132852:0|t[Wasser von Elun'ara] auf dem |cRXP_FRIENDLY_Urtumschössling|r
    .complete 79377,1 --Summer Sapling
    .use 213036
    .goto Stranglethorn Vale,32.74,64.82
    .target Ancient Sapling
step << Horde
    #completewith next
    .goto Duskwood,44.0,66.4,100,0
    .goto Duskwood,89,4,41.2,50,0
    .goto Deadwind Pass,58.3,42.0,50,0
    .zone Swamp of Sorrows >>Go North through Dämmerwald und Gebirgspass der Totenwinde into Sümpfe des Elends. |cRXP_WARN_Meidet Dunkelhain|r
step << Horde
    .train 410059,1
    >>Benutzt das |T132852:0|t[Wasser der Elun'ara] auf den |cRXP_FRIENDLY_Urtumschössling|r
    .complete 79377,2 --Spring Sapling
    .use 213036
    .goto Swamp of Sorrows,17.68,42.41,50,0
    .goto Swamp of Sorrows,10.98,38.40
    .target Ancient Sapling
step << Horde
    .goto Swamp of Sorrows,46.10,54.70
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Breyk|r
    .fly Undercity >>Fliege nach Unterstadt
	.target Breyk
step << Horde
    .goto Tirisfal Glades,61.6,62.2,50,0
    .goto Tirisfal Glades,54.7,73.0,50,0
    .goto Silverpine Forest,66.7,8.8,50,0
    .zone Alterac Mountains >>|cRXP_WARN_Verlasst Unterstadt, geht nach Silberwald und schwimmt durch den See zum Alteracgebirge|r
step << Horde
    .train 410059,1
    >>Benutzt |T132852:0|t[Wasser von Elun'ara] auf dem |cRXP_FRIENDLY_Urtumschössling|r
    .complete 79377,4 --Winter Sapling
    .use 213036
    .goto Alterac Mountains,58.27,43.57
    .target Ancient Sapling
    step << Horde
    #completewith next
    .zone Arathi Highlands >>Lauft nach Arathihochland.
step << Horde
    .train 410059,1
    >>Benutzt |T132852:0|t[Wasser von Elun'ara] auf dem |cRXP_FRIENDLY_Urtumschössling|r
    .complete 79377,3 --Fall Sapling
    .use 213036
    .goto Arathi Highlands,46.98,71.83
    .target Ancient Sapling
step
    #completewith next
    .train 410059,1
    .zone Moonglade >> Benutzt |T135758:0|t[Teleportieren Mondlichtung]
step
    .train 410059,1
    .goto Moonglade,41.48,43.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orokai|r
    .turnin 79377 >>Gebt die Quest Die verlorenen Schösslinge ab
    .target Orokai
step
    .itemcount 213594,1
    .use 213594
    .train 410059 >>Benutzt |T134419:0|t[|cRXP_FRIENDLY_Rune of Nourishing|r] um |T236162:0|t[Pflege] zu erlernen
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Armschienen
#name Erblühen - 45 (Azeroth)

step
    #optional
    .train 431468,1
    .train 2728 >> |cRXP_WARN_Ihr müsst|r |T135952:0|t[Fluch aufheben] |cRXP_WARN_trainiert haben, um die|r |T134222:0|t[Erblühen] |cRXP_WARN_Rune|r
step
    #optional
    .train 431468,1
    .train 8946 >> |cRXP_WARN_Ihr müsst|r |T136067:0|t[Vergiftung heilen] |cRXP_WARN_trainiert haben, um die|r |T134222:0|t[Erblühen] |cRXP_WARN_Rune|r
step
    #optional
    .train 431468,1
    .train 16914 >> |cRXP_WARN_Ihr müsst|r |T136018:0|t[Hurrikan] |cRXP_WARN_trainiert haben, um die|r |T134222:0|t[Erblühen] |cRXP_WARN_Rune|r
step
    #optional
    .train 431468,1
    .train 740 >> |cRXP_WARN_Ihr müsst|r |T136107:0|t[Gelassenheit] |cRXP_WARN_trainiert haben, um die|r |T134222:0|t[Erblühen] |cRXP_WARN_Rune|r
step
    #optional
    .train 431468,1
    .train 768 >> |cRXP_WARN_Ihr müsst|r |T132115:0|t[Katzengestalt] |cRXP_WARN_trainiert haben, um die|r |T134222:0|t[Erblühen] |cRXP_WARN_Rune|r
step
    #completewith next
    .zone Feralas >>Reist nach Feralas
    .train 431468,1
step
    .train 431468,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tyrisius|r |cRXP_WARN_im Turm|r
    .goto Feralas,57.2,69.0
    .accept 81924 >>Akzeptiert die Quest Weisheit der Wächter
    .target Tyrisius
step
    .train 431468,1
    .aura 446488 >>Klickt auf den |cRXP_PICK_Schrein der Wächterin|r um den |T132145:0|t[Pflicht des Wächters] Buff zu bekommen
    .goto Feralas,58.7,52.4
step
    .train 431468,1
    #sticky
    #label MarkoftheWarden
    .aura 446467 >>Folgt den folgenden Schritten um den |T236157:0|t[Mal des Wächters] Buff zu bekommen
step
    .train 431468,1
    #loop
    .goto Feralas,61.8,55.6,35,0
    .goto Feralas,58.6,66.2,35,0
    >>Greift |cRXP_ENEMY_Gordunni Hexenmeister|r an. |cRXP_WARN_Wartet bis sie benutzen|r |T136121:0|t[Schrumpfen] |cRXP_WARN_auf euch.|r
    .cast 2728 >>|cRXP_WARN_Benutzt|r |T135952:0|t[Fluch aufheben] |cRXP_WARN_um|r |T136121:0|t[Schrumpfen] |cRXP_WARN_zu entfernen|r
    .mob Gordunni Warlock
step
    .train 431468,1
    .goto Feralas,73.8,61.6
    >>Greift |cRXP_ENEMY_Wespe der Zukk'ash|r an. |cRXP_WARN_Wartet bis sie benutzen|r |T136016:0|t[Gift] |cRXP_WARN_auf euch.|r
    .cast 526 >>|cRXP_WARN_Benutzt|r |T135952:0|t[Vergiftung heilen] |cRXP_WARN_um|r |T136016:0|t[Gift] |cRXP_WARN_zu entfernen|r
    .mob Zukk'ash Wasp
step
    #requires MarkoftheWarden
    .train 431468,1
    >>|cRXP_WARN_Klickt auf / Lauft zu|r |cRXP_PICK_Schrein des Wächters|r |cRXP_WARN_um den |cRXP_ENEMY_Avatar des Treants|r zu beschwören|r
    >>Tötet die |cRXP_ENEMY_Treant Avatar|r.
    .complete 81924,1 --Guardian of Feralas
    .goto Feralas,58.7,52.4
    .mob Treant Avatar
step
    .train 431468,1
    #completewith next
    .zone Azshara >>Reist nach Azshara (Mondlichtung Teleporter -> Azshara Flugroute)
step
    .train 431468,1
    .goto Azshara,34.6,49.0
    .gossip 441947,0 >>Klickt auf den |cRXP_PICK_Schrein der Wildtiere|r
    *|cRXP_WARN_Überspringt diesen Schritt manually if it doesn't complete|r
step
    .train 431468,1
    >>Tötet |cRXP_ENEMY_Kind von Apa'ro|r |cRXP_WARN_mit Nahkampf-Fähigkeiten (geht in Katzengestalt oder Bärengestalt)|r. Plündert es für das |T134338:0|t[|cRXP_LOOT_Heiliges Hirschherz|r]
    .collect 221326,1
    .mob Child of Apa'ro
step
    #completewith next
    .itemcount 221362,1
    .use 221326
    .goto Azshara,34.6,49.0
    .cast 446509 >>|cRXP_WARN_Benutzt|r |T134338:0|t[|cRXP_LOOT_Heiliges Hirschherz|r] |cRXP_WARN_neben dem|r |cRXP_PICK_Schrein der Wildtiere|r |cRXP_WARN_um den |rAvatar des Hippogryphen|cRXP_ENEMY_ zu beschwören|r
    .train 431468,1
step
    .train 431468,1
    >>Tötet die |cRXP_ENEMY_Hippogryph Avatar|r
    .goto Azshara,34.6,49.0
    .complete 81924,3 --Guardian of Azshara
    .mob Hippogryph Avatar
step
    .train 431468,1
    #completewith next
    .zone The Hinterlands >>Reise in die Hinterlande
step
    .train 431468,1
    .goto The Hinterlands,66.2,53.1
    .gossip 441946,0 >>Klickt auf den |cRXP_PICK_Schrein des Mondes|r oben auf dem Hügel
    *|cRXP_WARN_Überspringt diesen Schritt manually if it doesn't complete|r
step
    .train 431468,1
    .cast 740 >>|cRXP_WARN_Use|r |T136107:0|t[Gelassenheit]
step
    .train 431468,1
    .cast 16914 >>|cRXP_WARN_Use|r |T136018:0|t[Hurrikan]
step
    .train 431468,1
    >>Tötet die |cRXP_WARN_Moonkin Avatar|r
    .goto The Hinterlands,66.2,53.1
    .complete 81924,2 --Guardian of the Hinterlands
    .mob Moonkin Avatar
step
    #completewith next
    .zone Feralas >>Reist nach Feralas
    .train 431468,1
step
    .train 431468,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tyrisius|r |cRXP_WARN_im Turm|r
    .goto Feralas,57.2,69.0
    .turnin 81924 >>Gebt die Quest Weisheit der Wächter ab
    .target Tyrisius
step
    .itemcount 220360,1
    .use 220360
    .train 431468 >>Benutzt |T134419:0|t[|cRXP_FRIENDLY_Rune der Erblühen|r] um |T134222:0|t[Erblühen] zu erlernen

]])


-- RXPGuides.RegisterGuide([[
-- #classic
-- << Druid SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Bracers
-- #name Improved Frenzied Regeneration
-- for phase 3


-- ]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Helm
#name Orkanwinde - 40 (Feralas)

step
    #completewith NamidaGrimtotem
    .train 431451,1
    .zone Feralas >>Reist nach Feralas
step
    #label NamidaGrimtotem
    .train 431451,1
    >>Tötet |cRXP_ENEMY_Namida Grimtotem|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of the Windhose|r]
    .goto Feralas,66.8,38.6
    .collect 220754,1
    .mob Namida Grimtotem
step
    .itemcount 220754,1
    .use 220754
    .train 431451 >> |cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Windhose|r] |cRXP_WARN_zum Erlernen|r |T236154:0|t[Orkanwinde]

]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Armschienen
#name Das Feuer Elunes - 45 (Azshara)

step
    #completewith next
    .zone Azshara >>Reise nach Azshara
    .train 416051,1
step
    --PERMOK: Check coordiantes
    .train 416051,1
    >>Klickt |cRXP_PICK_Traveller's Knapsack|r, um |T236229:0|t[|cRXP_LOOT_Field Medicine Kit|r] und |T133741:0|t[|cRXP_LOOT_Keldara's Holzscheit|r] zu plündern
    .goto Azshara,20.61,61.97
    .collect 221018,1
    .collect 221017,1
step
    .train 416051,1
    --PERMOK: Fix coordiantes
    #loop
    .goto Azshara,20,65,30,0
    .goto Azshara,20,62,30,0
    .goto Azshara,21,61,30,0
    >>Hebt 3 |T134218:0|t[|cRXP_PICK_Satyrweed Samples|r] auf
    .collect 221019,3
step
    >>|cRXP_WARN_Benutzt die|r |T236229:0|t[|cRXP_LOOT_Feldmedizin-Set|r] |cRXP_WARN_um die Proben zur|r |T236868:0|t[Satyrkrauttinktur] zu mischen
    .collect 221199,1
step
    .train 416051,1
    #loop
    .goto Azshara,16.0,49.6,30,0
    .goto Azshara,18.6,66.6,30,0
    .goto Azshara,21.0,56.2,30,0
    >>Sucht nach einem |cRXP_ENEMY_Donnerkopfhippogryph|r mit dem |T136134:0|t[Satyrverderbnis] Schwächungszauber
    *|cRXP_WARN_Wenn sie den Debuff haben, stoßen sie eine grüne Giftwolke aus|r.
    .cast 2637 >>Benutzt |T136090:0|t[Winterschlaf] auf den |cRXP_ENEMY_Donnerkopfhippogryph|r
    .mob Thunderhead Hippogryph
step
    .train 416051,1
    >>|cRXP_WARN_Benutzt die|r |T236868:0|t[Satyrkrauttinktur] |cRXP_WARN_auf den |cRXP_ENEMY_Donnerkopfhippogryph|r, um den|r |T136134:0|t[Satyrverderbnis] |cRXP_WARN_Schwächungszauber|r zu entfernen und die |T134419:0|t[|cRXP_FRIENDLY_Rune of the Mond Goddess|r] zu erhalten
    .itemcount 221199,1
    .use 221199
    .collect 221020,1
    .mob Thunderhead Hippogryph
step
    .itemcount 221020,1
    .use 221020
    .train 416051 >> |cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Windhose|r] |cRXP_WARN_zum Erlernen|r |T236154:0|t[Orkanwinde]
]])

-- RXPGuides.RegisterGuide([[
-- #classic
-- << Druid SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Helmet
-- #name Gore
-- for phase 3


-- ]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Helm
#name Verbesserte Baumrinde - 44 (Tanaris)

step
    #optional
    .train 431449,1
    .train 22812 >> |cRXP_WARN_Ihr müsst|r |T136097:0|t[Baumrinde] |cRXP_WARN_trainiert haben, um die|r |T136097:0|t[Verbesserte Baumrinde] |cRXP_WARN_Rune|r
step
    #completewith next
    .zone Tanaris >>Lauf nach Tanaris
    .train 431449,1
step
    #loop
    .goto Tanaris,28.2,63.0,40,0
    .goto Tanaris,28.2,68.6,40,0
    .goto Tanaris,30.8,63.4,40,0
    >>Tötet |cRXP_ENEMY_Thistleshrub Dew Collector|r und |cRXP_ENEMY_Thistleshrub Rootshaper|r. Plündert sie für |T136061:0|t[|cRXP_LOOT_Idol of the Wütend Shambler|r]
    .collect 220915,1
    .mob Thistleshrub Dew Collector
    .mob Thistleshrub Rootshaper
    .train 431449,1
step
    .equip 18,220915 >>|cRXP_WARN_Legt|r |T136061:0|t[|cRXP_FRIENDLY_Götze des erzürnten Schlurfers|r] an
    .train 431449,1
step
    .aura 408828 >>Tötet |cRXP_WARN_fünf Feinde mit einem Naturschaden-Zauber (z.B. Zorn) während ihr unter dem Effekt von|r |T136097:0|t[Baumrinde] seid.
    *Benutzt |T136097:0|t[Baumrinde] |cRXP_WARN_wenn der Feind niedrige Lebensenergie hat und beendigt ihn mit Zorn oder einem anderen Naturschaden-Zauber|r
    .train 431449,1
step
    .itemcount 221020,1
    .use 221020
    .train 431449 >> |cRXP_WARN_Benutzt den|r |T136061:0|t[|cRXP_FRIENDLY_Götze des erzürnten Schlurfers|r] |cRXP_WARN_um zu trainieren|r |T136097:0|t[Verbesserte Baumrinde]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Verschleierung
#name Verbesserter Prankenhieb - 50 (Krater von Un'Goro)
#title Verbesserter Prankenhieb

step
    #completewith next
    .train 439765,1
    .zone Un'Goro Crater >>Reist nach Krater von Un'Goro
step
    .train 439765,1
    .goto Un'Goro Crater,68.0,51.4
    >>Tötet |cRXP_ENEMY_Ravasaurs|r, |cRXP_ENEMY_Ravasaur Hunters|r und |cRXP_ENEMY_Venomhide Ravasaurs|r. Plündert sie für |T134912:0|t[|cRXP_FRIENDLY_Idol of the Jägerin|r]
    .collect 227444,1
    .mob Venomhide Ravasaur
    .mob Ravasaur Hunter
    .mob Ravasaur
step
    .train 439765,1
    .equip 18,227444 >> Legt |T134912:0|t[|cRXP_FRIENDLY_Götze der Jägerin|r] an
    .use 227444
step
    .goto Un'Goro Crater,68.0,51.4
    #title Erhaltet 5x |T237556:0|t[Inspiration aufbauen]
    .itemcount 227444,1
    .train 439765,1
    .aura 408828 >> |cRXP_WARN_Greift einen |cRXP_ENEMY_Ravasaurus|r an bis sie ungefähr 5-10% Lebensenergie haben und stellt sicher, dass ihr 5 Kombo-Punkte auf ihnen habt|r
    >>Wenn sie 5-10% Leben haben, wirkt |T136090:0|t[Winterschlaf] |cRXP_WARN_dann wechselt in|r |T132115:0|t[Katzengestalt] |cRXP_WARN_und wirkt|r |T132127:0|t[Wilder Biss] |cRXP_WARN_, um sie zu töten und einen Stapel|r |T237556:0|t[Inspiration aufbauen] |cRXP_WARN_zu erhalten|r
    >>|cRXP_WARN_Wiederholt diesen Vorgang 5-mal|r
    .mob Venomhide Ravasaur
    .mob Ravasaur Hunter
    .mob Ravasaur
step
    .itemcount 227444,1
    .use 227444
    .train 439765 >> |cRXP_WARN_Benutzt|r |T134912:0|t[|cRXP_FRIENDLY_Götze der Jägerin|r] |cRXP_WARN_um zu trainieren|r |T134296:0|t[Verbesserter Prankenhieb]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Verschleierung
#name Baum des Lebens - 50 (Teufelswald)
#title Baum des Lebens

step
    #completewith next
    .train 439767,1
    .zone Felwood >>Lauf zum Teufelswald
step
    .train 439767,1
    #loop
    .goto Felwood,42,15,70,0
    .goto Felwood,42,19,70,0
    .goto Felwood,42,15,0
    .goto Felwood,42,19,0
    >>|cRXP_WARN_Sprecht mit einem|r |cRXP_FRIENDLY_Rachsüchtiger Irrwisch|r |cRXP_WARN_im nördlichen Teufelswald, folgt ihm dann durch die Jadefeuerschlucht und tötet alle |cRXP_ENEMY_Satyrs|r, durch die er läuft|r
    >>|cRXP_WARN_Der |cRXP_FRIENDLY_Rachsüchtig Irrwisch|r hat mehrere Spawn-Standorte. Wenn ihr einen anderen Druiden bereits mit dem |cRXP_FRIENDLY_Rachsüchtig Irrwisch|r seht, könnt ihr ihm helfen und erhaltet trotzdem Kredit|r
    >>Nach Abschluss lässt der |cRXP_FRIENDLY_Rachsüchtiger Irrwisch|r das |cRXP_PICK_Gift of the Irrwisch|r auf den Boden fallen. Plündert es für die |T134419:0|t[|cRXP_FRIENDLY_Rune des Weltenbaums|r]
    .collect 227746,1
    .unitscan Vengeful Wisp
step
    .itemcount 227746,1
    .use 227746
    .train 439767 >> Benutzt die |T134419:0|t[|cRXP_WARN_Rune des Weltenbaums|r] |cRXP_FRIENDLY_um|r |T132145:0|t[Baum des Lebens] |cRXP_WARN_zu erlernen|r
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Verschleierung
#name Sternenregen - 60 (Winterquell)
#title Sternenregen

step
    #completewith next
    .train 439770,1
    .zone Winterspring >>Reist nach Winterquell
    >>|cRXP_WARN_Hinweis: Für diese Rune müsst ihr einen Level-58-Elite töten. Ladet Freunde ein, um euch zu helfen|r
step
    .train 439770,1
    #loop
    .goto Winterspring,64.8,19.4,50,0
    .goto Winterspring,63.8,16.4
    >>Tötet |cRXP_ENEMY_Arcterris|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of the Sternschnuppe|r]
    >>|cRXP_WARN_Hinweis: |cRXP_ENEMY_Arcterris|r ist ein Level-58-Elite. Ladet Freunde ein, um euch zu helfen|r
    .collect 227749,1
    .mob Arcterris
step
    .itemcount 227749,1
    .use 227749
    .train 439770 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Sternschnuppe|r] |cRXP_WARN_zum Trainieren von|r |T236168:0|t[Sternenregen]
]])
