if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
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
    .goto 1429/0,-146.20,-8999.660,50,0
    +|cRXP_WARN_Tötet |cRXP_ENEMY_Junge Wölfe|r. Plündert sie, bis ihr 10 Kupfer Wert an Verkäufsgegenständen habt|r
    .mob Young Wolf
step
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Willem|r
    .accept 783 >> Akzeptiert die Quest Die Bedrohung von innen
    .target Deputy Willem
step
    .goto 1429/0,-112.54,-8899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Danil|r
    .vendor >> Verkauft den trash, bis ihr 10+ Kupfer habt
    .target Brother Danil
step
    .goto 1429/0,-139.61,-8910.09,15,0
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_McBride|r innerhalb
    .turnin 783 >> Gebt die Quest Die Bedrohung von innen ab
    .accept 7 >> Akzeptiert die Quest Säuberung im Koboldlager
    .target Marshal McBride
step
    #completewith next
    .goto 1429/0,-164.25,-8891.80,10,0
    .goto 1429/0,-174.32,-8880.92,10,0
    .goto 1429/0,-188.20,-8868.89,10,0
    .goto 1429/0,-180.56,-8862.87,5,0
    >>Springt von der Treppe auf das Geländer
    .goto 1429/0,-188.20,-8851.76,10 >>Geht |cRXP_FRIENDLY_Khelden|r die Treppe hoch
step
    .goto 1429/0,-188.20,-8851.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Khelden|r
    .train 1459 >> Erlernt |T135932:0|t[Arkane Intelligenz]
    .target Khelden Bremen
step
    #completewith next
    .goto 1429/0,-188.20,-8868.89,10,0
    .goto 1429/0,-174.32,-8880.92,10,0
    .goto 1429/0,-164.25,-8891.80,10,0
    .goto 1429/0,-136.52,-8933.53,10 >>Reist zu |cRXP_FRIENDLY_Willem|r
step
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Willem|r
    .accept 5261 >> Akzeptiert die Quest Eagan Peltskinner
    .target Deputy Willem
step
    #completewith next
    .goto 1429/0,-64.64,-8924.9,70,0
    .goto 1429/0,-81.64,-8850.37
    +|cRXP_WARN_Tötet |cRXP_ENEMY_Junge Wölfe|r. Plündert sie, bis ihr 50 Kupfer Wert an Verkaufsgegenständen habt (einschließlich eurer Rüstung)|r
    .mob Young Wolf
step
    .goto 1429/0,-112.54,-8899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Danil|r
    >>|cRXP_BUY_Kauft 10|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    .vendor >> Verkauft Müll
    .collect 159,10,7,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto 1429/0,-163.21,-8869.12
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
	.goto 1429/0,-96.22,-8765.43,35,0
	.goto 1429/0,-120.17,-8750.61,35,0
	.goto 1429/0,-193.41,-8752.93,35,0
	.goto 1429/0,-193.75,-8778.16,35,0
	.goto 1429/0,-171.54,-8799.68,35,0
	.goto 1429/0,-96.22,-8765.43,35,0
    >>Tötet |cRXP_ENEMY_Koboldgezücht|r
    >>|cRXP_WARN_Tötet Stufe 1 |cRXP_ENEMY_Koboldgezücht|r, falls möglich|r
    .complete 7,1 --Kill Kobold Vermin (x10)
	.mob Kobold Vermin
step
#loop
	.line Elwynn Forest,49.32,37.91,48.24,37.88,46.18,37.29,45.69,39.05,46.03,40.91,48.04,39.55,49.32,37.91
	.goto 1429/0,-176.40,-8817.04,35,0
	.goto 1429/0,-138.91,-8816.35,35,0
	.goto 1429/0,-67.41,-8802.69,35,0
	.goto 1429/0,-50.41,-8843.43,35,0
	.goto 1429/0,-62.21,-8886.48,35,0
	.goto 1429/0,-131.97,-8855.00,35,0
	.goto 1429/0,-176.40,-8817.04,35,0
    >>Tötet |cRXP_LOOT_Junger Wolf|r und |cRXP_LOOT_Wilder Waldwolf|r. Plündert sie für |cRXP_LOOT_Zähes Wolfsfleisch|r
    >>Fokussiert euch auf |cRXP_LOOT_Junge Wölfe|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
	.mob Young Wolf
    .mob Timber Wolf
step
    .goto 1429/0,-163.21,-8869.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eagan|r
    .turnin 33,1 >> Gebt die Quest Wölfe an der Grenze ab
    .target Eagan Peltskinner
step
    .goto 1429/0,-112.54,-8899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Danil|r
    |cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .vendor >>Verkauft Müll
    .collect 159,10,15,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_McBride|r innerhalb
    .turnin 7 >> Gebt die Quest Säuberung im Koboldlager ab
    .accept 15 >> Akzeptiert die Quest Überprüfung der Echokammmine
    .accept 3104 >> Akzeptiert die Quest Glyphen-Brief
    .target Marshal McBride
step
#loop
	.line Elwynn Forest,47.25,36.41,47.39,35.77,47.35,34.06,46.29,32.42,47.75,32.77,50.11,34.98,47.25,36.41
	.goto 1429/0,-104.55,-8782.32,35,0
	.goto 1429/0,-109.41,-8767.51,35,0
	.goto 1429/0,-108.02,-8727.93,35,0
	.goto 1429/0,-71.23,-8689.97,35,0
	.goto 1429/0,-121.91,-8698.07,35,0
	.goto 1429/0,-203.82,-8749.22,35,0
	.goto 1429/0,-104.55,-8782.32,35,0
    >>Tötet |cRXP_ENEMY_Koboldtagelöhner|r
    .complete 15,1 --Kill Kobold Worker (x10)
	.mob Kobold Worker
step
#loop
	.line Elwynn Forest,49.32,37.91,48.24,37.88,46.18,37.29,45.69,39.05,46.03,40.91,48.04,39.55,49.32,37.91
	.goto 1429/0,-176.40,-8817.04,35,0
	.goto 1429/0,-138.91,-8816.35,35,0
	.goto 1429/0,-67.41,-8802.69,35,0
	.goto 1429/0,-50.41,-8843.43,35,0
	.goto 1429/0,-62.21,-8886.48,35,0
	.goto 1429/0,-131.97,-8855.00,35,0
	.goto 1429/0,-176.40,-8817.04,35,0
    .xp 3+1110 >> Farmt bis 1110+/1400 XP
	.mob Young Wolf
	.mob Kobold Vermin
    .mob Timber Wolf
 step
    .goto 1429/0,-112.54,-8899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Danil|r
    >>|cRXP_BUY_Kauft 10|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    .vendor >>Verkauft Müll
    .collect 159,10,15,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_McBride|r innerhalb
    .turnin 15 >> Gebt die Quest Überprüfung der Echokammmine ab
    .accept 21 >> Akzeptiert die Quest Scharmützel in der Echokammmine
    .target Marshal McBride
step
    #completewith next
    .goto 1429/0,-164.25,-8891.80,10,0
    .goto 1429/0,-174.32,-8880.92,10,0
    .goto 1429/0,-188.20,-8868.89,10,0
    .goto 1429/0,-180.56,-8862.87,5,0
    >>Springt von der Treppe auf das Geländer
    .goto 1429/0,-188.20,-8851.76,10 >>Geht |cRXP_FRIENDLY_Khelden|r die Treppe hoch
step
    #season 0
    .goto 1429/0,-188.20,-8851.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Khelden|r
    .turnin 3104 >> Gebt die Quest Glyphen-Brief ab
    .train 116 >> Erlernt |T135846:0|t[Frostblitz]
    .target Khelden Bremen
step
    #season 2
    .goto 1429/0,-188.20,-8851.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Khelden|r
    .accept 77620 >> Akzeptiert die Quest Zauberforschung << Human
    .turnin 3104 >> Gebt die Quest Glyphen-Brief ab
    .train 116 >> Erlernt |T135846:0|t[Frostblitz]
    .target Khelden Bremen
step
    #completewith next
    .goto 1429/0,-188.20,-8868.89,10,0
    .goto 1429/0,-174.32,-8880.92,10,0
    .goto 1429/0,-164.25,-8891.80,10,0
    .goto 1429/0,-136.52,-8933.53,10 >>Reist zu |cRXP_FRIENDLY_Willem|r
step
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Willem|r
    .accept 18 >> Akzeptiert die Quest Bruderschaft der Diebe
    .target Deputy Willem
step
    #season 2
    #loop
    #label CALEENCI
    #completewith RedBurlapBandana
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
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
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    .goto 1429/0,-288.51,-9068.87,30,0
    .goto 1429/0,-335.02,-9108.91,30,0
    .goto 1429/0,-376.67,-9073.73,30,0
    .goto 1429/0,-388.47,-9001.28,30,0
    .goto 1429/0,-333.97,-9028.59,30,0
#loop
	.line Elwynn Forest,51.14,49.29,52.55,48.75,53.81,48.09,54.58,49.02,55.15,47.86,54.76,45.96,53.81,44.79,,51.14,49.29
	.goto 1429/0,-239.57,-9080.44,35,0
	.goto 1429/0,-288.51,-9067.94,35,0
	.goto 1429/0,-332.24,-9052.67,35,0
	.goto 1429/0,-358.96,-9074.19,35,0
	.goto 1429/0,-378.75,-9047.34,35,0
	.goto 1429/0,-365.21,-9003.37,35,0
	.goto 1429/0,-332.24,-8976.29,35,0
	.goto 1429/0,-239.57,-9080.44,35,0
    >>Tötet |cRXP_ENEMY_Rohling der Defias|r. Plündert sie für |cRXP_LOOT_Rotes Sackleinenkopftuch|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob Defias Thug
step
    #optional
    #season 2
    #loop
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    .goto 1429/0,-288.51,-9068.87,50,0
    .goto 1429/0,-335.02,-9108.91,50,0
    .goto 1429/0,-376.67,-9073.73,50,0
    .goto 1429/0,-388.47,-9001.28,50,0
    .goto 1429/0,-333.97,-9028.59,50,0
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
    .goto 1429/0,-136.52,-8933.53
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
    .goto 1429/0,-112.54,-8899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Danil|r
    >>|cRXP_BUY_Kauft 10|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    .vendor >> Verkauft Müll
    .collect 159,10,21,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    #completewith next
    .goto 1429/0,-122.25,-8671.45,40 >>Geht in die Mine
step
    #label Laborer
    .goto 1429/0,-130.24,-8649.23,40,0
    .goto 1429/0,-141.69,-8607.11,40,0
    .goto 1429/0,-150.71,-8554.57,40,0
    .goto 1429/0,-198.26,-8535.36,40,0
    .goto 1429/0,-209.37,-8560.59
    >>Tötet |cRXP_ENEMY_Koboldhilfsarbeiter|r
    .complete 21,1 --Kill Kobold Laborer (x12)
	.mob Kobold Laborer
step
    .goto 1429/0,-224.3,-8850.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Milly|r
    .turnin 3903 >> Gebt die Quest Milly Osworth ab
    .accept 3904 >> Akzeptiert die Quest Millys Ernte
    .target Milly Osworth
step
    #completewith Harvest
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto 1429/0,-327.73,-9034.15,35,0
	.goto 1429/0,-297.88,-9068.64,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-333.63,-9112.61,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-327.73,-9034.15,35,0
    .xp 5+1175 >> Farmt bis 1175+/2800 XP
    .mob Defias Thug
step
    #completewith next
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto 1429/0,-327.73,-9034.15,35,0
	.goto 1429/0,-297.88,-9068.64,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-333.63,-9112.61,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-327.73,-9034.15,35,0
    >>Plündert die |cRXP_PICK_Traubenkörbe|r vom Boden
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto 1429/0,-461.01,-9056.37
    >>Tötet |cRXP_ENEMY_Garrick Padfoot|r. Plündert sie für |cRXP_LOOT_Garricks Kopf|r
    .complete 6,1 --Collect Garrick's Head (x1)
	.mob Garrick Padfoot
step
    #label Harvest
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto 1429/0,-327.73,-9034.15,35,0
	.goto 1429/0,-297.88,-9068.64,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-333.63,-9112.61,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-327.73,-9034.15,35,0
    >>Plündert die |cRXP_PICK_Traubenkörbe|r vom Boden
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto 1429/0,-327.73,-9034.15,35,0
	.goto 1429/0,-297.88,-9068.64,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-333.63,-9112.61,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-327.73,-9034.15,35,0
    .xp 5+1175 >> Farmt bis 1175+/2800 XP
    .mob Defias Thug
step
    .goto 1429/0,-224.3,-8850.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Milly|r
    .turnin 3904 >>Gebt die Quest Millys Ernte ab
    .accept 3905 >>Akzeptiert die Quest Traubenliste
    .target Milly Osworth
step
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Willem|r
    .turnin 6,1 >> Gebt die Quest Kopfgeld auf Garrick Padfoot ab
    .target Deputy Willem
step
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_McBride|r innerhalb
    .turnin 21,3 >> Gebt die Quest Scharmützel in der Echokammmine ab
    .accept 54 >> Akzeptiert die Quest Meldung in Goldhain
    .target Marshal McBride
step
    #completewith next
    .goto 1429/0,-171.54,-8908.00,10,0
    .goto 1429/0,-184.38,-8901.52,10,0
    .goto 1429/0,-178.83,-8888.10,10,0
    .goto 1429/0,-164.60,-8892.50,10,0
    .goto 1429/0,-172.23,-8907.31,10,0
    .goto 1429/0,-185.08,-8899.21,10,0
    .goto 1429/0,-176.75,-8886.94,10,0
    >>Geh nach oben
    .goto 1429/0,-181.64,-8902.13,10 >> Reisen zu |cRXP_FRIENDLY_Neals|r
step
    .goto 1429/0,-181.64,-8902.13
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
    .goto 1429/0,-188.23,-8851.58,12 >>Geht die Treppe hinunter und geht zu |cRXP_FRIENDLY_Khelden Bremen|r
    .isQuestComplete 77620
step << Human
    #season 2
    .goto 1429/0,-188.23,-8851.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Khelden Bremen|r innerhalb
    .turnin 77620 >> Gebt die Quest Zauberforschung ab
    .target Khelden Bremen
    .isQuestComplete 77620
step
    .goto 1429/0,-45.90,-9044.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Falkhaan|r
    .accept 2158 >> Akzeptiert die Quest Ruhe und Entspannung
    .target Falkhaan Isenstrider
step
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dughan|r
    .turnin 54 >> Gebt die Quest Meldung in Goldhain ab
    .accept 62 >> Die Fargodeep Mine annehmen
    .target Marshal Dughan
step
    .goto 1429/0,33.14,-9460.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_William|r durch die Wand, während ihr die Taverne betretet
    .accept 60 >> Koboldkerzen annehmen
    .target William Pestle
step
    #completewith next
    .home >> Setzt euren Ruhestein in Goldhain
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Farley|r
step
    .goto 1429/0,16.20,-9462.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Farley|r
    .turnin 2158,2 >> Gebt die Quest Ruhe und Entspannung ab
    .vendor 295 >> Verkauft-Müll. |cRXP_BUY_Kauft|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_bis ihr auf 2 Silber seid|r
    .target Innkeeper Farley
step
    .goto 1429/0,34.28,-9472.99
    >>Springt unten auf den Kronleuchter
    >>Sprecht mit |cRXP_FRIENDLY_Zaldimar|r durch die Wand
    .trainer >> Erlerne die Klassenfähigkeiten (Feuerball Rang 2, Feuerschlag)
	.target Zaldimar Wefhellt
step
    .goto 1429/0,72.81,-9496.37
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
    .goto 1429/0,338.47,-9889.69
    .accept 88 >> Prinzessin muss sterben! annehmen
	.goto 1429/0,332.43,-9894.99--c:Elwynn Forest,34.660,84.482
    .target +Ma Stonefield
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r. Plündert sie für |cRXP_LOOT_Goldstaub|r und |cRXP_LOOT_Große Kerze|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
step
    .goto 1429/0,38.38,-9923.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Billy|r
    .turnin 85 >> Gebt die Quest Die verlorene Halskette ab
    .accept 86 >> Kuchen für Billy annehmen
    .target Billy Maclure
step
    #label BoarMeat1
    .goto 1429/0,37.40,-10014.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maybell|r innerhalb
    .accept 106 >> Junge liebende annehmen
    .target Maybell Maclure
step
    .goto 1429/0,65.17,-10008.13
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
    .goto 1429/0,499.72,-9930.05--c:Elwynn Forest,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tommy|r
    .turnin 106 >> Gebt die Quest Junge Liebende ab
    .accept 111 >> Gespräch mit Oma annehmen
    .target Tommy Joe Stonefield
step
#loop
	.line Elwynn Forest,31.15,85.36,33.08,86.64,33.51,85.22,32.17,83.88,31.15,85.36
	.goto 1429/0,454.25,-9915.31,35,0
	.goto 1429/0,387.26,-9944.94,35,0
	.goto 1429/0,372.34,-9912.07,35,0
	.goto 1429/0,418.85,-9881.06,35,0
	.goto 1429/0,454.25,-9915.31,35,0
    >>Tötet |cRXP_ENEMY_Steinhauereber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    .collect 769,4,86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    .goto 1429/0,338.47,-9889.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bernice|r und dann mit |cRXP_FRIENDLY_Gramma|r innerhalb
    .turnin 86 >> Gebt die Quest Pastete für Billy ab
    .accept 84 >> Zurück zu Billy annehmen
    .target +"Auntie" Bernice Stonefield
    .goto 1429/0,338.47,-9889.69
    .turnin 111 >> Gebt die Quest Gespräch mit Oma ab
    .accept 107 >> Nachricht an William annehmen
    .target +Gramma Stonefield
    .goto 1429/0,322.71,-9880.59
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r. Plündert sie für |cRXP_LOOT_Goldstaub|r und |cRXP_LOOT_Große Kerze|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
step
    .goto 1429/0,38.38,-9923.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Billy|r
    .turnin 84 >> Gebt die Quest Zurück zu Billy ab
    .accept 87 >> Goldzahn annehmen
    .target Billy Maclure
step
    .goto 1429/0,65.17,-10008.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Kauft so viel|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm wie ihr könnt|r
    .vendor 258 >>Verkauft Müll
    .target Joshua Maclure
    .itemcount 1179,<8
step
    #completewith Mine
    .goto 1429/0,181.79,-9843.79,15 >>BETRETET die Tiefenschachtmine
step
    #completewith Goldtooth
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Koboldminenarbeiter|r. Plündert sie für |cRXP_LOOT_Goldstaub|r und |cRXP_LOOT_Große Kerze|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label Mine
    .goto 1429/0,179.36,-9811.39,12,0
    .goto 1429/0,157.15,-9789.40
    >>BETRETET einen der größeren offenen Räume in der Tiefenschachtmine
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #completewith next
    .goto 1429/0,148.82,-9763.71,12,0
    .goto 1429/0,132.16,-9752.60,12,0
    .goto 1429/0,87.04,-9745.65,40 >>Geht in Richtung |cRXP_ENEMY_Goldzahn|r
step
    #label Goldtooth
    .goto 1429/0,87.04,-9745.65
    >>Tötet |cRXP_ENEMY_Goldzahn|r. Plündert ihn für |cRXP_LOOT_Bernice's Halskette|r
    .complete 87,1 --Collect Bernice's Necklace (x1)
    .mob Goldtooth
step
#loop
	.line Elwynn Forest,39.14,82.87,39.16,84.79,37.81,85.40,36.76,83.19,38.02,81.70,39.14,82.87
	.goto 1429/0,176.93,-9857.68,35,0
	.goto 1429/0,176.24,-9902.12,35,0
	.goto 1429/0,223.09,-9916.240,35,0
	.goto 1429/0,259.54,-9865.09,35,0
	.goto 1429/0,215.81,-9830.600,35,0
	.goto 1429/0,176.93,-9857.68,35,0
    >>Tötet |cRXP_ENEMY_Koboldtunnelgräber|r und |cRXP_ENEMY_Koboldminenarbeiter|r. Plündert sie für |cRXP_LOOT_Goldstaub|r und |cRXP_LOOT_Große Kerze|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
    .mob Kobold Miner
step << skip
    #completewith next
    .goto 1429/0,102.31,-9787.78,-1
    .goto 1429/0,86.34,-9756.30,-1
    .goto 1429/0,80.79,-9740.56,-1
    .goto 1429/0,141.88,-9794.03,-1
    .goto 1429/0,150.55,-9825.04,-1
    .goto 1429/0,117.23,-9819.95,-1
    .goto 1429/0,135.98,-9775.28,-1
    .goto 1429/0,171.38,-9339.44,30 >>|cRXP_WARN_Führt einen Logout-Skip in der Höhle durch, ndem du auf einen Schredder, die schwimmenden Baumstämme, die Kisten oder die Lampe des Lorenwagens springst und dich anschließend aus- und wieder einloggst|r
    >>|cRXP_WARN_Alternativ lauft zurück nach Goldhain|r
    >>|cRXP_WARN_HINWEIS: Itemrack kann derzeit nach dem Logout-Skip Probleme verursachen, wobei die Ingame-UI einfriert. Stellt sicher, dass ihr das Add-on deaktiviert oder erstellt ein /neuladen-Makro, auf das ihr klicken könnt, falls das passiert|r
    .link https://www.youtube.com/watch?v=SWBtPqm5M0Q >>|cRXP_WARN_HIER KLICKEN um den logout skip zu lernen|r
step
    #completewith next
    .subzone 87 >> Kehrt nach Goldhain zurück
step
    .goto 1429/0,72.81,-9496.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Remy|r
    .turnin 47 >> Gebt die Quest Tauschhandel mit Goldstaub ab
    .accept 40 >> Gefahr aus dem Wasser annehmen
    .target Remy "Two Times"
step
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dughan|r
    .turnin 40 >> Gebt die Quest Gefahr aus dem Wasser ab
    .accept 35 >> Weitere Sorgen annehmen
    .turnin 62 >> Die Fargodeep Mine abgeben
    .accept 76 >> Die Jaspismine annehmen
    .target Marshal Dughan
step
    .goto 1429/0,33.14,-9460.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_William|r durch die Wand, während ihr die Taverne betretet
    .turnin 60 >> Koboldkerzen abgeben
    .accept 61 >> Lieferung nach Sturmwind annehmen
    .turnin 107 >> Gebt die Quest Nachricht an William ab
    .accept 112 >> Akzeptiert die Quest Die Suche nach dem Tang
    .target William Pestle
step
    .goto 1429/0,16.20,-9462.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Farley|r
    >>|cRXP_BUY_Kauft 35|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .vendor >>Verkauft Müll
    .collect 1179,35,432,1 --Ice Cold Milk (35)
    .target Innkeeper Farley
step
    .goto 1429/0,9.64,-9465.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brog|r
    .vendor >>|cRXP_BUY_Kauft eine|r |T133634:0|t[Kleine Braune Tasche] |cRXP_BUY_von ihm|r
	.target Brog Hamfist
    .money <0.05
step
    #completewith next
    .goto 1429/0,34.63,-9466.28,10,0
    .goto 1429/0,47.12,-9456.10,12 >> Verlasst das Gasthaus
step
    .goto 1429/0,-215.62,-9390.60,50,0
    .goto 1429/0,-237.83,-9438.28,50,0
    .goto 1429/0,-292.32,-9442.91,50,0
    .goto 1429/0,-342.3,-9391.75,50,0
    .goto 1429/0,-459.62,-9402.63,50,0
    .goto 1429/0,-421.09,-9478.780
    >>Tötet |cRXP_ENEMY_Murlocbachläufer|r und |cRXP_ENEMY_Murlocs|r. Plündert sie für |cRXP_LOOT_Kristalltangwedel|r
    >>|cRXP_WARN_Seid vorsichtig, denn |cRXP_ENEMY_Murlocbachläufer|r haben|r |T132307:0|t[Erhöhte Bewegungsgeschwindigkeit]
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc Streamrunner
	.mob Murloc
step
    #completewith next
    .goto 1429/0,-604.70,-9188.53,12 >>BETRETET die Jaspismine
step
    .goto 1429/0,-588.39,-9130.90,12,0
    .goto 1429/0,-570.68,-9116.32,12,0
    .goto 1429/0,-560.97,-9100.58
    >>Folgt dem mittleren Pfad der Höhle
    >>|cRXP_WARN_Seid vorsichtig |cRXP_ENEMY_Koboldgeomant|r wirkt|r |T135812:0|t[Feuerball] |cRXP_WARN_(Fernzauber: welcher 30 Schaden)verursacht|r
    .complete 76,1 --Scout through the Jasperlode Mine
step
    #completewith next
    .goto 1429/0,-570.68,-9116.32,12,0
    .goto 1429/0,-588.39,-9130.90,12,0
    .goto 1429/0,-609.91,-9186.91,15 >>Verlasst die Jaspismine
step
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thomas|r
    .turnin 35 >> Gebt die Quest Weitere Sorgen ab
    .accept 37 >> Akzeptiert die Quest Suche nach den vermissten Wachen
    .accept 52 >> Akzeptiert die Quest Grenzschutz
    .target Guard Thomas
step
    #completewith next
    .goto 1429/0,-1063.89,-9494.980,45,0
    .goto 1429/0,-984.06,-9457.950,45,0
    .goto 1429/0,-950.05,-9347.31,50,0
    >>Tötet alle |cRXP_ENEMY_Junge Waldbären|r, die ihr seht, und |cRXP_ENEMY_Streuner|r
    .complete 52,2 --Kill Young Forest Bear (x5)
    .unitscan +Young Forest Bear
    .complete 52,1 --Kill Prowler (x8)
	.mob +Prowler
step
    .goto 1429/0,-986.14,-9335.97
	>>Klickt den|cRXP_PICK_halb aufgefressener Körper|r auf dem Boden
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .turnin 37 >> Gebt die Quest Suche nach den vermissten Wachen ab
    .accept 45 >> Akzeptiert die Quest Rolfs Schicksal
step
    #completewith Bears
    .goto 1429/0,-1198.91,-9350.09,70,0
    >>Tötet alle |cRXP_ENEMY_Junge Waldbären|r, die ihr seht, und |cRXP_ENEMY_Streuner|r
    .complete 52,2 --Kill Young Forest Bear (x5)
    .unitscan +Young Forest Bear
    .complete 52,1 --Kill Prowler (x8)
	.mob +Prowler
step
    .goto 1429/0,-1289.22,-9469.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raelen|r
    .accept 5545 >> Ein Bündel Probleme annehmen
    .target Supervisor Raelen
step
    #completewith next
    >>Sammelt die |cRXP_PICK_Kleinholzbündel|r am Fuß der Bäume
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    .goto 1429/0,-1233.96,-9224.41,45 >> Reist zu |cRXP_PICK_Rolfs Leichnam|r
    .isOnQuest 45
step
    .goto 1429/0,-1233.96,-9224.41
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
	.goto 1429/0,-1257.91,-9216.77,35,0
	.goto 1429/0,-1271.79,-9186.68,35,0
	.goto 1429/0,-1230.14,-9150.34,35,0
	.goto 1429/0,-1271.10,-9147.10,35,0
	.goto 1429/0,-1271.79,-9186.68,35,0
	.goto 1429/0,-1257.91,-9216.77,35,0
	.goto 1429/0,-1232.92,-9251.950,35,0
	.goto 1429/0,-1246.46,-9329.03,35,0
	.goto 1429/0,-1249.58,-9362.13,35,0
	.goto 1429/0,-1285.33,-9365.14,35,0
	.goto 1429/0,-1296.09,-9389.44,35,0
	.goto 1429/0,-1338.09,-9331.11,35,0
	.goto 1429/0,-1354.05,-9354.26,35,0
	.goto 1429/0,-1362.03,-9309.59,35,0
	.goto 1429/0,-1302.68,-9309.12,35,0
	.goto 1429/0,-1257.91,-9216.77,35,0
    >>Sammelt die |cRXP_PICK_Kleinholzbündel|r am Fuß der Bäume
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    .goto 1429/0,-1289.22,-9469.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Raelen|r
    .turnin 5545 >> Gebt die Quest Ein Bündel Probleme ab
    .target Supervisor Raelen
step
    #label Bears
    .goto 1429/0,-1222.40,-9531.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sara|r
    .accept 83 >> Akzeptiert die Quest Rote Leinenwaren
    .target Sara Timberlain
step
    .goto 1429/0,-1069.44,-9618.58,0
    .goto 1429/0,-1063.89,-9494.980,45,0
    .goto 1429/0,-1093.74,-9665.57,45,0
    .goto 1429/0,-1125.32,-9714.41,45,0
    .goto 1429/0,-1215.91,-9778.29,45,0
    .goto 1429/0,-1295.74,-9718.34,45,0
    .goto 1429/0,-1063.89,-9494.980,45,0
    .goto 1429/0,-1093.74,-9665.57,45,0
    .goto 1429/0,-1125.32,-9714.41,45,0
    .goto 1429/0,-1215.91,-9778.29,45,0
    .goto 1429/0,-1295.74,-9718.34
    >>Tötet alle |cRXP_ENEMY_Junge Waldbären|r, die ihr seht, und |cRXP_ENEMY_Streuner|r
    >>|cRXP_WARN_Verursacht 51%+ Schaden gegen |cRXP_ENEMY_Junger Waldbär|r und |cRXP_ENEMY_Streuner|r, dann zieht sie zur |cRXP_FRIENDLY_Wache von Sturmwind|r, um sie effizienter zu töten|r
    .complete 52,2 --Kill Young Forest Bear (x5)
    .complete 52,1 --Kill Prowler (x8)
    .unitscan Young Forest Bear
    .mob Prowler
step
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thomas|r
    .turnin 52 >> Gebt die Quest Grenzschutz ab
    .turnin 71 >> Gebt die Quest Meldung an Thomas ab
    .accept 39 >> Akzeptiert die Quest Zustellung von Thomas' Bericht
    .accept 109 >> Akzeptiert die Quest Meldung bei Gryan Stoutmantle
    .target Guard Thomas
    .xp <9,1
step
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thomas|r
    .turnin 52 >> Gebt die Quest Grenzschutz ab
    .turnin 71 >> Gebt die Quest Meldung an Thomas ab
    .accept 39 >> Akzeptiert die Quest Zustellung von Thomas' Bericht
    .target Guard Thomas
step
#loop
	.line Elwynn Forest,70.45,76.94,68.68,76.69,68.23,77.78,67.80,80.76,68.49,82.68,70.71,81.48,70.63,80.66,71.51,78.96,70.95,77.25,71.38,76.77,70.95,77.25,70.45,76.94
	.goto 1429/0,-909.79,-9720.42,40,0
	.goto 1429/0,-848.35,-9714.64,40,0
	.goto 1429/0,-832.73,-9739.87,40,0
	.goto 1429/0,-817.81,-9808.84,40,0
	.goto 1429/0,-841.76,-9853.28,40,0
	.goto 1429/0,-918.81,-9825.51,40,0
	.goto 1429/0,-916.03,-9806.53,40,0
	.goto 1429/0,-946.58,-9767.18,40,0
	.goto 1429/0,-927.14,-9727.60,40,0
	.goto 1429/0,-942.06,-9716.49,40,0
	.goto 1429/0,-927.14,-9727.60,40,0
	.goto 1429/0,-909.79,-9720.42,40,0
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
    .goto 1429/0,-890.35,-9780.14
    >>Tötet |cRXP_ENEMY_Prinzessin|r. Plündert sie für |cRXP_LOOT_Meesinghalsband|r
    >>|cRXP_WARN_Erinnert euch daran, sie mit dem Zaun zu kiten|r
    .complete 88,1 --Collect Brass Collar (x1)
    .mob Princess
step
    .goto 1429/0,-1222.40,-9531.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sara|r
    .turnin 83 >> Gebt die Quest Rote Leinenwaren ab
    .target Sara Timberlain
    .isQuestComplete 83
step << skip
    .goto 1433/0,-1779.67,-9608.23
    .zone Redridge Mountains >> Reist ins Rotkammgebirge
    .isOnQuest 88
step << skip
    #completewith next
    +|cRXP_WARN_Folgt der Straße zu |cRXP_FRIENDLY_Ariena|r mit Vorsicht. Weicht den |cRXP_ENEMY_Tarantel|r und |cRXP_ENEMY_Schwarzer Großdrachenwelpe|r auf dem Weg aus|r
    .mob Black Dragon Whelp
    .mob Tarantula
step << skip
    .goto 1433/0,-2234.89,-9435.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ariena|r
    .fp Redridge Mountains >> Erlernt die Flugroute zum Rotkammgebirge
    .target Ariena Stormfeather
step
    #completewith next
    .hs >> Ruhestein nach Goldhain
step
    .goto 1429/0,33.14,-9460.75
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
    .goto 1429/0,74.02,-9465.52
    .accept 1097 >> Elmores Aufgabe annehmen
    .target +Smith Argus
    .goto 1429/0,87.87,-9456.65
step
    .goto 1429/0,37.40,-10014.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maybell|r innerhalb
    .turnin 114 >> Gebt die Quest Die Flucht ab
    .target Maybell Maclure
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ma|r und |cRXP_FRIENDLY_Bernice|r
    .turnin 88,3 >> Gebt die Quest Prinzessin muss sterben! ab
    .target +Ma Stonefield
    .goto 1429/0,332.43,-9894.99--c:Elwynn Forest,34.660,84.482
    .turnin 87 >> Gebt die Quest Goldzahn ab
    .goto 1429/0,338.47,-9889.69
    .target +"Auntie" Bernice Stonefield
step
#loop
	.line Elwynn Forest,31.15,85.36,33.08,86.64,33.51,85.22,32.17,83.88,31.15,85.36
	.goto 1429/0,454.25,-9915.31,35,0
	.goto 1429/0,387.26,-9944.94,35,0
	.goto 1429/0,372.34,-9912.07,35,0
	.goto 1429/0,418.85,-9881.06,35,0
	.goto 1429/0,454.25,-9915.31,35,0
    .xp 9+4825 >> Farmt bis auf 4225+/6500 XP
    .mob Stonetusk Boar
    .isOnQuest 184
step
#loop
	.line Elwynn Forest,31.15,85.36,33.08,86.64,33.51,85.22,32.17,83.88,31.15,85.36
	.goto 1429/0,454.25,-9915.31,35,0
	.goto 1429/0,387.26,-9944.94,35,0
	.goto 1429/0,372.34,-9912.07,35,0
	.goto 1429/0,418.85,-9881.06,35,0
	.goto 1429/0,454.25,-9915.31,35,0
    .xp 9+4825 >> Farmt bis auf 4825+/6500 XP
    .mob Stonetusk Boar
    .itemcount 1972,<1
step
    .goto 1429/0,694.43,-9662.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rainer|r
    .turnin 239 >> Gebt die Quest Hilfe für die Weststromgarnison ab
    .target Deputy Rainer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Furlbrow|r und |cRXP_FRIENDLY_Verna|r
    .accept 64 >> Akzeptiert die Quest Das vergessene Erbstück
    .turnin 184 >> Gebt die Quest Furlbrows Urkunde ab
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .accept 36 >> Akzeptiert die Quest Westfalleintopf
    .accept 151 >> Akzeptiert die Quest Die arme Graumähne
    .goto 1436/0,919.82,-9852.90
    .target +Verna Furlbrow
    .isOnQuest 184
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Furlbrow|r und |cRXP_FRIENDLY_Verna|r
    .accept 64 >> Akzeptiert die Quest Das vergessene Erbstück
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .accept 36 >> Akzeptiert die Quest Westfalleintopf
    .accept 151 >> Akzeptiert die Quest Die arme Graumähne
    .target +Verna Furlbrow
    .goto 1436/0,919.82,-9852.90
step
    #completewith next
    >>Öffnet die |cRXP_PICK_Sack Hafer|r auf dem Boden. Plündert sie für die |cRXP_LOOT_Handvoll Hafer|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 151,1 --Handful of Oats (8)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Saldean|r und dann mit |cRXP_FRIENDLY_Salma|r innerhalb
    .accept 9 >>Akzeptiert die Quest Tod auf den Feldern
    .target +Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 36 >> Gebt die Quest Westfalleintopf ab
    .accept 38 >> Akzeptiert die Quest Westfalleintopf
    .accept 22 >> Akzeptiert die Quest Pastete aus Geiferzahnleber
    .target +Salma Saldean
    .goto 1436/0,1041.97,-10112.13
step
    #completewith next
    >>|cRXP_WARN_Seid SEHR vorsichtig vor |cRXP_ENEMY_Erntebehüter|r und |cRXP_ENEMY_Erntegolem|r unterwegs|r
    .goto 1436/0,1045.12,-10508.80,20 >>Lauft zu|cRXP_FRIENDLY_Gryan|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gryan|r, |cRXP_FRIENDLY_Danuvin|r, und dann mit|cRXP_FRIENDLY_Lewis|r innerhalb
    .turnin 109 >> Gebt die Quest Meldung bei Gryan Stoutmantle ab
    .accept 12 >> Akzeptiert die Quest Die Volksmiliz
    .target +Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .accept 102 >> Akzeptiert die Quest Auf Patrouille durch Westfall
    .target +Captain Danuvin
    .goto 1436/0,1041.97,-10511.13
    .accept 6181 >> Akzeptiert die Quest Eine eilige Nachricht
    .goto 1436/0,1021.60,-10500.61
    .target +Quartermaster Lewis
step
    .goto 1436/0,1037.07,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >> Gebt die Quest Eine eilige Nachricht ab
    .accept 6281 >> Akzeptiert die Quest Weiter nach Sturmwind
    .target Thor
step
    #completewith next
    .goto 1436/0,1037.07,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fliege nach Sturmwind
	.target Thor
step
    #completewith next
    .goto 1453/0,532.74,-8863.09,20,0
    .goto 1453/0,599.55,-8811.28,20,0
    .goto 1453/0,613.93,-8833.07,20,0
    .goto 1453/0,620.79,-8859.6,12,0
    .goto 1453/0,625.49,-8857.89,12 >>Geht zu |cRXP_FRIENDLY_Morgan|r
step
    .goto 1453/0,625.49,-8857.890
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Morgan|r
    .turnin 61,1 >> Gebt die Quest Lieferung nach Sturmwind ab
    .target Morgan Pestle
step
    .goto 1453/0,635.44,-8863.81
    >>Sprecht mit |cRXP_FRIENDLY_Keldric|r
    .vendor 1257 >> |cRXP_BUY_Kauft|r |T134830:0|t[Geringer Heiltrank] |cRXP_BUY_von ihm, falls sie verfügbar sind|r
    .target Keldric Boucher
step << skip
    #completewith next
    .goto 1453/0,686.25,-8815.41,8,0
    .goto 1453/0,684.24,-8820.34,4,0
    .goto 1453/0,687.46,-8818.01,6,0
    .goto 1453/0,854.42,-8965.28,12,0
    >>|cRXP_WARN_Springt hoch auf die Fackel, dann fallt nach unten, um unter Sturmwind zu kommen|r
    >>|cRXP_WARN_Mit Schatten auf "Mittel" oder "Niedrig", geht zwischen die Füße von Derek the Dinosaur (auf dem helleren Teil des Bodens) gerade vor dem blauen nichts und lauft dann geradeaus nach vorne|r
    .goto 1453/0,861.95,-8990.47,10 >>Reist zu|cRXP_FRIENDLY_Jennea|r
