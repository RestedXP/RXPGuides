if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end
RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
<< NightElf
#name 11-15 Dunkelküste/Westfall 
#group RestedXP Forever Dungeon Guide (A)
#subgroup (WIP) Dungeon Guide 1-20
--#groupid RXP-SRGCE-A1
#next 15-16 Die Halle der Thanen

step
    #include RestedXP Forever Dungeonführer (A)\14-16 Dunkelküste@WashedA-Gatehouse
step
    .goto 1453/0,673.58,-8867.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Allison|r
    .home >> Setzt euren Ruhestein in Sturmwind
    .target Innkeeper Allison
    .bindlocation 16509
step
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>|cRXP_BUY_Kauft die folgenden Gegenstände für schnellere Abgaben in Westfall in Kürze:|r
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    >>|T133972:0|t[Sehniges Geierfleisch]
    >>|T133884:0|t[Murlocauge]
    >>|T135997:0|t[Geiferzahnschnauze]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Geiferzahnleber]
    >>|T4548890:0|t[Golemisofeder]
    >>|T132995:0|t[Gyrostabilisator für Erntearbeiter]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 255007,14,92909,1 -- Golem Isospring (14)
    .collect 255010,5,92909,1 -- Harvester Gyrostabilizer (5)
    .target Auctioneer Jaxon
step
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fp Stormwind >> Erlernt die Flugroute in Sturmwind
    .target Dungar Longdrink
step
    #completewith SaldeanVendor
    #optional
    .goto 1429/0,875.96,-9814.400
    .zone Westfall >> Lauf nach Westfall
step
    .goto 1436/0,918.42,-9851.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bauer Brauenwirbel|r
    .accept 64 >> Akzeptiert die Quest Das vergessene Erbstück
    .target Farmer Furlbrow
step
    .goto 1436/0,919.47,-9853.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verna Brauenwirbel|r
    .accept 36 >> Akzeptiert die Quest Westfalleintopf
    .accept 151 >> Akzeptiert die Quest Die arme Graumähne
    .target Verna Furlbrow
step
    #completewith SalmaS
    .goto 1436/0,1055.27,-10128.70,65 >> Reist zu Saldeans Farm
step
    .goto 1436/0,1055.27,-10128.70
    .target Farmer Saldean
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Saldean|r
    .accept 109 >>Akzeptiert die Quest Meldung bei Gryan Stoutmantle
step
    #label SalmaS
    .goto 1436/0,1042.67,-10111.670
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 36 >> Gebt die Quest Westfalleintopf ab
    .target Salma Saldean
    .accept 38 >> Akzeptiert die Quest Westfalleintopf
step << Gnome/Dwarf/NightElf
    #completewith next
    .goto 1436/0,1045.12,-10508.80
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .turnin 109 >> Gebt die Quest Meldung bei Gryan Stoutmantle ab
    .isOnQuest 109
step
    .goto 1436/0,1045.12,-10508.80
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .accept 12 >> Akzeptiert die Quest Die Volksmiliz
step
    .goto 1436/0,1041.97,-10511.13
    .target Captain Danuvin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Danuvin|r
    .accept 102 >> Akzeptiert die Quest Auf Patrouille durch Westfall
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Späher Galiaan|r
    .target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .accept 153 >> Akzeptiert die Quest Rote Lederkopftücher
step
    .goto 1436/0,1166.57,-10653.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirtin Heather|r
    .vendor >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r
	.target Innkeeper Heather
step
    .goto 1436/0,1179.800,-10635.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alba Fairmoon|r
    .target Alba Fairmoon::253092
    .accept 92742 >>Akzeptiert die Quest Test der Brunnen
    .accept 92744 >>Akzeptiert die Quest Murlochkiemen
step
	#completewith GnollPaws
    >>Öffnet die |cRXP_PICK_Sack Hafer|r auf dem Boden. Plündert es für eine |cRXP_LOOT_Handvoll Hafer|r
    >>|cRXP_WARN_Ihr findet sie normalerweise in der nähe von Farmzäunen oder Gebäuden|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith TravelCompass
    >>Tötet |cRXP_ENEMY_Junger Geiferzahn|r und |cRXP_ENEMY_Junger Fleischreißer|r. Plündert sie für |cRXP_LOOT_Sehniges Geierfleisch|r, |cRXP_LOOT_Geiferzahnschnauze|r und |cRXP_LOOT_Geiferzahnleber|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
step
    #completewith TravelCompass
    >>Tötet |cRXP_ENEMY_Fallensteller der Defias|r und |cRXP_ENEMY_Schmuggler der Defias|r. Plündert sie für |T133694:0|t|cRXP_LOOT_Rotes Lederkopftuch|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    #label TravelCompass
    .isOnQuest 399
    .goto 1436/0,1602.67,-10629.67,75 >> Reist zu Alexston's Bauernhof
    >>|cRXP_WARN_Arbeitet an der Vervollständigung der anderen Questziele, während ihr dorthin reist|r
step
    #sticky
    #completewith bennytime
    >>Tötet die |cRXP_ENEMY_Erntebehüer|r auf jedem Feld, während ihr vorbeilauft
    >>Plündert sie für ihr |cRXP_LOOT_Okra|r und ihr |cRXP_LOOT_Fläschchen Öl|r
    .mob Harvest Watcher
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
step
    .goto 1436/0,1748.27,-10672.13
    >>Öffne |cRXP_PICK_Alexstons Truhe|r. Plündert sie für |cRXP_LOOT_Ein einfacher Kompass|r
    .complete 399,1 --A Simple Compass (1)
    .isOnQuest 399
step
    .goto 1436/0,1404.200,-10290.900
    .use 254545 >>|cRXP_WARN_Benutzt das|r |T236996:0|t[Set für Brunnenwasserproben] |cRXP_WARN_am Brunnen von Molsens-Hof|r
    .complete 92742,2 --|1/1 Molsen Farm Water Sample
step
    #completewith bennytime
    >>Tötet |cRXP_ENEMY_Junger Geiferzahn|r und |cRXP_ENEMY_Junger Fleischreißer|r. Plündert sie für |cRXP_LOOT_Sehniges Geierfleisch|r, |cRXP_LOOT_Geiferzahnschnauze|r und |cRXP_LOOT_Geiferzahnleber|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
step
    #completewith bennytime
    >>Tötet |cRXP_ENEMY_Fallensteller der Defias|r und |cRXP_ENEMY_Schmuggler der Defias|r. Plündert sie für |T133694:0|t|cRXP_LOOT_Rotes Lederkopftuch|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    .goto 1436/0,1266.67,-9927.33,75 >> Reist zum Jansen-Anwesen, |cRXP_WARN_bearbeitet die anderen Questziele, während ihr dorthin unterwegs seid|r
step
	#label bennytime
    .goto 1436/0,1289.77,-9849.63
    >>Öffnet |cRXP_PICK_Furlbrows Kleiderschrank|r. Plündert sie für |cRXP_LOOT_Furlbrows Taschenuhr|r
    >>|cRXP_WARN_Ihr könnt die |cRXP_PICK_Furlbrows Kleiderschrank|r von außen plündern, wenn ihr eure Kamera richtig neigt|r
	>>|cRXP_WARN_Passt auf |cRXP_ENEMY_Benny Blanco|r auf. Er schlägt hart zu|r
    .complete 64,1 --Furlbrow's Pocket Watch
step
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73
    .goto 1436/0,1042.67,-9619.33,0
    >>Tötet |cRXP_ENEMY_Murlocräuber|r und |cRXP_ENEMY_Murlocküstenläufer|r. Plündert sie für ihre |cRXP_LOOT_Augen|r und |cRXP_LOOT_Kiemen|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .complete 92744,1 -- Longshore Murloc Gills 7/7
    .mob Murloc Raider
    .mob Murloc Coastrunner
step
    .goto 1436/0,1035.300,-9835.101
    .use 254545 >>|cRXP_WARN_Benutzt das|r |T236996:0|t[Set für Brunnenwasserproben] |cRXP_WARN_am Brunnen von Jansens Siedlung|r
    .complete 92742,1 --|1/1 Jansen Stead Water Sample
step
    .goto 1436/0,1004.87,-9716.87,60,0
    .goto 1436/0,1013.62,-9861.53,60,0
    .goto 1436/0,1192.12,-10175.13,60,0
    .goto 1436/0,1019.57,-10204.30,60,0
    .goto 1436/0,1013.62,-9861.53
    >>Öffnet die |cRXP_PICK_Sack Hafer|r auf dem Boden. Plündert es für eine |cRXP_LOOT_Handvoll Hafer|r
	>>|cRXP_WARN_Ihr findet sie normalerweise in der nähe von Farmzäunen oder Gebäuden|r
	.complete 151,1 --Handful of Oats (8)
step
    #label FurlbrowFarm
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Furlbrow|r und |cRXP_FRIENDLY_Verna Furlbrow|r
    .turnin 64 >> Gebt die Quest Das vergessene Erbstück ab
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .turnin 151 >> Gebt die Quest Die arme Graumähne ab
    .target +Verna Furlbrow
    .goto 1436/0,919.47,-9853.13
