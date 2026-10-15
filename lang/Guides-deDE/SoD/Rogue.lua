if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Schattenschlagschaden - 3 (Wald von Elwynn)
#title Schattenschlagschaden

step << Rogue
    #season 2
    .goto Elwynn Forest,52.544,51.922
    >>|cRXP_WARN_Öffnet die |cRXP_PICK_Lagertruhe der Defias|r auf dem Boden. Plündert sie für|r |T134419:0|t|cRXP_LOOT_[Rune des Schattenschlags]|r
    .collect 204795,1 -- Rune of Shadowstrike (1)
    .train 400105,1
step << Rogue
    #season 2
    .train 400105 >>|cRXP_WARN_Benutzt die|r |T134419:0|t|cRXP_LOOT_[Rune des Schattenschlags]|r |cRXP_WARN_um|r |T132291:0|t[Schattenschlag] zu erlernen
    .use 204795
    .itemcount 204795,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Schattenschlagschaden - 3 (Dun Morogh)
#title Schattenschlagschaden

step
    #optional
    #label FrostMCave1
    #completewith Rune
    .goto 1426,27.098,80.707,20 >> Betretet die Höhle der Frostmähnen
step
    #optional
    #requires FrostMCave1
    #completewith Rune
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >> Reist zum |cRXP_PICK_Frostmane Beute Beutelager der Frostmane|r im Inneren
step
    .goto Dun Morogh,30.773,80.063
    >>Öffnet die |cRXP_PICK_Beutelager der Frostmane|r auf dem Boden im Inneren. Plündert sie für die |T134419:0|t|cRXP_LOOT_[Rune des Schattenschlags]|r
    .collect 204795,1 --Rune of Shadowstrike (1)
    .train 400105,1
step
    .train 400105 >>|cRXP_WARN_Benutzt die|r |T134419:0|t|cRXP_LOOT_[Rune des Schattenschlags]|r |cRXP_WARN_um|r |T133816:0|t[Handschuhe prägen - Schattenschlag] zu lernen
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Schattenschlagschaden - 3 (Laubschattental)
#title Schattenschlagschaden

step << Rogue
    #season 2
    .goto Teldrassil,57.922,40.687,25,0
    .goto Teldrassil,58.709,38.782,10,0
    .goto Teldrassil,59.15,40.66,20,0
    .goto Teldrassil,59.674,42.613
    >>|cRXP_WARN_Macht von Euch Weg die Rampe auf dem Aldrassil-Baum hinauf und springt auf das Dach|r
    >>|cRXP_WARN_Der |cRXP_PICK_Götze|r befindet sich oben auf dem Dach|r
    >>Öffnet |cRXP_PICK_Götze|r. Plündert |T134419:0|t|cRXP_LOOT_[Rune des Schattenschlags]|r
    >>|cRXP_WARN_Falls ihr Schwierigkeiten habt, auf das Dach zu springen, versucht über das Geländer zu springen, während ihr die Rampe hinabläuft|r
    .collect 204795,1 -- Rune of Shadowstrike (1)
    .train 400105,1
step << Rogue
    #season 2
    .train 400105 >>|cRXP_WARN_Benutzt die|r |T134419:0|t|cRXP_LOOT_[Rune des Schattenschlags]|r |cRXP_WARN_um|r |T133816:0|t[Handschuhe prägen - Schattenschlag] zu lernen
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Pistolenheld - 8 (Wald von Elwynn)
#title Pistolenheld

step << Rogue
    #season 2
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9
    >>|T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Riverpaw Outrunners|r und |cRXP_ENEMY_Riverpaw Schlaffi|r. Plündert sie für |T134327:0|t[|cRXP_LOOT_Bottom-Links Karte Piece]|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    .collect 203787,1 -- Bottom-Left Map Piece (1)
    .mob Riverpaw Outrunner
    .mob Riverpaw Runt
    .train 398196,1
step << Rogue
    #season 2
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76
    >>|T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Kobold Miners|r und |cRXP_ENEMY_Kobold Tunnelers|r. Plündert sie für |T134327:0|t[|cRXP_LOOT_Top-Rechts Karte Piece]|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    .collect 203784,1 -- Top-Right Map Piece (1)
    .mob Kobold Miner
    .mob Kobold Tunneler
    .train 398196,1
step << Rogue
    #season 2
    .goto Elwynn Forest,67.4,78.6,60,0
    .goto Elwynn Forest,70.8,79.8,60,0
    .goto Elwynn Forest,89.2,78.8
    >>|T133644:0|t[Taschendiebstahl] die |cRXP_ENEMY_Defias|r. Plündert sie für die |T134327:0|t[|cRXP_LOOT_Linkes oberes Kartenteil]|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    >>|cRXP_WARN_Hinweis: Dies kann auch von jedem anderen |cRXP_ENEMY_Defias|r-Mitglied in Wald von Elwynn kommen|r
    .collect 203785,1 -- Top-Left Map Piece (1)
    .mob Defias Bandit
    .train 398196,1
step << Rogue
    #season 2
    .goto Elwynn Forest,75.4,85.4,60,0
    .goto Elwynn Forest,77.8,82.2,60,0
    .goto Elwynn Forest,83.2,87.0,60,0
    .goto Elwynn Forest,75.4,82.4
    >>|T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Murloc Foragers|r und |cRXP_ENEMY_Murloc Lurkers|r. Plündert sie für |T134269:0|t[|cRXP_LOOT_Bottom-Rechts Karte Piece]|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    >>|cRXP_WARN_Hinweis|cRXP_ENEMY_: Dies kann auch von jedem anderen |rMurloc|r in Wald von Elwynn stammen
    .collect 203786,1 -- Bottom-Right Map Piece (1)
    .mob Murloc Forager
    .mob Murloc Lurker
    .mob Murloc Streamrunner
    .mob Murloc
    .train 398196,1
step << Rogue
    #season 2
    .cast 401847 >>|cRXP_WARN_Benutzt einen der|r |T134327:0|t[|cRXP_LOOT_Kartenteile]|r |cRXP_WARN_um sie zur|r |T134269:0|t[|cRXP_LOOT_Schatzkarte von Elwynn|r] zu kombinieren
    .collect 203750,1
    .itemcount 203787,1
    .itemcount 203784,1
    .itemcount 203785,1
    .itemcount 203786,1
    .use 203787
    .use 203784
    .use 203785
    .use 203786
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    .goto Elwynn Forest,80.365,79.134
    .cast 401617 >>|cRXP_WARN_Benutzt die|r |T134269:0|t[|cRXP_LOOT_Elwynn Schatzkarte|r] |cRXP_WARN_an der Position des Pfeils. Das wird einen |cRXP_PICK_Begraben Schatz|r erscheinen lassen|r
    .use 203750
    .itemcount 203750,1
    .train 398196,1
