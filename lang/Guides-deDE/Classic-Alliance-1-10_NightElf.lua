if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
<< Alliance
#name 1-6 Laubschattental
#displayname 1-7 Laubschattental << sod
#version 1
#group RestedXP Allianz 1-20
#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 6-11 Teldrassil
step << !NightElf
    #sticky
    #completewith next
    +Ihr habt einen Leitfaden für Nachtelfen ausgewählt. Ihr solltet die selbe Anfangszone wählen, in der ihr startet
step
    .goto Teldrassil,58.695,44.266
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Konservator Ilthalaine|r
    .accept 456 >> Akzeptiert die Quest Das Gleichgewicht der Natur
step
    #sticky
    #label balance1
    #completewith GoodProtector
    >>Tötet |cRXP_ENEMY_Junger Nachtsäbler|r und |cRXP_ENEMY_Junge Disteleber|r
    .goto Teldrassil,62.0,42.6,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob +Young Nightsaber
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob +Young Thistle Boar
step
    >>Plündert die Mobs, die ihr tötet, stellt sicher, dass ihr mindestens 10 Kupfer an Vendor-Schrott habt, ihr werdet es benötigen, um |T132333:0|t[Schlachtruf] zu trainieren<< Warrior
    .xp 2 >> Farmt bis Stufe 2
step << !sod/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dirania Silvershine|r und |cRXP_FRIENDLY_Melithar Staghelm|r
    #label GoodProtector
    .accept 4495 >> Akzeptiert die Quest Ein guter Freund
    .target +Dirania Silvershine
    .goto Teldrassil,60.899,41.961
    .accept 458 >> Akzeptiert die Quest Die Beschützerin des Waldlandes
	.goto Teldrassil,59.924,42.474
    .target +Melithar Staghelm
step
    >>Tötet |cRXP_ENEMY_Junger Nachtsäbler|r und |cRXP_ENEMY_Junge Disteleber|r
    .goto Teldrassil,62.0,42.6,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob +Young Nightsaber
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob +Young Thistle Boar
step << Hunter
#xprate >1.99
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Konservator Ilthalaine|r
    .turnin 456,1 >> Gebt die Quest Das Gleichgewicht der Natur ab << Hunter
    .target Conservator Ilthalaine
    .accept 457 >> Akzeptiert die Quest Das Gleichgewicht der Natur
step << Hunter
#xprate >1.99
    .goto Teldrassil,59.8,34.1
    >>Tötet |cRXP_ENEMY_Räudiger Nachtsäbler|r und |cRXP_ENEMY_Disteleber|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step << Hunter
    #season 0,1
    .goto Teldrassil,59.8,34.1
    .xp 4-610 >> Farmt, bis ihr etwa 610xp von Stufe 4 entfernt seid (790/1400)
step << Hunter
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Gebt die Quest Ein guter Freund ab
    .target Iverron
    .accept 3519 >> Akzeptiert die Quest Ein Freund in der Not
step << Hunter
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Laubschattental
step << Hunter
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarindrella|r
    .turnin 458 >> Gebt die Quest Die Beschützerin des Waldlandes ab
    .target Tarindrella
    .accept 459 >> Akzeptiert die Quest Die Beschützerin des Waldlandes
step << Hunter
#xprate >1.99
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Konservator Ilthalaine|r
    .turnin 457 >> Gebt die Quest Das Gleichgewicht der Natur ab
    .target Conservator Ilthalaine
	.accept 3117 >> Akzeptiert die Quest Geätztes Siegelzeichen
step << Druid
    .goto Teldrassil,59.602,40.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dellylah|r
    .vendor >> |cRXP_WARN_verkauft Schrott|r
    >>|cRXP_BUY_kaufe 15|r |T132794:0|t[Erfrischendes Quellwasser]
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Dellylah
step
#xprate <1.99 << Hunter/Warrior
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Konservator Ilthalaine|r
    .turnin 456,1 >> Gebt die Quest Das Gleichgewicht der Natur ab << Hunter
    .turnin 456 >> Gebt die Quest Das Gleichgewicht der Natur ab << !Hunter
    .target Conservator Ilthalaine
    .accept 457 >> Akzeptiert die Quest Das Gleichgewicht der Natur
	.accept 3116 >> Akzeptiert die Quest Einfaches Siegelzeichen << Warrior
	.accept 3117 >> Akzeptiert die Quest Geätztes Siegelzeichen << Hunter
--	.accept 3118 >> Accept Encrypted Sigil << Rogue
	.accept 3119 >> Akzeptiert die Quest Geheiligtes Siegelzeichen << Priest
	.accept 3120 >> Akzeptiert die Quest Tiefgrünes Siegelzeichen << Druid
step << Warrior
    #season 0
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_verkauft Schrott|r
    .target Keina
step << Warrior
    #season 0
	.goto Teldrassil,59.637,38.442
    .target Alyissia
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alyissia|r
	.turnin 3116 >> Gebt die Quest Einfaches Siegelzeichen ab
    .trainer >> Trainiere deine Klassenfähigkeiten
step << !Hunter
    #season 0 << Druid
    .goto Teldrassil,59.8,34.1
    >>Tötet |cRXP_ENEMY_Räudiger Nachtsäbler|r und |cRXP_ENEMY_Disteleber|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step << !Hunter
    #season 0 << Warrior
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Gebt die Quest Ein guter Freund ab
    .target Iverron
    .accept 3519 >> Akzeptiert die Quest Ein Freund in der Not
