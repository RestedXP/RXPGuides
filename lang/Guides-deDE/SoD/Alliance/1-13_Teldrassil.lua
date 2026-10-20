if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#season 2
#name 1-7 Laubschattental SoD
#displayname 1-7 Laubschattental
#version 1
#group RestedXP Allianz 1-20
#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 7-13 Teldrassil SoD
step << !NightElf
    #sticky
    #completewith next
    +Ihr habt einen Leitfaden für Nachtelfen ausgewählt. Ihr solltet die selbe Anfangszone wählen, in der ihr startet
step
    .goto Teldrassil,58.695,44.266
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Konservator Ilthalaine|r
    .accept 456 >> Akzeptiert die Quest Das Gleichgewicht der Natur
step << Druid/Warrior/Rogue/Hunter/Priest
    .goto Teldrassil,58.88,43.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Runenhändler|r
    >>|cRXP_BUY_Verkauft Euer|r |T135005:0|t[Hemd] |cRXP_BUY_und kauft die |T135975:0|t[|cRXP_FRIENDLY_Prophezeiung einer entweihten Zitadelle|r] von ihm|r << Priest
    >>|cRXP_BUY_Verkauft Eure|r |T133975:0|t[Äpfel] |cRXP_BUY_und kauft die folgenden Runen:|r << Druid
    >>|cRXP_BUY_Verkauft eines Eurer |T133972:0|t|cRXP_LOOT_[Hart Jerky]|r und kauft die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des Siegesrauschs|r] << Warrior
    >>|cRXP_BUY_Verkauft Euer|r |T135005:0|t[Hemd] und |T132540:0|t[Stiefel] |cRXP_WARN_(sie können nicht eingraviert werden)|r |cRXP_BUY_und kauft die |T134419:0|t[|cRXP_FRIENDLY_Rune des Schattenschlags|r] |cRXP_BUY_und|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Säbelhieb|r] << Rogue
    >>|cRXP_BUY_Verkauft Euer|r |T135005:0|t[Hemd] und |T132540:0|t[Stiefel] |cRXP_WARN_(sie können nicht eingraviert werden)|r |cRXP_BUY_und kauft die |T134419:0|t[|cRXP_FRIENDLY_Rune of Tötungsbefehl|r] |cRXP_BUY_und|r |T133739:0|t[|cRXP_FRIENDLY_Gegenstände|r] von ihm|r << Hunter
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel
    .collect 209852,1 << Hunter --Rune of Kill Command
    .collect 226401,1 << Hunter --Treatise on the Heart of the Lion
    .collect 208414,1 << Druid --Lunar Idol
    .collect 210500,1 << Druid --Rune of the Stars
    .collect 206989,1 << Druid --Rune of the Sun
    .collect 227749,1 << Druid --Rune of the Falling Star
    .collect 204806,1 << Warrior --Rune of Victory Rush
    .collect 210979,1 << Rogue --Rune of Shadowstep
    .collect 208772,1 << Rogue --Rune of Saber Slash
    >>Ihr werdet den Rest eurer Runen sehr bald erhalten
    .target Rune Broker
    .skipgossip
step << Warrior/Rogue/Hunter/Druid/Priest
    .equip 18 >> Legt die |T134903:0|t[|cRXP_FRIENDLY_Mondgötze|r] an, ihr könnt es nach 30 Sek. benutzen um |T237472:0|t[Furor von Sturmgrimm] zu trainieren << Druid
    .train 402852 >> Benutzt die |T135975:0|t[|cRXP_FRIENDLY_Prophezeiung einer entweihten Zitadelle|r] um |T237570:0|t[Homunculi] zu erlernen << Priest
    .train 400105 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Schattenschlags|r] um |T132323:0|t[Schattenschlag] zu erlernen << Rogue
    .train 424984 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Säbelschlitzers|r] um |T132375:0|t[Säbelhieb] zu erlernen << Rogue
    .train 403470 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Siegesrauschs|r] um |T132342:0|t[Siegesrausch] zu trainieren, ihr werdet sie bald eingravieren << Warrior
    .train 410111 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune of Tötungsbefehl|r] << Hunter
    .train 409580 >> Benutzt die |T133739:0|t[|cRXP_FRIENDLY_Abhandlung über das Löwenherz|r] um |T132185:0|t[Löwenherz] zu trainieren << Hunter
    .train 424718 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Sterne|r] um |T135730:0|t[Sternensog] zu trainieren << Druid
    .train 416044 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Sonne|r] um |T236216:0|t[Sonnenfeuer] zu trainieren << Druid
    .train 439770 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Sternschnuppe|r] um |T236168:0|t[Sternenregen] zu trainieren << Druid
    .use 205947 << Priest --Prophecy of a Desecrated Citadel
    .use 204806 << Warrior --Rune of Victory Rush
    .use 204795 << Rogue --Rune of Shadowstrike
    .use 208772 << Rogue --Rune of Saber Slash
    .use 209852 << Hunter --Rune of Kill Command
    .use 226401 << Hunter --Treatise on the Heart of the Lion
    .use 208414 << Druid --Lunar Idol
    .use 210500 << Druid --Rune of the Stars
    .use 206989 << Druid --Rune of the Sun
    .use 227749 << Druid --Rune of the Falling Star
    .engrave 7 >> Graviert |T237570:0|t[Homunculi] auf eure Hosen << Priest
    .engrave 7 >> Graviert |T236174:0|t[Tödlicher Schuss] auf eure Hosen << Hunter
    .engrave 7 >> Graviert |T135730:0|t[Sternensog] auf eure Beine << Druid
step << Hunter
    #optional
    #sticky
    .aura 409583 >> Denkt daran, Euer |T132185:0|t[Herz des Löwen] zu aktivieren
step << Druid
    #season 2
    #optional
    #sticky
    .train 410061 >> Benutzt die |T134903:0|t[|cRXP_FRIENDLY_Mondgötze|r] aus Eurem Charakterpanel um |T237472:0|t[Furor von Sturmgrimm] zu trainieren
    .engrave 5 >> Graviert Euren Brustpanzer mit |T237472:0|t[Furor von Sturmgrimm]
step
    #sticky
    #label balance1
    #completewith GoodProtector
    >>Tötet |cRXP_ENEMY_Junger Nachtsäbler|r und |cRXP_ENEMY_Junge Disteleber|r
    .goto Teldrassil,62.0,42.6,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob Young Nightsaber
    .mob Young Thistle Boar
step
    >>Plündert die Mobs, die ihr tötet, stellt sicher, dass ihr mindestens 10 Kupfer an Vendor-Schrott habt, ihr werdet es benötigen, um |T132333:0|t[Schlachtruf] zu trainieren<< Warrior
    .xp 2 >> Farmt bis Stufe 2
step << !Warrior !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dirania Silvershine|r und |cRXP_FRIENDLY_Melithar Staghelm|r
    #label GoodProtector
    .accept 4495 >> Akzeptiert die Quest Ein guter Freund
    .goto Teldrassil,60.899,41.961
    .accept 458 >> Akzeptiert die Quest Die Beschützerin des Waldlandes
	.goto Teldrassil,59.924,42.474
    .target Dirania Silvershine
    .target Melithar Staghelm
step << Warrior
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Melithar Staghelm|r
    #label GoodProtector
    .accept 458 >> Akzeptiert die Quest Die Beschützerin des Waldlandes
	.goto Teldrassil,59.924,42.474
    .target Melithar Staghelm
step << Warrior/Rogue
    #season 2
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_verkauft Schrott|r
    .target Keina
step << Rogue
    .goto Teldrassil,59.63,38.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Frahun Shadewhisper|r
    .accept 77573 >> Akzeptiert die Quest Zweistöckige Arbeit
    .turnin 77573 >> Gebt die Quest Zweistöckige Arbeit ab
    .target Frahun Shadewhisper
step << Warrior
    #season 2
    .goto Teldrassil,59.637,38.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alyissia|r
    .accept 77575 >> Akzeptiert die Quest Unter den Schattenweben
    .turnin 77575 >> Gebt die Quest Unter den Schattenweben ab
    .trainer >> Erlernt |T132333:0|t[Schlachtruf]
    .target Alyissia
step << Warrior/Rogue
    .equip 10 >> Legt die |T132938:0|t[Befleckte Kettenhandschuhe] an << Warrior
    .engrave 10 >> Graviert |T132342:0|t[Siegesrausch] auf eure Handschuhe << Warrior
    .use 2385 << Warrior -- Tarnished Chain Gloves
    .equip 10 >> Legt die |T132952:0|t[Gesprungenen Lederhandschuhe] an << Rogue
    .engrave 10 >> Graviert |T132375:0|t[Säbelhieb] auf eure Handschuhe << Rogue
    .use 2125 << Rogue --Cracked Leather Gloves
step << Warrior/Rogue
    #season 2
    .goto Teldrassil,60.8,42.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dirania Silvershine|r
    .accept 4495 >> Akzeptiert die Quest Ein guter Freund
    .target Dirania Silvershine
step
    >>|cRXP_WARN_Stellt sicher, dass ihr alle Ausrüstungsteile tragt, die fallen. Ihr werdet sie brauchen um|r |T134419:0|t[Runen] |cRXP_WARN_darauf einzugravieren|r
    >>Tötet |cRXP_ENEMY_Junger Nachtsäbler|r und |cRXP_ENEMY_Junge Disteleber|r
    .goto Teldrassil,62.0,42.6,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob Young Nightsaber
    .mob Young Thistle Boar
step
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Konservator Ilthalaine|r
    >>Nehmt die |T132939:0|t[Handschuhe] als Belohnung um eine Rune darauf zu eingravieren << Druid/Hunter
    >>Nehmt die |T132611:0|t[Armschienen] als Belohnung um eine Rune darauf zu eingravieren << Priest
    .turnin 456 >> Gebt die Quest Das Gleichgewicht der Natur ab
    .target Conservator Ilthalaine
    .accept 457 >> Akzeptiert die Quest Das Gleichgewicht der Natur
step << Hunter/Rogue/Priest
    .goto Teldrassil,58.88,43.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Runenhändler|r
    >>|cRXP_WARN_Passt auf, verkauft keine Ausrüstung, die ihr anlegen könnt|r
    >> |cRXP_BUY_Verkauft die Trashgegenstände und kauft alle der folgenden Runen:|r << Hunter/Rogue/Priest
    .collect 212552,1 << Priest --Psychosophic Epiphany
    .collect 221481,1 << Priest --Nihilist Epiphany
    .collect 205940,1 << Priest --Memory of a Dark Purpose
    .collect 205951,1 << Priest --Memory of a Troubled Acolyte
    .collect 205932,1 << Priest --Prophecy of a King's Demise
    .collect 206168,1 << Hunter --Rune of the Chimera
    .collect 216770,1 << Hunter --Treatise on Aspect of the Viper
    .collect 210818,1 << Hunter --Rune of Lone Wolf
    .collect 213124,1 << Hunter --Rune of Close Combat
    .collect 226252,1 << Hunter --Rune of the Guerrilla
    .collect 210979,1 << Rogue --Rune of Shadowstep
    .collect 221428,1 << Rogue --Rune of Foul Play
    .collect 227922,1 << Rogue --Rune of the Swashbuckler
    >>Ihr werdet den Rest eurer Runen sehr bald erhalten
    .target Rune Broker
    .skipgossip
step << Hunter/Rogue/Priest
    .use 212552 << Priest --Psychosophic Epiphany
    .use 221481 << Priest --Nihilit Epiphany
    .use 205940 << Priest --Memory of a Dark Purpose
    .use 205951 << Priest --Memory of a Troubled Acolyte
    .use 205932 << Priest --Prophecy of a King's Demise
    .use 206168 << Hunter --Rune of the Chimera
    .use 216770 << Hunter --Treatise on Aspect of the Viper
    .use 210818 << Hunter --Rune of Lone Wolf
    .use 213124 << Hunter --Rune of Close Combat
    .use 226252 << Hunter --Rune of the Guerrilla
    .use 210979 << Rogue --Rune of Shadowstep
    .use 221428 << Rogue --Rune of Foul Play
    .use 227922 << Rogue --Rune of the Swashbuckler
    .train 431663 >> Benutzt die |T135791:0|t[|cRXP_FRIENDLY_Psychosophische Offenbarung|r] um |T136181:0|t[Gedankenstachel] zu erlernen << Priest
    .train 431705 >> Benutzt die |T135791:0|t[|cRXP_FRIENDLY_Nihilist Offenbarung|r] um |T132886:0|t[Zone der Leere] zu trainieren << Priest
    .train 425216 >> Benutzt die |T136222:0|t[|cRXP_FRIENDLY_Erinnerung an einen dunklen Zweck|r] um |T237514:0|t[Pest der Leere] zu erlernen << Priest
    .train 402862 >> Benutzt die |T136222:0|t[|cRXP_FRIENDLY_Erinnerung eines besorgten Akolyten|r] um |T237545:0|t[Sühne] zu erlernen << Priest
    .train 402849 >> Benutzt die |T135975:0|t[|cRXP_FRIENDLY_Prophezeiung des Tods eines Königs|r] um |T136149:0|t[Schattenwort: Tod] zu erlernen << Priest
    .train 410121 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune der Chimäre|r] um |T236176:0|t[Schimärenschuss] zu trainieren << Hunter
    .train 415423 >> Benutzt die |T133739:0|t[Abhandlung zum Aspekt der Viper|cRXP_FRIENDLY_] um |T132160:0|t[Aspekt der Viper]|r zu trainieren << Hunter
    .train 410122 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des einsamen Wolfs|r] um |T132266:0|t[Einsamer Wolf] zu trainieren << Hunter
    .train 416086 >> Benutzt |T134419:0|t[|cRXP_FRIENDLY_Rune des Nahkampfs|r], um |T132394:0|t[Nahkampfspezialist] zu trainieren << Hunter
    .train 440563 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Guerrillas|r] um |T132171:0|t[Drauf und weg] zu trainieren << Hunter
    .train 400101 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Schattenschritts|r] um |T132303:0|t[Schattenschritt] zu erlernen << Rogue
    .train 432301 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des falschen Spiels|r] um |T236285:0|t[Unfairer Vorteil] zu erlernen << Rogue
    .train 415922 >> Benutzt die |T134419:0|t[|cRXP_FRIENDLY_Rune des Schwadroneurs|r] um |T134538:0|t[Donnerbüchse] zu erlernen << Rogue
step << Druid
    #sticky
    #optional
    >> |cRXP_WARN_Haltet Ausschau nach|r Umhang |cRXP_WARN_drops|r|cRXP_WARN_. Legt ihn an und graviert|r |T236168:0|t[Sternenregen] |cRXP_WARN_darauf|r
    .engrave 15 >> Graviert |T236168:0|t[Sternenregen] auf euren |T133771:0|t[Umhang]
