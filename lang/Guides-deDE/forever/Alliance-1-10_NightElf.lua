if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 1-6 Laubschattental
#displayname 1-7 Laubschattental << sod
#version 1
#group RestedXP Forever Dungeonführer (A)
#subgroup Speedrun Dungeonführer 1-20
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 6-11 Teldrassil
step << !NightElf
    #sticky
    #completewith next
    +Ihr habt einen Leitfaden für Nachtelfen ausgewählt. Ihr solltet die selbe Anfangszone wählen, in der ihr startet
step
    .goto 1438/1,826.03,10328.97
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Konservator Ilthalaine|r
    .accept 456 >> Akzeptiert die Quest Das Gleichgewicht der Natur
step << !Druid
    #sticky
    #label balance1
    #completewith GoodProtector
    >>Tötet |cRXP_ENEMY_Junger Nachtsäbler|r und |cRXP_ENEMY_Junge Disteleber|r
    .goto 1438/1,657.75,10385.51,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob +Young Nightsaber
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob +Young Thistle Boar
step << !Druid
    >>Plündert die Mobs, die ihr tötet, stellt sicher, dass ihr mindestens 10 Kupfer an Vendor-Schrott habt, ihr werdet es benötigen, um |T132333:0|t[Schlachtruf] zu trainieren<< Warrior
    .xp 2 >> Farmt bis Stufe 2
step << Druid
    >>Tötet |cRXP_ENEMY_Junger Nachtsäbler|r und |cRXP_ENEMY_Junge Disteleber|r
    .goto 1438/1,669.500,10387.300
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob +Young Nightsaber
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob +Young Thistle Boar
step << Druid
    #completewith next
    +|cRXP_WARN_Stellt sicher, dass ihr mindestens 96 Kupfer an Handelskram habt|r, ihr könnt euren Stab mitzählen, der beim Verkäufer 9 Kupfer bringt
step << !sod/Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dirania Silvershine|r und |cRXP_FRIENDLY_Melithar Staghelm|r
    #label GoodProtector
    .accept 4495 >> Akzeptiert die Quest Ein guter Freund
    .target +Dirania Silvershine
    .goto 1438/1,713.81,10407.20
    .accept 458 >> Akzeptiert die Quest Die Beschützerin des Waldlandes
	.goto 1438/1,763.45,10389.79
    .target +Melithar Staghelm
step << Priest
    .goto 1438/1,779.8482,10450.1295
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dellylah|r
    .vendor >> |cRXP_WARN_verkauft Schrott|r
    >>|cRXP_BUY_kaufe 15|r |T132794:0|t[Erfrischendes Quellwasser]
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Dellylah
step << !Druid
    >>Tötet |cRXP_ENEMY_Junger Nachtsäbler|r und |cRXP_ENEMY_Junge Disteleber|r
    .goto 1438/1,657.75,10385.51,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob +Young Nightsaber
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob +Young Thistle Boar
step << Warrior
    .goto 1438/1,794.92,10436.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_verkauft Schrott|r
    .target Keina
step << Warrior
	.goto 1438/1,778.07,10526.62
    .target Alyissia
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alyissia|r
    .trainer >> Erlernt |T132333:0|t[Schlachtruf]
step << Hunter/Warrior
    .goto 1438/1,769.77,10673.98
    .xp 4-610 >> Farmt, bis ihr etwa 610xp von Stufe 4 entfernt seid (790/1400)
step << Hunter/Warrior
    .goto 1438/1,1034.89,10711.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Gebt die Quest Ein guter Freund ab
    .target Iverron
    .accept 3519 >> Akzeptiert die Quest Ein Freund in der Not
step << Hunter/Warrior
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Laubschattental
step << Hunter/Warrior
    .goto 1438/1,866.51,10300.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarindrella|r
    .turnin 458 >> Gebt die Quest Die Beschützerin des Waldlandes ab
    .target Tarindrella
    .accept 459 >> Akzeptiert die Quest Die Beschützerin des Waldlandes
    .accept 97977 >>Akzeptiert die Quest Ruf der Natur
step << Druid
	.goto 1438/1,820.68,10487.33--c:Teldrassil,58.8,39.6
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Khardan|r
    >>|cRXP_WARN_Verkauft eure komplette Ausrüstung und euren Stab|r! Kauft den |T135139:0|t[|cRXP_LOOT_Kurzstab|r] von ihm
	.collect 2132 --Short Staff (1)
	.use 2132 >> Rüstet den Kurzstab aus
	.target Khardan Proudblade
step << !Priest !Rogue
    #requires balance1
	.goto 1438/1,826.03,10328.97
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
step << !Hunter !Druid !Warrior
    #completewith next
    >>Tötet |cRXP_ENEMY_Disteleber|r auf dem Weg zu Iverron
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step << !Hunter !Druid !Warrior
    .goto 1438/1,1034.89,10711.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Gebt die Quest Ein guter Freund ab
    .target Iverron
    .accept 3519 >> Akzeptiert die Quest Ein Freund in der Not
step << !Hunter !Druid !Warrior
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Laubschattental
step << !Hunter !Warrior
    .goto 1438/1,866.51,10300.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarindrella|r
    --@TODO add herbalism note for druid for earthroot
    .turnin 458 >> Gebt die Quest Die Beschützerin des Waldlandes ab
    .target Tarindrella
    .accept 459 >> Akzeptiert die Quest Die Beschützerin des Waldlandes
    .accept 97977 >>Akzeptiert die Quest Ruf der Natur
step << Priest/Rogue
    #requires balance1
	.goto 1438/1,826.03,10328.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Konservator Ilthalaine|r
    .turnin 456 >> Gebt die Quest Das Gleichgewicht der Natur ab
    .target Conservator Ilthalaine
	.accept 3119 >> Akzeptiert die Quest Geheiligtes Siegelzeichen << Priest
step << Druid
    #completewith next
    +|cRXP_WARN_Wirkt|r |T136006:0|t[|cRXP_LOOT_Zorn|r] |cRXP_WARN_bis euer Mana leer ist, dann wechselt in den|r |T135158:0|t[|cRXP_LOOT_Nahkampf|r] |cRXP_WARN_bis ihr wieder voll seid und wiederholt es|r
step << Druid
    .goto 1438/1,964.300,10272.800,10,0
    .goto 1438/1,1030.200,10339.800
    >>Tötet |cRXP_ENEMY_Grell|r und |cRXP_ENEMY_Grellkin|r. Plündert sie für ihr |cRXP_LOOT_Teufelsmoos|r
    >>Plündert |T134460:0|t[|cRXP_LOOT_Totem der Knarzklauen|r] aus den Grell Camps
    .complete 459,1 --Collect Fel Moss (x8)
    .complete 97977,1 --Gnarlpine Totem (x4)
    .mob Grell
    .mob Grellkin
step << Druid
    #completewith next
    >>Tötet |cRXP_ENEMY_Disteleber|r auf dem Weg zu Iverron
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step << Druid
    .goto 1438/1,1034.89,10711.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Gebt die Quest Ein guter Freund ab
    .target Iverron
    .accept 3519 >> Akzeptiert die Quest Ein Freund in der Not
step << Druid
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Laubschattental
step << Druid
    .goto 1438/1,871.60,10300.67
    .target Tarindrella
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarindrella|r
    >>TIPP: |cRXP_WARN_Nehmt die Hosen als Belohnung und behaltet sie. Ihr werdet sie später verwenden, um eine Rune darauf einzugravieren|r << sod Hunter/sod Rogue/sod Warrior/sod Druid
    .turnin 459,1 >> Gebt die Quest Die Beschützerin des Waldlandes ab
    .turnin 97977 >>Gebt die Quest Ruf der Natur ab
step
    .goto 1438/1,713.81,10407.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dirania Silvershine|r
    .turnin 3519 >> Gebt die Quest Ein Freund in der Not ab
    .target Dirania Silvershine
    .accept 3521 >> Akzeptiert die Quest Iverrons Gegengift
step << Warrior
    .xp 4-40
step << Hunter/Druid/Warrior
    #completewith htraining
    .goto 1438/1,794.92,10436.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keina|r
    >>|cRXP_WARN_stellt sicher, dass ihr 1 Silber übrig habt, nachdem ihr den Händler verlasst, um|r |T132204:0|t[|cRXP_FRIENDLY_Schlangenbiss|r] bezahlen zu können << Hunter
	.vendor >> |cRXP_BUY_Kauft 2 Stapel von|r |T132382:0|t[Rauer Pfeil] << Hunter
    .vendor >> |cRXP_BUY_Verkauft euren trash|r
    .target Keina
step << Warrior
	.goto 1438/1,778.07,10526.62
    .target Alyissia
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alyissia|r
	.turnin 3116 >> Gebt die Quest Einfaches Siegelzeichen ab
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Priest
    .goto 1438/1,779.8482,10450.1295
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dellylah|r
    .vendor >> |cRXP_WARN_verkauft Schrott|r
    >>|cRXP_BUY_Kauft bis zu 25|r |T132794:0|t[Erfrischendes Quellwasser]
    .collect 159,25 --Collect Refreshing Spring Water (x25)
    .target Dellylah
step
    #optional
    .xp 3
step
    .goto 1438/1,871.24,10417.65
    .target Gilshalan Windwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .accept 916 >> Akzeptiert die Quest Waldwebergift
step << Hunter/Druid
    .xp 4-40
step << Druid
    .goto 1438/1,871.6,10440.83,25,0
    .goto 1438/1,829.54,10464.01
    >>Klettert auf den Aldrassil-Baum
    .target Mardant Strongoak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mardant Strongoak|r
	.turnin 3120 >> Gebt die Quest Tiefgrünes Siegelzeichen ab
	.train 8921 >>Erlernt |T136096:0|t[Mondfeuer]
step << Hunter
    .goto 1438/1,871.6,10440.83,25,0
    .goto 1438/1,827.86,10458.51
    >>Klettert auf den Aldrassil-Baum
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ayanna Everstride|r
    .turnin 3117 >> Gebt die Quest Geätztes Siegelzeichen ab
    .train 1978 >>Schlangengift erlernen
    .target Ayanna Everstride
step << Druid
    #completewith IchorVenomSac
    +Stoppt das Wirken von |T136006:0|t[Zorn] |cRXP_WARN_vollständig!|cRXP_LOOT_ Benutzt nur |T135158:0|t[|rNahkampf|r] und |T136096:0|t[|cRXP_LOOT_Mondfeuer|r] |cRXP_LOOT_ab sofort!|r
    >>Versucht, Mondfeuer nur direkt nach Nahkampfangriffen zu nutzen, |cRXP_WARN_um euren Schwung-Timer nicht zurückzusetzen!|r
step
    .goto 1438/1,863.96,10534.840,10,0
    .goto 1438/1,873.64,10566.40,10,0
    .goto 1438/1,850.72,10595.920,10,0
    .goto 1438/1,820.17,10547.39,10,0
    .goto 1438/1,863.96,10534.840
    >>Sammelt |cRXP_LOOT_Mondblütenlilien|r vom Boden
    .complete 3521,2 --Collect Moonpetal Lily (x4)
step
    #label IchorVenomSac
    .goto 1438/1,922.52,10755.43
    >>Tötet |cRXP_ENEMY_Waldweberspinne|r. Plündert sie für |cRXP_LOOT_Sekret|r und |cRXP_LOOT_Giftbeutel|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob Webwood Spider
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Disteleber|r auf dem Weg zu den Grells
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step << !Druid
    .goto 1438/1,1014.17,10348.18
    >>Tötet |cRXP_ENEMY_Grells|r und |cRXP_ENEMY_Grellkins|r. Plündert sie für |cRXP_LOOT_Hyazinth-Pilz|r und |cRXP_LOOT_Teufelsmoos|r
    >>Sammelt |T134460:0|t[|cRXP_PICK_Totem der Knarzklauen|r] aus den Grell-Lagern
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .complete 459,1 --Collect Fel Moss (x8)
    .complete 97977,1 --Gnarlpine Totem (x4)
    .mob Grell
    .mob Grellkin
step << Druid
    .goto 1438/1,1014.17,10348.18
    >>Tötet |cRXP_ENEMY_Grell|r und |cRXP_ENEMY_Grellkin|r. Plündert sie für ihre |cRXP_LOOT_Pilze|r
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .mob Grell
    .mob Grellkin
step
    .goto 1438/1,871.60,10300.67
    .target Tarindrella
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tarindrella|r
    >>TIPP: |cRXP_WARN_Nehmt die Hosen als Belohnung und behaltet sie. Ihr werdet sie später verwenden, um eine Rune darauf einzugravieren|r << sod Hunter/sod Rogue/sod Warrior/sod Druid
    .turnin 459 >> Gebt die Quest Die Beschützerin des Waldlandes ab
    .turnin 97977 >>Gebt die Quest Ruf der Natur ab
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Disteleber|r auf dem Weg zu Iverron
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step
    .goto 1438/1,713.81,10407.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dirania Silvershine|r
    .turnin 3521 >> Gebt die Quest Iverrons Gegengift ab
    .target Dirania Silvershine
    .accept 3522 >> Akzeptiert die Quest Iverrons Gegengift