step << !Hunter !Warrior
    #season 2
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Laubschattental
step << !Hunter
    #season 0
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Laubschattental
step << !Hunter
    #season 0 << Druid/Warrior
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarindrella|r
    .turnin 458 >> Gebt die Quest Die Beschützerin des Waldlandes ab
    .target Tarindrella
    .accept 459 >> Akzeptiert die Quest Die Beschützerin des Waldlandes
step << !Hunter
    #season 0 << Druid
    .goto Teldrassil,58.695,44.266
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Konservator Ilthalaine|r
    .turnin 457 >> Gebt die Quest Das Gleichgewicht der Natur ab
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dirania Silvershine|r
    .turnin 3519 >> Gebt die Quest Ein Freund in der Not ab
    .target Dirania Silvershine
    .accept 3521 >> Akzeptiert die Quest Iverrons Gegengift
step << Hunter
    #season 0
    #completewith htraining
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keina|r
    >>|cRXP_WARN_stellt sicher, dass ihr 1 Silber übrig habt, nachdem ihr den Händler verlasst, um|r |T132204:0|t[|cRXP_FRIENDLY_Schlangenbiss|r] bezahlen zu können
	.vendor >> |cRXP_BUY_Kauft 2 Stapel von|r |T132382:0|t[Rauer Pfeil]
    .target Keina
step << Druid
    #season 0,1
    .goto Teldrassil,59.602,40.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dellylah|r
    .vendor >> |cRXP_WARN_verkauft Schrott|r
    >>|cRXP_BUY_Buy 20|r |T132794:0|t[Erfrischendes Quellwasser]
    .collect 159,20 --Collect Refreshing Spring Water (x20)
    .target Dellylah
step
    .goto Teldrassil,57.807,41.653
    .target Gilshalan Windwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .accept 916 >> Akzeptiert die Quest Waldwebergift
step << Hunter
    .xp 4-40
step << Hunter
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.659,40.449
    >>Klettert auf den Aldrassil-Baum
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ayanna Everstride|r
    .turnin 3117 >> Gebt die Quest Geätztes Siegelzeichen ab
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
step << Hunter
#optional
#season 2
#completewith next
    >>Tötet |cRXP_ENEMY_Waldweberspinne|r. Plündert sie für |cRXP_LOOT_Sekret|r und |cRXP_LOOT_Giftbeutel|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob Webwood Spider
step
    #season 0 << Warrior
    #label IchorVenomSac
    .goto Teldrassil,56.8,31.7
    >>Tötet |cRXP_ENEMY_Waldweberspinne|r. Plündert sie für |cRXP_LOOT_Sekret|r und |cRXP_LOOT_Giftbeutel|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob Webwood Spider
step << skip --logout skip Warrior
	#hardcore
	#completewith next
    #season 2
	+Nutzt den Auslog-Skip auf dem Vorsprung hinter den Eiern. Bewegt den Charakter von Euch, bis es aussieht, als würden sie schweben, dann loggt euch aus und wieder ein.
	>>Falls ihr hinunterfällt, rennt einfach Normal aus der Höhle zur Questabgabe
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >> KLICKT HIER als Referenz
step << skip --logout skip Hunter
	#hardcore
    #season 2
	#completewith next
	+Nutzt den Auslog-Skip auf dem Vorsprung hinter den Eiern. Bewegt den Charakter von Euch, bis es aussieht, als würden sie schweben, dann loggt euch aus und wieder ein.
	>>Falls ihr hinunterfällt, rennt einfach Normal aus der Höhle zur Questabgabe
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >> KLICKT HIER als Referenz
step
    .goto Teldrassil,55.0,43.7
    >>Tötet |cRXP_ENEMY_Grells|r und |cRXP_ENEMY_Grellkins|r. Plündert sie für |cRXP_LOOT_Hyazinth-Pilz|r und |cRXP_LOOT_Teufelsmoos|r
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .complete 459,1 --Collect Fel Moss (x8)
    .mob Grell
    .mob Grellkin
step << Warrior
    #season 2
    .goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gilshalan Windwalker|r
    >>TIPP: |cRXP_WARN_Nehmt die Tunika als Belohnung dieser Quest und rüstet sie aus. Ihr werdet sie später verwenden, um eine Rune darauf einzugravieren |r << sod Hunter/sod Rogue/sod Druid/sod Warrior
    >>TIPP: |cRXP_WARN_Nehmt die Roben als Belohnung dieser Quest und rüstet sie aus. Ihr werdet sie später verwenden, um eine Rune darauf einzugravieren|r << sod Priest
    .turnin 917 >> Gebt die Quest Waldweberei ab
    .target Gilshalan Windwalker
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
    .target Dirania Silvershine
    .accept 3522 >> Akzeptiert die Quest Iverrons Gegengift
step << !Priest !Warrior
    #season 0 << Hunter
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_verkauft Schrott|r << !Hunter
	.vendor >> |cRXP_BUY_Kauft 3 oder 4 Stapel|r |T132382:0|t[Rauer Pfeil] << Hunter
    .target Keina
step << Warrior
    #season 0
    .goto Teldrassil,59.637,38.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alyissia|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Alyissia