step
    #completewith SaldeanVendor
	.goto 1436/0,1055.27,-10128.70
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Saldean|r
    .vendor >> |cRXP_BUY_Verkauft euren trash|r
    >>|cRXP_WARN_Verkauft NICHT|r |T133884:0|t[Murlocauge], |T135997:0|t[Geiferzahnschnauze], |T134341:0|t[Geiferzahnleber] |cRXP_WARN_or|r |T133972:0|t[Sehniges Geierfleisch]
	.target Farmer Saldean
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Salma Saldean|r
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >> Gebt die Quest Westfalleintopf ab
    .isQuestComplete 38
    .target Salma Saldean
step
    #optional
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ozwin Ironsprocket::253395|r
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Akzeptiert die Quest Die Ernter ernten
    .turnin 92909 >>Gebt die Quest Die Ernter ernten ab
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Salma Saldean|r
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >> Gebt die Quest Westfalleintopf ab
    .isQuestComplete 38
    .target Salma Saldean
step
    .isQuestAvailable 38
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,80,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1460.22,-10224.83,60,0
    .goto 1436/0,1238.67,-9907.73
    >>Tötet die |cRXP_ENEMY_Erntebehüter|r. Plündert sie für ihre |cRXP_LOOT_Okraschote|r und ihre |cRXP_LOOT_Fläschchen Öl|r
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
step
    .isQuestTurnedIn 38
    #label HarvestW
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,80,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1460.22,-10224.83,60,0
    .goto 1436/0,1238.67,-9907.73
    >>Tötet die |cRXP_ENEMY_Erntebehüter|r. Plündert sie für ihr |cRXP_LOOT_Fläschchen Öl|r
    .collect 814,5,103,1 --Flask of Oil (5)
step
    #optional
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ozwin Ironsprocket::253395|r
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Akzeptiert die Quest Die Ernter ernten
    .turnin 92909 >>Gebt die Quest Die Ernter ernten ab
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
step
    .goto 1436/0,1179.52,-10382.57,75,0
    .goto 1436/0,1138.22,-10474.97,75,0
    .goto 1436/0,860.67,-10462.83,75,0
    .goto 1436/0,904.07,-10038.87,75,0
    .goto 1436/0,1104.62,-9848.000,75,0
    .goto 1436/0,1298.52,-10028.13,75,0
    .goto 1436/0,1340.52,-10401.93,75,0
    .goto 1436/0,1111.97,-10342.20
    >>Tötet |cRXP_ENEMY_Junger Geiferzahn|r und |cRXP_ENEMY_Junger Fleischreißer|r. Plündert sie für |cRXP_LOOT_Sehniges Geierfleisch|r, |cRXP_LOOT_Geiferzahnschnauze|r und |cRXP_LOOT_Geiferzahnleber|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .mob +Goretusk
step
    #label SaldeanVendor
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Salma Saldean|r
	.target Salma Saldean
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >> Gebt die Quest Westfalleintopf ab
step
    #optional
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ozwin Ironsprocket::253395|r
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Akzeptiert die Quest Die Ernter ernten
    .turnin 92909 >>Gebt die Quest Die Ernter ernten ab
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Fallensteller der Defias|r und |cRXP_ENEMY_Schmuggler der Defias|r. Plündert sie für |T133694:0|t|cRXP_LOOT_Rotes Lederkopftuch|r
    >>|cRXP_WARN_Dies ist ein dynamisches Respawn-Gebiet, was bedeutet, dass die Gegner erneut erscheinen, wenn ihr genug von ihnen tötet|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    .goto 1436/0,1324.200,-10490.400
    >>Tötet |cRXP_ENEMY_Fallensteller der Defias|r und |cRXP_ENEMY_Schmuggler der Defias|r. Plündert sie für |T133694:0|t|cRXP_LOOT_Rotes Lederkopftuch|r
    >>|cRXP_WARN_Dies ist ein dynamisches Respawn-Gebiet, was bedeutet, dass die Gegner erneut erscheinen, wenn ihr genug von ihnen tötet|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 12 >> Gebt die Quest Die Volksmiliz ab
step
	.xp <14,1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .accept 65 >> Die Bruderschaft der Defias annehmen
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Späher Galiaan|r
	.target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .turnin 153 >> Gebt die Quest Rote Lederkopftücher ab
step
    .goto 1436/0,1179.800,-10635.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alba Fairmoon|r
    .target Alba Fairmoon::253092
    .turnin 92742 >>Gebt die Quest Test der Brunnen ab
    .turnin 92744 >>Gebt die Quest Murlockiemen ab
step
    .hs >> Ruhestein nach Sturmwind
    .bindlocation 16509,1
    .cooldown item,6948,>2,1
    .zoneskip Stormwind City
    .zoneskip Darkshore
step
    #completewith DeeprunEnter
    .goto 1436/0,1037.42,-10628.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Thor
    .zoneskip Stormwind City
    .zoneskip Darkshore

step << Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    .vendor 1287 >>|cRXP_BUY_Kauft einen|r |T135343:0|t[Krummsäbel] |cRXP_BUY_von ihr oder etwas Besseres aus dem Auktionshaus und rüstet es als eure Zweitwaffe aus|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    .vendor 1287 >>|cRXP_BUY_Kauft einen|r |T135343:0|t[Krummsäbel] |cRXP_BUY_von ihr|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne|r
    .train 1758,1
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Osborne the Night Man
    .xp <16,1
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wu|r oder |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .train 1160,1
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Wu Shen
    .target Ilsa Corbin
    .xp <16,1
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Enris Brightspear|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Einris Brightspear
    .xp <16,1
step << Druid
    .goto 1453/0,1347.6192,-8591.2168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Theridran|r
    .trainer >>Trainiere deine Klassenfähigkeiten
	.target Theridran
    .xp <16,1
step
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 399 >> Gebt die Quest Ein bescheidener Anfang ab
    .target Baros Alexston
    .isQuestComplete 399
step << Priest
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Lauf zur Kathedrale in Sturmwind
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brother Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >> Trainiere deine Klassenfähigkeiten
    .train 8122,1
    .target Brother Joshua
    .xp <16,1
step
    #optional
    #label endOfTheGuide
step
    #label DeeprunEnter
    #completewith next
    .goto 1453/0,562.300,-8385.300,20,0
    .goto 1453/0,522.000,-8352.101
    .subzone 2257 >>Betretet die Tiefenbahn
    .zoneskip Ironforge
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
step
    .zone Ironforge >> Nehmt die Tiefenbahn nach Eisenschmiede
    .zoneskip Loch Modan
    .zoneskip Dun Morogh


]])



RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
#name 13-15 Westfall 
#displayname 14-15 Westfall << Gnome/Dwarf !Hunter
#displayname 13-15 Westfall << Hunter
#group RestedXP Forever Dungeon Guide (A)
#subgroup (WIP) Dungeon Guide 1-20
--#groupid RXP-SRGCE-A1
#next 15-16 Die Halle der Thanen

step
    #optional
    .maxlevel 14,endOfTheGuide
step
    .goto 1453/0,673.58,-8867.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Allison|r
    .home >> Setzt euren Ruhestein in Sturmwind
    .target Innkeeper Allison
    .bindlocation 16509
step
    #label NEWestfallStart --hidden step for #include

step
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>|cRXP_BUY_Kauft die folgenden Gegenstände für schnellere Abgaben in Westfall in Kürze:|r
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    >>|T133972:0|t[Sehniges Geierfleisch]
    >>|T133884:0|t[Murlocauge]
    >>|T135997:0|t[Geiferzahnschnauze]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Geiferzahnleber]
    >>|T4548890:0|t[Golemisofeder]
    >>|T132995:0|t[Gyrostabilisator für Erntearbeiter]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 255007,14,92909,1 -- Golem Isospring (14)
    .collect 255010,5,92909,1 -- Harvester Gyrostabilizer (5)
    .target Auctioneer Jaxon

step << Human
    .goto 1453/0,489.99,-8835.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .turnin 6261 >> Gebt die Quest Dungar Longdrink ab
    .accept 6285 >> Akzeptiert die Quest Zurück zu Lewis
    .target Dungar Longdrink

step << !Skyborne
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fly Westfall >> Fliegt nach Westfall << !NightElf
    .fp Stormwind >> Erlernt die Flugroute in Sturmwind << NightElf
    .target Dungar Longdrink
step
    #completewith SaldeanVendor
    #optional
    .goto 1429/0,875.96,-9814.400
    .zone Westfall >> Lauf nach Westfall
step
    .goto 1436/0,918.42,-9851.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bauer Brauenwirbel|r
    .accept 64 >> Akzeptiert die Quest Das vergessene Erbstück
    .target Farmer Furlbrow
step
    .goto 1436/0,919.47,-9853.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verna Brauenwirbel|r
    .accept 36 >> Akzeptiert die Quest Westfalleintopf
    .accept 151 >> Akzeptiert die Quest Die arme Graumähne
    .target Verna Furlbrow
step
    #completewith SalmaS
    .goto 1436/0,1055.27,-10128.70,65 >> Reist zu Saldeans Farm
step
    .goto 1436/0,1055.27,-10128.70
    .target Farmer Saldean
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Saldean|r
    .accept 9 >> Akzeptiert die Quest Tod auf den Feldern
    .accept 109 >>Akzeptiert die Quest Meldung bei Gryan Stoutmantle << NightElf
step
    #label SalmaS
    .goto 1436/0,1042.67,-10111.670
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 36 >> Gebt die Quest Westfalleintopf ab
    .target Salma Saldean
    .accept 38 >> Akzeptiert die Quest Westfalleintopf
    .accept 22 >> Akzeptiert die Quest Pastete aus Geiferzahnleber