step << Priest
    .goto 1438/1,779.8482,10450.1295
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dellylah|r
    .vendor >> |cRXP_WARN_verkauft Schrott|r
    >>|cRXP_BUY_Kauft bis zu 25|r |T132794:0|t[Erfrischendes Quellwasser]
    .collect 159,25 --Collect Refreshing Spring Water (x25)
    .target Dellylah
step << !Priest
    .goto 1438/1,794.92,10436.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_verkauft Schrott|r << !Hunter
	.vendor >> |cRXP_BUY_Kauft 3 oder 4 Stapel|r |T132382:0|t[Rauer Pfeil] << Hunter
    .target Keina
step
    .goto 1438/1,871.24,10417.65
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
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Disteleber|r auf dem Weg zu Iverron
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step
    .goto 1438/1,1034.89,10711.58
    .target Iverron
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Iverron|r
    >>TIPP: |cRXP_WARN_Nehmt die Hosen als Belohnung von ihm auf. Ihr werdet sie später verwenden, um eine Rune darauf einzugravieren|r << Priest sod
    .turnin 3522 >> Gebt die Quest Iverrons Gegengift ab
step
    #completewith next
    .goto 1438/1,926.08,10773.42,25 >> Betretet die Schattenweberhöhle
step
    .goto 1438/1,912.33,10935.30
    >>Tötet |cRXP_ENEMY_Githyiss die Üble|r und plündert den |T134298:0|t[|cRXP_LOOT_Fangzahn|r]
    >>Sammelt das |cRXP_LOOT_Waldweberei|r auf dem Boden am hinteren Ende der Höhle
    .collect 277190,1 --Fang of Githyiss (x1)
    .complete 917,1 --Collect Webwood Egg (x1)
    .mob Githyiss the Vile
step
	#softcore
	#completewith next
    .deathskip >> Sterbt und respawnt beim Geistheiler
    .target Geistheiler
step << skip --logout skip
	#hardcore
	#completewith next
	+Nutzt den Auslog-Skip auf dem Vorsprung hinter den Eiern. Bewegt den Charakter von Euch, bis es aussieht, als würden sie schweben, dann loggt euch aus und wieder ein.
	>>Falls ihr hinunterfällt, rennt einfach Normal aus der Höhle zur Questabgabe
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >> KLICKT HIER als Referenz
step
	.goto 1438/1,871.24,10417.65
    >>Benutzt den |T134298:0|t[|cRXP_LOOT_Fangzahn von Githyiss|r] um die Quest zu akzeptieren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gilshalan Windwalker|r
    .accept 97236 >> Akzeptiert die Quest Fangzahn von Githyiss
    .turnin 97236 >> Gebt die Quest Fangzahn von Githyiss ab
    .turnin 917 >> Gebt die Quest Waldweberei ab
    .target Gilshalan Windwalker
    .accept 920 >> Akzeptiert die Quest Tenarons Einladung
    .use 277190
step
    .goto 1438/1,871.6,10440.83,25,0
    .goto 1438/1,807.34,10492.48
    >>Klettert auf den Aldrassil-Baum
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tenaron Stormgrip|r
    .turnin 920 >> Gebt die Quest Tenarons Einladung ab
    .target Tenaron Stormgrip
    .accept 921 >> Akzeptiert die Quest Krone der Erde
step
    #sticky
    #label vial1
    .goto 1438/1,764.68,10711.31
	.use 5185 >> |cRXP_WARN_Benutzt die|r |T134776:0|t[Kristallphiole] |cRXP_WARN_am Mondbrunnen|r
    .complete 921,1 --Collect Filled Crystal Phial (x1)
step << Hunter/Druid/Warrior/Priest
    .goto 1438/1,769.77,10673.98
    >>Tötet |cRXP_ENEMY_Räudiger Nachtsäbler|r und |cRXP_ENEMY_Disteleber|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step
    #requires vial1
    #completewith next
    .deathskip >> Sterbt und respawnt beim Geistheiler
    .target Geistheiler
step << Hunter/Druid
    #requires vial1
    .goto 1438/1,826.03,10328.97
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Konservator Ilthalaine|r
    .turnin 457,2 >> Gebt die Quest Das Gleichgewicht der Natur ab
step
    #requires vial1
    .goto 1438/1,871.6,10440.83,25,0
    .goto 1438/1,807.34,10492.48
    >>Klettert auf den Aldrassil-Baum
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tenaron Stormgrip|r
    .turnin 921 >> Gebt die Quest Die Krone der Erde ab
    .target Tenaron Stormgrip
    .accept 928 >> Akzeptiert die Quest Krone der Erde
step
    .goto 1438/1,805.500,10491.800
    >>Klickt auf das |cRXP_PICK_Buch|r links von |cRXP_FRIENDLY_Tenaron|r
    .accept 96630 >>Akzeptiert die Quest Der Abenteurer
step << Priest
    #completewith next
    .goto 1438/1,787.28,10438.120
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Janna Brightmoon|r oben
	.vendor >> |cRXP_WARN_verkauft Schrott|r
    .target Janna Brightmoon
step << Priest
	.goto 1438/1,801.64,10458.75
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shanda|r oben
	.turnin 3119 >> Gebt die Quest Geheiligtes Siegelzeichen ab
    .accept 97979 >> Akzeptiert die Quest Das Geschenk der Göttin
    .accept 5622 >> Akzeptiert die Quest Elune geneigt
	.trainer >> Trainiere deine Klassenfähigkeiten
step << Priest
    >>Wirkt |T132089:0|t[|cRXP_LOOT_Schattenmimik|r] und |T136057:0|t[|cRXP_LOOT_Elunes Licht|r]
    .complete 97979,1
    .complete 97979,2
step << Priest
    .goto 1438/1,800.500,10454.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shanda::3595|r
    .target Shanda::3595
    .turnin 97979 >>Gebt die Quest Das Geschenk der Göttin ab
step
    #requires vial1
    .goto 1438/1,826.03,10328.97
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Konservator Ilthalaine|r
    .turnin 457,2 >> Gebt die Quest Das Gleichgewicht der Natur ab
    .isQuestComplete 457
step
    .goto 1438/1,700.57,10214.33
    .target Porthannius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Porthannius|r
    .accept 2159 >> Akzeptiert die Quest Lieferung für Dolanaar
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 6-11 Teldrassil
#displayname 7-13 Teldrassil << SoD
#version 1
#group RestedXP Forever Dungeonführer (A)
#subgroup Speedrun Dungeonführer 1-20
--#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 14-16 Dunkelküste

step
    .goto 1438/1,734.13,9920.57
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zenn Foulhoof|r
    .accept 488 >> Akzeptiert die Quest Zenns Aufträge
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
   .goto 1438/1,879.700,9907.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lyreena Duskblade|r
    .turnin 96630 >> Gebt die Quest Die Abenteurerin ab
    .accept 96606 >> Akzeptiert die Quest Die große weite Welt
    .target Lyreena Duskblade
step
    .goto 1438/1,882.300,9909.101
    >>Benutzt das |cRXP_WARN_/sitzen|r Emote neben dem Lagerfeuer und |cRXP_WARN_bleibt 1 Minute lang sitzen|r um das Ziel zu abzuschließen
    .complete 96606,2 --Gain the Boosted Rest buff
step
    .goto 1438/1,879.700,9907.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lyreena Duskblade|r
    .turnin 96606 >> Gebt die Quest Die große weite Welt
    .accept 96634 >> Akzeptiert die QuestGrundlagen des Zeltens: Kochkunst
    .target Lyreena Duskblade
step
    #label DenlansEarth
    .goto 1438/1,959.18,9872.38
    .target Syral Bladeleaf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Syral Bladeleaf|r
    >>|cRXP_WARN_Stellt sicher, dass ihr 1 freien Inventarplatz habt, bevor ihr diese Quest annehmt|r
    .accept 997 >> Akzeptiert die Quest Denalans Erde
step
    .goto 1438/1,965.59,9887.58
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Athridas Bearmantle|r
    .accept 475 >> Akzeptiert die Quest Ein beunruhigender Wind
step << Priest
    .goto 1438/1,985.45,9905.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laurna Morninglight|r
    .turnin 5622 >> Gebt die Quest Elune geneigt ab
    .target Laurna Morninglight
    .accept 5621 >> Akzeptiert die Quest Gewänder des Mondes
	.trainer >> Trainiere deine Klassenfähigkeiten
step << Rogue
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aldia|r oben
    .accept 87288 >> Akzeptiert die Quest Weiche Säblerpelze
    .vendor >> |cRXP_BUY_Kauft und rüstet einen|r |T135641:0|t[Ausbalancierten Wurfdolch]
    .target Aldia
step << !Rogue
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aldia|r oben
    .accept 87288 >> Akzeptiert die Quest Weiche Säblerpelze
    .target Aldia
step
    .goto 1438/1,984.94,9898.58
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tallonkai Swiftroot|r oben auf dem Baum
    .accept 932 >> Akzeptiert die Quest Krankhafter Hass
    .accept 2438 >> Akzeptiert die Quest Der smaragdgrüne Traumfänger
step << Hunter
    .goto 1438/1,968.85,9821.98--c:Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jeena Featherbow|r
    >>|cRXP_BUY_kaufe und rüste ein|r |T135499:0|t[Hornholz-Doppelbogen] aus
    >>|cRXP_BUY_Kaufe|r |T132382:0|t[Rauer Pfeil] |cRXP_BUY_bis euer Köcher voll ist|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    .goto 1438/1,968.85,9821.98--c:Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jeena Featherbow|r
    .vendor >>|cRXP_BUY_Kaufe|r |T132382:0|t[Rauer Pfeil] |cRXP_BUY_bis euer Köcher voll ist|r
    .target Jeena Featherbow
step << Hunter
    #completewith next
    +|cRXP_WARN_Legt den|r |T135499:0|t[Hornholz-Doppelbogen] an
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step
    .goto 1438/1,963.000,9811.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Kyra Starsong|r
    .target Sentinel Kyra Starsong::2081
    .accept 99046 >>Akzeptiert die Quest Die verlorene Botin
step << Warrior
    .goto 1438/1,947.57,9812.38
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
    .goto 1438/1,952.00,9822.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kyra Windblade|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Kyra Windblade
step << Rogue
    .goto 1438/1,943.85,9790.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jannok Breezesong|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Jannok Breezesong
step << Rogue
    .goto 1438/1,947.57,9812.38
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
    .goto 1438/1,947.57,9812.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Kauft und rüstet einen|r |T135145:0|t[Wanderstecken] |cRXP_BUY_wenn ihr es euch leisten könnt (4s 79c), falls nicht überspringt den Schritt|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Druid
    #completewith next
    +|cRXP_WARN_Legt den|r |T135145:0|t[Wanderstecken] an
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step
    .goto 1438/1,982.65,9802.19
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Innkeeper Keldamyr|r
    .turnin 2159,2 >> Gebt die Quest Lieferung für Dolanaar ab << Hunter
    .turnin 2159 >> Gebt die Quest Lieferung für Dolanaar ab << !Hunter
    .vendor >>|cRXP_BUY_kaufe 10 |T132815:0|t|cRXP_LOOT_Eiskalte Mich|r oder so viel wie ihr könnt << Priest
    .home >> Setzt euren Ruhestein in Dolanaar
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dazalar|r
	.train 3044 >> Erlernen Arkaner Schuss << era
    .train 5116 >> Erlernt Erschütternder Schuss << sod
    .target Dazalar
step << Druid
    .goto 1438/1,966.05,9741.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kal|r
    >>Überspringt das Training von |T136006:0|t[|cRXP_LOOT_Zorn|r], wenn ihr es euch nicht leisten könnt. Priorisiert |T136104:0|t[|cRXP_LOOT_Dornen|r]
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Kal
step
    .goto 1438/1,956.02,9736.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 928 >> Gebt die Quest Die Krone der Erde ab
    .target Corithras Moonrage
    .accept 929 >> Akzeptiert die Quest Krone der Erde
step
    .goto 1438/1,906.17,9751.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zarrin|r
    .train 2550 >>Erlerne Kochkunst
    .accept 4161 >> Akzeptiert Rezept der Kaldorei
    .turnin 96634 >> Gebt die Quest Grundlagen des Zeltens: Kochkunst ab
    .target Zarrin
    .money <0.0094
step
    .goto 1438/1,902.15,9754.27--c:Teldrassil,57.2,61.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nyoma|r
    +Kauft 5 |T134059:0|t[Milde Gewürze] von ihr, benutzt |T133971:0|t[|cRXP_FRIENDLY_Kochkunst|r], um |T132834:0|t[|cRXP_LOOT_Kräutergebackenes Ei|r] zu kochen, bis ihr keine |T132832:0|t[|cRXP_LOOT_Kleines Ei|r] mehr habt
    .collect 2678,5 --Mild Spices
    .disablecheckbox
    .itemcount 6889,1 --Small Egg
    .target Nyoma
    .skill cooking,<1,1