step << Priest
    #completewith next
    .goto Teldrassil,59.456,41.050
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Janna Brightmoon|r oben
	.vendor >> |cRXP_WARN_verkauft Schrott|r
    .target Janna Brightmoon
step << Priest
    #season 0,1,2
	.goto Teldrassil,59.174,40.442
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shanda|r oben
	.turnin 3119 >> Gebt die Quest Geheiligtes Siegelzeichen ab << !sod
    .turnin 77574 >> Gebt die Quest Meditation von Elune ab << sod
	.trainer >> Trainiere deine Klassenfähigkeiten
step
    #season 0 << Warrior
    .goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .turnin 916 >> Gebt die Quest Waldwebergift ab
    .target Gilshalan Windwalker
    .accept 917 >> Akzeptiert die Quest Waldweberei
step << Hunter/Rogue
    #completewith next
    +|cRXP_WARN_Legt den|r |T135641:0|t[Distelholzdolch] an
    .use 5392
    .itemcount 5392,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.05
step << Druid
    #season 0,1
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>Klettert auf den Aldrassil-Baum
    .target Mardant Strongoak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mardant Strongoak|r
	.turnin 3120 >> Gebt die Quest Tiefgrünes Siegelzeichen ab
	.train 8921 >>Erlernt |T136096:0|t[Mondfeuer]
step
    #season 0 << Warrior
    .goto Teldrassil,54.593,32.992
    .target Iverron
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iverron|r
    >>TIPP: |cRXP_WARN_Nehmt die Hosen als Belohnung von ihm auf. Ihr werdet sie später verwenden, um eine Rune darauf einzugravieren|r << Priest sod
    .turnin 3522 >> Gebt die Quest Iverrons Gegengift ab
step
    #season 0 << Warrior
    #completewith next
    .goto Teldrassil,56.73,31.17,25 >> Betretet die Schattenweberhöhle
step
    .goto Teldrassil,57.0,26.4
    #season 0 << Warrior
    >>Sammelt das |cRXP_LOOT_Waldweberei|r auf dem Boden am hinteren Ende der Höhle
    .complete 917,1 --Collect Webwood Egg (x1)
step
	#softcore
	#completewith next
    #season 0 << Warrior
    .deathskip >> Sterbt und respawnt beim Geistheiler
    .target Geistheiler
step << skip --logout skip
	#hardcore
	#completewith next
    #season 0 << Warrior
	+Nutzt den Auslog-Skip auf dem Vorsprung hinter den Eiern. Bewegt den Charakter von Euch, bis es aussieht, als würden sie schweben, dann loggt euch aus und wieder ein.
	>>Falls ihr hinunterfällt, rennt einfach Normal aus der Höhle zur Questabgabe
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >> KLICKT HIER als Referenz
step
#xprate <1.99
	.goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .turnin 917 >> Gebt die Quest Waldweberei ab
    .target Gilshalan Windwalker
    .accept 920 >> Akzeptiert die Quest Tenarons Einladung
step
#xprate <1.99
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,59.062,39.448
    >>Klettert auf den Aldrassil-Baum
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tenaron Stormgrip|r
    .turnin 920 >> Gebt die Quest Tenarons Einladung ab
    .target Tenaron Stormgrip
    .accept 921 >> Akzeptiert die Quest Krone der Erde
step
#xprate <1.99
    #sticky
    #label vial1
    .goto Teldrassil,59.9,33.0
	.use 5185 >> |cRXP_WARN_Benutzt die|r |T134776:0|t[Kristallphiole] |cRXP_WARN_am Mondbrunnen|r
    .complete 921,1 --Collect Filled Crystal Phial (x1)
step << Hunter
#xprate <1.99
    .goto Teldrassil,59.8,34.1
    >>Tötet |cRXP_ENEMY_Räudiger Nachtsäbler|r und |cRXP_ENEMY_Disteleber|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step
#xprate <1.99
    #requires vial1
    #completewith next
    .deathskip >> Sterbt und respawnt beim Geistheiler
    .target Geistheiler
step << Hunter
#xprate <1.99
    #requires vial1
    .goto Teldrassil,58.695,44.266
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Konservator Ilthalaine|r
    .turnin 457,2 >> Gebt die Quest Das Gleichgewicht der Natur ab
step << Priest
    #requires vial1
    .goto Teldrassil,59.2,40.5
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shanda|r
    .accept 5622 >> Akzeptiert die Quest Elune geneigt
step
#xprate <1.99
    #requires vial1
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,59.062,39.448
    >>Klettert auf den Aldrassil-Baum
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tenaron Stormgrip|r
    .turnin 921 >> Gebt die Quest Die Krone der Erde ab
    .target Tenaron Stormgrip
    .accept 928 >> Akzeptiert die Quest Krone der Erde
step
    .goto Teldrassil,61.159,47.644
    .target Porthannius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Porthannius|r
    .accept 2159 >> Akzeptiert die Quest Lieferung für Dolanaar
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
<< Alliance
#name 6-11 Teldrassil
#displayname 7-13 Teldrassil << SoD
#version 1
#group RestedXP Allianz 1-20
#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 14-16 Dunkelküste

step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zenn Foulhoof|r
    .accept 488 >> Akzeptiert die Quest Zenns Aufträge
step
    #label HCHunterStart --hidden step for #include
