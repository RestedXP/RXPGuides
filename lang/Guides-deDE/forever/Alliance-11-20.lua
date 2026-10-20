if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
#version 1
<< Alliance
#name 13-15 Westfall
#displayname 14-15 Westfall << Dwarf/Gnome
#group RestedXP Forever Dungeonführer (A)
#subgroup Speedrun Dungeonführer 1-20
--#groupid RXP-SRGCE-A1
#next 14-16 Dunkelküste
#defaultfor !NightElf !Hunter/!Dwarf !Hunter/!Human !Hunter/!Skyborne !Hunter

--Going to Darkshore if already 15

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
    .turnin 98021 >>Gebt die Quest Reise zur Späherkuppe ab << Skyborne
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
    >>|cRXP_WARN_Vermeidet die Mobs vor dem brennenden Gebäude. Sammelt die Beute von hinten, neben dem Schornstein. Benutzt den Schornstein, um die Zauber der |cRXP_ENEMY_Pillagers|r zu blocken, falls nötig|r
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
    .goto 1436/0,1004.87,-9716.87,60,0
    .goto 1436/0,1013.62,-9861.53,60,0
    .goto 1436/0,1192.12,-10175.13,60,0
    .goto 1436/0,1019.57,-10204.30,60,0
    .goto 1436/0,1013.62,-9861.53
    >>Öffnet die |cRXP_PICK_Sack Hafer|r auf dem Boden. Plündert es für eine |cRXP_LOOT_Handvoll Hafer|r
	>>|cRXP_WARN_Ihr findet sie normalerweise in der nähe von Farmzäunen oder Gebäuden|r
	.complete 151,1 --Handful of Oats (8)
step
    .goto 1436/0,1035.300,-9835.101
    .use 254545 >>|cRXP_WARN_Benutzt das|r |T236996:0|t[Set für Brunnenwasserproben] |cRXP_WARN_am Brunnen von Jansens Siedlung|r
    .complete 92742,1 --|1/1 Jansen Stead Water Sample
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
    #optional
    .goto 1436/0,1213.400,-10153.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ozwin Ironsprocket::253395|r
    .target Ozwin Ironsprocket::253395
    .accept 92909 >>Akzeptiert die Quest Die Ernter ernten
    .turnin 92909 >>Gebt die Quest Die Ernter ernten ab
    .itemcount 255007,14 -- Golem Isospring (14)
    .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
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
    .mob Harvest Watcher
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
    .mob Harvest Watcher
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
step << !Skyborne
    .hs >> Ruhestein nach Sturmwind
    .bindlocation 16509,1
    .cooldown item,6948,>2,1
    .zoneskip Stormwind City
    .zoneskip Darkshore
step
    #completewith DarkshoreBoat
    .goto 1436/0,1037.42,-10628.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Thor
    .zoneskip Stormwind City
    .zoneskip Darkshore

step
    #optional
    #label endOfTheGuide

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
step << Skyborne
    #optional
    .goto 1453/0,673.58,-8867.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Allison|r
    .home >> Setzt euren Ruhestein in Sturmwind
    .target Innkeeper Allison
    .bindlocation 16509
step << Skyborne
    #completewith next
    .goto 1453/0,562.300,-8385.300,20,0
    .goto 1453/0,522.000,-8352.101
    .subzone 2257 >>Betretet die Tiefenbahn
    .zoneskip Ironforge
step << Skyborne
    #optional
    #label TramEnd
    >>|cRXP_WARN_Nehmt die Tiefenbahn nach Eisenschmiede|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Monty|r auf der mittleren Plattform auf der Eisenschmiede-Seite der Tiefenbahn
    .accept 6661 >> Akzeptiert die Quest Tiefenbahn-Ratten-Razzia
    .target Monty
step << Skyborne
    >>|cRXP_WARN_Benutzt die|r |T133942:0|t[Rattenfänger-Flöte] |cRXP_WARN_gegen |cRXP_ENEMY_Untergrundratte|r in der Tiefenbahn|r
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
step << Skyborne
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Monty|r in der Tiefenbahn
    .turnin 6661 >> Gebt die Quest Tiefenbahn-Ratten-Razzia ab
    .target Monty
step << Skyborne
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Holt euch den Flugpunkt in Eisenschmiede
    .target Gryth Thurden
step << Skyborne Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bixi Wobblebonk|r und |cRXP_FRIENDLY_Buliwyf Stonehand|r
    >>Trainiert Wurfwaffen und 2H-Streitkolben wenn ihr das nicht schon vorher getan habt
    .train 2567 >> Erlernt Wurfwaffen
    .target +Bixi Wobblebonk
    .goto 1455/0,-1205.65,-5042.12
    .train 199 >> Erlernen 2h Streitkolben
    .goto 1455/0,-1197.27,-5041.49
    .target +Buliwyf Stonehand
step << Skyborne Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brenwyn Winterstahl|r unten
    >>|cRXP_BUY_Kauft die|r |T135425:0|t[Beißendes Wurfmesser] |cRXP_BUY_von ihr|r
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Skyborne Warrior
    #optional
    +Legt die |T135425:0|t[Beißendes Wurfmesser] |cRXP_WARN_an|r
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Skyborne
    .hs >> Ruhestein nach Sturmwind
    .bindlocation 16509,1
    .cooldown item,6948,>2,1
    .zoneskip Stormwind City
    .zoneskip Darkshore
step << !NightElf
    .goto 1453/0,596.400,-8831.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thurman Mullby|r
    >>|cRXP_BUY_Kauft ein|r |T135435:0|t[Einfaches Holz] |cRXP_BUY_und ein|r |T135237:0|t[Feuerstein und Zunder] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Das wird verwendet, um|r |T135805:0|t[Einfache Lagerfeuer] |cRXP_WARN_auf Booten oder Straßenbahnen zu erstellen, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_ohne Zeitverlust zu skillen|r
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Thurman Mullby
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !NightElf
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>|cRXP_BUY_Kauft|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_BUY_und/oder|r |T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r |cRXP_BUY_um eure|r |T133971:0|t[Kochkunst] |cRXP_BUY_später zu skillen|r
    >>|cRXP_WARN_Ihr braucht 50|r |T133971:0|t[Kochkunst]|cRXP_WARN_ für eine spätere Quest in Dunkelhain.|r
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    >>|cRXP_BUY_Kauft die folgenden Gegenstände für schnellere Abgaben bald in Westfall und Dunkelküste |r
    >>|T133972:0|t[Schreiterfleisch]
    >>|T133912:0|t[Dunkelküstenbarsch]
    >>|T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r
    >>|T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Jaxon
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !NightElf
    #ah
    #optional
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    >>|cRXP_BUY_Kauft die folgenden Gegenstände für schnellere Abgaben bald in Westfall und Dunkelküste |r
    >>|T133972:0|t[Schreiterfleisch]
    >>|T133912:0|t[Dunkelküstenbarsch]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step << NightElf Hunter
    .goto 1453/0,706.15,-8795.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Frederick Stover|r
    >>|cRXP_BUY_Kauft einen|r |T135489:0|t[Schwerer Doppelbogen] |cRXP_BUY_von ihm|r. |cRXP_BUY_Falls ihr es euch leisten könnt, kauft einen|r |T135490:0|t[Verstärkter Bogen] |cRXP_BUY_und auch einen|r |T134410:0|t[Mittlerer Köcher] |cRXP_BUY_|r
    .collect 3027,1 -- Heavy Recurve Bow (1)
    .collect 11362,1 -- Medium Quiver (1)
    .collect 3026,1 --Reinforced Bow (1)
    .disablecheckbox
    .target Frederick Stover
    .money <0.7349
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
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
    .goto 1453/0,1095.500,-8741.700
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
    #completewith train19742 << Paladin
    #completewith next << Priest
    .goto 1453/0,809.52,-8579.22,20 >> Lauf zur Kathedrale in Sturmwind
step << Human Paladin
    .isOnQuest 1780
    .goto 1453/0,845.800,-8545.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1780 >>Gebt die Quest Der Foliant der Offenbarung ab
    .target Duthorian Rall
step << Paladin
    #label train19742
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
step << Shaman -- Shaman accepts now isntead of later due to arriving back from tram, not boat like the rest
    .goto 1453/0,1193.100,-8328.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ladungsbuchhalter Philmor::268511|r
    .target Manifest Clerk Philmor::268511
    .accept 97220 >>Akzeptiert die Quest Philmors Bitte
step
    .goto 1453/0,1269.100,-8540.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gilbert Gray::267118|r
    .target Gilbert Gray::267118
    .accept 95065 >>Akzeptiert die Quest Zeit zu fischen
    .turnin 95065 >>Gebt die Quest Zeit zu fischen ab
step
    #optional
    #requires DockTravel
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Während ihr auf das Boot wartet:|r
    .cast 818 >>|cRXP_WARN_Erstellt|r |T135805:0|t[Kochfeuerstelle] |cRXP_WARN_(in eurem Berufs-Buch)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook1
    #label DarkshoreCook2
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Während ihr auf das Boot wartet:|r
    .cast 818 >>|cRXP_WARN_Erstellt ein|r |T135805:0|t[Einfaches Lagerfeuer] |cRXP_WARN_(in eurem Berufe-Buch)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook2
    #label DarkshoreCook3
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Während ihr auf das Boot wartet:|r
    .cast 818 >>|cRXP_WARN_Erstellt ein|r |T135805:0|t[Einfaches Lagerfeuer] |cRXP_WARN_(in eurem Berufe-Buch)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires DarkshoreCook3
    #label DarkshoreCook4
    #completewith DarkshoreBoat
    +|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    >>|T133971:0|t[Koche] |cRXP_WARN_die folgenden Gegenstände:|r
    >>|T133971:0|t[Kochen] |cRXP_WARN_die|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_zu|r |T133974:0|t[Geröstetes Eberfleisch]
    >>|T133971:0|t[Koche] |cRXP_WARN_das|r |T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r |cRXP_WARN_zu|r |T133974:0|t[Verkohltes Wolfsfleisch]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #requires DarkshoreCook4
    #label DarkshoreCook5
    #completewith DarkshoreBoat
    +|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    >>|T133971:0|t[Koche] |cRXP_WARN_das|r |T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r |cRXP_WARN_zu|r |T133974:0|t[Verkohltes Wolfsfleisch]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #requires DarkshoreCook5
    #label DarkshoreCook6
    #completewith DarkshoreBoat
    +|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    >>|T133971:0|t[Kochen] |cRXP_WARN_die|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_zu|r |T133974:0|t[Geröstetes Eberfleisch]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    .goto 1453/0,1330.100,-8645.400
    >>|cRXP_WARN_Levelt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_während ihr auf das Boot nach Dunkelküste wartet, falls nötig|r
    .zone Darkshore >> Nimm das Boot nach Dunkelküste
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
    #label DarkshoreBoat
    .goto 1453/0,1330.100,-8645.400
    .zone Darkshore >> Nimm das Boot nach Dunkelküste
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
#version 1
<< Alliance
#group RestedXP Forever Dungeonführer (A)
#subgroup Speedrun Dungeonführer 1-20
--#groupid RXP-SRGCE-A1
#name 14-16 Dunkelküste
#displayname 11-16 Dunkelküste/Loch Modan << NightElf
#displayname 13-16 Dunkelküste << Dwarf Hunter/Human Hunter/Skyborne Hunter
#displayname 15-16 Dunkelküste << !NightElf/!Dwarf/!Human/!Skyborne Hunter
#next 16-19 Dunkelküste


-- #displayname 11-16 Darkshore << NightElf/Dwarf Hunter !SoD
-- #displayname 15-17 Darkshore << !NightElf !Dwarf/!Hunter !SoD
-- #displayname 13-18 Darkshore << Dwarf Hunter/!NightElf sod

step << NightElf
    #label WashedA
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Akzeptiert die Quest An Land gespült
    .target Gwennyth Bly'Leggonde
step << NightElf !Druid
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laird|r
    .turnin 6342 >> Gebt die Quest Der Flug nach Auberdine ab
    .target Laird
step << Druid NightElf
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laird|r
    .turnin 6342 >> Gebt die Quest Der Flug nach Auberdine ab
    .accept 6343 >> Akzeptiert die Quest Rückkehr zu Nessa
    .target Laird
step << NightElf
    #optional
    #completewith next
    .goto 1439,36.826,44.150,5,0
    .goto 1439,36.688,43.952,8 >> Reist die Rampe hinauf zu |cRXP_FRIENDLY_Wizbang Cranktoggle|r
step << !NightElf
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .accept 963 >> Akzeptiert die Quest In ewiger Liebe
    .target Cerellean Whiteclaw
    .xp <11,1
step << !NightElf
    #optional
    #completewith next
    .goto 1439/1,525.800,6414.800,8 >> Reist die Rampe hinauf zu |cRXP_FRIENDLY_Wizbang Cranktoggle|r
step
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wizbang Cranktoggle|r oben
    .accept 983 >> Akzeptiert die Quest Dröhnkiste 827
    .target Wizbang Cranktoggle
step
    .goto 1439/1,515.55,6406.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shaussiy|r unten
    .home >> Setzt den Ruhestein von Euch in Auberdine
    .target Innkeeper Shaussiy
    .bindlocation 442
step
    #optional << NightElf
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >> Akzeptiert die Quest Höhlenpilze
    .target Barithras Moonshade
    .xp <12,1
step
    #optional << NightElf
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .accept 4811 >> Akzeptiert die Quest Der rote Kristall
    .target Sentinel Glynda Nal'Shea
    .xp <12,1
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2118 >> Akzeptiert die Quest Verseuchtes Land
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >> Akzeptiert die Quest Wie groß ist die Bedrohung?
    .target Terenthis
step
    .goto 1439/1,503.100,6402.100
    >>Klickt das |cRXP_PICK_Gesucht-Plakat|r
    .accept 98025 >>Akzeptiert die Quest GESUCHT: Jai'vhanel
step
    #ah
    #optional
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Akzeptiert die Quest Meeresfrüchte << !sod/Hunter/Druid
    .accept 1141 >> Akzeptiert die Quest Die Familie und die Angel
    .turnin 1141 >> Gebt die Quest Die Familie und die Angel ab
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
    .xp <15,1
step
    #ah
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1141 >> Akzeptiert die Quest Die Familie und die Angel
    .turnin 1141 >> Gebt die Quest Die Familie und die Angel ab
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #optional
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Akzeptiert die Quest Meeresfrüchte
    .target Gubber Blump
    .xp <15,1
step << !NightElf
    #label WashedA
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Akzeptiert die Quest An Land gespült
    .target Gwennyth Bly'Leggonde
step << !NightElf
    .goto 1439/1,561.66,6343.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Caylais Mondfeder|r
    .fp Auberdine >> Erlernt die Flugroute nach Auberdine
    .target Caylais Moonfeather



step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #optional
    #completewith RabidThistle
    #loop
    .goto 1439/1,272.54,5255.27,0
    .goto 1439/1,271.23,4902.88,0
    .goto 1439/1,438.91,5131.69,0
    .goto 1439/1,272.54,5255.27,40,0
    .goto 1439/1,271.23,4902.88,40,0
    .goto 1439/1,438.91,5131.69,40,0
    >>|cRXP_WARN_Sendet euer pet zum Angriff auf einen |cRXP_ENEMY_Distelbär|r. Sobald euer pet durch den |cRXP_ENEMY_Distelbär|r betäubt ist, gebt euer Haustier auf und beginnt es zu zähmen|r
    .train 16828 >>|cRXP_WARN_Wirkt|r |T132164:0|t[Wildtier zähmen] |cRXP_WARN_auf einen |cRXP_ENEMY_Distelbär|r um es zu zähmen|r
    .target Thistle Bear
    .train 17255,1 --skips if they also already know bite r2
step
    #optional
    #completewith FirstWashed
    .goto 1439,43.509,33.207,0
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    >>|cRXP_WARN_Seid vorsichtig, denn sie|r |T132307:0|t[Fliehen] |cRXP_WARN_unter 30% Gesundheit|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .subzoneskip 442
step
    #sticky
    #label BuzzBox1
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,37.115,52.368,60,0
    .waypoint 1439,37.130,53.663,60,0
    .waypoint 1439,36.740,55.221,60,0
    .waypoint 1439,35.655,55.872,60,0
    .waypoint 1439,35.088,55.085,60,0
    .waypoint 1439,35.275,53.464,60,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,36.280,50.071,60,0
    .waypoint 1439,36.523,48.554,60,0
    .waypoint 1439,35.977,48.408,60,0
    .waypoint 1439,35.902,47.145,60,0
    .waypoint 1439,35.759,45.455,60,0
    .waypoint 1439,36.051,44.757,60,0
    >>Tötet |cRXP_ENEMY_Zwerggezeitenkriecher|r und |cRXP_ENEMY_Junger Riffkriecher|r. Plündert sie für |cRXP_LOOT_Kriecherbein|r
    >>|cRXP_WARN_Ihr müsstet möglicherweise ins Wasser gehen, um sie zu finden|r
    >>|cRXP_WARN_Auch wenn einige dieser Quests grau sind, vervollständigt sie trotzdem, da sie Teil einer Quest-Reihe sind|r << !NightElf
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
    .isOnQuest 983
step
    .goto 1439,36.371,50.920
    >>Öffnet die |cRXP_PICK_Gestrandete Meereskreatur|r. Plündert sie für die |cRXP_LOOT_Meereskreaturknochen|r
    .complete 3524,1 --Sea Creature Bones (1)
step << Druid
    #ah
    #optional
    #completewith CliffspringEnd
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_Erhöht eure|r |T136065:0|t[Kräuterkunde] |cRXP_WARN_auf 15, um |r |T134187:0|t[Erdwurzel] |cRXP_WARN_für eine wichtige Klassenquest in kürze zu sammeln. Du kannst es hinterher wieder verlernen|r
    >>|cRXP_WARN_Falls ihr lieber 5|r |T134187:0|t[Erdwurzel] |cRXP_WARN_später aus Auktionshaus kauft, überspringt diesen Schritt|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #ssf
    #optional
    #completewith CliffspringEnd
    #label GatheringQ
    .skill herbalism,15 >>|cRXP_WARN_Erhöht eure|r |T136065:0|t[Kräuterkunde] |cRXP_WARN_auf 15, um 5|r |T134187:0|t[Erdwurzel] |cRXP_WARN_für eine wichtige Klassenquest später zu sammeln. Ihr könnt es danach wieder verlernen|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
step << Druid
    #optional
    #completewith CliffspringEnd
    #requires GatheringQ
    >>Sammelt 5 |T134187:0|t[Erdwurzel] über |cRXP_WARN_über |T136065:0|t[Kräuterkunde] und selten in |cRXP_PICK_Ramponierte Truhe|r für eine zukünftige Klassenquest|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1
step
    #completewith next
    >>|cRXP_WARN_Use|r |T134335:0|t[Tharnariuns Hoffnung] |cRXP_WARN_on a|r |cRXP_ENEMY_Rabid Distelbär|r --|cRXP_WARN_. It can be used from any range as long as you're targeting the|r |cRXP_ENEMY_Bear|r
    -->>|cRXP_WARN_==DO NOT USE THE QUEST ITEM IF THERES NO |cRXP_ENEMY_BEAR|r NEARBY==|r
    >>|cRXP_WARN_Du kannst die Falle verschwenden und die Quest damit unlösbar machen! Sollte dir das passieren, musst du zum Questgeber zurückkehren und um eine weitere Falle bitten.|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step
    #label FurlbogCamp
    .goto 1439/1,393.72,5993.24
    >>Lauft zum Rand des Furbolg-Lagers
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #sticky
    #label RabidThistle
    #loop
    .goto 1439,38.226,52.780,0
    .goto 1439,39.129,59.176,0
    .goto 1439,38.226,52.780,50,0
    .goto 1439,38.527,54.661,50,0
    .goto 1439,38.037,56.815,50,0
    .goto 1439,38.095,58.395,50,0
    .goto 1439,38.696,57.874,50,0
    .goto 1439,39.129,59.176,50,0
    >>|cRXP_WARN_Use|r |T134335:0|t[Tharnariuns Hoffnung] |cRXP_WARN_on a|r |cRXP_ENEMY_Rabid Distelbär|r --|cRXP_WARN_. It can be used from any range as long as you're targeting the bear|r
    -->>|cRXP_WARN_==DO NOT USE THE QUEST ITEM IF THERES NO BEAR NEARBY==|r
    >>|cRXP_WARN_Du kannst die Falle verschwenden und die Quest damit unlösbar machen! Sollte dir das passieren, musst du zum Questgeber zurückkehren und um eine weitere Falle bitten.|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step << NightElf
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .goto 1439,36.051,44.757,60,0
    .goto 1439,35.759,45.455,60,0
    .goto 1439,35.902,47.145,60,0
    .goto 1439,35.977,48.408,60,0
    .goto 1439,36.523,48.554,60,0
    .goto 1439,36.280,50.071,60,0
    .goto 1439,36.091,51.501,60,0
    .goto 1439,37.115,52.368,60,0
    .goto 1439,37.130,53.663,60,0
    .goto 1439,36.740,55.221,60,0
    .goto 1439,35.655,55.872,60,0
    .goto 1439,35.088,55.085,60,0
    .goto 1439,35.275,53.464,60,0
    .goto 1439,36.091,51.501,60,0
    .xp 11+7300 >> Farmt bis 7300+/8800 XP
step
    #label invisThistle
    #optional
    #requires RabidThistle
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Klickt auf die |cRXP_PICK_Dröhnkiste 827|r auf dem Boden
    .turnin 983 >> Gebt die Quest Dröhnkiste 827 ab
    .accept 1001 >> Akzeptiert die Quest Dröhnkiste 411
step
    #label FirstWashed
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Gebt die Quest An Land gespült ab
    .accept 4681 >> Akzeptiert die Quest An Land gespült
    .target Gwennyth Bly'Leggonde

step << Druid NightElf
    #optional
    #completewith Lunaclaw
    .goto 1439,43.126,45.593,15 >> Betretet die |cRXP_PICK_Mondkin Stein|r-Höhle
step << Druid NightElf
    #optional
    #completewith Lunaclaw
    .goto 1439/1,92.42,6325.98
    .cast 18974 >>|cRXP_WARN_Benutzt den|r |T132857:0|t[Mondstaub des Cenarius] |cRXP_WARN_an dem |cRXP_PICK_Mondkinstein|r in der Höhle, um |cRXP_ENEMY_Mondklaue|r am Eingang der Höhle zu beschwören|r
    .timer 4,Körper und Herz RP
    .use 15208
    .isOnQuest 6001
step << Druid NightElf
    #label Lunaclaw
    .goto 1439/1,119.27,6344.32
    >>Tötet |cRXP_ENEMY_Mondklaue|r
    .complete 6001,1 --Defeat Lunaclaw (x1)
    .use 15208
    .mob Lunaclaw
step << Druid NightElf
    #label RedCrystal
    .isOnQuest 4811
    .goto 1439,47.314,48.676
    >>Reist zum geheimnisvollen roten Kristall
    >>|cRXP_WARN_Passt auf die beiden 2er-Gruppen |cRXP_ENEMY_Tobender Moonkin|r westlich des |cRXP_PICK_Geheimnisvoller Roter Kristall|r die beiden aneinander liegenden duos werden zusammen gepullt|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step << Druid NightElf
    #optional
	#completewith next
	.cast 18960 >> Caste Teleportieren: Moonglade
	.zoneskip Moonglade
step << Druid NightElf
    #completewith next
    .goto 1450/1,-2400.33,7795.33--c:Moonglade,44.148,45.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Silva Fil'naveth|r
    .fly Teldrassil >> Fliege nach Darnassus
    .skipgossip
    .timer 153,Darnassus
    .target Silva Fil'naveth
    .zoneskip Darnassus
    .zoneskip Teldrassil
step << NightElf Druid
    .goto 1438/1,950.52,8694.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6343 >> Gebt die Quest Rückkehr zu Nessa ab
    .target Nessa Shadowsong
step << NightElf Druid
    #optional
    #completewith next
    .goto 1438/1,965.80,8780.95
    .zone Darnassus >> Nimm das Lila Portal nach Darnassus
step << Druid NightElf
    .goto 1457/1,2563.98,10179.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mathrengyl Bärenfährte|r
    .turnin 6001 >> Gebt die Quest Körper und Herz ab << NightElf
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Mathrengyl Bearwalker
    .isOnQuest 6001
step << Druid NightElf
    #completewith next
    .goto 1457/1,2636.53,9956.80
    .zone Teldrassil >> Nimm das Lila Portal nach Rut'Theran
    .zoneskip Darkshore
    .subzoneskip 702
step << Druid NightElf
    .goto 1438/1,841.10,8640.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Fliegt zur Dunkelküste
    .target Vesprystus
    .zoneskip Darkshore
step << Druid NightElf
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4811 >> Gebt die Quest Der rote Kristall ab
    .accept 4812 >> Akzeptiert die Quest Wenn das Wasser fließt
    .target Sentinel Glynda Nal'Shea
    .isOnQuest 4811
step << Druid NightElf
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .accept 4812 >> Akzeptiert die Quest Wenn das Wasser fließt
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811
step << Druid NightElf
    .isOnQuest 4812
    .goto 1439,37.767,44.001
    >>|cRXP_WARN_Benutzt die|r |T134865:0|t[Leere Wasserröhre] |cRXP_WARN_am Mondbrunnen von Auberdine|r
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
step
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Reist zu |cRXP_FRIENDLY_Cerellean Whiteclaw|r auf dem Steg
step
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .accept 963 >> Akzeptiert die Quest In ewiger Liebe
    .target Cerellean Whiteclaw
step
    #optional
    #completewith SeaT1
    .goto 1439,32.432,43.744,15 >> Reist zum Ende des Stegs, dann springt ins Wasser
step
    #optional
    #completewith washed1
    .goto 1439/1,741.52,6570.95,0
    .goto 1439/1,915.10,6333.84,0
    .goto 1439/1,778.20,6231.66,0
    >>Tötet |cRXP_ENEMY_Dunkelküstendrescher|r. Plündert sie für |cRXP_LOOT_Drescherauge|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
step
    #label SeaT1
    .goto 1439,31.841,46.304
    >>Öffnet die |cRXP_PICK_Skelettartige Meeresschildkröte|r. Plündert sie für die |cRXP_LOOT_Meeresschildkrötenüberreste|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    #optional
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Akzeptiert die Quest Meeresfrüchte
    .target Gubber Blump
    .xp <15,1
step
    #label washed1
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Gebt die Quest An Land gespült ab
    .target Gwennyth Bly'Leggonde
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >> Akzeptiert die Quest Höhlenpilze
    .target Barithras Moonshade
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .accept 4811 >> Akzeptiert die Quest Der rote Kristall
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2118 >> Gebt die Quest Verseuchtes Land ab
    .accept 2138 >> Akzeptiert die Quest Ausrottung der Infizierten
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Gebt die Quest Wie groß ist die Bedrohung? ab
    .accept 985 >> Akzeptiert die Quest Wie groß ist die Bedrohung?
    .accept 4761 >> Akzeptiert die Quest Thundris Windwirker
    .target Terenthis
step << NightElf Warrior/NightElf Rogue
    #sticky
    #label DeepOceanStart
    .goto 1439,38.107,41.165,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Akzeptiert die Quest Tiefer Ozean, weites Meer
    .target Gorbold Steelhand
    .xp <13,1
step << NightElf Warrior/NightElf Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kurdram Stonehammer|r und |cRXP_FRIENDLY_Delfrum Flintbeard|r
    .train 2575 >> Erlerne |T134708:0|t[Bergbau]
    .target +Kurdram Stonehammer
    .goto 1439/1,436.36,6542.65
    .train 2018 >> Erlerne |T136241:0|t[Schmiedekunst]
    .target +Delfrum Flintbeard
    .goto 1439/1,440.16,6545.84
    >>|cRXP_WARN_Das wird es dir ermöglichen|r |T135248:0|t[Rauer Wetzstein] |cRXP_WARN_herzustellen, welcher den Nahkampfschaden von Euch um 2 erhöht|r << Warrior/Rogue
    >>|cRXP_WARN_Falls ihr das nicht tun wollt, überspringt diesen Schritt|r
step << NightElf Warrior/NightElf Rogue
    #optional
    .goto 1439/1,443.37,6538.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elisa Steelhand|r
    >>|cRXP_BUY_Kauft eine|r |T134708:0|t[Spitzhacke] |cRXP_BUY_bei ihr|r
    .target Elisa Steelhand
    .collect 2901,1 -- Mining Pick (1)
    .train 2575,3 --Mining Trained
step << NightElf Warrior/NightElf Rogue
    #optional
    #completewith Bashal1
    .cast 2580 >> |cRXP_WARN_Benutzt die|r |T136025:0|t[Mineraliensuche]
    .usespell 2580
    .train 2575,3 --Mining Trained
step << !NightElf/!Warrior !Rogue
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Akzeptiert die Quest Tiefer Ozean, weites Meer
    .target Gorbold Steelhand
    .xp <13,1
step
    #optional
    #requires DeepOceanStart << NightElf Warrior/NightElf Rogue
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Akzeptiert die Quest Schreitereintopf
    .turnin 2178 >> Gebt die Quest Schreitereintopf ab
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step << NightElf Rogue
    .goto 1439,37.575,40.348
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Naram Longclaw|r
    .vendor 4183 >>|cRXP_BUY_Kauft ein|r |T135640:0|t[Jambiya] |cRXP_BUY_von ihm, wenn ihr es euch es leisten könnt|r
    .collect 2207,1 -- Jambiya (1)
    .disablecheckbox
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.10
--  .money <0.2390
    .target Naram Longclaw
step
    #optional
    #completewith next
    .goto 1439/1,488.69,6564.830
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dalmond|r innerhalb
    .vendor 4182 >> |cRXP_BUY_Kauft so viele|r |T133634:0|t[Kleiner brauner Beutel] |cRXP_BUY_oder|r |T133634:0|t[Brauner Lederranzen] |cRXP_BUY_wie ihr von ihm braucht|r
    >>|cRXP_BUY_Kauft|r |T132382:0|t[Scharfe Pfeile] |cRXP_BUY_oder|r |T132384:0|t[Schwere Geschosse] |cRXP_BUY_von ihm, bis euer Köcher/Munitionsbeutel voll ist|r << Hunter
    .target Dalmond
step
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 4761 >> Gebt die Quest Thundris Windwirker ab
    .accept 4762 >> Akzeptiert die Quest Der Cliffspring
    .accept 954 >> Akzeptiert die Quest Bashal'Aran
    .accept 958 >> Akzeptiert die Quest Werkzeuge der Hochgeborenen << !sod
    .target Thundris Windweaver
    .xp >16,1
--XX if 16+, skip Tools
step
    #optional
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 4761 >> Gebt die Quest Thundris Windwirker ab
    .accept 4762 >> Akzeptiert die Quest Der Cliffspring
    .accept 954 >> Akzeptiert die Quest Bashal'Aran
    .target Thundris Windweaver
    .xp >18,1
--XX if 18+, skip Bashal
step
    #optional
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 4761 >> Gebt die Quest Thundris Windwirker ab
    .accept 4762 >> Akzeptiert die Quest Der Cliffspring

----Start of NE >1.49x catchup (everyone 1x) Early boat section----


step
    #completewith MistVeil
    .goto 1439/1,620.35,6768.76,0
    .goto 1439/1,602.66,6924.21,0
    .goto 1439/1,537.82,7023.33,0
    .goto 1439/1,404.85,7099.75,0
    .goto 1439/1,310.53,7077.48,0
    .goto 1439/1,620.35,6768.76,55,0
    .goto 1439/1,602.66,6924.21,55,0
    >>Tötet |cRXP_ENEMY_Dunkelküstendrescher|r. Plündert sie für |cRXP_LOOT_Drescherauge|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
    .isOnQuest 982
step
    #optional
    #completewith next
    +|cRXP_WARN_Drückt Escape, dann geht in -> Optionen -> Steuerung|r
    >>|cRXP_WARN_Überprüft "Aktiviere Interaktionstaste" und bindet die "Interagieren mit Ziel" Option auf eine Taste|r
step
    .goto 1439,38.213,28.754
--  .goto 1439,38.234,28.796
    >>|cRXP_WARN_==BEACHTET EURE ATEMLEISTE==|r
    >>|cRXP_WARN_Schwimmt unter Wasser zur Außenseite der Bootsrückseite|r
    >>|cRXP_WARN_Drückt euren "Interagieren mit Ziel"-Hotkey am Ort mit dem Pfeil, um die |cRXP_LOOT_Schließkassette der SILBERMORGEN|r von außerhalb des Bootes zu plündern|r
    >>|cRXP_WARN_Falls ihr das nicht wollt, schwimmt unter Wasser zum unteren Deck des Bootes, dann plündert die |cRXP_LOOT_Schließkassette der SILBERMORGEN|r im Inneren|r
    .complete 982,1 --Silver Dawning's Lockbox (1)
    .isOnQuest 982
step
    #label MistVeil
    .goto 1439,39.581,27.487
--  .goto 1439,39.629,27.462
    >>|cRXP_WARN_==BEACHTET EURE ATEMLEISTE==|r
    >>|cRXP_WARN_Schwimmt unter Wasser zur Außenseite der Bootsrückseite|r
    >>|cRXP_WARN_Am Ort des Pfeils drückt eure Mit Ziel interagieren keybind, um die |cRXP_LOOT_Schließkassette der NEBELSCHLEIER|r von außen zu plündern|r
    >>|cRXP_WARN_Falls ihr das nicht tun möchtet, schwimmt unter Wasser in den unteren Teil des Bootes und plündert dann die |cRXP_LOOT_Schließkassette der NEBELSCHLEIER|r von innen|r
    .complete 982,2 --Mist Veil Lockbox (1)
    .isOnQuest 982
step
    #loop
    .goto 1439/1,310.53,7077.48,0
    .goto 1439/1,404.85,7099.75,0
    .goto 1439/1,537.82,7023.33,0
    .goto 1439/1,310.53,7077.48,55,0
    .goto 1439/1,404.85,7099.75,55,0
    .goto 1439/1,537.82,7023.33,55,0
    .goto 1439/1,602.66,6924.21,55,0
    .goto 1439/1,620.35,6768.76,55,0
    .goto 1439/1,602.66,6924.21,55,0
    .goto 1439/1,620.35,6768.76,55,0
    >>Tötet |cRXP_ENEMY_Dunkelküstendrescher|r. Plündert sie für |cRXP_LOOT_Drescherauge|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
    .isOnQuest 1001
step
    #optional
    .goto 1439,41.901,31.339
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4723 >> Akzeptiert die Quest Gestrandete Meereskreatur
    .isOnQuest 1001
step
    #optional
    .goto 1439,41.901,31.339
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4723 >> Akzeptiert die Quest Gestrandete Meereskreatur
    .isOnQuest 982