step << Hunter
    #sticky
    #optional
    >> |cRXP_WARN_Haltet Ausschau nach|r Brust/Gürtel/Umhang |cRXP_WARN_drops|r|cRXP_WARN_. Legt sie an und graviert die jeweiligen Runen|r
    .engrave 5 >> Graviert |T132266:0|t[Einsamer Wolf] auf eure |T132724:0|t[Brust]
    .engrave 6 >> Graviert |T132394:0|t[Nahkampfspezialist] auf euren |T132513:0|t[Gürtel]
    .engrave 15 >> Graviert |T132171:0|t[Drauf und weg] auf euren |T133771:0|t[Umhang]
step << Rogue
    #sticky
    #optional
    >> |cRXP_WARN_Haltet Ausschau nach|r Gürtel/Umhang/Armschiene |cRXP_WARN_drops|r|cRXP_WARN_. Legt sie an und graviert die jeweiligen Runen|r
    .engrave 5 >> Graviert |T236285:0|t[Unfairer Vorteil] euren |T133830:0|t[armschienen]
    .engrave 6 >> Graviert |T132303:0|t[Schattenschritt] auf euren |T132513:0|t[Gürtel]
    .engrave 15 >> Graviert |T134538:0|t[Donnerbüchse] auf euren |T133771:0|t[Umhang]
step << Hunter/Druid
    #optional
    #sticky
    .equip 10 >> Legt die |T132939:0|t[Ausbildungshandschuhe zum Bogenschießen] an
    .engrave 10 >> Graviet |T236176:0|t[Schimärenschuss] auf eure Handschuhe << Hunter
    .engrave 10 >> Graviert |T236216:0|t[Sonnenfeuer] auf euren Handschuhen << Druid
    .use 5394
step << NightElf Priest
    #season 2
    .goto Teldrassil,59.6,41.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Janna Brightmoon|r upstairs
    >>|cRXP_BUY_Verkäufer Müll und kauft|r |T132495:0|t[Dünner Stoffgürtel] |cRXP_BUY_und|r |T132543:0|t[Dünne Stoffschuhe]|cRXP_BUY_. Ihr werdet sie brauchen um Runen darauf zu eingravieren|r
    .collect 3599,1 --Thin Cloth Belt (1)
    .collect 2117,1 --Thin Cloth Shoes (1)
    .target Janna Brightmoon
step << NightElf Priest
    #season 2
    .goto Teldrassil,59.174,40.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shanda|r upstairs
    .accept 77574 >> Akzeptiert die Quest Meditation über Elune
    .turnin 77574 >> Gebt die Quest Meditation über Elune ab
    .target Shanda
step << Priest
    #optional
    #completewith next
    .equip 10 >> Legt die |T132961:0|t[Zerlumpte Stoffhandschuhe] an
    .equip 6 >> Legt den |T132495:0|t[Dünner Stoffgürtel] an
    .equip 8 >> Legt die |T132543:0|t[Dünne Stoffschuhe] an
    .equip 9 >> Legt die |T132611:0|t[Stammblattarmschienen] an
    .engrave 10 >> Graviert |T136149:0|t[Schattenwort: Tod] auf eure Handschuhe
    .engrave 6 >> Gravieren |T136181:0|t[Gedankenstachel] on von Euch bracers
    .engrave 8 >> Gravieren |T237514:0|t[Pest der Leere] on von Euch feet
    .engrave 9 >> Gravieren |T132886:0|t[Zone der Leere] on von Euch bracers
    .use 711 --Tattered Cloth Gloves
    .use 3599 --Thin Cloth Belt
    .use 2117 --Thin Cloth Shoes
    .use 11187 --Stemleaf Bracers
step << NightElf Priest
    #season 2
    .goto Teldrassil,59.6,40.8
    >>|cRXP_WARN_Springt|r hinab und sprecht mit|Tinterface/worldmap/chatbubble_64grey.blp:20|t |cRXP_FRIENDLY_Dellylah|r
    .vendor >>|cRXP_BUY_Kauft 10 von|r |T132794:0|t|cRXP_LOOT_Erfrischendes Quellwasser|r
    .target Dellylah
step
    #label balancetwocomplete
    .goto Teldrassil,59.8,34.1
    >>Tötet |cRXP_ENEMY_Räudiger Nachtsäbler|r und |cRXP_ENEMY_Disteleber|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob Mangy Nightsaber
    .mob Thistle Boar
step
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Gebt die Quest Ein guter Freund ab
    .target Iverron
    .accept 3519 >> Akzeptiert die Quest Ein Freund in der Not
step
    #season 2
    .goto Teldrassil,59.8,34.1
    .xp 3-400 >> Schleifen bis ihr 400xp vom Level 3 entfernt seid (500/900)
step
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Laubschattental
step << Hunter
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarindrella|r
    .turnin 458 >> Gebt die Quest Die Beschützerin des Waldlandes ab
    .target Tarindrella
    .accept 459 >> Akzeptiert die Quest Die Beschützerin des Waldlandes
step
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Konservator Ilthalaine|r
    .turnin 457 >> Gebt die Quest Das Gleichgewicht der Natur ab
    .target Conservator Ilthalaine
	.accept 3116 >> Akzeptiert die Quest Einfaches Siegelzeichen << Warrior
	.accept 3117 >> Akzeptiert die Quest Geätztes Siegelzeichen << Hunter
    .accept 3119 >> Akzeptiert die Quest Geheiligtes Siegelzeichen << Priest
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dirania Silvershine|r
    .turnin 3519 >> Gebt die Quest Ein Freund in der Not ab
    .target Dirania Silvershine
    .accept 3521 >> Akzeptiert die Quest Iverrons Gegengift
step << Hunter
    #season 2
    #completewith htraining
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keina|r
    >>|cRXP_WARN_Stellt sicher, dass ihr 1 Silber übrig habt, nachdem ihr den Händler verlasst, um|r |T132204:0|t[|cRXP_FRIENDLY_Schlangenbiss|r] kaufen zu können. |cRXP_WARN_Kauft nicht den Bogen, wenn ihr später das Training nicht leisten könnt|r
	.vendor >> |cRXP_BUY_Kauft einen Stapel von|r |T132382:0|t[Grobe Pfeile]
    .vendor >> |cRXP_BUY_Buy a|r |T135499:0|t[Hornholzdoppelbogen]
    .target Keina
step << Hunter
    #season 2
    #completewith next
    +|cRXP_WARN_Legt den|r |T135499:0|t[Hornholz-Doppelbogen] an
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step << !Hunter !Druid !Priest
    #season 2
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_verkauft Schrott|r
    .target Keina
 step << NightElf Warrior
    #season 2
    .goto Teldrassil,59.637,38.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alyissia|r
    .turnin 3116 >> Gebt die Quest Einfaches Siegelzeichen ab
    .train 772 >> Erlernt |T132155:0|t[Verwunden]
    .train 100 >> Erlernt |T132337:0|t[Sturmangriff]
    .target Alyissia
step << Druid/Priest
    #season 2
    #label DTrain4
    .goto Teldrassil,59.602,40.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dellylah|r
    .vendor >> |cRXP_WARN_verkauft Schrott|r
    >>|cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Federn Wasser]
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Dellylah
step
    .goto Teldrassil,57.807,41.653
    .target Gilshalan Windwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .accept 916 >> Akzeptiert die Quest Waldwebergift
    .target Gilshalan Windwalker
step << Hunter
    .xp 4-40
step << Hunter
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.659,40.449
    >>Klettert auf den Aldrassil-Baum
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ayanna Everstride|r
    .turnin 3117 >> Gebt die Quest Geätztes Siegelzeichen ab
    .accept 77568 >> Akzeptiert die Quest Die Stärke eines Jägers
    .turnin 77568 >> Gebt die Quest Die Stärke eines Jägers ab
    .train 1978 >>Schlangengift erlernen
    .target Ayanna Everstride
step
    .goto Teldrassil,57.95,38.20,10,0
    .goto Teldrassil,57.76,37.27,10,0
    .goto Teldrassil,58.21,36.40,10,0
    .goto Teldrassil,58.81,37.83,10,0
    .goto Teldrassil,57.95,38.20
    >>Sammelt |cRXP_LOOT_Mondblütenlilien|r vom Boden
    .complete 3521,2 --Collect Moonpetal Lily (x4)
step
    #label IchorVenomSac
    .goto Teldrassil,56.8,31.7
    >>Tötet |cRXP_ENEMY_Waldweberspinne|r. Plündert sie für |cRXP_LOOT_Sekret|r und |cRXP_LOOT_Giftbeutel|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob Webwood Spider
step
    .goto Teldrassil,55.0,43.7
    >>Tötet |cRXP_ENEMY_Grells|r und |cRXP_ENEMY_Grellkins|r. Plündert sie für |cRXP_LOOT_Hyazinth-Pilz|r und |cRXP_LOOT_Teufelsmoos|r
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .complete 459,1 --Collect Fel Moss (x8)
    .mob Grell
    .mob Grellkin
step
    .goto Teldrassil,57.8,45.1
    .target Tarindrella
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarindrella|r
    >>TIPP: |cRXP_WARN_Nehmt die Hosen als Belohnung und behaltet sie. Ihr werdet sie später verwenden, um eine Rune darauf einzugravieren|r << sod Hunter/sod Rogue/sod Warrior/sod Druid
    .turnin 459 >> Gebt die Quest Die Beschützerin des Waldlandes ab
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dirania Silvershine|r
    .turnin 3521 >> Gebt die Quest Iverrons Gegengift ab
    .accept 3522 >> Akzeptiert die Quest Iverrons Gegengift
    .target Dirania Silvershine
    .xp >7,1
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dirania Silvershine|r
    .turnin 3521 >> Gebt die Quest Iverrons Gegengift ab
    .target Dirania Silvershine
    .xp <7,1
step << !Hunter
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_verkauft Schrott|r << !Hunter
    .target Keina
step << Hunter
    #season 2
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_verkauft Schrott|r << !Hunter
	.vendor >> |cRXP_BUY_Kauft 3 oder 4 Stapel|r |T132382:0|t[Rauer Pfeil] << Hunter
    .vendor >> |cRXP_BUY_Kauft einen|r |T135499:0|t[Hornholzdoppelbogen] |cRXP_BUY_Kauft ihn wenn ihr ihn noch nicht habt|r << Hunter
    .target Keina
step << Hunter
    #completewith next
    +|cRXP_WARN_Legt den|r |T135499:0|t[Hornholz-Doppelbogen] an
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step
    .goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .turnin 916 >> Gebt die Quest Waldwebergift ab
    .target Gilshalan Windwalker
    .accept 917 >> Akzeptiert die Quest Waldweberei
    .xp >7,1
step
    .goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .turnin 916 >> Gebt die Quest Waldwebergift ab
    .target Gilshalan Windwalker
    .xp <7,1,ExitRune
step << Hunter/Rogue
    #completewith next
    +|cRXP_WARN_Legt den|r |T135641:0|t[Distelholzdolch] an
    .use 5392
    .itemcount 5392,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.05
step << Druid
    #season 2
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>Klettert auf den Aldrassil-Baum
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mardant Strongoak|r
	.turnin 3120 >> Gebt die Quest Tiefgrünes Siegelzeichen ab
    .train 5177 >>Erlernen |T136006:0|t[|cRXP_FRIENDLY_Wrath|r] rank 2
    .target Mardant Strongoak
step
    .goto Teldrassil,54.593,32.992
    .target Iverron
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iverron|r
    >>TIPP: |cRXP_WARN_Nehmt die Hosen als Belohnung von ihm auf. Ihr werdet sie später verwenden, um eine Rune darauf einzugravieren|r << Priest sod
    .turnin 3522 >> Gebt die Quest Iverrons Gegengift ab
    .isOnQuest 3522
step
    #completewith next
    .goto Teldrassil,56.73,31.17,25 >> Betretet die Schattenweberhöhle
    .isOnQuest 917
step
    .goto Teldrassil,57.0,26.4
    >>Sammelt das |cRXP_LOOT_Waldweberei|r auf dem Boden am hinteren Ende der Höhle
    .complete 917,1 --Collect Webwood Egg (x1)
    .isOnQuest 917
step
	#softcore
	#completewith next
    .deathskip >> Sterbt und respawnt beim Geistheiler
    .target Geistheiler
    .isOnQuest 917
step
	.goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gilshalan Windwalker|r
    >>TIPP: |cRXP_WARN_Nehmt die Tunika als Belohnung dieser Quest und rüstet sie aus. Ihr werdet sie später verwenden, um eine Rune darauf einzugravieren |r << Hunter/Rogue
    .turnin 917 >> Gebt die Quest Waldweberei ab
    .target Gilshalan Windwalker
    .isQuestComplete 917
step
    #season 2
    #label ExitRune
    .goto Teldrassil,58.88,43.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit dem |cRXP_FRIENDLY_Runenhändler|r
    >>|cRXP_WARN_Passt auf, verkauft keine Ausrüstung, die ihr anlegen könnt|r
    .vendor >> |cRXP_BUY_Verkauft-Schrott und kauft alle |T134419:0|t|cRXP_WARN_[Runen]|r, die ihr braucht, von ihm|r
    .target Rune Broker
    .skipgossip
step << Priest
    #requires vial1
    .goto Teldrassil,59.2,40.5
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shanda|r
    .accept 5622 >> Akzeptiert die Quest Elune geneigt
    .turnin 3119 >> Gebt die Quest Geheiligtes Siegelzeichen ab
step
    .goto Teldrassil,61.159,47.644
    .target Porthannius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Porthannius|r
    .accept 2159 >> Akzeptiert die Quest Lieferung für Dolanaar
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#season 2
#name 7-13 Teldrassil SoD
#displayname 7-13 Teldrassil
#version 1
#group RestedXP Allianz 1-20
#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 13-20 Dunkelküste SoD


step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zenn Foulhoof|r
    .accept 488 >> Akzeptiert die Quest Zenns Aufträge
step << Hunter
    #season 2
    #completewith FlankingStrike
    #sticky
    >>Während ihr questet, tötet |cRXP_ENEMY_Strigid Owls|r oder |cRXP_ENEMY_Strigid Kreischer|r. Beutet sie nach |T134025:0|t|cRXP_LOOT_Teldrassil Bird Fleisch|r aus
    .collect 208608,1 -- Teldrassil Bird Meat 1/1
    .train 425762,1 --Flanking Strike