step << skip
    .goto 1453/0,861.95,-8990.47
    >>Sprich mit |cRXP_FRIENDLY_Jennea|r
    .trainer >> Erlernt eure Klassanfähigkeiten (Frostrüstung Rang 2, Frostnova, Verwandlung, Wasser herbeizaubern Rang 1 & Rang 2)
    >>Gesamtpreis Kosten: 15s
    >>Bedenkt: Ihr braucht möglicherweise Geld für Heiltränke (3s je Stück), Bronzeröhre (8s je Stück) und Stufe-5-Nahrung (20c pro 5)
    .target Jennea Cannon
step << skip
    #completewith next
    .goto 1453/0,893.0,-9021.93,6 >>Geht durch das grüne Portal
step
    #completewith next
    .goto 1453/0,610.44,-8809.04,10,0
    .goto 1453/0,599.01,-8797.84,12,0
    .goto 1453/0,603.85,-8769.42,12,0
    .goto 1453/0,573.74,-8741.37,12,0
    .goto 1453/0,473.05,-8699.06,12,0
    .goto 1453/0,426.4,-8714.66,12,0
    .goto 1453/0,382.04,-8702.11,12 >>Reist zu|cRXP_FRIENDLY_Osric|r
step
    .goto 1453/0,382.04,-8702.11
    >>Sprecht mit |cRXP_FRIENDLY_Osric|r
    .turnin 6281 >> Gebt die Quest Weiter nach Sturmwind ab
    .accept 6261 >> Akzeptiert die Quest Dungar Longdrink
    .target Osric Strang
step
    #completewith next
    .goto 1453/0,450.74,-8644.11,15,0
    .goto 1453/0,479.91,-8639.81,15,0
    .goto 1453/0,514.05,-8608.26,15,0
    .goto 1453/0,507.6,-8541.66,15,0
    .goto 1453/0,683.43,-8397.08,12,0
    .goto 1453/0,685.18,-8387.13,12 >>Lauf in Richtung |cRXP_FRIENDLY_Grimand|r
step
    .goto 1453/0,685.18,-8387.13
    >>Sprich mit |cRXP_FRIENDLY_Grimand|r
    .turnin 1097 >> Gebt die Quest Elmores Aufgabe ab
    .accept 353 >> Akzeptiert die Quest Stormpikes Lieferung
    .target Grimand Elmore
step
    .goto 1453/0,638.26,-8342.22
    >>Sprecht mit |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_wenn er sie hat|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
    .money <0.08
step
    #completewith next
    .goto 1453/0,522.12,-8352.80,20 >> Reist zu Die Tiefenbahn
step
    #completewith next
    +|cRXP_WARN_Fahrt mit der Tiefenbahn, während ihr Pausenlos |r |T132794:0|t[Wasser herbeizaubern Rang 2] wirkt
step
    #label Monty
    .goto 1455/0,-1317.71,-4839.48,30,0
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
    .goto 1455/0,-1249.87,-4793.31
    >>Sprecht mit |cRXP_FRIENDLY_Cogspinner|r
    .vendor 5175 >>|cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_wenn er sie hat|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith next
    .goto 1455/0,-1266.48,-4749.31,30,0
    .goto 1455/0,-1211.92,-4728.00,30,0
    .goto 1455/0,-1170.41,-4754.48,30,0
    .goto 1455/0,-1152.31,-4821.12,10 >>Lauf in Richtung |cRXP_FRIENDLY_Gryth|r
step
    .goto 1455/0,-1152.39,-4820.914
    >>Sprich mit |cRXP_FRIENDLY_Gryth|r
    .fp Ironforge >> Holt euch den Flugpunkt in Eisenschmiede
    .target Gryth Thurden
step
    #completewith next
    .goto 1455/0,-1101.87,-4864.81,30,0
    .goto 1455/0,-1062.10,-4815.100,20,0
    .goto 1455/0,-1036.48,-4804.50,20,0
    .goto 1455/0,-992.68,-4742.08,20,0
    .goto 1455/0,-931.8,-4627.59,20,0
    .goto 1455/0,-928.40,-4614.51,10 >>Reist in Richtung |cRXP_FRIENDLY_Dink|r
step
    .goto 1455/0,-928.40,-4614.51
    >>Sprich mit |cRXP_FRIENDLY_Dink|r
    .trainer >> Erlernt eure Klassanfähigkeiten (Frostrüstung Rang 2, Frostnova, Verwandlung, Wasser herbeizaubern Rang 1 & Rang 2)
    >>Gesamtpreis Kosten: 15s
    >>Bedenkt: Ihr braucht möglicherweise Geld für Heiltränke (3s je Stück), Bronzeröhre (8s je Stück) und Stufe-5-Nahrung (20c pro 5)
    .target Dink
step
    #completewith next
    .goto 1455/0,-929.04,-4636.72,20,0
    .goto 1455/0,-892.19,-4770.42,20,0
    .goto 1455/0,-874.88,-4849.87,20,0
    >>Geht ins Gebäude
    .goto 1455/0,-857.01,-4840.69,10 >>Geht zu |cRXP_FRIENDLY_Firebrew|r
step
    #label IFHS
    .goto 1455/0,-857.01,-4840.69
    >>Sprecht mit |cRXP_FRIENDLY_Firebrew|r
    .home >> Setzt euren Ruhestein in Eisenschmiede
    .target Innkeeper Firebrew
step
    #completewith BankDeposit
    .goto 1455/0,-974.89,-4902.21,20,0
    .goto 1455/0,-997.66,-4886.49,30 >>Betretet die Eisenschmiede-Bank
step
    .goto 1455/0,-997.66,-4886.49
    >>Sprich mit |cRXP_FRIENDLY_Bailey|r
    .bankdeposit 4371,16115 >> Packe folgende Items in die Bank:
    >>|T133024:0|t[Bronzeröhre]
    >>|T132763:0|t[Osrics Kiste]
    .target Bailey Stonemantle
step << skip
    .goto 1455/0,-1000.98,-4874.62
    .goto 1426/0,-809.64,-5049.56,10 >>|cRXP_WARN_Springt auf die Seite des Tresors. Logout-Skip nach Dun Morogh|r
    .isQuestAvailable 314
step
    .goto 1455/0,-833.45,-5021.400,20,0
    .goto 1426/0,-1145.04,-5504.30
    .zone Dun Morogh >> Verlasst Eisenschmiede
]])

RXPGuides.RegisterGuide([[
#forever
<< Human Mage
#name 10-11 Fortgeschrittene AoE-Guide für Mensch Magier in Dun Morogh
#version 2
#group RestedXP ADV AoE Allianz Magier
#defaultfor Human Mage
#next 10-12 Fortgeschrittender Dunkelküste 1 Magier AoE Guide

step
    #completewith Rudra
    #label Dirt
    .goto 1426/0,-1145.04,-5504.30,40,0
    .goto 1426/0,-1219.90,-5422.55,40 >>Geht den Erdpfad hinauf
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Lockt |cRXP_ENEMY_Vagash|r zu|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_KLICKT HIER, wenn ihr Schwierigkeiten habt|r
    .mob Vagash
step
    #label Rudra
    .goto 1426/0,-1304.61,-5513.82
    >>Sprecht mit |cRXP_FRIENDLY_Rudra|r
    .accept 314 >> Akzeptiert die Quest Die Herde beschützen
    .target Rudra Amberstill
step
    .goto 1426/0,-1279.49,-5392.01,0
    .goto 1426/0,-1289.83,-5669.780,40,0
    .goto 1426/0,-1291.80,-5706.89
    >>Tötet |cRXP_ENEMY_Vagash|r. Plündert ihn für den |cRXP_LOOT_Fangzahn von Vagash|r
    >>|cRXP_WARN_zieht |cRXP_ENEMY_Vagash|r zu den |cRXP_FRIENDLY_Gebirgsjäger von Dun Morogh|r südlich der Ranch. Vergewissert euch, dass ihr ihm 51%+ Schaden zufügt|r
    >>|cRXP_WARN_Vergesst nicht, die Erkundungs-EP für Die Tundridhügel zu erhalten, und zieht den |cRXP_ENEMY_Schneeleopard|r zum |cRXP_FRIENDLY_Gebirgsjäger von Dun Morogh|r, wenn es bequem ist|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto 1426/0,-1304.61,-5513.82
    >>Sprecht mit |cRXP_FRIENDLY_Rudra|r
    .turnin 314,3 >> Gebt die Quest Die Herde beschützen ab
    .target Rudra Amberstill
step
    #completewith Ghilm
    +|cRXP_WARN_Denkt daran|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch] zu behalten|r |cRXP_WARN_, um|r |T133971:0|t[Kochkunst] später |cRXP_WARN_bis 50 zu skillen|r
step
    #completewith next
    .goto 1426/0,-1465.16,-5548.96,50,0
    .goto 1426/0,-1533.13,-5638.92,30,0
    +|cRXP_WARN_Lockt den |cRXP_ENEMY_Eisklauenbär|r zum |cRXP_FRIENDLY_Gebirgsjäger von Eisenschmiede|r (vergewissert euch, dass ihr 51%+ Schaden verursacht)|r
    >>|cRXP_WARN_Seid vorsichtig sie wirken|r |T135853:0|t[Eisklaue] |cRXP_WARN_(Nahkampf Sofortangriff: verursacht zusätzlich 4 Nahkampfschaden)|r
    .mob Ice Claw Bear
step
    #sticky
    #label Ghilm
    .goto 1426/0,-1566.62,-5664.86,0,0
    >>Sprecht mit |cRXP_FRIENDLY_Ghilm|r
    .train 2550 >> Erlernt |T133971:0|t[Kochkunst]
    .target Cook Ghilm
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
    >>Sprecht mit |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Kauft 15|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .collect 1179,15,432,1 --Ice Cold Milk (15)
    .target Kazan Mogosh
    .money <0.0395
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
    >>Sprecht mit |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Kauft 10|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .collect 1179,10,432,1 --Ice Cold Milk (10)
    .target Kazan Mogosh
    .money <0.0260
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
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
    .goto 1426/0,-1579.91,-5714.77
    .accept 432 >> Akzeptiert die Quest Diese verfluchten Troggs!
    .goto 1426/0,-1600.30,-5726.590
    .target +Foreman Stonebrow
step
    #completewith Bonesnappers
    >>Tötet |cRXP_ENEMY_Schädelhauer der Felsenkiefer|r
    >>|cRXP_WARN_Macht keinen Umweg, um sie zu töten|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #completewith next
    .goto 1426/0,-1681.86,-5723.30,30 >>Betretet die Höhle
step
    #label Bonesnappers
    .goto 1426/0,-1693.68,-5660.26,40,0
    .goto 1426/0,-1686.29,-5622.83,40,0
    .goto 1426/0,-1740.96,-5534.51,40,0
    .goto 1426/0,-1771.00,-5568.000,40,0
    .goto 1426/0,-1774.45,-5602.80
    >>Tötet |cRXP_ENEMY_Knochenknacker der Felsenkiefer|r in der Höhle
    >>|cRXP_WARN_Seid vorsichtig, da sie|r |T132154:0|t[Niederschlagen] wirken |cRXP_WARN_(Nahkampf Sofortzauber: betäubt für 2 Sek.)|r
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Bonesnapper
step
    .goto 1426/0,-1681.86,-5723.30,30,0
#loop
	.line Dun Morogh,69.93,57.29,70.57,58.61,69.68,59.37,68.36,59.57,69.16,57.51,69.93,57.29
	.goto 1426/0,-1641.97,-5758.11,30,0
	.goto 1426/0,-1673.49,-5801.45,30,0
	.goto 1426/0,-1629.66,-5826.40,30,0
	.goto 1426/0,-1564.65,-5832.97,30,0
	.goto 1426/0,-1604.05,-5765.33,30,0
	.goto 1426/0,-1641.97,-5758.11,30,0
    >>Tötet |cRXP_ENEMY_Schädelhauer der Felsenkiefer|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #sticky
    #label Frast
    .goto 1426/0,-1589.76,-5714.44,0,0
    >>Sprecht mit |cRXP_FRIENDLY_Frast|r
    .vendor >> Verkauft Müll
    .target Frast Dokner
    .isQuestAvailable 419
step
    >>Sprecht mit |cRXP_FRIENDLY_Stonebrow|r und |cRXP_FRIENDLY_Mehr|r
    .turnin 432 >> Gebt die Quest Diese verfluchten Troggs! ab
    .target +Foreman Stonebrow
    .goto 1426/0,-1600.30,-5726.590
    .turnin 433 >> Gebt die Quest Im Dienste des Volkes ab
    .goto 1426/0,-1579.91,-5714.77
    .target +Senator Mehr Stonehallow
step
    #requires Frast
    .goto 1426/0,-1612.42,-5698.02
    >>Sprecht mit |cRXP_FRIENDLY_Dank|r
    .train 2575 >> Erlernt |T136248:0|t[Bergbau]
    .target Dank Drizzlecut
step
    #label Shortcut1
    #completewith Pilot
    .goto 1426/0,-1662.65,-5692.11,5,0
    .link https://youtu.be/G2IscpFZVeQ?t=4034 >>|cRXP_WARN_KLICKT HIER, wenn ihr Schwierigkeiten habt|r
    .goto 1426/0,-1671.03,-5674.71,12 >>Nehmt den Weg nach oben hinter |cRXP_FRIENDLY_Dank|r
step
    #completewith Pilot
    #requires Shortcut1
    #label Shortcut2
    .goto 1426/0,-1693.19,-5541.730,50,0
    .goto 1426/0,-1788.24,-5511.85,50,0
    .goto 1426/0,-1995.58,-5480.01,50 >>|cRXP_WARN_Lockt die nahen |cRXP_ENEMY_Wegelagerer der Felsenkiefer|r zu den |cRXP_FRIENDLY_Gebirgsjäger von Eisenschmiede|r, die auf der Straße patrouillieren können (stellt sicher, dass ihr 51%+ Schaden verursacht, um Questfortschritt zu erhalten)|r
    .mob Rockjaw Ambusher
    .unitscan Ironforge Mountaineer
step
    #requires Shortcut2
    #completewith next
    .goto 1426/0,-2198.49,-5277.75,50,0
    .goto 1426/0,-2286.16,-5200.59,30 >>Lockt einen |cRXP_ENEMY_Vernarbter Klippeneber|r durch den Tunnel
    >>|cRXP_WARN_Seid vorsichtig, da sie|r |T132337:0|t[Ansturm] wirken|cRXP_WARN_(Selbst Sofort: Erhöht die Bewegungsgeschwindigkeit für 3 Sek., verursacht 40-100 Nahkampfschaden bei Treffer. Nur in der Ferne wirkbar)|r
    .mob Scarred Crag Boar
step
    #label Pilot
    .goto 1426/0,-2329.50,-5163.82
    >>Sprecht mit |cRXP_FRIENDLY_Hammerfoot|r
    .accept 419 >> Akzeptiert die Quest Der vermisste Pilot
    .target Pilot Hammerfoot
step
    .goto 1426/0,-2205.39,-5092.57,30,0
    .goto 1426/0,-2121.66,-5064.66
    >>Klickt auf die |cRXP_PICK_Zwergische Leiche|r auf dem Boden
    >>|cRXP_WARN_STELLE SICHER, DASS DU EINEN FREIEN INVENTARPLATZ HAST. |cRXP_ENEMY_Marterklaue|r wird nicht herunterkommen, wenn du die nächste Quest nicht annimmst|r
    >>|cRXP_WARN_Denkt daran: LOCKT |cRXP_ENEMY_Marterklaue|r ZURÜCK ZU |cRXP_FRIENDLY_Hammerfoot|r
    .turnin 419 >> Gebt die Quest Der vermisste Pilot ab
    .accept 417 >> Akzeptiert die Quest Pilotenrache
step
    .goto 1426/0,-2059.61,-5118.180,60,0
    .goto 1426/0,-2329.50,-5163.82
    >>Tötet |cRXP_ENEMY_Marterklaue|r. Plündert sie für |cRXP_LOOT_Räudige Klaue|r
    >>|cRXP_WARN_Lockt ihn ganz bis zu |cRXP_FRIENDLY_Hammerfoot|r (stellt sicher, dass ihr 51%+ Schaden verursacht, um den Questfortschritt zu erhalten)|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
    .target Pilot Hammerfoot
step
    .goto 1426/0,-2329.60,-5163.76
    >>Sprecht mit |cRXP_FRIENDLY_Hammerfoot|r
    .turnin 417,1 >> Gebt die Quest Pilotenrache ab
    .target Pilot Hammerfoot
step
    #label Tunnel1
    #completewith Barleybrew
    .goto 1426/0,-2286.16,-5200.59,30,0
    .goto 1426/0,-2198.49,-5277.75,30 >>Lauft durch den Tunnel zurück
step
    #requires Tunnel1
    #completewith Barleybrew
    .goto 1426/0,-2118.71,-5516.78,20,0
    .goto 1426/0,-2192.09,-5510.87,20,0
    .goto 1426/0,-2216.72,-5519.08,20,0
    .goto 1426/0,-2314.72,-5491.83,20,0
    >>Lockt einen |cRXP_ENEMY_Vernarbter Klippeneber|r auf deinem Weg
    .goto 1426/0,-2347.72,-5483.62,20 >>Führt den Berg-Skip durch. Erinnert euch, vorsichtig hinunterzufallen
    .mob Scarred Crag Boar
step
    .goto 1432/0,-2518.11,-5625.83
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
    .goto 1432/0,-2602.54,-5832.73
    >>Sprecht mit |cRXP_FRIENDLY_Cobbleflint|r
    .accept 224 >> Akzeptiert die Quest Verteidigung der Länder des Königs
    .target Mountaineer Cobbleflint
step
    #optional
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >> BETRITT den Bunker. Geht zum obersten Geschoss
step
    #label Rugelfuss
    .goto 1432/0,-2634.59,-5842.81
    >>Sprecht mit |cRXP_FRIENDLY_Rugelfuss|r
    .accept 267 >> Akzeptiert die Quest Die Bedrohung durch die Troggs
    .target Captain Rugelfuss
step << skip
    #completewith next
    .goto 1432/0,-2586.52,-5740.99,20,0
    .goto 1432/0,-2569.14,-5673.30,20,0
    .goto 1432/0,-2531.62,-5638.34,30 >>Geht zurück in den Tunnel
step << skip
    .goto 1432/0,-2513.42,-5618.48
    .link https://www.youtube.com/watch?v=AOAlX9B5aO0 >>|cRXP_WARN_KLICKT HIER Falls es euch schwerfällt|r
    .goto 1432/0,-2881.66,-5351.18,30 >>|cRXP_WARN_Springt, Logout-Skip von der Kohlenpfanne im Tunnel nach Thelsamar|r
    .isOnQuest 267
step
    #completewith next
    .subzone 144 >> Reist nach Thelsamar
step
    .goto 1432/0,-2902.07,-5398.28,40,0
    .goto 1432/0,-2945.10,-5360.20,40,0
    .goto 1432/0,-3015.71,-5335.73,40,0
    .goto 1432/0,-3025.09,-5318.44,40,0
    .goto 1432/0,-3017.64,-5274.66
    >>Sprecht mit |cRXP_FRIENDLY_Kadrell|r
    >>|cRXP_FRIENDLY_Kadrell|r |cRXP_WARN_patrouilliert auf der Hauptstraße in Thelsamar|r
    .accept 416 >> Akzeptiert die Quest Rattenfang
    .accept 1339 >> Akzeptiert die Quest Gebirgsjäger Stormpikes Aufgabe
    .target Mountaineer Kadrell
step
    #completewith next
    .goto 1432/0,-2929.93,-5424.95
    >>Sprecht mit |cRXP_FRIENDLY_Thorgrum|r
    .fp Thelsamar >> Erlernt die Flugroute nach Thelsamar
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Thorgrum Borrelson
step
    .zone Ironforge >> Lauf nach Ironforge
    .isOnQuest 416
step << skip
    #completewith next
    .goto 1455/0,-1060.12,-4883.59,20,0
    .goto 1455/0,-1016.16,-4946.11,20,0
    .goto 1455/0,-980.03,-4971.49,10 >>|cRXP_WARN_Bewegt euch zum Logout-Skip-Spot|r
step << skip
    .goto 1455/0,-980.03,-4971.49
    .zone Dun Morogh >>|cRXP_WARN_Positioniert den Charakter von Euch, bis er auf der Kante der metallenen Geländer zu schweben scheint. Logout-Skip nach Dun Morogh|r
    .isOnQuest 416
]])