step
    .goto 1439,41.960,28.616
    >>Klickt auf die |cRXP_PICK_Dröhnkiste 411|r auf dem Boden
    .turnin 1001 >> Gebt die Quest Dröhnkiste 411 ab
    .accept 1002 >> Akzeptiert die Quest Dröhnkiste 323
    .isQuestComplete 1001
step
    #optional
    .goto 1439,41.960,28.616
    >>Klickt auf die |cRXP_PICK_Dröhnkiste 411|r auf dem Boden
    .accept 1002 >> Akzeptiert die Quest Dröhnkiste 323
    .isQuestTurnedIn 1001
step
    #optional
    #completewith AsterionTravel
    .goto 1439,44.190,33.697,0
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r. Plündert sie für ihren |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isQuestTurnedIn 1001


----End of NE >1.49x catchup (everyone 1x) Early boat section----


 step
    #optional
    #completewith AsterionTravel
    .goto 1439,43.509,33.207,0
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    >>|cRXP_WARN_Seid vorsichtig, denn sie|r |T132307:0|t[Fliehen] |cRXP_WARN_unter 30% Gesundheit|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #optional
    #label AsterionTravel
    #completewith Bashal1
    .goto 1439,44.629,36.316,20,0
    .goto 1439,44.168,36.289,15 >> Reist in Richtung |cRXP_FRIENDLY_Asterion|r
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Vermeidet |cRXP_ENEMY_Wilder Grell|r und |cRXP_ENEMY_Übler Grimmling|r auf dem weg zu töten|r
    .turnin 954 >> Gebt die Quest Bashal'Aran ab
    .accept 955 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
    .isOnQuest 954
    .xp >16,1
--XX skip Bashal Aran qline if 16+
step
    #optional
    #label Bashal1
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Vermeidet |cRXP_ENEMY_Wilder Grell|r und |cRXP_ENEMY_Übler Grimmling|r auf dem weg zu töten|r
    .turnin 954 >> Gebt die Quest Bashal'Aran ab
    .target Asterion
    .isOnQuest 954
--XX Turn in Breadcrumb if you picked it up earlier before 18
step
    #loop
    .goto 1439,44.528,36.587,0
    .goto 1439,45.334,39.393,0
    .goto 1439,46.096,36.541,0
    .goto 1439,44.528,36.587,50,0
    .goto 1439,44.435,37.404,50,0
    .goto 1439,44.443,38.202,50,0
    .goto 1439,44.493,39.008,50,0
    .goto 1439,44.821,39.711,50,0
    .goto 1439,45.334,39.393,50,0
    .goto 1439,45.167,38.652,50,0
    .goto 1439,45.091,37.865,50,0
    .goto 1439,45.495,37.019,50,0
    .goto 1439,45.831,36.790,50,0
    .goto 1439,46.096,36.541,50,0
    .goto 1439,46.906,36.171,50,0
    .goto 1439,47.431,36.151,50,0
    .goto 1439,47.022,37.083,50,0
    .goto 1439,47.166,37.580,50,0
    .goto 1439,45.827,36.812,50,0
    >>Tötet |cRXP_ENEMY_Wilde Grells|r und |cRXP_ENEMY_Übler Grimmling|r. Plündert sie für |cRXP_LOOT_Grell-Ohrring|r
    >>|cRXP_WARN_Vermeidet es die |cRXP_ENEMY_Satyr der Deth'ryll|r vorerst zu töten|r
    .complete 955,1 --Grell Earring (8)
    .mob Wild Grell
    .mob Vile Sprite
    .isOnQuest 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Gebt die Quest Bashal'Aran ab
    .accept 956 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
    .isQuestComplete 955
step
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    .accept 956 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 955
step
    #completewith MeatFangEgg1
    #optional
    .abandon 955 >> Brecht die Quest Bashal'Aran ab
    .isQuestAvailable 955
step
    #loop
    .goto 1439,45.393,36.472,0
    .goto 1439,45.429,39.773,0
    .goto 1439,47.368,36.774,0
    .goto 1439,45.393,36.472,45,0
    .goto 1439,45.938,37.800,45,0
    .goto 1439,45.938,38.040,45,0
    .goto 1439,46.531,39.134,45,0
    .goto 1439,45.429,39.773,45,0
    .goto 1439,47.262,37.674,45,0
    .goto 1439,47.920,37.228,45,0
    .goto 1439,47.368,36.774,45,0
    >>Tötet |cRXP_ENEMY_Satyr der Deth'ryll|r. Plündert sie für |cRXP_LOOT_Altes Mondstein-Siegel|r
    >>|cRXP_WARN_Beachte, das sie keinen dynamischen Respawn haben|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
    .isQuestTurnedIn 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Gebt die Quest Bashal'Aran ab
    .accept 957 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
    .isQuestComplete 956
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    .accept 957 >> Akzeptiert die Quest Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 956
step << NightElf/Dwarf/Human Hunter
    #optional
    .goto 1439,44.528,36.587,0
    .goto 1439,45.334,39.393,0
    .goto 1439,46.096,36.541,0
    .goto 1439,44.528,36.587,50,0
    .goto 1439,44.435,37.404,50,0
    .goto 1439,44.443,38.202,50,0
    .goto 1439,44.493,39.008,50,0
    .goto 1439,44.821,39.711,50,0
    .goto 1439,45.334,39.393,50,0
    .goto 1439,45.167,38.652,50,0
    .goto 1439,45.091,37.865,50,0
    .goto 1439,45.495,37.019,50,0
    .goto 1439,45.831,36.790,50,0
    .goto 1439,46.096,36.541,50,0
    .goto 1439,46.906,36.171,50,0
    .goto 1439,47.431,36.151,50,0
    .goto 1439,47.022,37.083,50,0
    .goto 1439,47.166,37.580,50,0
    .goto 1439,45.827,36.812,50,0
    .xp 13 >> Farmt bis Stufe 13
step
    #optional
    #completewith AuberdineTurnin2 << NightElf/Hunter/Druid/Warrior
    #completewith AmethStart << !NightElf !Hunter !Druid !Warrior
    .goto 1439,43.509,33.207,0
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    >>|cRXP_WARN_Seid vorsichtig, denn sie|r |T132307:0|t[Fliehen] |cRXP_WARN_unter 30% Gesundheit|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .subzoneskip 442
step
    #optional
    #completewith AuberdineTurnin2 << NightElf/Hunter/Druid/Warrior
    #completewith EndFirstMoonstalker << !NightElf !Hunter !Druid !Warrior
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r. Plündert sie für ihren |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isQuestTurnedIn 1001
step
    #completewith RedCrystal
    >>Tötet |cRXP_ENEMY_Moonkin|r. Plündert sie für |T132832:0|t|cRXP_LOOT_[Kleines Ei]|r
    >>|cRXP_WARN_Dies wird verwendet, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_später auf 10 zu verbessern|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #completewith RedCrystal << !NightElf !Hunter !Druid !Warrior
    #completewith AuberdineTurnin2 << NightElf/Hunter/Druid/Warrior
    >>Tötet |cRXP_ENEMY_Moonkin|r. Plündert sie für |T132832:0|t|cRXP_LOOT_[Kleines Ei]|r
    >>|cRXP_WARN_Dies wird verwendet, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_später auf 50 zu erhöhen|r
    >>|cRXP_WARN_Macht euch keinen Stress die Eier jetzt zu farmen. Denkt einfach daran, die Eier zu behalten und überlegt, wie viele Fertigkeitspunkte ihr noch benötigt, um Kochen 50 zu erreichen|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,<10,1 --XX Shows if cooking skill is 10-50
    .skill cooking,50,1
step
    #label RedCrystal
    .goto 1439,47.314,48.676
    >>Reist zum geheimnisvollen roten Kristall
    >>|cRXP_WARN_Passt auf die beiden 2er-Gruppen |cRXP_ENEMY_Tobender Moonkin|r westlich des |cRXP_PICK_Geheimnisvoller Roter Kristall|r die beiden aneinander liegenden duos werden zusammen gepullt|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range

----Start of Early Red Crystal turnin Section (NE below 14 for xp, Hunters/Druids for staff wep upgrade)/Druid bear q final if not done earlier----


step << NightElf/Hunter/Warrior/Druid
    #optional
    #completewith Cascade
    .hs >> Ruhestein nach Auberdine
    .cooldown item,6948,>0,1
    .subzoneskip 442
    .isQuestTurnedIn 6001 << Druid
step << NightElf/Hunter/Druid/Warrior
    #optional
    #label AuberdineTurnin2
    #completewith Cascade
    .goto 1439,37.703,43.393
    .subzone 442 >> Kehrt nach Auberdine zurück
    .cooldown item,6948,<0,1 << !Druid
step << NightElf/Hunter/Druid/Warrior
    #optional
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4811 >> Gebt die Quest Der rote Kristall ab
    .accept 4812 >> Akzeptiert die Quest Wenn das Wasser fließt
    .target Sentinel Glynda Nal'Shea
    .xp >14,1 << Hunter/Druid
--XX If Night Elves, Hunters, or Druids are lower than level 14, do questline
step << Hunter/Druid/Warrior
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4811 >> Gebt die Quest Der rote Kristall ab
    .accept 4812 >> Akzeptiert die Quest Wenn das Wasser fließt
    .target Sentinel Glynda Nal'Shea
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.5 << Hunter/Druid
--XX If Hunters and Druids (in Era) have a worse weapon than the Oakthrush Staff, do the quest even if 14+
step << NightElf/Hunter/Druid/Warrior !Hunter
    #optional
    #label Cascade
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .accept 4812 >> Akzeptiert die Quest Wenn das Wasser fließt
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811 --show step if Red Crystal turned in
step << NightElf/Hunter/Druid/Warrior
    #optional
    .goto 1439,37.767,44.001
    >>|cRXP_WARN_Benutzt die|r |T134865:0|t[Leere Wasserröhre] |cRXP_WARN_am Mondbrunnen von Auberdine|r
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith EndFirstMoonstalker
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    >>|cRXP_WARN_Seid vorsichtig, denn sie|r |T132307:0|t[Fliehen] |cRXP_WARN_unter 30% Gesundheit|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith EarlyCrystalEnd
    >>Tötet |cRXP_ENEMY_Moonkin|r. Plündert sie für |T132832:0|t|cRXP_LOOT_[Kleines Ei]|r
    >>|cRXP_WARN_Dies wird verwendet, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_später auf 10 zu verbessern|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith EarlyCrystalEnd
    >>Tötet |cRXP_ENEMY_Moonkin|r. Plündert sie für |T132832:0|t|cRXP_LOOT_[Kleines Ei]|r
    >>|cRXP_WARN_Dies wird verwendet, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_später auf 50 zu erhöhen|r
    >>|cRXP_WARN_Macht euch keinen Stress die Eier jetzt zu farmen. Denkt einfach daran, die Eier zu behalten und überlegt, wie viele Fertigkeitspunkte ihr noch benötigt, um Kochen 50 zu erreichen|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,<10,1 --XX Shows if cooking skill is 10-50
    .skill cooking,50,1
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #completewith EndFirstMoonstalker
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r. Plündert sie für ihren |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    .goto 1439,47.314,48.676
    #label EarlyCrystalEnd
    >>Klickt den |cRXP_PICK_Geheimnisvoller roter Kristall|r
    >>|cRXP_WARN_Passt auf die beiden 2er-Gruppen |cRXP_ENEMY_Tobender Moonkin|r westlich des |cRXP_PICK_Geheimnisvoller Roter Kristall|r die beiden aneinander liegenden duos werden zusammen gepullt|r
    .turnin 4812 >> Gebt die Quest Wenn das Wasser fließt ab
    .accept 4813 >> Akzeptiert die Quest Die Fragmente im Inneren
    .isQuestTurnedIn 4811
step << NightElf/Hunter/Druid/Warrior
    #optional
    #loop
    .goto 1439,46.918,48.630,0
    .goto 1439,45.338,54.337,0
    .goto 1439,45.108,49.184,0
    .goto 1439,45.322,44.756,0
    .goto 1439,46.918,48.630,60,0
    .goto 1439,46.233,49.578,60,0
    .goto 1439,46.110,50.828,60,0
    .goto 1439,45.766,51.560,60,0
    .goto 1439,45.652,52.729,60,0
    .goto 1439,45.338,54.337,60,0
    .goto 1439,44.817,53.601,60,0
    .goto 1439,44.398,52.137,60,0
    .goto 1439,44.424,50.766,60,0
    .goto 1439,45.090,50.415,60,0
    .goto 1439,45.108,49.184,60,0
    .goto 1439,44.578,48.547,60,0
    .goto 1439,44.311,47.903,60,0
    .goto 1439,43.577,46.772,60,0
    .goto 1439,42.237,46.108,60,0
    .goto 1439,42.715,45.372,60,0
    .goto 1439,43.101,44.400,60,0
    .goto 1439,45.322,44.756,60,0
    >>Tötet |cRXP_ENEMY_Moonkin|r. Plündert sie für |T132832:0|t|cRXP_LOOT_[Kleines Ei]|r
    >>|cRXP_WARN_Dies wird verwendet, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_später auf 10 zu verbessern|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
    .isQuestTurnedIn 4811
step << NightElf !Hunter/Warrior/Druid
    #optional
    #completewith EndFirstMoonstalker
    .hs >> Ruhestein nach Auberdine
    .cooldown item,6948,>0,1
    .subzoneskip 442
    .isQuestTurnedIn 6001 << Druid
    .isQuestTurnedIn 4811
step << NightElf !Hunter/Druid/Warrior
    #optional
    #completewith next
    .goto 1439,37.703,43.393
    .subzone 442 >> Kehrt nach Auberdine zurück
    .cooldown item,6948,<0,1 << !Druid
    .isQuestTurnedIn 4811
step << NightElf !Hunter/Druid/Warrior
    .goto 1439/1,472.32,6438.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4813,3 >> Gebt die Quest Die Fragmente im Inneren ab
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811
step << NightElf !Hunter/Druid/Warrior
    .goto 1439/1,472.32,6438.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4813,3 >> Gebt die Quest Die Fragmente im Inneren ab
    .target Sentinel Glynda Nal'Shea
    .isQuestTurnedIn 4811
step << Druid/Warrior
    #optional
    #completewith AmethStart
    +|cRXP_WARN_Legt den|r |T135145:0|t[Eichendrosselstab] an
    .use 15397
    .itemcount 15397,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .isQuestTurnedIn 4811
    --reduced DPS now on staff due to it becoming a caster weapon
step << NightElf !Hunter/Druid/Warrior
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >> Gebt die Quest Tiefer Ozean, weites Meer ab
    .target Gorbold Steelhand
    .isQuestComplete 982
----Start of forced Level 14 Druid Turnin/train----
--Removed in wowF

----End of forced Level 14 Druid Turnin/train----
----End of Early Red Crystal turnin Section (NE for xp, Hunters/Druids for staff)/Druid bear q final if not done earlier----


step << Druid
    #optional
    #completewith AmethStart
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    >>|cRXP_WARN_Seid vorsichtig, denn sie|r |T132307:0|t[Fliehen] |cRXP_WARN_unter 30% Gesundheit|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .subzoneskip 447


----Start of alternate section if early Red Crystal turnin----

step << NightElf !Hunter/Druid/Warrior
    #optional
    #loop
    #label EarlyBlackwood
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>Tötet |cRXP_ENEMY_Pfadfinder der Schwarzfelle|r und |cRXP_ENEMY_Windsprecher der Schwarzfelle|r
    .complete 985,1 -- Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker (5)
    .mob +Blackwood Windtalker
    .isQuestTurnedIn 4811
step << NightElf !Hunter/Druid/Warrior
    #optional
    #completewith Anaya
    >>Tötet |cRXP_ENEMY_Tollwütiger Distelbär|r
    >>|cRXP_WARN_Passt auf, sie wirken|r |T135914:0|t[Tollwut] |cRXP_WARN_wenn ihr sie nicht schnell genug tötet (Sofort Nahkampf: Verringert ALLE Gesundheitsregeneration um 50% für 10 Minuten)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
    .isQuestTurnedIn 4811
    .subzoneskip 447
step << NightElf !Hunter/Druid/Warrior
    #optional
    #label EarlyTurtleStart
    .goto 1439,37.105,62.167
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4722 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
    .isQuestTurnedIn 4811
step
    #optional
    #label EarlyAmethStart
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Tysha Moonblade|r
    .accept 953 >> Akzeptiert die Quest Der Untergang von Ameth'Aran
    .target Sentinel Tysha Moonblade
    .isQuestTurnedIn 4811
    .xp >17,1


step
    #label EndFirstMoonstalker

----End of alternate section if early Red Crystal turnin----

----Start of small south loop for ERA and SoD Warrior/Rogue/Priest----

step
    #optional
    #completewith AmethStart
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r und |cRXP_ENEMY_Mondpircher|r. Plündert sie für |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isQuestTurnedIn 1001
    .isQuestAvailable 4811
step << !NightElf !Druid !Warrior
    #loop
    .goto 1439,46.918,48.630,0
    .goto 1439,45.338,54.337,0
    .goto 1439,45.108,49.184,0
    .goto 1439,45.322,44.756,0
    .goto 1439,46.918,48.630,60,0
    .goto 1439,46.233,49.578,60,0
    .goto 1439,46.110,50.828,60,0
    .goto 1439,45.766,51.560,60,0
    .goto 1439,45.652,52.729,60,0
    .goto 1439,45.338,54.337,60,0
    .goto 1439,44.817,53.601,60,0
    .goto 1439,44.398,52.137,60,0
    .goto 1439,44.424,50.766,60,0
    .goto 1439,45.090,50.415,60,0
    .goto 1439,45.108,49.184,60,0
    .goto 1439,44.578,48.547,60,0
    .goto 1439,44.311,47.903,60,0
    .goto 1439,43.577,46.772,60,0
    .goto 1439,42.237,46.108,60,0
    .goto 1439,42.715,45.372,60,0
    .goto 1439,43.101,44.400,60,0
    .goto 1439,45.322,44.756,60,0
    >>Tötet |cRXP_ENEMY_Moonkin|r. Plündert sie für |T132832:0|t|cRXP_LOOT_[Kleines Ei]|r
    >>|cRXP_WARN_Dies wird verwendet, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_später auf 10 zu verbessern|r
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #sticky
    #label Anaya
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>Tötet |cRXP_ENEMY_Anaya Dawnrunner|r. Plündert sie für ihren |cRXP_LOOT_Anhänger|r
    -->>|cRXP_WARN_Be aware that she has a 7-8 minute spawn time and 4 different spawnpoints across Ameth'Aran|r
    -->>|cRXP_WARN_You may want to group with others nearby if you can't find her. Ask in General Chat (/1) to group with anyone else that is also looking for her|r
    -->>|cRXP_WARN_If you can't find her and want to try again later at the cost of potentially grinding more mobs soon, skip this step|r
    --much faster spawn time now on forever
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #sticky
    #label Relics
    .goto 1439,42.670,57.390,0
    .goto 1439,41.986,62.462,0
    .goto 1439,44.072,60.507,0
    .waypoint 1439,42.670,57.390,55,0
    .waypoint 1439,41.708,57.888,55,0
    .waypoint 1439,41.597,59.765,55,0
    .waypoint 1439,42.058,61.199,55,0
    .waypoint 1439,41.986,62.462,55,0
    .waypoint 1439,42.773,63.420,55,0
    .waypoint 1439,43.253,63.287,55,0
    .waypoint 1439,43.945,62.188,55,0
    .waypoint 1439,44.072,60.507,55,0
    .waypoint 1439,43.410,59.784,55,0
    .waypoint 1439,43.787,58.959,55,0
    >>Tötet |cRXP_ENEMY_Verfluchte Hochgeborene|r, |cRXP_ENEMY_Zuckender Hochgeborener|r und |cRXP_ENEMY_Klagende Hochgeborene|r. Plündert sie für ihre |cRXP_LOOT_Relikte|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
    .isOnQuest 958
step
    #label AmethStart
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Tysha Moonblade|r
    .accept 953 >> Akzeptiert die Quest Der Untergang von Ameth'Aran
    .target Sentinel Tysha Moonblade
    .isQuestAvailable 4811
    .xp >17,1
step
    .goto 1439,42.652,63.145
    >>Klickt |cRXP_PICK_Der Untergang von Ameth'Aran|r
    .complete 953,2 --Read The Fall of Ameth'Aran (1)
    .isOnQuest 953
step << !sod/Warrior/Rogue/Priest
    .goto 1439,42.373,61.815
    >>Klickt die |cRXP_PICK_Uralte Flamme|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
    .isOnQuest 957
step
    #label TheLay
    .goto 1439/1,105.52,5770.100
    >>Klickt |cRXP_PICK_Die Lage von Ameth’Aran|r
    .complete 953,1 --Read The Lay of Ameth'Aran (1)
    .isOnQuest 953
step
    .isOnQuest 98025
    .waypoint 1439/1,-18.100,5779.800
    >>Tötet |cRXP_ENEMY_Jai'vhanel|r. Plündert es für |cRXP_LOOT_Feder von Jai'vhanel|r
    .complete 98025,1 --|1/1 Feather of Jai'vhanel
    .mob Jai'vhanel
step
    #optional
    #requires Relics
--XXREQ Placeholder invis step until multiple requires per step
step
    #optional
    #requires Anaya
--XXREQ Placeholder invis step until multiple requires per step
step
    .isQuestComplete 953
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Tysha Moonblade|r
    .turnin 953 >> Gebt die Quest Der Untergang von Ameth'Aran ab
    .target Sentinel Tysha Moonblade
step << !sod/Warrior/Rogue
    #optional
    #completewith FurbolgGrind
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    >>|cRXP_WARN_Seid vorsichtig, denn sie|r |T132307:0|t[Fliehen] |cRXP_WARN_unter 30% Gesundheit|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #optional
    #completewith FurbolgGrind
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r und |cRXP_ENEMY_Mondpircher|r. Plündert sie für |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #completewith FurbolgGrind
    >>Tötet |cRXP_ENEMY_Tollwütiger Distelbär|r
    >>|cRXP_WARN_Passt auf, sie wirken|r |T135914:0|t[Tollwut] |cRXP_WARN_wenn ihr sie nicht schnell genug tötet (Sofort Nahkampf: Verringert ALLE Gesundheitsregeneration um 50% für 10 Minuten)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #label LateTurtleStart
    .goto 1439,37.105,62.167
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4722 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    #loop
    #label FurbolgGrind
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>Tötet |cRXP_ENEMY_Pfadfinder der Schwarzfelle|r und |cRXP_ENEMY_Windsprecher der Schwarzfelle|r
    .complete 985,1 -- Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker (5)
    .mob +Blackwood Windtalker
step
    #optional
    #completewith FurbolgGrindEnd
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    >>|cRXP_WARN_Seid vorsichtig, denn sie|r |T132307:0|t[Fliehen] |cRXP_WARN_unter 30% Gesundheit|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .isQuestAvailable 2178
step
    #optional
    #completewith FurbolgGrindEnd
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r. Plündert sie für ihren |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .isOnQuest 1002
step
    #label FurbolgGrindEnd
    #completewith TOTH
    #optional
    .goto 1439,36.701,45.122
    .subzone 442 >> Kehrt nach Auberdine zurück
    .isOnQuest 4722
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .turnin 4723 >> Gebt die Quest Gestrandete Meereskreatur ab
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4723
step
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Akzeptiert die Quest Meeresfrüchte
    .target Gubber Blump
    .xp <15,1
step << !NightElf
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Kehrt zum |cRXP_FRIENDLY_Cerellean Whiteclaw|r auf dem Dock zurück
step << !NightElf
    #optional
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .turnin 963 >> Gebt die Quest In ewiger Liebe ab
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step
    .isOnQuest 98025
    .goto 1439/1,472.900,6439.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea::2930|r
    .target Sentinel Glynda Nal'Shea::2930
    .turnin 98025 >>Gebt die Quest Gesucht: Jai'vhanel ab
    .turnin 4813,3 >> Gebt die Quest Die Fragmente im Inneren ab << NightElf Hunter
step << NightElf Hunter
    #optional
    .goto 1439/1,472.900,6439.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea::2930|r
    .target Sentinel Glynda Nal'Shea::2930
    .turnin 4813,3 >> Gebt die Quest Die Fragmente im Inneren ab
step << NightElf Hunter
    #optional
    #completewith AmethStart
    +|cRXP_WARN_Legt den|r |T135145:0|t[Eichendrosselstab] an
    .use 15397
    .itemcount 15397,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .isQuestTurnedIn 4811
    --reduced DPS now on staff due to it becoming a caster weapon
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4811 >> Gebt die Quest Der rote Kristall ab
    .accept 4812 >> Akzeptiert die Quest Wenn das Wasser fließt
    .target Sentinel Glynda Nal'Shea
    .isOnQuest 4811
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4812 >> Gebt die Quest Wenn das Wasser fließt ab
    .target Sentinel Glynda Nal'Shea
    .isQuestComplete 4812
step
    .goto 1439,37.767,44.001
    >>|cRXP_WARN_Benutzt die|r |T134865:0|t[Leere Wasserröhre] |cRXP_WARN_am Mondbrunnen von Auberdine|r
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
step
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Gebt die Quest Ausrottung der Infizierten ab
    .accept 2139 >> Akzeptiert die Quest Tharnariuns Hoffnung
    .target Tharnariun Treetender
    .isQuestComplete 2138
step
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2139 >> Akzeptiert die Quest Tharnariuns Hoffnung
    .target Tharnariun Treetender
    .isQuestTurnedIn 2138
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >> Gebt die Quest Wie groß ist die Bedrohung? ab
    .accept 986 >> Akzeptiert die Quest Ein verirrter Meister << !sod
    .target Terenthis
step
    #optional
    #completewith next
    .goto 1439,39.280,43.121,6,0
    .goto 1439,39.162,43.194,6 >> Geh nach oben
step
    .goto 1439,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Elissa Starbreeze|r oben
    .accept 965 >> Der Turm von Althalaxx annehmen
    .target Sentinel Elissa Starbreeze
step
    #optional
    #completewith Level10CookEnd
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    .vendor 6301 >>|cRXP_BUY_Kauft|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_von ihm, bis ihr genauso viele|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_ oder mehr wie|r |T132832:0|t[Kleine Eier] |cRXP_BUY_die ihr derzeit habt|r
    .collect 2678,50,90,1,0x20,cooking --Mild Spices (1-50)
    .disablecheckbox
    .collect 6889,50,90,1,0x20,cooking --Small Egg (1-50)
    .disablecheckbox
    .target Gorbold Steelhand
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .itemcount 6889,1 -- Small Egg (1+)
step << NightElf
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    .vendor >>|cRXP_BUY_Kauft ein|r [Glänzendes Schmuckstück] |cRXP_BUY_und drei|r |T134324:0|t[Nachtkriecher] |cRXP_BUY_von ihm. Ihr werdet sie bald für eine Quest in Sturmwind benötigen|r
    .collect 6529,1 --Shiny Bauble (1)
    .collect 6530,3 --Nightcrawlers (3)
    .target Gorbold Steelhand
step
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Akzeptiert die Quest Tiefer Ozean, weites Meer
    .target Gorbold Steelhand
step
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >> Gebt die Quest Tiefer Ozean, weites Meer ab
    .target Gorbold Steelhand
    .isQuestComplete 982
step
    #label Level10CookEnd
    .goto 1439,37.511,41.670
    >>|cRXP_WARN_Lauft zum |cRXP_PICK_Lagerfeuer|r auf dem Boden|r
    +|cRXP_WARN_Fangt an|r |T133971:0|t[Kochkunst] |T132834:0|t[Kräutergebackenes Ei] |cRXP_WARN_. zu kochen. Macht dies, bis eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_mindestens 10 erreicht hat|r
    >>Macht weiter, um eure |T133971:0|t[Kochkunst] |cRXP_WARN_zu leveln, bis euch die |r |T132832:0|t[kleinen Eier] |cRXP_WARN_ausgehen|r << !sod
    >>|cRXP_WARN_Es gibt eine Quest im Dämmerwald, die später eure|r |T133971:0|t[Kochkunst]|cRXP_WARN_ von 50 oder höher erfordert. Ihr könnt dies auch kochen, wenn ihr das nächste mal das Boot nehmt|r << !sod
    >>Überspringt diesen Schritt, sobald ihr alle |T132834:0|t[Kräutergebackenen Eier] |cRXP_WARN_hergestellt habt|r
    .skill cooking,50,1
    .itemcount 6889,1 -- Small Egg (1+)
step
    #optional
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Akzeptiert die Quest Schreitereintopf
    .turnin 2178 >> Gebt die Quest Schreitereintopf ab
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    #label TOTH
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 958 >> Gebt die Quest Werkzeuge der Hochgeborenen ab
    .accept 97914 >>Akzeptiert die Quest Neue Horizonte << NightElf
    .target Thundris Windweaver
    .isQuestComplete 958

----End of small south loop for ERA and SoD Warrior/Rogue/Priest----


---Start of Night Elf Westfall section----
step << NightElf
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Kehrt zum |cRXP_FRIENDLY_Cerellean Whiteclaw|r auf dem Dock zurück
step << NightElf
    #optional
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .turnin 963 >> Gebt die Quest In ewiger Liebe ab
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step << NightElf
    #label SWBoat
    .goto 1439/1,929.100,6543.600
    >>|cRXP_WARN_Levelt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_während ihr auf das Boot wartet|r << Rogue/Warrior
    .zone Stormwind City >> Nehmt das Boot nach Sturmwind
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
step << NightElf
    .goto 1453/0,1268.800,-8540.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gilbert Gray|r
    .accept 95065 >>Akzeptiert die Quest Zeit zu fischen
    .turnin 95065 >>Gebt die Quest Zeit zu fischen ab
    .target Gilbert Gray
step << NightElf Rogue/NightElf Warrior/NightElf Hunter
    .goto 1453/0,1194.500,-8332.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ladungsbuchhalter Philmor::268511|r
    .target Manifest Clerk Philmor::268511
    .accept 97220 >>Akzeptiert die Quest Philmors Bitte
step << NightElf Rogue/NightElf Warrior/NightElf Hunter
    #completewith next
    .goto 1453/0,1194.200,-8360.900,10,0
    .goto 1453/0,1076.300,-8408.500,15,0
    .goto 1453/0,1001.400,-8499.700,10,0
    .goto 1453/0,985.500,-8471.300,15,0
    .goto 1453/0,960.100,-8501.800,15,0
    .goto 1453/0,981.200,-8581.800,15,0
    .goto 1453/0,875.500,-8680.900,10 >> Verlasst den Hafen von Sturmwind
--@TODO add new coords for harbor exit cus no philmor's favor
step << NightElf Druid
    .goto 1453/0,1095.500,-8741.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Theridran|r
    .trainer >>Trainiere deine Klassenfähigkeiten
	.target Theridran
step << NightElf Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brother Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Brother Joshua
step << NightElf
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 97914 >> Gebt die Quest Neue Horizonte ab
    .accept 97926 >> Akzeptiert die Quest Auf sich allein gestellt
--    .accept 399 >> Accept Humble Beginnings
    .target Baros Alexston
step << NightElf Rogue/NightElf Warrior/NightElf Hunter
    .goto 1453/0,613.12,-8795.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Erlernt 1h Schwerter << Rogue
    .train 202 >> Erlernt 2h Schwerter << Warrior/Hunter
    .target Woo Ping
step << NightElf Rogue/NightElf Warrior/NightElf Hunter
    .goto 1453/0,568.700,-8848.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elaine Trias::483|r
    .target Elaine Trias::483
    .turnin 97220 >>Gebt die Quest Philmors Bitte ab
    .accept 97222 >>Akzeptiert die Quest Torhauswaren
step << NightElf Rogue/NightElf Warrior/NightElf Hunter
    .goto 1453/0,569.400,-8860.300
    >>Geht |cRXP_WARN_Die Treppe hoch|r und benutzt die |T132762:0|t[|cRXP_LOOT_Lieferung|r] vor der |cRXP_PICK_Torehaustür|r
    .use 277198 --Gatehouse Shipment
    .complete 97222,1 --|1/1 Gatehouse Shipment delivered
step << NightElf Rogue/NightElf Warrior/NightElf Hunter
    #label Gatehouse
    .goto 1453/0,566.900,-8847.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elaine Trias::483|r
    .target Elaine Trias::483
    .turnin 97222 >>Gebt die Quest Torhauswaren ab
step << NightElf Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Osborne the Night Man
step << NightElf Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Einris Brightspear
step << NightElf Hunter
    .goto 1453/0,553.22,-8422.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Karrina Mekenda|r
    .trainer >> Erlernt eure Begleiterfähigkeiten
    .target Karrina Mekenda
step << NightElf
    #label DeeprunEnter
    #completewith next
    .goto 1453/0,562.300,-8385.300,20,0
    .goto 1453/0,522.000,-8352.101
    .subzone 2257 >>Betretet die Tiefenbahn
    .zoneskip Ironforge
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
step << NightElf
    #completewith next
    .zone Ironforge >> Nehmt die Tiefenbahn nach Eisenschmiede
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
step << NightElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Monty|r auf der mittleren Plattform in der Tiefenbahn |cRXP_WARN_auf der Eisenschmiede-Seite!|r
    .accept 6661 >> Akzeptiert die Quest Tiefenbahn-Ratten-Razzia
    .target Monty
step << NightElf
    >>Benutzt |T133942:0|t[Rattenfänger-Flöte] auf |cRXP_FRIENDLY_Tiefenbahn-Ratten|r in der Tiefenbahn
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
step << NightElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Monty|r auf der mittleren Plattform in der Tiefenbahn
    .turnin 6661 >> Gebt die Quest Tiefenbahn-Ratten-Razzia ab
    .target Monty
step << NightElf
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Holt euch den Flugpunkt in Eisenschmiede
    .target Gryth Thurden
step << NightElf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .goto Ironforge,65.905,88.405
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Bilban Tosslespanner
step << NightElf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bixi Wobblebonk|r und |cRXP_FRIENDLY_Buliwyf Stonehand|r
    >>Trainiert Wurfwaffen und 2H-Streitkolben wenn ihr das nicht schon vorher getan habt
    .train 2567 >> Erlernt Wurfwaffen
    .target +Bixi Wobblebonk
    .goto 1455/0,-1205.65,-5042.12
    .train 199 >> Erlernen 2h Streitkolben
    .goto 1455/0,-1197.27,-5041.49
    .target +Buliwyf Stonehand
step << NightElf Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brenwyn Winterstahl|r unten
    >>|cRXP_BUY_Kauft die|r |T135425:0|t[Beißendes Wurfmesser] |cRXP_BUY_von ihr|r
    .collect 3107,1 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << NightElf Warrior
    #optional
    #completewith DRT
    +Legt die |T135425:0|t[Beißendes Wurfmesser] |cRXP_WARN_an|r
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step
    #label IFExit