step
    #sticky
    #completewith DenlansEarth
    >>Tötet |cRXP_ENEMY_Nachtsäbler|r. Plündert sie für ihre |cRXP_LOOT_Fangzähne|r
    >>Tötet |cRXP_ENEMY_Strigideule|r. Plündert sie für |cRXP_LOOT_Federn|r
    >>Tötet |cRXP_ENEMY_Waldweberlauerer|r. Plündert sie für |cRXP_LOOT_Seide|r
    >>|cRXP_WARN_Seid vorsichtig, da die|r |cRXP_ENEMY_Nachtsäbler|r |cRXP_WARN_und|r |cRXP_ENEMY_Strigideulen|r |cRXP_WARN_sich sehr schnell bewegen!|r |cRXP_ENEMY_Strigideulen|r |cRXP_WARN_werden auch andere|r |cRXP_ENEMY_Strigideulen|r pullen |cRXP_WARN_falls ihr an ihnen vorbeilauft, während ihr mit einer|r im Kampf seid
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
step
    #sticky
	#completewith DenlansEarth
    >>Tötet |cRXP_ENEMY_Waldweberlauerer|r und |cRXP_ENEMY_Waldwebergiftzähne|r. Plündert sie für |cRXP_LOOT_Kleines Spinnenbein|r
    >>|cRXP_WARN_Ihr braucht diese für eine spätere Quest|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #label DenlansEarth
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
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dazalar|r
	.train 3044 >> Erlernen Arkaner Schuss << era
    .train 5116 >> Erlernt Erschütternder Schuss << sod
    .target Dazalar
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
step
    #sticky
    #completewith DenlanStart
    >>Tötet |cRXP_ENEMY_Nachtsäbler|r. Plündert sie für ihre |cRXP_LOOT_Fangzähne|r
    >>Tötet |cRXP_ENEMY_Strigideule|r. Plündert sie für |cRXP_LOOT_Federn|r
    >>Tötet |cRXP_ENEMY_Waldweberlauerer|r. Plündert sie für |cRXP_LOOT_Seide|r
    >>|cRXP_WARN_Seid vorsichtig, da die|r |cRXP_ENEMY_Nachtsäbler|r |cRXP_WARN_und|r |cRXP_ENEMY_Strigideulen|r |cRXP_WARN_sich sehr schnell bewegen!|r |cRXP_ENEMY_Strigideulen|r |cRXP_WARN_werden auch andere|r |cRXP_ENEMY_Strigideulen|r pullen |cRXP_WARN_falls ihr an ihnen vorbeilauft, während ihr mit einer|r im Kampf seid
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
step
    #sticky
	#completewith DenlanStart
    >>Tötet |cRXP_ENEMY_Waldweberlauerer|r und |cRXP_ENEMY_Waldwebergiftzähne|r. Plündert sie für |cRXP_LOOT_Kleines Spinnenbein|r
    >>|cRXP_WARN_Ihr braucht diese für eine spätere Quest|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step << Druid
    #ah
    #season 0
    .goto Teldrassil,57.721,60.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malorne Bladeleaf|r
    >>|T136065:0|t[Kräuterkunde] |cRXP_WARN_ist erforderlich, um 5|r |T134187:0|t[Erdwurzel] |cRXP_WARN_für eine wichtige Klassenquest zu sammeln. Ihr könnt es danach wieder verlernen.|r
    >>|cRXP_WARN_Falls ihr lieber 5|r |T134187:0|t[Erdwurzel] |cRXP_WARN_später aus Auktionshaus kauft, überspringt diesen Schritt|r
    .train 2366 >> Erlernt |T136065:0|t[Kräuterkunde]
    .target Malorne Bladeleaf
    .itemcount 2449,<5 --Earthroot (<5)
step << Druid
    #ssf
    #season 0
    .goto Teldrassil,57.721,60.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Malorne Bladeleaf|r
    >>|T136065:0|t[Kräuterkunde] |cRXP_WARN_ist erforderlich, um 5|r |T134187:0|t[Erdwurzel] |cRXP_WARN_für eine wichtige Klassenquest zu sammeln. Ihr könnt es danach wieder verlernen.|r
    .train 2366 >> Erlernt |T136065:0|t[Kräuterkunde]
    .target Malorne Bladeleaf
    .itemcount 2449,<5 --Earthroot (<5)
step << Druid
    #ssf
    #optional
    #completewith end
    #label GatheringQ
    #season 0
    .skill herbalism,15 >>|cRXP_WARN_Erhöht eure|r |T136065:0|t[Kräuterkunde] |cRXP_WARN_auf 15, um 5|r |T134187:0|t[Erdwurzel] |cRXP_WARN_für eine wichtige Klassenquest später zu sammeln. Ihr könnt es danach wieder verlernen|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #optional
    #completewith end
    #requires GatheringQ
    #season 0
    >>Sammelt 5 |T134187:0|t[Erdwurzel] über |cRXP_WARN_über |T136065:0|t[Kräuterkunde] und selten in |cRXP_PICK_Ramponierte Truhe|r für eine zukünftige Klassenquest|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1
step << Priest
    .goto Teldrassil,57.242,63.511
    >>Ziel |cRXP_FRIENDLY_Schildwache Shaya|r
    >>|cRXP_WARN_Wirkt|r |T135929:0|t[Geringes Heilen (Rang 2)] |cRXP_WARN_und|r |T135987:0|t[Machtwort: Seelenstärke] |cRXP_WARN_auf|r |cRXP_FRIENDLY_Schildwache Shaya|r
    .complete 5621,1 --Heal and fortify Sentinel Shaya
    .target Sentinel Shaya