step << Rogue
    #season 2
    >>Öffnet den |cRXP_PICK_Begraben Schatz|r. Plündert ihn für die |T134419:0|t[|cRXP_FRIENDLY_Rune des Pistolenhelden|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << Rogue
    #season 2
    .train 400095 >> |cRXP_WARN_Benutzt die|r|T134419:0|t[|cRXP_FRIENDLY_Rune des Pistolenhelden|r] |cRXP_WARN_zum Trainieren von|r |T134536:0|t[Pistolenheld]
    .use 203991
    .itemcount 203991,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Pistolenheld - 8 (Dun Morogh)
#title Pistolenheld

step << Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Spion der Dunkeleisenzwerge|r. Plündert sie für |T134327:0|t[|cRXP_LOOT_Linkes unteres Kartenteil]|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    .collect 208219,1 -- Bottom-Left Map Piece (1)
    .mob Dark Iron Spy
    .train 398196,1
step << Rogue
    #season 2
    .goto Dun Morogh,25.4,50.8
    >>|T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Trolle der Frostmane|r. Plündert sie für |T134327:0|t[|cRXP_LOOT_Rechtes oberes Kartenteil]|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    .collect 208213,1 -- Top-Right Map Piece (1)
    .mob Frostmane Headhunter
    .mob Frostmane Hideskinner
    .mob Frostmane Shadowcaster
    .train 398196,1
step << Rogue
    #season 2
    .goto Dun Morogh,70.8,56.0
    >>|T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Felsenkiefertrogg-Schädelschläger|r und |cRXP_ENEMY_Felsenkiefertrogg-Knochenschnapper|r. Beute sie für |T134327:0|t[|cRXP_LOOT_Top-Links Karte Piece]|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    .collect 208215,1 -- Top-Left Map Piece (1)
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
    .train 398196,1
step << Rogue
    #season 2
    .goto Dun Morogh,26.0,41.8
    >>|T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Lepragnom|r. Plündert sie für |T134269:0|t[|cRXP_LOOT_Rechte unteres Kartenteil]|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    .collect 208218,1 -- Bottom-Right Map Piece (1)
    .mob Leper Gnome
    .train 398196,1
step << Rogue
    #season 2
    .cast 418600 >>|cRXP_WARN_Benutzt eines der|r |T134327:0|t[|cRXP_LOOT_Kartenteile]|r |cRXP_WARN_um sie zur|r |T134269:0|t[|cRXP_LOOT_Schatzkarte von Dun Morogh|r] zu kombinieren
    .collect 208220,1
    .itemcount 208219,1
    .itemcount 208213,1
    .itemcount 208215,1
    .itemcount 208218,1
    .use 208219
    .use 208213
    .use 208215
    .use 208218
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    .goto Dun Morogh,46.985,43.632
    .cast 418599 >>|cRXP_WARN_Benutzt die|r |T134269:0|t[|cRXP_LOOT_Schatzkarte von Dun Morogh|r] |cRXP_WARN_unter der kleinen Brücke. Dadurch kommt ein |cRXP_PICK_Vergrabener Schatz|r zum Vorschein|r
    .use 208220
    .itemcount 208220,1
    .train 398196,1
step << Rogue
    #season 2
    >>Öffnet den |cRXP_PICK_Begraben Schatz|r. Plündert ihn für die |T134419:0|t[|cRXP_FRIENDLY_Rune des Pistolenhelden|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << Rogue
    #season 2
    .train 400095 >> |cRXP_WARN_Benutzt die|r|T134419:0|t[|cRXP_FRIENDLY_Rune des Pistolenhelden|r] |cRXP_WARN_zum Trainieren von|r |T134536:0|t[Pistolenheld]
    .use 203991
    .itemcount 203991,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Pistolenheld - 8 (Teldrassil)
#title Pistolenheld

step << Rogue
    #season 2
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >> Reist zum Teufelsfels
    .train 398196,1
step << Rogue
    #season 2
    .goto Teldrassil,77.86,61.66
    >>Tötet |cRXP_ENEMY_Vicious Grell|r, |cRXP_ENEMY_Rascal Sprites|r und |cRXP_ENEMY_Shadow Sprites|r. Plündert sie für |T134327:0|t[|cRXP_LOOT_Bottom-Links Karte Piece]|r
    .collect 208604,1 -- Bottom-Left Map Piece (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 398196,1
step << Rogue
    #season 2
    .goto Teldrassil,61.2,67.0
    >>Tötet |cRXP_ENEMY_Timberlings|r. Plündert sie für |T134327:0|t[|cRXP_LOOT_Top-Rechts Karte Piece]|r
    .collect 208601,1 -- Top-Right Map Piece (1)
    .mob Timberling
    .mob Timberling Bark Ripper
    .mob Timberling Trampler
    .train 398196,1
step << Rogue
    #season 2
    .goto Teldrassil,46.8,54.6,60,0
    .goto Teldrassil,44.2,59.2
    >>Tötet oder |T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Gnarlpine Furbolgs|r. Plündert sie für |T134327:0|t[|cRXP_LOOT_Top-Links Karte Piece]|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    .collect 208602,1 -- Top-Left Map Piece (1)
    .mob Gnarlpine Ambusher
    .mob Gnarlpine Shaman
    .mob Gnarlpine Defender
    .mob Gnarlpine Augur
    .train 398196,1
step << Rogue
    #season 2
    .goto Teldrassil,37.8,43.0,60,0
    .goto Teldrassil,36.0,34.4,60,0
    .goto Teldrassil,34.6,28.8,60,0
    .goto Teldrassil,37.8,43.0
    >>Tötet oder |T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Bloodfeather Harpies|r. Plündert sie für |T134327:0|t[|cRXP_LOOT_Top-Links Karte Piece]|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    .collect 208603,1 -- Bottom-Right Map Piece (1)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
    .train 398196,1
step << Rogue
    #season 2
    .cast 418600 >>|cRXP_WARN_Benutzt eines der|r |T134327:0|t[|cRXP_LOOT_Map Pieces]|r |cRXP_WARN_um sie zur|r |T134269:0|t[|cRXP_LOOT_Schatzkarte von Teldrassil|r]
    .collect 208605,1
    .itemcount 208604,1
    .itemcount 208601,1
    .itemcount 208602,1
    .itemcount 208603,1
    .use 208604
    .use 208601
    .use 208602
    .use 208603
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Nimm das Lila Portal nach Rut'Theran
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    .goto Teldrassil,55.339,90.818
    .cast 421424 >>|cRXP_WARN_Benutzt die|r |T134269:0|t[|cRXP_LOOT_Schatzkarte von Teldrassil|r] |cRXP_WARN_im Baumstamm bei Rut'theran. Dadurch kommt ein |cRXP_PICK_Vergrabener Schatz|r zum Vorschein|r
    .use 208605
    .itemcount 208605,1
    .train 398196,1
step << Rogue
    #season 2
    >>Öffnet den |cRXP_PICK_Begraben Schatz|r. Plündert ihn für die |T134419:0|t[|cRXP_FRIENDLY_Rune des Pistolenhelden|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << Rogue
    #season 2
    .train 400095 >> |cRXP_WARN_Benutzt die|r|T134419:0|t[|cRXP_FRIENDLY_Rune des Pistolenhelden|r] |cRXP_WARN_zum Trainieren von|r |T134536:0|t[Pistolenheld]
    .use 203991
    .itemcount 203991,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Hinterhältiger Mord - 1 (Wald von Elwynn)
#title Hinterhältiger Mord

step << Rogue
    #season 2
    .goto Elwynn Forest,46.122,62.937,5,0
    .goto Elwynn Forest,46.175,62.124
    >>|cRXP_WARN_Nutze die Kisten außerhalb des Hauses, um auf das Dach zu springen und lauft hinter den Schornstein|r
    >>Öffnet die |cRXP_PICK_Rostige Schließkassette|r. Erbeutet sie für die |T134419:0|t[|cRXP_FRIENDLY_Rune des Abschlachtens|r]
    .collect 203993,1 -- Rune of Slaughter (1)
    .train 424992,1
step << Rogue
    #season 2
    .train 424992 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Abschlachtens|r] |cRXP_WARN_zum Trainieren von|r |T236280:0|t[Hinterhältiger Mord]
    .use 203993
    .itemcount 203993,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Hinterhältiger Mord - 1 (Dun Morogh)
#title Hinterhältiger Mord

step << Rogue
    #season 2
    .goto Dun Morogh,47.658,51.706,5,0
    .goto Dun Morogh,47.160,52.335,5,0
    .goto Dun Morogh,46.917,51.995
    >>|cRXP_WARN_Begebt euch auf das Dach des Kharanos Gasthaus, dann springt auf die Spitze des riesigen Fasses. Folgt dem Pfeil|r
    >>Öffnet die |cRXP_PICK_Rostige Schließkassette|r. Erbeutet sie für die |T134419:0|t[|cRXP_FRIENDLY_Rune des Abschlachtens|r]
    .collect 203993,1 -- Rune of Slaughter (1)
    .train 424992,1
step << Rogue
    #season 2
    .train 424992 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Abschlachtens|r] |cRXP_WARN_zum Trainieren von|r |T236280:0|t[Hinterhältiger Mord]
    .use 203993
    .itemcount 203993,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Zwischen die Augen - 8 (Sturmwind)
#title Zwischen die Augen

step << Rogue
    #season 2
    #completewith next
    .goto Stormwind City,56.93,29.54,8,0
    .goto Stormwind City,58.65,27.56,10 >> BETRETET die Gasse der Halsabschneider im Zwergenviertel von Sturmwind
    .train 400081,1
step << Rogue
    #season 2
    .goto Stormwind City,63.201,29.491,5,0
    .goto Stormwind City,61.728,29.190
    >>|cRXP_WARN_Begebt euch die Treppe hinauf im Haus|r
    >>Öffnet die |cRXP_PICK_Verstaubte Kiste|r. Sammelt |T134419:0|t[|cRXP_FRIENDLY_Rune der Präzision|r] daraus
    >>|cRXP_WARN_Dies wird zwei Level-10-|cRXP_ENEMY_Halsabschneider|r beschwören, die dich angreifen werden|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Präzision|r] |cRXP_WARN_zum Trainieren von|r |T135610:0|t[Zwischen die Augen]
    .use 204174
    .itemcount 204174,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Zwischen die Augen - 8 (Eisenschmiede)
#title Zwischen die Augen

step << Rogue
    #season 2
    .goto Ironforge,51.913,13.383
    >>Öffnet die |cRXP_PICK_Verstaubte Kiste|r. Sammelt |T134419:0|t[|cRXP_FRIENDLY_Rune der Präzision|r] daraus
    >>|cRXP_WARN_Dies wird zwei Level-10-|cRXP_ENEMY_Halsabschneider|r beschwören, die dich angreifen werden|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Präzision|r] |cRXP_WARN_zum Trainieren von|r |T135610:0|t[Zwischen die Augen]
    .use 204174
    .itemcount 204174,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Zwischen die Augen - 8 (Teldrassil)
#title Zwischen die Augen

step << Rogue
    #season 2
    .goto Teldrassil,38.92,79.93
    >>Tötet oder |T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Gnarlpine Pfadfinder|r und |cRXP_ENEMY_Gnarlpine Avengers|r. Plündert sie für |T134241:0|t[|cRXP_LOOT_Gnarlpine Stash Schlüssel]|r
    .collect 208749,1 -- Gnarlpine Stash Key (1)
    .mob Gnarlpine Pathfinder
    .mob Gnarlpine Avenger
    .train 400081,1
step << Rogue
    #season 2
    .goto Teldrassil,37.836,82.588
    >>Öffnet |cRXP_PICK_Gnarlpine Stash|r. Sammelt es für |T134419:0|t[|cRXP_FRIENDLY_Rune of Präzision|r]
    .collect 204174 -- Rune of Precision (1)
    .itemcount 208749,1
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Präzision|r] |cRXP_WARN_zum Trainieren von|r |T135610:0|t[Zwischen die Augen]
    .use 204174
    .itemcount 204174,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Klingentanz - 10 (Westfall)
#title Klingentanz

step << Rogue
    #season 2
    .goto Westfall,48.27,46.91,60,0
    .goto Westfall,46.39,37.38,60,0
    .goto Westfall,48.27,46.91
    >>|T133644:0|t[Taschendiebstahl] die |cRXP_ENEMY_Defias|r in ganz Westfall. Plündert sie für |T133463:0|t[|cRXP_LOOT_Unauffälliger Umschlag]|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    .collect 209031,1 -- Discreet Envelope (1)
    .mob Defias Trapper
    .mob Defias Smuggler
    .mob Defias Looter
    .train 400099,1
step << Rogue
    #season 2
    >>Öffnet |cRXP_PICK_Unauffälliger Umschlag|r. Sammelt es für |T134237:0|t[|cRXP_LOOT_Ausrüstungs-Versteck-Schlüssel]|r
    .collect 209030,1 -- Equipment Stash Key (1)
    .use 209031
    .itemcount 209031,1
    .train 400099,1
step << Rogue
    #season 2
    #map Westfall
    .goto 1415,40.805,80.235
    >>Geht zum hinteren Eingang der Todesminen
    >>Öffnet |cRXP_PICK_Ausrüstungs-Versteck|r. Sammelt es für |T134419:0|t[|cRXP_FRIENDLY_Klingentanz-Rune|r]
    .collect 208771,1 -- Rune of Blade Dance (1)
    .train 400099,1
step << Rogue
    #season 2
    .train 400099 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Klingentanz-Rune|r] |cRXP_WARN_zum Trainieren von|r |T132350:0|t[Klingentanz]
    .use 208771
    .itemcount 208771,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Klingentanz - 16 (Dun Morogh)
#title Klingentanz

step << Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Dark Eisen Spies|r. Plündert sie für |T133875:0|t[|cRXP_LOOT_Dark Eisen Schließkassette]|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    .collect 208838,1 -- Dark Iron Lockbox (1)
    .mob Dark Iron Spy
    .train 400099,1
step << Rogue
    #season 2
    >>Öffnet |T133875:0|t[|cRXP_LOOT_Dunkle Eisen-Schließkassette]|r. Sammelt es für |T134419:0|t[|cRXP_FRIENDLY_Rune of Klingentanz|r]
    >>|cRXP_WARN_Hinweis: Ihr braucht|r |T136058:0|t[Schlossknacken] |cRXP_WARN_von eurem Ausbilder, um es zu öffnen|r
    .collect 208771,1 -- Rune of Blade Dance (1)
    .itemcount 208838,1
    .train 400099,1
step << Rogue
    #season 2
    .train 400099 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Klingentanzes|r] |cRXP_WARN_zum Erlernen|r |T132350:0|t[Klingentanz]
    .use 208771
    .itemcount 208771,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Klingentanz - 16 (Dunkelküste)
#title Klingentanz

step << Rogue
    #season 2
    #completewith learnBD
    .goto Darkshore,55.106,33.621,30 >> BETRETET die Kluftquellen-Naga-Höhle
    .train 400099,1
step << Rogue
    #season 2
    .goto Darkshore,56.253,34.877
    >>Tötet |cRXP_ENEMY_Stormscale Sirens|r und |cRXP_ENEMY_Stormscale Winken Rider|r. Plündert sie für |T134242:0|t[|cRXP_LOOT_Cliffspring Schlüssel]|r
    .collect 211471,1 -- Cliffspring Key (1)
    .mob Stormscale Wave Rider
    .mob Stormscale Siren
    .train 400099,1
step << Rogue
    .goto Darkshore,56.253,34.877
    >>Öffnet |cRXP_PICK_Clliffspring Truhe|r in der Höhle. Sammelt die Beute für die |T134419:0|t[|cRXP_FRIENDLY_Rune des Klingentanzes|r]
    .collect 208771,1 -- Rune of Blade Dance (1)
    .itemcount 211471,1
    .train 400099,1
step << Rogue
    #season 2
    .train 400099 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Klingentanzes|r] |cRXP_WARN_zum Erlernen|r |T132350:0|t[Klingentanz]
    .use 208771
    .itemcount 208771,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Verstümmeln - 5 (Wald von Elwynn)
#title Verstümmeln

step << Rogue
    #season 2
    .goto Elwynn Forest,57.5,48.2
    >>|T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Garrick Padfoot|r für |T134331:0|t[Schnittis Notiz]
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    .collect 203723,1 -- Cutty's Note (1)
    .mob Garrick Padfoot
    .train 400094,1
step << Rogue
    #season 2
    .goto Elwynn Forest,49.983,52.012
    >>Sprecht mit |cRXP_FRIENDLY_Schnitti|r direkt südlich der Nordhaintal-Mauer
    >>Er wird dir die |T134419:0|t[|cRXP_FRIENDLY_Rune der Verstümmelung|r] geben
    .collect 203990,1 -- Rune of Mutilation (1)
    .skipgossip
    .target Cutty
    .train 400094,1