step
    #completewith DenlanStart
    +Esst die |T132834:0|t[|cRXP_LOOT_Kräutergebackenes Ei|r] für 10 Sek. um einen |cRXP_WARN_5% Mobkill-Erfahrungsbuff für 15 Minuten|r zu erhalten.
    >>|cRXP_WARN_Denkt daran, diesen Essensbuff erneut anzuwenden, wenn er abläuft|r
    .itemcount 6888,1
step
    #sticky
    #completewith DenlanStart
    >>Tötet |cRXP_ENEMY_Nachtsäbler|r. Plündert sie für |cRXP_LOOT_Fangzähne|r und |cRXP_LOOT_Pelze|r
    >>Tötet |cRXP_ENEMY_Strigideule|r. Plündert sie für |cRXP_LOOT_Federn|r
    >>Tötet |cRXP_ENEMY_Waldweberlauerer|r. Plündert sie für |cRXP_LOOT_Seide|r
    >>|cRXP_WARN_Seid vorsichtig, da die|r |cRXP_ENEMY_Nachtsäbler|r |cRXP_WARN_und|r |cRXP_ENEMY_Strigideulen|r |cRXP_WARN_sich sehr schnell bewegen!|r |cRXP_ENEMY_Strigideulen|r |cRXP_WARN_werden auch andere|r |cRXP_ENEMY_Strigideulen|r pullen |cRXP_WARN_falls ihr an ihnen vorbeilauft, während ihr mit einer|r im Kampf seid
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
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
    #ssf
    #optional
    #completewith end
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_Erhöht eure|r |T136065:0|t[Kräuterkunde] |cRXP_WARN_auf 15, um 5|r |T134187:0|t[Erdwurzel] |cRXP_WARN_für eine wichtige Klassenquest später zu sammeln. Ihr könnt es danach wieder verlernen|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #optional
    #completewith end
    #requires GatheringQ
    >>Sammelt 5 |T134187:0|t[Erdwurzel] über |cRXP_WARN_über |T136065:0|t[Kräuterkunde] und selten in |cRXP_PICK_Ramponierte Truhe|r für eine zukünftige Klassenquest|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1
step << Priest
    .goto 1438/1,900.01,9675.85
    >>Ziel |cRXP_FRIENDLY_Schildwache Shaya|r
    >>|cRXP_WARN_Wirkt|r |T135929:0|t[Geringes Heilen (Rang 2)] |cRXP_WARN_und|r |T135987:0|t[Machtwort: Seelenstärke] |cRXP_WARN_auf|r |cRXP_FRIENDLY_Schildwache Shaya|r
    .complete 5621,1 --Heal and fortify Sentinel Shaya
    .target Sentinel Shaya
step
    #label DenlanStart
    .goto 1438/1,713.76,9506.90--c:Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Denalan|r
    .turnin 997 >> Gebt die Quest Denalans Erde ab
    .target Denalan
    .accept 918 >> Akzeptiert die Quest Bäumlingssamenkörner
    .accept 919 >> Akzeptiert die Quest Bäumlingssprossen
step
    .goto 1438/1,676.59,9493.30,55,0
    .goto 1438/1,733.11,9439.67,55,0
    .goto 1438/1,808.46,9370.10,55,0
    .goto 1438/1,877.20,9458.34,55,0
    .goto 1438/1,997.36,9549.97,55,0
    .goto 1438/1,867.02,9630.74,55,0
    .goto 1438/1,697.97,9581.87
    >>Tötet |cRXP_ENEMY_Bäumlinge|r. Plündert sie für |cRXP_LOOT_Samenkörner|r
    >>Plündert |cRXP_LOOT_Bäumlingssprossen|r vom Boden << !sod
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 --Collect Timberling Sprout (x12)
    .mob Timberling
step
    .goto 1438/1,713.76,9506.90--c:Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Denalan|r
    .turnin 918 >> Gebt die Quest Bäumlingssamenkörner ab
    .target Denalan
    .accept 922 >> Akzeptiert die Quest Rellian Greenspyre
    .turnin 919 >> Gebt die Quest Bäumlingssprossen ab
step
    #sticky
    #completewith Starbreeze
    >>Tötet |cRXP_ENEMY_Nachtsäbler|r. Plündert sie für |cRXP_LOOT_Fangzähne|r und |cRXP_LOOT_Pelze|r
    >>Tötet |cRXP_ENEMY_Strigideule|r. Plündert sie für |cRXP_LOOT_Federn|r
    >>Tötet |cRXP_ENEMY_Waldweberlauerer|r. Plündert sie für |cRXP_LOOT_Seide|r
    >>|cRXP_WARN_Seid vorsichtig, da die|r |cRXP_ENEMY_Nachtsäbler|r |cRXP_WARN_und|r |cRXP_ENEMY_Strigideulen|r |cRXP_WARN_sich sehr schnell bewegen!|r |cRXP_ENEMY_Strigideulen|r |cRXP_WARN_werden auch andere|r |cRXP_ENEMY_Strigideulen|r pullen |cRXP_WARN_falls ihr an ihnen vorbeilauft, während ihr mit einer|r im Kampf seid
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
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
    .goto 1438/1,351.23,9806.54,120 >> Reist nach Starbreeze Village
step
    .goto 1438/1,351.23,9806.54
    >>Öffnet |cRXP_PICK_Tallonkais Kommode|r. Plündert sie für |cRXP_LOOT_Smaragdgrüner Traumfänger|r
    >>|cRXP_WARN_Versucht, das Sammeln der|r Eulenfedern|cRXP_LOOT_ an den Eulen neben den Furlbogs abzuschließen|r
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .disablecheckbox
    .complete 2438,1 --Collect Emerald Dreamcatcher (x1)
step
    #label zenn
    .goto 1438/1,440.85,9845.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gaerolas Talvethren|r oben
    .turnin 475 >> Gebt die Quest Ein beunruhigender Wind ab
    .target Gaerolas Talvethren
    .accept 476 >> Akzeptiert die Quest Die Verderbnis der Knarzklauen
step
    #xprate <1.99
    .goto 1438/1,587.49,9859.480
    >>|cRXP_WARN_Benutzt die|r |T134721:0|t[Jadephiole] |cRXP_WARN_am Sternenhauch-Mondbrunnen|r
    .complete 929,1 --Collect Filled Jade Phial (x1)
step
    #sticky
	#completewith GnarlpineCorruption
    >>Tötet |cRXP_ENEMY_Waldweberlauerer|r und |cRXP_ENEMY_Waldwebergiftzähne|r. Plündert sie für |cRXP_LOOT_Kleines Spinnenbein|r
    >>|cRXP_WARN_Ihr braucht diese für eine spätere Quest|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    >>Tötet |cRXP_ENEMY_Nachtsäbler|r. Plündert sie für |cRXP_LOOT_Fangzähne|r und |cRXP_LOOT_Pelze|r
    >>Tötet |cRXP_ENEMY_Strigideule|r. Plündert sie für |cRXP_LOOT_Federn|r
    >>Tötet |cRXP_ENEMY_Waldweberlauerer|r. Plündert sie für |cRXP_LOOT_Seide|r
    >>|cRXP_WARN_Bewahrt|r |T132832:0|t[Kleine Eier] |cRXP_WARN_und|r |T134321:0|t[Kleine Spinnenbeine] |cRXP_WARN_auf, um sie später zum Leveln für|r |T133971:0|t[Kochkunst] |cRXP_WARN_zu nutzen.|r
    >>===========================================================================
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn es keine Mobs in der Nähe gibt, um das Ziel zu erfüllen!|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .disablecheckbox
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,660.30,9758.69,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,586.98,9651.78,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
    .goto 1438/1,705.61,9976.23,50,0
    .goto 1438/1,750.93,9807.90,50,0
    .goto 1438/1,850.22,9919.89
step
    .goto 1438/1,734.13,9920.57
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 488 >> Gebt die Quest Zenns Aufträge ab
    .isQuestComplete 488
step
    #completewith GnarlpineCorruption
    >>Tötet |cRXP_ENEMY_Nachtsäbler|r. Plündert sie für |cRXP_LOOT_Fangzähne|r und |cRXP_LOOT_Pelze|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
step
	.goto 1438/1,959.28,9872.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Syral Bladeleaf|r
    .accept 489 >> Akzeptiert die Quest Sucht Befreiung!
    .target Syral Bladeleaf
    .isQuestTurnedIn 488
step
    #label SeekRedemption
step
    #label GnarlpineCorruption
    .goto 1438/1,965.59,9887.58
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Athridas Bearmantle|r
    .turnin 476 >> Gebt die Quest Die Verderbnis der Knarzklauen ab
step << Priest
    .goto 1438/1,985.45,9905.43
    .target Laurna Morninglight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laurna Morninglight|r
    .turnin 5621 >> Gebt die Quest Gewänder des Mondes ab
	.trainer >> Trainiere deine Klassenfähigkeiten
step
    #optional
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aldia|r oben
    .turnin 87288 >> Gebt die Quest Weiche Säblerpelze ab
    .target Aldia
    .isQuestComplete 87288
step
    .goto 1438/1,984.94,9898.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tallonkai Swiftroot|r oben auf dem Baum
    .turnin 2438 >> Gebt die Quest Der smaragdgrüne Traumfänger ab
    .target Tallonkai Swiftroot
    .accept 2459 >> Akzeptiert die Quest Ferocitas der Traumfresser
step << Hunter
    .goto 1438/1,968.85,9821.98--c:Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jeena Featherbow|r
    >>|cRXP_BUY_kauft und equipt einen|r |T135499:0|t[Hornholz-Doppelbogen] |cRXP_BUY_wenn ihr uch es leisten könnt (2s 85c), falls nicht überspringt den Schritt|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    .goto 1438/1,968.85,9821.98--c:Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jeena Featherbow|r
	.vendor >>|cRXP_BUY_Kauft bis zu 800|r |T132382:0|t[Raue Pfeile]
    .target Jeena Featherbow
step << Hunter
    #completewith next
    +|cRXP_WARN_Legt den|r |T135499:0|t[Hornholz-Doppelbogen] an
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dazalar|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Dazalar
    .xp <8,1
step << Rogue
    .goto 1438/1,943.85,9790.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jannok Breezesong|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Jannok Breezesong
    .xp <8,1
step << Warrior
    .goto 1438/1,947.57,9812.38
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
    .goto 1438/1,952.00,9822.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kyra Windblade|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Kyra Windblade
    .xp <8,1
step << Rogue
    .goto 1438/1,947.57,9812.38
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
    .goto 1438/1,947.57,9812.38
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
    .goto 1438/1,956.02,9736.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 929 >> Gebt die Quest Die Krone der Erde ab
    .target Corithras Moonrage
    .accept 933 >> Akzeptiert die Quest Krone der Erde
    .xp <8,1
step << Druid
    .goto 1438/1,966.05,9741.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kal|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Kal
    .xp <8,1
step << Druid
    #completewith next
    >>Tötet |cRXP_ENEMY_Nachtsäbler|r. Plündert sie für |cRXP_LOOT_Fangzähne|r und |cRXP_LOOT_Pelze|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
    .isOnQuest 87288
step << Druid
    #completewith next
    .goto 1438/1,1030.46,10037.99,20,0
    .goto 1438/1,1043.70,10093.99,15 >> Reist zum Teufelsfels
step << Druid
    #label Melenas
    .goto 1438/1,1207.65,10114.01
    >>Tötet |cRXP_ENEMY_Lord Melenas|r. Plündert sie für ihren |cRXP_LOOT_Kopf|r
    >>|cRXP_ENEMY_Lord Melenas|r kann sich an vielen verschiedenen Orten im Teufelsfels befinden
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step
    #completewith jewel
    +Esst die |T132834:0|t[|cRXP_LOOT_Kräutergebackenes Ei|r] für 10 Sek. um einen |cRXP_WARN_5% Mobkill-Erfahrungsbuff für 15 Minuten|r zu erhalten.
    >>|cRXP_WARN_Denkt daran, diesen Essensbuff erneut anzuwenden, wenn er abläuft|r
    .itemcount 6888,1
step
    #sticky
    #completewith jewel
    >>Tötet |cRXP_ENEMY_Nachtsäbler|r. Plündert sie für |cRXP_LOOT_Fangzähne|r und |cRXP_LOOT_Pelze|r
    >>Tötet |cRXP_ENEMY_Strigideule|r. Plündert sie für |cRXP_LOOT_Federn|r
    >>Tötet |cRXP_ENEMY_Waldweberlauerer|r. Plündert sie für |cRXP_LOOT_Seide|r und |cRXP_LOOT_Beine|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob +Webwood Lurker
    .isOnQuest 488
step
    #completewith jewel
    >>Tötet |cRXP_ENEMY_Nachtsäbler|r. Plündert sie für |cRXP_LOOT_Fangzähne|r und |cRXP_LOOT_Pelze|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
    .isNotOnQuest 488