step
    #label DenlanStart
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Denalan|r
    .turnin 997 >> Gebt die Quest Denalans Erde ab
    .target Denalan
    .accept 918 >> Akzeptiert die Quest Bäumlingssamenkörner
    .accept 919 >> Akzeptiert die Quest Bäumlingssprossen
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
    .complete 919,1 --Collect Timberling Sprout (x12)
    .mob Timberling
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Denalan|r
    .turnin 918 >> Gebt die Quest Bäumlingssamenkörner ab
    .target Denalan
    .accept 922 >> Akzeptiert die Quest Rellian Greenspyre
    .turnin 919 >> Gebt die Quest Bäumlingssprossen ab
step
    #sticky
    #completewith Starbreeze
    >>Tötet |cRXP_ENEMY_Nachtsäbler|r. Plündert sie für ihre |cRXP_LOOT_Fangzähne|r
    >>Tötet |cRXP_ENEMY_Strigideule|r. Plündert sie für |cRXP_LOOT_Federn|r
    >>Tötet |cRXP_ENEMY_Waldweberlauerer|r. Plündert sie für |cRXP_LOOT_Seide|r
    >>|cRXP_WARN_Seid vorsichtig, da die|r |cRXP_ENEMY_Nachtsäbler|r |cRXP_WARN_und|r |cRXP_ENEMY_Strigideulen|r |cRXP_WARN_sich sehr schnell bewegen!|r |cRXP_ENEMY_Strigideulen|r |cRXP_WARN_werden auch andere|r |cRXP_ENEMY_Strigideulen|r pullen |cRXP_WARN_falls ihr an ihnen vorbeilauft, während ihr mit einer|r im Kampf seid
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurkerr
step
    #sticky
	#completewith Starbreeze
    >>Tötet |cRXP_ENEMY_Waldweberlauerer|r und |cRXP_ENEMY_Waldwebergiftzähne|r. Plündert sie für |cRXP_LOOT_Kleines Spinnenbein|r
    >>|cRXP_WARN_Ihr braucht diese für eine spätere Quest|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #label Starbreeze
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
step
    #sticky
	#completewith SeekRedemption
    >>Tötet |cRXP_ENEMY_Waldweberlauerer|r und |cRXP_ENEMY_Waldwebergiftzähne|r. Plündert sie für |cRXP_LOOT_Kleines Spinnenbein|r
    >>|cRXP_WARN_Ihr braucht diese für eine spätere Quest|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    >>Tötet |cRXP_ENEMY_Nachtsäbler|r. Plündert sie für ihre |cRXP_LOOT_Fangzähne|r
    >>Tötet |cRXP_ENEMY_Strigideule|r. Plündert sie für |cRXP_LOOT_Federn|r
    >>Tötet |cRXP_ENEMY_Waldweberlauerer|r. Plündert sie für |cRXP_LOOT_Seide|r
    >>|cRXP_WARN_Bewahrt|r |T132832:0|t[Kleine Eier] |cRXP_WARN_und|r |T134321:0|t[Kleine Spinnenbeine] |cRXP_WARN_auf, um sie später zum Leveln für|r |T133971:0|t[Kochkunst] |cRXP_WARN_zu nutzen.|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,61.95,61.07,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,63.39,64.22,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
    .goto Teldrassil,61.06,54.66,50,0
    .goto Teldrassil,60.17,59.62,50,0
    .goto Teldrassil,58.22,56.32
step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 488 >> Gebt die Quest Zenns Aufträge ab
step
    #label HCHunterEnd --hidden step for #include
step
    #xprate < 1.5
    .goto Teldrassil,60.7,54.4
	.xp 7+3520 >> Farmt bis Stufe 7 +3520xp
step
    #xprate >1.49
    .xp 7+2350 >> Farmt bis Stufe 7 +2350xp
step
    #label SeekRedemption
	.goto Teldrassil,56.078,57.723
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Syral Bladeleaf|r
    .accept 489 >> Akzeptiert die Quest Sucht Befreiung!
    .target Syral Bladeleaf
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
    .goto Teldrassil,55.574,56.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tallonkai Swiftroot|r oben auf dem Baum
    .turnin 2438 >> Gebt die Quest Der smaragdgrüne Traumfänger ab
    .target Tallonkai Swiftroot
    .accept 2459 >> Akzeptiert die Quest Ferocitas der Traumfresser
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jeena Featherbow|r
    >>|cRXP_BUY_kauft und equipt einen|r |T135499:0|t[Hornholz-Doppelbogen] |cRXP_BUY_wenn ihr uch es leisten könnt (2s 85c), falls nicht überspringt den Schritt|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    #season 0
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jeena Featherbow|r
	.vendor >>|cRXP_BUY_Kauft bis zu 800|r |T132382:0|t[Raue Pfeile]
    .target Jeena Featherbow