step << Rogue
    #season 2
    .cast 402265 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Verstümmelung|r]
    .use 203990 -- Rune of Mutilation (1)
    .target Cutty
    .train 400094,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Verstümmeln - 8 (Dun Morogh)
#title Verstümmeln

step << Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Spion der Dunkeleisenzwerge|r. Plündert sie für |T134331:0|t[Schwarzrattes Notiz]
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    .collect 208205,1 --Blackrat's Note (1)
    .mob Dark Iron Spy
    .train 400094,1
step << Rogue
    #season 2
    .goto Dun Morogh,57.256,45.227
    >>Sprecht mit |cRXP_FRIENDLY_Schwarzratte|r, um die |T134419:0|t[|cRXP_FRIENDLY_Rune der Verstümmelung|r] zu erhalten
    .collect 203990,1
    .skipgossip
    .train 400094,1
step << Rogue
    #season 2
    .cast 402265 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Verstümmelung|r]
    .use 203990 -- Rune of Mutilation (1)
    .train 400094,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Säbelhieb - 12 (Westfall)
#title Säbelhieb

step << Rogue
    #season 2
    .goto Westfall,51.540,55.361,30,0
    .goto Westfall,51.093,54.642,30,0
    .goto Westfall,50.81,47.15,50,0
    .goto Westfall,51.093,54.642
    >>|T133644:0|t[Taschendiebstahl] den |cRXP_ENEMY_Späher der Defias|r für die |T134419:0|t[|cRXP_FRIENDLY_Rune des Säbelschlitzers|r]
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    .collect 208772,1 -- Rune of Saber Slash (1)
    .mob Defias Scout
    .train 424785,1
step << Rogue
    #season 2
    .cast 402265 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Säbelschlitzers|r]
    .use 208772 -- Rune of Saber Slash (1)
    .train 424785,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Säbelhieb - 12 (Loch Modan)
#title Säbelhieb

step << Rogue
    #season 2
    #completewith next
    .goto Loch Modan,41.01,12.60,50,0
    .goto Loch Modan,42.86,10.36,60,0
    .goto Loch Modan,46.20,13.15,10 >> |cRXP_WARN_Macht euren Weg auf den Damm von Loch Modan und fallt vorsichtig auf das Sims in der Mitte des Dammes herunter. Folgt dem Pfeil|r
    .train 424785,1
step << Rogue
    #season 2
    .goto Loch Modan,46.373,12.666
    >>Öffnet |cRXP_PICK_Steinmetz-Werkzeugkasten|r auf dem Sims. Sammelt die Beute für die |T134419:0|t[|cRXP_FRIENDLY_Rune des Säbelhiebs|r]
    .collect 208772,1 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    .cast 402265 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Säbelschlitzers|r]
    .use 208772 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    .goto Loch Modan,45.823,12.652
    .cast 6477 >> Klickt |cRXP_PICK_Flucht Seil|r um nach oben zurückzukehren
    .subzoneskip 146,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Säbelhieb - 1 (Dunkelküste)
#title Säbelhieb

step << Rogue
    #season 2
    #completewith next
    .goto Darkshore,32.80,37.72,20 >> Schwimmt zur kleinen Insel mit dem Leuchtturm
    .train 424785,1
step << Rogue
    #season 2
    .goto Darkshore,32.729,37.093
    >>Öffnet |cRXP_PICK_Leuchtturm-Versteck|r im Baumstamm. Sammelt die Beute für die |T134419:0|t[|cRXP_FRIENDLY_Rune des Säbelhiebs|r]
    .collect 208772,1 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    .cast 402265 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Säbelschlitzers|r]
    .use 208772 -- Rune of Saber Slash (1)
    .train 424785,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Schattenschlagschaden - 2 (Durotar)
#title Schattenschlagschaden


    --Rune of Shadowstrike

step << Troll/Orc
    #season 2
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rwag|r
    .accept 77592 >>Akzeptiert die Quest Oben auf den Klippen << Troll
    .accept 77583 >>Akzeptiert die Quest Oben auf den Klippen << Orc
    .target Rwag
step
    #season 2
    .goto Durotar,43.27,69.51
    >>Öffnet |cRXP_PICK_Versteckt Versteck|r. Sammelt die Beute für die |T134419:0|t|cRXP_LOOT_[Rune des Schattenschlags]|r
    >>|cRXP_WARN_Geht|r um |cRXP_ENEMY_Sarkoth|r herum |cRXP_WARN_und springt hinab zur Truhe|r
    .collect 204795,1 --Rune of Shadowstrike (1)
    .train 400105,1
step
    #season 2
    .train 400105 >>|cRXP_WARN_Benutzt die|r |T134419:0|t|cRXP_LOOT_[Rune des Schattenschlags]|r |cRXP_WARN_um|r |T133816:0|t[Handschuhe prägen - Schattenschlag] zu lernen
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
step << Troll/Orc
    #season 2
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rwag|r
    .turnin 77592 >>Gebt die Quest oben auf den Klippen ab << Troll
    .turnin 77583 >>Gebt die Quest oben auf den Klippen ab << Orc
    .target Rwag
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Schattenschlagschaden - 2 (Tirisfal)
#title Schattenschlagschaden


    --Rune of Shadowstrike

step << Undead
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_David|r
    .accept 77669 >>Akzeptiert die Quest Die scharlachrote Rune
    .target David Trias
step
    #season 2
#loop
	.line Tirisfal Glades,36.13,68.74,36.46,69.49,36.85,70.02,37.42,69.58,38.05,69.79,37.91,69.22,38.03,68.77,38.49,68.28,38.72,67.07,38.59,66.25,38.65,65.07,37.62,65.36,36.93,65.38,36.51,65.42,36.85,66.59,37.45,67.95,36.93,68.16,36.13,68.74
	.goto Tirisfal Glades,36.13,68.74,25,0
	.goto Tirisfal Glades,36.46,69.49,25,0
	.goto Tirisfal Glades,36.85,70.02,25,0
	.goto Tirisfal Glades,37.42,69.58,25,0
	.goto Tirisfal Glades,38.05,69.79,25,0
	.goto Tirisfal Glades,37.91,69.22,25,0
	.goto Tirisfal Glades,38.03,68.77,25,0
	.goto Tirisfal Glades,38.49,68.28,25,0
	.goto Tirisfal Glades,38.72,67.07,25,0
	.goto Tirisfal Glades,38.59,66.25,25,0
	.goto Tirisfal Glades,38.65,65.07,25,0
	.goto Tirisfal Glades,37.62,65.36,25,0
	.goto Tirisfal Glades,36.93,65.38,25,0
	.goto Tirisfal Glades,36.51,65.42,25,0
	.goto Tirisfal Glades,36.85,66.59,25,0
	.goto Tirisfal Glades,37.45,67.95,25,0
	.goto Tirisfal Glades,36.93,68.16,25,0
	.goto Tirisfal Glades,36.13,68.74,25,0
    >>Tötet oder pickpocket |cRXP_ENEMY_Scarlet Converts|r. Plündert sie für |T134419:0|t|cRXP_LOOT_[Rune des Schattenschlags]|r
    .collect 204795,1 --Rune of Shadowstrike (1)
    .mob Scarlet Convert
    .train 400105,1
step
    #season 2
    .train 400105 >>|cRXP_WARN_Benutzt die|r |T134419:0|t|cRXP_LOOT_[Rune des Schattenschlags]|r |cRXP_WARN_um|r |T133816:0|t[Handschuhe prägen - Schattenschlag] zu lernen
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
step << Undead
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_David|r
    .turnin 77669 >>Gebt die Quest Die scharlachrote Rune ab
    .target David Trias
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Tödliche Mischung - 25 (Silberwald)
#title Tödliche Mischung


    --Rune of Deadly Brew

step
    #season 2
    .goto Silverpine Forest,47.12,71.01
    >>Klickt |cRXP_PICK_Toter Briefkasten|r im Silberwald an
    .accept 78261 >> Akzeptiert die Quest Das Horn von Xelthos
step
    #season 2
    #completewith next
    .zone 209 >> Betrete Burg Shadowfang
    >>|cRXP_WARN_Ihr müsst den nächsten Teil alleine machen! In einer Gruppe werden euch die Schlüssel verwehrt|r
step << Horde
    #season 2
    .gossipoption 96495,1 >>Schleicht an |cRXP_ENEMY_Rotkralle|r vorbei, sprecht mit |cRXP_FRIENDLY_Todespirscher Adamant|r und benutzt |T132331:0|t[Verschwinden] danach. Er wird die Tür für euch öffnen
    .target Deathstalker Adamant
    .train 400080,1
step << Alliance
    #season 2
    .gossipoption 96494 >>Schleicht an |cRXP_ENEMY_Rotkralle|r vorbei, sprecht mit |cRXP_FRIENDLY_Zauberer Aschengrund|r und benutzt |T132331:0|t[Verschwinden] danach. Er wird die Tür für euch öffnen
    .target Sorcerer Ashcrombe
    .train 400080,1