RXPGuides.RegisterGuide([[
#forever
<< Gnome Mage
#name 1-10 ADV Dun Morogh Gnomenmagier AoE
#version 2
#group RestedXP ADV AoE Allianz Magier
#defaultfor Gnome Mage
#next 10-12 Fortgeschrittender Dunkelküste 1 Magier AoE Guide


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
    .goto 1426/0,328.18,-6214.85
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
    .goto 1426/0,320.30,-6226.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Verkauft Müll
    >>|cRXP_BUY_Kauft 15|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    >>Farmt|cRXP_WARN_ extra |cRXP_ENEMY_Struppiger junger Wolf|r wenn ihr nicht genug Geld habt|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step
    #season 2
    .goto 1426/0,320.30,-6226.74
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
    .goto 1426/0,328.18,-6214.85
    .accept 170 >> Akzeptiert die Quest Eine neue Bedrohung
    .goto 1426/0,338.87,-6216.46
    .target +Balir Frosthammer
step
    #xprate >1.09
    .goto 1426/0,328.18,-6214.85
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
    .goto 1426/0,485.48,-6259.21
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
    .goto 1426/0,388.17,-6056.10
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
    .goto 1426/0,688.98,-6222.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 233 >> Gebt die Quest Postbeförderung im Eisklammtal ab
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
    .goto 1426/0,688.98,-6222.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 183 >> Gebt die Quest Der Eberjäger ab
    .target Talin Keeneye
step
    #label Rockjaw
    .goto 1426,25.077,75.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 234 >> Gebt die Quest Postbeförderung im Eisklammtal ab
    .accept 182 >> Akzeptiert die Quest Die Trollhöhle
    .target Grelin Whitebeard
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Trollwelpe der Frostmane|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step
    .goto 1426/0,485.63,-6494.56,30 >>Betretet die Höhle
    .isOnQuest 182
step
    .goto 1426/0,457.56,-6531.66,20,0
    .goto 1426/0,408.80,-6498.83,20,0
    .goto 1426/0,357.09,-6473.87,30,0
    .goto 1426/0,408.80,-6498.83,20,0
    .goto 1426/0,457.56,-6531.66,20,0
    .goto 1426/0,408.80,-6498.83,20,0
    .goto 1426/0,357.09,-6473.87,30,0
    .goto 1426/0,408.80,-6498.83,20,0
    .goto 1426/0,457.56,-6531.66,20,0
    .goto 1426/0,408.80,-6498.83,20,0
    .goto 1426/0,357.09,-6473.87,30,0
    .goto 1426/0,408.80,-6498.83
    >>Tötet |cRXP_ENEMY_Trollwelpe der Frostmane|r in der Höhle
    >>|cRXP_WARN_Bahne dir einen Weg bis kurz vor den Raum mit dem gefrorenen See.|r
    .complete 182,1,10 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step
    .goto 1426/0,408.80,-6498.83,50,0
    .goto 1426/0,457.56,-6531.66,40,0
    .goto 1426/0,532.42,-6448.26,40,0
    .goto 1426/0,466.42,-6460.41,40,0
    .goto 1426/0,524.05,-6516.56,40,0
    .goto 1426/0,532.42,-6448.26
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
    .goto 1426/0,567.09,-6362.99,-1
    .target +Grelin Whitebeard
    .accept 3364 >> Akzeptiert die Quest Lieferung des kochend heißen Morgengebräus
    .goto 1426/0,571.82,-6371.10,-1
    .target +Nori Pridedrift
step
    >>Sprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r
    >>|cRXP_WARN_Stellt sicher, dass ihr 3 Inventarplätze für diese Questabgaben/Annahmen habt|r
    .turnin 182,4 >> Gebt die Quest Die Trollhöhle ab
    .accept 218 >> Akzeptiert die Quest Das gestohlene Tagebuch
    .goto 1426/0,567.09,-6362.99
    .target +Grelin Whitebeard
step
    .goto 1426/0,485.63,-6494.56,40,0
    .goto 1426/0,357.09,-6473.87,30,0
    .goto 1426/0,340.84,-6493.24,10 >>|cRXP_WARN_Betretet die Höhle. Lauft durch den freien Weg (ohne zu kämpfen, wenn möglich) Richtung Zugefrorenen See im Inneren|r
    .isOnQuest 218
step
    .goto 1426/0,300.94,-6509.00
    >>|cRXP_WARN_Tötet den |cRXP_ENEMY_Trollwelpe der Frostmane|r vor euch|r
    >>Tötet |cRXP_ENEMY_Grik'nir der Kalte|r. Plündert ihn für |cRXP_LOOT_Grelin Whitebeards Tagebuch|r
    >>|cRXP_WARN_Seid vorsichtig, da er|r |T135849:0|t[Frostschock] wirkt |cRXP_WARN_(Ein sofortiger Fernkampfzauber der:10 Frostschaden verursacht und eure die Bewegungsgeschwindigkeit um 50% für 8 Sek reduziert.)|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
step << skip
    #completewith Rybrad
    #label LogoutSkip1
    .goto 1426/0,342.81,-6487.330
    .goto 1426/0,336.40,-6164.25,30 >>|cRXP_WARN_Positioniert euren Charakter an der Klippe über dem Eingefroren Lake, bis es aussieht, als würde er schweben, dann logout skip zurück nach Ambossar|r
    .isOnQuest 218
step
    >>Sprecht mit |cRXP_FRIENDLY_Grelin Whitebeard|r und |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 218 >> Gebt die Quest Das gestohlene Tagebuch ab
    .accept 282 >> Akzeptiert die Quest Senirs Beobachtungen
    .goto 1426/0,567.09,-6362.99,-1
    .target +Grelin Whitebeard
    .accept 3364 >> Akzeptiert die Quest Lieferung des kochend heißen Morgengebräus
    .goto 1426/0,571.82,-6371.10,-1
    .target +Nori Pridedrift
step
    #completewith Rybrad
    #requires LogoutSkip1
    #label LogoutSkip2
    .goto 1426/0,384.18,-6143.90,20,0
    .goto 1426/0,392.06,-6123.87,10 >>Betretet Ambossar
    .isOnQuest 218,3364
step
    #label Rybrad
    .goto 1426/0,390.58,-6101.21
    >>Sprecht mit |cRXP_FRIENDLY_Rybrad Coldbank|r
    .vendor >> Verkauft Müll
    .target Rybrad Coldbank
    .isOnQuest 218,3364
step
    >>Sprecht mit |cRXP_FRIENDLY_Durnan Furcutter|r und |cRXP_FRIENDLY_Marryk Nurribit|r
    .turnin 3364 >> Gebt die Quest Lieferung des kochend heißen Morgengebräus ab
    .accept 3365 >> Akzeptiert die Quest Den Becher zurückbringen
    .goto 1426/0,385.16,-6056.23
    .target +Durnan Furcutter
    .turnin 3114 >> Gebt die Quest Glyphen-Memorandum ab
    .trainer >> Erlernt eure Klassenfähigkeiten (Arkane Intelligenz, Frostblitz)
    .goto 1426/0,388.17,-6056.10
    .target +Marryk Nurribit
    .isQuestAvailable 420
step
    #optional
    #xprate <1.1
    .goto 1426/0,338.87,-6216.46
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
    -- .goto 1426/0,567.09,-6362.99
    -- .target +Grelin Whitebeard
    .turnin 3365 >> Gebt die Quest Den Becher zurückbringen ab
    .goto 1426/0,571.82,-6371.10
    .target +Nori Pridedrift
step
    #xprate <1.1
    #requires TroggEnd
    .goto 1426/0,338.87,-6216.46
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
    .goto 1426/0,153.00,-6235.86
    .target +Mountaineer Thalos
    .accept 2160 >> Akzeptiert die Quest Vorräte für Tannok
    .goto 1426/0,134.97,-6248.96
    .target +Hands Springsprocket
step
    #xprate <1.1
    #optional
    #completewith StockingJ
    .abandon 170 >> Brecht die Quest Eine neue Bedrohung ab
step
    .goto 1426/0,111.82,-6206.61,15,0
    .goto 1426/0,46.32,-6037.19,15 >> Reist durch den Eisklamm Pass
    .subzoneskip 800,1
    .isOnQuest 2160
step
    #completewith StockingJ
    .goto 1426/0,3.97,-5943.61,40,0
    >>Tötet |cRXP_ENEMY_Klippeneber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r und |cRXP_LOOT_Klippeneberrippchen|r
    >>|cRXP_WARN_Passt auf, da sie|r |T132337:0|t[Sturmangriff] wirken |cRXP_WARN_(Selbst Sofort: Erhöht Laufgeschwindigkeit für 3 Sek., verursacht 25-70 Nahkampfschaden bei Treffer. Nur aus der Distanz wirkbar)|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
step
    .goto 1426/0,-67.94,-5908.48,30,0
    .goto 1426/0,-162.50,-5822.79,45 >> |cRXP_WARN_Verursacht 51%+ Schaden bei nahen |cRXP_ENEMY_Halbwüchsiger Schneeleopard|r und |cRXP_ENEMY_Junger Schwarzbär|r, zieht sie dann zu |cRXP_FRIENDLY_Gebirgsjäger von Eisenschmiede|r, um sie effizienter zu töten|r
    .mob Juvenile Snow Leopard
    .mob Young Black Bear
    .target Ironforge Mountaineer
    .isOnQuest 2160
step
    #completewith next
    .goto 1426/0,-337.34,-5703.93,50,0
    .goto 1426/0,-371.81,-5605.43,50,0
    .goto 1426/0,-464.45,-5573.78,20 >>Reist zu |cRXP_FRIENDLY_Tharek|r
step
    .goto 1426/0,-464.45,-5573.78
    >>Sprecht mit |cRXP_FRIENDLY_Tharek|r
    .accept 400 >> Akzeptiert die Quest Werkzeuge für Steelgrill
    .target Tharek Blackstone
step
    #label StockingJ
    .goto 1426/0,-632.15,-5466.540
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
    .goto 1426/0,-641.80,-5473.18
    .turnin 400 >> Gebt die Quest Werkzeuge für Steelgrill ab
    .target +Beldin Steelgrill
    .goto 1426/0,-682.58,-5488.87
    .accept 5541 >> Akzeptiert die Quest Munition für Rumbleshot
    .vendor >> Verkauft Müll
    .goto 1426/0,-664.55,-5499.710
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
    .goto 1426/0,-679.62,-5573.58,50,0
    .goto 1426/0,-678.64,-5618.89,50,0
    .goto 1426/0,-620.03,-5550.60,50,0
    .goto 1426/0,-432.39,-5502.330,50,0
    .goto 1426/0,-349.65,-5586.06,50,0
    .goto 1426/0,-423.03,-5662.56,50,0
    .goto 1426/0,-422.05,-5775.18,50,0
    .goto 1426/0,-679.62,-5573.58,50,0
    .goto 1426/0,-678.64,-5618.89,50,0
    .goto 1426/0,-620.03,-5550.60,50,0
    .goto 1426/0,-432.39,-5502.330,50,0
    .goto 1426/0,-349.65,-5586.06,50,0
    .goto 1426/0,-423.03,-5662.56,50,0
    .goto 1426/0,-422.05,-5775.18,50,0
    .goto 1426/0,-679.62,-5573.58,50,0
    .goto 1426/0,-678.64,-5618.89,50,0
    .goto 1426/0,-620.03,-5550.60,50,0
    .goto 1426/0,-432.39,-5502.330,50,0
    .goto 1426/0,-349.65,-5586.06,50,0
    .goto 1426/0,-423.03,-5662.56
    >>Tötet |cRXP_ENEMY_Junger Schwarzbär|r und |cRXP_ENEMY_Eisklauenbär|r. Plündert sie für |cRXP_LOOT_Dickes Bärenfell|r
    >>|cRXP_WARN_Lockt |cRXP_ENEMY_Junger Schwarzbär|r und |cRXP_ENEMY_Eisklauenbär|r zu nahe gelegenen |cRXP_FRIENDLY_Gebirgsjäger von Eisenschmiede|r (Stellt sicher, dass ihr 51%+ Schaden verursacht, um belohnt zu werden)|r
    >>|cRXP_WARN_Seid vorsichtig sie wirken|r |T135853:0|t[Eisklaue] |cRXP_WARN_(Nahkampf Sofortangriff: verursacht zusätzlich 4 Nahkampfschaden)|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob Young Black Bear
    .mob Ice Claw Bear
step
#loop
	.line Dun Morogh,51.70,49.66,51.08,52.42,51.43,53.21,50.06,51.66,49.56,50.82,48.12,49.10,48.21,46.93,45.48,50.04,44.07,52.50,43.69,55.59,42.78,56.86,44.45,59.33,46.31,61.85,46.26,59.49,48.08,59.05,49.40,58.97,48.30,56.86,49.09,54.74,49.61,54.32,51.43,53.21
	.goto 1426/0,-744.14,-5507.59,40,0
	.goto 1426/0,-713.61,-5598.21,40,0
	.goto 1426/0,-730.84,-5624.15,40,0
	.goto 1426/0,-663.37,-5573.25,40,0
	.goto 1426/0,-638.75,-5545.67,40,0
	.goto 1426/0,-567.83,-5489.200,40,0
	.goto 1426/0,-572.26,-5417.95,40,0
	.goto 1426/0,-437.81,-5520.06,40,0
	.goto 1426/0,-368.36,-5600.830,40,0
	.goto 1426/0,-349.65,-5702.29,40,0
	.goto 1426/0,-304.83,-5743.99,40,0
	.goto 1426/0,-387.08,-5825.09,40,0
	.goto 1426/0,-478.68,-5907.83,40,0
	.goto 1426/0,-476.22,-5830.34,40,0
	.goto 1426/0,-565.86,-5815.89,40,0
	.goto 1426/0,-630.87,-5813.27,40,0
	.goto 1426/0,-576.69,-5743.99,40,0
	.goto 1426/0,-615.60,-5674.38,40,0
	.goto 1426/0,-641.21,-5660.59,40,0
	.goto 1426/0,-730.84,-5624.15,40,0
    >>Tötet |cRXP_ENEMY_Klippeneber|r und |cRXP_ENEMY_Großer Klippeneber|r. Plündert sie für |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r und |cRXP_LOOT_Klippeneberrippchen|r
    >>|cRXP_WARN_Passt auf, da sie|r |T132337:0|t[Sturmangriff] wirken |cRXP_WARN_(Selbst Sofort: Erhöht Laufgeschwindigkeit für 3 Sek., verursacht 25-70 Nahkampfschaden bei Treffer. Nur aus der Distanz wirkbar)|r
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob Crag Boar
    .mob Large Crag Boar
step
    .goto 1426/0,-632.15,-5466.540
    >>Sprecht mit |cRXP_FRIENDLY_Bellowfiz|r
    .turnin 317 >> Gebt die Quest Vorräte für Jetsteam ab
    .accept 318 >> Akzeptiert die Quest Immerschimmer
    .target Pilot Bellowfiz
step
#loop
	.line Dun Morogh,51.70,49.66,51.08,52.42,51.43,53.21,50.06,51.66,49.56,50.82,48.12,49.10,48.21,46.93,45.48,50.04,44.07,52.50,43.69,55.59,42.78,56.86,44.45,59.33,46.31,61.85,46.26,59.49,48.08,59.05,49.40,58.97,48.30,56.86,49.09,54.74,49.61,54.32,51.43,53.21
	.goto 1426/0,-744.14,-5507.59,40,0
	.goto 1426/0,-713.61,-5598.21,40,0
	.goto 1426/0,-730.84,-5624.15,40,0
	.goto 1426/0,-663.37,-5573.25,40,0
	.goto 1426/0,-638.75,-5545.67,40,0
	.goto 1426/0,-567.83,-5489.200,40,0
	.goto 1426/0,-572.26,-5417.95,40,0
	.goto 1426/0,-437.81,-5520.06,40,0
	.goto 1426/0,-368.36,-5600.830,40,0
	.goto 1426/0,-349.65,-5702.29,40,0
	.goto 1426/0,-304.83,-5743.99,40,0
	.goto 1426/0,-387.08,-5825.09,40,0
	.goto 1426/0,-478.68,-5907.83,40,0
	.goto 1426/0,-476.22,-5830.34,40,0
	.goto 1426/0,-565.86,-5815.89,40,0
	.goto 1426/0,-630.87,-5813.27,40,0
	.goto 1426/0,-576.69,-5743.99,40,0
	.goto 1426/0,-615.60,-5674.38,40,0
	.goto 1426/0,-641.21,-5660.59,40,0
	.goto 1426/0,-730.84,-5624.15,40,0
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
    .goto 1426/0,-504.29,-5596.24
    >>Sprecht mit |cRXP_FRIENDLY_Ragnar|r
    .accept 384 >> Akzeptiert die Quest Eberrippchen in Biersauce
    .target Ragnar Thunderbrew
step
    #completewith next
    .goto 1426/0,-511.19,-5584.09,10,0
    .goto 1426/0,-537.29,-5587.04,12 >>Geht hinein
step
    .goto 1426/0,-523.35,-5590.82
    >>Sprecht mit |cRXP_FRIENDLY_Tannok|r
    .turnin 2160,2 >> Gebt die Quest Vorräte für Tannok ab
    .target Tannok Frosthammer
    .xp >6,1
step
    #completewith next
    .goto 1426/0,-511.19,-5584.09,10,0
    .goto 1426/0,-537.29,-5587.04,12 >>Geht hinein
step
    #sticky
    #label Tannok
    .goto 1426/0,-523.35,-5590.82,0,0
    >>Sprecht mit |cRXP_FRIENDLY_Tannok|r
    .turnin 2160,2 >> Gebt die Quest Vorräte für Tannok ab
    .target Tannok Frosthammer
step
    .goto 1426/0,-537.29,-5587.04
    >>Sprecht mit |cRXP_FRIENDLY_Magis|r oben
    .trainer >> Erlerne die Klassenfähigkeiten (Feuerball Rang 2, Feuerschlag)
    .target Magis Sparkmantle
    .isQuestAvailable 312
step
    #completewith Golorn
    .goto 1426/0,-531.38,-5601.49
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    .home >> Setzt den Ruhestein von Euch in die Brauerei Donnerbräu
    .target Innkeeper Belm
    .isQuestAvailable 312
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Kauft ein|r |T132800:0|t[Rhapsody-Malzbier] |cRXP_BUY_von ihm|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6
    .money <0.0050
step
    #requires Tannok
    .goto 1426/0,-504.29,-5596.24
    >>Sprecht mit |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >> Gebt die Quest Eberrippchen in Biersauce ab
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Kauft 20|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .collect 1179,20,312,1 --Ice Cold Milk (20)
    .target Innkeeper Belm
    .money <0.0582
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Kauft 15|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .collect 1179,15,312,1 --Ice Cold Milk (15)
    .target Innkeeper Belm
    .money <0.0457
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Kauft 10|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Innkeeper Belm
    .money <0.0332
step
    #label InnLS1
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Kauft 5|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .collect 1179,5,312,1 --Ice Cold Milk (5)
    .target Innkeeper Belm
    .money <0.0207
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Kauft 20|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    .collect 159,20,312,1 --Refreshing Spring Water (20)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0182
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Kauft 15|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    .collect 159,15,312,1 --Refreshing Spring Water (15)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0157
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Kauft 10|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    .collect 159,10,312,1 --Refreshing Spring Water (10)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0132
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Kauft 5|r |T132794:0|t[Erfrischendes Quellwasser] |cRXP_BUY_bei ihm|r
    .collect 159,5,312,1 --Refreshing Spring Water (5)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0107
step << skip
    #completewith SenirO
    .goto 1426/0,-535.32,-5604.120,-1
    .goto 1426/0,-519.07,-5679.96,35 >>|cRXP_WARN_Springt auf die Fässer auf der Wand hinter |cRXP_FRIENDLY_Belm|r. Logout-Skip nach Kharanos|r
step
    #sticky
    #label Golorn
    .goto 1426/0,-501.34,-5640.89,-1
    >>Sprecht mit |cRXP_FRIENDLY_Golorn|r
    >>|cRXP_BUY_Kauft ein|r |T135637:0|t[Kürschnermesser] |cRXP_BUY_von ihm|r
    .collect 7005,1,312,1 --Skinning Knife (1)
    .target Golorn Frostbeard
step
    #label SenirO
    .goto 1426/0,-499.17,-5644.37,-1
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
	.goto 1426/0,-294.49,-5676.350,10,0
	.goto 1426/0,-261.00,-5666.83,10,0
	.goto 1426/0,-272.82,-5606.74,10,0
	.goto 1426/0,-289.07,-5583.10,10,0
	.goto 1426/0,-261.98,-5565.70,10,0
	.goto 1426/0,-289.07,-5583.10,10,0
	.goto 1426/0,-272.82,-5606.74,10,0
	.goto 1426/0,-294.49,-5676.350,10,0
    >>Tötet |cRXP_ENEMY_Junger Wendigo|r und |cRXP_ENEMY_Wendigos|r. Plündert sie für |cRXP_LOOT_Wendigomähne|r
    >>|cRXP_WARN_Seid vorsichtig, weil sie|r |T135848:0|t[Frostschadenatem] wirken |cRXP_WARN_(Nahkampfzauber: Der 6-10 Frostschaden verursacht) und sie haben|r |T135849:0|t[Frostschadenwiderstand]
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Young Wendigo
    .mob Wendigo
step
    .goto 1426/0,-371.32,-5746.94
    >>Öffnet die |cRXP_PICK_Munitionkiste|r auf dem Boden. Sammelt die Beute für |cRXP_LOOT_Rumbleshot's Munition|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #completewith Ammo
    .goto 1426/0,-197.47,-5920.63,45,0
    >>Tötet |cRXP_ENEMY_Klippeneber|r und |cRXP_ENEMY_Halbwüchsiger Schneeleopard|r auf dem Weg
    >>Plündert die|cRXP_ENEMY_Klippeneber|r für |cRXP_LOOT_Klippeneberrippchen|r
    >>|cRXP_WARN_Passt auf, da |cRXP_ENEMY_Klippeneber|r|r |T132337:0|t[Ansturm] wirken|cRXP_WARN_(Selbst Sofort: Erhöht Laufgeschwindigkeit für 3 Sek., verursacht 25-70 Nahkampfschaden bei Treffer. Nur aus der Distanz wirk bar)|r
    .complete 384,1 --Crag Boar Rib (6)
    .disablecheckbox
    .goto 1426/0,-201.51,-6015.520,20 >>Reist in Richtung |cRXP_FRIENDLY_Hegnar|r
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .xp >7-1000,1
    .isQuestAvailable 384
step
    #completewith Ammo
    .goto 1426/0,-197.47,-5920.63,45,0
    >>Tötet |cRXP_ENEMY_Klippeneber|r und |cRXP_ENEMY_Halbwüchsiger Schneeleopard|r auf dem Weg
    >>|cRXP_WARN_Passt auf, da |cRXP_ENEMY_Klippeneber|r|r |T132337:0|t[Ansturm] wirken|cRXP_WARN_(Selbst Sofort: Erhöht Laufgeschwindigkeit für 3 Sek., verursacht 25-70 Nahkampfschaden bei Treffer. Nur aus der Distanz wirk bar)|r
    .goto 1426/0,-201.51,-6015.520,20 >>Reist in Richtung |cRXP_FRIENDLY_Hegnar|r
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .xp >7-1000,1
    .isQuestTurnedIn 384
step
    #completewith next
    .goto 1426/0,-197.47,-5920.63,45,0
    .goto 1426/0,-201.51,-6015.520,20 >>Reist in Richtung |cRXP_FRIENDLY_Hegnar|r
    .xp <7-1000,1
step
    #label Ammo
    .goto 1426/0,-201.51,-6015.520
    >>Sprecht mit |cRXP_FRIENDLY_Hegnar|r
    .turnin 5541 >> Gebt die Quest Munition für Rumbleshot ab
    .vendor >> Verkauft Müll
    .target Hegnar Rumbleshot
    .isQuestAvailable 312
step
    #completewith TundraOne
    .goto 1426/0,-68.43,-5909.470,50,0
    .goto 1426/0,72.92,-5741.36,45,0
    .goto 1426/0,47.80,-5674.05,50,0
    .goto 1426/0,10.37,-5600.51,40,0
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
    .goto 1426/0,-68.43,-5909.470,50,0
    .goto 1426/0,72.92,-5741.36,45,0
    .goto 1426/0,47.80,-5674.05,50,0
    .goto 1426/0,10.37,-5600.51,40,0
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
    .goto 1426/0,99.51,-5573.25
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
    .goto 1426/0,315.23,-5378.55
    .accept 310 >> Akzeptiert die Quest Bittere Rivalen
    .goto 1426/0,315.42,-5372.02
    .target +Marleth Barleybrew
step
    .goto 1426/0,302.42,-5387.74,0,0
    >>Sprecht mit |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_Kauft bis zu 10 weitere|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .vendor >> Verkauft Müll
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Keeg Gibn
    .itemcount 1179,10
    .money <0.0350
    .isOnQuest 319
step
    .goto 1426/0,302.42,-5387.74,0,0
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
    .goto 1426/0,151.72,-5436.670,50,0
    .goto 1426/0,-12.78,-5370.34,50,0
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
    .goto 1426/0,151.72,-5436.670,50,0
    .goto 1426/0,-12.78,-5370.34,50,0
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
    .goto 1426/0,-69.42,-5281.36,30 >> Geht in die Höhle
    .isOnQuest 319
step << skip
    #label CaveLS
    .goto 1426/0,-85.18,-5300.74
    .goto 1426/0,-519.07,-5679.96,30 >> |cRXP_WARN_Macht den Logout-Skip in der Höhle, um nach Kharanos zu teleportieren|r
    .isOnQuest 319
step
    .goto 1426/0,-499.17,-5644.37
    >>Sprecht mit |cRXP_FRIENDLY_Senir|r
    .accept 287 >> Akzeptiert die QuestHöhle der Frostmane
    .target Senir Whitebeard
step
    #completewith Rhapsody1
    .goto 1426/0,-511.19,-5584.09,10,0
    .goto 1426/0,-522.02,-5585.07,12 >>Geht hinein
step
    .goto 1426/0,-531.38,-5601.49
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Kauft|r |T132800:0|t[Rhapsody-Malzbier] |cRXP_BUY_und ein|r |T132800:0|t[Donnerbier] |cRXP_BUY_von ihm|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311,1 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .itemcount 2886,6
    .isQuestAvailable 384
step
    #label Rhapsody1
    .goto 1426/0,-531.38,-5601.49
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Kauft ein|r |T132800:0|t[Donnerbier] |cRXP_BUY_bei ihm|r
    .collect 2686,1,311,1 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .itemcount 2886,<6
step
    #completewith next
    .goto 1426/0,-537.29,-5597.55,8,0
    .goto 1426/0,-548.13,-5598.54,8 >>Geht die Treppe runter
step
    #completewith next
    .goto 1426/0,-544.68,-5606.09
    >>Sprecht mit |cRXP_FRIENDLY_Jarven|r unten
    .turnin 308 >> Gebt die Quest Jarvens Ablenkung ab
    .target Jarven Thunderbrew
step
    .goto 1426/0,-548.13,-5607.400
    >>Bewegt die Maus über |cRXP_PICK_Bewachtes Fass mit Donnerbier|r unten. Wartet bis das |cRXP_PICK_Bewachte Fass mit Donnerbier|r nicht mehr bewacht ist
    >>Öffnet das |cRXP_PICK_Unbewachtes Fass mit Donnerbier|r
    .turnin 310 >> Gebt die Quest Bittere Rivalen ab
    .accept 311 >> Akzeptiert die Quest Rückkehr zu Marleth
step
    .goto 1426/0,-531.38,-5601.49
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Kauft bis zu 10 weitere|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Innkeeper Belm
    .money <0.0250
step
    .goto 1426/0,-531.38,-5601.49
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Kauft bis zu 5 weitere|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .collect 1179,5,312,1 --Ice Cold Milk (5)
    .target Innkeeper Belm
    .money <0.0125
step
    .goto 1426/0,-522.02,-5585.07,12,0
    .goto 1426/0,-511.19,-5584.09,10,0
    .goto 1426/0,-504.29,-5596.24,20 >>Verlasst das Gasthaus
    .isOnQuest 287
step
    .goto 1426/0,-504.29,-5596.24
    >>Sprecht mit |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >> Gebt die Quest Eberrippchen in Biersauce ab
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    #completewith next
    .goto 1426/0,-495.43,-5434.04,40,0
    +|cRXP_WARN_Fügt den in der nähe befindlichen |cRXP_ENEMY_Schneefährtenleserwolf|r, |cRXP_ENEMY_Winterwölfe|r und |cRXP_ENEMY_Junge Schwarzbären  51%+ Schaden zu|r. Zieht sie zum |cRXP_FRIENDLY_Gebirgsjäger von Eisenschmiede|r, um sie effizienter zu töten|r
    >>|cRXP_WARN_Seid Vorsichtig denn |cRXP_ENEMY_Schneefährtenleserwölfe|r haben|r |T132150:0|t[Erhöte Aggo Reichweite] |cRXP_WARN_(Die Aggro Reichweite beträgt 8 yards)|r
    .mob Snow Tracker Wolf
    .mob Winter Wolf
    .mob Young Black Bear
    .target Ironforge Mountaineer
step
    .goto 1426/0,-311.23,-5360.16,25,0
    .goto 1426/0,-282.18,-5363.45,45 >> Lauft die Rampe hinauf zu den |cRXP_ENEMY_Seher der Frostmane|r
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
    .goto 1426/0,-269.86,-5370.34,40,0
    .goto 1426/0,-271.83,-5342.43,40,0
    .goto 1426/0,-250.16,-5306.32,40,0
    .goto 1426/0,-230.46,-5333.90,20,0
    .goto 1426/0,-240.81,-5354.91,30,0
    .goto 1426/0,-221.11,-5349.99,30,0
    .goto 1426/0,-224.06,-5372.31,40,0
    .goto 1426/0,-184.66,-5283.66,40,0
    .goto 1426/0,-151.66,-5186.15,20,0
    .goto 1426/0,-164.96,-5114.900,20,0
    .goto 1426/0,-258.54,-5046.93
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
    .goto 1426/0,-190.08,-5427.80,40,0
    .goto 1426/0,-55.63,-5580.48,40,0
    >>Tötet die zwei |cRXP_ENEMY_Alter Klippeneber|r auf dem Weg zur Höhle (falls dort welche sind)
    >>|cRXP_WARN_Seid vorsichtig, da sie|r |T132337:0|t[Ansturm] wirken |cRXP_WARN_(Selbst Sofort: Erhöht die Bewegungsgeschwindigkeit um 3 Sek., verursacht 25-85 Nahkampfschaden bei Treffer. Nur bei Reichweite wirkbar)|r
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob Elder Crag Boar
step
    #label IBCave
    .goto 1426/0,-62.03,-5640.56,50 >>Reist zur Höhle
    .isOnQuest 312
step
    #completewith next
    +|cRXP_WARN_Denk daran, nach dem Plündern seinen Angriffen durch einen Sprung mit Richtungswechsel auszuweichen, um den Benommenheits-Effekt zu vermeiden, und auf den Baumstamm zu springen, um ihm vorübergehend zu entgehen.|r
step
    .goto 1426/0,-94.53,-5647.79
    >>|cRXP_WARN_Falls |cRXP_ENEMY_Eisbart der Alte|r in der Höhle ist, führt ihn die Seite der Höhle hinauf, dann den ganzen Weg nach oben. Wartet auf ihn, bis er näher kommt, springt dann zurück nach unten und geht zum hinteren Teil der Höhle|r
    >>Öffnet |cRXP_PICK_MacGranns Fleisch-Spind|r auf dem Boden. Plündert sie für |cRXP_LOOT_MacGranns Trockenfleisch|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3120 >>|cRXP_WARN_KLICK HIER WENN DU PROBLEME HAST|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
    .mob Old Icebeard
step
    .goto 1426/0,99.51,-5573.25
    >>Sprecht mit |cRXP_FRIENDLY_Tundra|r
    .turnin 312,1 >> Gebt die Quest Tundra MacGranns gestohlene Vorräte ab
    .target Tundra MacGrann
step
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16,40,0
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16
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
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16,40,0
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16
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
    .goto 1426/0,315.28,-5378.39
    .turnin 311 >> Gebt die Quest Rückkehr zu Marleth ab
    .goto 1426/0,315.42,-5372.02
    .target Rejold Barleybrew
step
    .goto 1426/0,302.42,-5387.74
    >>Sprecht mit |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_Kauft bis zu 10 weitere|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .collect 1179,10,287,1 --Ice Cold Milk (10)
    .target Keeg Gibn
    .money <0.0250
step
    .goto 1426/0,302.42,-5387.74
    >>Sprecht mit |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_Kauft bis zu 5 weitere|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .collect 1179,5,287,1 --Ice Cold Milk (5)
    .target Keeg Gibn
    .money <0.0125
step
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16,40,0
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16
    >>Tötet |cRXP_ENEMY_Alter Klippeneber|r. Plündert sie für |cRXP_LOOT_Klippeneberrippchen|r
    >>|cRXP_WARN_Seid vorsichtig, da sie|r |T132337:0|t[Ansturm] wirken |cRXP_WARN_(Selbst Sofort: Erhöht die Bewegungsgeschwindigkeit um 3 Sek., verursacht 35-85 Nahkampfschaden bei Treffer. Nur bei Reichweite wirkbar)|r
    .complete 384,1 --Crag Boar Rib (6)
    .mob Elder Crag Boar
step
    #completewith Explore
    .goto 1426/0,564.92,-5503.65,35,0
    .goto 1426/0,573.79,-5538.78,12 >>BETRETET die Höhle von der Nordseite
step
    .goto 1426/0,605.80,-5545.020,40,0
    .goto 1426/0,654.07,-5563.40
    >>Tötet die |cRXP_ENEMY_Kopfjäger der Frostmane|r in der Höhle
    >>|cRXP_WARN_Seid vorsichtig sie wirken|r |T132222:0|t[Schießen] |cRXP_WARN_(Distanzangriff: Verursacht 8-15 Schaden)|r
    >>|cRXP_WARN_Seid vorsichtig vor den patrouillierenden |cRXP_ENEMY_Kopfjäger der Frostmane|r im Inneren|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #label Explore
    .goto 1426/0,668.84,-5585.73,8,0
    .goto 1426/0,674.26,-5587.37
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
    .goto 1426/0,-531.38,-5601.49
    >>Sprecht mit |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Kauft ein|r |T132800:0|t[Rhapsody-Malzbier] |cRXP_BUY_von ihm|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
step
    .goto 1426/0,-537.29,-5587.04
    >>Sprecht mit |cRXP_FRIENDLY_Magis|r oben
    .trainer >> Lerne deine Klassenfähigkeiten (Frostblitz Rang 2, Verwandlung)
    .target Magis Sparkmantle
    .isQuestAvailable 314
step
    #completewith Senir2
    +|cRXP_WARN_Denkt daran|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch] zu behalten|r |cRXP_WARN_, um|r |T133971:0|t[Kochkunst] später |cRXP_WARN_bis 50 zu skillen|r
step
    .goto 1426/0,-504.29,-5596.24
    >>Sprecht mit |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >> Gebt die Quest Eberrippchen in Biersauce ab
    .target Ragnar Thunderbrew
step
    #label Senir2
    .goto 1426/0,-499.17,-5644.37
    >>Sprecht mit |cRXP_FRIENDLY_Senir|r
    .turnin 287,2 >> Gebt die Quest Höhle der Frostmähnen ab
    .accept 291 >> Akzeptiert die Quest Die Berichte
    .target Senir Whitebeard
step
    #completewith next
    .cast 1459 >> |T135932:0|t[Arkane Intelligenz] nachbuffen
    .cast 168 >> |T135843:0|t[Frostrüstung] Nachbuffen
step
    >>Sprecht mit |cRXP_FRIENDLY_Bellowfiz|r und |cRXP_FRIENDLY_Stonegear|r
    .turnin 320,2 >> Gebt die Quest Rückkehr zu Bellowfiz ab
    .target +Pilot Bellowfiz
    .goto 1426/0,-632.15,-5466.540
    .turnin 313 >> Gebt die Quest Der altgediente Bau
    .goto 1426/0,-641.80,-5473.18
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
    .goto 1426/0,-1145.04,-5504.30,40,0
    .goto 1426/0,-1219.90,-5422.55,40 >>Geht den Erdpfad hinauf
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_KLICKT HIER, wenn ihr Schwierigkeiten habt|r
    +|cRXP_WARN_Lockt |cRXP_ENEMY_Vagash|r zu|r |cRXP_FRIENDLY_Rudra|r
    .mob Vagash
step
    #label Rudra
    .goto 1426/0,-1304.61,-5513.82
    >>Sprecht mit |cRXP_FRIENDLY_Rudra|r
    .accept 314 >> Akzeptiert die Quest Die Herde beschützen
    .target Rudra Amberstill
step
    .goto 1426/0,-1279.49,-5392.01,0
    .goto 1426/0,-1289.83,-5669.780,40,0
    .goto 1426/0,-1291.80,-5706.89
    >>Tötet |cRXP_ENEMY_Vagash|r. Plündert ihn für den |cRXP_LOOT_Fangzahn von Vagash|r
    >>|cRXP_WARN_zieht |cRXP_ENEMY_Vagash|r zu den |cRXP_FRIENDLY_Gebirgsjäger von Dun Morogh|r südlich der Ranch. Vergewissert euch, dass ihr ihm 51%+ Schaden zufügt|r
    >>|cRXP_WARN_Vergesst nicht, die Erkundungs-EP für Die Tundridhügel zu erhalten, und zieht den |cRXP_ENEMY_Schneeleopard|r zum |cRXP_FRIENDLY_Gebirgsjäger von Dun Morogh|r, wenn es bequem ist|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_KLICKT HIER, wenn ihr Schwierigkeiten habt|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto 1426/0,-1304.61,-5513.82
    >>Sprecht mit |cRXP_FRIENDLY_Rudra|r
    .turnin 314,3 >> Gebt die Quest Die Herde beschützen ab
    .target Rudra Amberstill
step << skip
    #completewith Ghilm
    +|cRXP_WARN_Denkt daran|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch] zu behalten|r |cRXP_WARN_, um|r |T133971:0|t[Kochkunst] später |cRXP_WARN_bis 50 zu skillen|r
step
    #completewith next
    .goto 1426/0,-1465.16,-5548.96,50,0
    .goto 1426/0,-1533.13,-5638.92,30,0
    +|cRXP_WARN_Lockt den |cRXP_ENEMY_Eisklauenbär|r zum |cRXP_FRIENDLY_Gebirgsjäger von Eisenschmiede|r (vergewissert euch, dass ihr 51%+ Schaden verursacht)|r
    >>|cRXP_WARN_Seid vorsichtig sie wirken|r |T135853:0|t[Eisklaue] |cRXP_WARN_(Nahkampf Sofortangriff: verursacht zusätzlich 4 Nahkampfschaden)|r
    .mob Ice Claw Bear
step
    #sticky
    #label Ghilm
    .goto 1426/0,-1566.62,-5664.86,0,0
    >>Sprecht mit |cRXP_FRIENDLY_Ghilm|r
    .train 2550 >> Erlernt |T133971:0|t[Kochkunst]
    .target Cook Ghilm
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
    >>Sprecht mit |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Kauft 15|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .collect 1179,15,432,1 --Ice Cold Milk (15)
    .target Kazan Mogosh
    .money <0.0395
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
    >>Sprecht mit |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Kauft 10|r |T132815:0|t[Eiskalte Milch] |cRXP_BUY_von ihm|r
    .collect 1179,10,432,1 --Ice Cold Milk (10)
    .target Kazan Mogosh
    .money <0.0260
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
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
    .goto 1426/0,-1579.91,-5714.77
    .accept 432 >> Akzeptiert die Quest Diese verfluchten Troggs!
    .goto 1426/0,-1600.30,-5726.590
    .target +Foreman Stonebrow
step
    #completewith Bonesnappers
    >>Tötet |cRXP_ENEMY_Schädelhauer der Felsenkiefer|r
    >>|cRXP_WARN_Macht keinen Umweg, um sie zu töten|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #completewith next
    .goto 1426/0,-1681.86,-5723.30,30 >>Betretet die Höhle
step
    #label Bonesnappers
    .goto 1426/0,-1693.68,-5660.26,40,0
    .goto 1426/0,-1686.29,-5622.83,40,0
    .goto 1426/0,-1740.96,-5534.51,40,0
    .goto 1426/0,-1771.00,-5568.000,40,0
    .goto 1426/0,-1774.45,-5602.80
    >>Tötet |cRXP_ENEMY_Knochenknacker der Felsenkiefer|r in der Höhle
    >>|cRXP_WARN_Seid vorsichtig, da sie|r |T132154:0|t[Niederschlagen] wirken |cRXP_WARN_(Nahkampf Sofortzauber: betäubt für 2 Sek.)|r
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Bonesnapper
step
    .goto 1426/0,-1681.86,-5723.30,30,0
#loop
	.line Dun Morogh,69.93,57.29,70.57,58.61,69.68,59.37,68.36,59.57,69.16,57.51,69.93,57.29
	.goto 1426/0,-1641.97,-5758.11,30,0
	.goto 1426/0,-1673.49,-5801.45,30,0
	.goto 1426/0,-1629.66,-5826.40,30,0
	.goto 1426/0,-1564.65,-5832.97,30,0
	.goto 1426/0,-1604.05,-5765.33,30,0
	.goto 1426/0,-1641.97,-5758.11,30,0
    >>Tötet |cRXP_ENEMY_Schädelhauer der Felsenkiefer|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #sticky
    #label Frast
    .goto 1426/0,-1589.76,-5714.44,0,0
    >>Sprecht mit |cRXP_FRIENDLY_Frast|r
    .vendor >> Verkauft Müll
    .target Frast Dokner
step
    >>Sprecht mit |cRXP_FRIENDLY_Stonebrow|r und |cRXP_FRIENDLY_Mehr|r
    .turnin 432 >> Gebt die Quest Diese verfluchten Troggs! ab
    .target +Foreman Stonebrow
    .goto 1426/0,-1600.30,-5726.590
    .turnin 433 >> Gebt die Quest Im Dienste des Volkes ab
    .goto 1426/0,-1579.91,-5714.77
    .target +Senator Mehr Stonehallow
step
    #requires Frast
    .goto 1426/0,-1612.42,-5698.02
    >>Sprecht mit |cRXP_FRIENDLY_Dank|r
    .train 2575 >> Erlernt |T136248:0|t[Bergbau]
    .target Dank Drizzlecut
step
    #label Shortcut1
    #completewith Pilot
    .goto 1426/0,-1662.65,-5692.11,5,0
    .link https://youtu.be/G2IscpFZVeQ?t=4034 >>|cRXP_WARN_KLICKT HIER, wenn ihr Schwierigkeiten habt|r
    .goto 1426/0,-1671.03,-5674.71,12 >>Nehmt den Weg nach oben hinter |cRXP_FRIENDLY_Dank|r
step
    #completewith Pilot
    #requires Shortcut1
    #label Shortcut2
    .goto 1426/0,-1693.19,-5541.730,50,0
    .goto 1426/0,-1788.24,-5511.85,50,0
    .goto 1426/0,-1995.58,-5480.01,50 >>|cRXP_WARN_Lockt die nahen |cRXP_ENEMY_Wegelagerer der Felsenkiefer|r zu den |cRXP_FRIENDLY_Gebirgsjäger von Eisenschmiede|r, die auf der Straße patrouillieren können (stellt sicher, dass ihr 51%+ Schaden verursacht, um Questfortschritt zu erhalten)|r
    .mob Rockjaw Ambusher
    .unitscan Ironforge Mountaineer
step
    #requires Shortcut2
    #completewith next
    .goto 1426/0,-2198.49,-5277.75,50,0
    .goto 1426/0,-2286.16,-5200.59,30 >>Lockt einen |cRXP_ENEMY_Vernarbter Klippeneber|r durch den Tunnel
    >>|cRXP_WARN_Seid vorsichtig, da sie|r |T132337:0|t[Ansturm] wirken|cRXP_WARN_(Selbst Sofort: Erhöht die Bewegungsgeschwindigkeit für 3 Sek., verursacht 40-100 Nahkampfschaden bei Treffer. Nur in der Ferne wirkbar)|r
    .mob Scarred Crag Boar
step
    #label Pilot
    .goto 1426/0,-2329.50,-5163.82
    >>Sprecht mit |cRXP_FRIENDLY_Hammerfoot|r
    .accept 419 >> Akzeptiert die Quest Der vermisste Pilot
    .target Pilot Hammerfoot
    .isQuestAvailable 419
step
    .goto 1426/0,-2205.39,-5092.57,30,0
    .goto 1426/0,-2121.66,-5064.66
    >>Klickt auf die |cRXP_PICK_Zwergische Leiche|r auf dem Boden
    >>|cRXP_WARN_STELLT SICHER, dass ihr einen freien Inventarplatz für diese Abgabe habt|r
    >>Denkt daran, dass ihr |cRXP_WARN_Marterklaue|cRXP_ENEMY_ zu |rHammerfoot|cRXP_FRIENDLY_ zurück ziehen werdet|r
    .turnin 419 >> Gebt die Quest Der vermisste Pilot ab
    .accept 417 >> Akzeptiert die Quest Pilotenrache
step
    .goto 1426/0,-2059.61,-5118.180,60,0
    .goto 1426/0,-2329.50,-5163.82
    >>Tötet |cRXP_ENEMY_Marterklaue|r. Plündert sie für |cRXP_LOOT_Räudige Klaue|r
    >>|cRXP_WARN_Lockt ihn ganz bis zu |cRXP_FRIENDLY_Hammerfoot|r (stellt sicher, dass ihr 51%+ Schaden verursacht, um den Questfortschritt zu erhalten)|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
    .target Pilot Hammerfoot
step
    .goto 1426/0,-2329.60,-5163.76
    >>Sprecht mit |cRXP_FRIENDLY_Hammerfoot|r
    .turnin 417,1 >> Gebt die Quest Pilotenrache ab
    .target Pilot Hammerfoot
step
    #label Tunnel1
    #completewith Barleybrew
    .goto 1426/0,-2286.16,-5200.59,30,0
    .goto 1426/0,-2198.49,-5277.75,30 >>Lauft durch den Tunnel zurück
step
    .goto 1426/0,-2075.37,-5511.20
    >>|cRXP_WARN_Seid vorsichtig, da |cRXP_ENEMY_Vernarbter Klippeneber|r und |cRXP_ENEMY_Alter Klippeneber|r wirken|r |T132337:0|t[Ansturm] |cRXP_WARN_(Selbst Direktzauber: Erhöht die Bewegungsgeschwindigkeit für 3 Sek., verursacht 40-100 Nahkampfschaden bei Treffer. Nur in der Ferne wirkbar), und |cRXP_ENEMY_Eisklauenbär|r wirken|r |T135853:0|t[Eisklaue] |cRXP_WARN_(Nahkampf Sofortangriff: Verursacht zusätzlich 4 Nahkampfschaden)|r
    .xp 9+5450 >> Farmt bis 5450+/6500 XP
    .mob Ice Claw Bear
    .mob Elder Crag Boar
    .mob Scarred Crag Boar
step
    #requires Tunnel1
    #label Tunnel2
    #completewith Barleybrew
    .goto 1426/0,-2118.71,-5516.78,20,0
    .goto 1426/0,-2192.09,-5510.87,20,0
    .goto 1426/0,-2216.72,-5519.08,20,0
    .goto 1426/0,-2314.72,-5491.83,20,0
    >>Lockt einen |cRXP_ENEMY_Vernarbter Klippeneber|r auf deinem Weg
    >>|cRXP_WARN_Seid vorsichtig, da sie|r |T132337:0|t[Ansturm] wirken|cRXP_WARN_(Selbst Sofort: Erhöht die Bewegungsgeschwindigkeit für 3 Sek., verursacht 40-100 Nahkampfschaden bei Treffer. Nur in der Ferne wirkbar)|r
    .goto 1426/0,-2347.72,-5483.62,20 >>Führt den Berg-Skip durch. Erinnert euch, vorsichtig hinunterzufallen
    .mob Scarred Crag Boar
step
    #requires Tunnel2
    #completewith next
    >>|cRXP_WARN_Seid vorsichtig, da |cRXP_ENEMY_Vernarbter Klippeneber|r wirken|r |T132337:0|t[Ansturm] |cRXP_WARN_(Selbst Sofort: Erhöht die Bewegungsgeschwindigkeit für 3 Sek., verursacht 40-100 Nahkampfschaden bei Treffer. Nur in der Ferne wirkbar)|r
    .xp 9+5990 >> Farmt bis 5990+/6500 XP
    .mob Scarred Crag Boar
step
    #label Barleybrew
    .goto 1426/0,-2447.11,-5479.74
    >>Sprecht mit |cRXP_FRIENDLY_Gerstenbräu|r
    .turnin 413 >> Gebt die Quest Schimmerstarkbier ab
    .accept 414 >> Akzeptiert die Quest Starkbier für Kadrell
    .target Mountaineer Barleybrew
step
    .goto 1426/0,-2469.86,-5504.96,40,0
    .goto 1426/0,-2451.15,-5432.07
    .xp 9+6320 >> Farmt bis 6320+/6500 XP
    >>|cRXP_WARN_Seid vorsichtig, da |cRXP_ENEMY_Vernarbter Klippeneber|r wirken|r |T132337:0|t[Ansturm] |cRXP_WARN_(Selbst Sofort: Erhöht die Bewegungsgeschwindigkeit für 3 Sek., verursacht 40-100 Nahkampfschaden bei Treffer. Nur in der Ferne wirkbar)|r
    .mob Scarred Crag Boar
step
    #label CragB1
    #completewith Cobbleflint
    .goto 1432/0,-2447.50,-5564.39,20,0
    .goto 1432/0,-2534.11,-5642.02,30 >>Lockt einen |cRXP_ENEMY_Vernarbter Klippeneber|r durch den Tunnel
    >>|cRXP_WARN_Seid vorsichtig, da sie|r |T132337:0|t[Ansturm] wirken|cRXP_WARN_(Selbst Sofort: Erhöht die Bewegungsgeschwindigkeit für 3 Sek., verursacht 40-100 Nahkampfschaden bei Treffer. Nur in der Ferne wirkbar)|r
    .mob Scarred Crag Boar
step
#loop
	.line Loch Modan,21.14,71.62,19.06,75.46,20.91,77.67,21.14,71.62
	.goto 1432/0,-2576.86,-5805.01,35,0
	.goto 1432/0,-2519.49,-5875.65,35,0
	.goto 1432/0,-2570.52,-5916.30,35,0
	.goto 1432/0,-2576.86,-5805.01,35,0
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
    .goto 1432/0,-2602.54,-5832.73
    >>Sprecht mit |cRXP_FRIENDLY_Cobbleflint|r
    .accept 224 >> Akzeptiert die Quest Verteidigung der Länder des Königs
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >> BETRITT den Bunker. Geht zum obersten Geschoss
step
    #label Rugelfuss
    .goto 1432/0,-2634.59,-5842.81
    >>Sprecht mit |cRXP_FRIENDLY_Rugelfuss|r
    .accept 267 >> Akzeptiert die Quest Die Bedrohung durch die Troggs
    .target Captain Rugelfuss
step << skip
    #completewith next
    .goto 1432/0,-2586.52,-5740.99,20,0
    .goto 1432/0,-2569.14,-5673.30,20,0
    .goto 1432/0,-2531.62,-5638.34,30 >>Geht zurück in den Tunnel
step << skip
    .goto 1432/0,-2513.42,-5618.48
    .link https://www.youtube.com/watch?v=AOAlX9B5aO0 >>|cRXP_WARN_KLICKT HIER Falls es euch schwerfällt|r
    .goto 1432/0,-2881.66,-5351.18,30 >>|cRXP_WARN_Springt, Logout-Skip von der Kohlenpfanne im Tunnel nach Thelsamar|r
    .isOnQuest 414
step
    .goto 1432/0,-2902.07,-5398.28,40,0
    .goto 1432/0,-2945.10,-5360.20,40,0
    .goto 1432/0,-3015.71,-5335.73,40,0
    .goto 1432/0,-3025.09,-5318.44,40,0
    .goto 1432/0,-3017.64,-5274.66
    >>Sprecht mit |cRXP_FRIENDLY_Kadrell|r
    >>|cRXP_FRIENDLY_Kadrell|r |cRXP_WARN_patrouilliert auf der Hauptstraße in Thelsamar|r
    .turnin 414 >>Gebt das Starkbier für Kadrell ab
    .accept 416 >> Akzeptiert die Quest Rattenfang
    .accept 1339 >> Akzeptiert die Quest Gebirgsjäger Stormpikes Aufgabe
    .target Mountaineer Kadrell
step
    .goto 1432/0,-3019.30,-5354.50,10,0
    .goto 1432/0,-3014.88,-5366.820
    >>Sprecht mit |cRXP_FRIENDLY_Brock|r
    >>|cRXP_WARN_Er kann sich im Gebäude oder außerhalb davon befinden|r
    .accept 6387 >>Akzeptiert die Quest Ehrenstudenten
    .target Brock Stoneseeker
step
    .goto 1432/0,-2929.93,-5424.95
    >>Sprecht mit |cRXP_FRIENDLY_Thorgrum|r
    .fp Thelsamar >> Erlernt die Flugroute nach Thelsamar
    .turnin 6387 >>Gebt die Quest Ehrenstudenten ab
    .accept 6391 >>Akzeptiert die Quest Flug nach Eisenschmiede
    .target Thorgrum Borrelson
step
    #completewith next
    .goto 1432/0,-2929.93,-5424.95
    >>Sprecht mit |cRXP_FRIENDLY_Thorgrum|r
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Thorgrum Borrelson
--VV Merge with step above
step
    .zone Ironforge >> Lauf nach Ironforge
    .isOnQuest 6391
step
    #completewith next
    .goto 1455/0,-1154.84,-4771.58,30,0
    .goto 1455/0,-1123.37,-4726.31,15,0
    .goto 1455/0,-1106.29,-4718.18,12,0
    >>Geht ins Gebäude
    .goto 1455/0,-1121.08,-4708.000,10 >>Reist in Richtung |cRXP_FRIENDLY_Golnir|r
step
    .goto 1455/0,-1121.08,-4708.000
    >>Sprecht mit |cRXP_FRIENDLY_Golnir|r
    .turnin 6391 >>Gebt die Quest Fahrt nach Eisenschmiede ab
    .accept 6388 >>Akzeptiert die Quest Gryth Thurden
    .vendor >> Verkauft Müll
    .target Golnir Bouldertoe
    .isOnQuest 291
step
    #completewith next
    .goto 1455/0,-1106.29,-4718.18,12,0
    .goto 1455/0,-1154.84,-4771.58,30,0
    >>Verlasst das Gebäude
    .goto 1455/0,-1152.31,-4821.12,10 >>Lauf in Richtung |cRXP_FRIENDLY_Gryth|r
step
    .goto 1455/0,-1152.39,-4820.914
    >>Sprich mit |cRXP_FRIENDLY_Gryth|r
    .turnin 6388 >>Gebt die Quest Gryth Thurden ab
--   .accept 6392 >>Accept Return to Brock
-- .fly Thelsamar >> Fly to Thelsamar
    .target Gryth Thurden
step
    #completewith next
    .goto 1455/0,-1148.99,-4840.22,30,0
    .goto 1455/0,-1101.87,-4864.81,30,0
    .goto 1455/0,-1082.58,-4836.00,20,0
    .goto 1455/0,-1062.42,-4835.00,20,0
    .goto 1455/0,-1026.28,-4872.56,10 >>Reist in Richtung |cRXP_FRIENDLY_Barin|r
step
    .goto 1455/0,-1026.28,-4872.56
    >>Sprecht mit |cRXP_FRIENDLY_Barin|r
    .turnin 291 >>Gebt die Quest Die Berichte ab
    .target Senator Barin Redstone
step
    #completewith next
    .goto 1455/0,-1064.87,-4828.19,20,0
    .goto 1455/0,-1062.10,-4815.100,20,0
    .goto 1455/0,-1036.48,-4804.50,20,0
    .goto 1455/0,-992.68,-4742.08,20,0
    .goto 1455/0,-931.8,-4627.59,20,0
    .goto 1455/0,-928.40,-4614.51,10 >>Reist in Richtung |cRXP_FRIENDLY_Dink|r
step
    .goto 1455/0,-928.40,-4614.51
    >>Sprich mit |cRXP_FRIENDLY_Dink|r
    .trainer >> Erlernt eure Klassanfähigkeiten (Frostrüstung Rang 2, Frostnova, Verwandlung, Wasser herbeizaubern Rang 1 & Rang 2)
    >>Gesamtpreis Kosten: 15s
    >>Bedenkt: Ihr braucht möglicherweise Geld für Heiltränke (3s je Stück), Bronzeröhre (8s je Stück) und Stufe-5-Nahrung (20c pro 5)
    .target Dink
step << skip
    #completewith IFHS
    +|cRXP_WARN_Denkt daran, einen Logout-Skip auf den Kerzen durchzuführen, nachdem ihr euren|r |T134414:0|t[Ruhestein] gesetzt habt
step
    #completewith next
    --.goto 1455/0,-929.04,-4636.72,20,0
    --.goto 1455/0,-892.19,-4770.42,20,0
    --.goto Ironforge,20.40,53.19,20,0
    >>Geht ins Gebäude
    .goto 1455/0,-857.01,-4840.69,10 >>Geht zu |cRXP_FRIENDLY_Firebrew|r
step
    #label IFHS
    .goto 1455/0,-857.01,-4840.69
    >>Sprecht mit |cRXP_FRIENDLY_Firebrew|r
    .home >> Setzt euren Ruhestein in Eisenschmiede
    .target Innkeeper Firebrew
step << skip
    .goto 1455/0,-864.68,-4847.820
    .zone Dun Morogh >>|cRXP_WARN_Springt auf die Kerzen auf dem Tisch. Logout-Skip nach Dun Morogh|r
    .isOnQuest 416
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance Mage
#name 10-12 Fortgeschrittender Dunkelküste 1 Magier AoE Guide
#version 2
#group RestedXP ADV AoE Allianz Magier
#defaultfor Human Mage/Gnome Mage
#next 12-14 Fortgeschrittender Loch Modan Magier AoE Guide

step
    #completewith DeathlessSkip
    .goto 1455/0,-833.45,-5021.400,20,0
    .goto 1426/0,-1145.04,-5504.30
    .zone Dun Morogh >> Verlasst Eisenschmiede
step
    #completewith next
    .goto 1426/0,-831.81,-5108.330,30,0
    .goto 1426/0,-859.39,-5144.450,30,0
    .goto 1426/0,-1124.84,-5283.99,150 >> Geht zum Skip-Punkt. Haltet euch auf der linken Seite des Berges
step
    #label DeathlessSkip
    .goto 1426/0,-1161.78,-5289.24,12,0
    .goto 1426/0,-1173.60,-5313.54,12,0
    .goto 1426/0,-1187.88,-5327.66,4,0
    .goto 1426/0,-1199.70,-5327.00,6,0
    .goto 1426/0,-1224.33,-5245.58,10,0
    .goto 1426/0,-1239.60,-5239.670,4,0
    .goto 1426/0,-1243.54,-5243.93,4,0
    .goto 1426/0,-1251.91,-5233.100,8,0
    .goto 1426/0,-1241.07,-5180.89,15,0
    .goto 1426/0,-1225.81,-5086.99,12,0
    .goto 1426/0,-1224.82,-4952.70,15,0
    .goto 1426/0,-1220.88,-4826.62,30,0
    .goto 1426/0,-1197.73,-4626.34,30,0
    .goto 1426/0,-1178.03,-4408.980,5,0
    .goto 1426/0,-1178.53,-4396.18,5,0
    .goto 1426/0,-1189.36,-4374.84,15,0
    .goto 1426/0,-1173.11,-4348.24,8,0
    .goto 1426/0,-1184.44,-4333.14,6,0
    .goto 1426/0,-1221.87,-4312.78,10,0
    .goto 1426/0,-1227.78,-4290.13,8,0
    >>|cRXP_WARN_Macht den Dun Morogh -> Sumpfland skip|r ohne zu sterben
    >>|cRXP_WARN_Esst nach jedem Sturz bis zur vollen Gesundheit, falls ihr euch nicht sicher fühlt|r
    .link https://youtu.be/QcEUvwu49KI?t=73 >> |cRXP_WARN_KLICKT HIER als Referenz (es wird DRINGEND empfohlen, das zu tun)|r
    .goto 1426/0,-1184.93,-4250.73,20 >>Springt vorsichtig die Bergseite hinab
    .isQuestAvailable 983
step
    .goto 1426/0,-1192.32,-4216.25,10,0
    .goto 1426/0,-1182.96,-4196.55,8,0
    .goto 1437/0,-1166.63,-4147.02,12,0
    .goto 1437/0,-1162.91,-4104.03,12,0
    .goto 1437/0,-1154.64,-4060.48,12,0
    .goto 1437/0,-1118.24,-4031.81,15,0
    .goto 1437/0,-1092.6,-4013.35,12,0
    .goto 1437/0,-1049.60,-3998.74,12,0
    .goto 1437/0,-1012.79,-3978.34,20,0
    .goto 1437/0,-1022.72,-3952.43,20,0
    .goto 1437/0,-1014.03,-3904.2,12,0
    >>|cRXP_WARN_Macht den Dun Morogh -> Sumpfland skip|r ohne zu sterben
    >>|cRXP_WARN_Seid vorsichtig vor |cRXP_ENEMY_Schlicker|r (selten), bevor ihr zur Küste hinuntergeht (falls er up ist)|r
    >>|cRXP_WARN_Seid vorsichtig vor den |cRXP_ENEMY_Räuber der Blaukiemen|r im Westen, wenn ihr das Meer erreicht|r
    >>|cRXP_WARN_Weicht den |cRXP_ENEMY_Junger Sumpflandkrokilisk|r aus wenn ihr das Meer überquert. Wartet, bis sie wegpatroullieren|r
    .link https://youtu.be/QcEUvwu49KI?t=336 >> |cRXP_WARN_Klickt hier für eine Anleitung (Es wird dringend empfohlen, dies zu tun.)|r
    .goto 1437/0,-914.37,-3828.40,15 >> Laufe zum Hafen von Menethil
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
    .unitscan Sludginn
    .isQuestAvailable 983
step
    #completewith next
    .goto 1437/0,-836.21,-3796.15,10,0
    .goto 1437/0,-829.18,-3804.420,10 >>Betretet Das Gasthaus
step
    .goto 1437/0,-823.8,-3807.180
    >>Springt unten auf den Kronleuchter
    >>Sprich durch die Wand mit |cRXP_FRIENDLY_Samor|r
    >>|cRXP_WARN_HINWEIS: Um dies zu tun, bindet "Interagieren mit Ziel" unter Gameplay -> Steuerung im Optionsmenü|r
    >>|cRXP_WARN_Falls das Boot gerade angekommen ist, überspringt diesen Schritt|r
    .vendor 1457 >> |cRXP_BUY_Kaufe|r |T134831:0|t[Heiltrank] |cRXP_BUY_von ihm (wenn sie verfügbar sind)|r
    .target Samor Festivus
    .money <0.03
step
    .goto 1437/0,-782.03,-3793.12
    >>Sprecht mit |cRXP_FRIENDLY_Shellei|r
    .fp Menethil Harbor >> Holt euch den Flugpunkt zum Hafen von Menethil
    .target Shellei Brondir
step
    #completewith DarkshoreBoat
    .goto 1437/0,-715.87,-3697.48
    >>|cRXP_WARN_Falls das Boot gerade angekommen ist, überspringt diesen Schritt|r
    +|cRXP_WARN_Kocht beliebig viele|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_welche ihr von draußen habt (es gibt ein Lagerfeuer im Inneren)|r
    .itemcount 769,1
step
    .goto 1437/0,-715.87,-3697.48
    >>Sprecht mit |cRXP_FRIENDLY_Dewin|r durch die Wand
    >>|cRXP_WARN_Falls das Boot gerade angekommen ist, überspringt diesen Schritt|r
    .vendor 1453 >> |cRXP_BUY_Kaufe|r |T134831:0|t[Heiltrank] |cRXP_BUY_von ihm (wenn sie verfügbar sind)|r
    .target Dewin Shimmerdawn
    .money <0.03
step
    #completewith Darkshore
    #label DarkshoreBoat
    .goto 1437/0,-641.43,-3758.94,20,0
    .goto 1437/0,-575.68,-3719.53,20 >>Lauf zum Dunkelküste-Boot
step
    #completewith next
    #requires DarkshoreBoat
    +|cRXP_WARN_Fangt an|r |T132794:0|t[Wasser herbeizaubern Rang 2] zu spammen |cRXP_WARN_um so viel Wasser wie möglich herbeizuzaubern|r
step
    #label Darkshore
    .goto 1437/0,-565.34,-3724.77
    .zone Darkshore >> Nimm das Boot nach Dunkelküste
step
    #label Darkshoreshore
    #completewith Wizbang
    .goto 1439/1,601.35,6358.29,60 >>Springt vom Boot ab, wenn ihr dem Ufer am nächsten seid
step
    #requires Darkshoreshore
    #completewith Wizbang
    +|cRXP_WARN_Lockt 2-3 |cRXP_ENEMY_Zwerggezeitenkriecher|r zu |cRXP_FRIENDLY_Wizbang|r (Denkt daran, |r|T135848:0|t[Frostnova]|cRXP_WARN_ zu benutzen) Tötet sie, wenn ihr die Quest annehmt|r
    .mob Pygmy Tide Crawler
step
    #requires Darkshoreshore
    #completewith next
    .goto 1439/1,533.23,6399.77,0,0
    >>Sprecht mit |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Kauft bis zu 20|r |T133918:0|t[Roher Langzahniger Matschschnapper] |cRXP_BUY_von ihm|r
    .vendor >> Verkauft Müll
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
step
    #requires Darkshoreshore
    #completewith next
    .goto 1439/1,536.51,6389.29,20,0
    .goto 1439/1,528.65,6404.14,10,0
    .goto 1439/1,537.16,6417.68,10,0
    >>Geht nach oben zum obersten Geschoss
    .goto 1439/1,519.48,6405.89,8 >>Reist zu |cRXP_FRIENDLY_Wizbang|r
step
    #label Wizbang
    .goto 1439/1,519.48,6405.89
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
    .goto 1439/1,489.35,6450.43,20,0
    .goto 1439/1,470.35,6525.530,20,0
    .goto 1439/1,492.62,6580.99,10 >>Reist zu |cRXP_FRIENDLY_Thundris|r
step
    #sticky
    #label DalmondBags
    .goto 1439/1,488.69,6564.830
    >>Sprecht mit |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Kauft so viele|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_wie ihr braucht/könnt|r
    .target Dalmond
    .money <0.0500
    .isQuestAvailable 954
step
    .goto 1439/1,492.62,6580.99
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
    .goto 1439/1,492.62,6580.99
    .accept 2178 >>Akzeptiert die Quest Schreitereintopf
    .goto 1439/1,472.97,6557.85
    .target +Alanndarian Nightsong
	.skill cooking,<10,1
step
    #requires DalmondBags
    #completewith next
    .goto 1439/1,462.49,6525.97,20,0
    .goto 1439/1,414.68,6472.70,20,0
    .goto 1439/1,383.89,6445.62,20,0
    .goto 1439/1,362.93,6434.27,12 >>Reist zu |cRXP_FRIENDLY_Terenthis|r
step
    #requires DalmondBags
    >>Sprecht mit |cRXP_FRIENDLY_Terenthis|r und |cRXP_FRIENDLY_Tharnariun|r
    .accept 984 >>Akzeptiert die Quest Wie groß ist die Bedrohung?
    .target +Terenthis
    .goto 1439/1,362.93,6434.27
    .accept 2118 >>Akzeptiert die Quest Verseuchtes Land
    .goto 1439/1,397.65,6437.76
    .target +Tharnariun Treetender
 step
    .goto 1439/1,533.23,6399.77
    >>Sprecht mit |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Kauft bis zu 20|r |T133918:0|t[Roher Langzahniger Matschschnapper] |cRXP_BUY_von ihm|r
    .vendor >> Verkauft Müll
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
    .itemcount 4592,<20
step
    #completewith next
    .goto 1439/1,569.26,6373.14,50,0
    .goto 1439/1,596.11,6334.27,50,0
    .goto 1439/1,592.84,6265.72,50,0
    .goto 1439/1,600.70,6228.600,50,0
    .goto 1439/1,567.29,6154.370,50,0
    >>Tötet |cRXP_ENEMY_Zwerggezeitenkriecher|r. Plündert sie für |cRXP_LOOT_Kriecherbein|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    #completewith next
    .goto 1439/1,437.60,6025.99,75,0
    >>|cRXP_WARN_Benutzt|r |T134335:0|t[Tharnariuns Hoffnung] |cRXP_WARN_auf einen |cRXP_ENEMY_Tollwütiger Distelbär|r. Es hat eine 50-yard Reichweite|r
    >>|cRXP_WARN_Seid vorsichtig, da sie|r |T135914:0|t[Tollwut] wirken |cRXP_WARN_(Sofort Nahkampf: Verringert ALLE Gesundheitsregeneration um 50% für 10 Minuten)|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .use 7586
    .unitscan Rabid Thistle Bear
step
    .goto 1439/1,393.72,5993.24
    >>Lauft zum Furbolg Camp
    >>|cRXP_WARN_Versucht nicht gegen die, |rWindsprecher der Schwarzfelle|cRXP_ENEMY_ zu kämpfen|r
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    .goto 1439/1,411.40,5873.15,60,0
    .goto 1439/1,400.27,5788.0,60,0
    .goto 1439/1,427.78,5680.58,60,0
    .goto 1439/1,415.33,5434.30
    >>|cRXP_WARN_Benutzt|r |T134335:0|t[Tharnariuns Hoffnung] |cRXP_WARN_auf einen |cRXP_ENEMY_Tollwütiger Distelbär|r. Es hat eine 50-yard Reichweite|r
    >>|cRXP_WARN_Seid vorsichtig, da sie|r |T135914:0|t[Tollwut] wirken |cRXP_WARN_(Sofort Nahkampf: Verringert ALLE Gesundheitsregeneration um 50% für 10 Minuten)|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .use 7586
    .unitscan Rabid Thistle Bear
step
    .goto 1439/1,302.02,5726.433
    >>Sprecht mit |cRXP_FRIENDLY_Tysha|r
    .accept 953 >>Akzeptiert die Quest Der Untergang von Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #completewith Relics
    +|cRXP_WARN_Meidet es |cRXP_ENEMY_Lady Mondblick|r (rare) zu pullen, wenn sie up ist|r
    .unitscan Lady Moongazer
step
    #completewith Fall
    >>Tötet |cRXP_ENEMY_Verfluchte Hochgeborene|r und |cRXP_ENEMY_Zuckender Hochgeborener|r. Plündert sie für |cRXP_LOOT_Hochgeborenenrelikt|r
    >>|cRXP_WARN_Tötet |cRXP_ENEMY_Klagende Hochgeborene|r nur, wenn sie euch im Weg sind|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    .goto 1439/1,148.09,5575.78
    >>Klickt |cRXP_PICK_Der Untergang von Ameth’Aran|r am Boden an
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto 1439/1,105.52,5770.100
    >>Klickt |cRXP_PICK_Die Lage von Ameth’Aran|r am Boden an
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
    #label Fall
    .goto 1439/1,302.02,5726.433
    >>Sprecht mit |cRXP_FRIENDLY_Tysha|r
    .turnin 953 >>Gebt die Quest Der Untergang von Ameth'Aran ab
    .target Sentinel Tysha Moonblade
step
    #label Relics
    .goto 1439/1,206.39,5802.41,50,0
    .goto 1439/1,117.96,5820.32,50,0
    .goto 1439/1,71.46,5788.00,50,0
    .goto 1439/1,87.18,5713.77,50,0
    .goto 1439/1,93.07,5585.83,50,0
    .goto 1439/1,165.78,5564.870,50,0
    .goto 1439/1,242.41,5641.72,50,0
    .goto 1439/1,206.39,5802.41
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
    .goto 1439/1,48.53,6748.67
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
	.goto 1439/1,22.33,6736.44,35,0
	.goto 1439/1,28.88,6669.20,35,0
	.goto 1439/1,58.36,6649.98,35,0
	.goto 1439/1,-6.49,6603.26,35,0
	.goto 1439/1,-45.79,6638.63,35,0
	.goto 1439/1,-17.62,6695.40,35,0
	.goto 1439/1,-62.16,6719.41,35,0
	.goto 1439/1,-130.94,6712.86,35,0
	.goto 1439/1,-36.62,6760.90,35,0
	.goto 1439/1,22.33,6736.44,35,0
    >>Tötet |cRXP_ENEMY_Übler Grimmling|r und |cRXP_ENEMY_Wild Grells|r. Plündert sie für |cRXP_LOOT_Grell-Ohrring|r
    >>|cRXP_WARN_Passt auf, denn die |cRXP_ENEMY_Übler Grimmling|r wirken|r |T136016:0|t[Gift] |cRXP_WARN_(Nahkampf Sofortangriff: Verursacht alle 3 Sek. 3 Schaden für 15 Sek.) und die |cRXP_ENEMY_Wilden Grells|r wirken|r |T136215:0|t[Wahnsinnig] |cRXP_WARN_(Selbst Sofortzauber: Erhöht die Angriffsgeschwindigkeit um 20% bei <20% Leben)|r
    .complete 955,1 --Grell Earring (8)
    .mob Vile Sprite
    .mob Wild Grell
step
    .goto 1439/1,48.53,6748.67
    >>Sprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Gebt die Quest Bashal'Aran ab
    .accept 956 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
step
    .goto 1439/1,-38.58,6739.5,45,0
    .goto 1439/1,-66.75,6683.61,45,0
    .goto 1439/1,-67.40,6672.25,45,0
    .goto 1439/1,-34.00,6601.51,45,0
    .goto 1439/1,-115.22,6626.40,45,0
    .goto 1439/1,-160.41,6690.16,45,0
    .goto 1439/1,-187.27,6708.930,45,0
    .goto 1439/1,-165.65,6728.15,45,0
    .goto 1439/1,-38.58,6739.5,45,0
    .goto 1439/1,-66.75,6683.61,45,0
    .goto 1439/1,-67.40,6672.25,45,0
    .goto 1439/1,-34.00,6601.51,45,0
    .goto 1439/1,-115.22,6626.40,45,0
    .goto 1439/1,-160.41,6690.16,45,0
    .goto 1439/1,-187.27,6708.930,45,0
    .goto 1439/1,-165.65,6728.15
    >>Tötet |cRXP_ENEMY_Satyr der Deth'ryll|r. Plündert sie für |cRXP_LOOT_Altes Mondstein-Siegel|r
    >>|cRXP_WARN_Seid vorsichtig sie wirken|r |T132222:0|t[Schießen] |cRXP_WARN_(Distanzangriff: Verursacht 15-25 Schaden)|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
step
#loop
	.line Darkshore,44.57,36.57,44.47,38.11,44.02,38.55,45.01,39.62,45.61,38.81,45.18,37.51,45.86,36.96,46.91,37.11,45.47,36.01,44.57,36.57
	.goto 1439/1,22.33,6736.44,35,0
	.goto 1439/1,28.88,6669.20,35,0
	.goto 1439/1,58.36,6649.98,35,0
	.goto 1439/1,-6.49,6603.26,35,0
	.goto 1439/1,-45.79,6638.63,35,0
	.goto 1439/1,-17.62,6695.40,35,0
	.goto 1439/1,-62.16,6719.41,35,0
	.goto 1439/1,-130.94,6712.86,35,0
	.goto 1439/1,-36.62,6760.90,35,0
	.goto 1439/1,22.33,6736.44,35,0
    .xp 11+1100 >> Farmt bis 1100+/8800 XP
    .mob Vile Sprite
    .mob Wild Grell
--910+900+750+975+850 = 4385 (Turnins starting from Bashal Seal turnin)
--675+975 = 1650 (Turtle turnins)
step
    #label BashalF
    .goto 1439/1,48.53,6748.67
    >>Sprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Gebt die Quest Bashal'Aran ab
    .accept 957 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
step
    #sticky
    #label DalmondBags1
    .goto 1439/1,488.69,6564.830,0,0
    >>Sprecht mit |cRXP_FRIENDLY_Dalmond|r
    .vendor >> Verkauft Müll
    .target Dalmond
    .isQuestAvailable 3524
step
    .goto 1439/1,491.97,6582.303
    >>Sprecht mit |cRXP_FRIENDLY_Thundris|r
    .turnin 958 >>Gebt die Quest Werkzeuge der Hochgeborenen ab
    .target Thundris Windweaver
step
    #requires DalmondBags1
    .goto 1439/1,472.97,6557.85
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
    .goto 1439/1,362.93,6434.27
    .turnin 2118 >> Gebt die Quest Verseuchtes Land ab
    .accept 2138 >> Akzeptiert die Quest Ausrottung der Infizierten
    .goto 1439/1,397.65,6437.76
    .target +Tharnariun Treetender
step
    #sticky
    #label Gwennyth
    .goto 1439/1,543.06,6342.57
    >>Sprecht mit |cRXP_FRIENDLY_Gwennyth|r
    .accept 3524 >>Akzeptiert die Quest An Land gespült
    .target Gwennyth Bly'Leggonde
step
    .goto 1439/1,561.40,6343.01
    >>Sprich mit |cRXP_FRIENDLY_Caylais|r
    .fp Auberdine >> Erlernt die Flugroute nach Auberdine
    .target Caylais Moonfeather
step
    #requires Gwennyth
    #completewith Bones
    .goto 1439/1,569.26,6373.14,50,0
    .goto 1439/1,596.11,6334.27,50,0
    .goto 1439/1,592.84,6265.72,50,0
    .goto 1439/1,600.70,6228.600,50,0
    .goto 1439/1,567.29,6154.370,50,0
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
    .goto 1439/1,558.78,6111.57
    >>Plündert die |cRXP_LOOT_Gestrandete Meereskreatur|r
    >>|cRXP_WARN_Passt auf, denn die nahegelegenen |cRXP_ENEMY_Küstenläufer der Grauflossen|r haben|r |T132307:0|t[Erhöte Bewegungsgeschwindigkeit]
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    .goto 1439/1,569.26,6373.14
    >>Tötet |cRXP_ENEMY_Zwerggezeitenkriecher|r und |cRXP_ENEMY_Junger Riffkriecher|r. Plündert sie für |cRXP_LOOT_Kriecherbein|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    .goto 1439/1,541.75,6313.31
    >>Klickt |cRXP_PICK_Buzzbox 827|r
    .turnin 983 >>Gebt die Quest Dröhnkiste 827 ab
    .accept 1001 >>Akzeptiert die Quest Dröhnkiste 411
step
    .goto 1439/1,536.51,6365.28,12,0
    .goto 1439/1,543.06,6342.57
    >>Sprecht mit |cRXP_FRIENDLY_Gwennyth|r
    .turnin 3524 >>Gebt die Quest An Land gespült ab
    .accept 4681 >>Akzeptiert die Quest An Land gespült
    .target Gwennyth Bly'Leggonde
 step
    .goto 1439/1,533.23,6399.77
    >>Sprecht mit |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Kauft bis zu 40|r |T133918:0|t[Roher Langzahniger Matschschnapper] |cRXP_BUY_von ihm|r
    .collect 4592,40,4681,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto 1439/1,539.13,6409.82,12,0
    .goto 1439/1,600.70,6425.100
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
    .goto 1439/1,786.06,6488.85,15,0
    .goto 1439/1,818.81,6419.86,25 >> Lauft über den Steg zu den |cRXP_LOOT_Meeresschildkrötenüberresten|r
step
    .goto 1439/1,854.84,6310.26
    >>Schwimmt unter Wasser
    >>Plündert die |cRXP_LOOT_Meeresschildkrötenüberreste|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto 1439/1,575.81,6381.430,50,0
    .goto 1439/1,596.77,6329.91,50,0
    .goto 1439/1,581.05,6209.82,50,0
    .goto 1439/1,575.15,6144.32,50,0
    .goto 1439/1,545.68,6010.270,50,0
    .goto 1439/1,634.10,5983.63,50,0
    .goto 1439/1,634.76,5915.51,50,0
    .goto 1439/1,537.82,5840.4,50,0
    .goto 1439/1,575.81,6381.430,50,0
    .goto 1439/1,596.77,6329.91,50,0
    .goto 1439/1,581.05,6209.82,50,0
    .goto 1439/1,575.15,6144.32,50,0
    .goto 1439/1,545.68,6010.270,50,0
    .goto 1439/1,634.10,5983.63,50,0
    .goto 1439/1,634.76,5915.51,50,0
    .goto 1439/1,537.82,5840.40
    .xp 11+7825 >> Grind bis 7825+/8800 XP
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #label Gwen
    .goto 1439/1,539.78,6364.84,12,0
    .goto 1439/1,543.06,6342.57
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
    .goto 1439/1,515.55,6406.32
    >>|cRXP_WARN_===ACHTUNG===|r
    >>|cRXP_WARN_Sprecht mit|r |cRXP_FRIENDLY_Shaussiy|r
    >>|cRXP_WARN_Falls dies euer erstes Mal ist, einen Ruhestein Batch durchzuführen, schaut euch den Guide dafür unten an|r
    >>|cRXP_WARN_Öffnet das Menü "Ruhestein setzen", dann wirkt|r |T134414:0|t[Ruhestein]
    .hs >> |cRXP_WARN_Ruhestein BATCH von Auberdine nach Eisenschmiede|r
    .link https://www.youtube.com/watch?v=Is-h2TJpL3M >> |cRXP_WARN_HIER KLICKEN (es wird SEHR empfohlen, dies zu tun). Stellt sicher, dass ihr eure Batching Window Size vorher eingestellt und getestet habt, um das Fehlerrisiko zu senken|r
    .target Innkeeper Shaussiy
    .zoneskip Ironforge
step
    .goto 1455/0,-928.40,-4614.51
    >>Sprich mit |cRXP_FRIENDLY_Dink|r
    .trainer >> Erlerne die Klassenfähigkeiten (Feuerball Rang 3, Magie dämpfen)
    >>Gesamtpreis Kosten: 12s
    >>Erinnert euch, dass ihr vielleicht Geld für eine |T133024:0|t[Bronzeröhre] (je 8 Silber) und zum Fliegen nach Thelsamar (1 Gold 10 Silber) brauchen könnt
    .target Dink
step << skip
    .goto 1455/0,-928.80,-4614.51,-1
    .goto 1455/0,-1249.87,-4793.31,-1
    .vendor 5175 >> Logout-Skip auf dem Pfeiler über |cRXP_FRIENDLY_Dink|r, um |cRXP_FRIENDLY_Cogspinner|r auf ein |T133024:0|t[Bronzeröhre] zu überprüfen, falls ihr möchtet
    .itemcount 4371,<1
    .isQuestAvailable 418
step
    #completewith next
    +|cRXP_WARN_Wirkt schnell|r |T132794:0|t[Wasser herbeizaubern Rang 2] |cRXP_WARN_, um so viel Wasser wie möglich vor dem Flug herzustellen|r
step << Gnome
    .goto 1455/0,-1152.39,-4820.914
    >>Sprich mit |cRXP_FRIENDLY_Gryth|r
    .accept 6392 >>Akzeptiert die Quest Rückkehr zu Brock
    .target Gryth Thurden
step
    .goto 1455/0,-1152.39,-4820.914
    >>Sprich mit |cRXP_FRIENDLY_Gryth|r
    .fly Thelsamar >> Fliege nach Thelsamar
    .target Gryth Thurden
]])