step
    #sticky
	#completewith jewel
    >>Tötet |cRXP_ENEMY_Waldweberlauerer|r und |cRXP_ENEMY_Waldwebergiftzähne|r. Plündert sie für |cRXP_LOOT_Kleines Spinnenbein|r
    >>|cRXP_WARN_Ihr braucht diese für eine spätere Quest|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
    .isNotOnQuest 488
step
    #loop
    .goto 1438/1,854.400,9952.500,6 >>Neben einem kleinen Baum
    .goto 1438/1,822.200,9948.500,6 >>Auf dem kleinen Hügel
    .goto 1438/1,809.800,9926.400,6 >>Neben dem riesiegen Baum
    >>Plündert die 3 |cRXP_LOOT_Teufelszapfen|r von den Orten auf eurerKarte.
    >>|cRXP_WARN_Überspringt diesen Schritt, falls einer von ihnen nicht da ist und ihr das Ziel nicht abschließen könnt|r
    .complete 489,1 --Fel Cone 3/3
    .isOnQuest 489
    .isQuestNotComplete 489
step
    #label SoDSpiderLegs
    .goto 1438/1,739.22,9917.17
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
	.goto 1438/1,282.49,10018.65
	>>Tötet |cRXP_ENEMY_Ferocitas der Traumfresser|r.Sammelt |T133288:0|t[|cRXP_LOOT_Halskette der Knarzklauen|r] von ihm.|cRXP_WARN_Passt auf, da euch|r |T132152:0|t[Hauen] |cRXP_WARN_bis zu dreimal gleichzeitig treffen kann|r
    .use 8049 >>|cRXP_WARN_Benutzt die |T133288:0|t[|cRXP_LOOT_Halskette der Knarzklauen|r] zum Plündern von|r |cRXP_LOOT_Tallonkais Juwel|r
    .complete 2459,2 --Collect Tallonkai's Jewel (x1)
    .mob Ferocitas the Dream Eater
step
    #label jewel
    .goto 1438/1,332.90,10064.46,30,0
    .goto 1438/1,282.49,10018.65
    >>Tötet |cRXP_ENEMY_Mystiker der Knarzklauen|r
    >>|cRXP_WARN_Falls es nicht viele |cRXP_ENEMY_Mystiker der Knarzklauen|r gibt, müsst ihr möglicherweise |cRXP_ENEMY_Krieger der Knarzklauen|r töten, um sie spawnen zu lassen|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
    #softcore
    .deathskip >> Sterbt und respawnt beim Geistheiler
    .target Geistheiler
step
    #softcore
    .goto 1438/1,953.07,9788.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brannol Eaglemoon|r
    .vendor >> |cRXP_BUY_Verkaufe und repariere falls notwendig|r
    .target Brannol Eaglemoon
step
    #completewith spiderLegs
    >>Tötet |cRXP_ENEMY_Nachtsäbler|r. Plündert sie für |cRXP_LOOT_Fangzähne|r und |cRXP_LOOT_Pelze|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
step
    .goto 1438/1,956.02,9736.83
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 929 >> Gebt die Quest Die Krone der Erde ab
step
    .goto 1438/1,956.02,9736.83
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corithras Moonrage|r
    .accept 933 >> Akzeptiert die Quest Krone der Erde
step
    #sticky
    #completewith spiderLegs
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
    .isOnQuest 488
step
    #sticky
	#completewith spiderLegs
    >>Tötet |cRXP_ENEMY_Waldweberlauerer|r und |cRXP_ENEMY_Waldwebergiftzähne|r. Plündert sie für |cRXP_LOOT_Kleines Spinnenbein|r
    >>|cRXP_WARN_Ihr braucht diese für eine spätere Quest|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #completewith next
    .goto 1438/1,1655.21,9555.06,50 >> Reist zu den Teichen von Arlithrien
step
	.goto 1438/1,1655.21,9555.06
    .use 5621 >>|cRXP_WARN_Benutzt die|r |T134765:0|t[Turmalinphiole] |cRXP_WARN_am Mondbrunnen bei den Teichen von Arlithrien|r
	.complete 933,1
step
    .goto 1438/1,1539.12,9437.98,40,0
    .goto 1438/1,1529.44,9325.64
    >>Tötet |cRXP_ENEMY_Waldweberlauerer|r und |cRXP_ENEMY_Waldwebergiftzähne|r. Plündert sie für |cRXP_LOOT_Kleines Spinnenbein|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #completewith next
    .goto 1438/1,1645.02,9245.89,50 >> Reist zum südwestlichen Teldrassil
step
    #label spiderLegs
	.goto 1438/1,1645.02,9245.89
	>>Hebt die |cRXP_PICK_Sonderbare fruchtbeladene Pflanze|r auf
	.accept 930 >> Akzeptiert die Quest Die leuchtende Frucht
step
    #hardcore
    #completewith next
    .goto 1438/1,956.02,9736.83,90 >> Reist nach Dolanaar
step
    #softcore
	#completewith next
    .goto 1438/1,1599.71,9509.25
    .deathskip >> Sterbt und respawnt am Friedhof von Dolanaar
step
    .goto 1438/1,956.02,9736.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 933 >> Gebt die Quest Die Krone der Erde ab
    .target Corithras Moonrage
    .accept 7383 >> Akzeptiert die Quest Krone der Erde
step << Druid
    .goto 1438/1,966.05,9741.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kal|r
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn ihr bereits Zauber der Stufe 8 gelernt habt|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Kal
    .xp <8,1
step
    #label SpiderLegsEnd
    .goto 1438/1,906.17,9751.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zarrin|r
    .train 2550 >>Erlerne Kochkunst
    .turnin 96634 >> Gebt die Quest Grundlagen des Zeltens: Kochkunst ab
    .accept 4161 >> Akzeptiert Rezept der Kaldorei
    .turnin 4161 >> Gebt Rezept der Kaldorei ab
    .target Zarrin
step
    .goto 1438/1,902.1500,9754.2750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nyoma|r
    +Kauft 5 |T134059:0|t[Milde Gewürze] von ihr, benutzt |T133971:0|t[|cRXP_FRIENDLY_Kochkunst|r], um |T132834:0|t[|cRXP_LOOT_Kräutergebackenes Ei|r] zu kochen, bis ihr keine |T132832:0|t[|cRXP_LOOT_Kleines Ei|r] mehr habt
    .collect 2678,5 --Mild Spices
    .disablecheckbox
    .itemcount 6889,1 --Small Egg
    .target Nyoma
    .skill cooking,<1,1
step
    #completewith Melenas
    +Esst die |T132834:0|t[|cRXP_LOOT_Kräutergebackenes Ei|r] für 10 Sek. um einen |cRXP_WARN_5% Mobkill-Erfahrungsbuff für 15 Minuten|r zu erhalten.
    >>|cRXP_WARN_Denkt daran, diesen Essensbuff erneut anzuwenden, wenn er abläuft|r
    .itemcount 6888,1
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dazalar|r
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn ihr bereits Zauber der Stufe 8 gelernt habt|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Dazalar
    .xp <8,1
step << Rogue
    .goto 1438/1,943.85,9790.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jannok Breezesong|r
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn ihr bereits Zauber der Stufe 8 gelernt habt|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Jannok Breezesong
    .xp <8,1
step << Warrior
    .goto 1438/1,952.00,9822.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kyra Windblade|r
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn ihr bereits Zauber der Stufe 8 gelernt habt|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Kyra Windblade
    .xp <8,1
step
    >>Tötet |cRXP_ENEMY_Nachtsäbler|r. Plündert sie für |cRXP_LOOT_Fangzähne|r und |cRXP_LOOT_Pelze|r
    >>Tötet |cRXP_ENEMY_Strigideule|r. Plündert sie für |cRXP_LOOT_Federn|r
    >>Tötet |cRXP_ENEMY_Waldweberlauerer|r. Plündert sie für |cRXP_LOOT_Seide|r
    >>|cRXP_WARN_Bewahrt|r |T132832:0|t[Kleine Eier] |cRXP_WARN_und|r |T134321:0|t[Kleine Spinnenbeine] |cRXP_WARN_auf, um sie später zum Leveln für|r |T133971:0|t[Kochkunst] |cRXP_WARN_zu nutzen.|r
    >>====================================================================================
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn es keine Mobs in der Nähe gibt, um das Ziel zu erfüllen!|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob +Nightsaber <<Druid
    .disablecheckbox << !Druid --Druids need the extra xp to get to 10 before going to Darn
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,660.30,9758.69,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,586.98,9651.78,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
    .goto 1438/1,705.61,9976.23,50,0
    .goto 1438/1,750.93,9807.90,50,0
    .goto 1438/1,850.22,9919.89
step
    .goto 1438/1,734.13,9920.57
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 488 >> Gebt die Quest Zenns Aufträge ab
    .isQuestComplete 488
step
    #label SeekRedemption
	.goto 1438/1,959.28,9872.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Syral Bladeleaf|r
    .accept 489 >> Akzeptiert die Quest Sucht Befreiung!
    .target Syral Bladeleaf
    .isQuestTurnedIn 488
step << Warrior/Rogue
    .goto 1438/1,999.40,9902.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Byancie|r
    .train 3273 >> Erlerne |T135966:0|t[Erste Hilfe]
    .target Byancie
step << Priest
    .goto 1438/1,985.45,9905.43
    .target Laurna Morninglight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laurna Morninglight|r
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn ihr bereits Zauber der Stufe 8 gelernt habt|r
	.trainer >> Trainiere deine Klassenfähigkeiten
step
    #optional
    #completewith next
    >>Tötet |cRXP_ENEMY_Nachtsäbler|r. Plündert sie für |cRXP_LOOT_Fangzähne|r und |cRXP_LOOT_Pelze|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
    .isOnQuest 87288
step
    #completewith next
    .goto 1438/1,1030.46,10037.99,20,0
    .goto 1438/1,1043.70,10093.99,15 >> Reist zum Teufelsfels
step
    #optional
    #label Melenas
    .goto 1438/1,1207.65,10114.01
    >>Tötet |cRXP_ENEMY_Lord Melenas|r. Plündert sie für ihren |cRXP_LOOT_Kopf|r
    >>Ihr könnt |T134296:0|t[|cRXP_FRIENDLY_Abgespaltene Voodooklaue|r] auf ihn verwenden, um seinen Schaden stark zu reduzieren!
    >>|cRXP_ENEMY_Lord Melenas|r kann sich an vielen verschiedenen Orten im Teufelsfels befinden
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
    .itemcount 5457,1
step
    #label Melenas
    .goto 1438/1,1207.65,10114.01
    >>Tötet |cRXP_ENEMY_Lord Melenas|r. Plündert sie für ihren |cRXP_LOOT_Kopf|r
    >>|cRXP_ENEMY_Lord Melenas|r kann sich an vielen verschiedenen Orten im Teufelsfels befinden
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
    .itemcount 5457,<1
step
    #loop
    .goto 1438/1,854.400,9952.500,6 >>Neben einem kleinen Baum
    .goto 1438/1,822.200,9948.500,6 >>Auf dem kleinen Hügel
    .goto 1438/1,809.800,9926.400,6 >>Neben dem riesiegen Baum
    >>Plündert die 3 |cRXP_LOOT_Teufelszapfen|r von den Orten auf eurerKarte.
    .complete 489,1 --Fel Cone 3/3
    .isOnQuest 489
    .isQuestNotComplete 489
step
    #label SoDSpiderLegs
    .goto 1438/1,739.22,9917.17
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 489 >> Gebt die Quest Sucht Befreiung! ab
    .itemcount 3418,3
    .isOnQuest 489
step << Priest/Druid
    #optional
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aldia|r oben
    .turnin 87288 >> Gebt die Quest Weiche Säblerpelze ab
    .target Aldia
    .isQuestComplete 87288
step << Priest/Druid
    .goto 1438/1,984.94,9898.58
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tallonkai Swiftroot|r oben auf dem Baum
    .turnin 932 >> Gebt die Quest Krankhafter Hass ab
    .turnin 2459 >> Gebt die Quest Ferocitas der Traumfresser ab
step
    #optional
    #completewith Ambushers
    >>Tötet |cRXP_ENEMY_Nachtsäbler|r. Plündert sie für |cRXP_LOOT_Fangzähne|r und |cRXP_LOOT_Pelze|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .mob Nightsaber
    .isOnQuest 87288
step
    .goto 1438/1,971.91,9852.35,40,0
    .goto 1438/1,1257.55,10004.39
    .goto 1438/1,971.91,9852.35,0
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mondpriesterin Amara|r
    >>|cRXP_FRIENDLY_Mondpriesterin Amara|r |cRXP_WARN_patrouilliert die Straße westlich von Dolanaar. Sie kann auch gerade einen Furlbog-Hinterhalt bekämpfen, in diesem Fall müsst ihr warten, bis sie fertig ist|r
    .accept 487 >> Akzeptiert die Quest Die Straße nach Darnassus
    .target Moon Priestess Amara