step
    #season 2
    #completewith next
    >>Benutzt |T133644:0|t[Taschendiebstahl] auf |cRXP_ENEMY_NPCs|r für |T134243:0|t[|cRXP_LOOT_Sister's Half-Schlüssel|r]
    >>|cRXP_WARN_Sie befindet sich in der Speisehalle auf dem unteren Stockwerk|r
    .collect 210213,1 --Sister's Half-Key (1)
    .mob Gemela
step
    #season 2
    >>Benutzt |T133644:0|t[Taschendiebstahl] auf |cRXP_ENEMY_NPCs|r für |T134244:0|t[|cRXP_LOOT_Brother's Half-Schlüssel|r]
    >>|cRXP_WARN_Er befindet sich über der Speisehalle auf dem zweiten Stockwerk|r
    .collect 210212,1 --Brother's Half-Key (1)
    .mob Gefell
    .train 400080,1
step
    #season 2
    >>Benutzt |T133644:0|t[Taschendiebstahl] auf |cRXP_ENEMY_NPCs|r für |T134243:0|t[|cRXP_LOOT_Sister's Half-Schlüssel|r]
    >>|cRXP_WARN_Sie befindet sich in der Speisehalle auf dem unteren Stockwerk|r
    .collect 210213,1 --Sister's Half-Key (1)
    .mob Gemela
    .train 400080,1
step
    #season 2
    .use 210212 >>Kehrt zum Innenhof außerhalb zurück und betretet den Stall. Kombiniert die zwei Schlüssel für den |T237379:0|t[|cRXP_LOOT_Zwillingsschlüssel|r]
    .collect 210209,1 --Twin Key (1)
    .train 400080,1
step
    #season 2
    >>Öffnet |cRXP_PICK_Verzierte Truhe|r im Stall für |cRXP_LOOT_Horn of Xelthos|r
    .complete 78261,1 --Horn of Xelthos (1)
step
    #season 2
    .goto Silverpine Forest,47.114,70.974
    >>Klickt |cRXP_PICK_Toter Briefkasten|r im Silberwald an
    .turnin 78261 >> Gebt die Quest Das Horn von Xelthos ab
step
    #season 2
    #completewith next
    +|cRXP_WARN_Ihr müsst nun eine Hauptstadt betreten, um Post von *C* zu erhalten|r
    .train 400080,1
step << Horde
    #season 2
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Karos|r
    .fly Undercity >> Fliegt nach Unterstadt
    .target Karos Razok
    .zoneskip Undercity
    .train 400080,1
step << Alliance
    >>Lauft nach Süderstade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Darla Harris|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Darla Harris
    .train 400080,1
step
    .goto Undercity,68.290,38.043,5 >> |cRXP_WARN_Betretet Unterstadt. Überprüft euer Postfach auf den Brief von *C*|r << Horde
    .goto Ironforge,71.485,72.280,5 >> |cRXP_WARN_Betretet Eisenschmiede. Überprüft die Mailbox von Euch für den Brief von *C*. Überspringt diesen Schritt falls ihr es in einer anderen Hauptstadt macht|r << Alliance
    .train 400080,1
step
    #season 2
    #completewith next
    +|cRXP_WARN_Öffnet euren Briefkasten, um die Post von *C* zu lesen, wenn sie angekommen ist. Fliegt nach Silberwald zurück, wenn ihr bereit seid|r << Horde
    +|cRXP_WARN_Öffnet die Mailbox von Euch um die Post von *C* zu lesen sobald sie angekommen ist. Fliegt zurück nach Süderstade und macht den Weg von Euch nach Silverpine wenn ihr bereit seid|r << Alliance
step << Horde
    #season 2
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Michael|r
    .fly The Sepulcher>> Fliege nach Das Grabmal
    .target Michael Garrett
    .zoneskip Silverpine Forest
    .train 400080,1
step << Alliance
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Southshore >> Fliege nach Süderstade
    .target Gryth Thurden
    .zoneskip Silverpine Forest
    .train 400080,1
step << Alliance
    #completewith next
    .zone Silverpine Forest >> Reist nach Silberwald
    .train 400080,1
step
    #season 2
    .goto Silverpine Forest,47.114,70.974
    >>Klickt |cRXP_PICK_Toter Briefkasten|r im Silberwald an für |T134419:0|t[|cRXP_FRIENDLY_Rune der tödlichen Mischung|r]
    .collect 203994,1 --Rune of Deadly Brew (1)
    .train 400080,1
step
    #season 2
    .train 400080 >>Benutzt |T134419:0|t[|cRXP_FRIENDLY_Rune der tödlichen Mischung|r]
    .use 204795
    .itemcount 204795,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Pistolenheld - 10 (Durotar)
#title Pistolenheld


    --Rune of Quick Draw

step
    #season 2
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30
    >>Tötet oder use |T133644:0|t[Taschendiebstahl] on |cRXP_ENEMY_Kul Tiras Sailors|r und |cRXP_ENEMY_Kul Tiras Marines|r. Plündert sie für |T134327:0|t[|cRXP_LOOT_Top-Rechts Karte Piece|r]
    .collect 207109,1 --Top-Right Map Piece (1)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
    .train 400095,1
step
    #season 2
    .goto Durotar,50.21,50.78,30,0
    .goto Durotar,50.18,49.23,30,0
    .goto Durotar,49.48,49.14,30,0
    .goto Durotar,49.32,48.18,30,0
    .goto Durotar,48.81,49.00,30,0
    .goto Durotar,48.49,49.29,30,0
    .goto Durotar,47.58,49.62,30,0
    .goto Durotar,47.06,49.53,30,0
    .goto Durotar,46.90,48.11,30,0
    .goto Durotar,49.22,48.96
    >>Tötet oder use |T133644:0|t[Taschendiebstahl] on |cRXP_ENEMY_Razormane Quilboars|r und |cRXP_ENEMY_Razormane Späher|r.  Plündert sie für |T134327:0|t[|cRXP_LOOT_Bottom-Rechts Karte Piece|r]
    .collect 207107,1 --Bottom-Right Map Piece (1)
    .mob Razormane Quilboar
    .mob Razormane Scout
    .train 400095,1
step
    #season 2
#loop
	.line Durotar,67.23,88.76,66.52,87.74,65.94,86.72,65.90,84.04,65.88,82.85,67.38,82.61,68.42,82.43,68.50,84.32,68.47,86.77,67.23,88
	.goto Durotar,67.23,88.76,25,0
	.goto Durotar,66.52,87.74,25,0
	.goto Durotar,65.94,86.72,25,0
	.goto Durotar,65.90,84.04,25,0
	.goto Durotar,65.88,82.85,25,0
	.goto Durotar,67.38,82.61,25,0
	.goto Durotar,68.42,82.43,25,0
	.goto Durotar,68.50,84.32,25,0
	.goto Durotar,68.47,86.77,25,0
	.goto Durotar,67.23,88.00,25,0
    >>Tötet oder use |T133644:0|t[Taschendiebstahl] on |cRXP_ENEMY_Hexed Trolls|r und |cRXP_ENEMY_Voodoo Trolls|r. Plündert sie für |T134327:0|t[|cRXP_LOOT_Bottom-Links Karte Piece|r]
    .collect 207106,1 --Bottom-Left Map Piece (1)
    .mob Hexed Troll
    .mob Voodoo Troll
    .train 400095,1
step
    #completewith next
    .goto Durotar,55.12,10.10,60 >> Reist zur Knochenhöhle
step
    #season 2
    .goto Durotar,54.72,8.78,15,0
    .goto Durotar,54.29,8.89,15,0
    .goto Durotar,53.77,8.87,15,0
    .goto Durotar,53.37,7.73,15,0
    .goto Durotar,52.73,7.85,15,0
    .goto Durotar,52.42,8.59,15,0
    .goto Durotar,51.65,8.19,15,0
    .goto Durotar,51.39,8.71,15,0
    .goto Durotar,51.48,9.71,15,0
    .goto Durotar,53.77,8.87
    >>Tötet oder use |T133644:0|t[Taschendiebstahl] on |cRXP_ENEMY_Burning Blade Orcs|r. Plündert sie für |T134327:0|t[|cRXP_LOOT_Top-Links Karte Piece|r]
    .collect 207108,1 --Top-Left Map Piece (1)
    .mob Burning Blade Thug
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
    .train 400095,1
step
    #season 2
    .use 207108 >>Benutzt |T134327:0|t[|cRXP_LOOT_Map Pieces|r] um |T134269:0|t[|cRXP_LOOT_Schatzkarte von Durotar|r] zu erstellen
    .collect 207110,1 --Durotar Treasure Map (1)
    .train 400095,1
step
    #season 2
    .goto Durotar,62.14,94.66
    .use 207110 >>Benutzt |T134269:0|t[|cRXP_LOOT_Schatzkarte von Durotar|r] auf der südlichsten Echo-Insel
    >>Plündert den |cRXP_PICK_Vergrabener Schatz|r für die |T134419:0|t[|cRXP_FRIENDLY_Rune des Pistolenhelden|r]
    .collect 203991,1 --Rune of Quick Draw (1s)
    .train 400095,1
step
    #season 2
    .train 400095 >>|cRXP_WARN_Benutzt die|r|T134419:0|t[|cRXP_FRIENDLY_Rune des Pistolenhelden|r] |cRXP_WARN_zum Trainieren von|r |T134536:0|t[Pistolenheld]
    .use 203991
    .itemcount 203991,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Pistolenheld - 10 (Tirisfal)
#title Pistolenheld


    --Rune of Quick Draw

step
    #season 2
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09
    >>Tötet oder use |T133644:0|t[Taschendiebstahl] on |cRXP_ENEMY_Tirisfal Farmers|r und |cRXP_ENEMY_Tirisfal Farmhands|r. Plündert sie für |T134327:0|t[|cRXP_LOOT_Top-Links Karte Piece|r]
    .collect 208036,1 --Top-Left Map Piece (1)
    .mob Tirisfal Farmer
    .mob Tirisfal Farmhand
    .train 400095,1
step
    #season 2
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
    >>Tötet oder use |T133644:0|t[Taschendiebstahl] on |cRXP_ENEMY_Scarlet Warriors|r. Plündert sie für |T134327:0|t[|cRXP_LOOT_Top-Rechts Karte Piece|r]
    >>|cRXP_WARN_Alle Scharlachroten Humanoiden in Tirisfal können das Kartenteil droppen|r
    .collect 208035,1 --Top-Right Map Piece (1)
    .mob Scarlet Warrior
    .train 400095,1
step
    #season 2
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    .goto Tirisfal Glades,55.24,42.54
    >>Tötet oder use |T133644:0|t[Taschendiebstahl] on |cRXP_ENEMY_Rot Verstecken Gnolls|r. Plündert sie für |T134327:0|t[|cRXP_LOOT_Bottom-Links Karte Piece|r]
    .collect 208038,1 --Bottom-Left Map Piece (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .mob Rot Hide Gnoll
    .train 400095,1
step
    #season 2
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    .goto Tirisfal Glades,59.54,27.86
    >>Tötet oder use |T133644:0|t[Taschendiebstahl] on |cRXP_ENEMY_Murlocs|r. Plündert sie für |T134327:0|t[|cRXP_LOOT_Bottom-Rechts Karte Piece|r]
    .collect 208037,1 --Bottom-Right Map Piece (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400095,1
step
    #season 2
    .use 208036 >>Benutzt |T134327:0|t[|cRXP_LOOT_Map Pieces|r] um |T134269:0|t[|cRXP_LOOT_Schatzkarte von Tirisfal|r] zu erstellen
    .collect 208034,1 --Tirisfal Treasure Map (1)
    .train 400095,1
step
    #season 2
    .goto Tirisfal Glades,52.89,54.03
    .use 208034 >>Benutzt |T134269:0|t[|cRXP_LOOT_Schatzkarte von Tirisfal|r] unterhalb der Brücke
    >>Plündert den |cRXP_PICK_Vergrabener Schatz|r für die |T134419:0|t[|cRXP_FRIENDLY_Rune des Pistolenhelden|r]
    .collect 203991,1 --Rune of Quick Draw (1s)
    .train 400095,1
step
    #season 2
    .train 400095 >>|cRXP_WARN_Benutzt die|r|T134419:0|t[|cRXP_FRIENDLY_Rune des Pistolenhelden|r] |cRXP_WARN_zum Trainieren von|r |T134536:0|t[Pistolenheld]
    .use 203991
    .itemcount 203991,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Hinterhältiger Mord - 10 (Durotar)
#title Hinterhältiger Mord


    --Rune of Slaughter from the Shadows

step
    #completewith next
    .goto Durotar,54.25,27.64,40 >>Reist zum Sprungpunkt knapp östlich von Staubwindhöhle
step
    #season 2
    .goto Durotar,54.25,27.64,40,0
    .goto Durotar,53.74,27.14
    >>Sammelt |cRXP_PICK_Rostige Schließkassette|r für |T134419:0|t[|cRXP_FRIENDLY_Rune des Abschlachtens|r]
    >>|cRXP_WARN_Ihr müsst einen kleinen Sprung machen, um die Truhe erreichen zu können|r
    .collect 203993,1 --Rune of Slaughter (1)
    .train 42992,1
step
    #season 2
    .train 42992 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Abschlachtens|r] |cRXP_WARN_zum Trainieren von|r |T236280:0|t[Hinterhältiger Mord]
    .use 203993
    .itemcount 203993,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Brust
#name Hinterhältiger Mord - 10 (Tirisfal)
#title Hinterhältiger Mord


    --Rune of Slaughter from the Shadows


step
    #season 2
    .goto Tirisfal Glades,47.39,43.64,150,0
    .goto Tirisfal Glades,52.23,26.91,20,0
    .goto Tirisfal Glades,52.29,26.40,8 >> Reist zur Krypta in Agamands Mühlen
step
    #season 2
#loop
	.line Tirisfal Glades,51.88,25.86,52.61,25.85,52.60,26.88,51.90,26.87
	.goto Tirisfal Glades,51.88,25.86,15,0
	.goto Tirisfal Glades,52.61,25.85,15,0
	.goto Tirisfal Glades,52.60,26.88,15,0
	.goto Tirisfal Glades,51.90,26.87,15,0
    >>Tötet |cRXP_ENEMY_Wailing Ancestors|r und |cRXP_ENEMY_Rotting Ancestors|r. Plündert sie für an |T134245:0|t[|cRXP_LOOT_Agamand Relikt Coffer Schlüssel|r]
    >>|cRXP_WARN_Passt auf! Die Gegner in dieser Krypta spawnen dynamisch nach!|r
    .collect 208005,1 --Agamand Relic Coffer Key (1)
    .mob Wailing Ancestor
    .mob Rotting Ancestor
    .train 42992,1
step
    #season 2
    .goto Tirisfal Glades,52.53,26.91
    >>Öffnet |cRXP_PICK_Reliktassette|r für |T134419:0|t[|cRXP_FRIENDLY_Rune des Abschlachtens|r]
    .collect 203993,1 --Rune of Slaughter (1)
    .train 42992,1
step
    #season 2
    .train 42992 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Abschlachtens|r] |cRXP_WARN_zum Trainieren von|r |T236280:0|t[Hinterhältiger Mord]
    .use 203993
    .itemcount 203993,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Verstümmeln - 8 (Tirisfal)
#title Verstümmeln


    --Rune of Mutilate

step
    #season 2
    .goto Tirisfal Glades,51.17,67.81
    >>Benutzt |T133644:0|t[Taschendiebstahl] auf |cRXP_ENEMY_Captain Perrine|r für |T133385:0|t[|cRXP_LOOT_Signet des Scharlachroten Leutnants|r]
    .collect 208085,1 --Scarlet Lieutenant Signet Ring (1)
    .mob Captain Perrine
    .train 400094,1
step
    #season 2
    #completewith next
    .goto Tirisfal Glades,60.90,51.49,10 >>Reist zum Rathaus von Brill
step
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    .use 208085 >>Benutzt das |T133385:0|t[|cRXP_LOOT_Signet des Scharlachroten Leutnants|r] um |T134328:0|t[|cRXP_LOOT_Gefälschtes scharlachrotes Memorandum|r] zu erstellen
    .collect 208086,1 --Forged Scarlet Memorandum (1)
    .train 400094,1
step
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jamie Nore|r, um |T134419:0|t[|cRXP_FRIENDLY_Rune der Verstümmelung|r] von ihr zu erhalten
    .collect 203990,1 --Rune of Mutilation (1)
    .target Jamie Nore
    .skipgossip
    .train 400094,1
step
    #season 2
    .train 400094 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Verstümmelung|r] |cRXP_WARN_zum lernen von|r |T132304:0|t[Verstümmeln]
    .use 203990
    .itemcount 203990,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Verstümmeln - 10 (Durotar)
#title Verstümmeln


    --Rune of Mutilate

step
    #season 2
    #completewith next
    .goto Durotar,53.18,29.15,50 >> Reist zu Staubwindhöhle
step
    #season 2
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,52.70,27.97
    >>Benutzt |T133644:0|t[Taschendiebstahl] auf |cRXP_ENEMY_Brennende Klinge Schläger|r für |T134331:0|t[|cRXP_LOOT_Hinweis von Ba'so|r]
    .collect 207098,1 --Note from Ba'so (1)
    .mob Burning Blade Thug
    .train 400094,1
step
    .goto Durotar,51.82,58.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ba'so|r um |T134419:0|t[|cRXP_FRIENDLY_Rune der Verstümmelung|r] zu erhalten
    >>|cRXP_WARN_Er ist unsichtbar!|r
    .collect 203990,1 --Rune of Mutilation (1)
    .target Ba'so
    .skipgossip
    .train 400094,1
step
    #season 2
    .train 400094 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Verstümmelung|r] |cRXP_WARN_zum lernen von|r |T132304:0|t[Verstümmeln]
    .use 203990
    .itemcount 203990,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Zwischen die Augen - 8 (Tirisfal)
#title Zwischen die Augen


    --Rune of Between the Eyes

step
    #season 2
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    .goto Tirisfal Glades,59.54,27.86
    >>Benutzt |T133644:0|t[Taschendiebstahl] auf |cRXP_ENEMY_Ekel Fin Murlocs|r für |T134241:0|t[|cRXP_LOOT_Das Schiffswrack-Cache-Schlüssel|r]
    .collect 208007,1 --Shipwreck Cache Key (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400081,1
step
    #season 2
    .goto Tirisfal Glades,66.66,24.41
    >>Plündert |cRXP_PICK_Schiffswracktruhe|r für |T134419:0|t[|cRXP_FRIENDLY_Rune der Präzision|r]
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step
    #season 2
    .train 400081 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Präzision|r] |cRXP_WARN_zum Trainieren von|r |T135610:0|t[Zwischen die Augen]
    .use 204174
    .itemcount 204174,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Zwischen die Augen - 8 (Orgrimmar)
#title Zwischen die Augen


    --Rune of Between the Eyes

step
    #season 2
    .goto Orgrimmar,55.87,44.89
    >>Sammelt |cRXP_PICK_Verstaubte Kiste|r für |T134419:0|t[|cRXP_FRIENDLY_Rune der Präzision|r]
    >>|cRXP_WARN_Sie befindet sich in Der Gasse im oberen Stock|r
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step
    #season 2
    .train 400081 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Präzision|r] |cRXP_WARN_zum Trainieren von|r |T135610:0|t[Zwischen die Augen]
    .use 204174
    .itemcount 204174,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Beine
#name Klingentanz - 15 (The Barrens)
#title Klingentanz


    --Rune of Blade Dance

step
    #season 2
    .goto The Barrens,64.40,44.09,50,0
    .goto The Barrens,63.62,46.26,50,0
    .goto The Barrens,64.23,47.10
    >>Benutzt |T133644:0|t[Taschendiebstahl] auf |cRXP_ENEMY_Südmeer-Banditen|r für |T132761:0|t[|cRXP_LOOT_Bukaniers Streichholzschachtel|r]
    .collect 208768,1 --Buccaneer's Matchbox (1)
    .mob Southsea Brigand
    .train 400099,1
step
    #season 2
    .goto The Barrens,61.82,45.80
    >>Klickt das Pulverfass. Sammelt |cRXP_PICK_Südmeer-Beute-Vorrat|r, der für |T134419:0|t[|cRXP_FRIENDLY_Rune des Klingentanzes|r] spawnt
    .collect 208771,1 --Rune of Blade Dance (1)
    .train 400099,1
step
    #season 2
    .train 400099 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Klingentanz|r] |cRXP_WARN_zum Trainieren|r |T132350:0|t[Klingentanz]
    .use 208771
    .itemcount 208771,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Säbelhieb - 15 (The Barrens)
