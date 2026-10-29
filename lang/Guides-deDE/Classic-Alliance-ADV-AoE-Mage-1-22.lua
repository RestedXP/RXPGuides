if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Human Mage
#name 1-10 Fortgeschrittener AoE-Guide für Mensch Magier im Wald von Elwynn
#version 2
#group RestedXP ADV AoE Allianz Magier
#defaultfor Human Mage
#next 10-11 Fortgeschrittene AoE-Guide für Mensch Magier in Dun Morogh


step << !Human Mage
    #season 2
    #completewith next
    +In Season of Discovery solltet ihr NICHT außerhalb der Startzone der Rasse von Euch als Magier starten, da ihr sond die erste Rune von Euch nicht erhalten könnt (|T133816:0|t[Handschuhe prägen - Eislanze])
step
    #completewith next
    +Ihr habt den Erweiterten-Leitfaden ausgewählt. Dies ist der schnellste Leitfaden für die schnellste Klasse des Spiels (Allianzmagier). Daher werden viele Spezialmechaniken verwendet sowie höchst schwierige AoE-Pulls. Bleibt ausdauernd, während ihr lernt! Viel Glück!
step
    #completewith next
    .goto Elwynn Forest,48.45,45.80,50,0
    +|cRXP_WARN_Tötet |cRXP_ENEMY_Junge Wölfe|r. Plündert sie, bis ihr 10 Kupfer Wert an Verkäufsgegenständen habt|r
    .mob Young Wolf
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Willem|r
    .accept 783 >> Akzeptiert die Quest Die Bedrohung von innen
    .target Deputy Willem
step
    .goto Elwynn Forest,47.48,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Danil|r
    .vendor >> Verkauft den trash, bis ihr 10+ Kupfer habt
    .target Brother Danil
step
    .goto Elwynn Forest,48.26,41.93,15,0
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_McBride|r innerhalb
    .turnin 783 >> Gebt die Quest Die Bedrohung von innen ab
    .accept 7 >> Akzeptiert die Quest Säuberung im Koboldlager
    .target Marshal McBride
step
    #completewith next
    .goto Elwynn Forest,48.97,41.14,10,0
    .goto Elwynn Forest,49.26,40.67,10,0
    .goto Elwynn Forest,49.66,40.15,10,0
    .goto Elwynn Forest,49.44,39.89,5,0
    >>Springt von der Treppe auf das Geländer
    .goto Elwynn Forest,49.66,39.41,10 >>Geht |cRXP_FRIENDLY_Khelden|r die Treppe hoch
step
    .goto Elwynn Forest,49.66,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Khelden|r
    .train 1459 >> Erlernt |T135932:0|t[Arkane Intelligenz]
    .target Khelden Bremen
step
    #completewith next
    .goto Elwynn Forest,49.66,40.15,10,0
    .goto Elwynn Forest,49.26,40.67,10,0
    .goto Elwynn Forest,48.97,41.14,10,0
    .goto Elwynn Forest,48.171,42.943,10 >>Reisen zu |cRXP_FRIENDLY_Willem|r
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Willem|r
    .accept 5261 >> Akzeptiert die Quest Eagan Peltskinner
    .target Deputy Willem
step
    #completewith next
    .goto Elwynn Forest,46.10,42.57,70,0
    .goto Elwynn Forest,46.59,39.35
    +|cRXP_WARN_Tötet |cRXP_ENEMY_Junge Wölfe|r. Plündert sie, bis ihr 50 Kupfer Wert an Verkaufsgegenständen habt (einschließlich eurer Rüstung)|r
    .mob Young Wolf
step
    .goto Elwynn Forest,47.48,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Danil|r
    >>|cRXP_BUY_Kauft 10|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    .vendor >> Verkauft Müll
    .collect 159,10,7,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto Elwynn Forest,48.94,40.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eagan|r
    .turnin 5261 >> Gebt die Quest Eagan Peltskinner ab
    .accept 33 >> Akzeptiert die Quest Wölfe an der Grenze
    .target Eagan Peltskinner
step
    #completewith next
    >>Tötet |cRXP_LOOT_Junger Wolf|r und |cRXP_LOOT_Wilder Waldwolf|r. Plündert sie für |cRXP_LOOT_Zähes Wolfsfleisch|r
    >>Fokussiert euch auf |cRXP_LOOT_Junge Wölfe|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
	.mob Young Wolf
    .mob Timber Wolf
step
#loop
	.line Elwynn Forest,47.01,35.68,47.70,35.04,49.81,35.14,49.82,36.23,49.18,37.16,47.01,35.68
	.goto Elwynn Forest,47.01,35.68,35,0
	.goto Elwynn Forest,47.70,35.04,35,0
	.goto Elwynn Forest,49.81,35.14,35,0
	.goto Elwynn Forest,49.82,36.23,35,0
	.goto Elwynn Forest,49.18,37.16,35,0
	.goto Elwynn Forest,47.01,35.68,35,0
    >>Tötet |cRXP_ENEMY_Koboldgezücht|r
    >>|cRXP_WARN_Tötet Stufe 1 |cRXP_ENEMY_Koboldgezücht|r, falls möglich|r
    .complete 7,1 --Kill Kobold Vermin (x10)
	.mob Kobold Vermin
step
#loop
	.line Elwynn Forest,49.32,37.91,48.24,37.88,46.18,37.29,45.69,39.05,46.03,40.91,48.04,39.55,49.32,37.91
	.goto Elwynn Forest,49.32,37.91,35,0
	.goto Elwynn Forest,48.24,37.88,35,0
	.goto Elwynn Forest,46.18,37.29,35,0
	.goto Elwynn Forest,45.69,39.05,35,0
	.goto Elwynn Forest,46.03,40.91,35,0
	.goto Elwynn Forest,48.04,39.55,35,0
	.goto Elwynn Forest,49.32,37.91,35,0
    >>Tötet |cRXP_LOOT_Junger Wolf|r und |cRXP_LOOT_Wilder Waldwolf|r. Plündert sie für |cRXP_LOOT_Zähes Wolfsfleisch|r
    >>Fokussiert euch auf |cRXP_LOOT_Junge Wölfe|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
	.mob Young Wolf
    .mob Timber Wolf
step
    .goto Elwynn Forest,48.94,40.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eagan|r
    .turnin 33,1 >> Gebt die Quest Wölfe an der Grenze ab
    .target Eagan Peltskinner
step
    .goto Elwynn Forest,47.48,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Danil|r
    |cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .vendor >>Verkauft Müll
    .collect 159,10,15,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_McBride|r innerhalb
    .turnin 7 >> Gebt die Quest Säuberung im Koboldlager ab
    .accept 15 >> Akzeptiert die Quest Überprüfung der Echokammmine
    .accept 3104 >> Akzeptiert die Quest Glyphen-Brief
    .target Marshal McBride
step
#loop
	.line Elwynn Forest,47.25,36.41,47.39,35.77,47.35,34.06,46.29,32.42,47.75,32.77,50.11,34.98,47.25,36.41
	.goto Elwynn Forest,47.25,36.41,35,0
	.goto Elwynn Forest,47.39,35.77,35,0
	.goto Elwynn Forest,47.35,34.06,35,0
	.goto Elwynn Forest,46.29,32.42,35,0
	.goto Elwynn Forest,47.75,32.77,35,0
	.goto Elwynn Forest,50.11,34.98,35,0
	.goto Elwynn Forest,47.25,36.41,35,0
    >>Tötet |cRXP_ENEMY_Koboldtagelöhner|r
    .complete 15,1 --Kill Kobold Worker (x10)
	.mob Kobold Worker
step
#loop
	.line Elwynn Forest,49.32,37.91,48.24,37.88,46.18,37.29,45.69,39.05,46.03,40.91,48.04,39.55,49.32,37.91
	.goto Elwynn Forest,49.32,37.91,35,0
	.goto Elwynn Forest,48.24,37.88,35,0
	.goto Elwynn Forest,46.18,37.29,35,0
	.goto Elwynn Forest,45.69,39.05,35,0
	.goto Elwynn Forest,46.03,40.91,35,0
	.goto Elwynn Forest,48.04,39.55,35,0
	.goto Elwynn Forest,49.32,37.91,35,0
    .xp 3+1110 >> Farmt bis 1110+/1400 XP
	.mob Young Wolf
	.mob Kobold Vermin
    .mob Timber Wolf
 step
    .goto Elwynn Forest,47.48,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Danil|r
    >>|cRXP_BUY_Kauft 10|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    .vendor >>Verkauft Müll
    .collect 159,10,15,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_McBride|r innerhalb
    .turnin 15 >> Gebt die Quest Überprüfung der Echokammmine ab
    .accept 21 >> Akzeptiert die Quest Scharmützel in der Echokammmine
    .target Marshal McBride
step
    #completewith next
    .goto Elwynn Forest,48.97,41.14,10,0
    .goto Elwynn Forest,49.26,40.67,10,0
    .goto Elwynn Forest,49.66,40.15,10,0
    .goto Elwynn Forest,49.44,39.89,5,0
    >>Springt von der Treppe auf das Geländer
    .goto Elwynn Forest,49.66,39.41,10 >>Geht |cRXP_FRIENDLY_Khelden|r die Treppe hoch
step
    #season 0
    .goto Elwynn Forest,49.66,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Khelden|r
    .turnin 3104 >> Gebt die Quest Glyphen-Brief ab
    .train 116 >> Erlernt |T135846:0|t[Frostblitz]
    .target Khelden Bremen
step
    #season 2
    .goto Elwynn Forest,49.66,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Khelden|r
    .accept 77620 >> Akzeptiert die Quest Zauberforschung << Human
    .turnin 3104 >> Gebt die Quest Glyphen-Brief ab
    .train 116 >> Erlernt |T135846:0|t[Frostblitz]
    .target Khelden Bremen
step
    #completewith next
    .goto Elwynn Forest,49.66,40.15,10,0
    .goto Elwynn Forest,49.26,40.67,10,0
    .goto Elwynn Forest,48.97,41.14,10,0
    .goto Elwynn Forest,48.171,42.943,10 >>Reist zu |cRXP_FRIENDLY_Willem|r
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Willem|r
    .accept 18 >> Akzeptiert die Quest Bruderschaft der Diebe
    .target Deputy Willem
step
    #season 2
    #loop
    #label CALEENCI
    #completewith RedBurlapBandana
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    >>Tötet |cRXP_ENEMY_Rohling der Defias|r. Plündert sie für |T134939:0|t|cRXP_LOOT_[Zaubernotizen: NSZEIELA]|r
    >>HINWEIS: Ihr werdet|cRXP_WARN_ |T133816:0|t[Handschuhe prägen - Eislanze]  nicht trainieren können|rhier, da ihr nur eine|cRXP_WARN_ |T133736:0|t[Verständnisfibel] |rin eurer Rassenstartzone|cRXP_WARN_ bekommen könnt|r << !Human
    .collect 203751,1,77620,1 -- Spell Notes: CALE ENCI (1)
    .mob Defias Thug
    .train 401760,1
step << Human
    #season 2
    #requires CALEENCI
    #completewith RedBurlapBandana
    .train 401760 >>Benutzt die|cRXP_WARN_ |T134939:0|t|r[Zaubernotizen: NSZEIELA]|cRXP_LOOT_ um das|r |T133816:0|t[Handschuhe prägen - Eislanze] |cRXP_WARN_zu lernen|r
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step
    #loop
    #label RedBurlapBandana
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
#loop
	.line Elwynn Forest,51.14,49.29,52.55,48.75,53.81,48.09,54.58,49.02,55.15,47.86,54.76,45.96,53.81,44.79,,51.14,49.29
	.goto Elwynn Forest,51.14,49.29,35,0
	.goto Elwynn Forest,52.55,48.75,35,0
	.goto Elwynn Forest,53.81,48.09,35,0
	.goto Elwynn Forest,54.58,49.02,35,0
	.goto Elwynn Forest,55.15,47.86,35,0
	.goto Elwynn Forest,54.76,45.96,35,0
	.goto Elwynn Forest,53.81,44.79,35,0
	.goto Elwynn Forest,51.14,49.29,35,0
    >>Tötet |cRXP_ENEMY_Rohling der Defias|r. Plündert sie für |cRXP_LOOT_Rotes Sackleinenkopftuch|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob Defias Thug
step
    #optional
    #season 2
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,50,0
    .goto Elwynn Forest,53.89,50.52,50,0
    .goto Elwynn Forest,55.09,49.00,50,0
    .goto Elwynn Forest,55.43,45.87,50,0
    .goto Elwynn Forest,53.86,47.05,50,0
    >>Tötet |cRXP_ENEMY_Rohling der Defias|r. Plündert sie für |T134939:0|t|cRXP_LOOT_[Zaubernotizen: NSZEIELA]|r
    >>HINWEIS: Ihr werdet|cRXP_WARN_ |T133816:0|t[Handschuhe prägen - Eislanze]  nicht trainieren können|rhier, da ihr nur eine|cRXP_WARN_ |T133736:0|t[Verständnisfibel] |rin eurer Rassenstartzone|cRXP_WARN_ bekommen könnt|r << !Human
    .collect 203751,1,77620,1 -- Spell Notes: CALE ENCI (1)
    .mob Defias Thug
    .train 401760,1
step << Human
    #optional
    #season 2
    .train 401760 >>Benutzt die|cRXP_WARN_ |T134939:0|t|r[Zaubernotizen: NSZEIELA]|cRXP_LOOT_ um das|r |T133816:0|t[Handschuhe prägen - Eislanze] |cRXP_WARN_zu lernen|r
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Willem|r
    .turnin 18,5 >> Gebt die Quest Bruderschaft der Diebe ab
    .accept 6 >> Akzeptiert die Quest Kopfgeld auf Garrick Padfoot
    .accept 3903 >> Akzeptiert die Quest Milly Osworth
    .target Deputy Willem
step
    #completewith Laborer
    +Rüstet den |T135145:0|t[Milizsstecken] aus
    .use 1159
    .itemcount 1159,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.7
step
    .goto Elwynn Forest,47.48,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Danil|r
    >>|cRXP_BUY_Kauft 10|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    .vendor >> Verkauft Müll
    .collect 159,10,21,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    #completewith next
    .goto Elwynn Forest,47.76,31.62,40 >>Geht in die Mine
step
    #label Laborer
    .goto Elwynn Forest,47.99,30.66,40,0
    .goto Elwynn Forest,48.32,28.84,40,0
    .goto Elwynn Forest,48.58,26.57,40,0
    .goto Elwynn Forest,49.95,25.74,40,0
    .goto Elwynn Forest,50.27,26.83
    >>Tötet |cRXP_ENEMY_Koboldhilfsarbeiter|r
    .complete 21,1 --Kill Kobold Laborer (x12)
	.mob Kobold Laborer
step
    .goto Elwynn Forest,50.70,39.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Milly|r
    .turnin 3903 >> Gebt die Quest Milly Osworth ab
    .accept 3904 >> Akzeptiert die Quest Millys Ernte
    .target Milly Osworth
step
    #completewith Harvest
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto Elwynn Forest,53.68,47.29,35,0
	.goto Elwynn Forest,52.82,48.78,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,53.85,50.68,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,53.68,47.29,35,0
    .xp 5+1175 >> Farmt bis 1175+/2800 XP
    .mob Defias Thug
step
    #completewith next
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto Elwynn Forest,53.68,47.29,35,0
	.goto Elwynn Forest,52.82,48.78,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,53.85,50.68,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,53.68,47.29,35,0
    >>Plündert die |cRXP_PICK_Traubenkörbe|r vom Boden
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto Elwynn Forest,57.52,48.25
    >>Tötet |cRXP_ENEMY_Garrick Padfoot|r. Plündert sie für |cRXP_LOOT_Garricks Kopf|r
    .complete 6,1 --Collect Garrick's Head (x1)
	.mob Garrick Padfoot
step
    #label Harvest
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto Elwynn Forest,53.68,47.29,35,0
	.goto Elwynn Forest,52.82,48.78,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,53.85,50.68,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,53.68,47.29,35,0
    >>Plündert die |cRXP_PICK_Traubenkörbe|r vom Boden
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto Elwynn Forest,53.68,47.29,35,0
	.goto Elwynn Forest,52.82,48.78,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,53.85,50.68,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,53.68,47.29,35,0
    .xp 5+1175 >> Farmt bis 1175+/2800 XP
    .mob Defias Thug
step
    .goto Elwynn Forest,50.70,39.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Milly|r
    .turnin 3904 >>Gebt die Quest Millys Ernte ab
    .accept 3905 >>Akzeptiert die Quest Traubenliste
    .target Milly Osworth
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Willem|r
    .turnin 6,1 >> Gebt die Quest Kopfgeld auf Garrick Padfoot ab
    .target Deputy Willem
step
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_McBride|r innerhalb
    .turnin 21,3 >> Gebt die Quest Scharmützel in der Echokammmine ab
    .accept 54 >> Akzeptiert die Quest Meldung in Goldhain
    .target Marshal McBride
step
    #completewith next
    .goto Elwynn Forest,49.18,41.84,10,0
    .goto Elwynn Forest,49.55,41.56,10,0
    .goto Elwynn Forest,49.39,40.98,10,0
    .goto Elwynn Forest,48.98,41.17,10,0
    .goto Elwynn Forest,49.20,41.81,10,0
    .goto Elwynn Forest,49.57,41.46,10,0
    .goto Elwynn Forest,49.33,40.93,10,0
    >>Geht die Treppe nach oben
    .goto Elwynn Forest,49.471,41.586,10 >> Reisen zu |cRXP_FRIENDLY_Neals|r
step
    .goto Elwynn Forest,49.471,41.586
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Neals|r
    .turnin 3905,1 >>Gebt die Quest Traubenliste ab
    .target Brother Neals
step << Human
    #season 2
    #optional
    #completewith next
    .goto 1429,48.79,41.58,12,0
    .goto 1429,48.975,41.146,12,0
    .goto 1429,49.262,40.633,12,0
    .goto 1429,49.510,40.095,6,0
    .goto 1429,49.691,40.230,6,0
    .goto 1429,49.595,40.673,6,0
    .goto 1429,49.324,40.492,6,0
    .goto 1429,49.436,39.881,10,0
    .goto Elwynn Forest,49.661,39.402,12 >>Geht die Treppe hinunter und geht zu |cRXP_FRIENDLY_Khelden Bremen|r
    .isQuestComplete 77620
step << Human
    #season 2
    .goto Elwynn Forest,49.661,39.402
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Khelden Bremen|r innerhalb
    .turnin 77620 >> Gebt die Quest Zauberforschung ab
    .target Khelden Bremen
    .isQuestComplete 77620
step
    .goto Elwynn Forest,45.56,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falkhaan|r
    .accept 2158 >> Akzeptiert die Quest Ruhe und Entspannung
    .target Falkhaan Isenstrider
step
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dughan|r
    .turnin 54 >> Gebt die Quest Meldung in Goldhain ab
    .accept 62 >> Die Fargodeep Mine annehmen
    .target Marshal Dughan
step
    .goto Elwynn Forest,43.283,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_William|r durch die Wand, während ihr die Taverne betretet
    .accept 60 >> Koboldkerzen annehmen
    .target William Pestle
step
    #completewith next
    .home >> Setzt euren Ruhestein in Goldhain
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Farley|r
step
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Farley|r
    .turnin 2158,2 >> Gebt die Quest Ruhe und Entspannung ab
    .vendor 295 >> Verkauft-Müll. |cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_bis ihr auf 2 Silber seid|r
    .target Innkeeper Farley
step
    .goto Elwynn Forest,43.25,66.25
    >>Springt unten auf den Kronleuchter
    >>Sprecht mit |cRXP_FRIENDLY_Zaldimar|r durch die Wand
    .trainer >> Erlerne die Klassenfähigkeiten (Feuerball Rang 2, Feuerschlag)
	.target Zaldimar Wefhellt
step
    .goto Elwynn Forest,42.14,67.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Remy|r
    .accept 47 >> Tauschhandel mit Goldstaub annehmen
    .target Remy "Two Times"
step
    #completewith BoarMeat1
    >>Tötet |cRXP_ENEMY_Steinhauereber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    .collect 769,4,86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bernice|r und |cRXP_FRIENDLY_Ma|r
    .accept 85 >> Verlorene Halskette annehmen
    .target +"Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
    .accept 88 >> Prinzessin muss sterben! annehmen
	.goto Elwynn Forest,34.660,84.482
    .target +Ma Stonefield
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r. Plündert sie für |cRXP_LOOT_Goldstaub|r und |cRXP_LOOT_Große Kerze|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
step
    .goto Elwynn Forest,43.132,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Billy|r
    .turnin 85 >> Gebt die Quest Die verlorene Halskette ab
    .accept 86 >> Pastete für Billy annehmen
    .target Billy Maclure
step
    #label BoarMeat1
    .goto Elwynn Forest,43.16,89.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maybell|r innerhalb
    .accept 106 >> Junge liebende annehmen
    .target Maybell Maclure
step
    .goto Elwynn Forest,42.36,89.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Kauft so viel|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm wie ihr könnt|r
    .vendor 258 >>Verkauft Müll
    .target Joshua Maclure
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Steinhauereber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    .collect 769,4,86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    .goto Elwynn Forest,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tommy|r
    .turnin 106 >> Gebt die Quest Junge Liebende ab
    .accept 111 >> Gespräch mit Oma annehmen
    .target Tommy Joe Stonefield
step
#loop
	.line Elwynn Forest,31.15,85.36,33.08,86.64,33.51,85.22,32.17,83.88,31.15,85.36
	.goto Elwynn Forest,31.15,85.36,35,0
	.goto Elwynn Forest,33.08,86.64,35,0
	.goto Elwynn Forest,33.51,85.22,35,0
	.goto Elwynn Forest,32.17,83.88,35,0
	.goto Elwynn Forest,31.15,85.36,35,0
    >>Tötet |cRXP_ENEMY_Steinhauereber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    .collect 769,4,86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bernice|r und dann mit |cRXP_FRIENDLY_Gramma|r innerhalb
    .turnin 86 >> Gebt die Quest Pastete für Billy ab
    .accept 84 >> Zurück zu Billy annehmen
    .target +"Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
    .turnin 111 >> Gebt die Quest Gespräch mit Oma ab
    .accept 107 >> Nachricht an William annehmen
    .target +Gramma Stonefield
    .goto Elwynn Forest,34.94,83.86
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r. Plündert sie für |cRXP_LOOT_Goldstaub|r und |cRXP_LOOT_Große Kerze|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
step
    .goto Elwynn Forest,43.132,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Billy|r
    .turnin 84 >> Gebt die Quest Zurück zu Billy ab
    .accept 87 >> Goldzahn annehmen
    .target Billy Maclure
step
    .goto Elwynn Forest,42.36,89.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Kauft so viel|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm wie ihr könnt|r
    .vendor 258 >>Verkauft Müll
    .target Joshua Maclure
    .itemcount 1179,<8
step
    #completewith Mine
    .goto Elwynn Forest,39.00,82.27,15 >>BETRETET die Tiefenschachtmine
step
    #completewith Goldtooth
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Koboldminenarbeiter|r. Plündert sie für |cRXP_LOOT_Goldstaub|r und |cRXP_LOOT_Große Kerze|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label Mine
    .goto Elwynn Forest,39.07,80.87,12,0
    .goto Elwynn Forest,39.71,79.92
    >>BETRETET einen der größeren offenen Räume in der Tiefenschachtmine
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #completewith next
    .goto Elwynn Forest,39.95,78.81,12,0
    .goto Elwynn Forest,40.43,78.33,12,0
    .goto Elwynn Forest,41.73,78.03,40 >>Geht in Richtung |cRXP_ENEMY_Goldzahn|r
step
    #label Goldtooth
    .goto Elwynn Forest,41.73,78.03
    >>Tötet |cRXP_ENEMY_Goldzahn|r. Plündert ihn für |cRXP_LOOT_Bernice's Halskette|r
    .complete 87,1 --Collect Bernice's Necklace (x1)
    .mob Goldtooth
step
#loop
	.line Elwynn Forest,39.14,82.87,39.16,84.79,37.81,85.40,36.76,83.19,38.02,81.70,39.14,82.87
	.goto Elwynn Forest,39.14,82.87,35,0
	.goto Elwynn Forest,39.16,84.79,35,0
	.goto Elwynn Forest,37.81,85.40,35,0
	.goto Elwynn Forest,36.76,83.19,35,0
	.goto Elwynn Forest,38.02,81.70,35,0
	.goto Elwynn Forest,39.14,82.87,35,0
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Koboldminenarbeiter|r. Plündert sie für |cRXP_LOOT_Goldstaub|r und |cRXP_LOOT_Große Kerze|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
    .mob Kobold Miner
step << skip
    #completewith next
    .goto Elwynn Forest,41.29,79.85,-1
    .goto Elwynn Forest,41.75,78.49,-1
    .goto Elwynn Forest,41.91,77.81,-1
    .goto Elwynn Forest,40.15,80.12,-1
    .goto Elwynn Forest,39.90,81.46,-1
    .goto Elwynn Forest,40.86,81.24,-1
    .goto Elwynn Forest,40.32,79.31,-1
    .goto Elwynn Forest,39.30,60.48,30 >>|cRXP_WARN_Führt einen Logout-Skip in der Höhle durch, ndem du auf einen Schredder, die schwimmenden Baumstämme, die Kisten oder die Lampe des Lorenwagens springst und dich anschließend aus- und wieder einloggst|r
    >>|cRXP_WARN_Alternativ lauft zurück nach Goldhain|r
    >>|cRXP_WARN_HINWEIS: Itemrack kann derzeit nach dem Logout-Skip Probleme verursachen, wobei die Ingame-UI einfriert. Stellt sicher, dass ihr das Add-on deaktiviert oder erstellt ein /neuladen-Makro, auf das ihr klicken könnt, falls das passiert|r
    .link https://www.youtube.com/watch?v=SWBtPqm5M0Q >>|cRXP_WARN_HIER KLICKEN um den logout skip zu lernen|r
step
    #completewith next
    .subzone 87 >> Kehrt nach Goldhain zurück
step
    .goto Elwynn Forest,42.14,67.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Remy|r
    .turnin 47 >> Gebt die Quest Tauschhandel mit Goldstaub ab
    .accept 40 >> Gefahr aus dem Wasser annehmen
    .target Remy "Two Times"
step
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dughan|r
    .turnin 40 >> Gebt die Quest Gefahr aus dem Wasser ab
    .accept 35 >> Weitere Sorgen annehmen
    .turnin 62 >> Die Fargodeep Mine abgeben
    .accept 76 >> Die Jaspismine annehmen
    .target Marshal Dughan
step
    .goto Elwynn Forest,43.283,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_William|r durch die Wand, während ihr die Taverne betretet
    .turnin 60 >> Koboldkerzen abgeben
    .accept 61 >> Lieferung nach Sturmwind annehmen
    .turnin 107 >> Gebt die Quest Nachricht an William ab
    .accept 112 >> Akzeptiert die Quest Die Suche nach dem Tang
    .target William Pestle
step
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Farley|r
    >>|cRXP_BUY_Kauft 35|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .vendor >>Verkauft Müll
    .collect 1179,35,432,1 --Ice Cold Milk (35)
    .target Innkeeper Farley
step
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brog|r
    .vendor >>|cRXP_BUY_Kauft eine|r |T133634:0|t[Kleine Braune Tasche] |cRXP_BUY_von ihm|r
	.target Brog Hamfist
    .money <0.05
step
    #completewith next
    .goto Elwynn Forest,43.24,65.96,10,0
    .goto Elwynn Forest,42.88,65.52,12 >> Verlasst das Gasthaus
step
    .goto Elwynn Forest,50.45,62.69,50,0
    .goto Elwynn Forest,51.09,64.75,50,0
    .goto Elwynn Forest,52.66,64.95,50,0
    .goto Elwynn Forest,54.10,62.74,50,0
    .goto Elwynn Forest,57.48,63.21,50,0
    .goto Elwynn Forest,56.37,66.50
    >>Tötet |cRXP_ENEMY_Murlocbachläufer|r und |cRXP_ENEMY_Murlocs|r. Plündert sie für |cRXP_LOOT_Kristalltangwedel|r
    >>|cRXP_WARN_Seid vorsichtig, denn |cRXP_ENEMY_Murlocbachläufer|r haben|r |T132307:0|t[Erhöhte Bewegungsgeschwindigkeit]
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc Streamrunner
	.mob Murloc
step
    #completewith next
    .goto Elwynn Forest,61.66,53.96,12 >>BETRETET die Jaspismine
step
    .goto Elwynn Forest,61.19,51.47,12,0
    .goto Elwynn Forest,60.68,50.84,12,0
    .goto Elwynn Forest,60.40,50.16
    >>Folgt dem mittleren Pfad der Höhle
    >>|cRXP_WARN_Seid vorsichtig |cRXP_ENEMY_Koboldgeomant|r wirkt|r |T135812:0|t[Feuerball] |cRXP_WARN_(Fernzauber: welcher 30 Schaden)verursacht|r
    .complete 76,1 --Scout through the Jasperlode Mine
step
    #completewith next
    .goto Elwynn Forest,60.68,50.84,12,0
    .goto Elwynn Forest,61.19,51.47,12,0
    .goto Elwynn Forest,61.81,53.89,15 >>Verlasst die Jaspismine
step
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thomas|r
    .turnin 35 >> Gebt die Quest Weitere Sorgen ab
    .accept 37 >> Akzeptiert die Quest Suche nach den vermissten Wachen
    .accept 52 >> Akzeptiert die Quest Grenzschutz
    .target Guard Thomas
step
    #completewith next
    .goto Elwynn Forest,74.89,67.20,45,0
    .goto Elwynn Forest,72.59,65.60,45,0
    .goto Elwynn Forest,71.61,60.82,50,0
    >>Tötet alle |cRXP_ENEMY_Junge Waldbären|r, die ihr seht, und |cRXP_ENEMY_Streuner|r
    .complete 52,2 --Kill Young Forest Bear (x5)
    .unitscan +Young Forest Bear
    .complete 52,1 --Kill Prowler (x8)
	.mob +Prowler
step
    .goto Elwynn Forest,72.65,60.33
	>>Klickt den|cRXP_PICK_halb aufgefressener Körper|r auf dem Boden
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .turnin 37 >> Gebt die Quest Suche nach den vermissten Wachen ab
    .accept 45 >> Akzeptiert die Quest Rolfs Schicksal
step
    #completewith Bears
    .goto Elwynn Forest,78.78,60.94,70,0
    >>Tötet alle |cRXP_ENEMY_Junge Waldbären|r, die ihr seht, und |cRXP_ENEMY_Streuner|r
    .complete 52,2 --Kill Young Forest Bear (x5)
    .unitscan +Young Forest Bear
    .complete 52,1 --Kill Prowler (x8)
	.mob +Prowler
step
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raelen|r
    .accept 5545 >> Ein Bündel Probleme annehmen
    .target Supervisor Raelen
step
    #completewith next
    >>Sammelt die |cRXP_PICK_Kleinholzbündel|r am Fuß der Bäume
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    .goto Elwynn Forest,79.79,55.51,45 >> Reist zu |cRXP_PICK_Rolfs Leichnam|r
    .isOnQuest 45
step
    .goto Elwynn Forest,79.79,55.51
    >>Tötet die |cRXP_ENEMY_Murloclauerer|r und |cRXP_ENEMY_Murlocfutterwühler|r sie beschützen|cRXP_PICK_Rolfs Leichnam|r
    >>|cRXP_WARN_Ihr müsst möglicherweise einen töten und die anderen zurücksetzen|r
    >>Passt auf, denn |cRXP_ENEMY_Murloclauerer|r wirken |T132090:0|t[Meucheln] |cRXP_WARN_(Nahkampf Sofort: Macht doppelten Schaden von hinten) und |cRXP_ENEMY_Murlocfutterwühler|r wirken|r |T135915:0|t[Schwachen Trank trinken] |cRXP_WARN_(Selbstzauber: Heilt etwa 65 Schaden)|r
	>>Klickt |cRXP_PICK_Rolfs Leichnam|r auf dem Boden
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .turnin 45 >> Gebt die Quest Rolfs Schicksal ab
    .accept 71 >> Meldung bei Thomas annehmen
step
#loop
	.line Elwynn Forest,80.48,55.18,80.88,53.88,79.68,52.31,80.86,52.17,80.88,53.88,80.48,55.18,79.76,56.70,80.15,60.03,80.24,61.46,81.27,61.59,81.58,62.64,82.79,60.12,83.25,61.12,83.48,59.19,81.77,59.17,80.48,55.18
	.goto Elwynn Forest,80.48,55.18,35,0
	.goto Elwynn Forest,80.88,53.88,35,0
	.goto Elwynn Forest,79.68,52.31,35,0
	.goto Elwynn Forest,80.86,52.17,35,0
	.goto Elwynn Forest,80.88,53.88,35,0
	.goto Elwynn Forest,80.48,55.18,35,0
	.goto Elwynn Forest,79.76,56.70,35,0
	.goto Elwynn Forest,80.15,60.03,35,0
	.goto Elwynn Forest,80.24,61.46,35,0
	.goto Elwynn Forest,81.27,61.59,35,0
	.goto Elwynn Forest,81.58,62.64,35,0
	.goto Elwynn Forest,82.79,60.12,35,0
	.goto Elwynn Forest,83.25,61.12,35,0
	.goto Elwynn Forest,83.48,59.19,35,0
	.goto Elwynn Forest,81.77,59.17,35,0
	.goto Elwynn Forest,80.48,55.18,35,0
    >>Sammelt die |cRXP_PICK_Kleinholzbündel|r am Fuß der Bäume
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raelen|r
    .turnin 5545 >> Gebt die Quest Ein Bündel Probleme ab
    .target Supervisor Raelen
step
    #label Bears
    .goto Elwynn Forest,79.457,68.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sara|r
    .accept 83 >> Akzeptiert die Quest Rote Leinenwaren
    .target Sara Timberlain
step
    .goto Elwynn Forest,75.05,72.54,0
    .goto Elwynn Forest,74.89,67.20,45,0
    .goto Elwynn Forest,75.75,74.57,45,0
    .goto Elwynn Forest,76.66,76.68,45,0
    .goto Elwynn Forest,79.27,79.44,45,0
    .goto Elwynn Forest,81.57,76.85,45,0
    .goto Elwynn Forest,74.89,67.20,45,0
    .goto Elwynn Forest,75.75,74.57,45,0
    .goto Elwynn Forest,76.66,76.68,45,0
    .goto Elwynn Forest,79.27,79.44,45,0
    .goto Elwynn Forest,81.57,76.85
    >>Tötet alle |cRXP_ENEMY_Junge Waldbären|r, die ihr seht, und |cRXP_ENEMY_Streuner|r
    >>|cRXP_WARN_Verursacht 51%+ Schaden gegen |cRXP_ENEMY_Junger Waldbär|r und |cRXP_ENEMY_Streuner|r, dann zieht sie zur |cRXP_FRIENDLY_Wache von Sturmwind|r, um sie effizienter zu töten|r
    .complete 52,2 --Kill Young Forest Bear (x5)
    .complete 52,1 --Kill Prowler (x8)
    .unitscan Young Forest Bear
    .mob Prowler
step
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thomas|r
    .turnin 52 >> Gebt die Quest Grenzschutz ab
    .turnin 71 >> Gebt die Quest Meldung an Thomas ab
    .accept 39 >> Akzeptiert die Quest Zustellung von Thomas' Bericht
    .accept 109 >> Akzeptiert die Quest Meldung bei Gryan Stoutmantle
    .target Guard Thomas
    .xp <9,1
step
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thomas|r
    .turnin 52 >> Gebt die Quest Grenzschutz ab
    .turnin 71 >> Gebt die Quest Meldung an Thomas ab
    .accept 39 >> Akzeptiert die Quest Zustellung von Thomas' Bericht
    .target Guard Thomas
step
#loop
	.line Elwynn Forest,70.45,76.94,68.68,76.69,68.23,77.78,67.80,80.76,68.49,82.68,70.71,81.48,70.63,80.66,71.51,78.96,70.95,77.25,71.38,76.77,70.95,77.25,70.45,76.94
	.goto Elwynn Forest,70.45,76.94,40,0
	.goto Elwynn Forest,68.68,76.69,40,0
	.goto Elwynn Forest,68.23,77.78,40,0
	.goto Elwynn Forest,67.80,80.76,40,0
	.goto Elwynn Forest,68.49,82.68,40,0
	.goto Elwynn Forest,70.71,81.48,40,0
	.goto Elwynn Forest,70.63,80.66,40,0
	.goto Elwynn Forest,71.51,78.96,40,0
	.goto Elwynn Forest,70.95,77.25,40,0
	.goto Elwynn Forest,71.38,76.77,40,0
	.goto Elwynn Forest,70.95,77.25,40,0
	.goto Elwynn Forest,70.45,76.94,40,0
    >>Tötet |cRXP_ENEMY_Banditen der Defias|r. Plündert sie für |cRXP_LOOT_Rotes Leinenkopftuch|r und die |T134939:0|t[|cRXP_LOOT_Westfall-Urkunde|r]
    >>Benutzt die |T134939:0|t[|cRXP_WARN_Westfall-Urkunde|cRXP_LOOT_] |rum die Quest zu starten|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .collect 1972,1,184,1 --Collect Westfall Deed (x1)
    .disablecheckbox
	.mob Defias Bandit
    .isOnQuest 83
step
    #label Deed
    >>Benutzt die |T134939:0|t[|cRXP_WARN_Westfall-Urkunde|cRXP_LOOT_] |rum die Quest zu starten|r
    .accept 184 >> Furlbrows Urkunde annehmen
    .itemcount 1972,1
step
    .goto Elwynn Forest,69.89,79.52
    >>Tötet |cRXP_ENEMY_Prinzessin|r. Plündert sie für |cRXP_LOOT_Meesinghalsband|r
    >>|cRXP_WARN_Erinnert euch daran, sie mit dem Zaun zu kiten|r
    .complete 88,1 --Collect Brass Collar (x1)
    .mob Princess
step
    .goto Elwynn Forest,79.457,68.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sara|r
    .turnin 83 >> Gebt die Quest Rote Leinenwaren ab
    .target Sara Timberlain
    .isQuestComplete 83
step << skip
    .goto Redridge Mountains,9.62,71.36
    .zone Redridge Mountains >> Reist ins Rotkammgebirge
    .isOnQuest 88
step << skip
    #completewith next
    +|cRXP_WARN_Folgt der Straße zu |cRXP_FRIENDLY_Ariena|r mit Vorsicht. Weicht den |cRXP_ENEMY_Tarantel|r und |cRXP_ENEMY_Schwarzer Großdrachenwelpe|r auf dem Weg aus|r
    .mob Black Dragon Whelp
    .mob Tarantula
step << skip
    .goto Redridge Mountains,30.59,59.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ariena|r
    .fp Redridge Mountains >> Erlernt die Flugroute zum Rotkammgebirge
    .target Ariena Stormfeather
step
    #completewith next
    .hs >> Ruhestein nach Goldhain
step
    .goto Elwynn Forest,43.283,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_William|r
    .turnin 112 >> Gebt die Quest Die Suche nach dem Tang ab
    .accept 114 >> Akzeptiert die Quest Die Flucht
    .target William Pestle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dughan|r und |cRXP_FRIENDLY_Argus|r
    .turnin 39 >> Gebt die Quest Zustellung von Thomas' Bericht ab
    .turnin 76 >> Gebt die Quest Die Jaspismine ab
    .accept 239 >> Akzeptiert die Quest Hilfe für die Weststromgarnison!
    .accept 109 >> Akzeptiert die Quest Meldung bei Gryan Stoutmantle
    .target +Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .accept 1097 >> Elmores Aufgabe annehmen
    .target +Smith Argus
    .goto Elwynn Forest,41.706,65.544
step
    .goto Elwynn Forest,43.16,89.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maybell|r innerhalb
    .turnin 114 >> Gebt die Quest Die Flucht ab
    .target Maybell Maclure
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ma|r und |cRXP_FRIENDLY_Bernice|r
    .turnin 88,3 >> Gebt die Quest Prinzessin muss sterben! ab
    .target +Ma Stonefield
    .goto Elwynn Forest,34.660,84.482
    .turnin 87 >> Gebt die Quest Goldzahn ab
    .goto Elwynn Forest,34.486,84.253
    .target +"Auntie" Bernice Stonefield
step
#loop
	.line Elwynn Forest,31.15,85.36,33.08,86.64,33.51,85.22,32.17,83.88,31.15,85.36
	.goto Elwynn Forest,31.15,85.36,35,0
	.goto Elwynn Forest,33.08,86.64,35,0
	.goto Elwynn Forest,33.51,85.22,35,0
	.goto Elwynn Forest,32.17,83.88,35,0
	.goto Elwynn Forest,31.15,85.36,35,0
    .xp 9+4825 >> Farmt bis auf 4225+/6500 XP
    .mob Stonetusk Boar
    .isOnQuest 184
step
#loop
	.line Elwynn Forest,31.15,85.36,33.08,86.64,33.51,85.22,32.17,83.88,31.15,85.36
	.goto Elwynn Forest,31.15,85.36,35,0
	.goto Elwynn Forest,33.08,86.64,35,0
	.goto Elwynn Forest,33.51,85.22,35,0
	.goto Elwynn Forest,32.17,83.88,35,0
	.goto Elwynn Forest,31.15,85.36,35,0
    .xp 9+4825 >> Farmt bis auf 4825+/6500 XP
    .mob Stonetusk Boar
    .itemcount 1972,<1
step
    .goto Elwynn Forest,24.23,74.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rainer|r
    .turnin 239 >> Gebt die Quest Hilfe für die Weststromgarnison ab
    .target Deputy Rainer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Furlbrow|r und |cRXP_FRIENDLY_Verna|r
    .accept 64 >> Akzeptiert die Quest Das vergessene Erbstück
    .turnin 184 >> Gebt die Quest Furlbrows Urkunde ab
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .accept 36 >> Akzeptiert die Quest Westfall-Eintopf
    .accept 151 >> Akzeptiert die Quest Die arme Graumähne
    .goto Westfall,59.91,19.41
    .target +Verna Furlbrow
    .isOnQuest 184
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Furlbrow|r und |cRXP_FRIENDLY_Verna|r
    .accept 64 >> Akzeptiert die Quest Das vergessene Erbstück
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .accept 36 >> Akzeptiert die Quest Westfall-Eintopf
    .accept 151 >> Akzeptiert die Quest Die arme Graumähne
    .target +Verna Furlbrow
    .goto Westfall,59.91,19.41
step
    #completewith next
    >>Öffnet die |cRXP_PICK_Sack Hafer|r auf dem Boden. Plündert sie für die |cRXP_LOOT_Handvoll Hafer|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 151,1 --Handful of Oats (8)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Saldean|r und dann mit |cRXP_FRIENDLY_Salma|r innerhalb
    .accept 9 >>Akzeptiert die Quest Tod auf den Feldern
    .target +Farmer Saldean
    .goto Westfall,56.04,31.23
    .turnin 36 >> Gebt die Quest Westfalleintopf ab
    .accept 38 >> Akzeptiert die Quest Westfall-Eintopf
    .accept 22 >> Akzeptiert die Quest Pastete aus Geiferzahnleber
    .target +Salma Saldean
    .goto Westfall,56.42,30.52
step
    #completewith next
    >>|cRXP_WARN_Seid SEHR vorsichtig vor |cRXP_ENEMY_Erntebehüter|r und |cRXP_ENEMY_Erntegolem|r unterwegs|r
    .goto Westfall,56.33,47.52,20 >>Lauft zu|cRXP_FRIENDLY_Gryan|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gryan|r, |cRXP_FRIENDLY_Danuvin|r, und dann mit|cRXP_FRIENDLY_Lewis|r innerhalb
    .turnin 109 >> Gebt die Quest Meldung bei Gryan Stoutmantle ab
    .accept 12 >> Akzeptiert die Quest Die Volksmiliz
    .target +Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .accept 102 >> Akzeptiert die Quest Auf Patrouille durch Westfall
    .target +Captain Danuvin
    .goto Westfall,56.42,47.62
    .accept 6181 >> Akzeptiert die Quest Eine eilige Nachricht
    .goto Westfall,57.002,47.169
    .target +Quartermaster Lewis
step
    .goto Westfall,56.56,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >> Gebt die Quest Eine eilige Nachricht ab
    .accept 6281 >> Akzeptiert die Quest Weiter nach Sturmwind
    .target Thor
step
    #completewith next
    .goto Westfall,56.56,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fliege nach Sturmwind
	.target Thor
step
    #completewith next
    .goto StormwindClassic,63.10,65.18,20,0
    .goto StormwindClassic,58.13,59.40,20,0
    .goto StormwindClassic,57.06,61.83,20,0
    .goto StormwindClassic,56.55,64.79,12,0
    .goto StormwindClassic,56.20,64.60,12 >>Geht zu |cRXP_FRIENDLY_Morgan|r
step
    .goto StormwindClassic,56.20,64.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morgan|r
    .turnin 61,1 >> Gebt die Quest Lieferung nach Sturmwind ab
    .target Morgan Pestle
step
    .goto Stormwind City,55.46,65.26
    >>Sprecht mit |cRXP_FRIENDLY_Keldric|r
    .vendor 1257 >> |cRXP_BUY_Kauft|r |T134830:0|t[Geringer Heiltrank] |cRXP_BUY_von ihm, falls sie verfügbar sind|r
    .target Keldric Boucher
step << skip
    #completewith next
    .goto Stormwind City,51.68,59.86,8,0
    .goto Stormwind City,51.83,60.41,4,0
    .goto Stormwind City,51.59,60.15,6,0
    .goto Stormwind City,39.17,76.58,12,0
    >>|cRXP_WARN_Springt hoch auf die Fackel, dann fallt nach unten, um unter Sturmwind zu kommen|r
    >>|cRXP_WARN_Mit Schatten auf "Mittel" oder "Niedrig", geht zwischen die Füße von Derek the Dinosaur (auf dem helleren Teil des Bodens) gerade vor dem blauen nichts und lauft dann geradeaus nach vorne|r
    .goto Stormwind City,38.61,79.39,10 >>Reist zu|cRXP_FRIENDLY_Jennea|r
step << skip
    .goto Stormwind City,38.61,79.39
    >>Sprich mit |cRXP_FRIENDLY_Jennea|r
    .trainer >> Erlernt eure Klassanfähigkeiten (Frostrüstung Rang 2, Frostnova, Verwandlung, Wasser herbeizaubern Rang 1 & Rang 2)
    >>Gesamtpreis Kosten: 15s
    >>Bedenkt: Ihr braucht möglicherweise Geld für Heiltränke (3s je Stück), Bronzeröhre (8s je Stück) und Stufe-5-Nahrung (20c pro 5)
    .target Jennea Cannon
step << skip
    #completewith next
    .goto Stormwind City,36.30,82.90,6 >>Geht durch das grüne Portal
step
    #completewith next
    .goto StormwindClassic,57.32,59.15,10,0
    .goto StormwindClassic,58.17,57.90,12,0
    .goto StormwindClassic,57.81,54.73,12,0
    .goto StormwindClassic,60.05,51.60,12,0
    .goto StormwindClassic,67.54,46.88,12,0
    .goto StormwindClassic,71.01,48.62,12,0
    .goto StormwindClassic,74.31,47.22,12 >>Reist zu|cRXP_FRIENDLY_Osric|r
step
    .goto StormwindClassic,74.31,47.22
    >>Sprecht mit |cRXP_FRIENDLY_Osric|r
    .turnin 6281 >> Gebt die Quest Weiter nach Sturmwind ab
    .accept 6261 >> Akzeptiert die Quest Dungar Longdrink
    .target Osric Strang
step
    #completewith next
    .goto StormwindClassic,69.20,40.75,15,0
    .goto StormwindClassic,67.03,40.27,15,0
    .goto StormwindClassic,64.49,36.75,15,0
    .goto StormwindClassic,64.97,29.32,15,0
    .goto StormwindClassic,51.89,13.19,12,0
    .goto StormwindClassic,51.76,12.08,12 >>Lauf in Richtung |cRXP_FRIENDLY_Grimand|r
step
    .goto StormwindClassic,51.76,12.08
    >>Sprich mit |cRXP_FRIENDLY_Grimand|r
    .turnin 1097 >> Gebt die Quest Elmores Aufgabe ab
    .accept 353 >> Akzeptiert die Quest Stormpikes Lieferung
    .target Grimand Elmore
step
    .goto Stormwind City,55.25,7.07
    >>Sprecht mit |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_wenn er sie hat|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
    .money <0.08
step
    #completewith next
    .goto Stormwind City,63.89,8.25,20 >> Reist zu Die Tiefenbahn
step
    #completewith next
    +|cRXP_WARN_Fahrt mit der Tiefenbahn, während ihr Pausenlos |r |T132794:0|t[Wasser herbeizaubern Rang 2] wirkt
step
    #label Monty
    .goto Ironforge,76.41,51.22,30,0
    >>Sprecht mit |cRXP_FRIENDLY_Monty|r nachdem ihr die Tram genommen habt
    .accept 6661 >> Akzeptiert die Quest Tiefenbahn-Ratten-Razzia
    .target Monty
step
    >>Benutzt die |T133942:0|t[Rattenfänger-Flöte] auf die|cRXP_FRIENDLY_Tiefenbahn-Ratten|r in der Tiefenbahn
    .complete 6661,1 --Rats Captured (x5)
    .target Deeprun Rat
    .use 17117
step
    >>Sprecht mit |cRXP_FRIENDLY_Monty|r
--  >>|cRXP_WARN_Wait out the RP|r
    .turnin 6661 >> Gebt die Quest Tiefenbahn-Ratten-Razzia ab
    .target Monty
    .zoneskip Stormwind City
step
    .zone Ironforge >> Betretet Eisenschmiede
    .isQuestAvailable 314
step
    .goto Ironforge,67.83,42.47
    >>Sprecht mit |cRXP_FRIENDLY_Cogspinner|r
    .vendor 5175 >>|cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_wenn er sie hat|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith next
    .goto Ironforge,69.93,34.13,30,0
    .goto Ironforge,63.03,30.09,30,0
    .goto Ironforge,57.78,35.11,30,0
    .goto Ironforge,55.49,47.74,10 >>Lauf in Richtung |cRXP_FRIENDLY_Gryth|r
step
    .goto Ironforge,55.50,47.74
    >>Sprich mit |cRXP_FRIENDLY_Gryth|r
    .fp Ironforge >> Holt euch den Flugpunkt in Eisenschmiede
    .target Gryth Thurden
step
    #completewith next
    .goto Ironforge,49.11,56.02,30,0
    .goto Ironforge,44.08,46.60,20,0
    .goto Ironforge,40.84,44.59,20,0
    .goto Ironforge,35.30,32.76,20,0
    .goto Ironforge,27.60,11.06,20,0
    .goto Ironforge,27.17,8.58,10 >>Reist in Richtung |cRXP_FRIENDLY_Dink|r
step
    .goto Ironforge,27.17,8.58
    >>Sprich mit |cRXP_FRIENDLY_Dink|r
    .trainer >> Erlernt eure Klassanfähigkeiten (Frostrüstung Rang 2, Frostnova, Verwandlung, Wasser herbeizaubern Rang 1 & Rang 2)
    >>Gesamtpreis Kosten: 15s
    >>Bedenkt: Ihr braucht möglicherweise Geld für Heiltränke (3s je Stück), Bronzeröhre (8s je Stück) und Stufe-5-Nahrung (20c pro 5)
    .target Dink
step
    #completewith next
    .goto Ironforge,27.25,12.79,20,0
    .goto Ironforge,22.59,38.13,20,0
    .goto Ironforge,20.40,53.19,20,0
    >>Geht ins Gebäude
    .goto Ironforge,18.14,51.45,10 >>Geht zu |cRXP_FRIENDLY_Firebrew|r
step
    #label IFHS
    .goto Ironforge,18.14,51.45
    >>Sprecht mit |cRXP_FRIENDLY_Firebrew|r
    .home >> Setzt euren Ruhestein in Eisenschmiede
    .target Innkeeper Firebrew
step
    #completewith BankDeposit
    .goto Ironforge,33.05,63.11,20,0
    .goto Ironforge,35.93,60.13,30 >>Betretet die Eisenschmiede-Bank
step
    .goto Ironforge,35.93,60.13
    >>Sprich mit |cRXP_FRIENDLY_Bailey|r
    .bankdeposit 4371,16115 >> Packe folgende Items in die Bank:
    >>|T133024:0|t[Bronzeröhre]
    >>|T132763:0|t[Osrics Kiste]
    .target Bailey Stonemantle
step << skip
    .goto Ironforge,36.35,57.88
    .goto Dun Morogh,53.03,35.71,10 >>|cRXP_WARN_Springt auf die Seite des Tresors. Logout-Skip nach Dun Morogh|r
    .isQuestAvailable 314
step
    .goto Ironforge,15.16,85.70,20,0
    .goto Dun Morogh,59.84,49.56
    .zone Dun Morogh >> Verlasst Eisenschmiede
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Human Mage
#name 10-11 Fortgeschrittene AoE-Guide für Mensch Magier in Dun Morogh
#version 2
#group RestedXP ADV AoE Allianz Magier
#defaultfor Human Mage
#next 10-12 ADV Dunkelküste 1 Magier AoE

step
    #completewith Rudra
    #label Dirt
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>Geht den Erdpfad hinauf
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Lockt |cRXP_ENEMY_Vagash|r zu|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_KLICKT HIER, wenn ihr Schwierigkeiten habt|r
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.08,49.85
    >>Sprecht mit |cRXP_FRIENDLY_Rudra|r
    .accept 314 >> Akzeptiert die Quest Die Herde beschützen
    .target Rudra Amberstill
step
    .goto Dun Morogh,62.57,46.14,0
    .goto Dun Morogh,62.78,54.60,40,0
    .goto Dun Morogh,62.82,55.73
    >>Tötet |cRXP_ENEMY_Vagash|r. Plündert ihn für den |cRXP_LOOT_Fangzahn von Vagash|r
    >>|cRXP_WARN_zieht |cRXP_ENEMY_Vagash|r zu den |cRXP_FRIENDLY_Gebirgsjäger von Dun Morogh|r südlich der Ranch. Vergewissert euch, dass ihr ihm 51%+ Schaden zufügt|r
    >>|cRXP_WARN_Vergesst nicht, die Erkundungs-EP für Die Tundridhügel zu erhalten, und zieht den |cRXP_ENEMY_Schneeleopard|r zum |cRXP_FRIENDLY_Gebirgsjäger von Dun Morogh|r, wenn es bequem ist|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto Dun Morogh,63.08,49.85
    >>Sprecht mit |cRXP_FRIENDLY_Rudra|r
    .turnin 314,3 >> Gebt die Quest Die Herde beschützen ab
    .target Rudra Amberstill
step
    #completewith Ghilm
    +|cRXP_WARN_Denkt daran|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch] zu behalten|r |cRXP_WARN_, um|r |T133971:0|t[Kochkunst] später |cRXP_WARN_bis 50 zu skillen|r
step
    #completewith next
    .goto Dun Morogh,66.34,50.92,50,0
    .goto Dun Morogh,67.72,53.66,30,0
    +|cRXP_WARN_Lockt den |cRXP_ENEMY_Eisklauenbär|r zum |cRXP_FRIENDLY_Gebirgsjäger von Eisenschmiede|r (vergewissert euch, dass ihr 51%+ Schaden verursacht)|r
    >>|cRXP_WARN_Seid vorsichtig sie wirken|r |T135853:0|t[Eisklaue] |cRXP_WARN_(Nahkampf Sofortangriff: verursacht zusätzlich 4 Nahkampfschaden)|r
    .mob Ice Claw Bear
step
    #sticky
    #label Ghilm
    .goto Dun Morogh,68.40,54.45,0,0
    >>Sprecht mit |cRXP_FRIENDLY_Ghilm|r
    .train 2550 >> Erlernt |T133971:0|t[Kochkunst]
    .target Cook Ghilm
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
    >>Sprecht mit |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Kauft 15|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .collect 1179,15,432,1 --Ice Cold Milk (15)
    .target Kazan Mogosh
    .money <0.0395
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
    >>Sprecht mit |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Kauft 10|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .collect 1179,10,432,1 --Ice Cold Milk (10)
    .target Kazan Mogosh
    .money <0.0260
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
    >>Sprecht mit |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Kauft 5|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .collect 1179,5,432,1 --Ice Cold Milk (5)
    .target Kazan Mogosh
    .money <0.0135
step
    #requires Ghilm
    >>Sprecht mit |cRXP_FRIENDLY_Senator Mehr Stonehallow|r und |cRXP_FRIENDLY_Großknecht Stonebrow|r
    .accept 433 >> Akzeptiert die Quest Im Dienste des Volkes
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.67,55.97
    .accept 432 >> Akzeptiert die Quest Diese verfluchten Troggs!
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
step
    #completewith Bonesnappers
    >>Tötet |cRXP_ENEMY_Schädelhauer der Felsenkiefer|r
    >>|cRXP_WARN_Macht keinen Umweg, um sie zu töten|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #completewith next
    .goto Dun Morogh,70.74,56.23,30 >>Betretet die Höhle
step
    #label Bonesnappers
    .goto Dun Morogh,70.98,54.31,40,0
    .goto Dun Morogh,70.83,53.17,40,0
    .goto Dun Morogh,71.94,50.48,40,0
    .goto Dun Morogh,72.55,51.50,40,0
    .goto Dun Morogh,72.62,52.56
    >>Tötet |cRXP_ENEMY_Knochenknacker der Felsenkiefer|r in der Höhle
    >>|cRXP_WARN_Seid vorsichtig, da sie|r |T132154:0|t[Niederschlagen] wirken |cRXP_WARN_(Nahkampf Sofortzauber: betäubt für 2 Sek.)|r
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Bonesnapper
step
    .goto Dun Morogh,70.74,56.23,30,0
#loop
	.line Dun Morogh,69.93,57.29,70.57,58.61,69.68,59.37,68.36,59.57,69.16,57.51,69.93,57.29
	.goto Dun Morogh,69.93,57.29,30,0
	.goto Dun Morogh,70.57,58.61,30,0
	.goto Dun Morogh,69.68,59.37,30,0
	.goto Dun Morogh,68.36,59.57,30,0
	.goto Dun Morogh,69.16,57.51,30,0
	.goto Dun Morogh,69.93,57.29,30,0
    >>Tötet |cRXP_ENEMY_Schädelhauer der Felsenkiefer|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #sticky
    #label Frast
    .goto Dun Morogh,68.87,55.96,0,0
    >>Sprecht mit |cRXP_FRIENDLY_Frast|r
    .vendor >> Verkauft Müll
    .target Frast Dokner
    .isQuestAvailable 419
step
    >>Sprecht mit |cRXP_FRIENDLY_Stonebrow|r und |cRXP_FRIENDLY_Mehr|r
    .turnin 432 >> Gebt die Quest Diese verfluchten Troggs! ab
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> Gebt die Quest Im Dienste des Volkes ab
    .goto Dun Morogh,68.67,55.97
    .target +Senator Mehr Stonehallow
step
    #requires Frast
    .goto Dun Morogh,69.33,55.46
    >>Sprecht mit |cRXP_FRIENDLY_Dank|r
    .train 2575 >> Erlernt |T136248:0|t[Bergbau]
    .target Dank Drizzlecut
step
    #label Shortcut1
    #completewith Pilot
    .goto Dun Morogh,70.35,55.28,5,0
    .link https://youtu.be/G2IscpFZVeQ?t=4034 >>|cRXP_WARN_KLICKT HIER, wenn ihr Schwierigkeiten habt|r
    .goto Dun Morogh,70.52,54.75,12 >>Nehmt den Weg nach oben hinter |cRXP_FRIENDLY_Dank|r
step
    #completewith Pilot
    #requires Shortcut1
    #label Shortcut2
    .goto Dun Morogh,70.97,50.70,50,0
    .goto Dun Morogh,72.90,49.79,50,0
    .goto Dun Morogh,77.11,48.82,50 >>|cRXP_WARN_Lockt die nahen |cRXP_ENEMY_Wegelagerer der Felsenkiefer|r zu den |cRXP_FRIENDLY_Gebirgsjäger von Eisenschmiede|r, die auf der Straße patrouillieren können (stellt sicher, dass ihr 51%+ Schaden verursacht, um Questfortschritt zu erhalten)|r
    .mob Rockjaw Ambusher
    .unitscan Ironforge Mountaineer
step
    #requires Shortcut2
    #completewith next
    .goto Dun Morogh,81.23,42.66,50,0
    .goto Dun Morogh,83.01,40.31,30 >>Lockt einen |cRXP_ENEMY_Vernarbter Klippeneber|r durch den Tunnel
    >>|cRXP_WARN_Seid vorsichtig, da sie|r |T132337:0|t[Ansturm] wirken|cRXP_WARN_(Selbst Sofort: Erhöht die Bewegungsgeschwindigkeit für 3 Sek., verursacht 40-100 Nahkampfschaden bei Treffer. Nur in der Ferne wirkbar)|r
    .mob Scarred Crag Boar
step
    #label Pilot
    .goto Dun Morogh,83.89,39.19
    >>Sprecht mit |cRXP_FRIENDLY_Hammerfoot|r
    .accept 419 >> Akzeptiert die Quest Der vermisste Pilot
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,81.37,37.02,30,0
    .goto Dun Morogh,79.67,36.17
    >>Klickt auf die |cRXP_PICK_Zwergische Leiche|r auf dem Boden
    >>|cRXP_WARN_STELLE SICHER, DASS DU EINEN FREIEN INVENTARPLATZ HAST. |cRXP_ENEMY_Marterklaue|r wird nicht herunterkommen, wenn du die nächste Quest nicht annimmst|r
    >>|cRXP_WARN_Denkt daran: LOCKT |cRXP_ENEMY_Marterklaue|r ZURÜCK ZU |cRXP_FRIENDLY_Hammerfoot|r
    .turnin 419 >> Gebt die Quest Der vermisste Pilot ab
    .accept 417 >> Akzeptiert die Quest Pilotenrache
step
    .goto Dun Morogh,78.41,37.80,60,0
    .goto Dun Morogh,83.89,39.19
    >>Tötet |cRXP_ENEMY_Marterklaue|r. Plündert sie für |cRXP_LOOT_Räudige Klaue|r
    >>|cRXP_WARN_Lockt ihn ganz bis zu |cRXP_FRIENDLY_Hammerfoot|r (stellt sicher, dass ihr 51%+ Schaden verursacht, um den Questfortschritt zu erhalten)|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,83.892,39.188
    >>Sprecht mit |cRXP_FRIENDLY_Hammerfoot|r
    .turnin 417,1 >> Gebt die Quest Pilotenrache ab
    .target Pilot Hammerfoot
step
    #label Tunnel1
    #completewith Barleybrew
    .goto Dun Morogh,83.01,40.31,30,0
    .goto Dun Morogh,81.23,42.66,30 >>Lauft durch den Tunnel zurück
step
    #requires Tunnel1
    #completewith Barleybrew
    .goto Dun Morogh,79.61,49.94,20,0
    .goto Dun Morogh,81.10,49.76,20,0
    .goto Dun Morogh,81.60,50.01,20,0
    .goto Dun Morogh,83.59,49.18,20,0
    >>Lockt einen |cRXP_ENEMY_Vernarbter Klippeneber|r auf deinem Weg
    .goto Dun Morogh,84.26,48.93,20 >>Führt den Berg-Skip durch. Erinnert euch, vorsichtig hinunterzufallen
    .mob Scarred Crag Boar
step
    .goto Loch Modan,19.01,61.88
    >>Lockt einen |cRXP_ENEMY_Vernarbter Klippeneber|r durch den Tunnel
    >>|cRXP_WARN_Seid vorsichtig, da sie|r |T132337:0|t[Ansturm] wirken|cRXP_WARN_(Selbst Sofort: Erhöht die Bewegungsgeschwindigkeit für 3 Sek., verursacht 40-100 Nahkampfschaden bei Treffer. Nur in der Ferne wirkbar)|r
    .zone Loch Modan >> Reist durch den Tunnel nach Loch Modan
    .mob Scarred Crag Boar
step
    #completewith Rugelfuss
    +|cRXP_WARN_Versucht, einen nahen |cRXP_ENEMY_Schwarzbär|r oder einen |cRXP_ENEMY_Waldlauerer|r in den Bunker zu locken (erinnert euch, 51%+ Schaden zu verursachen, um Fortschritt zu erhalten)|r
    >>|cRXP_WARN_Plündert die |cRXP_ENEMY_Alter Schwarzbär|r für ihr|r |T134027:0|t[|cRXP_LOOT_Bärenfleisch|r]
    >>|cRXP_WARN_Plündert die |cRXP_ENEMY_Waldlauerer|r für ihr|r |T134437:0|t[|cRXP_LOOT_Spinnensekret|r]
    >>|cRXP_FRIENDLY_Cobbleflint|r|cRXP_WARN_, |cRXP_FRIENDLY_Gravelgaw|r, und |cRXP_FRIENDLY_Wallbang|r werden euch nicht unterstützen|r
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .disablecheckbox
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .disablecheckbox
    .mob Elder Black Bear
    .mob Forest Lurker
step
    #label Cobbleflint
    .goto Loch Modan,22.071,73.127
    >>Sprecht mit |cRXP_FRIENDLY_Cobbleflint|r
    .accept 224 >> Akzeptiert die Quest Verteidigung der Länder des Königs
    .target Mountaineer Cobbleflint
step
    #optional
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >> BETRITT den Bunker. Geht zum obersten Geschoss
step
    #label Rugelfuss
    .goto Loch Modan,23.233,73.675
    >>Sprecht mit |cRXP_FRIENDLY_Rugelfuss|r
    .accept 267 >> Akzeptiert die Quest Die Bedrohung durch die Troggs
    .target Captain Rugelfuss
step << skip
    #completewith next
    .goto Loch Modan,21.49,68.14,20,0
    .goto Loch Modan,20.86,64.46,20,0
    .goto Loch Modan,19.50,62.56,30 >>Geht zurück in den Tunnel
step << skip
    .goto Loch Modan,18.84,61.48
    .link https://www.youtube.com/watch?v=AOAlX9B5aO0 >>|cRXP_WARN_KLICKT HIER Falls es euch schwerfällt|r
    .goto Loch Modan,32.19,46.95,30 >>|cRXP_WARN_Springt, Logout-Skip von der Kohlenpfanne im Tunnel nach Thelsamar|r
    .isOnQuest 267
step
    #completewith next
    .subzone 144 >> Reist nach Thelsamar
step
    .goto Loch Modan,32.93,49.51,40,0
    .goto Loch Modan,34.49,47.44,40,0
    .goto Loch Modan,37.05,46.11,40,0
    .goto Loch Modan,37.39,45.17,40,0
    .goto Loch Modan,37.12,42.79
    >>Sprecht mit |cRXP_FRIENDLY_Kadrell|r
    >>|cRXP_FRIENDLY_Kadrell|r |cRXP_WARN_patrouilliert auf der Hauptstraße in Thelsamar|r
    .accept 416 >> Akzeptiert die Quest Rattenfang
    .accept 1339 >> Akzeptiert die Quest Gebirgsjäger Stormpikes Aufgabe
    .target Mountaineer Kadrell
step
    #completewith next
    .goto Loch Modan,33.94,50.96
    >>Sprecht mit |cRXP_FRIENDLY_Thorgrum|r
    .fp Thelsamar >> Erlernt die Flugroute nach Thelsamar
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Thorgrum Borrelson
step
    .zone Ironforge >> Lauf nach Ironforge
    .isOnQuest 416
step << skip
    #completewith next
    .goto Ironforge,43.83,59.58,20,0
    .goto Ironforge,38.27,71.43,20,0
    .goto Ironforge,33.70,76.24,10 >>|cRXP_WARN_Bewegt euch zum Logout-Skip-Spot|r
step << skip
    .goto Ironforge,33.70,76.24
    .zone Dun Morogh >>|cRXP_WARN_Positioniert den Charakter von Euch, bis er auf der Kante der metallenen Geländer zu schweben scheint. Logout-Skip nach Dun Morogh|r
    .isOnQuest 416
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Gnome Mage
#name 1-10 ADV Dun Morogh Gnomenmagier AoE
#version 2
#group RestedXP ADV AoE Allianz Magier
#defaultfor Gnome Mage
#next 10-12 ADV Dunkelküste 1 Magier AoE


step << !Gnome Mage
    #season 2
    #completewith next
    +In Season of Discovery solltet ihr NICHT außerhalb der Startzone der Rasse von Euch als Magier starten, da ihr sond die erste Rune von Euch nicht erhalten könnt (|T133816:0|t[Handschuhe prägen - Eislanze])
step
    #completewith next
    +Ihr habt den Erweiterten-Leitfaden ausgewählt. Dies ist der schnellste Leitfaden für die schnellste Klasse des Spiels (Allianzmagier). Daher werden viele Spezialmechaniken verwendet sowie höchst schwierige AoE-Pulls. Bleibt ausdauernd, während ihr lernt! Viel Glück!
step
    #completewith Adlin
	.destroy 6948 >> Entfernt den |T134414:0|t[Ruhestein] aus den Taschen von Euch, da er nicht mehr benötigt wird
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sten Stoutarm|r
    .accept 179 >> Akzeptiert die Quest Zwergenausstatter
    .target Sten Stoutarm
step
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    >>Tötet |cRXP_ENEMY_Struppiger junger Wolf|r. Plündert sie für |cRXP_LOOT_Zähes Wolfsfleisch|r
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob Ragged Young Wolf
step
    #season 0
    #sticky
    #label Adlin
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Verkauft Müll
    >>|cRXP_BUY_Kauft 15|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    >>Farmt|cRXP_WARN_ extra |cRXP_ENEMY_Struppiger junger Wolf|r wenn ihr nicht genug Geld habt|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step
    #season 2
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Verkauft Müll
    >>|cRXP_BUY_Kauft 15|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    >>Farmt|cRXP_WARN_ extra |cRXP_ENEMY_Struppiger junger Wolf|r wenn ihr nicht genug Geld habt|r
    >>|cRXP_WARN_Behaltet 10c oder mehr für später|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step
    #xprate <1.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sten Stoutarm|r und |cRXP_FRIENDLY_Balir Frosthammer|r
    .turnin 179,3 >> Gebt die Quest Zwergenausstatter ab
    .accept 233 >> Akzeptiert die Quest Postbeförderung im Coldridgetal
    .accept 3114 >> Akzeptiert die Quest Glyphen-Memorandum
    .target +Sten Stoutarm
    .goto Dun Morogh,29.927,71.201
    .accept 170 >> Akzeptiert die Quest Eine neue Bedrohung
    .goto Dun Morogh,29.71,71.25
    .target +Balir Frosthammer
step
    #xprate >1.09
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sten Stoutarm|r
    .turnin 179,3 >> Gebt die Quest Zwergenausstatter ab
    .accept 233 >> Akzeptiert die Quest Postbeförderung im Coldridgetal
    .accept 3114 >> Akzeptiert die Quest Glyphen-Memorandum
    .target Sten Stoutarm
step
    #season 2
    #xprate <1.1
    #completewith EnterAnvilmar
    .goto 1426,27.096,72.545,0
    .goto 1426,26.620,73.548,0
    .goto 1426,25.722,72.261,0
    .goto 1426,24.878,72.329,0
    .goto 1426,24.100,73.749,0
    .goto 1426,24.920,74.697,0
    .goto 1426,21.813,72.584,0
    .goto 1426,19.578,72.086,0
    .goto 1426,20.627,70.415,0
    >>Tötet |cRXP_ENEMY_Trogg der Felsenkiefer|r und |cRXP_ENEMY_Bulliger Trogg der Felsenkiefer|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
    .isOnQuest 170
step
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>Öffnet die |cRXP_PICK_Schließkiste der Felsenkiefer|r am Boden. Plündert sie für die |T134939:0|t|cRXP_LOOT_[Zaubernotizen: NSZEIELA]|r
    >>HINWEIS: Ihr werdet|cRXP_WARN_ |T133816:0|t[Handschuhe prägen - Eislanze]  nicht trainieren können|rhier, da ihr nur eine|cRXP_WARN_ |T133736:0|t[Verständnisfibel] |rin eurer Rassenstartzone|cRXP_WARN_ bekommen könnt|r << !Gnome
    .collect 203751,1,77667,1 -- Spell Notes: CALE ENCI (1)
    .train 401760,1
step << Gnome
    #season 2
    .train 401760 >>Benutzt die|cRXP_WARN_ |T134939:0|t|r[Zaubernotizen: NSZEIELA]|cRXP_LOOT_ um das|r |T133816:0|t[Handschuhe prägen - Eislanze] |cRXP_WARN_zu lernen|r
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step
    #season 2
    #label EnterAnvilmar
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.642,68.375,12 >> Betretet Ambossar
step
    #season 2
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marryk Nurribit|r innerhalb
    .turnin 3114 >> Gebt die Quest Glyphen-Memorandum ab << Gnome
    .accept 77667 >> Akzeptiert die Quest Zauberforschung << Gnome
    .turnin 77667 >> Gebt die Quest Zauberforschung ab << Gnome
    .train 1459 >> Erlernt |T135932:0|t[Arkane Intelligenz]
    .target Marryk Nurribit
step << Gnome
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >> |cRXP_WARN_Legt die|r |T132961:0|t[Zerlumpte Stoffhandschuhe] an
    .use 711
    .train 401760,1
step << Gnome
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>Graviert eure|cRXP_WARN_ |T132961:0|t[Zerlumpte Stoffhandschuhe] |rmit|r |T133816:0|t[Handschuhe prägen - Eislanze]
    .train 401760,1
step
    #season 2
    #optional
    #completewith Talin
    .goto 1426,28.792,68.804,12 >> Verlasst Ambossar
    .subzoneskip 77,1
step
    #xprate <1.1
    #completewith Rockjaw
    .goto 1426,27.096,72.545,0
    .goto 1426,26.620,73.548,0
    .goto 1426,25.722,72.261,0
    .goto 1426,24.878,72.329,0
    .goto 1426,24.100,73.749,0
    .goto 1426,24.920,74.697,0
    .goto 1426,21.813,72.584,0
    .goto 1426,19.578,72.086,0
    .goto 1426,20.627,70.415,0
    >>Tötet |cRXP_ENEMY_Trogg der Felsenkiefer|r und |cRXP_ENEMY_Bulliger Trogg der Felsenkiefer|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
    .isOnQuest 170
step
    #label Talin
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 233 >> Gebt die Quest Postbeförderung im Coldridgetal ab
    .accept 183 >> Akzeptiert die Quest Der Eberjäger
    .accept 234 >> Akzeptiert die Quest Postbeförderung im Coldridgetal
    .target Talin Keeneye
step
    #loop
    .goto 1426,22.276,72.549,0
    .goto 1426,20.924,70.393,0
    .goto 1426,22.662,69.331,0
    .goto 1426,24.358,72.591,0
    .goto 1426,22.276,72.549,45,0
    .goto 1426,21.209,72.266,45,0
    .goto 1426,20.880,71.470,45,0
    .goto 1426,20.924,70.393,45,0
    .goto 1426,21.330,69.261,45,0
    .goto 1426,22.035,69.231,45,0
    .goto 1426,22.662,69.331,45,0
    .goto 1426,24.317,68.026,45,0
    .goto 1426,24.754,69.257,45,0
    .goto 1426,24.878,71.191,45,0
    .goto 1426,24.358,72.591,45,0
    >>Tötet |cRXP_ENEMY_Kleiner Klippeneber|r
    .complete 183,1 --Kill Small Crag Boar (x12)
    .mob Small Crag Boar
step
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 183 >> Gebt die Quest Der Eberjäger ab
    .target Talin Keeneye
step
    #label Rockjaw
    .goto 1426,25.077,75.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 234 >> Gebt die Quest Postbeförderung im Coldridgetal ab
    .accept 182 >> Akzeptiert die Quest Die Trollhöhle
    .target Grelin Whitebeard
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Trollwelpe der Frostmane|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step
    .goto Dun Morogh,26.73,79.72,30 >>Betretet die Höhle
    .isOnQuest 182
step
    .goto Dun Morogh,27.30,80.85,20,0
    .goto Dun Morogh,28.29,79.85,20,0
    .goto Dun Morogh,29.34,79.09,30,0
    .goto Dun Morogh,28.29,79.85,20,0
    .goto Dun Morogh,27.30,80.85,20,0
    .goto Dun Morogh,28.29,79.85,20,0
    .goto Dun Morogh,29.34,79.09,30,0
    .goto Dun Morogh,28.29,79.85,20,0
    .goto Dun Morogh,27.30,80.85,20,0
    .goto Dun Morogh,28.29,79.85,20,0
    .goto Dun Morogh,29.34,79.09,30,0
    .goto Dun Morogh,28.29,79.85
    >>Tötet |cRXP_ENEMY_Trollwelpe der Frostmane|r in der Höhle
    >>|cRXP_WARN_Bahne dir einen Weg bis kurz vor den Raum mit dem gefrorenen See.|r
    .complete 182,1,10 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step
    .goto Dun Morogh,28.29,79.85,50,0
    .goto Dun Morogh,27.30,80.85,40,0
    .goto Dun Morogh,25.78,78.31,40,0
    .goto Dun Morogh,27.12,78.68,40,0
    .goto Dun Morogh,25.95,80.39,40,0
    .goto Dun Morogh,25.78,78.31
    >>Tötet |cRXP_ENEMY_Trollwelpe der Frostmane|r auf dem Weg zurück zu |cRXP_FRIENDLY_Grelin Whitebeard|r
    .complete 182,1--Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << skip
    #completewith next
    +|cRXP_WARN_Falls ihr nicht wisst, wie man einen logout skip macht, schaut dieses Video zuerst an|r
    .link https://www.youtube.com/watch?v=SWBtPqm5M0Q >>|cRXP_WARN_HIER KLICKEN um den logout skip zu lernen|r
step << skip
    >>Sprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r und |cRXP_FRIENDLY_Nori Pridedrift|r
    >>|cRXP_WARN_Beachtet, dass "Lieferung des kochend heißen Morgengebräus" einen 5-Minuten-Timer hat|r
    >>|cRXP_WARN_Stellt sicher, dass ihr 3 Inventarplätze für diese Questabgaben/Annahmen habt|r
    .turnin 182,4 >> Gebt die Quest Die Trollhöhle ab
    .accept 218 >> Akzeptiert die Quest Das gestohlene Tagebuch
    .goto Dun Morogh,25.076,75.713,-1
    .target +Grelin Whitebeard
    .accept 3364 >> Akzeptiert die Quest Lieferung des kochend heißen Morgengebräus
    .goto Dun Morogh,24.98,75.96,-1
    .target +Nori Pridedrift
step
    >>Sprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r
    >>|cRXP_WARN_Stellt sicher, dass ihr 3 Inventarplätze für diese Questabgaben/Annahmen habt|r
    .turnin 182,4 >> Gebt die Quest Die Trollhöhle ab
    .accept 218 >> Akzeptiert die Quest Das gestohlene Tagebuch
    .goto Dun Morogh,25.076,75.713
    .target +Grelin Whitebeard
step
    .goto Dun Morogh,26.73,79.72,40,0
    .goto Dun Morogh,29.34,79.09,30,0
    .goto Dun Morogh,29.67,79.68,10 >>|cRXP_WARN_Betretet die Höhle. Lauft durch den freien Weg (ohne zu kämpfen, wenn möglich) Richtung Zugefrorenen See im Inneren|r
    .isOnQuest 218
step
    .goto Dun Morogh,30.48,80.16
    >>|cRXP_WARN_Tötet den |cRXP_ENEMY_Trollwelpe der Frostmane|r vor euch|r
    >>Tötet |cRXP_ENEMY_Grik'nir der Kalte|r. Plündert ihn für |cRXP_LOOT_Grelin Whitebeards Tagebuch|r
    >>|cRXP_WARN_Seid vorsichtig, da er|r |T135849:0|t[Frostschock] wirkt |cRXP_WARN_(Ein sofortiger Fernkampfzauber der:10 Frostschaden verursacht und eure die Bewegungsgeschwindigkeit um 50% für 8 Sek reduziert.)|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
step << skip
    #completewith Rybrad
    #label LogoutSkip1
    .goto Dun Morogh,29.63,79.50
    .goto Dun Morogh,29.76,69.66,30 >>|cRXP_WARN_Positioniert euren Charakter an der Klippe über dem Eingefroren Lake, bis es aussieht, als würde er schweben, dann logout skip zurück nach Ambossar|r
    .isOnQuest 218
step
    >>Sprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r und |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 218 >> Gebt die Quest Das gestohlene Tagebuch ab
    .accept 282 >> Akzeptiert die Quest Senirs Beobachtungen
    .goto Dun Morogh,25.076,75.713,-1
    .target +Grelin Whitebeard
    .accept 3364 >> Akzeptiert die Quest Lieferung des kochend heißen Morgengebräus
    .goto Dun Morogh,24.98,75.96,-1
    .target +Nori Pridedrift
step
    #completewith Rybrad
    #requires LogoutSkip1
    #label LogoutSkip2
    .goto Dun Morogh,28.79,69.04,20,0
    .goto Dun Morogh,28.63,68.43,10 >>Betretet Ambossar
    .isOnQuest 218,3364
step
    #label Rybrad
    .goto Dun Morogh,28.66,67.74
    >>Sprecht mit |cRXP_FRIENDLY_Rybrad Coldbank|r
    .vendor >> Verkauft Müll
    .target Rybrad Coldbank
    .isOnQuest 218,3364
step
    >>Sprecht mit |cRXP_FRIENDLY_Durnan Furcutter|r und |cRXP_FRIENDLY_Marryk Nurribit|r
    .turnin 3364 >> Gebt die Quest Lieferung des kochend heißen Morgengebräus ab
    .accept 3365 >> Akzeptiert die Quest Den Becher zurückbringen
    .goto Dun Morogh,28.77,66.37
    .target +Durnan Furcutter
    .turnin 3114 >> Gebt die Quest Glyphen-Memorandum ab
    .trainer >> Erlernt eure Klassenfähigkeiten (Arkane Intelligenz, Frostblitz)
    .goto Dun Morogh,28.709,66.366
    .target +Marryk Nurribit
    .isQuestAvailable 420
step
    #optional
    #xprate <1.1
    .goto Dun Morogh,29.71,71.25
    >>Sprecht mit |cRXP_FRIENDLY_Balir Frosthammer|r
    .turnin 170,3 >> Gebt die Quest Eine neue Bedrohung ab
    .target Balir Frosthammer
    .isQuestComplete 170
step
    #xprate <1.1
    #sticky
    #label TroggEnd
    .goto 1426,27.858,76.482,0
    .goto 1426,30.727,76.831,0
    .goto 1426,29.280,75.500,0
    .waypoint 1426,27.858,76.482,50,0
    .waypoint 1426,28.946,77.153,50,0
    .waypoint 1426,29.716,77.605,50,0
    .waypoint 1426,30.727,76.831,50,0
    .waypoint 1426,32.814,75.221,50,0
    .waypoint 1426,31.138,74.048,50,0
    .waypoint 1426,30.077,74.479,50,0
    .waypoint 1426,29.280,75.500,50,0
    >>|cRXP_WARN_Tötet ALLE |cRXP_ENEMY_Trogg der Felsenkiefer|r, und|r |cRXP_ENEMY_Bulliger Trogg der Felsenkiefer|r die ihr seht
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
    .isOnQuest 170
step
    #label StolenJ
    >>Sprecht mit |cRXP_FRIENDLY_Nori Pridedrift|r
    -- >>Talk to |cRXP_FRIENDLY_Grelin Whitebeard|r and |cRXP_FRIENDLY_Nori Pridedrift|r
    -- .turnin 218,2 >> Turn in The Stolen Journal
    -- .accept 282 >> Accept Senir's Observations
    -- .goto Dun Morogh,25.076,75.713
    -- .target +Grelin Whitebeard
    .turnin 3365 >> Gebt die Quest Den Becher zurückbringen ab
    .goto Dun Morogh,24.98,75.96
    .target +Nori Pridedrift
step
    #xprate <1.1
    #requires TroggEnd
    .goto Dun Morogh,29.71,71.25
    >>Sprecht mit |cRXP_FRIENDLY_Balir Frosthammer|r
    .turnin 170,3 >> Gebt die Quest Eine neue Bedrohung ab
    .target Balir Frosthammer
    .isQuestComplete 170
step
    #requires TroggEnd
    #label Observations
    >>Sprecht mit |cRXP_FRIENDLY_Mountaineer Thalos|r und |cRXP_FRIENDLY_Hands Springsprocket|r
    .turnin 282 >> Gebt Senirs Beobachtungen ab
    .accept 420 >> Akzeptiert die Quest Senirs Beobachtungen
    .goto Dun Morogh,33.484,71.841
    .target +Mountaineer Thalos
    .accept 2160 >> Akzeptiert die Quest Vorräte für Tannok
    .goto Dun Morogh,33.85,72.24
    .target +Hands Springsprocket
step
    #xprate <1.1
    #optional
    #completewith StockingJ
    .abandon 170 >> Brecht die Quest Eine neue Bedrohung ab
step
    .goto Dun Morogh,34.32,70.95,15,0
    .goto Dun Morogh,35.65,65.79,15 >> Reist durch den Eisklamm Pass
    .subzoneskip 800,1
    .isOnQuest 2160
step
    #completewith StockingJ
    .goto Dun Morogh,36.51,62.94,40,0
    >>Tötet |cRXP_ENEMY_Klippeneber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r und |cRXP_LOOT_Klippeneberrippchen|r
    >>|cRXP_WARN_Passt auf, da sie|r |T132337:0|t[Sturmangriff] wirken |cRXP_WARN_(Selbst Sofort: Erhöht Laufgeschwindigkeit für 3 Sek., verursacht 25-70 Nahkampfschaden bei Treffer. Nur aus der Distanz wirkbar)|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
step
    .goto Dun Morogh,37.97,61.87,30,0
    .goto Dun Morogh,39.89,59.26,45 >> |cRXP_WARN_Verursacht 51%+ Schaden bei nahen |cRXP_ENEMY_Halbwüchsiger Schneeleopard|r und |cRXP_ENEMY_Junger Schwarzbär|r, zieht sie dann zu |cRXP_FRIENDLY_Gebirgsjäger von Eisenschmiede|r, um sie effizienter zu töten|r
    .mob Juvenile Snow Leopard
    .mob Young Black Bear
    .target Ironforge Mountaineer
    .isOnQuest 2160
step
    #completewith next
    .goto Dun Morogh,43.44,55.64,50,0
    .goto Dun Morogh,44.14,52.64,50,0
    .goto Dun Morogh,46.021,51.676,20 >>Reist zu |cRXP_FRIENDLY_Tharek|r
step
    .goto Dun Morogh,46.021,51.676
    >>Sprecht mit |cRXP_FRIENDLY_Tharek|r
    .accept 400 >> Akzeptiert die Quest Werkzeuge für Steelgrill
    .target Tharek Blackstone
step
    #label StockingJ
    .goto Dun Morogh,49.426,48.410
    >>Zieht |cRXP_ENEMY_Junger Schwarzbär|r auf dem Weg |cRXP_WARN_(stellt sicher, dass ihr 51%+ Schaden macht um den Fortschritt zu erhalten)|r
    >>Sprecht mit |cRXP_FRIENDLY_Bellowfiz|r
    .accept 317 >> Akzeptiert die Quest Vorräte für Jetsteam
    .mob Young Black Bear
    .target Pilot Bellowfiz
step
    >>Sprecht mit |cRXP_FRIENDLY_Stonegear|r, |cRXP_FRIENDLY_Beldin|r, und |cRXP_FRIENDLY_Loslor|r
    >>|cRXP_WARN_Zieht |cRXP_ENEMY_Junger Schwarzbär|r zu den |cRXP_FRIENDLY_Gebirgsjäger von Eisenschmiede|r, falls ihr welche gezogen habt (stellt sicher, dass ihr 51%+ Schaden macht um Fortschritt zu erhalten)|r
    .accept 313 >> Akzeptiert die Quest Der altgediente Bau
    .target +Pilot Stonegear
    .goto Dun Morogh,49.622,48.612
    .turnin 400 >> Gebt die Quest Werkzeuge für Steelgrill ab
    .target +Beldin Steelgrill
    .goto Dun Morogh,50.45,49.09
    .accept 5541 >> Akzeptiert die Quest Munition für Rumbleshot
    .vendor >> Verkauft Müll
    .goto Dun Morogh,50.084,49.420
    .target +Loslor Rudge
    .isQuestAvailable 312
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Klippeneber|r und |cRXP_ENEMY_Großer Klippeneber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r und |cRXP_LOOT_Klippeneberrippchen|r
    >>|cRXP_WARN_Passt auf, da sie|r |T132337:0|t[Sturmangriff] wirken |cRXP_WARN_(Selbst Sofort: Erhöht Laufgeschwindigkeit für 3 Sek., verursacht 25-70 Nahkampfschaden bei Treffer. Nur aus der Distanz wirkbar)|r
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step
    .goto Dun Morogh,50.39,51.67,50,0
    .goto Dun Morogh,50.37,53.05,50,0
    .goto Dun Morogh,49.18,50.97,50,0
    .goto Dun Morogh,45.37,49.50,50,0
    .goto Dun Morogh,43.69,52.05,50,0
    .goto Dun Morogh,45.18,54.38,50,0
    .goto Dun Morogh,45.16,57.81,50,0
    .goto Dun Morogh,50.39,51.67,50,0
    .goto Dun Morogh,50.37,53.05,50,0
    .goto Dun Morogh,49.18,50.97,50,0
    .goto Dun Morogh,45.37,49.50,50,0
    .goto Dun Morogh,43.69,52.05,50,0
    .goto Dun Morogh,45.18,54.38,50,0
    .goto Dun Morogh,45.16,57.81,50,0
    .goto Dun Morogh,50.39,51.67,50,0
    .goto Dun Morogh,50.37,53.05,50,0
    .goto Dun Morogh,49.18,50.97,50,0
    .goto Dun Morogh,45.37,49.50,50,0
    .goto Dun Morogh,43.69,52.05,50,0
    .goto Dun Morogh,45.18,54.38
    >>Tötet |cRXP_ENEMY_Junger Schwarzbär|r und |cRXP_ENEMY_Eisklauenbär|r. Plündert sie für |cRXP_LOOT_Dickes Bärenfell|r
    >>|cRXP_WARN_Lockt |cRXP_ENEMY_Junger Schwarzbär|r und |cRXP_ENEMY_Eisklauenbär|r zu nahe gelegenen |cRXP_FRIENDLY_Gebirgsjäger von Eisenschmiede|r (Stellt sicher, dass ihr 51%+ Schaden verursacht, um belohnt zu werden)|r
    >>|cRXP_WARN_Seid vorsichtig sie wirken|r |T135853:0|t[Eisklaue] |cRXP_WARN_(Nahkampf Sofortangriff: verursacht zusätzlich 4 Nahkampfschaden)|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob Young Black Bear
    .mob Ice Claw Bear
step
#loop
	.line Dun Morogh,51.70,49.66,51.08,52.42,51.43,53.21,50.06,51.66,49.56,50.82,48.12,49.10,48.21,46.93,45.48,50.04,44.07,52.50,43.69,55.59,42.78,56.86,44.45,59.33,46.31,61.85,46.26,59.49,48.08,59.05,49.40,58.97,48.30,56.86,49.09,54.74,49.61,54.32,51.43,53.21
	.goto Dun Morogh,51.70,49.66,40,0
	.goto Dun Morogh,51.08,52.42,40,0
	.goto Dun Morogh,51.43,53.21,40,0
	.goto Dun Morogh,50.06,51.66,40,0
	.goto Dun Morogh,49.56,50.82,40,0
	.goto Dun Morogh,48.12,49.10,40,0
	.goto Dun Morogh,48.21,46.93,40,0
	.goto Dun Morogh,45.48,50.04,40,0
	.goto Dun Morogh,44.07,52.50,40,0
	.goto Dun Morogh,43.69,55.59,40,0
	.goto Dun Morogh,42.78,56.86,40,0
	.goto Dun Morogh,44.45,59.33,40,0
	.goto Dun Morogh,46.31,61.85,40,0
	.goto Dun Morogh,46.26,59.49,40,0
	.goto Dun Morogh,48.08,59.05,40,0
	.goto Dun Morogh,49.40,58.97,40,0
	.goto Dun Morogh,48.30,56.86,40,0
	.goto Dun Morogh,49.09,54.74,40,0
	.goto Dun Morogh,49.61,54.32,40,0
	.goto Dun Morogh,51.43,53.21,40,0
    >>Tötet |cRXP_ENEMY_Klippeneber|r und |cRXP_ENEMY_Großer Klippeneber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r und |cRXP_LOOT_Klippeneberrippchen|r
    >>|cRXP_WARN_Passt auf, da sie|r |T132337:0|t[Sturmangriff] wirken |cRXP_WARN_(Selbst Sofort: Erhöht Laufgeschwindigkeit für 3 Sek., verursacht 25-70 Nahkampfschaden bei Treffer. Nur aus der Distanz wirkbar)|r
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob Crag Boar
    .mob Large Crag Boar
step
    .goto Dun Morogh,49.426,48.410
    >>Sprecht mit |cRXP_FRIENDLY_Bellowfiz|r
    .turnin 317 >> Gebt die Quest Vorräte für Jetsteam ab
    .accept 318 >> Akzeptiert die Quest Immerschimmer
    .target Pilot Bellowfiz
step
#loop
	.line Dun Morogh,51.70,49.66,51.08,52.42,51.43,53.21,50.06,51.66,49.56,50.82,48.12,49.10,48.21,46.93,45.48,50.04,44.07,52.50,43.69,55.59,42.78,56.86,44.45,59.33,46.31,61.85,46.26,59.49,48.08,59.05,49.40,58.97,48.30,56.86,49.09,54.74,49.61,54.32,51.43,53.21
	.goto Dun Morogh,51.70,49.66,40,0
	.goto Dun Morogh,51.08,52.42,40,0
	.goto Dun Morogh,51.43,53.21,40,0
	.goto Dun Morogh,50.06,51.66,40,0
	.goto Dun Morogh,49.56,50.82,40,0
	.goto Dun Morogh,48.12,49.10,40,0
	.goto Dun Morogh,48.21,46.93,40,0
	.goto Dun Morogh,45.48,50.04,40,0
	.goto Dun Morogh,44.07,52.50,40,0
	.goto Dun Morogh,43.69,55.59,40,0
	.goto Dun Morogh,42.78,56.86,40,0
	.goto Dun Morogh,44.45,59.33,40,0
	.goto Dun Morogh,46.31,61.85,40,0
	.goto Dun Morogh,46.26,59.49,40,0
	.goto Dun Morogh,48.08,59.05,40,0
	.goto Dun Morogh,49.40,58.97,40,0
	.goto Dun Morogh,48.30,56.86,40,0
	.goto Dun Morogh,49.09,54.74,40,0
	.goto Dun Morogh,49.61,54.32,40,0
	.goto Dun Morogh,51.43,53.21,40,0
    .xp 5+2690 >> Farmt bis 2690+/2800 XP
    .mob Young Black Bear
    .mob Crag Boar
step
    #completewith InnLS1
    +|cRXP_WARN_Legt euren aktuellen|r |T135148:0|t[Stab] ab
    -- +|cRXP_WARN_Remember the Inn Logout Skip soon. Unequip your current|r |T135148:0|t[Staff]
    -- >>|cRXP_WARN_NOTE: Itemrack currently can cause problems after logout skipping where your ingame UI freezes. Make sure to disable the addon or make a /reload command you can click when/if that happens|r
step
    #completewith Tannok
    .cast 1459 >> |T135932:0|t[Arkane Intelligenz] nachbuffen
    .cast 168 >> |T135843:0|t[Frostrüstung] Nachbuffen
step
    .goto Dun Morogh,46.83,52.36
    >>Sprecht mit |cRXP_FRIENDLY_Ragnar|r
    .accept 384 >> Akzeptiert die Quest Eberrippchen in Biersauce
    .target Ragnar Thunderbrew
step
    #completewith next
    .goto Dun Morogh,46.97,51.99,10,0
    .goto Dun Morogh,47.50,52.08,12 >>Geht hinein
step
    .goto Dun Morogh,47.217,52.195
    >>Sprecht mit |cRXP_FRIENDLY_Tannok|r
    .turnin 2160,2 >> Gebt die Quest Vorräte für Tannok ab
    .target Tannok Frosthammer
    .xp >6,1
step
    #completewith next
    .goto Dun Morogh,46.97,51.99,10,0
    .goto Dun Morogh,47.50,52.08,12 >>Geht hinein
step
    #sticky
    #label Tannok
    .goto Dun Morogh,47.217,52.195,0,0
    >>Sprecht mit |cRXP_FRIENDLY_Tannok|r
    .turnin 2160,2 >> Gebt die Quest Vorräte für Tannok ab
    .target Tannok Frosthammer
step
    .goto Dun Morogh,47.50,52.08
    >>Sprecht mit |cRXP_FRIENDLY_Magis|r oben
    .trainer >> Erlerne die Klassenfähigkeiten (Feuerball Rang 2, Feuerschlag)
    .target Magis Sparkmantle
    .isQuestAvailable 312
step
    #completewith Golorn
    .goto Dun Morogh,47.38,52.52
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    .home >> Setzt den Ruhestein von Euch in die Brauerei Donnerbräu
    .target Innkeeper Belm
    .isQuestAvailable 312
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Kauft ein|r |T132800:0|t[Rhapsody-Malzbier] |cRXP_BUY_von ihm|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6
    .money <0.0050
step
    #requires Tannok
    .goto Dun Morogh,46.83,52.36
    >>Sprecht mit |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >> Gebt die Quest Eberrippchen in Biersauce ab
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Kauft 20|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .collect 1179,20,312,1 --Ice Cold Milk (20)
    .target Innkeeper Belm
    .money <0.0582
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Kauft 15|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .collect 1179,15,312,1 --Ice Cold Milk (15)
    .target Innkeeper Belm
    .money <0.0457
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Kauft 10|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Innkeeper Belm
    .money <0.0332
step
    #label InnLS1
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Kauft 5|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .collect 1179,5,312,1 --Ice Cold Milk (5)
    .target Innkeeper Belm
    .money <0.0207
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Kauft 20|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    .collect 159,20,312,1 --Refreshing Spring Water (20)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0182
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Kauft 15|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    .collect 159,15,312,1 --Refreshing Spring Water (15)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0157
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Kauft 10|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    .collect 159,10,312,1 --Refreshing Spring Water (10)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0132
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Kauft 5|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    .collect 159,5,312,1 --Refreshing Spring Water (5)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0107
step << skip
    #completewith SenirO
    .goto Dun Morogh,47.46,52.60,-1
    .goto Dun Morogh,47.13,54.91,35 >>|cRXP_WARN_Springt auf die Fässer auf der Wand hinter |cRXP_FRIENDLY_Belm|r. Logout-Skip nach Kharanos|r
step
    #sticky
    #label Golorn
    .goto Dun Morogh,46.77,53.72,-1
    >>Sprecht mit |cRXP_FRIENDLY_Golorn|r
    >>|cRXP_BUY_Kauft ein|r |T135637:0|t[Kürschnermesser] |cRXP_BUY_von ihm|r
    .collect 7005,1,312,1 --Skinning Knife (1)
    .target Golorn Frostbeard
step
    #label SenirO
    .goto Dun Morogh,46.726,53.826,-1
    >>Sprecht mit |cRXP_FRIENDLY_Senir|r
    .turnin 420 >> Gebt Senirs Beobachtungen ab
    .target Senir Whitebeard
step
    #completewith next
    #requires Golorn
    +Legt das |T135637:0|t[Kürschnermesser] an
    .use 7005
    .itemcount 7005,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.2
step
    #requires Golorn
#loop
	.line Dun Morogh,42.57,54.80,41.89,54.51,42.13,52.68,42.46,51.96,41.91,51.43,42.46,51.96,42.13,52.68,42.57,54.80
	.goto Dun Morogh,42.57,54.80,10,0
	.goto Dun Morogh,41.89,54.51,10,0
	.goto Dun Morogh,42.13,52.68,10,0
	.goto Dun Morogh,42.46,51.96,10,0
	.goto Dun Morogh,41.91,51.43,10,0
	.goto Dun Morogh,42.46,51.96,10,0
	.goto Dun Morogh,42.13,52.68,10,0
	.goto Dun Morogh,42.57,54.80,10,0
    >>Tötet |cRXP_ENEMY_Junger Wendigo|r und |cRXP_ENEMY_Wendigos|r. Plündert sie für |cRXP_LOOT_Wendigomähne|r
    >>|cRXP_WARN_Seid vorsichtig, weil sie|r |T135848:0|t[Frostschadenatem] wirken |cRXP_WARN_(Nahkampfzauber: Der 6-10 Frostschaden verursacht) und sie haben|r |T135849:0|t[Frostschadenwiderstand]
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Young Wendigo
    .mob Wendigo
step
    .goto Dun Morogh,44.13,56.95
    >>Öffnet die |cRXP_PICK_Munitionkiste|r auf dem Boden. Sammelt die Beute für |cRXP_LOOT_Rumbleshot's Munition|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #completewith Ammo
    .goto Dun Morogh,40.60,62.24,45,0
    >>Tötet |cRXP_ENEMY_Klippeneber|r und |cRXP_ENEMY_Halbwüchsiger Schneeleopard|r auf dem Weg
    >>Plündert die|cRXP_ENEMY_Klippeneber|r für |cRXP_LOOT_Klippeneberrippchen|r
    >>|cRXP_WARN_Passt auf, da |cRXP_ENEMY_Klippeneber|r|r |T132337:0|t[Ansturm] wirken|cRXP_WARN_(Selbst Sofort: Erhöht Laufgeschwindigkeit für 3 Sek., verursacht 25-70 Nahkampfschaden bei Treffer. Nur aus der Distanz wirk bar)|r
    .complete 384,1 --Crag Boar Rib (6)
    .disablecheckbox
    .goto Dun Morogh,40.682,65.130,20 >>Reist in Richtung |cRXP_FRIENDLY_Hegnar|r
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .xp >7-1000,1
    .isQuestAvailable 384
step
    #completewith Ammo
    .goto Dun Morogh,40.60,62.24,45,0
    >>Tötet |cRXP_ENEMY_Klippeneber|r und |cRXP_ENEMY_Halbwüchsiger Schneeleopard|r auf dem Weg
    >>|cRXP_WARN_Passt auf, da |cRXP_ENEMY_Klippeneber|r|r |T132337:0|t[Ansturm] wirken|cRXP_WARN_(Selbst Sofort: Erhöht Laufgeschwindigkeit für 3 Sek., verursacht 25-70 Nahkampfschaden bei Treffer. Nur aus der Distanz wirk bar)|r
    .goto Dun Morogh,40.682,65.130,20 >>Reist in Richtung |cRXP_FRIENDLY_Hegnar|r
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .xp >7-1000,1
    .isQuestTurnedIn 384
step
    #completewith next
    .goto Dun Morogh,40.60,62.24,45,0
    .goto Dun Morogh,40.682,65.130,20 >>Reist in Richtung |cRXP_FRIENDLY_Hegnar|r
    .xp <7-1000,1
step
    #label Ammo
    .goto Dun Morogh,40.682,65.130
    >>Sprecht mit |cRXP_FRIENDLY_Hegnar|r
    .turnin 5541 >> Gebt die Quest Munition für Rumbleshot ab
    .vendor >> Verkauft Müll
    .target Hegnar Rumbleshot
    .isQuestAvailable 312
step
    #completewith TundraOne
    .goto Dun Morogh,37.98,61.90,50,0
    .goto Dun Morogh,35.11,56.78,45,0
    .goto Dun Morogh,35.62,54.73,50,0
    .goto Dun Morogh,36.38,52.49,40,0
    >>|cRXP_WARN_Verursacht 51%+ Schaden bei nahen |cRXP_ENEMY_Halbwüchsiger Schneeleopard|r und |cRXP_ENEMY_Junger Schwarzbär|r, zieht sie dann zu |cRXP_FRIENDLY_Gebirgsjäger von Eisenschmiede|r, um sie effizienter zu töten|r
    >>Tötet |cRXP_ENEMY_Großer Klippeneber|r und |cRXP_ENEMY_Klippeneber|r auf dem Weg. Plündert sie für |cRXP_LOOT_Klippeneberrippchen|r
    >>|cRXP_WARN_Passt auf, da |cRXP_ENEMY_Großer Klippeneber|r und |cRXP_ENEMY_Klippeneber|r wirken|r |T132337:0|t[Ansturm] |cRXP_WARN_(Selbst Sofort: Erhöht Laufgeschwindigkeit für 3 Sek., verursacht 25-70 Nahkampfschaden bei Treffer. Nur aus der Distanz wirk bar)|r
    .complete 384,1 --Crag Boar Rib (6)
    .disablecheckbox
    .xp 7 >> Farmt bis Stufe 7 auf dem Weg zu |cRXP_FRIENDLY_Tundra|r, bevor ihr mit ihm sprecht
    .target Ironforge Mountaineer
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .isQuestAvailable 384
step
    #completewith next
    .goto Dun Morogh,37.98,61.90,50,0
    .goto Dun Morogh,35.11,56.78,45,0
    .goto Dun Morogh,35.62,54.73,50,0
    .goto Dun Morogh,36.38,52.49,40,0
    >>|cRXP_WARN_Verursacht 51%+ Schaden bei nahen |cRXP_ENEMY_Halbwüchsiger Schneeleopard|r und |cRXP_ENEMY_Junger Schwarzbär|r, zieht sie dann zu |cRXP_FRIENDLY_Gebirgsjäger von Eisenschmiede|r, um sie effizienter zu töten|r
    >>Tötet |cRXP_ENEMY_Großer Klippeneber|r und |cRXP_ENEMY_Klippeneber|r auf dem Weg
    >>|cRXP_WARN_Passt auf, da |cRXP_ENEMY_Großer Klippeneber|r und |cRXP_ENEMY_Klippeneber|r wirken|r |T132337:0|t[Ansturm] |cRXP_WARN_(Selbst Sofort: Erhöht Laufgeschwindigkeit für 3 Sek., verursacht 25-70 Nahkampfschaden bei Treffer. Nur aus der Distanz wirk bar)|r
    .xp 7 >> Farmt bis Stufe 7 auf dem Weg zu |cRXP_FRIENDLY_Tundra|r, bevor ihr mit ihm sprecht
    .target Ironforge Mountaineer
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .isQuestTurnedIn 384
step
    #label TundraOne
    .goto Dun Morogh,34.57,51.66
    >>Sprecht mit |cRXP_FRIENDLY_Tundra|r
    .accept 312 >> Akzeptiert die Quest Tundra MacGranns gestohlene Vorräte
    .target Tundra MacGrann
step
    #completewith next
    +|cRXP_WARN_Zieht einen |cRXP_ENEMY_Eisklauenbär|r zu|r |cRXP_FRIENDLY_Rejold|r
    >>|cRXP_WARN_Versucht, die Quest anzunehmen, bevor der |cRXP_ENEMY_Eisklauenbär|r stirbt, um Quest-Fortschritt zu erhalten|r
    >>|cRXP_WARN_Seid vorsichtig sie wirken|r |T135853:0|t[Eisklaue] |cRXP_WARN_(Nahkampf Sofortangriff: verursacht zusätzlich 4 Nahkampfschaden)|r
    >>|cRXP_WARN_Stellt sicher, dass ihr 51%+ Schaden verursacht, um Questfortschritt zu erhalten|r
    .mob Ice Claw Bear
step
    >>Sprecht mit |cRXP_FRIENDLY_Rejold|r und |cRXP_FRIENDLY_Marleth|r
    .turnin 318 >> Gebt die Quest Immerschimmer ab
    .accept 319 >> Akzeptiert die Quest Ein Gefallen für etwas Immerschimmer
    .accept 315 >> Akzeptiert die Quest Das perfekte Starkbier
    .target +Rejold Barleybrew
    .goto Dun Morogh,30.19,45.73
    .accept 310 >> Akzeptiert die Quest Bittere Rivalen
    .goto Dun Morogh,30.186,45.531
    .target +Marleth Barleybrew
step
    .goto Dun Morogh,30.45,46.01,0,0
    >>Sprecht mit |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_Kauft bis zu 10 weitere|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .vendor >> Verkauft Müll
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Keeg Gibn
    .itemcount 1179,10
    .money <0.0350
    .isOnQuest 319
step
    .goto Dun Morogh,30.45,46.01,0,0
    >>Sprecht mit |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_Kauft bis zu 5 weitere|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .vendor >> Verkauft Müll
    .collect 1179,5,312,1 --Ice Cold Milk (5)
    .target Keeg Gibn
    .itemcount 1179,5
    .money <0.0225
    .isOnQuest 319
step
    #completewith CaveLS
    .goto Dun Morogh,33.51,47.50,50,0
    .goto Dun Morogh,36.85,45.48,50,0
    >>Tötet |cRXP_ENEMY_Eisklauenbär|r, |cRXP_ENEMY_Alter Klippeneber|r und |cRXP_ENEMY_Schneeleoparden|r auf dem Weg zur Höhle. Plündert die |cRXP_ENEMY_Alten Klippeneber|r für die |cRXP_LOOT_Klippeneberrippchen|r
    >>|cRXP_WARN_Fokussiert euch auf die|r |cRXP_ENEMY_Schneeleoparden|r
    >>|cRXP_WARN_Seid vorsichtig, da |cRXP_ENEMY_Eisklauenbär|r wirken|r |T135853:0|t[Eisklaue] |cRXP_WARN_(Nahkampf Sofortangriff: Verursacht zusätzlichen 4 Nahkampfschaden), und |cRXP_ENEMY_Alter Klippeneber|r wirken|r |T132337:0|t[Ansturm] |cRXP_WARN_(Selbst Sofort: Erhöht die Bewegungsgeschwindigkeit um 3 Sek., verursacht 25-85 Nahkampfschaden bei Treffer. Nur bei Reichweite wirkbar)|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .complete 384,1 --Crag Boar Rib (6)
    .mob +Elder Crag Boar
    .isQuestAvailable 384
step
    #completewith CaveLS
    .goto Dun Morogh,33.51,47.50,50,0
    .goto Dun Morogh,36.85,45.48,50,0
    >>Tötet |cRXP_ENEMY_Eisklauenbär|r, |cRXP_ENEMY_Alter Klippeneber|r, und |cRXP_ENEMY_Schneeleoparden|rauf dem Weg zur Höhle
    >>|cRXP_WARN_Fokussiert euch auf die|r |cRXP_ENEMY_Schneeleoparden|r
    >>|cRXP_WARN_Seid vorsichtig, da |cRXP_ENEMY_Eisklauenbär|r wirken|r |T135853:0|t[Eisklaue] |cRXP_WARN_(Nahkampf Sofortangriff: Verursacht zusätzlichen 4 Nahkampfschaden), und |cRXP_ENEMY_Alter Klippeneber|r wirken|r |T132337:0|t[Ansturm] |cRXP_WARN_(Selbst Sofort: Erhöht die Bewegungsgeschwindigkeit um 3 Sek., verursacht 25-85 Nahkampfschaden bei Treffer. Nur bei Reichweite wirkbar)|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .isQuestTurnedIn 384
step << skip
    #completewith next
    .goto Dun Morogh,38.00,42.77,30 >> Geht in die Höhle
    .isOnQuest 319
step << skip
    #label CaveLS
    .goto Dun Morogh,38.32,43.36
    .goto Dun Morogh,47.13,54.91,30 >> |cRXP_WARN_Macht den Logout-Skip in der Höhle, um nach Kharanos zu teleportieren|r
    .isOnQuest 319
step
    .goto Dun Morogh,46.726,53.826
    >>Sprecht mit |cRXP_FRIENDLY_Senir|r
    .accept 287 >> Akzeptiert die Quest Höhle der Frostmane
    .target Senir Whitebeard
step
    #completewith Rhapsody1
    .goto Dun Morogh,46.97,51.99,10,0
    .goto Dun Morogh,47.19,52.02,12 >>Geht hinein
step
    .goto Dun Morogh,47.38,52.52
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Kauft|r |T132800:0|t[Rhapsody-Malzbier] |cRXP_BUY_und ein|r |T132800:0|t[Donnerbier] |cRXP_BUY_von ihm|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311,1 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .itemcount 2886,6
    .isQuestAvailable 384
step
    #label Rhapsody1
    .goto Dun Morogh,47.38,52.52
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Kauft ein|r |T132800:0|t[Donnerbier] |cRXP_BUY_bei ihm|r
    .collect 2686,1,311,1 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .itemcount 2886,<6
step
    #completewith next
    .goto Dun Morogh,47.50,52.40,8,0
    .goto Dun Morogh,47.72,52.43,8 >>Geht die Treppe runter
step
    #completewith next
    .goto Dun Morogh,47.65,52.66
    >>Sprecht mit |cRXP_FRIENDLY_Jarven|r unten
    .turnin 308 >> Gebt die Quest Jarvens Ablenkung ab
    .target Jarven Thunderbrew
step
    .goto Dun Morogh,47.72,52.70
    >>Bewegt die Maus über |cRXP_PICK_Bewachtes Fass mit Donnerbier|r unten. Wartet bis das |cRXP_PICK_Bewachte Fass mit Donnerbier|r nicht mehr bewacht ist
    >>Öffnet das |cRXP_PICK_Unbewachtes Fass mit Donnerbier|r
    .turnin 310 >> Gebt die Quest Bittere Rivalen ab
    .accept 311 >> Akzeptiert die Quest Rückkehr zu Marleth
step
    .goto Dun Morogh,47.38,52.52
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Kauft bis zu 10 weitere|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Innkeeper Belm
    .money <0.0250
step
    .goto Dun Morogh,47.38,52.52
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Kauft bis zu 5 weitere|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .collect 1179,5,312,1 --Ice Cold Milk (5)
    .target Innkeeper Belm
    .money <0.0125
step
    .goto Dun Morogh,47.19,52.02,12,0
    .goto Dun Morogh,46.97,51.99,10,0
    .goto Dun Morogh,46.83,52.36,20 >>Verlasst das Gasthaus
    .isOnQuest 287
step
    .goto Dun Morogh,46.83,52.36
    >>Sprecht mit |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >> Gebt die Quest Eberrippchen in Biersauce ab
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    #completewith next
    .goto Dun Morogh,46.65,47.42,40,0
    +|cRXP_WARN_Fügt den in der nähe befindlichen |cRXP_ENEMY_Schneefährtenleserwolf|r, |cRXP_ENEMY_Winterwölfe|r und |cRXP_ENEMY_Junge Schwarzbären  51%+ Schaden zu|r. Zieht sie zum |cRXP_FRIENDLY_Gebirgsjäger von Eisenschmiede|r, um sie effizienter zu töten|r
    >>|cRXP_WARN_Seid Vorsichtig denn |cRXP_ENEMY_Schneefährtenleserwölfe|r haben|r |T132150:0|t[Erhöte Aggo Reichweite] |cRXP_WARN_(Die Aggro Reichweite beträgt 8 yards)|r
    .mob Snow Tracker Wolf
    .mob Winter Wolf
    .mob Young Black Bear
    .target Ironforge Mountaineer
step
    .goto Dun Morogh,42.91,45.17,25,0
    .goto Dun Morogh,42.32,45.27,45 >> Lauft die Rampe hinauf zu den |cRXP_ENEMY_Seher der Frostmane|r
    .isOnQuest 315
step
    #requires SeerRamp
    #completewith next
    >>Tötet die |cRXP_ENEMY_Kopfjäger der Frostmane|r patrolie
    >>|cRXP_WARN_Seid vorsichtig, da er zwischen allen stationären|r |cRXP_ENEMY_Seher der Frostmane|r patroulliert
    >>|cRXP_WARN_Seid vorsichtig sie wirken|r |T132222:0|t[Schießen] |cRXP_WARN_(Distanzangriff: Verursacht 8-15 Schaden)|r
    .complete 287,1 --Kill Frostmane Headhunters (5)
    .mob Frostmane Headhunter
step
    #label ShimmerB
    .goto Dun Morogh,42.07,45.48,40,0
    .goto Dun Morogh,42.11,44.63,40,0
    .goto Dun Morogh,41.67,43.53,40,0
    .goto Dun Morogh,41.27,44.37,20,0
    .goto Dun Morogh,41.48,45.01,30,0
    .goto Dun Morogh,41.08,44.86,30,0
    .goto Dun Morogh,41.14,45.54,40,0
    .goto Dun Morogh,40.34,42.84,40,0
    .goto Dun Morogh,39.67,39.87,20,0
    .goto Dun Morogh,39.94,37.70,20,0
    .goto Dun Morogh,41.84,35.63
    >>Tötet |cRXP_ENEMY_Seher der Frostmane|r. Plündert sie für |cRXP_LOOT_Schimmerkraut|r
    >>Öffnet die |cRXP_PICK_Schimmerkrautkorb|r auf dem Boden. Plündert sie für ihr |cRXP_LOOT_Schimmerkraut|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    >>|cRXP_WARN_Seid vorsichtig denn sie wirken|r |T136048:0|t[Blitzschlag] |cRXP_WARN_(Distanzzauber: WElcher 15-30 Naturschaden verursacht)|r
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step
    #completewith IBCave
    >>Tötet |cRXP_ENEMY_Großer Klippeneber|r und |cRXP_ENEMY_Alter Klippeneber|r. Plündert sie für |cRXP_LOOT_Klippeneberrippchen|r
    .complete 384,1 --Crag Boar Rib (6)
    .mob Large Crag Boar
    .mob Elder Crag Boar
step
    #completewith next
    .goto Dun Morogh,40.45,47.23,40,0
    .goto Dun Morogh,37.72,51.88,40,0
    >>Tötet die zwei |cRXP_ENEMY_Alter Klippeneber|r auf dem Weg zur Höhle (falls dort welche sind)
    >>|cRXP_WARN_Seid vorsichtig, da sie|r |T132337:0|t[Ansturm] wirken |cRXP_WARN_(Selbst Sofort: Erhöht die Bewegungsgeschwindigkeit um 3 Sek., verursacht 25-85 Nahkampfschaden bei Treffer. Nur bei Reichweite wirkbar)|r
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob Elder Crag Boar
step
    #label IBCave
    .goto Dun Morogh,37.85,53.71,50 >>Reist zur Höhle
    .isOnQuest 312
step
    #completewith next
    +|cRXP_WARN_Denk daran, nach dem Plündern seinen Angriffen durch einen Sprung mit Richtungswechsel auszuweichen, um den Benommenheits-Effekt zu vermeiden, und auf den Baumstamm zu springen, um ihm vorübergehend zu entgehen.|r
step
    .goto Dun Morogh,38.51,53.93
    >>|cRXP_WARN_Falls |cRXP_ENEMY_Eisbart der Alte|r in der Höhle ist, führt ihn die Seite der Höhle hinauf, dann den ganzen Weg nach oben. Wartet auf ihn, bis er näher kommt, springt dann zurück nach unten und geht zum hinteren Teil der Höhle|r
    >>Öffnet |cRXP_PICK_MacGranns Fleisch-Spind|r auf dem Boden. Plündert sie für |cRXP_LOOT_MacGranns Trockenfleisch|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3120 >>|cRXP_WARN_KLICK HIER WENN DU PROBLEME HAST|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
    .mob Old Icebeard
step
    .goto Dun Morogh,34.57,51.66
    >>Sprecht mit |cRXP_FRIENDLY_Tundra|r
    .turnin 312,1 >> Gebt die Quest Tundra MacGranns gestohlene Vorräte ab
    .target Tundra MacGrann
step
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17,40,0
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17
    >>Tötet |cRXP_ENEMY_Eisklauenbär|r, |cRXP_ENEMY_Alter Klippeneber|r und |cRXP_ENEMY_Schneeleoparden|r. Plündert die |cRXP_ENEMY_Alten Klippeneber|r für die |cRXP_LOOT_Klippeneberrippchen|r
    >>|cRXP_WARN_Erinnert euch daran, ein |cRXP_ENEMY_Eisklauenbär|r oder |cRXP_ENEMY_Schneeleoparden|r zum Questgeber zurück zu kiten, falls möglich|r
    >>|cRXP_WARN_Seid vorsichtig, da |cRXP_ENEMY_Eisklauenbär|r wirken|r |T135853:0|t[Eisklaue] |cRXP_WARN_(Nahkampf Sofortangriff: Verursacht zusätzlichen 4 Nahkampfschaden), und |cRXP_ENEMY_Alter Klippeneber|r wirken|r |T132337:0|t[Ansturm] |cRXP_WARN_(Selbst Sofort: Erhöht die Bewegungsgeschwindigkeit um 3 Sek., verursacht 35-85 Nahkampfschaden bei Treffer. Nur bei Reichweite wirkbar)|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .complete 384,1 --Crag Boar Rib (6)
    .disablecheckbox
    .mob Elder Crag Boar
    .isQuestAvailable 384
step
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17,40,0
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17
    >>Tötet |cRXP_ENEMY_Eisklauenbär|r, |cRXP_ENEMY_Alter Klippeneber|r, und |cRXP_ENEMY_Schneeleopard|r
    >>|cRXP_WARN_Erinnert euch daran, ein |cRXP_ENEMY_Eisklauenbär|r oder |cRXP_ENEMY_Schneeleoparden|r zum Questgeber zurück zu kiten, falls möglich|r
    >>|cRXP_WARN_Seid vorsichtig, da |cRXP_ENEMY_Eisklauenbär|r wirken|r |T135853:0|t[Eisklaue] |cRXP_WARN_(Nahkampf Sofortangriff: Verursacht zusätzlichen 4 Nahkampfschaden), und |cRXP_ENEMY_Alter Klippeneber|r wirken|r |T132337:0|t[Ansturm] |cRXP_WARN_(Selbst Sofort: Erhöht die Bewegungsgeschwindigkeit um 3 Sek., verursacht 35-85 Nahkampfschaden bei Treffer. Nur bei Reichweite wirkbar)|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .isQuestTurnedIn 384
step
    >>Sprecht mit |cRXP_FRIENDLY_Rejold|r und |cRXP_FRIENDLY_Marleth|r
    .turnin 315,1 >> Gebt die Quest Das perfekte Starkbier ab
    .accept 413 >> Akzeptiert die Quest Schimmerstarkbier
    .turnin 319 >> Gebt die Quest Ein Gefallen für etwas Immerschimmer ab
    .accept 320 >> Akzeptiert die Quest Rückkehr zu Bellowfiz
    .goto Dun Morogh,30.189,45.725
    .turnin 311 >> Gebt die Quest Rückkehr zu Marleth ab
    .goto Dun Morogh,30.186,45.531
    .target Rejold Barleybrew
step
    .goto Dun Morogh,30.45,46.01
    >>Sprecht mit |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_Kauft bis zu 10 weitere|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .collect 1179,10,287,1 --Ice Cold Milk (10)
    .target Keeg Gibn
    .money <0.0250
step
    .goto Dun Morogh,30.45,46.01
    >>Sprecht mit |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_Kauft bis zu 5 weitere|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .collect 1179,5,287,1 --Ice Cold Milk (5)
    .target Keeg Gibn
    .money <0.0125
step
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17,40,0
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17
    >>Tötet |cRXP_ENEMY_Alter Klippeneber|r. Plündert sie für |cRXP_LOOT_Klippeneberrippchen|r
    >>|cRXP_WARN_Seid vorsichtig, da sie|r |T132337:0|t[Ansturm] wirken |cRXP_WARN_(Selbst Sofort: Erhöht die Bewegungsgeschwindigkeit um 3 Sek., verursacht 35-85 Nahkampfschaden bei Treffer. Nur bei Reichweite wirkbar)|r
    .complete 384,1 --Crag Boar Rib (6)
    .mob Elder Crag Boar
step
    #completewith Explore
    .goto Dun Morogh,25.12,49.54,35,0
    .goto Dun Morogh,24.94,50.61,12 >>BETRETET die Höhle von der Nordseite
step
    .goto Dun Morogh,24.29,50.80,40,0
    .goto Dun Morogh,23.31,51.36
    >>Tötet die |cRXP_ENEMY_Kopfjäger der Frostmane|r in der Höhle
    >>|cRXP_WARN_Seid vorsichtig sie wirken|r |T132222:0|t[Schießen] |cRXP_WARN_(Distanzangriff: Verursacht 8-15 Schaden)|r
    >>|cRXP_WARN_Seid vorsichtig vor den patrouillierenden |cRXP_ENEMY_Kopfjäger der Frostmane|r im Inneren|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #label Explore
    .goto Dun Morogh,23.01,52.04,8,0
    .goto Dun Morogh,22.90,52.09
    >>|cRXP_WARN_Geht vorsichtig auf den Vorsprung herunter (fallt NICHT herunter). Geht vorsichtig den Vorsprung entlang, bis ihr Erfolg habt|r
    >>|cRXP_WARN_Seid vorsichtig vor dem |cRXP_ENEMY_Balgabzieher der Frostmane|r unten, da er euch auf dem Vorsprung angreifen könnte, wenn er in der Nähe ist|r
    >>|cRXP_WARN_Macht euch bereit|r |T134414:0|t[Ruhestein] zu wirken
    .link https://youtu.be/Zg4FNWw-P5k?t=3619 >>|cRXP_WARN_KLICKT HIER, wenn ihr Schwierigkeiten habt|r
    .complete 287,2 --Fully explore Frostmane Hold
step << skip
    #completewith next
    +|cRXP_WARN_Denkt bald an den Wirtshaus-Logout-Skip!|r
step
    #completewith Senir2
    .hs >> Ruhestein nach Theramore
step
    .goto Dun Morogh,47.38,52.52
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Kauft ein|r |T132800:0|t[Rhapsody-Malzbier] |cRXP_BUY_von ihm|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
step
    .goto Dun Morogh,47.50,52.08
    >>Sprecht mit |cRXP_FRIENDLY_Magis|r oben
    .trainer >> Lerne deine Klassenfähigkeiten (Frostblitz Rang 2, Verwandlung)
    .target Magis Sparkmantle
    .isQuestAvailable 314
step
    #completewith Senir2
    +|cRXP_WARN_Denkt daran|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch] zu behalten|r |cRXP_WARN_, um|r |T133971:0|t[Kochkunst] später |cRXP_WARN_bis 50 zu skillen|r
step
    .goto Dun Morogh,46.83,52.36
    >>Sprecht mit |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >> Gebt die Quest Eberrippchen in Biersauce ab
    .target Ragnar Thunderbrew
step
    #label Senir2
    .goto Dun Morogh,46.726,53.826
    >>Sprecht mit |cRXP_FRIENDLY_Senir|r
    .turnin 287,2 >> Gebt die Quest Höhle der Frostmähnen ab
    .accept 291 >> Akzeptiert die Quest Die Berichte
    .target Senir Whitebeard
step
    #completewith next
    .cast 1459 >> |T135932:0|t[Arkane Intelligenz] nachbuffen
    .cast 168 >> |T135843:0|t[Frostschadenrüstung] Nachbuffen
step
    >>Sprecht mit |cRXP_FRIENDLY_Bellowfiz|r und |cRXP_FRIENDLY_Stonegear|r
    .turnin 320,2 >> Gebt die Quest Rückkehr zu Bellowfiz ab
    .target +Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    .turnin 313 >> Gebt die Quest Der altgediente Bau
    .goto Dun Morogh,49.622,48.612
    .target +Pilot Stonegear
step
    #completewith next
    +|cRXP_WARN_Verursacht 51%+ Schaden gegen die nahen |cRXP_ENEMY_Winterwölfe|r, zieht sie dann zu den |cRXP_FRIENDLY_Gebirgsjäger von Eisenschmiede|r, die möglicherweise auf der Straße patrouillieren, um sie effizienter zu töten|r
    >>|cRXP_WARN_Wenn ihr die |cRXP_FRIENDLY_Gebirgsjäger von Eisenschmiede|r nicht seht, überspringt diesen Schritt|r
    .mob Winter Wolf
    .target Ironforge Mountaineer
step
    #completewith Rudra
    #label Dirt
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>Geht den Erdpfad hinauf
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_KLICKT HIER, wenn ihr Schwierigkeiten habt|r
    +|cRXP_WARN_Lockt |cRXP_ENEMY_Vagash|r zu|r |cRXP_FRIENDLY_Rudra|r
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.08,49.85
    >>Sprecht mit |cRXP_FRIENDLY_Rudra|r
    .accept 314 >> Akzeptiert die Quest Die Herde beschützen
    .target Rudra Amberstill
step
    .goto Dun Morogh,62.57,46.14,0
    .goto Dun Morogh,62.78,54.60,40,0
    .goto Dun Morogh,62.82,55.73
    >>Tötet |cRXP_ENEMY_Vagash|r. Plündert ihn für den |cRXP_LOOT_Fangzahn von Vagash|r
    >>|cRXP_WARN_zieht |cRXP_ENEMY_Vagash|r zu den |cRXP_FRIENDLY_Gebirgsjäger von Dun Morogh|r südlich der Ranch. Vergewissert euch, dass ihr ihm 51%+ Schaden zufügt|r
    >>|cRXP_WARN_Vergesst nicht, die Erkundungs-EP für Die Tundridhügel zu erhalten, und zieht den |cRXP_ENEMY_Schneeleopard|r zum |cRXP_FRIENDLY_Gebirgsjäger von Dun Morogh|r, wenn es bequem ist|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_KLICKT HIER, wenn ihr Schwierigkeiten habt|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto Dun Morogh,63.08,49.85
    >>Sprecht mit |cRXP_FRIENDLY_Rudra|r
    .turnin 314,3 >> Gebt die Quest Die Herde beschützen ab
    .target Rudra Amberstill
step << skip
    #completewith Ghilm
    +|cRXP_WARN_Denkt daran|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch] zu behalten|r |cRXP_WARN_, um|r |T133971:0|t[Kochkunst] später |cRXP_WARN_bis 50 zu skillen|r
step
    #completewith next
    .goto Dun Morogh,66.34,50.92,50,0
    .goto Dun Morogh,67.72,53.66,30,0
    +|cRXP_WARN_Lockt den |cRXP_ENEMY_Eisklauenbär|r zum |cRXP_FRIENDLY_Gebirgsjäger von Eisenschmiede|r (vergewissert euch, dass ihr 51%+ Schaden verursacht)|r
    >>|cRXP_WARN_Seid vorsichtig sie wirken|r |T135853:0|t[Eisklaue] |cRXP_WARN_(Nahkampf Sofortangriff: verursacht zusätzlich 4 Nahkampfschaden)|r
    .mob Ice Claw Bear
step
    #sticky
    #label Ghilm
    .goto Dun Morogh,68.40,54.45,0,0
    >>Sprecht mit |cRXP_FRIENDLY_Ghilm|r
    .train 2550 >> Erlernt |T133971:0|t[Kochkunst]
    .target Cook Ghilm
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
    >>Sprecht mit |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Kauft 15|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .collect 1179,15,432,1 --Ice Cold Milk (15)
    .target Kazan Mogosh
    .money <0.0395
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
    >>Sprecht mit |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Kauft 10|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .collect 1179,10,432,1 --Ice Cold Milk (10)
    .target Kazan Mogosh
    .money <0.0260
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
    >>Sprecht mit |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Kauft 5|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .collect 1179,5,432,1 --Ice Cold Milk (5)
    .target Kazan Mogosh
    .money <0.0135
step
    #requires Ghilm
    >>Sprecht mit |cRXP_FRIENDLY_Senator Mehr Stonehallow|r und |cRXP_FRIENDLY_Großknecht Stonebrow|r
    .accept 433 >> Akzeptiert die Quest Im Dienste des Volkes
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.67,55.97
    .accept 432 >> Akzeptiert die Quest Diese verfluchten Troggs!
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
step
    #completewith Bonesnappers
    >>Tötet |cRXP_ENEMY_Schädelhauer der Felsenkiefer|r
    >>|cRXP_WARN_Macht keinen Umweg, um sie zu töten|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #completewith next
    .goto Dun Morogh,70.74,56.23,30 >>Betretet die Höhle
step
    #label Bonesnappers
    .goto Dun Morogh,70.98,54.31,40,0
    .goto Dun Morogh,70.83,53.17,40,0
    .goto Dun Morogh,71.94,50.48,40,0
    .goto Dun Morogh,72.55,51.50,40,0
    .goto Dun Morogh,72.62,52.56
    >>Tötet |cRXP_ENEMY_Knochenknacker der Felsenkiefer|r in der Höhle
    >>|cRXP_WARN_Seid vorsichtig, da sie|r |T132154:0|t[Niederschlagen] wirken |cRXP_WARN_(Nahkampf Sofortzauber: betäubt für 2 Sek.)|r
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Bonesnapper
step
    .goto Dun Morogh,70.74,56.23,30,0
#loop
	.line Dun Morogh,69.93,57.29,70.57,58.61,69.68,59.37,68.36,59.57,69.16,57.51,69.93,57.29
	.goto Dun Morogh,69.93,57.29,30,0
	.goto Dun Morogh,70.57,58.61,30,0
	.goto Dun Morogh,69.68,59.37,30,0
	.goto Dun Morogh,68.36,59.57,30,0
	.goto Dun Morogh,69.16,57.51,30,0
	.goto Dun Morogh,69.93,57.29,30,0
    >>Tötet |cRXP_ENEMY_Schädelhauer der Felsenkiefer|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #sticky
    #label Frast
    .goto Dun Morogh,68.87,55.96,0,0
    >>Sprecht mit |cRXP_FRIENDLY_Frast|r
    .vendor >> Verkauft Müll
    .target Frast Dokner
step
    >>Sprecht mit |cRXP_FRIENDLY_Stonebrow|r und |cRXP_FRIENDLY_Mehr|r
    .turnin 432 >> Gebt die Quest Diese verfluchten Troggs! ab
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> Gebt die Quest Im Dienste des Volkes ab
    .goto Dun Morogh,68.67,55.97
    .target +Senator Mehr Stonehallow
step
    #requires Frast
    .goto Dun Morogh,69.33,55.46
    >>Sprecht mit |cRXP_FRIENDLY_Dank|r
    .train 2575 >> Erlernt |T136248:0|t[Bergbau]
    .target Dank Drizzlecut
step
    #label Shortcut1
    #completewith Pilot
    .goto Dun Morogh,70.35,55.28,5,0
    .link https://youtu.be/G2IscpFZVeQ?t=4034 >>|cRXP_WARN_KLICKT HIER, wenn ihr Schwierigkeiten habt|r
    .goto Dun Morogh,70.52,54.75,12 >>Nehmt den Weg nach oben hinter |cRXP_FRIENDLY_Dank|r
step
    #completewith Pilot
    #requires Shortcut1
    #label Shortcut2
    .goto Dun Morogh,70.97,50.70,50,0
    .goto Dun Morogh,72.90,49.79,50,0
    .goto Dun Morogh,77.11,48.82,50 >>|cRXP_WARN_Lockt die nahen |cRXP_ENEMY_Wegelagerer der Felsenkiefer|r zu den |cRXP_FRIENDLY_Gebirgsjäger von Eisenschmiede|r, die auf der Straße patrouillieren können (stellt sicher, dass ihr 51%+ Schaden verursacht, um Questfortschritt zu erhalten)|r
    .mob Rockjaw Ambusher
    .unitscan Ironforge Mountaineer
step
    #requires Shortcut2
    #completewith next
    .goto Dun Morogh,81.23,42.66,50,0
    .goto Dun Morogh,83.01,40.31,30 >>Lockt einen |cRXP_ENEMY_Vernarbter Klippeneber|r durch den Tunnel
    >>|cRXP_WARN_Seid vorsichtig, da sie|r |T132337:0|t[Ansturm] wirken|cRXP_WARN_(Selbst Sofort: Erhöht die Bewegungsgeschwindigkeit für 3 Sek., verursacht 40-100 Nahkampfschaden bei Treffer. Nur in der Ferne wirkbar)|r
    .mob Scarred Crag Boar
step
    #label Pilot
    .goto Dun Morogh,83.89,39.19
    >>Sprecht mit |cRXP_FRIENDLY_Hammerfoot|r
    .accept 419 >> Akzeptiert die Quest Der vermisste Pilot
    .target Pilot Hammerfoot
    .isQuestAvailable 419
step
    .goto Dun Morogh,81.37,37.02,30,0
    .goto Dun Morogh,79.67,36.17
    >>Klickt auf die |cRXP_PICK_Zwergische Leiche|r auf dem Boden
    >>|cRXP_WARN_STELLT SICHER, dass ihr einen freien Inventarplatz für diese Abgabe habt|r
    >>Denkt daran, dass ihr |cRXP_WARN_Marterklaue|cRXP_ENEMY_ zu |rHammerfoot|cRXP_FRIENDLY_ zurück ziehen werdet|r
    .turnin 419 >> Gebt die Quest Der vermisste Pilot ab
    .accept 417 >> Akzeptiert die Quest Pilotenrache
step
    .goto Dun Morogh,78.41,37.80,60,0
    .goto Dun Morogh,83.89,39.19
    >>Tötet |cRXP_ENEMY_Marterklaue|r. Plündert sie für |cRXP_LOOT_Räudige Klaue|r
    >>|cRXP_WARN_Lockt ihn ganz bis zu |cRXP_FRIENDLY_Hammerfoot|r (stellt sicher, dass ihr 51%+ Schaden verursacht, um den Questfortschritt zu erhalten)|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,83.892,39.188
    >>Sprecht mit |cRXP_FRIENDLY_Hammerfoot|r
    .turnin 417,1 >> Gebt die Quest Pilotenrache ab
    .target Pilot Hammerfoot
step
    #label Tunnel1
    #completewith Barleybrew
    .goto Dun Morogh,83.01,40.31,30,0
    .goto Dun Morogh,81.23,42.66,30 >>Lauft durch den Tunnel zurück
step
    .goto Dun Morogh,78.73,49.77
    >>|cRXP_WARN_Seid vorsichtig, da |cRXP_ENEMY_Vernarbter Klippeneber|r und |cRXP_ENEMY_Alter Klippeneber|r wirken|r |T132337:0|t[Ansturm] |cRXP_WARN_(Selbst Direktzauber: Erhöht die Bewegungsgeschwindigkeit für 3 Sek., verursacht 40-100 Nahkampfschaden bei Treffer. Nur in der Ferne wirkbar), und |cRXP_ENEMY_Eisklauenbär|r wirken|r |T135853:0|t[Eisklaue] |cRXP_WARN_(Nahkampf Sofortangriff: Verursacht zusätzlich 4 Nahkampfschaden)|r
    .xp 9+5450 >> Farmt bis 5450+/6500 XP
    .mob Ice Claw Bear
    .mob Elder Crag Boar
    .mob Scarred Crag Boar
step
    #requires Tunnel1
    #label Tunnel2
    #completewith Barleybrew
    .goto Dun Morogh,79.61,49.94,20,0
    .goto Dun Morogh,81.10,49.76,20,0
    .goto Dun Morogh,81.60,50.01,20,0
    .goto Dun Morogh,83.59,49.18,20,0
    >>Lockt einen |cRXP_ENEMY_Vernarbter Klippeneber|r auf deinem Weg
    >>|cRXP_WARN_Seid vorsichtig, da sie|r |T132337:0|t[Ansturm] wirken|cRXP_WARN_(Selbst Sofort: Erhöht die Bewegungsgeschwindigkeit für 3 Sek., verursacht 40-100 Nahkampfschaden bei Treffer. Nur in der Ferne wirkbar)|r
    .goto Dun Morogh,84.26,48.93,20 >>Führt den Berg-Skip durch. Erinnert euch, vorsichtig hinunterzufallen
    .mob Scarred Crag Boar
step
    #requires Tunnel2
    #completewith next
    >>|cRXP_WARN_Seid vorsichtig, da |cRXP_ENEMY_Vernarbter Klippeneber|r wirken|r |T132337:0|t[Ansturm] |cRXP_WARN_(Selbst Sofort: Erhöht die Bewegungsgeschwindigkeit für 3 Sek., verursacht 40-100 Nahkampfschaden bei Treffer. Nur in der Ferne wirkbar)|r
    .xp 9+5990 >> Farmt bis 5990+/6500 XP
    .mob Scarred Crag Boar
step
    #label Barleybrew
    .goto Dun Morogh,86.278,48.812
    >>Sprecht mit |cRXP_FRIENDLY_Gerstenbräu|r
    .turnin 413 >> Gebt die Quest Schimmerstarkbier ab
    .accept 414 >> Akzeptiert die Quest Starkbier für Kadrell
    .target Mountaineer Barleybrew
step
    .goto Dun Morogh,86.74,49.58,40,0
    .goto Dun Morogh,86.36,47.36
    .xp 9+6320 >> Farmt bis 6320+/6500 XP
    >>|cRXP_WARN_Seid vorsichtig, da |cRXP_ENEMY_Vernarbter Klippeneber|r wirken|r |T132337:0|t[Ansturm] |cRXP_WARN_(Selbst Sofort: Erhöht die Bewegungsgeschwindigkeit für 3 Sek., verursacht 40-100 Nahkampfschaden bei Treffer. Nur in der Ferne wirkbar)|r
    .mob Scarred Crag Boar
step
    #label CragB1
    #completewith Cobbleflint
    .goto Loch Modan,16.45,58.54,20,0
    .goto Loch Modan,19.59,62.76,30 >>Zieht einen |cRXP_ENEMY_Vernarbter Klippeneber|r durch den Tunnel
    >>|cRXP_WARN_Seid vorsichtig, da sie|r |T132337:0|t[Ansturm] wirken|cRXP_WARN_(Selbst Sofort: Erhöht die Bewegungsgeschwindigkeit für 3 Sek., verursacht 40-100 Nahkampfschaden bei Treffer. Nur in der Ferne wirkbar)|r
    .mob Scarred Crag Boar
step
#loop
	.line Loch Modan,21.14,71.62,19.06,75.46,20.91,77.67,21.14,71.62
	.goto Loch Modan,21.14,71.62,35,0
	.goto Loch Modan,19.06,75.46,35,0
	.goto Loch Modan,20.91,77.67,35,0
	.goto Loch Modan,21.14,71.62,35,0
    .xp 10 >> Farmt bis Stufe 10
    .mob Elder Black Bear
    .mob Forest Lurker
step
    #requires CragB1
    #completewith Rugelfuss
    +|cRXP_WARN_Versucht, einen nahen |cRXP_ENEMY_Schwarzbär|r oder einen |cRXP_ENEMY_Waldlauerer|r in den Bunker zu locken (erinnert euch, 51%+ Schaden zu verursachen, um Fortschritt zu erhalten)|r
    >>|cRXP_WARN_Plündert die |cRXP_ENEMY_Alter Schwarzbär|r für ihr|r |T134027:0|t[|cRXP_LOOT_Bärenfleisch|r]
    >>|cRXP_WARN_Plündert die |cRXP_ENEMY_Waldlauerer|r für ihr|r |T134437:0|t[|cRXP_LOOT_Spinnensekret|r]
    >>|cRXP_FRIENDLY_Cobbleflint|r|cRXP_WARN_, |cRXP_FRIENDLY_Gravelgaw|r, und |cRXP_FRIENDLY_Wallbang|r werden euch nicht unterstützen|r
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .disablecheckbox
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .disablecheckbox
    .mob Elder Black Bear
    .mob Forest Lurker
step
    #label Cobbleflint
    .goto Loch Modan,22.071,73.127
    >>Sprecht mit |cRXP_FRIENDLY_Cobbleflint|r
    .accept 224 >> Akzeptiert die Quest Verteidigung der Länder des Königs
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >> BETRITT den Bunker. Geht zum obersten Geschoss
step
    #label Rugelfuss
    .goto Loch Modan,23.233,73.675
    >>Sprecht mit |cRXP_FRIENDLY_Rugelfuss|r
    .accept 267 >> Akzeptiert die Quest Die Bedrohung durch die Troggs
    .target Captain Rugelfuss
step << skip
    #completewith next
    .goto Loch Modan,21.49,68.14,20,0
    .goto Loch Modan,20.86,64.46,20,0
    .goto Loch Modan,19.50,62.56,30 >>Geht zurück in den Tunnel
step << skip
    .goto Loch Modan,18.84,61.48
    .link https://www.youtube.com/watch?v=AOAlX9B5aO0 >>|cRXP_WARN_KLICKT HIER Falls es euch schwerfällt|r
    .goto Loch Modan,32.19,46.95,30 >>|cRXP_WARN_Springt, Logout-Skip von der Kohlenpfanne im Tunnel nach Thelsamar|r
    .isOnQuest 414
step
    .goto Loch Modan,32.93,49.51,40,0
    .goto Loch Modan,34.49,47.44,40,0
    .goto Loch Modan,37.05,46.11,40,0
    .goto Loch Modan,37.39,45.17,40,0
    .goto Loch Modan,37.12,42.79
    >>Sprecht mit |cRXP_FRIENDLY_Kadrell|r
    >>|cRXP_FRIENDLY_Kadrell|r |cRXP_WARN_patrouilliert auf der Hauptstraße in Thelsamar|r
    .turnin 414 >>Gebt das Starkbier für Kadrell ab
    .accept 416 >> Akzeptiert die Quest Rattenfang
    .accept 1339 >> Akzeptiert die Quest Gebirgsjäger Stormpikes Aufgabe
    .target Mountaineer Kadrell
step
    .goto Loch Modan,37.18,47.13,10,0
    .goto Loch Modan,37.02,47.80
    >>Sprecht mit |cRXP_FRIENDLY_Brock|r
    >>|cRXP_WARN_Er kann sich im Gebäude oder außerhalb davon befinden|r
    .accept 6387 >>Akzeptiert die Quest Ehrenstudenten
    .target Brock Stoneseeker
step
    .goto Loch Modan,33.94,50.96
    >>Sprecht mit |cRXP_FRIENDLY_Thorgrum|r
    .fp Thelsamar >> Erlernt die Flugroute nach Thelsamar
    .turnin 6387 >>Gebt die Quest Ehrenstudenten ab
    .accept 6391 >>Akzeptiert die Quest Flug nach Eisenschmiede
    .target Thorgrum Borrelson
step
    #completewith next
    .goto Loch Modan,33.94,50.96
    >>Sprecht mit |cRXP_FRIENDLY_Thorgrum|r
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Thorgrum Borrelson
--VV Merge with step above
step
    .zone Ironforge >> Lauf nach Ironforge
    .isOnQuest 6391
step
    #completewith next
    .goto Ironforge,55.81,38.35,30,0
    .goto Ironforge,51.83,29.77,15,0
    .goto Ironforge,49.67,28.23,12,0
    >>Geht ins Gebäude
    .goto Ironforge,51.54,26.30,10 >>Reist in Richtung |cRXP_FRIENDLY_Golnir|r
step
    .goto Ironforge,51.54,26.30
    >>Sprecht mit |cRXP_FRIENDLY_Golnir|r
    .turnin 6391 >>Gebt die Quest Flug nach Eisenschmiede ab
    .accept 6388 >>Akzeptiert die Quest Gryth Thurden
    .vendor >> Verkauft Müll
    .target Golnir Bouldertoe
    .isOnQuest 291
step
    #completewith next
    .goto Ironforge,49.67,28.23,12,0
    .goto Ironforge,55.81,38.35,30,0
    >>Verlasst das Gebäude
    .goto Ironforge,55.49,47.74,10 >>Lauf in Richtung |cRXP_FRIENDLY_Gryth|r
step
    .goto Ironforge,55.50,47.74
    >>Sprich mit |cRXP_FRIENDLY_Gryth|r
    .turnin 6388 >>Gebt die Quest Gryth Thurden ab
--   .accept 6392 >>Accept Return to Brock
-- .fly Thelsamar >> Fly to Thelsamar
    .target Gryth Thurden
step
    #completewith next
    .goto Ironforge,55.07,51.36,30,0
    .goto Ironforge,49.11,56.02,30,0
    .goto Ironforge,46.67,50.56,20,0
    .goto Ironforge,44.12,50.37,20,0
    .goto Ironforge,39.55,57.49,10 >>Reist in Richtung |cRXP_FRIENDLY_Barin|r
step
    .goto Ironforge,39.55,57.49
    >>Sprecht mit |cRXP_FRIENDLY_Barin|r
    .turnin 291 >>Gebt die Quest Die Berichte ab
    .target Senator Barin Redstone
step
    #completewith next
    .goto Ironforge,44.43,49.08,20,0
    .goto Ironforge,44.08,46.60,20,0
    .goto Ironforge,40.84,44.59,20,0
    .goto Ironforge,35.30,32.76,20,0
    .goto Ironforge,27.60,11.06,20,0
    .goto Ironforge,27.17,8.58,10 >>Reist zu |cRXP_FRIENDLY_Dink|r
step
    .goto Ironforge,27.17,8.58
    >>Sprich mit |cRXP_FRIENDLY_Dink|r
    .trainer >> Erlernt eure Klassanfähigkeiten (Frostrüstung Rang 2, Frostnova, Verwandlung, Wasser herbeizaubern Rang 1 & Rang 2)
    >>Gesamtpreis Kostet: 15s
    >>Bedenkt: Ihr braucht möglicherweise Geld für Heiltränke (3s je Stück), Bronzeröhre (8s je Stück) und Stufe-5-Nahrung (20c pro 5)
    .target Dink
step << skip
    #completewith IFHS
    +|cRXP_WARN_Denkt daran, einen Logout-Skip auf den Kerzen durchzuführen, nachdem ihr euren|r |T134414:0|t[Ruhestein] gesetzt habt
step
    #completewith next
    --.goto Ironforge,27.25,12.79,20,0
    --.goto Ironforge,22.59,38.13,20,0
    --.goto Ironforge,20.40,53.19,20,0
    >>Geht ins Gebäude
    .goto Ironforge,18.14,51.45,10 >>Geht zu |cRXP_FRIENDLY_Firebrew|r
step
    #label IFHS
    .goto Ironforge,18.14,51.45
    >>Sprecht mit |cRXP_FRIENDLY_Firebrew|r
    .home >> Setzt euren Ruhestein in Eisenschmiede
    .target Innkeeper Firebrew
step << skip
    .goto Ironforge,19.11,52.80
    .zone Dun Morogh >>|cRXP_WARN_Springt auf die Kerzen auf dem Tisch. Logout-Skip nach Dun Morogh|r
    .isOnQuest 416
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 10-12 ADV Dunkelküste 1 Magier AoE
#version 2
#group RestedXP ADV AoE Allianz Magier
#defaultfor Human Mage/Gnome Mage
#next 12-14 Fortgeschrittender Loch Modan Magier AoE Guide

step
    #completewith DeathlessSkip
    .goto Ironforge,15.16,85.70,20,0
    .goto Dun Morogh,59.84,49.56
    .zone Dun Morogh >> Verlasst Eisenschmiede
step
    #completewith next
    .goto Dun Morogh,53.48,37.50,30,0
    .goto Dun Morogh,54.04,38.60,30,0
    .goto Dun Morogh,59.43,42.85,150 >> Geht zum Skip-Punkt. Haltet euch auf der linken Seite des Berges
step
    #label DeathlessSkip
    .goto Dun Morogh,60.18,43.01,12,0
    .goto Dun Morogh,60.42,43.75,12,0
    .goto Dun Morogh,60.71,44.18,4,0
    .goto Dun Morogh,60.95,44.16,6,0
    .goto Dun Morogh,61.45,41.68,10,0
    .goto Dun Morogh,61.76,41.50,4,0
    .goto Dun Morogh,61.84,41.63,4,0
    .goto Dun Morogh,62.01,41.30,8,0
    .goto Dun Morogh,61.79,39.71,15,0
    .goto Dun Morogh,61.48,36.85,12,0
    .goto Dun Morogh,61.46,32.76,15,0
    .goto Dun Morogh,61.38,28.92,30,0
    .goto Dun Morogh,60.91,22.82,30,0
    .goto Dun Morogh,60.51,16.20,5,0
    .goto Dun Morogh,60.52,15.81,5,0
    .goto Dun Morogh,60.74,15.16,15,0
    .goto Dun Morogh,60.41,14.35,8,0
    .goto Dun Morogh,60.64,13.89,6,0
    .goto Dun Morogh,61.40,13.27,10,0
    .goto Dun Morogh,61.52,12.58,8,0
    >>|cRXP_WARN_Macht den Dun Morogh -> Sumpfland skip|r ohne zu sterben
    >>|cRXP_WARN_Esst nach jedem Sturz bis zur vollen Gesundheit, falls ihr euch nicht sicher fühlt|r
    .link https://youtu.be/QcEUvwu49KI?t=73 >> |cRXP_WARN_KLICKT HIER als Referenz (es wird DRINGEND empfohlen, das zu tun)|r
    .goto Dun Morogh,60.65,11.38,20 >>Springt vorsichtig die Bergseite hinab
    .isQuestAvailable 983
step
    .goto Dun Morogh,60.80,10.33,10,0
    .goto Dun Morogh,60.61,9.73,8,0
    .goto Wetlands,18.79,72.53,12,0
    .goto Wetlands,18.70,70.97,12,0
    .goto Wetlands,18.50,69.39,12,0
    .goto Wetlands,17.62,68.35,15,0
    .goto Wetlands,17.00,67.68,12,0
    .goto Wetlands,15.96,67.15,12,0
    .goto Wetlands,15.07,66.41,20,0
    .goto Wetlands,15.31,65.47,20,0
    .goto Wetlands,15.10,63.72,12,0
    >>|cRXP_WARN_Macht den Dun Morogh -> Sumpfland skip|r ohne zu sterben
    >>|cRXP_WARN_Seid vorsichtig vor |cRXP_ENEMY_Schlicker|r (selten), bevor ihr zur Küste hinuntergeht (falls er up ist)|r
    >>|cRXP_WARN_Seid vorsichtig vor |cRXP_ENEMY_Räuber der Blaukiemen|r im Westen, wenn ihr das Meer erreicht|r
    >>|cRXP_WARN_Weicht den |cRXP_ENEMY_Junger Sumpflandkrokilisk|r aus wenn ihr das Meer überquert. Wartet, bis sie wegpatroullieren|r
    .link https://youtu.be/QcEUvwu49KI?t=336 >> |cRXP_WARN_Klickt hier für eine Anleitung (Es wird dringend empfohlen, dies zu tun.)|r
    .goto Wetlands,12.69,60.97,15 >> Laufe zum Hafen von Menethil
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
    .unitscan Sludginn
    .isQuestAvailable 983
step
    #completewith next
    .goto Wetlands,10.80,59.80,10,0
    .goto Wetlands,10.63,60.10,10 >>Betretet Das Gasthaus
step
    .goto Wetlands,10.50,60.20
    >>Springt unten auf den Kronleuchter
    >>Sprich durch die Wand mit |cRXP_FRIENDLY_Samor|r
    >>|cRXP_WARN_HINWEIS: Um dies zu tun, bindet "Interagieren mit Ziel" unter Gameplay -> Steuerung im Optionsmenü|r
    >>|cRXP_WARN_Falls das Boot gerade angekommen ist, überspringt diesen Schritt|r
    .vendor 1457 >> |cRXP_BUY_Kaufe|r |T134831:0|t[Heiltrank] |cRXP_BUY_von ihm (wenn sie verfügbar sind)|r
    .target Samor Festivus
    .money <0.03
step
    .goto Wetlands,9.49,59.69
    >>Sprecht mit |cRXP_FRIENDLY_Shellei|r
    .fp Menethil Harbor >> Holt euch den Flugpunkt zum Hafen von Menethil
    .target Shellei Brondir
step
    #completewith DarkshoreBoat
    .goto Wetlands,7.89,56.22
    >>|cRXP_WARN_Falls das Boot gerade angekommen ist, überspringt diesen Schritt|r
    +|cRXP_WARN_Kocht beliebig viele|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_welche ihr von draußen habt (es gibt ein Lagerfeuer im Inneren)|r
    .itemcount 769,1
step
    .goto Wetlands,7.89,56.22
    >>Sprecht mit |cRXP_FRIENDLY_Dewin|r durch die Wand
    >>|cRXP_WARN_Falls das Boot gerade angekommen ist, überspringt diesen Schritt|r
    .vendor 1453 >> |cRXP_BUY_Kaufe|r |T134831:0|t[Heiltrank] |cRXP_BUY_von ihm (wenn sie verfügbar sind)|r
    .target Dewin Shimmerdawn
    .money <0.03
step
    #completewith Darkshore
    #label DarkshoreBoat
    .goto Wetlands,6.09,58.45,20,0
    .goto Wetlands,4.50,57.02,20 >>Lauf zum Dunkelküste-Boot
step
    #completewith next
    #requires DarkshoreBoat
    +|cRXP_WARN_Fangt an|r |T132794:0|t[Wasser herbeizaubern Rang 2] zu spammen |cRXP_WARN_um so viel Wasser wie möglich herbeizuzaubern|r
step
    #label Darkshore
    .goto Wetlands,4.25,57.21
    .zone Darkshore >> Nimm das Boot nach Dunkelküste
step
    #label Darkshoreshore
    #completewith Wizbang
    .goto Darkshore,35.73,45.23,60 >>Springt vom Boot ab, wenn ihr dem Ufer am nächsten seid
step
    #requires Darkshoreshore
    #completewith Wizbang
    +|cRXP_WARN_Lockt 2-3 |cRXP_ENEMY_Zwerggezeitenkriecher|r zu |cRXP_FRIENDLY_Wizbang|r (Denkt daran, |r|T135848:0|t[Frostnova]|cRXP_WARN_ zu benutzen) Tötet sie, wenn ihr die Quest annehmt|r
    .mob Pygmy Tide Crawler
step
    #requires Darkshoreshore
    #completewith next
    .goto Darkshore,36.77,44.28,0,0
    >>Sprecht mit |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Kauft bis zu 20|r |T133918:0|t[Roher Langzahniger Matschschnapper] |cRXP_BUY_von ihm|r
    .vendor >> Verkauft Müll
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
step
    #requires Darkshoreshore
    #completewith next
    .goto Darkshore,36.72,44.52,20,0
    .goto Darkshore,36.84,44.18,10,0
    .goto Darkshore,36.71,43.87,10,0
    >>Geht nach oben zum obersten Geschoss
    .goto Darkshore,36.98,44.14,8 >>Reist zu |cRXP_FRIENDLY_Wizbang|r
step
    #label Wizbang
    .goto Darkshore,36.98,44.14
    >>Sprecht mit |cRXP_FRIENDLY_Wizbang|r
    .accept 983 >>Akzeptiert die Quest Dröhnkiste 827
    .target Wizbang Cranktoggle
step
    #completewith next
    >>Tötet die |cRXP_ENEMY_Zwerggezeitenkriecher|r die ihr mitgezogen habt. Plündert sie für ihre |cRXP_LOOT_Kriecherbeine|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    #completewith next
    .goto Darkshore,37.44,43.12,20,0
    .goto Darkshore,37.73,41.40,20,0
    .goto Darkshore,37.39,40.13,10 >>Reist zu |cRXP_FRIENDLY_Thundris|r
step
    #sticky
    #label DalmondBags
    .goto Darkshore,37.45,40.50
    >>Sprecht mit |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Kauft so viele|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_wie ihr braucht/könnt|r
    .target Dalmond
    .money <0.0500
    .isQuestAvailable 954
step
    .goto Darkshore,37.39,40.13
    >>Sprecht mit |cRXP_FRIENDLY_Thundris|r
    .accept 954 >>Akzeptiert die Quest Bashal'Aran
    .accept 958 >>Akzeptiert die Quest Werkzeuge der Hochgeborenen
    .target Thundris Windweaver
	.skill cooking,10,1
step
    >>Sprecht mit |cRXP_FRIENDLY_Thundris|r und |cRXP_FRIENDLY_Alanndarian|r
    .accept 954 >>Akzeptiert die Quest Bashal'Aran
    .accept 958 >>Akzeptiert die Quest Werkzeuge der Hochgeborenen
    .target +Thundris Windweaver
    .goto Darkshore,37.39,40.13
    .accept 2178 >>Akzeptiert die Quest Schreitereintopf
    .goto Darkshore,37.69,40.66
    .target +Alanndarian Nightsong
	.skill cooking,<10,1
step
    #requires DalmondBags
    #completewith next
    .goto Darkshore,37.85,41.39,20,0
    .goto Darkshore,38.58,42.61,20,0
    .goto Darkshore,39.05,43.23,20,0
    .goto Darkshore,39.37,43.49,12 >>Reist zu |cRXP_FRIENDLY_Terenthis|r
step
    #requires DalmondBags
    >>Sprecht mit |cRXP_FRIENDLY_Terenthis|r und |cRXP_FRIENDLY_Tharnariun|r
    .accept 984 >>Akzeptiert die Quest Wie groß ist die Bedrohung?
    .target +Terenthis
    .goto Darkshore,39.37,43.49
    .accept 2118 >>Akzeptiert die Quest Verseuchtes Land
    .goto Darkshore,38.84,43.41
    .target +Tharnariun Treetender
 step
    .goto Darkshore,36.77,44.28
    >>Sprecht mit |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Kauft bis zu 20|r |T133918:0|t[Roher Langzahniger Matschschnapper] |cRXP_BUY_von ihm|r
    .vendor >> Verkauft Müll
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
    .itemcount 4592,<20
step
    #completewith next
    .goto Darkshore,36.22,44.89,50,0
    .goto Darkshore,35.81,45.78,50,0
    .goto Darkshore,35.86,47.35,50,0
    .goto Darkshore,35.74,48.20,50,0
    .goto Darkshore,36.25,49.90,50,0
    >>Tötet |cRXP_ENEMY_Zwerggezeitenkriecher|r. Plündert sie für |cRXP_LOOT_Kriecherbein|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    #completewith next
    .goto Darkshore,38.23,52.84,75,0
    >>|cRXP_WARN_Benutzt|r |T134335:0|t[Tharnariuns Hoffnung] |cRXP_WARN_auf einen |cRXP_ENEMY_Tollwütiger Distelbär|r. Es hat eine 50-yard Reichweite|r
    >>|cRXP_WARN_Seid vorsichtig, da sie|r |T135914:0|t[Tollwut] wirken |cRXP_WARN_(Sofort Nahkampf: Verringert ALLE Gesundheitsregeneration um 50% für 10 Minuten)|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .use 7586
    .unitscan Rabid Thistle Bear
step
    .goto Darkshore,38.90,53.59
    >>Lauft zum Furbolg Camp
    >>|cRXP_WARN_Versucht nicht gegen den|r |cRXP_ENEMY_Windsprecher der Schwarzfelle|r zu kämpfen
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    .goto Darkshore,38.63,56.34,60,0
    .goto Darkshore,38.80,58.29,60,0
    .goto Darkshore,38.38,60.75,60,0
    .goto Darkshore,38.57,66.39
    >>|cRXP_WARN_Benutzt|r |T134335:0|t[Tharnariuns Hoffnung] |cRXP_WARN_auf einen |cRXP_ENEMY_Tollwütiger Distelbär|r. Es hat eine 50-yard Reichweite|r
    >>|cRXP_WARN_Seid vorsichtig, da sie|r |T135914:0|t[Tollwut] wirken |cRXP_WARN_(Sofort Nahkampf: Verringert ALLE Gesundheitsregeneration um 50% für 10 Minuten)|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .use 7586
    .unitscan Rabid Thistle Bear
step
    .goto Darkshore,40.30,59.73
    >>Sprecht mit |cRXP_FRIENDLY_Tysha|r
    .accept 953 >>Akzeptiert die Quest Der Untergang von Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #completewith Relics
    +|cRXP_WARN_Meidet es |cRXP_ENEMY_Lady Mondblick|r (rare) wenn sie up ist|r zu pullen
    .unitscan Lady Moongazer
step
    #completewith Fall
    >>Tötet |cRXP_ENEMY_Verfluchte Hochgeborene|r und |cRXP_ENEMY_Zuckender Hochgeborener|r. Plündert sie für |cRXP_LOOT_Hochgeborenenrelikt|r
    >>|cRXP_WARN_Tötet |cRXP_ENEMY_Klagende Hochgeborene|r nur, wenn sie euch im Weg sind|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    .goto Darkshore,42.65,63.15
    >>Klickt |cRXP_PICK_Der Untergang von Ameth’Aran|r am Boden an
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto Darkshore,43.30,58.70
    >>Klickt |cRXP_PICK_Die Lage von Ameth’Aran|r am Boden an
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
    #label Fall
    .goto Darkshore,40.30,59.73
    >>Sprecht mit |cRXP_FRIENDLY_Tysha|r
    .turnin 953 >>Gebt die Quest Der Untergang von Ameth'Aran ab
    .target Sentinel Tysha Moonblade
step
    #label Relics
    .goto Darkshore,41.76,57.96,50,0
    .goto Darkshore,43.11,57.55,50,0
    .goto Darkshore,43.82,58.29,50,0
    .goto Darkshore,43.58,59.99,50,0
    .goto Darkshore,43.49,62.92,50,0
    .goto Darkshore,42.38,63.40,50,0
    .goto Darkshore,41.21,61.64,50,0
    .goto Darkshore,41.76,57.96
    >>Tötet |cRXP_ENEMY_Verfluchte Hochgeborene|r und |cRXP_ENEMY_Zuckender Hochgeborener|r
    >>|cRXP_WARN_Tötet |cRXP_ENEMY_Klagende Hochgeborene|r nur, wenn sie euch im Weg sind|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    #completewith next
    +|cRXP_WARN_Zieht 2-3 |cRXP_ENEMY_Übler Grimmling|r zu |cRXP_FRIENDLY_Asterion|r (Denkt daran, |r|T135848:0|t[Frostnova]|cRXP_WARN_ zu benutzen) Tötet sie, wenn ihr die Quest annehmt|r
    .mob Vile Sprite
step
    .goto Darkshore,44.17,36.29
    >>Sprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 954 >> Gebt die Quest Bashal'Aran ab
    .accept 955 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
step
    #completewith BashalF
    +|cRXP_WARN_Passt auf, |cRXP_ENEMY_Licillin|r (Rare) könnte aktiv sein|r
    >>|cRXP_WARN_Er wirkt|r |T136197:0|t[Schattenblitz] |cRXP_WARN_(Distanzzauber: Welcher 55-70 Schattenschaden verursacht)|r
    .unitscan Licillin
step
#loop
	.line Darkshore,44.57,36.57,44.47,38.11,44.02,38.55,45.01,39.62,45.61,38.81,45.18,37.51,45.86,36.96,46.91,37.11,45.47,36.01,44.57,36.57
	.goto Darkshore,44.57,36.57,35,0
	.goto Darkshore,44.47,38.11,35,0
	.goto Darkshore,44.02,38.55,35,0
	.goto Darkshore,45.01,39.62,35,0
	.goto Darkshore,45.61,38.81,35,0
	.goto Darkshore,45.18,37.51,35,0
	.goto Darkshore,45.86,36.96,35,0
	.goto Darkshore,46.91,37.11,35,0
	.goto Darkshore,45.47,36.01,35,0
	.goto Darkshore,44.57,36.57,35,0
    >>Tötet |cRXP_ENEMY_Übler Grimmling|r und |cRXP_ENEMY_Wild Grells|r. Plündert sie für |cRXP_LOOT_Grell-Ohrring|r
    >>|cRXP_WARN_Passt auf, denn die |cRXP_ENEMY_Übler Grimmling|r wirken|r |T136016:0|t[Gift] |cRXP_WARN_(Nahkampf Sofortangriff: Verursacht alle 3 Sek. 3 Schaden für 15 Sek.) und die |cRXP_ENEMY_Wilden Grells|r wirken|r |T136215:0|t[Wahnsinnig] |cRXP_WARN_(Selbst Sofortzauber: Erhöht die Angriffsgeschwindigkeit um 20% bei <20% Leben)|r
    .complete 955,1 --Grell Earring (8)
    .mob Vile Sprite
    .mob Wild Grell
step
    .goto Darkshore,44.17,36.29
    >>Sprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Gebt die Quest Bashal'Aran ab
    .accept 956 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
step
    .goto Darkshore,45.50,36.50,45,0
    .goto Darkshore,45.93,37.78,45,0
    .goto Darkshore,45.94,38.04,45,0
    .goto Darkshore,45.43,39.66,45,0
    .goto Darkshore,46.67,39.09,45,0
    .goto Darkshore,47.36,37.63,45,0
    .goto Darkshore,47.77,37.20,45,0
    .goto Darkshore,47.44,36.76,45,0
    .goto Darkshore,45.50,36.50,45,0
    .goto Darkshore,45.93,37.78,45,0
    .goto Darkshore,45.94,38.04,45,0
    .goto Darkshore,45.43,39.66,45,0
    .goto Darkshore,46.67,39.09,45,0
    .goto Darkshore,47.36,37.63,45,0
    .goto Darkshore,47.77,37.20,45,0
    .goto Darkshore,47.44,36.76
    >>Tötet |cRXP_ENEMY_Satyr der Deth'ryll|r. Plündert sie für |cRXP_LOOT_Altes Mondstein-Siegel|r
    >>|cRXP_WARN_Seid vorsichtig sie wirken|r |T132222:0|t[Schießen] |cRXP_WARN_(Distanzangriff: Verursacht 15-25 Schaden)|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
step
#loop
	.line Darkshore,44.57,36.57,44.47,38.11,44.02,38.55,45.01,39.62,45.61,38.81,45.18,37.51,45.86,36.96,46.91,37.11,45.47,36.01,44.57,36.57
	.goto Darkshore,44.57,36.57,35,0
	.goto Darkshore,44.47,38.11,35,0
	.goto Darkshore,44.02,38.55,35,0
	.goto Darkshore,45.01,39.62,35,0
	.goto Darkshore,45.61,38.81,35,0
	.goto Darkshore,45.18,37.51,35,0
	.goto Darkshore,45.86,36.96,35,0
	.goto Darkshore,46.91,37.11,35,0
	.goto Darkshore,45.47,36.01,35,0
	.goto Darkshore,44.57,36.57,35,0
    .xp 11+1100 >> Farmt bis 1100+/8800 XP
    .mob Vile Sprite
    .mob Wild Grell
--910+900+750+975+850 = 4385 (Turnins starting from Bashal Seal turnin)
--675+975 = 1650 (Turtle turnins)
step
    #label BashalF
    .goto Darkshore,44.17,36.29
    >>Sprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Gebt die Quest Bashal'Aran ab
    .accept 957 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
step
    #sticky
    #label DalmondBags1
    .goto Darkshore,37.45,40.50,0,0
    >>Sprecht mit |cRXP_FRIENDLY_Dalmond|r
    .vendor >> Verkauft Müll
    .target Dalmond
    .isQuestAvailable 3524
step
    .goto Darkshore,37.40,40.13
    >>Sprecht mit |cRXP_FRIENDLY_Thundris|r
    .turnin 958 >>Gebt die Quest Werkzeuge der Hochgeborenen ab
    .target Thundris Windweaver
step
    #requires DalmondBags1
    .goto Darkshore,37.69,40.66
    >>Sprecht mit |cRXP_FRIENDLY_Alanndarian|r
    .turnin 2178 >>Gebt die Quest Schreitereintopf ab
    .target Alanndarian Nightsong
    .itemcount 5469,5
    .skill cooking,<10,1
step
    >>Sprecht mit |cRXP_FRIENDLY_Terenthis|r und |cRXP_FRIENDLY_Tharnariun|r
    .turnin 984 >> Gebt die Quest Wie groß ist die Bedrohung? ab
    .accept 985 >> Akzeptiert die Quest Wie groß ist die Bedrohung?
    .accept 4761 >> Akzeptiert die Quest Thundris Windwirker
    .target +Terenthis
    .goto Darkshore,39.37,43.49
    .turnin 2118 >> Gebt die Quest Verseuchtes Land ab
    .accept 2138 >> Akzeptiert die Quest Ausrottung der Infizierten
    .goto Darkshore,38.84,43.41
    .target +Tharnariun Treetender
step
    #sticky
    #label Gwennyth
    .goto Darkshore,36.62,45.59
    >>Sprecht mit |cRXP_FRIENDLY_Gwennyth|r
    .accept 3524 >>Akzeptiert die Quest An Land gespült
    .target Gwennyth Bly'Leggonde
step
    .goto Darkshore,36.34,45.58
    >>Sprich mit |cRXP_FRIENDLY_Caylais|r
    .fp Auberdine >> Erlernt die Flugroute nach Auberdine
    .target Caylais Moonfeather
step
    #requires Gwennyth
    #completewith Bones
    .goto Darkshore,36.22,44.89,50,0
    .goto Darkshore,35.81,45.78,50,0
    .goto Darkshore,35.86,47.35,50,0
    .goto Darkshore,35.74,48.20,50,0
    .goto Darkshore,36.25,49.90,50,0
    >>Tötet |cRXP_ENEMY_Zwerggezeitenkriecher|r und |cRXP_ENEMY_Junger Riffkriecher|r. Plündert sie für |cRXP_LOOT_Kriecherbein|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #requires Gwennyth
    #completewith next
    >>|cRXP_WARN_Behaltet die|r |T133884:0|t[Murlocaugen] |cRXP_WARN_die ihr von den |cRXP_ENEMY_Küstenläufer der Grauflossen|r und|r Räuber der Grauflossen|cRXP_ENEMY_ plündert|r
    .collect 730,3,38,1 --Murloc Eyes (3)
    .mob Greymist Coastrunner
    .mob Greymist Raider
step
    #requires Gwennyth
    #label Bones
    .goto Darkshore,36.38,50.88
    >>Plündert die |cRXP_LOOT_Gestrandete Meereskreatur|r
    >>|cRXP_WARN_Passt auf, denn die nahegelegenen |cRXP_ENEMY_Küstenläufer der Grauflossen|r haben|r |T132307:0|t[Erhöte Bewegungsgeschwindigkeit]
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    .goto Darkshore,36.22,44.89
    >>Tötet |cRXP_ENEMY_Zwerggezeitenkriecher|r und |cRXP_ENEMY_Junger Riffkriecher|r. Plündert sie für |cRXP_LOOT_Kriecherbein|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    .goto Darkshore,36.64,46.26
    >>Klickt |cRXP_PICK_Buzzbox 827|r
    .turnin 983 >>Gebt die Quest Dröhnkiste 827 ab
    .accept 1001 >>Akzeptiert die Quest Dröhnkiste 411
step
    .goto Darkshore,36.72,45.07,12,0
    .goto Darkshore,36.62,45.59
    >>Sprecht mit |cRXP_FRIENDLY_Gwennyth|r
    .turnin 3524 >>Gebt die Quest An Land gespült ab
    .accept 4681 >>Akzeptiert die Quest An Land gespült
    .target Gwennyth Bly'Leggonde
 step
    .goto Darkshore,36.77,44.28
    >>Sprecht mit |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Kauft bis zu 40|r |T133918:0|t[Roher Langzahniger Matschschnapper] |cRXP_BUY_von ihm|r
    .collect 4592,40,4681,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto Darkshore,36.68,44.05,12,0
    .goto Darkshore,35.74,43.70
    >>Sprecht mit |cRXP_FRIENDLY_Cerellean|r
    .accept 963 >>Akzeptiert die Quest In ewiger Liebe
    .target Cerellean Whiteclaw
step
    #completewith Gwen
    >>Tötet |cRXP_ENEMY_Dunkelküstendrescher|r
    >>|cRXP_WARN_Weicht nicht von eurem Weg ab für sie|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
step
    #completewith next
    .goto Darkshore,32.91,42.24,15,0
    .goto Darkshore,32.41,43.82,25 >> Lauft über den Steg zu den |cRXP_LOOT_Meeresschildkrötenüberresten|r
step
    .goto Darkshore,31.86,46.33
    >>Schwimmt unter Wasser
    >>Plündert die |cRXP_LOOT_Meeresschildkrötenüberreste|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto Darkshore,36.12,44.70,50,0
    .goto Darkshore,35.80,45.88,50,0
    .goto Darkshore,36.04,48.63,50,0
    .goto Darkshore,36.13,50.13,50,0
    .goto Darkshore,36.58,53.20,50,0
    .goto Darkshore,35.23,53.81,50,0
    .goto Darkshore,35.22,55.37,50,0
    .goto Darkshore,36.70,57.09,50,0
    .goto Darkshore,36.12,44.70,50,0
    .goto Darkshore,35.80,45.88,50,0
    .goto Darkshore,36.04,48.63,50,0
    .goto Darkshore,36.13,50.13,50,0
    .goto Darkshore,36.58,53.20,50,0
    .goto Darkshore,35.23,53.81,50,0
    .goto Darkshore,35.22,55.37,50,0
    .goto Darkshore,36.70,57.09
    .xp 11+7825 >> Grind bis 7825+/8800 XP
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #label Gwen
    .goto Darkshore,36.67,45.08,12,0
    .goto Darkshore,36.62,45.59
    >>Sprecht mit |cRXP_FRIENDLY_Gwennyth|r
    .turnin 4681,1 >> Gebt die Quest An Land gespült ab
    .target Gwennyth Bly'Leggonde
step << skip
    #completewith next
    +Rüstet die |T132537:0|t[Sandcomber-Stiefel] aus
    .use 15398
    .itemcount 15398,1
    .itemStat 8,LEVEL,<14
step
    .goto Darkshore,37.04,44.13
    >>|cRXP_WARN_===ACHTUNG===|r
    >>|cRXP_WARN_Sprecht mit|r |cRXP_FRIENDLY_Shaussiy|r
    >>|cRXP_WARN_Falls dies euer erstes Mal ist, einen Ruhestein Batch durchzuführen, schaut euch den Guide dafür unten an|r
    >>|cRXP_WARN_Öffnet das Menü "Ruhestein setzen", dann wirkt|r |T134414:0|t[Ruhestein]
    .hs >> |cRXP_WARN_Ruhestein BATCH von Auberdine nach Eisenschmiede|r
    .link https://www.youtube.com/watch?v=Is-h2TJpL3M >> |cRXP_WARN_HIER KLICKEN (es wird SEHR empfohlen, dies zu tun). Stellt sicher, dass ihr eure Batching Window Size vorher eingestellt und getestet habt, um das Fehlerrisiko zu senken|r
    .target Innkeeper Shaussiy
    .zoneskip Ironforge
step
    .goto Ironforge,27.17,8.58
    >>Sprich mit |cRXP_FRIENDLY_Dink|r
    .trainer >> Erlerne die Klassenfähigkeiten (Feuerball Rang 3, Magie dämpfen)
    >>Gesamtpreis Kosten: 12s
    >>Erinnert euch, dass ihr vielleicht Geld für eine |T133024:0|t[Bronzeröhre] (je 8 Silber) und zum Fliegen nach Thelsamar (1 Gold 10 Silber) brauchen könnt
    .target Dink
step << skip
    .goto Ironforge,27.22,8.58,-1
    .goto Ironforge,67.83,42.47,-1
    .vendor 5175 >> Logout-Skip auf dem Pfeiler über |cRXP_FRIENDLY_Dink|r, um |cRXP_FRIENDLY_Cogspinner|r auf ein |T133024:0|t[Bronzeröhre] zu überprüfen, falls ihr möchtet
    .itemcount 4371,<1
    .isQuestAvailable 418
step
    #completewith next
    +|cRXP_WARN_Wirkt schnell|r |T132794:0|t[Wasser herbeizaubern Rang 2] |cRXP_WARN_, um so viel Wasser wie möglich vor dem Flug herzustellen|r
step << Gnome
    .goto Ironforge,55.50,47.74
    >>Sprich mit |cRXP_FRIENDLY_Gryth|r
    .accept 6392 >>Akzeptiert die Quest Rückkehr zu Brock
    .target Gryth Thurden
step
    .goto Ironforge,55.50,47.74
    >>Sprich mit |cRXP_FRIENDLY_Gryth|r
    .fly Thelsamar >> Fliege nach Thelsamar
    .target Gryth Thurden
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 10-12 Starte Fortgeschrittender Dunkelküste 1 Magier AoE Guide
#version 2
#group RestedXP ADV AoE Allianz Magier
#defaultfor none
#next 12-14 Fortgeschrittender Loch Modan Magier AoE Guide

--VV Make this an alternative route that must be manually selected
step
    #completewith next
    +|cRXP_WARN_HINWEIS: Die Startroute enthält Quests, die SEHR schwierig alleine durchzuführen sind. Dies ist speziell für entweder stark bevölkerte Server, auf denen ihr für die schwierigeren Quests zusammenarbeiten könnt, ODER Spieler, die Mob-Tagger haben|r
step
    #completewith next
    .goto Dun Morogh,53.48,37.50,30,0
    .goto Dun Morogh,54.04,38.60,30,0
    .goto Dun Morogh,59.43,42.85,150 >> Geht zum Skip-Punkt. Haltet euch auf der linken Seite des Berges
step
    .goto Dun Morogh,60.18,43.01,12,0
    .goto Dun Morogh,60.42,43.75,12,0
    .goto Dun Morogh,60.71,44.18,4,0
    .goto Dun Morogh,60.95,44.16,6,0
    .goto Dun Morogh,61.45,41.68,10,0
    .goto Dun Morogh,61.76,41.50,4,0
    .goto Dun Morogh,61.84,41.63,4,0
    .goto Dun Morogh,62.01,41.30,8,0
    .goto Dun Morogh,61.79,39.71,15,0
    .goto Dun Morogh,61.48,36.85,12,0
    .goto Dun Morogh,61.46,32.76,15,0
    .goto Dun Morogh,61.38,28.92,30,0
    .goto Dun Morogh,60.91,22.82,30,0
    .goto Dun Morogh,60.51,16.20,5,0
    .goto Dun Morogh,60.52,15.81,5,0
    .goto Dun Morogh,60.74,15.16,15,0
    .goto Dun Morogh,60.41,14.35,8,0
    .goto Dun Morogh,60.64,13.89,6,0
    .goto Dun Morogh,61.40,13.27,10,0
    .goto Dun Morogh,61.52,12.58,8,0
    >>|cRXP_WARN_Macht den Dun Morogh -> Sumpfland skip|r ohne zu sterben
    >>|cRXP_WARN_Esst nach jedem Sturz bis zur vollen Gesundheit, falls ihr euch nicht sicher fühlt|r
    .link https://youtu.be/QcEUvwu49KI?t=73 >> |cRXP_WARN_KLICKT HIER als Referenz (es wird DRINGEND empfohlen, das zu tun)|r
    .goto Dun Morogh,60.65,11.38,20 >>Springt vorsichtig die Bergseite hinab
    .isQuestAvailable 983
step
    .goto Dun Morogh,60.80,10.33,10,0
    .goto Dun Morogh,60.61,9.73,8,0
    .goto Wetlands,18.79,72.53,12,0
    .goto Wetlands,18.70,70.97,12,0
    .goto Wetlands,18.50,69.39,12,0
    .goto Wetlands,17.62,68.35,15,0
    .goto Wetlands,17.00,67.68,12,0
    .goto Wetlands,15.96,67.15,12,0
    .goto Wetlands,15.07,66.41,20,0
    .goto Wetlands,15.31,65.47,20,0
    .goto Wetlands,15.10,63.72,12,0
    >>|cRXP_WARN_Macht den Dun Morogh -> Sumpfland skip|r ohne zu sterben
    >>|cRXP_WARN_Seid vorsichtig vor |cRXP_ENEMY_Schlicker|r (selten), bevor ihr zur Küste hinuntergeht (falls er up ist)|r
    >>|cRXP_WARN_Seid vorsichtig vor den |cRXP_ENEMY_Räuber der Blaukiemen|r im Westen, wenn ihr das Meer erreicht|r
    >>|cRXP_WARN_Weicht den |cRXP_ENEMY_Junger Sumpflandkrokilisk|r aus wenn ihr das Meer überquert. Wartet, bis sie wegpatroullieren|r
    .link https://youtu.be/QcEUvwu49KI?t=336 >> |cRXP_WARN_Klickt hier für eine Anleitung (Es wird dringend empfohlen, dies zu tun.)|r
    .goto Wetlands,12.69,60.97,15 >> Laufe zum Hafen von Menethil
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
    .unitscan Sludginn
    .isQuestAvailable 983
--VV Custom Video
step
    #completewith next
    .goto Wetlands,10.80,59.80,10,0
    .goto Wetlands,10.63,60.10,10 >>Betretet Das Gasthaus
step
    .goto Wetlands,10.50,60.20
    >>Springt unten auf den Kronleuchter
    >>Sprich durch die Wand mit |cRXP_FRIENDLY_Samor|r
    >>|cRXP_WARN_HINWEIS: Um dies zu tun, bindet "Interagieren mit Ziel" unter Gameplay -> Steuerung im Optionsmenü|r
    >>|cRXP_WARN_Falls das Boot gerade angekommen ist, überspringt diesen Schritt|r
    .vendor 1457 >> |cRXP_BUY_Kaufe|r |T134831:0|t[Heiltrank] |cRXP_BUY_von ihm (wenn sie verfügbar sind)|r
    .target Samor Festivus
    .money <0.03
step
    .goto Wetlands,9.49,59.69
    >>Sprecht mit |cRXP_FRIENDLY_Shellei|r
    .fp Menethil Harbor >> Holt euch den Flugpunkt zum Hafen von Menethil
    .target Shellei Brondir
step
    #completewith DarkshoreBoat
    .goto Wetlands,7.89,56.22
    >>|cRXP_WARN_Falls das Boot gerade angekommen ist, überspringt diesen Schritt|r
    +|cRXP_WARN_Kocht beliebig viele|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_welche ihr von draußen habt (es gibt ein Lagerfeuer im Inneren)|r
    .itemcount 769,1
step
    .goto Wetlands,7.89,56.22
    >>Sprecht mit |cRXP_FRIENDLY_Dewin|r durch die Wand
    >>|cRXP_WARN_Falls das Boot gerade angekommen ist, überspringt diesen Schritt|r
    .vendor 1453 >> |cRXP_BUY_Kaufe|r |T134831:0|t[Heiltrank] |cRXP_BUY_von ihm (wenn sie verfügbar sind)|r
    .target Dewin Shimmerdawn
    .money <0.03
step
    #completewith Darkshore
    #label DarkshoreBoat
    .goto Wetlands,6.09,58.45,20,0
    .goto Wetlands,4.50,57.02,20 >>Lauf zum Dunkelküste-Boot
step
    #completewith next
    #requires DarkshoreBoat
    +|cRXP_WARN_Fangt an|r |T132794:0|t[Wasser herbeizaubern Rang 2] zu spammen |cRXP_WARN_um so viel Wasser wie möglich herbeizuzaubern|r
step
    #label Darkshore
    .goto Wetlands,4.25,57.21
    .zone Darkshore >> Nimm das Boot nach Dunkelküste
step
    #label Darkshoreshore
    #completewith Wizbang
    .goto Darkshore,35.73,45.23,60 >>Springt vom Boot ab, wenn ihr dem Ufer am nächsten seid
step
    #requires Darkshoreshore
    #completewith Wizbang
    +|cRXP_WARN_Lockt 2-3 |cRXP_ENEMY_Zwerggezeitenkriecher|r zu |cRXP_FRIENDLY_Wizbang|r (Denkt daran, |r|T135848:0|t[Frostnova]|cRXP_WARN_ zu benutzen) Tötet sie, wenn ihr die Quest annehmt|r
    .mob Pygmy Tide Crawler
step
    #requires Darkshoreshore
    #completewith next
    .goto Darkshore,36.77,44.28,0,0
    >>Sprecht mit |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Kauft bis zu 20|r |T133918:0|t[Roher Langzahniger Matschschnapper] |cRXP_BUY_von ihm|r
    .vendor >> Verkauft Müll
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
step
    #requires Darkshoreshore
    #completewith next
    .goto Darkshore,36.72,44.52,20,0
    .goto Darkshore,36.84,44.18,10,0
    .goto Darkshore,36.71,43.87,10,0
    >>Geht nach oben zum obersten Geschoss
    .goto Darkshore,36.98,44.14,8 >>Reist zu |cRXP_FRIENDLY_Wizbang|r
step
    #label Wizbang
    .goto Darkshore,36.98,44.14
    >>Sprecht mit |cRXP_FRIENDLY_Wizbang|r
    .accept 983 >>Akzeptiert die Quest Dröhnkiste 827
    .target Wizbang Cranktoggle
step
    #completewith DalmondBags
    >>Tötet die |cRXP_ENEMY_Zwerggezeitenkriecher|r die ihr mitgezogen habt. Plündert sie für ihre |cRXP_LOOT_Kriecherbeine|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    .goto Darkshore,36.77,44.28
    >>Sprecht mit |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Kauft bis zu 20|r |T133918:0|t[Roher Langzahniger Matschschnapper] |cRXP_BUY_von ihm|r
    .vendor >> Verkauft Müll
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
    .itemcount 4592,<20
step << skip
    #requires DalmondBags
    #completewith next
    .goto Darkshore,37.85,41.39,20,0
    .goto Darkshore,38.58,42.61,20,0
    .goto Darkshore,39.05,43.23,20,0
    .goto Darkshore,39.37,43.49,12 >>Reist zu |cRXP_FRIENDLY_Terenthis|r
step
    >>Sprecht mit |cRXP_FRIENDLY_Terenthis|r und |cRXP_FRIENDLY_Tharnariun|r
    .accept 984 >>Akzeptiert die Quest Wie groß ist die Bedrohung?
    .target +Terenthis
    .goto Darkshore,39.37,43.49,-1
    .accept 2118 >>Akzeptiert die Quest Verseuchtes Land
    .goto Darkshore,38.84,43.41,-1
    .target +Tharnariun Treetender
step << skip
    #completewith next
    .goto Darkshore,37.44,43.12,20,0
    .goto Darkshore,37.73,41.40,20,0
    .goto Darkshore,37.39,40.13,10 >>Reist zu |cRXP_FRIENDLY_Thundris|r
step
    #sticky
    #label DalmondBags
    .goto Darkshore,37.45,40.50
    >>Sprecht mit |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Kauft so viele|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_wie ihr braucht/könnt|r
    .target Dalmond
    .money <0.0500
    .isQuestAvailable 954
step
    .goto Darkshore,37.39,40.13
    >>Sprecht mit |cRXP_FRIENDLY_Thundris|r
    .accept 954 >>Akzeptiert die Quest Bashal'Aran
    .accept 958 >>Akzeptiert die Quest Werkzeuge der Hochgeborenen
    .target Thundris Windweaver
	.skill cooking,10,1
step
    >>Sprecht mit |cRXP_FRIENDLY_Thundris|r und |cRXP_FRIENDLY_Alanndarian|r
    .accept 954 >>Akzeptiert die Quest Bashal'Aran
    .accept 958 >>Akzeptiert die Quest Werkzeuge der Hochgeborenen
    .target +Thundris Windweaver
    .goto Darkshore,37.39,40.13,-1
    .accept 2178 >>Akzeptiert die Quest Schreitereintopf
    .goto Darkshore,37.69,40.66,-1
    .target +Alanndarian Nightsong
	.skill cooking,<10,1
step
    .goto Darkshore,46.71,34.64
    >>|cRXP_WARN_Falls ihr einen |cRXP_ENEMY_Tollwütiger Distelbär|r findet, benutzt|r |T134335:0|t[Tharnariuns Hoffnung] |cRXP_WARN_dann zieht ihr aggro|r
    >>|cRXP_WARN_Seid vorsichtig, da sie|r |T135914:0|t[Tollwut] wirken |cRXP_WARN_(Sofort Nahkampf: Verringert ALLE Gesundheitsregeneration um 50% für 10 Minuten)|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .use 7586
    .unitscan Rabid Thistle Bear
step
    #completewith next
    +|cRXP_WARN_Zieht 2-3 |cRXP_ENEMY_Übler Grimmling|r zu |cRXP_FRIENDLY_Asterion|r (Denkt daran, |r|T135848:0|t[Frostnova]|cRXP_WARN_ zu benutzen) Tötet sie, wenn ihr die Quest annehmt|r
    .mob Vile Sprite
step
    #label Bash1
    .goto Darkshore,44.17,36.29
    >>Sprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 954 >> Gebt die Quest Bashal'Aran ab
    .accept 955 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
step
    #completewith BashalF
    +|cRXP_WARN_Passt auf, |cRXP_ENEMY_Licillin|r (Rare) könnte aktiv sein|r
    >>|cRXP_WARN_Er wirkt|r |T136197:0|t[Schattenblitz] |cRXP_WARN_(Distanzzauber: Welcher 55-70 Schattenschaden verursacht)|r
    .unitscan Licillin
step
#loop
	.line Darkshore,44.57,36.57,44.47,38.11,44.02,38.55,45.01,39.62,45.61,38.81,45.18,37.51,45.86,36.96,46.91,37.11,45.47,36.01,44.57,36.57
	.goto Darkshore,44.57,36.57,35,0
	.goto Darkshore,44.47,38.11,35,0
	.goto Darkshore,44.02,38.55,35,0
	.goto Darkshore,45.01,39.62,35,0
	.goto Darkshore,45.61,38.81,35,0
	.goto Darkshore,45.18,37.51,35,0
	.goto Darkshore,45.86,36.96,35,0
	.goto Darkshore,46.91,37.11,35,0
	.goto Darkshore,45.47,36.01,35,0
	.goto Darkshore,44.57,36.57,35,0
    >>Tötet |cRXP_ENEMY_Übler Grimmling|r und |cRXP_ENEMY_Wild Grells|r. Plündert sie für |cRXP_LOOT_Grell-Ohrring|r
    >>|cRXP_WARN_Passt auf, denn die |cRXP_ENEMY_Übler Grimmling|r wirken|r |T136016:0|t[Gift] |cRXP_WARN_(Nahkampf Sofortangriff: Verursacht alle 3 Sek. 3 Schaden für 15 Sek.) und die |cRXP_ENEMY_Wilden Grells|r wirken|r |T136215:0|t[Wahnsinnig] |cRXP_WARN_(Selbst Sofortzauber: Erhöht die Angriffsgeschwindigkeit um 20% bei <20% Leben)|r
    .complete 955,1 --Grell Earring (8)
    .mob Vile Sprite
    .mob Wild Grell
step
    .goto Darkshore,44.17,36.29
    >>Sprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Gebt die Quest Bashal'Aran ab
    .accept 956 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
step
    .goto Darkshore,45.50,36.50,45,0
    .goto Darkshore,45.93,37.78,45,0
    .goto Darkshore,45.94,38.04,45,0
    .goto Darkshore,45.43,39.66,45,0
    .goto Darkshore,46.67,39.09,45,0
    .goto Darkshore,47.36,37.63,45,0
    .goto Darkshore,47.77,37.20,45,0
    .goto Darkshore,47.44,36.76,45,0
    .goto Darkshore,45.50,36.50,45,0
    .goto Darkshore,45.93,37.78,45,0
    .goto Darkshore,45.94,38.04,45,0
    .goto Darkshore,45.43,39.66,45,0
    .goto Darkshore,46.67,39.09,45,0
    .goto Darkshore,47.36,37.63,45,0
    .goto Darkshore,47.77,37.20,45,0
    .goto Darkshore,47.44,36.76
    >>Tötet |cRXP_ENEMY_Satyr der Deth'ryll|r. Plündert sie für |cRXP_LOOT_Altes Mondstein-Siegel|r
    >>|cRXP_WARN_Seid vorsichtig sie wirken|r |T132222:0|t[Schießen] |cRXP_WARN_(Distanzangriff: Verursacht 15-25 Schaden)|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
step
    #label BashalF
    .goto Darkshore,44.17,36.29
    >>Sprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Gebt die Quest Bashal'Aran ab
    .accept 957 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
step
    .goto Darkshore,38.84,43.41
    .xp 10+6625 >> Farmt bis 6625+/7600 EP auf dem Weg zurück zu |cRXP_FRIENDLY_Tharnariun|r
step
    .goto Darkshore,38.84,43.41
    >>Sprecht mit |cRXP_FRIENDLY_Tharnariun|r
    .turnin 2118 >> Gebt die Quest Verseuchtes Land ab
    .accept 2138 >> Akzeptiert die Quest Ausrottung der Infizierten
    .target Tharnariun Treetender
step
    .goto Darkshore,36.68,44.05,12,0
    .goto Darkshore,35.74,43.70
    >>Sprecht mit |cRXP_FRIENDLY_Cerellean|r
    .accept 963 >>Akzeptiert die Quest In ewiger Liebe
    .target Cerellean Whiteclaw
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Zwerggezeitenkriecher|r. Plündert sie für |cRXP_LOOT_Kriecherbein|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    #sticky
    #label Gwennyth
    .goto Darkshore,36.62,45.59
    >>Sprecht mit |cRXP_FRIENDLY_Gwennyth|r
    .accept 3524 >>Akzeptiert die Quest An Land gespült
    .target Gwennyth Bly'Leggonde
step
    .goto Darkshore,36.34,45.58
    >>Sprich mit |cRXP_FRIENDLY_Caylais|r
    .fp Auberdine >> Hol dir den Flugpunkt von Auberdine
    .target Caylais Moonfeather
step
    #requires Gwennyth
    #completewith Bones
    .goto Darkshore,36.22,44.89,50,0
    .goto Darkshore,35.81,45.78,50,0
    .goto Darkshore,35.86,47.35,50,0
    .goto Darkshore,35.74,48.20,50,0
    .goto Darkshore,36.25,49.90,50,0
    >>Tötet |cRXP_ENEMY_Zwerggezeitenkriecher|r und |cRXP_ENEMY_Junger Riffkriecher|r. Plündert sie für |cRXP_LOOT_Kriecherbein|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #requires Gwennyth
    #completewith next
    >>|cRXP_WARN_Behaltet die|r |T133884:0|t[Murlocaugen] |cRXP_WARN_die ihr von den |cRXP_ENEMY_Küstenläufer der Grauflossen|r und|r Räuber der Grauflossen|cRXP_ENEMY_ plündert|r
    .collect 730,3,38,1 --Murloc Eyes (3)
    .mob Greymist Coastrunner
    .mob Greymist Raider
step
    #requires Gwennyth
    #label Bones
    .goto Darkshore,36.38,50.88
    >>Plündert die |cRXP_LOOT_Gestrandete Meereskreatur|r
    >>|cRXP_WARN_Passt auf, denn die nahegelegenen |cRXP_ENEMY_Küstenläufer der Grauflossen|r haben|r |T132307:0|t[Erhöte Bewegungsgeschwindigkeit]
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    .goto Darkshore,36.22,44.89
    >>Tötet |cRXP_ENEMY_Zwerggezeitenkriecher|r und |cRXP_ENEMY_Junger Riffkriecher|r. Plündert sie für |cRXP_LOOT_Kriecherbein|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #requires Gwennyth
    .goto Darkshore,38.90,53.59
    >>Lauft zum Furbolg Camp
    >>|cRXP_WARN_Versucht nicht gegen die, |rWindsprecher der Schwarzfelle|cRXP_ENEMY_ zu kämpfen|r
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    .goto Darkshore,40.30,59.73
    >>Sprecht mit |cRXP_FRIENDLY_Tysha|r
    .accept 953 >>Akzeptiert die Quest Der Untergang von Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #completewith Anaya
    +|cRXP_WARN_Meidet es |cRXP_ENEMY_Lady Mondblick|r (rare) zu pullen, wenn sie up ist|r
    .unitscan Lady Moongazer
 step
    #completewith Relics
    .goto Darkshore,42.45,60.66,0
    >>Tötet |cRXP_ENEMY_Anaya Dawnrunner|r. Plündert sie für |cRXP_LOOT_Anayas Anhänger|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #completewith Fall
    >>Tötet |cRXP_ENEMY_Verfluchte Hochgeborene|r und |cRXP_ENEMY_Zuckender Hochgeborener|r. Plündert sie für |cRXP_LOOT_Hochgeborenenrelikt|r
    >>|cRXP_WARN_Tötet |cRXP_ENEMY_Wailing Highbornes|r nur falls sie sich auf euren Weg befinden|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    .goto Darkshore,42.37,61.82
    >>Klickt die |cRXP_PICK_Uralte Flamme|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto Darkshore,42.65,63.15
    >>Klickt |cRXP_PICK_Der Untergang von Ameth’Aran|r am Boden an
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto Darkshore,43.30,58.70
    >>Klickt |cRXP_PICK_Die Lage von Ameth’Aran|r am Boden an
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
    #label Fall
    .goto Darkshore,40.30,59.73
    >>Sprecht mit |cRXP_FRIENDLY_Tysha|r
    .turnin 953 >>Gebt die Quest Der Untergang von Ameth'Aran ab
    .target Sentinel Tysha Moonblade
step
    #label Relics
    .goto Darkshore,41.76,57.96,50,0
    .goto Darkshore,43.11,57.55,50,0
    .goto Darkshore,43.82,58.29,50,0
    .goto Darkshore,43.58,59.99,50,0
    .goto Darkshore,43.49,62.92,50,0
    .goto Darkshore,42.38,63.40,50,0
    .goto Darkshore,41.21,61.64,50,0
    .goto Darkshore,41.76,57.96
    >>Tötet |cRXP_ENEMY_Verfluchte Hochgeborene|r und |cRXP_ENEMY_Zuckender Hochgeborener|r
    >>|cRXP_WARN_Tötet |cRXP_ENEMY_Wailing Highbornes|r nur falls sie sich auf euren Weg befinden|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    #label Anaya
    .goto Darkshore,42.45,60.66
    >>Tötet |cRXP_ENEMY_Anaya Dawnrunner|r. Plündert sie für |cRXP_LOOT_Anayas Anhänger|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #completewith next
    .goto Darkshore,45.25,53.44,30 >>Geht in die Höhle
    >>|cRXP_WARN_Meidet |cRXP_ENEMY_Distelbären|r, |cRXP_ENEMY_Moonkins|r, und |cRXP_ENEMY_Tobender Moonkin|r auf dem Weg (wenn möglich)|r
    .isOnQuest 958
step
    .goto Darkshore,45.75,53.08
    .goto Darkshore,41.70,36.51,30 >>|cRXP_WARN_Tötet das|cRXP_ENEMY_Moonkinorakel|r in der Höhle --, then drink Logout Skip by logging out on top of the Mushroom at the back of the cave|r
    >>|cRXP_WARN_Seid vorsichtig, da es|r |T136006:0|t[Zorn] wirkt |cRXP_WARN_(Distanzzauber: welcher 30-45 Naturschaden verursacht),|r |T136096:0|t[Mondfeuer] |cRXP_WARN_(Distanzzauber: welcher 20-30 Naturschaden verursacht, dann 44 Naturschaden über 12 Sek.), und|r |T136085:0|t[Nachwachsen] |cRXP_WARN_(Selbstzauber: Heilung für ca 150 . Selten, aber rennt wenn das passiert)|r
    >>|cRXP_WARN_Ihr könnt seinen|r |T136006:0|t[Zorn] |cRXP_WARN_hinter den Felsen am Eingang der Höhle umgehen|r
    .mob Moonkin Oracle
    .isOnQuest 958
step
    .goto Darkshore,44.18,36.29
    >>Sprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 957,3 >>Gebt die Quest Bashal'Aran ab
    .target Asterion
step
    #sticky
    #label DalmondBags1
    .goto Darkshore,37.45,40.50,0,0
    >>Sprecht mit |cRXP_FRIENDLY_Dalmond|r
    .vendor >> Verkauft Müll
    .target Dalmond
    .isQuestAvailable 3524
step
    .goto Darkshore,37.40,40.13
    >>Sprecht mit |cRXP_FRIENDLY_Thundris|r
    .turnin 958 >>Gebt die Quest Werkzeuge der Hochgeborenen ab
    .target Thundris Windweaver
step
    #requires DalmondBags1
    .goto Darkshore,37.69,40.66
    >>Sprecht mit |cRXP_FRIENDLY_Alanndarian|r
    .turnin 2178 >>Gebt die Quest Schreitereintopf ab
    .target Alanndarian Nightsong
    .itemcount 5469,5
    .skill cooking,<10,1
step
    .goto Darkshore,39.37,43.49
    >>Sprecht mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Gebt die Quest Wie groß ist die Bedrohung? ab
    .accept 985 >> Akzeptiert die Quest Wie groß ist die Bedrohung?
    .accept 4761 >> Akzeptiert die Quest Thundris Windwirker
    .target Terenthis
step
    .goto Darkshore,36.64,46.26
    >>Clickt die |cRXP_PICK_Buzzbox 827|r
    .turnin 983 >>Gebt die Quest Dröhnkiste 827 ab
    .accept 1001 >>Akzeptiert die Quest Dröhnkiste 411
step
    .goto Darkshore,36.72,45.07,12,0
    .goto Darkshore,36.62,45.59
    >>Sprecht mit |cRXP_FRIENDLY_Gwennyth|r
    .turnin 3524 >>Gebt die Quest An Land gespült ab
    .accept 4681 >>Akzeptiert die Quest An Land gespült
    .target Gwennyth Bly'Leggonde
 step
    .goto Darkshore,36.77,44.28
    >>Sprecht mit |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Kauft bis zu 40|r |T133918:0|t[Roher Langzahniger Matschschnapper] |cRXP_BUY_von ihm|r
    .collect 4592,40,4681,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto Darkshore,36.68,44.05,12,0
    .goto Darkshore,35.74,43.70
    >>Sprecht mit |cRXP_FRIENDLY_Cerellean|r
    .turnin 963 >>Gebt die Quest In ewiger Liebe ab
    .target Cerellean Whiteclaw
step
    #completewith Gwen
    >>Tötet |cRXP_ENEMY_Dunkelküstendrescher|r
    >>|cRXP_WARN_Weicht nicht von eurem Weg ab für sie|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
step
    #completewith next
    .goto Darkshore,32.91,42.24,15,0
    .goto Darkshore,32.41,43.82,25 >> Lauft über den Steg zu den |cRXP_LOOT_Meeresschildkrötenüberresten|r
step
    .goto Darkshore,31.86,46.33
    >>Schwimmt unter Wasser
    >>Plündert die |cRXP_LOOT_Meeresschildkrötenüberreste|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto Darkshore,36.12,44.70,50,0
    .goto Darkshore,35.80,45.88,50,0
    .goto Darkshore,36.04,48.63,50,0
    .goto Darkshore,36.13,50.13,50,0
    .goto Darkshore,36.58,53.20,50,0
    .goto Darkshore,35.23,53.81,50,0
    .goto Darkshore,35.22,55.37,50,0
    .goto Darkshore,36.70,57.09,50,0
    .goto Darkshore,36.12,44.70,50,0
    .goto Darkshore,35.80,45.88,50,0
    .goto Darkshore,36.04,48.63,50,0
    .goto Darkshore,36.13,50.13,50,0
    .goto Darkshore,36.58,53.20,50,0
    .goto Darkshore,35.23,53.81,50,0
    .goto Darkshore,35.22,55.37,50,0
    .goto Darkshore,36.70,57.09
    .xp 11+7825 >> Grind bis 7825+/8800 XP
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #label Gwen
    .goto Darkshore,36.67,45.08,12,0
    .goto Darkshore,36.62,45.59
    >>Sprecht mit |cRXP_FRIENDLY_Gwennyth|r
    .turnin 4681,1 >> Gebt die Quest An Land gespült ab
    .target Gwennyth Bly'Leggonde
step << skip
    #completewith next
    +Rüstet die |T132537:0|t[Sandcomber-Stiefel] aus
    .use 15398
    .itemcount 15398,1
    .itemStat 8,LEVEL,<14
step
    .goto Darkshore,37.04,44.13
    >>|cRXP_WARN_===ACHTUNG===|r
    >>|cRXP_WARN_Sprecht mit|r |cRXP_FRIENDLY_Shaussiy|r
    >>|cRXP_WARN_Falls dies euer erstes Mal ist, einen Ruhestein Batch durchzuführen, schaut euch den Guide dafür unten an|r
    >>|cRXP_WARN_Öffnet das Menü "Ruhestein setzen", dann wirkt|r |T134414:0|t[Ruhestein]
    .hs >> |cRXP_WARN_Ruhestein BATCH von Auberdine nach Eisenschmiede|r
    .link https://www.youtube.com/watch?v=Is-h2TJpL3M >> |cRXP_WARN_HIER KLICKEN (es wird SEHR empfohlen, dies zu tun). Stellt sicher, dass ihr eure Batching Window Size vorher eingestellt und getestet habt, um das Fehlerrisiko zu senken|r
    .target Innkeeper Shaussiy
    .zoneskip Ironforge
step
    .goto Ironforge,27.17,8.58
    >>Sprich mit |cRXP_FRIENDLY_Dink|r
    .trainer >> Erlerne die Klassenfähigkeiten (Feuerball Rang 3, Magie dämpfen)
    >>Gesamtpreis Kosten: 12s
    >>Erinnert euch, dass ihr vielleicht Geld für eine |T133024:0|t[Bronzeröhre] (je 8 Silber) und zum Fliegen nach Thelsamar (1 Gold 10 Silber) brauchen könnt
    .target Dink
step << skip
    .goto Ironforge,27.22,8.58,-1
    .goto Ironforge,67.83,42.47,-1
    .vendor 5175 >> Logout-Skip auf dem Pfeiler über |cRXP_FRIENDLY_Dink|r, um |cRXP_FRIENDLY_Cogspinner|r auf ein |T133024:0|t[Bronzeröhre] zu überprüfen, falls ihr möchtet
    .itemcount 4371,<1
    .isQuestAvailable 418
step
    #completewith next
    +|cRXP_WARN_Wirkt schnell|r |T132794:0|t[Wasser herbeizaubern Rang 2] |cRXP_WARN_, um so viel Wasser wie möglich vor dem Flug herzustellen|r
step << Gnome
    .goto Ironforge,55.50,47.74
    >>Sprich mit |cRXP_FRIENDLY_Gryth|r
    .accept 6392 >>Akzeptiert die Quest Rückkehr zu Brock
    .target Gryth Thurden
step
    .goto Ironforge,55.50,47.74
    >>Sprich mit |cRXP_FRIENDLY_Gryth|r
    .fly Thelsamar >> Fliege nach Thelsamar
    .target Gryth Thurden
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 12-14 Fortgeschrittender Loch Modan Magier AoE Guide
#version 2
#group RestedXP ADV AoE Allianz Magier
#defaultfor Human Mage/Gnome Mage
#next 14-16 Fortgeschrittender Dunkelküste 2 Magier AoE Guide
step
    #completewith next
    +|cRXP_WARN_Während ihr durch Loch Modan questet, hebt ALLE |T133970:0|t[|cRXP_LOOT_Brocken Eberfleisch]|r, die ihr plündert, für später auf|r
step
    .zone Loch Modan >> Reist nach Loch Modan
    .isOnQuest 6392 << Gnome
step
    .goto Loch Modan,22.071,73.127
    >>Sprecht mit |cRXP_FRIENDLY_Cobbleflint|r
    .accept 224 >> Akzeptiert die Quest Verteidigung der Länder des Königs
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >> BETRITT den Bunker. Geht zum obersten Geschoss
step
    .goto Loch Modan,23.233,73.675
    >>Sprecht mit |cRXP_FRIENDLY_Rugelfuss|r
    .accept 267 >> Akzeptiert die Quest Die Bedrohung durch die Troggs
    .target Captain Rugelfuss
step
    #completewith Rugel2
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    >>|cRXP_WARN_Erinnert euch, sie zu den |cRXP_FRIENDLY_Gebirgsjägern|r zu ziehen, falls nötig|r
    >>|cRXP_WARN_Passt auf, da |cRXP_ENEMY_Bergeber|r|r |T132337:0|t[Ansturm] wirken|cRXP_WARN_(Selbst Sofort: Erhöht Laufgeschwindigkeit für 3 Sek., verursacht 40-100 Nahkampfschaden bei Treffer. Nur aus der Distanz wirkbar)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .goto Loch Modan,26.67,56.94
    >>Tötet |cRXP_ENEMY_Splittersteintrogg|r und |cRXP_ENEMY_Späher der Splittersteintroggs|r. Plündert sie für |cRXP_LOOT_Trogg-Steinzahn|r
    >>|cRXP_WARN_Seid vorsichtig denn die |cRXP_ENEMY_Späher der Splittersteintroggs|r wirkt|r |T132222:0|t[Schießen] |cRXP_WARN_(Distanzangriff: verursacht 14-20 Schaden)|r
    >>|cRXP_WARN_Dies ist ein Hyperspawn-Gebiet. Ihr solltet nicht von hier weg müssen|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step
    .goto Loch Modan,22.071,73.127
    >>Sprecht mit |cRXP_FRIENDLY_Cobbleflint|r
    .turnin 224 >> Gebt die Quest Verteidigung der Länder des Königs ab
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >> BETRITT den Bunker. Geht zum obersten Geschoss
step
    #label Rugel2
    .goto Loch Modan,23.233,73.675
    >>Sprecht mit |cRXP_FRIENDLY_Rugelfuss|r
    .turnin 267 >> Gebt die Quest Die Bedrohung durch die Troggs ab
    .target Captain Rugelfuss
step << skip
    #completewith next
    .goto Loch Modan,21.49,68.14,20,0
    .goto Loch Modan,20.86,64.46,20,0
    .goto Loch Modan,19.50,62.56,30 >>Geht zurück in den Tunnel
step << skip
    .goto Loch Modan,18.84,61.48
    .goto Loch Modan,32.19,46.95,30 >>Springt, Logout-Skip von der Kohlenpfanne im Tunnel nach Thelsamar
    .isOnQuest 1339
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    >>|cRXP_WARN_Erinnert euch, sie zu den |cRXP_FRIENDLY_Gebirgsjägern|r zu ziehen, falls nötig|r
    >>|cRXP_WARN_Passt auf, da |cRXP_ENEMY_Bergeber|r|r |T132337:0|t[Ansturm] wirken|cRXP_WARN_(Selbst Sofort: Erhöht Laufgeschwindigkeit für 3 Sek., verursacht 40-100 Nahkampfschaden bei Treffer. Nur aus der Distanz wirkbar)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .goto Loch Modan,23.57,17.93,30 >>Reist nach Station Algaz
    .isOnQuest 1339
step
    .goto Loch Modan,24.13,18.20
    >>Sprecht mit |cRXP_FRIENDLY_Gothor|r
    .vendor >>Verkauft Müll
    .target Gothor Brumn
    .isOnQuest 1339
step
    .goto Loch Modan,24.764,18.397
    >>Geht nach oben
    >>Sprich mit |cRXP_FRIENDLY_Stormpike|r
    .turnin 353 >> Gebt die Quest Stormpikes Lieferung ab << Human
    .turnin 1339 >> Gebt die Quest Gebirgsjäger Stormpikes Aufgabe ab
    .accept 1338 >> Akzeptiert die Quest Stormpikes Bestellung
    .accept 307 >> Akzeptiert die Quest Schmutzige Pfoten
    .target Mountaineer Stormpike
step
    #completewith Entrance
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    >>|cRXP_WARN_Erinnert euch, sie zu den |cRXP_FRIENDLY_Gebirgsjägern|r zu ziehen, falls nötig|r
    >>|cRXP_WARN_Passt auf, da |cRXP_ENEMY_Bergeber|r|r |T132337:0|t[Ansturm] wirken|cRXP_WARN_(Selbst Sofort: Erhöht Laufgeschwindigkeit für 3 Sek., verursacht 40-100 Nahkampfschaden bei Treffer. Nur aus der Distanz wirkbar)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    #completewith Exit
    >>Tötet |cRXP_ENEMY_Tunnelratten|r. Plündert sie für |cRXP_LOOT_Tunnelrattenohren|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Kobold
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
step
    #label Entrance
    .goto Loch Modan,35.47,18.95,40 >>Reist zum Eingang der Mine
    .isOnQuest 307
step
    #label Gear
    .goto Loch Modan,35.45,19.94,12,0
    .goto Loch Modan,36.42,20.72,12,0
    .goto Loch Modan,35.24,21.98,12,0
    .goto Loch Modan,35.90,22.02,12,0
    .goto Loch Modan,34.88,23.51,12,0
    .goto Loch Modan,36.10,22.97,12,0
    .goto Loch Modan,36.23,24.88,12,0
    .goto Loch Modan,34.93,24.89,12,0
    .goto Loch Modan,35.45,19.94,12,0
    .goto Loch Modan,36.42,20.72,12,0
    .goto Loch Modan,35.24,21.98,12,0
    .goto Loch Modan,35.90,22.02,12,0
    .goto Loch Modan,34.88,23.51,12,0
    .goto Loch Modan,36.10,22.97,12,0
    .goto Loch Modan,36.23,24.88,12,0
    .goto Loch Modan,34.93,24.89
    >>Plündert |cRXP_LOOT_Minenarbeiterausstattung|r auf dem Boden. |cRXP_WARN_Sie teilen sich Spawnpunkte|r
    >>Passt auf, da |cRXP_WARN_Geomant der Tunnelratten|cRXP_ENEMY_ wirken|r |T135824:0|t[Schneller Flammenzauberschutz] |r(Selbstzauber Sofort: Gewährt 10-Sekunden-Feuerimmunität) und|cRXP_WARN_ |T135824:0|t[Feuerschlag] |r(Distanzzauber Sofort: Verursacht 20-30 Feuerschaden)|cRXP_WARN_
    .complete 307,1 --Collect Miners' Gear (x4)
--VV Rat Diggers
step
    #label Exit
    .goto Loch Modan,35.47,18.95,40 >>Verlasst die Mine
    .isOnQuest 307
step
#loop
	.line Loch Modan,34.38,17.67,35.44,15.34,37.15,10.53,39.38,10.92,38.46,14.43,39.67,18.12,39.84,24.83,37.34,26.82,37.15,24.53,38.85,21.25,37.89,18.88,34.38,17.67
	.goto Loch Modan,34.38,17.67,40,0
	.goto Loch Modan,35.44,15.34,40,0
	.goto Loch Modan,37.15,10.53,40,0
	.goto Loch Modan,39.38,10.92,40,0
	.goto Loch Modan,38.46,14.43,40,0
	.goto Loch Modan,39.67,18.12,40,0
	.goto Loch Modan,39.84,24.83,40,0
	.goto Loch Modan,37.34,26.82,40,0
	.goto Loch Modan,37.15,24.53,40,0
	.goto Loch Modan,38.85,21.25,40,0
	.goto Loch Modan,37.89,18.88,40,0
	.goto Loch Modan,34.38,17.67,40,0
    >>Tötet |cRXP_ENEMY_Späher der Tunnelratten|r, |cRXP_ENEMY_Gezücht der Tunnelratten|r, |cRXP_ENEMY_Kobold der Tunnelratten|r, und |cRXP_ENEMY_Futterwühler der Tunnelratten|r. Plündert sie für |cRXP_LOOT_Tunnelrattenohr|r
    >>|cRXP_WARN_Seid vorsichtig denn |cRXP_ENEMY_Kobold der Tunnelratten|r wirken|r |T132152:0|t[Hauen] |cRXP_WARN_(Läd 2 Extra Angriffe alle 10 Sek. auf)|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Kobold
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Forager
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    >>|cRXP_WARN_Erinnert euch, sie zu den |cRXP_FRIENDLY_Gebirgsjägern|r zu ziehen, falls nötig|r
    >>|cRXP_WARN_Passt auf, da |cRXP_ENEMY_Bergeber|r|r |T132337:0|t[Ansturm] wirken|cRXP_WARN_(Selbst Sofort: Erhöht Laufgeschwindigkeit für 3 Sek., verursacht 40-100 Nahkampfschaden bei Treffer. Nur aus der Distanz wirkbar)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .goto Loch Modan,23.57,17.93,30 >>Reist nach Station Algaz
    .isOnQuest 307
step
    .goto Loch Modan,24.13,18.20
    >>Sprecht mit |cRXP_FRIENDLY_Gothor|r
    .vendor >>Verkauft Müll
    .target Gothor Brumn
    .isOnQuest 307
step
    .goto Loch Modan,24.764,18.397
    >>Geht nach oben
    >>Sprich mit |cRXP_FRIENDLY_Stormpike|r
    .turnin 307,2 >> Gebt die Quest Schmutzige Pfoten ab
    .target Mountaineer Stormpike
step
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto Loch Modan,31.01,24.84,35,0
	.goto Loch Modan,32.69,28.67,35,0
	.goto Loch Modan,34.93,31.55,35,0
	.goto Loch Modan,36.78,33.19,35,0
	.goto Loch Modan,39.65,32.82,35,0
	.goto Loch Modan,38.15,38.16,35,0
	.goto Loch Modan,33.53,40.53,35,0
	.goto Loch Modan,29.87,53.51,35,0
	.goto Loch Modan,29.58,46.54,35,0
	.goto Loch Modan,29.95,39.84,35,0
	.goto Loch Modan,27.09,40.10,35,0
	.goto Loch Modan,29.03,33.44,35,0
	.goto Loch Modan,27.19,29.01,35,0
	.goto Loch Modan,25.77,25.60,35,0
	.goto Loch Modan,23.64,22.20,35,0
	.goto Loch Modan,31.01,24.84,35,0
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    >>|cRXP_WARN_Erinnert euch, sie zu den |cRXP_FRIENDLY_Gebirgsjägern|r zu ziehen, falls nötig|r
    >>|cRXP_WARN_Passt auf, da |cRXP_ENEMY_Bergeber|r|r |T132337:0|t[Ansturm] wirken|cRXP_WARN_(Selbst Sofort: Erhöht Laufgeschwindigkeit für 3 Sek., verursacht 40-100 Nahkampfschaden bei Treffer. Nur aus der Distanz wirkbar)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .xp <13+5500,1 << Gnome
step
    #completewith Boast
    >>Tötet |cRXP_ENEMY_Räudiger Bergeber|r und |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Ergrauter Schwarzbär|r und |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Klippenlauerer|r und |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    >>|cRXP_WARN_Erinnert euch, sie zu den |cRXP_FRIENDLY_Gebirgsjägern|r zu ziehen, falls nötig|r
    >>|cRXP_WARN_Passt auf, da |cRXP_ENEMY_Bergeber|r|r |T132337:0|t[Ansturm] wirken|cRXP_WARN_(Selbst Sofort: Erhöht Laufgeschwindigkeit für 3 Sek., verursacht 40-100 Nahkampfschaden bei Treffer. Nur aus der Distanz wirkbar)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mangy Mountain Boar
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Grizzled Black Bear
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Cliff Lurker
    .mob +Forest Lurker
    .xp >13+5500,1 << Gnome
step
    .goto Loch Modan,37.18,47.13,10,0
    >>Sprecht mit |cRXP_FRIENDLY_Brock|r und |cRXP_FRIENDLY_Jern|r
    >>|cRXP_WARN_Sie können sich im Gebäude oder außerhalb davon befinden|r
    .turnin 6392 >>Gebt die Quest Rückkehr zu Brock ab << Gnome
    .target +Brock Stoneseeker
    .goto Loch Modan,37.02,47.80
    .accept 436 >> Akzeptiert die Quest Eisenbands Ausgrabungsstätte
    .goto Loch Modan,37.23,47.37
    .target +Jern Hornhelm
    .xp >13+5500,1 << Gnome
step
    .goto Loch Modan,37.23,47.37
    >>Sprecht mit |cRXP_FRIENDLY_Jern|r
    >>|cRXP_WARN_Er kann sich im Gebäude oder außerhalb davon befinden|r
    .accept 436 >> Akzeptiert die Quest Eisenbands Ausgrabungsstätte
    .target Jern Hornhelm
    .xp >13+6550,1 << Gnome
    .isQuestTurnedIn 6392
step << Human
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto Loch Modan,31.01,24.84,50,0
	.goto Loch Modan,32.69,28.67,50,0
	.goto Loch Modan,34.93,31.55,50,0
	.goto Loch Modan,36.78,33.19,50,0
	.goto Loch Modan,39.65,32.82,50,0
	.goto Loch Modan,38.15,38.16,50,0
	.goto Loch Modan,33.53,40.53,50,0
	.goto Loch Modan,29.87,53.51,50,0
	.goto Loch Modan,29.58,46.54,50,0
	.goto Loch Modan,29.95,39.84,50,0
	.goto Loch Modan,27.09,40.10,50,0
	.goto Loch Modan,29.03,33.44,50,0
	.goto Loch Modan,27.19,29.01,50,0
	.goto Loch Modan,25.77,25.60,50,0
	.goto Loch Modan,23.64,22.20,50,0
	.goto Loch Modan,31.01,24.84,50,0
    .xp 13+8675 >> Farmt bis 8675+/11400 XP
step << Gnome
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto Loch Modan,31.01,24.84,50,0
	.goto Loch Modan,32.69,28.67,50,0
	.goto Loch Modan,34.93,31.55,50,0
	.goto Loch Modan,36.78,33.19,50,0
	.goto Loch Modan,39.65,32.82,50,0
	.goto Loch Modan,38.15,38.16,50,0
	.goto Loch Modan,33.53,40.53,50,0
	.goto Loch Modan,29.87,53.51,50,0
	.goto Loch Modan,29.58,46.54,50,0
	.goto Loch Modan,29.95,39.84,50,0
	.goto Loch Modan,27.09,40.10,50,0
	.goto Loch Modan,29.03,33.44,50,0
	.goto Loch Modan,27.19,29.01,50,0
	.goto Loch Modan,25.77,25.60,50,0
	.goto Loch Modan,23.64,22.20,50,0
	.goto Loch Modan,31.01,24.84,50,0
    .xp 13+6545 >> Farmt bis 6545+/11400 XP
    .xp <13+5500,1
    .isOnQuest 6392
step << Gnome
    #completewith next
    .goto Loch Modan,46.14,63.53,50,0
    .goto Loch Modan,49.35,67.36,50,0
    .goto Loch Modan,51.91,68.00,50,0
    .goto Loch Modan,64.83,66.05,20 >>Geht zu |cRXP_FRIENDLY_Aldren|r
step << Gnome
    #completewith Boast
    .goto Loch Modan,64.83,66.05
    >>Sprecht mit |cRXP_FRIENDLY_Aldren|r
    .vendor 1214 >> |cRXP_BUY_Kauft den|r |T132491:0|t[Weisengürtel] |cRXP_BUY_von ihm (falls er verfügbar ist)|r
    .isQuestAvailable 298
step << Gnome
    >>Sprecht mit |cRXP_FRIENDLY_Ironband|r und |cRXP_FRIENDLY_Magmar|r
    .accept 298 >> Akzeptiert die Quest Bericht über den Fortschritt der Ausgrabungen
    .target +Prospector Ironband
    .goto Loch Modan,65.94,65.62
    .turnin 436 >> Gebt die Quest Eisenbands Ausgrabungsstätte ab
    .goto Loch Modan,64.89,66.66
    .target +Magmar Fellhew
    .isOnQuest 436
step << Gnome
    #label ExcavationP
    .goto Loch Modan,65.94,65.62
    >>Sprich mit |cRXP_FRIENDLY_Ironband|r
    .accept 298 >> Akzeptiert die Quest Bericht über den Fortschritt der Ausgrabungen
    .target Prospector Ironband
    .isQuestTurnedIn 436
step << Gnome
    #completewith next
    .goto Loch Modan,66.07,70.60,30,0
    .goto Loch Modan,73.23,70.89,40,0
    .goto Loch Modan,77.25,68.20,40,0
    .goto Loch Modan,82.11,63.22,15,0
    .goto Loch Modan,83.48,65.62,20 >>Reist zu |cRXP_FRIENDLY_Daryl|r
step << Gnome
    #label Boast
    .goto Loch Modan,83.48,65.62
    >>Sprecht mit |cRXP_FRIENDLY_Daryl|r
    .accept 257 >> Akzeptiert die Quest Das Prahlen eines Jägers
    .target Daryl The Youngling
    .isOnQuest 298
step << Gnome
#loop
	.line Loch Modan,79.89,65.91,76.70,74.44,74.74,69.21,77.03,60.55,76.09,57.94,77.39,55.98,79.63,59.85,79.89,65.91
	.goto Loch Modan,79.89,65.91,45,0
	.goto Loch Modan,76.70,74.44,45,0
	.goto Loch Modan,74.74,69.21,45,0
	.goto Loch Modan,77.03,60.55,45,0
	.goto Loch Modan,76.09,57.94,45,0
	.goto Loch Modan,77.39,55.98,45,0
	.goto Loch Modan,79.63,59.85,45,0
	.goto Loch Modan,79.89,65.91,45,0
    >>Tötet |cRXP_ENEMY_Bergbussards|r
    .complete 257,1 --Mountain Buzzard (6)
    .mob Mountain Buzzard
    .isOnQuest 257
step << Gnome
    #completewith next
    .goto Loch Modan,82.11,63.22,15,0
    .goto Loch Modan,83.48,65.62,20 >>Reist zu |cRXP_FRIENDLY_Daryl|r
step << Gnome
    .goto Loch Modan,83.48,65.62
    >>Sprecht mit |cRXP_FRIENDLY_Daryl|r
    .turnin 257,2 >> Gebt die Quest Das Prahlen eines Jägers ab
    .target Daryl The Youngling
    .isQuestComplete 257
step << Gnome
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto Loch Modan,31.01,24.84,50,0
	.goto Loch Modan,32.69,28.67,50,0
	.goto Loch Modan,34.93,31.55,50,0
	.goto Loch Modan,36.78,33.19,50,0
	.goto Loch Modan,39.65,32.82,50,0
	.goto Loch Modan,38.15,38.16,50,0
	.goto Loch Modan,33.53,40.53,50,0
	.goto Loch Modan,29.87,53.51,50,0
	.goto Loch Modan,29.58,46.54,50,0
	.goto Loch Modan,29.95,39.84,50,0
	.goto Loch Modan,27.09,40.10,50,0
	.goto Loch Modan,29.03,33.44,50,0
	.goto Loch Modan,27.19,29.01,50,0
	.goto Loch Modan,25.77,25.60,50,0
	.goto Loch Modan,23.64,22.20,50,0
	.goto Loch Modan,31.01,24.84,50,0
    >>Tötet |cRXP_ENEMY_Räudiger Bergeber|r und |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Ergrauter Schwarzbär|r und |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Klippenlauerer|r und |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    >>|cRXP_WARN_Erinnert euch, sie zu den |cRXP_FRIENDLY_Gebirgsjägern|r zu ziehen, falls nötig|r
    >>|cRXP_WARN_Passt auf, da |cRXP_ENEMY_Bergeber|r|r |T132337:0|t[Ansturm] wirken|cRXP_WARN_(Selbst Sofort: Erhöht Laufgeschwindigkeit für 3 Sek., verursacht 40-100 Nahkampfschaden bei Treffer. Nur aus der Distanz wirkbar)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mangy Mountain Boar
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Grizzled Black Bear
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Cliff Lurker
    .mob +Forest Lurker
step << Gnome
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto Loch Modan,31.01,24.84,50,0
	.goto Loch Modan,32.69,28.67,50,0
	.goto Loch Modan,34.93,31.55,50,0
	.goto Loch Modan,36.78,33.19,50,0
	.goto Loch Modan,39.65,32.82,50,0
	.goto Loch Modan,38.15,38.16,50,0
	.goto Loch Modan,33.53,40.53,50,0
	.goto Loch Modan,29.87,53.51,50,0
	.goto Loch Modan,29.58,46.54,50,0
	.goto Loch Modan,29.95,39.84,50,0
	.goto Loch Modan,27.09,40.10,50,0
	.goto Loch Modan,29.03,33.44,50,0
	.goto Loch Modan,27.19,29.01,50,0
	.goto Loch Modan,25.77,25.60,50,0
	.goto Loch Modan,23.64,22.20,50,0
	.goto Loch Modan,31.01,24.84,50,0
    .xp 13+6780 >> Farmt bis 6780+/11400 XP
    .isOnQuest 298
step
    #sticky
    #label Kadrell
    .goto Loch Modan,32.93,49.51,40,0
    .goto Loch Modan,34.49,47.44,40,0
    .goto Loch Modan,37.05,46.11,40,0
    .goto Loch Modan,37.39,45.17,40,0
    .goto Loch Modan,37.12,42.79
    >>Sprecht mit |cRXP_FRIENDLY_Kadrell|r
    >>|cRXP_FRIENDLY_Kadrell|r |cRXP_WARN_patrouilliert auf der Hauptstraße in Thelsamar|r
    .turnin 416,2 >> Gebt die Quest Rattenfang ab
    .target Mountaineer Kadrell
step << Gnome
    .goto Loch Modan,37.18,47.13,10,0
    >>Sprecht mit |cRXP_FRIENDLY_Brock|r und |cRXP_FRIENDLY_Jern|r
    >>|cRXP_WARN_Sie können sich im Gebäude oder außerhalb davon befinden|r
    .turnin 6392 >>Gebt die Quest Rückkehr zu Brock ab
    .target +Brock Stoneseeker
    .goto Loch Modan,37.02,47.80
    .turnin 298 >> Gebt die Quest Bericht über den Fortschritt der Ausgrabungen ab
    .accept 301 >> Akzeptiert die Quest Meldung in Eisenschmiede
    .goto Loch Modan,37.23,47.37
    .target +Jern Hornhelm
    .isOnQuest 298
step << Gnome
    .goto Loch Modan,37.18,47.13,10,0
    >>Sprecht mit |cRXP_FRIENDLY_Brock|r und |cRXP_FRIENDLY_Jern|r
    >>|cRXP_WARN_Sie können sich im Gebäude oder außerhalb davon befinden|r
    .turnin 6392 >>Gebt die Quest Rückkehr zu Brock ab
    .target Brock Stoneseeker
    .goto Loch Modan,37.02,47.80
    .accept 301 >> Akzeptiert die Quest Meldung in Eisenschmiede
    .goto Loch Modan,37.23,47.37
    .target +Jern Hornhelm
    .isQuestTurnedIn 298
step << Gnome
    .goto Loch Modan,37.18,47.13,10,0
    .goto Loch Modan,37.02,47.80
    >>Sprecht mit |cRXP_FRIENDLY_Brock|r
    >>|cRXP_WARN_Er kann sich im Gebäude oder außerhalb davon befinden|r
    .turnin 6392 >>Gebt die Quest Rückkehr zu Brock ab
    .target Brock Stoneseeker
step
    #completewith next
    .goto Loch Modan,35.25,47.74,12,0
    .goto Loch Modan,35.39,48.36,12,0
    >>Betretet Das Gasthaus
    .goto Loch Modan,34.828,49.283,10 >>Reist zu |cRXP_FRIENDLY_Vidra|r
step
    .goto Loch Modan,34.828,49.283
    >>Sprecht mit |cRXP_FRIENDLY_Vidra|r
    .accept 418 >> Akzeptiert die Quest Blutwurst aus Thelsamar
    .turnin 418 >> Gebt die Blutwurst in Thelsamar ab
    .target Vidra Hearthstove
step
    .goto Loch Modan,34.76,48.62
    >>|cRXP_WARN_Werft|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r NICHT weg
    .skill cooking,10 >> Kocht |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r zu |T133974:0|t[Geröstetes Eberfleisch] bis euer |T133971:0|t[Kochkunst] skill 10 erreicht
step
    .goto Loch Modan,34.76,48.62
    >>Sprecht mit |cRXP_FRIENDLY_Yanni|r
    >>|cRXP_BUY_Kauft so viele|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_wie ihr braucht/könnt|r
    >>|cRXP_WARN_Geht NICHT unter 45 Silber|r
    .vendor >> Verkauft Müll
    .isOnQuest 1338
step
    #completewith next
    #requires Kadrell
    +|cRXP_WARN_Wirkt schnell|r |T132794:0|t[Wasser herbeizaubern Rang 2] |cRXP_WARN_, um so viel Wasser wie möglich vor dem Flug herzustellen|r
step
    #requires Kadrell
    .goto Loch Modan,33.94,50.96
    >>Sprecht mit |cRXP_FRIENDLY_Thorgrum|r
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Thorgrum Borrelson
    .isOnQuest 1338
--VV WIP. Report to Ironforge needed
step << Gnome
    .goto Ironforge,74.64,11.72
    >>Sprich mit |cRXP_FRIENDLY_Stormpike|r
    .turnin 301 >> Gebt die Quest Meldung in Eisenschmiede ab
    .target Prospector Stormpike
    .isOnQuest 301
step << skip
    #completewith Monty
    .goto Ironforge,74.82,8.69,-1
    .goto Ironforge,56.21,46.86,-1
    .goto Ironforge,76.41,51.22,30 >>Logout-Skip zur Außenseite der Tiefenbahn
step
    .goto Ironforge,67.83,42.47
    >>Sprecht mit |cRXP_FRIENDLY_Cogspinner|r
    .vendor 5175 >>|cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_wenn er sie hat|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
step << Gnome
    #label Monty
    .goto Ironforge,76.41,51.22,30,0
    >>Betretet die Tiefenbahn
    >>Sprecht mit |cRXP_FRIENDLY_Monty|r
    .accept 6661 >> Akzeptiert die Quest Tiefenbahn-Ratten-Razzia
    .target Monty
step << Gnome
    >>Benutzt die |T133942:0|t[Rattenfänger-Flöte] auf die|cRXP_FRIENDLY_Tiefenbahn-Ratten|r in der Tiefenbahn
    .complete 6661,1 --Rats Captured (x5)
    .target Deeprun Rat
    .use 17117
step
    >>Sprecht mit |cRXP_FRIENDLY_Monty|r
    >>Warte auf das RP << Gnome
    .turnin 6661 >> Gebt die Quest Tiefenbahn-Ratten-Razzia ab << Gnome
    .timer 13,Tiefenbahn-Ratten-Razzia RP << Gnome
    .accept 6662 >> Akzeptiert die Quest Mein Bruder Nipsy...
    .target Monty
    .zoneskip Stormwind City
step
    >>|cRXP_WARN_Fahrt mit der Tiefenbahn, während ihr Pausenlos |r |T132794:0|t[Wasser herbeizaubern Rang 2] wirkt
    >>Sprecht mit |cRXP_FRIENDLY_Nipsy|r auf der anderen Seite der Tiefenbahn
    .turnin 6662 >> Gebt die Quest Mein Bruder Nipsy... ab
    .target Nipsy
    .isOnQuest 6662
step
    #label Monty << Human
    .zone Stormwind City >> Betretet Sturmwind
    .isOnQuest 1338
step
    #completewith next
    .goto Stormwind City,59.96,12.21,20,0
    .goto Stormwind City,57.03,11.37,20,0
    .goto Stormwind City,55.25,7.07,15 >>Reist zu |cRXP_FRIENDLY_Billibub|r
step
    .goto Stormwind City,55.25,7.07
    >>Sprecht mit |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_wenn er sie hat|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
step
    .goto Stormwind City,58.09,16.55
    >>Sprecht mit |cRXP_FRIENDLY_Furen|r
    .turnin 1338 >> Gebt die Quest Stormpikes Bestellung ab
    .target Furen Longbeard
step
    #completewith next
    .goto Stormwind City,53.34,19.29,20,0
    .goto Stormwind City,51.64,21.69,20,0
    .goto Stormwind City,52.23,31.66,20,0
    .goto Stormwind City,49.82,34.42,20,0
    .goto Stormwind City,47.86,31.13,12,0
    .goto Stormwind City,49.18,30.29,12 >>Reist zu |cRXP_FRIENDLY_Baros|r
step
    .goto Stormwind City,49.18,30.29
    >>Geht ins Gebäude
    >>Sprecht mit |cRXP_FRIENDLY_Baros|r
    .accept 399 >> Akzeptiert die Quest Ein bescheidener Anfang
    .target Baros Alexston
step
    #completewith next
    .goto Stormwind City,47.72,42.71,15,0
    .goto Stormwind City,49.12,46.88,15,0
    .goto Stormwind City,48.55,49.00,15,0
    .goto Stormwind City,50.72,51.88,15,0
    .goto Stormwind City,52.57,55.44,15,0
    .goto Stormwind City,51.68,59.86,8,0
    .goto Stormwind City,51.83,60.41,4,0
    .goto Stormwind City,51.59,60.15,6,0
    .goto Stormwind City,39.17,76.58,12,0
    >>|cRXP_WARN_Springt hoch auf die Fackel, dann fallt nach unten, um unter Sturmwind zu kommen|r
    >>|cRXP_WARN_Mit Schatten auf "Mittel" oder "Niedrig", geht zwischen die Füße von Derek the Dinosaur (auf dem helleren Teil des Bodens) gerade vor dem blauen nichts und lauft dann geradeaus nach vorne|r
    >>|cRXP_WARN_HINWEIS: Es besteht eine kleine Chance, mit dieser Methode zu sterben. Ihr könnt auch normal zum Magierturm laufen, wenn ihr wollt|r
    .link https://youtu.be/gV8-wgQEomc >> KLICKT HIER für einen Leitfaden
    .goto Stormwind City,38.61,79.39,10 >>Reist zu|cRXP_FRIENDLY_Jennea|r
step
    .goto Stormwind City,38.61,79.39
    >>Sprich mit |cRXP_FRIENDLY_Jennea|r
    .accept 1861 >> Akzeptiert die Quest Spiegelsee << Gnome
    .trainer >> Erlernt eure Klassenfähigkeiten (Feuerschlag Rang 2, Arkane Intelligenz Rang 2, Arkane Explosion)
    >>Gesamtpreis Kosten: 27s
    >>Erinnert euch, dass ihr möglicherweise Geld für Tränke (1-3s jeweils) und Schriftrollen (50c-3s jeweils) braucht
    .target Jennea Cannon
step
    #completewith next
    .goto Stormwind City,36.73,82.44,10,0
    .goto Stormwind City,37.91,81.92,10,0
    .goto Stormwind City,38.10,80.93,8,0
    .goto Stormwind City,37.49,81.35,6,0
    .goto Stormwind City,38.46,80.61,8,0
    .goto Stormwind City,33.65,81.58,15,0
    .goto Stormwind City,31.12,79.42,15,0
    .goto Stormwind City,32.07,81.50,10,0
    .goto Stormwind City,32.63,80.62,8,0
    >>Verlasst den Magierturm
    .goto Stormwind City,32.16,79.84,10 >>Reisen zu |cRXP_FRIENDLY_Charys|r
step
    .goto Stormwind City,32.16,79.84
    >>Betretet das Gebäude
    >>Sprich mit |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >> |cRXP_BUY_Kauft|r |T134851:0|t[Geringer Manatrank] |cRXP_BUY_und|r |T134831:0|t[Heiltrank] |cRXP_BUY_von ihr (falls vorhanden)|r
    .money <0.0120
    .target Charys Yserian
step
    #completewith next
    .goto Stormwind City,39.32,71.54,20,0
    .goto Stormwind City,41.06,69.44,20,0
    .goto Stormwind City,44.02,69.81,20,0
    .goto Stormwind City,46.32,66.93,20,0
    .goto Stormwind City,42.45,61.76,20,0
    .goto Stormwind City,41.17,63.74,15,0
    .goto Stormwind City,41.57,65.46,10 >>Reisen zu |cRXP_FRIENDLY_Adair|r
    .money <0.0090
step
    .goto Stormwind City,41.57,65.46
    >>Betretet das Gebäude
    >>Sprich mit |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >> |cRXP_BUY_Kauft alle bis auf Intelligenz|r |T134943:0|t[Schriftrollen] |cRXP_BUY_von ihm (falls vorhanden)|r
    .money <0.0090
    .target Adair Gilroy
step << skip
    #completewith next
    .goto Stormwind City,53.53,64.63,12,0
    .goto Stormwind City,52.10,61.42,12,0
    .goto Stormwind City,49.36,63.42,12,0
    .goto Stormwind City,51.16,68.35,12,0
    .goto Stormwind City,52.05,67.96,10 >>Reist zu |cRXP_FRIENDLY_Roberto|r
step << skip
    .goto Stormwind City,52.05,67.96
    >>Geht ins Gebäude
    >>Sprecht mit |cRXP_FRIENDLY_Roberto|r
    >>|cRXP_BUY_Kauft|r |T132620:0|t[Fässlein mit Merlot] |cRXP_BUY_von ihm|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    .goto Stormwind City,52.10,61.34,15,0
    .goto Stormwind City,55.46,65.26,8 >>Reist zu |cRXP_FRIENDLY_Keldric|r
    .money <0.01
step
    .goto Stormwind City,55.46,65.26
    >>Sprecht mit |cRXP_FRIENDLY_Keldric|r durch die Mauer
    .vendor 1257 >> |cRXP_BUY_Kauft|r |T134830:0|t[Geringer Heiltrank] |cRXP_BUY_von ihm, falls sie verfügbar sind|r
    .money <0.01
    .target Keldric Boucher
step
    #completewith Bank
    .goto Stormwind City,55.30,68.16,10 >>Betretet die Bank von Sturmwind
step
    .goto Stormwind City,57.03,72.97
    >>Sprich mit |cRXP_FRIENDLY_Newton|r
    .bankdeposit 769,4371,730,7207,1941,1711,1478,1712,3012,1180,1181,3013,6889 >> Packe folgende Items in die Bank:
    >>|T133970:0|t[Brocken Eberfleisch]
    >>|T133024:0|t[Bronzeröhre]
    >>|T133884:0|t[Murlocauge]
    >>|T132788:0|t[Jenneas Fläschchen]
    >>|T132620:0|t[Fässlein mit Merlot]
    >>|T134943:0|t[Schriftrollen]
    >>|T132832:0|t[Kleines Ei]
    .target Newton Burnside
--   .itemcount 769,1
--   .itemcount 4371,1
-- .itemcount 730,1
--  .itemcount 7207,1
-- 1711 level 20 scroll
--VV Vendor Crisp Spider Meat for now
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 769,4371,7207 >> Packe folgende Items in die Bank:
    >>|T133970:0|t[Brocken Eberfleisch]
    >>|T133024:0|t[Bronzeröhre]
    >>|T132788:0|t[Jenneas Fläschchen]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 4371,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 769,730,7207 >> Packe folgende Items in die Bank:
    >>|T133970:0|t[Brocken Eberfleisch]
    >>|T133884:0|t[Murlocauge]
    >>|T132788:0|t[Jenneas Fläschchen]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 4371,730,7207 >> Packe folgende Items in die Bank:
    >>|T133024:0|t[Bronzeröhre]
    >>|T133884:0|t[Murlocauge]
    >>|T132788:0|t[Jenneas Fläschchen]
    .target Newton Burnside
    .itemcount 4371,1
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 769,7207 >> Packe folgende Items in die Bank:
    >>|T133970:0|t[Brocken Eberfleisch]
    >>|T132788:0|t[Jenneas Fläschchen]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 4371,7207 >> Packe folgende Items in die Bank:
    >>|T133024:0|t[Bronzeröhre]
    >>|T132788:0|t[Jenneas Fläschchen]
    .target Newton Burnside
    .itemcount 4371,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 730,7207 >> Packe folgende Items in die Bank:
    >>|T133884:0|t[Murlocauge]
    >>|T132788:0|t[Jenneas Fläschchen]
    .target Newton Burnside
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 7207 >> Packe folgende Items in die Bank:
    >>|T132788:0|t[Jenneas Fläschchen]
    .target Newton Burnside
    .itemcount 7207,1
step
    #completewith next
    .goto Stormwind City,53.45,64.92,10,0
    >>Betretet das Gasthaus
    .goto Stormwind City,52.61,65.72,10 >>Reisen zu |cRXP_FRIENDLY_Allison|r
    .target Innkeeper Allison
step
    .goto Stormwind City,52.61,65.72
    >>|cRXP_WARN_===ACHTUNG===|r
    >>|cRXP_WARN_Sprecht mit|r |cRXP_FRIENDLY_Allison|r
    >>|cRXP_WARN_Öffnet das Menü "Ruhestein setzen", dann wirkt|r |T134414:0|t[Ruhestein]
    .hs >> |cRXP_WARN_Ruhestein BATCH von Sturmwind nach Auberdine|r
    .target Innkeeper Allison
    .zoneskip Darkshore

]])
RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 14-16 Fortgeschrittender Dunkelküste 2 Magier AoE Guide
#version 2
#group RestedXP ADV AoE Allianz Magier
#defaultfor Human Mage/Gnome Mage
#next 16-18 Fortgeschrittener Westfall Magier AoE Guide


step
    #completewith DeepO
    +|cRXP_WARN_Behaltet alle |T132917:0|t[Leichte Feder] für später|r
step
    .goto Darkshore,36.77,44.28
    >>Sprecht mit |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Kauft bis zu 20|r |T133918:0|t[Roher Langzahniger Matschschnapper] |cRXP_BUY_von ihm|r
    .collect 4592,20,982,1 --Longjaw Mud Snapper (20)
    .target Laird
    .isQuestAvailable 982
step
    >>Sprecht mit |cRXP_FRIENDLY_Barithras|r und |cRXP_FRIENDLY_Glynda|r
    .accept 947 >>Akzeptiert die Quest Höhlenpilze
    .target +Barithras Moonshade
    .goto Darkshore,37.32,43.64
    .accept 4811 >>Akzeptiert die Quest Der rote Kristall
    .goto Darkshore,37.68,43.38
    .target +Sentinel Glynda Nal'Shea
step
    #label DeepO
    .goto Darkshore,38.11,41.16
    >>Sprecht mit |cRXP_FRIENDLY_Gorbold|r
    .accept 982 >> Akzeptiert die Quest Tiefer Ozean, weites Meer
    .target Gorbold Steelhand
step
    .goto Darkshore,37.39,40.13
    >>Sprecht mit |cRXP_FRIENDLY_Thundris|r
    .turnin 4761 >> Gebt die Quest Thundris Windwirker ab
    .accept 4762 >> Akzeptiert die Quest Der Cliffspring
    .target Thundris Windweaver
step
    #completewith MistV
    .goto Darkshore,35.87,38.18,50,0
    .goto Darkshore,36.28,32.23,50,0
    .goto Darkshore,37.61,30.86,50,0
    >>Tötet |cRXP_ENEMY_Dunkelküstendrescher|r. Im Wasser. Plündert sie für |cRXP_LOOT_Drescherauge|r
   .complete 1001,1 --Thresher Eye (3)
   .mob Darkshore Thresher
step
   .goto Darkshore,38.21,28.76
--  .goto Darkshore,38.23,28.79
    >>Plündert die |cRXP_LOOT_Schließkassette der SILBERMORGEN|r durch die Wand des Bootes
    >>|cRXP_WARN_Benutzt euer Tastenkürzel "Interagieren mit Ziel" unter Wasser neben dem Pfeil|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
   .complete 982,1 --Silver Dawning's Lockbox (1)
step
   #label MistV
   .goto Darkshore,39.58,27.47
--  .goto Darkshore,39.63,27.45
   >>Plündert die |cRXP_LOOT_Schließkassette der NEBELSCHLEIER|r durch die Wand des Bootes
   >>|cRXP_WARN_Benutzt euer Tastenkürzel "Interagieren mit Ziel" unter Wasser neben dem Pfeil|r
   >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
   .complete 982,2 --Mist Veil's Lockbox (1)
step
   .goto Darkshore,40.44,28.63,50,0
   .goto Darkshore,35.87,38.18,50,0
   .goto Darkshore,36.28,32.23,50,0
   .goto Darkshore,37.61,30.86,50,0
   .goto Darkshore,40.44,28.63,50,0
   .goto Darkshore,35.87,38.18,50,0
   .goto Darkshore,36.28,32.23,50,0
   .goto Darkshore,37.61,30.86
   >>Tötet |cRXP_ENEMY_Dunkelküstendrescher|r. Im Wasser. Plündert sie für |cRXP_LOOT_Drescherauge|r
   .complete 1001,1 --Thresher Eye (3)
   .mob Darkshore Thresher
step
   #completewith next
   +|cRXP_WARN_Behaltet die|r |T133884:0|t[Murlocaugen] |cRXP_WARN_die ihr von den|r |cRXP_ENEMY_Küstenläufer der Grauflossen|r |cRXP_WARN_und|r |cRXP_ENEMY_Seher der Grauflossen|r plündert
step
   .goto Darkshore,41.91,31.48
   >>Plündert die |cRXP_LOOT_Gestrandete Meereskreatur|r vom Boden
   >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
   .accept 4723 >> Akzeptiert die Quest Gestrandete Meereskreatur
step
   .goto Darkshore,41.96,28.61
   >>Klickt |cRXP_PICK_Buzzbox 411|r
   .turnin 1001 >> Gebt die Quest Dröhnkiste 411 ab
   .accept 1002 >> Akzeptiert die Quest Dröhnkiste 323
step
    #completewith SeaTurtle1
    .goto Darkshore,43.67,27.81,50,0
    >>AoE |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgeling
step
    #completewith SeaTurtle1
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r und |cRXP_ENEMY_Mondpircher|r. Plündert sie für |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Tollwütiger Distelbär|r
    >>|cRXP_WARN_Seid vorsichtig, da sie|r |T135914:0|t[Tollwut] wirken |cRXP_WARN_(Sofort Nahkampf: Verringert ALLE Gesundheitsregeneration um 50% für 10 Minuten)|r
    .complete 2138,1 --Rabid Thistle Bear (20)
    .mob Rabid Thistle Bear
step
    #label SeaTurtle1
    .goto Darkshore,44.20,20.60,80 >>Reist zur |cRXP_LOOT_Gestrandete Meeresschildkröte|r
    .isQuestAvailable 4725
step
    #completewith next
    +Behaltet die |T133884:0|t[Murlocaugen], die ihr von |cRXP_ENEMY_Krieger der Grauflossen|r und |cRXP_ENEMY_Netzer der Grauflossen|r plündert
step
    .goto Darkshore,44.20,20.60
    >>Plündert die|cRXP_LOOT_Gestrandete Meeresschildkröte|r vom Boden
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .accept 4725 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    #completewith River
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgeling
step
    #completewith River
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r und |cRXP_ENEMY_Mondpircher|r. Plündert sie für |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #completewith RedC
    >>Tötet |cRXP_ENEMY_Tollwütiger Distelbär|r
    >>|cRXP_WARN_Seid vorsichtig, da sie|r |T135914:0|t[Tollwut] wirken |cRXP_WARN_(Sofort Nahkampf: Verringert ALLE Gesundheitsregeneration um 50% für 10 Minuten)|r
    .complete 2138,1 --Rabid Thistle Bear (20)
    .mob Rabid Thistle Bear
step
    #label River
    .goto Darkshore,50.77,25.43
    >>Benutzt die |T134865:0|t[Leere Probenröhre] im Wasser
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350
step
    #completewith RedC
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider
step
    #completewith RedC
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r und |cRXP_ENEMY_Mondpircher|r. Plündert sie für |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #label RedC
    .goto Darkshore,47.11,48.63,400 >>Reist zu |cRXP_PICK_Der Rote Kristall|r
    .isOnQuest 4811
step
    #completewith Bash
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #completewith Bash
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r. Plündert sie für ihren |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
step
    .goto Darkshore,47.11,48.63
    >>Lauft hoch zu |cRXP_PICK_Der rote Kristall|r
    >>|cRXP_WARN_Denkt daran die|cRXP_ENEMY_Tobender Moonkin|r, werden zusammen gepullt|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range (1)
step
    #label Bash
    .goto Darkshore,42.37,61.82,175 >>Reist zur |cRXP_PICK_Uralte Flamme|r
    .isOnQuest 957
step
    #completewith next
    .goto Darkshore,42.45,60.66,0
    >>Tötet |cRXP_ENEMY_Anaya Dawnrunner|r. Plündert sie für |cRXP_LOOT_Anayas Anhänger|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    .goto Darkshore,42.37,61.82
    >>Klickt die |cRXP_PICK_Uralte Flamme|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto Darkshore,42.45,60.66,50,0
    .goto Darkshore,43.25,62.41,50,0
    .goto Darkshore,42.53,59.00,50,0
    .goto Darkshore,42.45,60.66,50,0
    .goto Darkshore,43.25,62.41,50,0
    .goto Darkshore,42.53,59.00,50,0
    .goto Darkshore,42.45,60.66,50,0
    .goto Darkshore,43.25,62.41
    >>Tötet |cRXP_ENEMY_Anaya Dawnrunner|r. Plündert sie für |cRXP_LOOT_Anayas Anhänger|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #completewith RBears
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #completewith RBears
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r und |cRXP_ENEMY_Mondpircher|r. Plündert sie für |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #completewith next
    +Behaltet die |T133884:0|t[Murlocaugen], die ihr von den |cRXP_ENEMY_Küstenläufer der Grauflossen|r und |cRXP_ENEMY_Seher der Grauflossen|r plündert
step
    #label BeachedST
    .goto Darkshore,37.10,62.17
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .accept 4722 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
#loop
	.line Darkshore,38.74,58.10,39.91,58.50,39.23,63.60,39.87,66.31,39.98,70.55,37.40,70.05,38.63,67.72,38.50,63.73,38.74,58.10
	.goto Darkshore,38.74,58.10,45,0
	.goto Darkshore,39.91,58.50,45,0
	.goto Darkshore,39.23,63.60,45,0
	.goto Darkshore,39.87,66.31,45,0
	.goto Darkshore,39.98,70.55,45,0
	.goto Darkshore,37.40,70.05,45,0
	.goto Darkshore,38.63,67.72,45,0
	.goto Darkshore,38.50,63.73,45,0
	.goto Darkshore,38.74,58.10,45,0
    >>Tötet |cRXP_ENEMY_Tollwütiger Distelbär|r
    >>|cRXP_WARN_Seid vorsichtig, da sie|r |T135914:0|t[Tollwut] wirken |cRXP_WARN_(Sofort Nahkampf: Verringert ALLE Gesundheitsregeneration um 50% für 10 Minuten)|r
    .complete 2138,1 --Rabid Thistle Bear (20)
    .mob Rabid Thistle Bear
step
    #label RBears
#loop
	.line Darkshore,39.26,56.72,40.21,56.23,39.96,55.22,39.90,54.38,40.24,53.47,39.21,53.01,39.90,54.38
	.goto Darkshore,39.26,56.72,50,0
	.goto Darkshore,40.21,56.23,50,0
	.goto Darkshore,39.96,55.22,50,0
	.goto Darkshore,39.90,54.38,50,0
	.goto Darkshore,40.24,53.47,50,0
	.goto Darkshore,39.21,53.01,50,0
	.goto Darkshore,39.90,54.38,50,0
    >>Tötet |cRXP_ENEMY_Pfadfinder der Schwarzfelle|r und |cRXP_ENEMY_Windsprecher der Schwarzfelle|r
    >>|cRXP_WARN_Seid vorsichtig denn |cRXP_ENEMY_Pfadfinder der Schwarzfelle|r wirken|r |T132152:0|t[Hauen] |cRXP_WARN_(Aufladungen 2 extra Attacken alle 10 Sek.), und |cRXP_ENEMY_Windsprecher der Schwarzfelle|r wirkt|r |T136022:0|t[Windstoß] |cRXP_WARN_(AoE Betäubung im Nahkampf)|r
    .complete 985,1 --Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 --Blackwood Windtalker (5)
    .mob +Blackwood Windtalker
step
    #completewith Auberdine
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r Plündert sie für ihren |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
step
#loop
	.line Darkshore,38.63,51.25,38.33,50.00,38.18,48.42,38.73,47.62,39.49,47.65,41.40,47.13,41.67,49.47,41.45,50.84,38.63,51.25
	.goto Darkshore,38.63,51.25,50,0
	.goto Darkshore,38.33,50.00,50,0
	.goto Darkshore,38.18,48.42,50,0
	.goto Darkshore,38.73,47.62,50,0
	.goto Darkshore,39.49,47.65,50,0
	.goto Darkshore,41.40,47.13,50,0
	.goto Darkshore,41.67,49.47,50,0
	.goto Darkshore,41.45,50.84,50,0
	.goto Darkshore,38.63,51.25,50,0
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #label Auberdine
    .goto Darkshore,36.62,45.59,150 >>Reist zu |cRXP_FRIENDLY_Gwennyth|r
    .isOnQuest 982
step
    .goto Darkshore,36.72,45.07,12,0
    .goto Darkshore,36.62,45.59
    >>Sprecht mit |cRXP_FRIENDLY_Gwennyth|r
    .turnin 4722 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .turnin 4723 >> Gebt die Quest Gestrandete Meereskreatur ab
    .turnin 4725 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .target Gwennyth Bly'Leggonde
--Fruit of the Sea at 18
step
    .goto Darkshore,36.77,44.28
    >>Sprecht mit |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Kauft bis zu 20|r |T133918:0|t[Roher Langzahniger Matschschnapper] |cRXP_BUY_von ihm|r
    .vendor >> Verkauft Müll
    .collect 4592,20,4763,1 --Longjaw Mud Snapper (40)
    .target Laird
    .isOnQuest 982
step
    .goto Darkshore,36.68,44.05,12,0
    .goto Darkshore,35.74,43.70
    >>Sprecht mit |cRXP_FRIENDLY_Cerellean|r
    .turnin 963 >>Gebt die Quest In ewiger Liebe ab
    .target Cerellean Whiteclaw
step
    #completewith CliffRi
    +Rüstet die |T134797:0|t[Träne des Kummers] aus
    .use 5611
    .itemcount 5611,1
    .itemStat 17,LEVEL,<16
step
    .goto Darkshore,36.77,44.28
    >>Sprecht mit |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Kauft 15|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihr|r
    .collect 1205,15,4763,1 --Melon Juice (15)
    .target Allyndia
    .money <0.1500
step
    .goto Darkshore,36.77,44.28
    >>Sprecht mit |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Kauft 10|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihr|r
    .collect 1205,10,4763,1 --Melon Juice (10)
    .target Allyndia
    .money <0.1000
step
    .goto Darkshore,36.77,44.28
    >>Sprecht mit |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Kauft 5|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihr|r
    .collect 1205,5,4763,1 --Melon Juice (5)
    .target Allyndia
    .money <0.0500
step
    #completewith next
    .goto Darkshore,37.45,43.10,20,0
    .goto Darkshore,37.47,42.40,20,0
    .goto Darkshore,37.44,41.84,15 >>Reist zu |cRXP_FRIENDLY_Hollee|r
step
    .goto Darkshore,37.44,41.84
    >>Sprecht mit |cRXP_FRIENDLY_Hollee|r
    .accept 729 >>Der geistesabwesende Ausgrabungsleiter annehmen
    .target Archaeologist Hollee
step
    .goto Darkshore,37.45,40.50
    >>Sprecht mit |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Kauft so viele|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_wie ihr braucht/könnt|r
    .target Dalmond
    .money <0.0500
    .money >0.2500
step
    .goto Darkshore,37.45,40.50
    >>Sprecht mit |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Kauft einen|r |T133634:0|t[Brauner Lederranzen] |cRXP_BUY_von ihm|r
    .target Dalmond
    .money <0.2500
step
    #label CliffRi
    .goto Darkshore,37.39,40.13
    >>Sprecht mit |cRXP_FRIENDLY_Thundris|r
    .turnin 4762 >> Gebt die Quest Der Cliffspring ab
    .accept 4763 >> Akzeptiert die Quest Die verderbten Schwarzfelle
    .target Thundris Windweaver
step
    .goto Darkshore,37.69,40.66
    >>Sprecht mit |cRXP_FRIENDLY_Alanndarian|r
    .accept 2178 >>Akzeptiert die Quest Schreitereintopf
    .turnin 2178 >>Gebt die Quest Schreitereintopf ab
    .target Alanndarian Nightsong
step
    #label DeepO
    .goto Darkshore,38.11,41.16
    >>Sprecht mit |cRXP_FRIENDLY_Gorbold|r
    .turnin 982,2 >> Gebt die Quest Tiefer Ozean, weites Meer ab
    .target Gorbold Steelhand
step
    #completewith next
    .goto Darkshore,37.64,42.46,15,0
    .goto Darkshore,37.61,43.21,15,0
    .goto Darkshore,37.68,43.38,20 >>Reist zu Glynda
step
    .goto Darkshore,37.68,43.38
    >>Sprecht mit |cRXP_FRIENDLY_Glynda|r
    .turnin 4811 >>Gebt die Quest Der rote Kristall ab
    .accept 4812 >>Akzeptiert die Quest Wenn das Wasser fließt
    .target Sentinel Glynda Nal'Shea
step
    .goto Darkshore,37.81,43.89
    >>Benutzt |T133748:0|t[Leere Säuberungsschale] und |T134865:0|t[Leere Wasserröhre] beim Mondbrunnen
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .collect 14339,1,4812,1 --Moonwell Water Tube (1)
    .use 12346
    .use 14338
step
    >>Sprecht mit |cRXP_FRIENDLY_Tharnariun|r, |cRXP_FRIENDLY_Terenthis|r, und dann mit |cRXP_FRIENDLY_Elissa|r oben
    .turnin 2138 >>Gebt die Quest Ausrottung der Infizierten ab
    .accept 2139 >>Akzeptiert die Quest Tharnariuns Hoffnung
    .target +Tharnariun Treetender
    .goto Darkshore,38.84,43.42
    .turnin 985 >> Gebt die Quest Wie groß ist die Bedrohung? ab
    .accept 986 >> Akzeptiert die Quest Ein verirrter Meister
    .target +Terenthis
    .goto Darkshore,39.37,43.49
    .accept 965 >>Der Turm von Althalaxx annehmen
    .goto Darkshore,39.27,43.13,8,0
    .goto Darkshore,39.04,43.55
    .target +Sentinel Elissa Starbreeze
step << Gnome
    #completewith next
    +Rüstet den |T132491:0|t[Weisengürtel] aus
    .use 4786
    .itemcount 4786,1
    .itemStat 6,LEVEL,<20
step
    .goto Darkshore,47.32,48.70
    >>Klickt |cRXP_PICK_Den Roten Kristall|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    >>|cRXP_WARN_Denkt daran die|cRXP_ENEMY_Tobender Moonkin|r, werden zusammen gepullt|r
    .turnin 4812 >> Gebt die Quest Wenn das Wasser fließt ab
    .accept 4813 >> Akzeptiert die Quest Die Fragmente im Inneren
step
    #completewith GrainSample
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r und |cRXP_ENEMY_Mondpircher|r. Plündert sie für |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    .goto Darkshore,44.18,36.29
    >>Sprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 957,3 >>Gebt die Quest Bashal'Aran ab
    .target Asterion
step
    #label GrainSample
    .goto Darkshore,50.66,34.98
    >>Öffnet |cRXP_PICK_Getreidelager der Schwarzfelle|r. Plündert es für die |cRXP_LOOT_Getreideprobe der Schwarzfelle|r
    >>|cRXP_WARN_Greife die Mobs an, die es beschützen. Wirkt den Zauber|r |T135848:0|t[Frostnova]|cRXP_WARN_, plündert die |cRXP_LOOT_Getreideprobe der Schwarzfelle|r, dann lauft vor den Mobs weg die spawnen in Richtung|cRXP_ENEMY_Höhlenmutter|r |r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .collect 12342,1,4673,1 --Blackwood Grain Sample (1)
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r. Plündert sie für ihren |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    #completewith DenM
    .goto Darkshore,52.33,35.94,20,0
    .goto Darkshore,52.39,36.85,20,0
    .goto Darkshore,51.58,37.52,30 >>Reist in RIchtung der |cRXP_ENEMY_Höhlenmutter|r
step
    .goto Darkshore,51.51,38.22
    >>Tötet die |cRXP_ENEMY_Höhlenmutter|r
    >>|cRXP_WARN_Seid vorsichtig, denn die |cRXP_ENEMY_Höhlenmutter|r und ihre |cRXP_ENEMY_Distelbärjunges|r wirken|r |T132141:0|t[Verheeren] |cRXP_WARN_(2 Sekunden stun)|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .itemcount 4358,<1
step
    #label DenM
    .goto Darkshore,51.51,38.22
    >>Tötet die |cRXP_ENEMY_Höhlenmutter|r
    >>|cRXP_WARN_Seid vorsichtig, denn die |cRXP_ENEMY_Höhlenmutter|r und ihre |cRXP_ENEMY_Distelbärjunges|r wirken|r |T132141:0|t[Verheeren] |cRXP_WARN_(2 Sekunden stun)|r
    >>|cRXP_WARN_Split Pull |cRXP_ENEMY_Höhlenmutter|r mit eurem|r |T133714:0|t[Raues Dynamit]
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .itemcount 4358,1
step
    #completewith Talisman
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r. Plündert sie für ihren |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    .goto Darkshore,51.80,33.51
    >>Öffnet |cRXP_PICK_Nusslager der Schwarzfelle|r. Plündert es für |cRXP_LOOT_Nussprobe der Schwarzfelle|r :3
    >>|cRXP_WARN_Greife die Mobs an, die es beschützen, und wirke den Zauber.|r |T135848:0|t[Frostnova]|cRXP_WARN_, plündert |cRXP_LOOT_Nussprobe der Schwarzfelle|r, dann lauft nach Norden|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .collect 12343,1,4673,1 --Blackwood Nut Sample (1)
step
    .goto Darkshore,52.85,33.42
    >>Öffnet |cRXP_PICK_Obstlager der Schwarzfelle|r. Plündert es für |cRXP_LOOT_Obstprobe der Schwarzfelle|r
    >>Tötet die |cRXP_ENEMY_Krieger der Schwarzfelle|r welche euch angreifen
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .collect 12341,1,4673,1 --Blackwood Fruit Sample (1)
step
    #completewith next
    .goto Darkshore,52.51,33.11
    .cast 16072 >>Benutzt die |T134712:0|t[Gefüllte Säuberungsschale] neben dem Lagerfeuer, um |cRXP_ENEMY_Xabraxxis|r zu beschwören
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .timer 20,Die verderbten Schwarzfelle RP
    .use 12347
step
    #label Talisman
    .goto Darkshore,52.24,33.08
    >>Warte auf das RP
    >>Tötet |cRXP_ENEMY_Xabraxxis|r
    >>Plündert die |cRXP_PICK_Xabraxxis Dämonentasche|r, die er auf den Boden fallen lässt. Plündert sie für den |cRXP_LOOT_Talisman der Verderbnis|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 4763,1 --Talisman of Corruption (1)
    .mob Xabraxxis
step
    .goto Darkshore,51.29,24.53
    >>Klickt |cRXP_PICK_Buzzbox 323|r
    .turnin 1002 >> Gebt die Quest Dröhnkiste 323 ab
    .accept 1003 >> Akzeptiert die Quest Dröhnkiste 525
    .isQuestComplete 1002
step
    .goto Darkshore,51.29,24.53
    >>Klickt |cRXP_PICK_Buzzbox 323|r
    .accept 1003 >> Akzeptiert die Quest Dröhnkiste 525
    .isQuestTurnedIn 1002
step
    #completewith next
    .goto Darkshore,53.74,31.52,60,0
    .goto Darkshore,54.52,29.55,60,0
    .goto Darkshore,53.13,28.25,60,0
    .goto Darkshore,52.54,25.47,60,0
    .goto Darkshore,55.21,22.89,60,0
    .goto Darkshore,54.65,21.03,60,0
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r. Plündert sie für ihren |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    .goto Darkshore,53.11,18.10
    >>Plündert die |cRXP_LOOT_Gestrandete Meeresschildkröte|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .accept 4727 >>Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    .goto Darkshore,53.74,31.52,60,0
    .goto Darkshore,54.52,29.55,60,0
    .goto Darkshore,53.13,28.25,60,0
    .goto Darkshore,52.54,25.47,60,0
    .goto Darkshore,55.21,22.89,60,0
    .goto Darkshore,54.65,21.03,60,0
    .goto Darkshore,53.74,31.52,60,0
    .goto Darkshore,54.52,29.55,60,0
    .goto Darkshore,53.13,28.25,60,0
    .goto Darkshore,52.54,25.47,60,0
    .goto Darkshore,55.21,22.89,60,0
    .goto Darkshore,54.65,21.03
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r. Plündert sie für ihren |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    .goto Darkshore,51.29,24.53
    >>Klickt |cRXP_PICK_Buzzbox 323|r
    .turnin 1002 >> Gebt die Quest Dröhnkiste 323 ab
    .accept 1003 >> Akzeptiert die Quest Dröhnkiste 525
step
    .goto Darkshore,54.97,24.89
    >>Sprecht mit |cRXP_FRIENDLY_Balthule|r
    .turnin 965 >>Gebt die Quest Der Turm von Althalaxx ab
    .accept 966 >>Der Turm von Althalaxx annehmen
    .target Balthule Shadowstrike
step
    .goto Darkshore,55.36,26.49,50,0
    .goto Darkshore,56.36,27.01,50,0
    .goto Darkshore,58.27,25.30,50,0
    .goto Darkshore,55.36,26.49,50,0
    .goto Darkshore,56.36,27.01
    >>Tötet |cRXP_ENEMY_Fanatikerin des dunklen Strangs|r. Plündert sie für |cRXP_LOOT_Abgenutztes Pergament|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
    .goto Darkshore,54.97,24.89
    >>Sprecht mit |cRXP_FRIENDLY_Balthule|r
    .turnin 966 >>Gebt die Quest Der Turm von Althalaxx ab
    .accept 967 >>Der Turm von Althalaxx annehmen
    .target Balthule Shadowstrike
step
    #label CapCave
    #completewith CapCave1
    .goto Darkshore,55.00,33.42,30 >>Geht in die Höhle
step << skip
    #requires CapCave
    #completewith CapCave1
    +|cRXP_WARN_Denkt bald an den Logout-Skip aus der Höhle|r
step
    #completewith next
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    >>Plündert die blauen |cRXP_LOOT_Schorfstängling|r auf dem Boden
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 947,1,4 --Scaber Stalk (5)
step
    .goto Darkshore,55.45,36.23,12,0
    .goto Darkshore,55.70,36.30,12,0
    .goto Darkshore,55.89,35.40,12,0
    >>Bleibt auf der oberen Ebene der Höhle. Geht runter, wenn es keine |cRXP_LOOT_Todeskappe|r auf der oberen Ebene gibt
    >>Plündert die orange |cRXP_LOOT_Todeskappe|r auf dem Boden am Ende des oberen Pfads der Höhle
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 947,2 --Death Cap (1)
step
    #label CapCave1
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58
    >>Plündert den ersten |cRXP_LOOT_Schorfstängling|r am Eingang der Höhle, nachdem ihr die |cRXP_LOOT_Todeskappe|r geplündert habt
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 947,1 --Scaber Stalk (5)
step << skip
    .goto Darkshore,54.96,34.52
    .goto Darkshore,41.70,36.51,30 >> |cRXP_WARN_Macht einen Logout-Skip in der Höhle |r
    .isOnQuest 4763
step
    #completewith next
    .subzone 442 >> Reist nach Auberdine
    .isOnQuest 4763
step
    .goto Darkshore,37.39,40.13
    >>Sprecht mit |cRXP_FRIENDLY_Thundris|r
    .turnin 4763,1 >> Gebt die Quest Die verderbten Schwarzfelle ab
    .target Thundris Windweaver
step
    .goto Darkshore,37.45,40.50
    >>Sprecht mit |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Kauft einen|r |T133634:0|t[Brauner Lederranzen] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Geht nicht unter 30 Silber|r
    .target Dalmond
step
    .goto Darkshore,38.84,43.42
    >>Sprecht mit |cRXP_FRIENDLY_Tharnariun|r
    .turnin 2139,1 >>Gebt die Quest Tharnariuns Hoffnung ab
    .target Tharnariun Treetender
step
    >>Sprecht mit |cRXP_FRIENDLY_Glynda|r, |cRXP_FRIENDLY_Barithras|r und dem |cRXP_PICK_Gesucht Poster|r
    .turnin 4813,2 >>Gebt die Quest Die Fragmente im Inneren ab
    .target +Sentinel Glynda Nal'Shea
    .goto Darkshore,37.68,43.38
    .turnin 947 >>Gebt die Quest Höhlenpilze ab
    .accept 948 >>Akzeptiert die Quest Onu
    .target +Barithras Moonshade
    .goto Darkshore,37.32,43.64
    .accept 4740 >> Akzeptiert die Quest GESUCHT: Gurgelbacke!
    .goto Darkshore,37.22,44.22
step
    .goto Darkshore,36.77,44.28
    >>Sprecht mit |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Kauft bis zu 40|r |T133918:0|t[Roher Langzahniger Matschschnapper] |cRXP_BUY_von ihm|r
    .collect 4592,40,729,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto Darkshore,36.62,45.59
    >>Sprecht mit |cRXP_FRIENDLY_Gwennyth|r
    .turnin 4727 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .target Gwennyth Bly'Leggonde
step
    .goto Darkshore,37.04,44.13
    >>|cRXP_WARN_===ACHTUNG===|r
    >>|cRXP_WARN_Sprecht mit|r |cRXP_FRIENDLY_Shaussiy|r
    >>|cRXP_WARN_Öffnet das Menü "Ruhestein setzen", dann wirkt|r |T134414:0|t[Ruhestein]
    .hs >> |cRXP_WARN_Ruhestein BATCH von Auberdine nach Sturmwind|r
    .target Innkeeper Shaussiy
    .zoneskip Stormwind City
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 16-18 Fortgeschrittener Westfall Magier AoE Guide
#version 2
#group RestedXP ADV AoE Allianz Magier
#defaultfor Human Mage/Gnome Mage
#next 18-20 Fortgeschrittener Dunkelküste 3 Magier AoE Guide

step
    #completewith JenneaT
    +|cRXP_WARN_HINWEIS: Ihr benötigt 12 Stapel von jedem Stoff (|r|T132911:0|t[Wollstoff]|cRXP_WARN_,|r |T132905:0|t[Seidenstoff]|cRXP_WARN_,|r |T132892:0|t[Magiestoff]|cRXP_WARN_,|r und |T132903:0|t[Runenstoff]|cRXP_WARN_), um die Stoffe später abzugeben. Ihr bekommt diese auf natürliche Weise, während ihr levelt.|r
step << skip
    #completewith next
    .goto Stormwind City,53.53,64.63,12,0
    .goto Stormwind City,52.10,61.42,12,0
    .goto Stormwind City,49.36,63.42,12,0
    .goto Stormwind City,51.16,68.35,12,0
    .goto Stormwind City,52.05,67.96,10 >>Reist zu |cRXP_FRIENDLY_Roberto|r
step << skip
    .goto Stormwind City,52.05,67.96
    >>Geht ins Gebäude
    >>Sprecht mit |cRXP_FRIENDLY_Roberto|r
    >>|cRXP_BUY_Kauft|r |T132620:0|t[Fässlein mit Merlot] |cRXP_BUY_von ihm|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #sticky
    #label Bank2
    >>Sprich mit |cRXP_FRIENDLY_Newton|r
    .bankdeposit 17056,5354,2592,6889 >> Packe folgende Items in die Bank:
    >>|T132917:0|t[Leichte Feder]
    >>|T133469:0|t[Brief an Delgren]
    >>|T132911:0|t[Wollstoff]
    >>|T132832:0|t[Kleines Ei]
    .target Newton Burnside
step
    .goto Stormwind City,57.03,72.97
    >>Sprich mit |cRXP_FRIENDLY_Newton|r
    .bankwithdraw 730,7207 >> Hol folgende Items aus deiner Bank: << Gnome
    .bankwithdraw 730,16115 >> Hol folgende Items aus deiner Bank: << Human
    >>|T133884:0|t[Murlocauge]
    >>|T132788:0|t[Jenneas Fläschchen] << Gnome
    >>|T132763:0|t[Osrics Kiste] << Human
    .target Newton Burnside
step
    #requires Bank2
    #completewith next
    .goto Stormwind City,51.68,59.86,8,0
    .goto Stormwind City,51.83,60.41,4,0
    .goto Stormwind City,51.59,60.15,6,0
    .goto Stormwind City,39.17,76.58,12,0
    >>|cRXP_WARN_Springt hoch auf die Fackel, dann fallt nach unten, um unter Sturmwind zu kommen|r
    >>|cRXP_WARN_Mit Schatten auf "Mittel" oder "Niedrig", geht zwischen die Füße von Derek the Dinosaur (auf dem helleren Teil des Bodens) gerade vor dem blauen nichts und lauft dann geradeaus nach vorne|r
    >>|cRXP_WARN_HINWEIS: Es besteht eine kleine Chance, mit dieser Methode zu sterben. Ihr könnt auch normal zum Magierturm laufen, wenn ihr wollt|r
    .link https://youtu.be/gV8-wgQEomc >> KLICKT HIER für einen Leitfaden
    .goto Stormwind City,38.61,79.39,10 >>Reist zu|cRXP_FRIENDLY_Jennea|r
step
    #requires Bank2
    #label JenneaT
    .goto Stormwind City,38.61,79.39
    >>Sprich mit |cRXP_FRIENDLY_Jennea|r
    .trainer >> Erlerne deine Klassenfähigkeit (Flammenstoß)
    >>Gesamtpreis Kosten: 15s
    .target Jennea Cannon
step
    .goto Stormwind City,55.46,65.26
    >>Sprecht mit |cRXP_FRIENDLY_Keldric|r durch die Mauer
    .vendor 1257 >> |cRXP_BUY_Kauft|r |T134830:0|t[Geringer Heiltrank] |cRXP_BUY_von ihm, falls sie verfügbar sind|r
    .target Keldric Boucher
    .money <0.14
step
    #completewith next
    .goto Stormwind City,56.69,57.76,12,0
    .goto Stormwind City,57.13,57.69,10 >>Reist in Richtung |cRXP_FRIENDLY_Woo Ping|r
step
    .goto Stormwind City,57.13,57.69
    >>Sprecht mit |cRXP_FRIENDLY_Woo Ping|r
    .train 1180 >> Erlernt |T132321:0|t[Dolche]
    .target Woo Ping
step
    #completewith next
    .goto Stormwind City,57.17,58.83,12,0
    .goto Stormwind City,63.42,63.75,20,0
    .goto Stormwind City,63.14,65.25,15,0
    .goto Stormwind City,66.27,62.12,10 >>Lauf in Richtung |cRXP_FRIENDLY_Dungar|r
step << Human
    .goto Stormwind City,66.27,62.12
    >>Sprich mit |cRXP_FRIENDLY_Dungar|r
    .turnin 6261 >> Gebt die Quest Dungar Longdrink ab
    .accept 6285 >> Akzeptiert die Quest Zurück zu Lewis
    .target Dungar Longdrink
step
    #completewith next << Human
    .goto Stormwind City,66.27,62.12
    >>Sprich mit |cRXP_FRIENDLY_Dungar|r
    .fp Stormwind City >> Holt euch den Flugpunkt in Sturmwind << Gnome
    .fly Westfall >> Fliegt nach Westfall << Human
    .target Dungar Longdrink
    .zoneskip Westfall << Human
step << Gnome
    #completewith next
    #label Stormwind1
    .goto Stormwind City,65.94,65.48,12,0
    .goto Stormwind City,65.85,66.00,8,0
    .goto Stormwind City,65.22,75.58,40 >>Fallt hinunter zum Felsvorsprung unter |cRXP_FRIENDLY_Dungar|r
step << Gnome
    #completewith next
    .goto Elwynn Forest,32.10,50.32,40 >>Verlasst Sturmwind
step << skip
    #completewith next
    #requires Stormwind1
    .goto Elwynn Forest,42.96,65.62,30 >>Reist zum Goldhain-Gasthaus
step << skip
    #label GoldshireTrain
    .goto Elwynn Forest,43.25,66.25
    >>Springt auf den Kronleuchter unten, falls ihr nicht trainiert habt, ansonsten springt vom Stuhl hinauf
    >>Sprecht mit |cRXP_FRIENDLY_Zaldimar|r durch die Wand
    .accept 1919 >> Akzeptiert die Quest Meldung bei Jennea
    .trainer >> Erlerne deine Klassenfähigkeit (Flammenstoß)
    >>Gesamtpreis Kosten: 15s
step << skip
    .goto Elwynn Forest,44.00,65.69
    >>Sprecht mit |cRXP_FRIENDLY_Dobbins|r
    >>|cRXP_BUY_Kauft einen|r |T132794:0|t[Schlauch mit süßem Rum] |cRXP_BUY_von ihm|r
    .collect 1939,1,116,1 --Skin of Sweet Rum
    .target Barkeep Dobbins
step << skip
    .goto Elwynn Forest,43.77,65.80
    >>Sprecht mit |cRXP_FRIENDLY_Farley|r
    >>|cRXP_BUY_Kauft 45|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihm|r
    .collect 1205,45,64,1 --Melon Juice (45)
    .target Innkeeper Farley
    .money <0.45
step << Gnome
    .goto Elwynn Forest,28.98,61.50
    >>Benutzt |T132788:0|t[Jenneas Fläschchen] beim Wasserfall
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .use 7207
    .complete 1861,1 --Mirror Lake Water Sample (1)
step
    >>Sprecht mit |cRXP_FRIENDLY_Bauer Furlbrow|r und |cRXP_FRIENDLY_Verna|r
    .accept 64 >> Akzeptiert die Quest Das vergessene Erbstück
    .accept 109 >> Akzeptiert die Quest Meldung bei Gryan Stoutmantle
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .accept 36 >> Akzeptiert die Quest Westfall-Eintopf
    .accept 151 >> Akzeptiert die Quest Die arme Graumähne
    .goto Westfall,59.91,19.41
    .target +Verna Furlbrow
step << Gnome
    #completewith Gryan
    >>Öffnet die |cRXP_PICK_Sack Hafer|r auf dem Boden. Plündert sie für die |cRXP_LOOT_Handvoll Hafer|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 151,1 --Handful of Oats (8)
step
    >>Sprecht mit |cRXP_FRIENDLY_Bauer Saldean|r und dann mit |cRXP_FRIENDLY_Salma|r innerhalb
    .accept 9 >> Akzeptiert die Quest Tod auf den Feldern
    .target +Farmer Saldean
    .goto Westfall,56.04,31.23
    .turnin 36 >> Gebt die Quest Westfalleintopf ab
    .accept 38 >> Akzeptiert die Quest Westfall-Eintopf
    .accept 22 >> Akzeptiert die Quest Pastete aus Geiferzahnleber
    .goto Westfall,56.42,30.52
    .target +Salma Saldean
step << Gnome
    #completewith Gryan
    .goto Westfall,53.54,31.72,60,0
    >>Wirkungsbereich |cRXP_ENEMY_Erntebehüter|r und |cRXP_ENEMY_Erntegolem|r. Plündert sie für |cRXP_LOOT_Fläschchen Öl|r und |cRXP_LOOT_Hopfen|r
    >>|cRXP_WARN_Erinnert euch|r |T135826:0|t[Flammenstoß]|cRXP_WARN_/|r|T136116:0|t[Arkane Explosion] |cRXP_WARN_jetzt für AoE|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5,103,1 --Flask of Oil (5)
    .collect 1274,5,117,1 --Hops (5)
    .mob Harvest Watcher
    .mob Harvest Golem
step << Gnome
    #completewith next
    >>Wirkungsbereich |cRXP_ENEMY_Junger Geiferzahn|r. Plündert sie für |cRXP_LOOT_Geiferzahnleber|r und |cRXP_LOOT_Geiferzahnschnauze|r
    >>AoE |cRXP_ENEMY_Junger Fleischreißer|r. Plündert sie für |cRXP_LOOT_Sehniges Geierfleisch|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
step
    #label Gryan << Gnome
	>> Sprecht mit |cRXP_FRIENDLY_Gryan|r und |cRXP_FRIENDLY_Danuvin|r << Gnome
	>> Sprecht mit |cRXP_FRIENDLY_Gryan|r und dann mit|cRXP_FRIENDLY_Lewis|r innerhalb << Human
    .turnin 109 >> Gebt die Quest Meldung bei Gryan Stoutmantle ab << Gnome
    .accept 65 >> Die Bruderschaft der Defias annehmen
    .accept 12 >> Akzeptiert die Quest Die Volksmiliz << Gnome
    .target +Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 6285 >> Gebt die Quest Zurück zu Lewis ab << Human
    .goto Westfall,57.002,47.169 << Human
    .accept 102 >> Akzeptiert die Quest Auf Patrouille durch Westfall << Gnome
    .goto Westfall,56.42,47.62 << Gnome
	.target +Captain Danuvin << Gnome
    .target +Quartermaster Lewis << Human
step
    .goto Westfall,53.98,52.99
	>>Sprecht mit |cRXP_FRIENDLY_Galiaan|r
    .accept 153 >> Akzeptiert die Quest Rote Lederkopftücher
	.target Scout Galiaan
step
    .goto Westfall,52.86,53.72
	>>Sprecht mit |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Kauft 45|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihr|r
    .collect 1205,45,64,1 --Melon Juice (45)
	.target Innkeeper Heather
    .money <0.45
step
    .goto Westfall,52.86,53.72
	>>Sprecht mit |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Kauft 40|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihr|r
    .collect 1205,40,64,1 --Melon Juice (40)
	.target Innkeeper Heather
    .money <0.40
step
    .goto Westfall,52.86,53.72
	>>Sprecht mit |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Kauft 35|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihr|r
    .collect 1205,35,64,1 --Melon Juice (35)
	.target Innkeeper Heather
    .money <0.35
step
    .goto Westfall,52.86,53.72
	>>Sprecht mit |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Kauft 30|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihr|r
    .collect 1205,30,64,1 --Melon Juice (30)
	.target Innkeeper Heather
    .money <0.30
step
    .goto Westfall,52.86,53.72
	>>Sprecht mit |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Kauft 25|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihr|r
    .collect 1205,25,64,1 --Melon Juice (25)
	.target Innkeeper Heather
    .money <0.25
step
    .goto Westfall,52.86,53.72
	>>Sprecht mit |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Kauft 20|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihr|r
    .collect 1205,20,64,1 --Melon Juice (20)
	.target Innkeeper Heather
    .money <0.20
step
    .goto Westfall,52.86,53.72
	>>Sprecht mit |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Kauft 15|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihr|r
    .collect 1205,15,64,1 --Melon Juice (15)
	.target Innkeeper Heather
    .money <0.15
step
    .goto Westfall,52.86,53.72
	>>Sprecht mit |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Kauft 10|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihr|r
    .collect 1205,10,64,1 --Melon Juice (10)
	.target Innkeeper Heather
    .money <0.10
step
    .goto Westfall,52.86,53.72
	>>Sprecht mit |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Kauft 5|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihr|r
    .collect 1205,5,64,1 --Melon Juice (5)
	.target Innkeeper Heather
    .money <0.05
step
    #completewith Grayson
    >>Öffnet die |cRXP_PICK_Sack Hafer|r auf dem Boden. Plündert sie für die |cRXP_LOOT_Handvoll Hafer|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith Oil
    >>AoE |cRXP_ENEMY_Geiferzahn|r. Plündert sie für |cRXP_LOOT_Geiferzahnleber|r und |cRXP_LOOT_Geiferzahnschnauze|r
    >>AoE |cRXP_ENEMY_Fleischreißer|r. Plündert sie für ihr |cRXP_LOOT_Sehniges Geierfleisch|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Goretusk
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Goretusk
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Fleshripper
step
    #completewith Compass
    .goto Westfall,39.45,52.34,60,0
    >>AoE |cRXP_ENEMY_Erntebehüter|r. Plündert sie für ihr |cRXP_LOOT_Fläschchen Öl|r und |cRXP_LOOT_Hopfen|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5,103,1 --Flask of Oil (5)
    .collect 1274,5,117,1 --Hops (5)
    .mob Harvest Watcher
step
    #completewith Oil
    >>AoE |cRXP_ENEMY_Defias|r. Plündert sie für |cRXP_LOOT_Rote Lederkopftücher|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Smuggler
    .mob Defias Trapper
    .mob Defias Looter
    .mob Defias Pillager
step
    #label Compass
    .goto Westfall,36.24,54.52
    >>Öffne |cRXP_PICK_Alexstons Truhe|r. Plündert sie für |cRXP_LOOT_Ein einfacher Kompass|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 399,1 --A Simple Compass (1)
step
    #label Oil
    .goto Westfall,37.39,50.52,60,0
    .goto Westfall,35.56,46.87,60,0
    .goto Westfall,33.64,47.01,60,0
    .goto Westfall,32.96,36.48,60,0
    .goto Westfall,39.45,52.34,60,0
    .goto Westfall,37.39,50.52,60,0
    .goto Westfall,35.56,46.87,60,0
    .goto Westfall,33.64,47.01,60,0
    .goto Westfall,32.96,36.48,60,0
    .goto Westfall,39.45,52.34
    >>Wirkungsbereich |cRXP_ENEMY_Erntebehüter|r und |cRXP_ENEMY_Erntegolem|r. Plündert sie für |cRXP_LOOT_Fläschchen Öl|r und |cRXP_LOOT_Hopfen|r
    .collect 814,5,103,1 --Flask of Oil (5)
    .collect 1274,5,117,1 --Hops (5)
    .mob Harvest Watcher
    .mob Harvest Golem
step
    #completewith next
    +|cRXP_WARN_Achtet auf |cRXP_ENEMY_Old Murk-Eye|r. Versucht, am Rand der Kante zu bleiben, um ihn nicht zu verpassen|r
    .unitscan Old Murk-Eye
step
    .goto Westfall,30.40,57.93,60,0
    .goto Westfall,29.29,65.46,60,0
    .goto Westfall,32.62,68.40,60,0
    .goto Westfall,31.07,69.42,60,0
    .goto Westfall,31.40,72.29,30 >> AoE die Gnoll-Lager
    >>AoE |cRXP_ENEMY_Kräuterkundiger der Flusspfoten|r, |cRXP_ENEMY_Bastard der Flusspfoten|r, und |cRXP_ENEMY_Schläger der Flusspfoten|r. Plündert sie für |cRXP_LOOT_Gnolltatze|r
    >>Falls ihr |cRXP_ENEMY_Old Murk-Eye|r findet, überspringt diesen Schritt
    .complete 102,1 --Gnoll Paws (8)
    .mob Riverpaw Herbalist
    .mob Riverpaw Mongrel
    .mob Riverpaw Brute
step
    #completewith next
    +|cRXP_WARN_Findet |cRXP_ENEMY_Old Murk-Eye|r. Zieht ihn zu|r |cRXP_FRIENDLY_Grayson|r
    .unitscan Old Murk-Eye
step
    #label Grayson
    .goto Westfall,30.02,86.02
    >>Sprecht mit |cRXP_FRIENDLY_Grayson|r
    .accept 104 >> Akzeptiert die Quest Bedrohung an der Küste
    .target Captain Grayson
step
    .goto Westfall,33.92,83.88,70,0
    .goto Westfall,34.88,85.82,70,0
    .goto Westfall,35.38,84.63,70,0
    .goto Westfall,33.92,83.88,70,0
    .goto Westfall,31.89,82.28,70,0
    .goto Westfall,30.33,80.75,70,0
    .goto Westfall,29.50,78.70,70,0
    .goto Westfall,29.06,75.45,70,0
    .goto Westfall,28.78,72.58,70,0
    .goto Westfall,27.84,71.33,70,0
    .goto Westfall,27.27,69.96,70,0
    .goto Westfall,26.86,66.82,70,0
    .goto Westfall,26.27,65.76,70,0
    .goto Westfall,33.92,83.88,70,0
    .goto Westfall,34.88,85.82,70,0
    .goto Westfall,35.38,84.63,70,0
    .goto Westfall,33.92,83.88,70,0
    .goto Westfall,31.89,82.28,70,0
    .goto Westfall,30.33,80.75,70,0
    .goto Westfall,29.50,78.70,70,0
    .goto Westfall,29.06,75.45,70,0
    .goto Westfall,28.78,72.58,70,0
    .goto Westfall,27.84,71.33,70,0
    .goto Westfall,27.27,69.96,70,0
    .goto Westfall,26.86,66.82,70,0
    .goto Westfall,26.27,65.76
    >>Tötet |cRXP_ENEMY_Old Murk-Eye|r. Plündert ihn für seine |cRXP_LOOT_Schuppe von Old Murk-Eye|r
    .complete 104,1 --Scale of Old Murk-Eye
    .unitscan Old Murk-Eye
step
    .goto Westfall,30.02,86.02
    >>Sprecht mit |cRXP_FRIENDLY_Grayson|r
    .accept 103 >> Akzeptiert die Quest Bewahrer der Flamme
    .turnin 103,1 >> Gebt die Quest Bewahrer der Flamme ab
    .turnin 104,3 >> Gebt die Quest Bedrohung an der Küste ab
    .target Captain Grayson
step
    #completewith next
    >>AoE |cRXP_ENEMY_Knöchelhauer der Defias|r und |cRXP_ENEMY_Straßenräuber der Defias|r. Plündert sie für |cRXP_LOOT_Rotes Lederkopftuch|r
    >>|cRXP_WARN_Passt auf, da die |cRXP_ENEMY_Straßenräuber der Defias|r|r |T132090:0|t[Meucheln] wirken |cRXP_WARN_(verursacht doppelten Schaden von hinten)|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Knuckleduster
    .mob Defias Highwaymen
step
    .goto Westfall,44.62,80.26
    >>Sprecht mit |cRXP_FRIENDLY_Grimbooze|r
    .accept 117 >> Akzeptiert die Quest Donnerbräu
    .turnin 117 >> Gebt die Quest Donnerbräu ab
    .target Grimbooze Thunderbrew
step
    #completewith next
    .goto Westfall,48.77,77.70,60,0
    .goto Westfall,51.73,74.67,60,0
    .goto Westfall,52.56,72.87,60,0
    >>AoE |cRXP_ENEMY_Knöchelhauer der Defias|r und |cRXP_ENEMY_Straßenräuber der Defias|r. Plündert sie für |cRXP_LOOT_Rotes Lederkopftuch|r
    >>|cRXP_WARN_Passt auf, da die |cRXP_ENEMY_Straßenräuber der Defias|r|r |T132090:0|t[Meucheln] wirken |cRXP_WARN_(verursacht doppelten Schaden von hinten)|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Knuckleduster
    .mob Defias Highwaymen
step
    .goto Westfall,52.08,71.94,60 >> Reist zum Ende der Dolchhügel
    .isOnQuest 153
step
    #completewith Footpads
    >>Öffnet die |cRXP_PICK_Sack Hafer|r auf dem Boden. Plündert sie für die |cRXP_LOOT_Handvoll Hafer|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith AoE1
    >>AoE |cRXP_ENEMY_Geiferzahn|r. Plündert sie für |cRXP_LOOT_Geiferzahnleber|r und |cRXP_LOOT_Geiferzahnschnauze|r
    >>AoE |cRXP_ENEMY_Fleischreißer|r. Plündert sie für ihr |cRXP_LOOT_Sehniges Geierfleisch|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Great Goretusk
    .mob +Goretusk
    .mob +Young Goretusk
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Great Goretusk
    .mob +Goretusk
    .mob +Young Goretusk
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Fleshripper
step
    #completewith next
    >>AoE |cRXP_ENEMY_Fallensteller der Defias|r und |cRXP_ENEMY_Schmuggler der Defias|r. Plündert sie für |cRXP_LOOT_Rotes Lederkopftuch|r
    >>|cRXP_WARN_Seid vorsichtig, da die |cRXP_ENEMY_Fallensteller der Defias|r|r |T132090:0|t[Meucheln] wirken |cRXP_WARN_(verursacht doppelten Schaden von hinten) und|r |T132149:0|t[Netz] |cRXP_WARN_(Erstarrt für 9 Sek.)|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Trapper
    .mob Defias Smuggler
step
    #label AoE1
    .goto Westfall,46.65,52.99,60,0
    .goto Westfall,48.22,45.21,60,0
    .goto Westfall,45.77,39.19,60,0
    .goto Westfall,46.49,37.30,60,0
    .goto Westfall,44.54,34.71,150 >> Reist zu Molsens Hof
    .isOnQuest 153
step
    #completewith Watch
    .goto Westfall,44.54,34.71,60,0
    >>AoE |cRXP_ENEMY_Erntebehüter|r
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    #completewith Furlbrows
    >>Wirkungsbereich |cRXP_ENEMY_Junger Geiferzahn|r. Plündert sie für |cRXP_LOOT_Geiferzahnleber|r und |cRXP_LOOT_Geiferzahnschnauze|r
    >>AoE |cRXP_ENEMY_Fleischreißer|r und |cRXP_ENEMY_Junger Fleischreißer|r. Plündert sie für |cRXP_LOOT_Sehniges Geierfleisch|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Fleshripper
    .mob +Young Fleshripper
step
    .goto Westfall,44.14,26.66,60,0
    .goto Westfall,46.13,26.52,60,0
    .goto Westfall,48.74,20.79
    >>AoE |cRXP_ENEMY_Fallensteller der Defias|r und |cRXP_ENEMY_Schmuggler der Defias|r. Plündert sie für |cRXP_LOOT_Rotes Lederkopftuch|r
    >>|cRXP_WARN_Seid vorsichtig, da die |cRXP_ENEMY_Fallensteller der Defias|r|r|T132090:0|t[Meucheln] |cRXP_WARN_und|r |T132149:0|t[Netz] wirken
    >>|cRXP_WARN_Überspringt diesen Schritt, falls ihr nicht mindestens 10/15 bei beiden |cRXP_ENEMY_Fallensteller der Defias|r und|r |cRXP_ENEMY_Schmuggler der Defias|r habt
    .complete 153,1,1 --Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
    .complete 12,1 --Defias Trapper (15)
    .mob +Defias Trapper
    .complete 12,2 --Defias Smuggler (15)
    .mob +Defias Smuggler
step
    #completewith next
    .goto Westfall,48.74,20.79,60,0
    >>AoE |cRXP_ENEMY_Fallensteller der Defias|r und |cRXP_ENEMY_Schmuggler der Defias|r. Plündert sie für |cRXP_LOOT_Rotes Lederkopftuch|r
    >>|cRXP_WARN_Seid vorsichtig, da die |cRXP_ENEMY_Fallensteller der Defias|r|r|T132090:0|t[Meucheln] |cRXP_WARN_und|r |T132149:0|t[Netz] wirken
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Trapper
    .mob Defias Smuggler
step
    #label Watch
    .goto Westfall,49.33,19.26
    >>Öffnet |cRXP_PICK_Furlbrows Kleiderschrank|r. Plündert sie für |cRXP_LOOT_Furlbrows Taschenuhr|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 64,1 --Furlbrow's Pocket Watch (1)
step
    #completewith Oats
    .goto Westfall,50.50,21.38,60,0
    .goto Westfall,51.70,23.16,60,0
    >>AoE |cRXP_ENEMY_Erntebehüter|r
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    .goto Westfall,52.02,15.00,60,0
    .goto Westfall,56.93,12.75
    >>AoE |cRXP_ENEMY_Späher der Flusspfoten|r und |cRXP_ENEMY_Gnoll der Flusspfoten|r. Plündert sie für |cRXP_LOOT_Gnolltatze|r
    .complete 102,1 --Gnoll Paws (8)
    .mob Riverpaw Scout
    .mob Riverpaw Gnoll
step
    .goto Westfall,52.36,9.59,60,0
    .goto Westfall,53.80,10.69,60,0
    .goto Westfall,55.96,8.22
    >>AoE |cRXP_ENEMY_Murlocküstenläufer|r und |cRXP_ENEMY_Murlocräuber|r. Plündert sie für |cRXP_LOOT_Murlocaugen|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .mob Murloc Coastrunner
    .mob Murloc Raider
step
    #label Footpads
    .goto Westfall,56.56,19.25
    >>AoE |cRXP_ENEMY_Schleicher der Defias|r Plündert sie für |cRXP_LOOT_Rotes Lederkopftuch|r
    >>|cRXP_WARN_Seid vorsichtig denn |cRXP_ENEMY_Schleicher der Defias|r wirken|r |T132090:0|t[Meucheln]
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Footpad
step
    #label Oats
    .goto Westfall,56.56,19.25
    >>Öffnet die |cRXP_PICK_Sack Hafer|r auf dem Boden. Plündert sie für die |cRXP_LOOT_Handvoll Hafer|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 151,1 --Handful of Oats (8)
step
    #label Furlbrows
    >>Sprecht mit |cRXP_FRIENDLY_Bauer Furlbrow|r und |cRXP_FRIENDLY_Verna|r
    .turnin 64 >> Gebt die Quest Das vergessene Erbstück ab
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 151 >> Gebt die Quest Die arme Graumähne ab
    .goto Westfall,59.91,19.41
    .target +Verna Furlbrow
step
    .goto Westfall,59.72,34.62,80,0
    .goto Westfall,60.24,47.40
    >>AoE |cRXP_ENEMY_Geiferzahn|r und |cRXP_ENEMY_Junger Geiferzahn|r. Plündert sie für |cRXP_LOOT_Geiferzahnleber|r und |cRXP_LOOT_Geiferzahnschnauze|r
    >>AoE |cRXP_ENEMY_Fleischreißer|r und |cRXP_ENEMY_Junger Fleischreißer|r. Plündert sie für |cRXP_LOOT_Sehniges Geierfleisch|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Goretusk
    .mob +Young Goretusk
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Goretusk
    .mob +Young Goretusk
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Fleshripper
    .mob +Young Fleshripper
step
    .goto Westfall,52.84,30.46,60,0
    .goto Westfall,51.70,23.16
    >>AoE |cRXP_ENEMY_Erntebehüter|r
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    .goto Westfall,51.70,23.16
    .xp 17+11890 >> Farmt bis 11890+/17700 XP
    .isQuestComplete 12
step
    .goto Westfall,51.70,23.16
    >>|cRXP_WARN_Überspringt diesen Schritt, falls ihr das Ziel von Die Volksmiliz abgeschlossen habt|r
    .xp 17+12800 >> Farmt bis 12800+/17700 XP
step
    >>Sprecht mit |cRXP_FRIENDLY_Bauer Saldean|r und dann mit |cRXP_FRIENDLY_Salma|r innerhalb
    .turnin 9,1 >> Gebt die Quest Tod auf den Feldern ab
    .vendor >> Verkauft Müll
    .target +Farmer Saldean
    .goto Westfall,56.04,31.23
    .turnin 22 >> Gebt die Quest Pastete aus Geiferzahnleber ab
    .turnin 38 >> Gebt die Quest Westfalleintopf ab
    .goto Westfall,56.42,30.52
    .target +Salma Saldean
step
	>> Sprecht mit |cRXP_FRIENDLY_Gryan|r und |cRXP_FRIENDLY_Danuvin|r
    .turnin 12 >> Gebt die Quest Die Volksmiliz ab
    .target +Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 102,1 >> Gebt die Quest Auf Patrouille durch Westfall ab
    .goto Westfall,56.42,47.62
	.target +Captain Danuvin
    .isQuestComplete 12
step
    .goto Westfall,56.42,47.62
	>> Sprecht mit |cRXP_FRIENDLY_Danuvin|r
    .turnin 102,1 >> Gebt die Quest Auf Patrouille durch Westfall ab
	.target Captain Danuvin
step
    .goto Westfall,53.98,52.99
	>>Sprecht mit |cRXP_FRIENDLY_Galiaan|r
    .turnin 153,2 >> Gebt die Quest Rote Lederkopftücher ab
	.target Scout Galiaan
step
    #completewith next
    +|cRXP_WARN_Wirkt schnell|r |T132794:0|t[Wasser herbeizaubern Rang 2] |cRXP_WARN_, um so viel Wasser wie möglich vor dem Flug herzustellen|r
step
    #completewith next
    .goto Westfall,56.56,52.64
	>>Sprecht mit |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fliege nach Sturmwind
	.target Thor
step
    #completewith next
    .goto Stormwind City,51.68,59.86,8,0
    .goto Stormwind City,51.83,60.41,4,0
    .goto Stormwind City,51.59,60.15,6,0
    .goto Stormwind City,39.17,76.58,12,0
    >>|cRXP_WARN_Springt hoch auf die Fackel, dann fallt nach unten, um unter Sturmwind zu kommen|r
    >>|cRXP_WARN_Mit Schatten auf "Mittel" oder "Niedrig", geht zwischen die Füße von Derek the Dinosaur (auf dem helleren Teil des Bodens) gerade vor dem blauen nichts und lauft dann geradeaus nach vorne|r
    >>|cRXP_WARN_HINWEIS: Es besteht eine kleine Chance, mit dieser Methode zu sterben. Ihr könnt auch normal zum Magierturm laufen, wenn ihr wollt|r
    .link https://youtu.be/gV8-wgQEomc >> KLICKT HIER für einen Leitfaden
    .goto Stormwind City,38.61,79.39,10 >>Reist zu|cRXP_FRIENDLY_Jennea|r
step
    .goto Stormwind City,38.61,79.39
    >>Sprich mit |cRXP_FRIENDLY_Jennea|r
    .turnin 1861,1 >> Gebt die Quest Spiegelsee ab
--   .turnin 1919 >> Turn in Report to Jennea
    .trainer >> Trainiere deine Klassenfähigkeiten (Feuerball Rang 4)
    >>Gesamtpreis Kosten: 18s
    .target Jennea Cannon
step
    #completewith next
    .goto Stormwind City,36.73,82.44,10,0
    .goto Stormwind City,37.91,81.92,10,0
    .goto Stormwind City,38.10,80.93,8,0
    .goto Stormwind City,37.49,81.35,6,0
    .goto Stormwind City,38.46,80.61,8,0
    .goto Stormwind City,33.65,81.58,15,0
    .goto Stormwind City,31.12,79.42,15,0
    .goto Stormwind City,32.07,81.50,10,0
    .goto Stormwind City,32.63,80.62,8,0
    >>Verlasst den Magierturm
    .goto Stormwind City,32.16,79.84,10 >>Reist zu |cRXP_FRIENDLY_Charys|r
step
    .goto Stormwind City,32.16,79.84
    >>Betretet das Gebäude
    >>Sprich mit |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >> |cRXP_BUY_Kauft|r |T134851:0|t[Geringer Manatrank] |cRXP_BUY_und|r |T134831:0|t[Heiltrank] |cRXP_BUY_von ihr (falls vorhanden)|r
    .target Charys Yserian
step
    #completewith next
    .goto Stormwind City,31.41,79.10,20,0
    .goto Stormwind City,32.67,71.36,20,0
    .goto Stormwind City,34.53,68.40,20,0
    .goto Stormwind City,32.16,59.96,20,0
    .goto Stormwind City,32.31,58.51,20,0
    .goto Stormwind City,30.53,55.10,20,0
    .goto Stormwind City,26.04,52.25,20,0
    .goto Stormwind City,24.67,52.60,20,0
    .goto Stormwind City,21.41,55.80,10 >>Reist zu |cRXP_FRIENDLY_Argos|r
step
    .goto Stormwind City,21.41,55.80
    >>Sprecht mit |cRXP_FRIENDLY_Argos|r
    .accept 3765 >> Akzeptiert die Quest Verderbnis in der Fremde
    .target Argos Nightwhisper
step
    .goto Stormwind City,41.57,65.46
    >>Betretet das Gebäude
    >>Sprich mit |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >> |cRXP_BUY_Kauft alle bis auf Intelligenz|r |T134943:0|t[Schriftrollen] |cRXP_BUY_von ihm (falls vorhanden)|r
    .target Adair Gilroy
step
    #completewith next
    .goto Stormwind City,53.53,64.63,12,0
    .goto Stormwind City,52.10,61.42,12,0
    .goto Stormwind City,49.36,63.42,12,0
    .goto Stormwind City,51.16,68.35,12,0
    .goto Stormwind City,52.05,67.96,10 >>Reist zu |cRXP_FRIENDLY_Roberto|r
step
    .goto Stormwind City,52.05,67.96
    >>Geht ins Gebäude
    >>Sprecht mit |cRXP_FRIENDLY_Roberto|r
    >>|cRXP_BUY_Kauft|r |T132620:0|t[Fässlein mit Merlot] |cRXP_BUY_von ihm|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    .goto Stormwind City,52.10,61.34,15,0
    .goto Stormwind City,55.46,65.26,8 >>Reist zu |cRXP_FRIENDLY_Keldric|r
step
    .goto Stormwind City,55.46,65.26
    >>Sprecht mit |cRXP_FRIENDLY_Keldric|r durch die Mauer
    .vendor 1257 >> |cRXP_BUY_Kauft|r |T134830:0|t[Geringer Heiltrank] |cRXP_BUY_von ihm, falls sie verfügbar sind|r
    .target Keldric Boucher
step
    #completewith Bank3
    .goto Stormwind City,55.30,68.16,10 >>Betretet die Bank von Sturmwind
step
    #sticky
    #label Bank4
    .goto Stormwind City,57.03,72.97
    >>Sprich mit |cRXP_FRIENDLY_Newton|r
    .bankwithdraw 769,5354,6889 >> Hol folgende Items aus deiner Bank:
    >>|T133970:0|t[Brocken Eberfleisch]
    >>|T133469:0|t[Brief an Delgren]
    >>|T132832:0|t[Kleines Ei]
step
    #label Bank3
    .goto Stormwind City,57.03,72.97
    >>Sprich mit |cRXP_FRIENDLY_Newton|r
    >>|cRXP_WARN_HINWEIS: Ihr benötigt 12 Stapel von jedem Stoff (|r|T132911:0|t[Wollstoff]|cRXP_WARN_,|r |T132905:0|t[Seidenstoff]|cRXP_WARN_,|r |T132892:0|t[Magiestoff]|cRXP_WARN_,|r und |T132903:0|t[Runenstoff]|cRXP_WARN_), um die Stoffe später abzugeben. Ihr bekommt diese auf natürliche Weise, während ihr levelt.|r
    .bankdeposit 2998,4371,1711,1478,1712,3012,1180,1181,3013,17056,2592,2998,1941 >> Packe folgende Items in die Bank:
    >>|T133024:0|t[Bronzeröhre]
    >>|T134943:0|t[Schriftrollen]
    >>|T132917:0|t[Leichte Feder]
    >>|T132911:0|t[Wollstoff]
    >>|T134377:0|t[Ein einfacher Kompass]
    >>|T132620:0|t[Fässlein mit Merlot]
    .target Newton Burnside
--   .itemcount 769,1
--   .itemcount 4371,1
-- .itemcount 730,1
--  .itemcount 7207,1
-- 1711 level 20 scroll
--VV Vendor Crisp Spider Meat for now
step
    #completewith next
    .goto Stormwind City,53.45,64.92,10,0
    >>Betretet das Gasthaus
    .goto Stormwind City,52.61,65.72,10 >>Reist zu |cRXP_FRIENDLY_Allison|r
    .target Innkeeper Allison
step
    .goto Stormwind City,52.61,65.72
    >>|cRXP_WARN_===ACHTUNG===|r
    >>|cRXP_WARN_Sprecht mit|r |cRXP_FRIENDLY_Allison|r
    >>|cRXP_WARN_Öffnet das Menü "Ruhestein setzen", dann wirkt|r |T134414:0|t[Ruhestein]
    .hs >> |cRXP_WARN_Ruhestein BATCH von Sturmwind nach Auberdine|r
    .target Innkeeper Allison
    .zoneskip Darkshore
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 18-20 Fortgeschrittener Dunkelküste 3 Magier AoE Guide
#version 2
#group RestedXP ADV AoE Allianz Magier
#defaultfor Human Mage/Gnome Mage
#next 20-22 Fortgeschrittener Rotkammgebirge 1 Magier AoE Guide

step
    .goto Darkshore,36.83,43.91
    >>Sprecht mit |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Kauft 45|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihm|r
    .collect 1205,45,4740,1 --Melon Juice (45)
    .target Taldan
    .money <0.45
step
    .goto Darkshore,36.83,43.91
    >>Sprecht mit |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Kauft 40|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihm|r
    .collect 1205,40,4740,1 --Melon Juice (40)
    .target Taldan
    .money <0.40
step
    .goto Darkshore,36.83,43.91
    >>Sprecht mit |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Kauft 35|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihm|r
    .collect 1205,35,4740,1 --Melon Juice (35)
    .target Taldan
    .money <0.35
step
    .goto Darkshore,36.83,43.91
    >>Sprecht mit |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Kauft 30|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihm|r
    .collect 1205,30,4740,1 --Melon Juice (30)
    .target Taldan
    .money <0.30
step
    .goto Darkshore,36.83,43.91
    >>Sprecht mit |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Kauft 25|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihm|r
    .collect 1205,25,4740,1 --Melon Juice (25)
    .target Taldan
    .money <0.25
step
    .goto Darkshore,36.83,43.91
    >>Sprecht mit |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Kauft 20|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihm|r
    .collect 1205,20,4740,1 --Melon Juice (20)
    .target Taldan
    .money <0.20
step
    .goto Darkshore,36.83,43.91
    >>Sprecht mit |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Kauft 15|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihm|r
    .collect 1205,15,4740,1 --Melon Juice (15)
    .target Taldan
    .money <0.15
step
    .goto Darkshore,36.83,43.91
    >>Sprecht mit |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Kauft 10|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihm|r
    .collect 1205,10,4740,1 --Melon Juice (10)
    .target Taldan
    .money <0.10
step
    .goto Darkshore,36.83,43.91
    >>Sprecht mit |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Kauft 5|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihm|r
    .collect 1205,5,4740,1 --Melon Juice (5)
    .target Taldan
    .money <0.05
step
    .goto Darkshore,36.77,44.28
    >>Sprecht mit |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Kauft bis zu 40|r |T133918:0|t[Roher Langzahniger Matschschnapper] |cRXP_BUY_von ihm|r
    .collect 4592,40,4740,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    >>Diesen Schritt später entfernen
    .accept 4740 >> Akzeptiert die Quest GESUCHT: Gurgelbacke!
    .goto Darkshore,37.22,44.22
step
    .goto Darkshore,36.09,44.93
    >>Sprecht mit |cRXP_FRIENDLY_Gubber|r
    .accept 1138 >>Akzeptiert die Quest Meeresfrüchte
    .target Gubber Blump
step
    .goto Darkshore,43.55,76.29
    >>Sprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 948 >> Gebt die Quest Onu ab
    .accept 944 >> Akzeptiert die Quest Die Meistergleve
    .target Onu
step
    .goto Darkshore,44.40,76.42
    >>Sprecht mit |cRXP_FRIENDLY_Kerlonian|r
    >>|cRXP_WARN_Falls |cRXP_FRIENDLY_Kerlonian|r nicht da ist, überspringt diesen Schritt|r
    .accept 5321 >>Akzeptiert die Quest Der Schläfer ist erwacht
    .target Kerlonian Evershade
step
    .goto Darkshore,44.39,76.30
    >>Öffnet |cRXP_PICK_Kerlonians Truhe|r. Plündert sie für |cRXP_LOOT_Horn der Erweckung|r
    >>|cRXP_WARN_Benutzt das|r |T134229:0|t[|cRXP_LOOT_Horn der Erweckung|r] |cRXP_WARN_auf |cRXP_FRIENDLY_Kerlonian|r wenn er einschläft|r
    >>|cRXP_WARN_Beides habt eine 5-Sekunden-Wirk-Dauer|r
    .complete 5321,1 --Horn of Awakening (1)
    .isOnQuest 5321
step
    #completewith Glaive1
    >>AoE |cRXP_ENEMY_Mondpirscherpatriarch|r. Plündert sie für |cRXP_LOOT_Feiner Mondpirscherpelz|r
    >>|cRXP_ENEMY_Mondpirscherpatriarch|r teilen sich die Spawnpunkte mit |cRXP_ENEMY_Ergrauter Distelbär|r und |cRXP_ENEMY_Riesiger Waldschreiter|r
   .complete 986,1 --Fine Moonstalker Pelt (5)
   .mob Moonstalker Sire
   .use 13536
   .isOnQuest 5321
step
    #completewith next
    >>AoE |cRXP_ENEMY_Ergrauter Distelbär|r. Plündert sie für |cRXP_LOOT_Ergrauter Skalp|r
    >>|cRXP_ENEMY_Ergrauter Distelbär|r teilen sich die Spawns mit |cRXP_ENEMY_Mondpirscherpatriarch|r und |cRXP_ENEMY_Riesiger Waldschreiter|r
   .complete 1003,1 --Grizzled Scalp (4)
   .mob Grizzled Thistle Bear
   .use 13536
   .isOnQuest 5321
step
    #label Glaive1
   .goto Darkshore,38.65,87.34
    >>Reist zur Meistergleve
   .complete 944,1 --Enter the Master's Glaive (1)
   .use 13536
   .isOnQuest 5321
step
    #completewith Therylune1
    >>AoE |cRXP_ENEMY_Twilight-Jünger|r und |cRXP_ENEMY_Twilight-Rohling|r. Plündert sie für das |T133743:0|t[|cRXP_LOOT_Buch: Die Macht in der Tiefe|r]
    >>|cRXP_WARN_Benutzt das |T133743:0|t[|cRXP_LOOT_Buch: Die Macht in der Tiefe|r], um die Quest zu beginnen|r
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .accept 968 >> Akzeptiert die Quest Die Macht in der Tiefe
    .mob Twilight Disciple
    .mob Twilight Thug
    .use 13536
    .isOnQuest 5321
step
    #completewith next
    .goto Darkshore,38.65,87.34
    >>Platziert den |T134715:0|t[Wahrsagephiole] auf dem Boden
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    >>Klickt die |cRXP_PICK_Wahrsagephiole|r auf dem Boden an
    .turnin 944 >> Gebt die Quest Die Meistergleve ab
    .accept 949 >> Akzeptiert die Quest Das Twilight-Lager
    .use 13536
    .use 5251
    .isOnQuest 5321
step
   .goto Darkshore,38.65,87.34
    >>Sprecht mit |cRXP_FRIENDLY_Therylune|r
    >>|cRXP_WARN_Falls |cRXP_FRIENDLY_Therylune|r nicht dort ist, AoE |cRXP_ENEMY_Twilight-Jünger|r und |cRXP_ENEMY_Twilight-Rohling|r für |T133743:0|t[|cRXP_LOOT_Buch: Die Macht in der Tiefe|r], bis sie erscheint|r
   .accept 945 >> Akzeptiert die Quest Therylunes Flucht
   .target Therylune
   .use 13536
   .isOnQuest 5321
step
    #completewith Tome1
    >>Begleitet |cRXP_FRIENDLY_Therylune|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .use 13536
    .target Therylune
    .isOnQuest 5321
step
   .goto Darkshore,38.55,86.03
   >>Platziert den |T134715:0|t[Wahrsagephiole] auf dem Boden
   >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
   >>Klickt die |cRXP_PICK_Wahrsagephiole|r auf dem Boden an
   .turnin 944 >> Gebt die Quest Die Meistergleve ab
   .accept 949 >> Akzeptiert die Quest Das Twilight-Lager
   .use 13536
   .use 5251
   .isOnQuest 5321
step
    #label Tome1
   .goto Darkshore,38.55,86.03
    >>Klickt das |cRXP_PICK_Twilight-Foliant|r
   .turnin 949 >> Gebt die Quest Das Twilight-Lager ab
   .accept 950 >> Akzeptiert die Quest Rückkehr zu Onu
   .use 13536
   .isOnQuest 5321
step
   #label Therylune1
   >>Begleitet |cRXP_FRIENDLY_Therylune|r
   >>|cRXP_WARN_Stellt sicher, dass |cRXP_FRIENDLY_Therylune|r in Sichtweite bleibt, oder die Quest wird fehlschlagen|r
   .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
   .use 13536
   .target Therylune
   .isOnQuest 950
step
    #completewith Remtravel1
    >>AoE |cRXP_ENEMY_Mondpirscherpatriarch|r. Plündert sie für |cRXP_LOOT_Feiner Mondpirscherpelz|r
    >>|cRXP_ENEMY_Mondpirscherpatriarch|r teilen sich die Spawnpunkte mit |cRXP_ENEMY_Ergrauter Distelbär|r und |cRXP_ENEMY_Riesiger Waldschreiter|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .use 13536
    .isOnQuest 950
step
    #completewith next
    >>AoE |cRXP_ENEMY_Ergrauter Distelbär|r. Plündert sie für |cRXP_LOOT_Ergrauter Skalp|r
    >>|cRXP_ENEMY_Ergrauter Distelbär|r teilen sich die Spawns mit |cRXP_ENEMY_Mondpirscherpatriarch|r und |cRXP_ENEMY_Riesiger Waldschreiter|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
    .isOnQuest 950
step
    #label Remtravel1
    .goto Darkshore,35.72,83.69
    >>Sprecht mit |cRXP_FRIENDLY_Remtravel|r, um die Eskorte zu starten
    .turnin 729 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .accept 731 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Prospector Remtravel
    .use 13536
    .isOnQuest 950
step
    .goto Darkshore,35.35,84.72,40,0
    .goto Darkshore,36.22,86.12,40,0
    .goto Darkshore,35.35,84.72,40,0
    .goto Darkshore,35.72,83.69,40,0
    .goto Darkshore,31.28,87.39
    >>Eskortiert |cRXP_FRIENDLY_Remtravel|r
    >>Wenn der |cRXP_ENEMY_Knochenknacker der Kieselsplittertroggs|r und der |cRXP_ENEMY_Geomant der Kieselsplittertroggs|r spawnen, lasst den |cRXP_ENEMY_Geomant der Kieselsplittertroggs|r |T135812:0|t[Feuerball] auf |cRXP_FRIENDLY_Remtravel|r wirken, wirkt dann |T136071:0|t[Verwandlung] auf ihn. Tötet den |cRXP_ENEMY_Knochenknacker der Kieselsplittertroggs|r und dann den |cRXP_ENEMY_Geomant der Kieselsplittertroggs|r
    .complete 731,1 --Escort Prospector Remtravel (1)
    .target Prospector Remtravel
    .mob Gravelflint Geomancer
    .mob Gravelflint Bonesnapper
    .use 13536
    .isOnQuest 950
step
    #completewith SeaC
    >>AoE |cRXP_ENEMY_Mondpirscherpatriarch|r. Plündert sie für |cRXP_LOOT_Feiner Mondpirscherpelz|r
    >>|cRXP_ENEMY_Mondpirscherpatriarch|r teilen sich die Spawnpunkte mit |cRXP_ENEMY_Ergrauter Distelbär|r und |cRXP_ENEMY_Riesiger Waldschreiter|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .use 13536
    .isOnQuest 950
step
    #completewith SeaC
    >>AoE |cRXP_ENEMY_Ergrauter Distelbär|r. Plündert sie für |cRXP_LOOT_Ergrauter Skalp|r
    >>|cRXP_ENEMY_Ergrauter Distelbär|r teilen sich die Spawns mit |cRXP_ENEMY_Mondpirscherpatriarch|r und |cRXP_ENEMY_Riesiger Waldschreiter|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
    .isOnQuest 950
step
    #completewith next
    +Weckt |cRXP_FRIENDLY_Kerlonian|r ab jetzt nicht erneut auf
    >>Haltet die Augen für |cRXP_ENEMY_Schreitergelegemutter|r offen
    .unitscan Strider Clutchmother
    .isOnQuest 950
step
    #label SeaC
    .goto Darkshore,31.28,87.39
    >>Plündert die |cRXP_LOOT_Gestrandete Meereskreatur|r vom Boden
    >>|cRXP_WARN_Sammelt es am Hals auf|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .accept 4733 >>Akzeptiert die Quest Gestrandete Meereskreatur
    .isOnQuest 950
step
    #completewith next
    .abandon 5321 >> Der Schläfer ist erwacht abbrechen
    .isOnQuest 950
step
    .goto Darkshore,31.22,85.56
    >>Plündert die|cRXP_LOOT_Gestrandete Meeresschildkröte|r vom Boden
    >>|cRXP_WARN_Der Schildkrötenpanzer hat Sichtlinie|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .accept 4732 >>Akzeptiert die Quest Gestrandete Meeresschildkröte
    .isOnQuest 950
step
    #completewith SeaCreature
    >>AoE |cRXP_ENEMY_Verkrusteter Gezeitenkriecher|r. Plündert sie für |cRXP_LOOT_Feine Krebsbrocken|r
   .complete 1138,1 --Fine Crab Chunks (6)
   .mob Encrusted Tide Crawler
   .isOnQuest 950
step
    .goto Darkshore,31.70,83.72
    >>Plündert die|cRXP_LOOT_Gestrandete Meeresschildkröte|r vom Boden
    >>|cRXP_WARN_Der Schildkrötenpanzer hat Sichtlinie|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .accept 4731 >>Akzeptiert die Quest Gestrandete Meeresschildkröte
    .isOnQuest 950
step
    #label SeaCreature
    .goto Darkshore,32.70,80.73
    >>Plündert die |cRXP_LOOT_Gestrandete Meereskreatur|r vom Boden
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .accept 4730 >>Akzeptiert die Quest Gestrandete Meereskreatur
    .isOnQuest 950
step
    #completewith next
    >>AoE |cRXP_ENEMY_Riffkriecher|r. Plündert sie für |cRXP_LOOT_Feine Krebsbrocken|r
   .complete 1138,1 --Fine Crab Chunks (6)
   .mob Reef Crawler
   .isOnQuest 950
step
   .goto Darkshore,36.52,76.55
   >>Säubere das Murloc-Lager, ohne zum Zentrum der Lagers zu gehen
   >>Sobald ihr alles beseitigt habt, begebt euch zum Zentrum des Lagers, um 3 Wellen (3 Küstenlaufer, 2 Krieger, Gurgelbacke und ein Jäger) zu beschwören
   >>|cRXP_WARN_Wenn ihr Glück habt, könnte |cRXP_ENEMY_Gurgelbacke|r bereits etwa 30 Meter westlich der Küste verfügbar sein (falls jemand zuvor an ihm gestorben ist)|r
   .complete 4740,1 --Murkdeep (1)
   .unitscan Murkdeep
   .isOnQuest 950
step
    #completewith next
    .goto Darkshore,35.96,75.22,60,0
    .goto Darkshore,36.01,73.48,60,0
    .goto Darkshore,35.02,72.20,60,0
    .goto Darkshore,35.42,71.52,60,0
    >>AoE |cRXP_ENEMY_Riffkriecher|r. Plündert sie für |cRXP_LOOT_Feine Krebsbrocken|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
    .isOnQuest 950
step
    .goto Darkshore,35.97,70.90
    >>Plündert die |cRXP_LOOT_Gestrandete Meereskreatur|r vom Boden
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .accept 4728 >>Akzeptiert die Quest Gestrandete Meereskreatur
    .isOnQuest 950
step
    .goto Darkshore,35.42,71.52,60,0
    .goto Darkshore,35.02,72.20,60,0
    .goto Darkshore,36.01,73.48,60,0
    .goto Darkshore,35.96,75.22,60,0
    .goto Darkshore,35.61,78.13,60,0
    .goto Darkshore,35.27,79.57,60,0
    .goto Darkshore,34.18,80.71
    >>AoE |cRXP_ENEMY_Riffkriecher|r. Plündert sie für |cRXP_LOOT_Feine Krebsbrocken|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
    .isOnQuest 950
step
    #completewith SeaCreatureGiga
    >>AoE |cRXP_ENEMY_Mondpirscherpatriarch|r. Plündert sie für |cRXP_LOOT_Feiner Mondpirscherpelz|r
    >>|cRXP_ENEMY_Mondpirscherpatriarch|r teilen sich die Spawnpunkte mit |cRXP_ENEMY_Ergrauter Distelbär|r und |cRXP_ENEMY_Riesiger Waldschreiter|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .use 13536
step
    #completewith SeaCreatureGiga
    >>AoE |cRXP_ENEMY_Ergrauter Distelbär|r. Plündert sie für |cRXP_LOOT_Ergrauter Skalp|r
    >>|cRXP_ENEMY_Ergrauter Distelbär|r teilen sich die Spawns mit |cRXP_ENEMY_Mondpirscherpatriarch|r und |cRXP_ENEMY_Riesiger Waldschreiter|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
step
    #label Onu2
    .goto Darkshore,43.55,76.29
    >>Sprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Gebt die Quest Rückkehr zu Onu ab
    .target Onu
    .isQuestComplete 950
step
    #label SeaCreatureGiga
    .goto Darkshore,35.97,70.90
    >>Plündert die |cRXP_LOOT_Gestrandete Meereskreatur|r vom Boden
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .accept 4728 >>Akzeptiert die Quest Gestrandete Meereskreatur
step
    #completewith next
    .goto Darkshore,35.42,71.52,60,0
    .goto Darkshore,35.02,72.20,60,0
    .goto Darkshore,36.01,73.48,60,0
    .goto Darkshore,35.96,75.22,60,0
    >>AoE |cRXP_ENEMY_Riffkriecher|r. Plündert sie für |cRXP_LOOT_Feine Krebsbrocken|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto Darkshore,36.52,76.55
    >>Säubere das Murloc-Lager, ohne zum Zentrum der Lagers zu gehen
    >>Sobald ihr alles beseitigt habt, begebt euch zum Zentrum des Lagers, um 3 Wellen (3 Küstenlaufer, 2 Krieger, Gurgelbacke und ein Jäger) zu beschwören
    >>|cRXP_WARN_Wenn ihr Glück habt, könnte |cRXP_ENEMY_Gurgelbacke|r bereits etwa 30 Meter westlich der Küste verfügbar sein (falls jemand zuvor an ihm gestorben ist)|r
    .complete 4740,1 --Murkdeep (1)
    .unitscan Murkdeep
step
    #completewith next
    .goto Darkshore,35.61,78.13,60,0
    .goto Darkshore,35.27,79.57,60,0
    .goto Darkshore,34.18,80.71,60,0
    >>AoE |cRXP_ENEMY_Riffkriecher|r. Plündert sie für |cRXP_LOOT_Feine Krebsbrocken|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto Darkshore,32.70,80.73
    >>Plündert die |cRXP_LOOT_Gestrandete Meereskreatur|r vom Boden
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .accept 4730 >>Akzeptiert die Quest Gestrandete Meereskreatur
step
    .goto Darkshore,32.80,81.72,60,0
    .goto Darkshore,32.08,83.28
    >>AoE |cRXP_ENEMY_Verkrusteter Gezeitenkriecher|r. Plündert sie für |cRXP_LOOT_Feine Krebsbrocken|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
step
    .goto Darkshore,31.70,83.72
    >>Plündert die|cRXP_LOOT_Gestrandete Meeresschildkröte|r vom Boden
    >>|cRXP_WARN_Der Schildkrötenpanzer hat Sichtlinie|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .accept 4731 >>Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    .goto Darkshore,31.22,85.56
    >>Plündert die|cRXP_LOOT_Gestrandete Meeresschildkröte|r vom Boden
    >>|cRXP_WARN_Der Schildkrötenpanzer hat Sichtlinie|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .accept 4732 >>Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    .goto Darkshore,31.28,87.39
    >>Plündert die |cRXP_LOOT_Gestrandete Meereskreatur|r vom Boden
    >>|cRXP_WARN_Sammelt es am Hals auf|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .accept 4733 >>Akzeptiert die Quest Gestrandete Meereskreatur
step
    #completewith Remtravel3
    >>AoE |cRXP_ENEMY_Mondpirscherpatriarch|r. Plündert sie für |cRXP_LOOT_Feiner Mondpirscherpelz|r
    >>|cRXP_ENEMY_Mondpirscherpatriarch|r teilen sich die Spawnpunkte mit |cRXP_ENEMY_Ergrauter Distelbär|r und |cRXP_ENEMY_Riesiger Waldschreiter|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .use 13536
step
    #completewith Remtravel3
    >>AoE |cRXP_ENEMY_Ergrauter Distelbär|r. Plündert sie für |cRXP_LOOT_Ergrauter Skalp|r
    >>|cRXP_ENEMY_Ergrauter Distelbär|r teilen sich die Spawns mit |cRXP_ENEMY_Mondpirscherpatriarch|r und |cRXP_ENEMY_Riesiger Waldschreiter|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
step
    #completewith next
    +Weckt |cRXP_FRIENDLY_Kerlonian|r ab jetzt nicht erneut auf
    >>Haltet die Augen für |cRXP_ENEMY_Schreitergelegemutter|r offen
    .unitscan Strider Clutchmother
 step
    #label Remtravel3
    .goto Darkshore,35.72,83.69
    >>Sprecht mit |cRXP_FRIENDLY_Remtravel|r, um die Eskorte zu starten
    .turnin 729 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .accept 731 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Prospector Remtravel
step
    .goto Darkshore,35.35,84.72,40,0
    .goto Darkshore,36.22,86.12,40,0
    .goto Darkshore,35.35,84.72,40,0
    .goto Darkshore,35.72,83.69,40,0
    .goto Darkshore,38.65,87.34
    >>Eskortiert |cRXP_FRIENDLY_Remtravel|r
    >>Wenn der |cRXP_ENEMY_Knochenknacker der Kieselsplittertroggs|r und der |cRXP_ENEMY_Geomant der Kieselsplittertroggs|r spawnen, lasst den |cRXP_ENEMY_Geomant der Kieselsplittertroggs|r |T135812:0|t[Feuerball] auf |cRXP_FRIENDLY_Remtravel|r wirken, wirkt dann |T136071:0|t[Verwandlung] auf ihn. Tötet den |cRXP_ENEMY_Knochenknacker der Kieselsplittertroggs|r und dann den |cRXP_ENEMY_Geomant der Kieselsplittertroggs|r
    .complete 731,1 --Escort Prospector Remtravel (1)
    .target Prospector Remtravel
    .mob Gravelflint Geomancer
    .mob Gravelflint Bonesnapper
step
    #completewith Glaive2
    >>AoE |cRXP_ENEMY_Mondpirscherpatriarch|r. Plündert sie für |cRXP_LOOT_Feiner Mondpirscherpelz|r
    >>|cRXP_ENEMY_Mondpirscherpatriarch|r teilen sich die Spawnpunkte mit |cRXP_ENEMY_Ergrauter Distelbär|r und |cRXP_ENEMY_Riesiger Waldschreiter|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
step
    #completewith next
    >>AoE |cRXP_ENEMY_Ergrauter Distelbär|r. Plündert sie für |cRXP_LOOT_Ergrauter Skalp|r
    >>|cRXP_ENEMY_Ergrauter Distelbär|r teilen sich die Spawns mit |cRXP_ENEMY_Mondpirscherpatriarch|r und |cRXP_ENEMY_Riesiger Waldschreiter|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
step
    #label Glaive2
   .goto Darkshore,38.65,87.34
    >>Reist zur Meistergleve
   .complete 944,1 --Enter the Master's Glaive (1)
step
    #completewith Therylune2
    >>AoE |cRXP_ENEMY_Twilight-Jünger|r und |cRXP_ENEMY_Twilight-Rohling|r. Plündert sie für das |T133743:0|t[|cRXP_LOOT_Buch: Die Macht in der Tiefe|r]
    >>|cRXP_WARN_Benutzt das |T133743:0|t[|cRXP_LOOT_Buch: Die Macht in der Tiefe|r], um die Quest zu beginnen|r
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .accept 968 >> Akzeptiert die Quest Die Macht in der Tiefe
    .mob Twilight Disciple
    .mob Twilight Thug
step
    #completewith next
    .goto Darkshore,38.65,87.34
    >>Platziert den |T134715:0|t[Wahrsagephiole] auf dem Boden
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    >>Klickt die |cRXP_PICK_Wahrsagephiole|r auf dem Boden an
    .turnin 944 >> Gebt die Quest Die Meistergleve ab
    .accept 949 >> Akzeptiert die Quest Das Twilight-Lager
    .use 5251
step
    .goto Darkshore,38.65,87.34
    >>Sprecht mit |cRXP_FRIENDLY_Therylune|r
    >>|cRXP_WARN_Falls |cRXP_FRIENDLY_Therylune|r nicht dort ist, AoE |cRXP_ENEMY_Twilight-Jünger|r und |cRXP_ENEMY_Twilight-Rohling|r für |T133743:0|t[|cRXP_LOOT_Buch: Die Macht in der Tiefe|r], bis sie erscheint|r
    .accept 945 >> Akzeptiert die Quest Therylunes Flucht
    .target Therylune
step
    #completewith Tome2
    >>Begleitet |cRXP_FRIENDLY_Therylune|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .target Therylune
step
    .goto Darkshore,38.55,86.03
    >>Platziert den |T134715:0|t[Wahrsagephiole] auf dem Boden
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    >>Klickt die |cRXP_PICK_Wahrsagephiole|r auf dem Boden an
    .turnin 944 >> Gebt die Quest Die Meistergleve ab
    .accept 949 >> Akzeptiert die Quest Das Twilight-Lager
    .use 5251
step
    #label Tome2
    .goto Darkshore,38.55,86.03
    >>Klickt das |cRXP_PICK_Twilight-Foliant|r
    .turnin 949 >> Gebt die Quest Das Twilight-Lager ab
    .accept 950 >> Akzeptiert die Quest Rückkehr zu Onu
    .use 13536
step
    #label Therylune2
    >>Begleitet |cRXP_FRIENDLY_Therylune|r
    >>|cRXP_WARN_Stellt sicher, dass |cRXP_FRIENDLY_Therylune|r in Sichtweite bleibt, oder die Quest wird fehlschlagen|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .use 13536
    .target Therylune
step
    #completewith Onu3
    >>AoE |cRXP_ENEMY_Mondpirscherpatriarch|r. Plündert sie für |cRXP_LOOT_Feiner Mondpirscherpelz|r
    >>|cRXP_ENEMY_Mondpirscherpatriarch|r teilen sich die Spawnpunkte mit |cRXP_ENEMY_Ergrauter Distelbär|r und |cRXP_ENEMY_Riesiger Waldschreiter|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
step
    #completewith Onu3
    #label Scalps2
    >>AoE |cRXP_ENEMY_Ergrauter Distelbär|r. Plündert sie für |cRXP_LOOT_Ergrauter Skalp|r
    >>|cRXP_ENEMY_Ergrauter Distelbär|r teilen sich die Spawns mit |cRXP_ENEMY_Mondpirscherpatriarch|r und |cRXP_ENEMY_Riesiger Waldschreiter|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
step
    #requires Scalps2
    #completewith next
    .goto Darkshore,41.40,80.56,-1
    >>Klickt |cRXP_PICK_Buzzbox 525|r
    .turnin 1003 >> Gebt die Quest Dröhnkiste 525 ab
step
    #label Onu3
    .goto Darkshore,43.55,76.29,-1
    >>Sprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Gebt die Quest Rückkehr zu Onu ab
    .target Onu
step
    .goto Darkshore,44.40,76.42
    >>Sprecht mit |cRXP_FRIENDLY_Kerlonian|r
    >>|cRXP_WARN_Falls |cRXP_FRIENDLY_Kerlonian|r nicht da ist, überspringt diesen Schritt|r
    .accept 5321 >>Akzeptiert die Quest Der Schläfer ist erwacht
    .target Kerlonian Evershade
step
    .goto Darkshore,44.39,76.30
    >>Öffnet |cRXP_PICK_Kerlonians Truhe|r. Plündert sie für |cRXP_LOOT_Horn der Erweckung|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 5321,1 --Horn of Awakening (1)
    .isOnQuest 5321
step
    #completewith 525
    >>AoE |cRXP_ENEMY_Mondpirscherpatriarch|r. Plündert sie für |cRXP_LOOT_Feiner Mondpirscherpelz|r
    >>|cRXP_ENEMY_Mondpirscherpatriarch|r teilen sich die Spawnpunkte mit |cRXP_ENEMY_Ergrauter Distelbär|r und |cRXP_ENEMY_Riesiger Waldschreiter|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
step
    .goto Darkshore,43.94,80.14,60,0
    .goto Darkshore,43.09,81.72,60,0
    .goto Darkshore,41.59,83.52,60,0
    .goto Darkshore,40.15,83.02,60,0
    .goto Darkshore,38.70,82.44,60,0
    .goto Darkshore,38.13,79.75,60,0
    .goto Darkshore,40.52,80.57,60,0
    .goto Darkshore,43.94,80.14,60,0
    .goto Darkshore,43.09,81.72,60,0
    .goto Darkshore,41.59,83.52,60,0
    .goto Darkshore,40.15,83.02,60,0
    .goto Darkshore,38.70,82.44,60,0
    .goto Darkshore,38.13,79.75,60,0
    .goto Darkshore,40.52,80.57
    >>AoE |cRXP_ENEMY_Ergrauter Distelbär|r. Plündert sie für |cRXP_LOOT_Ergrauter Skalp|r
    >>|cRXP_ENEMY_Ergrauter Distelbär|r teilen sich die Spawns mit |cRXP_ENEMY_Mondpirscherpatriarch|r und |cRXP_ENEMY_Riesiger Waldschreiter|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
step
    #label 525
    .goto Darkshore,41.40,80.56
    >>Klickt |cRXP_PICK_Buzzbox 525|r
    .turnin 1003 >> Gebt die Quest Dröhnkiste 525 ab
    .use 13536
step
    .goto Darkshore,41.10,84.17,70,0
    .goto Darkshore,40.38,90.49,70,0
    .goto Darkshore,36.58,90.55,70,0
    .goto Darkshore,36.70,94.60,70,0
    .goto Darkshore,42.76,90.70,70,0
    .goto Darkshore,41.77,87.88,70,0
    .goto Darkshore,44.57,93.03,70,0
    .goto Darkshore,41.10,84.17,70,0
    .goto Darkshore,40.38,90.49,70,0
    .goto Darkshore,36.58,90.55,70,0
    .goto Darkshore,36.70,94.60,70,0
    .goto Darkshore,42.76,90.70,70,0
    .goto Darkshore,41.77,87.88,70,0
    .goto Darkshore,44.57,93.03
    >>AoE |cRXP_ENEMY_Mondpirschermatriarchin|r und |cRXP_ENEMY_Mondpirscherpatriarch|r. Plündert sie für |cRXP_LOOT_Feiner Mondpirscherpelz|r
    >>|cRXP_ENEMY_Mondpirscherpatriarch|r teilen sich die Spawnpunkte mit |cRXP_ENEMY_Ergrauter Distelbär|r und |cRXP_ENEMY_Riesiger Waldschreiter|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire
    .unitscan Moonstalker Matriarch
    .use 13536
step
    #completewith Sleeper
    .xp 19+4635 >> Farmt bis 4635+/21300xp
    .isOnQuest 5321
step
    #completewith Delgren
    >>AoE |cRXP_ENEMY_Geisterpfotenläufer|r. Plündert sie für |cRXP_LOOT_Magere Wolfflanke|r
    .collect 1015,10,90,1 --Lean Wolf Flank (10)
    .mob Ghostpaw Runner
step
    #label Sleeper
    .goto Ashenvale,27.26,35.58
    >>Sprecht mit |cRXP_FRIENDLY_Liladris|r
    .turnin 5321,1 >>Gebt die Quest Der Schläfer ist erwacht ab
    .target Liladris Moonriver
    .use 13536
    .isOnQuest 5321
step
    #label Delgren
    .goto Ashenvale,26.19,38.70
    >>Sprecht mit |cRXP_FRIENDLY_Delgren|r
    .turnin 967 >>Gebt die Quest Der Turm von Althalaxx ab
    .target Delgren the Purifier
step
    .goto Ashenvale,22.64,51.91
    >>Sprecht mit |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Gebt die Quest Therylunes Flucht ab
    .target Therysil
step
    .goto Ashenvale,34.41,47.99
    .xp 19+8720 >> Farmt bis 8720+/21300xp
step << skip
    #completewith next
    +|cRXP_WARN_Wirkt schnell|r |T132794:0|t[Wasser herbeizaubern Rang 2] |cRXP_WARN_, um so viel Wasser wie möglich vor dem Flug herzustellen|r
step
    #completewith next
    .goto Ashenvale,34.41,47.99
    >>Sprecht mit |cRXP_FRIENDLY_Daelyshia|r
    .fly Auberdine >> Fliege nach Auberdine
    .target Daelyshia
step
    >>Sprecht mit |cRXP_FRIENDLY_Gwennyth|r und |cRXP_FRIENDLY_Gubber|r
    .turnin 4728 >>Gebt die Quest Gestrandete Meereskreatur ab
    .turnin 4730 >>Gebt die Quest Gestrandete Meereskreatur ab
    .turnin 4731 >>Gebt die Quest Gestrandete Meeresschildkröte ab
    .turnin 4732 >>Gebt die Quest Gestrandete Meeresschildkröte ab
    .turnin 4733 >>Gebt die Quest Gestrandete Meereskreatur ab
    .target +Gwennyth Bly'Leggonde
    .goto Darkshore,36.62,45.60
    .turnin 1138,2 >>Gebt die Quest Meeresfrüchte ab
    .goto Darkshore,36.09,44.93
    .target +Gubber Blump
step
    .goto Darkshore,37.73,43.38
    >>Sprecht mit |cRXP_FRIENDLY_Glynda|r
    .turnin 4740 >>Gebt die Quest GESUCHT: Gurgelbacke! ab
    .target Sentinel Glynda Nal'Shea
step
    >>Sprecht mit |cRXP_FRIENDLY_Terenthis|r und |cRXP_FRIENDLY_Gershala|r
    .turnin 986 >>Gebt die Quest Ein verirrter Meister ab
    --.accept 993 >>Accept A Lost Master
    .target +Terenthis
    .goto Darkshore,39.37,43.48
    .turnin 3765 >> Gebt die Quest Verderbnis in der Fremde ab
    .goto Darkshore,38.32,43.04
    .target +Gershala Nightwhisper
step
    .goto Darkshore,38.11,41.16
    >>Sprecht mit |cRXP_FRIENDLY_Gorbold|r
    >>|cRXP_BUY_Kauft 20|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_von ihm|r
    .collect 2678,20,90,1 --Mild Spices (20)
    .target Gorbold Steelhand
    .itemcount 6889,20
    .skill cooking,50,1
step
    .goto Darkshore,38.11,41.16
    >>Sprecht mit |cRXP_FRIENDLY_Gorbold|r
    >>|cRXP_BUY_Kauft 15|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_von ihm|r
    .collect 2678,15,90,1 --Mild Spices (15)
    .target Gorbold Steelhand
    .itemcount 6889,15
    .skill cooking,50,1
step
    .goto Darkshore,38.11,41.16
    >>Sprecht mit |cRXP_FRIENDLY_Gorbold|r
    >>|cRXP_BUY_Kauft 10|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_von ihm|r
    .collect 2678,10,90,1 --Mild Spices (10)
    .target Gorbold Steelhand
    .itemcount 6889,10
    .skill cooking,50,1
step
    .goto Darkshore,38.11,41.16
    >>Sprecht mit |cRXP_FRIENDLY_Gorbold|r
    >>|cRXP_BUY_Kauft 5|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_von ihm|r
    .collect 2678,5,90,1 --Mild Spices (5)
    .target Gorbold Steelhand
    .itemcount 6889,5
    .skill cooking,50,1
step
    .goto Darkshore,37.45,40.50
    >>Sprecht mit |cRXP_FRIENDLY_Dalmond|r
    >>|cRXP_BUY_Kauft ein|r |T135435:0|t[Einfaches Holz] |cRXP_BUY_und ein|r |T135237:0|t[Feuerstein und Zunder] |cRXP_BUY_von ihm|r
    .collect 4470,1,90,1 --Simple Wood (1)
    .collect 4471,1,90,1 --Flint and Tinder (1)
    .target Dalmond
    .skill cooking,50,1
step
    .goto Darkshore,37.44,41.84
    >>Sprecht mit |cRXP_FRIENDLY_Hollee|r
    .turnin 731 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .accept 741 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Archaeologist Hollee
step
    #completewith Teldrassil
    #label BoatT
    .goto Darkshore,37.47,42.45,20,0
    .goto Darkshore,37.44,43.03,20,0
    .goto Darkshore,36.85,44.05,20,0
    .goto Darkshore,32.96,41.88,20,0
    .goto Darkshore,33.23,39.91,50 >>Reist zum Darnassus-Boot
step
    #completewith Teldrassil
    #requires BoatT
    .cast 818 >> Benutzt |T135805:0|t[Kochfeuerstelle] auf dem Boot (oder Anlegestelle, falls das Boot noch nicht sichtbar ist)
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .skill cooking,50,1
step
    #completewith Teldrassil
    #requires BoatT
    #label BoarM
    +Kochen beliebig viel |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r into |T133974:0|t[Geröstetes Eberfleisch]
    .itemcount 769,1
    .skill cooking,50,1
step
    #completewith next
    #requires BoarM
    +|cRXP_WARN_Fangt an|r |T132794:0|t[Wasser herbeizaubern Rang 2] zu spammen |cRXP_WARN_um so viel Wasser wie möglich herbeizuzaubern|r
step
    #label Teldrassil
    .goto Teldrassil,54.91,96.25,100 >> Nehmt das Boot nach Teldrassil
step
    #completewith next
    .goto Teldrassil,55.52,93.68,60,0
    .goto Teldrassil,56.80,92.90,40,0
    .goto Teldrassil,57.47,92.97,20,0
    .goto Teldrassil,58.40,94.01,20 >>Reist zu |cRXP_FRIENDLY_Vesprystus|r
step
    .goto Teldrassil,58.40,94.01
    >>Sprecht mit |cRXP_FRIENDLY_Vesprystus|r
    .fp Rut'theran >> Erlernt die Flugroute nach Rut'theran
    .target Vesprystus
step
    #completewith next
    .goto 1438,55.885,89.350
    .zone Darnassus >> Geht durch das violette Portal nach Darnassus
step
    #completewith next
    .goto Darnassus,37.94,48.14,30,0
    .goto Darnassus,38.20,65.96,30,0
    .goto Darnassus,36.79,72.44,30,0
    .goto Darnassus,31.24,84.49,20 >>Reist zu |cRXP_FRIENDLY_Greywhisker|r
step
    .goto Darnassus,31.24,84.49
    >>Sprecht mit |cRXP_FRIENDLY_Greywhisker|r
    .turnin 741,3 >>Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .accept 942 >>Der geistesabwesende Ausgrabungsleiter annehmen
    .target Chief Archaeologist Greywhisker

]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 20-22 Fortgeschrittener Rotkammgebirge 1 Magier AoE Guide
#version 2
#group RestedXP ADV AoE Allianz Magier
#defaultfor Human Mage/Gnome Mage
#next 22-26 ADV Sumpfland 1 Magier AoE

step
    #completewith next
    .hs >> Ruhestein nach Sturmwind
    .zoneskip Stormwind City
step
    .goto Stormwind City,55.46,65.26
    >>Sprecht mit |cRXP_FRIENDLY_Keldric|r durch die Mauer
    .vendor 1257 >> Verkauft Müll. |cRXP_BUY_Kauft|r |T134830:0|t[Geringer Heiltrank] |cRXP_BUY_von ihm (falls sie verfügbar sind)|r
    .target Keldric Boucher
step
    #completewith Bank
    .goto Stormwind City,55.30,68.16,10 >>Betretet die Bank von Sturmwind
step
    #sticky
    #label Bank1
    .goto Stormwind City,57.03,72.97
    >>Sprich mit |cRXP_FRIENDLY_Newton|r
    .bankwithdraw 4371,1941,1711,1478,1712,3012,1180,1181,3013,2998 >> Hol folgende Items aus deiner Bank:
    >>|T133024:0|t[Bronzeröhre]
    >>|T134943:0|t[Schriftrollen]
    >>|T132620:0|t[Fässlein mit Merlot]
    >>|T134377:0|t[Ein einfacher Kompass]
    .target Newton Burnside
step
    #label Bank
    .goto Stormwind City,57.03,72.97
    >>Sprich mit |cRXP_FRIENDLY_Newton|r
    >>|cRXP_WARN_HINWEIS: Ihr benötigt 12 Stapel von jedem Stoff (|r|T132911:0|t[Wollstoff]|cRXP_WARN_,|r |T132905:0|t[Seidenstoff]|cRXP_WARN_,|r |T132892:0|t[Magiestoff]|cRXP_WARN_,|r und |T132903:0|t[Runenstoff]|cRXP_WARN_), um die Stoffe später abzugeben. Ihr bekommt diese auf natürliche Weise, während ihr levelt.|r
    .bankdeposit 17056,2592,1015,4654 >> Packe folgende Items in die Bank:
    >>|T132917:0|t[Leichte Feder]
    >>|T132911:0|t[Wollstoff]
    >>|T133970:0|t[Magere Wolfflanke]
    >>|T134431:0|t[Geheimnisvolles Fossil]
    .target Newton Burnside
step
    #completewith next
    #requires Bank1
    .goto Stormwind City,52.16,61.44,12,0
    .goto Stormwind City,49.41,63.41,12,0
    .goto Stormwind City,51.16,68.33,12 >>Reist zu |cRXP_FRIENDLY_Roberto|r
step
    #requires Bank1
    .goto Stormwind City,52.05,67.96
    >>Geht ins Gebäude
    >>Sprecht mit |cRXP_FRIENDLY_Roberto|r
    >>|cRXP_BUY_Kauft|r |T132620:0|t[Fässlein mit Merlot] |cRXP_BUY_von ihm|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    #requires Bank1
    .goto Stormwind City,51.68,59.86,8,0
    .goto Stormwind City,51.83,60.41,4,0
    .goto Stormwind City,51.59,60.15,6,0
    .goto Stormwind City,39.17,76.58,12,0
    >>|cRXP_WARN_Springt hoch auf die Fackel, dann fallt nach unten, um unter Sturmwind zu kommen|r
    >>|cRXP_WARN_Mit Schatten auf "Mittel" oder "Niedrig", geht zwischen die Füße von Derek the Dinosaur (auf dem helleren Teil des Bodens) gerade vor dem blauen nichts und lauft dann geradeaus nach vorne|r
    >>|cRXP_WARN_HINWEIS: Es besteht eine kleine Chance, mit dieser Methode zu sterben. Ihr könnt auch normal zum Magierturm laufen, wenn ihr wollt|r
    .link https://youtu.be/gV8-wgQEomc >> KLICKT HIER für einen Leitfaden
    .goto Stormwind City,38.61,79.39,10 >>Reist zu |cRXP_FRIENDLY_Larimaine|r
step
    #requires Bank1
    .goto Stormwind City,39.69,79.56
    >>Sprecht mit |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >> Lernt |T135763:0|t[Teleportieren: Sturmwind]
    >>Gesamtpreis Kosten: 20s
    .target Larimaine Purdue
step
    .goto Stormwind City,38.61,79.39
    >>Sprich mit |cRXP_FRIENDLY_Jennea|r
    .trainer >> Erlernt eure Klassenfähigkeiten (Blinzeln, Hervorrufung, Frostrüstung Rang 3, Manaschild, Wasser herbeizaubern Rang 3)
    >>|cRXP_WARN_Trainiert Blizzard noch nicht|r
    >>Gesamtpreis Kosten: 1g
    .target Jennea Cannon
step
    #completewith Charys
    .goto Stormwind City,36.73,82.44,10,0
    .goto Stormwind City,37.91,81.92,10,0
    .goto Stormwind City,38.10,80.93,8,0
    .goto Stormwind City,37.49,81.35,6,0
    .goto Stormwind City,38.46,80.61,8,0
    .goto Stormwind City,33.65,81.58,15,0
    .goto Stormwind City,31.12,79.42,15,0
    .goto Stormwind City,32.07,81.50,10,0
    .goto Stormwind City,32.63,80.62,8,0
    >>Verlasst den Magierturm
    .goto Stormwind City,32.16,79.84,10 >>Reist zu |cRXP_FRIENDLY_Charys|r
step
    .goto Stormwind City,32.16,79.84
    >>Betretet das Gebäude
    >>Sprich mit |cRXP_FRIENDLY_Charys|r
    >>|cRXP_BUY_Kauft 2|r |T134419:0|t[Rune der Teleportation]|cRXP_BUY_,|r |T134851:0|t[Geringer Manatrank]|cRXP_BUY_,|r |T134831:0|t[Heiltränke]|cRXP_BUY_, und einen|r |T132515:0|t[Stoffgürtel] |cRXP_BUY_von ihr (falls sie verfügbar sind)|r
    >>|cRXP_WARN_Geht nicht unter 18s 31c|r
    .collect 17031,2,344,1 --Rune of Teleportation (2)
    .target Charys Yserian
    .itemcount 4371,1
step
    #label Charys
    .goto Stormwind City,32.16,79.84
    >>Betretet das Gebäude
    >>Sprich mit |cRXP_FRIENDLY_Charys|r
    >>|cRXP_BUY_Kauft zwei|r |T134419:0|t[Rune der Teleportation]|cRXP_BUY_,|r |T134851:0|t[Geringer Manatrank]|cRXP_BUY_,|r |T134831:0|t[Heiltränke]|cRXP_BUY_, und einen|r |T132515:0|t[Stoffgürtel] |cRXP_BUY_von ihr (falls sie verfügbar sind)|r
    >>|cRXP_WARN_Geht nicht unter 26s 31c|r
    .collect 17031,2,344,1 --Rune of Teleportation (2)
    .target Charys Yserian
    .itemcount 4371,<1
step
    #completewith Adair
    .goto Stormwind City,39.32,71.54,20,0
    .goto Stormwind City,41.06,69.44,20,0
    .goto Stormwind City,44.02,69.81,20,0
    .goto Stormwind City,46.32,66.93,20,0
    .goto Stormwind City,42.45,61.76,20,0
    .goto Stormwind City,41.17,63.74,15,0
    .goto Stormwind City,41.57,65.46,10 >>Reist zu |cRXP_FRIENDLY_Adair|r
step
    .goto Stormwind City,41.57,65.46
    >>Betretet das Gebäude
    >>Sprich mit |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >> |cRXP_BUY_Kauft alle bis auf Intelligenz|r |T134943:0|t[Schriftrollen] |cRXP_BUY_von ihm (falls vorhanden)|r
    >>|cRXP_WARN_Geht nicht unter 18s 31c|r
    .money <0.1831
    .target Adair Gilroy
step
    #label Adair
    .goto Stormwind City,41.57,65.46
    >>Betretet das Gebäude
    >>Sprich mit |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >> |cRXP_BUY_Kauft alle bis auf Intelligenz|r |T134943:0|t[Schriftrollen] |cRXP_BUY_von ihm (falls vorhanden)|r
    >>|cRXP_WARN_Geht nicht unter 26s 31c|r
    .money <0.2631
    .target Adair Gilroy
step
    #completewith next
    .goto Stormwind City,37.84,58.50,5,0
    .goto Stormwind City,37.81,45.02,20 >>Lauft an der Kante der Mauer entlang, anstatt herumzugehen
step
    .goto Stormwind City,45.70,38.42
    >>Sprecht mit |cRXP_FRIENDLY_Kristoff|r
    .accept 343 >> Reden über Kraft annehmen
    .target Brother Kristoff
step
    #completewith next
    .goto Stormwind City,47.85,32.67,15,0
    .goto Stormwind City,47.96,31.15,12,0
    .goto Stormwind City,49.18,30.29,12 >>Reist zu |cRXP_FRIENDLY_Baros|r
step
    .goto Stormwind City,49.18,30.29
    >>Geht ins Gebäude
    >>Sprecht mit |cRXP_FRIENDLY_Baros|r
    .turnin 399 >> Gebt die Quest Ein bescheidener Anfang ab
    .target Baros Alexston
step
    .goto Stormwind City,55.25,7.07
    >>Sprecht mit |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_wenn er sie hat|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
step
    #completewith next
    .goto Stormwind City,69.02,28.39,30,0
    .goto Stormwind City,72.60,23.21,20,0
    .goto Stormwind City,69.78,16.58,20,0
    .goto Stormwind City,70.34,11.47,20,0
    .goto Stormwind City,74.19,7.45,12 >>Lauf in Richtung |cRXP_FRIENDLY_Milton|r
step
    .goto Stormwind City,74.19,7.45
    >>Sprich mit |cRXP_FRIENDLY_Milton|r
    .turnin 343 >> Gebt die Quest Reden über Kraft ab
    .accept 344 >> Bruder Paxton annehmen
    .target Milton Sheaf
step
    #completewith next
    .goto Stormwind City,70.34,11.47,20,0
    .goto Stormwind City,69.78,16.58,20,0
    .goto Stormwind City,72.60,23.21,20,0
    .goto Stormwind City,69.20,29.08,30,0
    .goto Stormwind City,61.74,42.34,20,0
    .goto Stormwind City,64.80,60.34,12,0
    .goto Stormwind City,64.17,60.60,12 >>Reist zu |cRXP_FRIENDLY_Felicia|r
step
    .goto Stormwind City,64.17,60.60
    >>Sprich mit |cRXP_FRIENDLY_Felicia|r
    >>|cRXP_BUY_Kauft die|r |T133849:0|t[Würzkräuter aus Stormwind] |cRXP_BUY_von ihr|r
    .collect 2665,1,90,1 --Stormwind Seasoning Herbs
    .target Felicia Gump
step
    #completewith next
    .goto Stormwind City,64.91,58.48,30,0
    .goto Stormwind City,59.91,51.60,30,0
    .goto Stormwind City,57.83,54.98,30,0
    .goto Stormwind City,63.27,63.43,20,0
    .goto Stormwind City,63.13,65.23,20,0
    .goto Stormwind City,65.94,65.48,12,0
    .goto Stormwind City,65.85,66.00,8,0
    .goto Stormwind City,65.22,75.58,40 >>Fallt hinunter zum Felsvorsprung unter |cRXP_FRIENDLY_Dungar|r
step
    #completewith next
    .goto Elwynn Forest,42.96,65.62,30 >>Reist zum Goldhain-Gasthaus
step << skip
    #completewith Paxton
    #requires PaxtonT
    .goto Elwynn Forest,32.75,49.52,50,0
    .goto Elwynn Forest,40.63,49.27,20,0
    .goto Elwynn Forest,48.27,41.93,50,0
    .goto Elwynn Forest,48.79,41.56,10,0
    .goto Elwynn Forest,49.26,40.69,10,0
    >>Nehmt den Bergpfad zu |cRXP_FRIENDLY_Paxton|r
    .goto Elwynn Forest,49.61,40.41,10 >>Reist zu toward |cRXP_FRIENDLY_Paxton|r
step
    .goto Elwynn Forest,44.00,65.69
    >>Sprecht mit |cRXP_FRIENDLY_Dobbins|r
    >>|cRXP_BUY_Kauft einen|r |T132794:0|t[Schlauch mit süßem Rum] |cRXP_BUY_von ihm|r
    .collect 1939,1,116,1 --Skin of Sweet Rum
    .target Barkeep Dobbins
step
    #sticky
    #label FarleyHome
    .goto Elwynn Forest,43.77,65.80,0,0
    >>Sprecht mit |cRXP_FRIENDLY_Farley|r
    .home >> Setzt euren Ruhestein in Goldhain
    .target Innkeeper Farley
step
    #completewith next
    #requires FarleyHome
    .goto Elwynn Forest,48.79,41.56,10,0
    .goto Elwynn Forest,49.26,40.69,10,0
    .goto Elwynn Forest,49.61,40.41,10 >>Reist zu toward |cRXP_FRIENDLY_Paxton|r
step
    #requires FarleyHome
    .goto Elwynn Forest,49.61,40.41
    >>Sprecht mit |cRXP_FRIENDLY_Paxton|r
    .turnin 344 >> Gebt die Quest Bruder Paxton ab
    .accept 345 >> Tinten-Zutaten annehmen
    .target Brother Paxton
step
    #completewith Theo
    .goto Elwynn Forest,49.26,40.69,10,0
    .goto Elwynn Forest,48.79,41.56,10,0
    .goto Elwynn Forest,48.28,42.21,10,0
    .goto Elwynn Forest,57.62,51.97,30,0
    .goto Elwynn Forest,64.45,69.10,15 >>Nehmt den Bergpfad zum Turm von Azora
step
    #sticky
    #label Dawn
    .goto Elwynn Forest,64.88,69.19,0,0
    >>Sprecht mit |cRXP_FRIENDLY_Dawn|r oben
    .vendor 958 >> |cRXP_BUY_Kauft nich-Intelligenz|r |T134943:0|t[Schriftrollen]|cRXP_BUY_,|r |T134850:0|t[Schwache Manatränke]|cRXP_BUY_, und|r |T134830:0|t[Geringe Heiltränke] |cRXP_BUY_von ihr (falls sie verfügbar sind)|r
    >>|cRXP_WARN_Geht nicht unter 11s 38c|r
    .money <0.1138
    .target Dawn Brightstar
    .itemcount 4371,1
step
    #sticky
    #label Dawn2
    .goto Elwynn Forest,64.88,69.19,0,0
    >>Sprecht mit |cRXP_FRIENDLY_Dawn|r oben
    .vendor 958 >> |cRXP_BUY_Kauft nich-Intelligenz|r |T134943:0|t[Schriftrollen]|cRXP_BUY_,|r |T134850:0|t[Schwache Manatränke]|cRXP_BUY_, und|r |T134830:0|t[Geringe Heiltränke] |cRXP_BUY_von ihr (falls sie verfügbar sind)|r
    >>|cRXP_WARN_Geht nicht unter 19s 38c|r
    .money <0.1938
    .target Dawn Brightstar
    .itemcount 4371,<1
step
    #label Theo
    .goto Elwynn Forest,65.22,69.71
    >>Geh nach oben
    >>Sprecht mit |cRXP_FRIENDLY_Theocritus|r
    .accept 94 >> Ein wachsames Auge annehmen
    .target Theocritus
step
    #requires Dawn
step
    #completewith next
    #requires Dawn2
    .goto Duskwood,73.79,45.98,20,0
    .goto Duskwood,74.01,45.36,10 >>Betretet Das Gasthaus
step
    #requires Dawn2
    .goto Duskwood,73.81,44.02
    >>Sprecht mit |cRXP_FRIENDLY_Hann|r
    >>|cRXP_BUY_Kauft die|r |T132798:0|t[Flasche mit Fusel] |cRXP_BUY_bei ihm|r
    .collect 1942,1,116,1 --Bottle of Moonshine (1)
    .target Barkeep Hann
step
    #completewith Viktori
    .goto Duskwood,74.01,45.36,10,0
    .goto Duskwood,73.79,45.98,10 >>Verlasst das Gasthaus
step
    #completewith next
    .goto Duskwood,75.22,48.26,12 >>Geht ins Gebäude
step
    .goto Duskwood,75.34,48.74
    >>Sprecht mit |cRXP_FRIENDLY_Elaine|r
    .accept 163 >>Rabenflucht annehmen
    .accept 164 >>Lieferung an Sven annehmen
    .accept 165 >>Der Einsiedler annehmen
    .target Elaine Carevin
step
    .goto Duskwood,78.00,48.33
    >>Sprecht mit |cRXP_FRIENDLY_Herble|r
    .vendor 3133 >>|cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_wenn er sie hat|r
    .target Herble Baubbletump
    .itemcount 4371,<1
step
    .goto Duskwood,79.78,48.06
    >>Sprich mit |cRXP_FRIENDLY_Viktori|r
    .accept 174 >> Seht zu den Sternen annehmen
    .turnin 174 >> Gebt die Quest Seht zu den Sternen ab
    .accept 175 >> Seht zu den Sternen annehmen
    .target Viktori Prism'Antras
    .itemcount 4371,1
step
    #label Viktori
    .goto Duskwood,79.78,48.06
    >>Sprich mit |cRXP_FRIENDLY_Viktori|r
    .accept 175 >> Seht zu den Sternen annehmen
    .target Viktori Prism'Antras
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.46,59.02
    >>Sprich mit |cRXP_FRIENDLY_Mary|r
    .turnin 175 >> Gebt die Quest Seht zu den Sternen ab
    .accept 177 >> Seht zu den Sternen annehmen
    .target Blind Mary
    .isQuestTurnedIn 174
step
    .goto Duskwood,77.48,44.29
    >>Sprich mit |cRXP_FRIENDLY_Felicia|r
    .fp Duskwood >> Erlernt die Flugroute in den Dämmerwald
    .target Felicia Mane
step
    #completewith Kzixx
    .goto Duskwood,76.66,23.49,60,0
    .goto Duskwood,81.82,19.76,20 >>Reist zu |cRXP_FRIENDLY_Kzixx|r
step
    .goto Duskwood,81.82,19.76
    >>Sprecht mit |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Kauft|r |T134851:0|t[Geringer Manatrank] |cRXP_BUY_und|r |T134831:0|t[Heiltrank] |cRXP_BUY_bei ihm (falls verfügbar)|r
    .itemcount 4827,1
    .target Kzixx
step
    .goto Duskwood,81.82,19.76
    >>Sprecht mit |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Kauft|r |T134851:0|t[Geringer Manatrank] |cRXP_BUY_und|r |T134831:0|t[Heiltrank] |cRXP_BUY_bei ihm (falls verfügbar)|r
    .itemcount 4828,1
    .target Kzixx
step
    .goto Duskwood,81.82,19.76
    >>Sprecht mit |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Kauft|r |T134851:0|t[Geringer Manatrank] |cRXP_BUY_und|r |T134831:0|t[Heiltrank] |cRXP_BUY_bei ihm (falls verfügbar)|r
    .itemcount 4829,1
    .target Kzixx
step
    #label Kzixx
    .goto Duskwood,81.82,19.76
    >>Sprecht mit |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Kauft|r |T134851:0|t[Geringer Manatrank]|cRXP_BUY_,|r |T134831:0|t[Heiltrank]|cRXP_BUY_ und einen|r |T132515:0|t[Stoffgürtel] |cRXP_BUY_bei ihm (falls verfügbar und falls benötigt)|r
    .itemcount 4827,<1
    .itemcount 4828,<1
    .itemcount 4829,<1
    .target Kzixx
step
    #completewith Gnolls
    >>AoE |cRXP_ENEMY_Tarantel|r. Plündert sie für |cRXP_LOOT_Knuspriges Spinnenfleisch|r
    >>AoE |cRXP_ENEMY_Großer Geiferzahn|r. Plündert sie für |cRXP_LOOT_Große Geiferzahnschnauze|r und |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
    .mob +Tarantula
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob +Great Goretusk
    .collect 769,50,90,1,1 --Chunk of Boar Meat (50)
    .mob +Great Goretusk
    .skill cooking,50,1
step
    #completewith Gnolls
    >>AoE |cRXP_ENEMY_Tarantel|r. Plündert sie für |cRXP_LOOT_Knuspriges Spinnenfleisch|r
    >>AoE |cRXP_ENEMY_Großer Geiferzahn|r. Plündert sie für |cRXP_LOOT_Große Geiferzahnschnauze|r
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
    .mob +Tarantula
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob +Great Goretusk
    .skill cooking,<50,1
step
    .goto Redridge Mountains,15.52,72.58,60,0
    .goto Redridge Mountains,14.87,70.30,60,0
    .goto Redridge Mountains,16.93,70.20
    >>Sprecht mit |cRXP_FRIENDLY_Parker|r
    .accept 244 >>Akzeptiert die Quest Eindringende Gnolle
    .target Guard Parker
step << skip
    #label AoE1
    .goto Redridge Mountains,15.73,62.47,60 >>Tötet die |cRXP_ENEMY_Bastard der Rotkammgnolle|r und |cRXP_ENEMY_Hauer der Rotkammgnolle|r mit Flächenschaden
    .isOnQuest 244
step << skip
    #completewith Gnolls
    >>AoE |cRXP_ENEMY_Großer Geiferzahn|r. Plündert sie für |cRXP_LOOT_Große Geiferzahnschnauze|r und |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .collect 769,50,90,1,1 --Chunk of Boar Meat (50)
    .mob Great Goretusk
    .skill cooking,50,1
step << skip
    #completewith next
    >>AoE |cRXP_ENEMY_Großer Geiferzahn|r. Plündert sie für |cRXP_LOOT_Große Geiferzahnschnauze|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
    .skill cooking,50
step
    #label Gnolls
    .goto Redridge Mountains,30.74,59.99
    >>Sprecht mit |cRXP_FRIENDLY_Feldon|r
    .turnin 244 >>Gebt die Quest Eindringende Gnolle ab
    .accept 246 >>Akzeptiert die Quest Einschätzung der Gefahr
    .target Deputy Feldon
step
    .goto Redridge Mountains,30.59,59.40
    >>Sprecht mit |cRXP_FRIENDLY_Ariena|r
    .fp Redridge Mountains >> Erlernt die Flugroute zum Rotkammgebirge
step
    >>Sprecht mit |cRXP_FRIENDLY_Marris|r und |cRXP_FRIENDLY_Oslow|r
    .accept 20 >>Akzeptiert die Quest Bedrohung durch die Blackrock
    .target +Marshal Marris
    .goto Redridge Mountains,33.51,48.96
    .accept 125 >>Akzeptiert die Quest Die verlorenen Werkzeuge
    .turnin 345 >>Gebt die Quest Tinten-Zutaten ab
    .accept 347 >>Rethbanerz annehmen
    .goto Redridge Mountains,32.14,48.64
    .target +Foreman Oslow
step
    .goto Redridge Mountains,29.89,47.36
    >>Sprecht mit |cRXP_FRIENDLY_Karen|r
    >>|cRXP_BUY_Kauft eine|r |T134708:0|t[Spitzhacke] |cRXP_BUY_bei ihr|r
    >>|cRXP_WARN_Ihr werdet das für später benötigen|r
    .collect 2901,1,125,1 --Mining Pick (1)
    .target Karen Taylor
step
    >>Sprecht mit |cRXP_FRIENDLY_Conacher|r
--  .accept 120 >>Accept Messenger to Stormwind
--  .goto Redridge Mountains,29.99,44.45
    .accept 91 >>Das Gesetz des Solomon annehmen
    .goto Redridge Mountains,29.72,44.26
--  .target Magistrate Solomon
    .target Bailiff Conacher
step
    >>Sprecht mit |cRXP_FRIENDLY_Baren|r und den |cRXP_PICK_Gesucht Steckbrief|r
    .accept 127 >>Fischhandel annehmen
    .goto Redridge Mountains,27.72,47.38
    .accept 180 >>GESUCHT: Leutnant Fangor annehmen
    .goto Redridge Mountains,26.75,46.42
    .target Dockmaster Baren
step
    #sticky
    #label Darcy1
    .goto Redridge Mountains,26.92,44.95,0,0
    >>Betretet Das Gasthaus
    >>Sprecht mit |cRXP_FRIENDLY_Darcy|r
    .accept 129 >>Akzeptiert die Quest Ein geschenktes Mittagessen
    .target Darcy
step
    .goto Redridge Mountains,26.49,43.95
    >>Betretet Das Gasthaus
    >>Sprecht mit |cRXP_FRIENDLY_Daniels|r
    .accept 116 >>Akzeptiert die Quest Trockene Zeiten
    .turnin 116 >>Gebt die Quest Trockene Zeiten ab
    .target Barkeep Daniels
step
    .goto Redridge Mountains,26.47,45.33
    >>Betretet Das Gasthaus
    >>Sprecht mit |cRXP_FRIENDLY_Wiley|r indem ihr vom Treppengeländer herunter springt
    .turnin 65 >>Gebt die Quest Die Bruderschaft der Defias ab
--  .accept 132 >>Accept The Defias Brotherhood
    .target Wiley the Black
step
    .goto Redridge Mountains,29.32,53.64
    >>Sprecht mit |cRXP_FRIENDLY_Shawn|r
    .accept 3741 >>Akzeptiert die Quest Hilarys Halskette
    .target Shawn
step
    .goto Redridge Mountains,31.29,54.27,90,0
    .goto Redridge Mountains,27.80,56.05,90,0
    .goto Redridge Mountains,26.56,50.63,90,0
    .goto Redridge Mountains,23.96,55.17,90,0
    .goto Redridge Mountains,19.16,51.75,90,0
    .goto Redridge Mountains,31.12,54.21,90,0
    .goto Redridge Mountains,34.03,55.34,90,0
    .goto Redridge Mountains,38.09,54.49
    >>|cRXP_WARN_Schwimmt unter Wasser und überprüft die Spawn-Punkte. Es gibt 8 Plätze mit 2 Spawns gleichzeitig|r
    >>Öffnet |cRXP_PICK_Glitzernder Matsch|r. Plündert es für |cRXP_LOOT_Hilarys Halskette|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 3741,1 --Hilary's Necklace (1)
step
    .goto Redridge Mountains,29.24,53.63
    >>Sprecht mit |cRXP_FRIENDLY_Hilary|r
    .turnin 3741 >>Gebt die Quest Hilarys Halskette ab
    .target Hilary
step
    #completewith Gnolls2
    >>AoE |cRXP_ENEMY_Großer Geiferzahn|r. Plündert sie für |cRXP_LOOT_Große Geiferzahnschnauze|r und |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .collect 769,50,90,1,1 --Chunk of Boar Meat (50)
    .mob Great Goretusk
    .skill cooking,50,1
step
    #completewith next
    >>AoE |cRXP_ENEMY_Großer Geiferzahn|r. Plündert sie für |cRXP_LOOT_Große Geiferzahnschnauze|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
    .skill cooking,<50,1
step
    #label Gnolls2
    .goto Redridge Mountains,15.73,62.47
    >>Tötet die |cRXP_ENEMY_Bastard der Rotkammgnolle|r und |cRXP_ENEMY_Hauer der Rotkammgnolle|r mit Flächenschaden
    .complete 246,1,1 --Redridge Mongrel (1)
    .mob Redridge Mongrel
    .mob Redridge Thrasher
step
    #completewith Gnolls3
    >>AoE |cRXP_ENEMY_Tarantel|r. Plündert sie für |cRXP_LOOT_Knuspriges Spinnenfleisch|r
    >>AoE |cRXP_ENEMY_Großer Geiferzahn|r. Plündert sie für |cRXP_LOOT_Große Geiferzahnschnauze|r und |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
    .mob +Tarantula
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob +Great Goretusk
    .collect 769,50,90,1,1 --Chunk of Boar Meat (50)
    .mob +Great Goretusk
    .skill cooking,50,1
step
    #completewith Gnolls3
    >>AoE |cRXP_ENEMY_Tarantel|r. Plündert sie für |cRXP_LOOT_Knuspriges Spinnenfleisch|r
    >>AoE |cRXP_ENEMY_Großer Geiferzahn|r. Plündert sie für |cRXP_LOOT_Große Geiferzahnschnauze|r
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
    .mob +Tarantula
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob +Great Goretusk
    .skill cooking,<50,1
step
    .goto Redridge Mountains,15.52,72.58,60,0
    .goto Redridge Mountains,14.87,70.30,60,0
    .goto Redridge Mountains,16.93,70.20
    >>Sprecht mit |cRXP_FRIENDLY_Parker|r
    .turnin 129 >>Gebt die Quest Ein geschenktes Mittagessen ab
    .accept 130 >>Akzeptiert die Quest Besuch im Kräuterladen
    .target Guard Parker
step
    #label Gnolls3
    .goto Redridge Mountains,29.40,83.93,60,0
    .goto Redridge Mountains,30.95,84.10,60,0
    .goto Redridge Mountains,32.26,82.83,60,0
    .goto Redridge Mountains,34.60,82.99,60,0
    .goto Redridge Mountains,43.37,71.01,60,0
    .goto Redridge Mountains,29.40,83.93,60,0
    .goto Redridge Mountains,30.95,84.10,60,0
    .goto Redridge Mountains,32.26,82.83,60,0
    .goto Redridge Mountains,34.60,82.99,60,0
    .goto Redridge Mountains,43.37,71.01
    >>Tötet die |cRXP_ENEMY_Bastard der Rotkammgnolle|r, |cRXP_ENEMY_Hauer der Rotkammgnolle|r, und |cRXP_ENEMY_Wilderer der Rotkammgnolle|r mit Flächenschaden
    >>|cRXP_WARN_Erinnert euch, den toten Winkel bei den|r Wilderer der Rotkammgnolle|cRXP_ENEMY_ zu nutzen|r
    .complete 246,1 --Redridge Mongrel (10)
    .mob +Redridge Mongrel
    .complete 246,2 --Redridge Poacher (6)
    .mob +Redridge Poacher
step
    .goto Redridge Mountains,30.74,59.99
    >>Sprecht mit |cRXP_FRIENDLY_Feldon|r
    .turnin 246 >>Gebt die Quest Einschätzung der Gefahr ab
    .target Deputy Feldon
step
    .goto Redridge Mountains,41.52,54.68,-1
    >>Geht unter Wasser
    >>Öffnet die |cRXP_PICK_Versunkene Truhe|r. Plündert sie für |cRXP_LOOT_Oslows Werkzeugkasten|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 125,1 --Oslow's Toolbox (1)
step
    #completewith next
    .goto Redridge Mountains,40.30,45.98,60,0
    >>Tötet die |cRXP_ENEMY_Murlocfleischfresser|r und die |cRXP_ENEMY_Murlocspäher|r. Plündert sie, um einige der |cRXP_LOOT_Gefleckter Sonnenfisch|r und |cRXP_LOOT_Murlocflossen|r zu erhalten
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
    .mob Murloc Flesheater
    .mob Murloc Scout
step
    .goto Redridge Mountains,32.14,48.63
    >>Sprecht mit |cRXP_FRIENDLY_Oslow|r
    .turnin 125 >>Gebt die Quest Die verlorenen Werkzeuge ab
    .accept 89 >>Akzeptiert die Quest Die Immerruhbrücke
    .target Foreman Oslow
step
    .goto Redridge Mountains,30.83,46.49
    >>Sprecht mit |cRXP_FRIENDLY_Dorin|r
    .vendor >> Verkauft Müll
    .target Dorin Songblade
    .isOnQuest 89
step << skip
    #completewith next
    .goto Redridge Mountains,29.24,45.40,10,0
    .goto Redridge Mountains,28.89,44.87,8 >>Geh ins Rathaus
step
    .goto Redridge Mountains,37.16,45.20,60,0
    .goto Redridge Mountains,38.36,41.34,60,0
    .goto Redridge Mountains,38.89,31.72,60,0
    .goto Redridge Mountains,43.25,34.03,60,0
    .goto Redridge Mountains,47.37,34.77,60,0
    .goto Redridge Mountains,55.35,45.02,60,0
    .goto Redridge Mountains,57.02,51.01,60,0
    .goto Redridge Mountains,56.24,53.93,60,0
    .goto Redridge Mountains,58.38,53.56,60,0
    .goto Redridge Mountains,58.47,44.61,60,0
    .goto Redridge Mountains,59.11,43.97,60,0
    .goto Redridge Mountains,59.74,42.01,60,0
    .goto Redridge Mountains,62.34,41.76,60,0
    .goto Redridge Mountains,62.56,45.36,60,0
    >>AoE |cRXP_ENEMY_Kundschafter der Blackrock|r, |cRXP_ENEMY_Renegat des Schwarzfels|r und |cRXP_ENEMY_Grunzer der Blackrock|r. Plündert sie für |cRXP_LOOT_Kampferprobte Axt|r
    >>AoE |cRXP_ENEMY_Murlocgezeitenrufer|r und |cRXP_ENEMY_Murlocspäher|r. Plündert sie für |cRXP_LOOT_Gefleckter Sonnenfisch|r und |cRXP_LOOT_Murlocflosse|r
    >>AoE |cRXP_ENEMY_Terrorkondor|r. Plündert sie für ihr |cRXP_LOOT_Zähes Kondorfleisch|r
    >>AoE |cRXP_ENEMY_Große Tarantel|r. Plündert sie für |cRXP_LOOT_Knuspriges Spinnenfleisch|r
    >>AoE |cRXP_ENEMY_Großer Geiferzahn|r. Plündert sie für |cRXP_LOOT_Große Geiferzahnschnauze|r
    >>AoE |cRXP_ENEMY_Mystiker der Rotkammgnolle|r und |cRXP_ENEMY_Schläger der Rotkammgnolle|r Plündert sie für |cRXP_LOOT_Eisenspitze|r und |cRXP_LOOT_Eisenniete|r
    >>|cRXP_WARN_Seid vorsichtig denn |cRXP_ENEMY_Kundschafter der Blackrock|r wirken|r |T132149:0|t[Netz]|cRXP_WARN_, |cRXP_ENEMY_Terrorkondor|r wirkt|r |T132154:0|t[Niederschlagen]
    .complete 20,1 --Blackrock Axe (10)
#loop
	.line Redridge Mountains,37.16,45.20,38.36,41.34,40.09,40.64,42.89,39.26,59.36,44.56,59.79,42.05,62.58,41.46,62.57,45.48,59.36,44.56
	.goto Redridge Mountains,37.16,45.20,30,0
	.goto Redridge Mountains,38.36,41.34,30,0
	.goto Redridge Mountains,40.09,40.64,30,0
	.goto Redridge Mountains,42.89,39.26,30,0
	.goto Redridge Mountains,59.36,44.56,30,0
	.goto Redridge Mountains,59.79,42.05,30,0
	.goto Redridge Mountains,62.58,41.46,30,0
	.goto Redridge Mountains,62.57,45.48,30,0
	.goto Redridge Mountains,59.36,44.56,30,0
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
    .goto Redridge Mountains,58.06,52.01,40,0
    .goto Redridge Mountains,57.08,51.03,40,0
    .goto Redridge Mountains,56.12,53.55,40,0
    .goto Redridge Mountains,58.06,52.01
    .collect 1080,5,92,1 --Tough Condor Meat (5)
#loop
	.line Redridge Mountains,43.25,34.03,47.37,34.77,47.37,34.77,49.97,33.60,51.90,39.75,54.81,40.66,54.70,44.93,57.63,46.48
	.goto Redridge Mountains,43.25,34.03,30,0
	.goto Redridge Mountains,47.37,34.77,30,0
	.goto Redridge Mountains,47.37,34.77,30,0
	.goto Redridge Mountains,49.97,33.60,30,0
	.goto Redridge Mountains,51.90,39.75,30,0
	.goto Redridge Mountains,54.81,40.66,30,0
	.goto Redridge Mountains,54.70,44.93,30,0
	.goto Redridge Mountains,57.63,46.48,30,0
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
#loop
	.line Redridge Mountains,52.26,36.56,54.08,38.28,54.98,40.31,56.79,41.36,57.26,47.60,54.76,45.58,52.67,42.73,50.50,41.55,52.26,36.56
	.goto Redridge Mountains,52.26,36.56,30,0
	.goto Redridge Mountains,54.08,38.28,30,0
	.goto Redridge Mountains,54.98,40.31,30,0
	.goto Redridge Mountains,56.79,41.36,30,0
	.goto Redridge Mountains,57.26,47.60,30,0
	.goto Redridge Mountains,54.76,45.58,30,0
	.goto Redridge Mountains,52.67,42.73,30,0
	.goto Redridge Mountains,50.50,41.55,30,0
	.goto Redridge Mountains,52.26,36.56,30,0
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .disablecheckbox
    .complete 89,1 --Iron Pike (5)
    .disablecheckbox
    .complete 89,2 --Iron Rivet (5)
    .disablecheckbox
    .goto Redridge Mountains,38.89,31.72
    .mob Blackrock Outrunner
    .mob Blackrock Grunt
    .mob Blackrock Renegade
    .mob Murloc Scout
    .mob Murloc Tidecaller
    .mob Dire Condor
    .mob Greater Tarantula
    .mob Great Goretusk
    .mob Redridge Mystic
    .mob Redridge Brute
step
    #completewith Herbalist
    .goto Redridge Mountains,36.64,37.01,60,0
    .goto Redridge Mountains,32.21,40.09,60,0
    >>AoE |cRXP_ENEMY_Mystiker der Rotkammgnolle|r und |cRXP_ENEMY_Schläger der Rotkammgnolle|r Plündert sie für |cRXP_LOOT_Eisenspitze|r und |cRXP_LOOT_Eisenniete|r
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .mob Redridge Mystic
    .mob Redridge Brute
step
    .goto Redridge Mountains,22.68,43.83
    >>Geht hinein
    >>Sprecht mit |cRXP_FRIENDLY_Breanna|r
    .accept 92 >> Akzeptiert die Quest Rotkammgulasch
    .turnin 92 >> Gebt die Quest Rotkammgulasch ab
    .target Chef Breanna
    .itemcount 1080,5
    .itemcount 1081,5
    .itemcount 2296,5
step
    #label Herbalist
    .goto Redridge Mountains,21.86,46.33
    >>Sprecht mit |cRXP_FRIENDLY_Martie|r
    .turnin 130 >>Gebt die Quest Besuch im Kräuterladen ab
    .accept 131 >>Akzeptiert die Quest Narzissen für eine Dame
    .accept 34 >>Ein ungebetener Gast annehmen
    .target Martie Jainrose
step
    #completewith next
    .goto Redridge Mountains,17.72,55.71,60,0
    .goto Redridge Mountains,16.09,53.08,60,0
    >>AoE |cRXP_ENEMY_Großer Geiferzahn|r. Plündert sie für |cRXP_LOOT_Große Geiferzahnschnauze|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
step
    .goto Redridge Mountains,15.66,49.31
    >>Tötet |cRXP_ENEMY_Stopfwanst|r
    >>|cRXP_WARN_Zieht sie zum Zaun nördlich von |cRXP_FRIENDLY_Lamar|r. Springt hin und her, um von einem sicheren Platz anzugreifen, ohne Schaden zu nehmen|r
    >>Seid vorsichtig denn |cRXP_ENEMY_Stopfwanst|r casts |T132337:0|t[Ansturm] und |T136025:0|t[Trampeln]
    .complete 34,1 --Bellygrub's Tusk (1)
    .mob Bellygrub
    .target Lamar Veisilli
step
    .goto Redridge Mountains,21.86,46.33
    >>Sprecht mit |cRXP_FRIENDLY_Martie|r
    .turnin 34 >>Gebt die Quest Ein ungebetener Gast ab
    .target Martie Jainrose
step
    .goto Redridge Mountains,17.47,43.62,60,0
    .goto Redridge Mountains,20.92,39.37,60,0
    .goto Redridge Mountains,17.72,55.71,60,0
    .goto Redridge Mountains,16.09,53.08,60,0
    .goto Redridge Mountains,17.47,43.62,60,0
    .goto Redridge Mountains,20.92,39.37,60,0
    .goto Redridge Mountains,17.72,55.71,60,0
    .goto Redridge Mountains,16.09,53.08
    >>AoE |cRXP_ENEMY_Großer Geiferzahn|r. Plündert sie für |cRXP_LOOT_Große Geiferzahnschnauze|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
step
    #completewith next
    .goto Redridge Mountains,21.35,36.34,60,0
    >>AoE |cRXP_ENEMY_Mystiker der Rotkammgnolle|r und |cRXP_ENEMY_Schläger der Rotkammgnolle|r Plündert sie für |cRXP_LOOT_Eisenspitze|r und |cRXP_LOOT_Eisenniete|r
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .mob Redridge Mystic
    .mob Redridge Brute
step
    .goto Redridge Mountains,19.50,31.91,60,0
    .goto Redridge Mountains,20.58,28.29,40 >>Reist zu den Rethbanhöhlen
    .isOnQuest 347
step
#loop
	.line Redridge Mountains,18.95,24.50,21.62,23.72,21.89,15.06,20.21,13.25,18.82,15.03,16.06,17.08,17.48,19.55,16.05,21.04,18.95,24.50
	.goto Redridge Mountains,18.95,24.50,20,0
	.goto Redridge Mountains,21.62,23.72,20,0
	.goto Redridge Mountains,21.89,15.06,20,0
	.goto Redridge Mountains,20.21,13.25,20,0
	.goto Redridge Mountains,18.82,15.03,20,0
	.goto Redridge Mountains,16.06,17.08,20,0
	.goto Redridge Mountains,17.48,19.55,20,0
	.goto Redridge Mountains,16.05,21.04,20,0
	.goto Redridge Mountains,18.95,24.50,20,0
    >>AoE |cRXP_ENEMY_Zwangsarbeiter der Rotkammgnolle|r. Plündert sie für |cRXP_LOOT_Rethbanerz|r, |cRXP_LOOT_Eisenspitze|r, und |cRXP_LOOT_Eisenniete|r
    >>AoE |cRXP_ENEMY_Berster der Rotkammgnolle|r. Plündert sie für |cRXP_LOOT_Eisenspitze|r und |cRXP_LOOT_Eisenniete|r
    >>Baut die |cRXP_PICK_Kupferadern|r in der Höhle ab. Plündert sie, um das |cRXP_LOOT_Rethbanerz|r zu erhalten
    .complete 347,1 --Rethban Ore (5)
    .mob +Redridge Drudger
    .complete 89,1 --Iron Pike (5)
    .mob +Redridge Basher
    .complete 89,2 --Iron Rivet (5)
    .mob +Redridge Basher
step
#loop
	.line Redridge Mountains,18.95,24.50,21.62,23.72,21.89,15.06,20.21,13.25,18.82,15.03,16.06,17.08,17.48,19.55,16.05,21.04,18.95,24.50
	.goto Redridge Mountains,18.95,24.50,20,0
	.goto Redridge Mountains,21.62,23.72,20,0
	.goto Redridge Mountains,21.89,15.06,20,0
	.goto Redridge Mountains,20.21,13.25,20,0
	.goto Redridge Mountains,18.82,15.03,20,0
	.goto Redridge Mountains,16.06,17.08,20,0
	.goto Redridge Mountains,17.48,19.55,20,0
	.goto Redridge Mountains,16.05,21.04,20,0
	.goto Redridge Mountains,18.95,24.50,20,0
    .xp 21+14365 >> Farmt bis 14365+/25200xp
    .isQuestAvailable 92
step
#loop
	.line Redridge Mountains,18.95,24.50,21.62,23.72,21.89,15.06,20.21,13.25,18.82,15.03,16.06,17.08,17.48,19.55,16.05,21.04,18.95,24.50
	.goto Redridge Mountains,18.95,24.50,20,0
	.goto Redridge Mountains,21.62,23.72,20,0
	.goto Redridge Mountains,21.89,15.06,20,0
	.goto Redridge Mountains,20.21,13.25,20,0
	.goto Redridge Mountains,18.82,15.03,20,0
	.goto Redridge Mountains,16.06,17.08,20,0
	.goto Redridge Mountains,17.48,19.55,20,0
	.goto Redridge Mountains,16.05,21.04,20,0
	.goto Redridge Mountains,18.95,24.50,20,0
    .xp 21+15715 >> Farmt bis 15715+/25200xp
    .isQuestTurnedIn 92
step << skip
    #completewith next
    .goto Redridge Mountains,18.79,13.84,-1
    .goto Redridge Mountains,22.04,17.14,-1
    .goto Redridge Mountains,18.40,24.13,-1
    .goto Redridge Mountains,21.29,24.06,-1
    .goto Redridge Mountains,16.58,20.97,-1
    .goto Redridge Mountains,33.82,48.07,30 >>Logout-Skip aus der Höhle (auf der Ostseite) zurück nach Seenhain
step
    #completewith next
    .subzone 69 >> Kehrt nach Seenhain zurück
step
    >>Sprecht mit |cRXP_FRIENDLY_Marris|r und |cRXP_FRIENDLY_Oslow|r
    .turnin 20 >>Gebt die Quest Bedrohung durch die Blackrock ab
    .accept 19 >>Tharil'zun annehmen
    .target +Marshal Marris
    .goto Redridge Mountains,33.51,48.96
    .turnin 89,1 >>Gebt die Quest Die Immerruhbrücke ab
    .goto Redridge Mountains,32.14,48.64
    .target +Foreman Oslow
step
    .goto Redridge Mountains,30.94,47.24
    >>Sprecht mit |cRXP_FRIENDLY_Verner|r
    .accept 118 >>Akzeptiert die Quest Der Preis für Hufeisen
    .target Verner Osgood
step
    .goto Redridge Mountains,27.72,47.38
    >>Sprecht mit |cRXP_FRIENDLY_Baren|r
    .turnin 127 >> Gebt die Quest Fischhandel ab
    .accept 150 >> Murlocwilderer annehmen
    .turnin 150 >> Gebt die Quest Murlocwilderer ab
    .goto Redridge Mountains,27.72,47.38
    .target Dockmaster Baren
step
    #sticky
    #label Kimberly
    .goto Redridge Mountains,27.08,45.54,0,0
    .vendor >> Verkauft Müll. Ihr könnt die |T134708:0|t[Spitzhacke] jetzt verkaufen, wenn ihr möchtet
    .target Kimberly Hiett
step
    .goto Redridge Mountains,26.92,44.95
    >>Betretet Das Gasthaus
    >>Sprecht mit |cRXP_FRIENDLY_Darcy|r
    .turnin 131 >>Gebt die Quest Narzissen für eine Dame ab
    .target Darcy
step
    #completewith next
    .goto Redridge Mountains,26.52,46.38,12,0
    .goto Redridge Mountains,22.86,44.57,12,0
    >>Reist zu |cRXP_FRIENDLY_Breanna|r
step
    .goto Redridge Mountains,22.68,43.83
    >>Geht hinein
    >>Sprecht mit |cRXP_FRIENDLY_Breanna|r
    .accept 92 >> Akzeptiert die Quest Rotkammgulasch
    .turnin 92 >> Gebt die Quest Rotkammgulasch ab
    .target Chef Breanna
step
    #completewith next
    .hs >> Ruhestein nach Goldhain
step
    .goto Elwynn Forest,41.71,65.55
    >>Sprecht mit |cRXP_FRIENDLY_Argus|r
    .turnin 118 >>Gebt die Quest Der Preis für Hufeisen ab
    .accept 119 >>Akzeptiert die Quest Zurück zu Verner
    .target Smith Argus
step
    #completewith next
    .goto Elwynn Forest,48.79,41.56,10,0
    .goto Elwynn Forest,49.26,40.69,10,0
    .goto Elwynn Forest,49.61,40.41,10 >>Reist zu |cRXP_FRIENDLY_Paxton|r
step
    .goto Elwynn Forest,49.61,40.41
    >>Sprecht mit |cRXP_FRIENDLY_Paxton|r
    .turnin 347 >> Gebt Rethbanerz ab
    .accept 346 >> Rückkehr zu Kristoff annehmen
    .target Brother Paxton
step
    #completewith CharysEnd
    .cast 3561 >> Caste [Teleportieren: Sturmwind]
    .zoneskip Stormwind City
step
    #completewith CharysEnd
    >>|cRXP_WARN_===ACHTUNG===|r
    +|cRXP_WARN_Spezialisiert euch auf die Frostschaden-AoE-Spezialisierung|r
    .xp <22,1
step
    .goto Stormwind City,38.23,81.86
    >>Sprecht mit |cRXP_FRIENDLY_Dumas|r
    .train 10 >> Erlernt Blizzard
    .target Maginor Dumas
    .xp <22,1
step
    #completewith CharysEnd
    .goto Stormwind City,36.73,82.44,10,0
    .goto Stormwind City,37.91,81.92,10,0
    .goto Stormwind City,38.10,80.93,8,0
    .goto Stormwind City,37.49,81.35,6,0
    .goto Stormwind City,38.46,80.61,8,0
    .goto Stormwind City,33.65,81.58,15,0
    .goto Stormwind City,31.12,79.42,15,0
    .goto Stormwind City,32.07,81.50,10,0
    .goto Stormwind City,32.63,80.62,8,0
    >>Verlasst den Magierturm
    .goto Stormwind City,32.16,79.84,10 >>Reist zu |cRXP_FRIENDLY_Charys|r
step
    #completewith BankDeposit
    +|cRXP_WARN_Geht nicht unter 1g 43s 30c|r
    .xp >22,1
step
    .goto Stormwind City,32.16,79.84
    >>Betretet das Gebäude
    >>Sprich mit |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Kauft|r |T134851:0|t[Geringer Manatrank] |cRXP_BUY_und|r |T134831:0|t[Heiltrank] |cRXP_BUY_bei ihm (falls verfügbar)|r
    .itemcount 4827,1
    .target Charys Yserian
step
    .goto Stormwind City,32.16,79.84
    >>Betretet das Gebäude
    >>Sprich mit |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Kauft|r |T134851:0|t[Geringer Manatrank] |cRXP_BUY_und|r |T134831:0|t[Heiltrank] |cRXP_BUY_bei ihm (falls verfügbar)|r
    .itemcount 4828,1
    .target Charys Yserian
step
    .goto Stormwind City,32.16,79.84
    >>Betretet das Gebäude
    >>Sprich mit |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Kauft|r |T134851:0|t[Geringer Manatrank] |cRXP_BUY_und|r |T134831:0|t[Heiltrank] |cRXP_BUY_bei ihm (falls verfügbar)|r
    .itemcount 4829,1
    .target Charys Yserian
step
    #label CharysEnd
    .goto Stormwind City,32.16,79.84
    >>Betretet das Gebäude
    >>Sprich mit |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Kauft|r |T134851:0|t[Geringer Manatrank]|cRXP_BUY_,|r |T134831:0|t[Heiltrank]|cRXP_BUY_ und einen|r |T132515:0|t[Stoffgürtel] |cRXP_BUY_bei ihm (falls verfügbar und falls benötigt)|r
    .itemcount 4827,<1
    .itemcount 4828,<1
    .itemcount 4829,<1
    .target Charys Yserian
step
    #completewith next
    .goto Stormwind City,39.32,71.54,20,0
    .goto Stormwind City,41.06,69.44,20,0
    .goto Stormwind City,44.02,69.81,20,0
    .goto Stormwind City,46.32,66.93,20,0
    .goto Stormwind City,42.45,61.76,20,0
    .goto Stormwind City,41.17,63.74,15,0
    .goto Stormwind City,41.57,65.46,10 >>Reist zu |cRXP_FRIENDLY_Adair|r
step
    #label AdairX
    .goto Stormwind City,41.57,65.46
    >>Betretet das Gebäude
    >>Sprich mit |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >> |cRXP_BUY_Kauft alle bis auf Intelligenz|r |T134943:0|t[Schriftrollen] |cRXP_BUY_von ihm (falls vorhanden)|r
    .target Adair Gilroy
step
    #completewith next
    .goto Stormwind City,37.84,58.50,5,0
    .goto Stormwind City,37.81,45.02,20 >>Lauft an der Kante der Mauer entlang, anstatt herumzugehen
step
    .goto Stormwind City,45.70,38.42
    >>Sprecht mit |cRXP_FRIENDLY_Kristoff|r
    .turnin 346 >> Gebt die Quest Rückkehr zu Kristoff ab
    .target Brother Kristoff
step
    .goto Stormwind City,55.25,7.07
    >>Sprecht mit |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_wenn er sie hat|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith next
    .goto Stormwind City,63.89,8.25,20 >> Reist zu der Tiefenbahn
step
    #completewith next
    +|cRXP_WARN_Fahrt mit der Tiefenbahn, während ihr Pausenlos |r ||T132816:0|t[Wasser herbeizaubern Rang 3] wirkt
step
    .zone Ironforge >> Nehmt die Tiefenbahn nach Eisenschmiede
step
    .goto Ironforge,67.83,42.47
    >>Sprecht mit |cRXP_FRIENDLY_Cogspinner|r
    .vendor 5175>>|cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_wenn er sie hat|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith BankDeposit
    .goto Ironforge,33.44,63.56,30 >>Betretet die Eisenschmiede-Bank
step
    .goto Ironforge,35.93,60.13
    >>Sprich mit |cRXP_FRIENDLY_Bailey|r
    >>|cRXP_WARN_HINWEIS: Ihr benötigt 12 Stapel von jedem Stoff (|r|T132911:0|t[Wollstoff]|cRXP_WARN_,|r |T132905:0|t[Seidenstoff]|cRXP_WARN_,|r |T132892:0|t[Magiestoff]|cRXP_WARN_,|r und |T132903:0|t[Runenstoff]|cRXP_WARN_), um die Stoffe später abzugeben. Ihr bekommt diese auf natürliche Weise, während ihr levelt.|r
    .bankdeposit 17056,2592,1015,1083,2665,1922,1284 >> Packe folgende Items in die Bank:
    >>|T132917:0|t[Leichte Feder]
    >>|T132911:0|t[Wollstoff]
    >>|T133970:0|t[Magere Wolfflanke]
    >>|T133277:0|t[Glyphe von Azora]
    >>|T133849:0|t[Würzkräuter aus Stormwind]
    >>|T133629:0|t[Vorräte for Sven]
    >>|T132761:0|t[Kiste mit Hufeisen]
    .target Bailey Stonemantle
step
    #label BankDeposit
    .goto Ironforge,35.93,60.13
    .bankwithdraw 4654 >> Hol folgende Items aus deiner Bank:
    >>|T134431:0|t[Geheimnisvolles Fossil]
    .target Bailey Stonemantle
step
    .goto Ironforge,25.50,7.04
    >>Sprecht mit |cRXP_FRIENDLY_Milstaff|r
    .train 3562 >> Lerne |T135757:0|t[Teleportieren: Ironforge]
    .target Milstaff Stormeye
step
    #completewith FlyMene
    >>|cRXP_WARN_===ACHTUNG===|r
    +|cRXP_WARN_Spezialisiert euch auf die Frostschaden-AoE-Spezialisierung|r
step
    .goto Ironforge,27.18,8.60
    >>Sprich mit |cRXP_FRIENDLY_Dink|r
    .train 10 >> Erlernt Blizzard
    .target Dink
step
    #completewith next
    +|cRXP_WARN_Start spam casting|r |T132816:0|t[Wasser herbeizaubern Rang 3] |cRXP_WARN_um so viel Wasser wie möglich vor dem Flug herzustellen|r
step
    #completewith next
    #label FlyMene
    .goto Ironforge,55.50,47.74
    >>Sprich mit |cRXP_FRIENDLY_Gryth|r
    .fly Menethil >> Fliege zum Hafen von Menethil
    .target Gryth Thurden
step
    .zone Wetlands >> Reist ins Sumpfland
]])