step << Hunter
    #completewith next
    #season 0
    +|cRXP_WARN_Legt den|r |T135499:0|t[Hornholz-Doppelbogen] an
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step << Hunter
    #season 0
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dazalar|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Dazalar
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
    #sticky
	#completewith jewel
    >>Tötet |cRXP_ENEMY_Waldweberlauerer|r und |cRXP_ENEMY_Waldwebergiftzähne|r. Plündert sie für |cRXP_LOOT_Kleines Spinnenbein|r
    >>|cRXP_WARN_Ihr braucht diese für eine spätere Quest|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
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
step
	#completewith jewel
    >>Plündert die |cRXP_LOOT_Teufelszapfen|r vom Boden
    >>|cRXP_WARN_Sie befinden sich normalerweise neben Baumstämmen|r
    .complete 489,1 --Collect Fel Cone (x3)
    .isOnQuest 489
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Mystiker der Knarzklauen|r
    >>|cRXP_WARN_Falls es nicht viele |cRXP_ENEMY_Mystiker der Knarzklauen|r gibt, müsst ihr möglicherweise |cRXP_ENEMY_Krieger der Knarzklauen|r töten, um sie spawnen zu lassen|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
	.goto Teldrassil,69.37,53.41
	>>Tötet |cRXP_ENEMY_Ferocitas der Traumfresser|r.Sammelt |T133288:0|t[|cRXP_LOOT_Halskette der Knarzklauen|r] von ihm.|cRXP_WARN_Passt auf, da euch|r |T132152:0|t[Hauen] |cRXP_WARN_bis zu dreimal gleichzeitig treffen kann|r
    .use 8049 >>|cRXP_WARN_Benutzt die |T133288:0|t[|cRXP_LOOT_Halskette der Knarzklauen|r] zum Plündern von|r |cRXP_LOOT_Tallonkais Juwel|r
    .complete 2459,2 --Collect Tallonkai's Jewel (x1)
    .mob Ferocitas the Dream Eater
step
    #label jewel
    .goto Teldrassil,68.38,52.06,30,0
    .goto Teldrassil,69.37,53.41
    >>Tötet |cRXP_ENEMY_Mystiker der Knarzklauen|r
    >>|cRXP_WARN_Falls es nicht viele |cRXP_ENEMY_Mystiker der Knarzklauen|r gibt, müsst ihr möglicherweise |cRXP_ENEMY_Krieger der Knarzklauen|r töten, um sie spawnen zu lassen|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
    #softcore
    #completewith next
    .deathskip >> Sterbt und respawnt beim Geistheiler
    .target Geistheiler
    .isQuestTurnedIn 489
step
    #softcore
    .goto Teldrassil,56.2,60.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brannol Eaglemoon|r
    .vendor >> |cRXP_BUY_Verkaufe und repariere falls notwendig|r
    .target Brannol Eaglemoon
    .isQuestTurnedIn 489
step
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
    .goto Teldrassil,60.4,56.4
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 489 >> Gebt die Quest Sucht Befreiung! ab
    .isOnQuest 489
step
    #sticky
	#completewith next
    >>Tötet |cRXP_ENEMY_Waldweberlauerer|r und |cRXP_ENEMY_Waldwebergiftzähne|r. Plündert sie für |cRXP_LOOT_Kleines Spinnenbein|r
    >>|cRXP_WARN_Ihr braucht diese für eine spätere Quest|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >> Reist zum Teufelsfels
step
    .goto Teldrassil,51.2,50.6
    >>Tötet |cRXP_ENEMY_Lord Melenas|r. Plündert sie für ihren |cRXP_LOOT_Kopf|r
    >>|cRXP_ENEMY_Lord Melenas|r kann sich an vielen verschiedenen Orten im Teufelsfels befinden
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step
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
    #sticky
	#completewith spiderLegs
    >>Tötet |cRXP_ENEMY_Waldweberlauerer|r und |cRXP_ENEMY_Waldwebergiftzähne|r. Plündert sie für |cRXP_LOOT_Kleines Spinnenbein|r
    >>|cRXP_WARN_Ihr braucht diese für eine spätere Quest|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
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
    #label SpiderLegsEnd
    .goto Teldrassil,57.121,61.296
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zarrin|r
    .train 2550 >>Erlerne Kochkunst
    .accept 4161 >> Akzeptiert Rezept der Kaldorei
    .turnin 4161 >> Gebt Rezept der Kaldorei ab
    .target Zarrin
step << Warrior/Rogue
    .goto Teldrassil,55.29,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Byancie|r
    .train 3273 >> Erlerne |T135966:0|t[Erste Hilfe]
    .target Byancie
step
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tallonkai Swiftroot|r oben auf dem Baum
    .turnin 932 >> Gebt die Quest Krankhafter Hass ab
    .turnin 2459 >> Gebt die Quest Ferocitas der Traumfresser ab
step
#xprate >1.99
    .xp 10
   >>|cRXP_WARN_Falls ihr nicht mal nah dran seid, macht die Lord Melenas Quest|r
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
    .train 921 >> Erlernt auch|T133644:0|t[Taschendiebstahl], das wird für eure Stufe-10-Schurken-Quest benötigt
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
    >>|cRXP_FRIENDLY_Mondpriesterin Amara|r |cRXP_WARN_patrouilliert die Straße westlich von Dolanaar. Sie kann auch gerade einen Furlbog-Hinterhalt bekämpfen, in diesem Fall müsst ihr warten, bis sie fertig ist|r
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
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
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mondpriesterin Amara|r
    >>|cRXP_FRIENDLY_Mondpriesterin Amara|r |cRXP_WARN_patrouilliert die Straße westlich von Dolanaar. Sie kann auch gerade einen Furlbog-Hinterhalt bekämpfen, in diesem Fall müsst ihr warten, bis sie fertig ist|r
    .accept 487 >> Akzeptiert die Quest Die Straße nach Darnassus
    .target Moon Priestess Amara