step << NightElf
    #completewith next
    .zone Dun Morogh >> Reist nach Dun Morogh
step << NightElf
    .goto Dun Morogh,59.9,49.5,30,0
    .goto Dun Morogh,61.2,47.2,15,0
    .goto Dun Morogh,62.1,47.3,20 >>Lauft die Rampe hinauf zu |cRXP_ENEMY_Vagash|r
step << NightElf
    #completewith next
    +Lockt |cRXP_ENEMY_Vagash|r zu |cRXP_FRIENDLY_Rudra Amberstill|r
    >>|cRXP_WARN_Versucht, nicht zu nah an ihn heranzugehen, sonst wirkt er|r |T135848:16|t[Gletschergebrüll] |cRXP_WARN_was dich 3 Sek. betäubt|r
    .mob Vagash
step << NightElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:16|tSprecht mit |cRXP_FRIENDLY_Rudra Amberstill|r
    .goto Dun Morogh,63.1,49.8
    .target Rudra Amberstill
    .accept 314 >>Akzeptiert die Quest Die Herde beschützen
step << NightElf
    >>Lockt |cRXP_ENEMY_Vagash|r zu den |cRXP_FRIENDLY_Gebirgsjäger von Dun Morogh|r
    >>|cRXP_WARN_Stellt sicher, dass ihr mindestens 50% Schaden anrichtet|r
    .goto Dun Morogh,62.8,54.6,10,0
    .mob Vagash
    .target Dun Morogh Mountaineer
    .complete 314, 1
step << NightElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:16|tSprecht mit |cRXP_FRIENDLY_Rudra Amberstill|r
    .goto Dun Morogh, 63.1, 49.8
    .target Rudra Amberstill
    .turnin 314 >>Gebt die Quest Die Herde beschützen ab
step << NightElf
    #label LochEnter
    .goto 1432,16.494,58.424,20,0
    .goto 1432,19.594,62.735,20,0
    .goto 1432,20.749,64.326,20,0
    .goto 1432,21.106,65.007,20,0
    .goto 1432,21.388,66.357,20,0
    .goto 1432,21.498,67.840
    .subzone 924 >> Reist durch den Südtorpass nach Loch Modan
    .zoneskip Loch Modan
step << NightElf
    .goto 1432/0,-2602.54,-5832.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gebirgsjäger Cobbleflint|r
    .accept 224 >> Akzeptiert die Quest Verteidigung der Länder des Königs
    .target Mountaineer Cobbleflint
step << NightElf
    #optional
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >> BETRITT den Bunker. Geht zum obersten Geschoss
step << NightElf
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hauptmann Rugelfuß|r im Bunker
    .accept 267 >> Akzeptiert die Quest Die Bedrohung durch die Troggs
    .target Captain Rugelfuss
step << NightElf
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
    .isOnQuest 224
    .isOnQuest 267
step << NightElf
    #optional
    #completewith next
    #label Thelsamar
    .subzone 144 >> Reist nach Thelsamar
step << NightElf
    #completewith next
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Kadrell|r
    >>|cRXP_FRIENDLY_Gebirgsjäger Kadrell|r |cRXP_WARN_patrouilliert auf der Straße durch Thelsamar|r
    .accept 416 >> Akzeptiert die Quest Rattenfang
    .accept 1339 >> Akzeptiert die Quest Gebirgsjäger Stormpikes Aufgabe
    .target Mountaineer Kadrel
step << NightElf
    #label ThelsamarFirst
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r
    .accept 418 >> Akzeptiert die Quest Blutwurst aus Thelsamar
    .target Vidra Hearthstove
step << NightElf
    #optional
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Gebt die Blutwurst in Thelsamar ab
    .target Vidra Hearthstove
    .isQuestComplete 418
step << NightElf
    #optional
    #completewith StormpikeO
    .abandon 1338 >> Brecht die Quest Sturmlanzes Bestellung ab. Dies schaltet die Quest Gebirgsjäger Sturmlanzes Aufgabe frei, die eine kostenlose 550XP Abgabe ermöglicht
step << NightElf
    #label StormpikeO
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Kadrell|r
    >>|cRXP_FRIENDLY_Gebirgsjäger Kadrell|r |cRXP_WARN_patrouilliert auf der Straße durch Thelsamar|r
    .accept 416 >> Akzeptiert die Quest Rattenfang
    .accept 1339 >> Akzeptiert die Quest Gebirgsjäger Stormpikes Aufgabe
    .target Mountaineer Kadrell
step << NightElf
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Erlernt die Flugroute nach Thelsamar
    .target Thorgrum Borrelson
step << NightElf
    #optional
    #completewith KingsLands
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    >>|cRXP_WARN_Behaltet alle|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_zum späteren Leveln von |T133971:0|t[Kochkunst] |cRXP_WARN_|r
    >>|cRXP_WARN_Macht euch nicht extra auf den Weg, um das jetzt abzuschließen. Ihr kommt bald nach Loch Modan zurück|r
    .isOnQuest 418
step << NightElf
    #optional
    #completewith next
    .goto 1432/0,-2677.26,-5778.34,10,0
    .goto 1432/0,-2648.30,-5876.75,15 >> Lauft den Schmutzpfad hinauf und springt dann in den Bunker hinunter
step << NightElf
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hauptmann Rugelfuß|r im Bunker
    .turnin 267 >> Gebt die Quest Die Bedrohung durch die Troggs ab
    .target Captain Rugelfuss
    .isQuestComplete 267
step << NightElf
    #label KingsLands
    .goto 1432/0,-2602.54,-5832.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gebirgsjäger Cobbleflint|r
    .turnin 224 >> Gebt die Quest Verteidigung der Länder des Königs ab
    .target Mountaineer Cobbleflint
    .isQuestComplete 224
step << NightElf
    #optional
    #completewith Algaz
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    >>|cRXP_WARN_Behaltet alle|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_zum späteren Leveln von |T133971:0|t[Kochkunst] |cRXP_WARN_|r
    >>|cRXP_WARN_Macht euch nicht extra auf den Weg, um das jetzt abzuschließen. Ihr kommt bald nach Loch Modan zurück|r
    .isOnQuest 418
    .subzoneskip 925 --Algaz Station
step << NightElf
    #optional
    #label Algaz
    #completewith Stormpike1
    .goto 1432,23.490,18.008
    .subzone 925 >>Reist nach Station Algaz
step << NightElf
    #optional
    #requires Algaz
    #completewith Stormpike1
    .goto 1432,23.490,18.008,15,0
    .goto 1432,24.279,17.959,12 >> BETRITT den Bunker. Geht zum obersten Geschoss
step << NightElf
    #label Stormpike1
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gebirgsjäger Stormpike|r im Bunker
    .turnin 1339 >> Gebt die Quest Gebirgsjäger Stormpikes Aufgabe ab
    .accept 307 >> Akzeptiert die Quest Schmutzige Pfoten
    .target Mountaineer Stormpike
step << NightElf
    #completewith Gear
    #optional
    #loop
    .goto 1432/0,-2684.71,-5042.87,0
    .goto 1432/0,-2712.57,-5286.61,0
    .goto 1432/0,-3033.92,-4797.29,0
    .waypoint 1432/0,-3033.92,-4797.29,50,0
    .waypoint 1432/0,-2972.41,-4796.92,50,0
    .waypoint 1432/0,-2684.71,-5042.87,50,0
    .waypoint 1432/0,-2712.57,-5286.61,50,0
    >>Tötet |cRXP_ENEMY_Tunnel Ratten|r. Plündert sie für ihre |cRXP_LOOT_Ohren|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob +Tunnel Rat Scout
    .mob +Tunnel Rat Vermin
    .mob +Tunnel Rat Forager
    .mob +Tunnel Rat Geomancer
    .mob +Tunnel Rat Digger
    .mob +Tunnel Rat Surveyor
step << NightElf
    #optional
    #label SilverMine
    #completewith next
    .goto 1432/0,-2972.96,-4835.187,20 >> Betretet die Silberbachmine
step << NightElf
    .goto 1432/0,-2984.82,-4902.33
    >>Öffnet die |cRXP_PICK_Kisten der Minenarbeiterliga|r in der Mine. Sammelt sie ein für die |cRXP_LOOT_Minenarbeiterausstattung|r
    .complete 307,1 --Miners' Gear (4)