step << Warrior
    #season 2
    #completewith zenn
    >>Tötet |cRXP_ENEMY_Nightsabers|r oder |cRXP_ENEMY_Nightsaber Stalkers|r. Plündert sie für |cRXP_LOOT_Severed Tiger Kopf|r
    >>Tötet |cRXP_ENEMY_Strigid Owls|r oder |cRXP_ENEMY_Strigid Kreischer|r. Plündert sie für |cRXP_LOOT_Severed Owl Kopf|r
    >>Tötet |cRXP_ENEMY_Webwood Lurkers|r oder |cRXP_ENEMY_Webwood Giftzähne|r. Plündert sie für |cRXP_LOOT_Severed Spinne Kopf|r
    .collect 208611,1 -- Severed Tiger Head (1)
    .collect 208610,1 -- Severed Owl Head (1)
    .collect 208612,1 -- Severed Spider Head (1)
    .mob Nightsaber
    .mob Nightsaber Stalker
    .mob Strigid Owl
    .mob Strigid Screecher
    .mob Webwood Lurker
    .mob Webwood Venomfang
    .train 403475,1
step
    #sticky
    #completewith zenn
    >>Tötet |cRXP_ENEMY_Nachtsäbler|r. Plündert sie für ihre |cRXP_LOOT_Fangzähne|r
    >>Tötet |cRXP_ENEMY_Strigideule|r. Plündert sie für |cRXP_LOOT_Federn|r
    >>Tötet |cRXP_ENEMY_Waldweberlauerer|r. Plündert sie für |cRXP_LOOT_Seide|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob Nightsaber
    .mob Strigid Owl
    .mob Webwood Lurker
step
    #sticky
	#completewith SoDSpiderLegs
    >>Tötet |cRXP_ENEMY_Waldweberlauerer|r und |cRXP_ENEMY_Waldwebergiftzähne|r. Plündert sie für |cRXP_LOOT_Kleines Spinnenbein|r
    >>|cRXP_WARN_Ihr braucht diese für eine spätere Quest|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    .goto Teldrassil,56.08,57.72
    .target Syral Bladeleaf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Syral Bladeleaf|r
    >>|cRXP_WARN_Stellt sicher, dass ihr 1 freien Inventarplatz habt, bevor ihr diese Quest annehmt|r
    .accept 997 >> Akzeptiert die Quest Denalans Erde
step
    .goto Teldrassil,55.954,57.272
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Athridas Bearmantle|r
    .accept 475 >> Akzeptiert die Quest Ein beunruhigender Wind
step << Priest
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laurna Morninglight|r
    .turnin 5622 >> Gebt die Quest Elune geneigt ab
    .target Laurna Morninglight
    .accept 5621 >> Akzeptiert die Quest Gewänder des Mondes
	.trainer >> Trainiere deine Klassenfähigkeiten
step << Rogue
    .goto Teldrassil,55.508,57.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aldia|r oben
    .vendor >> |cRXP_BUY_kaufe und rüste|r |T135426:0|t[Kleines Wurfmesser] aus
    .target Aldia
step
#xprate <1.99 << Hunter/Warrior/Druid
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tallonkai Swiftroot|r oben auf dem Baum
    .accept 932 >> Akzeptiert die Quest Krankhafter Hass
    .accept 2438 >> Akzeptiert die Quest Der smaragdgrüne Traumfänger
step << Hunter/Warrior/Druid
#xprate >1.99
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tallonkai Swiftroot|r oben auf dem Baum
    .accept 2438 >> Akzeptiert die Quest Der smaragdgrüne Traumfänger
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jeena Featherbow|r
    >>|cRXP_BUY_kaufe und rüste ein|r |T135499:0|t[Hornholz-Doppelbogen] aus
    >>|cRXP_BUY_Kaufe|r |T132382:0|t[Rauer Pfeil] |cRXP_BUY_bis euer Köcher voll ist|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    #season 0
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jeena Featherbow|r
    .vendor >>|cRXP_BUY_Kaufe|r |T132382:0|t[Rauer Pfeil] |cRXP_BUY_bis euer Köcher voll ist|r
    .target Jeena Featherbow
step << Hunter
    #season 2
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jeena Featherbow|r
    .vendor >>|cRXP_BUY_Kauft|r |T132382:0|t[Rough Pfeile] |cRXP_BUY_bis ihr 2 Silber übrig habt oder 3 Stapel habt|r
    .target Jeena Featherbow
step << Hunter
    #completewith next
    +|cRXP_WARN_Legt den|r |T135499:0|t[Hornholz-Doppelbogen] an
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_kaufe und equipt ein|r |T135321:0|t[Gladius] |cRXP_BUY_wenn ihr euch das leisten könnt (5s 36c), falls nicht skip den Schritt|r
    .collect 2488,1 --Collect Gladius
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Warrior
    #completewith next
    +|cRXP_WARN_Legt das|r |T135321:0|t[Gladius] an
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kyra Windblade|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jannok Breezesong|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Jannok Breezesong
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_kaufe und equipt ein|r |T135641:0|t[Stilett] |cRXP_BUY_wenn du es dir leisten kannst (4s 1c), falls nicht skip den Schritt|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
    .money <0.0401
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_kaufe und equipt ein|r |T135145:0|t[Wanderstecken] |cRXP_BUY_wenn du es dir leisten kannst (5s 4c), falls nicht skip den Schritt|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
    .money <0.0504
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Druid
    #completewith next
    +|cRXP_WARN_Legt den|r |T135145:0|t[Wanderstecken] an
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step
    .goto Teldrassil,55.619,59.788
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Innkeeper Keldamyr|r
    .turnin 2159,2 >> Gebt die Quest Lieferung für Dolanaar ab << Hunter
    .turnin 2159 >> Gebt die Quest Lieferung für Dolanaar ab << !Hunter
    .vendor >>|cRXP_BUY_kaufe 10 |T132815:0|t|cRXP_LOOT_Eiskalte Mich|r oder so viel wie ihr könnt << Priest
    .home >> Setzt euren Ruhestein in Dolanaar
step << Warrior
    #season 2
    .goto Teldrassil,54.8,66.0,25 >>Geht zum markierten Punkt. Überprüft, ob |cRXP_FRIENDLY_Wandernder Schwertkämpfer|r dort ist. Wenn ihr ihn findet, könnt ihr ihn zu einem Duell herausfordern, das euch die Rune von |T132334:0|t[|cRXP_FRIENDLY_Blutraserei|r] gibt.
    >>|cRXP_WARN_Er hat mehrere Spawnpunkte und kann jeweils nur an einem davon vorhanden sein. Überspringt diesen Schritt, wenn er dort nicht ist|r
    >>|cRXP_WARN_Ihr werdet ihn auf dieser Stufe wahrscheinlich nicht allein schaffen. Überspringt diesen Schritt, wenn niemand um euch herum ist, um euch zu helfen. Ihr könnt zurückkommen, nachdem ihr von Euch hamstring + thrown auf Stufe 10 erhaltet und überprüft, ob er noch dort ist|r
    .unitscan Wandering Swordsman
    .train 412507,1
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dazalar|r
    .train 1130 >> Erlernen Mal des Jägers
    .train 3044 >> Erlernen Arkaner Schuss
    .target Dazalar
    .xp >8,1
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dazalar|r
    .train 5116 >> Erlernt Erschütternder Schuss
    .target Dazalar
    .xp <8,1
step << Druid
    #season 0
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kal|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Kal
step
#xprate <1.99
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 928 >> Gebt die Quest Die Krone der Erde ab
    .target Corithras Moonrage
    .accept 929 >> Akzeptiert die Quest Krone der Erde
step << Priest
    .goto Teldrassil,57.242,63.511
    >>Ziel |cRXP_FRIENDLY_Schildwache Shaya|r
    >>|cRXP_WARN_Wirkt|r |T135929:0|t[Geringes Heilen (Rang 2)] |cRXP_WARN_und|r |T135987:0|t[Machtwort: Seelenstärke] |cRXP_WARN_auf|r |cRXP_FRIENDLY_Schildwache Shaya|r
    .complete 5621,1 --Heal and fortify Sentinel Shaya
    .target Sentinel Shaya
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Denalan|r
    >>|cRXP_WARN_Nehmt nicht die Sprossen-Quest an|r << !sod/Warrior/Rogue
    .turnin 997 >> Gebt die Quest Denalans Erde ab
    .target Denalan
    .accept 918 >> Akzeptiert die Quest Bäumlingssamenkörner
    .accept 919 >> Akzeptiert die Quest Bäumlingssprossen << !sod/Warrior/Rogue
step << Rogue
    #season 2
    #completewith next
    >>Tötet |cRXP_ENEMY_Timberlings|r. Plündert sie für |T134327:0|t[|cRXP_LOOT_Top-Rechts Karte Piece]|r
    .collect 208601,1 -- Top-Right Map Piece (1)
    .mob Timberling
    .mob Timberling Bark Ripper
    .mob Timberling Trampler
    .train 398196,1
step << Druid
    #season 2
    #completewith next
    >>Tötet |cRXP_ENEMY_Bäumlinge|r. Plündert sie für |cRXP_LOOT_Samenkörner|r
    >>Plündert |cRXP_LOOT_Bäumlingssprossen|r vom Boden
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 << !sod --Collect Timberling Sprout (x12)
    .mob Timberling
step << Druid
    #season 2
    #completewith next
    .goto Teldrassil,52.831,78.731,100 >> Reist zum großen Baumzweig
    .train 416044,1
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
    #hardcore
    .train 416044 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Sonne|r] |cRXP_WARN_zum Erlernen von|r |T236216:0|t[Sonnenfeuer]
    .use 206989
    .itemcount 206989,1
    .train 416044,1
step << Druid
    #season 2
    #softcore
    #completewith next
    .train 416044 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Sonne|r] |cRXP_WARN_zum Erlernen von|r |T236216:0|t[Sonnenfeuer]
    .deathskip >>Sterbt absichtlich und erscheint bei Dolanaar erneut auf
    .use 206989
    .itemcount 206989,1
    .train 416044,1
step
    .goto Teldrassil,61.63,68.89,55,0
    .goto Teldrassil,60.52,70.47,55,0
    .goto Teldrassil,59.04,72.52,55,0
    .goto Teldrassil,57.69,69.92,55,0
    .goto Teldrassil,55.33,67.22,55,0
    .goto Teldrassil,57.89,64.84,55,0
    .goto Teldrassil,61.21,66.28
    >>Tötet |cRXP_ENEMY_Bäumlinge|r. Plündert sie für |cRXP_LOOT_Samenkörner|r
    >>Plündert |cRXP_LOOT_Bäumlingssprossen|r vom Boden << !sod
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 << !sod/Warrior/Rogue --Collect Timberling Sprout (x12)
    .mob Timberling
step << Rogue
    #season 2
    .goto Teldrassil,61.2,67.0
    >>Tötet |cRXP_ENEMY_Timberlings|r. Plündert sie für |T134327:0|t[|cRXP_LOOT_Top-Rechts Karte Piece]|r
    .collect 208601,1 -- Top-Right Map Piece (1)
    .mob Timberling
    .mob Timberling Bark Ripper
    .mob Timberling Trampler
    .train 398196,1
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Denalan|r
    .turnin 918 >> Gebt die Quest Bäumlingssamenkörner ab
    .target Denalan
    .accept 922 >> Akzeptiert die Quest Rellian Greenspyre
    .turnin 919 >> Gebt die Quest Bäumlingssprossen ab << !sod/Warrior/Rogue
step
    #season 2 << Hunter/Druid/Priest
    #season 1 << Warrior/Rogue
	.abandon 919 >> Brecht die Quest Bäumlingssprosse ab. Es lohnt sich nicht
step << Warrior
    #season 2
    .goto Teldrassil,62.6,71.8,25 >>Geht zum markierten Punkt. Überprüft, ob |cRXP_FRIENDLY_Wandernder Schwertkämpfer|r dort ist. Wenn ihr ihn findet, könnt ihr ihn zu einem Duell herausfordern, das euch die Rune von |T132334:0|t[|cRXP_FRIENDLY_Blutraserei|r] gibt.
    >>|cRXP_WARN_Er hat mehrere Spawnpunkte und kann jeweils nur an einem davon vorhanden sein. Überspringt diesen Schritt, wenn er dort nicht ist|r
    >>|cRXP_WARN_Ihr werdet ihn auf diesem Level höchstwahrscheinlich nicht alleine besiegen können. Überspringt diesen Schritt, wenn niemand um euch herum ist, um euch zu helfen. Ihr könnt später zurückkommen, nachdem ihr auf Stufe 10 Hamstring und Thrown erlernt habt, und überprüft, ob er noch dort ist|r
    .unitscan Wandering Swordsman
    .train 412507,1
step
    #completewith next
    .goto Teldrassil,68.02,59.66,120 >> Reist nach Starbreeze Village
step
    .goto Teldrassil,68.02,59.66
    >>Öffnet |cRXP_PICK_Tallonkais Kommode|r. Plündert sie für |cRXP_LOOT_Smaragdgrüner Traumfänger|r
    .complete 2438,1 --Collect Emerald Dreamcatcher (x1)
step
    #label zenn
    .goto Teldrassil,66.26,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gaerolas Talvethren|r oben
    .turnin 475 >> Gebt die Quest Ein beunruhigender Wind ab
    .target Gaerolas Talvethren
    .accept 476 >> Akzeptiert die Quest Die Verderbnis der Knarzklauen
step
    #xprate <1.99
    .goto Teldrassil,63.38,58.10
    >>|cRXP_WARN_Benutzt die|r |T134721:0|t[Jadephiole] |cRXP_WARN_am Sternenhauch-Mondbrunnen|r
    .complete 929,1 --Collect Filled Jade Phial (x1)
step << Warrior
    #season 2
    #completewith TeldrassilEnd
    #sticky
    >>Tötet |cRXP_ENEMY_Nightsabers|r oder |cRXP_ENEMY_Nightsaber Stalkers|r. Plündert sie für |cRXP_LOOT_Severed Tiger Kopf|r
    >>Tötet |cRXP_ENEMY_Strigid Owls|r oder |cRXP_ENEMY_Strigid Kreischer|r. Plündert sie für |cRXP_LOOT_Severed Owl Kopf|r
    >>Tötet |cRXP_ENEMY_Webwood Lurkers|r oder |cRXP_ENEMY_Webwood Giftzähne|r. Plündert sie für |cRXP_LOOT_Severed Spinne Kopf|r
    .collect 208611,1 -- Severed Tiger Head (1)
    .collect 208610,1 -- Severed Owl Head (1)
    .collect 208612,1 -- Severed Spider Head (1)
    .mob Nightsaber
    .mob Nightsaber Stalker
    .mob Strigid Owl
    .mob Strigid Screecher
    .mob Webwood Lurker
    .mob Webwood Venomfang
    .train 403475,1