step << Human
    #label Lewis
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Rüstmeister Lewis|r
    .target Quartermaster Lewis
    .goto 1436/0,1021.67,-10500.63
    .turnin 6285 >> Gebt die Quest Zurück zu Lewis ab
step << Gnome/Dwarf/NightElf
    #completewith next
    .goto 1436/0,1045.12,-10508.80
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .turnin 109 >> Gebt die Quest Meldung bei Gryan Stoutmantle ab
    .isOnQuest 109
step
    .goto 1436/0,1045.12,-10508.80
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .accept 12 >> Akzeptiert die Quest Die Volksmiliz
step
    .goto 1436/0,1041.97,-10511.13
    .target Captain Danuvin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Danuvin|r
    .accept 102 >> Akzeptiert die Quest Auf Patrouille durch Westfall
step << Human
    #requires Lewis
    .goto 1436/0,1126.67,-10636.670
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Späher Galiaan|r
    .target Scout Galiaan
    .accept 153 >> Akzeptiert die Quest Rote Lederkopftücher
step << !Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Späher Galiaan|r
    .target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .accept 153 >> Akzeptiert die Quest Rote Lederkopftücher
step
    .goto 1436/0,1166.57,-10653.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirtin Heather|r
    .vendor >>|cRXP_BUY_Kauf Essen/Wasser, falls du welches brauchst|r
	.target Innkeeper Heather
step
    .goto 1436/0,1179.800,-10635.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alba Fairmoon|r
    .target Alba Fairmoon::253092
    .accept 92742 >>Akzeptiert die Quest Test der Brunnen
    .accept 92744 >>Akzeptiert die Quest Murlochkiemen
step
	#completewith GnollPaws
    >>Öffnet die |cRXP_PICK_Sack Hafer|r auf dem Boden. Plündert es für eine |cRXP_LOOT_Handvoll Hafer|r
    >>|cRXP_WARN_Ihr findet sie normalerweise in der nähe von Farmzäunen oder Gebäuden|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith TravelCompass
    >>Tötet |cRXP_ENEMY_Junger Geiferzahn|r und |cRXP_ENEMY_Junger Fleischreißer|r. Plündert sie für |cRXP_LOOT_Sehniges Geierfleisch|r, |cRXP_LOOT_Geiferzahnschnauze|r und |cRXP_LOOT_Geiferzahnleber|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .mob +Goretusk
step
    #completewith TravelCompass
    >>Tötet |cRXP_ENEMY_Fallensteller der Defias|r und |cRXP_ENEMY_Schmuggler der Defias|r. Plündert sie für |T133694:0|t|cRXP_LOOT_Rotes Lederkopftuch|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    #label TravelCompass
    .isOnQuest 399
    .goto 1436/0,1602.67,-10629.67,75 >> Reist zu Alexston's Bauernhof
    >>|cRXP_WARN_Arbeitet an der Vervollständigung der anderen Questziele, während ihr dorthin reist|r
step << skip -- quests drop rate is beyond dreadful. over 50 kills to complete
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ozwin Ironsprocket::253395|r in der Scheune
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Akzeptiert die Quest Die Ernter ernten
step
    #sticky
    #completewith bennytime
    >>Tötet die |cRXP_ENEMY_Erntebehüer|r auf jedem Feld, während ihr vorbeilauft
    >>Plündert sie für ihr |cRXP_LOOT_Okra|r und ihr |cRXP_LOOT_Fläschchen Öl|r
    .mob Harvest Watcher
    .complete 9,1 --Havest Watcher slain (20)
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
step
    .goto 1436/0,1748.27,-10672.13
    >>Öffne |cRXP_PICK_Alexstons Truhe|r. Plündert sie für |cRXP_LOOT_Ein einfacher Kompass|r
    .complete 399,1 --A Simple Compass (1)
    .isOnQuest 399
step
    #completewith bennytime
    >>Tötet |cRXP_ENEMY_Junger Geiferzahn|r und |cRXP_ENEMY_Junger Fleischreißer|r. Plündert sie für |cRXP_LOOT_Sehniges Geierfleisch|r, |cRXP_LOOT_Geiferzahnschnauze|r und |cRXP_LOOT_Geiferzahnleber|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .mob +Goretusk
step
    #completewith bennytime
    >>Tötet |cRXP_ENEMY_Fallensteller der Defias|r und |cRXP_ENEMY_Schmuggler der Defias|r. Plündert sie für |T133694:0|t|cRXP_LOOT_Rotes Lederkopftuch|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    .goto 1436/0,1266.67,-9927.33,75 >> Reist zum Jansen-Anwesen, |cRXP_WARN_bearbeitet die anderen Questziele, während ihr dorthin unterwegs seid|r
step
	#label bennytime
    .goto 1436/0,1289.77,-9849.63
    >>Öffnet |cRXP_PICK_Furlbrows Kleiderschrank|r. Plündert sie für |cRXP_LOOT_Furlbrows Taschenuhr|r
    >>|cRXP_WARN_Ihr könnt die |cRXP_PICK_Furlbrows Kleiderschrank|r von außen plündern, wenn ihr eure Kamera richtig neigt|r
	>>|cRXP_WARN_Passt auf |cRXP_ENEMY_Benny Blanco|r auf. Er schlägt hart zu|r
    .complete 64,1 --Furlbrow's Pocket Watch
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Gnoll der Flusspfoten|r und |cRXP_ENEMY_Späher der Flusspfoten|r. Plündert sie für ihre |T134297:0|t|cRXP_LOOT_Gnolltatze|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto 1436/0,1035.300,-9835.101
    .use 254545 >>|cRXP_WARN_Benutzt das|r |T236996:0|t[Set für Brunnenwasserproben] |cRXP_WARN_am Brunnen von Jansens Siedlung|r
    .complete 92742,1 --|1/1 Jansen Stead Water Sample
step
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73
    .goto 1436/0,1042.67,-9619.33,0
    >>Tötet |cRXP_ENEMY_Murlocräuber|r und |cRXP_ENEMY_Murlocküstenläufer|r. Plündert sie für ihre |cRXP_LOOT_Augen|r und |cRXP_LOOT_Kiemen|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .complete 92744,1 -- Longshore Murloc Gills 7/7
    .mob Murloc Raider
    .mob Murloc Coastrunner
step
    #label GnollPaws
    .goto 1436/0,1042.67,-9715.0,60,0
    .goto 1436/0,1517.97,-9743.000,60,0
    .goto 1436/0,1412.62,-9720.83,60,0
    .goto 1436/0,1184.07,-9745.80,60,0
    .goto 1436/0,1026.57,-9715.70,60,0
    .goto 1436/0,1026.57,-9715.70,60,0
    .goto 1436/0,1517.97,-9743.000,60,0
    .goto 1436/0,1184.07,-9745.80,60,0
    .goto 1436/0,1412.62,-9720.83
    .goto 1436/0,1517.97,-9743.000,0
    .goto 1436/0,1184.07,-9745.80,0
    .goto 1436/0,1028.32,-9710.330,0
    >>Tötet |cRXP_ENEMY_Gnoll der Flusspfoten|r und |cRXP_ENEMY_Späher der Flusspfoten|r. Plündert sie für ihre |T134297:0|t|cRXP_LOOT_Gnolltatze|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto 1436/0,1004.87,-9716.87,60,0
    .goto 1436/0,1013.62,-9861.53,60,0
    .goto 1436/0,1192.12,-10175.13,60,0
    .goto 1436/0,1019.57,-10204.30,60,0
    .goto 1436/0,1013.62,-9861.53
    >>Öffnet die |cRXP_PICK_Sack Hafer|r auf dem Boden. Plündert es für eine |cRXP_LOOT_Handvoll Hafer|r
	>>|cRXP_WARN_Ihr findet sie normalerweise in der nähe von Farmzäunen oder Gebäuden|r
	.complete 151,1 --Handful of Oats (8)
step << Human Warlock
    #label FurlbrowFarm
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Furlbrow|r und |cRXP_FRIENDLY_Verna Furlbrow|r
    .turnin 64 >> Gebt die Quest Das vergessene Erbstück ab
    .turnin 184 >> Gebt die Quest Furlbrows Urkunde ab
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .turnin 151 >> Gebt die Quest Die arme Graumähne ab
    .goto 1436/0,919.47,-9853.13
	.target +Verna Furlbrow
    .isOnQuest 184
step
    #optional << Human Warlock
    #label FurlbrowFarm << !Human/!Warlock
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Furlbrow|r und |cRXP_FRIENDLY_Verna Furlbrow|r
    .turnin 64 >> Gebt die Quest Das vergessene Erbstück ab
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .turnin 151 >> Gebt die Quest Die arme Graumähne ab
    .target +Verna Furlbrow
    .goto 1436/0,919.47,-9853.13
step
    #completewith SaldeanVendor
	.goto 1436/0,1055.27,-10128.70
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Saldean|r
    .vendor >> |cRXP_BUY_Verkauft euren trash|r
    >>|cRXP_WARN_Verkauft NICHT|r |T133884:0|t[Murlocauge], |T135997:0|t[Geiferzahnschnauze], |T134341:0|t[Geiferzahnleber] |cRXP_WARN_or|r |T133972:0|t[Sehniges Geierfleisch]
	.target Farmer Saldean