RXPGuides.RegisterGuide([[
#forever
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
    .goto 1426/0,-831.81,-5108.330,30,0
    .goto 1426/0,-859.39,-5144.450,30,0
    .goto 1426/0,-1124.84,-5283.99,150 >> Geht zum Skip-Punkt. Haltet euch auf der linken Seite des Berges
step
    .goto 1426/0,-1161.78,-5289.24,12,0
    .goto 1426/0,-1173.60,-5313.54,12,0
    .goto 1426/0,-1187.88,-5327.66,4,0
    .goto 1426/0,-1199.70,-5327.00,6,0
    .goto 1426/0,-1224.33,-5245.58,10,0
    .goto 1426/0,-1239.60,-5239.670,4,0
    .goto 1426/0,-1243.54,-5243.93,4,0
    .goto 1426/0,-1251.91,-5233.100,8,0
    .goto 1426/0,-1241.07,-5180.89,15,0
    .goto 1426/0,-1225.81,-5086.99,12,0
    .goto 1426/0,-1224.82,-4952.70,15,0
    .goto 1426/0,-1220.88,-4826.62,30,0
    .goto 1426/0,-1197.73,-4626.34,30,0
    .goto 1426/0,-1178.03,-4408.980,5,0
    .goto 1426/0,-1178.53,-4396.18,5,0
    .goto 1426/0,-1189.36,-4374.84,15,0
    .goto 1426/0,-1173.11,-4348.24,8,0
    .goto 1426/0,-1184.44,-4333.14,6,0
    .goto 1426/0,-1221.87,-4312.78,10,0
    .goto 1426/0,-1227.78,-4290.13,8,0
    >>|cRXP_WARN_Macht den Dun Morogh -> Sumpfland skip|r ohne zu sterben
    >>|cRXP_WARN_Esst nach jedem Sturz bis zur vollen Gesundheit, falls ihr euch nicht sicher fühlt|r
    .link https://youtu.be/QcEUvwu49KI?t=73 >> |cRXP_WARN_KLICKT HIER als Referenz (es wird DRINGEND empfohlen, das zu tun)|r
    .goto 1426/0,-1184.93,-4250.73,20 >>Springt vorsichtig die Bergseite hinab
    .isQuestAvailable 983
step
    .goto 1426/0,-1192.32,-4216.25,10,0
    .goto 1426/0,-1182.96,-4196.55,8,0
    .goto 1437/0,-1166.63,-4147.02,12,0
    .goto 1437/0,-1162.91,-4104.03,12,0
    .goto 1437/0,-1154.64,-4060.48,12,0
    .goto 1437/0,-1118.24,-4031.81,15,0
    .goto 1437/0,-1092.6,-4013.35,12,0
    .goto 1437/0,-1049.60,-3998.74,12,0
    .goto 1437/0,-1012.79,-3978.34,20,0
    .goto 1437/0,-1022.72,-3952.43,20,0
    .goto 1437/0,-1014.03,-3904.2,12,0
    >>|cRXP_WARN_Macht den Dun Morogh -> Sumpfland skip|r ohne zu sterben
    >>|cRXP_WARN_Seid vorsichtig vor |cRXP_ENEMY_Schlicker|r (selten), bevor ihr zur Küste hinuntergeht (falls er up ist)|r
    >>|cRXP_WARN_Seid vorsichtig vor den |cRXP_ENEMY_Räuber der Blaukiemen|r im Westen, wenn ihr das Meer erreicht|r
    >>|cRXP_WARN_Weicht den |cRXP_ENEMY_Junger Sumpflandkrokilisk|r aus wenn ihr das Meer überquert. Wartet, bis sie wegpatroullieren|r
    .link https://youtu.be/QcEUvwu49KI?t=336 >> |cRXP_WARN_Klickt hier für eine Anleitung (Es wird dringend empfohlen, dies zu tun.)|r
    .goto 1437/0,-914.37,-3828.40,15 >> Laufe zum Hafen von Menethil
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
    .unitscan Sludginn
    .isQuestAvailable 983
--VV Custom Video
step
    #completewith next
    .goto 1437/0,-836.21,-3796.15,10,0
    .goto 1437/0,-829.18,-3804.420,10 >>Betretet Das Gasthaus
step
    .goto 1437/0,-823.8,-3807.180
    >>Springt unten auf den Kronleuchter
    >>Sprich durch die Wand mit |cRXP_FRIENDLY_Samor|r
    >>|cRXP_WARN_HINWEIS: Um dies zu tun, bindet "Interagieren mit Ziel" unter Gameplay -> Steuerung im Optionsmenü|r
    >>|cRXP_WARN_Falls das Boot gerade angekommen ist, überspringt diesen Schritt|r
    .vendor 1457 >> |cRXP_BUY_Kaufe|r |T134831:0|t[Heiltrank] |cRXP_BUY_von ihm (wenn sie verfügbar sind)|r
    .target Samor Festivus
    .money <0.03
step
    .goto 1437/0,-782.03,-3793.12
    >>Sprecht mit |cRXP_FRIENDLY_Shellei|r
    .fp Menethil Harbor >> Holt euch den Flugpunkt zum Hafen von Menethil
    .target Shellei Brondir
step
    #completewith DarkshoreBoat
    .goto 1437/0,-715.87,-3697.48
    >>|cRXP_WARN_Falls das Boot gerade angekommen ist, überspringt diesen Schritt|r
    +|cRXP_WARN_Kocht beliebig viele|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_welche ihr von draußen habt (es gibt ein Lagerfeuer im Inneren)|r
    .itemcount 769,1
step
    .goto 1437/0,-715.87,-3697.48
    >>Sprecht mit |cRXP_FRIENDLY_Dewin|r durch die Wand
    >>|cRXP_WARN_Falls das Boot gerade angekommen ist, überspringt diesen Schritt|r
    .vendor 1453 >> |cRXP_BUY_Kaufe|r |T134831:0|t[Heiltrank] |cRXP_BUY_von ihm (wenn sie verfügbar sind)|r
    .target Dewin Shimmerdawn
    .money <0.03
step
    #completewith Darkshore
    #label DarkshoreBoat
    .goto 1437/0,-641.43,-3758.94,20,0
    .goto 1437/0,-575.68,-3719.53,20 >>Lauf zum Dunkelküste-Boot
step
    #completewith next
    #requires DarkshoreBoat
    +|cRXP_WARN_Fangt an|r |T132794:0|t[Wasser herbeizaubern Rang 2] zu spammen |cRXP_WARN_um so viel Wasser wie möglich herbeizuzaubern|r
step
    #label Darkshore
    .goto 1437/0,-565.34,-3724.77
    .zone Darkshore >> Nimm das Boot nach Dunkelküste
step
    #label Darkshoreshore
    #completewith Wizbang
    .goto 1439/1,601.35,6358.29,60 >>Springt vom Boot ab, wenn ihr dem Ufer am nächsten seid
step
    #requires Darkshoreshore
    #completewith Wizbang
    +|cRXP_WARN_Lockt 2-3 |cRXP_ENEMY_Zwerggezeitenkriecher|r zu |cRXP_FRIENDLY_Wizbang|r (Denkt daran, |r|T135848:0|t[Frostnova]|cRXP_WARN_ zu benutzen) Tötet sie, wenn ihr die Quest annehmt|r
    .mob Pygmy Tide Crawler
step
    #requires Darkshoreshore
    #completewith next
    .goto 1439/1,533.23,6399.77,0,0
    >>Sprecht mit |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Kauft bis zu 20|r |T133918:0|t[Roher Langzahniger Matschschnapper] |cRXP_BUY_von ihm|r
    .vendor >> Verkauft Müll
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
step
    #requires Darkshoreshore
    #completewith next
    .goto 1439/1,536.51,6389.29,20,0
    .goto 1439/1,528.65,6404.14,10,0
    .goto 1439/1,537.16,6417.68,10,0
    >>Geht nach oben zum obersten Geschoss
    .goto 1439/1,519.48,6405.89,8 >>Reist zu |cRXP_FRIENDLY_Wizbang|r
step
    #label Wizbang
    .goto 1439/1,519.48,6405.89
    >>Sprecht mit |cRXP_FRIENDLY_Wizbang|r
    .accept 983 >>Akzeptiert die Quest Dröhnkiste 827
    .target Wizbang Cranktoggle
step
    #completewith DalmondBags
    >>Tötet die |cRXP_ENEMY_Zwerggezeitenkriecher|r die ihr mitgezogen habt. Plündert sie für ihre |cRXP_LOOT_Kriecherbeine|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    .goto 1439/1,533.23,6399.77
    >>Sprecht mit |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Kauft bis zu 20|r |T133918:0|t[Roher Langzahniger Matschschnapper] |cRXP_BUY_von ihm|r
    .vendor >> Verkauft Müll
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
    .itemcount 4592,<20
step << skip
    #requires DalmondBags
    #completewith next
    .goto 1439/1,462.49,6525.97,20,0
    .goto 1439/1,414.68,6472.70,20,0
    .goto 1439/1,383.89,6445.62,20,0
    .goto 1439/1,362.93,6434.27,12 >>Reist zu |cRXP_FRIENDLY_Terenthis|r
step
    >>Sprecht mit |cRXP_FRIENDLY_Terenthis|r und |cRXP_FRIENDLY_Tharnariun|r
    .accept 984 >>Akzeptiert die Quest Wie groß ist die Bedrohung?
    .target +Terenthis
    .goto 1439/1,362.93,6434.27,-1
    .accept 2118 >>Akzeptiert die Quest Verseuchtes Land
    .goto 1439/1,397.65,6437.76,-1
    .target +Tharnariun Treetender
step << skip
    #completewith next
    .goto 1439/1,489.35,6450.43,20,0
    .goto 1439/1,470.35,6525.530,20,0
    .goto 1439/1,492.62,6580.99,10 >>Reist zu |cRXP_FRIENDLY_Thundris|r
step
    #sticky
    #label DalmondBags
    .goto 1439/1,488.69,6564.830
    >>Sprecht mit |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Kauft so viele|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_wie ihr braucht/könnt|r
    .target Dalmond
    .money <0.0500
    .isQuestAvailable 954
step
    .goto 1439/1,492.62,6580.99
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
    .goto 1439/1,492.62,6580.99,-1
    .accept 2178 >>Akzeptiert die Quest Schreitereintopf
    .goto 1439/1,472.97,6557.85,-1
    .target +Alanndarian Nightsong
	.skill cooking,<10,1
step
    .goto 1439/1,-117.84,6820.72
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
    .goto 1439/1,48.53,6748.67
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
	.goto 1439/1,22.33,6736.44,35,0
	.goto 1439/1,28.88,6669.20,35,0
	.goto 1439/1,58.36,6649.98,35,0
	.goto 1439/1,-6.49,6603.26,35,0
	.goto 1439/1,-45.79,6638.63,35,0
	.goto 1439/1,-17.62,6695.40,35,0
	.goto 1439/1,-62.16,6719.41,35,0
	.goto 1439/1,-130.94,6712.86,35,0
	.goto 1439/1,-36.62,6760.90,35,0
	.goto 1439/1,22.33,6736.44,35,0
    >>Tötet |cRXP_ENEMY_Übler Grimmling|r und |cRXP_ENEMY_Wild Grells|r. Plündert sie für |cRXP_LOOT_Grell-Ohrring|r
    >>|cRXP_WARN_Passt auf, denn die |cRXP_ENEMY_Übler Grimmling|r wirken|r |T136016:0|t[Gift] |cRXP_WARN_(Nahkampf Sofortangriff: Verursacht alle 3 Sek. 3 Schaden für 15 Sek.) und die |cRXP_ENEMY_Wilden Grells|r wirken|r |T136215:0|t[Wahnsinnig] |cRXP_WARN_(Selbst Sofortzauber: Erhöht die Angriffsgeschwindigkeit um 20% bei <20% Leben)|r
    .complete 955,1 --Grell Earring (8)
    .mob Vile Sprite
    .mob Wild Grell
step
    .goto 1439/1,48.53,6748.67
    >>Sprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Gebt die Quest Bashal'Aran ab
    .accept 956 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
step
    .goto 1439/1,-38.58,6739.5,45,0
    .goto 1439/1,-66.75,6683.61,45,0
    .goto 1439/1,-67.40,6672.25,45,0
    .goto 1439/1,-34.00,6601.51,45,0
    .goto 1439/1,-115.22,6626.40,45,0
    .goto 1439/1,-160.41,6690.16,45,0
    .goto 1439/1,-187.27,6708.930,45,0
    .goto 1439/1,-165.65,6728.15,45,0
    .goto 1439/1,-38.58,6739.5,45,0
    .goto 1439/1,-66.75,6683.61,45,0
    .goto 1439/1,-67.40,6672.25,45,0
    .goto 1439/1,-34.00,6601.51,45,0
    .goto 1439/1,-115.22,6626.40,45,0
    .goto 1439/1,-160.41,6690.16,45,0
    .goto 1439/1,-187.27,6708.930,45,0
    .goto 1439/1,-165.65,6728.15
    >>Tötet |cRXP_ENEMY_Satyr der Deth'ryll|r. Plündert sie für |cRXP_LOOT_Altes Mondstein-Siegel|r
    >>|cRXP_WARN_Seid vorsichtig sie wirken|r |T132222:0|t[Schießen] |cRXP_WARN_(Distanzangriff: Verursacht 15-25 Schaden)|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
step
    #label BashalF
    .goto 1439/1,48.53,6748.67
    >>Sprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Gebt die Quest Bashal'Aran ab
    .accept 957 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
step
    .goto 1439/1,397.65,6437.76
    .xp 10+6625 >> Farmt bis 6625+/7600 EP auf dem Weg zurück zu |cRXP_FRIENDLY_Tharnariun|r
step
    .goto 1439/1,397.65,6437.76
    >>Sprecht mit |cRXP_FRIENDLY_Tharnariun|r
    .turnin 2118 >> Gebt die Quest Verseuchtes Land ab
    .accept 2138 >> Akzeptiert die Quest Ausrottung der Infizierten
    .target Tharnariun Treetender
step
    .goto 1439/1,539.13,6409.82,12,0
    .goto 1439/1,600.70,6425.100
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
    .goto 1439/1,543.06,6342.57
    >>Sprecht mit |cRXP_FRIENDLY_Gwennyth|r
    .accept 3524 >>Akzeptiert die Quest An Land gespült
    .target Gwennyth Bly'Leggonde
step
    .goto 1439/1,561.40,6343.01
    >>Sprich mit |cRXP_FRIENDLY_Caylais|r
    .fp Auberdine >> Erlernt die Flugroute nach Auberdine
    .target Caylais Moonfeather
step
    #requires Gwennyth
    #completewith Bones
    .goto 1439/1,569.26,6373.14,50,0
    .goto 1439/1,596.11,6334.27,50,0
    .goto 1439/1,592.84,6265.72,50,0
    .goto 1439/1,600.70,6228.600,50,0
    .goto 1439/1,567.29,6154.370,50,0
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
    .goto 1439/1,558.78,6111.57
    >>Plündert die |cRXP_LOOT_Gestrandete Meereskreatur|r
    >>|cRXP_WARN_Passt auf, denn die nahegelegenen |cRXP_ENEMY_Küstenläufer der Grauflossen|r haben|r |T132307:0|t[Erhöte Bewegungsgeschwindigkeit]
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    .goto 1439/1,569.26,6373.14
    >>Tötet |cRXP_ENEMY_Zwerggezeitenkriecher|r und |cRXP_ENEMY_Junger Riffkriecher|r. Plündert sie für |cRXP_LOOT_Kriecherbein|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #requires Gwennyth
    .goto 1439/1,393.72,5993.24
    >>Lauft zum Furbolg Camp
    >>|cRXP_WARN_Versucht nicht gegen die, |rWindsprecher der Schwarzfelle|cRXP_ENEMY_ zu kämpfen|r
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    .goto 1439/1,302.02,5726.433
    >>Sprecht mit |cRXP_FRIENDLY_Tysha|r
    .accept 953 >>Akzeptiert die Quest Der Untergang von Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #completewith Anaya
    +|cRXP_WARN_Meidet es |cRXP_ENEMY_Lady Mondblick|r (rare) zu pullen, wenn sie up ist|r
    .unitscan Lady Moongazer
 step
    #completewith Relics
    .goto 1439/1,161.19,5684.51,0
    >>Tötet |cRXP_ENEMY_Anaya Dawnrunner|r. Plündert sie für |cRXP_LOOT_Anayas Anhänger|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #completewith Fall
    >>Tötet |cRXP_ENEMY_Verfluchte Hochgeborene|r und |cRXP_ENEMY_Zuckender Hochgeborener|r. Plündert sie für |cRXP_LOOT_Hochgeborenenrelikt|r
    >>|cRXP_WARN_Tötet |cRXP_ENEMY_Klagende Hochgeborene|r nur, wenn sie euch im Weg sind|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    .goto 1439/1,166.43,5633.86
    >>Klickt die |cRXP_PICK_Uralte Flamme|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto 1439/1,148.09,5575.78
    >>Klickt |cRXP_PICK_Der Untergang von Ameth’Aran|r am Boden an
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto 1439/1,105.52,5770.100
    >>Klickt |cRXP_PICK_Die Lage von Ameth’Aran|r am Boden an
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
    #label Fall
    .goto 1439/1,302.02,5726.433
    >>Sprecht mit |cRXP_FRIENDLY_Tysha|r
    .turnin 953 >>Gebt die Quest Der Untergang von Ameth'Aran ab
    .target Sentinel Tysha Moonblade
step
    #label Relics
    .goto 1439/1,206.39,5802.41,50,0
    .goto 1439/1,117.96,5820.32,50,0
    .goto 1439/1,71.46,5788.00,50,0
    .goto 1439/1,87.18,5713.77,50,0
    .goto 1439/1,93.07,5585.83,50,0
    .goto 1439/1,165.78,5564.870,50,0
    .goto 1439/1,242.41,5641.72,50,0
    .goto 1439/1,206.39,5802.41
    >>Tötet |cRXP_ENEMY_Verfluchte Hochgeborene|r und |cRXP_ENEMY_Zuckender Hochgeborener|r
    >>|cRXP_WARN_Tötet |cRXP_ENEMY_Klagende Hochgeborene|r nur, wenn sie euch im Weg sind|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    #label Anaya
    .goto 1439/1,161.19,5684.51
    >>Tötet |cRXP_ENEMY_Anaya Dawnrunner|r. Plündert sie für |cRXP_LOOT_Anayas Anhänger|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #completewith next
    .goto 1439/1,-22.21,5999.79,30 >>Geht in die Höhle
    >>|cRXP_WARN_Meidet |cRXP_ENEMY_Distelbären|r, |cRXP_ENEMY_Moonkins|r, und |cRXP_ENEMY_Tobender Moonkin|r auf dem Weg (wenn möglich)|r
    .isOnQuest 958
step
    .goto 1439/1,-54.96,6015.51
    .goto 1439/1,210.32,6739.501,30 >>|cRXP_WARN_Tötet das|cRXP_ENEMY_Moonkinorakel|r in der Höhle --, then drink Logout Skip by logging out on top of the Mushroom at the back of the cave|r
    >>|cRXP_WARN_Seid vorsichtig, da es|r |T136006:0|t[Zorn] wirkt |cRXP_WARN_(Distanzzauber: welcher 30-45 Naturschaden verursacht),|r |T136096:0|t[Mondfeuer] |cRXP_WARN_(Distanzzauber: welcher 20-30 Naturschaden verursacht, dann 44 Naturschaden über 12 Sek.), und|r |T136085:0|t[Nachwachsen] |cRXP_WARN_(Selbstzauber: Heilung für ca 150 . Selten, aber rennt wenn das passiert)|r
    >>|cRXP_WARN_Ihr könnt seinen|r |T136006:0|t[Zorn] |cRXP_WARN_hinter den Felsen am Eingang der Höhle umgehen|r
    .mob Moonkin Oracle
    .isOnQuest 958
step
    .goto 1439/1,47.88,6748.67
    >>Sprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 957,3 >>Gebt die Quest Bashal'Aran ab
    .target Asterion
step
    #sticky
    #label DalmondBags1
    .goto 1439/1,488.69,6564.830,0,0
    >>Sprecht mit |cRXP_FRIENDLY_Dalmond|r
    .vendor >> Verkauft Müll
    .target Dalmond
    .isQuestAvailable 3524
step
    .goto 1439/1,491.97,6582.303
    >>Sprecht mit |cRXP_FRIENDLY_Thundris|r
    .turnin 958 >>Gebt die Quest Werkzeuge der Hochgeborenen ab
    .target Thundris Windweaver
step
    #requires DalmondBags1
    .goto 1439/1,472.97,6557.85
    >>Sprecht mit |cRXP_FRIENDLY_Alanndarian|r
    .turnin 2178 >>Gebt die Quest Schreitereintopf ab
    .target Alanndarian Nightsong
    .itemcount 5469,5
    .skill cooking,<10,1
step
    .goto 1439/1,362.93,6434.27
    >>Sprecht mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Gebt die Quest Wie groß ist die Bedrohung? ab
    .accept 985 >> Akzeptiert die Quest Wie groß ist die Bedrohung?
    .accept 4761 >> Akzeptiert die Quest Thundris Windwirker
    .target Terenthis
step
    .goto 1439/1,541.75,6313.31
    >>Klickt |cRXP_PICK_Buzzbox 827|r
    .turnin 983 >>Gebt die Quest Dröhnkiste 827 ab
    .accept 1001 >>Akzeptiert die Quest Dröhnkiste 411
step
    .goto 1439/1,536.51,6365.28,12,0
    .goto 1439/1,543.06,6342.57
    >>Sprecht mit |cRXP_FRIENDLY_Gwennyth|r
    .turnin 3524 >>Gebt die Quest An Land gespült ab
    .accept 4681 >>Akzeptiert die Quest An Land gespült
    .target Gwennyth Bly'Leggonde
 step
    .goto 1439/1,533.23,6399.77
    >>Sprecht mit |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Kauft bis zu 40|r |T133918:0|t[Roher Langzahniger Matschschnapper] |cRXP_BUY_von ihm|r
    .collect 4592,40,4681,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto 1439/1,539.13,6409.82,12,0
    .goto 1439/1,600.70,6425.100
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
    .goto 1439/1,786.06,6488.85,15,0
    .goto 1439/1,818.81,6419.86,25 >> Lauft über den Steg zu den |cRXP_LOOT_Meeresschildkrötenüberresten|r
step
    .goto 1439/1,854.84,6310.26
    >>Schwimmt unter Wasser
    >>Plündert die |cRXP_LOOT_Meeresschildkrötenüberreste|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto 1439/1,575.81,6381.430,50,0
    .goto 1439/1,596.77,6329.91,50,0
    .goto 1439/1,581.05,6209.82,50,0
    .goto 1439/1,575.15,6144.32,50,0
    .goto 1439/1,545.68,6010.270,50,0
    .goto 1439/1,634.10,5983.63,50,0
    .goto 1439/1,634.76,5915.51,50,0
    .goto 1439/1,537.82,5840.4,50,0
    .goto 1439/1,575.81,6381.430,50,0
    .goto 1439/1,596.77,6329.91,50,0
    .goto 1439/1,581.05,6209.82,50,0
    .goto 1439/1,575.15,6144.32,50,0
    .goto 1439/1,545.68,6010.270,50,0
    .goto 1439/1,634.10,5983.63,50,0
    .goto 1439/1,634.76,5915.51,50,0
    .goto 1439/1,537.82,5840.40
    .xp 11+7825 >> Grind bis 7825+/8800 XP
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #label Gwen
    .goto 1439/1,539.78,6364.84,12,0
    .goto 1439/1,543.06,6342.57
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
    .goto 1439/1,515.55,6406.32
    >>|cRXP_WARN_===ACHTUNG===|r
    >>|cRXP_WARN_Sprecht mit|r |cRXP_FRIENDLY_Shaussiy|r
    >>|cRXP_WARN_Falls dies euer erstes Mal ist, einen Ruhestein Batch durchzuführen, schaut euch den Guide dafür unten an|r
    >>|cRXP_WARN_Öffnet das Menü "Ruhestein setzen", dann wirkt|r |T134414:0|t[Ruhestein]
    .hs >> |cRXP_WARN_Ruhestein BATCH von Auberdine nach Eisenschmiede|r
    .link https://www.youtube.com/watch?v=Is-h2TJpL3M >> |cRXP_WARN_HIER KLICKEN (es wird SEHR empfohlen, dies zu tun). Stellt sicher, dass ihr eure Batching Window Size vorher eingestellt und getestet habt, um das Fehlerrisiko zu senken|r
    .target Innkeeper Shaussiy
    .zoneskip Ironforge
step
    .goto 1455/0,-928.40,-4614.51
    >>Sprich mit |cRXP_FRIENDLY_Dink|r
    .trainer >> Erlerne die Klassenfähigkeiten (Feuerball Rang 3, Magie dämpfen)
    >>Gesamtpreis Kosten: 12s
    >>Erinnert euch, dass ihr vielleicht Geld für eine |T133024:0|t[Bronzeröhre] (je 8 Silber) und zum Fliegen nach Thelsamar (1 Gold 10 Silber) brauchen könnt
    .target Dink
step << skip
    .goto 1455/0,-928.80,-4614.51,-1
    .goto 1455/0,-1249.87,-4793.31,-1
    .vendor 5175 >> Logout-Skip auf dem Pfeiler über |cRXP_FRIENDLY_Dink|r, um |cRXP_FRIENDLY_Cogspinner|r auf ein |T133024:0|t[Bronzeröhre] zu überprüfen, falls ihr möchtet
    .itemcount 4371,<1
    .isQuestAvailable 418
step
    #completewith next
    +|cRXP_WARN_Wirkt schnell|r |T132794:0|t[Wasser herbeizaubern Rang 2] |cRXP_WARN_, um so viel Wasser wie möglich vor dem Flug herzustellen|r
step << Gnome
    .goto 1455/0,-1152.39,-4820.914
    >>Sprich mit |cRXP_FRIENDLY_Gryth|r
    .accept 6392 >>Akzeptiert die Quest Rückkehr zu Brock
    .target Gryth Thurden
step
    .goto 1455/0,-1152.39,-4820.914
    >>Sprich mit |cRXP_FRIENDLY_Gryth|r
    .fly Thelsamar >> Fliege nach Thelsamar
    .target Gryth Thurden
]])