step
    #label Ambushers
    .goto 1438/1,1441.87,10032.56
    >>Tötet |cRXP_ENEMY_Wegelagerer der Knarzklauen|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob Gnarlpine Ambusher
step << Druid/Priest
    .goto 1438/1,1172.01,9917.17
    >>Findet die Mondpriesterin Amara, sie patrouilliert auf der Straße westlich von Dolanaar
    .target Moon Priestess Amara
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mondpriesterin Amara|r
    .turnin 487 >> Gebt die Quest Die Straße nach Darnassus ab
step
    #completewith next
    .goto 1438/1,1863.46,10665.16,50 >> Reist zur Lichtung des Orakels
step
    .goto 1438/1,1899.700,10582.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Eralya Leafshadow::275683|r
    .target Sentinel Eralya Leafshadow::275683
    .turnin 99046 >>Gebt die Quest Die verlorene Botin ab
    .accept 99047 >>Akzeptiert die Quest Noch nicht tot
step
    .goto 1438/1,1863.46,10665.16
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Arynia Cloudsbreak|r
    .accept 937 >> Akzeptiert die Quest Die verzauberte Lichtung
step
    .goto 1438/1,1857.86,10676.36
    .use 18152 >>|cRXP_WARN_Benutzt die|r |T134798:0|t[Amethystphiole] |cRXP_WARN_am Mondbrunnen der Lichtung des Orakels|r
    .complete 7383,1 --Collect Filled Amethyst Phial (x1)

--with the new quests, druids can go straight to 10, a 5 minute save later down the road
--@TODO add mist here
step << Druid/Priest
    #completewith next
    >>Tötet |cRXP_ENEMY_Harpyie der Blutfedern|r. Plündert sie für ihre |cRXP_LOOT_Gürtel|r
    >>|cRXP_ENEMY_Matriarchin der Blutfedern|r |cRXP_WARN_wirkt|r |T136052:0|t[Welle der Heilung] |cRXP_WARN_und|r |T136048:0|t[Blitzschlag] |cRXP_WARN_welche viel Schaden anrichten. Versucht, sie schnell zu töten|r
    >>|cRXP_WARN_Vermeide es so weit wie möglich, gegen sie zu kämpfen.|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step << Druid/Priest
    .goto 1438/1,2208.67,10758.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mist|r
    >>Dies startet eine Escort Quest
    .accept 938 >> Akzeptiert die Quest Nebel
    .target Mist
step << Druid/Priest
    .goto 1438/1,1863.46,10665.16
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Arynia Cloudsbreak|r
    >>|cRXP_WARN_Denkt daran, dass dies eine zeitgesteuerte Quest ist. Ihr müsst sie innerhalb von 10 Minuten abgeben|r
    .turnin 938 >> Gebt die Quest Nebel ab
step
    #completewith xp10 <<!Druid !Priest
	#label harpies
    .goto 1438/1,2102.82,10819.27,0,0
    >>Tötet |cRXP_ENEMY_Harpyie der Blutfedern|r. Plündert sie für ihre |cRXP_LOOT_Gürtel|r
    >>|cRXP_ENEMY_Matriarchin der Blutfedern|r |cRXP_WARN_wirkt|r |T136052:0|t[Welle der Heilung] |cRXP_WARN_und|r |T136048:0|t[Blitzschlag] |cRXP_WARN_welche viel Schaden anrichten. Versucht, sie schnell zu töten|r
    >>|cRXP_WARN_Vermeide es so weit wie möglich, gegen sie zu kämpfen.|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step << Druid/Priest
    .goto 1438/1,1864.47,10663.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Arynia Cloudsbreak|r
    .turnin 937 >> Gebt die Quest Die verzauberte Lichtung ab
    .accept 98392 >> Akzeptiert die Quest Dunkel auf der Lichtung
    .target Sentinel Arynia Cloudsbreak
step << Druid/Priest
    .goto 1438/1,2032.50,10500.90--c:Teldrassil,35.0,39.2
    >>Tötet |cRXP_ENEMY_Hasskreisch|r. Plündert sie für |T133288:0|t[|cRXP_LOOT_Amulett|r]
    .complete 98392,1
    .mob Hatescreech
step << Druid/Priest
    .goto 1438/1,2103.78,10623.08--c:Teldrassil,33.6,35.6
    >>Tötet |cRXP_ENEMY_Windmeisterin Gaedress|r. Plündert sie für |T133333:0|t[|cRXP_LOOT_Amulett|r]
    .complete 98392,2
    .mob Windmistress Gaedress
step << Druid/Priest
    .goto 1438/1,2042.68,10860.64--c:Teldrassil,34.8,28.6
    >>Tötet |cRXP_ENEMY_Hexenmutter Arysa|r. Plündert sie für ihre |T133324:0|t[|cRXP_LOOT_Amulett|r]
    >>|cRXP_ENEMY_Hexenmutter Arysa|r und |cRXP_ENEMY_Matriarchin der Blutfedern|r |cRXP_WARN_wirkt|r |T136052:0|t[Welle der Heilung] |cRXP_WARN_und|r |T136048:0|t[Blitzschlag] |cRXP_WARN_was viel Schaden verursacht. Versucht, sie schnell auszuschalten|r
    >>|cRXP_WARN_Vermeide es so weit wie möglich, gegen die Matriarchin zu kämpfen.|r
    .complete 98392,3
    .mob Witchmother Arysa
step
    .goto 1438/1,2052.36,10854.19
    >>Klickt die |cRXP_PICK_Sonderbare wedelbestückte Pflanze|r an
    .accept 931 >> Akzeptiert die Quest Der schimmernde Wedel
step << Druid/Priest
    .goto 1438/1,1864.47,10663.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Arynia Cloudsbreak|r
    .turnin 98392 >> Gebt die Quest Dunkel auf der Lichtung ab
    .accept 98398 >> Akzeptiert die Quest Der Orakelbaum
    .target Sentinel Arynia Cloudsbreak
step << Druid/Priest
    .goto 1438/1,1932.400,10673.500
    >>Geht zum |cRXP_FRIENDLY_Orakelbaumrinde|r
    .turnin 98398 >> Gebt die Quest Der Orakelbaum ab
    .accept 940 >> Akzeptiert die Quest Teldrassil
step << Druid/Priest
    #label xp10
    .xp 10-900 >> Farmt, bis ihr 900 XP vor Stufe 10 seid (5600/6500)
step << Hunter
    #completewith xp10
    #label mist1
    .goto 1438/1,2208.67,10758.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mist|r
    >>Dies startet eine Escort Quest
    .accept 938 >> Akzeptiert die Quest Nebel
    .target Mist
step << Hunter
    #sticky
    #label xp10
    .xp 9+800 >> Farmt bis ihr 800 Erfahrungspunkte in Stufe 9 habt
    >>|cRXP_WARN_Sobald ihr diese XP-Schwelle erreicht, überspringt die Harpyien-/Eskorte-Quest und geht direkt nach Darnassus. Ihr werdet eine weitere Gelegenheit haben, diese Quests später zu machen|r
step << Hunter
    #completewith xp10
    #requires mist1
    .goto 1438/1,1863.46,10665.16
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Arynia Cloudsbreak|r
    >>|cRXP_WARN_Denkt daran, dass dies eine zeitgesteuerte Quest ist. Ihr müsst sie innerhalb von 10 Minuten abgeben|r
    .turnin 938 >> Gebt die Quest Nebel ab
step << Hunter
    #completewith xp10
	#requires harpies
    .goto 1438/1,1863.46,10665.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Arynia Cloudsbreak|r
    .turnin 937 >> Gebt die Quest Die verzauberte Lichtung ab
    .target Sentinel Arynia Cloudsbreak
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
    .goto 1457/1,2070.42,9979.310,100 >> Reist nach Darnassus
step << Hunter
    #requires xp10
    .goto 1457/1,2316.49,9924.41
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariyell Himmelsschatten|r
    .vendor >>|cRXP_BUY_Verkauft euren trash|r
    .target Ariyell Skyshadow
step << Hunter
    .goto 1457/1,2329.19,9908.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ilyenia Mondfeuer|r
    .skipgossipid 96881
    .train 227 >>Erlernt Stäbe
    >>Falls ihr einen Stab in der Tasche habt, rüstet ihn aus
    .target Ilyenia Moonfire
step << Priest
    #ah
    #optional
    .goto 1457/1,2318.400,10134.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vaean|r
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn ihr lieber|r |T135139:0|t[|cRXP_FRIENDLY_Geringer Magiezauberstab|r] |cRXP_WARN_vom Auktionshaus kaufen wollt|r
    >>Überprüft, ob er die |T132867:0|t[|cRXP_FRIENDLY_Geringe Magieessenz|r] zum Verkauf hat. Falls ja, kauft sie. Ihr werdet sie benötigen, um einen |T135139:0|t[|cRXP_LOOT_Zauberstab|r] herzustellen
    .collect 10938,1 --Lesser Magic Essence
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.12 --No Wand equipped
    .itemcount 11287,<1 --No Wand in bags
    .target Vaean
step << Priest
    #ssf
    #optional
    .goto 1457/1,2318.400,10134.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vaean|r
    >>Überprüft, ob er die |T132867:0|t[|cRXP_FRIENDLY_Geringe Magieessenz|r] zum Verkauf hat. Falls ja, kauft sie. Ihr werdet sie benötigen, um einen |T135139:0|t[|cRXP_LOOT_Zauberstab|r] herzustellen
    .collect 10938,1 --Lesser Magic Essence
    .target Vaean
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.12 --No Wand equipped
    .itemcount 11287,<1 --No Wand in bags
step << Priest
    .goto 1457/1,2315.900,10148.200
    .itemcount 10938,1 --Lesser Magic Essence (1)
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lalina Summermoon|r
    .train 7411 >>Erlernt |T136244:0|t[|cRXP_LOOT_Verzauberkunst|r]. Ihr werdet sie benötigen, um einen |T135139:0|t[|cRXP_LOOT_Zauberstab|r] herzustellen
    .target Lalina Summermoon
step << Priest
    #optional
    .itemcount 10938,1 --Lesser Magic Essence (1)
    .goto 1457/1,2318.400,10134.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vaean|r
    >>|cRXP_BUY_Kauft die folgenden Materialien von ihm:|r
    .collect 6217,1 --Copper Rod (1)
    .collect 247786,9 --Mote of Magic (9)
    .collect 4470,9 --Simple Wood (9)
    .target Vaean
    .skill enchanting,10,1
step << Priest
    #optional
    .itemcount 10938,1 --Lesser Magic Essence (1)
    >>Benutzt |T136244:0|t[|cRXP_LOOT_Verzauberkunst|r] in eurem |cRXP_WARN_Berufsfähigkeiten-Tab|r, um einen |T135225:0|t[|cRXP_LOOT_Runenverzierte Kupferrute|r] herzustellen
    .collect 6218,1 --Runed Copper Rod
    .skill enchanting,10,1
step << Priest
    #optional
    .itemcount 10938,1 --Lesser Magic Essence (1)
    +Benutzt |T136244:0|t[|cRXP_LOOT_Verzauberkunst|r] in eurem |cRXP_WARN_Berufsfähigkeiten-Tab|r, um |T135645:0|t[|cRXP_LOOT_Übungszauberstab des Novizen|r] |cRXP_WARN_herzustellen, bis ihr 10 Verzauberkunst erreicht|r
    .skill enchanting,10,1
step << Priest
    #optional
    .goto 1457/1,2315.900,10148.200
    .itemcount 10938,1 --Lesser Magic Essence (1)
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lalina Summermoon|r
    .train 14293 >>Erlernt |T135139:0|t[|cRXP_FRIENDLY_Geringer Magiezauberstab|r] von ihr
    .target Lalina Summermoon
    .skill enchanting,<10,1
step << Priest
    #optional
    .itemcount 10938,1 --Lesser Magic Essence (1)
    >>Benutzt |T136244:0|t[|cRXP_LOOT_Verzauberkunst|r] in eurem |cRXP_WARN_Berufsfähigkeiten-Tab|r, um einen |T135139:0|t[|cRXP_FRIENDLY_Geringer Magiezauberstab|r] herzustellen
    .collect 11287,1 --Lesser Magic Wand
    .skill enchanting,<10,1
step << Priest
    #optional
    #completewith next
    +Legt den |T135139:0|t[|cRXP_WARN_Geringer Magiezauberstab|r] |cRXP_FRIENDLY_an|r
    .use 11287
    .itemcount 11287,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.12