step
    #optional
    .isQuestComplete 9
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Saldean|r
	.target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 9 >> Gebt die Quest Tod auf den Feldern ab
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Salma Saldean|r
    .goto 1436/0,1042.67,-10111.670
    .turnin 22 >> Gebt die Quest Pastete aus Geiferzahnleber ab
    .turnin 38 >> Gebt die Quest Westfalleintopf ab
    .isQuestComplete 22
    .isQuestComplete 38
    .target Salma Saldean
step
    #optional
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ozwin Ironsprocket::253395|r
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Akzeptiert die Quest Die Ernter ernten
    .turnin 92909 >>Gebt die Quest Die Ernter ernten ab
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Salma Saldean|r
    .goto 1436/0,1042.67,-10111.670
    .turnin 22 >> Gebt die Quest Pastete aus Geiferzahnleber ab
    .isQuestComplete 22
    .target Salma Saldean
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Salma Saldean|r
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >> Gebt die Quest Westfalleintopf ab
    .isQuestComplete 38
    .target Salma Saldean
step
    .isQuestAvailable 38
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,80,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1460.22,-10224.83,60,0
    .goto 1436/0,1238.67,-9907.73
    >>Tötet die |cRXP_ENEMY_Erntebehüter|r. Plündert sie für ihre |cRXP_LOOT_Okraschote|r und ihre |cRXP_LOOT_Fläschchen Öl|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
step
    .isQuestTurnedIn 38
    #label HarvestW
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,80,0
    .goto 1436/0,1238.67,-9907.73,80,0
    .goto 1436/0,1460.22,-10224.83,80,0
    .goto 1436/0,1132.27,-10146.67,60,0
    .goto 1436/0,1460.22,-10224.83,60,0
    .goto 1436/0,1238.67,-9907.73
    >>Tötet die |cRXP_ENEMY_Erntebehüter|r. Plündert sie für ihr |cRXP_LOOT_Fläschchen Öl|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5,103,1 --Flask of Oil (5)
step
    #optional
    .isQuestComplete 9
    .subzoneskip 107,1 -- forces early turnin if already at same farm
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Saldean|r
	.target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 9 >> Gebt die Quest Tod auf den Feldern ab
step
    #optional
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ozwin Ironsprocket::253395|r
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Akzeptiert die Quest Die Ernter ernten
    .turnin 92909 >>Gebt die Quest Die Ernter ernten ab
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
step
    .goto 1436/0,1179.52,-10382.57,75,0
    .goto 1436/0,1138.22,-10474.97,75,0
    .goto 1436/0,860.67,-10462.83,75,0
    .goto 1436/0,904.07,-10038.87,75,0
    .goto 1436/0,1104.62,-9848.000,75,0
    .goto 1436/0,1298.52,-10028.13,75,0
    .goto 1436/0,1340.52,-10401.93,75,0
    .goto 1436/0,1111.97,-10342.20
    >>Tötet |cRXP_ENEMY_Junger Geiferzahn|r und |cRXP_ENEMY_Junger Fleischreißer|r. Plündert sie für |cRXP_LOOT_Sehniges Geierfleisch|r, |cRXP_LOOT_Geiferzahnschnauze|r und |cRXP_LOOT_Geiferzahnleber|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .mob +Goretusk
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bauer Saldean|r
	.target Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 9 >> Gebt die Quest Tod auf den Feldern ab
step
    #label SaldeanVendor
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Salma Saldean|r
	.target Salma Saldean
    .goto 1436/0,1042.67,-10111.670
    .turnin 38 >> Gebt die Quest Westfalleintopf ab
    .turnin 22 >> Gebt die Quest Pastete aus Geiferzahnleber ab
step
    #optional
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ozwin Ironsprocket::253395|r
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Akzeptiert die Quest Die Ernter ernten
    .turnin 92909 >>Gebt die Quest Die Ernter ernten ab
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Fallensteller der Defias|r und |cRXP_ENEMY_Schmuggler der Defias|r. Plündert sie für |T133694:0|t|cRXP_LOOT_Rotes Lederkopftuch|r
    >>|cRXP_WARN_Dies ist ein dynamisches Respawn-Gebiet, was bedeutet, dass die Gegner erneut erscheinen, wenn ihr genug von ihnen tötet|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    .goto 1436/0,1404.200,-10290.900
    .use 254545 >>|cRXP_WARN_Benutzt das|r |T236996:0|t[Set für Brunnenwasserproben] |cRXP_WARN_am Brunnen von Molsens-Hof|r
    .complete 92742,2 --|1/1 Molsen Farm Water Sample
step
    .goto 1436/0,1324.200,-10490.400
    >>Tötet |cRXP_ENEMY_Fallensteller der Defias|r und |cRXP_ENEMY_Schmuggler der Defias|r. Plündert sie für |T133694:0|t|cRXP_LOOT_Rotes Lederkopftuch|r
    >>|cRXP_WARN_Dies ist ein dynamisches Respawn-Gebiet, was bedeutet, dass die Gegner erneut erscheinen, wenn ihr genug von ihnen tötet|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 12 >> Gebt die Quest Die Volksmiliz ab
step
	.xp <14,1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .accept 65 >> Die Bruderschaft der Defias annehmen
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Danuvin|r
	.target Captain Danuvin
    .goto 1436/0,1041.97,-10511.13
    .turnin 102 >> Gebt die Quest Auf Patrouille durch Westfall ab
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Späher Galiaan|r
	.target Scout Galiaan
    .goto 1436/0,1126.67,-10636.670
    .turnin 153 >> Gebt die Quest Rote Lederkopftücher ab
step
    .goto 1436/0,1179.800,-10635.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alba Fairmoon|r
    .target Alba Fairmoon::253092
    .turnin 92742 >>Gebt die Quest Test der Brunnen ab
    .turnin 92744 >>Gebt die Quest Murlockiemen ab
step
    .hs >> Ruhestein nach Sturmwind
    .bindlocation 16509,1
    .cooldown item,6948,>2,1
    .zoneskip Stormwind City
    .zoneskip Darkshore
step
    #completewith DeeprunEnter
    .goto 1436/0,1037.42,-10628.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Thor
    .zoneskip Stormwind City
    .zoneskip Darkshore

step << Human Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    .vendor 1287 >>|cRXP_BUY_Kauft einen|r |T135343:0|t[Krummsäbel] |cRXP_BUY_von ihr oder etwas Besseres aus dem Auktionshaus und rüstet es als eure Zweitwaffe aus|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Human Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    .vendor 1287 >>|cRXP_BUY_Kauft einen|r |T135343:0|t[Krummsäbel] |cRXP_BUY_von ihr|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne|r
    .train 1758,1
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Osborne the Night Man
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wu|r oder |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .train 1160,1
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Wu Shen
    .target Ilsa Corbin
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Enris Brightspear|r
    >>|cRXP_WARN_Wenn ihr gerade zuvor trainiert habt, überspringt diesen Schritt|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Einris Brightspear
step
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 399 >> Gebt die Quest Ein bescheidener Anfang ab
    .target Baros Alexston
    .isQuestComplete 399
step << NightElf Druid
    .goto 1453/0,1347.6192,-8591.2168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Theridran|r
    .trainer >>Trainiere deine Klassenfähigkeiten
	.target Theridran
step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Geh ins geschlachtete Lamm und dann in den Keller
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .train 6222,1
    .target Ursula Deline
step << Mage
    #optional
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >> Reist zum Magierturm
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Elsharin|r
    .train 2137,1
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Elsharin
step << Priest/Paladin
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Lauf zur Kathedrale in Sturmwind
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Arthur der Treue|r
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    .trainer >> Trainiere deine Klassenfähigkeiten
    .train 19742,1
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brother Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >> Trainiere deine Klassenfähigkeiten
    .train 8122,1
    .target Brother Joshua
step
    #label NEWestfallEnd --hidden step for #include
step
    .goto 1453/0,765.700,-8804.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Catherine Leland|r
    >>|cRXP_BUY_Kauft ein|r |T134335:0|t[Glänzendes Schmuckstück] |cRXP_BUY_und drei|r |T134324:0|t[Nachtkriecher] |cRXP_BUY_von ihr. Dies ist für eine 900xp Quest|r
    .collect 6529,1,95065,1 --|1/1 Shiny Bauble
    .collect 6530,3,95065,1 --|3/3 Nightcrawlers
    .target Catherine Leland
step
    .goto 1453/0,1269.100,-8540.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gilbert Gray::267118|r
    .target Gilbert Gray::267118
    .accept 95065 >>Akzeptiert die Quest Zeit zu fischen
    .turnin 95065 >>Gebt die Quest Zeit zu fischen ab
step
    .goto 1453/0,1193.100,-8328.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ladungsbuchhalter Philmor::268511|r 
    .target Manifest Clerk Philmor::268511
    .accept 97220 >>Akzeptiert die Quest Philmors Bitte
step
    .goto 1453/0,566.600,-8845.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elaine Trias::483|r
    .target Elaine Trias::483
    .turnin 97220 >>Gebt die Quest Philmors Bitte ab
    .accept 97222 >>Akzeptiert die Quest Torhauswaren
step
    .goto 1453/0,568.300,-8862.200
    .use 277198 >> |cRXP_WARN_Benutzt die|r |T132762:0|t[Torhauslieferung] |cRXP_WARN_vor der |cRXP_PICK_Torhaustür|r oben|r
    .complete 97222,1 --|1/1 Gatehouse Shipment delivered