step
    >>Tötet |cRXP_ENEMY_Nachtsäbler|r. Plündert sie für ihre |cRXP_LOOT_Fangzähne|r
    >>Tötet |cRXP_ENEMY_Strigideule|r. Plündert sie für |cRXP_LOOT_Federn|r
    >>Tötet |cRXP_ENEMY_Waldweberlauerer|r. Plündert sie für |cRXP_LOOT_Seide|r
    >>|cRXP_WARN_Speichert einige|r |T132832:0|t[Kleine Eier] |cRXP_WARN_und|r |T134321:0|t[Kleine Spinne Beinchen] |cRXP_WARN_zum Leveln von |T133971:0|t[Kochkunst] |cRXP_WARN_später|r
    >>Überspringt diesen Schritt, wenn ihr Pech mit den Drops habt und keine Gegner mehr in der Nähe sind
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,61.95,61.07,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,63.39,64.22,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .goto Teldrassil,61.06,54.66,50,0
    .goto Teldrassil,60.17,59.62,50,0
    .goto Teldrassil,58.22,56.32
    .mob Nightsaber
    .mob Strigid Owl
    .mob Webwood Lurker
step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 488 >> Gebt die Quest Zenns Aufträge ab
    .isQuestComplete 488
step
    #xprate < 1.5
    .goto Teldrassil,60.7,54.4
	.xp 7+3520 >> Farmt bis Stufe 7 +3520xp
step
    #xprate >1.49
    .xp 7+2350 >> Farmt bis Stufe 7 +2350xp
step
	.goto Teldrassil,56.078,57.723
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Syral Bladeleaf|r
    .accept 489 >> Akzeptiert die Quest Sucht Befreiung!
    .target Syral Bladeleaf
    .isQuestTurnedIn 488
step
    .goto Teldrassil,55.954,57.272
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Athridas Bearmantle|r
    .turnin 476 >> Gebt die Quest Die Verderbnis der Knarzklauen ab
step << Priest
    .goto Teldrassil,55.564,56.746
    .target Laurna Morninglight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laurna Morninglight|r
    .turnin 5621 >> Gebt die Quest Gewänder des Mondes ab
	.trainer >> Trainiere deine Klassenfähigkeiten
step
    #season 1 << Priest/Rogue
    #season 2 << Hunter/Warrior/Druid
    .goto Teldrassil,55.574,56.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tallonkai Swiftroot|r oben auf dem Baum
    .turnin 2438 >> Gebt die Quest Der smaragdgrüne Traumfänger ab
    .target Tallonkai Swiftroot
    .accept 2459 >> Akzeptiert die Quest Ferocitas der Traumfresser << !sod/Warrior
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jeena Featherbow|r
    >>|cRXP_BUY_kauft und equipt einen|r |T135499:0|t[Hornholz-Doppelbogen] |cRXP_BUY_wenn ihr uch es leisten könnt (2s 85c), falls nicht überspringt den Schritt|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jannok Breezesong|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Jannok Breezesong
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_kaufe und equipt ein|r |T135321:0|t[Gladius] |cRXP_BUY_wenn ihr euch das leisten könnt (5s 36c), falls nicht skip den Schritt|r
    .collect 2488,1 --Collect Gladius
    .target Shalomon
    .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Warrior
    #completewith next
    +|cRXP_WARN_Legt das|r |T135321:0|t[Gladius] an
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
    step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kyra Windblade|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_kaufe und equipt ein|r |T135641:0|t[Stilett] |cRXP_BUY_wenn du es dir leisten kannst (4s 1c), falls nicht skip den Schritt|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
    .money <0.0401
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Legt das|r |T135641:0|t[Stilett] an
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_kaufe und equipt ein|r |T135145:0|t[Wanderstecken] |cRXP_BUY_wenn du es dir leisten kannst (5s 4c), falls nicht skip den Schritt|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
    .money <0.0504
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Druid
    #completewith next
    +|cRXP_WARN_Legt den|r |T135145:0|t[Wanderstecken] an
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step << Druid
#xprate 1.49-1.99
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 929 >> Gebt die Quest Die Krone der Erde ab
    .target Corithras Moonrage
step << Druid
#xprate <1.50
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 929 >> Gebt die Quest Die Krone der Erde ab
    .target Corithras Moonrage
    .accept 933 >> Akzeptiert die Quest Krone der Erde
step << Druid
    #season 0
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kal|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Kal
step
    #loop
    .goto 1438/1,854.400,9952.500,6 >>Neben einem kleinen Baum
    .goto 1438/1,822.200,9948.500,6 >>Auf dem kleinen Hügel
    .goto 1438/1,809.800,9926.400,6 >>Neben dem riesiegen Baum
    >>Plündert die 3 |cRXP_LOOT_Teufelszapfen|r von den Orten auf eurerKarte.
    >>|cRXP_WARN_Überspringt diesen Schritt, falls einer von ihnen nicht da ist und ihr das Ziel nicht abschließen könnt|r
    .complete 489,1 --Fel Cone 3/3
    .isOnQuest 489
step
    #label SoDSpiderLegs
    .goto Teldrassil,60.4,56.4
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 489 >> Gebt die Quest Sucht Befreiung! ab
    .itemcount 3418,3
    .isOnQuest 489
    .target Zenn Foulhoof
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
	#completewith jewel
    >>Plündert die |cRXP_LOOT_Teufelszapfen|r vom Boden
    >>|cRXP_WARN_Sie befinden sich normalerweise neben Baumstämmen|r
    .complete 489,1 --Collect Fel Cone (x3)
    .isOnQuest 489
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    #completewith next
    >>Tötet |cRXP_ENEMY_Mystiker der Knarzklauen|r
    >>|cRXP_WARN_Falls es nicht viele |cRXP_ENEMY_Mystiker der Knarzklauen|r gibt, müsst ihr möglicherweise |cRXP_ENEMY_Krieger der Knarzklauen|r töten, um sie spawnen zu lassen|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
	.goto Teldrassil,69.37,53.41
	>>Tötet |cRXP_ENEMY_Ferocitas der Traumfresser|r. Sammelt die Beute |T133288:0|t[|cRXP_LOOT_Gnarlpine-Halskette|r]
    .use 8049 >>|cRXP_WARN_Benutzt die |T133288:0|t[|cRXP_LOOT_Halskette der Knarzklauen|r] zum Plündern von|r |cRXP_LOOT_Tallonkais Juwel|r
    .complete 2459,2 --Collect Tallonkai's Jewel (x1)
    .mob Ferocitas the Dream Eater
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    #label jewel
    .goto Teldrassil,68.38,52.06,30,0
    .goto Teldrassil,69.37,53.41
    >>Tötet |cRXP_ENEMY_Mystiker der Knarzklauen|r
    >>|cRXP_WARN_Falls es nicht viele |cRXP_ENEMY_Mystiker der Knarzklauen|r gibt, müsst ihr möglicherweise |cRXP_ENEMY_Krieger der Knarzklauen|r töten, um sie spawnen zu lassen|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    #softcore
    #completewith next
    .deathskip >> Sterbt und respawnt beim Geistheiler
    .target Geistheiler
    .isQuestTurnedIn 489
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    #softcore
    .goto Teldrassil,56.2,60.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brannol Eaglemoon|r
    .vendor >> |cRXP_BUY_Verkaufe und repariere falls notwendig|r
    .target Brannol Eaglemoon
    .isQuestTurnedIn 489
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    .goto Teldrassil,59.0,56.1,50,0
    .goto Teldrassil,56.5,65.5,50,0
    .goto Teldrassil,53.0,59.5,50,0
    .goto Teldrassil,63.6,62.3,50,0
    .goto Teldrassil,58.7,55.7
    >>Plündert die |cRXP_LOOT_Teufelszapfen|r vom Boden
    >>|cRXP_WARN_Sie befinden sich normalerweise neben Baumstämmen|r
    .complete 489,1 --Collect Fel Cone (x3)
    .isOnQuest 489
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    .goto Teldrassil,60.4,56.4
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 489 >> Gebt die Quest Sucht Befreiung! ab
    .isOnQuest 489
step
    #season 1 << Warrior
    #season 2 << Hunter/Druid/Priest/Rogue
    .goto Teldrassil,44.69,70.52,40,0
    .goto Teldrassil,44.88,73.83
    >>Versucht, die Quest |cRXP_LOOT_Small Spinnenbeine|r zu beenden
    >>|cRXP_WARN_Überspringt diesen Schritt if there's no spiders near Zenn|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #season 0
    #sticky
	#completewith spiderLegs
    >>Tötet |cRXP_ENEMY_Waldweberlauerer|r und |cRXP_ENEMY_Waldwebergiftzähne|r. Plündert sie für |cRXP_LOOT_Kleines Spinnenbein|r
    >>|cRXP_WARN_Ihr braucht diese für eine spätere Quest|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #season 2
    .abandon 489 >> Brecht die Quest Suchen Erlösung ab. Es lohnt sich nicht, einen Umweg zu machen, um sie später abzugeben
step << !sod/Priest/Rogue
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >> Reist zum Teufelsfels
step << Rogue
    #season 2
    #completewith MutiRune
    >>Tötet |cRXP_ENEMY_Vicious Grell|r, |cRXP_ENEMY_Rascal Sprites|r und |cRXP_ENEMY_Shadow Sprites|r. Plündert sie für |T134327:0|t[|cRXP_LOOT_Bottom-Links Karte Piece]|r
    .collect 208604,1 -- Bottom-Left Map Piece (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    >>Tötet |cRXP_ENEMY_Lord Melenas|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Verstümmelung|r]
    .collect 203990,1
    .unitscan Lord Melenas
    .train 400094,1
step << Priest
    #season 2
    #completewith next
    >>Tötet |cRXP_ENEMY_Vicious Grells|r, |cRXP_ENEMY_Rascal Sprites|r und |cRXP_ENEMY_Shadow Sprites|r. Plündert sie für |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Entweiht Zitadelle|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 402852,1
step << !sod/Priest/Rogue
    .goto Teldrassil,51.2,50.6
    >>Tötet |cRXP_ENEMY_Lord Melenas|r. Plündert sie für ihren |cRXP_LOOT_Kopf|r
    >>|cRXP_ENEMY_Lord Melenas|r kann sich an vielen verschiedenen Orten im Teufelsfels befinden
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step << Priest
    #season 2
    .goto Teldrassil,77.86,61.66
    >>Tötet |cRXP_ENEMY_Vicious Grells|r, |cRXP_ENEMY_Rascal Sprites|r und |cRXP_ENEMY_Shadow Sprites|r. Plündert sie für |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Entweiht Zitadelle|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 402852,1
step << Priest
    #season 2
    .train 402852 >> |cRXP_WARN_Benutzt die|r |T135975:0|t[|cRXP_FRIENDLY_Prophezeiung einer entweihten Zitadelle|r] |cRXP_WARN_um|r |T237570:0|t[Homunculi] zu lernen
    >>|cRXP_WARN_Ihr müsst 2|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_Buffs haben, indem ihr /knien in einem heiligen Gebiet eingebt, wie zum Beispiel einen Mondquell, die Nordhainer Abtei, die Kathedrale von Sturmwind, die Altäre des Lichts in Ambossar, Loch Modan oder das Mystische Viertel in Eisenschmiede|r
    .use 205947
    .itemcount 205947,1
step << Rogue
    #season 2
    .goto Teldrassil,51.2,50.6
    >>Tötet |cRXP_ENEMY_Lord Melenas|r. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Verstümmelung|r]
    .collect 203990,1
    .unitscan Lord Melenas
    .train 400094,1
step << Rogue
    #season 2
    #label MutiRune
    .train 400094 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Verstümmelung|r] |cRXP_WARN_zum lernen von|r |T132304:0|t[Verstümmeln]
    .use 203990
    .itemcount 203990,1