step
    #season 0
    .goto Teldrassil,46.6,53.0
    >>Tötet |cRXP_ENEMY_Wegelagerer der Knarzklauen|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob Gnarlpine Ambusher
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
    >>|cRXP_WARN_Dies startet eine Escort Quest|r
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
    >>|cRXP_WARN_Denkt daran, dass dies eine zeitgesteuerte Quest ist. Ihr müsst sie innerhalb von 10 Minuten abgeben|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nebel|r
    >>|cRXP_WARN_Dies startet eine Escort Quest|r
    .accept 938 >> Akzeptiert die Quest Nebel
    .target Mist
step << !Hunter
	#xprate <1.5
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Arynia Cloudsbreak|r
    >>|cRXP_WARN_Beachtet: Nebel ist eine zeitgebundene Quest. Ihr müsst sie innerhalb von 10 Minuten abgeben|r
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
	#xprate < 1.5
    #completewith next
    >>Tötet |cRXP_ENEMY_Harpyie der Blutfedern|r auf dem Weg nach Darnassus. Plündert sie für ihre |cRXP_LOOT_Gürtel|r. |cRXP_WARN_Ihr müsst dieses Ziel jetzt nicht abschließen|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step << !Rogue
    #hardcore
    #requires xp10
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> Reist nach Darnassus
step << Warrior
#xprate >1.99
    .goto Darnassus,57.305,34.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >> Gebt die Quest Elanaria ab
    .target Elanaria
    .accept 1683 >> Akzeptiert die Quest Vorlus Elendshuf
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
    .turnin -5923 >> Gebt die Quest Dem Ruf folgen ab
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
step << Druid
	#completewith next
	.cast 18960 >> Caste Teleportieren: Mondlichtung
    >>|cRXP_WARN_Es wird sich in eurem Zauberbuch befinden|r
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dendrite Starblaze|r oben
    .turnin 5921 >> Gebt die Quest Mondlichtung ab
    .target Dendrite Starblaze
    .accept 5929 >> Akzeptiert die Quest Großer Bärengeist
step << Druid
    .goto Moonglade,45.12,26.78,15,0
    .goto Moonglade,39.17,27.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Großer Bärengeist|r
    .complete 5929,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.
    .skipgossip
    .target Great Bear Spirit
step << Druid
	#completewith next
	.cast 18960 >> Caste Teleportieren: Mondlichtung
    >>|cRXP_WARN_Dies wird euch schneller zurück bringen|r
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dendrite Starblaze|r oben
    .turnin 5929 >> Gebt die Quest Großer Bärengeist ab
    .target Dendrite Starblaze
    .accept 5931 >> Akzeptiert die Quest Zurück nach Darnassus
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
    #sticky
	.goto Teldrassil,41.2,44.4,0
	.goto Teldrassil,44.2,39.8,0
	.goto Teldrassil,45.6,31.4,0
	.goto Teldrassil,37.6,28.8,0
    >>|cRXP_WARN_Wirkt|r |T132164:0|t[Wildtier zähmen] |cRXP_WARN_auf einen |cRXP_ENEMY_Strigidjäger|r um ihn zu Zähmen|r -- .tame 1997
    .train 2981 >> |cRXP_WARN_Greift mobs mit ihm an um|r |T132140:0|t[Klaue (Rang 2)] zu lernen
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Klick hier um mehr infos bezüglich Pet Training zu erhalten|r
	.unitscan Strigid Hunter
step
    #sticky
    #completewith Spinnerets
    .goto Teldrassil,41.7,41.8,0
    .goto Teldrassil,43.80,26.03,0
	>>Tötet |cRXP_ENEMY_Bäumlingtrampler|r, |cRXP_ENEMY_Morastbäumling|r und |cRXP_ENEMY_Alter Bäumling|r. Plündert sie für ihre|cRXP_LOOT_Tumore|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step
    #label Spinnerets
    #loop
    .goto Teldrassil,41.7,41.8,0
    .goto Teldrassil,48.0,25.2,0
    .goto Teldrassil,42.0,25.6,0
    .goto Teldrassil,39.6,25.6,0
    .line Teldrassil,41.70,41.82,41.97,39.03,42.20,35.71,43.33,33.27,43.79,30.65,44.18,27.80,46.09,26.55,47.72,25.57,46.25,25.62,44.42,26.09,42.83,26.15,42.0,25.6,39.6,25.6
    >>Tötet |cRXP_ENEMY_Lady Sathrah|r. Plündert sie für ihre |cRXP_LOOT_Spinndrüsen|r
    >>|cRXP_ENEMY_Lady Sathrah|r |cRXP_WARN_kann an 3 verschiedenen Orten erscheinen, prüft die Karte für einen empfohlenen Weg|r
    >>|cRXP_WARN_Geh am Fluss entlang nach Norden und überprüfe zuerst den östlichsten Spawn-Punkt. Arbeitet an der|r |T134339:0|t[Tumoren] |cRXP_WARN_Quest im Vorbeigehen|r
    >>|cRXP_WARN_Falls Sie sich nicht östlich des Flusses befinden, vervollständige die|r |T134339:0|t[Tumore] |cRXP_WARN_Quest, bevor du dich nach Westen begibst|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob Lady Sathrah