step
    .goto 1453/0,566.600,-8845.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elaine Trias::483|r
    .target Elaine Trias::483
    .turnin 97222 >>Gebt die Quest Torhauswaren ab
step
    #optional
    #label endOfTheGuide
step
    #label DeeprunEnter
    #completewith next
    .goto 1453/0,562.300,-8385.300,20,0
    .goto 1453/0,522.000,-8352.101
    .subzone 2257 >>Betretet die Tiefenbahn
    .zoneskip Ironforge
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
step
    .zone Ironforge >> Nehmt die Tiefenbahn nach Eisenschmiede
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
#group RestedXP Forever Dungeon Guide (A)
#subgroup (WIP) Dungeon Guide 1-20
--#groupid RXP-SRGCE-A1
#name 15-16 Die Halle der Thanen
#next 16-18 Ruinen von Lordaeron

step << NightElf
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Holt euch den Flugpunkt in Eisenschmiede
    .target Gryth Thurden
step
    #completewith OII
    +|cRXP_WARN_Ihr werdet jetzt eine Vorbereitungsquest für Die Halle der Thanen abschließen und dann lauft den Dungeon|r
step
    #completewith OII
    .zone Dun Morogh >> Reist nach Dun Morogh
step
    #label QuarryStart
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Erdseher Farsen|r
    .accept 96392 >> Akzeptiert die Quest Farsens Wacht
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .goto 1426/0,-1394.24,-5797.83
    .gossipoption 139831 >> Sprecht mit |cRXP_FRIENDLY_Erdseher Farsen|r, um seine Fernsicht anzusehen
    >>|cRXP_WARN_Ihr könnt die Fernsicht abbrechen, sobald das Ziel abgeschlossen ist|r
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .aura -1293681 >> |cRXP_WARN_Drückt ESC, um die Fernsicht abzubrechen|r
step << skip
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Erdseher Farsen|r
    >>|cRXP_WARN_Ihr könnt die Fernsicht abbrechen, sobald das Ziel abgeschlossen ist|r
    .complete 96392,1 -- Use Farsen's Farsight
    .skipgossip
    .target Earthseer Farsen
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Erdseher Farsen|r
    >>|cRXP_WARN_Drückt ESC, um die Fernsicht abzubrechen|r
    .turnin 96392 >> Gebt die Quest Farsens Wacht ab
    .accept 96390 >> Akzeptiert die Quest Erstickt sie im Keim
    .target Earthseer Farsen
step
    .goto 1426/0,-2009.87,-5860.22,40,0
    .goto 1426/0,-2034.49,-5922.60
    >>Tötet |cRXP_ENEMY_Spion der Dunkeleisenzwerge|r. Plündert sie für |T237385:0|t[|cRXP_LOOT_Dunkeleisenkarte |r]
    .use 274268 >>|cRXP_WARN_Benutzt|r |T237385:0|t[|cRXP_LOOT_Dunkeleisenkarte|r] |cRXP_WARN_um die Quest zu starten|r
    >>|cRXP_WARN_Ihr könnt das Töten der |cRXP_ENEMY_Spion der Dunkeleisenzwerge|r für die andere Quest überspringen, da sie ein niedriges Level haben, sobald ihr die|r |T237385:0|t[|cRXP_LOOT_Dunkeleisenkarte|r] gefunden habt
    .complete 96390,1 -- Dark Iron Spy slain 10/10
    .disablecheckbox
    .collect 274268,1,96391,1 -- Dark Iron Map (1)
    .accept 96391 >> Akzeptiert die Quest Karte des Untergrunds
    .mob Dark Iron Spy
step
    #label OII
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Erdseher Farsen|r
    .turnin 96391 >> Gebt die Quest Karte des Untergrunds ab
    .accept 96393 >> Akzeptiert die Quest Eindringlinge in der Altstadt von Ironforge
    .target Earthseer Farsen
step
    #optional
    .isQuestComplete 96390
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Erdseher Farsen|r
    .turnin 96390 >> Gebt die Quest Erstickt sie im Keim ab
    .target Earthseer Farsen

step
    #completewith EnterHoT
    +|cRXP_WARN_Fangt an nach einer Gruppe für Die Halle der Thanen zu suchen|r
step
    #optional
    #label InIronforge
    #completewith EnterHoT
    .zone Ironforge >> Lauf nach Ironforge
step
    #requires InIronforge
    #completewith EnterHoT
    .goto 1455/0,-1054.300,-4843.200,10,0
    .goto 1455/0,-1081.900,-4850.100,10,0
    .goto 1455/0,-1082.800,-4886.000,10,0
    .goto 1455/0,-1087.700,-4821.900,10,0
    .goto 1455/0,-1010.300,-4850.900,10 >> Reisen nach unten in alte Eisenschmiede über |cRXP_FRIENDLY_König Magnis|r Raum
step
    .goto 1455/0,-971.800,-4820.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Afadra Dunwall|r
    .accept 96394 >> Akzeptiert die Quest Die rastlosen Toten
    .target Afadra Dunwall
step
    #completewith EnterHoT
    .goto 1455/0,-996.100,-4821.200,10,0
    .goto 1455/0,-972.000,-4803.000,10,0
    .goto 1455/0,-988.900,-4854.400,10 >> |cRXP_WARN_Lass dich auf die Rampe darunter fallen|r
step
    .goto 1455/0,-968.200,-4803.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thom Filch|r
    .accept 96403 >> Akzeptiert die Quest Wichtige Erbstücke
    .target Thom Filch
step
    #label EnterHoT
    .goto 1455/0,-933.200,-4821.900
    .subzone 16919 >> Betretet Die Halle der Thanen

step
    #completewith FaldrimAnvilmar
    >>Plündert die |cRXP_PICK_Zwergisches Erbstück|r auf dem Boden in den Hallen der Thanen
    >>|cRXP_WARN_Ihr könnt eine Menge davon am Ende des Deungeons sammeln|r
    .complete 96403,1 -- Dwarven Heirloom (8)
step
    #completewith FaldrimAnvilmar
    >>Tötet |cRXP_ENEMY_Wütende Erscheinung|r und |cRXP_ENEMY_Gepeinigte Seele|r
    .complete 96394,1 -- Enraged Apparition slain (15)
    .mob +Enraged Apparition slain (15)
    .complete 96394,2 -- Tormented Soul slain (10)
    .mob +Tormented Soul slain (10)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Geisterhafte Bedienstete|r
    .accept 96395 >> Akzeptiert die Quest Ein uralter Groll
    .target Ghostly Attendant
step
    #label FaldrimAnvilmar
    >>Tötet |cRXP_ENEMY_Faldrim Anvilmar|r
    .complete 96395,1 -- Faldrim Anvilmar slain (1)
    .mob Faldrim Anvilmar
step
    #completewith next
    +|cRXP_WARN_Kehrt zum|r |cRXP_FRIENDLY_Geisterhafte Bedienstete|r zurück
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Geisterhafte Bedienstete|r
    .turnin 96395 >> Gebt die Quest Ein uralter Groll ab
    .target Ghostly Attendant
step
    >>Tötet |cRXP_ENEMY_Wütende Erscheinung|r und |cRXP_ENEMY_Gepeinigte Seele|r
    >>|cRXP_WARN_Schließt das ab, da ihr möglicherweise später keine Chance habt, es zu beenden|r
    .complete 96394,1 -- Enraged Apparition slain (15)
    .mob +Enraged Apparition slain (15)
    .complete 96394,2 -- Tormented Soul slain (10)
    .mob +Tormented Soul slain (10)
step
    #completewith ToU
    >>Plündert die |cRXP_PICK_Zwergisches Erbstück|r auf dem Boden in den Hallen der Thanen
    >>|cRXP_WARN_Ihr könnt eine Menge davon am Ende des Deungeons sammeln|r
    .complete 96403,1 -- Dwarven Heirloom (8)
step
    >>Tötet |cRXP_ENEMY_Durgen Dirgehammer|r. Plündert sie für |cRXP_LOOT_Durgen Dirgehammers Kopf|r
    .complete 96393,1 -- Durgen Dirgehammer's Head
    .mob Durgen Dirgehammer
step
    #label ToU
    >>Klickt das |cRXP_PICK_Abkommen des Einvernehmens|r an
    .accept 98423 >> Akzeptiert die Quest Abkommen des Einvernehmens
step
    >>Plündert die |cRXP_PICK_Zwergisches Erbstück|r auf dem Boden in den Hallen der Thanen
    .complete 96403,1 -- Dwarven Heirloom (8)
step
    .zone Ironforge >> |cRXP_WARN_Verlasst Die Halle der Thanen. Der schnellste Weg führt direkt den Flur vom Endboss-Raum hinunter|r
    .subzoneskip 16919,1

step
    .goto 1455/0,-968.200,-4803.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thom Filch|r
    .turnin 96403 >> Gebt die Quest Wichtige Erbstücke ab
    .target Thom Filch
step
    #completewith next
    .goto 1455/0,-1006.600,-4841.600,10,0
    .goto 1455/0,-969.700,-4841.500,10,0
    .goto 1455/0,-964.300,-4807.500,10,0
    .goto 1455/0,-993.500,-4817.600,10,0
    .goto 1455/0,-983.700,-4847.800,10,0
    .goto 1455/0,-1022.000,-4842.100,10,0
    .goto 1455/0,-994.000,-4843.100,10 >> Kehrt zu |cRXP_FRIENDLY_Afadra Dunwall|r oben auf der Rampe