step << Rogue
    #season 2
    .goto Teldrassil,77.86,61.66
    >>Tötet |cRXP_ENEMY_Vicious Grell|r, |cRXP_ENEMY_Rascal Sprites|r und |cRXP_ENEMY_Shadow Sprites|r. Plündert sie für |T134327:0|t[|cRXP_LOOT_Bottom-Links Karte Piece]|r
    .collect 208604,1 -- Bottom-Left Map Piece (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 398196,1
step << !sod/Priest/Rogue
    #softcore
    #completewith next
    .deathskip >> Sterbt und respawnt beim Geistheiler
    .target Geistheiler
step << !Druid
#xprate <1.99
    .goto Teldrassil,56.142,61.714
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 929 >> Gebt die Quest Die Krone der Erde ab
step
	#xprate <1.5
    .goto Teldrassil,56.142,61.714
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corithras Moonrage|r
    .accept 933 >> Akzeptiert die Quest Krone der Erde
step
	#xprate <1.5
    #completewith next
    .goto Teldrassil,42.61,76.18,50 >> Reist zum südwestlichen Teldrassil
step
	#xprate <1.5
	.goto Teldrassil,42.61,76.18
	>>Hebt die |cRXP_PICK_Sonderbare fruchtbeladene Pflanze|r auf
	.accept 930 >> Akzeptiert die Quest Die leuchtende Frucht
step
	#xprate <1.5
    #completewith next
    .goto Teldrassil,42.41,67.07,50 >> Reist zu den Teichen von Arlithrien
step
	#xprate <1.5
	#label spiderLegs
	.goto Teldrassil,42.41,67.07
    .use 5621 >>|cRXP_WARN_Benutzt die|r |T134765:0|t[Turmalinphiole] |cRXP_WARN_am Mondbrunnen bei den Teichen von Arlithrien|r
	.complete 933,1
step
	#xprate <1.5
    .goto Teldrassil,44.69,70.52,40,0
    .goto Teldrassil,44.88,73.83
    >>Tötet |cRXP_ENEMY_Waldweberlauerer|r und |cRXP_ENEMY_Waldwebergiftzähne|r. Plündert sie für |cRXP_LOOT_Kleines Spinnenbein|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
	#xprate <1.5
    #hardcore
    #completewith next
    .goto Teldrassil,56.142,61.714,90 >> Reist nach Dolanaar
step
	#xprate <1.5
    #softcore
	#completewith next
    .goto Teldrassil,43.50,68.42
    .deathskip >> Sterbt beim Friedhof von Dolanaar. Achtet darauf, östlich des Mondbrunnens zu sterben, sonst landest du womöglich in Darnassus
step
	#xprate <1.5
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 933 >> Gebt die Quest Die Krone der Erde ab
    .target Corithras Moonrage
    .accept 7383 >> Akzeptiert die Quest Krone der Erde
step
	#xprate <1.5
    .goto Teldrassil,57.121,61.296
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zarrin|r
    .train 2550 >>Erlerne Kochkunst
    .accept 4161 >> Akzeptiert Rezept der Kaldorei
    .turnin 4161 >> Gebt Rezept der Kaldorei ab
    .target Zarrin
step << Warrior/Rogue
    #season 0
    .goto Teldrassil,55.29,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Byancie|r
    .train 3273 >> Erlerne |T135966:0|t[Erste Hilfe]
    .target Byancie
step
    #season 1 << Warrior
    #season 2 << Hunter/Druid/Priest/Rogue
    .goto Teldrassil,57.121,61.296
    .train 2550 >>Erlerne Kochkunst
    .target Zarrin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zarrin|r
    .accept 4161 >> Akzeptiert Rezept der Kaldorei
    .turnin 4161 >> Gebt Rezept der Kaldorei ab
    >>|cRXP_WARN_Wenn ihr bereits Stufe 10 erreicht habt und die Spinnenbeine noch nicht habt, könnt ihr diese Quest gerne überspringen. Trainiert aber trotzdem Kochen|r
step << Rogue
    #season 2
    .goto Teldrassil,55.29,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Byancie|r
    .train 3273 >> Erlerne |T135966:0|t[Erste Hilfe]
    .target Byancie
step << !sod/Priest/Rogue
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tallonkai Swiftroot|r oben auf dem Baum
    .turnin 2438 >> Gebt die Quest Der smaragdgrüne Traumfänger ab << sod Priest/sod Rogue
    .turnin 932 >> Gebt die Quest Krankhafter Hass ab
    .turnin 2459 >> Gebt die Quest Ferocitas der Traumfresser ab << !sod
step << Warrior
    #season 2
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tallonkai Swiftroot|r oben auf dem Baum
    .turnin 2459 >> Gebt die Quest Ferocitas der Traumfresser ab
    .accept 932 >> Akzeptiert die Quest Krankhafter Hass
step
#xprate >1.99
    .xp 10
   >>|cRXP_WARN_Falls ihr nicht mal nah dran seid, macht die Lord Melenas Quest|r
step << Druid
    #season 2
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kal|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .accept 5925 >> Akzeptiert die Quest Dem Ruf folgen
    .target Kal
step << Priest
#xprate >1.99
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laurna Morninglight|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .accept 5629 >>Akzeptiert die Quest Heimkehr << sod
    .target Laurna Morninglight
step << Warrior
#xprate >1.99
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kyra Windblade|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Kyra Windblade
step << Rogue
#xprate >1.99
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jannok Breezesong|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .train 5171 >> Erlerne |T132306:0|t[Zerhäckseln] << !sod
    .train 921 >> Lernt |T133644:0|t[Taschendiebstahl] ebenfalls, was für eure Stufe-10-Schurken-Quest benötigt wird
    .target Jannok Breezesong
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >> Akzeptiert die Quest Die Zähmung der Bestie
	.trainer >> Trainiere deine Klassenfähigkeiten
step << Hunter
#xprate >1.99
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_Benutzt die|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einem|r |cRXP_ENEMY_Waldweberlauerer|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Gebt die Quest Die Zähmung der Bestie ab
    .target Dazalar
    .accept 6101 >> Akzeptiert die Quest Die Zähmung der Bestie
step << Hunter
#xprate >1.99
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_Benutzt die|r |T132164:0|t[Zähmerrute] |cRXP_WARN_bei einem|r |cRXP_ENEMY_Pirschender Nachtsäbler|r
    >>|cRXP_WARN_Ihr müsst mit der rechten Maustaste auf Euer Begleiterfenster klicken und Euren Begleiter verabschieden, bevor ihr ein anderes zähmen könnt|r
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob Nightsaber Stalker
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dazalar|r
    .turnin 6101 >> Gebt die Quest Die Zähmung der Bestie ab
    .target Dazalar
    .accept 6102 >> Akzeptiert die Quest Die Zähmung der Bestie
step << Hunter
#xprate >1.99
    .goto Teldrassil,64.7,66.7
    .use 15923 >>|cRXP_WARN_Benutzt die|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Strigidkreischer|r
    >>|cRXP_WARN_Ihr müsst mit der rechten Maustaste auf Euer Begleiterfenster klicken und Euren Begleiter verabschieden, bevor ihr ein anderes zähmen könnt|r
    .complete 6102,1 --Tame a Strigid Screecher
    .mob Strigid Screecher
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dazalar|r
    .turnin 6102 >> Gebt die Quest Die Zähmung der Bestie ab
    .target Dazalar
    .accept 6103 >> Akzeptiert die Quest Die Ausbildung des Tiers
    .train 1130 >> |cRXP_WARN_Stellt sicher, dass ihr Mal des Jägers trainiert habt. Ihr werdet es bald brauchen, um eine Rune zu erhalten|r
step << Warrior
#xprate >1.99
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mondpriesterin Amara|r
    >>|cRXP_FRIENDLY_Mondpriesterin Amara|r |cRXP_WARN_patrouilliert auf der Straße westlich von Dolanaar|r
    .accept 1684 >> Akzeptiert die Quest Elanaria
    .accept 487 >> Akzeptiert die Quest Die Straße nach Darnassus
    .target Moon Priestess Amara
step << Rogue
#xprate >1.99
    .goto Teldrassil,56.381,60.139
    .target Jannok Breezesong
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jannok Breezesong|r
    .accept 2241 >> Akzeptiert die Quest Der Apfel fällt
step
    #season 0
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mondpriesterin Amara|r
    >>|cRXP_FRIENDLY_Mondpriesterin Amara|r |cRXP_WARN_patrouilliert auf der Straße westlich von Dolanaar|r
    .accept 487 >> Akzeptiert die Quest Die Straße nach Darnassus
    .target Moon Priestess Amara
step << Rogue
    #season 2
    #completewith runeOfPrecision
    #optional
    #label topleft
    >>Tötet oder |T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Gnarlpine Furbolgs|r. Plündert sie für |T134327:0|t[|cRXP_LOOT_Top-Links Karte Piece]|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    .collect 208602,1 -- Top-Left Map Piece (1)
    .mob Gnarlpine Ambusher
    .mob Gnarlpine Shaman
    .mob Gnarlpine Defender
    .mob Gnarlpine Augur
    .train 398196,1
step
    #season 0
    .goto Teldrassil,46.6,53.0
    >>Tötet |cRXP_ENEMY_Wegelagerer der Knarzklauen|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob Gnarlpine Ambusher
step << Warrior
    #season 2
    .goto Teldrassil,46.6,53.0
    >>Tötet |cRXP_ENEMY_Wegelagerer der Knarzklauen|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob Gnarlpine Ambusher
step
    #season 0
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mondpriesterin Amara|r
    >>|cRXP_FRIENDLY_Mondpriesterin Amara|r |cRXP_WARN_patrouilliert auf der Straße westlich von Dolanaar|r
    .turnin 487 >> Gebt die Quest Die Straße nach Darnassus ab
    .target Moon Priestess Amara
step << Priest
    #season 2
    #completewith next
    .goto Teldrassil,44.18,58.19
    .subzone 262 >> BETRETET den Grabhügel von Ban'ethil. Das kann ohne eine Gruppe schwierig sein. Ihr könnt dies auch später tun, um die |T237514:0|t[Pest der Leere]-Rune zu erhalten
    .train 425216,1 << Priest
step << Priest
    #season 2
    .goto Teldrassil,44.401,60.655
    >>Öffnet den |cRXP_PICK_Gnarlpine-Versteck|r. Plündert ihn für eine |T136222:0|t[|cRXP_FRIENDLY_Erinnerung einer Finsteren Entschlossenheit|r]
    >>|cRXP_WARN_Hinweis: Die |cRXP_PICK_Gnarlpine Cache|r kann mehrere Spawnpositionen in den Ban'ethil Barrows|r haben
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .train 425216 >>|cRXP_WARN_Benutzt die|r |T136222:0|t[|cRXP_FRIENDLY_Erinnerung an einen dunklen Zweck|r] |cRXP_WARN_zum Trainieren von|r |T237514:0|t[Pest der Leere]
    >>|cRXP_WARN_Ihr müsst einen|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_Buff haben durch Eingeben von /knien in einem heiligen Gebiet, wie zum Beispiel einen Mondquell, die Abtei von Nordhain, die Kathedrale von Sturmwind, die Altäre des Lichts in Ambossar, Loch Modan oder der Mystische Bezirk in Eisenschmiede.|r
    .use 205940
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
    #label runeOfPrecision
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
step << Rogue
    #season 2
    .goto Teldrassil,38.92,79.93
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
    #softcore
    #completewith next
    .deathskip >> Sterbt absichtlich und erscheint erneut beim Geistheiler in Darnassus
    .target Geistheiler
step << Hunter
    #season 2
    .goto Teldrassil,55.890,59.205
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jeena Featherbow|r
    >>|cRXP_BUY_Kaufe und rüste einen|r |T135489:0|t[Laminierter Doppelbogen] aus
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    #season 2
    #completewith next
    +|cRXP_WARN_Legt den|r |T135489:0|t[Laminierter Doppelbogen] an
    .use 2507
    .itemcount 2507,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.76
step << Hunter
    #season 2
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jeena Featherbow|r
    >>|cRXP_BUY_Kauft und rüstet 400|r |T132382:0|t[Scharfer Pfeil] aus
    .target Jeena Featherbow
step << Hunter
    #season 2
    .goto Teldrassil,46.6,46.3
    >>|cRXP_WARN_Wirkt|r |T132212:0|t[Mal des Jägers] |cRXP_WARN_auf den|r |cRXP_ENEMY_Raschelnder Busch|r
    >>Tötet die |cRXP_ENEMY_Fallenroot Poacher|r that spawns. Plündert sie für |T134419:0|t[|cRXP_FRIENDLY_Rune of Treffsicherheit|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Fallenroot Poacher
    .train 410113,1 --Master Marksman
step
	#xprate < 1.5
    #completewith next
    .goto Teldrassil,38.32,34.36,50 >> Reist zur Lichtung des Orakels
step
	#xprate < 1.5
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Arynia Cloudsbreak|r
    .accept 937 >> Akzeptiert die Quest Die verzauberte Lichtung
step
	#xprate < 1.5
    .goto Teldrassil,38.43,34.03
    .use 18152 >>|cRXP_WARN_Benutzt die|r |T134798:0|t[Amethystphiole] |cRXP_WARN_am Mondbrunnen der Lichtung des Orakels|r
    .complete 7383,1 --Collect Filled Amethyst Phial (x1)
step << Rogue
	#xprate < 1.5
    #season 2
    #completewith xp10
    >>Tötet oder |T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Bloodfeather Harpies|r. Plündert sie für |T134327:0|t[|cRXP_LOOT_Bottom-Rechts Karte Piece]|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    .collect 208603,1 -- Bottom-Right Map Piece (1)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
    .train 398196,1
step
	#xprate < 1.5
    #completewith xp10
	#label harpies
    >>Tötet |cRXP_ENEMY_Harpyie der Blutfedern|r. Plündert sie für ihre |cRXP_LOOT_Gürtel|r
    >>|cRXP_ENEMY_Matriarchin der Blutfedern|r |cRXP_WARN_wirkt|r |T136052:0|t[Welle der Heilung] |cRXP_WARN_und|r |T136048:0|t[Blitzschlag] |cRXP_WARN_welche viel Schaden anrichten. Versucht, sie schnell zu töten|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
	#xprate < 1.5
    .goto Teldrassil,34.61,28.79
    >>Klickt die |cRXP_PICK_Sonderbare wedelbestückte Pflanze|r an
    .accept 931 >> Akzeptiert die Quest Der schimmernde Wedel

step << Hunter
	#xprate <1.5
    #completewith xp10
    #label mist1
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mist|r
    >>Dies startet eine Escort Quest
    .accept 938 >> Akzeptiert die Quest Nebel
    .target Mist
step << Hunter
	#xprate <1.5
    #sticky
    #label xp10
    .xp 10-2670 >> Farmt bis ihr 2670 XP vor Level 10 seid (3830/6500)
    >>|cRXP_WARN_Sobald ihr diese XP-Schwelle erreicht, überspringt die Harpyien-/Eskorte-Quest und geht direkt nach Darnassus. Ihr werdet eine weitere Gelegenheit haben, diese Quests später zu machen|r
step << Hunter
	#xprate <1.5
    #completewith xp10
    #requires mist1
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Arynia Cloudsbreak|r
    .turnin 938 >> Gebt die Quest Nebel ab
step << Hunter
	#xprate <1.5
    #completewith xp10
	#requires harpies
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Arynia Cloudsbreak|r
    .turnin 937 >> Gebt die Quest Die verzauberte Lichtung ab
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> Akzeptiert die Quest Teldrassil
step << !Hunter
	#xprate <1.5
    #label mist1
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mist|r
    >>Dies startet eine Escort Quest
    .accept 938 >> Akzeptiert die Quest Nebel
    .target Mist
step << !Hunter
	#xprate <1.5
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Arynia Cloudsbreak|r
    .turnin 937 >> Gebt die Quest Die verzauberte Lichtung ab
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> Akzeptiert die Quest Teldrassil
    .turnin 938 >> Gebt die Quest Nebel ab
step << Druid
    #xprate <1.5
    #label xp10
    #season 2
    .xp 10
step << Druid
    #xprate <1.5
    #season 0,1
    #label xp10
    .xp 10-750
step << !Hunter !Druid
	#xprate <1.5
    #label xp10
    .xp 10-3110
step << Rogue
	#xprate <1.5
    #season 2
    .goto Teldrassil,37.8,43.0,60,0
    .goto Teldrassil,36.0,34.4,60,0
    .goto Teldrassil,34.6,28.8,60,0
    .goto Teldrassil,37.8,43.0
    >>Tötet oder |T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Bloodfeather Harpies|r. Plündert sie für |T134327:0|t[|cRXP_LOOT_Bottom-Rechts Karte Piece]|r
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
	#xprate < 1.5
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
step
	#xprate 1.49-1.99
   .goto Teldrassil,38.6,58.0
   >>Schließt das sammeln 7 Kleiner Spinnenbeine
   .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
step << Druid
   #xprate 1.49-1.99
   #label xp10
   .xp 10-850
   .goto Teldrassil,38.3,34.4
   >>Falls ihr noch bei der Erfahrung zurück seid, macht die Harpyien-Quest im Norden
step << !Druid
    #xprate 1.49-1.99
	#label xp10
	.xp 10-4415
step << Hunter
    #season 2
    .cast 402265 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune der Treffsicherheit|r] |cRXP_WARN_um|r |T132177:0|t[Meisterschütze] zu trainieren
    .use 206155
    .train 410113,1
step << !Rogue
    #softcore
    #requires xp10
    #completewith next
    .deathskip >> Sterbt absichtlich und erscheint erneut beim Geistheiler in Darnassus
    >>|cRXP_WARN_Stellt sicher, dass ihr näher beim Friedhof von Darnassus seid als bei dem von Dolnaar, sonst gehst du womöglich in die falsche Richtung. Lauft ganz aus dem Lager heraus und sterbt dann, falls du dir unsicher bist|r << sod Priest
    >>|cRXP_WARN_Stellt sicher, dass ihr näher beim Friedhof von Darnassus seid als beim von Dolanaar, sonst geht ihr womöglich in die falsche Richtung. Lauft zur Westseite des Flusses, falls ihr euch unsicher seid|r << sod Hunter/sod Warrior/sod Druid
    .target Geistheiler
step << !Rogue
    #hardcore
    #requires xp10
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> Reist nach Darnassus
step << Druid
    #optional
    #season 2
    .xp <10,1
    .goto Darnassus,70.679,45.379
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >> Akzeptiert die Quest Nessa Shadowsong
 step << Warrior
    #season 2
    .goto Darnassus,57.56,46.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ilyenia Mondfeuer|r
    .skipgossip 11866,1
    .train 227 >>Erlernt Stäbe << Warrior
    .train 2567 >> Erlernt Wurfwaffen << Warrior
    .target Ilyenia Moonfire
step << Warrior
    #season 2
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariyell Himmelsschatten|r
    >>|cRXP_BUY_Kauft und rüstet einen Stapel aus|r |T135425:0|t[Keen Werfen Knives]
    .collect 3107,200
    .target Ariyell Skyshadow
step << Warrior
    #season 2
    #ah
    .goto Darnassus,56.245,54.039,-1
    .goto Darnassus,56.374,51.820,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit einem |cRXP_FRIENDLY_Darnassus Auktionator|r
    >>Kauft einen |T134830:0|t[|cRXP_LOOT_Geringer Heiltrank|r]. Er wird euch helfen, die Rune |T236317:0|t[Rasender Angriff] von Dolanaar zu bekommen
    .collect 929,1 --Lesser Healing Potion (1)
    .target Auctioneer Tolon
    .target Auctioneer Golothas
    .train 425412,1 --Skips if you already have Frenzied Assault
step << Warrior
#xprate >1.99
    .goto Darnassus,57.305,34.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >> Gebt die Quest Elanaria ab
    .target Elanaria
    .accept 1683 >> Akzeptiert die Quest Vorlus Elendshuf
step << Warrior
    #season 2
    #requires xp10
    .goto Darnassus,63.108,21.858
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Delwynna|r upstairs
    >>|cRXP_WARN_Gebt die drei |cRXP_LOOT_Abgetrennter Kopf|r ab, um zu erhalten|r |T134455:0|t[|cRXP_FRIENDLY_Monster Hunter's Rune Fragmente|r]
    .collect 204689,1
    .collect 204690,1
    .collect 204688,1
    .use 204703
    .skipgossip
    .target Delwynna
    .itemcount 208612,1 --Severed Spider Head (1)
    .itemcount 208611,1 --Severed Tiger Head (1)
    .itemcount 208610,1 --Severed Owl Head
    .train 403475,1 --Rune not known
step << Warrior
    #season 2
    >>Benutzt eines der |T134455:0|t[|cRXP_FRIENDLY_Monster Hunter's Rune Fragmente|r], um sie in |T134419:0|t[|cRXP_FRIENDLY_Rune of Verwüsten|r] zu kombinieren
    .train 403475 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_une der Verwüstung|r] |cRXP_WARN_zum Trainieren von|r |T135291:0|t[Verwüsten]
    .use 204689
    .itemcount 204689,1
    .itemcount 204690,1
    .itemcount 204688,1
step << !Rogue !Hunter !Warrior
#xprate >1.99
    .goto Darnassus,67.427,15.655
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Saelienne|r
    .home >> Setzt euren Ruhestein in Darnassus << !Warrior
    .vendor >>|cRXP_BUY_Kauft mehr|r |T132815:0|t|cRXP_LOOT_Eiskalte Milch|r << Priest
    .target Innkeeper Saelienne
step << !Rogue
    #requires xp10
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 922 >> Gebt die Quest Rellian Greenspyre ab
    .target Rellian Greenspyre
    .accept 923 >> Akzeptiert die Quest Tumore
step << !Hunter !Rogue
	#xprate <1.5
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Erzdruide Fandral Staghelm|r oben auf dem Baum
    .turnin 940 >> Abgeben Teldrassil
	.isOnQuest 940
    .target Arch Druid Fandral Staghelm
step << Druid
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mathrengyl Bearwalker|r auf der mittleren Ebene
    .turnin 5925 >>  Gebt die Quest Dem Ruf folgen ab << sod
    .accept 5921 >> Akzeptiert die Quest Moonglade
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Mathrengyl Bearwalker
step << Hunter
#xprate >1.99
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jocaste|r
    .turnin 6103 >> Gebt die Quest Die Ausbildung des Tiers ab
step << !Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priesterin A'moora|r
    .accept 2518 >> Akzeptiert die Quest Tränen des Mondes
step << Warrior
    #season 2
    .hs >> Benutzt euren Ruhestein nach Dolanaar
    .vendor >> |cRXP_BUY_Verkäufer und kauft 5-10 |T133968:0|t[|cRXP_LOOT_Frisch gebackenes Brot|r] beim Gastwirt
step << Warrior
    #season 2
    #sticky
    #completewith FrenziedAssault
    >>Gebt die Quest von |cRXP_FRIENDLY_Mondpriesterin Amara|r ab falls ihr sie zufällig seht während ihr die anderen Schritte abschließt
    >>|cRXP_WARN_Don't go out of von Euch way to look for her yet|r
    .turnin 487 >> Gebt die Quest Die Straße nach Darnassus ab
    .target Moon Priestess Amara
step << Warrior
	#season 2
    .goto Teldrassil,56.308,59.488
    .money <0.0504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Buy a|r |T135145:0|t[Wanderstecken], equip it.
    .collect 2495,1 -- Walking Stick (1)
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Warrior
    #season 2
    #completewith melenas
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >> Reist zum Teufelsfels
step << Warrior
    #season 2
    #label melenas
    .goto Teldrassil,51.2,50.6
    >>Tötet |cRXP_ENEMY_Lord Melenas|r. Plündert sie für ihren |cRXP_LOOT_Kopf|r
    >>|cRXP_ENEMY_Lord Melenas|r kann sich an vielen verschiedenen Orten im Teufelsfels befinden
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step << Warrior
	#season 2
    #softcore
    .deathskip >> Sterbt und respawnt beim Geistheiler
    .target Geistheiler
step << Warrior
    #season 2
    .goto Teldrassil,57.121,61.296
    .train 2550 >>Erlerne Kochkunst
    .target Zarrin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zarrin|r
    .accept 4161 >> Akzeptiert Rezept der Kaldorei
    .turnin 4161 >> Gebt Rezept der Kaldorei ab
    >>|cRXP_WARN_Skip the quest if you don't have 7 small spider legs. Zug cooking anyway, you'll need it later|r
step << Warrior
    #season 2
    #label FrenziedAssault
    .goto Teldrassil,55.619,59.787
    >>Sprecht mit |cRXP_FRIENDLY_Gastwirt Keldamyr|r in Dolanaar
    >>Sprecht mit |cRXP_ENEMY_Syllart|r oben, dann schlagt ihn zusammen. Er wird bei 0% k.o.
    >>Falls |cRXP_ENEMY_Syllart|r nicht da ist, wartet auf sein Respawn
    >>Sprecht mit |cRXP_FRIENDLY_Gastwirt Keldamyr|r erneut, nachdem ihr |cRXP_ENEMY_Syllart|r besiegt habt, um die |T134419:0|t[|cRXP_FRIENDLY_Rune von Rasender Angriff|r] zu erhalten
    .train 425447 >> |cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune des rasenden Angriffs|r] |cRXP_WARN_zum lernen von|r |T236317:0|t[Rasender Angriff]
    >>|cRXP_WARN_Hinweis: Dies kann ziemlich schwierig im Solo-Modus sein, je nach eurer Stufe. Sucht euch Hilfe, falls nötig|r
    >>|cRXP_WARN_Ihr könnt ihn allein mit Wurfkiting schaffen. Versucht ihn zu verlangsamen mit|r |T132316:0|t[Kniesehne] |cRXP_WARN_dann lauft und|r |r |T132324:0|t[Werfen] |cRXP_WARN_auf ihn aus der Ferne.|r |cRXP_WARN_Benutzt einen|r |T134830:0|t[Heiltrank] |cRXP_WARN_und|r |T133685:0|t[Verbände] |cRXP_WARN_um euch zu heilen falls nötig|r
    --Might wanna add a guide video
    .use 204716
    .target Innkeeper Keldamyr
    .mob Syllart
step << Warrior
    #season 2
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tallonkai Swiftroot|r oben auf dem Baum
    .turnin 932 >> Gebt die Quest Krankhafter Hass ab
step << Warrior
    #season 2
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mondpriesterin Amara|r
    >>|cRXP_FRIENDLY_Mondpriesterin Amara|r |cRXP_WARN_patrouilliert auf der Straße westlich von Dolanaar|r
    .turnin 487 >> Gebt die Quest Die Straße nach Darnassus ab
    .target Moon Priestess Amara
    .target Laird
step
#xprate <1.99
    #requires xp10 << Rogue
    .hs >> Benutzt euren Ruhestein nach Dolanaar
    .subzoneskip 186
step << Hunter
#xprate <1.99
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jeena Featherbow|r
	.vendor >> |cRXP_BUY_Kauft 4 Stapel|r |T132382:0|t[Scharfe Pfeile]|cRXP_BUY_. Legt sie an, sobald ihr Stufe 10 erreicht|r
    .target Jeena Featherbow
step
	#xprate 1.49-1.99
    .goto Teldrassil,57.121,61.296
    .train 2550 >>Erlerne Kochkunst
    .target Zarrin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zarrin|r
    .accept 4161 >> Akzeptiert Rezept der Kaldorei
    .turnin 4161 >> Gebt Rezept der Kaldorei ab
step
	#xprate 1.49-1.99
    .goto Teldrassil,51.9,56.4
    >>Findet die Mondpriesterin Amara, sie patrouilliert auf der Straße westlich von Dolanaar
    .target Moon Priestess Amara
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mondpriesterin Amara|r
    .turnin 487 >> Gebt die Quest Die Straße nach Darnassus ab
	.maxlevel 9
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #label beast1
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >> Akzeptiert die Quest Die Zähmung der Bestie
	.train 13165 >> Erlernt eure Stufe 10 Zauber
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #requires beast1
    #label beast2
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_Benutzt die|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einem|r |cRXP_ENEMY_Waldweberlauerer|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #requires beast2
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Gebt die Quest Die Zähmung der Bestie ab
    .target Dazalar
    .accept 6101 >> Akzeptiert die Quest Die Zähmung der Bestie
step
	#xprate <1.5
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 7383 >> Gebt die Quest Die Krone der Erde ab
    .target Corithras Moonrage
    .accept 935 >> Akzeptiert die Quest Krone der Erde
step
	#xprate <1.5
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Denalan|r
    .turnin 931 >> Gebt die Quest Der schimmernde Wedel ab
    .turnin 930 >> Gebt die Quest Die leuchtende Frucht ab
step
	#xprate <1.5
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Denalan|r
	.turnin 927 >> Gebt die Quest Das moosumschlungene Herz ab
    .isOnQuest 927
step
	#xprate <1.5
	.goto Teldrassil,60.78,68.59
	>>Klickt auf |cRXP_LOOT_Denalans Blumentopf|r
	.turnin 941 >> Gebt die Quest Das Einpflanzen des Herzens ab
	.isQuestTurnedIn 927
step << Hunter
	#xprate <1.5
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_Benutzt die|r |T132164:0|t[Zähmerrute] |cRXP_WARN_bei einem|r |cRXP_ENEMY_Pirschender Nachtsäbler|r
    >>|cRXP_WARN_Ihr müsst mit der rechten Maustaste auf Euer Begleiterfenster klicken und Euren Begleiter verabschieden, bevor ihr ein anderes zähmen könnt|r
    .complete 6101,1 --Tame a Nightsaber Stalker
	.isOnQuest 6101
    .mob Nightsaber Stalker
step
#xprate <1.99
    #label L10
    .xp 10
step
	#xprate <1.5
    #softcore
	#sticky
    #completewith next
    .deathskip >> Sterbt und respawnt beim Geistheiler
    .target Geistheiler
step << Priest
#xprate <1.99
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laurna Morninglight|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Laurna Morninglight
step << Warrior
#xprate <1.99
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kyra Windblade|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Kyra Windblade
step << Rogue
#xprate <1.99
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jannok Breezesong|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .train 5171 >> Erlerne |T132306:0|t[Zerhäckseln]
    .train 921 >> Lernt |T133644:0|t[Taschendiebstahl] ebenfalls, was für eure Stufe-10-Schurken-Quest benötigt wird
    .target Jannok Breezesong
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >> Akzeptiert die Quest Die Zähmung der Bestie
	.trainer >> Trainiere deine Klassenfähigkeiten
step << Hunter
#xprate <1.99
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_Benutzt die|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einem|r |cRXP_ENEMY_Waldweberlauerer|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Gebt die Quest Die Zähmung der Bestie ab
    .target Dazalar
    .accept 6101 >> Akzeptiert die Quest Die Zähmung der Bestie
step << Hunter
#xprate <1.99
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_Benutzt die|r |T132164:0|t[Zähmerrute] |cRXP_WARN_bei einem|r |cRXP_ENEMY_Pirschender Nachtsäbler|r
    >>|cRXP_WARN_Ihr müsst mit der rechten Maustaste auf Euer Begleiterfenster klicken und Euren Begleiter verabschieden, bevor ihr ein anderes zähmen könnt|r
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob Nightsaber Stalker
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dazalar|r
    .turnin 6101 >> Gebt die Quest Die Zähmung der Bestie ab
    .target Dazalar
    .accept 6102 >> Akzeptiert die Quest Die Zähmung der Bestie
step << Hunter
#xprate <1.99
    .goto Teldrassil,64.7,66.7
    .use 15923 >>|cRXP_WARN_Benutzt die|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Strigidkreischer|r
    >>|cRXP_WARN_Ihr müsst mit der rechten Maustaste auf Euer Begleiterfenster klicken und Euren Begleiter verabschieden, bevor ihr ein anderes zähmen könnt|r
    .complete 6102,1 --Tame a Strigid Screecher
    .mob Strigid Screecher
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dazalar|r
    .turnin 6102 >> Gebt die Quest Die Zähmung der Bestie ab
    .target Dazalar
    .accept 6103 >> Akzeptiert die Quest Die Ausbildung des Tiers
step << Warrior
#xprate <1.99
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mondpriesterin Amara|r
    >>|cRXP_FRIENDLY_Mondpriesterin Amara|r |cRXP_WARN_patrouilliert auf der Straße westlich von Dolanaar|r
    .accept 1684 >> Akzeptiert die Quest Elanaria
    .target Moon Priestess Amara
step << Rogue
#xprate <1.99
    .goto Teldrassil,56.381,60.139
    .target Jannok Breezesong
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jannok Breezesong|r
    .accept 2241 >> Akzeptiert die Quest Der Apfel fällt
step << Hunter
	#xprate <1.5--money issues 1.5x
    .goto Teldrassil,56.308,59.488
    .money <0.0504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Kauft einen|r |T135145:0|t[Wanderstecken]
    >>|cRXP_WARN_Ihr werdet diesen später anlegen. Überspringt diesen Schritt, falls ihr einen anderen Stab gefunden habt|r
    .collect 2495,1 -- Walking Stick (1)
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << !Druid
#xprate <1.99
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mondpriesterin Amara|r
    >>|cRXP_FRIENDLY_Mondpriesterin Amara|r |cRXP_WARN_patrouilliert auf der Straße westlich von Dolanaar|r
    .turnin 487 >> Gebt die Quest Die Straße nach Darnassus ab
    .target Moon Priestess Amara
step << Rogue
#xprate <1.99
    #softcore
    #completewith next
    .goto Teldrassil,44.0,54.6
    .deathskip >>Sobald ihr das Furbolg-Areal hinter euch habt, sterbt absichtlich und respawnt am Friedhof von Darnassus
    .target Geistheiler
step << Rogue
    #hardcore
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> Reist nach Darnassus
step << Rogue
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 922 >> Gebt die Quest Rellian Greenspyre ab
    .target Rellian Greenspyre
    .accept 923 >> Akzeptiert die Quest Tumore
step << Rogue
    #season 0
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Erzdruide Fandral Staghelm|r oben auf dem Baum
    .turnin -935 >> Gebt die Quest Die Krone der Erde ab
    .turnin -940 >> Abgeben Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >> Akzeptiert die Quest Der Hain der Uralten
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Syurna|r
    .turnin 2241 >> Gebt die Quest Der Apfel fällt ab
    .target Syurna
    .accept 2242 >> Akzeptiert die Quest Das Schicksal ruft
step << Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priesterin A'moora|r
    .accept 2518 >> Akzeptiert die Quest Tränen des Mondes
step << Warrior
#xprate >1.99
    #sticky
    #completewith next
    .goto Teldrassil,48.7,62.2,18 >> Reist in Richtung |cRXP_ENEMY_Vorlus Elendshuf|r
step << Warrior
#xprate >1.99
    .goto Teldrassil,47.2,63.7
    >>Tötet |cRXP_ENEMY_Vorlus Elendshuf|r. Plündert ihn für sein |cRXP_LOOT_Horn|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob Vorlus Vilehoof
step << Hunter
    #season 2
    .goto Darnassus,64.2,63.0
    .line Darnassus,60.65,66.47,61.68,63.73,62.36,58.91,62.32,55.22,65.77,55.75,67.88,57.48,68.35,59.98,65.14,68.14,64.34,71.36,62.28,68.79,60.65,66.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSucht nach |cRXP_FRIENDLY_Jaeana|r, sie patrouilliert um die Terrasse der Händler
    >>|cRXP_BUY_Kauft einen Stapel von|r |T133972:0|t[Zähes Stockfleisch] |cRXP_BUY_von ihr.
    >>|cRXP_WARN_Ihr werdet es brauchen um die Eule von Euch zu füttern, sie essen nur Fleisch und es gibt keinen Fleischhändler in der Dunkelküste|r
    .collect 117,15
    .target Jaeana
step << !Warrior
    #season 2
    .goto Darnassus,70.679,45.379
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >> Akzeptiert die Quest Nessa Shadowsong
step << Hunter
    #season 2
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariyell Himmelsschatten|r
    >>|cRXP_BUY_Kaufe und rüste einen|r |T135489:0|t[Laminierter Doppelbogen] aus
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    #season 2
    #completewith next
    +|cRXP_WARN_Legt den|r |T135489:0|t[Laminierter Doppelbogen] an
    .use 2507
    .itemcount 2507,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.76
step << Hunter
    #sticky
    #label StrigidHunter
	.goto Teldrassil,41.2,44.4,0
	.goto Teldrassil,44.2,39.8,0
	.goto Teldrassil,45.6,31.4,0
	.goto Teldrassil,37.6,28.8,0
    >>|cRXP_WARN_Wirkt|r |T132164:0|t[Wildtier zähmen] |cRXP_WARN_auf einen |cRXP_ENEMY_Strigidjäger|r um ihn zu Zähmen|r -- .tame 1997
    .train 2981 >> |cRXP_WARN_Greift mobs mit ihm an um|r |T132140:0|t[Klaue (Rang 2)] zu lernen
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Hier Klicken für mehr Infos bezüglich Pet Training|r
	.unitscan Strigid Hunter
step << Hunter
    #sticky
    #requires StrigidHunter
    .engrave 5 >> Gravieren |T132270:0|t[Meister der Tiere] on von Euch |T132724:0|t[Brust]
step
    #season 0 << Rogue/Druid
    .goto Teldrassil,43.2,42.8,55,0
    .goto Teldrassil,43.2,32.8,55,0
    .goto Teldrassil,43.6,26.0,55,0
    .goto Teldrassil,43.2,42.8
	>>Tötet |cRXP_ENEMY_Bäumlingtrampler|r, |cRXP_ENEMY_Morastbäumling|r und |cRXP_ENEMY_Alter Bäumling|r. Plündert sie für ihre|cRXP_LOOT_Tumore|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step << Hunter
    #season 2
    .train 425762,1
    .goto Teldrassil,48.3,31.4
    >>Benutzt |T134025:0|t[Teldrassil Bird Fleisch] neben der Leiche, um |cRXP_ENEMY_Mowgh|r zu beschwören
    >>Tötet |cRXP_ENEMY_Mowgh|r und plündert ihn, um |T134419:0|t|cRXP_LOOT_[Rune des Flankierens]|r zu erhalten
    .collect 205979,1
    .train 425762,1 --Flanking Strike
    .use 208608
    .mob Mowgh
step << Hunter
    #season 2
    .train 425762 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Flankieren|r] |cRXP_WARN_zum Trainieren|r |T132175:0|t[Flankenangriff]
    .use 205979
    .itemcount 205979,1
    .train 425762,1 --Flanking Strike