step << Priest
    #ah
    #optional
    .goto 1457/1,2343.10,9856.95,-1
    .goto 1457/1,2341.74,9872.610,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit einem |cRXP_FRIENDLY_Darnassus Auktionator|r
    >>|T134711:0|t[Schwaches Zauberöl] |cRXP_WARN_und|r |T133906:0|t[Geräucherter Weisenfisch] |cRXP_WARN_wird in frühen Stufen einen hohen DPS-Anstieg bieten|r
    >>|cRXP_WARN_Sucht auch nach hohem DPS|r |T132317:0|t[Zauberstab] |cRXP_WARN_-Verbesserungen, die ihr jetzt/bald nutzen könnt|r
    *|cRXP_WARN_Überspringt diesen Schritt, wenn ihr nichts kaufen möchtet|r
    .collect 20744,1 -- Minor Wizard Oil (1)
    .collect 21072,20 -- Smoked Sagefish (20)
    .target Auctioneer Tolon
    .target Auctioneer Golothas
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.12 --No Wand equipped
    .itemcount 11287,<1 --No Wand in bags
step << !Rogue
    #requires xp10
    .goto 1457/1,2534.29,10085.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 922 >> Gebt die Quest Rellian Greenspyre ab
    .target Rellian Greenspyre
    .accept 923 >> Akzeptiert die Quest Tumore
step << Druid NightElf/Priest NightElf
    #optional
    .goto 1457/1,2569.91,10173.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Erzdruide Fandral Staghelm|r
    .turnin 940 >> Abgeben Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >> Akzeptiert die Quest Der Hain der Uralten
    .xp 10,1
step << Druid NightElf
    .goto 1457/1,2572.300,10185.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Denatharion::4218|r
    .target Denatharion::4218
    .accept 5923 >>Akzeptiert die Quest Dem Ruf folgen
    .isNotOnQuest 5925
step << Druid NightElf
    .isOnQuest 5923
    .goto 1457/1,2563.92,10179.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mathrengyl Bearwalker|r auf der mittleren Ebene
    .turnin 5923 >> Gebt die Quest Dem Ruf folgen ab
    .accept 5921 >> Akzeptiert die Quest Moonglade
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Mathrengyl Bearwalker
step << Druid NightElf
    .isOnQuest 5925
    .goto 1457/1,2563.92,10179.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mathrengyl Bearwalker|r auf der mittleren Ebene
    .turnin 5925 >> Gebt die Quest Dem Ruf folgen ab
    .accept 5921 >> Akzeptiert die Quest Moonglade
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Mathrengyl Bearwalker
step << Druid NightElf
    .goto 1457/1,2563.92,10179.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mathrengyl Bearwalker|r auf der mittleren Ebene
    .accept 5921 >> Akzeptiert die Quest Moonglade
    .target Mathrengyl Bearwalker
step << !Rogue
    .goto 1457/1,2508.68,9605.98--c:Darnassus,40.6,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Dalia Sunblade|r
    .accept 98067 >>Akzeptiert die Quest Die Augen der Schildwache
    .target Sentinel Dalia Sunblade
step << !Rogue
    .goto 1457/1,2517.99,9584.25,10,0
    .goto 1457/1,2550.48,9631.88
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priesterin A'moora|r oben
    .accept 2518 >> Akzeptiert die Quest Tränen des Mondes
step << Priest
    .goto Darnassus,40.0,80.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priesterin Alathea|r oben
    .accept 5627 >>Akzeptiert die Quest Sterne von Elune
    .turnin 5627 >>Gebt die Quest Sterne von Elune ab
    .target Priestess Alathea
step << Druid NightElf
	#completewith next
	.cast 18960 >> Caste Teleportieren: Moonglade
    >>|cRXP_WARN_Es wird sich in eurem Zauberbuch befinden|r
	.zoneskip Moonglade
step << Druid NightElf
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dendrite Starblaze|r oben
    .turnin 5921 >> Gebt die Quest Mondlichtung ab
    .target Dendrite Starblaze
    .accept 5929 >> Akzeptiert die Quest Großer Bärengeist
step << Druid NightElf
    .goto 1450/1,-2422.77,8079.37,15,0
    .goto 1450/1,-2285.42,8069.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Großer Bärengeist|r
    .complete 5929,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.
    .skipgossip
    .target Great Bear Spirit
step << Druid NightElf
	#completewith next
	.cast 18960 >> Caste Teleportieren: Moonglade
    >>|cRXP_WARN_Dies wird euch schneller zurück bringen|r
step << Druid NightElf
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dendrite Starblaze|r oben
    .turnin 5929 >> Gebt die Quest Großer Bärengeist ab
    .target Dendrite Starblaze
    .accept 5931 >> Akzeptiert die Quest Zurück nach Darnassus
step
    #requires xp10 << Rogue
    .hs >> Benutzt euren Ruhestein nach Dolanaar
    .subzoneskip 186
step
    .goto 1438/1,997.200,9903.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Byancie::6094|r
    .target Byancie::6094
    .turnin 99047 >>Gebt die Quest Noch nicht tot ab
    .accept 99050 >>Akzeptiert die Quest Gaben des Großen Baums << !Druid
step << !Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Narret Shadowgrove|r
    .goto 1438/1,1000.400,9891.900
    >>|cRXP_BUY_Kauft eine|r |T134864:0|t[Leere Phiole] |cRXP_BUY_von ihm|r
    .collect 3371,1 --Empty Vial
    .target Narret Shadowgrove
step
    .goto 1438/1,984.94,9898.58
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tallonkai Swiftroot|r oben auf dem Baum
    .turnin 932 >> Gebt die Quest Krankhafter Hass ab
    .turnin 2459 >> Gebt die Quest Ferocitas der Traumfresser ab
step
    #optional
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aldia|r oben
    .turnin 87288 >> Gebt die Quest Weiche Säblerpelze ab
    .target Aldia
    .isQuestComplete 87288
step
    >>Tötet |cRXP_ENEMY_Nachtsäbler|r. Plündert sie für |cRXP_LOOT_Fangzähne|r und |cRXP_LOOT_Pelze|r
    >>Tötet |cRXP_ENEMY_Strigideule|r. Plündert sie für |cRXP_LOOT_Federn|r
    >>Tötet |cRXP_ENEMY_Waldweberlauerer|r. Plündert sie für |cRXP_LOOT_Seide|r
    >>|cRXP_WARN_Bewahrt|r |T132832:0|t[Kleine Eier] |cRXP_WARN_und|r |T134321:0|t[Kleine Spinnenbeine] |cRXP_WARN_auf, um sie später zum Leveln für|r |T133971:0|t[Kochkunst] |cRXP_WARN_zu nutzen.|r
    >>====================================================================================
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn es keine Mobs in der Nähe gibt, um das Ziel zu erfüllen!|r
    .complete 87288,1 --Soft Nightsaber Pelt (x6)
    .disablecheckbox
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,660.30,9758.69,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .goto 1438/1,448.99,10051.91,60,0
    .goto 1438/1,586.98,9651.78,50,0
    .goto 1438/1,803.37,9764.12
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
    .goto 1438/1,705.61,9976.23,50,0
    .goto 1438/1,750.93,9807.90,50,0
    .goto 1438/1,850.22,9919.89
step
    .goto 1438/1,734.13,9920.57
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 488 >> Gebt die Quest Zenns Aufträge ab
    .isQuestComplete 488
step
    .abandon 488 >>Brecht die Quest Zenns Aufträge ab
step
    #label SeekRedemption
	.goto 1438/1,959.28,9872.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Syral Bladeleaf|r
    .accept 489 >> Akzeptiert die Quest Sucht Befreiung!
    .target Syral Bladeleaf
    .isQuestTurnedIn 488
step
    #loop
    .goto 1438/1,854.400,9952.500,6 >>Neben einem kleinen Baum
    .goto 1438/1,822.200,9948.500,6 >>Auf dem kleinen Hügel
    .goto 1438/1,809.800,9926.400,6 >>Neben dem riesiegen Baum
    >>Plündert die 3 |cRXP_LOOT_Teufelszapfen|r von den Orten auf eurerKarte.
    .complete 489,1 --Fel Cone 3/3
    .isOnQuest 489
    .isQuestNotComplete 489
step
    #label SoDSpiderLegs
    .goto 1438/1,739.22,9917.17
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zenn Foulhoof|r
    .turnin 489 >> Gebt die Quest Sucht Befreiung! ab
    .itemcount 3418,3
    .isOnQuest 489
step << Hunter
    .goto 1438/1,947.57,9812.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_kaufe und equipt ein|r |T135145:0|t[Wanderstecken] |cRXP_BUY_wenn du es dir leisten kannst (5s 4c), falls nicht skip den Schritt|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
    .money <0.0504
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Hunter
    .goto 1438/1,968.85,9821.98--c:Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jeena Featherbow|r
	.vendor >> |cRXP_BUY_Kauft 4 Stapel|r |T132382:0|t[Scharfe Pfeile]|cRXP_BUY_. Legt sie an, sobald ihr Stufe 10 erreicht|r
    .target Jeena Featherbow
step << Hunter/Warrior/Rogue
    .goto 1438/1,1172.01,9917.17
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
    .goto 1438/1,928.83,9812.34
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
    .goto 1438/1,764.68,9835.73
    .use 15921 >>|cRXP_WARN_Benutzt die|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einem|r |cRXP_ENEMY_Waldweberlauerer|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #requires beast2
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Gebt die Quest Die Zähmung der Bestie ab
    .target Dazalar
    .accept 6101 >> Akzeptiert die Quest Die Zähmung der Bestie
step
    .goto 1438/1,956.02,9736.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Corithras Moonrage|r
    .turnin 7383 >> Gebt die Quest Die Krone der Erde ab
    .target Corithras Moonrage
    .accept 935 >> Akzeptiert die Quest Krone der Erde
step << !Druid
    #completewith DenalanEnd
    >>Tötet alle |cRXP_ENEMY_Peitscher Sprösslinge|r, die ihr auf dem Weg zu Denalan seht. Plündert sie für die |T237424:0|t[|cRXP_LOOT_Taubedeckter Peitscherwedel|r]
    .complete 99050,1
    .mob Lasher Sproutling
step
	.goto 1438/1,713.76,9506.90--c:Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Denalan|r
    .turnin 931 >> Gebt die Quest Der schimmernde Wedel ab
    .turnin 930 >> Gebt die Quest Die leuchtende Frucht ab
step
	.goto 1438/1,713.76,9506.90--c:Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Denalan|r
	.turnin 927 >> Gebt die Quest Das moosumschlungene Herz ab
    .isOnQuest 927
step
	.goto 1438/1,719.87,9503.48
	>>Klickt auf |cRXP_LOOT_Denalans Blumentopf|r
	.turnin 941 >> Gebt die Quest Das Einpflanzen des Herzens ab
	.isQuestTurnedIn 927
step
    .goto 1438/1,719.400,9503.900
    >>Wartet auf |cRXP_FRIENDLY_Denalan|r, bis das Rollenspiel endet. Tötet die |cRXP_ENEMY_Boglinge|r für |T134187:0|t[|cRXP_LOOT_Boglingwurzel|r] und plündert die |cRXP_PICK_Sprießender Wedel|r
    >>|T134184:0|t[Sprießender Wedel] |cRXP_WARN_sind Gegenstände zur Sofort-Heilung, die sich keinen Cooldown mit HP-Tränken teilen!|r
    .accept 2399 >>Akzeptiert die Quest Die sprießenden Wedel
    .turnin 2399 >>Gebt die Quest Die sprießenden Wedel ab
step
    #label DenalanEnd
step << Hunter
    .goto 1438/1,627.20,9380.96
    .use 15922 >>|cRXP_WARN_Benutzt die|r |T132164:0|t[Zähmerrute] |cRXP_WARN_bei einem|r |cRXP_ENEMY_Pirschender Nachtsäbler|r
    >>|cRXP_WARN_Ihr müsst mit der rechten Maustaste auf Euer Begleiterfenster klicken und Euren Begleiter verabschieden, bevor ihr ein anderes zähmen könnt|r
    .complete 6101,1 --Tame a Nightsaber Stalker
	.isOnQuest 6101
    .mob Nightsaber Stalker
step << !Druid
    .goto 1438/1,676.59,9493.30,55,0
    .goto 1438/1,733.11,9439.67,55,0
    .goto 1438/1,808.46,9370.10,55,0
    .goto 1438/1,877.20,9458.34,55,0
    .goto 1438/1,997.36,9549.97,55,0
    .goto 1438/1,867.02,9630.74,55,0
    .goto 1438/1,697.97,9581.87
    >>Beendet das töten von |cRXP_ENEMY_Blühender Peitscher|r. Plündert sie für |T237424:0|t[|cRXP_LOOT_Taubedeckter Peitscherwedel|r]
    .complete 99050,1
    .isOnQuest 6101 << Hunter --Hunter only finishes here if already on the cat quest
    .mob Lasher Sproutling
step
    #label L10
    .xp 10-850 << !Hunter !Druid
    .xp 10 << Hunter
    .itemcount 280087,<6
step
#optional
    #label L10
    .xp 10-1475 << !Hunter
    .xp 10-625 << Hunter
    .isQuestComplete 87288
step << !Druid
    .goto 1438/1,982.65,9802.19
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Innkeeper Keldamyr|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    .collect 159,1 --Refreshing Spring Water (1)
    .isOnQuest 99050
    .xp >10,1