#title Säbelhieb


    --Rune of Saber Slash

step
    #season 2
    #completewith next
    +|cRXP_WARN_Eure Schlosserkunst muss mindestens 80 sein, um diese Laufschrift zu erhalten!|r
    .skill pick lock,>80,1
step
    #season 2
    .goto The Barrens,62.31,54.22
    >>Plündert |cRXP_PICK_Stallburschenkoffer|r auf dem Dach des Stalls für |T134419:0|t[|cRXP_FRIENDLY_Rune des Säbelschlitzers|r]
    >>|cRXP_WARN_Lauft den Hügel hinauf und springt auf die Burgmauer. Von dort aus könnt ihr auf das Dach des Stalls springen|r
    .collect 208772,1 --Rune of Saber Slash (1)
    .train 424984,1
step
    #season 2
    .train 424984 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Säbelschlitzers|r] |cRXP_WARN_zum Trainieren von|r |T132375:0|t[Säbelschlitzer]
    .use 208772
    .itemcount 208772,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Handschuhe
#name Säbelhieb - 15 (Silverpine)
#title Säbelhieb

    --Rune of Saber Slash

step
    #season 2
    .goto Silverpine Forest,45.25,68.06,20,0
    .goto Silverpine Forest,45.26,67.21
    >>Plündert |cRXP_PICK_die Rostig Truhe|r neben dem Eingang von Burg Schattenfang für |T134419:0|t[|cRXP_FRIENDLY_Rune des Säbelschlitzers|r]
    >>|cRXP_WARN_Benutzt|r |T132307:0|t[Sprinten] |cRXP_WARN_und springt dann von der Brücke zur Truhe.|r
    .collect 208772,1 --Rune of Saber Slash (1)
    .train 424984,1
step
    #season 2
    .train 424984 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Säbelschlitzers|r] |cRXP_WARN_zum Trainieren von|r |T132375:0|t[Säbelschlitzer]
    .use 208772
    .itemcount 208772,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Gürtel
#title Schattenschritt
#name Schattenschritt - 30 (Silberwald)

step
    #completewith next
    .zone Silverpine Forest >>Reist nach Silberwald
step
    .train 400101,1
    >>Klickt auf die |cRXP_PICK_Dead Fallen lassen|r Truhe auf dem Boden
    .goto Silverpine Forest,47.114,70.974
    .accept 78676 >>Akzeptiert die Quest Das Auge von Bhossca
step
    #completewith next
    .zone Tirisfal Glades >>Reist nach Tirisfal zum Scharlachroten Kloster
step
    >>|cRXP_WARN_Öffnet|r |cRXP_PICK_Versorgungskasten|r |cRXP_WARN_im Stall, um zu erhalten|r |T132665:0|t[Uniform eines scharlachroten Initianden]
    .goto Tirisfal Glades,81.2,32.12
    .collect 210955,1
    .train 400101,1
step
    #completewith next
    .goto Eastern Kingdoms,47.44,19.69,10,0
    .goto Eastern Kingdoms,47.73,19.39,5 >> BETRETET das Scharlachrote Kloster: |cRXP_WARN_Friedhof|r-Verlies |cRXP_WARN_ALLEIN|r