step << Hunter
    #season 2
    #optional
    #completewith next
    .engrave 7 >> Öffnet euer Charakterblatt und verziert eure Beine mit |T132175:0|t[Flankenangriff]
step
    #season 0 << Rogue/Druid
    #label Spinnerets
	.goto Teldrassil,47.3,26.0,0
    .goto Teldrassil,37.9,25.1,0
    .goto Teldrassil,47.3,26.0,30,0
    .goto Teldrassil,37.9,25.1,30,0
    .goto Teldrassil,40.7,25.4
    >>Tötet |cRXP_ENEMY_Lady Sathrah|r. Plündert sie für |cRXP_LOOT_Spinnerets|r
    >>|cRXP_ENEMY_Herrin Sathrah|r |cRXP_WARN_kann an 3 verschiedenen Orten erscheinen|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob Lady Sathrah
step << !sod/Warrior/Rogue/Druid
    .goto Teldrassil,38.3,34.3
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Arynia Cloudsbreak|r
    .accept 937 >> Akzeptiert die Quest Die verzauberte Lichtung
step << Rogue
    #season 2
    #label Spinnerets
	.goto Teldrassil,47.3,26.0,0
    .goto Teldrassil,37.9,25.1,0
    .goto Teldrassil,47.3,26.0,30,0
    .goto Teldrassil,37.9,25.1,30,0
    .goto Teldrassil,40.7,25.4
    >>Tötet |cRXP_ENEMY_Lady Sathrah|r. Plündert sie für |cRXP_LOOT_Spinnerets|r
    >>|cRXP_ENEMY_Herrin Sathrah|r |cRXP_WARN_kann an 3 verschiedenen Orten erscheinen|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob Lady Sathrah