step
    .goto 1438/1,997.200,9903.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Byancie::6094|r
    .target Byancie::6094
    .turnin 99050 >>Gebt die Quest Gaben des Großen Baums ab
    .accept 99073 >>Akzeptiert die Quest Leidlinderung
    .xp >10,1
step
    #optional
    .goto 1438/1,988.30,9891.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Aldia|r oben
    .turnin 87288 >> Gebt die Quest Weiche Säblerpelze ab
    .target Aldia
    .isQuestComplete 87288
step << Warrior
    .goto 1438/1,952.00,9822.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kyra Windblade|r
    .accept 1684 >> Akzeptiert die Quest Elanaria
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Kyra Windblade
step << Rogue
    .goto 1438/1,943.85,9790.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jannok Breezesong|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .train 5171 >> Erlerne |T132306:0|t[Zerhäckseln]
    .train 921 >> Lernt |T133644:0|t[Taschendiebstahl] ebenfalls, was für eure Stufe-10-Schurken-Quest benötigt wird
    .target Jannok Breezesong
step << Hunter
    .goto 1438/1,928.83,9812.34
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >> Akzeptiert die Quest Die Zähmung der Bestie
	.trainer >> Trainiere deine Klassenfähigkeiten
step << Hunter
    .goto 1438/1,764.68,9835.73
    .use 15921 >>|cRXP_WARN_Benutzt die|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einem|r |cRXP_ENEMY_Waldweberlauerer|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Gebt die Quest Die Zähmung der Bestie ab
    .target Dazalar
    .accept 6101 >> Akzeptiert die Quest Die Zähmung der Bestie
step << Hunter
    #completewith next
    >>Tötet alle |cRXP_ENEMY_Blühenden Sprösslinge|r, die ihr auf dem Weg zur Katze seht. Plündert sie für die |T237424:0|t[|cRXP_LOOT_Taubedeckter Peitscherwedel|r]
    .complete 99050,1
    .mob Lasher Sproutling
step << Hunter
    .goto 1438/1,627.20,9380.96
    .use 15922 >>|cRXP_WARN_Benutzt die|r |T132164:0|t[Zähmerrute] |cRXP_WARN_bei einem|r |cRXP_ENEMY_Pirschender Nachtsäbler|r
    >>|cRXP_WARN_Ihr müsst mit der rechten Maustaste auf Euer Begleiterfenster klicken und Euren Begleiter verabschieden, bevor ihr ein anderes zähmen könnt|r
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob Nightsaber Stalker
step << !Druid
    .goto 1438/1,676.59,9493.30,55,0
    .goto 1438/1,733.11,9439.67,55,0
    .goto 1438/1,808.46,9370.10,55,0
    .goto 1438/1,877.20,9458.34,55,0
    .goto 1438/1,997.36,9549.97,55,0
    .goto 1438/1,867.02,9630.74,55,0
    .goto 1438/1,697.97,9581.87
    >>Beendet das töten von |cRXP_ENEMY_Blühender Peitscher|r. Plündert sie für |T237424:0|t[|cRXP_LOOT_Taubedeckter Peitscherwedel|r]
    .complete 99050,1
    .mob Lasher Sproutling
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dazalar|r
    .turnin 6101 >> Gebt die Quest Die Zähmung der Bestie ab
    .target Dazalar
    .accept 6102 >> Akzeptiert die Quest Die Zähmung der Bestie
step << Hunter
    .goto 1438/1,520.28,9567.62
    .use 15923 >>|cRXP_WARN_Benutzt die|r |T132164:0|t[Zähmerrute] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Strigidkreischer|r
    >>|cRXP_WARN_Ihr müsst mit der rechten Maustaste auf Euer Begleiterfenster klicken und Euren Begleiter verabschieden, bevor ihr ein anderes zähmen könnt|r
    .complete 6102,1 --Tame a Strigid Screecher
    .mob Strigid Screecher
step << Hunter
    .goto 1438/1,928.83,9812.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dazalar|r
    .turnin 6102 >> Gebt die Quest Die Zähmung der Bestie ab
    .target Dazalar
    .accept 6103 >> Akzeptiert die Quest Die Ausbildung des Tiers
step << Warrior
    .goto 1438/1,971.91,9852.35,40,0
    .goto 1438/1,1257.55,10004.39
    .goto 1438/1,971.91,9852.35,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mondpriesterin Amara|r
    >>|cRXP_FRIENDLY_Mondpriesterin Amara|r |cRXP_WARN_patrouilliert auf der Straße westlich von Dolanaar|r
    .accept 1684 >> Akzeptiert die Quest Elanaria
    .target Moon Priestess Amara
step << Rogue
    .goto 1438/1,943.85,9790.28
    .target Jannok Breezesong
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jannok Breezesong|r
    .accept 2241 >> Akzeptiert die Quest Der Apfel fällt
step << !Druid
    .goto 1438/1,982.65,9802.19
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Innkeeper Keldamyr|r
    >>|cRXP_BUY_Kauft|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    .collect 159,1 --Refreshing Spring Water (1)
    .isOnQuest 99050
step << Priest
    .goto 1438/1,985.45,9905.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laurna Morninglight|r
	.trainer >> Trainiere deine Klassenfähigkeiten
    .target Laurna Morninglight
step << Hunter
	#xprate <1.5--money issues 1.5x
    .goto 1438/1,947.57,9812.38
    .money <0.0504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Kauft einen|r |T135145:0|t[Wanderstecken]
    >>|cRXP_WARN_Ihr werdet diesen später anlegen. Überspringt diesen Schritt, falls ihr einen anderen Stab gefunden habt|r
    .collect 2495,1 -- Walking Stick (1)
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20step
    .goto 1438/1,997.200,9903.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Byancie::6094|r
    .target Byancie::6094
    .turnin 99050 >>Gebt die Quest Gaben des Großen Baums ab
    .accept 99073 >>Akzeptiert die Quest Leidlinderung
step
    .goto 1438/1,971.91,9852.35,40,0
    .goto 1438/1,1257.55,10004.39
    .goto 1438/1,971.91,9852.35,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mondpriesterin Amara|r
    >>|cRXP_FRIENDLY_Mondpriesterin Amara|r |cRXP_WARN_patrouilliert auf der Straße westlich von Dolanaar|r
    .turnin 487 >> Gebt die Quest Die Straße nach Darnassus ab
    .target Moon Priestess Amara
step
    #optional
    .abandon 87288 >> Brecht die Quest Weiche Säblerpelze ab, da ihr nicht zu Dolanaar zurückkehren werdet
step << Rogue
    #softcore
    #completewith next
    .goto 1438/1,1574.25,9978.26
    .deathskip >>Sobald ihr das Furbolg-Areal hinter euch habt, sterbt absichtlich und respawnt am Friedhof von Darnassus
    .target Geistheiler
step << Rogue
    #hardcore
    #completewith next
    .goto 1457/1,2070.42,9979.310,100 >> Reist nach Darnassus
step << Rogue
    .goto 1457/1,2534.29,10085.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 922 >> Gebt die Quest Rellian Greenspyre ab
    .target Rellian Greenspyre
    .accept 923 >> Akzeptiert die Quest Tumore
step << Rogue
    .goto 1457/1,2608.06,10113.26,8,0
    .goto 1457/1,2546.89,10083.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Syurna|r
    .turnin 2241 >> Gebt die Quest Der Apfel fällt ab
    .target Syurna
    .accept 2242 >> Akzeptiert die Quest Das Schicksal ruft
step << Rogue
    .goto 1457/1,2508.68,9605.98--c:Darnassus,40.6,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Dalia Sunblade|r
    .accept 98067 >>Akzeptiert die Quest Die Augen der Schildwache
    .target Sentinel Dalia Sunblade
step << Rogue
    .goto 1457/1,2517.99,9584.25,10,0
    .goto 1457/1,2550.48,9631.88
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priesterin A'moora|r
    .accept 2518 >> Akzeptiert die Quest Tränen des Mondes
step << Rogue
    .goto 1457/1,2009.100,9986.601
    >>Geht zu den Toren von Darnassus und benutzt den |T133298:0|t[|cRXP_LOOT_Mondanhänger|r]
    .complete 98067,4
    .use 279378
step << Hunter
    #sticky
	.goto 1438/1,1716.82,10324.42,0
	.goto 1438/1,1564.07,10480.54,0
	.goto 1438/1,1492.78,10765.61,0
	.goto 1438/1,1900.12,10853.85,0
    >>|cRXP_WARN_Wirkt|r |T132164:0|t[Wildtier zähmen] |cRXP_WARN_auf einen |cRXP_ENEMY_Strigidjäger|r um ihn zu Zähmen|r -- .tame 1997
    .train 2981 >> |cRXP_WARN_Greift mobs mit ihm an um|r |T132140:0|t[Klaue (Rang 2)] zu lernen
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Hier Klicken für mehr Infos bezüglich Pet Training|r
	.unitscan Strigid Hunter
step
    .goto 1438/1,1691.36,10412.66
	>>Tötet |cRXP_ENEMY_Bäumlingtrampler|r, |cRXP_ENEMY_Morastbäumling|r und |cRXP_ENEMY_Alter Bäumling|r. Plündert sie für ihre|cRXP_LOOT_Tumore|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step
    #label Spinnerets
    #loop
    .goto 1438/1,1828.600,10964.800
    >>Tötet |cRXP_ENEMY_Lady Sathrah|r. Plündert sie für ihre |cRXP_LOOT_Spinndrüsen|r
    >>|cRXP_ENEMY_Lady Sathrah|r |cRXP_WARN_kann an 3 verschiedenen Orten erscheinen, prüft die Karte für einen empfohlenen Weg|r
    >>|cRXP_WARN_Geh am Fluss entlang nach Norden und überprüfe zuerst den östlichsten Spawn-Punkt. Arbeitet an der|r |T134339:0|t[Tumoren] |cRXP_WARN_Quest im Vorbeigehen|r
    >>|cRXP_WARN_Falls Sie sich nicht östlich des Flusses befinden, vervollständige die|r |T134339:0|t[Tumore] |cRXP_WARN_Quest, bevor du dich nach Westen begibst|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob Lady Sathrah
step
    .goto 1438/1,1864.47,10667.19
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Arynia Cloudsbreak|r
    .accept 937 >> Akzeptiert die Quest Die verzauberte Lichtung
step << Rogue
    .goto 1438/1,1879.75,10976.02
    >>|cRXP_WARN_Wirkt|r |T133644:0|t[Taschendiebstahl] auf |cRXP_ENEMY_Sethir der Uralte|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    >>|cRXP_ENEMY_Sethir der Uralte|r |cRXP_WARN_wandert den großen Ast entlang|r
    >>|cRXP_WARN_Vemeidet einen Kampf mit |cRXP_ENEMY_Sethir der Uralte|r. Lasst ihn an euch vorbeigehen, danach|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_und|r |T133644:0|t[Taschendiebstahl] |cRXP_WARN_wenn ihr hinter ihm seid|r
    .complete 2242,1
    .mob Sethir the Ancient
step
    #sticky
	#label harpies2
    .goto 1438/1,2102.82,10819.27,0,0
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
    .goto 1438/1,2208.67,10758.15
    .target Mist
    #label MistStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mist|r
    >>Dies startet eine Escort Quest
    >>|cRXP_WARN_Überspringt die Quest, wenn der NPC nicht da ist|r
    .accept 938 >> Akzeptiert die Quest Nebel
step
    .goto 1438/1,1864.47,10663.80
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Arynia Cloudsbreak|r
    >>|cRXP_WARN_Denkt daran, dass dies eine zeitgesteuerte Quest ist. Ihr müsst sie innerhalb von 10 Minuten abgeben|r
    .turnin 938 >> Gebt die Quest Nebel ab
    .isOnQuest 938
step
    #requires harpies2
    #label TeldrassilEnd
    .goto 1438/1,1864.47,10663.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Arynia Cloudsbreak|r
    .turnin 937 >> Gebt die Quest Die verzauberte Lichtung ab
    .accept 98392 >> Akzeptiert die Quest Dunkel auf der Lichtung
    .target Sentinel Arynia Cloudsbreak
step
    .isOnQuest 99073
    .goto 1438/1,1899.700,10582.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Eralya Leafshadow::275683|r
    .target Sentinel Eralya Leafshadow::275683
    .turnin 99073 >>Gebt die Quest Leidlinderung ab
step
    .goto 1438/1,2032.50,10500.90--c:Teldrassil,35.0,39.2
    >>Tötet |cRXP_ENEMY_Hasskreisch|r. Plündert sie für |T133288:0|t[|cRXP_LOOT_Amulett|r]
    .complete 98392,1
    .mob Hatescreech
step
    .goto 1438/1,2103.78,10623.08--c:Teldrassil,33.6,35.6
    >>Tötet |cRXP_ENEMY_Windmeisterin Gaedress|r. Plündert sie für |T133333:0|t[|cRXP_LOOT_Amulett|r]
    .complete 98392,2
    .mob Windmistress Gaedress