step
    .goto 1455/0,-971.800,-4820.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Afadra Dunwall|r
    .turnin 96394 >> Gebt die Quest Die rastlosen Toten ab
    .target Afadra Dunwall
step
    #completewith next
    .goto 1455/0,-1030.200,-4831.000,10,0
    .goto 1455/0,-1090.900,-4830.400,10,0
    .goto 1455/0,-1079.600,-4884.100,10,0
    .goto 1455/0,-1058.000,-4842.500,10 >> Reist die Rampe hinauf zu |cRXP_FRIENDLY_König Magni Bronzebart|r
step
    .goto 1455/0,-1022.600,-4865.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_König Magni Bronzebart|r
    .turnin 96393 >> Gebt die Quest Eindringlinge in der Altstadt von Ironforge ab
    .turnin 98423 >> Gebt die Quest Das Abkommen des Einvernehmens ab
    .target King Magni Bronzebeard

step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eldrun Stormbreaker|r
    .target Eldrun Stormbreaker::258098
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Priest/Paladin/Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Toldren Deepiron|r << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dink|r << Mage
    .goto 1455/0,-928.48,-4614.620 << Mage
    .goto 1455/0,-912.88,-4625.99 << Priest
    .goto 1455/0,-896.55,-4601.68 << Paladin
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Toldren Deepiron << Priest
    .target Brandur Ironhammer << Paladin
    .target Dink << Mage
step << Warlock/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wilddornrose|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Fenthwick|r << Rogue
    .goto 1455/0,-1117.60,-4615.14,15,0 << Warlock
    .goto 1455/0,-1111.62,-4599.09 << Warlock
    .goto 1455/0,-1120.72,-4650.120 << Rogue
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Briarthorn << Warlock
    .target Fenthwick << Rogue
step << Warlock
    .goto 1455/0,-1134.20,-4610.39,15,0
    .goto 1455/0,-1130.26,-4601.270
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jubaal Leichenfund|r
    .vendor >> |cRXP_BUY_Kauft|r |T133738:0|t[Zauberfoliant der Opferung (Rang 1)]
    .target Jubahl Corpseseeker
    .train 20381,1
step << Warrior/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Regnus Thundergranite|r << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bilban Tosslespanner|r << Warrior
    .goto 1455/0,-1266.02,-5006.570 << Hunter
    .goto 1455/0,-1234.65,-5035.67 << Warrior
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Regnus Thundergranite << Hunter
    .target Bilban Tosslespanner << Warrior
]])


RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
#beta
<< Alliance
#group RestedXP Forever Dungeon Guide (A)
#subgroup (WIP) Dungeon Guide 1-20
--#groupid RXP-SRGCE-A1
#name 16-18 Ruinen von Lordaeron
#next 18-20 Todesminen

step
    #completewith EnterRoL
    +|cRXP_WARN_Ihr werdet jetzt Ruinen von Lordaeron betreten|r
    >>|cRXP_WARN_Alle Quests werden im Dungeon akzeptiert|r
step
    .goto 1455/0,-1152.400,-4821.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    >>|cRXP_WARN_Falls ihr die Sumpfland-Flugroute nicht habt, überspringt diesen Schritt|r
    .fly Wetlands >> Fliegt ins Sumpfland
    .target Gryth Thurden
    .zoneskip Ironforge,1

step
    .goto 1426/0,-826.400,-5027.100,30,0
    .goto 1426/0,-721.900,-5078.900,30,0
    .goto 1426/0,-426.500,-5181.000,70,0
    .goto 1426/0,-230.400,-5154.600,80,0
    .goto 1426/0,-65.000,-5115.000,100 >> |cRXP_WARN_Verlasst Eisenschmiede. Reist zu Dun Morogh -> Sumpfland Deathskip-Ort|r
    .zoneskip Wetlands
    .zoneskip Hillsbrad Foothills
    .subzoneskip 150 -- menethil
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1426,30.741,34.269,15,0
    .goto 1426,30.812,33.548,15,0
    .goto 1426,31.060,32.543,15,0
    .goto 1426,31.439,32.356,15,0
    .goto 1426,31.675,29.636,15,0
    .goto 1426,32.209,28.777,15,0
    .goto 1426,32.645,27.740,15,0
    .goto 1415,44.910,52.022,15,0
    .goto 1415,44.910,52.030
    .subzone 207 >>|cRXP_WARN_Klettert den Berg, dann lauft herunter vorbei an dem gezackten Muster bis eure Zone sich zu Sumpfland ändert|r
    .zoneskip Hillsbrad Foothills
    .subzoneskip 150 -- menethil
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1415/0,254.0285,-4708.3416,-1
    .goto 1437/0,-874.700,-3341.400,-1
    >>|cRXP_WARN_Springt vom Berg in Richtung Norden oder Nordwesten|r
    .deathskip >> Sterbt und respawnt an der Baradinbucht |cRXP_FRIENDLY_Geistheiler|r
    .target Geistheiler
    .zoneskip Hillsbrad Foothills
    .subzoneskip 150 -- menethil
    .subzoneskip 16611 -- ruins of lordaeron
step
    #completewith next
    .goto 1437/0,-839.800,-3657.900
    .subzone 150 >> Schwimmt zum Hafen von Menethil
    .zoneskip Hillsbrad Foothills
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1437/0,-782.000,-3793.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Erlernt die Flugroute nach Sumpfland
    .target Shellei Brondir
    .zoneskip Hillsbrad Foothills
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1437/0,-581.800,-3722.400
    .zone Hillsbrad Foothills >> Nehmt das Boot nach Süderstade
    .subzoneskip 16611 -- ruins of lordaeron
step
    .goto 1424/0,-512.15,-715.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Darla Harris|r
    .fp Southshore >> Erlernt die Flugroute nach Süderstade
    .target Darla Harris
    .subzoneskip 16611 -- ruins of lordaeron
step
    #label EnterRoL
    .goto 1424/0,-272.000,-381.800,100,0
    .goto 1424/0,-47.400,-249.400,100,0
    .goto 1416/0,68.400,-46.200,130,0
    .goto 1416/0,45.300,257.100,150,0
    .goto 1416/0,-54.700,812.600,100,0
    .goto 1420/0,7.600,1530.500,70,0
    .goto 1420/0,-21.800,1668.600,20,0
    .goto 1420/0,-56.600,1692.000,10,0
    .goto 1420/0,-55.200,1779.600,15,0
    .goto 1420/0,6.300,1791.500,25,0
    .goto 1420/0,4.300,1847.500,10,0
    .goto 1458/0,238.400,1872.200,20,0
    .goto 1458/0,170.700,1804.700
    .subzone 16611 >>Reist zu den Ruinen von Lordaeron in der Unterstadt. Betretet den Instanz
    >>|cRXP_WARN_Seid vorsichtig vor höherstufigen |cRXP_ENEMY_Katzen|r, |cRXP_ENEMY_Bären|r, |cRXP_ENEMY_Spinnen|r oder |cRXP_ENEMY_Murlocs|r wenn ihr hinüberlauft|r
    >>|cRXP_WARN_Sobald ihr die Unterstadt betretet, werdet ihr automatisch für PvP markiert und seid angreifbar durch die|r |cRXP_ENEMY_Horde|r

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Truman|r
    .accept 95250 >> Akzeptiert die Quest Scheußliche Kreaturen
    .target Captain Truman
step
    #sticky
    #label BaronHead
    >>Tötet |cRXP_ENEMY_Der Baron|r. Plündert ihn für |cRXP_LOOT_Kopf des Barons|r
    .complete 95250,1 -- Head of the Baron (1)
    .mob The Baron
step
    >>Plündert alle Mobs für die |T133328:0|t[|cRXP_LOOT_Blutverschmierte Insigne|r]
    .use 268535 >> |cRXP_WARN_Benutzt die|r |T133328:0|t[|cRXP_LOOT_Blutverschmierte Insigne|r] |cRXP_WARN_um die Quest zu starten|r
    .collect 268535,1,95195,1 -- Bloodied Insignia (1)  
    .accept 95195 >> Akzeptiert die Quest Blutverschmiertes Insigne
step
    #sticky
    #label BloodiedInsignia
    >>Plündert alle Mobs für ihre |cRXP_LOOT_Blutverschmiertes Insigne|r
    .complete 95195,1 -- Bloodied Insignia (10)
step
    #sticky
    #label CrestofLordaeron
    >>Plündert das |T4504543:0|t[|cRXP_LOOT_Wappen von Lordaeron|r] vom Boden oder von der Wand
    >>|cRXP_WARN_Achtet darauf. Es kann an vielen verschiedenen Orten spawnen und schwer zu sehen sein|r
    .use 268579 >> |cRXP_WARN_Benutzt das|r |T4504543:0|t[|cRXP_LOOT_Wappen von Lordaeron|r] |cRXP_WARN_um die Quest zu starten|r
    .collect 268579,1,95189,1 -- Crest of Lordaeron (1)
    .accept 95189 >> Akzeptiert die Quest Wappen von Lordaeron