step << Rogue
    .goto Teldrassil,38.0,25.2
    >>|cRXP_WARN_Wirkt|r |T133644:0|t[Taschendiebstahl] auf |cRXP_ENEMY_Sethir der Uralte|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    >>|cRXP_ENEMY_Sethir der Uralte|r |cRXP_WARN_wandert den großen Ast entlang|r
    >>|cRXP_WARN_Vemeidet einen Kampf mit |cRXP_ENEMY_Sethir der Uralte|r. Lasst ihn an euch vorbeigehen, danach|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_und|r |T133644:0|t[Taschendiebstahl] |cRXP_WARN_wenn ihr hinter ihm seid|r
    .complete 2242,1
    .mob Sethir the Ancient
step << Rogue
    #season 2
    #sticky
    #completewith MistStart
    #label BottomRightMapPiece
    >>Tötet oder |T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Bloodfeather Harpies|r. Plündert sie für |T134327:0|t[|cRXP_LOOT_Bottom-Rechts Karte Piece]|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    .collect 208603,1 -- Bottom-Right Map Piece (1)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
    .train 398196,1
step << !sod/Warrior/Rogue/Druid
    #sticky
	#label harpies2
    .goto Teldrassil,33.619,29.819,0,0
    >>Tötet |cRXP_ENEMY_Harpyie der Blutfedern|r. Plündert sie für ihre |cRXP_LOOT_Gürtel|r
    >>|cRXP_ENEMY_Matriarchin der Blutfedern|r |cRXP_WARN_wirkt|r |T136052:0|t[Welle der Heilung] |cRXP_WARN_und|r |T136048:0|t[Blitzschlag] |cRXP_WARN_welche viel Schaden anrichten. Versucht, sie schnell zu töten|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step << Rogue
    #season 2
    #sticky
    #completewith next
    #requires BottomRightMapPiece
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
step << !sod/Warrior/Rogue/Druid
    .goto Teldrassil,31.54,31.62
    .target Mist
    #label MistStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mist|r
    >>Dies startet eine Escort Quest
    >>|cRXP_WARN_Überspringt die Quest, wenn der NPC nicht da ist|r
    .accept 938 >> Akzeptiert die Quest Nebel
step << Rogue
    #season 2
    .goto Teldrassil,37.8,43.0,60,0
    .goto Teldrassil,36.0,34.4,60,0
    .goto Teldrassil,34.6,28.8,60,0
    >>Tötet oder |T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Bloodfeather Harpies|r. Plündert sie für |T134327:0|t[|cRXP_LOOT_Bottom-Rechts Karte Piece]|r
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
step << !sod/Warrior/Rogue/Druid
    .goto Teldrassil,38.3,34.4
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Arynia Cloudsbreak|r
    .turnin 938 >> Gebt die Quest Nebel ab
    .isOnQuest 938
step << !sod/Warrior/Rogue/Druid
    #requires harpies2
    #label TeldrassilEnd
    .goto Teldrassil,38.3,34.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Arynia Cloudsbreak|r
    .turnin 937 >> Gebt die Quest Die verzauberte Lichtung ab
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> Akzeptiert die Quest Teldrassil
step << Druid
    #season 2
    #label Spinnerets
	.goto Teldrassil,47.3,26.0,0
    .goto Teldrassil,37.9,25.1,0
    .goto Teldrassil,47.3,26.0,30,0
    .goto Teldrassil,37.9,25.1,30,0
    .goto Teldrassil,40.7,25.4
    >>Tötet |cRXP_ENEMY_Lady Sathrah|r. Plündert sie für |cRXP_LOOT_Spinnerets|r
    >>|cRXP_ENEMY_Herrin Sathrah|r |cRXP_WARN_kann an 3 verschiedenen Orten erscheinen|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob Lady Sathrah
step << Druid
    #season 2
    .goto Teldrassil,43.2,42.8,55,0
    .goto Teldrassil,43.2,32.8,55,0
    .goto Teldrassil,43.6,26.0,55,0
    .goto Teldrassil,43.2,42.8
	>>Tötet |cRXP_ENEMY_Bäumlingtrampler|r, |cRXP_ENEMY_Morastbäumling|r und |cRXP_ENEMY_Alter Bäumling|r. Plündert sie für ihre|cRXP_LOOT_Tumore|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step << Warrior
    #season 2
    .goto Teldrassil,39.8,37.4,25 >>Geht zum markierten Fleck. Überprüft ob |cRXP_FRIENDLY_Wandernder Schwertkämpfer|r dort ist. Falls ihr ihn findet, könnt ihr ihn zu einem Duell herausfordern, was euch die Rune von |T132334:0|t[|cRXP_FRIENDLY_Blood Raserei|r] geben wird
    >>|cRXP_WARN_Er hat mehrere Spawnpunkte und kann nur in einem davon zur Zeit vorhanden sein. Überspringt diesen Schritt falls er nicht dort ist|r
    .unitscan Wandering Swordsman
    .train 412507,1
step
    #softcore
	#completewith darn << era
    #completewith darnSoD << sod
    .deathskip >>Sterbt absichtlich und respawnt beim Darnassus-Friedhof
    >>|cRXP_WARN_Achtet darauf, dass ihr auf der Westseite des Flusses seid, sonst könnt ihr auf dem falschen Friedhof landen|r << sod
    .target Geistheiler
step
    #hardcore
    #completewith next
    .goto Darnassus,82.01,36.70
    .zone Darnassus >> Reist nach Darnassus
step << Warrior
    #season 2
    .goto Teldrassil,39.8,69.6,25 >>Geht zum markierten Fleck. Überprüft ob |cRXP_FRIENDLY_Wandernder Schwertkämpfer|r dort ist, falls ihr ihn noch nicht gefunden habt. Falls ihr ihn findet, könnt ihr ihn zu einem Duell herausfordern, was euch die Rune von |T132334:0|t[|cRXP_FRIENDLY_Blood Raserei|r] geben wird
    >>|cRXP_WARN_Er hat mehrere Spawnpunkte und kann jeweils nur an einem davon vorhanden sein. Überspringt diesen Schritt, wenn er dort nicht ist|r
    .unitscan Wandering Swordsman
    .train 412507,1
step << Warrior
    #season 2
    .goto Teldrassil,43.8,77.0,25 >>Geht zum markierten Punkt. Überprüft, ob |cRXP_FRIENDLY_Wandernder Schwertkämpfer|r dort ist, falls ihr ihn noch nicht gefunden habt. Wenn ihr ihn findet, könnt ihr ihn zu einem Duell herausfordern, das euch die Rune von |T132334:0|t[|cRXP_FRIENDLY_Blutraserei|r] gibt.
    >>|cRXP_WARN_Er hat mehrere Spawnpunkte und kann jeweils nur an einem davon vorhanden sein. Überspringt diesen Schritt, wenn er dort nicht ist|r
    .unitscan Wandering Swordsman
    .train 412507,1
step << Warrior
    #softcore
    #completewith next
    #sesaon 2
    .goto Teldrassil,40.8,75.6
    .deathskip >>Sterbt absichtlich und respawnt beim Darnassus-Friedhof
    >>|cRXP_WARN_Stellt sicher, dass ihr näher beim Darnassus-Friedhof seid als bei Dolanaar, sonst könnt ihr am Ende in die falsche Richtung gehen. Falls ihr euch unsicher seid, geht östlich des Ortes, der auf der Karte von Euch markiert ist|r
    .target Geistheiler