step
    >>Benutzt |T133644:0|t[Taschendiebstahl] auf einen |cRXP_ENEMY_Scharlachroten Seher|r, um |T134241:0|t[Seher's Schlüssel] zu erhalten
    >>|cRXP_WARN_Benutzt|r |T132289:0|t[Ablenken] |cRXP_WARN_um nicht entdeckt zu werden|r
    .goto Eastern Kingdoms,47.73,19.39
    .collect 210963,1
    .mob Scarlet Scryer
    .train 400101,1
step
    #completewith next
    .goto Eastern Kingdoms,47.79,19.59,5 >> BETRETET das Scharlachrote Kloster: |cRXP_WARN_Bibliothek|r-Verlies |cRXP_WARN_ALLEIN|r
step
    #completewith next
    +|cRXP_WARN_Lauft zum Flur vor dem letzten Boss|r
step
    >>Plündert |cRXP_PICK_Persönlicher Briefkasten|r auf der linken Seite um |T134331:0|t[|cRXP_LOOT_Vertrauliche Nachricht|r]
    .use 210955 >>|cRXP_WARN_Benutzt die|r |T132665:0|t[Uniform eines scharlachroten Initianden] |cRXP_WARN_um die NPCs neutral zu machen|r
    .goto Eastern Kingdoms,47.79,19.59
    .collect 210967,1
    .train 400101,1
step
    #completewith next
    .goto Eastern Kingdoms,47.73,19.39,5 >> Betretet das Scharlachrote Kloster: |cRXP_WARN_Friedhof|r Verlies |cRXP_WARN_ALLEIN|r
step
    >>|cRXP_WARN_Geht zum Außenbereich im Verließ und sucht nach einer Bank zwischen zwei Statuen auf der rechten und linken Wand|r
    *|cRXP_WARN_Auf beiden Seiten|r benutzt /sitzen (machbar während der Tarnung) auf den Bänken, bis die Emote |cRXP_WARN_"Du hörst das Geräusch von bewegtem Stein"|r im Chat erscheint.
    *Danach geht zum Grab neben |cRXP_WARN_der rechten Wand|r und öffnet |cRXP_PICK_Stein Steintruhe|r um |T134242:0|t[Reliquary Schlüssel] zu erhalten
    .goto Eastern Kingdoms,47.79,19.59
    .collect 210968,1
    .train 400101,1
step
    #completewith next
    .goto Eastern Kingdoms,47.79,19.59,5 >> Betretet das Scharlachrote Kloster: |cRXP_WARN_Bibliothek|r Verlies |cRXP_WARN_ALLEIN|r
step
    #completewith next
    +|cRXP_WARN_Lauft zur "Galerie der Schätze"|r
step
    >>Plündert |cRXP_PICK_Verschlossenes Reliquiar|r im ersten Zimmer auf der linken Seite um |T134331:0|t[|cRXP_LOOT_Auge von Bhossca|r]
    .use 210955 >>|cRXP_WARN_Benutzt die|r |T132665:0|t[Uniform eines scharlachroten Initianden] |cRXP_WARN_um die NPCs neutral zu machen|r
    .goto Eastern Kingdoms,47.79,19.59
    .complete 78676,1 --1/1 Eye of Bhossca
    .train 400101,1
step
    #completewith next
    .zone Silverpine Forest >>Reist nach Silberwald
step
    .train 400101,1
    >>Klickt die |cRXP_PICK_Dead Fallen lassen|r-Truhe auf dem Boden an
    .goto Silverpine Forest,47.1,71.1
    .turnin 78676 >>Gebt die Quest Das Auge von Bhossca ab
step
    #completewith next
    +|cRXP_WARN_Ihr müsst nun eine Hauptstadt betreten, um Post von *C* zu erhalten|r
    .train 400101,1
step << Horde
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Karos|r
    .fly Undercity >> Fliegt nach Unterstadt
    .target Karos Razok
    .zoneskip Undercity
    .train 400101,1
step << Alliance
    >>Lauft nach Süderstade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Darla Harris|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Darla Harris
    .train 400101,1
step
    .goto Undercity,68.290,38.043,5 >> |cRXP_WARN_Betretet Unterstadt. Überprüft euer Postfach auf den Brief von *C*|r << Horde
    .goto Ironforge,71.485,72.280,5 >> |cRXP_WARN_Betretet Eisenschmiede. Überprüft das Postfach von Euch auf den Brief von *C*. Überspringt diesen Schritt, wenn ihr das in einer anderen Großstadt macht|r << Alliance
    .train 400101,1
step
    #completewith next
    +|cRXP_WARN_Öffnet euren Briefkasten, um die Post von *C* zu lesen, wenn sie angekommen ist. Fliegt nach Silberwald zurück, wenn ihr bereit seid|r << Horde
    +|cRXP_WARN_Öffnet das Postfach von Euch, um die Post von *C* zu lesen, sobald sie angekommen ist. Fliegt nach Süderstade zurück und begebt euch dann nach Silverpine, wenn ihr bereit seid.|r << Alliance
step << Horde
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Michael|r
    .fly The Sepulcher>> Fliege nach Das Grabmal
    .target Michael Garrett
    .zoneskip Silverpine Forest
    .train 400101,1
step << Alliance
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Southshore >> Fliege nach Süderstade
    .target Gryth Thurden
    .zoneskip Silverpine Forest
    .train 400101,1
step << Alliance
    #completewith next
    .zone Silverpine Forest >> Reist nach Silberwald
    .train 400101,1
step
    .goto Silverpine Forest,47.114,70.974
    >>Klickt |cRXP_PICK_Tot Fallen lassen|r Truhe um |T134419:0|t[|cRXP_FRIENDLY_Rune von Schattenschritt|r]
    .collect 210979,1 --Rune of Shadowstep (1)
    .train 400101,1
step
    .train 400101 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune von Schattenschritt|r] |cRXP_WARN_um zu erlernen|r |T132303:0|t[Schattenschritt]
    .use 210979
    .itemcount 210979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Gürtel
#name Shurikenwurf - 30 (Sümpfe des Elends)
#title Shurikenwurf

step
    .train 400096,1
    .train 1842 >>|cRXP_WARN_Ihr müsst erlernen|r |T136162:0|t[Falle entschärfen] |cRXP_WARN_bevor ihr erhalten könnt|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Assassine|r]
    .collect 5060,1 >>|cRXP_WARN_You also need|r |T134065:0|t[Thieves' Werkzeuge]
step
    #completewith next
    .zone Swamp of Sorrows >>Reist zu den Sümpfen des Elends
step
    .goto Swamp of Sorrows,41.48,29.97
    .train 400096,1
    .cast 1842 >>|cRXP_WARN_Benutzt|r |T136162:0|t[Falle entschärfen] |cRXP_WARN_auf der|r |cRXP_PICK_Pfeilgeschoss Falle|r |cRXP_WARN_auf dem Baum|r
step
    .goto Swamp of Sorrows,42.76,30.77
    >>Plündert die |cRXP_PICK_Conspicuous Cache|r, die bei |T134419:0|t[|cRXP_FRIENDLY_Rune des Assassinen|r] spawnt
    .collect 213139,1
step
    .itemcount 213139,1
    .use 213139
    .train 400096 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Assassinen|r] |cRXP_WARN_um|r |T132330:0|t[Shurikenwurf] zu erlernen
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Stiefel
#name Meister des hinterhältigen Angriffs - 34 (Schlingendorntal)
#title Meister des hinterhältigen Angriffs

step
    .train 425103,1
    .skill lockpicking,125 >>|cRXP_WARN_Ihr müsst von Euch|r |T136058:0|t[Schlossknacken] |cRXP_WARN_bis 125 erhöhen, um|r |T132299:0|t[Meister des hinterhältigen Angriffs] |cRXP_WARN_Rune zu erhalten|r
step
    .train 425103,1
    #completewith next
    .zone Stranglethorn Vale >>Reist nach Schlingendorntal.
step
    .train 425103,1
    #completewith Uniform
    .goto Stranglethorn Vale,46.30,7.61,30 >> Betretet Das Vorratslager (Kurzen's Höhle)
step
    .train 425103,1
    #completewith next
    >>Wirkt |T133644:0|t[Taschendiebstahl] auf |cRXP_ENEMY_Kurzen-Eliten|r und |cRXP_ENEMY_Kurzen-Unterführer|r um |cRXP_LOOT_Verbindungs-Käfigschlüssel|r zu erhalten
    .collect 216616,1
    .mob Kurzen Elite
    .mob Kurzen Subchief
step
    #label Uniform
    .train 425103,1
    .goto Stranglethorn Vale,49.616,7.743
    >>Öffnet die |cRXP_PICK_Kurzen Vorratskiste|r. Plündert sie für die |cRXP_LOOT_Kurzens Kämpferuniform|r
    .collect 216617,1
step
    .train 425103,1
    .goto Stranglethorn Vale,49.943,3.953,40,0
    .goto Stranglethorn Vale,49.617,7.562,40,0
    .goto Stranglethorn Vale,49.25,6.18
    >>|T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Kurzen Elites|r und |cRXP_ENEMY_Kurzen Subchiefs|r für den |cRXP_LOOT_Lagerkäfigschlüssel|r
    .collect 216616,1
    .mob Kurzen Elite
    .mob Kurzen Subchief
step
    .train 425103,1
    #completewith next
    .goto Stranglethorn Vale,44.261,7.908,60 >> Verlasst die Höhle. Reist zu |cRXP_FRIENDLY_NPCs|r im äußeren Turm
step
    .train 425103,1
    .goto Stranglethorn Vale,44.261,7.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_NPCs|r im Turm
    >>|cRXP_WARN_Er hat einen Respawn-Timer von etwa 3 Minuten|r
    .destroy 216616 >> Gebt ihm |cRXP_LOOT_Lagerkäfigschlüssel|r
    .destroy 216617 >> Gebt ihm |cRXP_LOOT_Kurzens Kämpferuniform|r
    .skipgossip 218230,1
    .target Wendel Mathers
step
    .train 425103,1
    #completewith next
    .subzone 35 >>Reist nach Beutebucht
step
    .train 425103,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Aransas|r
    >>Sie wird dir |T133640:0|t[|cRXP_LOOT_Käpt'n Aransas' Belohnung|r] geben
    .goto Stranglethorn Vale,27.681,76.648
    .skipgossip
    .collect 216618,1
    .target Captain Aransas
step
    .train 425103,1
    .use 216618 >>Öffnet |T133640:0|t[|cRXP_LOOT_Kapitänin Aransas' Belohnung|r], um |T134419:0|t[|cRXP_FRIENDLY_Rune of Feingefühl|r] und |T338666:0|t[|cRXP_FRIENDLY_Janis Amulett|r] zu erhalten
    >>|cRXP_WARN_Zerstört NICHT|r |T338666:0|t[|cRXP_FRIENDLY_Janis Amulett|r] |cRXP_WARN_da es zum Sammeln zukünftiger Runen verwendet wird|r
    .collect 213136,1
step
    .itemcount 213136,1
    .use 213136
    .train 425103 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Feingefühl|r] |cRXP_WARN_um zu trainieren|r |T132299:0|t[Meister des hinterhältigen Angriffs]
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Stiefel
#title Schläge abschwächen
#name Schläge abschwächen - 27 (Tausend Nadeln)


step
    #optional
    .train 400093,1
    .skill lockpicking,45 >>|cRXP_WARN_Ihr müsst von Euch|r |T136058:0|t[Schlossknacken] |cRXP_WARN_mindestens auf Stufe 45 trainieren, um die|r |T134919:0|t[Schläge abschwächen] |cRXP_WARN_Rune zu erhalten|r
step
    .train 400093,1
    #completewith next
    .zone Thousand Needles >>Reist nach |cFFfa9602Tausend Nadeln|r
step
    .train 400093,1
    #completewith next
    .goto Thousand Needles,18.44,21.58,10 >> BETRETET das große Zelt bei Camp E'thok
step
    .train 400093,1
    .goto Thousand Needles,18.686,21.126
    >>Öffnet die |cRXP_PICK_Sizable Stolen Schließkassette|r. Plündert sie, um |T132597:0|t[|cRXP_LOOT_Große Schließkassette|r] zu erhalten
    .collect 215451,1
step
    .train 400093,1
    .cast 1804 >>|cRXP_WARN_Wirkt|r |T136058:0|t[Schloss knacken] |cRXP_WARN_auf die|r |T132597:0|t[|cRXP_LOOT_Große Schließkassette|r], |cRXP_WARN_um sie zu öffnen|r
    .usespell 1804
    .use 215451
step
    .train 400093,1
    .use 215451 >> Öffnet |T132597:0|t[|cRXP_LOOT_Große Schließkassette|r]. Plündert sie, um |T132597:0|t[|cRXP_LOOT_Mittelgroße Schließkassette|r] zu erhalten
    .collect 215452,1
step
    .train 400093,1
    .cast 1804 >>|cRXP_WARN_Wirkt|r |T136058:0|t[Schloss knacken] |cRXP_WARN_auf die|r |T132597:0|t[|cRXP_LOOT_Mittelgroße Schließkassette|r], |cRXP_WARN_um sie zu öffnen|r
    .usespell 1804
    .use 215452
step
    .train 400093,1
    .use 215452 >> Öffnet |T132597:0|t[|cRXP_LOOT_Mittelgroße Schließkassette|r]. Plündert sie, um |T132597:0|t[|cRXP_LOOT_Kleine Schließkassette|r] zu erhalten
    .collect 215453,1
step
    .train 400093,1
    .cast 1804 >>|cRXP_WARN_Wirkt|r |T136058:0|t[Schloss knacken] |cRXP_WARN_auf die|r |T132597:0|t[|cRXP_LOOT_Kleine Schließkassette|r], |cRXP_WARN_um sie zu öffnen|r
    .usespell 1804
    .use 215453
step
    .train 400093,1
    .use 215453 >> Öffnet |T132597:0|t[|cRXP_LOOT_Kleine Schließkassette|r]. Plündert sie, um |T134419:0|t[|cRXP_FRIENDLY_Rune des Rechtsauslegers|r] zu erhalten
    .collect 213138,1
step
    .itemcount 213138,1
    .use 213138
    .train 400093 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Rechtsauslegers|r] |cRXP_WARN_um zu erlernen|r |T134919:0|t[Schläge abschwächen]
]])

 RXPGuides.RegisterGuide([[
 #classic
 << Rogue SoD
 #group RestedXP Rune & Books Dungeonführer
 #subgroup Helm
 #title Fokussierte Angriffe
 #name Fokussierte Angriffe - 34 (Hinterland)

 step
    >>|cRXP_WARN_Ihr werdet benötigen|r |T136175:0|t[Blenden] |cRXP_WARN_und|r |T133587:0|t[Blendungspulver] |cRXP_WARN_um die|r |T236274:0|t[Fokussierte Angriffe] |cRXP_WARN_Rune zu erhalten|r
    .train 2094 >>Erlernen |T136175:0|t[Blenden]
    .collect 5530,1 -- Blinding Powder 1/1
    .train 432291,1
step
    #completewith next
    .zone The Hinterlands >>Reist nach |cFFfa9602Das Hinterland|r
step
    .goto The Hinterlands,72.76,52.91
    >>Wirkt |T136175:0|t[Blenden] auf die |cRXP_ENEMY_Vilebranch-Maske|r, dann plündert die |cRXP_PICK_Schatz der Fledermaus|r Truhe für |T134419:0|t[|cRXP_FRIENDLY_Rune des Fokus|r]
    .collect 221433,1 -- rune of focus
    .mob Vilebranch Mask
    .train 432291,1
step
    .itemcount 221433,1
    .use 221433
    .train 432291 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Fokus|r] |cRXP_WARN_zum Trainieren von|r |T236274:0|t[Fokussierte Angriffe]
 ]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Armschienen
#title Unfairer Vorteil
#name Unfairer Vorteil - 40 (Tanaris)

step
    .train 921 >>|cRXP_WARN_Ihr müsst trainieren|r |T133644:0|t[Taschendiebstahl] |cRXP_WARN_um die|r |T236285:0|t[Unfairer Vorteil] |cRXP_WARN_Rune zu erhalten|r
    .train 432301,1
step
    #completewith CoinPurse
    .zone Tanaris >>|cRXP_WARN_Reist nach|r |cFFfa9602Tanaris|r
step
    #completewith next
    .subzone 1336 >>Lauf zur Lost-Rigger-Bucht
step
    #label CoinPurse
	.line Tanaris,70.94,42.85,72.22,44.35,72.58,45.30,71.07,46.03,71.25,47.98,72.39,48.23,72.59,47.10,73.27,47.99,74.25,47.27,73.68,45.89,72.58,45.30,72.22,44.35,70.94,42.85
	.goto Tanaris,70.94,42.85,50,0
	.goto Tanaris,72.22,44.35,50,0
	.goto Tanaris,72.58,45.30,50,0
	.goto Tanaris,71.07,46.03,50,0
	.goto Tanaris,71.25,47.98,50,0
	.goto Tanaris,72.39,48.23,50,0
	.goto Tanaris,72.59,47.10,50,0
	.goto Tanaris,73.27,47.99,50,0
	.goto Tanaris,74.25,47.27,50,0
	.goto Tanaris,73.68,45.89,50,0
	.goto Tanaris,72.58,45.30,50,0
	.goto Tanaris,72.22,44.35,50,0
	.goto Tanaris,70.94,42.85,50,0
    >>|cRXP_WARN_Wirkt|r |T133644:0|t[Taschendiebstahl] |cRXP_WARN_auf|r |cRXP_ENEMY_Southsea Piraten|r |cRXP_WARN_und|r |cRXP_ENEMY_Südmeerfreibeuter|r |cRXP_WARN_bis ihr|r |T133639:0|t|cRXP_LOOT_Kidnapper-Münze|r
    .collect 221371,1 - Kidnapper's Coin Purse 1/1
    .mob Southsea Pirate
    .mob Southsea Freebooter
    .train 432301,1
step
    >>Öffnet die |T133639:0|t|cRXP_LOOT_Kidnapper's Münze Purse|r und plündert ein |T133302:0|t|cRXP_LOOT_Precious Medallion|r
    .collect 221370,1 -- Precious Medallion 1/1
    .use 221371
    .train 432301,1
step << Rogue
    .goto Tanaris,67,22
    .gossipoption 122303 >>Sprecht mit |cRXP_FRIENDLY_Stupser|r, um die |T134419:0|t[|cRXP_FRIENDLY_Rune des falschen Spiels|r] zu erhalten
    .collect 221428,1 -- Rune of Foul Play
    .target Jabbey
    .train 432301,1
    .itemcount 221370,1
step << Rogue
    .itemcount 221428,1
    .use 221428
    .train 432301 >>|cRXP_WARN_Benutzt|r |T134419:0|t[|cRXP_FRIENDLY_Rune des falschen Spiels|r] |cRXP_WARN_um zu trainieren|r |T236285:0|t[Unfairer Vorteil]

]])
RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Armschienen
#title Gemetzel
#name Gemetzel - 45 (Verwüstete Lande)