RXPGuides.RegisterGuide([[
#forever
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
    .goto 1432/0,-2602.54,-5832.73
    >>Sprecht mit |cRXP_FRIENDLY_Cobbleflint|r
    .accept 224 >> Akzeptiert die Quest Verteidigung der Länder des Königs
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >> BETRITT den Bunker. Geht zum obersten Geschoss
step
    .goto 1432/0,-2634.59,-5842.81
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
    .goto 1432/0,-2729.40,-5534.96
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
    .goto 1432/0,-2602.54,-5832.73
    >>Sprecht mit |cRXP_FRIENDLY_Cobbleflint|r
    .turnin 224 >> Gebt die Quest Verteidigung der Länder des Königs ab
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >> BETRITT den Bunker. Geht zum obersten Geschoss
step
    #label Rugel2
    .goto 1432/0,-2634.59,-5842.81
    >>Sprecht mit |cRXP_FRIENDLY_Rugelfuss|r
    .turnin 267 >> Gebt die Quest Die Bedrohung durch die Troggs ab
    .target Captain Rugelfuss
step << skip
    #completewith next
    .goto 1432/0,-2586.52,-5740.99,20,0
    .goto 1432/0,-2569.14,-5673.30,20,0
    .goto 1432/0,-2531.62,-5638.34,30 >>Geht zurück in den Tunnel
step << skip
    .goto 1432/0,-2513.42,-5618.48
    .goto 1432/0,-2881.66,-5351.18,30 >>Springt, Logout-Skip von der Kohlenpfanne im Tunnel nach Thelsamar
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
    .goto 1432/0,-2643.89,-4817.34,30 >>Reist nach Station Algaz
    .isOnQuest 1339
step
    .goto 1432/0,-2659.34,-4822.300
    >>Sprecht mit |cRXP_FRIENDLY_Gothor|r
    .vendor >>Verkauft Müll
    .target Gothor Brumn
    .isOnQuest 1339
step
    .goto 1432/0,-2676.82,-4825.93
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
    .goto 1432/0,-2972.13,-4836.10,40 >>Reist zum Eingang der Mine
    .isOnQuest 307
step
    #label Gear
    .goto 1432/0,-2971.58,-4854.31,12,0
    .goto 1432/0,-2998.33,-4868.66,12,0
    .goto 1432/0,-2965.79,-4891.84,12,0
    .goto 1432/0,-2983.99,-4892.58,12,0
    .goto 1432/0,-2955.86,-4919.99,12,0
    .goto 1432/0,-2989.51,-4910.05,12,0
    .goto 1432/0,-2993.09,-4945.19,12,0
    .goto 1432/0,-2957.24,-4945.37,12,0
    .goto 1432/0,-2971.58,-4854.31,12,0
    .goto 1432/0,-2998.33,-4868.66,12,0
    .goto 1432/0,-2965.79,-4891.84,12,0
    .goto 1432/0,-2983.99,-4892.58,12,0
    .goto 1432/0,-2955.86,-4919.99,12,0
    .goto 1432/0,-2989.51,-4910.05,12,0
    .goto 1432/0,-2993.09,-4945.19,12,0
    .goto 1432/0,-2957.24,-4945.37
    >>Plündert |cRXP_LOOT_Minenarbeiterausstattung|r auf dem Boden. |cRXP_WARN_Sie teilen sich Spawnpunkte|r
    >>Passt auf, da |cRXP_WARN_Geomant der Tunnelratten|cRXP_ENEMY_ wirken|r |T135824:0|t[Schneller Flammenzauberschutz] |r(Selbstzauber Sofort: Gewährt 10-Sekunden-Feuerimmunität) und|cRXP_WARN_ |T135824:0|t[Feuerschlag] |r(Distanzzauber Sofort: Verursacht 20-30 Feuerschaden)|cRXP_WARN_
    .complete 307,1 --Collect Miners' Gear (x4)
--VV Rat Diggers
step
    #label Exit
    .goto 1432/0,-2972.13,-4836.10,40 >>Verlasst die Mine
    .isOnQuest 307
step
#loop
	.line Loch Modan,34.38,17.67,35.44,15.34,37.15,10.53,39.38,10.92,38.46,14.43,39.67,18.12,39.84,24.83,37.34,26.82,37.15,24.53,38.85,21.25,37.89,18.88,34.38,17.67
	.goto 1432/0,-2942.06,-4812.55,40,0
	.goto 1432/0,-2971.30,-4769.69,40,0
	.goto 1432/0,-3018.47,-4681.21,40,0
	.goto 1432/0,-3079.98,-4688.38,40,0
	.goto 1432/0,-3054.60,-4752.95,40,0
	.goto 1432/0,-3087.98,-4820.83,40,0
	.goto 1432/0,-3092.67,-4944.27,40,0
	.goto 1432/0,-3023.71,-4980.88,40,0
	.goto 1432/0,-3018.47,-4938.75,40,0
	.goto 1432/0,-3065.36,-4878.41,40,0
	.goto 1432/0,-3038.88,-4834.81,40,0
	.goto 1432/0,-2942.06,-4812.55,40,0
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
    .goto 1432/0,-2643.89,-4817.34,30 >>Reist nach Station Algaz
    .isOnQuest 307
step
    .goto 1432/0,-2659.34,-4822.300
    >>Sprecht mit |cRXP_FRIENDLY_Gothor|r
    .vendor >>Verkauft Müll
    .target Gothor Brumn
    .isOnQuest 307
step
    .goto 1432/0,-2676.82,-4825.93
    >>Geht nach oben
    >>Sprich mit |cRXP_FRIENDLY_Stormpike|r
    .turnin 307,2 >> Gebt die Quest Schmutzige Pfoten ab
    .target Mountaineer Stormpike
step
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto 1432/0,-2849.11,-4944.45,35,0
	.goto 1432/0,-2895.45,-5014.91,35,0
	.goto 1432/0,-2957.24,-5067.89,35,0
	.goto 1432/0,-3008.26,-5098.06,35,0
	.goto 1432/0,-3087.43,-5091.25,35,0
	.goto 1432/0,-3046.05,-5189.48,35,0
	.goto 1432/0,-2918.62,-5233.08,35,0
	.goto 1432/0,-2817.66,-5471.86,35,0
	.goto 1432/0,-2809.66,-5343.64,35,0
	.goto 1432/0,-2819.87,-5220.39,35,0
	.goto 1432/0,-2740.98,-5225.170,35,0
	.goto 1432/0,-2794.49,-5102.66,35,0
	.goto 1432/0,-2743.74,-5021.16,35,0
	.goto 1432/0,-2704.57,-4958.430,35,0
	.goto 1432/0,-2645.82,-4895.890,35,0
	.goto 1432/0,-2849.11,-4944.45,35,0
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
    .goto 1432/0,-3019.30,-5354.50,10,0
    >>Sprecht mit |cRXP_FRIENDLY_Brock|r und |cRXP_FRIENDLY_Jern|r
    >>|cRXP_WARN_Sie können sich im Gebäude oder außerhalb davon befinden|r
    .turnin 6392 >>Gebt die Quest Rückkehr zu Brock ab << Gnome
    .target +Brock Stoneseeker
    .goto 1432/0,-3014.88,-5366.820
    .accept 436 >> Akzeptiert die Quest Eisenbands Ausgrabungsstätte
    .goto 1432/0,-3020.68,-5358.91
    .target +Jern Hornhelm
    .xp >13+5500,1 << Gnome
step
    .goto 1432/0,-3020.68,-5358.91
    >>Sprecht mit |cRXP_FRIENDLY_Jern|r
    >>|cRXP_WARN_Er kann sich im Gebäude oder außerhalb davon befinden|r
    .accept 436 >> Akzeptiert die Quest Eisenbands Ausgrabungsstätte
    .target Jern Hornhelm
    .xp >13+6550,1 << Gnome
    .isQuestTurnedIn 6392
step << Human
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto 1432/0,-2849.11,-4944.45,50,0
	.goto 1432/0,-2895.45,-5014.91,50,0
	.goto 1432/0,-2957.24,-5067.89,50,0
	.goto 1432/0,-3008.26,-5098.06,50,0
	.goto 1432/0,-3087.43,-5091.25,50,0
	.goto 1432/0,-3046.05,-5189.48,50,0
	.goto 1432/0,-2918.62,-5233.08,50,0
	.goto 1432/0,-2817.66,-5471.86,50,0
	.goto 1432/0,-2809.66,-5343.64,50,0
	.goto 1432/0,-2819.87,-5220.39,50,0
	.goto 1432/0,-2740.98,-5225.170,50,0
	.goto 1432/0,-2794.49,-5102.66,50,0
	.goto 1432/0,-2743.74,-5021.16,50,0
	.goto 1432/0,-2704.57,-4958.430,50,0
	.goto 1432/0,-2645.82,-4895.890,50,0
	.goto 1432/0,-2849.11,-4944.45,50,0
    .xp 13+8675 >> Farmt bis 8675+/11400 XP
step << Gnome
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto 1432/0,-2849.11,-4944.45,50,0
	.goto 1432/0,-2895.45,-5014.91,50,0
	.goto 1432/0,-2957.24,-5067.89,50,0
	.goto 1432/0,-3008.26,-5098.06,50,0
	.goto 1432/0,-3087.43,-5091.25,50,0
	.goto 1432/0,-3046.05,-5189.48,50,0
	.goto 1432/0,-2918.62,-5233.08,50,0
	.goto 1432/0,-2817.66,-5471.86,50,0
	.goto 1432/0,-2809.66,-5343.64,50,0
	.goto 1432/0,-2819.87,-5220.39,50,0
	.goto 1432/0,-2740.98,-5225.170,50,0
	.goto 1432/0,-2794.49,-5102.66,50,0
	.goto 1432/0,-2743.74,-5021.16,50,0
	.goto 1432/0,-2704.57,-4958.430,50,0
	.goto 1432/0,-2645.82,-4895.890,50,0
	.goto 1432/0,-2849.11,-4944.45,50,0
    .xp 13+6545 >> Farmt bis 6545+/11400 XP
    .xp <13+5500,1
    .isOnQuest 6392
step << Gnome
    #completewith next
    .goto 1432/0,-3266.44,-5656.19,50,0
    .goto 1432/0,-3354.99,-5726.64,50,0
    .goto 1432/0,-3425.60,-5738.42,50,0
    .goto 1432/0,-3781.98,-5702.54,20 >>Geht zu |cRXP_FRIENDLY_Aldren|r
step << Gnome
    #completewith Boast
    .goto 1432/0,-3781.98,-5702.54
    >>Sprecht mit |cRXP_FRIENDLY_Aldren|r
    .vendor 1214 >> |cRXP_BUY_Kauft den|r |T132491:0|t[Weisengürtel] |cRXP_BUY_von ihm (falls er verfügbar ist)|r
    .isQuestAvailable 298
step << Gnome
    >>Sprecht mit |cRXP_FRIENDLY_Ironband|r und |cRXP_FRIENDLY_Magmar|r
    .accept 298 >> Akzeptiert die Quest Bericht über den Fortschritt der Ausgrabungen
    .target +Prospector Ironband
    .goto 1432/0,-3812.59,-5694.63
    .turnin 436 >> Gebt die Quest Eisenbands Ausgrabungsstätte ab
    .goto 1432/0,-3783.63,-5713.77
    .target +Magmar Fellhew
    .isOnQuest 436
step << Gnome
    #label ExcavationP
    .goto 1432/0,-3812.59,-5694.63
    >>Sprich mit |cRXP_FRIENDLY_Ironband|r
    .accept 298 >> Akzeptiert die Quest Bericht über den Fortschritt der Ausgrabungen
    .target Prospector Ironband
    .isQuestTurnedIn 436
step << Gnome
    #completewith next
    .goto 1432/0,-3816.18,-5786.250,30,0
    .goto 1432/0,-4013.68,-5791.58,40,0
    .goto 1432/0,-4124.56,-5742.100,40,0
    .goto 1432/0,-4258.62,-5650.48,15,0
    .goto 1432/0,-4296.41,-5694.63,20 >>Reist zu |cRXP_FRIENDLY_Daryl|r
step << Gnome
    #label Boast
    .goto 1432/0,-4296.41,-5694.63
    >>Sprecht mit |cRXP_FRIENDLY_Daryl|r
    .accept 257 >> Akzeptiert die Quest Das Prahlen eines Jägers
    .target Daryl The Youngling
    .isOnQuest 298
step << Gnome
#loop
	.line Loch Modan,79.89,65.91,76.70,74.44,74.74,69.21,77.03,60.55,76.09,57.94,77.39,55.98,79.63,59.85,79.89,65.91
	.goto 1432/0,-4197.38,-5699.97,45,0
	.goto 1432/0,-4109.39,-5856.89,45,0
	.goto 1432/0,-4055.33,-5760.68,45,0
	.goto 1432/0,-4118.49,-5601.37,45,0
	.goto 1432/0,-4092.57,-5553.35,45,0
	.goto 1432/0,-4128.42,-5517.30,45,0
	.goto 1432/0,-4190.21,-5588.49,45,0
	.goto 1432/0,-4197.38,-5699.97,45,0
    >>Tötet |cRXP_ENEMY_Bergbussards|r
    .complete 257,1 --Mountain Buzzard (6)
    .mob Mountain Buzzard
    .isOnQuest 257
step << Gnome
    #completewith next
    .goto 1432/0,-4258.62,-5650.48,15,0
    .goto 1432/0,-4296.41,-5694.63,20 >>Reist zu |cRXP_FRIENDLY_Daryl|r
step << Gnome
    .goto 1432/0,-4296.41,-5694.63
    >>Sprecht mit |cRXP_FRIENDLY_Daryl|r
    .turnin 257,2 >> Gebt die Quest Das Prahlen eines Jägers ab
    .target Daryl The Youngling
    .isQuestComplete 257
step << Gnome
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto 1432/0,-2849.11,-4944.45,50,0
	.goto 1432/0,-2895.45,-5014.91,50,0
	.goto 1432/0,-2957.24,-5067.89,50,0
	.goto 1432/0,-3008.26,-5098.06,50,0
	.goto 1432/0,-3087.43,-5091.25,50,0
	.goto 1432/0,-3046.05,-5189.48,50,0
	.goto 1432/0,-2918.62,-5233.08,50,0
	.goto 1432/0,-2817.66,-5471.86,50,0
	.goto 1432/0,-2809.66,-5343.64,50,0
	.goto 1432/0,-2819.87,-5220.39,50,0
	.goto 1432/0,-2740.98,-5225.170,50,0
	.goto 1432/0,-2794.49,-5102.66,50,0
	.goto 1432/0,-2743.74,-5021.16,50,0
	.goto 1432/0,-2704.57,-4958.430,50,0
	.goto 1432/0,-2645.82,-4895.890,50,0
	.goto 1432/0,-2849.11,-4944.45,50,0
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
	.goto 1432/0,-2849.11,-4944.45,50,0
	.goto 1432/0,-2895.45,-5014.91,50,0
	.goto 1432/0,-2957.24,-5067.89,50,0
	.goto 1432/0,-3008.26,-5098.06,50,0
	.goto 1432/0,-3087.43,-5091.25,50,0
	.goto 1432/0,-3046.05,-5189.48,50,0
	.goto 1432/0,-2918.62,-5233.08,50,0
	.goto 1432/0,-2817.66,-5471.86,50,0
	.goto 1432/0,-2809.66,-5343.64,50,0
	.goto 1432/0,-2819.87,-5220.39,50,0
	.goto 1432/0,-2740.98,-5225.170,50,0
	.goto 1432/0,-2794.49,-5102.66,50,0
	.goto 1432/0,-2743.74,-5021.16,50,0
	.goto 1432/0,-2704.57,-4958.430,50,0
	.goto 1432/0,-2645.82,-4895.890,50,0
	.goto 1432/0,-2849.11,-4944.45,50,0
    .xp 13+6780 >> Farmt bis 6780+/11400 XP
    .isOnQuest 298
step
    #sticky
    #label Kadrell
    .goto 1432/0,-2902.07,-5398.28,40,0
    .goto 1432/0,-2945.10,-5360.20,40,0
    .goto 1432/0,-3015.71,-5335.73,40,0
    .goto 1432/0,-3025.09,-5318.44,40,0
    .goto 1432/0,-3017.64,-5274.66
    >>Sprecht mit |cRXP_FRIENDLY_Kadrell|r
    >>|cRXP_FRIENDLY_Kadrell|r |cRXP_WARN_patrouilliert auf der Hauptstraße in Thelsamar|r
    .turnin 416,2 >> Gebt die Quest Rattenfang ab
    .target Mountaineer Kadrell
step << Gnome
    .goto 1432/0,-3019.30,-5354.50,10,0
    >>Sprecht mit |cRXP_FRIENDLY_Brock|r und |cRXP_FRIENDLY_Jern|r
    >>|cRXP_WARN_Sie können sich im Gebäude oder außerhalb davon befinden|r
    .turnin 6392 >>Gebt die Quest Rückkehr zu Brock ab
    .target +Brock Stoneseeker
    .goto 1432/0,-3014.88,-5366.820
    .turnin 298 >> Gebt die Quest Bericht über den Fortschritt der Ausgrabungen ab
    .accept 301 >> Akzeptiert die Quest Meldung in Eisenschmiede
    .goto 1432/0,-3020.68,-5358.91
    .target +Jern Hornhelm
    .isOnQuest 298
step << Gnome
    .goto 1432/0,-3019.30,-5354.50,10,0
    >>Sprecht mit |cRXP_FRIENDLY_Brock|r und |cRXP_FRIENDLY_Jern|r
    >>|cRXP_WARN_Sie können sich im Gebäude oder außerhalb davon befinden|r
    .turnin 6392 >>Gebt die Quest Rückkehr zu Brock ab
    .target Brock Stoneseeker
    .goto 1432/0,-3014.88,-5366.820
    .accept 301 >> Akzeptiert die Quest Meldung in Eisenschmiede
    .goto 1432/0,-3020.68,-5358.91
    .target +Jern Hornhelm
    .isQuestTurnedIn 298
step << Gnome
    .goto 1432/0,-3019.30,-5354.50,10,0
    .goto 1432/0,-3014.88,-5366.820
    >>Sprecht mit |cRXP_FRIENDLY_Brock|r
    >>|cRXP_WARN_Er kann sich im Gebäude oder außerhalb davon befinden|r
    .turnin 6392 >>Gebt die Quest Rückkehr zu Brock ab
    .target Brock Stoneseeker
step
    #completewith next
    .goto 1432/0,-2966.06,-5365.72,12,0
    .goto 1432/0,-2969.92,-5377.12,12,0
    >>Betretet Das Gasthaus
    .goto 1432/0,-2954.42,-5394.10,10 >>Reist zu |cRXP_FRIENDLY_Vidra|r
step
    .goto 1432/0,-2954.42,-5394.10
    >>Sprecht mit |cRXP_FRIENDLY_Vidra|r
    .accept 418 >> Akzeptiert die Quest Blutwurst aus Thelsamar
    .turnin 418 >> Gebt die Blutwurst in Thelsamar ab
    .target Vidra Hearthstove
step
    .goto 1432/0,-2952.55,-5381.91
    >>|cRXP_WARN_Werft|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r NICHT weg
    .skill cooking,10 >> Kocht |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r zu |T133974:0|t[Geröstetes Eberfleisch] bis euer |T133971:0|t[Kochkunst] skill 10 erreicht
step
    .goto 1432/0,-2952.55,-5381.91
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
    .goto 1432/0,-2929.93,-5424.95
    >>Sprecht mit |cRXP_FRIENDLY_Thorgrum|r
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Thorgrum Borrelson
    .isOnQuest 1338
--VV WIP. Report to Ironforge needed
step << Gnome
    .goto 1455/0,-1303.71,-4631.08
    >>Sprich mit |cRXP_FRIENDLY_Stormpike|r
    .turnin 301 >> Gebt die Quest Meldung in Eisenschmiede ab
    .target Prospector Stormpike
    .isOnQuest 301
step << skip
    #completewith Monty
    .goto 1455/0,-1305.14,-4615.09,-1
    .goto 1455/0,-1158.00,-4816.48,-1
    .goto 1455/0,-1317.71,-4839.48,30 >>Logout-Skip zur Außenseite der Tiefenbahn
step
    .goto 1455/0,-1249.87,-4793.31
    >>Sprecht mit |cRXP_FRIENDLY_Cogspinner|r
    .vendor 5175 >>|cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_wenn er sie hat|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
step << Gnome
    #label Monty
    .goto 1455/0,-1317.71,-4839.48,30,0
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
    .timer 13,Tiefenbahn-Ratteten-Razzia RP << Gnome
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
    .goto 1453/0,574.95,-8388.30,20,0
    .goto 1453/0,614.33,-8380.77,20,0
    .goto 1453/0,638.26,-8342.22,15 >>Reist zu |cRXP_FRIENDLY_Billibub|r
step
    .goto 1453/0,638.26,-8342.22
    >>Sprecht mit |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_wenn er sie hat|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
step
    .goto 1453/0,600.08,-8427.20
    >>Sprecht mit |cRXP_FRIENDLY_Furen|r
    .turnin 1338 >> Gebt die Quest Stormpikes Bestellung ab
    .target Furen Longbeard
step
    #completewith next
    .goto 1453/0,663.94,-8451.76,20,0
    .goto 1453/0,686.79,-8473.27,20,0
    .goto 1453/0,678.86,-8562.64,20,0
    .goto 1453/0,711.26,-8587.38,20,0
    .goto 1453/0,737.60,-8557.89,12,0
    .goto 1453/0,719.86,-8550.36,12 >>Reist zu |cRXP_FRIENDLY_Baros|r
step
    .goto 1453/0,719.86,-8550.36
    >>Geht ins Gebäude
    >>Sprecht mit |cRXP_FRIENDLY_Baros|r
    .accept 399 >> Akzeptiert die Quest Ein bescheidener Anfang
    .target Baros Alexston
step
    #completewith next
    .goto 1453/0,739.49,-8661.68,15,0
    .goto 1453/0,720.67,-8699.06,15,0
    .goto 1453/0,728.33,-8718.06,15,0
    .goto 1453/0,699.16,-8743.88,15,0
    .goto 1453/0,674.29,-8775.79,15,0
    .goto 1453/0,686.25,-8815.41,8,0
    .goto 1453/0,684.24,-8820.34,4,0
    .goto 1453/0,687.46,-8818.01,6,0
    .goto 1453/0,854.42,-8965.28,12,0
    >>|cRXP_WARN_Springt hoch auf die Fackel, dann fallt nach unten, um unter Sturmwind zu kommen|r
    >>|cRXP_WARN_Mit Schatten auf "Mittel" oder "Niedrig", geht zwischen die Füße von Derek the Dinosaur (auf dem helleren Teil des Bodens) gerade vor dem blauen nichts und lauft dann geradeaus nach vorne|r
    >>|cRXP_WARN_HINWEIS: Es besteht eine kleine Chance, mit dieser Methode zu sterben. Ihr könnt auch normal zum Magierturm laufen, wenn ihr wollt|r
    .link https://youtu.be/gV8-wgQEomc >> KLICKT HIER für einen Leitfaden
    .goto 1453/0,861.95,-8990.47,10 >>Reist zu|cRXP_FRIENDLY_Jennea|r
step
    .goto 1453/0,861.95,-8990.47
    >>Sprich mit |cRXP_FRIENDLY_Jennea|r
    .accept 1861 >> Akzeptiert die Quest Spiegelsee << Gnome
    .trainer >> Erlernt eure Klassenfähigkeiten (Feuerschlag Rang 2, Arkane Intelligenz Rang 2, Arkane Explosion)
    >>Gesamtpreis Kosten: 27s
    >>Erinnert euch, dass ihr möglicherweise Geld für Tränke (1-3s jeweils) und Schriftrollen (50c-3s jeweils) braucht
    .target Jennea Cannon
step
    #completewith next
    .goto 1453/0,887.22,-9017.80,10,0
    .goto 1453/0,871.36,-9013.14,10,0
    .goto 1453/0,868.8,-9004.27,8,0
    .goto 1453/0,877.00,-9008.03,6,0
    .goto 1453/0,863.96,-9001.40,8,0
    .goto 1453/0,928.62,-9010.10,15,0
    .goto 1453/0,962.63,-8990.73,15,0
    .goto 1453/0,949.86,-9009.380,10,0
    .goto 1453/0,942.34,-9001.49,8,0
    >>Verlasst den Magierturm
    .goto 1453/0,948.65,-8994.50,10 >>Reist zu |cRXP_FRIENDLY_Charys|r
step
    .goto 1453/0,948.65,-8994.50
    >>Betretet das Gebäude
    >>Sprich mit |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >> |cRXP_BUY_Kauft|r |T134851:0|t[Geringer Manatrank] |cRXP_BUY_und|r |T134831:0|t[Heiltrank] |cRXP_BUY_von ihr (falls vorhanden)|r
    .money <0.0120
    .target Charys Yserian
step
    #completewith next
    .goto 1453/0,852.40,-8920.10,20,0
    .goto 1453/0,829.01,-8901.28,20,0
    .goto 1453/0,789.22,-8904.59,20,0
    .goto 1453/0,758.31,-8878.78,20,0
    .goto 1453/0,810.33,-8832.44,20,0
    .goto 1453/0,827.54,-8850.19,15,0
    .goto 1453/0,822.16,-8865.60,10 >>Reist zu |cRXP_FRIENDLY_Adair|r
    .money <0.0090
step
    .goto 1453/0,822.16,-8865.60
    >>Betretet das Gebäude
    >>Sprich mit |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >> |cRXP_BUY_Kauft alle bis auf Intelligenz|r |T134943:0|t[Schriftrollen] |cRXP_BUY_von ihm (falls vorhanden)|r
    .money <0.0090
    .target Adair Gilroy
step << skip
    #completewith next
    .goto 1453/0,661.38,-8858.16,12,0
    .goto 1453/0,680.61,-8829.39,12,0
    .goto 1453/0,717.44,-8847.32,12,0
    .goto 1453/0,693.24,-8891.51,12,0
    .goto 1453/0,681.28,-8888.01,10 >>Reist zu |cRXP_FRIENDLY_Roberto|r
step << skip
    .goto 1453/0,681.28,-8888.01
    >>Geht ins Gebäude
    >>Sprecht mit |cRXP_FRIENDLY_Roberto|r
    >>|cRXP_BUY_Kauft|r |T132620:0|t[Fässlein mit Merlot] |cRXP_BUY_von ihm|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    .goto 1453/0,680.61,-8828.67,15,0
    .goto 1453/0,635.44,-8863.81,8 >>Reist zu |cRXP_FRIENDLY_Keldric|r
    .money <0.01
step
    .goto 1453/0,635.44,-8863.81
    >>Sprecht mit |cRXP_FRIENDLY_Keldric|r durch die Mauer
    .vendor 1257 >> |cRXP_BUY_Kauft|r |T134830:0|t[Geringer Heiltrank] |cRXP_BUY_von ihm, falls sie verfügbar sind|r
    .money <0.01
    .target Keldric Boucher
step
    #completewith Bank
    .goto 1453/0,637.59,-8889.81,10 >>Betretet die Bank von Sturmwind
step
    .goto 1453/0,614.33,-8932.92
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
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 769,4371,7207 >> Packe folgende Items in die Bank:
    >>|T133970:0|t[Brocken Eberfleisch]
    >>|T133024:0|t[Bronzeröhre]
    >>|T132788:0|t[Jenneas Fläschchen]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 4371,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 769,730,7207 >> Packe folgende Items in die Bank:
    >>|T133970:0|t[Brocken Eberfleisch]
    >>|T133884:0|t[Murlocauge]
    >>|T132788:0|t[Jenneas Fläschchen]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 4371,730,7207 >> Packe folgende Items in die Bank:
    >>|T133024:0|t[Bronzeröhre]
    >>|T133884:0|t[Murlocauge]
    >>|T132788:0|t[Jenneas Fläschchen]
    .target Newton Burnside
    .itemcount 4371,1
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 769,7207 >> Packe folgende Items in die Bank:
    >>|T133970:0|t[Brocken Eberfleisch]
    >>|T132788:0|t[Jenneas Fläschchen]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 4371,7207 >> Packe folgende Items in die Bank:
    >>|T133024:0|t[Bronzeröhre]
    >>|T132788:0|t[Jenneas Fläschchen]
    .target Newton Burnside
    .itemcount 4371,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 730,7207 >> Packe folgende Items in die Bank:
    >>|T133884:0|t[Murlocauge]
    >>|T132788:0|t[Jenneas Fläschchen]
    .target Newton Burnside
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 7207 >> Packe folgende Items in die Bank:
    >>|T132788:0|t[Jenneas Fläschchen]
    .target Newton Burnside
    .itemcount 7207,1
step
    #completewith next
    .goto 1453/0,662.46,-8860.76,10,0
    >>Betretet das Gasthaus
    .goto 1453/0,673.75,-8867.93,10 >>Reisen zu |cRXP_FRIENDLY_Allison|r
    .target Innkeeper Allison
step
    .goto 1453/0,673.75,-8867.93
    >>|cRXP_WARN_===ACHTUNG===|r
    >>|cRXP_WARN_Sprecht mit|r |cRXP_FRIENDLY_Allison|r
    >>|cRXP_WARN_Öffnet das Menü "Ruhestein setzen", dann wirkt|r |T134414:0|t[Ruhestein]
    .hs >> |cRXP_WARN_Ruhestein BATCH von Sturmwind nach Auberdine|r
    .target Innkeeper Allison
    .zoneskip Darkshore

]])
RXPGuides.RegisterGuide([[
#forever
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
    .goto 1439/1,533.23,6399.77
    >>Sprecht mit |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Kauft bis zu 20|r |T133918:0|t[Roher Langzahniger Matschschnapper] |cRXP_BUY_von ihm|r
    .collect 4592,20,982,1 --Longjaw Mud Snapper (20)
    .target Laird
    .isQuestAvailable 982
step
    >>Sprecht mit |cRXP_FRIENDLY_Barithras|r und |cRXP_FRIENDLY_Glynda|r
    .accept 947 >>Akzeptiert die Quest Höhlenpilze
    .target +Barithras Moonshade
    .goto 1439/1,497.21,6427.72
    .accept 4811 >>Akzeptiert die Quest Der rote Kristall
    .goto 1439/1,473.63,6439.07
    .target +Sentinel Glynda Nal'Shea
step
    #label DeepO
    .goto 1439/1,445.46,6536.01
    >>Sprecht mit |cRXP_FRIENDLY_Gorbold|r
    .accept 982 >> Akzeptiert die Quest Tiefer Ozean, weites Meer
    .target Gorbold Steelhand
step
    .goto 1439/1,492.62,6580.99
    >>Sprecht mit |cRXP_FRIENDLY_Thundris|r
    .turnin 4761 >> Gebt die Quest Thundris Windwirker ab
    .accept 4762 >> Akzeptiert die Quest Der Cliffspring
    .target Thundris Windweaver
step
    #completewith MistV
    .goto 1439/1,592.18,6666.14,50,0
    .goto 1439/1,565.33,6925.96,50,0
    .goto 1439/1,478.21,6985.78,50,0
    >>Tötet |cRXP_ENEMY_Dunkelküstendrescher|r. Im Wasser. Plündert sie für |cRXP_LOOT_Drescherauge|r
   .complete 1001,1 --Thresher Eye (3)
   .mob Darkshore Thresher
step
   .goto 1439/1,438.91,7077.48
--  .goto 1439/1,437.60,7076.17
    >>Plündert die |cRXP_LOOT_Schließkassette der SILBERMORGEN|r durch die Wand des Bootes
    >>|cRXP_WARN_Benutzt euer Tastenkürzel "Interagieren mit Ziel" unter Wasser neben dem Pfeil|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
   .complete 982,1 --Silver Dawning's Lockbox (1)
step
   #label MistV
   .goto 1439/1,349.18,7133.81
--  .goto 1439/1,345.90,7134.68
   >>Plündert die |cRXP_LOOT_Schließkassette der NEBELSCHLEIER|r durch die Wand des Bootes
   >>|cRXP_WARN_Benutzt euer Tastenkürzel "Interagieren mit Ziel" unter Wasser neben dem Pfeil|r
   >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
   .complete 982,2 --Mist Veil's Lockbox (1)
step
   .goto 1439/1,292.85,7083.16,50,0
   .goto 1439/1,592.18,6666.14,50,0
   .goto 1439/1,565.33,6925.96,50,0
   .goto 1439/1,478.21,6985.78,50,0
   .goto 1439/1,292.85,7083.16,50,0
   .goto 1439/1,592.18,6666.14,50,0
   .goto 1439/1,565.33,6925.96,50,0
   .goto 1439/1,478.21,6985.78
   >>Tötet |cRXP_ENEMY_Dunkelküstendrescher|r. Im Wasser. Plündert sie für |cRXP_LOOT_Drescherauge|r
   .complete 1001,1 --Thresher Eye (3)
   .mob Darkshore Thresher
step
   #completewith next
   +|cRXP_WARN_Behaltet die|r |T133884:0|t[Murlocaugen] |cRXP_WARN_die ihr von den|r |cRXP_ENEMY_Küstenläufer der Grauflossen|r |cRXP_WARN_und|r |cRXP_ENEMY_Seher der Grauflossen|r plündert
step
   .goto 1439/1,196.56,6958.71
   >>Plündert die |cRXP_LOOT_Gestrandete Meereskreatur|r vom Boden
   >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
   .accept 4723 >> Akzeptiert die Quest Gestrandete Meereskreatur
step
   .goto 1439/1,193.29,7084.03
   >>Klickt |cRXP_PICK_Buzzbox 411|r
   .turnin 1001 >> Gebt die Quest Dröhnkiste 411 ab
   .accept 1002 >> Akzeptiert die Quest Dröhnkiste 323
step
    #completewith SeaTurtle1
    .goto 1439/1,81.28,7118.96,50,0
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
    .goto 1439/1,46.57,7433.8,80 >>Reist zur |cRXP_LOOT_Gestrandete Meeresschildkröte|r
    .isQuestAvailable 4725
step
    #completewith next
    +Behaltet die |T133884:0|t[Murlocaugen], die ihr von |cRXP_ENEMY_Krieger der Grauflossen|r und |cRXP_ENEMY_Netzer der Grauflossen|r plündert
step
    .goto 1439/1,46.57,7433.800
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
    .goto 1439/1,-383.77,7222.89
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
    .goto 1439/1,-144.04,6209.82,400 >>Reist zu |cRXP_PICK_Der Rote Kristall|r
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
    .goto 1439/1,-144.04,6209.82
    >>Lauft hoch zu |cRXP_PICK_Der rote Kristall|r
    >>|cRXP_WARN_Denkt daran die|cRXP_ENEMY_Tobender Moonkin|r, werden zusammen gepullt|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range (1)
step
    #label Bash
    .goto 1439/1,166.43,5633.86,175 >>Reist zur |cRXP_PICK_Uralte Flamme|r
    .isOnQuest 957
step
    #completewith next
    .goto 1439/1,161.19,5684.51,0
    >>Tötet |cRXP_ENEMY_Anaya Dawnrunner|r. Plündert sie für |cRXP_LOOT_Anayas Anhänger|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    .goto 1439/1,166.43,5633.86
    >>Klickt die |cRXP_PICK_Uralte Flamme|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto 1439/1,161.19,5684.51,50,0
    .goto 1439/1,108.79,5608.10,50,0
    .goto 1439/1,155.95,5757.00,50,0
    .goto 1439/1,161.19,5684.51,50,0
    .goto 1439/1,108.79,5608.10,50,0
    .goto 1439/1,155.95,5757.00,50,0
    .goto 1439/1,161.19,5684.51,50,0
    .goto 1439/1,108.79,5608.10
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
    .goto 1439/1,511.62,5618.58
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .accept 4722 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
#loop
	.line Darkshore,38.74,58.10,39.91,58.50,39.23,63.60,39.87,66.31,39.98,70.55,37.40,70.05,38.63,67.72,38.50,63.73,38.74,58.10
	.goto 1439/1,404.20,5796.300,45,0
	.goto 1439/1,327.56,5778.830,45,0
	.goto 1439/1,372.10,5556.130,45,0
	.goto 1439/1,330.18,5437.80,45,0
	.goto 1439/1,322.98,5252.65,45,0
	.goto 1439/1,491.97,5274.48,45,0
	.goto 1439/1,411.40,5376.23,45,0
	.goto 1439/1,419.92,5550.46,45,0
	.goto 1439/1,404.20,5796.300,45,0
    >>Tötet |cRXP_ENEMY_Tollwütiger Distelbär|r
    >>|cRXP_WARN_Seid vorsichtig, da sie|r |T135914:0|t[Tollwut] wirken |cRXP_WARN_(Sofort Nahkampf: Verringert ALLE Gesundheitsregeneration um 50% für 10 Minuten)|r
    .complete 2138,1 --Rabid Thistle Bear (20)
    .mob Rabid Thistle Bear
step
    #label RBears
#loop
	.line Darkshore,39.26,56.72,40.21,56.23,39.96,55.22,39.90,54.38,40.24,53.47,39.21,53.01,39.90,54.38
	.goto 1439/1,370.14,5856.56,50,0
	.goto 1439/1,307.91,5877.96,50,0
	.goto 1439/1,324.29,5922.06,50,0
	.goto 1439/1,328.22,5958.74,50,0
	.goto 1439/1,305.95,5998.48,50,0
	.goto 1439/1,373.41,6018.56,50,0
	.goto 1439/1,328.22,5958.74,50,0
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
	.goto 1439/1,411.40,6095.42,50,0
	.goto 1439/1,431.05,6150.00,50,0
	.goto 1439/1,440.88,6218.99,50,0
	.goto 1439/1,404.85,6253.93,50,0
	.goto 1439/1,355.07,6252.62,50,0
	.goto 1439/1,229.97,6275.32,50,0
	.goto 1439/1,212.28,6173.14,50,0
	.goto 1439/1,226.69,6113.32,50,0
	.goto 1439/1,411.40,6095.42,50,0
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #label Auberdine
    .goto 1439/1,543.06,6342.57,150 >>Reist zu |cRXP_FRIENDLY_Gwennyth|r
    .isOnQuest 982
step
    .goto 1439/1,536.51,6365.28,12,0
    .goto 1439/1,543.06,6342.57
    >>Sprecht mit |cRXP_FRIENDLY_Gwennyth|r
    .turnin 4722 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .turnin 4723 >> Gebt die Quest Gestrandete Meereskreatur ab
    .turnin 4725 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .target Gwennyth Bly'Leggonde
--Fruit of the Sea at 18
step
    .goto 1439/1,533.23,6399.77
    >>Sprecht mit |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Kauft bis zu 20|r |T133918:0|t[Roher Langzahniger Matschschnapper] |cRXP_BUY_von ihm|r
    .vendor >> Verkauft Müll
    .collect 4592,20,4763,1 --Longjaw Mud Snapper (40)
    .target Laird
    .isOnQuest 982
step
    .goto 1439/1,539.13,6409.82,12,0
    .goto 1439/1,600.70,6425.100
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
    .goto 1439/1,533.23,6399.77
    >>Sprecht mit |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Kauft 15|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihr|r
    .collect 1205,15,4763,1 --Melon Juice (15)
    .target Allyndia
    .money <0.1500
step
    .goto 1439/1,533.23,6399.77
    >>Sprecht mit |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Kauft 10|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihr|r
    .collect 1205,10,4763,1 --Melon Juice (10)
    .target Allyndia
    .money <0.1000
step
    .goto 1439/1,533.23,6399.77
    >>Sprecht mit |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Kauft 5|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihr|r
    .collect 1205,5,4763,1 --Melon Juice (5)
    .target Allyndia
    .money <0.0500
step
    #completewith next
    .goto 1439/1,488.69,6451.300,20,0
    .goto 1439/1,487.38,6481.870,20,0
    .goto 1439/1,489.35,6506.32,15 >>Reist zu |cRXP_FRIENDLY_Hollee|r
step
    .goto 1439/1,489.35,6506.32
    >>Sprecht mit |cRXP_FRIENDLY_Hollee|r
    .accept 729 >>Der geistesabwesende Ausgrabungsleiter annehmen
    .target Archaeologist Hollee
step
    .goto 1439/1,488.69,6564.830
    >>Sprecht mit |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Kauft so viele|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_wie ihr braucht/könnt|r
    .target Dalmond
    .money <0.0500
    .money >0.2500
step
    .goto 1439/1,488.69,6564.830
    >>Sprecht mit |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Kauft einen|r |T133634:0|t[Brauner Lederranzen] |cRXP_BUY_von ihm|r
    .target Dalmond
    .money <0.2500
step
    #label CliffRi
    .goto 1439/1,492.62,6580.99
    >>Sprecht mit |cRXP_FRIENDLY_Thundris|r
    .turnin 4762 >> Gebt die Quest Der Cliffspring ab
    .accept 4763 >> Akzeptiert die Quest Die verderbten Schwarzfelle
    .target Thundris Windweaver
step
    .goto 1439/1,472.97,6557.85
    >>Sprecht mit |cRXP_FRIENDLY_Alanndarian|r
    .accept 2178 >>Akzeptiert die Quest Schreitereintopf
    .turnin 2178 >>Gebt die Quest Schreitereintopf ab
    .target Alanndarian Nightsong
step
    #label DeepO
    .goto 1439/1,445.46,6536.01
    >>Sprecht mit |cRXP_FRIENDLY_Gorbold|r
    .turnin 982,2 >> Gebt die Quest Tiefer Ozean, weites Meer ab
    .target Gorbold Steelhand
step
    #completewith next
    .goto 1439/1,476.25,6479.25,15,0
    .goto 1439/1,478.21,6446.50,15,0
    .goto 1439/1,473.63,6439.07,20 >>Reist zu Glynda
step
    .goto 1439/1,473.63,6439.07
    >>Sprecht mit |cRXP_FRIENDLY_Glynda|r
    .turnin 4811 >>Gebt die Quest Der rote Kristall ab
    .accept 4812 >>Akzeptiert die Quest Wenn das Wasser fließt
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439/1,465.11,6416.80
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
    .goto 1439/1,397.65,6437.33
    .turnin 985 >> Gebt die Quest Wie groß ist die Bedrohung? ab
    .accept 986 >> Akzeptiert die Quest Ein verirrter Meister
    .target +Terenthis
    .goto 1439/1,362.93,6434.27
    .accept 965 >>Der Turm von Althalaxx annehmen
    .goto 1439/1,369.48,6449.99,8,0
    .goto 1439/1,384.55,6431.65
    .target +Sentinel Elissa Starbreeze
step << Gnome
    #completewith next
    +Rüstet den |T132491:0|t[Weisengürtel] aus
    .use 4786
    .itemcount 4786,1
    .itemStat 6,LEVEL,<20
step
    .goto 1439/1,-157.79,6206.770
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
    .goto 1439/1,47.88,6748.67
    >>Sprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 957,3 >>Gebt die Quest Bashal'Aran ab
    .target Asterion
step
    #label GrainSample
    .goto 1439/1,-376.56,6805.87
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
    .goto 1439/1,-485.95,6763.95,20,0
    .goto 1439/1,-489.88,6724.22,20,0
    .goto 1439/1,-436.82,6694.96,30 >>Reist in RIchtung der |cRXP_ENEMY_Höhlenmutter|r
step
    .goto 1439/1,-432.24,6664.39
    >>Tötet die |cRXP_ENEMY_Höhlenmutter|r
    >>|cRXP_WARN_Seid vorsichtig, denn die |cRXP_ENEMY_Höhlenmutter|r und ihre |cRXP_ENEMY_Distelbärjunges|r wirken|r |T132141:0|t[Verheeren] |cRXP_WARN_(2 Sekunden stun)|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .itemcount 4358,<1
step
    #label DenM
    .goto 1439/1,-432.24,6664.39
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
    .goto 1439/1,-451.23,6870.06
    >>Öffnet |cRXP_PICK_Nusslager der Schwarzfelle|r. Plündert es für |cRXP_LOOT_Nussprobe der Schwarzfelle|r :3
    >>|cRXP_WARN_Greife die Mobs an, die es beschützen, und wirke den Zauber.|r |T135848:0|t[Frostnova]|cRXP_WARN_, plündert |cRXP_LOOT_Nussprobe der Schwarzfelle|r, dann lauft nach Norden|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .collect 12343,1,4673,1 --Blackwood Nut Sample (1)
step
    .goto 1439/1,-520.01,6873.99
    >>Öffnet |cRXP_PICK_Obstlager der Schwarzfelle|r. Plündert es für |cRXP_LOOT_Obstprobe der Schwarzfelle|r
    >>Tötet die |cRXP_ENEMY_Krieger der Schwarzfelle|r welche euch angreifen
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .collect 12341,1,4673,1 --Blackwood Fruit Sample (1)
step
    #completewith next
    .goto 1439/1,-497.74,6887.53
    .cast 16072 >>Benutzt die |T134712:0|t[Gefüllte Säuberungsschale] neben dem Lagerfeuer, um |cRXP_ENEMY_Xabraxxis|r zu beschwören
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .timer 20,Die verderbten Schwarzfelle RP
    .use 12347
step
    #label Talisman
    .goto 1439/1,-480.05,6888.84
    >>Warte auf das RP
    >>Tötet |cRXP_ENEMY_Xabraxxis|r
    >>Plündert die |cRXP_PICK_Xabraxxis Dämonentasche|r, die er auf den Boden fallen lässt. Plündert sie für den |cRXP_LOOT_Talisman der Verderbnis|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 4763,1 --Talisman of Corruption (1)
    .mob Xabraxxis
step
    .goto 1439/1,-417.83,7262.19
    >>Klickt |cRXP_PICK_Buzzbox 323|r
    .turnin 1002 >> Gebt die Quest Dröhnkiste 323 ab
    .accept 1003 >> Akzeptiert die Quest Dröhnkiste 525
    .isQuestComplete 1002
step
    .goto 1439/1,-417.83,7262.19
    >>Klickt |cRXP_PICK_Buzzbox 323|r
    .accept 1003 >> Akzeptiert die Quest Dröhnkiste 525
    .isQuestTurnedIn 1002
step
    #completewith next
    .goto 1439/1,-578.30,6956.96,60,0
    .goto 1439/1,-629.39,7042.98,60,0
    .goto 1439/1,-538.35,7099.75,60,0
    .goto 1439/1,-499.70,7221.14,60,0
    .goto 1439/1,-674.59,7333.80,60,0
    .goto 1439/1,-637.91,7415.02,60,0
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r. Plündert sie für ihren |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    .goto 1439/1,-537.04,7542.970
    >>Plündert die |cRXP_LOOT_Gestrandete Meeresschildkröte|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .accept 4727 >>Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    .goto 1439/1,-578.30,6956.96,60,0
    .goto 1439/1,-629.39,7042.98,60,0
    .goto 1439/1,-538.35,7099.75,60,0
    .goto 1439/1,-499.70,7221.14,60,0
    .goto 1439/1,-674.59,7333.80,60,0
    .goto 1439/1,-637.91,7415.02,60,0
    .goto 1439/1,-578.30,6956.96,60,0
    .goto 1439/1,-629.39,7042.98,60,0
    .goto 1439/1,-538.35,7099.75,60,0
    .goto 1439/1,-499.70,7221.14,60,0
    .goto 1439/1,-674.59,7333.80,60,0
    .goto 1439/1,-637.91,7415.02
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r. Plündert sie für ihren |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    .goto 1439/1,-417.83,7262.19
    >>Klickt |cRXP_PICK_Buzzbox 323|r
    .turnin 1002 >> Gebt die Quest Dröhnkiste 323 ab
    .accept 1003 >> Akzeptiert die Quest Dröhnkiste 525
step
    .goto 1439/1,-658.87,7246.47
    >>Sprecht mit |cRXP_FRIENDLY_Balthule|r
    .turnin 965 >>Gebt die Quest Der Turm von Althalaxx ab
    .accept 966 >>Der Turm von Althalaxx annehmen
    .target Balthule Shadowstrike
step
    .goto 1439/1,-684.41,7176.60,50,0
    .goto 1439/1,-749.91,7153.90,50,0
    .goto 1439/1,-875.02,7228.570,50,0
    .goto 1439/1,-684.41,7176.60,50,0
    .goto 1439/1,-749.91,7153.90
    >>Tötet |cRXP_ENEMY_Fanatikerin des dunklen Strangs|r. Plündert sie für |cRXP_LOOT_Abgenutztes Pergament|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
    .goto 1439/1,-658.87,7246.47
    >>Sprecht mit |cRXP_FRIENDLY_Balthule|r
    .turnin 966 >>Gebt die Quest Der Turm von Althalaxx ab
    .accept 967 >>Der Turm von Althalaxx annehmen
    .target Balthule Shadowstrike
step
    #label CapCave
    #completewith CapCave1
    .goto 1439/1,-660.83,6873.99,30 >>Geht in die Höhle
step << skip
    #requires CapCave
    #completewith CapCave1
    +|cRXP_WARN_Denkt bald an den Logout-Skip aus der Höhle|r
step
    #completewith next
    .goto 1439/1,-663.45,6877.49,8,0
    .goto 1439/1,-679.17,6848.67,8,0
    .goto 1439/1,-666.73,6819.41,8,0
    .goto 1439/1,-680.48,6779.67,8,0
    >>Plündert die blauen |cRXP_LOOT_Schorfstängling|r auf dem Boden
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 947,1,4 --Scaber Stalk (5)
step
    .goto 1439/1,-690.31,6751.29,12,0
    .goto 1439/1,-706.68,6748.23,12,0
    .goto 1439/1,-719.13,6787.530,12,0
    >>Bleibt auf der oberen Ebene der Höhle. Geht runter, wenn es keine |cRXP_LOOT_Todeskappe|r auf der oberen Ebene gibt
    >>Plündert die orange |cRXP_LOOT_Todeskappe|r auf dem Boden am Ende des oberen Pfads der Höhle
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 947,2 --Death Cap (1)
step
    #label CapCave1
    .goto 1439/1,-663.45,6877.49,8,0
    .goto 1439/1,-679.17,6848.67,8,0
    .goto 1439/1,-666.73,6819.41,8,0
    .goto 1439/1,-680.48,6779.67
    >>Plündert den ersten |cRXP_LOOT_Schorfstängling|r am Eingang der Höhle, nachdem ihr die |cRXP_LOOT_Todeskappe|r geplündert habt
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 947,1 --Scaber Stalk (5)
step << skip
    .goto 1439/1,-658.21,6825.96
    .goto 1439/1,210.32,6739.501,30 >> |cRXP_WARN_Macht einen Logout-Skip in der Höhle |r
    .isOnQuest 4763
step
    #completewith next
    .subzone 442 >> Reist nach Auberdine
    .isOnQuest 4763
step
    .goto 1439/1,492.62,6580.99
    >>Sprecht mit |cRXP_FRIENDLY_Thundris|r
    .turnin 4763,1 >> Gebt die Quest Die verderbten Schwarzfelle ab
    .target Thundris Windweaver
step
    .goto 1439/1,488.69,6564.830
    >>Sprecht mit |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Kauft einen|r |T133634:0|t[Brauner Lederranzen] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Geht nicht unter 30 Silber|r
    .target Dalmond
step
    .goto 1439/1,397.65,6437.33
    >>Sprecht mit |cRXP_FRIENDLY_Tharnariun|r
    .turnin 2139,1 >>Gebt die Quest Tharnariuns Hoffnung ab
    .target Tharnariun Treetender
step
    >>Sprecht mit |cRXP_FRIENDLY_Glynda|r, |cRXP_FRIENDLY_Barithras|r und dem |cRXP_PICK_Gesucht Poster|r
    .turnin 4813,2 >>Gebt die Quest Die Fragmente im Inneren ab
    .target +Sentinel Glynda Nal'Shea
    .goto 1439/1,473.63,6439.07
    .turnin 947 >>Gebt die Quest Höhlenpilze ab
    .accept 948 >>Akzeptiert die Quest Onu
    .target +Barithras Moonshade
    .goto 1439/1,497.21,6427.72
    .accept 4740 >> Akzeptiert die Quest GESUCHT: Gurgelbacke!
    .goto 1439/1,503.76,6402.39
step
    .goto 1439/1,533.23,6399.77
    >>Sprecht mit |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Kauft bis zu 40|r |T133918:0|t[Roher Langzahniger Matschschnapper] |cRXP_BUY_von ihm|r
    .collect 4592,40,729,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto 1439/1,543.06,6342.57
    >>Sprecht mit |cRXP_FRIENDLY_Gwennyth|r
    .turnin 4727 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .target Gwennyth Bly'Leggonde
step
    .goto 1439/1,515.55,6406.32
    >>|cRXP_WARN_===ACHTUNG===|r
    >>|cRXP_WARN_Sprecht mit|r |cRXP_FRIENDLY_Shaussiy|r
    >>|cRXP_WARN_Öffnet das Menü "Ruhestein setzen", dann wirkt|r |T134414:0|t[Ruhestein]
    .hs >> |cRXP_WARN_Ruhestein BATCH von Auberdine nach Sturmwind|r
    .target Innkeeper Shaussiy
    .zoneskip Stormwind City
]])