step
    #hardcore
    #completewith next
    #season 2
    .goto Darnassus,82.01,36.70
    .zone Darnassus >> Reist nach Darnassus
step
    .goto Darnassus,70.679,45.379
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >> Akzeptiert die Quest Nessa Shadowsong
step
    #softcore
    #label darn
    #optional
    .goto Darnassus,82.01,36.70
    .zone Darnassus >> Reist nach Darnassus
step
	.abandon 927 >> Brecht die Quest Das moosumschlungene Herz ab. Ihr bekommt nie die Gelegenheit, sie abzugeben.
step << Warrior
#xprate <1.99
    .goto Darnassus,57.305,34.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >> Gebt die Quest Elanaria ab
    .target Elanaria
    .accept 1683 >> Akzeptiert die Quest Vorlus Elendshuf
step << Warrior
#xprate <1.99
    #sticky
    #completewith next
    .goto Teldrassil,48.7,62.2,18 >> Reist in Richtung |cRXP_ENEMY_Vorlus Elendshuf|r
step << Warrior
#xprate <1.99
    .goto Teldrassil,47.2,63.7
    >>Tötet |cRXP_ENEMY_Vorlus Elendshuf|r. Plündert ihn für sein |cRXP_LOOT_Horn|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob Vorlus Vilehoof
step << Warrior
#xprate <1.99
    #softcore
	#sticky
    #completewith next
    .goto Teldrassil,43.6,54.3
    .deathskip >>Sterbt absichtlich, nachdem ihr das Furbolg-Gebiet verlassen habt, und respawnt im Darnassus
step << Warrior
#xprate <1.99
    #hardcore
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> Reist nach Darnassus
step << Warrior
    .goto Darnassus,57.305,34.606
    .target Elanaria
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elanaria|r
    .turnin 1683 >> Gebt die Quest Vorlus Elendshuf ab
--	.accept 1686 >> Accept The Shade of Elura
step << Warrior
    #season 2
    #requires xp10
    .goto Darnassus,63.108,21.858
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Delwynna|r upstairs
    >>|cRXP_WARN_Gebt die drei |cRXP_LOOT_Abgetrennter Kopf|r ab, um|r |T134455:0|t[|cRXP_FRIENDLY_Monster Hunter's Rune Fragmente|r] zu erhalten
    .collect 204689,1
    .collect 204690,1
    .collect 204688,1
    .use 204703
    .skipgossip
    .target Delwynna
    .itemcount 208612,1 --Severed Spider Head (1)
    .itemcount 208611,1 --Severed Tiger Head (1)
    .itemcount 208610,1 --Severed Owl Head
    .train 403475,1 --Rune not known
step << Warrior
    #season 2
    >>Benutzt |T134455:0|t[|cRXP_FRIENDLY_Monster Hunter's Rune Fragmente|r], um sie in |T134419:0|t[|cRXP_FRIENDLY_Rune of Verwüsten|r] zu kombinieren
    .train 403475 >>|cRXP_WARN_Benutzt die|r |T134419:0|t[|cRXP_FRIENDLY_une der Verwüstung|r] |cRXP_WARN_zum Trainieren von|r |T135291:0|t[Verwüsten]
    .use 204689
    .itemcount 204689,1
    .itemcount 204690,1
    .itemcount 204688,1
step << Hunter
#xprate <1.99
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jocaste|r
    .turnin 6103 >> Gebt die Quest Die Ausbildung des Tiers ab
step << Druid
    #season 0
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mathrengyl Bearwalker|r auf der mittleren Ebene
    .turnin 5931 >> Gebt die Quest Zurück nach Darnassus ab
    .target Mathrengyl Bearwalker
    .accept 6001 >> Akzeptiert die Quest Körper und Herz
step
    #season 0
    .goto Darnassus,34.814,9.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Erzdruide Fandral Staghelm|r
    .turnin -935 >> Gebt die Quest Die Krone der Erde ab
    .turnin -940 >> Abgeben Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >> Akzeptiert die Quest Der Hain der Uralten
step << !Rogue
    #season 2
    #label darnSoD
    .goto Darnassus,38.184,21.639
    .target Rellian Greenspyre
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 923 >> Gebt die Quest Tumore ab
step << Rogue
    #season 2
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priesterin A'moora|r
    .turnin 2518 >> Gebt die Quest Tränen des Mondes ab
    .target Priestess A'moora
    .accept 2520 >> Akzeptiert die Quest Sathrahs Opferung
step << Rogue
    #season 2
    .goto Darnassus,39.7,85.8
	.use 8155 >>|cRXP_WARN_Benutzt|r |T135652:0|t[Sathrahs Opferung] |cRXP_WARN_am Brunnen|r
    .complete 2520,1 --Offer the sacrifice at the fountain
step << Rogue
    #season 2
    #label end
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priesterin A'moora|r
    .turnin 2520 >> Gebt die Quest Sathrahs Opferung ab
step << Warrior/Rogue/Druid
    #season 2
    .goto Darnassus,34.814,9.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Erzdruide Fandral Staghelm|r
    .turnin 940 >> Abgeben Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >> Akzeptiert die Quest Der Hain der Uralten
step
    #season 0
    .goto Darnassus,38.184,21.639
    .target Rellian Greenspyre
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 923 >> Gebt die Quest Tumore ab
step << Hunter
    .goto Darnassus,40.2,9.8
    .trainer >>Erlernen lvl 12 spells << sod
    >>|cRXP_WARN_Überspringt diesen Schritt und kommt zurück nachdem ihr Tränen des Mondes abgebt falls ihr nicht genug Geld habt oder noch nicht auf Stufe 12 seid|r << sod
    .target Jocaste
step << Hunter
    .goto Darnassus,42.2,8.8
    .trainer >>Erlernen Begleiter spells
    .target Silvaria
step << Rogue
    #season 2
    .goto Darnassus,38.6,15.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lelanai|r
    .vendor >> |cRXP_BUY_Verkauft euren trash|r
    .target Lelanai
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    .target Syurna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Syurna|r
    .turnin 2242 >> Gebt die Quest Das Schicksal ruft ab
step << Rogue
    #season 2
    >>|cRXP_WARN_Vergewissert euch dass ihr mindestens 29 Silber übrig nach dem Training habt. Ihr werdet es brauchen um einen Bogen zu bekommen|r
    .trainer >> Erlernen level 12 spells
step << !sod/!Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priesterin A'moora|r
    .turnin 2518 >> Gebt die Quest Tränen des Mondes ab
    .target Priestess A'moora
    .accept 2520 >> Akzeptiert die Quest Sathrahs Opferung
step << !sod/!Rogue
    .goto Darnassus,39.7,85.8
	.use 8155 >>|cRXP_WARN_Benutzt|r |T135652:0|t[Sathrahs Opferung] |cRXP_WARN_am Brunnen|r
    .complete 2520,1 --Offer the sacrifice at the fountain
step << !sod/!Rogue
    #label end
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priesterin A'moora|r
    .turnin 2520 >> Gebt die Quest Sathrahs Opferung ab
step << Priest
    #season 2
    .goto Darnassus,40.0,80.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priestess Alathea|r
    .turnin 5629 >> Gebt die Quest Heimkehr ab
    .target Priestess Alathea
step << Priest
    #season 2
    .goto Darnassus,38.6,82.0
    .trainer >> Erlernen lvl 12 Zauber
step << Druid
#ssf
    #season 0
    .goto Darnassus,47.95,68.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Firodren Mooncaller|r
    .train 2366 >> Erlernt |T136065:0|t[Kräuterkunde]
    >>|T136065:0|t[Kräuterkunde] |cRXP_WARN_ist erforderlich, um 5|r |T134187:0|t[Erdwurzel] |cRXP_WARN_für eine wichtige Klassenquest zu sammeln. Ihr könnt es danach wieder verlernen.|r
    .target Firodren Mooncaller
step
    #ah
    .goto Darnassus,56.245,54.039,-1
    .goto Darnassus,56.374,51.820,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit einem |cRXP_FRIENDLY_Darnassus Auktionator|r
    >>Kauft die folgenden Gegenstände für eine sofortige Abgabe später in der Dunkelküste
    >>|T134187:0|t[Erdwurzel] << Druid era
    >>|T133912:0|t[Dunkelküstenbarsch]
    >>|T133972:0|t[Schreiterfleisch]
    *Überspringt diesen Schritt falls ihr es nicht kaufen möchtet
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 2449,5,6123,1 << Druid
    .target Auctioneer Tolon
    .target Auctioneer Golothas
step << Hunter
    .goto Darnassus,64.2,63.0
    .line Darnassus,60.65,66.47,61.68,63.73,62.36,58.91,62.32,55.22,65.77,55.75,67.88,57.48,68.35,59.98,65.14,68.14,64.34,71.36,62.28,68.79,60.65,66.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSucht nach |cRXP_FRIENDLY_Jaeana|r, sie patrouilliert um die Terrasse der Händler
    >>|cRXP_BUY_Kauft einen Stapel von|r |T133972:0|t[Zähes Stockfleisch] |cRXP_BUY_von ihr.
    >>|cRXP_WARN_Ihr werdet es brauchen um die Eule von Euch zu füttern, sie essen nur Fleisch und es gibt keinen Fleischhändler in der Dunkelküste|r
    .collect 117,15
    .target Jaeana
step << Hunter
    #season 2
    .goto Darnassus,64.2,59.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kieran|r. Er ist auf der oberen Ebene der Hütte
    >>|cRXP_BUY_Kauft einen|r |T135145:0|t[Wanderstecken]
    >>|cRXP_WARN_Überspringt diesen Schritt falls ihr einen anderen Stab bereits in euren Taschen habt|r
    .collect 2495,1
    .target Kieran
    .money <0.1539
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step << Hunter/Warrior/Priest/Sod Rogue
    .goto Darnassus,57.56,46.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ilyenia Mondfeuer|r
    .skipgossip 11866,1
    .train 227 >>Erlernt Stäbe << Hunter/Warrior/Priest
    .train 265 >>Erlernen Bogen << Sod Rogue
    >>Falls ihr einen Stab in der Tasche habt, rüstet ihn aus << Hunter
    >>Falls ihr einen Bogen der Tasche habt, rüstet ihn aus << Rogue
    .target Ilyenia Moonfire
step << Hunter
    #optional
    #completewith end
    +|cRXP_WARN_Legt den|r |T135145:0|t[Wanderstecken] an
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step << Hunter/Sod Rogue
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariyell Himmelsschatten|r
    >>|cRXP_BUY_Kaufe und rüste einen|r |T135489:0|t[Laminierter Doppelbogen] aus
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    #season 0
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariyell Himmelsschatten|r
	.vendor >>|cRXP_BUY_Kaufe|r |T132382:0|t[Scharfe Pfeile]
    .target Ariyell Skyshadow
step << Hunter/Sod Rogue
    #season 2
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariyell Himmelsschatten|r
	.vendor >>|cRXP_BUY_Kaufe|r |T132382:0|t[Scharfe Pfeile]
    .vendor >>|cRXP_BUY_Kauft einen|r |T134410:0|t[Mittlerer Köcher] |cRXP_BUY_falls ihr Geld übrig habt|r << Hunter
    .target Ariyell Skyshadow
step << Hunter
    #completewith next
    +|cRXP_WARN_Legt den|r |T135489:0|t[Laminierter Doppelbogen] an
    .use 2507
    .itemcount 2507,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.76
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariyell Himmelsschatten|r
    >>|cRXP_BUY_Kauft einen|r |T135147:0|t[Knorriger Stab]|cRXP_BUY_. Legt ihn auf Stufe 15 an|r
	.collect 2030,1
    .target Ariyell Skyshadow
    .money <0.5022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariyell Himmelsschatten|r
    >>|cRXP_BUY_Kauft einen|r |T135154:0|t[Hirtenstab]|cRXP_BUY_. Legt ihn ab Stufe 11 an|r << era
    >>|cRXP_BUY_Kauft und legt einen|r |T135154:0|t[Hirtenstab] an |cRXP_BUY_falls ihr euch keinen |r |T135147:0|t[Knorriger Stab] leisten könnt << sod
	.collect 854,1
    .target Ariyell Skyshadow
    .money <0.3022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariyell Himmelsschatten|r
	>>|cRXP_BUY_Kauft und rüstet einen|r |T135346:0|t[Entersäbel] aus |cRXP_BUY_falls ihr euch keinen|r |T135154:0|t[Hirtenstab] leisten könnt
	.collect 851,1
    .target Ariyell Skyshadow
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.82
step << Warrior
    #completewith next
    +|cRXP_WARN_Rüstet aus:|r |T135346:0|t[Entersäbel]
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.81
step << Warrior
    #completewith next
    +Rüstet |T135154:0|tden|cRXP_WARN_ [Hirtenstab]|r aus
    .use 854
    .itemcount 854,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.43
step << Warrior
    #season 2
	.goto Darnassus,58.6,35.6
    .target Arias'ta Bladesinger
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Arias'ta Klingenlied|r
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Rogue
    #season 0
    .goto Darnassus,62.68,65.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rellian Greenspyre|r auf der zweiten Etage
    >>|cRXP_BUY_Kauft einen|r |T135641:0|t[Ausbalancierter Wurfdolch]
    .collect 2946,1 -- Balanced Throwing Dagger
    .target Turian
step
    #completewith NessaShadowsong
    .goto Darnassus,28.52,39.89
    .zone Teldrassil >> Nimm das Lila Portal nach Rut'Theran
    .zoneskip Darkshore
    .subzoneskip 702
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
    >>Öffnet den |cRXP_PICK_Vergrabenen Schatz|r. Plündert ihn für die |T134419:0|t[|cRXP_FRIENDLY_Rune des Pistolenhelden|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << Rogue
    #season 2
    .train 400095 >> |cRXP_WARN_Benutzt die|r|T134419:0|t[|cRXP_FRIENDLY_Rune des Pistolenhelden|r] |cRXP_WARN_zum Trainieren von|r |T134536:0|t[Pistolenheld]
    .use 203991
    .itemcount 203991,1
step
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6344 >> Gebt die Quest Nessa Shadowsong ab
    .target Nessa Shadowsong
    .accept 6341 >> Akzeptiert die Quest Die Beute von Teldrassil
step
    #label NessaShadowsong
    #optional
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6343 >> Gebt die Quest Rückkehr zu Nessa ab
    .isOnQuest 6343
    .target Nessa Shadowsong
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vesprystus|r
    .turnin 6341 >> Gebt die Quest Die Arten von Teldrassil ab
    .target Vesprystus
    .accept 6342 >> Akzeptiert die Quest Flug nach Auberdine
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Fliegt zur Dunkelküste
    .target Vesprystus
]])