step
    .goto 1438/1,2042.68,10860.64--c:Teldrassil,34.8,28.6
    >>Tötet |cRXP_ENEMY_Hexenmutter Arysa|r. Plündert sie für ihre |T133324:0|t[|cRXP_LOOT_Amulett|r]
    .complete 98392,3
    .mob Witchmother Arysa
step
    .goto 1438/1,1864.47,10663.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Arynia Cloudsbreak|r
    .turnin 98392 >> Gebt die Quest Dunkel auf der Lichtung ab
    .accept 98398 >> Akzeptiert die Quest Der Orakelbaum
    .target Sentinel Arynia Cloudsbreak
step
    .goto 1438/1,1932.400,10673.500
    >>Geht zum |cRXP_FRIENDLY_Orakelbaumrinde|r
    .turnin 98398 >> Gebt die Quest Der Orakelbaum ab
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
    .goto 1457/1,2070.42,9979.310
    .zone Darnassus >> Reist nach Darnassus
step
    #hardcore
    #completewith next
    #season 2
    .goto 1457/1,2070.42,9979.310
    .zone Darnassus >> Reist nach Darnassus
step << !Warrior
    --@TODO add note that u need to wait for the other player owl to despawn
    .goto 1457/1,2009.100,9986.601
    >>Geht zu den Toren von Darnassus und benutzt den |T133298:0|t[|cRXP_LOOT_Mondanhänger|r]
    .complete 98067,4
    .use 279378
step << !Warrior
    .goto 1457/1,2190.34,9918.06
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >> Akzeptiert die Quest Nessa Shadowsong
step
    #softcore
    #label darn
    #optional
    .goto 1457/1,2070.42,9979.310
    .zone Darnassus >> Reist nach Darnassus
step
	.abandon 927 >> Brecht die Quest Das moosumschlungene Herz ab. Ihr bekommt nie die Gelegenheit, sie abzugeben.
step << Warrior
    .goto 1457/1,2331.89,9994.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >> Gebt die Quest Elanaria ab
    .target Elanaria
    .accept 1683 >> Akzeptiert die Quest Vorlus Elendshuf
step << Warrior
    .goto 1457/1,2190.34,9918.06
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >> Akzeptiert die Quest Nessa Shadowsong
step << Warrior
    .goto 1457/1,2009.100,9986.601
    >>Geht zu den Toren von Darnassus und benutzt den |T133298:0|t[|cRXP_LOOT_Mondanhänger|r]
    .complete 98067,4
    .use 279378
step << Warrior
    #sticky
    #completewith next
    .goto 1438/1,1334.94,9720.34,18 >> Reist in Richtung |cRXP_ENEMY_Vorlus Elendshuf|r
step << Warrior
    .goto 1438/1,1411.32,9669.43
    >>Tötet |cRXP_ENEMY_Vorlus Elendshuf|r. Plündert ihn für sein |cRXP_LOOT_Horn|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob Vorlus Vilehoof
step << Warrior
    #softcore
	#sticky
    #completewith next
    .goto 1438/1,1594.62,9988.44
    .deathskip >>Sterbt absichtlich, nachdem ihr das Furbolg-Gebiet verlassen habt, und respawnt im Darnassus
step << Warrior
    #hardcore
    #completewith next
    .goto 1457/1,2070.42,9979.310,100 >> Reist nach Darnassus
step << Warrior
    .goto 1457/1,2331.89,9994.09
    .target Elanaria
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elanaria|r
    .turnin 1683 >> Gebt die Quest Vorlus Elendshuf ab
--	.accept 1686 >> Accept The Shade of Elura
step
    .goto 1457/1,2240.100,10121.000
    >>Geht zum Wirtshaus in Darnassus und benutzt den |T133298:0|t[|cRXP_LOOT_Mondanhänger|r]
    .complete 98067,3
    .use 279378
step << Druid NightElf
    .goto 1457/1,2563.92,10179.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mathrengyl Bearwalker|r auf der mittleren Ebene
    .turnin 5931 >> Gebt die Quest Zurück nach Darnassus ab
    .target Mathrengyl Bearwalker
    .accept 6001 >> Akzeptiert die Quest Körper und Herz
step
    .goto 1457/1,2569.91,10173.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Erzdruide Fandral Staghelm|r
    .turnin 940 >> Abgeben Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >> Akzeptiert die Quest Der Hain der Uralten
step
    .goto 1457/1,2569.91,10173.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Erzdruide Fandral Staghelm|r
    .target Arch Druid Fandral Staghelm
    .turnin 935 >> Gebt die Quest Die Krone der Erde ab
step << Hunter
    .goto 1457/1,2511.04,10178.01
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jocaste|r
    .turnin 6103 >> Gebt die Quest Die Ausbildung des Tiers ab
step << Hunter
    >>|cRXP_WARN_Geht die Rampe auf der rechten Seite von|r |cRXP_FRIENDLY_Jocaste|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Silvaria|r
    .goto 1457/1,2491.75,10176.21
    .trainer >>Erlernen Begleiter spells
    .target Silvaria
step
    .goto 1457/1,2579.300,10129.000
    >>Geht zum Eingang der Cenarion-Feste und benutzt den |T133298:0|t[|cRXP_LOOT_Mondanhänger|r]
    .complete 98067,1
    .use 279378
step << Rogue
    .goto 1457/1,2608.06,10113.26,8,0
    .goto 1457/1,2546.89,10083.69
    .target Syurna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Syurna|r
    .turnin 2242 >> Gebt die Quest Das Schicksal ruft ab
step
    .goto 1457/1,2534.25,10085.60
    .target Rellian Greenspyre
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rellian Greenspyre|r
    .turnin 923 >> Gebt die Quest Tumore ab
step
    .goto 1457/1,2499.900,9932.601
    >>Geht zum Bankhaus in Darnassus und benutzt den |T133298:0|t[|cRXP_LOOT_Mondanhänger|r]
    .complete 98067,2
    .use 279378
step
    .goto 1457/1,2508.68,9605.98--c:Darnassus,40.6,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Dalia Sunblade|r
    .turnin 98067 >>Gebt die Quest Die Augen der Schildwache ab
    .target Sentinel Dalia Sunblade
step
    .goto 1457/1,2517.99,9584.25,10,0
    .goto 1457/1,2550.48,9631.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priesterin A'moora|r
    .turnin 2518 >> Gebt die Quest Tränen des Mondes ab
    .target Priestess A'moora
    .accept 2520 >> Akzeptiert die Quest Sathrahs Opferung
step
    .goto 1457/1,2518.20,9632.80
	.use 8155 >>|cRXP_WARN_Benutzt|r |T135652:0|t[Sathrahs Opferung] |cRXP_WARN_am Brunnen|r
    .complete 2520,1 --Offer the sacrifice at the fountain
step
    #label end
    .goto 1457/1,2517.99,9584.25,10,0
    .goto 1457/1,2550.48,9631.88
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Priesterin A'moora|r
    .turnin 2520 >> Gebt die Quest Sathrahs Opferung ab
-- step << Druid
-- #ssf
--     #season 0
--     .goto 1457/1,2430.89,9758.21
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Firodren Mooncaller|r
--     .train 2366 >> Train |T136065:0|t[Herbalism]
--     >>|T136065:0|t[Herbalism] |cRXP_WARN_is required to gather 5|r |T134187:0|t[Earthroot] |cRXP_WARN_for an important class quest soon. You can unlearn it afterwards|r
--     .target Firodren Mooncaller
step
    #ah
    .goto 1457/1,2343.10,9856.95,-1
    .goto 1457/1,2341.74,9872.610,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit einem |cRXP_FRIENDLY_Darnassus Auktionator|r
    >>Kauft die folgenden Gegenstände für eine sofortige Abgabe später in der Dunkelküste
    -- >>|T134187:0|t[Earthroot] << Druid era
    >>|T133912:0|t[Dunkelküstenbarsch]
    >>|T133972:0|t[Schreiterfleisch]
    >>|T134711:0|t[Schwaches Zauberöl] << Priest/Druid
    >>|T133906:0|t[Geräucherter Weisenfisch] << Priest/Druid
    >>|T134711:0|t[Schwaches Zauberöl] |cRXP_WARN_und|r |T133906:0|t[Geräucherter Weisenfisch] |cRXP_WARN_wird in frühen Stufen einen hohen DPS-Anstieg bieten|r << Priest/Druid
    >>|cRXP_WARN_Sucht auch nach hohem DPS|r |T132317:0|t[Zauberstab] |cRXP_WARN_-Verbesserungen, die ihr jetzt/bald nutzen könnt|r << Priest
    *|cRXP_WARN_Überspringt diesen Schritt, wenn ihr nichts kaufen möchtet|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    -- .collect 2449,5,6123,1 << Druid
    .collect 20744,1 << Priest/Druid -- Minor Wizard Oil (1)
    .collect 21072,20 << Priest/Druid -- Smoked Sagefish (20)
    .target Auctioneer Tolon
    .target Auctioneer Golothas
step << Hunter
    .goto 1457/1,2258.91,9793.71
    .line Darnassus,60.65,66.47,61.68,63.73,62.36,58.91,62.32,55.22,65.77,55.75,67.88,57.48,68.35,59.98,65.14,68.14,64.34,71.36,62.28,68.79,60.65,66.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSucht nach |cRXP_FRIENDLY_Jaeana|r, sie patrouilliert um die Terrasse der Händler
    >>|cRXP_BUY_Kauft einen Stapel von|r |T133972:0|t[Zähes Stockfleisch] |cRXP_BUY_von ihr.
    >>|cRXP_WARN_Ihr werdet es brauchen um die Eule von Euch zu füttern, sie essen nur Fleisch und es gibt keinen Fleischhändler in der Dunkelküste|r
    .collect 117,15
    .target Jaeana
step << Hunter/Warrior/Priest/Sod Rogue
    .goto 1457/1,2329.19,9908.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ilyenia Mondfeuer|r
    .skipgossipid 96881
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
    .goto 1457/1,2316.49,9924.41
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariyell Himmelsschatten|r
    >>|cRXP_BUY_Kaufe und rüste einen|r |T135489:0|t[Laminierter Doppelbogen] aus
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    .goto 1457/1,2316.49,9924.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariyell Himmelsschatten|r
	.vendor >>|cRXP_BUY_Kaufe|r |T132382:0|t[Scharfe Pfeile]
    .target Ariyell Skyshadow
step << Hunter
    #completewith next
    +|cRXP_WARN_Legt den|r |T135489:0|t[Laminierter Doppelbogen] an
    .use 2507
    .itemcount 2507,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.76
step << Warrior
    .goto 1457/1,2316.49,9924.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariyell Himmelsschatten|r
    >>|cRXP_BUY_Kauft einen|r |T135147:0|t[Knorriger Stab]|cRXP_BUY_. Legt ihn auf Stufe 15 an|r
	.collect 2030,1
    .target Ariyell Skyshadow
    .money <0.5022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Warrior
    .goto 1457/1,2316.49,9924.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariyell Himmelsschatten|r
    >>|cRXP_BUY_Kauft einen|r |T135154:0|t[Hirtenstab]|cRXP_BUY_. Legt ihn ab Stufe 11 an|r << era
    >>|cRXP_BUY_Kauft und legt einen|r |T135154:0|t[Hirtenstab] an |cRXP_BUY_falls ihr euch keinen |r |T135147:0|t[Knorriger Stab] leisten könnt << sod
	.collect 854,1
    .target Ariyell Skyshadow
    .money <0.3022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
step << Warrior
    .goto 1457/1,2316.49,9924.41
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
step << Rogue
    .goto 1457/1,2275.00,9775.50
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rellian Greenspyre|r auf der zweiten Etage
    >>|cRXP_BUY_Kauft einen|r |T135641:0|t[Ausbalancierter Wurfdolch]
    .collect 2946,1 -- Balanced Throwing Dagger
    .target Turian
step
    #completewith NessaShadowsong
    .goto 1457/1,2636.53,9956.80
    .zone Teldrassil >> Nimm das Lila Portal nach Rut'Theran
    .zoneskip Darkshore
    .subzoneskip 702
step
    .goto 1438/1,950.52,8694.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6344 >> Gebt die Quest Nessa Shadowsong ab
    .target Nessa Shadowsong
    .accept 6341 >> Akzeptiert die Quest Die Beute von Teldrassil
step
    #label NessaShadowsong
    #optional
    .goto 1438/1,950.52,8694.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6343 >> Gebt die Quest Rückkehr zu Nessa ab
    .isOnQuest 6343
    .target Nessa Shadowsong
step
    .goto 1438/1,841.10,8640.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vesprystus|r
    .turnin 6341 >> Gebt die Quest Die Arten von Teldrassil ab
    .target Vesprystus
    .accept 6342 >> Akzeptiert die Quest Flug nach Auberdine
step
    .goto 1438/1,841.10,8640.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Fliegt zur Dunkelküste
    .target Vesprystus
]])