step
    .goto Teldrassil,41.7,41.8
	>>Tötet |cRXP_ENEMY_Bäumlingtrampler|r, |cRXP_ENEMY_Morastbäumling|r und |cRXP_ENEMY_Alter Bäumling|r. Plündert sie für ihre|cRXP_LOOT_Tumore|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step
    .goto Teldrassil,38.3,34.3
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Arynia Cloudsbreak|r
    .accept 937 >> Akzeptiert die Quest Die verzauberte Lichtung
step << Rogue
    .goto Teldrassil,38.0,25.2
    >>|cRXP_WARN_Wirkt|r |T133644:0|t[Taschendiebstahl] auf |cRXP_ENEMY_Sethir der Uralte|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    >>|cRXP_ENEMY_Sethir der Uralte|r |cRXP_WARN_wandert den großen Ast entlang|r
    >>|cRXP_WARN_Vemeidet einen Kampf mit |cRXP_ENEMY_Sethir der Uralte|r. Lasst ihn an euch vorbeigehen, danach|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_und|r |T133644:0|t[Taschendiebstahl] |cRXP_WARN_wenn ihr hinter ihm seid|r
    .complete 2242,1
    .mob Sethir the Ancient
step
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
step
    .goto Teldrassil,31.54,31.62
    .target Mist
    #label MistStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nebel|r
    >>|cRXP_WARN_Dies startet eine Escort Quest|r
    >>|cRXP_WARN_Überspringt die Quest, wenn der NPC nicht da ist|r
    .accept 938 >> Akzeptiert die Quest Nebel
step
    .goto Teldrassil,38.3,34.4
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Arynia Cloudsbreak|r
    >>|cRXP_WARN_Denkt daran, dass dies eine zeitgesteuerte Quest ist. Ihr müsst sie innerhalb von 10 Minuten abgeben|r
    .turnin 938 >> Gebt die Quest Nebel ab
    .isOnQuest 938
step
    #requires harpies2
    #label TeldrassilEnd
    .goto Teldrassil,38.3,34.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Arynia Cloudsbreak|r
    .turnin 937 >> Gebt die Quest Die verzauberte Lichtung ab
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> Akzeptiert die Quest Teldrassil
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
step << Hunter
#xprate <1.99
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jocaste|r
    .turnin 6103 >> Gebt die Quest Die Ausbildung des Tiers ab
step << Hunter
    >>|cRXP_WARN_Geht die Rampe auf der rechten Seite von|r |cRXP_FRIENDLY_Jocaste|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Silvaria|r
    .goto Darnassus,42.2,8.8
    .trainer >>Erlernen Begleiter spells
    .target Silvaria
step
    #season 0
    .goto Darnassus,38.184,21.639
    .target Rellian Greenspyre
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 923 >> Gebt die Quest Tumore ab
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    .target Syurna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Syurna|r
    .turnin 2242 >> Gebt die Quest Das Schicksal ruft ab
step
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priesterin A'moora|r
    .turnin 2518 >> Gebt die Quest Tränen des Mondes ab
    .target Priestess A'moora
    .accept 2520 >> Akzeptiert die Quest Sathrahs Opferung
step
    .goto Darnassus,39.7,85.8
	.use 8155 >>|cRXP_WARN_Benutzt|r |T135652:0|t[Sathrahs Opferung] |cRXP_WARN_am Brunnen|r
    .complete 2520,1 --Offer the sacrifice at the fountain
step
    #label end
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priesterin A'moora|r
    .turnin 2520 >> Gebt die Quest Sathrahs Opferung ab
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit einem |cRXP_FRIENDLY_Auktionator von Darnassus|r
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
step << Hunter/Warrior/Priest/Sod Rogue
    .goto Darnassus,57.56,46.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ilyenia Mondfeuer|r
    .skipgossip 11866,1
    .train 227 >>Erlernt Stäbe << Hunter/Warrior/Priest
    .train 265 >>Erlernt Bogen << Sod Rogue
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
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Kaufe und rüste einen|r |T135489:0|t[Laminierter Doppelbogen] aus
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    #season 0
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariyell Skyshadow|r
	.vendor >>|cRXP_BUY_Kaufe|r |T132382:0|t[Scharfe Pfeile]
    .target Ariyell Skyshadow
step << Hunter
    #completewith next
    +|cRXP_WARN_Legt den|r |T135489:0|t[Laminierter Doppelbogen] an
    .use 2507
    .itemcount 2507,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.76
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Kauft einen|r |T135147:0|t[Knorriger Stab]|cRXP_BUY_. Legt ihn auf Stufe 15 an|r
	.collect 2030,1
    .target Ariyell Skyshadow
    .money <0.5022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariyell Skyshadow|r
    >>|cRXP_BUY_Kauft einen|r |T135154:0|t[Hirtenstab]|cRXP_BUY_. Legt ihn ab Stufe 11 an|r << era
    >>|cRXP_BUY_Kauft und legt einen|r |T135154:0|t[Hirtenstab] an |cRXP_BUY_falls ihr euch keinen |r |T135147:0|t[Knorriger Stab] leisten könnt << sod
	.collect 854,1
    .target Ariyell Skyshadow
    .money <0.3022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariyell Skyshadow|r
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
    .zone Teldrassil >> Reise durch das Lila Portal nach Rut'Theran
    .zoneskip Darkshore
    .subzoneskip 702
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