RXPGuides.RegisterGuide([[
#forever
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
    .goto 1453/0,661.38,-8858.16,12,0
    .goto 1453/0,680.61,-8829.39,12,0
    .goto 1453/0,717.44,-8847.32,12,0
    .goto 1453/0,693.24,-8891.51,12,0
    .goto 1453/0,681.28,-8888.01,10 >>Reist zu |cRXP_FRIENDLY_Roberto|r
step << skip
    .goto 1453/0,681.28,-8888.01
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
    .goto 1453/0,614.33,-8932.92
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
    .goto 1453/0,686.25,-8815.41,8,0
    .goto 1453/0,684.24,-8820.34,4,0
    .goto 1453/0,687.46,-8818.01,6,0
    .goto 1453/0,854.42,-8965.28,12,0
    >>|cRXP_WARN_Springt hoch auf die Fackel, dann fallt nach unten, um unter Sturmwind zu kommen|r
    >>|cRXP_WARN_Mit Schatten auf "Mittel" oder "Niedrig", geht zwischen die Füße von Derek the Dinosaur (auf dem helleren Teil des Bodens) gerade vor dem blauen nichts und lauft dann geradeaus nach vorne|r
    >>|cRXP_WARN_HINWEIS: Es besteht eine kleine Chance, mit dieser Methode zu sterben. Ihr könnt auch normal zum Magierturm laufen, wenn ihr wollt|r
    .link https://youtu.be/gV8-wgQEomc >> KLICKT HIER für einen Leitfaden
    .goto 1453/0,861.95,-8990.47,10 >>Reist zu|cRXP_FRIENDLY_Jennea|r
step
    #requires Bank2
    #label JenneaT
    .goto 1453/0,861.95,-8990.47
    >>Sprich mit |cRXP_FRIENDLY_Jennea|r
    .trainer >> Erlerne deine Klassenfähigkeit (Flammenstoß)
    >>Gesamtpreis Kosten: 15s
    .target Jennea Cannon
step
    .goto 1453/0,635.44,-8863.81
    >>Sprecht mit |cRXP_FRIENDLY_Keldric|r durch die Mauer
    .vendor 1257 >> |cRXP_BUY_Kauft|r |T134830:0|t[Geringer Heiltrank] |cRXP_BUY_von ihm, falls sie verfügbar sind|r
    .target Keldric Boucher
    .money <0.14
step
    #completewith next
    .goto 1453/0,618.90,-8796.58,12,0
    .goto 1453/0,612.99,-8795.96,10 >>Reist in Richtung |cRXP_FRIENDLY_Woo Ping|r
step
    .goto 1453/0,612.99,-8795.96
    >>Sprecht mit |cRXP_FRIENDLY_Woo Ping|r
    .train 1180 >> Erlernt |T132321:0|t[Dolche]
    .target Woo Ping
step
    #completewith next
    .goto 1453/0,612.45,-8806.18,12,0
    .goto 1453/0,528.43,-8850.28,20,0
    .goto 1453/0,532.20,-8863.72,15,0
    .goto 1453/0,490.12,-8835.67,10 >>Lauf in Richtung |cRXP_FRIENDLY_Dungar|r
step << Human
    .goto 1453/0,490.12,-8835.67
    >>Sprich mit |cRXP_FRIENDLY_Dungar|r
    .turnin 6261 >> Gebt die Quest Dungar Longdrink ab
    .accept 6285 >> Akzeptiert die Quest Zurück zu Lewis
    .target Dungar Longdrink
step
    #completewith next << Human
    .goto 1453/0,490.12,-8835.67
    >>Sprich mit |cRXP_FRIENDLY_Dungar|r
    .fp Stormwind City >> Holt euch den Flugpunkt in Sturmwind << Gnome
    .fly Westfall >> Fliegt nach Westfall << Human
    .target Dungar Longdrink
    .zoneskip Westfall << Human
step << Gnome
    #completewith next
    #label Stormwind1
    .goto 1453/0,494.56,-8865.78,12,0
    .goto 1453/0,495.77,-8870.44,8,0
    .goto 1453/0,504.24,-8956.31,40 >>Fallt hinunter zum Felsvorsprung unter |cRXP_FRIENDLY_Dungar|r
step << Gnome
    #completewith next
    .goto 1429/0,421.28,-9104.28,40 >>Verlasst Sturmwind
step << skip
    #completewith next
    #requires Stormwind1
    .goto 1429/0,44.35,-9458.41,30 >>Reist zum Goldhain-Gasthaus
step << skip
    #label GoldshireTrain
    .goto 1429/0,34.28,-9472.99
    >>Springt auf den Kronleuchter unten, falls ihr nicht trainiert habt, ansonsten springt vom Stuhl hinauf
    >>Sprecht mit |cRXP_FRIENDLY_Zaldimar|r durch die Wand
    .accept 1919 >> Akzeptiert die Quest Meldung bei Jennea
    .trainer >> Erlerne deine Klassenfähigkeit (Flammenstoß)
    >>Gesamtpreis Kosten: 15s
step << skip
    .goto 1429/0,8.25,-9460.03
    >>Sprecht mit |cRXP_FRIENDLY_Dobbins|r
    >>|cRXP_BUY_Kauft einen|r |T132794:0|t[Schlauch mit süßem Rum] |cRXP_BUY_von ihm|r
    .collect 1939,1,116,1 --Skin of Sweet Rum
    .target Barkeep Dobbins
step << skip
    .goto 1429/0,16.23,-9462.580
    >>Sprecht mit |cRXP_FRIENDLY_Farley|r
    >>|cRXP_BUY_Kauft 45|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihm|r
    .collect 1205,45,64,1 --Melon Juice (45)
    .target Innkeeper Farley
    .money <0.45
step << Gnome
    .goto 1429/0,529.57,-9363.050
    >>Benutzt |T132788:0|t[Jenneas Fläschchen] beim Wasserfall
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .use 7207
    .complete 1861,1 --Mirror Lake Water Sample (1)
step
    >>Sprecht mit |cRXP_FRIENDLY_Bauer Furlbrow|r und |cRXP_FRIENDLY_Verna|r
    .accept 64 >> Akzeptiert die Quest Das vergessene Erbstück
    .accept 109 >> Akzeptiert die Quest Meldung bei Gryan Stoutmantle
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .accept 36 >> Akzeptiert die Quest Westfalleintopf
    .accept 151 >> Akzeptiert die Quest Die arme Graumähne
    .goto 1436/0,919.82,-9852.90
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
    .goto 1436/0,1055.27,-10128.70
    .turnin 36 >> Gebt die Quest Westfalleintopf ab
    .accept 38 >> Akzeptiert die Quest Westfalleintopf
    .accept 22 >> Akzeptiert die Quest Pastete aus Geiferzahnleber
    .goto 1436/0,1041.97,-10112.13
    .target +Salma Saldean
step << Gnome
    #completewith Gryan
    .goto 1436/0,1142.77,-10140.13,60,0
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
    .goto 1436/0,1045.12,-10508.80
    .turnin 6285 >> Gebt die Quest Zurück zu Lewis ab << Human
    .goto 1436/0,1021.60,-10500.61 << Human
    .accept 102 >> Akzeptiert die Quest Auf Patrouille durch Westfall << Gnome
    .goto 1436/0,1041.97,-10511.13 << Gnome
	.target +Captain Danuvin << Gnome
    .target +Quartermaster Lewis << Human
step
    .goto 1436/0,1127.37,-10636.43
	>>Sprecht mit |cRXP_FRIENDLY_Galiaan|r
    .accept 153 >> Akzeptiert die Quest Rote Lederkopftücher
	.target Scout Galiaan
step
    .goto 1436/0,1166.57,-10653.47
	>>Sprecht mit |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Kauft 45|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihr|r
    .collect 1205,45,64,1 --Melon Juice (45)
	.target Innkeeper Heather
    .money <0.45
step
    .goto 1436/0,1166.57,-10653.47
	>>Sprecht mit |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Kauft 40|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihr|r
    .collect 1205,40,64,1 --Melon Juice (40)
	.target Innkeeper Heather
    .money <0.40
step
    .goto 1436/0,1166.57,-10653.47
	>>Sprecht mit |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Kauft 35|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihr|r
    .collect 1205,35,64,1 --Melon Juice (35)
	.target Innkeeper Heather
    .money <0.35
step
    .goto 1436/0,1166.57,-10653.47
	>>Sprecht mit |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Kauft 30|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihr|r
    .collect 1205,30,64,1 --Melon Juice (30)
	.target Innkeeper Heather
    .money <0.30
step
    .goto 1436/0,1166.57,-10653.47
	>>Sprecht mit |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Kauft 25|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihr|r
    .collect 1205,25,64,1 --Melon Juice (25)
	.target Innkeeper Heather
    .money <0.25
step
    .goto 1436/0,1166.57,-10653.47
	>>Sprecht mit |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Kauft 20|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihr|r
    .collect 1205,20,64,1 --Melon Juice (20)
	.target Innkeeper Heather
    .money <0.20
step
    .goto 1436/0,1166.57,-10653.47
	>>Sprecht mit |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Kauft 15|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihr|r
    .collect 1205,15,64,1 --Melon Juice (15)
	.target Innkeeper Heather
    .money <0.15
step
    .goto 1436/0,1166.57,-10653.47
	>>Sprecht mit |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Kauft 10|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihr|r
    .collect 1205,10,64,1 --Melon Juice (10)
	.target Innkeeper Heather
    .money <0.10
step
    .goto 1436/0,1166.57,-10653.47
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
    .goto 1436/0,1635.92,-10621.27,60,0
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
    .goto 1436/0,1748.27,-10672.13
    >>Öffne |cRXP_PICK_Alexstons Truhe|r. Plündert sie für |cRXP_LOOT_Ein einfacher Kompass|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 399,1 --A Simple Compass (1)
step
    #label Oil
    .goto 1436/0,1708.02,-10578.80,60,0
    .goto 1436/0,1772.07,-10493.63,60,0
    .goto 1436/0,1839.27,-10496.90,60,0
    .goto 1436/0,1863.07,-10251.20,60,0
    .goto 1436/0,1635.92,-10621.27,60,0
    .goto 1436/0,1708.02,-10578.80,60,0
    .goto 1436/0,1772.07,-10493.63,60,0
    .goto 1436/0,1839.27,-10496.90,60,0
    .goto 1436/0,1863.07,-10251.20,60,0
    .goto 1436/0,1635.92,-10621.27
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
    .goto 1436/0,1952.67,-10751.7,60,0
    .goto 1436/0,1991.52,-10927.40,60,0
    .goto 1436/0,1874.97,-10996.000,60,0
    .goto 1436/0,1929.22,-11019.80,60,0
    .goto 1436/0,1917.67,-11086.77,30 >> AoE die Gnoll-Lager
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
    .goto 1436/0,1965.97,-11407.13
    >>Sprecht mit |cRXP_FRIENDLY_Grayson|r
    .accept 104 >> Akzeptiert die Quest Bedrohung an der Küste
    .target Captain Grayson
step
    .goto 1436/0,1829.47,-11357.20,70,0
    .goto 1436/0,1795.87,-11402.47,70,0
    .goto 1436/0,1778.37,-11374.70,70,0
    .goto 1436/0,1829.47,-11357.20,70,0
    .goto 1436/0,1900.52,-11319.87,70,0
    .goto 1436/0,1955.12,-11284.17,70,0
    .goto 1436/0,1984.17,-11236.33,70,0
    .goto 1436/0,1999.57,-11160.50,70,0
    .goto 1436/0,2009.37,-11093.53,70,0
    .goto 1436/0,2042.27,-11064.37,70,0
    .goto 1436/0,2062.22,-11032.40,70,0
    .goto 1436/0,2076.57,-10959.13,70,0
    .goto 1436/0,2097.22,-10934.40,70,0
    .goto 1436/0,1829.47,-11357.20,70,0
    .goto 1436/0,1795.87,-11402.47,70,0
    .goto 1436/0,1778.37,-11374.70,70,0
    .goto 1436/0,1829.47,-11357.20,70,0
    .goto 1436/0,1900.52,-11319.87,70,0
    .goto 1436/0,1955.12,-11284.17,70,0
    .goto 1436/0,1984.17,-11236.33,70,0
    .goto 1436/0,1999.57,-11160.50,70,0
    .goto 1436/0,2009.37,-11093.53,70,0
    .goto 1436/0,2042.27,-11064.37,70,0
    .goto 1436/0,2062.22,-11032.40,70,0
    .goto 1436/0,2076.57,-10959.13,70,0
    .goto 1436/0,2097.22,-10934.40
    >>Tötet |cRXP_ENEMY_Old Murk-Eye|r. Plündert ihn für seine |cRXP_LOOT_Schuppe von Old Murk-Eye|r
    .complete 104,1 --Scale of Old Murk-Eye
    .unitscan Old Murk-Eye
step
    .goto 1436/0,1965.97,-11407.13
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
    .goto 1436/0,1454.97,-11272.73
    >>Sprecht mit |cRXP_FRIENDLY_Grimbooze|r
    .accept 117 >> Akzeptiert die Quest Donnerbräu
    .turnin 117 >> Gebt die Quest Donnerbräu ab
    .target Grimbooze Thunderbrew
step
    #completewith next
    .goto 1436/0,1309.72,-11213.000,60,0
    .goto 1436/0,1206.12,-11142.30,60,0
    .goto 1436/0,1177.07,-11100.30,60,0
    >>AoE |cRXP_ENEMY_Knöchelhauer der Defias|r und |cRXP_ENEMY_Straßenräuber der Defias|r. Plündert sie für |cRXP_LOOT_Rotes Lederkopftuch|r
    >>|cRXP_WARN_Passt auf, da die |cRXP_ENEMY_Straßenräuber der Defias|r|r |T132090:0|t[Meucheln] wirken |cRXP_WARN_(verursacht doppelten Schaden von hinten)|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Knuckleduster
    .mob Defias Highwaymen
step
    .goto 1436/0,1193.87,-11078.60,60 >> Reist zum Ende der Dolchhügel
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
    .goto 1436/0,1383.92,-10636.43,60,0
    .goto 1436/0,1328.97,-10454.90,60,0
    .goto 1436/0,1414.72,-10314.43,60,0
    .goto 1436/0,1389.52,-10270.330,60,0
    .goto 1436/0,1457.77,-10209.90,150 >> Reist zu Molsens Hof
    .isOnQuest 153
step
    #completewith Watch
    .goto 1436/0,1457.77,-10209.90,60,0
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
    .goto 1436/0,1471.77,-10022.07,60,0
    .goto 1436/0,1402.12,-10018.80,60,0
    .goto 1436/0,1310.77,-9885.10
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
    .goto 1436/0,1310.77,-9885.10,60,0
    >>AoE |cRXP_ENEMY_Fallensteller der Defias|r und |cRXP_ENEMY_Schmuggler der Defias|r. Plündert sie für |cRXP_LOOT_Rotes Lederkopftuch|r
    >>|cRXP_WARN_Seid vorsichtig, da die |cRXP_ENEMY_Fallensteller der Defias|r|r|T132090:0|t[Meucheln] |cRXP_WARN_und|r |T132149:0|t[Netz] wirken
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Trapper
    .mob Defias Smuggler
step
    #label Watch
    .goto 1436/0,1290.12,-9849.40
    >>Öffnet |cRXP_PICK_Furlbrows Kleiderschrank|r. Plündert sie für |cRXP_LOOT_Furlbrows Taschenuhr|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 64,1 --Furlbrow's Pocket Watch (1)
step
    #completewith Oats
    .goto 1436/0,1249.17,-9898.87,60,0
    .goto 1436/0,1207.17,-9940.4,60,0
    >>AoE |cRXP_ENEMY_Erntebehüter|r
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    .goto 1436/0,1195.97,-9750.00,60,0
    .goto 1436/0,1024.12,-9697.50
    >>AoE |cRXP_ENEMY_Späher der Flusspfoten|r und |cRXP_ENEMY_Gnoll der Flusspfoten|r. Plündert sie für |cRXP_LOOT_Gnolltatze|r
    .complete 102,1 --Gnoll Paws (8)
    .mob Riverpaw Scout
    .mob Riverpaw Gnoll
step
    .goto 1436/0,1184.07,-9623.77,60,0
    .goto 1436/0,1133.67,-9649.43,60,0
    .goto 1436/0,1058.07,-9591.80
    >>AoE |cRXP_ENEMY_Murlocküstenläufer|r und |cRXP_ENEMY_Murlocräuber|r. Plündert sie für |cRXP_LOOT_Murlocaugen|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .mob Murloc Coastrunner
    .mob Murloc Raider
step
    #label Footpads
    .goto 1436/0,1037.07,-9849.17
    >>AoE |cRXP_ENEMY_Schleicher der Defias|r Plündert sie für |cRXP_LOOT_Rotes Lederkopftuch|r
    >>|cRXP_WARN_Seid vorsichtig denn |cRXP_ENEMY_Schleicher der Defias|r wirken|r |T132090:0|t[Meucheln]
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Footpad
step
    #label Oats
    .goto 1436/0,1037.07,-9849.17
    >>Öffnet die |cRXP_PICK_Sack Hafer|r auf dem Boden. Plündert sie für die |cRXP_LOOT_Handvoll Hafer|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 151,1 --Handful of Oats (8)
step
    #label Furlbrows
    >>Sprecht mit |cRXP_FRIENDLY_Bauer Furlbrow|r und |cRXP_FRIENDLY_Verna|r
    .turnin 64 >> Gebt die Quest Das vergessene Erbstück ab
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .turnin 151 >> Gebt die Quest Die arme Graumähne ab
    .goto 1436/0,919.82,-9852.90
    .target +Verna Furlbrow
step
    .goto 1436/0,926.47,-10207.80,80,0
    .goto 1436/0,908.27,-10506.000
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
    .goto 1436/0,1167.27,-10110.73,60,0
    .goto 1436/0,1207.17,-9940.40
    >>AoE |cRXP_ENEMY_Erntebehüter|r
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    .goto 1436/0,1207.17,-9940.40
    .xp 17+11890 >> Farmt bis 11890+/17700 XP
    .isQuestComplete 12
step
    .goto 1436/0,1207.17,-9940.40
    >>|cRXP_WARN_Überspringt diesen Schritt, falls ihr das Ziel von Die Volksmiliz abgeschlossen habt|r
    .xp 17+12800 >> Farmt bis 12800+/17700 XP
step
    >>Sprecht mit |cRXP_FRIENDLY_Bauer Saldean|r und dann mit |cRXP_FRIENDLY_Salma|r innerhalb
    .turnin 9,1 >> Gebt die Quest Tod auf den Feldern ab
    .vendor >> Verkauft Müll
    .target +Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 22 >> Gebt die Quest Pastete aus Geiferzahnleber ab
    .turnin 38 >> Gebt die Quest Westfalleintopf ab
    .goto 1436/0,1041.97,-10112.13
    .target +Salma Saldean
step
	>> Sprecht mit |cRXP_FRIENDLY_Gryan|r und |cRXP_FRIENDLY_Danuvin|r
    .turnin 12 >> Gebt die Quest Die Volksmiliz ab
    .target +Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 102,1 >> Gebt die Quest Auf Patrouille durch Westfall ab
    .goto 1436/0,1041.97,-10511.13
	.target +Captain Danuvin
    .isQuestComplete 12
step
    .goto 1436/0,1041.97,-10511.13
	>> Sprecht mit |cRXP_FRIENDLY_Danuvin|r
    .turnin 102,1 >> Gebt die Quest Auf Patrouille durch Westfall ab
	.target Captain Danuvin
step
    .goto 1436/0,1127.37,-10636.43
	>>Sprecht mit |cRXP_FRIENDLY_Galiaan|r
    .turnin 153,2 >> Gebt die Quest Rote Lederkopftücher ab
	.target Scout Galiaan
step
    #completewith next
    +|cRXP_WARN_Wirkt schnell|r |T132794:0|t[Wasser herbeizaubern Rang 2] |cRXP_WARN_, um so viel Wasser wie möglich vor dem Flug herzustellen|r
step
    #completewith next
    .goto 1436/0,1037.07,-10628.27
	>>Sprecht mit |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fliege nach Sturmwind
	.target Thor
step
    #completewith next
    .goto 1453/0,686.25,-8815.41,8,0
    .goto 1453/0,684.24,-8820.34,4,0
    .goto 1453/0,687.46,-8818.01,6,0
    .goto 1453/0,854.42,-8965.28,12,0
    >>|cRXP_WARN_Springt hoch auf die Fackel, dann fallt nach unten, um unter Sturmwind zu kommen|r
    >>|cRXP_WARN_Mit Schatten auf "Mittel" oder "Niedrig", geht zwischen die Füße von Derek the Dinosaur (auf dem helleren Teil des Bodens) gerade vor dem blauen nichts und lauft dann geradeaus nach vorne|r
    >>|cRXP_WARN_HINWEIS: Es besteht eine kleine Chance, mit dieser Methode zu sterben. Ihr könnt auch normal zum Magierturm laufen, wenn ihr wollt|r
    .link https://youtu.be/gV8-wgQEomc >> KLICKT HIER für einen Leitfaden
    .goto 1453/0,861.95,-8990.47,10 >>Reist zu|cRXP_FRIENDLY_Jennea|r
step
    .goto 1453/0,861.95,-8990.47
    >>Sprich mit |cRXP_FRIENDLY_Jennea|r
    .turnin 1861,1 >> Gebt die Quest Spiegelsee ab
--   .turnin 1919 >> Turn in Report to Jennea
    .trainer >> Trainiere deine Klassenfähigkeiten (Feuerball Rang 4)
    >>Gesamtpreis Kosten: 18s
    .target Jennea Cannon
step
    #completewith next
    .goto 1453/0,887.22,-9017.80,10,0
    .goto 1453/0,871.36,-9013.14,10,0
    .goto 1453/0,868.8,-9004.27,8,0
    .goto 1453/0,877.00,-9008.03,6,0
    .goto 1453/0,863.96,-9001.40,8,0
    .goto 1453/0,928.62,-9010.10,15,0
    .goto 1453/0,962.63,-8990.73,15,0
    .goto 1453/0,949.86,-9009.380,10,0
    .goto 1453/0,942.34,-9001.49,8,0
    >>Verlasst den Magierturm
    .goto 1453/0,948.65,-8994.50,10 >>Reist zu |cRXP_FRIENDLY_Charys|r
step
    .goto 1453/0,948.65,-8994.50
    >>Betretet das Gebäude
    >>Sprich mit |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >> |cRXP_BUY_Kauft|r |T134851:0|t[Geringer Manatrank] |cRXP_BUY_und|r |T134831:0|t[Heiltrank] |cRXP_BUY_von ihr (falls vorhanden)|r
    .target Charys Yserian
step
    #completewith next
    .goto 1453/0,958.74,-8987.870,20,0
    .goto 1453/0,941.80,-8918.49,20,0
    .goto 1453/0,916.79,-8891.960,20,0
    .goto 1453/0,948.65,-8816.30,20,0
    .goto 1453/0,946.64,-8803.31,20,0
    .goto 1453/0,970.57,-8772.740,20,0
    .goto 1453/0,1030.92,-8747.20,20,0
    .goto 1453/0,1049.34,-8750.330,20,0
    .goto 1453/0,1093.16,-8779.020,10 >>Reist zu |cRXP_FRIENDLY_Argos|r
step
    .goto 1453/0,1093.16,-8779.020
    >>Sprecht mit |cRXP_FRIENDLY_Argos|r
    .accept 3765 >> Akzeptiert die Quest Verderbnis in der Fremde
    .target Argos Nightwhisper
step
    .goto 1453/0,822.16,-8865.60
    >>Betretet das Gebäude
    >>Sprich mit |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >> |cRXP_BUY_Kauft alle bis auf Intelligenz|r |T134943:0|t[Schriftrollen] |cRXP_BUY_von ihm (falls vorhanden)|r
    .target Adair Gilroy
step
    #completewith next
    .goto 1453/0,661.38,-8858.16,12,0
    .goto 1453/0,680.61,-8829.39,12,0
    .goto 1453/0,717.44,-8847.32,12,0
    .goto 1453/0,693.24,-8891.51,12,0
    .goto 1453/0,681.28,-8888.01,10 >>Reist zu |cRXP_FRIENDLY_Roberto|r
step
    .goto 1453/0,681.28,-8888.01
    >>Geht ins Gebäude
    >>Sprecht mit |cRXP_FRIENDLY_Roberto|r
    >>|cRXP_BUY_Kauft|r |T132620:0|t[Fässlein mit Merlot] |cRXP_BUY_von ihm|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    .goto 1453/0,680.61,-8828.67,15,0
    .goto 1453/0,635.44,-8863.81,8 >>Reist zu |cRXP_FRIENDLY_Keldric|r
step
    .goto 1453/0,635.44,-8863.81
    >>Sprecht mit |cRXP_FRIENDLY_Keldric|r durch die Mauer
    .vendor 1257 >> |cRXP_BUY_Kauft|r |T134830:0|t[Geringer Heiltrank] |cRXP_BUY_von ihm, falls sie verfügbar sind|r
    .target Keldric Boucher
step
    #completewith Bank3
    .goto 1453/0,637.59,-8889.81,10 >>Betretet die Bank von Sturmwind
step
    #sticky
    #label Bank4
    .goto 1453/0,614.33,-8932.92
    >>Sprich mit |cRXP_FRIENDLY_Newton|r
    .bankwithdraw 769,5354,6889 >> Hol folgende Items aus deiner Bank:
    >>|T133970:0|t[Brocken Eberfleisch]
    >>|T133469:0|t[Brief an Delgren]
    >>|T132832:0|t[Kleines Ei]
step
    #label Bank3
    .goto 1453/0,614.33,-8932.92
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
    .goto 1453/0,662.46,-8860.76,10,0
    >>Betretet das Gasthaus
    .goto 1453/0,673.75,-8867.93,10 >>Reisen zu |cRXP_FRIENDLY_Allison|r
    .target Innkeeper Allison
step
    .goto 1453/0,673.75,-8867.93
    >>|cRXP_WARN_===ACHTUNG===|r
    >>|cRXP_WARN_Sprecht mit|r |cRXP_FRIENDLY_Allison|r
    >>|cRXP_WARN_Öffnet das Menü "Ruhestein setzen", dann wirkt|r |T134414:0|t[Ruhestein]
    .hs >> |cRXP_WARN_Ruhestein BATCH von Sturmwind nach Auberdine|r
    .target Innkeeper Allison
    .zoneskip Darkshore
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance Mage
#name 18-20 Fortgeschrittener Dunkelküste 3 Magier AoE Guide
#version 2
#group RestedXP ADV AoE Allianz Magier
#defaultfor Human Mage/Gnome Mage
#next 20-22 Fortgeschrittener Rotkammgebirge 1 Magier AoE Guide

step
    .goto 1439/1,529.30,6415.93
    >>Sprecht mit |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Kauft 45|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihm|r
    .collect 1205,45,4740,1 --Melon Juice (45)
    .target Taldan
    .money <0.45
step
    .goto 1439/1,529.30,6415.93
    >>Sprecht mit |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Kauft 40|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihm|r
    .collect 1205,40,4740,1 --Melon Juice (40)
    .target Taldan
    .money <0.40
step
    .goto 1439/1,529.30,6415.93
    >>Sprecht mit |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Kauft 35|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihm|r
    .collect 1205,35,4740,1 --Melon Juice (35)
    .target Taldan
    .money <0.35
step
    .goto 1439/1,529.30,6415.93
    >>Sprecht mit |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Kauft 30|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihm|r
    .collect 1205,30,4740,1 --Melon Juice (30)
    .target Taldan
    .money <0.30
step
    .goto 1439/1,529.30,6415.93
    >>Sprecht mit |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Kauft 25|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihm|r
    .collect 1205,25,4740,1 --Melon Juice (25)
    .target Taldan
    .money <0.25
step
    .goto 1439/1,529.30,6415.93
    >>Sprecht mit |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Kauft 20|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihm|r
    .collect 1205,20,4740,1 --Melon Juice (20)
    .target Taldan
    .money <0.20
step
    .goto 1439/1,529.30,6415.93
    >>Sprecht mit |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Kauft 15|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihm|r
    .collect 1205,15,4740,1 --Melon Juice (15)
    .target Taldan
    .money <0.15
step
    .goto 1439/1,529.30,6415.93
    >>Sprecht mit |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Kauft 10|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihm|r
    .collect 1205,10,4740,1 --Melon Juice (10)
    .target Taldan
    .money <0.10
step
    .goto 1439/1,529.30,6415.93
    >>Sprecht mit |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Kauft 5|r |T132796:0|t[Melonensaft] |cRXP_BUY_von ihm|r
    .collect 1205,5,4740,1 --Melon Juice (5)
    .target Taldan
    .money <0.05
step
    .goto 1439/1,533.23,6399.77
    >>Sprecht mit |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Kauft bis zu 40|r |T133918:0|t[Roher Langzahniger Matschschnapper] |cRXP_BUY_von ihm|r
    .collect 4592,40,4740,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    >>Diesen Schritt später entfernen
    .accept 4740 >> Akzeptiert die Quest GESUCHT: Gurgelbacke!
    .goto 1439/1,503.76,6402.39
step
    .goto 1439/1,577.77,6371.39
    >>Sprecht mit |cRXP_FRIENDLY_Gubber|r
    .accept 1138 >>Akzeptiert die Quest Meeresfrüchte
    .target Gubber Blump
step
    .goto 1439/1,89.14,5002.00
    >>Sprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 948 >> Gebt die Quest Onu ab
    .accept 944 >> Akzeptiert die Quest Die Meistergleve
    .target Onu
step
    .goto 1439/1,33.47,4996.33
    >>Sprecht mit |cRXP_FRIENDLY_Kerlonian|r
    >>|cRXP_WARN_Falls |cRXP_FRIENDLY_Kerlonian|r nicht da ist, überspringt diesen Schritt|r
    .accept 5321 >>Akzeptiert die Quest Der Schläfer ist erwacht
    .target Kerlonian Evershade
step
    .goto 1439/1,34.12,5001.570
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
   .goto 1439/1,410.09,4519.49
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
    .goto 1439/1,410.09,4519.49
    >>Platziert den |T134715:0|t[Wahrsagephiole] auf dem Boden
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    >>Klickt die |cRXP_PICK_Wahrsagephiole|r auf dem Boden an
    .turnin 944 >> Gebt die Quest Die Meistergleve ab
    .accept 949 >> Akzeptiert die Quest Das Twilight-Lager
    .use 13536
    .use 5251
    .isOnQuest 5321
step
   .goto 1439/1,410.09,4519.49
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
   .goto 1439/1,416.64,4576.69
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
   .goto 1439/1,416.64,4576.69
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
    .goto 1439/1,602.01,4678.87
    >>Sprecht mit |cRXP_FRIENDLY_Remtravel|r, um die Eskorte zu starten
    .turnin 729 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .accept 731 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Prospector Remtravel
    .use 13536
    .isOnQuest 950
step
    .goto 1439/1,626.24,4633.89,40,0
    .goto 1439/1,569.26,4572.76,40,0
    .goto 1439/1,626.24,4633.89,40,0
    .goto 1439/1,602.01,4678.87,40,0
    .goto 1439/1,892.83,4517.30
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
    .goto 1439/1,892.83,4517.30
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
    .goto 1439/1,896.76,4597.21
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
    .goto 1439/1,865.32,4678.432
    >>Plündert die|cRXP_LOOT_Gestrandete Meeresschildkröte|r vom Boden
    >>|cRXP_WARN_Der Schildkrötenpanzer hat Sichtlinie|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .accept 4731 >>Akzeptiert die Quest Gestrandete Meeresschildkröte
    .isOnQuest 950
step
    #label SeaCreature
    .goto 1439/1,799.82,4808.12
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
   .goto 1439/1,549.61,4990.65
   >>Säubere das Murloc-Lager, ohne zum Zentrum der Lagers zu gehen
   >>Sobald ihr alles beseitigt habt, begebt euch zum Zentrum des Lagers, um 3 Wellen (3 Küstenlaufer, 2 Krieger, Gurgelbacke und ein Jäger) zu beschwören
   >>|cRXP_WARN_Wenn ihr Glück habt, könnte |cRXP_ENEMY_Gurgelbacke|r bereits etwa 30 Meter westlich der Küste verfügbar sein (falls jemand zuvor an ihm gestorben ist)|r
   .complete 4740,1 --Murkdeep (1)
   .unitscan Murkdeep
   .isOnQuest 950
step
    #completewith next
    .goto 1439/1,586.29,5048.73,60,0
    .goto 1439/1,583.01,5124.71,60,0
    .goto 1439/1,647.86,5180.600,60,0
    .goto 1439/1,621.66,5210.29,60,0
    >>AoE |cRXP_ENEMY_Riffkriecher|r. Plündert sie für |cRXP_LOOT_Feine Krebsbrocken|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
    .isOnQuest 950
step
    .goto 1439/1,585.63,5237.370
    >>Plündert die |cRXP_LOOT_Gestrandete Meereskreatur|r vom Boden
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .accept 4728 >>Akzeptiert die Quest Gestrandete Meereskreatur
    .isOnQuest 950
step
    .goto 1439/1,621.66,5210.29,60,0
    .goto 1439/1,647.86,5180.600,60,0
    .goto 1439/1,583.01,5124.71,60,0
    .goto 1439/1,586.29,5048.73,60,0
    .goto 1439/1,609.21,4921.66,60,0
    .goto 1439/1,631.48,4858.78,60,0
    .goto 1439/1,702.88,4809.00
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
    .goto 1439/1,89.14,5002.00
    >>Sprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Gebt die Quest Rückkehr zu Onu ab
    .target Onu
    .isQuestComplete 950
step
    #label SeaCreatureGiga
    .goto 1439/1,585.63,5237.370
    >>Plündert die |cRXP_LOOT_Gestrandete Meereskreatur|r vom Boden
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .accept 4728 >>Akzeptiert die Quest Gestrandete Meereskreatur
step
    #completewith next
    .goto 1439/1,621.66,5210.29,60,0
    .goto 1439/1,647.86,5180.600,60,0
    .goto 1439/1,583.01,5124.71,60,0
    .goto 1439/1,586.29,5048.73,60,0
    >>AoE |cRXP_ENEMY_Riffkriecher|r. Plündert sie für |cRXP_LOOT_Feine Krebsbrocken|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto 1439/1,549.61,4990.65
    >>Säubere das Murloc-Lager, ohne zum Zentrum der Lagers zu gehen
    >>Sobald ihr alles beseitigt habt, begebt euch zum Zentrum des Lagers, um 3 Wellen (3 Küstenlaufer, 2 Krieger, Gurgelbacke und ein Jäger) zu beschwören
    >>|cRXP_WARN_Wenn ihr Glück habt, könnte |cRXP_ENEMY_Gurgelbacke|r bereits etwa 30 Meter westlich der Küste verfügbar sein (falls jemand zuvor an ihm gestorben ist)|r
    .complete 4740,1 --Murkdeep (1)
    .unitscan Murkdeep
step
    #completewith next
    .goto 1439/1,609.21,4921.66,60,0
    .goto 1439/1,631.48,4858.78,60,0
    .goto 1439/1,702.88,4809.00,60,0
    >>AoE |cRXP_ENEMY_Riffkriecher|r. Plündert sie für |cRXP_LOOT_Feine Krebsbrocken|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto 1439/1,799.82,4808.12
    >>Plündert die |cRXP_LOOT_Gestrandete Meereskreatur|r vom Boden
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .accept 4730 >>Akzeptiert die Quest Gestrandete Meereskreatur
step
    .goto 1439/1,793.27,4764.89,60,0
    .goto 1439/1,840.43,4696.77
    >>AoE |cRXP_ENEMY_Verkrusteter Gezeitenkriecher|r. Plündert sie für |cRXP_LOOT_Feine Krebsbrocken|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
step
    .goto 1439/1,865.32,4678.432
    >>Plündert die|cRXP_LOOT_Gestrandete Meeresschildkröte|r vom Boden
    >>|cRXP_WARN_Der Schildkrötenpanzer hat Sichtlinie|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .accept 4731 >>Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    .goto 1439/1,896.76,4597.21
    >>Plündert die|cRXP_LOOT_Gestrandete Meeresschildkröte|r vom Boden
    >>|cRXP_WARN_Der Schildkrötenpanzer hat Sichtlinie|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .accept 4732 >>Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    .goto 1439/1,892.83,4517.30
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
    .goto 1439/1,602.01,4678.87
    >>Sprecht mit |cRXP_FRIENDLY_Remtravel|r, um die Eskorte zu starten
    .turnin 729 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .accept 731 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Prospector Remtravel
step
    .goto 1439/1,626.24,4633.89,40,0
    .goto 1439/1,569.26,4572.76,40,0
    .goto 1439/1,626.24,4633.89,40,0
    .goto 1439/1,602.01,4678.87,40,0
    .goto 1439/1,410.09,4519.49
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
   .goto 1439/1,410.09,4519.49
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
    .goto 1439/1,410.09,4519.49
    >>Platziert den |T134715:0|t[Wahrsagephiole] auf dem Boden
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    >>Klickt die |cRXP_PICK_Wahrsagephiole|r auf dem Boden an
    .turnin 944 >> Gebt die Quest Die Meistergleve ab
    .accept 949 >> Akzeptiert die Quest Das Twilight-Lager
    .use 5251
step
    .goto 1439/1,410.09,4519.49
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
    .goto 1439/1,416.64,4576.69
    >>Platziert den |T134715:0|t[Wahrsagephiole] auf dem Boden
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    >>Klickt die |cRXP_PICK_Wahrsagephiole|r auf dem Boden an
    .turnin 944 >> Gebt die Quest Die Meistergleve ab
    .accept 949 >> Akzeptiert die Quest Das Twilight-Lager
    .use 5251
step
    #label Tome2
    .goto 1439/1,416.64,4576.69
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
    .goto 1439/1,229.97,4815.55,-1
    >>Klickt |cRXP_PICK_Buzzbox 525|r
    .turnin 1003 >> Gebt die Quest Dröhnkiste 525 ab
step
    #label Onu3
    .goto 1439/1,89.14,5002.00,-1
    >>Sprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Gebt die Quest Rückkehr zu Onu ab
    .target Onu
step
    .goto 1439/1,33.47,4996.33
    >>Sprecht mit |cRXP_FRIENDLY_Kerlonian|r
    >>|cRXP_WARN_Falls |cRXP_FRIENDLY_Kerlonian|r nicht da ist, überspringt diesen Schritt|r
    .accept 5321 >>Akzeptiert die Quest Der Schläfer ist erwacht
    .target Kerlonian Evershade
step
    .goto 1439/1,34.12,5001.570
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
    .goto 1439/1,63.60,4833.89,60,0
    .goto 1439/1,119.27,4764.89,60,0
    .goto 1439/1,217.52,4686.29,60,0
    .goto 1439/1,311.84,4708.13,60,0
    .goto 1439/1,406.82,4733.45,60,0
    .goto 1439/1,444.15,4850.92,60,0
    .goto 1439/1,287.61,4815.11,60,0
    .goto 1439/1,63.60,4833.89,60,0
    .goto 1439/1,119.27,4764.89,60,0
    .goto 1439/1,217.52,4686.29,60,0
    .goto 1439/1,311.84,4708.13,60,0
    .goto 1439/1,406.82,4733.45,60,0
    .goto 1439/1,444.15,4850.92,60,0
    .goto 1439/1,287.61,4815.11
    >>AoE |cRXP_ENEMY_Ergrauter Distelbär|r. Plündert sie für |cRXP_LOOT_Ergrauter Skalp|r
    >>|cRXP_ENEMY_Ergrauter Distelbär|r teilen sich die Spawns mit |cRXP_ENEMY_Mondpirscherpatriarch|r und |cRXP_ENEMY_Riesiger Waldschreiter|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
step
    #label 525
    .goto 1439/1,229.97,4815.55
    >>Klickt |cRXP_PICK_Buzzbox 525|r
    .turnin 1003 >> Gebt die Quest Dröhnkiste 525 ab
    .use 13536
step
    .goto 1439/1,249.62,4657.91,70,0
    .goto 1439/1,296.78,4381.94,70,0
    .goto 1439/1,545.68,4379.32,70,0
    .goto 1439/1,537.82,4202.47,70,0
    .goto 1439/1,140.89,4372.770,70,0
    .goto 1439/1,205.73,4495.91,70,0
    .goto 1439/1,22.33,4271.02,70,0
    .goto 1439/1,249.62,4657.91,70,0
    .goto 1439/1,296.78,4381.94,70,0
    .goto 1439/1,545.68,4379.32,70,0
    .goto 1439/1,537.82,4202.47,70,0
    .goto 1439/1,140.89,4372.770,70,0
    .goto 1439/1,205.73,4495.91,70,0
    .goto 1439/1,22.33,4271.02
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
    .goto 1440/1,128.01,3305.31
    >>Sprecht mit |cRXP_FRIENDLY_Liladris|r
    .turnin 5321,1 >>Gebt die Quest Der Schläfer ist erwacht ab
    .target Liladris Moonriver
    .use 13536
    .isOnQuest 5321
step
    #label Delgren
    .goto 1440/1,189.71,3185.390
    >>Sprecht mit |cRXP_FRIENDLY_Delgren|r
    .turnin 967 >>Gebt die Quest Der Turm von Althalaxx ab
    .target Delgren the Purifier
step
    .goto 1440/1,394.43,2677.63
    >>Sprecht mit |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Gebt die Quest Therylunes Flucht ab
    .target Therysil
step
    .goto 1440/1,-284.31,2828.30
    .xp 19+8720 >> Farmt bis 8720+/21300xp
step << skip
    #completewith next
    +|cRXP_WARN_Wirkt schnell|r |T132794:0|t[Wasser herbeizaubern Rang 2] |cRXP_WARN_, um so viel Wasser wie möglich vor dem Flug herzustellen|r
step
    #completewith next
    .goto 1440/1,-284.31,2828.30
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
    .goto 1439/1,543.06,6342.130
    .turnin 1138,2 >>Gebt die Quest Meeresfrüchte ab
    .goto 1439/1,577.77,6371.39
    .target +Gubber Blump
step
    .goto 1439/1,470.35,6439.07
    >>Sprecht mit |cRXP_FRIENDLY_Glynda|r
    .turnin 4740 >>Gebt die Quest GESUCHT: Gurgelbacke! ab
    .target Sentinel Glynda Nal'Shea
step
    >>Sprecht mit |cRXP_FRIENDLY_Terenthis|r und |cRXP_FRIENDLY_Gershala|r
    .turnin 986 >>Gebt die Quest Ein verirrter Meister ab
    --.accept 993 >>Accept A Lost Master
    .target +Terenthis
    .goto 1439/1,362.93,6434.71
    .turnin 3765 >> Gebt die Quest Verderbnis in der Fremde ab
    .goto 1439/1,431.71,6453.92
    .target +Gershala Nightwhisper
step
    .goto 1439/1,445.46,6536.01
    >>Sprecht mit |cRXP_FRIENDLY_Gorbold|r
    >>|cRXP_BUY_Kauft 20|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_von ihm|r
    .collect 2678,20,90,1 --Mild Spices (20)
    .target Gorbold Steelhand
    .itemcount 6889,20
    .skill cooking,50,1
step
    .goto 1439/1,445.46,6536.01
    >>Sprecht mit |cRXP_FRIENDLY_Gorbold|r
    >>|cRXP_BUY_Kauft 15|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_von ihm|r
    .collect 2678,15,90,1 --Mild Spices (15)
    .target Gorbold Steelhand
    .itemcount 6889,15
    .skill cooking,50,1
step
    .goto 1439/1,445.46,6536.01
    >>Sprecht mit |cRXP_FRIENDLY_Gorbold|r
    >>|cRXP_BUY_Kauft 10|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_von ihm|r
    .collect 2678,10,90,1 --Mild Spices (10)
    .target Gorbold Steelhand
    .itemcount 6889,10
    .skill cooking,50,1
step
    .goto 1439/1,445.46,6536.01
    >>Sprecht mit |cRXP_FRIENDLY_Gorbold|r
    >>|cRXP_BUY_Kauft 5|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_von ihm|r
    .collect 2678,5,90,1 --Mild Spices (5)
    .target Gorbold Steelhand
    .itemcount 6889,5
    .skill cooking,50,1
step
    .goto 1439/1,488.69,6564.830
    >>Sprecht mit |cRXP_FRIENDLY_Dalmond|r
    >>|cRXP_BUY_Kauft ein|r |T135435:0|t[Einfaches Holz] |cRXP_BUY_und ein|r |T135237:0|t[Feuerstein und Zunder] |cRXP_BUY_von ihm|r
    .collect 4470,1,90,1 --Simple Wood (1)
    .collect 4471,1,90,1 --Flint and Tinder (1)
    .target Dalmond
    .skill cooking,50,1
step
    .goto 1439/1,489.35,6506.32
    >>Sprecht mit |cRXP_FRIENDLY_Hollee|r
    .turnin 731 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .accept 741 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Archaeologist Hollee
step
    #completewith Teldrassil
    #label BoatT
    .goto 1439/1,487.38,6479.68,20,0
    .goto 1439/1,489.35,6454.36,20,0
    .goto 1439/1,527.99,6409.82,20,0
    .goto 1439/1,782.79,6504.57,20,0
    .goto 1439/1,765.10,6590.60,50 >>Reist zum Darnassus-Boot
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
    .goto 1438/1,1018.75,8564.77,100 >> Nehmt das Boot nach Teldrassil
step
    #completewith next
    .goto 1438/1,987.69,8651.99,60,0
    .goto 1438/1,922.52,8678.46,40,0
    .goto 1438/1,888.40,8676.08,20,0
    .goto 1438/1,841.05,8641.121,20 >>Reist zu |cRXP_FRIENDLY_Vesprystus|r
step
    .goto 1438/1,841.05,8641.121
    >>Sprecht mit |cRXP_FRIENDLY_Vesprystus|r
    .fp Rut'theran >> Erlernt die Flugroute nach Rut'theran
    .target Vesprystus
step
    #completewith next
    .goto 1438,55.885,89.350
    .zone Darnassus >> Geht durch das violette Portal nach Darnassus
step
    #completewith next
    .goto 1457/1,2536.83,9898.58,30,0
    .goto 1457/1,2534.08,9772.82,30,0
    .goto 1457/1,2549.00,9727.09,30,0
    .goto 1457/1,2607.74,9642.04,20 >>Reist zu |cRXP_FRIENDLY_Greywhisker|r
step
    .goto 1457/1,2607.74,9642.04
    >>Sprecht mit |cRXP_FRIENDLY_Greywhisker|r
    .turnin 741,3 >>Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .accept 942 >>Der geistesabwesende Ausgrabungsleiter annehmen
    .target Chief Archaeologist Greywhisker

]])