step << NightElf Warrior
    #ssf
    #label Gear
    .goto 1432/0,-3176.16,-4669.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nillen Andemar|r
    >>|cRXP_BUY_Kauft den|r |T133476:0|t[Schwerer Stachelkolben] |cRXP_BUY_ODER den|r |T133053:0|t[Eisenholzschlägel] |cRXP_BUY_von ihm (falls sie verfügbar sind)|r
    >>|cRXP_WARN_Falls ihr euch das nicht leisten könnt, farmt Geld von den nahegelegenen |cRXP_ENEMY_Tunnel-Ratten|r bis ihr genug habt|r
    >>|cRXP_WARN_Tut dies schnell, da ein anderer Spieler es vor euch kaufen könnte|r
    >>|cRXP_WARN_Falls ihr es nicht möchtet, überspringt diesen Schritt|r
    .collect 4778,1,307,1 --Heavy Spiked Mace (1)
    .collect 4777,1,307,1 --Ironwood Maul (1)
    .target Nillen Andemar
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemcount 4777,<1 --Ironwood Maul (<1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << NightElf Warrior
    #ah
    #label Gear
    .goto 1432/0,-3176.16,-4669.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nillen Andemar|r
    >>|cRXP_BUY_Kauft den|r |T133476:0|t[Schwerer Stachelkolben] |cRXP_BUY_ODER den|r |T133053:0|t[Eisenholzschlägel] |cRXP_BUY_von ihm (falls sie verfügbar sind)|r
    >>|cRXP_WARN_Falls ihr euch das nicht leisten könnt, farmt Geld von den nahegelegenen |cRXP_ENEMY_Tunnel-Ratten|r bis ihr genug habt|r
    >>|cRXP_WARN_Tut dies schnell, da ein anderer Spieler es vor euch kaufen könnte|r
    >>|cRXP_WARN_Falls ihr das nicht tun möchtet oder lieber bald eine billigere/bessere Waffe vom Auktionshaus kaufen möchtet, überspringt diesen Schritt|r
    .collect 4778,1,307,1 --Heavy Spiked Mace (1)
    .collect 4777,1,307,1 --Ironwood Maul (1)
    .target Nillen Andemar
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemcount 4777,<1 --Ironwood Maul (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << NightElf Warrior
    #optional
    #completewith PawsDelivery
    +|cRXP_WARN_Legt den|r |T133476:0|t[Schwerer Stachelkolben] an
    .use 4778
    .itemcount 4778,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <14,1
step << NightElf Warrior
    #optional
    #completewith PawsDelivery
    +|cRXP_WARN_Legt den|r |T133053:0|t[Eisenholzschlägel] an
    .use 4777
    .itemcount 4777,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .xp <13,1
step
    #label Gear
step << NightElf
    .goto 1432/0,-2684.71,-5042.87,0
    .goto 1432/0,-2712.57,-5286.61,0
    .goto 1432/0,-3033.92,-4797.29,0
    .goto 1432/0,-3033.92,-4797.29,50,0
    .goto 1432/0,-2972.41,-4796.92,50,0
    .goto 1432/0,-2684.71,-5042.87,50,0
    .goto 1432/0,-2712.57,-5286.61,50,0
    .goto 1432/0,-3033.92,-4797.29,50,0
    .goto 1432/0,-2972.41,-4796.92
    >>Tötet |cRXP_ENEMY_Tunnel Ratten|r. Plündert sie für ihre |cRXP_LOOT_Ohren|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob +Tunnel Rat Scout
    .mob +Tunnel Rat Vermin
    .mob +Tunnel Rat Forager
    .mob +Tunnel Rat Geomancer
    .mob +Tunnel Rat Digger
    .mob +Tunnel Rat Surveyor
step << NightElf
    #optional
    #completewith PawsDelivery
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 925 --Algaz Station
step << NightElf
    #optional
    #completewith next
    .goto 1432,23.490,18.008,15,0
    .goto 1432,24.279,17.959,15 >> BETRETET den Bunker
step << NightElf
    #optional
    #completewith next
    .goto 1432/0,-2659.45,-4822.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor 1362 >>|cRXP_WARN_Verkaufe und repariere falls nötig|r
    .target Gothor Brumn
step << NightElf
    #label PawsDelivery
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Sturmlanze|r
    .turnin 307 >> Gebt die Quest Schmutzige Pfoten ab
    .target Mountaineer Stormpike
step << NightElf
    >>Tötet |cRXP_ENEMY_Alter Schwarzbär|r. Plündert sie für |T134027:0|t|cRXP_LOOT_Bärenfleisch|r
    >>Tötet |cRXP_ENEMY_Bergeber|r. Plündert sie für |cRXP_LOOT_Ebergedärme|r
    >>Tötet |cRXP_ENEMY_Waldlauerer|r. Plündert sie für |cRXP_LOOT_Spinnensekret|r
    .collect 3173,3,418,1 --Bear Meat (3)
    .mob +Elder Black Bear
    .goto 1432/0,-2735.74,-4684.34,90,0
    .goto 1432/0,-2846.07,-4682.50,90,0
    .goto 1432/0,-2782.63,-4770.80,90,0
    .goto 1432/0,-2835.04,-4976.83,90,0
    .goto 1432/0,-2915.03,-5044.89,90,0
    .goto 1432/0,-3080.53,-5100.08,90,0
    .goto 1432/0,-2735.74,-4684.34,90,0
    .goto 1432/0,-2846.07,-4682.50,90,0
    .goto 1432/0,-2782.63,-4770.80,90,0
    .goto 1432/0,-2835.04,-4976.83,90,0
    .goto 1432/0,-2915.03,-5044.89,90,0
    .goto 1432/0,-3080.53,-5100.08,90,0
    .goto 1432/0,-2735.74,-4684.34
    .collect 3172,3,418,1 --Boar Intestines (3)
    .mob +Mountain Boar
    .goto 1432/0,-3041.92,-5129.51,90,0
    .goto 1432/0,-3017.09,-5219.65,90,0
    .goto 1432/0,-2815.73,-5147.91,90,0
    .goto 1432/0,-2757.81,-4952.91,90,0
    .goto 1432/0,-2782.63,-4903.25,90,0
    .goto 1432/0,-3041.92,-5129.51,90,0
    .goto 1432/0,-3017.09,-5219.65,90,0
    .goto 1432/0,-2815.73,-5147.91,90,0
    .goto 1432/0,-2757.81,-4952.91,90,0
    .goto 1432/0,-2782.63,-4903.25,90,0
    .goto 1432/0,-3041.92,-5129.51
    .collect 3174,3,418,1 --Spider Ichor (3)
    .mob +Forest Lurker
    .goto 1432/0,-2873.66,-4789.19,90,0
    .goto 1432/0,-2766.08,-4866.45,90,0
    .goto 1432/0,-2926.07,-5232.53,90,0
    .goto 1432/0,-2992.27,-5055.93,90,0
    .goto 1432/0,-3069.5,-5078.01,90,0
    .goto 1432/0,-2873.66,-4789.19,90,0
    .goto 1432/0,-2766.08,-4866.45,90,0
    .goto 1432/0,-2926.07,-5232.53,90,0
    .goto 1432/0,-2992.27,-5055.93,90,0
    .goto 1432/0,-3069.5,-5078.01,90,0
    .goto 1432/0,-2873.66,-4789.19
step << NightElf
    #completewith FlintTinder
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Kadrell|r
    >>|cRXP_FRIENDLY_Gebirgsjäger Kadrell|r |cRXP_WARN_patrouilliert auf der Straße durch Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >> Gebt die Quest Rattenfang ab
step << NightElf
    #optional
    #completewith FlintTinder
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >> BETRETET den Gasthof zum Starkbierlager
step << NightElf
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vidra Hearthstove|r
    .turnin 418 >> Gebt die Blutwurst in Thelsamar ab
    .target Vidra Hearthstove
step << NightElf
    #label FlintTinder
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.24,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jern Hornhelm|r
    .accept 436 >> Akzeptiert die Quest Eisenbands Ausgrabungsstätte
    .target Jern Hornhelm
step << NightElf
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gebirgsjäger Kadrell|r
    >>|cRXP_FRIENDLY_Gebirgsjäger Kadrell|r |cRXP_WARN_patrouilliert auf der Straße durch Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >> Gebt die Quest Rattenfang ab
step << NightElf
    #loop
    .goto 1432/0,-3319.800,-5217.600,20,0
    .goto 1432/0,-3251.5499,-5285.8790,20,0
    .goto 1432/0,-3342.5748,-5484.5540,20,0
    .goto 1432/0,-3386.7082,-5462.4790,20,0
    .goto 1432/0,-3319.800,-5217.600,0
    .goto 1432/0,-3251.5499,-5285.8790,0
    .goto 1432/0,-3342.5748,-5484.5540,0
    .goto 1432/0,-3386.7082,-5462.4790,0
    >>Klickt die |cRXP_PICK_Weggeworfene Kiste mit Angelzubehör|r auf dem Seeboden
    >>|cRXP_WARN_HINWEIS: Dies kann an vielen verschiedenen Orten erscheinen. Schwimmt herum, bis ihr das Ausrufezeichen auf eurer Minikarte seht|r
    >>|cRXP_WARN_Vorsicht vor hochstufigen|r |cRXP_ENEMY_Junger Dreschadons|r
    .accept 86614 >>Akzeptiert die Quest Silberschatz der Wellen
step << NightElf
    .goto Loch Modan,64.89,66.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Magmar Fellhew|r
    .turnin 436 >> Gebt die Quest Eisenbands Ausgrabungsstätte ab
    .target Magmar Fellhew
step << NightElf
    .goto Loch Modan,65.934,65.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ausgrabungsleiter Eisenband|r
    .accept 298 >> Akzeptiert die Quest Bericht über den Fortschritt der Ausgrabungen
    .target Prospector Ironband
step << NightElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Daryl der Jüngling|r
    .accept 257 >> Akzeptiert die Quest Das Prahlen eines Jägers
    .goto Loch Modan,83.49,65.40
    .target Daryl the Youngling
step << NightElf Rogue/NightElf Hunter/NightElf Warrior/NightElf Druid
    .goto Loch Modan,82.6,64.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kat|r
    .vendor >> |cRXP_BUY_Kauft|r |T132539:0|t[Bewegliche Stiefel] |cRXP_BUY_bei ihr, wenn sie verfügbar sind|r
    .target Kat Sampson
step << NightElf
    .goto Loch Modan,80.09,64.16,60,0
    .goto Loch Modan,77.16,75.57,60,0
    .goto Loch Modan,70.78,72.91,60,0
    .goto Loch Modan,76.65,62.27,60,0
    .goto Loch Modan,76.36,56.05,60,0
    .goto Loch Modan,80.09,64.16,60,0
    .goto Loch Modan,77.16,75.57,60,0
    .goto Loch Modan,70.78,72.91,60,0
    .goto Loch Modan,76.65,62.27,60,0
    .goto Loch Modan,76.36,56.05,60,0
    .goto Loch Modan,80.09,64.16
    >>Tötet |cRXP_ENEMY_Bergbussards|r
    >>|cRXP_WARN_Ihr müsst diese Quest abschließen und zu |cRXP_FRIENDLY_Daryl der Jüngling|r innerhalb von 15 Minuten zurückkehren. Falls die Quest fehlschlägt, brecht sie ab und nehmt sie erneut an|r
    .complete 257,1 -- Mountain Buzzard slain (6)
    .mob Mountain Buzzard
step << NightElf
    #completewith next
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >> Reist zu |cRXP_FRIENDLY_Daryl der Jüngling|r
step << NightElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Daryl der Jüngling|r
    .goto Loch Modan,83.49,65.40
    .turnin 257 >> Gebt die Quest Das Prahlen eines Jägers ab
    .target Daryl the Youngling
step << NightElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marek Ironheart|r
    .accept 385 >> Akzeptiert die Quest Krokiliskenjagd
    .accept 86758 >>Akzeptiert die Quest Ist dies ein Dolch
    .goto Loch Modan,81.76,61.66
    .target Marek Ironheart
step << NightElf
    #completewith next
    >>Tötet |cRXP_ENEMY_Lochkrokilisk|r. Plündert sie für ihr |cRXP_LOOT_Fleisch|r und |cRXP_LOOT_Haut|r
    .complete 385,1 -- Crocolisk Meat (5)
    .complete 385,2 -- Crocolisk Skin (6)
    .mob Loch Crocolisk
step << NightElf
    .goto Loch Modan,62,44
    >>Tötet |cRXP_ENEMY_Dolchzahn|r, er |cRXP_WARN_könnte die Küste entlang patrouillieren|r. Plündert ihr für|T3736888:0|t[|cRXP_LOOT_Mareks Krokojagdmesser|r]
    .complete 86758,1 --Marek's Croc Hunting Knife (1)
    .mob Daggerfang
step << NightElf
    #completewith next
    .goto Loch Modan,54.7,38.3,200 >> Reist zu der Insel, die mitten im Loch liegt
step << NightElf
    .goto Loch Modan,58.86,38.32,80,0
    .goto Loch Modan,54.80,40.02,60,0
    .goto Loch Modan,54.16,35.79,60,0
    .goto Loch Modan,54.72,38.15
    >>Tötet |cRXP_ENEMY_Lochkrokilisk|r. Plündert sie für ihr |cRXP_LOOT_Fleisch|r und |cRXP_LOOT_Haut|r
    .complete 385,1 -- Crocolisk Meat (5)
    .complete 385,2 -- Crocolisk Skin (6)
    .mob Loch Crocolisk
step << NightElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marek Ironheart|r
    .turnin 385 >>Gebt die Quest Krokiliskenjagd ab
    .turnin 86758 >>Gebt die Quest Ist dies ein Dolch ab
    .goto Loch Modan,81.76,61.66
    .target Marek Ironheart
step << NightElf
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Daryl der Jüngling|r
    .goto Loch Modan,83.49,65.40
    .accept 258 >> Akzeptiert die Quest Die Herausforderung eines Jägers
    .target Daryl the Youngling
    .xp >16,1
step << NightElf
    #optional
    .goto Loch Modan,74.65,49.60,70,0
    .goto Loch Modan,75.80,43.43,70,0
    .goto Loch Modan,71.10,38.98,70,0
    .goto Loch Modan,65.59,41.89,70,0
    .goto Loch Modan,61.66,32.02,70,0
    .goto Loch Modan,72.79,39.86,70,0
    .goto Loch Modan,73.87,51.85,70,0
    .goto Loch Modan,69.45,39.18
    >>Tötet |cRXP_ENEMY_Elder Mountain Boars|r
    >>|cRXP_WARN_Ihr müsst diese Quest abschließen und innerhalb von 12 Minuten zu |cRXP_FRIENDLY_Daryl der Jüngling|r zurückkehren. Falls ihr scheitert, brecht die Quest ab und nehmt sie erneut auf|r
    .complete 258,1 -- Elder Mountain Boar slain (5)
    .mob Elder Mountain Boar
    .isOnQuest 258
step << NightElf
    #completewith next
    #optional
    .goto Loch Modan,82.92,59.37,80,0
    .goto Loch Modan,83.28,62.97,25 >> Reist zu |cRXP_FRIENDLY_Daryl der Jüngling|r
step << NightElf
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Daryl der Jüngling|r
    .goto Loch Modan,83.49,65.40
    .turnin 258 >> Gebt die Quest Die Herausforderung eines Jägers ab
    .target Daryl the Youngling
    .isOnQuest 258
step << NightElf
    #optional
    .xp 16-2360 >> Farmt, bis ihr noch 2360 XP bis Stufe 16 benötigt (12.040/14.400)
step << NightElf
    >>Springt aus der Hütte und sterbt durch die Mobs darunten
    .deathskip >> Sterbt und respawnt am Friedhof von Thelsamar
step << NightElf
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.24,47.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jern Hornhelm|r
    .turnin 298 >> Gebt die Quest Bericht über den Fortschritt der Ausgrabungen ab
    .accept 301 >> Akzeptiert die Quest Meldung in Eisenschmiede
    .target Jern Hornhelm
step << NightElf
    .goto 1432/0,-3104.900,-5210.100,5,0
    .goto 1432/0,-3086.600,-5216.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Khara Deepwater::1684|r
    .target Khara Deepwater::1684
    .turnin 86614 >>Gebt die Quest Silberschatz der Wellen ab
step
    #label LochEnd
step << NightElf
    #label flyIF
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Thorgrum Borrelson
    .zoneskip Ironforge
step << NightElf
    .goto Ironforge,74.645,11.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ausgrabungsleiter Sturmlanze|r
    .turnin 301 >> Gebt die Quest Meldung in Eisenschmiede ab
    .target Prospector Stormpike
step << NightElf Hunter
    .goto 1455/0,-1266.100,-5006.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Belia Donnerstein|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Regnus Thundergranite
step << NightElf Priest
    .goto 1455/0,-897.200,-4607.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Hohepriester Rohan|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target High Priest Rohan
step << NightElf Priest/NightElf Druid
    #ah
    #label OilWandFood
    #completewith AHCheck
    .goto 1455/0,-917.57,-4967.58,-1--c:Ironforge,25.800,75.500
    .goto 1455/0,-904.92,-4962.83,-1--c:Ironforge,24.200,74.600
    .goto 1455/0,-901.76,-4948.06,-1--c:Ironforge,23.800,71.800
    >>|cRXP_WARN_Kauft Folgendes, wenn ihr es euch leisten könnt:|r
    >>|T134711:0|t[Schwaches Zauberöl] |cRXP_WARN_und|r |T133906:0|t[Geräucherter Weisenfisch]
    >>|cRXP_WARN_Sucht auch nach hohem DPS|r |T132317:0|t[Zauberstab] |cRXP_WARN_-Verbesserungen, die ihr jetzt/bald nutzen könnt|r << Priest
    >>|cRXP_WARN_Diese bieten einen hohen DPS-Anstieg in frühen Leveln. Falls ihr das nicht tun möchtet oder nicht könnt, überspringt diesen Schritt|r
    .collect 20744,1 -- Minor Wizard Oil (1)
    .collect 21072,20 -- Smoked Sagefish (20)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
step << NightElf Rogue
    .goto Ironforge,51.495,15.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Fenthwick|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Fenthwick
step << NightElf Warrior
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Bilban Tosslespanner|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Bilban Tosslespanner
step << NightElf Druid
    #completewith next
	.cast 18960 >> Caste Teleportieren: Moonglade
	.zoneskip Moonglade
step << NightElf Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
step << NightElf
    .hs >>Benutzt euren Ruhestein nach Auberdine
    .zoneskip Darkshore
step << NightElf
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Akzeptiert die Quest Meeresfrüchte
    .target Gubber Blump
----End of Night Elf Westfall section
step
    #optional
    #completewith next
    +|cRXP_WARN_Drückt Escape, dann geht in -> Optionen -> Steuerung|r
    >>|cRXP_WARN_Überprüft "Aktiviere Interaktionstaste" und bindet die "Interagieren mit Ziel" Option auf eine Taste|r
step
    .goto 1439,38.213,28.754
--  .goto 1439,38.234,28.796
    >>|cRXP_WARN_==BEACHTET EURE ATEMLEISTE==|r
    >>|cRXP_WARN_Schwimmt unter Wasser zur Außenseite der Bootsrückseite|r
    >>|cRXP_WARN_Drückt euren "Interagieren mit Ziel"-Hotkey am Ort mit dem Pfeil, um die |cRXP_LOOT_Schließkassette der SILBERMORGEN|r von außerhalb des Bootes zu plündern|r
    >>|cRXP_WARN_Falls ihr das nicht wollt, schwimmt unter Wasser zum unteren Deck des Bootes, dann plündert die |cRXP_LOOT_Schließkassette der SILBERMORGEN|r im Inneren|r
    .complete 982,1 --Silver Dawning's Lockbox (1)
    .isOnQuest 982
step
    #label MistVeil
    .goto 1439,39.581,27.487
--  .goto 1439,39.629,27.462
    >>|cRXP_WARN_==BEACHTET EURE ATEMLEISTE==|r
    >>|cRXP_WARN_Schwimmt unter Wasser zur Außenseite der Bootsrückseite|r
    >>|cRXP_WARN_Am Ort des Pfeils drückt eure Mit Ziel interagieren keybind, um die |cRXP_LOOT_Schließkassette der NEBELSCHLEIER|r von außen zu plündern|r
    >>|cRXP_WARN_Falls ihr das nicht tun möchtet, schwimmt unter Wasser in den unteren Teil des Bootes und plündert dann die |cRXP_LOOT_Schließkassette der NEBELSCHLEIER|r von innen|r
    .complete 982,2 --Mist Veil Lockbox (1)
    .isOnQuest 982
step
    #optional
    .goto 1439,41.901,31.339
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4723 >> Akzeptiert die Quest Gestrandete Meereskreatur
    .isOnQuest 982


----End of NE >1.49x catchup (everyone 1x) Final boat section----


step
    #optional
    #completewith BoatSeaCreature
    .goto 1439,44.190,33.697,0
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r und |cRXP_ENEMY_Mondpircher|r. Plündert sie für |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #completewith BoatSeaCreature
    .goto 1439,43.509,33.207,0
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    >>|cRXP_WARN_Seid vorsichtig, denn sie|r |T132307:0|t[Fliehen] |cRXP_WARN_unter 30% Gesundheit|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #optional
    #completewith BoatSeaCreature
    >>Tötet |cRXP_ENEMY_Moonkin|r. Plündert sie für |T132832:0|t|cRXP_LOOT_[Kleines Ei]|r
    >>|cRXP_WARN_Dies wird verwendet, um eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_später auf 50 zu erhöhen|r
    >>|cRXP_WARN_Macht euch keinen Stress die Eier jetzt zu farmen. Denkt einfach daran, die Eier zu behalten und überlegt, wie viele Fertigkeitspunkte ihr noch benötigt, um Kochen 50 zu erreichen|r
    .collect 6889,50,90,1,0x20,cooking --Small Egg (10-49)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .subzoneskip 446 --BashalAran
    .subzoneskip 452 --Mists Edge
--   .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 10-50
step
    .goto 1439,47.314,48.676
    >>Klickt den |cRXP_PICK_Geheimnisvoller roter Kristall|r
    >>|cRXP_WARN_Passt auf die beiden 2er-Gruppen |cRXP_ENEMY_Tobender Moonkin|r westlich des |cRXP_PICK_Geheimnisvoller Roter Kristall|r die beiden aneinander liegenden duos werden zusammen gepullt|r
    .turnin 4812 >> Gebt die Quest Wenn das Wasser fließt ab
    .accept 4813 >> Akzeptiert die Quest Die Fragmente im Inneren
step
    #label BashalEnd
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >> Gebt die Quest Bashal'Aran ab
    .isOnQuest 957
    .target Asterion
step
    #optional
    #completewith CrabTurtle
    >>Tötet |cRXP_ENEMY_Tollwütiger Distelbär|r
    >>|cRXP_WARN_Passt auf, sie wirken|r |T135914:0|t[Tollwut] |cRXP_WARN_wenn ihr sie nicht schnell genug tötet (Sofort Nahkampf: Verringert ALLE Gesundheitsregeneration um 50% für 10 Minuten)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #label BoatSeaCreature
    .goto 1439,41.901,31.339
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4723 >> Akzeptiert die Quest Gestrandete Meereskreatur
step
    #optional
    #completewith CrabTurtle
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r und |cRXP_ENEMY_Waldschreiter|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    >>|cRXP_WARN_Seid vorsichtig|r |cRXP_ENEMY_Waldschreiterjunges|r |T132307:0|t[Fliehen] |cRXP_WARN_bei unter 30% Gesundheit|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #optional
    #completewith CrabTurtle
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r und |cRXP_ENEMY_Mondpircher|r. Plündert sie für |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #label CrabTurtle
    .goto 1439/1,47.88,7433.800
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4725 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    #optional
    #completewith next
    .goto 1439,45.004,21.344,0
    .goto 1439,48.013,21.409,0
    .goto 1439,49.680,22.468,0
    .goto 1439,45.004,21.344,70,0
    .goto 1439,45.468,20.336,70,0
    .goto 1439,47.356,20.559,70,0
    .goto 1439,48.013,21.409,70,0
    .goto 1439,48.612,20.745,70,0
    .goto 1439,49.680,22.468,70,0
    .goto 1439,49.313,24.271,70,0
    >>Tötet |cRXP_ENEMY_Riffkriecher|r. Plündert sie für |cRXP_LOOT_Feine Krebsbrocken|r
    >>|cRXP_WARN_Denkt daran, einige der Stufe 17|r |cRXP_ENEMY_Riffkriecher|r |cRXP_WARN_zu überspringen, wenn ihr gute drops bekommt.|r |cRXP_WARN_Ihr müsst diese Quest nicht jetzt abschließen|r
    >>|cRXP_WARN_Seid vorsichtig, denn sie wirken|r |T132155:0|t[Muskelriss] |cRXP_WARN_ein Direktangriff, verursacht 30-55 Schaden|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto 1439/1,-386.39,7219.830
    >>|cRXP_WARN_Benutzt|r |T134865:0|t[Leere Probenröhre] |cRXP_WARN_am Fuße des Cliffspring Rivers|r
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350
step
    #optional
    #completewith next
    .goto 1439,51.118,23.670,20,0
    .goto 1439,51.288,24.554,12 >>Lauft die Rampe hinauf zur |cRXP_PICK_Dröhnkiste 323|r
    .isQuestComplete 1002
step
    #optional
    .goto 1439,51.288,24.554
    >>Klickt auf die|cRXP_PICK_Dröhnkiste 323|r auf dem Boden
    .turnin 1002 >> Gebt die Quest Dröhnkiste 323 ab
    .accept 1003 >> Akzeptiert die Quest Dröhnkiste 525
    .isQuestComplete 1002
step
    .goto 1439,51.288,24.554
    >>Klickt auf die|cRXP_PICK_Dröhnkiste 323|r auf dem Boden
    .accept 1003 >> Akzeptiert die Quest Dröhnkiste 525
    .isQuestTurnedIn 1002


----Start of Hunter/Druid 1x early Althalaxx section (for money+xp)----


step << Hunter/Druid
    #optional
    #completewith Tower1
    >>Tötet |cRXP_ENEMY_Tollwütiger Distelbär|r
    >>|cRXP_WARN_Passt auf, sie wirken|r |T135914:0|t[Tollwut] |cRXP_WARN_wenn ihr sie nicht schnell genug tötet (Sofort Nahkampf: Verringert ALLE Gesundheitsregeneration um 50% für 10 Minuten)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << Hunter/Druid
    #optional
    #completewith Tower1
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
step << Hunter/Druid
    #optional
    #completewith Tower1
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r. Plündert sie für ihren |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .isOnQuest 1002
step << Hunter/Druid
    #optional
    #completewith Tower1
    .goto 1439,51.118,23.670,20,0
    .goto 1439,51.490,24.368,30,0
    .goto 1439,54.973,24.885,15 >>Reist in Richtung |cRXP_FRIENDLY_Balthule Schattenschlag|r
    .isQuestAvailable 1002 << !NightElf/Hunter
step << Hunter/Druid
    #label Tower1
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Balthule Schattenhieb|r
    .turnin 965 >> Gebt die Quest Der Turm von Althalaxx ab
    .accept 966 >> Der Turm von Althalaxx annehmen
    .target Balthule Shadowstrike
step << Hunter/Druid
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.231,26.508,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,55.743,25.915,50,0
    >>Tötet |cRXP_ENEMY_Fanatikerin des dunklen Strangs|r. Plündert sie für ihr |cRXP_LOOT_Abgenutztes Pergament|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step << Hunter/Druid
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Balthule Schattenhieb|r
    .turnin 966 >> Gebt die Quest Der Turm von Althalaxx ab
    .accept 967 >> Der Turm von Althalaxx annehmen
    .target Balthule Shadowstrike
step << Hunter/Druid
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,53.629,26.054,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,48.022,27.199,60,0
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider

----End of Hunter/Druid 1x and SoD Warrior early Althalaxx section (for money+xp)----

step
    #optional
    #completewith CliffCave
    >>Tötet |cRXP_ENEMY_Tollwütiger Distelbär|r
    >>|cRXP_WARN_Passt auf, sie wirken|r |T135914:0|t[Tollwut] |cRXP_WARN_wenn ihr sie nicht schnell genug tötet (Sofort Nahkampf: Verringert ALLE Gesundheitsregeneration um 50% für 10 Minuten)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #optional
    #completewith CliffCave
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r. Plündert sie für ihren |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,53.629,26.054,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,48.022,27.199,60,0
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
    .itemcount 5469,3 --Strider Meat (3+)
----XX Start from West Side if 3+
step
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,48.022,27.199,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.629,26.054,60,0
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider
step
    #optional
    .goto 1439,51.288,24.554
    >>Klickt auf die|cRXP_PICK_Dröhnkiste 323|r auf dem Boden
    .turnin 1002 >> Gebt die Quest Dröhnkiste 323 ab
    .accept 1003 >> Akzeptiert die Quest Dröhnkiste 525
    .isQuestComplete 1002
    .subzoneskip 456,1 --Only turnin if you're nearby (Cliffspring River)
step
    #optional
    #completewith next
    #label CliffCave
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >> Reist zur Klippenquell-Höhle
step << Druid
    .goto 1439/1,-660.18,6874.43
    >>|cRXP_WARN_Benutzt die|r |T134776:0|t[Leere Cliffspring Falls-Probe] |cRXP_WARN_im Wasser am Eingang der Klippenquell-Höhle|r
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
    .isOnQuest 6122
step
    #label CaveMushrooms
    .goto 1439/1,-690.31,6751.29,12,0
    .goto 1439/1,-706.68,6748.23,12,0
    .goto 1439/1,-719.13,6787.530,12,0
    >>Plündert |cRXP_LOOT_Schorfstängling|r und eine |cRXP_LOOT_Todeskappe|r auf dem Boden
    >>|cRXP_WARN_Bleibt im oberen Bereich. Wenn es keine |cRXP_LOOT_Todeskappe|r am Ende der Oberseite gibt, springt hinunter und holt eine aus dem südlichen Raum darunter|r
    >>|cRXP_WARN_Seid vorsichtig, denn |cRXP_ENEMY_Wellenreiter der Sturmschuppen|r wirken|r |T135836:0|t[Wasserstrahl] |cRXP_WARN_(Sofortiger Distanzangriff: Macht Schaden und stößt euch zurück) - stellt sicher, dass ihr nicht von oben nach unten gestoßen werdet|r
    .complete 947,1 --Scaber Stalk (5)
    .goto 1439/1,-663.45,6877.49,8,0
    .goto 1439/1,-679.17,6848.67,8,0
    .goto 1439/1,-666.73,6819.41,8,0
    .goto 1439/1,-680.48,6779.67,8,0
    .goto 1439/1,-663.45,6877.49,8,0
    .goto 1439/1,-679.17,6848.67,8,0
    .goto 1439/1,-666.73,6819.41,8,0
    .goto 1439/1,-680.48,6779.67,8,0
    .goto 1439/1,-663.45,6877.49
    .complete 947,2 --Death Cap (1)
    .goto 1439/1,-685.72,6746.49
-- step << NightElf !Druid
--     #softcore
--     #optional
--     #completewith CavetoAuber
--     .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
--     .target Spirit Healer
step << skip --logout skip
    #optional
    #label MushroomLS
    #completewith CavetoAuber
    .goto 1439,54.964,34.536
    .goto 1439,41.705,36.507,20 >>|cRXP_WARN_Springt auf die Spitze des Felsens auf der oberen Ebene in der Höhle. Positioniert euren Charakter, bis er so aussieht, als würde er schweben, und führt dann einen Logout-Skip durch, indem ihr euch aus- und wieder einloggt|r
step
    #completewith CavetoAuber
    >>Tötet |cRXP_ENEMY_Waldschreiterjunges|r. Plündert sie für |cRXP_LOOT_Schreiterfleisch|r
    >>|cRXP_WARN_Seid vorsichtig, denn sie|r |T132307:0|t[Fliehen] |cRXP_WARN_unter 30% Gesundheit|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
    .isQuestAvailable 2178
step
    #requires MushroomLS
    #completewith CavetoAuber
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r und |cRXP_ENEMY_Mondpircher|r. Plündert sie für |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #optional
    #label CavetoAuber
    #completewith CliffspringEnd
    .subzone 442 >> Reist nach Auberdine
step
    #label CliffspringEnd
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 4762 >> Gebt die Quest Der Cliffspring ab
    .accept 4763 >> Akzeptiert die Quest Die verderbten Schwarzfelle
    .target Thundris Windweaver
step
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Akzeptiert die Quest Schreitereintopf
    .turnin 2178 >> Gebt die Quest Schreitereintopf ab
    .target Alanndarian Nightsong
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
    .itemcount 5469,5 -- strider meat (5)
step << Druid
    #optional
    .isOnQuest 6122
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 6122 >> Gebt die Quest Die eigentliche Ursache ab
    .accept 6123 >> Akzeptiert die Quest Das Heilmittel sammeln
    .target Alanndarian Nightsong
step << Druid
    #optional
    .isQuestTurnedIn 6123
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 6123 >> Akzeptiert die Quest Das Heilmittel sammeln
    .target Alanndarian Nightsong
step << !NightElf
    #optional
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .accept 729 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Archaeologist Hollee
    .isQuestComplete 2138
step
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >> Gebt die Quest Tiefer Ozean, weites Meer ab
    .target Gorbold Steelhand
step << !NightElf
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .accept 729 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Archaeologist Hollee
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Gebt die Quest Ausrottung der Infizierten ab
    .accept 2139 >> Akzeptiert die Quest Tharnariuns Hoffnung
    .target Tharnariun Treetender
    .isQuestComplete 2138
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2139 >> Akzeptiert die Quest Tharnariuns Hoffnung
    .target Tharnariun Treetender
    .isQuestTurnedIn 2138
step
    .goto 1439/1,472.32,6438.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    >>|cRXP_WARN_Wählt den|r |T135641:0|t[Krummholzdolch] |cRXP_WARN_aus, da ihr versuchen solltet, einen|r |T135641:0|t[Dolch] |cRXP_WARN_für eure|r |T132290:0|t[Gifte] |cRXP_WARN_Quest später zu haben|r << Rogue
    .turnin 4813 >> Gebt die Quest Die Fragmente im Inneren ab
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439/1,467.08,6409.38
    >>|cRXP_WARN_Benutzt die|r |T133748:0|t[Leere Säuberungsschale] |cRXP_WARN_beim Auberdine-Mondbrunnen|r
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .use 12346
    .isOnQuest 4763
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Barithras Moonshade|r
    .turnin 947 >> Gebt die Quest Höhlenpilze ab
    .accept 948 >> Akzeptiert die Quest Onu
    .target Barithras Moonshade
step
    .goto 1439/1,504.41,6402.39
    >>Klickt das |cRXP_PICK_Gesucht-Plakat|r
    .accept 4740 >> Akzeptiert die Quest GESUCHT: Gurgelbacke!
-- step << NightElf !Druid
--     .goto 1439,36.767,44.285
--     #optional
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laird|r
--     .accept 6343 >> Accept Return to Nessa
--     .isQuestAvailable 6343
--     .target Laird
step
    #optional
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Gebt die Quest Meeresfrüchte ab
    .target Gubber Blump
    .isQuestComplete 1138
step
    #optional
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4723 >> Gebt die Quest Gestrandete Meereskreatur ab
    .turnin 4725 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4723
step
    #optional
    #label End
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4725 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .target Gwennyth Bly'Leggonde


----Start of Druid Quest section----


step << Druid
    #optional
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    .xp 16 >> Farmt bis Stufe 16
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
step << Druid
    #optional
    #completewith DruidLesson
    .goto 1439/1,561.66,6343.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Caylais Mondfeder|r
    .fly Teldrassil >> Fliegt nach Teldrassil
    .target Caylais Moonfeather
step << NightElf Druid
    #optional
    .goto 1438/1,950.52,8694.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6343 >> Gebt die Quest Rückkehr zu Nessa ab
    .target Nessa Shadowsong
step << Druid
    #optional
    #label DruidLesson
    #completewith next
    .goto 1438/1,965.80,8780.95
    .zone Darnassus >> Nimm das Lila Portal nach Darnassus
step << Druid
    .goto 1457/1,2563.98,10179.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mathrengyl Bärenfährte|r
    .accept 26 >> Akzeptiert die Quest Eine wertvolle Lektion
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Mathrengyl Bearwalker
step << Druid
    #optional
    #completewith next
    .abandon 729 >> Brecht die Quest Der geistesabwesende Ausgrabungsleiter ab, um die Quest Ärger in Dunkelküste zu akzeptieren?
step << NightElf Druid
    .goto 1438/1,2607.86,9641.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Chefarchäologe Grauflaum|r
    .accept 730 >> Akzeptiert die Quest Ärger in Dunkelküste?
    .target Chief Archaeologist Greywhisker
step << Druid
    #optional
	#completewith TotL
	.cast 18960 >> Caste Teleportieren: Moonglade
	.zoneskip Moonglade
step << Druid
    .goto 1450/1,-2676.22,8019.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dendrite Sternenschauer|r
    .turnin 26 >> Gebt die Quest Eine wertvolle Lektion ab
    .accept 29 >> Akzeptiert die Quest Prüfung des Sees
    .target Dendrite Starblaze
step << Druid
    .goto 1450/1,-2595.43,7697.24
    >>Schwimmen into Lake Elune'Ara
    >>Öffnet einen |cRXP_PICK_Schmuckstückbehälter|r. Plündert sie für ein |T134125:0|t[Schrein-Schmuckstück]
    >>|cRXP_WARN_Es kann an verschiedenen Orten unter Wasser spawnen|r
    .collect 15877,1,29,1 -- Shrine Bauble (1)
step << Druid
    #optional
    #completewith next
    .cast 18960 >> Caste Teleportieren: Moonglade
    .itemcount 15877,1 -- Shrine Bauble (1)
step << Druid
    .goto 1450/1,-2212.85,7854.68
    >>|cRXP_WARN_Benutzt das|r |T134125:0|t[Schrein-Schmuckstück] |cRXP_WARN_beim Schrein von Remulos Baum|r
    .complete 29,1 --Complete the Trial of the Lake.
    .use 15877
step << Druid
    #label TotL
    .goto 1450/1,-2224.18,7874.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tajarri|r
    .turnin 29 >> Gebt die Quest Prüfung des Sees ab
    .accept 272 >> Akzeptiert die Quest Prüfung des Seelöwen
    .target Tajarri
step << Druid
    #optional
    .hs >> Benutzt euren Ruhestein zum Dunkelküste
    .zoneskip Darkshore


----End of Druid Quest section----


]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
#version 1
<< Alliance
#group RestedXP Forever Dungeonführer (A)
#subgroup Speedrun Dungeonführer 1-20
--#groupid RXP-SRGCE-A1
#name 16-19 Dunkelküste
#next 19-20 Rotkammgebirge;20-21 Dunkelküste/Eschental << !Hunter
#next 19-21 Dunkelküste/Eschental << Hunter

-- step << NightElf !Druid
--     #optional
--     #completewith PortalDarn
--     .goto 1439/1,561.66,6343.27
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
--     .fly Teldrassil >> Fly to Teldrassil
--     .target Caylais Moonfeather
--     .zoneskip Teldrassil
-- step << NightElf !Druid
--     .goto 1438/1,950.52,8694.07
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nessa Shadowsong|r
--     .turnin 6343 >> Turn in Return to Nessa
--     .target Nessa Shadowsong
-- step << NightElf !Druid
--     #completewith next
--     #label PortalDarn
--     .goto 1438/1,965.80,8780.95
--     .zone Darnassus >> Take the purple portal into Darnassus
-- step << NightElf Warrior
--     .goto 1457/1,2316.91,9991.88
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
--     .trainer >> Train your class spells
--     .target Arias'ta Bladesinger
-- step << NightElf Warrior
--     .goto 1457/1,2329.19,9908.60
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilyenia Moonfire|r
--     .skipgossipid 96881
--     .train 2567 >> Train Thrown
--     .target Ilyenia Moonfire
-- step << NightElf Hunter
--     #completewith start
--     .goto 1457/1,2511.01,10178.05
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
--     .trainer >> Train your class spells
--     .target Jocaste
-- step << NightElf Hunter
--     #completewith start
--     #label RecruveReinforced
--     .goto 1457/1,2268.76,9770.63
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Landria|r
--     >>|cRXP_WARN_Buy a|r |T135489:0|t[Heavy Recurve Bow] |cRXP_WARN_if you can afford it. If not then buy a|r |T135490:0|t[Reinforced Bow]
--     >>|cRXP_WARN_Stock up on|r |T132382:0|t[Sharp Arrows]
--     .collect 3027,1
--     .target Landria
--     .money <0.3812
--     .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.50
-- step << Hunter
--     #requires RecruveReinforced
--     #completewith next
--     +|cRXP_WARN_Equip the|r |T135489:0|t[Heavy Recurve Bow]
--     .use 3027
--     .itemcount 3027,1
--     .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
--     .xp <20,1
-- step << Hunter
--     #requires RecruveReinforced
--     #completewith next
--     +|cRXP_WARN_Equip the|r |T135490:0|t[Reinforced Bow]
--     .use 3026
--     .itemcount 3026,1
--     .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.49
-- step << NightElf Rogue
--     >>Enter the Cenarion Enclave
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r
--     .goto 1457/1,2601.39,10120.53,15,0
--     .goto 1457/1,2546.78,10083.62
--     .trainer >> Train your class spells
--     .target Syurna
-- step << NightElf !Druid
--     #optional
--     #completewith next
--     .abandon 729 >> Abandon The Absent Minded Prospector to accept the quest Trouble In Darkshore?
-- step << NightElf !Druid
--     .goto 1438/1,2607.86,9641.94
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
--     .accept 730 >> Accept Trouble In Darkshore?
--     .target Chief Archaeologist Greywhisker
-- step << NightElf Priest
--     .goto 1457/1,2537.25,9654.40
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jandria|r
--     .trainer >> Train your class spells
--     .target Jandria
-- step << NightElf !Druid
--     #label start
--     .hs >> Hearth to Auberdine
step
    .goto 1439/1,504.41,6402.39
    >>Klickt das |cRXP_PICK_Gesucht-Plakat|r
    .accept 4740 >> Akzeptiert die Quest GESUCHT: Gurgelbacke!
step << NightElf
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .turnin 730 >> Gebt die Quest Ärger in Dunkelküste? ab
    .accept 729 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Archaeologist Hollee
    .isOnQuest 730
step << NightElf
    #optional
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .accept 729 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Archaeologist Hollee
step
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 4762 >> Gebt die Quest Der Cliffspring ab
    .accept 4763 >> Akzeptiert die Quest Die verderbten Schwarzfelle
    .target Thundris Windweaver
step
    .goto 1439/1,467.08,6409.38
    .use 12346 >>|cRXP_WARN_Benutzt|r |T133748:0|t[Leere Säuberungsschale] |cRXP_WARN_beim|r |cRXP_PICK_Auberdine-Mondbrunnen|r
    .collect 12347,1,4763,1
    .isOnQuest 4763
step
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>Tötet |cRXP_ENEMY_Anaya Dawnrunner|r. Plündert sie für ihren |cRXP_LOOT_Anhänger|r
    -->>|cRXP_WARN_Be aware that she has a 7-8 minute spawn time and 4 different spawnpoints across Ameth'Aran|r
    --much faster spawn time now on forever
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .solo
step
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>Tötet |cRXP_ENEMY_Anaya Dawnrunner|r. Plündert sie für ihren |cRXP_LOOT_Anhänger|r
    -->>|cRXP_WARN_Be aware that she has a 7-8 minute spawn time and 4 different spawnpoints across Ameth'Aran|r
    -->>|cRXP_WARN_You may want to group with others nearby if you can't find her. Ask in General Chat (/1) to group with anyone else that is also looking for her|r
    --much faster spawn time now on forever
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .group
step
    #optional
    #completewith CompleteFangs
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r und |cRXP_ENEMY_Mondpircher|r. Plündert sie für |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
step
    #loop
    .waypoint 1439/1,385.20,5393.69,0
    .waypoint 1439/1,155.30,5374.48,0
    .waypoint 1439/1,322.32,4907.25,0
    .waypoint 1439/1,385.20,5393.69,70,0
    .waypoint 1439/1,155.30,5374.48,70,0
    .waypoint 1439/1,322.32,4907.25,70,0
    >>Tötet |cRXP_ENEMY_Tollwütiger Distelbär|r im südlichen Dunkelküste
    >>|cRXP_WARN_Seid vorsichtig, denn sie wirken|r |T135914:0|t[Tollwut] |cRXP_WARN_wenn ihr sie nicht schnell genug tötet (Sofort Nahkampf: Reduziert alle Gesundheitsregeneration um 50% für 10 Minuten)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << Druid
    #sticky
    #label earthroot
    >>Sammelt 5 |T134187:0|t[Erdwurzel] während ihr unterwegs seid|r
    .complete 6123,1 --Earthroot (5)
    .isOnQuest 6123
step << Druid
    .goto 1439/1,98.97,6329.03,90,0
    .goto 1439/1,105.52,6189.30,90,0
    .goto 1439/1,164.47,6036.47,90,0
    .goto 1439/1,-51.68,6136.90,90,0
    .goto 1439/1,-25.48,6005.90
    .goto 1439/1,98.97,6329.03,0
    .goto 1439/1,105.52,6189.30,0
    .goto 1439/1,164.47,6036.47,0
    .goto 1439/1,-51.68,6136.90,0
    >>Beute |cRXP_LOOT_Lunarfungus|r auf dem Boden in der Höhle
    .complete 6123,2
    .isOnQuest 6123
step
    #completewith OnuGrove
    .goto 1439,43.555,76.293,80 >> Reist zum Hain der Uralten
step
    #label OnuGrove
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 952 >> Gebt die Quest Der Hain der Uralten ab << NightElf
    .turnin 948 >> Gebt die Quest Onu ab
    .accept 944 >> Akzeptiert die Quest Die Meistergleve
    .target Onu
step
    #completewith MasterG
    >>Tötet |cRXP_ENEMY_Mondpirscherpatriarch|r. Plündert sie für |cRXP_LOOT_Feiner Mondpirscherpelz|r
    >>Passt auf, denn sie können |T132090:0|t[Schwäche ausnutzen] wirken, einen Hinterhalts-Angriff, der 20-40 Schaden verursacht, wenn ihr von Euch den Rücken zu ihnen wendet
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire
    .isOnQuest 986
step
    #completewith MasterG
    #optional
    .goto 1439/1,413.37,4818.17,0
    >>Tötet |cRXP_ENEMY_Ergrauter Distelbär|r. Plündert sie für ihren |cRXP_LOOT_Ergrauter Skalp|r
    >>|cRXP_WARN_Passt auf, wenn sie|r |T132152:0|t[Verheeren] |cRXP_WARN_wirken, einen sofortigen Angriff, der 20-40 Schaden verursacht und euch für 2 Sek. zu Boden wirft|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #optional
    .goto 1439,41.390,80.563
    >>Klickt auf die|cRXP_PICK_Dröhnkiste 525|r auf dem Boden
    .turnin 1003 >> Gebt die Quest Dröhnkiste 525 ab
    .isQuestComplete 1003
step
    #label MasterG
    .goto 1439/1,417.30,4575.82,100 >> Reist zur Meistergleve
    .subzoneskip 449
    .isOnQuest 944
step
    #optional
    #completewith FunandGames
    >>Tötet |cRXP_ENEMY_Twilight-Jünger|r und |cRXP_ENEMY_Twilight-Rohling|r. Plündert sie für das |T133743:0|t[|cRXP_LOOT_Buch: Die Macht in der Tiefe|r]
    *|cRXP_WARN_Passt auf, da die |cRXP_ENEMY_Twilight-Rohling|r euch für 6 Sek.|r |T132343:0|t[Entwaffnen] |cRXP_WARN_können|r << Rogue/Paladin/Warrior/Shaman
    *|cRXP_WARN_Passt auf, da die |cRXP_ENEMY_Zwielicht Jünger|r |r |T135953:0|t[Erneuerung] wirken |cRXP_WARN_und eine 3-Sekunden-|r |T135915:0|t[Heilung]
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
step
    #optional
    .goto 1439/1,390.700,4542.700
    >>Entdeckt Die Meistergleve
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #optional
    #completewith next
    .cast 5809 >> |cRXP_WARN_Benutzt die|r |T134715:0|t[Wahrsagephiole] |cRXP_WARN_und platziert sie auf dem Boden|r
    .use 5251
step
    .goto 1439/1,417.30,4575.82
    >>|cRXP_WARN_Klickt die |cRXP_PICK_Wahrsageschale|r auf dem Boden|r
    .turnin 944 >> Gebt die Quest Die Meistergleve ab
    .accept 949 >> Akzeptiert die Quest Das Twilight-Lager
    .use 5251
step
    #label FunandGames
    .goto 1439,38.537,86.050
    >>Klickt den |cRXP_PICK_Twilight-Foliant|r auf dem nördlichen Sockel
    .turnin 949 >> Gebt die Quest Das Twilight-Lager ab
    .accept 950 >> Akzeptiert die Quest Rückkehr zu Onu
    .accept 98042 >>Akzeptiert die Quest Ein Blick in den Abgrund
step
    #completewith TheryluneEnd
    >>Tötet |cRXP_ENEMY_Twilight-Jünger|r und |cRXP_ENEMY_Twilight-Rohling|r. Plündert sie für das |cRXP_LOOT_Unvergleichliches Auge|r und |T133743:0|t[|cRXP_LOOT_Buch: Die Macht in der Tiefe|r]
    *|cRXP_WARN_Passt auf, da die |cRXP_ENEMY_Twilight-Rohling|r euch für 6 Sek.|r |T132343:0|t[Entwaffnen] |cRXP_WARN_können|r << Rogue/Paladin/Warrior/Shaman
    *|cRXP_WARN_Passt auf, da die |cRXP_ENEMY_Zwielicht Jünger|r |r |T135953:0|t[Erneuerung] wirken |cRXP_WARN_und eine 3-Sekunden-|r |T135915:0|t[Heilung]
    .complete 98042,1 -- Peerless Eye (1)
    .mob +Twilight Disciple
    .mob +Twilight Thug
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .disablecheckbox
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Therylune|r. Es wird eine Escort quest starten
    >>|cRXP_WARN_Überspringt diesen Schritt, falls sie nicht da ist|r
    .accept 945 >> Akzeptiert die Quest Therylunes Flucht
    .target Therylune
step
    #label TheryluneEnd
    .goto 1439/1,288.26,4530.40
    >>|cRXP_WARN_Eskortiert |cRXP_FRIENDLY_Therylune|r aus Der Meistergleve|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945
step
    #loop
    .goto 1439/1,376.800,4608.600,40,0
    .goto 1439/1,453.100,4580.200,40,0
    .goto 1439/1,409.4366,4521.0151,40,0
    >>Tötet |cRXP_ENEMY_Twilight-Jünger|r und |cRXP_ENEMY_Twilight-Rohling|r. Plündert sie für das |cRXP_LOOT_Unvergleichliches Auge|r und |T133743:0|t[|cRXP_LOOT_Buch: Die Macht in der Tiefe|r]
    *|cRXP_WARN_Passt auf, da die |cRXP_ENEMY_Twilight-Rohling|r euch für 6 Sek.|r |T132343:0|t[Entwaffnen] |cRXP_WARN_können|r << Rogue/Paladin/Warrior/Shaman
    *|cRXP_WARN_Passt auf, da die |cRXP_ENEMY_Zwielicht Jünger|r |r |T135953:0|t[Erneuerung] wirken |cRXP_WARN_und eine 3-Sekunden-|r |T135915:0|t[Heilung]
    .complete 98042,1 -- Peerless Eye (1)
    .mob +Twilight Disciple
    .mob +Twilight Thug
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .disablecheckbox
step
    #optional
    #sticky
    .isQuestTurnedIn 949
    .destroy 5251 >> Zerstöre die |T134715:0|t[Wahrsagephiole] von Euch aus dem Inventar, da sie nicht mehr benötigt wird
step
    #optional
    #completewith TurtleSouth
    #completewith prospector << Hunter
    >>Tötet |cRXP_ENEMY_Mondpirscherpatriarch|r. Plündert sie für |cRXP_LOOT_Feiner Mondpirscherpelz|r
    >>Passt auf, denn sie können |T132090:0|t[Schwäche ausnutzen] wirken, einen Hinterhalt-Angriff, der 20-40 Schaden verursacht, wenn ihr von Euch den Rücken zu ihnen wendet
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .isOnQuest 986
    .unitscan Moonstalker Sire
step
    #optional
    .goto 1439/1,227.35,4575.38,50,0
    .goto 1439/1,205.73,4639.130,50,0
    .goto 1439/1,129.10,4741.75,50,0
    .goto 1439/1,86.52,4839.13,50,0
    .goto 1439/1,338.70,4821.22,50,0
    .goto 1439/1,452.67,4684.98
    >>Tötet |cRXP_ENEMY_Ergrauter Distelbär|r. Plündert sie für ihren |cRXP_LOOT_Ergrauter Skalp|r
    >>|cRXP_WARN_Passt auf, wenn sie|r |T132152:0|t[Verheeren] |cRXP_WARN_wirken, einen sofortigen Angriff, der 20-40 Schaden verursacht und euch für 2 Sek. zu Boden wirft|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #label LastBuzz
    .goto 1439,41.390,80.563
    >>Klickt auf die|cRXP_PICK_Dröhnkiste 525|r auf dem Boden
    .turnin 1003 >> Gebt die Quest Dröhnkiste 525 ab
    .isQuestComplete 1003
step
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Gebt die Quest Rückkehr zu Onu ab
    .timer 11.5,Return to Onu RP
--  .timer 14,Return to Onu RP
    .accept 951 >> Akzeptiert die Quest Mathystra-Relikte
    .target Onu
step
    #optional
    >>|cRXP_WARN_Benutzt das |T133743:0|t[|cRXP_LOOT_Buch: Die Macht in der Tiefe|r], um die Quest zu beginnen|r
    .accept 968 >> Akzeptiert die Quest Die Macht in der Tiefe
    .use 5352
    .itemcount 5352,1
step << Hunter
    #optional
    .goto 1439/1,417.30,4575.82
    .xp 17 >> Farmt bis Stufe 17
step << Hunter
    #sticky
    #label prospector
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r
    >>|cRXP_WARN_Ihr müsst möglicherweise warten, bis er respawnt oder bis andere die Eskorte beenden|r
    .turnin 729 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .target Prospector Remtravel
step << Hunter
    .goto 1439/1,602.01,4678.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r. Dieser wird eine Escort Quest starten
    .accept 731,1 >> Der geistesabwesende Ausgrabungsleiter annehmen
    >>|cRXP_WARN_Diese Quest ist SEHR schwierig. Ihr könnt diesen Schritt überspringen und mit Level 19 zurückkehren|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Klickt hier für eine Videoanleitung|r
    .target Prospector Remtravel
step << Hunter
    #requires prospector
    >>|cRXP_WARN_Eskortiert |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r durch die Ausgrabung|r
    >>|cRXP_WARN_Diese Quest ist SEHR schwierig. Ihr könnt diesen Schritt überspringen und mit Level 19 zurückkehren|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Klickt hier für eine Videoanleitung|r
    .complete 731,1
    .isOnQuest 731
step << Hunter
    .goto 1439,31.251,87.419
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4733 >> Akzeptiert die Quest Gestrandete Meereskreatur
    >>|cRXP_WARN_Diese Quest kann SEHR schwierig sein. Bekämpft die |cRXP_ENEMY_Murlocs|r einzeln, Andernfalls könntest du die Aggro von mehreren gleichzeitig auf dich ziehen.|r
    >>|cRXP_WARN_Achtet auf |cRXP_ENEMY_Orakel der Grauflossen|r'|r |T136048:0|t[Blitzschlag] |cRXP_WARN_Schaden, sie können auch mit|r |T136052:0|t[Welle der Heilung]|r heilen
    .link https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_Klickt hier für einen Videoleitfaden|r
step
    #completewith CompleteThistleBears
    >>Tötet |cRXP_ENEMY_Verkrusteter Gezeitenkriecher|r und |cRXP_ENEMY_Riffkriecher|r. Plündert sie für |cRXP_LOOT_Feine Krebsbrocken|r
    >>Seid vorsichtig da die |cRXP_ENEMY_Riffkriecher|r |T132155:0|t[Muskelriss] wirken.Ein sofortiger Angriff, der 30-55 Schaden verursacht
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Reef Crawler
    .mob Encrusted Tide Crawler
step << Hunter
    .goto 1439,31.229,85.564
    >>|cRXP_WARN_Achtet auf |cRXP_ENEMY_Orakel der Grauflossen|r'|r |T136048:0|t[Blitzschlag] |cRXP_WARN_Schaden, sie können auch mit|r |T136052:0|t[Welle der Heilung]|r heilen
    >>Passt auf, denn |cRXP_ENEMY_Gezeitenjäger der Grauflossen|r können |T136016:0|t[|cRXP_FRIENDLY_Gift|r] wirken im Nahkampf und hinterlassen einen DoT, der 13 Schaden alle 3 Sek. für 30 Sek. verursacht
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4732 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    #label TurtleSouth
    .goto 1439,31.690,83.700
    >>|cRXP_WARN_Achtet auf |cRXP_ENEMY_Orakel der Grauflossen|r'|r |T136048:0|t[Blitzschlag] |cRXP_WARN_Schaden, sie können auch mit|r |T136052:0|t[Welle der Heilung]|r heilen
    >>Passt auf, denn |cRXP_ENEMY_Gezeitenjäger der Grauflossen|r können |T136016:0|t[|cRXP_FRIENDLY_Gift|r] wirken im Nahkampf und hinterlassen einen DoT, der 13 Schaden alle 3 Sek. für 30 Sek. verursacht
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4731 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step << !Hunter
    .goto 1439,32.644,80.711
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4730 >> Akzeptiert die Quest Gestrandete Meereskreatur
step << Hunter
    .goto 1439,32.644,80.711
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4730 >> Akzeptiert die Quest Gestrandete Meereskreatur
step << Druid
    #optional
    >>|cRXP_WARN_Beendet das Sammeln der |T134187:0|t[Erdwurzeln] durch |T136065:0|t[Kräuterkunde] und seltene |rZerschlagene Truhen|cRXP_PICK_|r
    >>|cRXP_WARN_Falls ihr aufgebt und nicht genug finden könnt, überspringt diesen Schritt|r
    .complete 6123,1 --Earthroot (5)
    .isOnQuest 6123
    .skill herbalism,<15,1
--XX Add waypoints later
step
    #label Murk
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto 1439/1,541.75,4991.52
    >>|cRXP_WARN_Stellt sicher, dass ihr überprüft, ob |cRXP_ENEMY_Gurgelbacke|r bereits im Wasser ist (wenn der Kampf zuvor fehlgeschlagen ist oder ihr den |cRXP_ENEMY_Jäger der Grauflossen|r in der Welle, in der er spawnt, am Leben gelassen habt)|r
    >>Tötet die |cRXP_ENEMY_Krieger der Grauflossen|r und |cRXP_ENEMY_Jäger der Grauflossen|r im Lager
    >>|cRXP_WARN_Bewegt euch zum Freudenfeuer in der Mitte des Lagers, um den |cRXP_ENEMY_Gurgelbacke|r-Kampf zu beginnen:|r
    >>|cRXP_WARN_3 Wellen spawnen aus dem Wasser, jede nach dem Töten der vorherigen Welle: Welle 1 hat 3 Level 12-13 |cRXP_ENEMY_Küstenläufer der Grauflossen|r, Welle 2 hat 2 Level 15-16 |cRXP_ENEMY_Krieger der Grauflossen|r, und Welle 3 hat ein Level 19 |cRXP_ENEMY_Gurgelbacke|r und einen Level 16-17 |cRXP_ENEMY_Jäger der Grauflossen|r. Ihr könnt euch vom Freudenfeuer entfernen, um nicht mit der nächste Welle in den Kampf zu geraten.|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
    #label CompleteThistleBears
    .goto 1439,35.968,70.807
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4728 >> Akzeptiert die Quest Gestrandete Meereskreatur
step << Druid
    #label Southcrabs
    #requires earthroot
	#completewith FlyDarkshore
	.cast 18960 >> Caste Teleportieren: Moonglade
	.zoneskip Moonglade
step << Druid
    #requires earthroot
    .goto 1450/1,-2593.82,7867.06
	>>Gehe nach Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
    .xp <18,1
step << Druid
    #label FlyDarkshore
    .goto 1450/1,-2491.79,7454.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Sindrayl|r
    .fly Auberdine >> Fliegt zur Dunkelküste
    .target Sindrayl
    .zoneskip Darkshore
step << NightElf !Druid/Dwarf Hunter/Human Hunter/Skyborne Hunter
    #label Southcrabs
    #completewith CleansingTharnariun
    .subzone 442 >> Reist nach Auberdine
step
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Kehrt zum |cRXP_FRIENDLY_Cerellean Whiteclaw|r auf dem Dock zurück
step
    #optional
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .turnin 963 >> Gebt die Quest In ewiger Liebe ab
    .target Cerellean Whiteclaw
    .isQuestComplete 963
step
    #optional
    #completewith CleansingTharnariun
    .abandon 963 >> Brecht die Quest In ewiger Liebe ab
step
    #label BeachedTurnins
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4728 >> Gebt die Quest Gestrandete Meereskreatur ab
    .turnin 4730 >> Gebt die Quest Gestrandete Meereskreatur ab
    .turnin 4731 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .turnin 4732 >> Gebt die Quest Gestrandete Meeresschildkröte ab << Hunter
    .turnin 4733 >> Gebt die Quest Gestrandete Meereskreatur ab << Hunter
    .target Gwennyth Bly'Leggonde
step
    #optional
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Gebt die Quest Meeresfrüchte ab
    .isQuestComplete 1138
    .target Gubber Blump
step
    .goto 1439/1,531.27,6403.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Laird|r und |cRXP_FRIENDLY_Allyndia|r
    .vendor >> |cRXP_BUY_Verkaufe und fülle den Vorrat an Essen und Wasser auf|r
    .target Laird
    .target Allyndia
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4740 >> Gebt die Quest GESUCHT: Gurgelbacke! ab
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439/1,492.300,6581.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker::3649|r
    .target Thundris Windweaver::3649
    .turnin 98042 >>Gebt die Quest Ein Blick in den Abgrund ab
step
    #label CleansingTharnariun
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Gebt die Quest Ausrottung der Infizierten ab
    .accept 2139 >> Akzeptiert die Quest Tharnariuns Hoffnung
    .target Tharnariun Treetender
step << Hunter
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .turnin 731 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .accept 741 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Archaeologist Hollee
    .isQuestComplete 731
step << Hunter
    #optional
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .accept 741 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Archaeologist Hollee
    .isQuestTurnedIn 731
step << Hunter
    #optional
    .goto 1439/1,491.97,6560.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dalmond|r
    .vendor >>|cRXP_BUY_Kauft Munition nach|r
    .target Dalmond
step << Druid
    .goto 1439/1,472.32,6556.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 6123 >> Gebt die Quest Das Heilmittel sammeln ab
    .isQuestComplete 6123
--     .accept 6124 >> Accept Curing the Sick
-- step << Druid
--     #optional
--     .goto 1439/1,472.32,6556.100
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
--     .accept 6124 >> Accept Curing the Sick
--     .target Alanndarian Nightsong
--     .isQuestTurnedIn 6123
step << Druid
    #optional
    #completewith Buzzbox323End
    .abandon 6123 >> Brecht die Quest Das Heilmittel sammeln ab
-- step << Druid
--     #optional
--     #completewith Buzzbox323End
--     .goto 1439/1,-313.68,6883.60,0
--     .goto 1439/1,98.97,7237.30,0
--     .goto 1439/1,347.87,6813.73,0
--     >>|cRXP_WARN_Use the|r |T132801:0|t[Curative Animal Salve] |cRXP_WARN_on|r |cRXP_ENEMY_Sickly Deer|r
--     .complete 6124,1 -- Sickly Deer cured (10)
--     .mob Sickly Deer
--     .isQuestAvailable 1138
-- step << Druid
--     #sticky
--     #label SicklyDeers
--     #loop
--     .goto 1439/1,-313.68,6883.60,0
--     .goto 1439/1,98.97,7237.30,0
--     .goto 1439/1,347.87,6813.73,0
--     .waypoint 1439/1,-313.68,6883.60,40,0
--     .waypoint 1439/1,98.97,7237.30,40,0
--     .waypoint 1439/1,347.87,6813.73,40,0
--     >>|cRXP_WARN_Use the|r |T132801:0|t[Curative Animal Salve] |cRXP_WARN_on|r |cRXP_ENEMY_Sickly Deer|r
--     .complete 6124,1 -- Sickly Deer cured (10)
--     .mob Sickly Deer
--     .use 15826
--     .isQuestTurnedIn 1138
step
    #sticky
    #label Blackwood1
    #completewith Xabraxxis
    .goto 1439/1,-489.22,6875.30,0
    .goto 1439/1,-376.56,6807.62
    >>Öffnet die |cRXP_PICK_Getreidelager der Schwarzfelle|r. Plündert sie für die |T134059:0|t|cRXP_LOOT_[Getreideprobe der Schwarzfelle]|r
    >>|cRXP_WARN_Das Plündern davon wird 2 |cRXP_ENEMY_Furbolg der Schwarzfelle|r spawnen, die euch angreifen und auf euch zulaufen. Seid bereit, gegen sie zu kämpfen oder setzt sie zurück|r
    >>|cRXP_WARN_Wenn ihr seht, dass |cRXP_ENEMY_Xabraxxis|r im Chat schreit, oder seht, dass jemand gegen ihn kämpft, helft ihnen. Öffnet |cRXP_PICK_Xabraxxis Dämonentasche|r, den er auf dem Boden fallen lässt. Plündert ihn für den|r |cRXP_LOOT_Talisman der Verderbnis|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    .goto 1439/1,-503.63,6732.95,45,0
    .goto 1439/1,-430.27,6662.65
    >>Tötet die |cRXP_ENEMY_Höhlenmutter|r
    >>|cRXP_WARN_Seid vorsichtig, denn die |cRXP_ENEMY_Distelbärjunges|r können|r |T132152:0|t[Verheeren]|cRXP_WARN_,wirken. Einen sofortigen Nahkampfangriff, der euch für 2 Sek. betäubt|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
step
    #sticky
    #requires Blackwood1
    #label Blackwood2
    #completewith Xabraxxis
    .goto 1439/1,-489.22,6875.30,0
    .goto 1439/1,-453.20,6870.500
    >>Öffnet die |cRXP_PICK_Blackwood Nut Stores|r. Plündert sie für die |T133944:0|t|cRXP_LOOT_[Nussprobe der Schwarzfelle]|r
    >>|cRXP_WARN_Das Plündern davon wird 2 |cRXP_ENEMY_Furbolg der Schwarzfelle|r spawnen, die euch angreifen und auf euch zulaufen. Seid bereit, gegen sie zu kämpfen oder setzt sie zurück|r
    >>|cRXP_WARN_Wenn ihr seht, dass |cRXP_ENEMY_Xabraxxis|r im Chat schreit, oder seht, dass jemand gegen ihn kämpft, helft ihnen. Öffnet |cRXP_PICK_Xabraxxis Dämonentasche|r, den er auf dem Boden fallen lässt. Plündert ihn für den|r |cRXP_LOOT_Talisman der Verderbnis|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #sticky
    #requires Blackwood2
    #label Blackwood3
    #completewith Xabraxxis
    .goto 1439/1,-489.22,6875.30,0
    .goto 1439/1,-520.66,6874.43
    >>Öffnet die |cRXP_PICK_Obstlager der Schwarzfelle|r. Plündert sie für die |T134013:0|t|cRXP_LOOT_[Obstprobe der Schwarzfelle]|r
    >>|cRXP_WARN_Das Plündern davon wird 2 |cRXP_ENEMY_Furbolg der Schwarzfelle|r spawnen, die euch angreifen und auf euch zulaufen. Seid bereit, gegen sie zu kämpfen oder setzt sie zurück|r
    >>|cRXP_WARN_Wenn ihr seht, dass |cRXP_ENEMY_Xabraxxis|r im Chat schreit, oder seht, dass jemand gegen ihn kämpft, helft ihnen. Öffnet |cRXP_PICK_Xabraxxis Dämonentasche|r, den er auf dem Boden fallen lässt. Plündert ihn für den|r |cRXP_LOOT_Talisman der Verderbnis|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #optional
    #requires Blackwood3
    #completewith Xabraxxis
    .goto 1439/1,-489.22,6875.30
    .cast 16072 >> |cRXP_WARN_Benutzt die|r |T134712:0|t[Gefüllte Säuberungsschale] |cRXP_WARN_beim |cRXP_PICK_Feuer|r um|r |cRXP_ENEMY_Xabraxxis|r zu beschwören
    .timer 17,Die verderbten Schwarzfelle RP
    .use 12347
step
    #requires Blackwood3
    #label Xabraxxis
    .goto 1439/1,-489.22,6875.30
    >>Tötet |cRXP_ENEMY_Xabraxxis|r. Öffnet die |cRXP_PICK_Xabraxxis Dämonentasche|r, die er auf den Boden fallen lässt. Plündert sie für den |cRXP_LOOT_Talisman der Verderbnis|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step << !Hunter
    #label CompleteFangs
    .goto 1439/1,-503.63,6866.13
    .xp 18 >> Farmt bis Stufe 18
step << Hunter
    #label CompleteFangs
    .goto 1439/1,-503.63,6866.13
    .xp 18.75 >> Farmt bis 18 + 75%
    >>Stellt sicher, dass euer Ruhestein Ablinkzeit <10 min ist
    >>Überspringt diesen Schritt, wenn das Gebiet zu voll ist
step
    #label LateStalkerFangs
    #optional
    #loop
    .goto 1439,53.629,26.054,0
    .goto 1439,54.204,30.475,0
    .goto 1439,49.775,30.351,0
    .goto 1439,48.894,26.514,0
    .goto 1439,48.022,27.199,60,0
    .goto 1439,48.894,26.514,60,0
    .goto 1439,49.558,26.087,60,0
    .goto 1439,49.902,27.511,60,0
    .goto 1439,49.776,28.393,60,0
    .goto 1439,49.775,30.351,60,0
    .goto 1439,50.818,30.486,60,0
    .goto 1439,50.689,32.001,60,0
    .goto 1439,51.267,32.319,60,0
    .goto 1439,54.204,30.475,60,0
    .goto 1439,53.899,28.638,60,0
    .goto 1439,53.049,27.983,60,0
    .goto 1439,52.764,26.312,60,0
    .goto 1439,53.629,26.054,60,0
    >>Tötet |cRXP_ENEMY_Mondpirscherwicht|r und |cRXP_ENEMY_Mondpircher|r. Plündert sie für |cRXP_LOOT_Mondpirscher-Fangzahn|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
    .isOnQuest 1002
--XX Can do later during Pelts but better if player gets more xp beforehand
step
    .isQuestComplete 1002
    #label Buzzbox323End
    #requires SicklyDeers << Druid
    .goto 1439,51.288,24.554
    >>Klickt auf die|cRXP_PICK_Dröhnkiste 323|r auf dem Boden
    .turnin 1002 >> Gebt die Quest Dröhnkiste 323 ab
    .accept 1003 >> Akzeptiert die Quest Dröhnkiste 525
step
    #optional
    .isQuestTurnedIn 1002
    .goto 1439,51.288,24.554
    >>Klickt auf die|cRXP_PICK_Dröhnkiste 323|r auf dem Boden
    .accept 1003 >> Akzeptiert die Quest Dröhnkiste 525
step << !Hunter !Druid
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Balthule Schattenhieb|r
    .turnin 965 >> Gebt die Quest Der Turm von Althalaxx ab
    .accept 966 >> Der Turm von Althalaxx annehmen
    .target Balthule Shadowstrike
step << !Hunter !Druid
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.231,26.508,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,55.743,25.915,50,0
    >>Tötet |cRXP_ENEMY_Fanatikerin des dunklen Strangs|r. Plündert sie für ihr |cRXP_LOOT_Abgenutztes Pergament|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step << !Hunter !Druid
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Balthule Schattenhieb|r
    .turnin 966 >> Gebt die Quest Der Turm von Althalaxx ab
    .accept 967 >> Der Turm von Althalaxx annehmen
    .target Balthule Shadowstrike
step
    .goto 1439/1,-800.35,7370.92,55,0
    .goto 1439/1,-855.37,7449.96,55,0
    .goto 1439/1,-880.91,7302.36,55,0
    .goto 1439/1,-950.34,7258.26,55,0
    .goto 1439/1,-1005.36,7383.58
    >>Plündert |cRXP_LOOT_Mathystra-Relikte|r vom Boden
    .complete 951,1 -- Mathystra Relics (6)
step
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gelkak Gyromast|r
    .accept 2098 >> Akzeptiert die Quest Gyromasts Rettung
    .target Gelkak Gyromast
step
    #optional
    #completewith next
    .goto 1439/1,-732.88,7596.24,0
    >>Tötet |cRXP_ENEMY_Tobender Riffkriecher|r und |cRXP_ENEMY_Verkrusteter Gezeitenkriecher|r. Plündert sie für den |cRXP_LOOT_Unterteil von Gelkaks Schlüssel|r
    >>|cRXP_WARN_Seid vorsichtig vor den |cRXP_ENEMY_Tobender Riffkriecher|r'|r |T132152:0|t[Hauen] |cRXP_WARN_Fähigkeit. Ihr könnt bis zu 200 Schaden auf einmal durch ihre Nahkampfangriffe nehmen|r
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .goto 1439/1,-656.25,7801.04
    >>Tötet die |cRXP_ENEMY_Orakel der Grauflossen|r und die |cRXP_ENEMY_Gezeitenjäger der Grauflossen|r. Plündert sie für den |cRXP_LOOT_Mitte von Gelkaks Schlüssel|r
    >>|cRXP_WARN_Seid vorsichtig vor den |cRXP_ENEMY_Orakel der Grauflossen|r'|r |T136048:0|t[Blitzschlag] |cRXP_WARN_Schaden und sie können auch mit|r |T136052:0|t[Welle der Heilung]|r heilen
    >>Passt auf, denn |cRXP_ENEMY_Gezeitenjäger der Grauflossen|r können |T136016:0|t[|cRXP_FRIENDLY_Gift|r] wirken im Nahkampf und hinterlassen einen DoT, der 13 Schaden alle 3 Sek. für 30 Sek. verursacht
    >>|cRXP_WARN_Ihr könnt aus dem Sichtfeld der |cRXP_ENEMY_Orakel der Grauflossen|r'|r|T136048:0|t[Blitzschlag]|cRXP_WARN_ gehen. Geht um das versunkene Schiff, um den Schaden auszuweichen|r
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Tidehunter
    .mob Greymist Oracle
step
    .goto 1439/1,-699.48,7591.87,45,0
    .goto 1439/1,-579.61,7505.41,45,0
    .goto 1439/1,-421.10,7372.67,45,0
    .goto 1439/1,-767.60,7805.84
    >>Tötet |cRXP_ENEMY_Tobender Riffkriecher|r und |cRXP_ENEMY_Verkrusteter Gezeitenkriecher|r. Plündert sie für den |cRXP_LOOT_Unterteil von Gelkaks Schlüssel|r
    >>|cRXP_WARN_Seid vorsichtig vor den |cRXP_ENEMY_Tobender Riffkriecher|r'|r |T132152:0|t[Hauen] |cRXP_WARN_Fähigkeit. Ihr könnt bis zu 200 Schaden auf einmal durch ihre Nahkampfangriffe nehmen|r
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    #sticky
    #label foreststriders
    .goto 1439/1,-941.83,7756.06,55,0
    .goto 1439/1,-1080.03,7922.87,50,0
    .goto 1439/1,-1087.24,7780.51,50,0
    .goto 1439/1,-1069.55,7661.74,50,0
    .goto 1439/1,-1080.03,7922.870
    >>Tötet die |cRXP_ENEMY_Riesiger Waldschreiter|r. Plündert sie für die |cRXP_LOOT_Spitze von Gelkaks Schlüssel|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob Giant Foreststrider
step
    #label NorthStalkerPelts
    .goto 1439/1,-1080.03,7922.87,45,0
    .goto 1439/1,-1146.84,7998.41
    >>Tötet |cRXP_ENEMY_Mondpirscherpatriarch|r und |cRXP_ENEMY_Mondpirschermatriarchin|r. Plündert sie für ihre |cRXP_LOOT_Pelze|r
    >>|cRXP_WARN_Seid vorsichtig vor den |cRXP_ENEMY_Mondpirschermatriarchin|r. Sie greifen immer mit einem |cRXP_ENEMY_Mondpirscherwicht|r an ihrer Seite an|r
    >>|cRXP_ENEMY_Mondpirscherpatriarch|r wirken |T132090:0|t[Schwäche ausnutzen] als Hinterhaltangriff, der 20-40 Schaden verursacht, wenn ihr ihnen den Rücken zudreht
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step << Warrior/Paladin/Rogue/Shaman
    #requires foreststriders
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>|cRXP_WARN_Beginnt, eine Gruppe für Gyromasts Rache/|r|cRXP_ENEMY_Der Dreschonator 4100|r zu suchen << Warrior/Paladin/Rogue/Shaman
    .turnin 2098 >> Gebt die Quest Gyromasts Rettung ab
    .accept 2078 >> Akzeptiert die Quest Gyromasts Rache
    .target Gelkak Gyromast
    .solo
step
    #requires foreststriders
    .group 2 << Warrior/Paladin/Rogue/Shaman
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>|cRXP_WARN_Beginnt, eine Gruppe für Gyromasts Rache/|r|cRXP_ENEMY_Der Dreschonator 4100|r zu suchen << Warrior/Paladin/Rogue/Shaman
    .turnin 2098 >> Gebt die Quest Gyromasts Rettung ab
    .accept 2078 >> Akzeptiert die Quest Gyromasts Rache
    .target Gelkak Gyromast
step
    #optional
    #completewith next
    .goto 1439,55.802,18.290
    .gossipoption 95406 >> Sprecht mit |cRXP_FRIENDLY_Der Dreschonator 4100|r um die Eskorte zu beginnen
--  .gossipoption 87696 >> Talk to |cRXP_FRIENDLY_The Threshwackonator 4100|r to start the escort
    >>|cRXP_WARN_Diese Quest ist SEHR schwierig|r
    .target The Threshwackonator 4100
    .isOnQuest 2078 << Warrior/Paladin/Rogue/Shaman
step
    #label Turtle4727
    .goto 1439,53.113,18.099
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4727 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    .goto 1439,56.654,13.484
    #optional
    >>Escortier |cRXP_FRIENDLY_Der Dreschonator 4100|r bis zu |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>Tötet |cRXP_ENEMY_The Threshwackonator 4100|r sobald er feindselig ist
    >>|cRXP_WARN_Diese Quest ist SEHR schwierig|r
    *Nutzt nur Fernkampfangriffe, während ihr vor ihm wegrennt, vermeidet Nahkampfreichweite << Druid
    >>|cRXP_WARN_Versucht, diese Quest zu machen, wenn ihr könnt, da sie euch später Zeit spart und|r |T134797:0|t[Elixiere der Wasseratmung]|cRXP_WARN_für spätere Unterwasserquests gibt|r << !Druid !Warlock !Shaman
    >>|cRXP_WARN_Benutzt|r |T136100:0|t[Wucherwurzeln] |cRXP_WARN_|r auf ihn und baue Distanz zu ihm auf. Kite ihn mit Schnellzaubern << Druid
    >>|cRXP_WARN_Falls ihr |cRXP_ENEMY_Der Dreschonator 4100|r nicht töten könnt, überspringt diesen Schritt|r
    .complete 2078,1 --Gyromast's Revenge (1)
    .link https://youtu.be/1WRRmKYBr9s >> |cRXP_WARN_Klickt hier für einen Videoleitfaden|r
    .mob The Threshwackonator 4100
    .isOnQuest 2078 << Warrior/Paladin/Rogue/Shaman
--XX DRUID: Test if you can root
step
    #optional << Warrior/Paladin/Rogue/Shaman
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2078 >> Gebt die Quest Gyromasts Rache ab
    .target Gelkak Gyromast
    .isQuestComplete 2078
step
    #optional
    #completewith BeachedCloak
    .abandon 2078 >> Brecht die Quest Gyromasts Rache ab
step << Druid
    #optional
    #completewith DeerComplete
    >>Tötet |cRXP_ENEMY_Verkrusteter Gezeitenkriecher|r. Plündert sie für |cRXP_LOOT_Feine Krebsbrocken|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
step
    #sticky
    #label DeleteGyromast
    #optional
    .destroy 7442 >> Zerstört |T134459:0|t[Gyromasts Schlüssel] aus euren Taschen, da ihr ihn nicht mehr braucht
step << !NightElf/!Dwarf Hunter/!Human Hunter/!Druid
    #completewith BeachedCloak
    #map Darkshore
    .goto 1448/1,577.92,6371.65,100 >> Reist nach Auberdine
    .cooldown item,6948,<0
step << !NightElf/!Dwarf Hunter/!Human Hunter/!Druid
    .hs >> Ruhestein nach Auberdine
    .cooldown item,6948,>2,1
    .subzoneskip 442 --auberdine
    .bindlocation 442,1
step << Druid
    #label Turtle4727
    .goto 1439,53.113,18.099
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4727 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
-- step << Druid
--     #label DeerComplete
--     #loop
--     .goto 1439/1,-313.68,6883.60,0
--     .goto 1439/1,98.97,7237.30,0
--     .goto 1439/1,347.87,6813.73,0
--     .goto 1439/1,-313.68,6883.60,40,0
--     .goto 1439/1,98.97,7237.30,40,0
--     .goto 1439/1,347.87,6813.73,40,0
--     >>|cRXP_WARN_Use the|r |T132801:0|t[Curative Animal Salve] |cRXP_WARN_on|r |cRXP_ENEMY_Sickly Deer|r
--     .complete 6124,1 -- Sickly Deer cured (10)
--     .mob Sickly Deer
--     .use 15826
step << Druid
    .goto 1439/1,-259.32,7839.03
    >>|cRXP_WARN_Schwimmt hinaus ins Wasser|r
    >>Öffnet die |cRXP_PICK_Merkwürdige Schließkassette|r. Plündert sie für den |cRXP_LOOT_Halber Anhänger der Wasser-Beweglichkeit|r
    .collect 15883,1,272,1 --Collect Half Pendant of Aquatic Agility (x1)

step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #softcore
    #optional
    #completewith next
    .deathskip >> Grindet bis eure Ruhestein-Abklingzeit weniger als 6 Minuten beträgt. Sterbt und erscheint beim |cRXP_FRIENDLY_Geistheiler|r
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #hardcore
    #optional
    #completewith next
    +Grindet bis eure Ruhestein-Abklingzeit weniger als 9 Minuten beträgt, dann lauft zurück nach Auberdine
step << !NightElf !Hunter
    #softcore
    #optional
    #completewith next
    .deathskip >> Stirb und beleb dich am |cRXP_FRIENDLY_Geistheiler|r wieder
    .target Geistheiler
step << !NightElf
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 4763 >> Gebt die Quest Die verderbten Schwarzfelle ab
    .target Thundris Windweaver
step << !NightElf
    #optional
    #completewith BeachedCloak
    .destroy 12342 >> Entfernt die |T134059:0|t|cRXP_LOOT_[Getreideprobe der Schwarzfelle]|r aus eurer Tasche, da ihr sie nicht mehr benötigt
step << !NightElf
    #optional
    #completewith BeachedCloak
    .destroy 12343 >> Zerstört die |T133944:0|t|cRXP_LOOT_[Nussprobe der Schwarzfelle]|r aus eurer Tasche, da ihr sie nicht mehr benötigt
step << !NightElf
    #optional
    #completewith BeachedCloak
    .destroy 12341 >> Zerstört die |T134013:0|t|cRXP_LOOT_[Obstprobe der Schwarzfelle]|r aus eurer Tasche, da sie nicht mehr benötigt
step << !NightElf
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2139 >> Gebt die Quest Tharnariuns Hoffnung ab
    .target Tharnariun Treetender
step << !NightElf
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >> Gebt die Quest Ein verirrter Meister ab
    .accept 993 >> Akzeptiert die Quest Ein verirrter Meister
    .target Terenthis
step << !NightElf
    #optional
    #completewith BeachedCloak
    >>|cRXP_WARN_Falls ihr |r |T133762:0|t[Verzauberter Mondpirscher-Umhang]|cRXP_WARN_ anlegt, stellt sicher, dass ihr euren aktuellen Umhang für später speichert, da der |r |T133762:0|t[Verzauberter Mondpirscherumhang] |cRXP_WARN_ bei einer späteren Abgabe verloren geht|r
    .equip 15,5387 >>|cRXP_WARN_Legt den|r |T133762:0|t[Verzauberter Mondpirscherumhang],an |cRXP_WARN_wenn er besser ist als eurer aktuell angelegter Umhang|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #label TravelDarnDwarfHBoat
    #completewith DarnDwarfHBoat
    .goto 1439,33.169,40.179,15 >> Reist zum Dock des Bootes nach Darnassus
    .zoneskip Teldrassil
    .zoneskip Darnassus
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #optional
    #label DarnDwarfHCook1
    #requires TravelDarnDwarfHBoat
    #completewith DarnDwarfHBoat
    >>|cRXP_WARN_Während ihr auf das Boot wartet:|r
    .cast 818 >>|cRXP_WARN_Erstellt eine|r |T135805:0|t[Einfaches Lagerfeuer] |cRXP_WARN_(unter dem Allgemeinen-Reiter eures Zauberbuches)|r
    .usespell 818
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #optional
    #requires DarnDwarfHCook1
    #completewith DarnDwarfHBoat
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    >>|T133971:0|t[Kochen] |cRXP_WARN_die|r |T132832:0|t|cRXP_LOOT_[Kleines-Ei]|r |cRXP_WARN_und|r |T134059:0|t[Milde Gewürze] |cRXP_WARN_zu|r |T132834:0|t[Kräutergebackenes Ei]
    .usespell 2550
    .zoneskip Teldrassil
    .zoneskip Darnassus
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #label DarnDwarfHBoat
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Nehmt das Boot nach Darnassus
    .zoneskip Darnassus
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    .goto 1438/1,841.56,8640.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vesprystus|r
    .fp Teldrassil >> Erlernt die Flugroute nach Teldrassil
    .target Vesprystus
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #optional
    #completewith next
    .goto 1438/1,965.80,8780.95
    .zone Darnassus >> Nimm das Lila Portal nach Darnassus
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    .goto 1457/1,2511.01,10178.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Jocaste
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ilyenia Mondfeuer|r
    .goto 1457/1,2329.19,9908.60
    .train 264 >> Erlernen Bogen
    .train 227 >> Erlernt Stäbe
    .target Ilyenia Moonfire
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    .goto 1457/1,2268.76,9770.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Landria|r
    >>|cRXP_BUY_Kauft einen|r |T135489:0|t[Schwerer Doppelbogen] |cRXP_BUY_und einen|r |T134410:0|t[Mittlerer Köcher] |cRXP_BUY_von ihr|r
    .collect 3027,1 -- Heavy Recurve Bow
    .collect 11362,1 -- Medium Quiver
    .target Landria
    .money <0.7349
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << Hunter
    #completewith next
    +|cRXP_WARN_Legt|r |T135489:0|t[Schwerer Doppelbogen] an
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    .goto 1438/1,2607.86,9641.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Chefarchäologe Grauflaum|r
    .turnin 741 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .accept 942 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Chief Archaeologist Greywhisker
    .isOnQuest 741
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #optional
    .goto 1438/1,2607.86,9641.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Chefarchäologe Grauflaum|r
    .accept 942 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Chief Archaeologist Greywhisker
    .isQuestTurnedIn 741
step << Druid
    #optional
	#completewith MoongladeTrain
	.cast 18960 >> Caste Teleportieren: Moonglade
	.zoneskip Moonglade
-- step << Druid
--     .goto 1450/1,-2678.53,8023.63
--     >>Go to Moonglade
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
--     .turnin 6124 >> Turn in Curing the Sick
--     .accept 6125 >> Accept Power over Poison
--     .target Dendrite Starblaze
--     .isQuestTurnedIn 6123
step << Druid
    #label MoongladeTrain
    .goto 1450/1,-2593.82,7867.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
step << NightElf/Dwarf Hunter/Human Hunter/Skyborne Hunter
    #completewith BeachedCloak
    #map Darkshore
    .goto 1448/1,577.92,6371.65,100 >> Reist nach Auberdine
    .cooldown item,6948,<0
step << NightElf/Dwarf Hunter/Human Hunter/Skyborne Hunter
    #optional
    #completewith next
    .hs >> Ruhestein nach Auberdine
    .cooldown item,6948,>0,1
step
    #label BeachedCloak
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .target Gwennyth Bly'Leggonde
step
    #requires DeleteGyromast
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Gebt die Quest Meeresfrüchte ab
    .target Gubber Blump
    .isQuestComplete 1138
step << NightElf
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 4763 >> Gebt die Quest Die verderbten Schwarzfelle ab
    .target Thundris Windweaver
step << NightElf
    #optional
    #completewith LostMasters
    .destroy 12342 >> Entfernt die |T134059:0|t|cRXP_LOOT_[Getreideprobe der Schwarzfelle]|r aus eurer Tasche, da ihr sie nicht mehr benötigt
step << NightElf
    #optional
    #completewith LostMasters
    .destroy 12343 >> Zerstört die |T133944:0|t|cRXP_LOOT_[Nussprobe der Schwarzfelle]|r aus eurer Tasche, da ihr sie nicht mehr benötigt
step << NightElf
    #optional
    #completewith LostMasters
    .destroy 12341 >> Zerstört die |T134013:0|t|cRXP_LOOT_[Obstprobe der Schwarzfelle]|r aus eurer Tasche, da sie nicht mehr benötigt
step << NightElf Hunter
    .goto 1439/1,488.69,6564.830
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dalmond|r
    .vendor >> Deckt euch mit |T132382:0|t[Scharfe Pfeile] ein
    .target Dalmond
step << NightElf
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2139 >> Gebt die Quest Tharnariuns Hoffnung ab
    .target Tharnariun Treetender
step << NightElf
    #label LostMasters
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >> Gebt die Quest Ein verirrter Meister ab
    .accept 993 >> Akzeptiert die Quest Ein verirrter Meister
    .target Terenthis

step << NightElf
    #optional
    >>|cRXP_WARN_Falls ihr |r |T133762:0|t[Verzauberter Mondpirscher-Umhang]|cRXP_WARN_ anlegt, stellt sicher, dass ihr euren aktuellen Umhang für später speichert, da der |r |T133762:0|t[Verzauberter Mondpirscherumhang] |cRXP_WARN_ bei einer späteren Abgabe verloren geht|r
    .equip 15,5387 >>|cRXP_WARN_Legt den|r |T133762:0|t[Verzauberter Mondpirscherumhang],an |cRXP_WARN_wenn er besser ist als eurer aktuell angelegter Umhang|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7

--Hunter stays Darkshore/Ashenvale
--Shaman to IF for training then SW > Redridge
--!Hunter !Shaman straight to SW > Redridge

step << !Hunter
    .goto 1439/1,488.69,6564.830
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dalmond|r
    >>|cRXP_BUY_Kauft|r |T135237:0|t[Feuerstein und Zunder] |cRXP_BUY_und ein|r |T135435:0|t[Einfaches Holz] |cRXP_BUY_von ihm|r
    >>|cRXP_WARN_Dies ist zum Aufleveln  eurer|r |T133971:0|t[Kochkunst] |cRXP_WARN_während ihr bald auf dem Boot seid|r
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .itemcount 6889,1 -- Small Egg (1+)
    .skill cooking,50,1
    .target Dalmond
step << !Hunter
    #completewith next
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    .vendor 6301 >>|cRXP_BUY_Kauft|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_von ihm, bis ihr genauso viele|r |T134059:0|t[Milde Gewürze] |cRXP_BUY_ oder mehr wie|r |T132832:0|t[Kleine Eier] |cRXP_BUY_die ihr derzeit habt|r
    .collect 2678,50,90,1,0x20,cooking --Mild Spices (1-50)
    .disablecheckbox
    .collect 6889,50,90,1,0x20,cooking --Small Egg (1-50)
    .disablecheckbox
    .target Gorbold Steelhand
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .itemcount 6889,1 -- Small Egg (1+)
step << !Hunter
    #label TravelMenethilRRBoat
    #completewith MenethilRRBoat
    .goto 1439/1,926.400,6542.900,15 >> Reist zum Anleger des Sturmwind-Bootes << !Shaman
    .goto 1439,32.432,43.744,15 >> Reist zum Anlegestelle des Hafens von Menethil << Shaman
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
step << !Hunter
    #optional
    #label DarkshoreRRCook1
    #requires TravelMenethilRRBoat
    #completewith MenethilRRBoat
    >>|cRXP_WARN_Auf dem Boot, wenn es gerade angekommen ist, oder am Dock, wenn das Boot gerade abgefahren ist:|r
    .cast 818 >>|cRXP_WARN_Erstellt eine|r |T135805:0|t[Einfaches Lagerfeuer] |cRXP_WARN_(unter dem Allgemeinen-Reiter eures Zauberbuches)|r
    .usespell 818
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << !Hunter
    #optional
    #requires DarkshoreRRCook1
    #completewith MenethilRRBoat
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
    >>|T133971:0|t[Kochen] |cRXP_WARN_die|r |T132832:0|t|cRXP_LOOT_[Kleines-Ei]|r |cRXP_WARN_und|r |T134059:0|t[Milde Gewürze] |cRXP_WARN_zu|r |T132834:0|t[Kräutergebackenes Ei]
    .usespell 2550
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
    .itemcount 6889,1 --Small Egg (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << !Hunter
    #label MenethilRRBoat
    .goto 1439/1,826.67,6409.82 << Shaman
    .goto 1439/1,929.100,6543.600 << !Hunter !Shaman
    >>|cRXP_WARN_Levelt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_während ihr auf das Boot wartet|r << Rogue/Warrior/Paladin
    .zone Stormwind City >> Nehmt das Boot nach Sturmwind << !Shaman
    .zone Wetlands >> Nimm das Boot zum Hafen von Menethil << Shaman
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
step << Shaman
    .money <0.08
    .goto 1437/0,-819.67,-3691.42,25,0
    .goto 1437/0,-807.26,-3716.22,25,0
    .goto 1437/0,-827.94,-3724.49,25,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_WARN_Kaufe eine|r |T133024:0|t[Bronzeröhre]
    >>|cRXP_WARN_Dieses Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Neal Allen|r keine hat|r
	.target Neal Allen
    .bronzetube
step << Shaman
    .goto 1437/0,-782.03,-3793.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shellei|r
    .fly Ironforge >> Fliege nach Eisenschmiede
    .target Shellei Brondir
step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eldrun Stormbreaker|r
    .target Eldrun Stormbreaker::258098
    .trainer >> Trainiere deine Klassenfähigkeiten
step << Shaman
    #optional
    .goto 1455/0,-1115.43,-4598.86--c:Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gerrig Knochengriff|r
    .turnin 968 >> Gebt die Quest Die Macht in der Tiefe ab
    .target Gerrig Bonegrip
    .isOnQuest 968
step << Shaman
    #completewith next
    .goto 1455/0,-1249.95,-4793.470
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ritzelschnitt Zahnrad|r
    .vendor >> |cRXP_WARN_Kaufe eine|r |T133024:0|t[Bronzeröhre]
    >>|cRXP_WARN_Dieses Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Gearcutter Cogspinner|r keine hat|r
--  >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Gearcutter Cogspinner
step << Shaman
    .goto 1455/0,-1330.28,-4843.6,5,0
    .zone Stormwind City >> Betretet die Tiefenbahn. Nehmt die Straßenbahn nach Sturmwind
    >>|cRXP_WARN_Levelt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_falls erforderlich, während ihr auf die Straßenbahn wartet|r
    >>Ihr werdet eure|cRXP_WARN_ |T135966:0|t[Erste Hilfe] |rauf 80 benötigen für eine spätere Ques mit level 24|cRXP_WARN_ << Rogue !Dwarf
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
#version 1
<< Alliance !Hunter
#group RestedXP Forever Dungeonführer (A)
#subgroup Speedrun Dungeonführer 1-20
--#groupid RXP-SRGCE-A1
#name 19-20 Rotkammgebirge
#next 20-21 Dunkelküste/Eschental

step << !Shaman
    .goto 1453/0,1193.100,-8328.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ladungsbuchhalter Philmor::268511|r
    .target Manifest Clerk Philmor::268511
    .accept 97220 >>Akzeptiert die Quest Philmors Bitte
step << Shaman
    .goto 1453/0,634.800,-8390.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shoni die Schtille|r
    .accept 2040 >> Unterirdischer Angriff annehmen
    .target Shoni the Shilent
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .accept 167 >> Akzeptiert die Quest Oh Bruder...
    .accept 168 >> Akzeptiert Die Suche nach Andenken
    .goto 1453/0,501.200,-8468.601
    .target Wilder Thistlenettle
step << Mage
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >> Reist zum Magierturm
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Elsharin
step << Warlock
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Geh ins geschlachtete Lamm und dann in den Keller
step << Warlock
    .goto 1453/0,1029.98,-8971.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ursula Deline
step << Warlock/Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ardwyn Cailen|r
    >>|cRXP_WARN_Kauft einen|r |T135139:0|t[Brennender Zauberstab] |cRXP_WARN_Falls es ein upgrade ist|r
    >>|cRXP_WARN_Es ist wichtig, einen Zauberstab ohne Schattenschaden zu kaufen. Später werdet ihr auf Gegner stoßen, die gegen Schattenschaden resistent sind.|r
    .goto 1453/0,807.64,-8880.84,14,0
    .goto 1453/0,804.55,-8862.47
    .collect 5210,1
    .target Ardwyn Cailen
step << Paladin/Priest
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Lauf zur Kathedrale in Sturmwind
step << Paladin
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Arthur der Treue|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Arthur the Faithful
step << Human Paladin
    .goto 1453/0,845.800,-8545.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1780 >>Gebt die Quest Der Foliant der Offenbarung ab
    .accept 1781 >>Akzeptiert die Quest Der Foliant der Offenbarung
    .target Duthorian Rall
step << Human Paladin
    .goto 1453/0,862.400,-8516.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gazin Tenorm|r
    .turnin 1781 >>Gebt die Quest Der Foliant der Offenbarung ab
    .accept 1786 >>Akzeptiert die Quest Der Foliant der Offenbarung
    .target Gazin Tenorm
step << Priest
    .goto 1453/0,862.89,-8519.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brother Joshua|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Brother Joshua
step
    #optional
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 399 >> Gebt die Quest Ein bescheidener Anfang ab
    .target Baros Alexston
    .isQuestComplete 399
step << !NightElf
    .goto 1453/0,600.22,-8426.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Furen Longbeard|r
    .turnin 1338 >> Gebt die Quest Stormpikes Bestellung ab
    .target Furen Longbeard
    .isOnQuest 1338
step << !Shaman
    .goto 1453/0,634.800,-8390.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shoni die Schtille|r
    .accept 2040 >> Unterirdischer Angriff annehmen
    .target Shoni the Shilent
step
    #completewith BMenace
    .goto 1453/0,638.8,-8341.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Billibub Zahnrad|r
    .vendor >> |cRXP_WARN_Kaufe eine|r |T133024:0|t[Bronzeröhre]
    >>|cRXP_WARN_Dieses Item hat limitierte Verfügbarkeit. Überspringe den Schritt, wenn |cRXP_FRIENDLY_Billibub Zahnrad|r keine hat|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step << !Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .accept 167 >> Akzeptiert die Quest Oh Bruder...
    .accept 168 >> Akzeptiert Die Suche nach Andenken
    .goto 1453/0,501.200,-8468.601
    .target Wilder Thistlenettle
step << Rogue
    .goto 1453/0,377.61,-8752.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne|r
    >>|cRXP_WARN_Stellt sicher, dass ihr|r |T136058:0|t[Schlossknacken] |cRXP_WARN_trainiert, da ihr sie bald für die Schurken-Klassenquest von Euch brauchen werdet|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .train 1804 >> Erlernt |T136058:0|t[Schloss knacken]
    .target Osborne the Night Man
step << Rogue
    #completewith next
    .goto 1453/0,374.11,-8762.88,20,0
    .goto 1453/0,326.66,-8818.01,20,0
    .goto 1453/0,323.43,-8817.83,5 >> Betretet das SI:7-Hauptquartier. Geht die Treppen nach oben zu |cRXP_FRIENDLY_Renzik "Das Messer"|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Renzik "Das Messer"|r
    .accept 2281 >> Akzeptiert die Quest Rendezvous im Rotkammgebirge
    .goto 1453/0,362.55,-8819.80
    .target Renzik "The Shiv"
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wu|r oder |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Wu Shen
    .target Ilsa Corbin
step << Mage/Rogue/Warlock/Druid/Warrior/Paladin
    .goto 1453/0,613.12,-8795.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Erlernt 1h Schwerter << Mage/Rogue/Warlock
    .train 1180 >> Erlernen Dolche << Mage/Druid
    .train 202 >> Erlernt 2h Schwerter << Warrior/Paladin
    .target Woo Ping
step << Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Kauft eine|r |T135342:0|t[Kris] |cRXP_BUY_oder etwas Besseres beim Auktionshaus|r
    >>|cRXP_WARN_Legt es an, sobald ihr Stufe 19 seid|r
    .collect 2209,1 --Kris
    .target Marda Weller
    .money <0.7115
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
step << Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Kauft einen|r |T135342:0|t[Kris]
    >>|cRXP_WARN_Legt es an, sobald ihr Stufe 19 seid|r
    .collect 2209,1 --Kris
    .money <0.7115
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
    .target Marda Weller
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_Legt|r |T135342:0|t[Kris] an
    .use 2209
    .itemcount 2209,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.89
    .xp <19,1
step -- must be on quest now to loot Great Goretusk Snout
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>Kauft das |T134437:0|t[Gegengift] für eure |T132290:0|t[Gifte]-Quest später und den Rest für schnellere Questabgaben im Rotkammgebirge << !Dwarf Rogue
    >>Kauft die folgenden Gegenstände für schnellere Abgaben im Rotkammgebirge << !Rogue/Dwarf Rogue
    >>Das spart dir Zeit, weil du dann später nicht rumläufst und die Mobs dafür töten musst. Überspring diesen Schritt, wenn du nichts kaufen willst
    >>|T134437:0|t[Gegengift] << !Dwarf Rogue
    -->>|T134172:0|t[Great Goretusk Snout]
    >>|T134028:0|t[Zähes Kondorfleisch]
    >>|T134321:0|t[Knuspriges Spinnenfleisch]
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    --.collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
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
    #completewith orcs
    .goto 1453/0,490.12,-8835.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fly Redridge >> Fliegt ins Rotkammgebirge << !NightElf !Skyborne
    .fp Stormwind >> Erlernt die Flugroute in Sturmwind << NightElf/Skyborne
    .target Dungar Longdrink
    .zoneskip Redridge Mountains
step << NightElf/Skyborne
    #completewith RRFP
    .goto 1429/0,389.800,-9119.900
    .zone Elwynn Forest >> Verlasst Sturmwind
    .zoneskip Redridge Mountains
step << NightElf/Skyborne
    #completewith RRFP
    .goto 1433/0,-1948.56,-9582.75
    .zone Redridge Mountains >> Reist ins Rotkammgebirge
step
    .goto 1433/0,-1906.400,-9606.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Parker|r
    .accept 244 >> Akzeptiert die Quest Eindringende Gnolle
    .target Guard Parker
step
    .goto 1433/0,-2237.93,-9443.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Feldon|r
    .turnin 244 >> Gebt die Quest Eindringende Gnolle ab
    .accept 246 >> Akzeptiert die Quest Einschätzung der Gefahr
    .accept 98407 >>Akzeptiert die Quest Machtdemonstration
    .target Deputy Feldon
step << NightElf/Skyborne
    #label RRFP
    .goto 1433/0,-2234.900,-9435.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fp Redridge Mountains >> Erlernt die Flugroute zum Rotkammgebirge
    .target Ariena Stormfeather
step
    #label BMenace
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Marris|r
    .goto 1433/0,-2298.06,-9284.04
    .accept 20 >> Akzeptiert die Quest Bedrohung durch die Blackrock
    .accept 98387 >>Akzeptiert die Quest Die Blockade der Blackrock
    .target Marshal Marris
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Großknecht Oslow|r
    .goto 1433/0,-2268.32,-9279.12
    .accept 125 >> Akzeptiert die Quest Die verlorenen Werkzeuge
    .target Foreman Oslow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verner Gutmark|r
	.target Verner Osgood
    .goto 1433/0,-2243.14,-9259.43
    .accept 118 >> Akzeptiert die Quest Der Preis für Hufeisen
step
    .group
    .goto 1433/0,-2208.600,-9243.500
    >>Klickt das |cRXP_PICK_Gesucht-Plakat|r
    .accept 95999 >>Akzeptiert die Quest GESUCHT: Verbrenner Gar'im
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Magistrat Solomon|r
	.target Magistrate Solomon
    .goto 1433/0,-2221.65,-9218.60
    .accept 120 >> Akzeptiert die Quest Botschaft nach Sturmwind
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dockmeister Baren|r
	.target Dockmaster Baren
    .goto 1433/0,-2172.15,-9261.310
    .accept 127 >> Fischhandel annehmen
step
    .goto 1433/0,-2152.62,-9217.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_läuft im Gasthaus herum|r
	.target Darcy
    .accept 129 >> Akzeptiert die Quest Ein geschenktes Mittagessen
step
    .goto 1433/0,-2164.56,-9213.10,8,0
    .goto 1433/0,-2145.67,-9231.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wiley der Schwarz|r oben die Treppen hinauf
	.target Wiley the Black
    .turnin 65 >> Gebt die Quest Die Bruderschaft der Defias ab
    .isOnQuest 65
step << skip -- must on quest now to loot Great Goretusk Snout
#optional
    .goto 1433/0,-2062.96,-9209.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Küchenchefin Breanna|r
    .accept 92 >> Akzeptiert die Quest Rotkammgulasch
    .turnin 92 >> Gebt die Quest Rotkammgulasch ab
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
    .target Chef Breanna
step
    .goto 1433/0,-2062.96,-9209.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Küchenchefin Breanna|r
    .accept 92 >> Akzeptiert die Quest Rotkammgulasch
    .target Chef Breanna
step << Warlock
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto 1433/0,-2045.16,-9245.67
    .accept 34 >> Akzeptiert die Quest Ein ungebetener Gast
step << Warlock
    .goto 1433/0,-1911.22,-9288.820
    >>Tötet |cRXP_ENEMY_Stopfwanst|r. Plündert ihn für seine |cRXP_LOOT_Hauer|r
    >>|cRXP_WARN_Zieht |cRXP_ENEMY_Stopfwanst|r nach Seenhain, damit die |cRXP_FRIENDLY_Wachen|r euch beim Töten von |rStopfwanst|cRXP_ENEMY_ helfen|r
    >>|cRXP_WARN_Diese Quest ist SEHR schwierig. Ihr könnt diesen Schritt überspringen und später zurückkommen|r
    .complete 34,1 -- Bellygrub's Tusk (1)
    .link https://youtu.be/6JE967OG3CU?t=1845 >> |cRXP_WARN_klickt hier für einen Video-Guide|r
    .mob Bellygrub
step << Warlock
    .goto 1433/0,-2045.16,-9245.67
    .target Martie Jainrose
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >> Gebt die Quest Ein ungebetener Gast ab
step << Rogue
    .goto 1433/0,-2180.19,-9328.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Gebt die Quest Rendezvous im Rotkammgebirge ab
    .accept 2282 >> Akzeptiert die Quest Althers Mühle
    .target Lucius
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shawn|r
	.target Shawn
    .goto 1433/0,-2207.10,-9351.52
    .accept 3741 >> Akzeptiert die Quest Hilarys Halskette
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
step << Druid
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto 1433/0,-2205.58,-9351.52
    .turnin 3741 >> Gebt die Quest Hilarys Halskette ab
step
    #softcore
    >>Öffnet die |cRXP_PICK_Versunkene Truhe|r. Plündert sie für |cRXP_LOOT_Oslows Werkzeugkasten|r
    .goto 1433/0,-2472.16,-9366.72
    .complete 125,1 --Oslow's Toolbox (1)
step
    #sticky
    #completewith orcs
    >>Tötet |cRXP_ENEMY_Großer Geiferzahn|r. Plündert sie für |cRXP_LOOT_Große Geiferzahnschnauze|r
    >>Tötet |cRXP_ENEMY_Taranteln|r. Plündert sie für ihr |cRXP_LOOT_Knuspriges Spinnenfleisch|r
    >>Tötet |cRXP_ENEMY_Terrorkondor|r. Plündert sie für ihr |cRXP_LOOT_Zähes Kondorfleisch|r
    >>|cRXP_WARN_Verkauft KEINE dieser Gegenstände, bis ihr die Quest Rotkammgulasch abgebt|r
    >>|cRXP_WARN_Sichert jeden|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_, den ihr plündert, da ihr ihn zum Leveln von|r |T133971:0|t[Kochkunst] |cRXP_WARN_bis 50 verwenden könnt, was später im Dämmerwald erforderlich ist|r
    .collect 2296,5,92,1
    .collect 1080,5,92,1
    .collect 1081,5,92,1
    .mob Great Goretusk
    .mob Tarantula
    .mob Dire Condor
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Parker|r
	.target Guard Parker
    .goto 1433/0,-1906.400,-9606.800
    .accept 244 >> Akzeptiert die Quest Eindringende Gnolle
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wache Parker|r
	.target Guard Parker
    .goto 1433/0,-1906.400,-9606.800
    .turnin 129 >> Gebt die Quest Ein geschenktes Mittagessen ab
    .accept 130 >> Akzeptiert die Quest Besuch im Kräuterladen
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Feldon|r
	.target Deputy Feldon
    .goto 1433/0,-2237.28,-9443.750
    .turnin 244 >> Gebt die Quest Eindringende Gnolle ab
    .accept 246 >> Akzeptiert die Quest Einschätzung der Gefahr
step
    #completewith next
	>>Tötet |cRXP_ENEMY_Bastard der Rotkammgnolle|r und |cRXP_ENEMY_Wilderer der Rotkammgnolle|r
    >>Tötet |cRXP_ENEMY_Hauer der Rotkammgnolle|r. Plündert sie für |cRXP_LOOT_Stachelhalsband|r
    .complete 246,1 --Redridge Mongrel (10)
    .mob +Redridge Mongrel
    .complete 246,2 --Redridge Poacher (6)
	.mob +Redridge Poacher
    .complete 98407,1 --Spiked Collar (5)
	.mob +Redridge Thrasher
step
    .goto 1433/0,-2031.48,-9556.25,45,0
    .goto 1433/0,-1955.07,-9637.63,45,0
    .goto 1433/0,-1813.97,-9679.9,45,0
    .goto 1433/0,-1861.07,-9754.76,45,0
    .goto 1433/0,-1980.25,-9641.10
    >>Tötet |cRXP_ENEMY_Taranteln|r. Plündert sie für ihr |cRXP_LOOT_Knuspriges Spinnenfleisch|r
    .collect 1081,5,92,1
    .mob Tarantula
step
    #loop
    .goto 1433/0,-1913.800,-9490.601,50,0
    .goto 1433/0,-2211.01,-9773.870,45,0
    .goto 1433/0,-2276.79,-9759.11,45,0
    .goto 1433/0,-2508.20,-9620.68,45,0
    .goto 1433/0,-2246.61,-9764.90,45,0
	>>Tötet |cRXP_ENEMY_Bastard der Rotkammgnolle|r und |cRXP_ENEMY_Wilderer der Rotkammgnolle|r
    >>Tötet |cRXP_ENEMY_Hauer der Rotkammgnolle|r. Plündert sie für |cRXP_LOOT_Stachelhalsband|r
    .complete 246,1 --Redridge Mongrel (10)
    .mob +Redridge Mongrel
    .complete 246,2 --Redridge Poacher (6)
	.mob +Redridge Poacher
    .complete 98407,1 --Spiked Collar (5)
	.mob +Redridge Thrasher
step
    .goto 1433/0,-2634.54,-9588.54
    >>Tötet |cRXP_ENEMY_Murlocküstenschläger|r und |cRXP_ENEMY_Schwacher Murlocgezeitenrufer|r. Plündert sie für ihre |cRXP_LOOT_Murlocflosse|r und |cRXP_LOOT_Gefleckter Sonnenfisch|r
	>>|cRXP_WARN_Passt auf, dieses Gebiet ist ein Hyperspawn, das heißt die |cRXP_ENEMY_Murlocs|r respawnen schnell nach|r
    .complete 127,1
    .collect 1468,8,150,1
    .mob Murloc Shorestriker
    .mob Murloc Minor Tidecaller
step
    .goto 1433/0,-2903.07,-9691.340
    >>Tötet |cRXP_ENEMY_Terrorkondor|r. Plündert sie für ihr |cRXP_LOOT_Zähes Kondorfleisch|r
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn ihr keine|r |cRXP_ENEMY_Terrorkondor|r seht
    .collect 1080,5,92,1
    .mob Dire Condor
step
    .group 4
    .isOnQuest 95999
    #sticky
    #label IncineratorGarim
    .waypoint 1433/0,-3261.400,-9824.700
    >>Tötet |cRXP_ENEMY_Verbrenner Gar'im|r in der Höhle. Plündert ihn, um |cRXP_LOOT_Zerbrochener Stab von Verbrenner Gar'im|r zu erhalten
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn ihr keine Gruppe für ihn findet|r
    .complete 95999,1 -- Broken Staff of Incinerator Gar'im (1)
    .mob Incinerator Gar'im
step
    #completewith next
    >>Sammelt die |cRXP_PICK_Getreidesäcke|r und |cRXP_PICK_Fleischkeulen|r vom Boden für |cRXP_LOOT_Gestohlene Versorgungsgüter|r
    >>Sammelt die |cRXP_PICK_Waffenständer|r und |cRXP_PICK_Gestohlene Waffen|r vom Boden
    .complete 98387,1 -- Stolen Supplies (10)
    .complete 98387,2 -- Stolen Weapon (8)
step
    #label orcs
    #loop
    >>Tötet |cRXP_ENEMY_Grunzer der Blackrock|r und |cRXP_ENEMY_Kundschafter der Blackrock|r. Plündert sie für |cRXP_LOOT_Kampferprobte Axt|r
	>>Passt auf, die |cRXP_WARN_Kundschafter der Blackrock|cRXP_ENEMY_ wirken |T132149:0|t[Netz]|r auf euch|r
    .goto 1433/0,-3177.25,-9718.85,60,0
    .goto 1433/0,-3224.57,-9782.42,60,0
    .goto 1433/0,-3259.74,-9566.82,60,0
    .goto 1433/0,-3092.80,-9694.82,60,0
    .goto 1433/0,-3177.25,-9718.85,60,0
    .complete 20,1 --Battleworn Axe (10)
    .mob Blackrock Grunt
	.mob Blackrock Outrunner
step
    #loop
    .goto 1433/0,-3177.25,-9718.85,60,0
    .goto 1433/0,-3224.57,-9782.42,60,0
    .goto 1433/0,-3259.74,-9566.82,60,0
    .goto 1433/0,-3092.80,-9694.82,60,0
    .goto 1433/0,-3177.25,-9718.85,60,0
    >>Sammelt die |cRXP_PICK_Getreidesäcke|r und |cRXP_PICK_Fleischkeulen|r vom Boden für |cRXP_LOOT_Gestohlene Versorgungsgüter|r
    >>Sammelt die |cRXP_PICK_Waffenständer|r und |cRXP_PICK_Gestohlene Waffen|r vom Boden
    .complete 98387,1 -- Stolen Supplies (10)
    .complete 98387,2 -- Stolen Weapon (8)
step
    #requires IncineratorGarim
step
    .goto 1433/0,-2903.07,-9691.340
    >>Tötet |cRXP_ENEMY_Terrorkondor|r. Plündert sie für ihr |cRXP_LOOT_Zähes Kondorfleisch|r
    .collect 1080,5,92,1
    .mob Dire Condor
step
    #hardcore
    >>|cRXP_WARN_Springt in den See|r
    >>Öffnet die |cRXP_PICK_Versunkene Truhe|r. Plündert sie für |cRXP_LOOT_Oslows Werkzeugkasten|r
    .goto 1433/0,-2472.16,-9366.72
    .complete 125,1 --Oslow's Toolbox (1)
step
    .goto 1433/0,-2634.54,-9588.54
    .xp 20-7687 >> Farmt, bis ihr 7687 Erfahrungspunkte von Stufe 20 entfernt seid << !Rogue
    .xp 20-10012 >> Farmt, bis ihr 10012 Erfahrungspunkte von Stufe 20 entfernt seid << Rogue
step << Rogue
    #completewith next
    .subzone 97 >> Reist zu Althers Mühle
step << Rogue
    .goto 1433,51.846,45.116
    >>|cRXP_WARN_Ihr MÜSST dies für eure|r |T132290:0|t[Gifte]|cRXP_WARN_ Quest später machen|r
    >>|cRXP_WARN_Steht auf dem Wegpunkt. Positioniert eure Kamera und euren Cursor, bis ihr 3 |cRXP_PICK_Übungsschließkisten|r gleichzeitig anklicken könnt, ohne das ihr euch bewegen müsst|r
    .skill lockpicking,80 >>|cRXP_WARN_Öffnet die |cRXP_PICK_Übungsschließkassette|r am Boden in Althers Mühle, bis euer|r |T136058:0|t[Schlossknacken] 80 erreicht|r
step << Rogue
	.goto 1433/0,-2700.75,-9222.07
    >>Öffnet die |cRXP_PICK_Lucius's Schließkassette|r. Sammelt die Beute für die |cRXP_LOOT_Marke der Diebeskunst|r
    .complete 2282,1 --Token of Thievery
    .skill lockpicking,<80,1
step
    #completewith next
    .goto 1433/0,-2298.06,-9284.04,150 >> Reist nach Seenhain
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Marris|r
	.target Marshal Marris
    .goto 1433/0,-2298.06,-9284.04
    .turnin 20 >> Gebt die Quest Bedrohung durch die Blackrock ab
    .turnin 98387 >>Gebt die Quest Die Blockade der Blackrock ab
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Großknecht Oslow|r
	.target Foreman Oslow
    .goto 1433/0,-2268.32,-9279.12
    .turnin 125 >> Gebt die Quest Die verlorenen Werkzeuge ab
    .accept 89 >> Akzeptiert die Quest Die Immerruhbrücke
step
    #optional
    .isQuestComplete 95999
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Magistrat Solomon|r
	.target Magistrate Solomon
    .goto 1433/0,-2207.10,-9231.34,15,0
    .goto 1433/0,-2221.65,-9218.60
    .turnin 95999 >>Gebt die Quest GESUCHT: Verbrenner Gar'im ab
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dockmeister Baren|r
	.target Dockmaster Baren
    .goto 1433/0,-2172.59,-9261.02
    .turnin 127 >> Gebt die Quest Fischhandel ab
    .accept 150 >> Murlocwilderer annehmen
    .turnin 150 >> Gebt die Quest Murlocwilderer ab
    .xp <20,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dockmeister Baren|r
	.target Dockmaster Baren
    .goto 1433/0,-2172.59,-9261.02
    .turnin 127 >> Gebt die Quest Fischhandel ab
step << Druid
    .goto 1433/0,-2152.62,-9223.67--c:Redridge Mountains,26.8,44.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirtin Brianna|r
    .home Lakeshire >> Setzt euren Ruhestein in Seenhain
    .target Innkeeper Brianna
step
#optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Küchenchefin Breanna|r
	.target Chef Breanna
    .goto 1433/0,-2062.96,-9209.62
    .turnin 92 >> Gebt die Quest Rotkammgulasch ab
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto 1433/0,-2045.38,-9245.82
    .turnin 130 >> Gebt die Quest Besuch im Kräuterladen ab
    .accept 131 >> Akzeptiert die Quest Narzissen für eine Dame
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_läuft im Gasthaus herum|r
	.target Darcy
    .goto 1433/0,-2152.62,-9216.430
    .turnin 131 >> Gebt die Quest Narzissen für eine Dame ab
step << Rogue
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lucius|r
	.target Lucius
    .goto 1433/0,-2180.19,-9328.21
    .turnin 2282 >> Gebt die Quest Althers Mühle ab
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto 1433/0,-2205.58,-9351.52
    .turnin 3741 >> Gebt die Quest Hilarys Halskette ab
step << Rogue
    #optional
	#completewith InRR
	.destroy 7907 >> Zerstört die |T134328:0|t[Zertifikat der Diebeskunst]. Ihr braucht es nicht mehr
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Feldon|r
	.target Deputy Feldon
    .goto 1433/0,-2237.93,-9443.60
    .turnin 246 >> Gebt die Quest Einschätzung der Gefahr ab
    .turnin 98407 >>Gebt die Quest Machtdemonstration ab
step
    .goto 1433/0,-2634.54,-9588.54
    .xp 20 >> Grinde bis ihr Stufe 20 erreicht

-- Druid Cat form quest --

step << Druid
    #completewith catspirit1
	.cast 18960 >> Caste Teleportieren: Moonglade
step << Druid
    #completewith next
    .goto 1450/1,-2400.33,7795.33--c:Moonglade,44.148,45.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Silva Fil'naveth|r
    .fly Teldrassil >> Fliege nach Darnassus
    .skipgossip
    .timer 153,Darnassus
    .target Silva Fil'naveth
    .zoneskip Darnassus
    .zoneskip Teldrassil
step << NightElf !Druid
    #hidewindow
    #optional
    #completewith next
    .goto 1438/1,965.80,8780.95
    .zone Darnassus >> Nimm das Lila Portal nach Darnassus
step << Druid
    #label catspirit1
    .goto 1457/1,2564.600,10179.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mathrengyl Bearwalker::4217|r
    .target Mathrengyl Bearwalker::4217
    .accept 98393 >>Akzeptiert die Quest Der große Katzengeist

step << Druid
    #completewith next
	.cast 18960 >> Caste Teleportieren: Moonglade
    .zoneskip Moonglade
step << Druid
    .goto 1450/1,-2678.900,8020.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dendrite Starblaze::11802|r
    .target Dendrite Starblaze::11802
    .turnin 98393 >>Gebt die Quest Der große Katzengeist ab
    .accept 98341 >>Akzeptiert die Quest Der Große windgetragene Katzengeist << Skyborne
    .accept 98394 >>Akzeptiert die Quest Der große Katzengeist << !Skyborne
step << Druid !Skyborne
    .goto 1450/1,-2640.000,7338.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Großer Katzengeist|r
    .turnin 98394 >>Gebt die Quest Der große Katzengeist ab
    .accept 98396 >>Akzeptiert die Quest Der große Katzengeist
    .target Great Cat Spirit
step << Druid Skyborne
    .goto 1450/1,-2352.700,7375.600,10,0
    .goto 1450/1,-2394.300,7361.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Avatar of Saeyleenan::272054|r
    .target Avatar of Saeyleenan::272054
    .turnin 98341 >>Gebt die Quest Der Große windgetragene Katzengeist ab
    .accept 98404 >>Akzeptiert die Quest Der Große windgetragene Katzengeist
step << Druid
    #completewith next
    .goto 1450/1,-3046.700,7534.400
    --aura 1309054?
    .subzone 2363 >> Geht zu Sturmwages Höhlengruft
step << Druid
    >>Geht tief in die Höhle, überquert die Brücke, sucht nach einer Katzenstatue in einer Nische und klickt auf den kleinen Orb neben der Statue
    >>Plündert das |cRXP_LOOT_Relikt der Klaue|r
    .goto 1450/1,-3117.400,7455.300
    .complete 98404,2 << Skyborne --|1/1 Relic of the Claw
    .complete 98396,2 << !Skyborne --|1/1 Relic of the Claw
step << Druid
    >>Klickt auf die kleine Kugel neben der Katzenstatue
    >>Plündert das |cRXP_LOOT_Relikt des stillen Schattens|r
    .goto 1450/1,-3099.200,7485.700
    .complete 98404,3  << Skyborne --|1/1 Relic of the Silent Shadow
    .complete 98396,3  << !Skyborne --|1/1 Relic of the Silent Shadow
step << Druid
    >>Klickt auf die kleine Kugel neben der Katzenstatue
    >>Plündert |cRXP_LOOT_Relikt des Fangzahns|r
    .goto 1450/1,-3054.100,7476.800
    .complete 98404,1  << Skyborne --|1/1 Relic of the Fang
    .complete 98396,1  << !Skyborne --|1/1 Relic of the Fang
step << Druid !Skyborne
    .goto 1450/1,-2640.000,7338.900
     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Großer Katzengeist|r
    .turnin 98396 >>Gebt die Quest Der große Katzengeist ab
    .accept 98731 >>Akzeptiert die Quest Segen des großen Katzengeistes
    .target Great Cat Spirit
step << Druid Skyborne
    .goto 1450/1,-2395.400,7361.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Avatar of Saeyleenan::272054|r
    .target Avatar of Saeyleenan::272054
    .turnin 98404 >>Gebt die Quest Der Große windgetragene Katzengeist ab
    .accept 98738 >>Akzeptiert die Quest Segen des großen windgetragenen Katzengeistes
step << Druid
    .goto 1450/1,-2678.200,8021.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTeleportiert euch zur Mondlichtung und sprecht mit |cRXP_FRIENDLY_Dendrite Starblaze::11802|r
    .target Dendrite Starblaze::11802
    .usespell 18960
    .turnin 98738 >>Gebt die Quest Segen des großen windgetragenen Katzengeistes ab << Skyborne
    .accept 98397 >>Akzeptiert die Quest Auf nach Darnassus --<< Alliance
    --.accept 98362 >>Accept To Thunder Bluff << Horde
step << Druid
    #completewith catspirit2
    .goto 1450/1,-2400.33,7795.33--c:Moonglade,44.148,45.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Silva Fil'naveth|r
    .fly Teldrassil >> Fliege nach Darnassus
    .skipgossip
    .timer 153,Darnassus
    .target Silva Fil'naveth
    .zoneskip Darnassus
    .zoneskip Teldrassil
step << Druid
    #completewith next
    .goto 1450/1,-2400.33,7795.33--c:Moonglade,44.148,45.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Silva Fil'naveth|r
    .fly Teldrassil >> Fliege nach Darnassus
    .skipgossip
    .timer 153,Darnassus
    .target Silva Fil'naveth
    .zoneskip Darnassus
    .zoneskip Teldrassil
step << Druid
    #label catspirit2
    .goto 1457/1,2564.400,10179.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mathrengyl Bearwalker::4217|r
    .target Mathrengyl Bearwalker::4217
    .turnin 98397 >>Gebt die Quest Auf nach Darnassus ab
step << Druid
    #completewith next
    .hs >> Benutzt euren Ruhestein nach Seenhain

-- Druid cat form quest end --

step
    #completewith InRR
    .goto 1433/0,-2234.89,-9435.35
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
	.target Ariena Stormfeather
    .fly Stormwind >> Flieg nach Sturmwind
step << Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Kauft ein|r |T135324:0|t[Langschwert] |cRXP_WARN_und rüstet es auf Stufe 21 aus|r
    >>|cRXP_WARN_Kauft etwas aus dem Auktionshaus, wenn es etwas günstigeres oder besseres gibt|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Kauft ein|r |T135324:0|t[Langschwert] |cRXP_WARN_und rüstet es auf Stufe 21 aus|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_Legt das|r |T135324:0|t[Langschwert] an
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
step
    #optional
    .isQuestComplete 2040
    .goto 1453/0,634.800,-8390.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shoni die Schtille|r
    .turnin 2040 >> Gebt die Quest Unterirdischer Angriff ab
    .target Shoni the Shilent
step
    #optional
    .isQuestComplete 168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .turnin 168 >> Gebt die Quest Die Suche nach Andenken ab
    .goto 1453/0,501.200,-8468.601
    .target Wilder Thistlenettle
step
    #optional
    .isQuestComplete 167
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .turnin 167 >> Gebt die Quest Oh Bruder... ab
    .goto 1453/0,501.200,-8468.601
    .target Wilder Thistlenettle
step << Warrior/Paladin
    #ah
    .goto 1453/0,607.48,-8790.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_WARN_Kauft eine|r |T135280:0|t[Dakische Sichel] |cRXP_WARN_wenn ihr genug Geld habt. Rüstet sie aus, wenn ihr Stufe 21 erreicht|r
    >>|cRXP_WARN_Kauft etwas aus dem Auktionshaus, wenn es etwas günstigeres oder besseres gibt|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
    #ssf
    .goto 1453/0,607.48,-8790.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_WARN_Kauft eine|r |T135280:0|t[Dakische Sichel] |cRXP_WARN_wenn ihr genug Geld habt. Rüstet sie aus, wenn ihr Stufe 21 erreicht|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
    #optional
    #completewith next
    +|cRXP_WARN_Legt die|r |T135280:0|t[Dakische Sichel] an
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.89
    .xp <21,1
step << Warlock
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Geh ins geschlachtete Lamm und dann in den Keller
step << Warlock
    .goto 1453/0,1029.98,-8971.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ursula Deline
step << Warlock
    .goto 1453/0,1041.54,-8983.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .accept 1716 >> Akzeptiert die Quest Verschlinger der Seelen
    .target Gakin the Darkbinder
step << Mage
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >> Reist zum Magierturm
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Elsharin
step << Mage
    .goto 1453/0,847.56,-8991.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >> Lernt |T135763:0|t[Teleportieren: Sturmwind]
	.xp <20,1
    .target Larimaine Purdue
step
    .goto 1453/0,1093.3,-8779.020
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Argos Nightwhisper|r
    .accept 3765 >> Akzeptiert die Quest Verderbnis in der Fremde
    .target Argos Nightwhisper
-- step << Druid
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheldras Moontree|r
--     .goto 1453/0,1100.15,-8776.330
--     .trainer >> Train your class spells
--     .train 768 >> Train |T132115:0|t[Cat Form]
--     .target Sheldras Moontree
step << Paladin/Priest
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Lauf zur Kathedrale in Sturmwind
step << Paladin
    .goto 1453/0,845.95,-8545.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Duthorian Rall|r. Er wird dir den [|cRXP_LOOT_Foliant der Ehre|r] geben
    .use 6776 >>|cRXP_WARN_Benutzt die |T133739:0|t[|cRXP_LOOT_Der Foliant der Ehre|r] um die Quest zu starten|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Der Foliant der Tapferkeit annehmen
    .target Duthorian Rall
step << Paladin
    .goto 1453/0,845.95,-8545.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1649 >>Gebt die Quest Der Foliant der Ehre ab
    .accept 1650 >>Der Foliant der Tapferkeit annehmen
    .target Duthorian Rall
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
step << Rogue
    .goto 1453/0,377.61,-8752.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Osborne the Night Man
step << Rogue
    #completewith next
    .goto 1453/0,374.11,-8762.88,20,0
    .goto 1453/0,326.66,-8818.01,20,0
    .goto 1453/0,323.43,-8817.83,5 >> Betrete das SI:7 Hauptquartier. Geh die Treppe hoch in Richtung |cRXP_FRIENDLY_Meister Mathias Shaw|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 2360 >> Akzeptiert die Quest Mathias und die Defias
    .goto 1453/0,362.28,-8815.23
    .target Master Mathias Shaw
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wu|r oder |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Wu Shen
    .target Ilsa Corbin



----Start of Rogue 20 Quest <1.59x Section----



step << NightElf Rogue/Skyborne Rogue
    .goto 1436/0,1037.42,-10628.27,5,0
    .zone Westfall >> Lauf nach Westfall
    >>Fliegt dorthin, wenn ihr bereits die Flugroute nach Westfall habt
    .isOnQuest 2360
step << NightElf Rogue/Skyborne Rogue
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fp Westfall >> Erlernt die Flugroute nach Westfall
    .target Thor
    .isOnQuest 2360
step << Human Rogue/Dwarf Rogue
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fly Westfall >> Fliegt nach Westfall
    .target Dungar Longdrink
step << !Dwarf Rogue
    .goto 1431/0,404.03,-11014.47,60,0
    .goto 1431/0,432.11,-10878.75,50,0
    .goto 1431/0,551.72,-10688.13
    >>Tötet |cRXP_ENEMY_Zwerggiftweberspinne|r und |cRXP_ENEMY_Giftweberspinne|r. Plündert sie für |cRXP_LOOT_kleiner Giftbeutel|r und ihre |cRXP_LOOT_Klebriges Spinnenbein|r
    >>|cRXP_WARN_You need a |cRXP_LOOT_kleiner Giftbeutel|r um das|r |T134437:0|t[Gegengift] herzustellen |cRXP_WARN_um später den|r |T136230:0|t[Die Berührung von Zanzil] |cRXP_WARN_debuff zu heilen|r
    >>|cRXP_WARN_Behaltet die |cRXP_LOOT_Klebriges Spinnenbeine|r für später|r
    >>|cRXP_WARN_Falls ihr einen|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_oder|r |T625999:0|t|cFFFF7C0ADruiden|r |cRXP_WARN_als Freund habt, könnt ihr diesen Schritt überspringen und sie bitten, es später für euch zu entfernen|r
    .collect 1475,1,2359,1 -- Small Venom Sac (1)
    .collect 2251,6,93,1,1 -- Gooey Spider Legs (6)
    .disablecheckbox
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .itemcount 6452,<1 --Anti Venom (<1)
step << Rogue
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==ACHTET AUF DEN FOLGENDEN BEREICH==|r
    >>|cRXP_WARN_Drückt Escape, dann geht in -> Optionen -> Steuerung|r
    >>|cRXP_WARN_Überprüft "Aktiviere Interaktionstaste" und bindet die "Interagieren mit Ziel" Option auf eine Taste|r
    >>|cRXP_WARN_Zusätzlich wird empfohlen, dass ihr Gegner-Namensplaketten (Standardtaste: V) aktiviert, da es euch erlaubt, Feinde hinter einigen der Ecken innerhalb des Turms zu sehen|r
step << Rogue
    .goto 1436/0,619.17,-11035.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Agentin Kearnen|r
    >>|cRXP_WARN_Ihr MÜSST diese Quest für die|r |T132290:0|t[Gifte] annehmen
    .turnin 2360 >> Gebt die Quest Mathias und die Defias ab
    .accept 2359 >> Klavens Turm annehmen
    .target Agent Kearnen
step << Rogue
    #label TowerKey
    #loop
    .goto 1436/0,514.52,-11114.77,0
    .goto 1436/0,531.32,-11166.80,0
    .goto 1436/0,581.37,-11104.97,0
    .goto 1436/0,514.52,-11114.77,30,0
    .goto 1436/0,531.32,-11166.80,30,0
    .goto 1436/0,581.37,-11104.97,30,0
    >>|T133644:0|t[Taschendiebstahl] |cRXP_ENEMY_Missgestaltete Drohne der Defias|r. Plündert es für |cRXP_LOOT_Turmschlüssel der Defias|r
    >>|cRXP_WARN_Ihr müsst in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_sein, um|r |T133644:0|t[Taschendiebstahl] zu nutzen
    >>|cRXP_WARN_Die |cRXP_ENEMY_Missgestaltete Drohne der Defias|r taucht am Eingang des Turms auf und patrouilliert um das Äußere des Turms herum|r
    >>|cRXP_WARN_Passt auf, da er sehr viel Schaden verursacht. Falls von Euch|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_abbricht, nutzt schnell|r |T132307:0|t[Sprinten] |cRXP_WARN_und lauft weg|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> HIER KLICKEN für eine Videoanleitung
    .mob Malformed Defias Drone
step << Rogue
    #optional
    #completewith Mortwake
    +|cRXP_WARN_Legt|r |T135641:0|t[Krummholzdolch] |cRXP_WARN_für diese Quest an, wenn ihr nicht bereits einen|r |T135641:0|t[Dolch] |cRXP_WARN_angelegt habt|r
    .use 15396
    .itemcount 15396,1
step << Rogue
    #label Mortwake
    .goto 1436,70.421,74.031
    >>|cRXP_WARN_Reist bis zum 2. Stockwerk des Turms hinauf. Während ihr in|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_seid und die |cRXP_ENEMY_Turmwachposten der Defias|r nicht neben euch sind, springt auf den Stuhl, dann auf die Lampe, dann auf das Bücherregal oben auf dem Wegpunkt|r
    >>|cRXP_WARN_Stoppt manuell|r |T132320:0|t[Verstohlenheit]|cRXP_WARN_, dann drückt von Euch "Interagieren mit Ziel" Taste, um das |cRXP_PICK_Dämmerwaldtruhe|r zu öffnen. Plündert sie für|r |cRXP_LOOT_Klaven Mortwakes Tagebuch|r
    >>|cRXP_WARN_NOTIZ: Eure|r |T132320:0|t[Verstohlenheit] |cRXP_WARN_wird kurz nachdem ihr gelootet habt nicht funktionieren|r |cRXP_LOOT_Klaven Mortwakes Tagebuch|r
    >>|cRXP_WARN_Seid bereit zu laufen, wenn ihr nicht die |cRXP_ENEMY_Turmwachposten der Defias|r im 2. Stockwerk tötet. Sie werden euch wahrscheinlich permanent angreifen (aber nicht treffen), wenn ihr auf dem Bücherregal steht, da es ein Ausweich-Platz ist|r
    >>|cRXP_WARN_Wenn ihr einen|r |T135641:0|t[Dolch] |cRXP_WARN_in euren Taschen oder ausgerüstet habt, könnt ihr|r |T132282:0|t[Hinterhalt] |cRXP_WARN_auf die |cRXP_ENEMY_Turmpatrouille der Defias|r und |cRXP_ENEMY_Turmwachposten der Defias|r im Inneren wirken, um sie sofort zu töten. Seid bereit zu laufen, nachdem ihr den ersten |cRXP_ENEMY_Turmwachposten der Defias|r getötet habt und denkt daran, dass ihr von oben getroffen werden könnt. Das ist langsamer, aber VIEL sicherer|r
    >>|cRXP_WARN_Passt auf, da |cRXP_ENEMY_Missgestaltete Drohne der Defias|r und |cRXP_ENEMY_Drohne der Defias|r am Eingang des Turms sein können, wenn ihr aus ihm laufen müsst|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >> HIER KLICKEN für eine Videoanleitung
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >> Stelle ein |T134437:0|t[Gegengift] her
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>|cRXP_WARN_Benutzt |T134437:0|t[Gegengift] aus eurer Taschen, um den |T136230:0|t[Berührung von Zanzil]-Debuff zu entfernen|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Dwarf Rogue
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>|cRXP_WARN_Wirkt|T136225:0|t[Steingestalt],um|T136230:0|t[Berührung von Zanzil] Debuff zu entfernen|r
    .aura -9991
step << Rogue
    #optional
    #completewith KlavenEnd
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Thor
step << !Dwarf Rogue
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >> Lauf in Richtung |cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
step << !Dwarf Rogue
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Wenn ihr einen|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_oder|r |T625999:0|t|cFFFF7C0ADruiden|r |cRXP_WARN_Freund habt, bittet sie, die|r |T136230:0|t[Berührung von Zanzil] |cRXP_WARN_stattdessen für euch zu entfernen|r
    .skill firstaid,80 >> |cRXP_WARN_Steigert eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_auf 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Wenn ihr einen|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_oder|r |T625999:0|t|cFFFF7C0ADruiden|r |cRXP_WARN_Freund habt, bittet sie, die|r |T136230:0|t[Berührung von Zanzil] |cRXP_WARN_stattdessen für euch zu entfernen|r
    .train 7934 >> |cRXP_WARN_Trainiert|r |T134437:0|t[Gegengift]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Stelle ein |T134437:0|t[Gegengift] her
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_Benutzt |T134437:0|t[Gegengift] aus eurer Taschen, um den |T136230:0|t[Berührung von Zanzil]-Debuff zu entfernen|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Rogue
    #optional
    #requires AntiVenomEnd2 << Rogue
    #completewith next
    .goto 1453/0,374.11,-8762.88,20,0
    .goto 1453/0,326.66,-8818.01,20,0
    .goto 1453/0,323.43,-8817.83,10 >> Betrete das SI:7 Hauptquartier. Geh die Treppe hoch in Richtung |cRXP_FRIENDLY_Meister Mathias Shaw|r
step << Rogue
    #label KlavenEnd
    #requires AntiVenomEnd2 << Rogue
    .goto 1453/0,362.28,-8815.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Master Mathias Shaw|r
    >>|cRXP_WARN_Erinnert euch, wieder auf eure Hauptwaffe zu wechseln, sofern ihr sie durch einen|r |T135641:0|t[Dolch] |cRXP_WARN_gewechselt habt|r << Rogue
    .turnin 2359 >> Gebt die Quest Klavens Turm ab
    .target Master Mathias Shaw



----End of Rogue 20 Quest <1.59x Section----




step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_General Marcus Jonathan|r
	.target General Marcus Jonathan
    .goto 1453/0,520.88,-8954.15
    .turnin 120 >> Gebt die Quest Botschaft nach Sturmwind ab
    .accept 121 >> Akzeptiert die Quest Botschaft nach Sturmwind
step
    #completewith next
    .goto 1429/0,84.61,-9457.95,60 >> Lauf nach Goldhain
step
    .goto 1429/0,87.73,-9456.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Smith Argus|r
	.target Smith Argus
    .turnin 118 >> Gebt die Quest Der Preis für Hufeisen ab
    .accept 119 >> Akzeptiert die Quest Zurück zu Verner
step
    #completewith next
    .goto 1429/0,-727.57,-9555.16,50 >> Reist zum Turm von Azora. Erklimmt den Turm
step
    .goto 1429/0,-728.26,-9553.08
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich oben mit |cRXP_FRIENDLY_Theocritus|r
    .accept 94 >> Ein wachsames Auge annehmen
    .xp <20,1
step
    #label InRR
    #completewith FlyR
    .goto 1453/0,489.72,-8837.28,-1
	.goto 1433/0,-1716.28,-9623.29,-1
    .zone Redridge Mountains >>Reist ins Rotkammgebirge
    .fly Redridge >> Fliegt ins Rotkammgebirge
    >>|cRXP_WARN_Falls ihr in Goldhain seid, ist es schneller, von Sturmwind zu fliegen|r
	>>|cRXP_WARN_Falls ihr am Turm von Azora seid, lauft einfach ins Rotkammgebirge|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verner Gutmark|r
	.target Verner Osgood
    .goto 1433/0,-2243.14,-9259.43
    .turnin 119 >> Gebt die Quest Zurück zu Verner ab
    .accept 124 >> Akzeptiert die Quest Das Bellen der Gnolle
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verner Gutmark|r
	.target Verner Osgood
    .goto 1433/0,-2243.14,-9259.43
    .accept 122 >> Akzeptiert die Quest Bauchschuppen
step
    #label FlyR
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Magistrat Solomon|r
	.target Magistrate Solomon
    .goto 1433/0,-2207.10,-9231.34,15,0
    .goto 1433/0,-2221.65,-9218.60
    .turnin 121 >> Gebt die Quest Botschaft nach Sturmwind ab
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto 1433/0,-2205.58,-9351.52
    .turnin 3741 >> Gebt die Quest Hilarys Halskette ab
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dockmeister Baren|r
	.target Dockmaster Baren
    .goto 1433/0,-2172.59,-9261.02
    .turnin 127 >> Gebt die Quest Fischhandel ab
    .accept 150 >> Murlocwilderer annehmen
    .turnin 150 >> Gebt die Quest Murlocwilderer ab
step
#optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Küchenchefin Breanna|r
	.target Chef Breanna
    .goto 1433/0,-2062.96,-9209.62
    .turnin 92 >> Gebt die Quest Rotkammgulasch ab
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto 1433/0,-2045.38,-9245.82
    .turnin 130 >> Gebt die Quest Besuch im Kräuterladen ab
    .accept 131 >> Akzeptiert die Quest Narzissen für eine Dame
step
	#completewith next
	>>Tötet |cRXP_ENEMY_Schwarzer Großdrachenwelpe|r. Plündert sie für |cRXP_LOOT_Welpenbauchschuppe|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    .isOnQuest 92
    >>Tötet |cRXP_ENEMY_Großer Geiferzahn|r. Plündert sie für |cRXP_LOOT_Große Geiferzahnschnauze|r
    >>|cRXP_WARN_Sichert jeden|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_, den ihr plündert, da ihr ihn zum Leveln von|r |T133971:0|t[Kochkunst] |cRXP_WARN_bis 50 verwenden könnt, was später im Dämmerwald erforderlich ist|r
    .goto 1433/0,-1912.31,-9339.93,60,0
    .goto 1433/0,-2270.93,-9591.440,60,0
    .goto 1433/0,-2244.23,-9619.53,60,0
    .goto 1433/0,-1912.31,-9339.93
    .collect 2296,5,92,1
    .mob Great Goretusk
step
	#completewith next
	>>Tötet |cRXP_ENEMY_Schwarzer Großdrachenwelpe|r. Plündert sie für |cRXP_LOOT_Welpenbauchschuppe|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    .goto 1433/0,-2031.70,-9098.71,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2430.70,-9030.51,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2031.70,-9098.71,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2430.70,-9030.51,60,0
    .goto 1433/0,-2059.27,-9091.91,0
    >>Tötet |cRXP_ENEMY_Schläger der Rotkammgnolle|r und |cRXP_ENEMY_Mystiker der Rotkammgnolle|r. Plündert sie für |cRXP_LOOT_Eisenspitze|r und |cRXP_LOOT_Eisenniete|r
    .complete 124,1 --Redridge Brute (10)
    .mob +Redridge Brute
    .complete 124,2 --Redridge Mystic (8)
    .mob +Redridge Mystic
    .complete 89,1 --Iron Pike (5)
    .mob +Redridge Mystic
	.mob +Redridge Brute
    .complete 89,2 --Iron Rivet (5)
	.mob +Redridge Mystic
	.mob +Redridge Brute
step
    .goto 1433/0,-2514.49,-9033.70,50,0
    .goto 1433/0,-2580.70,-9091.33,50,0
    .goto 1433/0,-2321.07,-9527.58,50,0
    .goto 1433/0,-2364.92,-9645.44
	>>Tötet |cRXP_ENEMY_Schwarzer Großdrachenwelpe|r. Plündert sie für |cRXP_LOOT_Welpenbauchschuppe|r
	.mob Black Dragon Whelp
    .complete 122,1 --Underbelly Whelp Scale (6)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_läuft im Gasthaus herum|r
	.target Darcy
    .goto 1433/0,-2152.62,-9216.430
    .turnin 131 >> Gebt die Quest Narzissen für eine Dame ab
step
    #completewith next
    .goto 1433/0,-1908.40,-9299.83,0
    .goto 1433/0,-1988.50,-9176.32,0
    .goto 1433/0,-1937.7,-9371.64,0
    .goto 1433/0,-2146.54,-9225.84
    +|cRXP_WARN_Level up eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_benutzt die|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_WARN_welche ihr vorher gefarmt habt. Ihr braucht 50|r |T133971:0|t[Kochkunst]
    +|cRXP_WARN_Falls ihr mehr|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r braucht |cRXP_WARN_reist nach Westen in die nähe von|r |cRXP_ENEMY_Stopfwanst|r |cRXP_WARN_und tötet mehr|r |cRXP_ENEMY_Großer Geiferzahn|r
    .skill cooking,50,1
    .mob Great Goretusk
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Verner Gutmark|r
	.target Verner Osgood
    .goto 1433/0,-2243.79,-9259.860
    .turnin 124 >> Gebt die Quest Das Bellen der Gnolle ab
    .turnin 122 >> Gebt die Quest Bauchschuppen ab
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Großknecht Oslow|r
	.target Foreman Oslow
    .goto 1433/0,-2267.67,-9280.140
    .turnin 89 >> Gebt die Quest Die Immerruhbrücke ab
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
#version 1
<< Alliance Hunter
#group RestedXP Forever Dungeonführer (A)
#subgroup Speedrun Dungeonführer 1-20
--#groupid RXP-SRGCE-A1
#name 19-21 Dunkelküste/Eschental
#next RestedXP Forever Dungeonführer (A)\21-23 Eschental/Stonetalon

step
    #optional
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 951 >> Gebt die Quest Mathystra-Relikte ab
    .target Onu
    .isQuestTurnedIn 731 --Only shows if Prospector was already escorted
step
    #optional
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kerlonian Evershade|r, um die Eskorte zu beginnen
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn er nicht dort ist. Es kann bis zu 25 Minuten dauern, bis er respawnt|r
    >>|cRXP_WARN_Dies ist eine Zeitquest, ihr müsst ihn in 20 Minuten zu seinem Beutel bringen|r
    .accept 5321 >> Akzeptiert die Quest Der Schläfer ist erwacht
    .target Kerlonian Evershade
    .isQuestTurnedIn 731 --Only shows if Prospector was already escorted
step
    #optional
    .isOnQuest 5321
    .goto 1439/1,34.78,5001.570
    >>Öffnet |cRXP_PICK_Kerlonians Truhe|r. Plündert sie für |T134229:0|t[|cRXP_LOOT_Horn der Erweckung|r]
    .complete 5321,1 -- Horn of Awakening (1)
    .isQuestTurnedIn 731 --Only shows if Prospector was already escorted
step
    #sticky
    #label prospector
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r
    >>|cRXP_WARN_Ihr müsst möglicherweise warten, bis er respawnt oder bis andere die Eskorte beenden|r
    .turnin 729 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .isOnQuest 729
    .target Prospector Remtravel
step
    .goto 1439/1,602.01,4678.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r
    >>Das wird eine Eskorte starten
    .accept 731,1 >> Der geistesabwesende Ausgrabungsleiter annehmen
    >>|cRXP_WARN_Diese Quest ist SEHR schwierig. Überspringt diesen Schritt, wenn ihr keine Gruppe finden könnt oder sie nicht solo schafft|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Klickt hier für eine Videoanleitung|r
    .target Prospector Remtravel
    .isQuestAvailable 731
step
    #requires prospector
    >>|cRXP_WARN_Eskortiert |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r durch die Ausgrabung|r
    >>|cRXP_WARN_Diese Quest ist SEHR schwierig. Überspringt diesen Schritt, wenn ihr keine Gruppe finden könnt oder sie nicht solo schafft|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Klickt hier für eine Videoanleitung|r
    .complete 731,1
    .isOnQuest 731
step
    #optional
    #completewith TheryluneEnd
    >>Tötet |cRXP_ENEMY_Twilight-Jünger|r und |cRXP_ENEMY_Twilight-Rohling|r. Plündert sie für das |T133743:0|t[|cRXP_LOOT_Buch: Die Macht in der Tiefe|r]
    *|cRXP_WARN_Passt auf, da die |cRXP_ENEMY_Twilight-Rohling|r euch für 6 Sek.|r |T132343:0|t[Entwaffnen] |cRXP_WARN_können|r << Rogue/Paladin/Warrior
    *|cRXP_WARN_Passt auf, da die |cRXP_ENEMY_Zwielicht Jünger|r |r |T135953:0|t[Erneuerung] wirken |cRXP_WARN_und eine 3-Sekunden-|r |T135915:0|t[Heilung]
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
    --  .use 13536
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Therylune|r. Es wird eine Escort quest starten
    >>|cRXP_WARN_Überspringt diesen Schritt, falls sie nicht da ist|r
    .accept 945 >> Akzeptiert die Quest Therylunes Flucht
    .target Therylune
step
    #label TheryluneEnd
    .goto 1439/1,288.26,4530.40
    >>|cRXP_WARN_Eskortiert |cRXP_FRIENDLY_Therylune|r aus Der Meistergleve|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945
step
    #optional
    .goto 1439,31.251,87.419
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4733 >> Akzeptiert die Quest Gestrandete Meereskreatur
    >>|cRXP_WARN_Diese Quest kann SEHR schwierig sein. Bekämpft die |cRXP_ENEMY_Murlocs|r einzeln, Andernfalls könntest du die Aggro von mehreren gleichzeitig auf dich ziehen.|r
    .link https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_Klickt hier für einen Videoleitfaden|r
step
    #optional
    .goto 1439,31.229,85.564
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4732 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    #optional
    .goto 1439,31.690,83.700
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4731 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    #optional
    .goto 1439,32.644,80.711
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4730 >> Akzeptiert die Quest Gestrandete Meereskreatur
step
    #optional
    .goto 1439/1,227.35,4575.38,50,0
    .goto 1439/1,205.73,4639.130,50,0
    .goto 1439/1,129.10,4741.75,50,0
    .goto 1439/1,86.52,4839.13,50,0
    .goto 1439/1,338.70,4821.22,50,0
    .goto 1439/1,452.67,4684.98
    >>Tötet |cRXP_ENEMY_Ergrauter Distelbär|r. Plündert sie für ihren |cRXP_LOOT_Ergrauter Skalp|r
    >>|cRXP_WARN_Passt auf, wenn sie|r |T132152:0|t[Verheeren] |cRXP_WARN_wirken, einen sofortigen Angriff, der 20-40 Schaden verursacht und euch für 2 Sek. zu Boden wirft|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    .goto 1439/1,230.69,4815.33
    >>Klickt auf die|cRXP_PICK_Dröhnkiste 525|r auf dem Boden
    .turnin 1003 >> Gebt die Quest Dröhnkiste 525 ab
    .isOnQuest 1003
step
    .goto 1439/1,-5.83,4608.570
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Volcor|r
    >>|cRXP_WARN_Tötet die Furbolgs in der Nähe der Höhle, bevor ihr mit ihm sprecht|r
    .turnin 993 >> Gebt die Quest Ein verirrter Meister ab
    .accept 994 >> Akzeptiert die Quest Flucht durch Gewalt
    .target Volcor
    .isOnQuest 993
step
    #optional
    .goto 1439/1,-5.83,4608.570
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Volcor|r
    >>|cRXP_WARN_Tötet die Furbolgs in der Nähe der Höhle, bevor ihr mit ihm sprecht|r
    .accept 994 >> Akzeptiert die Quest Flucht durch Gewalt
    .target Volcor
    .isQuestTurnedIn 993
step
    .goto 1439,43.594,84.489,0
    .goto 1439,42.576,82.897,0
    .goto 1439,43.594,84.489,15,0
    .goto 1439,42.576,82.897,15,0
    .goto 1439,42.004,81.688
    >>Eskortiert |cRXP_FRIENDLY_Volcor|r
    >>Nachdem ihr die 3. Fackel überquert und die Höhle verlassen habt, spawnet ein |cRXP_ENEMY_Furbog|r von beiden Seiten und greift |cRXP_FRIENDLY_Volcor|r an
    >>Auf halbem Weg zur Straße spawnen |cRXP_ENEMY_Furbolgs|r von beiden Seiten und greifen |cRXP_FRIENDLY_Volcor|r an
    .complete 994,1 --Help Volcor to the road (1)
    .isQuestTurnedIn 993
step
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 951 >> Gebt die Quest Mathystra-Relikte ab
    .target Onu
    .isOnQuest 951
step
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kerlonian Evershade|r, um die Eskorte zu beginnen
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn er nicht dort ist. Es kann bis zu 25 Minuten dauern, bis er respawnt|r
    >>|cRXP_WARN_Dies ist eine Zeitquest, ihr müsst ihn in 20 Minuten zu seinem Beutel bringen|r
    .accept 5321 >> Akzeptiert die Quest Der Schläfer ist erwacht
    .target Kerlonian Evershade
    .itemcount 13536,<1 --Horn of Awakening
step
    .isOnQuest 5321
    .goto 1439/1,34.78,5001.570
    >>Öffnet |cRXP_PICK_Kerlonians Truhe|r. Plündert sie für |T134229:0|t[|cRXP_LOOT_Horn der Erweckung|r]
    .complete 5321,1 -- Horn of Awakening (1)
    .itemcount 13536,<1 --Horn of Awakening
step
    #label Kerlonian
    .goto 1439/1,206.400,4402.500
    >>|cRXP_WARN_Eskortiert |cRXP_FRIENDLY_Kerlonian|r zu seinen Beutel |cRXP_WARN_in Dunkelküste|r|r
    .use 13536 >> |cRXP_WARN_Benutzt das|r |T134229:0|t[|cRXP_LOOT_Horn der Erweckung|r] |cRXP_WARN_wenn |cRXP_FRIENDLY_Kerlonian|r neben euch einschläft|r
    >>|cRXP_WARN_Vermeidet es so weit wie möglich, auf der Hauptstraße zu laufen. Feinde spawnen nur, wenn ihr auf der Straße seid|r
    .complete 5321,2
    .isOnQuest 5321
step
    #label AshenStart
    #completewith tower
    .zone Ashenvale >> Reist südlich ins Eschental
    .goto 1440/1,-12.70,4150.17
step
    #sticky
    #completewith next
    >>Tötet und plündert |cRXP_WARN_Geisterpfotenläufer|r,die ihr beim Questen antrefft. Behaltet alle |T133970:0|t[|cRXP_LOOT_Magere Wolfflanke|r], die ihr erhaltet. Ihr werdet später 10 für eine Kochquest benötigen
    .collect 1015,10
    .mob Ghostpaw Runner
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Liladris Moonriver|r
	.target Liladris Moonriver
    .goto 1440/1,128.01,3305.31
    .turnin 5321 >> Gebt die Quest Der Schläfer ist erwacht ab
    .isQuestComplete 5321
step
    #label tower
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Delgren der Läuterer|r
	.target Delgren the Purifier
    .goto 1440/1,189.71,3185.77
    .turnin 967 >> Gebt die Quest Der Turm von Althalaxx ab
    .accept 970 >> Der Turm von Althalaxx annehmen
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto 1440/1,175.87,3189.61
    .accept 1010 >> Akzeptiert die Quest Bathranshaar
    .xp <20,1
step
    .goto 1440/1,-102.08,3492.890
    >>Tötet |cRXP_ENEMY_Kultist des dunklen Strangs|r, |cRXP_ENEMY_Adept des dunklen Strangs|r, |cRXP_ENEMY_Vollstrecker des dunklen Strangs|r und |cRXP_ENEMY_Ausgräber des dunklen Strangs|r. Plündert sie für |cRXP_LOOT_Leuchtender Seelenedelstein|r
    >>Hab Geduld, dieser Gegenstand hat eine niedrige Drop-Rate
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Öffnet |cRXP_PICK_Pflanzenbündel|r auf dem Boden. Plündert sie für |cRXP_LOOT_Bathranshaar|r
    >>|cRXP_WARN_Sie sehen wie kleine braune Säcke aus. Sie können schwer zu sehen sein|r
    .complete 1010,1
    .isOnQuest 1010
step
    .goto 1440/1,-102.08,3492.890
    .xp 20-1650 >>Tötet weiter |cRXP_ENEMY_Mobs des dunklen Strangs|r bis ihr genug XP habt, um Stufe 20 zu erreichen
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Delgren der Läuterer|r
	.target Delgren the Purifier
    .goto 1440/1,189.71,3185.77
    .turnin 970 >> Gebt die Quest Der Turm von Althalaxx ab
step
    .goto 1440/1,-138.99,3806.92
    .xp 20 >> Farmt bis Stufe 20
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto 1440/1,175.87,3189.61
    .accept 1010 >> Akzeptiert die Quest Bathranshaar
step
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Öffnet |cRXP_PICK_Pflanzenbündel|r auf dem Boden. Plündert sie für |cRXP_LOOT_Bathranshaar|r
    >>|cRXP_WARN_Sie sehen wie kleine braune Säcke aus. Sie können schwer zu sehen sein|r
    .complete 1010,1
    .isOnQuest 1010
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto 1440/1,175.87,3189.61
    .turnin 1010 >> Gebt die Quest Bathranshaar ab
    .accept 1020 >> Akzeptiert die Quest Orendils Heilmittel
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Delgren der Läuterer|r
    .goto 1440/1,189.71,3185.77
    .turnin 970 >> Gebt die Quest Der Turm von Althalaxx ab
    .accept 973 >> Der Turm von Althalaxx annehmen
    .target Delgren the Purifier
step
    #sticky
    #completewith Astranaar
    >>Tötet und plündert |cRXP_WARN_Geisterpfotenläufer|r,die ihr beim Questen antrefft. Behaltet alle |T133970:0|t[|cRXP_LOOT_Magere Wolfflanke|r], die ihr erhaltet. Ihr werdet später 10 für eine Kochquest benötigen
    .collect 1015,10
    .mob Ghostpaw Runner
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Therysil|r
	.target Therysil
    .goto 1440/1,394.43,2677.63
    .turnin 945 >> Gebt die Quest Therylunes Flucht ab
    .isQuestComplete 945
step << Hunter
    .goto 1440/1,522.900,2716.100,30 >> Lauft die Rampe nach Nordwesten hinauf
step
    #completewith Astranaar
    >>Sammelt bis zu 6 |cRXP_LOOT_Klebriges Spinnenbein|r von den |cRXP_ENEMY_Spinnen|r in der Zone auf für später
    .collect 2251,6,93,1 -- Gooey Spider Legs
step << Hunter
    #sticky
    .goto 1440/1,663.38,2365.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bolyun|r
    .trainer >> Erlernt die Begleiter Fähigkeiten
    .target Bolyun
--XX Train in darn at 20 on 2x
step << Hunter
    .goto 1440/1,661.42,2373.12--c:Ashenvale,18.010,59.832
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alenndaar Lapidaar|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .train 5118 >> Erlernt |T132242:0|t[Aspekt des Geparden]
    .target Alenndaar Lapidaar
step
    #label Astranaar
    .goto 1440/1,-283.73,2827.920
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar>> Erlernt die Flugroute nach Astranaar
	.target Daelyshia
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shindrell Feuerflink|r
	.target Shindrell Swiftfire
    .goto 1440/1,-299.30,2796.01
    .accept 1008 >> Akzeptiert die Quest Der Zoramstrand
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Thenysil|r
	.target Sentinel Thenysil
    .goto 1440/1,-311.99,2759.11
    .accept 1070 >> Wache halten im Steinkrallengebirge annehmen
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Faldreas Goeth'Shael|r
	.target Faldreas Goeth'Shael
    .goto 1440/1,-362.16,2785.640
    .accept 1056 >> Akzeptiert die Quest Reise zum Steinkrallengipfel
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Raene Wolfsläufer|r
	.target Raene Wolfrunner
    .goto 1440/1,-411.18,2767.19
    .accept 991 >> Raenes Säuberung annehmen
    .accept 1054 >> Die Auswahl der Bedrohung annehmen
step
    #label HCHunterNoHS --hidden step for #include
step << NightElf Hunter
    .goto 1440/1,-433.09,2781.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Kimlya|r
    .home >> Setzt von Euch Ruhestein auf Astranaar
    .target Innkeeper Kimlya
step
    #label HCHunterNoHSStart --hidden step for #include
step
    .goto 1440/1,-410.60,2758.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Maliynn|r
    .vendor >> |cRXP_BUY_Kaufe bei Bedarf Essen und Wasser|r
    .target Maliynn
step
    .goto 1440/1,-454.43,2682.24
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pelturas Weißmond|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Gebt die Quest Orendils Heilmittel ab
    .timer 24,Orendils Heilmittel Roleplay
    .accept 1033 >> Elunes Träne annehmen
step << Hunter
    .goto 1440/1,-306.80,2720.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Haljan Eichenherz|r
    .vendor >> |cRXP_BUY_Füllt eure Munition auf, falls nötig|r
    .target Haljan Oakheart
step
    #completewith ElunesTear
    >>Behalte bis zu 6 |cRXP_LOOT_Klebriges Spinnenbein|r was du von den |cRXP_ENEMY_Spinnen|r in der Zone gelootet hast. Du brauchst sie später für eine Quest
    .collect 2251,6,93,1 -- Gooey Spider Legs
step
    .goto 1440/1,-974.00,2890.19
    >>Loote |cRXP_LOOT_Elunes Träne|r auf dem Boden
    .complete 1033,1
step
    #label ElunesTear
    .goto 1440/1,-454.43,2682.24
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pelturas Weißmond|r
	.target Pelturas Whitemoon
    .turnin 1033 >> Gebt die Quest Elunes Träne ab
    .timer 17,Elunes Träne RP
    .accept 1034 >> Die Sternenstaubruinen annehmen
step
    .goto 1440/1,-220.3,2067.24
    >>Loote die |cRXP_PICK_Mit Sternenstaub bedeckter Busch|r für |cRXP_LOOT_Hand voll Sternenstaub|r
    >>|cRXP_WARN_Ihre Spawpunkte sind über die gesamte Insel verstreut|r
    .complete 1034,1
step
    #completewith next
    .goto 1440/1,-126.30,2203.69,15 >> Lauft zum Fuß des Berges
    .goto 1440/1,-99.78,2305.170,15 >>Lauft geradeaus nach Norden, während ihr den Berg erklimmt
step
    #completewith next
    .goto 1440/1,114.17,2337.45,8 >> Klettert den Hügel neben dem großen Baum rechts vom Eingang des Schrein des Sengenden Feuers hinauf
    >>Springt über die Baumwurzel und haltet euch rechts, um Mobs zu vermeiden, die euch angreifen könnten
step
    .goto 1440/1,242.76,2340.53
    >>Tötet |cRXP_ENEMY_Ilkrud Magthrull|r. Plündert ihn für |cRXP_LOOT_Ilkrud Magthrulls Foliant|r
    >>|cRXP_ENEMY_Ilkrud Magskluve|r |cRXP_WARN_wird|r |T136221:0|t[Ilkruds Wächter] wirken |cRXP_WARN_, was ein 5 Sekunden langer Zauber ist und 2 Leerwandler beschwört. Stoppt diesen Zauber, wenn ihr es könnt|r
    >>|cRXP_WARN_Macht einen Fluchtweg frei, damit ihr die|cRXP_ENEMY_Sukkubus|r zusammen mit ihm zurücksetzen könnt, falls nötig. Ihr könnt diesen Schritt überspringen und ihn auf Stufe 23 tun, falls gewünscht|r
    .complete 973,1
    .link https://youtu.be/03nTrdcQiKY >> |cRXP_WARN_Klickt hier für Videoreferenz|r
	.isOnQuest 973
    .mob Ilkrud Magthrull
step
    .isQuestComplete 973
    .goto 1440/1,189.71,3185.77
    .target Delgren the Purifier
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Delgren der Läuterer|r
    .turnin 973 >> Gebt die Quest Der Turm von Althalaxx ab
step
    #label HCHunterEnd --hidden step for #include
step
    #sticky
    #completewith StatuetteStart
    >>Behalte bis zu 6 |cRXP_LOOT_Klebriges Spinnenbein|r was du von den |cRXP_ENEMY_Spinnen|r in der Zone gelootet hast. Du brauchst sie später für eine Quest
    .collect 2251,6,93,1 -- Gooey Spider Legs
step
    #sticky
    #completewith StatuetteStart
    >>Tötet und plündert |cRXP_WARN_Geisterpfotenläufer|r,die ihr beim Questen antrefft. Behaltet alle |T133970:0|t[|cRXP_LOOT_Magere Wolfflanke|r], die ihr erhaltet. Ihr werdet später 10 für eine Kochquest benötigen
    .collect 1015,10
    .mob Ghostpaw Runner
step
    #label StatuetteStart
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto 1440/1,847.11,3470.21
    .accept 1007 >> Die antiken Statuetten annehmen
step
    #completewith nagas
    >>Tötet |cRXP_ENEMY_Rächerflossen Nagas|r. Plündert sie für ihre |cRXP_LOOT_Köpfe|r
    >>Mach dir keine Umstände, dies jetzt abzuschließen
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .complete 1008,1
step
    .goto 1440/1,881.13,3879.57
    >>Sammelt |cRXP_LOOT_Die antike Statuette|r vom Boden auf
    .complete 1007,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto 1440/1,847.11,3470.21
    .turnin 1007 >> Gebt die Quest Die antiken Statuette ab
    .timer 22,Die antiken Statuetten RP
    .accept 1009 >> Ruuzel annehmen
step
    .goto 1440/1,1323.55,4159.35
    >>Tötet |cRXP_ENEMY_Ruuzel|r. Plündert sie für den |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patroulliert die Insel mit einem |cRXP_ENEMY_Myrmidone der Rächerflossen|r und einer |cRXP_ENEMY_Meerhexe der Rächerflossen|r ab. Tötet einen von ihnen und setzt sie zurück, falls nötig|r
    >>|cRXP_WARN_Wenn ihr irgendwelche|r |T133717:0|t[Bomben]|cRXP_WARN_/|r[Granaten] habt|cRXP_WARN_könnt ihr sie auch verwenden, um die Mobs zu trennen|r |cRXP_ENEMY_Ruuzel|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_ist ein rar-Spawn, der auch den |cRXP_LOOT_Ring of Zoram|r fallen lassen kann, falls ihr sie seht|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Klickt hier für eine Videoreferenz zu "Teil pulling"|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
    .skill engineering,<1,1
step
    #label nagas
    .goto 1440/1,1323.55,4159.35
    >>Tötet |cRXP_ENEMY_Ruuzel|r. Plündert sie für den |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patroulliert die Insel mit einem |cRXP_ENEMY_Myrmidone der Rächerflossen|r und einer |cRXP_ENEMY_Meerhexe der Rächerflossen|r ab. Tötet einen von ihnen und setzt sie zurück, falls nötig|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_ist ein rar-Spawn, der auch den |cRXP_LOOT_Ring of Zoram|r fallen lassen kann, falls ihr sie seht|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
step
    .goto 1440/1,1296.33,4088.67,0
    .goto 1440/1,866.14,4013.71,0
    .goto 1440/1,843.07,3863.42,0
    .goto 1440/1,942.84,3710.83,0
    .goto 1440/1,1072.01,3518.64,0
    .goto 1440/1,1296.33,4088.67,70,0
    .goto 1440/1,866.14,4013.71,70,0
    .goto 1440/1,843.07,3863.42,70,0
    .goto 1440/1,942.84,3710.83,70,0
    .goto 1440/1,1072.01,3518.64,70,0
    .goto 1440/1,942.84,3710.83,70,0
    .goto 1440/1,843.07,3863.42,70,0
    .goto 1440/1,866.14,4013.71,70,0
    >>Tötet |cRXP_ENEMY_Rächerflossen Nagas|r. Plündert sie für ihre |cRXP_LOOT_Köpfe|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .mob Wrathtail Myrmidon
    .mob Wrathtail Priestess
    .mob Wrathtail Razortail
    .mob Wrathtail Sea Witch
    .complete 1008,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto 1440/1,847.11,3470.21
    .turnin 1009 >> Gebt die Quest Ruuzel ab
step
    #sticky
    #completewith SoulGemStart
    >>Behalte bis zu 6 |cRXP_LOOT_Klebriges Spinnenbein|r was du von den |cRXP_ENEMY_Spinnen|r in der Zone gelootet hast. Du brauchst sie später für eine Quest
    .collect 2251,6,93,1 -- Gooey Spider Legs
step
    #sticky
    #completewith SoulGemStart
    >>Tötet und plündert |cRXP_WARN_Geisterpfotenläufer|r,die ihr beim Questen antrefft. Behaltet alle |T133970:0|t[|cRXP_LOOT_Magere Wolfflanke|r], die ihr erhaltet. Ihr werdet später 10 für eine Kochquest benötigen
    .collect 1015,10
    .mob Ghostpaw Runner
step
    #label SoulGemStart
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Teronis' Leichnam|r
	.target Teronis' Corpse
    .goto 1440/1,528.79,3045.86
    .turnin 991 >> Gebt die Quest Raenes Säuberung ab
    .accept 1023 >> Raenes Säuberung annehmen
step
    #sticky
    #completewith GlowingGem
    >>Behaltet alle |T134304:0|t[Murlocflossen], die ihr plündert. Ihr braucht später 8 für eine Quest
    .collect 1468,8 --Murloc Fin(8)
step
    #label GlowingGem
    .goto 1440/1,523.02,2988.59,50,0
    .goto 1440/1,579.54,3055.08,50,0
    .goto 1440/1,488.42,3073.53,50,0
    .goto 1440/1,528.79,3045.86
    >>Tötet |cRXP_ENEMY_Matschkrabbler der Salzflossen|r. Plündert sie für |cRXP_LOOT_Leuchtender Edelstein|r
    >>|cRXP_WARN_Passt auf, da die |cRXP_ENEMY_Orakels|r heilen können und alle paar Sek. einen Schockzauber mit 90 Schaden wirken|r
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
    .complete 1023,1
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    .hs >> Ruhestein nach Auberdine
step << NightElf Hunter
    #softcore
    #completewith next
    .deathskip >> Sterbt auf der östlichen Seite des Sees und lässt euch vom Geistheiler in Astranaar wieder beleben
step << NightElf Hunter
    #hardcore
    #completewith next
    .goto 1440/1,-283.73,2827.92,200 >> Reist nach Astranaar
step << NightElf Hunter
    .goto 1440/1,-284.31,2828.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Daelyshia|r
    .fly Darkshore>> Fliegt zur Dunkelküste
    .target Daelyshia
step
    #optional
    .goto 1439/1,489.35,6506.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .turnin 731 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .accept 741 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Archaeologist Hollee
step
    #completewith end
    .vendor >> Restock/Nachschub
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 995 >> Gebt die Quest Flucht durch Verstohlenheit ab
    .target Terenthis
    .isOnQuest 995
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .turnin 994 >> Gebt die Quest Flucht durch Gewalt ab
    .target Terenthis
    .isOnQuest 994
step
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4730 >> Gebt die Quest Gestrandete Meereskreatur ab
    .turnin 4731 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .turnin 4732 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .turnin 4733 >> Gebt die Quest Gestrandete Meereskreatur ab
    .target Gwennyth Bly'Leggonde
step
    .goto 1439/1,561.66,6343.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Caylais Mondfeder|r
    .fly Teldrassil >> Fliegt nach Teldrassil
	.target Caylais Moonfeather
step
    #optional
    #completewith next
    .goto 1438/1,968.90,8795.34
    .zone Darnassus >> Nimm das Lila Portal nach Darnassus
step << Hunter
    .goto 1457/1,2511.04,10178.01
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .xp <22,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Garryeth|r
    .goto 1457/1,2515.03,9940.50
    .bankdeposit 5996,1468,2251,1015 >> Deponiert die folgenden Gegenstände in eurer Bank
    .target Garryeth
    >>|T134797:0|t[Elixir der Wasseratmung] --5996
    >>|T134304:0|t[Murlocflossen] --1468
    >>|T134321:0|t[Klebriges Spinnenbein] --2251
    >>|T133970:0|t[Magere Wolfflanke] --1015
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ilyenia Mondfeuer|r
    .skipgossipid 96881
    .goto 1457/1,2329.19,9908.60
    .train 264 >> Erlernen Bogen
    .train 227 >> Erlernt Stäbe
    .target Ilyenia Moonfire
    .zoneskip Darnassus,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Chefarchäologe Grauflaum|r
	.target Chief Archaeologist Greywhisker
    .goto 1438/1,2607.86,9641.94
    .turnin 741 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .accept 942 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .isOnQuest 741
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Chefarchäologe Grauflaum|r
	.target Chief Archaeologist Greywhisker
    .goto 1438/1,2607.86,9641.94
    .accept 942 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .isQuestTurnedIn 741
step << NightElf Hunter
    #label end
    .hs >> Ruhestein nach Astranaar
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    .goto 1457/1,2626.51,9946.11
    .zone Teldrassil >> Nimm das Lila Portal nach Rut'Theran
    .zoneskip Ashenvale
    .zoneskip Darkshore
step << Dwarf Hunter/Human Hunter/Skyborne Hunter
    #label end
    .goto 1438/1,841.56,8640.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vesprystus|r
    .fly Ashenvale >> Fliegt ins Eschental
    .target Vesprystus
    .zoneskip Ashenvale
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
#version 1
<< Alliance !Hunter
#group RestedXP Forever Dungeonführer (A)
#subgroup Speedrun Dungeonführer 1-20
--#groupid RXP-SRGCE-A1
#name 20-21 Dunkelküste/Eschental
#next RestedXP Forever Dungeonführer (A)\21-23 Steinkrallengebirge/Ashenvale


step << Druid
	#completewith next
	.cast 18960 >> Caste Teleportieren: Moonglade
	.zoneskip Moonglade
step << Druid
    .goto 1450/1,-2593.82,7867.06
	>>Gehe nach Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
step
    #optional
    #completewith AshenvaleEnd
    .hs >> Ruhestein nach Auberdine
step
    #optional
    #sticky
    .abandon 2040 >> Brecht die Quest Unterirdischer Angriff ab
    .abandon 167 >> Brecht die Quest Oh Bruder... ab
    .abandon 168 >> Brecht die Quest Die Suche nach Andenken ab
step
    .goto 1439/1,504.41,6402.39
    >>Klickt das |cRXP_PICK_Gesucht-Plakat|r
    .accept 4740 >> Akzeptiert die Quest GESUCHT: Gurgelbacke!
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 948 >> Akzeptiert die Quest Onu
    .target Barithras Moonshade
step
    .goto 1439/1,489.35,6506.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .accept 729 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Archaeologist Hollee
step
    .goto 1439,38.325,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gershala Nachtraunen|r
    .turnin 3765 >> Gebt die Quest Verderbnis in der Fremde ab
    .target Gershala Nightwhisper
    .isOnQuest 3765
step
    .goto 1439,39.373,43.483
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Terenthis|r
    .accept 993 >> Akzeptiert die Quest Ein verirrter Meister
	.target Terenthis
    .isQuestTurnedIn 986
step
    #optional
    #completewith OnuGrove
    >>|cRXP_WARN_Falls ihr |r |T133762:0|t[Verzauberter Mondpirscher-Umhang]|cRXP_WARN_ anlegt, stellt sicher, dass ihr euren aktuellen Umhang für später speichert, da der |r |T133762:0|t[Verzauberter Mondpirscherumhang] |cRXP_WARN_ bei einer späteren Abgabe verloren geht|r
    .equip 15,5387 >>|cRXP_WARN_Legt den|r |T133762:0|t[Verzauberter Mondpirscherumhang],an |cRXP_WARN_wenn er besser ist als eurer aktuell angelegter Umhang|r
    .itemcount 5387,1
    .itemStat 15,QUALITY,<7
step
    #completewith TheryluneEnd
    #optional
    .goto 1439/1,306.60,4784.11,0
    >>Tötet |cRXP_ENEMY_Ergrauter Distelbär|r. Plündert sie für ihren |cRXP_LOOT_Ergrauter Skalp|r
    >>|cRXP_WARN_Passt auf, wenn sie|r |T132152:0|t[Verheeren] |cRXP_WARN_wirken, einen sofortigen Angriff, der 20-40 Schaden verursacht und euch für 2 Sek. zu Boden wirft|r
    .complete 1003,1
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
    .subzoneskip 449 -- Master's Glaive
step
    #optional
    #completewith OnuGrove
    .goto 1439,43.555,76.293,80 >> Reist zum Hain der Uralten
step
    #label OnuGrove
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 952 >> Gebt die Quest Der Hain der Uralten ab << NightElf
    .turnin 948 >> Gebt die Quest Onu ab
    .accept 944 >> Akzeptiert die Quest Die Meistergleve
    .target Onu
step
    #label MasterG
    .goto 1439/1,417.30,4575.82,100 >> Reist zur Meistergleve
    .subzoneskip 449
    .isOnQuest 944
step
    #optional
    #completewith FunandGames
    >>Tötet |cRXP_ENEMY_Twilight-Jünger|r und |cRXP_ENEMY_Twilight-Rohling|r. Plündert sie für das |T133743:0|t[|cRXP_LOOT_Buch: Die Macht in der Tiefe|r]
    *|cRXP_WARN_Passt auf, da die |cRXP_ENEMY_Twilight-Rohling|r euch für 6 Sek.|r |T132343:0|t[Entwaffnen] |cRXP_WARN_können|r << Rogue/Paladin/Warrior/Shaman
    *|cRXP_WARN_Passt auf, da die |cRXP_ENEMY_Zwielicht Jünger|r |r |T135953:0|t[Erneuerung] wirken |cRXP_WARN_und eine 3-Sekunden-|r |T135915:0|t[Heilung]
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
step
    #optional
    .goto 1439/1,390.700,4542.700
    >>Entdeckt Die Meistergleve
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #completewith next
    .cast 5809 >> |cRXP_WARN_Benutzt die|r |T134715:0|t[Wahrsagephiole] |cRXP_WARN_und platziert sie auf dem Boden|r
    .use 5251
step
    .goto 1439/1,417.30,4575.82
    >>|cRXP_WARN_Klickt die |cRXP_PICK_Wahrsageschale|r auf dem Boden|r
    .turnin 944 >> Gebt die Quest Die Meistergleve ab
    .accept 949 >> Akzeptiert die Quest Das Twilight-Lager
    .use 5251
step
    #label FunandGames
    .goto 1439,38.537,86.050
    >>Klickt den |cRXP_PICK_Twilight-Foliant|r auf dem nördlichen Sockel
    .turnin 949 >> Gebt die Quest Das Twilight-Lager ab
    .accept 950 >> Akzeptiert die Quest Rückkehr zu Onu
    .accept 98042 >>Akzeptiert die Quest Ein Blick in den Abgrund
step
    #completewith TheryluneEnd
    >>Tötet |cRXP_ENEMY_Twilight-Jünger|r und |cRXP_ENEMY_Twilight-Rohling|r. Plündert sie für das |cRXP_LOOT_Unvergleichliches Auge|r und |T133743:0|t[|cRXP_LOOT_Buch: Die Macht in der Tiefe|r]
    *|cRXP_WARN_Passt auf, da die |cRXP_ENEMY_Twilight-Rohling|r euch für 6 Sek.|r |T132343:0|t[Entwaffnen] |cRXP_WARN_können|r << Rogue/Paladin/Warrior/Shaman
    *|cRXP_WARN_Passt auf, da die |cRXP_ENEMY_Zwielicht Jünger|r |r |T135953:0|t[Erneuerung] wirken |cRXP_WARN_und eine 3-Sekunden-|r |T135915:0|t[Heilung]
    .complete 98042,1 -- Peerless Eye (1)
    .mob +Twilight Disciple
    .mob +Twilight Thug
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .disablecheckbox
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Therylune|r. Es wird eine Escort quest starten
    >>|cRXP_WARN_Überspringt diesen Schritt, falls sie nicht da ist|r
    .accept 945 >> Akzeptiert die Quest Therylunes Flucht
    .target Therylune
step
    #label TheryluneEnd
    .goto 1439/1,288.26,4530.40
    >>|cRXP_WARN_Eskortiert |cRXP_FRIENDLY_Therylune|r aus Der Meistergleve|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945
step
    #loop
    .goto 1439/1,376.800,4608.600,40,0
    .goto 1439/1,453.100,4580.200,40,0
    .goto 1439/1,409.4366,4521.0151,40,0
    >>Tötet |cRXP_ENEMY_Twilight-Jünger|r und |cRXP_ENEMY_Twilight-Rohling|r. Plündert sie für das |cRXP_LOOT_Unvergleichliches Auge|r und |T133743:0|t[|cRXP_LOOT_Buch: Die Macht in der Tiefe|r]
    *|cRXP_WARN_Passt auf, da die |cRXP_ENEMY_Twilight-Rohling|r euch für 6 Sek.|r |T132343:0|t[Entwaffnen] |cRXP_WARN_können|r << Rogue/Paladin/Warrior/Shaman
    *|cRXP_WARN_Passt auf, da die |cRXP_ENEMY_Zwielicht Jünger|r |r |T135953:0|t[Erneuerung] wirken |cRXP_WARN_und eine 3-Sekunden-|r |T135915:0|t[Heilung]
    .complete 98042,1 -- Peerless Eye (1)
    .mob +Twilight Disciple
    .mob +Twilight Thug
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .disablecheckbox
step
    #optional
    >>|cRXP_WARN_Benutzt das |T133743:0|t[|cRXP_LOOT_Buch: Die Macht in der Tiefe|r], um die Quest zu beginnen|r
    .accept 968 >> Akzeptiert die Quest Die Macht in der Tiefe
    .use 5352
    .itemcount 5352,1
step
    #completewith prospectorEscort
    #optional
    .goto 1439/1,306.60,4784.11,0
    >>Tötet |cRXP_ENEMY_Ergrauter Distelbär|r. Plündert sie für ihren |cRXP_LOOT_Ergrauter Skalp|r
    >>|cRXP_WARN_Passt auf, wenn sie|r |T132152:0|t[Verheeren] |cRXP_WARN_wirken, einen sofortigen Angriff, der 20-40 Schaden verursacht und euch für 2 Sek. zu Boden wirft|r
    .complete 1003,1
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #sticky
    #label prospector
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r
    >>|cRXP_WARN_Ihr müsst möglicherweise warten, bis er respawnt oder bis andere die Eskorte beenden|r
    .turnin 729 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .target Prospector Remtravel
    .isOnQuest 729
step
    #label prospectorEscort
    .goto 1439/1,602.01,4678.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r. Dieser wird eine Escort Quest starten
    .accept 731,1 >> Der geistesabwesende Ausgrabungsleiter annehmen
    >>|cRXP_WARN_Diese Quest ist SEHR schwierig. Überspringt diesen Schritt, wenn ihr keine Gruppe finden könnt oder sie nicht solo schafft|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Klickt hier für eine Videoanleitung|r
    .target Prospector Remtravel
    .isQuestAvailable 731
step
    #requires prospector
    >>|cRXP_WARN_Eskortiert |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r durch die Ausgrabung|r
    >>|cRXP_WARN_Diese Quest ist SEHR schwierig. Überspringt diesen Schritt, wenn ihr keine Gruppe finden könnt oder sie nicht solo schafft|r
    .link https://www.youtube.com/watch?v=crQAvyRIceU >> |cRXP_WARN_Klickt hier für eine Videoanleitung|r
    .complete 731,1
    .isOnQuest 731
step
    #optional
    #completewith Murkdeep
    >>Tötet |cRXP_ENEMY_Verkrusteter Gezeitenkriecher|r und |cRXP_ENEMY_Riffkriecher|r. Plündert sie für |cRXP_LOOT_Feine Krebsbrocken|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .goto 1439,31.251,87.419
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4733 >> Akzeptiert die Quest Gestrandete Meereskreatur
    >>|cRXP_WARN_Diese Quest kann SEHR schwierig sein. Bekämpft die |cRXP_ENEMY_Murlocs|r einzeln, Andernfalls könntest du die Aggro von mehreren gleichzeitig auf dich ziehen.|r
    .link https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_Klickt hier für einen Videoleitfaden|r
step
    .goto 1439,31.229,85.564
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4732 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    #optional
    .goto 1439,31.690,83.700
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4731 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    #optional
    .goto 1439,32.644,80.711
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4730 >> Akzeptiert die Quest Gestrandete Meereskreatur
step
    #optional
    #label Murkdeep
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto 1439/1,541.75,4991.52
    >>|cRXP_WARN_Stellt sicher, dass ihr überprüft, ob |cRXP_ENEMY_Gurgelbacke|r bereits im Wasser ist (wenn der Kampf zuvor fehlgeschlagen ist oder ihr den |cRXP_ENEMY_Jäger der Grauflossen|r in der Welle, in der er spawnt, am Leben gelassen habt)|r
    >>Tötet die |cRXP_ENEMY_Krieger der Grauflossen|r und |cRXP_ENEMY_Jäger der Grauflossen|r im Lager
    >>|cRXP_WARN_Bewegt euch zum Freudenfeuer in der Mitte des Lagers, um den |cRXP_ENEMY_Gurgelbacke|r-Kampf zu beginnen:|r
    >>|cRXP_WARN_3 Wellen spawnen aus dem Wasser, jede nach dem Töten der vorherigen Welle: Welle 1 hat 3 Level 12-13 |cRXP_ENEMY_Küstenläufer der Grauflossen|r, Welle 2 hat 2 Level 15-16 |cRXP_ENEMY_Krieger der Grauflossen|r, und Welle 3 hat ein Level 19 |cRXP_ENEMY_Gurgelbacke|r und einen Level 16-17 |cRXP_ENEMY_Jäger der Grauflossen|r. Ihr könnt euch vom Freudenfeuer entfernen, um nicht mit der nächste Welle in den Kampf zu geraten.|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
    #loop
    .goto 1439,32.674,81.752,0
    .goto 1439,36.327,73.408,0
    .goto 1439,35.195,71.864,0
    .goto 1439,32.674,81.752,60,0
    .goto 1439,33.284,80.330,60,0
    .goto 1439,34.174,80.488,60,0
    .goto 1439,35.432,79.052,60,0
    .goto 1439,36.327,73.408,60,0
    .goto 1439,35.412,73.176,60,0
    .goto 1439,35.033,72.432,60,0
    .goto 1439,35.195,71.864,60,0
    >>Tötet |cRXP_ENEMY_Verkrusteter Gezeitenkriecher|r und |cRXP_ENEMY_Riffkriecher|r. Plündert sie für |cRXP_LOOT_Feine Krebsbrocken|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    #optional
    .goto 1439/1,227.35,4575.38,50,0
    .goto 1439/1,205.73,4639.130,50,0
    .goto 1439/1,129.10,4741.75,50,0
    .goto 1439/1,86.52,4839.13,50,0
    .goto 1439/1,338.70,4821.22,50,0
    .goto 1439/1,452.67,4684.98
    >>Tötet |cRXP_ENEMY_Ergrauter Distelbär|r. Plündert sie für ihren |cRXP_LOOT_Ergrauter Skalp|r
    >>|cRXP_WARN_Passt auf, wenn sie|r |T132152:0|t[Verheeren] |cRXP_WARN_wirken, einen sofortigen Angriff, der 20-40 Schaden verursacht und euch für 2 Sek. zu Boden wirft|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    .goto 1439/1,230.69,4815.33
    >>Klickt auf die|cRXP_PICK_Dröhnkiste 525|r auf dem Boden
    .turnin 1003 >> Gebt die Quest Dröhnkiste 525 ab
    .isOnQuest 1003
step
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 951 >> Gebt die Quest Mathystra-Relikte ab
    .target Onu
    .isQuestComplete 951
step
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Gebt die Quest Rückkehr zu Onu ab
    .target Onu
step
    .goto 1439,44.401,76.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kerlonian Evershade|r, um die Eskorte zu beginnen
    >>|cRXP_WARN_Überspringt diesen Schritt, wenn er nicht dort ist. Es kann bis zu 25 Minuten dauern, bis er respawnt|r
    >>|cRXP_WARN_Dies ist eine Zeitquest, ihr müsst ihn in 20 Minuten zu seinem Beutel bringen|r
    .accept 5321 >> Akzeptiert die Quest Der Schläfer ist erwacht
    .target Kerlonian Evershade
step
    .goto 1439/1,34.78,5001.570
    >>Öffnet |cRXP_PICK_Kerlonians Truhe|r. Plündert sie für |T134229:0|t[|cRXP_LOOT_Horn der Erweckung|r]
    .complete 5321,1 -- Horn of Awakening (1)
    .isOnQuest 5321
step
    #completewith volcorEnd
    .goto 1440/1,128.01,3305.31
    +|cRXP_FRIENDLY_Kerlonian|r folgt dir und hilft dir gelegentlich im Kampf. |cRXP_WARN_Stellt sicher, dass ihr ihn nicht verliert, da er stoppen wird, wenn er einschläft. Ihr habt 25 Minuten, um seine Tasche zu erreichen und diese Quest zu vervollständigen|r
    .use 13536 >> |cRXP_WARN_Benutzt das|r |T134229:0|t[|cRXP_LOOT_Horn der Erweckung|r] |cRXP_WARN_wenn |cRXP_FRIENDLY_Kerlonian|r einschläft, während ihr neben ihm steht, um ihn aufzuwecken|r
    >>|cRXP_WARN_Vermeidet es so weit wie möglich, auf der Hauptstraße zu laufen. Feinde spawnen nur, wenn ihr auf der Straße seid|r
    .isOnQuest 5321
step
    #completewith next
    .goto 1439/1,-5.83,4608.57,30 >> Reist zu |cRXP_FRIENDLY_Volcor|r in der Höhle
    .isOnQuest 993
step
    .goto 1439/1,-5.83,4608.570
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Volcor|r
    .turnin 993 >> Gebt die Quest Ein verirrter Meister ab
    .accept 995 >> Akzeptiert die Quest Flucht durch Verstohlenheit
    .timer 20,Flucht durch Verstohlenheit RP
    .target Volcor
step
    #label volcorEnd
    .goto 1439/1,30.85,4635.20
    >>Warte auf das RP
    .complete 995,1
    .isOnQuest 995
step
    #label KerlonianTwo
    .goto 1439/1,206.400,4402.500
    >>|cRXP_WARN_Eskortiert |cRXP_FRIENDLY_Kerlonian|r zu seinen Beutel |cRXP_WARN_in Dunkelküste|r|r
    .use 13536 >> |cRXP_WARN_Benutzt das|r |T134229:0|t[|cRXP_LOOT_Horn der Erweckung|r] |cRXP_WARN_wenn |cRXP_FRIENDLY_Kerlonian|r neben euch einschläft|r
    >>|cRXP_WARN_Vermeidet es so weit wie möglich, auf der Hauptstraße zu laufen. Feinde spawnen nur, wenn ihr auf der Straße seid|r
    .complete 5321,2
    .isOnQuest 5321
step
    #completewith tower
    .zone Ashenvale >> Reist südlich ins Eschental
    .goto 1440/1,-12.70,4150.17
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Liladris Moonriver|r
	.target Liladris Moonriver
    .goto 1440/1,128.01,3305.31
    .turnin 5321 >> Gebt die Quest Der Schläfer ist erwacht ab
    .isQuestComplete 5321
step
    #label tower
    .goto 1440/1,189.71,3185.77
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Delgren der Läuterer|r
    .turnin 967 >> Gebt die Quest Der Turm von Althalaxx ab
    .accept 970 >> Der Turm von Althalaxx annehmen
    .target Delgren the Purifier
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto 1440/1,175.87,3189.61
    .accept 1010 >> Akzeptiert die Quest Bathranshaar
    .xp <20,1
step
    .goto 1440/1,-102.08,3492.890
    >>Tötet |cRXP_ENEMY_Kultist des dunklen Strangs|r und |cRXP_ENEMY_Adept des dunklen Strangs|r. Plündert sie für |cRXP_LOOT_Leuchtender Seelenedelstein|r
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
step
    .goto 1440/1,-102.08,3492.890
    .xp 20-1650 >>Tötet weiter |cRXP_ENEMY_Mobs des dunklen Strangs|r bis ihr genug XP habt, um Stufe 20 zu erreichen
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
    #optional
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Öffnet |cRXP_PICK_Pflanzenbündel|r auf dem Boden. Plündert sie für |cRXP_LOOT_Bathranshaar|r
    >>|cRXP_WARN_Sie sehen wie kleine braune Säcke aus und können teilweise im Boden vergraben sein. Sie können schwer zu sehen sein|r
    >>|cRXP_WARN_Stellt sicher, dass ihr|r |T134916:0|t[Kräutersuche] |cRXP_WARN_aktiviert habt, um sie auf der Minikarte zu sehen|r
    .complete 1010,1 --Bathran's Hair (5)
    .isOnQuest 1010
    .skill herbalism,<1,1
step
    #optional
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Öffnet |cRXP_PICK_Pflanzenbündel|r auf dem Boden. Plündert sie für |cRXP_LOOT_Bathranshaar|r
    >>|cRXP_WARN_Sie sehen wie kleine braune Säcke aus und können teilweise im Boden vergraben sein. Sie können schwer zu sehen sein|r
    .complete 1010,1 --Bathran's Hair (5)
    .isOnQuest 1010
    .skill herbalism,1,1
step
    #optional
    .goto 1440/1,175.87,3189.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orendil Broadleaf|r
    .turnin 1010 >> Gebt die Quest Bathranshaar ab
    .accept 1020 >> Akzeptiert die Quest Orendils Heilmittel
    .target Orendil Broadleaf
    .isQuestComplete 1010
step
    #optional
    .goto 1440/1,175.87,3189.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orendil Broadleaf|r
    .accept 1020 >> Akzeptiert die Quest Orendils Heilmittel
    .target Orendil Broadleaf
    .isQuestTurnedIn 1010
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Delgren der Läuterer|r
	.target Delgren the Purifier
    .goto 1440/1,189.71,3185.77
    .turnin 970 >> Gebt die Quest Der Turm von Althalaxx ab
    .accept 973 >> Der Turm von Althalaxx annehmen
step
    .goto 1440/1,-138.99,3806.92
    .xp 20 >> Farmt bis Stufe 20
step
    .goto 1440/1,175.87,3189.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orendil Broadleaf|r
    .accept 1010 >> Akzeptiert die Quest Bathranshaar
    .target Orendil Broadleaf
step
    #optional
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Öffnet |cRXP_PICK_Pflanzenbündel|r auf dem Boden. Plündert sie für |cRXP_LOOT_Bathranshaar|r
    >>|cRXP_WARN_Sie sehen wie kleine braune Säcke aus und können teilweise im Boden vergraben sein. Sie können schwer zu sehen sein|r
    >>|cRXP_WARN_Stellt sicher, dass ihr|r |T134916:0|t[Kräutersuche] |cRXP_WARN_aktiviert habt, um sie auf der Minikarte zu sehen|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,<1,1
step
    .goto 1440/1,-203.58,3849.97,50,0
    .goto 1440/1,-2.90,3737.73,40,0
    .goto 1440/1,-138.99,3806.92
    >>Öffnet |cRXP_PICK_Pflanzenbündel|r auf dem Boden. Plündert sie für |cRXP_LOOT_Bathranshaar|r
    >>|cRXP_WARN_Sie sehen wie kleine braune Säcke aus und können teilweise im Boden vergraben sein. Sie können schwer zu sehen sein|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,1,1
step
    .goto 1440/1,175.87,3189.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Orendil Broadleaf|r
    .turnin 1010 >> Gebt die Quest Bathranshaar ab
    .accept 1020 >> Akzeptiert die Quest Orendils Heilmittel
    .target Orendil Broadleaf
step
    #optional
    #completewith TZS
    .subzone 415 >> Reist nach Astranaar
step
    #label AshenvaleEnd
    .goto 1440/1,-283.73,2827.920
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar >> Erlernt die Flugroute nach Astranaar
	.target Daelyshia
step
    #label TZS
    .goto 1440/1,-299.30,2796.01
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shindrell Feuerflink|r
    .accept 1008 >> Akzeptiert die Quest Der Zoramstrand
    .target Shindrell Swiftfire
step
    .goto 1440/1,-311.99,2759.11
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Thenysil|r
    .accept 1070 >> Wache halten im Steinkrallengebirge annehmen
    .target Sentinel Thenysil
step
    .goto 1440/1,-362.16,2785.640
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Faldreas Goeth'Shael|r
    .accept 1056 >> Akzeptiert die Quest Reise zum Steinkrallengipfel
    .target Faldreas Goeth'Shael
step
    .goto 1440/1,-411.18,2767.19
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Raene Wolfsläufer|r
    .accept 991 >> Raenes Säuberung annehmen
    .accept 1054 >> Die Auswahl der Bedrohung annehmen
    .target Raene Wolfrunner
step << !Warlock
    .goto 1440/1,-433.09,2781.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Kimlya|r
    .home 415 >> Setzt von Euch Ruhestein auf Astranaar
    .target Innkeeper Kimlya
step
    .goto 1440/1,-454.43,2682.24
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pelturas Weißmond|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Gebt die Quest Orendils Heilmittel ab
    .timer 24,Orendils Heilmittel Roleplay
    .accept 1033 >> Elunes Träne annehmen
]])