step
    #sticky
    #label CrumpledPaper
    >>Klickt das |cRXP_PICK_Zerknüllte Papier|r auf dem Boden neben |cRXP_ENEMY_Rath'mael|r an
    >>|cRXP_WARN_Ihr könnt das machen, nachdem ihr ihn besiegt habt|r
    .accept 92415 >> Akzeptiert die Quest Denk daran, ich liebe dich
step
    #requires BaronHead
step
    #requires BloodiedInsignia
step
    #requires CrestofLordaeron
step
    #requires CrumpledPaper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Truman|r
    >>|cRXP_FRIENDLY_Captain Truman|r |cRXP_WARN_ist wieder am Anfang des Dungeons|r
    .turnin 95250 >> Gebt die Quest Scheußliche Kreaturen ab
    .target Captain Truman

step
    .hs >> Ruhestein nach Sturmwind
    >>|cRXP_WARN_Falls euer Ruhestein nicht in Sturmwind gesetzt ist, macht euch dorthin|r
    .zoneskip Stormwind City
step
    .isOnQuest 92415
    .goto 1453/0,744.400,-8621.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Waisenmatrone Nightingale|r
    .turnin 92415 >> Gebt die Quest Denk daran, ich liebe dich ab
    .accept 95161 >> Akzeptiert die Quest Denk daran, ich liebe dich
    .target Orphan Matron Nightingale
step
    #optional
    .isQuestTurnedIn 92415
    .goto 1453/0,744.400,-8621.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Waisenmatrone Nightingale|r
    .accept 95161 >> Akzeptiert die Quest Denk daran, ich liebe dich
    .target Orphan Matron Nightingale
step
    .goto 1453/0,634.700,-8390.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shoni die Schtille|r
    .accept 2040 >> Unterirdischer Angriff annehmen
    .target Shoni the Shilent
step
    .goto 1453/0,501.200,-8468.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .accept 167 >> Akzeptiert die Quest Oh Bruder...
    .accept 168 >> Akzeptiert Die Suche nach Andenken
    .target Wilder Thistlenettle
step
    #completewith next
    .goto 1453/0,437.600,-8524.5000,20,0
    .goto 1453/0,408.100,-8478.500,15,0
    .goto 1453/0,502.900,-8358.800,15 >> Reist zur Sturmwind-Bibliothek
step
    .isOnQuest 95189
    .goto 1453/0,531.000,-8322.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lady Dena Kennedy|r
    >>|cRXP_WARN_Sie läuft etwas in der Königlichen Gallerie herum|r
    .turnin 95189 >> Gebt die Quest Wappen von Lordaeron ab
    .target Lady Dena Kennedy
step
    .isOnQuest 95195
    .goto 1453/0,521.000,-8954.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Marcus Jonathan|r
    .turnin 95195 >> Gebt die Quest Blutverschmiertes Insigne ab
    .target General Marcus Jonathan
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Osborne the Night Man
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wu|r oder |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Wu Shen
    .target Ilsa Corbin
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Enris Brightspear|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Einris Brightspear
step << Druid
    .goto 1453/0,1347.6192,-8591.2168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Theridran|r
    .trainer >> Trainiere deine Klassenfähigkeiten
	.target Theridran
step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Geh ins geschlachtete Lamm und dann in den Keller
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ursula Deline
step << Mage
    #optional
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >> Reist zum Magierturm
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Elsharin
step << Priest/Paladin
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Lauf zur Kathedrale in Sturmwind
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Arthur der Treue|r
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brother Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Brother Joshua
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#beta
<< Alliance
#group RestedXP Forever Dungeon Guide (A)
#subgroup (WIP) Dungeon Guide 1-20
--#groupid RXP-SRGCE-A1
#name 18-20 Todesminen
#next 20-20 Rotkammgebirge

step
    #completewith next
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fly Westfall >> Fliegt nach Westfall
    .target Dungar Longdrink
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .accept 65 >> Die Bruderschaft der Defias annehmen
step
    #completewith RRDB
    .goto 1453/0,490.03,-8835.82,-1
    .goto 1436/0,1037.42,-10628.27,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dungar Longdrink|r oder |cRXP_FRIENDLY_Thor|r
    >>|cRXP_WARN_Falls ihr nicht bereits die Flugroute nach Rotkammgebirge habt, überspringt diesen Schritt|r
    .fly Redridge >> Fliegt ins Rotkammgebirge
    .target Dungar Longdrink
    .zoneskip Redridge Mountains
    .zoneskip Elwynn Forest
step
    #completewith RRDB
    .zone Redridge Mountains >> Reist ins Rotkammgebirge
step
    #label RRDB
    .goto 1433/0,-2164.56,-9213.10,8,0
    .goto 1433/0,-2145.67,-9231.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wiley der Schwarze|r oben
    .turnin 65 >> Gebt die Quest Die Bruderschaft der Defias ab
    .accept 132 >> Die Bruderschaft der Defias annehmen
	.target Wiley the Black
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shawn|r
	.target Shawn
    .goto 1433/0,-2207.10,-9351.52
    .accept 3741 >> Akzeptiert die Quest Hilarys Halskette
    .zoneskip 1433,1
step
    >>|cRXP_WARN_Springt in den See|r
    >>Öffnet |cRXP_PICK_Glitzernder Matsch|r. Plündert es für |cRXP_LOOT_Hilarys Halskette|r
    >>|cRXP_WARN_Es kann an mehreren Orten im See spawnen|r
    .goto 1433/0,-2174.32,-9386.56,0
    .goto 1433/0,-2147.41,-9308.08,0
    .goto 1433/0,-2090.96,-9373.82,0
    .goto 1433/0,-1986.76,-9324.30,0
    .goto 1433/0,-2246.40,-9359.92,0
    .goto 1433/0,-2309.57,-9376.28,0
    .goto 1433/0,-2397.70,-9363.97,0
    .goto 1433/0,-1986.76,-9324.30,70,0
    .goto 1433/0,-2397.70,-9363.97,70,0
    .complete 3741,1 --Hilary's Necklace (1)
    .zoneskip 1433,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto 1433/0,-2205.58,-9351.52
    .turnin 3741 >> Gebt die Quest Hilarys Halskette ab
    .zoneskip 1433,1
step
    #completewith next
    .goto 1433/0,-2234.900,-9435.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fly Westfall >> Fliegt nach Westfall
    .target Ariena Stormfeather
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 132 >> Gebt die Quest Die Bruderschaft der Defias ab
    .accept 135 >> Die Bruderschaft der Defias annehmen
step
    #completewith SWDB
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Thor
step
    #optional
    #completewith next
    .goto 1453/0,374.11,-8762.88,20,0
    .goto 1453/0,326.66,-8818.01,20,0
    .goto 1453/0,323.43,-8817.83,10 >> Betrete das SI:7 Hauptquartier. Geh die Treppe hoch in Richtung |cRXP_FRIENDLY_Meister Mathias Shaw|r
step
    #label SWDB
    .goto 1453/0,362.28,-8815.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 135 >> Gebt die Quest Die Bruderschaft der Defias ab
    .accept 141 >> Die Bruderschaft der Defias annehmen
    .target Master Mathias Shaw
step
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>|cRXP_BUY_Kauft die folgenden Gegenstände für schnellere Abgaben in Westfall in Kürze:|r
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    >>|T132794:0|t[Fläschchen Öl]
    .collect 814,5,103,1 -- Flask of Oil (5)
    .target Auctioneer Jaxon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .goto 1453/0,490.03,-8835.82
    .fly Westfall >> Fliegt nach Westfall
    .target Dungar Longdrink
step
    .goto 1436/0,1045.29,-10508.78
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .turnin 141 >> Gebt die Quest Die Bruderschaft der Defias ab
    .accept 142 >> Die Bruderschaft der Defias annehmen
    .target Gryan Stoutmantle
step
    #optional
    #completewith next
    .goto 1436/0,1459.17,-11024.47,55 >> Reist nach Mondbruch
step
    .goto 1436/0,1459.17,-11024.47
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>Tötet den |cRXP_ENEMY_Bote der Defias|r. Plündert ihn für |cRXP_LOOT_Eine mysteriöse Nachricht|r
    >>|cRXP_WARN_Der |cRXP_ENEMY_Bote der Defias|r spawnt in Mondbruch. Er läuft entlang der Straße nördlich von Mondbruch zum Goldküstensteinbruch und zum Jangoschacht. Falls ihr ihn nicht entlang der Straße seht, wartet, bis er in Mondbruch spawnt|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .turnin 142 >> Gebt die Quest Die Bruderschaft der Defias ab
    .target Gryan Stoutmantle
step
    .goto 1436/0,1067.87,-10508.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Der Verräter der Defias|r
    >>|cRXP_WARN_Möglicherweise müsst ihr auf |cRXP_FRIENDLY_Der Verräter der Defias|r warten, falls er nicht da ist|r
    .accept 155 >> Die Bruderschaft der Defias annehmen
    .target The Defias Traitor
step
    .goto 1436/0,1527.07,-11073.23
    >>Begleitet |cRXP_FRIENDLY_Der Verräter der Defias|r zu den Todesminen
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
step
    .goto 1436/0,1045.12,-10508.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .turnin 155 >> Gebt die Quest Die Bruderschaft der Defias ab
    .accept 166 >> Die Bruderschaft der Defias annehmen
    .target Gryan Stoutmantle
step
    .goto 1436/0,1033.22,-10504.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Späherin Riell|r sie steht oben auf dem Turm
    .accept 214 >> Akzeptiert Rote Seidenkopftücher
    .target Scout Riell