step
    #optional
    .skill lockpicking,225 >>|cRXP_WARN_Ihr müsst von Euch|r |T136058:0|t[Schlossknacken] |cRXP_WARN_mindestens auf Stufe 225 trainieren, um die|r |T236268:0|t[Massaker] |cRXP_WARN_Rune zu erhalten|r
step
    #completewith next
    .zone Blasted Lands >>Reist nach |cFFfa9602Verwüstete Lande|r
step
    #completewith next
    .goto Blasted Lands,45.27,16.52,10 >>Reist zur Spitze des Turms vor Feste Schreckensfels
step
    .goto Blasted Lands,45.27,16.52
    >>Öffnet |cRXP_PICK_Abandoned Cache|r. Tötet |cRXP_ENEMY_Murderous Verloren Eins|r (Stufe 46), der erscheint
    >>Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Massaker|r]
    .collect 221461,1 -- Rune of Carnage 1/1
    .unitscan Murderous Lost One
    .train 432299,1
step
    .use 221461
    .itemcount 221461,1
    .train 432299 >>Benutzt die |T134419:0|t[|cRXP_WARN_Rune des Massakers|r], |cRXP_FRIENDLY_um|r |T236268:0|t[Massaker] |cRXP_WARN_zu erlernen|r

]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Helm
#title Ehre unter Dieben
#name Ehre unter Dieben - 45 (Azeroth)

step
    #optional
    .xp 45 >>|cRXP_WARN_Ihr müsst Stufe 45 erreichen, um diese Rune zu erhalten|r
step
    #optional
    .train 400101 >>|cRXP_WARN_Ihr müsst trainiert haben|r |T132303:0|t[Schattenschritt] |cRXP_WARN_um diese Rune zu erhalten|r
step
    #optional
    .train 400080,1 >>|cRXP_WARN_Ihr müsst trainiert haben|r |T236270:0|t[Tödliche Mischung] |cRXP_WARN_um diese Rune zu erhalten|r
step
    #optional
    #completewith letterC
    >>|cRXP_WARN_Um diese Rune freizuschalten müsst ihr die Quest "Das Anwesen, Rabenholdt" abgeschlossen haben, die euch zur Ravenholdt Schurkenvereinigung vorstellt. Um sie zu erhalten sprecht mit|r |cRXP_FRIENDLY_Osborne der Nachtmensch|r |cRXP_WARN_in MoP - Objekte|r << Alliance
    +|cRXP_WARN_Um diese Rune freizuschalten müsst ihr die Quest "Das Anwesen, Rabenholdt" abgeschlossen haben, die euch zur Ravenholdt Schurkenvereinigung vorstellt. Um sie zu erhalten sprecht mit|r |cRXP_FRIENDLY_Ormok|r |cRXP_WARN_in Orgrimmar|r << Horde
    .accept 6681 >>Akzeptiert die Quest Das Anwesen, Ravenholdt << Alliance
    .isQuestAvailable 6681
step << Horde
    .goto Orgrimmar,43.91,54.69
    .gossipoption 96925 >>Sprecht mit |cRXP_FRIENDLY_Ormok|r um das |T133460:0|t[|cRXP_LOOT_Elegant Brief|r] zu erhalten. Benutzt es um die Quest zu akzeptieren
    .disablecheckbox
    .collect 17126,1,6681
    .accept 6681 >>Akzeptiert die Quest Das Anwesen, Ravenholdt
    .target Ormok
    .isQuestAvailable 6681
step
    #completewith next
    .zone Hillsbrad Foothills >>Reist nach |cFFfa9602Vorgebirge des Hügellands|r
    .isOnQuest 6681
step
    #completewith next
    .goto Hillsbrad Foothills,75.27,23.66,15,0
    .goto Hillsbrad Foothills,75.66,20.30,15,0
    .goto Hillsbrad Foothills,77.24,21.98,15,0
    .goto Hillsbrad Foothills,78.62,17.96,20 >>Betretet Rabenholdtanwesen
    .isOnQuest 6681
step
    .goto Hillsbrad Foothills,78.62,17.96
    >>Bewegt euch zu der |cRXP_PICK_Truhe|r
    .complete 6681,1 --Rite of Cunning: 1/1
    .isOnQuest 6681
step
    .goto Alterac Mountains,85.51,79.41,10,0
    .goto Alterac Mountains,86.11,80.22,10,0
    .goto Alterac Mountains,84.45,80.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fahrad|r upstairs
    .turnin 6681 >> Gebt die Quest Das Anwesen, Rabenholdt ab
    .target Fahrad
    .isOnQuest 6681
step << Alliance
    +|cRXP_WARN_Reist zu den Hauptstädten|r
    >>Darnassus
    >>Eisenschmiede
    >>Sturmwind
    .zoneskip Darnassus
    .zoneskip Ironforge
    .zoneskip Stormwind City
    .train 432295,1
step << Horde
    +|cRXP_WARN_Reisen zu den Hauptstädten|r
    >>Unterstadt
    >>Donnerfels
    >>Orgrimmar
    .zoneskip Undercity
    .zoneskip Thunder Bluff
    .zoneskip Orgrimmar
    .train 432295,1
step
    #label letterC
    +|cRXP_WARN_Überprüft von Euch Briefkasten nach dem Brief von *Fahrad*|r
    >>|cRXP_WARN_Überspringt diesen Schritt when ready|r
    .train 432295,1
step
    #completewith next
    .zone Hillsbrad Foothills >>Reist nach |cFFfa9602Vorgebirge des Hügellands|r
step
    #completewith next
    .goto Hillsbrad Foothills,75.27,23.66,15,0
    .goto Hillsbrad Foothills,75.66,20.30,15,0
    .goto Hillsbrad Foothills,77.24,21.98,15,0
    .goto Hillsbrad Foothills,78.62,17.96,20 >>Betretet Rabenholdtanwesen
step
    .goto Alterac Mountains,85.51,79.41,10,0
    .goto Alterac Mountains,86.11,80.22,10,0
    .goto Alterac Mountains,84.45,80.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fahrad|r upstairs
    .accept 80526 >>Akzeptiert die Quest Schande über mich
    .turnin 80526 >>Gebt die Quest Schande über mich ab
    .accept 80411 >>Akzeptiert die Quest Der Talisman von Kazdor
    .target Fahrad
step
    #optional
    #completewith next
    .zone Tanaris >>Lauf nach Tanaris
step
    #completewith next
    .goto Tanaris,38.69,20.20
    .subzone 1176 >>Betretet Zul'Farrak
    >>|cRXP_WARN_Ihr dürft nicht in einer Gruppe sein, um die Quest für diese Rune abzuschließen|r
step
    .goto Tanaris,38.69,20.20
    >>Öffnet |cRXP_PICK_Clay Vessels|r um das |T134799:0|t[|cRXP_LOOT_Vile Concoctions|r] zu erhalten
    >>|cRXP_WARN_Sie befinden sich in Trollzelten überall in Zul'Farrak|r
    .collect 217716,2
    .train 432295,1
step
    #completewith next
    +|cRXP_WARN_Bewegt euch zu|r |cRXP_ENEMY_Antu'sul's|r |cRXP_WARN_Höhle|r