RXPGuides.RegisterGuide([[
#forever
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
    .goto 1453/0,635.44,-8863.81
    >>Sprecht mit |cRXP_FRIENDLY_Keldric|r durch die Mauer
    .vendor 1257 >> Verkauft Müll. |cRXP_BUY_Kauft|r |T134830:0|t[Geringer Heiltrank] |cRXP_BUY_von ihm (falls sie verfügbar sind)|r
    .target Keldric Boucher
step
    #completewith Bank
    .goto 1453/0,637.59,-8889.81,10 >>Betretet die Bank von Sturmwind
step
    #sticky
    #label Bank1
    .goto 1453/0,614.33,-8932.92
    >>Sprich mit |cRXP_FRIENDLY_Newton|r
    .bankwithdraw 4371,1941,1711,1478,1712,3012,1180,1181,3013,2998 >> Hol folgende Items aus deiner Bank:
    >>|T133024:0|t[Bronzeröhre]
    >>|T134943:0|t[Schriftrollen]
    >>|T132620:0|t[Fässlein mit Merlot]
    >>|T134377:0|t[Ein einfacher Kompass]
    .target Newton Burnside
step
    #label Bank
    .goto 1453/0,614.33,-8932.92
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
    .goto 1453/0,679.80,-8829.57,12,0
    .goto 1453/0,716.77,-8847.23,12,0
    .goto 1453/0,693.24,-8891.33,12 >>Reist zu |cRXP_FRIENDLY_Roberto|r
step
    #requires Bank1
    .goto 1453/0,681.28,-8888.01
    >>Geht ins Gebäude
    >>Sprecht mit |cRXP_FRIENDLY_Roberto|r
    >>|cRXP_BUY_Kauft|r |T132620:0|t[Fässlein mit Merlot] |cRXP_BUY_von ihm|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    #requires Bank1
    .goto 1453/0,686.25,-8815.41,8,0
    .goto 1453/0,684.24,-8820.34,4,0
    .goto 1453/0,687.46,-8818.01,6,0
    .goto 1453/0,854.42,-8965.28,12,0
    >>|cRXP_WARN_Springt hoch auf die Fackel, dann fallt nach unten, um unter Sturmwind zu kommen|r
    >>|cRXP_WARN_Mit Schatten auf "Mittel" oder "Niedrig", geht zwischen die Füße von Derek the Dinosaur (auf dem helleren Teil des Bodens) gerade vor dem blauen nichts und lauft dann geradeaus nach vorne|r
    >>|cRXP_WARN_HINWEIS: Es besteht eine kleine Chance, mit dieser Methode zu sterben. Ihr könnt auch normal zum Magierturm laufen, wenn ihr wollt|r
    .link https://youtu.be/gV8-wgQEomc >> KLICKT HIER für einen Leitfaden
    .goto 1453/0,861.95,-8990.47,10 >>Reist zu |cRXP_FRIENDLY_Larimaine|r
step
    #requires Bank1
    .goto 1453/0,847.43,-8991.99
    >>Sprecht mit |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >> Lernt |T135763:0|t[Teleportieren: Sturmwind]
    >>Gesamtpreis Kosten: 20s
    .target Larimaine Purdue
step
    .goto 1453/0,861.95,-8990.47
    >>Sprich mit |cRXP_FRIENDLY_Jennea|r
    .trainer >> Erlernt eure Klassenfähigkeiten (Blinzeln, Hervorrufung, Frostrüstung Rang 3, Manaschild, Wasser herbeizaubern Rang 3)
    >>|cRXP_WARN_Trainiert Blizzard noch nicht|r
    >>Gesamtpreis Kosten: 1g
    .target Jennea Cannon
step
    #completewith Charys
    .goto 1453/0,887.22,-9017.80,10,0
    .goto 1453/0,871.36,-9013.14,10,0
    .goto 1453/0,868.8,-9004.27,8,0
    .goto 1453/0,877.00,-9008.03,6,0
    .goto 1453/0,863.96,-9001.40,8,0
    .goto 1453/0,928.62,-9010.10,15,0
    .goto 1453/0,962.63,-8990.73,15,0
    .goto 1453/0,949.86,-9009.380,10,0
    .goto 1453/0,942.34,-9001.49,8,0
    >>Verlasst den Magierturm
    .goto 1453/0,948.65,-8994.50,10 >>Reist zu |cRXP_FRIENDLY_Charys|r
step
    .goto 1453/0,948.65,-8994.50
    >>Betretet das Gebäude
    >>Sprich mit |cRXP_FRIENDLY_Charys|r
    >>|cRXP_BUY_Kauft 2|r |T134419:0|t[Rune der Teleportation]|cRXP_BUY_,|r |T134851:0|t[Geringer Manatrank]|cRXP_BUY_,|r |T134831:0|t[Heiltränke]|cRXP_BUY_, und einen|r |T132515:0|t[Stoffgürtel] |cRXP_BUY_von ihr (falls sie verfügbar sind)|r
    >>|cRXP_WARN_Geht nicht unter 18s 31c|r
    .collect 17031,2,344,1 --Rune of Teleportation (2)
    .target Charys Yserian
    .itemcount 4371,1
step
    #label Charys
    .goto 1453/0,948.65,-8994.50
    >>Betretet das Gebäude
    >>Sprich mit |cRXP_FRIENDLY_Charys|r
    >>|cRXP_BUY_Kauft zwei|r |T134419:0|t[Rune der Teleportation]|cRXP_BUY_,|r |T134851:0|t[Geringer Manatrank]|cRXP_BUY_,|r |T134831:0|t[Heiltränke]|cRXP_BUY_, und einen|r |T132515:0|t[Stoffgürtel] |cRXP_BUY_von ihr (falls sie verfügbar sind)|r
    >>|cRXP_WARN_Geht nicht unter 26s 31c|r
    .collect 17031,2,344,1 --Rune of Teleportation (2)
    .target Charys Yserian
    .itemcount 4371,<1
step
    #completewith Adair
    .goto 1453/0,852.40,-8920.10,20,0
    .goto 1453/0,829.01,-8901.28,20,0
    .goto 1453/0,789.22,-8904.59,20,0
    .goto 1453/0,758.31,-8878.78,20,0
    .goto 1453/0,810.33,-8832.44,20,0
    .goto 1453/0,827.54,-8850.19,15,0
    .goto 1453/0,822.16,-8865.60,10 >>Reist zu |cRXP_FRIENDLY_Adair|r
step
    .goto 1453/0,822.16,-8865.60
    >>Betretet das Gebäude
    >>Sprich mit |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >> |cRXP_BUY_Kauft alle bis auf Intelligenz|r |T134943:0|t[Schriftrollen] |cRXP_BUY_von ihm (falls vorhanden)|r
    >>|cRXP_WARN_Geht nicht unter 18s 31c|r
    .money <0.1831
    .target Adair Gilroy
step
    #label Adair
    .goto 1453/0,822.16,-8865.60
    >>Betretet das Gebäude
    >>Sprich mit |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >> |cRXP_BUY_Kauft alle bis auf Intelligenz|r |T134943:0|t[Schriftrollen] |cRXP_BUY_von ihm (falls vorhanden)|r
    >>|cRXP_WARN_Geht nicht unter 26s 31c|r
    .money <0.2631
    .target Adair Gilroy
step
    #completewith next
    .goto 1453/0,872.30,-8803.220,5,0
    .goto 1453/0,872.70,-8682.39,20 >>Lauft an der Kante der Mauer entlang, anstatt herumzugehen
step
    .goto 1453/0,766.64,-8623.23
    >>Sprecht mit |cRXP_FRIENDLY_Kristoff|r
    .accept 343 >> Reden über Kraft annehmen
    .target Brother Kristoff
step
    #completewith next
    .goto 1453/0,737.74,-8571.69,15,0
    .goto 1453/0,736.26,-8558.06,12,0
    .goto 1453/0,719.86,-8550.36,12 >>Reist zu |cRXP_FRIENDLY_Baros|r
step
    .goto 1453/0,719.86,-8550.36
    >>Geht ins Gebäude
    >>Sprecht mit |cRXP_FRIENDLY_Baros|r
    .turnin 399 >> Gebt die Quest Ein bescheidener Anfang ab
    .target Baros Alexston
step
    .goto 1453/0,638.26,-8342.22
    >>Sprecht mit |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_wenn er sie hat|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
step
    #completewith next
    .goto 1453/0,453.16,-8533.33,30,0
    .goto 1453/0,405.03,-8486.89,20,0
    .goto 1453/0,442.94,-8427.47,20,0
    .goto 1453/0,435.41,-8381.66,20,0
    .goto 1453/0,383.66,-8345.63,12 >>Lauf in Richtung |cRXP_FRIENDLY_Milton|r
step
    .goto 1453/0,383.66,-8345.63
    >>Sprich mit |cRXP_FRIENDLY_Milton|r
    .turnin 343 >> Gebt die Quest Reden über Kraft ab
    .accept 344 >> Bruder Paxton annehmen
    .target Milton Sheaf
step
    #completewith next
    .goto 1453/0,435.41,-8381.66,20,0
    .goto 1453/0,442.94,-8427.47,20,0
    .goto 1453/0,405.03,-8486.89,20,0
    .goto 1453/0,450.74,-8539.51,30,0
    .goto 1453/0,551.02,-8658.37,20,0
    .goto 1453/0,509.88,-8819.71,12,0
    .goto 1453/0,518.35,-8822.040,12 >>Reist zu |cRXP_FRIENDLY_Felicia|r
step
    .goto 1453/0,518.35,-8822.040
    >>Sprich mit |cRXP_FRIENDLY_Felicia|r
    >>|cRXP_BUY_Kauft die|r |T133849:0|t[Würzkräuter aus Stormwind] |cRXP_BUY_von ihr|r
    .collect 2665,1,90,1 --Stormwind Seasoning Herbs
    .target Felicia Gump
step
    #completewith next
    .goto 1453/0,508.41,-8803.04,30,0
    .goto 1453/0,575.62,-8741.370,30,0
    .goto 1453/0,603.58,-8771.67,30,0
    .goto 1453/0,530.45,-8847.41,20,0
    .goto 1453/0,532.33,-8863.54,20,0
    .goto 1453/0,494.56,-8865.78,12,0
    .goto 1453/0,495.77,-8870.44,8,0
    .goto 1453/0,504.24,-8956.31,40 >>Fallt hinunter zum Felsvorsprung unter |cRXP_FRIENDLY_Dungar|r
step
    #completewith next
    .goto 1429/0,44.35,-9458.41,30 >>Reist zum Goldhain-Gasthaus
step << skip
    #completewith Paxton
    #requires PaxtonT
    .goto 1429/0,398.72,-9085.76,50,0
    .goto 1429/0,125.22,-9079.98,20,0
    .goto 1429/0,-139.95,-8910.09,50,0
    .goto 1429/0,-158.00,-8901.52,10,0
    .goto 1429/0,-174.32,-8881.39,10,0
    >>Nehmt den Bergpfad zu |cRXP_FRIENDLY_Paxton|r
    .goto 1429/0,-186.46,-8874.91,10 >>Reist zu |cRXP_FRIENDLY_Paxton|r
step
    .goto 1429/0,8.25,-9460.03
    >>Sprecht mit |cRXP_FRIENDLY_Dobbins|r
    >>|cRXP_BUY_Kauft einen|r |T132794:0|t[Schlauch mit süßem Rum] |cRXP_BUY_von ihm|r
    .collect 1939,1,116,1 --Skin of Sweet Rum
    .target Barkeep Dobbins
step
    #sticky
    #label FarleyHome
    .goto 1429/0,16.23,-9462.580,0,0
    >>Sprecht mit |cRXP_FRIENDLY_Farley|r
    .home >> Setzt euren Ruhestein in Goldhain
    .target Innkeeper Farley
step
    #completewith next
    #requires FarleyHome
    .goto 1429/0,-158.00,-8901.52,10,0
    .goto 1429/0,-174.32,-8881.39,10,0
    .goto 1429/0,-186.46,-8874.91,10 >>Reist zu |cRXP_FRIENDLY_Paxton|r
step
    #requires FarleyHome
    .goto 1429/0,-186.46,-8874.91
    >>Sprecht mit |cRXP_FRIENDLY_Paxton|r
    .turnin 344 >> Gebt die Quest Bruder Paxton ab
    .accept 345 >> Tinten-Zutaten annehmen
    .target Brother Paxton
step
    #completewith Theo
    .goto 1429/0,-174.32,-8881.39,10,0
    .goto 1429/0,-158.00,-8901.52,10,0
    .goto 1429/0,-140.30,-8916.57,10,0
    .goto 1429/0,-464.48,-9142.47,30,0
    .goto 1429/0,-701.54,-9538.960,15 >>Nehmt den Bergpfad zum Turm von Azora
step
    #sticky
    #label Dawn
    .goto 1429/0,-716.46,-9541.04,0,0
    >>Sprecht mit |cRXP_FRIENDLY_Dawn|r oben
    .vendor 958 >> |cRXP_BUY_Kauft nich-Intelligenz|r |T134943:0|t[Schriftrollen]|cRXP_BUY_,|r |T134850:0|t[Schwache Manatränke]|cRXP_BUY_, und|r |T134830:0|t[Geringe Heiltränke] |cRXP_BUY_von ihr (falls sie verfügbar sind)|r
    >>|cRXP_WARN_Geht nicht unter 11s 38c|r
    .money <0.1138
    .target Dawn Brightstar
    .itemcount 4371,1
step
    #sticky
    #label Dawn2
    .goto 1429/0,-716.46,-9541.04,0,0
    >>Sprecht mit |cRXP_FRIENDLY_Dawn|r oben
    .vendor 958 >> |cRXP_BUY_Kauft nich-Intelligenz|r |T134943:0|t[Schriftrollen]|cRXP_BUY_,|r |T134850:0|t[Schwache Manatränke]|cRXP_BUY_, und|r |T134830:0|t[Geringe Heiltränke] |cRXP_BUY_von ihr (falls sie verfügbar sind)|r
    >>|cRXP_WARN_Geht nicht unter 19s 38c|r
    .money <0.1938
    .target Dawn Brightstar
    .itemcount 4371,<1
step
    #label Theo
    .goto 1429/0,-728.26,-9553.08
    >>Geh nach oben
    >>Sprecht mit |cRXP_FRIENDLY_Theocritus|r
    .accept 94 >> Ein wachsames Auge annehmen
    .target Theocritus
step
    #requires Dawn
step
    #completewith next
    #requires Dawn2
    .goto 1431/0,-1159.00,-10544.31,20,0
    .goto 1431/0,-1164.94,-10533.15,10 >>Betretet Das Gasthaus
step
    #requires Dawn2
    .goto 1431/0,-1159.54,-10509.03
    >>Sprecht mit |cRXP_FRIENDLY_Hann|r
    >>|cRXP_BUY_Kauft die|r |T132798:0|t[Flasche mit Fusel] |cRXP_BUY_bei ihm|r
    .collect 1942,1,116,1 --Bottle of Moonshine (1)
    .target Barkeep Hann
step
    #completewith Viktori
    .goto 1431/0,-1164.94,-10533.15,10,0
    .goto 1431/0,-1159.00,-10544.31,10 >>Verlasst das Gasthaus
step
    #completewith next
    .goto 1431/0,-1197.61,-10585.35,12 >>Geht ins Gebäude
step
    .goto 1431/0,-1200.85,-10593.99
    >>Sprecht mit |cRXP_FRIENDLY_Elaine|r
    .accept 163 >>Rabenflucht annehmen
    .accept 164 >>Lieferung an Sven annehmen
    .accept 165 >>Der Einsiedler annehmen
    .target Elaine Carevin
step
    .goto 1431/0,-1272.67,-10586.073
    >>Sprecht mit |cRXP_FRIENDLY_Herble|r
    .vendor 3133 >>|cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_wenn er sie hat|r
    .target Herble Baubbletump
    .itemcount 4371,<1
step
    .goto 1431/0,-1320.73,-10581.75
    >>Sprich mit |cRXP_FRIENDLY_Viktori|r
    .accept 174 >> Seht zu den Sternen annehmen
    .turnin 174 >> Gebt die Quest Seht zu den Sternen ab
    .accept 175 >> Seht zu den Sternen annehmen
    .target Viktori Prism'Antras
    .itemcount 4371,1
step
    #label Viktori
    .goto 1431/0,-1320.73,-10581.75
    >>Sprich mit |cRXP_FRIENDLY_Viktori|r
    .accept 175 >> Seht zu den Sternen annehmen
    .target Viktori Prism'Antras
    .isQuestTurnedIn 174
step
    .goto 1431/0,-1366.09,-10779.03
    >>Sprich mit |cRXP_FRIENDLY_Mary|r
    .turnin 175 >> Gebt die Quest Seht zu den Sternen ab
    .accept 177 >> Seht zu den Sternen annehmen
    .target Blind Mary
    .isQuestTurnedIn 174
step
    .goto 1431/0,-1258.63,-10513.89
    >>Sprich mit |cRXP_FRIENDLY_Felicia|r
    .fp Duskwood >> Erlernt die Flugroute in den Dämmerwald
    .target Felicia Mane
step
    #completewith Kzixx
    .goto 1431/0,-1236.49,-10139.49,60,0
    .goto 1431/0,-1375.81,-10072.35,20 >>Reist zu |cRXP_FRIENDLY_Kzixx|r
step
    .goto 1431/0,-1375.81,-10072.35
    >>Sprecht mit |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Kauft|r |T134851:0|t[Geringer Manatrank] |cRXP_BUY_und|r |T134831:0|t[Heiltrank] |cRXP_BUY_bei ihm (falls verfügbar)|r
    .itemcount 4827,1
    .target Kzixx
step
    .goto 1431/0,-1375.81,-10072.35
    >>Sprecht mit |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Kauft|r |T134851:0|t[Geringer Manatrank] |cRXP_BUY_und|r |T134831:0|t[Heiltrank] |cRXP_BUY_bei ihm (falls verfügbar)|r
    .itemcount 4828,1
    .target Kzixx
step
    .goto 1431/0,-1375.81,-10072.35
    >>Sprecht mit |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Kauft|r |T134851:0|t[Geringer Manatrank] |cRXP_BUY_und|r |T134831:0|t[Heiltrank] |cRXP_BUY_bei ihm (falls verfügbar)|r
    .itemcount 4829,1
    .target Kzixx
step
    #label Kzixx
    .goto 1431/0,-1375.81,-10072.35
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
    .goto 1433/0,-1907.75,-9625.90,60,0
    .goto 1433/0,-1893.64,-9592.880,60,0
    .goto 1433/0,-1938.36,-9591.440
    >>Sprecht mit |cRXP_FRIENDLY_Parker|r
    .accept 244 >>Akzeptiert die Quest Eindringende Gnolle
    .target Guard Parker
step << skip
    #label AoE1
    .goto 1433/0,-1912.31,-9479.51,60 >>Tötet die |cRXP_ENEMY_Bastard der Rotkammgnolle|r und |cRXP_ENEMY_Hauer der Rotkammgnolle|r mit Flächenschaden
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
    .goto 1433/0,-2238.15,-9443.60
    >>Sprecht mit |cRXP_FRIENDLY_Feldon|r
    .turnin 244 >>Gebt die Quest Eindringende Gnolle ab
    .accept 246 >>Akzeptiert die Quest Einschätzung der Gefahr
    .target Deputy Feldon
step
    .goto 1433/0,-2234.89,-9435.060
    >>Sprecht mit |cRXP_FRIENDLY_Ariena|r
    .fp Redridge Mountains >> Erlernt die Flugroute zum Rotkammgebirge
step
    >>Sprecht mit |cRXP_FRIENDLY_Marris|r und |cRXP_FRIENDLY_Oslow|r
    .accept 20 >>Akzeptiert die Quest Bedrohung durch die Blackrock
    .target +Marshal Marris
    .goto 1433/0,-2298.28,-9283.90
    .accept 125 >>Akzeptiert die Quest Die verlorenen Werkzeuge
    .turnin 345 >>Gebt die Quest Tinten-Zutaten ab
    .accept 347 >>Rethbanerz annehmen
    .goto 1433/0,-2268.54,-9279.27
    .target +Foreman Oslow
step
    .goto 1433/0,-2219.70,-9260.73
    >>Sprecht mit |cRXP_FRIENDLY_Karen|r
    >>|cRXP_BUY_Kauft eine|r |T134708:0|t[Spitzhacke] |cRXP_BUY_bei ihr|r
    >>|cRXP_WARN_Ihr werdet das für später benötigen|r
    .collect 2901,1,125,1 --Mining Pick (1)
    .target Karen Taylor
step
    >>Sprecht mit |cRXP_FRIENDLY_Conacher|r
--  .accept 120 >>Accept Messenger to Stormwind
--  .goto 1433/0,-2221.87,-9218.60
    .accept 91 >>Das Gesetz des Solomon annehmen
    .goto 1433/0,-2216.00,-9215.85
--  .target Magistrate Solomon
    .target Bailiff Conacher
step
    >>Sprecht mit |cRXP_FRIENDLY_Baren|r und den |cRXP_PICK_Gesucht Steckbrief|r
    .accept 127 >>Fischhandel annehmen
    .goto 1433/0,-2172.59,-9261.02
    .accept 180 >>GESUCHT: Leutnant Fangor annehmen
    .goto 1433/0,-2151.53,-9247.12
    .target Dockmaster Baren
step
    #sticky
    #label Darcy1
    .goto 1433/0,-2155.22,-9225.84,0,0
    >>Betretet Das Gasthaus
    >>Sprecht mit |cRXP_FRIENDLY_Darcy|r
    .accept 129 >>Akzeptiert die Quest Ein geschenktes Mittagessen
    .target Darcy
step
    .goto 1433/0,-2145.89,-9211.36
    >>Betretet Das Gasthaus
    >>Sprecht mit |cRXP_FRIENDLY_Daniels|r
    .accept 116 >>Akzeptiert die Quest Trockene Zeiten
    .turnin 116 >>Gebt die Quest Trockene Zeiten ab
    .target Barkeep Daniels
step
    .goto 1433/0,-2145.45,-9231.34
    >>Betretet Das Gasthaus
    >>Sprecht mit |cRXP_FRIENDLY_Wiley|r indem ihr vom Treppengeländer herunter springt
    .turnin 65 >>Gebt die Quest Die Bruderschaft der Defias ab
--  .accept 132 >>Accept The Defias Brotherhood
    .target Wiley the Black
step
    .goto 1433/0,-2207.32,-9351.66
    >>Sprecht mit |cRXP_FRIENDLY_Shawn|r
    .accept 3741 >>Akzeptiert die Quest Hilarys Halskette
    .target Shawn
step
    .goto 1433/0,-2250.09,-9360.78,90,0
    .goto 1433/0,-2174.32,-9386.56,90,0
    .goto 1433/0,-2147.41,-9308.08,90,0
    .goto 1433/0,-2090.96,-9373.82,90,0
    .goto 1433/0,-1986.76,-9324.30,90,0
    .goto 1433/0,-2246.40,-9359.92,90,0
    .goto 1433/0,-2309.57,-9376.28,90,0
    .goto 1433/0,-2397.70,-9363.97
    >>|cRXP_WARN_Schwimmt unter Wasser und überprüft die Spawn-Punkte. Es gibt 8 Plätze mit 2 Spawns gleichzeitig|r
    >>Öffnet |cRXP_PICK_Glitzernder Matsch|r. Plündert es für |cRXP_LOOT_Hilarys Halskette|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 3741,1 --Hilary's Necklace (1)
step
    .goto 1433/0,-2205.58,-9351.52
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
    .goto 1433/0,-1912.31,-9479.51
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
    .goto 1433/0,-1907.75,-9625.90,60,0
    .goto 1433/0,-1893.64,-9592.880,60,0
    .goto 1433/0,-1938.36,-9591.440
    >>Sprecht mit |cRXP_FRIENDLY_Parker|r
    .turnin 129 >>Gebt die Quest Ein geschenktes Mittagessen ab
    .accept 130 >>Akzeptiert die Quest Besuch im Kräuterladen
    .target Guard Parker
step
    #label Gnolls3
    .goto 1433/0,-2209.06,-9790.24,60,0
    .goto 1433/0,-2242.71,-9792.700,60,0
    .goto 1433/0,-2271.14,-9774.31,60,0
    .goto 1433/0,-2321.94,-9776.63,60,0
    .goto 1433/0,-2512.32,-9603.17,60,0
    .goto 1433/0,-2209.06,-9790.24,60,0
    .goto 1433/0,-2242.71,-9792.700,60,0
    .goto 1433/0,-2271.14,-9774.31,60,0
    .goto 1433/0,-2321.94,-9776.63,60,0
    .goto 1433/0,-2512.32,-9603.17
    >>Tötet die |cRXP_ENEMY_Bastard der Rotkammgnolle|r, |cRXP_ENEMY_Hauer der Rotkammgnolle|r, und |cRXP_ENEMY_Wilderer der Rotkammgnolle|r mit Flächenschaden
    >>|cRXP_WARN_Erinnert euch, den toten Winkel bei den|r Wilderer der Rotkammgnolle|cRXP_ENEMY_ zu nutzen|r
    .complete 246,1 --Redridge Mongrel (10)
    .mob +Redridge Mongrel
    .complete 246,2 --Redridge Poacher (6)
    .mob +Redridge Poacher
step
    .goto 1433/0,-2238.15,-9443.60
    >>Sprecht mit |cRXP_FRIENDLY_Feldon|r
    .turnin 246 >>Gebt die Quest Einschätzung der Gefahr ab
    .target Deputy Feldon
step
    .goto 1433/0,-2472.16,-9366.72,-1
    >>Geht unter Wasser
    >>Öffnet die |cRXP_PICK_Versunkene Truhe|r. Plündert sie für |cRXP_LOOT_Oslows Werkzeugkasten|r
    >>|cRXP_WARN_Das hat eine 5-Sekunden-Cast Zeit|r
    .complete 125,1 --Oslow's Toolbox (1)
step
    #completewith next
    .goto 1433/0,-2445.68,-9240.75,60,0
    >>Tötet die |cRXP_ENEMY_Murlocfleischfresser|r und die |cRXP_ENEMY_Murlocspäher|r. Plündert sie, um einige der |cRXP_LOOT_Gefleckter Sonnenfisch|r und |cRXP_LOOT_Murlocflossen|r zu erhalten
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
    .mob Murloc Flesheater
    .mob Murloc Scout
step
    .goto 1433/0,-2268.54,-9279.12
    >>Sprecht mit |cRXP_FRIENDLY_Oslow|r
    .turnin 125 >>Gebt die Quest Die verlorenen Werkzeuge ab
    .accept 89 >>Akzeptiert die Quest Die Immerruhbrücke
    .target Foreman Oslow
step
    .goto 1433/0,-2240.10,-9248.14
    >>Sprecht mit |cRXP_FRIENDLY_Dorin|r
    .vendor >> Verkauft Müll
    .target Dorin Songblade
    .isOnQuest 89
step << skip
    #completewith next
    .goto 1433/0,-2205.58,-9232.350,10,0
    .goto 1433/0,-2197.99,-9224.68,8 >>Geh ins Rathaus
step
    .goto 1433/0,-2377.51,-9229.460,60,0
    .goto 1433/0,-2403.56,-9173.57,60,0
    .goto 1433/0,-2415.07,-9034.28,60,0
    .goto 1433/0,-2509.72,-9067.73,60,0
    .goto 1433/0,-2599.16,-9078.44,60,0
    .goto 1433/0,-2772.39,-9226.85,60,0
    .goto 1433/0,-2808.64,-9313.58,60,0
    .goto 1433/0,-2791.71,-9355.86,60,0
    .goto 1433/0,-2838.17,-9350.50,60,0
    .goto 1433/0,-2840.12,-9220.92,60,0
    .goto 1433/0,-2854.01,-9211.65,60,0
    .goto 1433/0,-2867.69,-9183.27,60,0
    .goto 1433/0,-2924.13,-9179.65,60,0
    .goto 1433/0,-2928.91,-9231.77,60,0
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
	.goto 1433/0,-2377.51,-9229.460,30,0
	.goto 1433/0,-2403.56,-9173.57,30,0
	.goto 1433/0,-2441.12,-9163.43,30,0
	.goto 1433/0,-2501.90,-9143.45,30,0
	.goto 1433/0,-2859.44,-9220.19,30,0
	.goto 1433/0,-2868.77,-9183.85,30,0
	.goto 1433/0,-2929.34,-9175.31,30,0
	.goto 1433/0,-2929.12,-9233.51,30,0
	.goto 1433/0,-2859.44,-9220.19,30,0
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
    .goto 1433/0,-2831.22,-9328.06,40,0
    .goto 1433/0,-2809.95,-9313.87,40,0
    .goto 1433/0,-2789.11,-9350.36,40,0
    .goto 1433/0,-2831.22,-9328.06
    .collect 1080,5,92,1 --Tough Condor Meat (5)
#loop
	.line Redridge Mountains,43.25,34.03,47.37,34.77,47.37,34.77,49.97,33.60,51.90,39.75,54.81,40.66,54.70,44.93,57.63,46.48
	.goto 1433/0,-2509.72,-9067.73,30,0
	.goto 1433/0,-2599.16,-9078.44,30,0
	.goto 1433/0,-2599.16,-9078.44,30,0
	.goto 1433/0,-2655.60,-9061.500,30,0
	.goto 1433/0,-2697.5,-9150.55,30,0
	.goto 1433/0,-2760.67,-9163.72,30,0
	.goto 1433/0,-2758.28,-9225.55,30,0
	.goto 1433/0,-2821.88,-9247.99,30,0
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
#loop
	.line Redridge Mountains,52.26,36.56,54.08,38.28,54.98,40.31,56.79,41.36,57.26,47.60,54.76,45.58,52.67,42.73,50.50,41.55,52.26,36.56
	.goto 1433/0,-2705.31,-9104.36,30,0
	.goto 1433/0,-2744.82,-9129.26,30,0
	.goto 1433/0,-2764.36,-9158.65,30,0
	.goto 1433/0,-2803.65,-9173.86,30,0
	.goto 1433/0,-2813.85,-9264.210,30,0
	.goto 1433/0,-2759.58,-9234.96,30,0
	.goto 1433/0,-2714.21,-9193.69,30,0
	.goto 1433/0,-2667.1,-9176.61,30,0
	.goto 1433/0,-2705.31,-9104.36,30,0
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .disablecheckbox
    .complete 89,1 --Iron Pike (5)
    .disablecheckbox
    .complete 89,2 --Iron Rivet (5)
    .disablecheckbox
    .goto 1433/0,-2415.07,-9034.28
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
    .goto 1433/0,-2366.23,-9110.87,60,0
    .goto 1433/0,-2270.06,-9155.47,60,0
    >>AoE |cRXP_ENEMY_Mystiker der Rotkammgnolle|r und |cRXP_ENEMY_Schläger der Rotkammgnolle|r Plündert sie für |cRXP_LOOT_Eisenspitze|r und |cRXP_LOOT_Eisenniete|r
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .mob Redridge Mystic
    .mob Redridge Brute
step
    .goto 1433/0,-2063.18,-9209.62
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
    .goto 1433/0,-2045.38,-9245.82
    >>Sprecht mit |cRXP_FRIENDLY_Martie|r
    .turnin 130 >>Gebt die Quest Besuch im Kräuterladen ab
    .accept 131 >>Akzeptiert die Quest Narzissen für eine Dame
    .accept 34 >>Akzeptiert die Quest Ein ungebetener Gast
    .target Martie Jainrose
step
    #completewith next
    .goto 1433/0,-1955.50,-9381.63,60,0
    .goto 1433/0,-1920.12,-9343.55,60,0
    >>AoE |cRXP_ENEMY_Großer Geiferzahn|r. Plündert sie für |cRXP_LOOT_Große Geiferzahnschnauze|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
step
    .goto 1433/0,-1910.79,-9288.97
    >>Tötet |cRXP_ENEMY_Stopfwanst|r
    >>|cRXP_WARN_Zieht sie zum Zaun nördlich von |cRXP_FRIENDLY_Lamar|r. Springt hin und her, um von einem sicheren Platz anzugreifen, ohne Schaden zu nehmen|r
    >>Seid vorsichtig denn |cRXP_ENEMY_Stopfwanst|r casts |T132337:0|t[Ansturm] und |T136025:0|t[Trampeln]
    .complete 34,1 --Bellygrub's Tusk (1)
    .mob Bellygrub
    .target Lamar Veisilli
step
    .goto 1433/0,-2045.38,-9245.82
    >>Sprecht mit |cRXP_FRIENDLY_Martie|r
    .turnin 34 >>Gebt die Quest Ein ungebetener Gast ab
    .target Martie Jainrose
step
    .goto 1433/0,-1950.08,-9206.58,60,0
    .goto 1433/0,-2024.97,-9145.04,60,0
    .goto 1433/0,-1955.50,-9381.63,60,0
    .goto 1433/0,-1920.12,-9343.55,60,0
    .goto 1433/0,-1950.08,-9206.58,60,0
    .goto 1433/0,-2024.97,-9145.04,60,0
    .goto 1433/0,-1955.50,-9381.63,60,0
    .goto 1433/0,-1920.12,-9343.55
    >>AoE |cRXP_ENEMY_Großer Geiferzahn|r. Plündert sie für |cRXP_LOOT_Große Geiferzahnschnauze|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
step
    #completewith next
    .goto 1433/0,-2034.31,-9101.17,60,0
    >>AoE |cRXP_ENEMY_Mystiker der Rotkammgnolle|r und |cRXP_ENEMY_Schläger der Rotkammgnolle|r Plündert sie für |cRXP_LOOT_Eisenspitze|r und |cRXP_LOOT_Eisenniete|r
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .mob Redridge Mystic
    .mob Redridge Brute
step
    .goto 1433/0,-1994.15,-9037.03,60,0
    .goto 1433/0,-2017.59,-8984.62,40 >>Reist zu den Rethbanhöhlen
    .isOnQuest 347
step
#loop
	.line Redridge Mountains,18.95,24.50,21.62,23.72,21.89,15.06,20.21,13.25,18.82,15.03,16.06,17.08,17.48,19.55,16.05,21.04,18.95,24.50
	.goto 1433/0,-1982.21,-8929.740,20,0
	.goto 1433/0,-2040.17,-8918.45,20,0
	.goto 1433/0,-2046.03,-8793.06,20,0
	.goto 1433/0,-2009.56,-8766.85,20,0
	.goto 1433/0,-1979.38,-8792.62,20,0
	.goto 1433/0,-1919.47,-8822.30,20,0
	.goto 1433/0,-1950.29,-8858.07,20,0
	.goto 1433/0,-1919.25,-8879.64,20,0
	.goto 1433/0,-1982.21,-8929.740,20,0
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
	.goto 1433/0,-1982.21,-8929.740,20,0
	.goto 1433/0,-2040.17,-8918.45,20,0
	.goto 1433/0,-2046.03,-8793.06,20,0
	.goto 1433/0,-2009.56,-8766.85,20,0
	.goto 1433/0,-1979.38,-8792.62,20,0
	.goto 1433/0,-1919.47,-8822.30,20,0
	.goto 1433/0,-1950.29,-8858.07,20,0
	.goto 1433/0,-1919.25,-8879.64,20,0
	.goto 1433/0,-1982.21,-8929.740,20,0
    .xp 21+14365 >> Farmt bis 14365+/25200xp
    .isQuestAvailable 92
step
#loop
	.line Redridge Mountains,18.95,24.50,21.62,23.72,21.89,15.06,20.21,13.25,18.82,15.03,16.06,17.08,17.48,19.55,16.05,21.04,18.95,24.50
	.goto 1433/0,-1982.21,-8929.740,20,0
	.goto 1433/0,-2040.17,-8918.45,20,0
	.goto 1433/0,-2046.03,-8793.06,20,0
	.goto 1433/0,-2009.56,-8766.85,20,0
	.goto 1433/0,-1979.38,-8792.62,20,0
	.goto 1433/0,-1919.47,-8822.30,20,0
	.goto 1433/0,-1950.29,-8858.07,20,0
	.goto 1433/0,-1919.25,-8879.64,20,0
	.goto 1433/0,-1982.21,-8929.740,20,0
    .xp 21+15715 >> Farmt bis 15715+/25200xp
    .isQuestTurnedIn 92
step << skip
    #completewith next
    .goto 1433/0,-1978.73,-8775.39,-1
    .goto 1433/0,-2049.28,-8823.17,-1
    .goto 1433/0,-1970.27,-8924.38,-1
    .goto 1433/0,-2033.00,-8923.37,-1
    .goto 1433/0,-1930.76,-8878.63,-1
    .goto 1433/0,-2305.01,-9271.01,30 >>Logout-Skip aus der Höhle (auf der Ostseite) zurück nach Seenhain
step
    #completewith next
    .subzone 69 >> Kehrt nach Seenhain zurück
step
    >>Sprecht mit |cRXP_FRIENDLY_Marris|r und |cRXP_FRIENDLY_Oslow|r
    .turnin 20 >>Gebt die Quest Bedrohung durch die Blackrock ab
    .accept 19 >>Tharil'zun annehmen
    .target +Marshal Marris
    .goto 1433/0,-2298.28,-9283.90
    .turnin 89,1 >>Gebt die Quest Die Immerruhbrücke ab
    .goto 1433/0,-2268.54,-9279.27
    .target +Foreman Oslow
step
    .goto 1433/0,-2242.49,-9259.00
    >>Sprecht mit |cRXP_FRIENDLY_Verner|r
    .accept 118 >>Akzeptiert die Quest Der Preis für Hufeisen
    .target Verner Osgood
step
    .goto 1433/0,-2172.59,-9261.02
    >>Sprecht mit |cRXP_FRIENDLY_Baren|r
    .turnin 127 >> Gebt die Quest Fischhandel ab
    .accept 150 >> Murlocwilderer annehmen
    .turnin 150 >> Gebt die Quest Murlocwilderer ab
    .goto 1433/0,-2172.59,-9261.02
    .target Dockmaster Baren
step
    #sticky
    #label Kimberly
    .goto 1433/0,-2158.69,-9234.38,0,0
    .vendor >> Verkauft Müll. Ihr könnt die |T134708:0|t[Spitzhacke] jetzt verkaufen, wenn ihr möchtet
    .target Kimberly Hiett
step
    .goto 1433/0,-2155.22,-9225.84
    >>Betretet Das Gasthaus
    >>Sprecht mit |cRXP_FRIENDLY_Darcy|r
    .turnin 131 >>Gebt die Quest Narzissen für eine Dame ab
    .target Darcy
step
    #completewith next
    .goto 1433/0,-2146.54,-9246.54,12,0
    .goto 1433/0,-2067.09,-9220.34,12,0
    >>Reist zu |cRXP_FRIENDLY_Breanna|r
step
    .goto 1433/0,-2063.18,-9209.62
    >>Geht hinein
    >>Sprecht mit |cRXP_FRIENDLY_Breanna|r
    .accept 92 >> Akzeptiert die Quest Rotkammgulasch
    .turnin 92 >> Gebt die Quest Rotkammgulasch ab
    .target Chef Breanna
step
    #completewith next
    .hs >> Ruhestein nach Goldhain
step
    .goto 1429/0,87.73,-9456.79
    >>Sprecht mit |cRXP_FRIENDLY_Argus|r
    .turnin 118 >>Gebt die Quest Der Preis für Hufeisen ab
    .accept 119 >>Akzeptiert die Quest Zurück zu Verner
    .target Smith Argus
step
    #completewith next
    .goto 1429/0,-158.00,-8901.52,10,0
    .goto 1429/0,-174.32,-8881.39,10,0
    .goto 1429/0,-186.46,-8874.91,10 >>Reist zu |cRXP_FRIENDLY_Paxton|r
step
    .goto 1429/0,-186.46,-8874.91
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
    .goto 1453/0,867.06,-9012.61
    >>Sprecht mit |cRXP_FRIENDLY_Dumas|r
    .train 10 >> Erlernt Blizzard
    .target Maginor Dumas
    .xp <22,1
step
    #completewith CharysEnd
    .goto 1453/0,887.22,-9017.80,10,0
    .goto 1453/0,871.36,-9013.14,10,0
    .goto 1453/0,868.8,-9004.27,8,0
    .goto 1453/0,877.00,-9008.03,6,0
    .goto 1453/0,863.96,-9001.40,8,0
    .goto 1453/0,928.62,-9010.10,15,0
    .goto 1453/0,962.63,-8990.73,15,0
    .goto 1453/0,949.86,-9009.380,10,0
    .goto 1453/0,942.34,-9001.49,8,0
    >>Verlasst den Magierturm
    .goto 1453/0,948.65,-8994.50,10 >>Reist zu |cRXP_FRIENDLY_Charys|r
step
    #completewith BankDeposit
    +|cRXP_WARN_Geht nicht unter 1g 43s 30c|r
    .xp >22,1
step
    .goto 1453/0,948.65,-8994.50
    >>Betretet das Gebäude
    >>Sprich mit |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Kauft|r |T134851:0|t[Geringer Manatrank] |cRXP_BUY_und|r |T134831:0|t[Heiltrank] |cRXP_BUY_bei ihm (falls verfügbar)|r
    .itemcount 4827,1
    .target Charys Yserian
step
    .goto 1453/0,948.65,-8994.50
    >>Betretet das Gebäude
    >>Sprich mit |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Kauft|r |T134851:0|t[Geringer Manatrank] |cRXP_BUY_und|r |T134831:0|t[Heiltrank] |cRXP_BUY_bei ihm (falls verfügbar)|r
    .itemcount 4828,1
    .target Charys Yserian
step
    .goto 1453/0,948.65,-8994.50
    >>Betretet das Gebäude
    >>Sprich mit |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Kauft|r |T134851:0|t[Geringer Manatrank] |cRXP_BUY_und|r |T134831:0|t[Heiltrank] |cRXP_BUY_bei ihm (falls verfügbar)|r
    .itemcount 4829,1
    .target Charys Yserian
step
    #label CharysEnd
    .goto 1453/0,948.65,-8994.50
    >>Betretet das Gebäude
    >>Sprich mit |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Kauft|r |T134851:0|t[Geringer Manatrank]|cRXP_BUY_,|r |T134831:0|t[Heiltrank]|cRXP_BUY_ und einen|r |T132515:0|t[Stoffgürtel] |cRXP_BUY_bei ihm (falls verfügbar und falls benötigt)|r
    .itemcount 4827,<1
    .itemcount 4828,<1
    .itemcount 4829,<1
    .target Charys Yserian
step
    #completewith next
    .goto 1453/0,852.40,-8920.10,20,0
    .goto 1453/0,829.01,-8901.28,20,0
    .goto 1453/0,789.22,-8904.59,20,0
    .goto 1453/0,758.31,-8878.78,20,0
    .goto 1453/0,810.33,-8832.44,20,0
    .goto 1453/0,827.54,-8850.19,15,0
    .goto 1453/0,822.16,-8865.60,10 >>Reist zu |cRXP_FRIENDLY_Adair|r
step
    #label AdairX
    .goto 1453/0,822.16,-8865.60
    >>Betretet das Gebäude
    >>Sprich mit |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >> |cRXP_BUY_Kauft alle bis auf Intelligenz|r |T134943:0|t[Schriftrollen] |cRXP_BUY_von ihm (falls vorhanden)|r
    .target Adair Gilroy
step
    #completewith next
    .goto 1453/0,872.30,-8803.220,5,0
    .goto 1453/0,872.70,-8682.39,20 >>Lauft an der Kante der Mauer entlang, anstatt herumzugehen
step
    .goto 1453/0,766.64,-8623.23
    >>Sprecht mit |cRXP_FRIENDLY_Kristoff|r
    .turnin 346 >> Gebt die Quest Rückkehr zu Kristoff ab
    .target Brother Kristoff
step
    .goto 1453/0,638.26,-8342.22
    >>Sprecht mit |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_wenn er sie hat|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith next
    .goto 1453/0,522.12,-8352.80,20 >> Reist zu Die Tiefenbahn
step
    #completewith next
    +|cRXP_WARN_Fahrt mit der Tiefenbahn, während ihr Pausenlos |r ||T132816:0|t[Wasser herbeizaubern Rang 3] wirkt
step
    .zone Ironforge >> Nehmt die Tiefenbahn nach Eisenschmiede
step
    .goto 1455/0,-1249.87,-4793.31
    >>Sprecht mit |cRXP_FRIENDLY_Cogspinner|r
    .vendor 5175>>|cRXP_BUY_Kauf eine|r |T133024:0|t[Bronzeröhre] |cRXP_BUY_wenn er sie hat|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith BankDeposit
    .goto 1455/0,-977.98,-4904.59,30 >>Betretet die Eisenschmiede-Bank
step
    .goto 1455/0,-997.66,-4886.49
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
    .goto 1455/0,-997.66,-4886.49
    .bankwithdraw 4654 >> Hol folgende Items aus deiner Bank:
    >>|T134431:0|t[Geheimnisvolles Fossil]
    .target Bailey Stonemantle
step
    .goto 1455/0,-915.2,-4606.38
    >>Sprecht mit |cRXP_FRIENDLY_Milstaff|r
    .train 3562 >> Lerne |T135757:0|t[Teleportieren: Ironforge]
    .target Milstaff Stormeye
step
    #completewith FlyMene
    >>|cRXP_WARN_===ACHTUNG===|r
    +|cRXP_WARN_Spezialisiert euch auf die Frostschaden-AoE-Spezialisierung|r
step
    .goto 1455/0,-928.48,-4614.620
    >>Sprich mit |cRXP_FRIENDLY_Dink|r
    .train 10 >> Erlernt Blizzard
    .target Dink
step
    #completewith next
    +|cRXP_WARN_Start spam casting|r |T132816:0|t[Wasser herbeizaubern Rang 3] |cRXP_WARN_um so viel Wasser wie möglich vor dem Flug herzustellen|r
step
    #completewith next
    #label FlyMene
    .goto 1455/0,-1152.39,-4820.914
    >>Sprich mit |cRXP_FRIENDLY_Gryth|r
    .fly Menethil >> Fliege zum Hafen von Menethil
    .target Gryth Thurden
step
    .zone Wetlands >> Reist ins Sumpfland
]])