step
    .goto 1436,56.454,69.982,0
    .goto 1436,56.434,74.339,0
    .goto 1436,59.384,74.184,0
    .goto 1436,60.871,74.362,0
    .goto 1436,60.902,77.640,0
    .goto 1436,63.442,77.339,0
    .goto 1436,65.203,75.286,0
    .goto 1436,63.594,72.862,0
    .goto 1436,63.825,70.125,0
    .goto 1436,42.649,71.376
    >>|cRXP_WARN_tötet Gegner |cRXP_ENEMY_Gnolls|r südlich von der Späherkuppe während ihr auf eine Todesminen-Gruppe wartet|r
    .subzone 20 >>Reist nach Mondbruch, sobald eure Gruppe voll ist
step
    .goto 1436/0,1527.42,-11072.77
    .subzone 1581 >> Betretet das Defias-Versteck mit eurer Gruppe
step
    #completewith EnterDM
    >>Tötet die |cRXP_ENEMY_Defias|r. Plündert sie für |cRXP_LOOT_Rotes Seidenkopftuch|r
    >>|cRXP_WARN_Ihr könnt dies auch in den Todesminen abschließen|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Skelettminenarbeiter|r, |cRXP_ENEMY_Untoter Dynamitexperte|r und |cRXP_ENEMY_Untoter Ausgräber|r. Plündert sie für |cRXP_LOOT_Gewerkschaftsausweis eines Minenarbeiters|r
    >>|cRXP_WARN_HINWEIS: Diese Quest gibt KEINE Bonus-XP ähnlich wie andere Dungeon-Quests, und dauert erheblich länger abzuschließen. Erwägt, diese Quest zu überspringen, falls die Gruppe von Euch zustimmt|r
    >>|cRXP_WARN_Es ist außerhalb der Instanz abzuschließen|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Tötet |cRXP_ENEMY_Großknecht Thistlenettle|r. Plündert ihn für |cRXP_LOOT_Thistlenettles Abzeichen|r
    >>|cRXP_WARN_Es ist außerhalb der Instanz abzuschließen|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Tötet |cRXP_ENEMY_Skelettminenarbeiter|r, |cRXP_ENEMY_Untoter Dynamitexperte|r und |cRXP_ENEMY_Untoter Ausgräber|r. Plündert sie für |cRXP_LOOT_Gewerkschaftsausweis eines Minenarbeiters|r
    >>|cRXP_WARN_HINWEIS: Diese Quest gibt KEINE Bonus-XP ähnlich wie andere Dungeon-Quests, und dauert erheblich länger abzuschließen. Erwägt, diese Quest zu überspringen, falls die Gruppe von Euch zustimmt|r
    >>|cRXP_WARN_Es ist außerhalb der Instanz abzuschließen|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
    #label EnterDM
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >> Betretet die Instanz Die Todesminen 
step
    #completewith DMend
    >>Tötet die |cRXP_ENEMY_Defias|r.in den Todesminen Plündert sie für |cRXP_LOOT_Rotes Seidenkopftuch|r
    .complete 214,1 -- Red Silk Bandana (10)
step
    >>Tötet |cRXP_ENEMY_Sneed|r. Plündert Ihn für |cRXP_LOOT_Gnoam Sprecklesprocket|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
    #label DMend
    >>Tötet |cRXP_ENEMY_Edwin VanCleef|r. Plündert ihn für |cRXP_LOOT_Van Cleevs Kopf|r und |T133471:0|t[|cRXP_LOOT_Ein nie abgeschickter Brief|r]
    >>|cRXP_WARN_benutze |T133471:0|t[|cRXP_LOOT_Ein nie abgeschickter Brief|r], um die Quest zu beginnen|r
    .collect 2874,1,373 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .accept 373 >> Der nie verschickte Brief annehmen
    .use 2874 -- An Unsent Letter
step
    #completewith next
    .goto 1436/0,1966.32,-11407.13,40 >> Reist zum Leuchtturm von Westfall
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kapitän Grausohn|r
    .accept 104 >> Akzeptiert die Quest Bedrohung an der Küste
    .accept 103 >> Akzeptiert die Quest Bewahrer der Flamme
    .turnin 103 >> Gebt die Quest Bewahrer der Flamme ab
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kapitän Grausohn|r
    .accept 104 >> Akzeptiert die Quest Bedrohung an der Küste
    .target Captain Grayson
step
    .goto 1436/0,1811.62,-11358.37
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Tötet |cRXP_ENEMY_Old Murk-Eye|r. Plündert ihn für seine |cRXP_LOOT_Schuppe|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kapitän Grausohn|r
    .turnin 104 >> Gebt die Quest Bedrohung an der Küste ab
    .target Captain Grayson
    .isQuestComplete 104
step
    .goto 1436/0,1707.2116,-10583.0227
    >>Klickt die |cRXP_PICK_Ausgebrannten Überreste|r auf dem Boden
    .accept 79008 >> Akzeptiert ...und diese Notiz, die Ihr gefunden habt
step
    #completewith next
    .goto 1436/0,1045.12,-10508.80,100 >> Reist zur Späherkuppe
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Gryan Starkmantel|r und |cRXP_FRIENDLY_Späherin Riell|r oben auf dem Turm
    .turnin 166 >> Gebt die Quest Die Bruderschaft der Defias ab
    .target +Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 214 >> Gebt die Quest Rote Seidenkopftücher ab
    .goto 1436/0,1033.22,-10504.83
    .target +Scout Riell
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .turnin 166 >> Gebt die Quest Die Bruderschaft der Defias ab
    .target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
step
    .isQuestComplete 214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Späherin Riell|r sie steht oben auf dem Turm
    .turnin 214 >> Gebt die Quest Rote Seidenkopftücher ab
    .goto 1436/0,1033.22,-10504.83
    .target Scout Riell

--Shaman water totem quest start
step << Shaman
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Thor
step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eldrun Stormbreaker|r
    .target Eldrun Stormbreaker::258098
    .accept 94494 >>Akzeptiert die Quest Ruf des Wassers
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Shaman
    #completewith CallofWater
    .goto 1455/0,-1152.400,-4821.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Loch Modan >> Fliegt nach Loch Modan
    .target Gryth Thurden
step << Shaman
	.isOnQuest 94494
    .goto 1432/0,-3146.000,-4837.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Norric Lochthane::258043|r
    .target Norric Lochthane::258043
    .turnin 94494 >>Gebt die Quest Ruf des Wassers ab
	.accept 94495 >>Akzeptiert die Quest Ruf des Wassers
step << Shaman
	#label CallofWater
    .goto 1432/0,-3146.000,-4837.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Norric Lochthane::258043|r
    .target Norric Lochthane::258043
    .accept 94495 >>Akzeptiert die Quest Ruf des Wassers
step << Shaman
	#optional
	.isOnQuest 468
    .goto 1432/0,-2695.500,-4678.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gebirgsjäger Rockgar::1342|r
    .target Mountaineer Rockgar::1342
    .turnin 468 >>Gebt die Quest Meldung bei Gebirgsjäger Rockgar ab
step << Shaman
    #completewith WaterTotem1
    #label DunAlgaz1
    .goto 1432/0,-2697.700,-4645.500,15,0
    .goto 1437/0,-2653.800,-4448.100,15,0
    .goto 1437/0,-2480.200,-4421.800,15,0
    .goto 1437/0,-2464.200,-4280.900,15,0
    .goto 1437/0,-2419.800,-4092.100,15,0
    .goto 1437/0,-2629.900,-4086.400,15 >> Reist durch Dun Algaz ins Sumpfland
step << Shaman
    #completewith WaterTotem1
    #requires DunAlgaz1
    .goto 1437/0,-3085.500,-4196.100,10,0
    .goto 1437/0,-3103.100,-4212.600,12,0
    .goto 1437/0,-3098.200,-4242.600,7 >> Reist die Rampe hinauf zu |cRXP_FRIENDLY_Hervdana Saegrund::258203|r in der Höhle
step << Shaman
    #label WaterTotem1
    .goto 1437/0,-3109.300,-4257.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hervdana Saegrund::258203|r
    .target Hervdana Saegrund::258203
    .turnin 94495 >>Gebt die Quest Ruf des Wassers ab
    .accept 94497 >>Akzeptiert die Quest Ruf des Wassers  
step << Shaman
    .goto 1437/0,-3069.100,-4210.100
    .use 265732 >>|cRXP_WARN_Benutzt den|r |T132825:0|t[Ungefüllten braunen Wasserschlauch] |cRXP_WARN_am Fuß des Wasserfalls|r
    .complete 94497,1 --|1/1 Full Brown Waterskin
step << Shaman
    #completewith next
    .goto 1437/0,-3085.500,-4196.100,10,0
    .goto 1437/0,-3103.100,-4212.600,12,0
    .goto 1437/0,-3098.200,-4242.600,7 >> Reist die Rampe hinauf zu |cRXP_FRIENDLY_Hervdana Saegrund::258203|r in der Höhle
step << Shaman
    .goto 1437/0,-3109.300,-4257.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hervdana Saegrund::258203|r
    .target Hervdana Saegrund::258203
    .turnin 94497 >>Gebt die Quest Ruf des Wassers ab
    .accept 94499 >>Akzeptiert die Quest Ruf des Wassers

--sham can hs to sw
--everyone else can fly sw turn in / train 20 spells

]])