step
    >>Benutzt |T134799:0|t[|cRXP_LOOT_Ekel Gebräu|r] auf dem Kessel. |cRXP_WARN_Es wird die Tarnung von Euch nicht durchbrechen|r
    >>Während der Boss abgelenkt ist, plündert |cRXP_PICK_Antu'Sul's Satchel|r für eine |T133724:0|t[|cRXP_LOOT_Opfergabe der Knochen|r]
    .collect 217721,1 --Offering of Bone
    .use 217716
    .train 432295,1
step
    #completewith next
    +|cRXP_WARN_Bewegt euch zu |cRXP_ENEMY_Hexendoktor Zum'rah|r im Friedhof|r
step
    >>Benutzt die zweite |T134799:0|t[|cRXP_LOOT_Ekel Gebräu|r] von Euch auf dem Kessel neben |cRXP_ENEMY_Hexendoktor Zum'rah|r. |cRXP_WARN_Es wird die Tarnung von Euch nicht durchbrechen|r
    >>Während er abgelenkt ist, plündert |cRXP_PICK_Zum'rahs Satchel|r für |T136232:0|t|cRXP_LOOT_Schutz der Toten|r
    .collect 217727,1 --ward of the dead
    .use 217716
    .train 432295,1
step
    #completewith next
    .equip 13,217727 >>Legt |T136232:0|t|cRXP_LOOT_Schutz der Toten|r an, das ihr gerade geplündert habt
    >>|cRXP_WARN_Das wird zeigen, welches|r |cRXP_PICK_Hastig ausgehobenes Grab|r |cRXP_WARN_geplündert werden muss|r
step
    >>Plündert die |cRXP_PICK_Hastig ausgehobenes Grab|r, die mit einer blauen Aura enthüllt wird, für die |T236304:0|t|cRXP_LOOT_Opfergabe des Fleisches|r
    .collect 217720,1 --offering of flesh
    .use 217727
    .train 432295,1
step
    >>Benutzt die |T236304:0|t[|cRXP_LOOT_Offering of Flesh|r], die ihr gerade gesammelt habt, zusammen mit der |T133724:0|t[|cRXP_LOOT_Offering of Knochen|r], um die |T236305:0|t[|cRXP_LOOT_Blood magischer Schaden Essenz|r] zu erhalten
    .collect 217719,1 --Blood Magic Essence
    .use 217720
    .train 432295,1
step
    >>Geht zum Fuß der Pyramidentreppe und schaut auf die rechte Seite von Euch. An der Seite der Mauer werdet ihr einen kleinen Steinblock sehen. Springt auf diesen Block und dann geht zum Rand
    >>Auf dem zweiten Balkon auf der rechten Seite findet ihr einen |cRXP_PICK_Sandfury-Versteck|r. Plündert es für das |T237274:0|t|cRXP_LOOT_Hohles Emblem|r
    .collect 217717,1 --Hollow Emblem
    .train 432295,1
step
    >>Benutzt das |T237274:0|t|cRXP_LOOT_Hollow Emblem|r, das ihr gerade geplündert habt, zusammen mit der |T236305:0|t[|cRXP_LOOT_Blood magischer Schaden Essenz|r], um das |T133572:0|t[|cRXP_LOOT_Emblem of Blutiges magischer Schaden|r] zu erhalten
    .collect 217718,1 --Emblem of Blood Magic
    .use 217717
    .train 432295,1
step
    >>Klettert die Treppen zum Gipfel der Pyramide und plündert die |cRXP_PICK_Verzauberte Kriegstruhe|r für das |T133313:0|t[|cRXP_LOOT_Talisman des Kazdor|r]
    .collect 217609,1 --Talisman of Kazdor
    .train 432295,1
step
    #completewith next
    .zone Hillsbrad Foothills >>Reist nach |cFFfa9602Vorgebirge des Hügellands|r
step
    #completewith next
    .goto Hillsbrad Foothills,75.27,23.66,15,0
    .goto Hillsbrad Foothills,75.66,20.30,15,0
    .goto Hillsbrad Foothills,77.24,21.98,15,0
    .goto Hillsbrad Foothills,78.62,17.96,20 >>Betretet Rabenholdtanwesen
step
    .goto Alterac Mountains,85.51,79.41,10,0
    .goto Alterac Mountains,86.11,80.22,10,0
    .goto Alterac Mountains,84.45,80.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fahrad|r upstairs
    .turnin 80411 >>Gebt den Talisman von Kazdor ab
    .accept 80453 >>Akzeptiert die Quest Beste ausgeheckte Pläne
    .target Fahrad
step
    .goto Alterac Mountains,86.0,80.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zan Messerritzel|r im Keller
    .turnin 80453 >>Gebt die Quest Beste ausgeheckte Pläne ab
    .accept 80454 >>Akzeptiert die Quest Eine letzte Lieferung
    .target Zan Shivsproket
step
    #completewith next
    .zone Silverpine Forest >>Reist nach Silberwald
step
    .goto Silverpine Forest,47.114,70.974
    >>Klickt auf die |cRXP_PICK_Dead Fallen lassen|r Truhe
    .turnin 80454 >>Gebt die Quest Eine letzte Lieferung ab
    .accept 80455 >>Akzeptiert, nehmt euch Zeit
    .train 432295,1
step
    #completewith next
    .zone Hillsbrad Foothills >>Reist nach |cFFfa9602Vorgebirge des Hügellands|r
step
    #completewith next
    .goto Hillsbrad Foothills,75.27,23.66,15,0
    .goto Hillsbrad Foothills,75.66,20.30,15,0
    .goto Hillsbrad Foothills,77.24,21.98,15,0
    .goto Hillsbrad Foothills,78.62,17.96,20 >>Betretet Rabenholdtanwesen
step
    .goto Alterac Mountains,85.51,79.41,10,0
    .goto Alterac Mountains,86.11,80.22,10,0
    .goto Alterac Mountains,84.45,80.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Fahrad|r upstairs
    .turnin 80455 >>Gebt ab, nehmt euch Zeit
    .target Fahrad
step
    .train 432295 >>|cRXP_WARN_Benutzt das|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Coterie|r] |cRXP_WARN_um zu trainieren|r |T236275:0|t[Ehre unter Dieben]
    .use 217736
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Verschleierung
#title Blutroter Sturm
#name Blutroter Sturm - 60 (Westliche Pestländer)

step
    .train 415918,1
    .zone Western Plaguelands >>Lauf in die Westlichen Pestländer
step
    .train 415918,1
    #completewith next
    .subzone 190 >> Reise nach Herdweiler
step
    #label ToolboxKey
    .train 415918,1
    .goto Western Plaguelands,45.0,13.6
    >>Tötet oder |T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Scarlet Workers|r. Plündert sie für |cRXP_LOOT_Toolbox Schlüssel|r
    .collect 227928,1 -- Toolbox Key 1/1
    .mob Scarlet Worker
step
    .train 415918,1
    .goto Western Plaguelands,45.0,14.2
    >>Öffnet den |cRXP_PICK_Scarlet Werkzeugkasten|r. Plündert ihn für das |cRXP_LOOT_Rostiges Brecheisen|r
    .collect 227932,1 -- Rusty Crowbar 1/1
step
    .goto Western Plaguelands,49.5,18.5
    >>Geht zum Gipfel des Turms in der Mitte von Herdweiler. Öffnet die |cRXP_PICK_Markierte Kiste|r dort. Plündert sie für das |T133640:0|t[|cRXP_LOOT_Verstecktes Bündel|r] und öffnet es, um einen |T134237:0|t[|cRXP_LOOT_Sicheren Kisten-Schlüssel|r] zu plündern
    .collect 227930,1
step
    .goto Western Plaguelands,46.3,14.6
    >>Geht zur mittleren Etage des zweiten Turms in Herdweiler auf der Nordseite der Stadt. Benutzt den |T134237:0|t[|cRXP_LOOT_Safe Kasten Schlüssel|r], um [|cRXP_PICK_Belavus' Sichere Schachtel|r] zu öffnen und plündert sie für die |T134419:0|t[|cRXP_FRIENDLY_Rune des blutroten Sturms|r]
    .collect 227456,1 --Rune of the crimson tempest
step
    .use 227456
    .itemcount 227456,1
    .train 415918 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des blutroten Sturms|r] |cRXP_WARN_zum Trainieren von|r |T135315:0|t[Blutroter Sturm]
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Verschleierung
#title Dolchfächer
#name Dolchfächer - 55 (Winterquell)

step
    .train 436609,1
    .zone Winterspring >>Reist nach Winterquell
step
    .train 436609,1
    .goto Winterspring,67.7,35.4
    >>Öffnet die |cRXP_PICK_Hölzerne Truhe|r. Plündert sie für die |T134419:0|t[|cRXP_FRIENDLY_Rune der Messer|r]
    >>|cRXP_WARN_Beim Öffnen der |cRXP_PICK_Hölzern Truhe|r wählt die folgenden Optionen in dieser Reihenfolge:|r
    >>|cRXP_WARN_Frostsäbler|r
    >>|cRXP_WARN_Owl|r
    >>|cRXP_WARN_Bär|r
    >>|cRXP_WARN_Owl|r
    .collect 227921,1
step
    .use 227921
    .itemcount 227921,1
    .train 436609 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Messer|r] |cRXP_WARN_zum Trainieren von|r |T236273:0|t[Dolchfächer]
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Rune & Books Dungeonführer
#subgroup Verschleierung
#title Donnerbüchse
#name Donnerbüchse - 60 (Die Östlichen Pestländer)

step
    .train 415922,1
    .zone Eastern Plaguelands >>Lauf in die Östlichen Pestländer
step
    .train 415922,1
    .goto Eastern Plaguelands,83,85
    >>Öffnet |cRXP_LOOT_Scarlet Footlockers|r überall in Try's Hand bis ihr ein |cRXP_LOOT_Sendesiegel|r erhaltet
    .collect 227451,1
step
    .train 415922,1
    #completewith FinalPillar
    >>|cRXP_WARN_Für die folgenden Schritte müsst ihr VIER |cRXP_PICK_Sending Pillars|r in der richtigen Reihenfolge anklicken. Nachdem ihr eine anklickt, werdet ihr WILLKÜRLICH zu einer anderen teleportiert. Stellt sicher, dass ihr am richtigen Ort seid, bevor ihr eine andere anklickt!|r
step
    .train 415922,1
    .goto Eastern Plaguelands,82,57
    .cast 6477,6478 >>Klickt den ersten |cRXP_PICK_Sending Säule|r |cRXP_WARN_behind Kapelle des Hoffnungsvollen Lichts|r
step
    .train 415922,1
    .goto Eastern Plaguelands,40,92
    .cast 6477,6478 >>Klickt den zweiten |cRXP_PICK_Sending Säule|r |cRXP_WARN_in Darroheim|r
step
    .train 415922,1
    .goto Eastern Plaguelands,70,34
    .cast 6477,6478 >>Klickt den dritten |cRXP_PICK_Sending Säule|r |cRXP_WARN_in Nordtal|r
step
    .train 415922,1
    #label FinalPillar
    .goto Eastern Plaguelands,14,30
    .cast 6477,6478 >>Klickt den vierten |cRXP_PICK_Sending Säule|r |cRXP_WARN_in Schreckenstal|r
step
    .train 415922,1
    >>|cRXP_WARN_Enter the House|r
    >>Öffnet |cRXP_PICK_Adon's Trunk|r auf dem Boden. Plündert sie für |T134419:0|t[|cRXP_LOOT_Rune of the Säbelrassler|r]
    .collect 227922,1
step
    .use 227922
    .itemcount 227922,1
    .train 415922 >>|cRXP_WARN_Benutzt das|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Säbelrassler|r] |cRXP_WARN_um zu trainieren|r |T134538:0|t[Donnerbüchse]
]])
