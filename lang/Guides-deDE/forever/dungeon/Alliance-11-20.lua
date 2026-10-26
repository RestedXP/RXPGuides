if GetLocale() ~= "deDE" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end
RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance NightElf
#name 11-16 Dunkelküste/Loch Modan
#group RestedXP Forever Dungeon Dungeonführer (A)
#subgroup Dungeon Dungeonführer 1-20
--#groupid RXP-SRGCE-A1
#next 17-18 Die Halle der Thanen

step
    #include RestedXP Forever Dungeonführer (A)\14-16 Dunkelküste@WashedA-IFExit
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirt Feuerbräu|r
    >>|cRXP_WARN_Falls ihr einen Magier in eurer Gruppe habt, setzt euren Ruhestein stattdessen in Seenhain|r
    .goto Ironforge,18.10,51.60
    .home >> Setzt euren Ruhestein in Eisenschmiede
    .target Innkeeper Firebrew
step
    #completewith next
    .zone Dun Morogh >> Reist nach Dun Morogh
step
    .goto Dun Morogh,59.9,49.5,30,0
    .goto Dun Morogh,61.2,47.2,15,0
    .goto Dun Morogh,62.1,47.3,20 >>Lauft die Rampe hinauf zu |cRXP_ENEMY_Vagash|r
step
    #completewith next
    +Lockt |cRXP_ENEMY_Vagash|r zu |cRXP_FRIENDLY_Rudra Amberstill|r
    >>|cRXP_WARN_Versucht, nicht zu nah an ihn heranzugehen, sonst wirkt er|r |T135848:16|t[Gletschergebrüll] |cRXP_WARN_was dich 3 Sek. betäubt|r
    .mob Vagash
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:16|tSprecht mit |cRXP_FRIENDLY_Rudra Amberstill|r
    .goto Dun Morogh,63.1,49.8
    .target Rudra Amberstill
    .accept 314 >>Akzeptiert die Quest Die Herde beschützen
step
    >>Lockt |cRXP_ENEMY_Vagash|r zu den |cRXP_FRIENDLY_Gebirgsjäger von Dun Morogh|r
    >>|cRXP_WARN_Stellt sicher, dass ihr mindestens 50% Schaden anrichtet|r
    .goto Dun Morogh,62.8,54.6,10,0
    .mob Vagash
    .target Dun Morogh Mountaineer
    .complete 314, 1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:16|tSprecht mit |cRXP_FRIENDLY_Rudra Amberstill|r
    .goto Dun Morogh, 63.1, 49.8
    .target Rudra Amberstill
    .turnin 314 >>Gebt die Quest Die Herde beschützen ab
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
    --.accept 96390 >> Accept Nip 'Em in the Bud
    .target Earthseer Farsen
step
    .goto 1426/0,-2009.87,-5860.22,40,0
    .goto 1426/0,-2034.49,-5922.60
    >>Tötet |cRXP_ENEMY_Spion der Dunkeleisenzwerge|r. Plündert sie für |T237385:0|t[|cRXP_LOOT_Dunkeleisenkarte |r]
    .use 274268 >>|cRXP_WARN_Benutzt|r |T237385:0|t[|cRXP_LOOT_Dunkeleisenkarte|r] |cRXP_WARN_um die Quest zu starten|r
    -->>|cRXP_WARN_You can skip killing |cRXP_ENEMY_Dark Iron Spies|r for the other quest because they are low level once you find the|r |T237385:0|t[|cRXP_LOOT_Dark Iron Map|r]
    --.complete 96390,1 -- Dark Iron Spy slain 10/10
    --.disablecheckbox
    .collect 274268,1,96391,1 -- Dark Iron Map (1)
    .accept 96391 >> Akzeptiert die Quest Karte des Untergrunds
    .mob Dark Iron Spy
step
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
    #include RestedXP Forever Dungeonführer (A)\14-16 Dunkelküste@LochEnter-LochEnd
step << NightElf Druid
    #completewith next
	.cast 18960 >> Caste Teleportieren: Moonglade
	.zoneskip Moonglade
step << Druid
	.goto Moonglade,44.2,45.2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Silva|r
	.fly Teldrassil >>Fliegt nach Rutheran
	.target Silva
step << Druid
    #completewith next
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Nimm das Lila Portal nach Darnassus
step << Druid
	.goto Darnassus,35.375,8.405
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mathrengyl Bärenfährte|r
	.accept 26 >>Akzeptiert die Quest Eine wertvolle Lektion
	.trainer >> Trainiere deine Klassenfähigkeiten
	.target Mathrengyl Bearwalker
step << Druid
    #season 0
    .goto Moonglade,56.1,30.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dendrite Sternenschauer|r
    .turnin 26 >> Gebt die Quest Eine wertvolle Lektion ab
    .accept 29 >> Akzeptiert die Quest Prüfung des Sees
    .target Dendrite Starblaze
step << Druid
    #season 0
    .goto Moonglade,52.6,51.6
    >>Schwimmen into Lake Elune'Ara
    >>Öffnet einen |cRXP_PICK_Schmuckstückbehälter|r. Plündert sie für ein |T134125:0|t[Schrein-Schmuckstück]
    >>|cRXP_WARN_Es kann an verschiedenen Orten unter Wasser spawnen|r
    .collect 15877,1,29,1 -- Shrine Bauble (1)
step << Druid
    #optional
    #season 0
    #completewith next
    .cast 18960 >> Caste Teleportieren: Moonglade
    .itemcount 15877,1 -- Shrine Bauble (1)
step << Druid
    #season 0
    .goto Moonglade,36.026,41.374
    >>|cRXP_WARN_Benutzt das|r |T134125:0|t[Schrein-Schmuckstück] |cRXP_WARN_beim Schrein von Remulos Baum|r
    .complete 29,1 --Complete the Trial of the Lake.
    .use 15877
step << Druid
    #label TotL
    #season 0
    .goto Moonglade,36.517,40.104
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tajarri|r
    .turnin 29 >> Gebt die Quest Prüfung des Sees ab
    .accept 272 >> Akzeptiert die Quest Prüfung des Seelöwen
    .target Tajarri
step << NightElf
    .hs >>Ruhestein nach Eisenschmiede
    .zoneskip Ironforge
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
step << NightElf
    .goto Ironforge,74.645,11.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ausgrabungsleiter Sturmlanze|r
    .turnin 301 >> Gebt die Quest Meldung in Eisenschmiede ab
    .target Prospector Stormpike










-- step
--     .goto 1453/0,673.58,-8867.76
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Allison|r
--     .home >> Set your Hearthstone to Stormwind City
--     .target Innkeeper Allison
--     .bindlocation 16509
-- step
--     #ah
--     .goto 1453/0,660.28,-8814.55
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
--     >>|cRXP_BUY_Buy the following items for faster turn ins at Westfall shortly:|r
--     >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
--     >>|T133972:0|t[Stringy Vulture Meat]
--     >>|T133884:0|t[Murloc Eye]
--     >>|T135997:0|t[Goretusk Snout]
--     >>|T134185:0|t[Okra]
--     >>|T134341:0|t[Goretusk Liver]
--     >>|T4548890:0|t[Golem Isospring]
--     >>|T132995:0|t[Harvester Gyrostabilizer]
--     .collect 729,3,38,1 -- Stringy Vulture Meat (3)
--     .collect 730,3,38,1 -- Murloc Eye (3)
--     .collect 731,3,38,1 -- Goretusk Snout (3)
--     .collect 732,3,38,1 -- Okra (3)
--     .collect 723,8,22,1 -- Goretusk Liver (8)
--     .collect 255007,14,92909,1 -- Golem Isospring (14)
--     .collect 255010,5,92909,1 -- Harvester Gyrostabilizer (5)
--     .target Auctioneer Jaxon
-- step
--     .goto 1453/0,490.03,-8835.82
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
--     .fp Stormwind >> Get the Stormwind Flight Path
--     .target Dungar Longdrink
-- step
--     #completewith SaldeanVendor
--     #optional
--     .goto 1429/0,875.96,-9814.400
--     .zone Westfall >> Travel to Westfall
-- step
--     .goto 1436/0,918.42,-9851.50
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r
--     .accept 64 >> Accept The Forgotten Heirloom
--     .target Farmer Furlbrow
-- step
--     .goto 1436/0,919.47,-9853.13
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verna Furlbrow|r
--     .accept 36 >> Accept Westfall Stew
--     .accept 151 >> Accept Poor Old Blanchy
--     .target Verna Furlbrow
-- step
--     #completewith SalmaS
--     .goto 1436/0,1055.27,-10128.70,65 >> Travel to Saldean's Farm
-- step
--     .goto 1436/0,1055.27,-10128.70
--     .target Farmer Saldean
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
--     .accept 109 >>Accept Report to Gryan Stoutmantle
-- step
--     #label SalmaS
--     .goto 1436/0,1042.67,-10111.670
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
--     .turnin 36 >> Turn in Westfall Stew
--     .target Salma Saldean
--     .accept 38 >> Accept Westfall Stew
-- step << Gnome/Dwarf/NightElf
--     #completewith next
--     .goto 1436/0,1045.12,-10508.80
--     .target Gryan Stoutmantle
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
--     .turnin 109 >> Turn in Report to Gryan Stoutmantle
--     .isOnQuest 109
-- step
--     .goto 1436/0,1045.12,-10508.80
--     .target Gryan Stoutmantle
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
--     .accept 12 >> Accept The People's Militia
-- step
--     .goto 1436/0,1041.97,-10511.13
--     .target Captain Danuvin
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Danuvin|r
--     .accept 102 >> Accept Patrolling Westfall
-- step
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Galiaan|r
--     .target Scout Galiaan
--     .goto 1436/0,1126.67,-10636.670
--     .accept 153 >> Accept Red Leather Bandanas
-- step
--     .goto 1436/0,1166.57,-10653.23
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Heather|r
--     .vendor >>|cRXP_BUY_Buy food/water if needed|r
-- 	.target Innkeeper Heather
-- step
--     .goto 1436/0,1179.800,-10635.601
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alba Fairmoon::253092|r
--     .target Alba Fairmoon::253092
--     .accept 92742 >>Accept Testing the Wells
--     .accept 92744 >>Accept Murloc Gills
-- step
-- 	#completewith GnollPaws
--     >>Open the |cRXP_PICK_Sacks of Oats|r on the ground. Loot them for the |cRXP_LOOT_Handful of Oats|r
--     >>|cRXP_WARN_You can usually find them near Farm Fences or Buildings|r
--     .complete 151,1 --Handful of Oats (8)
-- step
--     #completewith TravelCompass
--     >>Kill |cRXP_ENEMY_Young Goretusks|r and |cRXP_ENEMY_Young Fleshrippers|r. Loot them for their |cRXP_LOOT_Vulture Meat|r, |cRXP_LOOT_Snouts|r and |cRXP_LOOT_Livers|r
--     .collect 729,3,38,1 --Stringy Vulture Meat (3)
--     .mob +Young Fleshripper
--     .mob +Fleshripper
--     .collect 731,3,38,1 --Goretusk Snout (3)
--     .mob +Young Goretusk
--     .mob +Goretusk
-- step
--     #completewith TravelCompass
--     >>Kill |cRXP_ENEMY_Defias Trappers|r and |cRXP_ENEMY_Defias Smugglers|r. Loot them for their |T133694:0|t|cRXP_LOOT_Red Leather Bandanas|r
--     .complete 12,1 -- Defias Trapper slain (15)
--     .mob +Defias Trapper
--     .complete 12,2 -- Defias Smuggler slain (15)
--     .mob +Defias Smuggler
--     .complete 153,1 -- Red Leather Bandana (15)
--     .mob +Defias Trapper
--     .mob +Defias Smuggler
-- step
--     #label TravelCompass
--     .isOnQuest 399
--     .goto 1436/0,1602.67,-10629.67,75 >> Travel to the Alexston's Farmstead
--     >>|cRXP_WARN_Work on completing the other quest objectives as you move there|r
-- step
--     #sticky
--     #completewith bennytime
--     >>Kill |cRXP_ENEMY_Harvest Watchers|r located on any of the fields as you run by them
--     >>Loot them for their |cRXP_LOOT_Okra|r and |cRXP_LOOT_Flasks of Oil|r
--     .mob Harvest Watcher
--     .collect 732,3,38,1 --Okra (3)
--     .collect 814,5,103,1 --Flask of Oil (5)
-- step
--     .goto 1436/0,1748.27,-10672.13
--     >>Open |cRXP_PICK_Alexston's Chest|r. Loot it for |cRXP_LOOT_A Simple Compass|r
--     .complete 399,1 --A Simple Compass (1)
--     .isOnQuest 399
-- step
--     .goto 1436/0,1404.200,-10290.900
--     .use 254545 >>|cRXP_WARN_Use the|r |T236996:0|t[Well Water Sample Kit] |cRXP_WARN_at the Molsen Farm well|r
--     .complete 92742,2 --|1/1 Molsen Farm Water Sample
-- step
--     #completewith bennytime
--     >>Kill |cRXP_ENEMY_Young Goretusks|r and |cRXP_ENEMY_Young Fleshrippers|r. Loot them for their |cRXP_LOOT_Vulture Meat|r, |cRXP_LOOT_Snouts|r and |cRXP_LOOT_Livers|r
--     .collect 729,3,38,1 --Stringy Vulture Meat (3)
--     .mob +Young Fleshripper
--     .mob +Fleshripper
--     .collect 731,3,38,1 --Goretusk Snout (3)
--     .mob +Young Goretusk
--     .mob +Goretusk
-- step
--     #completewith bennytime
--     >>Kill |cRXP_ENEMY_Defias Trappers|r and |cRXP_ENEMY_Defias Smugglers|r. Loot them for their |T133694:0|t|cRXP_LOOT_Red Leather Bandanas|r
--     .complete 12,1 -- Defias Trapper slain (15)
--     .mob +Defias Trapper
--     .complete 12,2 -- Defias Smuggler slain (15)
--     .mob +Defias Smuggler
--     .complete 153,1 -- Red Leather Bandana (15)
--     .mob +Defias Trapper
--     .mob +Defias Smuggler
-- step
--     .goto 1436/0,1266.67,-9927.33,75 >> Travel to the Jansen Stead, |cRXP_WARN_work on the other quest objectives as you move there|r
-- step
-- 	#label bennytime
--     .goto 1436/0,1289.77,-9849.63
--     >>Open |cRXP_PICK_Furlbrow's Wardrobe|r. Loot it for |cRXP_LOOT_Furlbrow's Pocket Watch|r
--     >>|cRXP_WARN_You can loot |cRXP_PICK_Furlbrow's Wardrobe|r from outside if you angle your camera correctly|r
-- 	>>|cRXP_WARN_Be aware of |cRXP_ENEMY_Benny Blanco|r. He hits hard|r
--     .complete 64,1 --Furlbrow's Pocket Watch
-- step
--     .goto 1436/0,1192.12,-9641.73,60,0
--     .goto 1436/0,1042.67,-9619.33,60,0
--     .goto 1436/0,1192.12,-9641.73,60,0
--     .goto 1436/0,1042.67,-9619.33,60,0
--     .goto 1436/0,1192.12,-9641.73
--     .goto 1436/0,1042.67,-9619.33,0
--     >>Kill |cRXP_ENEMY_Murloc Raiders|r and |cRXP_ENEMY_Murloc Coastrunners|r. Loot them for their |cRXP_LOOT_Eyes|r and |cRXP_LOOT_Gills|r
--     .collect 730,3,38,1 --Murloc Eye (3)
--     .complete 92744,1 -- Longshore Murloc Gills 7/7
--     .mob Murloc Raider
--     .mob Murloc Coastrunner
-- step
--     .goto 1436/0,1035.300,-9835.101
--     .use 254545 >>|cRXP_WARN_Use the|r |T236996:0|t[Well Water Sample Kit] |cRXP_WARN_at the Jansen Stead well|r
--     .complete 92742,1 --|1/1 Jansen Stead Water Sample
-- step
--     .goto 1436/0,1004.87,-9716.87,60,0
--     .goto 1436/0,1013.62,-9861.53,60,0
--     .goto 1436/0,1192.12,-10175.13,60,0
--     .goto 1436/0,1019.57,-10204.30,60,0
--     .goto 1436/0,1013.62,-9861.53
--     >>Open the |cRXP_PICK_Sacks of Oats|r on the ground. Loot them for the |cRXP_LOOT_Handful of Oats|r
-- 	>>|cRXP_WARN_You can usually find them near Farm Fences or Buildings|r
-- 	.complete 151,1 --Handful of Oats (8)
-- step
--     #label FurlbrowFarm
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r and |cRXP_FRIENDLY_Verna Furlbrow|r
--     .turnin 64 >> Turn in The Forgotten Heirloom
--     .target +Farmer Furlbrow
--     .goto 1436/0,918.42,-9851.50
--     .turnin 151 >> Turn in Poor Old Blanchy
--     .target +Verna Furlbrow
--     .goto 1436/0,919.47,-9853.13
-- step
--     #completewith SaldeanVendor
-- 	.goto 1436/0,1055.27,-10128.70
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
--     .vendor >> |cRXP_BUY_Vendor trash|r
--     >>|cRXP_WARN_Do NOT sell|r |T133884:0|t[Murloc Eyes], |T135997:0|t[Goretusk Snouts], |T134341:0|t[Goretusk Livers] |cRXP_WARN_or|r |T133972:0|t[Stringy Vulture Meat]
-- 	.target Farmer Saldean
-- step
--     #optional
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
--     .goto 1436/0,1042.67,-10111.670
--     .turnin 38 >> Turn in Westfall Stew
--     .isQuestComplete 38
--     .target Salma Saldean
-- step
--     #optional
--     .goto 1436/0,1213.400,-10153.800
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozwin Ironsprocket::253395|r
--     .target Ozwin Ironsprocket::253395
--     .accept 92909 >>Accept Harvesting the Harvesters
--     .turnin 92909 >>Turn in Harvesting the Harvesters
--     .itemcount 255007,14 -- Golem Isospring (14)
--     .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
-- step
--     #optional
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
--     .goto 1436/0,1042.67,-10111.670
--     .turnin 38 >> Turn in Westfall Stew
--     .isQuestComplete 38
--     .target Salma Saldean
-- step
--     .isQuestAvailable 38
--     .goto 1436/0,1132.27,-10146.67,60,0
--     .goto 1436/0,1238.67,-9907.73,80,0
--     .goto 1436/0,1460.22,-10224.83,80,0
--     .goto 1436/0,1132.27,-10146.67,80,0
--     .goto 1436/0,1238.67,-9907.73,80,0
--     .goto 1436/0,1460.22,-10224.83,80,0
--     .goto 1436/0,1132.27,-10146.67,60,0
--     .goto 1436/0,1460.22,-10224.83,60,0
--     .goto 1436/0,1238.67,-9907.73
--     >>Kill |cRXP_ENEMY_Harvest Watchers|r. Loot them for their |cRXP_LOOT_Okra|r and |cRXP_LOOT_Flasks of Oil|r
--     .collect 732,3,38,1 --Okra (3)
--     .collect 814,5,103,1 --Flask of Oil (5)
-- step
--     .isQuestTurnedIn 38
--     #label HarvestW
--     .goto 1436/0,1132.27,-10146.67,60,0
--     .goto 1436/0,1238.67,-9907.73,80,0
--     .goto 1436/0,1460.22,-10224.83,80,0
--     .goto 1436/0,1132.27,-10146.67,80,0
--     .goto 1436/0,1238.67,-9907.73,80,0
--     .goto 1436/0,1460.22,-10224.83,80,0
--     .goto 1436/0,1132.27,-10146.67,60,0
--     .goto 1436/0,1460.22,-10224.83,60,0
--     .goto 1436/0,1238.67,-9907.73
--     >>Kill |cRXP_ENEMY_Harvest Watchers|r. Loot them for their |cRXP_LOOT_Flasks of Oil|r
--     .collect 814,5,103,1 --Flask of Oil (5)
-- step
--     #optional
--     .goto 1436/0,1213.400,-10153.800
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozwin Ironsprocket::253395|r
--     .target Ozwin Ironsprocket::253395
--     .accept 92909 >>Accept Harvesting the Harvesters
--     .turnin 92909 >>Turn in Harvesting the Harvesters
--     .itemcount 255007,14 -- Golem Isospring (14)
--     .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
-- step
--     .goto 1436/0,1179.52,-10382.57,75,0
--     .goto 1436/0,1138.22,-10474.97,75,0
--     .goto 1436/0,860.67,-10462.83,75,0
--     .goto 1436/0,904.07,-10038.87,75,0
--     .goto 1436/0,1104.62,-9848.000,75,0
--     .goto 1436/0,1298.52,-10028.13,75,0
--     .goto 1436/0,1340.52,-10401.93,75,0
--     .goto 1436/0,1111.97,-10342.20
--     >>Kill |cRXP_ENEMY_Young Goretusks|r and |cRXP_ENEMY_Young Fleshrippers|r. Loot them for their |cRXP_LOOT_Vulture Meat|r, |cRXP_LOOT_Snouts|r and |cRXP_LOOT_Livers|r
--     .collect 729,3,38,1 --Stringy Vulture Meat (3)
--     .mob +Young Fleshripper
--     .mob +Fleshripper
--     .collect 731,3,38,1 --Goretusk Snout (3)
--     .mob +Young Goretusk
--     .mob +Goretusk
--     .collect 723,8,22,1 --Goretusk Liver (8)
--     .mob +Young Goretusk
--     .mob +Goretusk
-- step
--     #label SaldeanVendor
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
-- 	.target Salma Saldean
--     .goto 1436/0,1042.67,-10111.670
--     .turnin 38 >> Turn in Westfall Stew
-- step
--     #optional
--     .goto 1436/0,1213.400,-10153.800
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozwin Ironsprocket::253395|r
--     .target Ozwin Ironsprocket::253395
--     .accept 92909 >>Accept Harvesting the Harvesters
--     .turnin 92909 >>Turn in Harvesting the Harvesters
--     .itemcount 255007,14 -- Golem Isospring (14)
--     .itemcount 255010,5 -- Harvester Gyrostabilizer (5)
-- step
--     #completewith next
--     >>Kill |cRXP_ENEMY_Defias Trappers|r and |cRXP_ENEMY_Defias Smugglers|r. Loot them for their |T133694:0|t|cRXP_LOOT_Red Leather Bandanas|r
--     >>|cRXP_WARN_It is a dynamic respawn area meaning if you kill enough they will keep respawning|r
--     .complete 12,1 -- Defias Trapper slain (15)
--     .mob +Defias Trapper
--     .complete 12,2 -- Defias Smuggler slain (15)
--     .mob +Defias Smuggler
--     .complete 153,1 -- Red Leather Bandana (15)
--     .mob +Defias Trapper
--     .mob +Defias Smuggler
-- step
--     .goto 1436/0,1324.200,-10490.400
--     >>Kill |cRXP_ENEMY_Defias Trappers|r and |cRXP_ENEMY_Defias Smugglers|r. Loot them for their |T133694:0|t|cRXP_LOOT_Red Leather Bandanas|r
--     >>|cRXP_WARN_It is a dynamic respawn area meaning if you kill enough they will keep respawning|r
--     .complete 12,1 -- Defias Trapper slain (15)
--     .mob +Defias Trapper
--     .complete 12,2 -- Defias Smuggler slain (15)
--     .mob +Defias Smuggler
--     .complete 153,1 -- Red Leather Bandana (15)
--     .mob +Defias Trapper
--     .mob +Defias Smuggler
-- step
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
-- 	.target Gryan Stoutmantle
--     .goto 1436/0,1045.12,-10508.80
--     .turnin 12 >> Turn in The People's Militia
-- step
-- 	.xp <14,1
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
-- 	.target Gryan Stoutmantle
--     .goto 1436/0,1045.12,-10508.80
--     .accept 65 >> Accept The Defias Brotherhood
-- step
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Galiaan|r
-- 	.target Scout Galiaan
--     .goto 1436/0,1126.67,-10636.670
--     .turnin 153 >> Turn in Red Leather Bandanas
-- step
--     .goto 1436/0,1179.800,-10635.601
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alba Fairmoon::253092|r
--     .target Alba Fairmoon::253092
--     .turnin 92742 >>Turn in Testing the Wells
--     .turnin 92744 >>Turn in Murloc Gills
-- step
--     .hs >> Hearth to Stormwind
--     .bindlocation 16509,1
--     .cooldown item,6948,>2,1
--     .zoneskip Stormwind City
--     .zoneskip Darkshore
-- step
--     #completewith DeeprunEnter
--     .goto 1436/0,1037.42,-10628.27
-- 	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
--     .fly Stormwind >> Fly to Stormwind
--     .target Thor
--     .zoneskip Stormwind City
--     .zoneskip Darkshore

-- step << Rogue
--     #ah
--     .goto 1453/0,609.63,-8787.71
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
--     .vendor 1287 >>|cRXP_BUY_Buy a|r |T135343:0|t[Scimitar] |cRXP_BUY_from her or something better from the Auction House and equip it your off-hand|r
--     .money <0.3815
--     .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
--     .target Marda Weller
-- step << Rogue
--     #ssf
--     .goto 1453/0,609.63,-8787.71
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
--     .vendor 1287 >>|cRXP_BUY_Buy a|r |T135343:0|t[Scimitar] |cRXP_BUY_from her|r
--     .money <0.3815
--     .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
--     .target Marda Weller
-- step << Rogue
--     .goto 1453/0,377.47,-8752.39
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
--     .train 1758,1
--     .trainer >> Train your class spells
--     .target Osborne the Night Man
--     .xp <16,1
-- step << Warrior
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
--     .goto 1453/0,358.25,-8728.28,15,0
--     .goto 1453/0,302.6,-8685.53,15,0
-- 	.goto 1453/0,323.3,-8689.29
--     .train 1160,1
--     .trainer >> Train your class spells
--     .target Wu Shen
--     .target Ilsa Corbin
--     .xp <16,1
-- step << Hunter
--     .goto 1453/0,552.78,-8415.71
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r inside
--     .trainer >> Train your class spells
--     .target Einris Brightspear
--     .xp <16,1
-- step << Druid
--     .goto 1453/0,1347.6192,-8591.2168
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theridran|r
--     .trainer >>Train your class spells
-- 	.target Theridran
--     .xp <16,1
-- step
--     .goto 1453/0,719.67,-8550.30
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
--     .turnin 399 >> Turn in Humble Beginnings
--     .target Baros Alexston
--     .isQuestComplete 399
-- step << Priest
--     #optional
--     #completewith next
--     .goto 1453/0,809.52,-8579.22,20 >> Travel to the Stormwind Cathedral
-- step << Priest
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
--     .goto 1453/0,862.89,-8519.61
--     .trainer >> Train your class spells
--     .train 8122,1
--     .target Brother Joshua
--     .xp <16,1
-- step
--     #optional
--     #label endOfTheGuide
-- step
--     #label DeeprunEnter
--     #completewith next
--     .goto 1453/0,562.300,-8385.300,20,0
--     .goto 1453/0,522.000,-8352.101
--     .subzone 2257 >>Enter the Deeprun Tram
--     .zoneskip Ironforge
--     .zoneskip Loch Modan
--     .zoneskip Dun Morogh
-- step
--     .zone Ironforge >> Take the tram to Ironforge
--     .zoneskip Loch Modan
--     .zoneskip Dun Morogh


]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance !NightElf
#name 13-15 Westfall 
#displayname 14-15 Westfall << Gnome/Dwarf !Hunter
#group RestedXP Forever Dungeon Dungeonführer (A)
#subgroup Dungeon Dungeonführer 1-20
--#groupid RXP-SRGCE-A1
#next 15-17 Dunkelküste

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
    -->>|T4548890:0|t[Golem Isospring]
    -->>|T132995:0|t[Harvester Gyrostabilizer]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    --.collect 255007,14,92909,1 -- Golem Isospring (14)
    --.collect 255010,5,92909,1 -- Harvester Gyrostabilizer (5)
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
    .accept 109 >>Akzeptiert die Quest Meldung bei Gryan Stoutmantle << !Human
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
step << !Human
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
step << skip
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
    #optional
    .abandon 102 >> Brecht die Quest Auf Patrouille durch Westfall ab
    >>|cRXP_WARN_Ihr werdet diese Quest in diesem Guide nicht abschließen|r
step
	#completewith MurlocEyeGills
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
    >>|cRXP_WARN_Vermeidet die Mobs vor dem brennenden Gebäude. Sammelt die Beute von hinten, neben dem Schornstein. Benutzt den Schornstein, um den Zaubern der |cRXP_ENEMY_Plünderer|r auszuweichen, falls nötig|r
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
step << skip
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
    #label MurlocEyeGills
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73,60,0
    .goto 1436/0,1042.67,-9619.33,60,0
    .goto 1436/0,1192.12,-9641.73
    .goto 1436/0,1042.67,-9619.33,0
    >>Tötet |cRXP_ENEMY_Murlocräuber|r und |cRXP_ENEMY_Murlocküstenläufer|r. Plündert sie für ihre |cRXP_LOOT_Augen|r und |cRXP_LOOT_Kiemen|r
    >>|cRXP_WARN_Falls Ihr bis zum Abschluss von |cRXP_LOOT_Augen|r nicht viele |cRXP_LOOT_Kiemen|r habt, überspringt diesen Schritt|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .complete 92744,1 -- Longshore Murloc Gills 7/7
    .mob Murloc Raider
    .mob Murloc Coastrunner
step << skip
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
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
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
    .isOnQuest 153
    .goto 1436/0,1324.200,-10490.400
    >>Tötet |cRXP_ENEMY_Fallensteller der Defias|r und |cRXP_ENEMY_Schmuggler der Defias|r. Plündert sie für |T133694:0|t|cRXP_LOOT_Rotes Lederkopftuch|r
    >>|cRXP_WARN_Dies ist ein dynamisches Respawn-Gebiet, was bedeutet, dass die Gegner erneut erscheinen, wenn ihr genug von ihnen tötet|r
    >>|cRXP_WARN_Falls ihr immer noch sehr weit zurück bei |T133694:0|t|cRXP_LOOT_Rote Lederkopftücher|r seid und alle erforderlichen |cRXP_ENEMY_Defias|r besiegt habt, brecht die Quest ab|r [Rote Lederkopftücher]
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
    #optional
    .goto 1436/0,1324.200,-10490.400
    >>Tötet |cRXP_ENEMY_Fallensteller der Defias|r und |cRXP_ENEMY_Schmuggler der Defias|r. Plündert sie für |T133694:0|t|cRXP_LOOT_Rotes Lederkopftuch|r
    >>|cRXP_WARN_Dies ist ein dynamisches Respawn-Gebiet, was bedeutet, dass die Gegner erneut erscheinen, wenn ihr genug von ihnen tötet|r
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
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
    #optional
    .isQuestComplete 102
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Danuvin|r
	.target Captain Danuvin
    .goto 1436/0,1041.97,-10511.13
    .turnin 102 >> Gebt die Quest Auf Patrouille durch Westfall ab
step
    .isQuestComplete 153
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
    .isQuestComplete 92744
step
    .goto 1436/0,1179.800,-10635.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Alba Fairmoon|r
    .target Alba Fairmoon::253092
    .turnin 92742 >>Gebt die Quest Test der Brunnen ab
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
step
    .goto 1453/0,765.700,-8804.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Catherine Leland|r
    >>|cRXP_BUY_Kauft ein|r |T134335:0|t[Glänzendes Schmuckstück] |cRXP_BUY_und drei|r |T134324:0|t[Nachtkriecher] |cRXP_BUY_von ihr. Dies ist für eine 900xp Quest|r
    .collect 6529,1,95065,1 --|1/1 Shiny Bauble
    .collect 6530,3,95065,1 --|3/3 Nightcrawlers
    .target Catherine Leland
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
step
    #optional
    #sticky
    .abandon 153 >> Brecht die Quest Rote Lederkopftücher ab, falls Ihr sie nicht abgeschlossen habt
step
    #optional
    #sticky
    .abandon 92744 >> Brecht die Quest Murlochkiemen ab, falls Ihr sie nicht abgeschlossen habt
step
    #optional
    #label endOfTheGuide

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
    >>|cRXP_BUY_Kauft|r |T133970:0|t|cRXP_LOOT_[Brocken Eberfleisch]|r |cRXP_BUY_und/oder|r |T133970:0|t|cRXP_LOOT_[Sehniges Wolfsfleisch]|r |cRXP_BUY_um eure|r |T133971:0|t[Kochkunst] |cRXP_BUY_später zu skillen|r
    >>|cRXP_WARN_Eure|r |T133971:0|t[Kochkunst] |cRXP_WARN_Fertigkeit muss 10 für die Abgabe in Dunkelküste für|r |T133972:0|t[Schreiterfleisch] sein
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    >>|cRXP_BUY_Kauft die folgenden Gegenstände bald für schnellere Abgaben in Dunkelküste:|r
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
    .skill cooking,<1,1 -- step only displays if skill is 1 or higher
step
    #ah
    #optional
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Auktionatorin Jaxon|r
    >>|cRXP_WARN_Falls ihr das nicht wollt oder könnt, überspringt diesen Schritt|r
    >>|cRXP_BUY_Kauft die folgenden Gegenstände bald für schnellere Abgaben in Dunkelküste:|r
    >>|T133912:0|t[Dunkelküstenbarsch]
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
step
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
    >>|cRXP_WARN_Während ihr auf das Boot auf dem Dock wartet:|r
    .cast 818 >>|cRXP_WARN_Erstellt ein|r |T135805:0|t[Einfaches Lagerfeuer] |cRXP_WARN_(in eurem Berufe-Buch)|r
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
    >>|cRXP_WARN_Während ihr auf das Boot auf dem Dock wartet:|r
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
    >>|cRXP_WARN_Während ihr auf das Boot auf dem Dock wartet:|r
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
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
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
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
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
    >>|cRXP_WARN_Ihr benötigt 50|r |T133971:0|t[Kochkunst] |cRXP_WARN_für eine spätere Quest im Dämmerwald|r
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
#version 1
<< Alliance !NightElf
#name 15-17 Dunkelküste
#group RestedXP Forever Dungeon Dungeonführer (A)
#subgroup Dungeon Dungeonführer 1-20
--#groupid RXP-SRGCE-A1
#next 17-18 Die Halle der Thanen

step
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .accept 963 >> Akzeptiert die Quest In ewiger Liebe
    .target Cerellean Whiteclaw
step
    #optional
    #completewith next
    .goto 1439/1,525.800,6414.800,8 >> Reist die Rampe hinauf zu |cRXP_FRIENDLY_Wizbang Cranktoggle|r
step
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wizbang Cranktoggle|r oben
    .accept 983 >> Akzeptiert die Quest Dröhnkiste 827
    .target Wizbang Cranktoggle
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
    #optional
    .goto 1439/1,577.38,6371.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1141 >> Akzeptiert die Quest Die Familie und die Angel
    .turnin 1141 >> Gebt die Quest Die Familie und die Angel ab
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #label WashedA
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Akzeptiert die Quest An Land gespült
    .target Gwennyth Bly'Leggonde
step
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
    >>|cRXP_WARN_Auch wenn einige dieser Quests grau sind, vervollständigt sie trotzdem, da sie Teil einer Quest-Reihe sind|r
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
    >>|cRXP_WARN_Benutzt|r |T134335:0|t[Tharnariuns Hoffnung] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Tollwütigen Distelbären|r --|cRXP_WARN_. It can be used from any range as long as you're targeting the|r |cRXP_ENEMY_Bear|r
    -->>|cRXP_WARN_==DO NOT USE THE QUEST ITEM IF THERES NO |cRXP_ENEMY_BEAR|r NEARBY==|r
    >>|cRXP_WARN_Du kannst die Falle verschwenden und die Quest damit unlösbar machen! Sollte dir das passieren, musst du zum Questgeber zurückkehren und um eine weitere Falle bitten.|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step
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
    >>|cRXP_WARN_Benutzt|r |T134335:0|t[Tharnariuns Hoffnung] |cRXP_WARN_auf einen|r |cRXP_ENEMY_Tollwütigen Distelbären|r --|cRXP_WARN_. It can be used from any range as long as you're targeting the bear|r
    -->>|cRXP_WARN_==DO NOT USE THE QUEST ITEM IF THERES NO BEAR NEARBY==|r
    >>|cRXP_WARN_Du kannst die Falle verschwenden und die Quest damit unlösbar machen! Sollte dir das passieren, musst du zum Questgeber zurückkehren und um eine weitere Falle bitten.|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
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
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Gebt die Quest An Land gespült ab
    .accept 4681 >> Akzeptiert die Quest An Land gespült
    .target Gwennyth Bly'Leggonde
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
step
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Akzeptiert die Quest Tiefer Ozean, weites Meer
    .target Gorbold Steelhand
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
    .goto 1439,41.901,31.339
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4723 >> Akzeptiert die Quest Gestrandete Meereskreatur
step
    .goto 1439,41.960,28.616
    >>Klickt auf die |cRXP_PICK_Dröhnkiste 411|r auf dem Boden
    .turnin 1001 >> Gebt die Quest Dröhnkiste 411 ab
    .isQuestComplete 1001
step
    #optional
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
    #optional
    .abandon 955 >> Brecht die Quest Bashal'Aran ab
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
step
    .goto 1439,47.314,48.676
    >>Reist zum geheimnisvollen roten Kristall
    >>|cRXP_WARN_Passt auf die beiden 2er-Gruppen |cRXP_ENEMY_Tobender Moonkin|r westlich des |cRXP_PICK_Geheimnisvoller Roter Kristall|r die beiden aneinander liegenden duos werden zusammen gepullt|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
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
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Tysha Moonblade|r
    .accept 953 >> Akzeptiert die Quest Der Untergang von Ameth'Aran
    .target Sentinel Tysha Moonblade
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
step
    #optional
    #completewith FurbolgGrind
    >>Tötet |cRXP_ENEMY_Tollwütiger Distelbär|r
    >>|cRXP_WARN_Passt auf, sie wirken|r |T135914:0|t[Tollwut] |cRXP_WARN_wenn ihr sie nicht schnell genug tötet (Sofort Nahkampf: Verringert ALLE Gesundheitsregeneration um 50% für 10 Minuten)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
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
    #completewith TOTH
    .goto 1439,36.701,45.122
    .subzone 442 >> Kehrt nach Auberdine zurück
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .turnin 4723 >> Gebt die Quest Gestrandete Meereskreatur ab
    .target Gwennyth Bly'Leggonde
step
    #optional
    #completewith next
    .goto 1439,36.806,44.137,8,0
    .goto 1439,35.743,43.710,12 >> Kehrt zu |cRXP_FRIENDLY_Cerellean Whiteclaw|r auf dem Dock zurück
step
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
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    .turnin 4811 >> Gebt die Quest Der rote Kristall ab
    .accept 4812 >> Akzeptiert die Quest Wenn das Wasser fließt
    .target Sentinel Glynda Nal'Shea
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
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >> Gebt die Quest Tiefer Ozean, weites Meer ab
    .target Gorbold Steelhand
    .isQuestComplete 982
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
    .target Thundris Windweaver
    .isQuestComplete 958
step
    .goto 1439,47.314,48.676
    >>Klickt den |cRXP_PICK_Geheimnisvoller roter Kristall|r
    >>|cRXP_WARN_Passt auf die beiden 2er-Gruppen |cRXP_ENEMY_Tobender Moonkin|r westlich des |cRXP_PICK_Geheimnisvoller Roter Kristall|r die beiden aneinander liegenden duos werden zusammen gepullt|r
    .turnin 4812 >> Gebt die Quest Wenn das Wasser fließt ab
    .accept 4813 >> Akzeptiert die Quest Die Fragmente im Inneren
step
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
    #label CrabTurtle
    .goto 1439/1,47.88,7433.800
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4725 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    .goto 1439/1,-386.39,7219.830
    >>|cRXP_WARN_Benutzt|r |T134865:0|t[Leere Probenröhre] |cRXP_WARN_am Fuße des Cliffspring Rivers|r
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350
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
    >>Tötet |cRXP_ENEMY_Tollwütiger Distelbär|r
    >>|cRXP_WARN_Passt auf, sie wirken|r |T135914:0|t[Tollwut] |cRXP_WARN_wenn ihr sie nicht schnell genug tötet (Sofort Nahkampf: Verringert ALLE Gesundheitsregeneration um 50% für 10 Minuten)|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    #optional
    #completewith next
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >> Reist zur Klippenquell-Höhle
step << Druid
    .goto 1439/1,-660.18,6874.43
    >>|cRXP_WARN_Benutzt die|r |T134776:0|t[Leere Cliffspring Falls-Probe] |cRXP_WARN_im Wasser am Eingang der Klippenquell-Höhle|r
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
    .isOnQuest 6122
step
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
step
    .deathskip >> Sterbt und respawnt beim Auberdine-Friedhof
    .target Geistheiler
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
step << !Druid
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
step
    .goto 1439/1,472.32,6438.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Schildwache Glynda Nal'Shea|r
    >>|cRXP_WARN_Wählt den|r |T135641:0|t[Krummholzdolch] |cRXP_WARN_aus, da ihr versuchen solltet, einen|r |T135641:0|t[Dolch] |cRXP_WARN_für eure|r |T132290:0|t[Gifte] |cRXP_WARN_Quest später zu haben|r << Rogue
    .turnin 4813 >> Gebt die Quest Die Fragmente im Inneren ab
    .target Sentinel Glynda Nal'Shea
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
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4723 >> Gebt die Quest Gestrandete Meereskreatur ab
    .turnin 4725 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4723

----Start of Druid Quest section----
step << Druid
    #completewith TotL
    .goto 1439,33.213,39.883
    .zone Teldrassil >> Nehmt das Boot nach Darnassus
    .zoneskip Darnassus
step << Druid
    #optional
    #label DruidLesson
    #completewith TotL
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
step
    .hs >> Ruhestein nach Sturmwind
    .zoneskip Stormwind City
    .zoneskip Darkshore
    .zoneskip Ironforge
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
    #label Gatehouse
    .goto 1453/0,566.600,-8845.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Elaine Trias::483|r
    .target Elaine Trias::483
    .turnin 97222 >>Gebt die Quest Torhauswaren ab  
step << Druid
    .goto 1453/0,1095.500,-8741.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Theridran|r
    .trainer >>Trainiere deine Klassenfähigkeiten
	.target Theridran
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Geh ins geschlachtete Lamm und dann in den Keller
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Ursula Deline
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Mage
    #optional
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >> Reist zum Magierturm
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Elsharin
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Priest/Paladin
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Lauf zur Kathedrale in Sturmwind
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Arthur der Treue|r
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Arthur the Faithful
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brother Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Brother Joshua
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Einris Brightspear
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Hunter
    .goto 1453/0,553.22,-8422.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Karrina Mekenda|r
    .trainer >> Erlernt eure Begleiterfähigkeiten
    .target Karrina Mekenda
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Osborne the Night Man
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wu|r oder |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Wu Shen
    .target Ilsa Corbin
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step
    #completewith next
    .goto 1453/0,562.300,-8385.300,20,0
    .goto 1453/0,522.000,-8352.101
    .subzone 2257 >>Betretet die Tiefenbahn
    .zoneskip Ironforge
    .zoneskip Dun Morogh
step
    .zone Ironforge >> Nehmt die Tiefenbahn nach Eisenschmiede
    .zoneskip Dun Morogh
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group RestedXP Forever Dungeon Dungeonführer (A)
#subgroup Dungeon Dungeonführer 1-20
--#groupid RXP-SRGCE-A1
#name 17-18 Die Halle der Thanen
#next 18-19 Ruinen von Lordaeron
#displayname 16-17 Die Halle der Thanen << NightElf

step << Skyborne
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Holt euch den Flugpunkt in Eisenschmiede
    .target Gryth Thurden
step << !NightElf
    #completewith OII
    +|cRXP_WARN_Ihr werdet jetzt eine Vorbereitungsquest für Die Halle der Thanen abschließen und dann lauft den Dungeon|r
step << !NightElf
    #completewith OII
    .zone Dun Morogh >> Reist nach Dun Morogh
step << !NightElf
    #label QuarryStart
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Erdseher Farsen|r
    .accept 96392 >> Akzeptiert die Quest Farsens Wacht
    .target Earthseer Farsen
step << !NightElf
    .isOnQuest 96392
    .goto 1426/0,-1394.24,-5797.83
    .gossipoption 139831 >> Sprecht mit |cRXP_FRIENDLY_Erdseher Farsen|r, um seine Fernsicht anzusehen
    >>|cRXP_WARN_Ihr könnt die Fernsicht abbrechen, sobald das Ziel abgeschlossen ist|r
    .target Earthseer Farsen
step << !NightElf
    .isOnQuest 96392
    .aura -1293681 >> |cRXP_WARN_Drückt ESC, um die Fernsicht abzubrechen|r
step << skip
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Erdseher Farsen|r
    >>|cRXP_WARN_Ihr könnt die Fernsicht abbrechen, sobald das Ziel abgeschlossen ist|r
    .complete 96392,1 -- Use Farsen's Farsight
    .skipgossip
    .target Earthseer Farsen
step << !NightElf
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Erdseher Farsen|r
    >>|cRXP_WARN_Drückt ESC, um die Fernsicht abzubrechen|r
    .turnin 96392 >> Gebt die Quest Farsens Wacht ab
    --.accept 96390 >> Accept Nip 'Em in the Bud
    .target Earthseer Farsen
step << !NightElf
    .goto 1426/0,-2009.87,-5860.22,40,0
    .goto 1426/0,-2034.49,-5922.60
    >>Tötet |cRXP_ENEMY_Spion der Dunkeleisenzwerge|r. Plündert sie für |T237385:0|t[|cRXP_LOOT_Dunkeleisenkarte |r]
    .use 274268 >>|cRXP_WARN_Benutzt|r |T237385:0|t[|cRXP_LOOT_Dunkeleisenkarte|r] |cRXP_WARN_um die Quest zu starten|r
    -->>|cRXP_WARN_You can skip killing |cRXP_ENEMY_Dark Iron Spies|r for the other quest because they are low level once you find the|r |T237385:0|t[|cRXP_LOOT_Dark Iron Map|r]
    --.complete 96390,1 -- Dark Iron Spy slain 10/10
    --.disablecheckbox
    .collect 274268,1,96391,1 -- Dark Iron Map (1)
    .accept 96391 >> Akzeptiert die Quest Karte des Untergrunds
    .mob Dark Iron Spy
step << !NightElf
    #label OII
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Erdseher Farsen|r
    .turnin 96391 >> Gebt die Quest Karte des Untergrunds ab
    .accept 96393 >> Akzeptiert die Quest Eindringlinge in der Altstadt von Ironforge
    .target Earthseer Farsen
step << !NightElf
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
    .enabledungeon HOT
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
#version 1
<< Alliance
#group RestedXP Forever Dungeon Dungeonführer (A)
#subgroup Dungeon Dungeonführer 1-20
--#groupid RXP-SRGCE-A1
#name 18-19 Ruinen von Lordaeron
#next 19-20 Todesminen
#displayname 17-18 Ruinen von Lordaeron << NightElf

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
    #completewith next
    .goto 1424/0,-136.700,-535.800,125 >> |cRXP_WARN_HINWEIS: Ihr könnt auf dem Weg in die Felder des Hügellands auf höherstufige |cRXP_ENEMY_Lions|r und |cRXP_ENEMY_Bären|r treffen|r
    >>|cRXP_WARN_Seid vorsichtig vor Horde-Spielern, falls ihr auf einem PvP-Server seid|r
    .zoneskip 1424,1 
step
    #label EnterRoL
    .enabledungeon ROL
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
    .goto 1458/0,170.700,1804.700,20 >>Reist zu den Ruinen von Lordaeron in der Unterstadt. Betretet den Instanz
    >>|cRXP_WARN_Seid vorsichtig vor höherstufigen |cRXP_ENEMY_Lions|r, |cRXP_ENEMY_Bären|r, |cRXP_ENEMY_Spinnen|r oder |cRXP_ENEMY_Murlocs|r während ihr durchlauft|r
    >>|cRXP_WARN_Sobald ihr die Unterstadt betretet, werdet ihr automatisch für PvP markiert und seid angreifbar durch die|r |cRXP_ENEMY_Horde|r
    .link https://www.youtube.com/watch?v=jxmG6_JPFMc >> |cRXP_WARN_Klickt hier für eine Videoanleitung zum Betreten der Ruinen von Lordaeon|r
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
    .zoneskip Stormwind City
    .bindlocation 1519,1 --HS in SW
step
    #optional
    .hs >> Ruhestein nach Eisenschmiede
    .zoneskip Ironforge
    .zoneskip Stormwind City
    .bindlocation 1537,1 --HS in IF
step 
    #optional
    .goto Ironforge,76.61,51.28,10,0
    .zone Stormwind City >> Nimm die Bahn Richtung Sturmwind
    .zoneskip Ironforge,1
step
    #optional
    #completewith next
    .zone Stormwind City >>Begebt euch nach Sturmwind
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
    .xp <20,1
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wu|r oder |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Wu Shen
    .target Ilsa Corbin
    .xp <20,1
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich drinnen mit |cRXP_FRIENDLY_Enris Brightspear|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Einris Brightspear
    .xp <20,1
step << Druid
    .goto 1453/0,1347.6192,-8591.2168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Theridran|r
    .trainer >> Trainiere deine Klassenfähigkeiten
	.target Theridran
    .xp <20,1
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
    .xp <20,1
step << Mage
    #optional
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >> Reist zum Magierturm
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Elsharin
    .xp <20,1
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
    .xp <20,1
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Brother Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Brother Joshua
    .xp <20,1
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group RestedXP Forever Dungeon Dungeonführer (A)
#subgroup Dungeon Dungeonführer 1-20
--#groupid RXP-SRGCE-A1
#name 19-20 Todesminen
#displayname 18-20 Todesminen/Rotkammgebirge << NightElf
#next 20-21 Dunkelküste/Eschental

step
    .goto 1453/0,673.58,-8867.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Allison|r
    .home >> Setzt euren Ruhestein in Sturmwind
    .target Innkeeper Allison
    .bindlocation 16509
step
    #completewith TDB1
    #label FlyWestfall
    .goto 1453/0,490.03,-8835.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    >>|cRXP_WARN_Falls ihr nicht bereits die Westfall-Flugroute habt, überspringt diesen Schritt|r << !Human !Gnome !Dwarf
    .fly Westfall >> Fliegt nach Westfall
    .target Dungar Longdrink
step
    #optional
    #requires FlyWestfall
    #completewith TDB1
    .zone Westfall >> Lauf nach Westfall
step
    #label TDB1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
	.target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .accept 65 >> Die Bruderschaft der Defias annehmen
step
    #completewith RRDB
    .goto 1453/0,490.03,-8835.82,-1
    .goto 1436/0,1037.42,-10628.27,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dungar Longdrink|r oder |cRXP_FRIENDLY_Thor|r
    >>|cRXP_WARN_Falls ihr nicht bereits die Flugroute nach Rotkammgebirge habt, überspringt diesen Schritt|r << !Human !Gnome !Dwarf
    .fly Redridge >> Fliegt ins Rotkammgebirge
    .target Dungar Longdrink
    .zoneskip Redridge Mountains
    .zoneskip Elwynn Forest
step
    .isQuestAvailable 132
    .goto 1433/0,-1906.400,-9606.800
    .zone Redridge Mountains >> Reist ins Rotkammgebirge
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Großknecht Oslow|r
    .goto 1433/0,-2268.32,-9279.12
    .accept 125 >> Akzeptiert die Quest Die verlorenen Werkzeuge
    .target Foreman Oslow
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
step
    >>Öffnet die |cRXP_PICK_Versunkene Truhe|r. Plündert sie für |cRXP_LOOT_Oslows Werkzeugkasten|r
    .goto 1433/0,-2472.16,-9366.72
    .complete 125,1 --Oslow's Toolbox (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Großknecht Oslow|r
    .goto 1433/0,-2268.32,-9279.12
    .turnin 125 >> Gebt die Quest Die verlorenen Werkzeuge ab
    .target Foreman Oslow
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto 1433/0,-2205.58,-9351.52
    .turnin 3741 >> Gebt die Quest Hilarys Halskette ab
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
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 2360 >> Akzeptiert die Quest Mathias und die Defias
    .goto 1453/0,362.28,-8815.23
    .target Master Mathias Shaw
    .xp <20,1
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
    #completewith EnterDM
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
step << Druid
    .goto Westfall,52.8,53.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirtin Heather|r
    .target Innkeeper Heather
    .home >> Setzt euren Ruhestein nach Westfall
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
    .enabledungeon DM
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
step << Druid
    .goto 1436/0,1707.2116,-10583.0227
    >>Klickt die |cRXP_PICK_Ausgebrannten Überreste|r auf dem Boden
    .accept 79008 >> Akzeptiert ...und diese Notiz, die Ihr gefunden habt
step << Druid
    #completewith next
    .goto Westfall,17.928,33.099,50 >> Schwimmt hinaus aufs Meer
step << Druid
    .goto Westfall,17.928,33.099
    >>Öffnet die |cRXP_PICK_Merkwürdige Schließkassette|r.Plündert sie für den |cRXP_LOOT_Halber Anhänger der Wasser-Belastbarkeit|r
    .collect 15882,1,272,1 --Collect Half Pendant of Aquatic Endurance (x1)
step << Druid
    #completewith next
	.cast 18960 >> Caste Teleportieren: Moonglade
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Loganaar
step << Druid
    .goto 1450/1,-2212.25,7854.28
    .use 15883 >>|cRXP_WARN_Benutzt den|r |T133443:0|t[Halber Anhänger der Wasserbeweglichkeit] |cRXP_WARN_um es mit dem|r |T133442:0|t[Halber Anhänger der Wasser-Belastbarkeit] |cRXP_WARN_am Schrein von Remulos|r zu kombinieren
    .complete 272,1 --Collect Pendant of the Sea Lion (x1)
step << Druid
    #completewith next
	.cast 18960 >> Caste Teleportieren: Moonglade
    >>|cRXP_WARN_Das erspart euch Zeit beim Zurücklaufen|r
step << Druid
    .goto 1450/1,-2678.74,8020.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dendrite Sternenschauer|r
    .turnin 272 >> Gebt die Quest Prüfung des Seelöwen ab
    .accept 5061 >> Accept Wassergestalt
    .target Dendrite Starblaze
step << Druid
    .hs >> Benutzt euren Ruhestein zur Späherkuppe
step << !Druid
    .goto 1436/0,1707.2116,-10583.0227
    >>Klickt die |cRXP_PICK_Ausgebrannten Überreste|r auf dem Boden
    .accept 79008 >> Akzeptiert ...und diese Notiz, die Ihr gefunden habt
step
    #completewith RSB
    .goto 1436/0,1045.12,-10508.80,100 >> Reist zur Späherkuppe
step
    .isQuestComplete 166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gryan Starkmantel|r
    .turnin 166 >> Gebt die Quest Die Bruderschaft der Defias ab
    .target Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
step
    #label RSB
    .isQuestComplete 214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Späherin Riell|r sie steht oben auf dem Turm
    .turnin 214 >> Gebt die Quest Rote Seidenkopftücher ab
    .goto 1436/0,1033.22,-10504.83
    .target Scout Riell

step
   .maxlevel 19,Level20Check

step
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Redridge >> Fliegt ins Rotkammgebirge
    .target Thor
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
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Marris|r
    .goto 1433/0,-2298.06,-9284.04
    .accept 20 >> Akzeptiert die Quest Bedrohung durch die Blackrock
    .accept 98387 >>Akzeptiert die Quest Die Blockade der Blackrock
    .target Marshal Marris
step
    .group
    .goto 1433/0,-2208.600,-9243.500
    >>Klickt das |cRXP_PICK_Gesucht-Plakat|r
    .accept 95999 >>Akzeptiert die Quest GESUCHT: Verbrenner Gar'im
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
step << Shaman -- most likely not on this quest yet
    #optional
    .isOnQuest 94499
    .goto 1433/0,-3121.100,-9485.000
    .use 265747 >> |cRXP_WARN_Benutzt den|r |T132829:0|t[Leerer roter Wasserschlauch] |cRXP_WARN_an den Steinwachtfällen|r
    .complete 94499,1 --|1/1 Full Red Waterskin
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Stellvertreter Feldon|r
	.target Deputy Feldon
    .goto 1433/0,-2237.93,-9443.60
    .turnin 246 >> Gebt die Quest Einschätzung der Gefahr ab
    .turnin 98407 >>Gebt die Quest Machtdemonstration ab
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Marris|r
	.target Marshal Marris
    .goto 1433/0,-2298.06,-9284.04
    .turnin 20 >> Gebt die Quest Bedrohung durch die Blackrock ab
    .turnin 98387 >>Gebt die Quest Die Blockade der Blackrock ab
step
    .isQuestComplete 95999
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Magistrat Solomon|r
	.target Magistrate Solomon
    .goto 1433/0,-2207.10,-9231.34,15,0
    .goto 1433/0,-2221.65,-9218.60
    .turnin 95999 >>Gebt die Quest GESUCHT: Verbrenner Gar'im ab
step
    #optional
    .xp 20 >> Farmt bis Stufe 20

step
    #label Level20Check

step << !Druid !Rogue
    .hs >> Ruhestein nach Sturmwind
    .cooldown item,6948,>2,1
    .zoneskip Stormwind City
    .zoneskip Darkshore
step
    #optional
    #completewith DarkshoreBoat
    .goto 1433/0,-2234.900,-9435.300,-1
    .goto 1436/0,1037.42,-10628.27,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ariena Stormfeather|r oder |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Ariena Stormfeather
    .target Thor
    .zoneskip Stormwind City
    .zoneskip Darkshore
step << Rogue
    .isNotOnQuest 2360
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Osborne the Night Man
    .train 1785,1
    .xp <20,1
    .xp >22,1
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 2360 >> Akzeptiert die Quest Mathias und die Defias
    .goto 1453/0,362.28,-8815.23
    .target Master Mathias Shaw
step << Rogue
    #completewith RoguePoison
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .goto 1453/0,490.03,-8835.82
    .fly Westfall >> Fliegt nach Westfall
    .target Dungar Longdrink
step << !Dwarf Rogue
    .goto 1431/0,404.03,-11014.47,60,0
    .goto 1431/0,432.11,-10878.75,50,0
    .goto 1431/0,551.72,-10688.13
    >>Tötet |cRXP_ENEMY_Zwerggiftweberspinne|r und |cRXP_ENEMY_Giftweberspinne|r. Plündert sie für |cRXP_LOOT_kleiner Giftbeutel|r und ihre |cRXP_LOOT_Klebriges Spinnenbein|r
    >>|cRXP_WARN_You need a |cRXP_LOOT_kleiner Giftbeutel|r um das|r |T134437:0|t[Gegengift] herzustellen |cRXP_WARN_um später den|r |T136230:0|t[Die Berührung von Zanzil] |cRXP_WARN_debuff zu heilen|r
    >>|cRXP_WARN_Behaltet die |cRXP_LOOT_Klebriges Spinnenbeine|r für später|r
    >>|cRXP_WARN_Falls ihr einen|r |T626003:0|t|cFFF48CBADie Bruderschaft der Defias|r|cRXP_WARN_,|r |T625999:0|t|cFFFF7C0ADruide|r |cRXP_WARN_oder|r |T626006:0|t|cFF0070DDSchamane|r |cRXP_WARN_-Freund habt, könnt ihr diesen Schritt überspringen und ihn bitten, es für euch zu entfernen|r
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
    .collect 6452,1 >> Crafte ein |T134437:0|t[Gegengift]
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
    .hs >> Ruhestein nach Sturmwind
    .cooldown item,6948,>2,1
    .zoneskip Stormwind City
    .zoneskip Darkshore
step << Rogue
    #optional
    #completewith KlavenEnd
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Thor
    .zoneskip Stormwind City
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
    >>|cRXP_WARN_Falls ihr einen|r |T626003:0|t|cFFF48CBADie Bruderschaft der Defias|r|cRXP_WARN_,|r |T625999:0|t|cFFFF7C0ADruide|r |cRXP_WARN_oder|r |T626006:0|t|cFF0070DDSchamane|r |cRXP_WARN_-Freund habt, bittet sie, die|r |T136230:0|t[Berührung von Zanzil] |cRXP_WARN_für euch zu entfernen|r
    .skill firstaid,80 >> |cRXP_WARN_Steigert eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_auf 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_Falls ihr einen|r |T626003:0|t|cFFF48CBADie Bruderschaft der Defias|r|cRXP_WARN_,|r |T625999:0|t|cFFFF7C0ADruide|r |cRXP_WARN_oder|r |T626006:0|t|cFF0070DDSchamane|r |cRXP_WARN_-Freund habt, bittet sie, die|r |T136230:0|t[Berührung von Zanzil] |cRXP_WARN_für euch zu entfernen|r
    .train 7934 >> |cRXP_WARN_Trainiert|r |T134437:0|t[Gegengift]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Crafte ein |T134437:0|t[Gegengift]
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
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Osborne the Night Man
    .train 1785,1
    .xp <20,1
    .xp >22,1
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Osborne|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Osborne the Night Man
    .train 1759,1
    .xp <22,1
    .xp >24,1
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
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Wu|r oder |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Wu Shen
    .target Ilsa Corbin
step
    .isQuestComplete 167
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .turnin 167 >> Gebt die Quest Oh Bruder... ab
    .goto 1453/0,501.200,-8468.601
    .target Wilder Thistlenettle
step
    .isQuestComplete 168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .turnin 168 >> Gebt die Quest Die Suche nach Andenken ab
    .goto 1453/0,501.200,-8468.601
    .target Wilder Thistlenettle
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Einris Brightspear
step << Hunter
    .goto 1453/0,553.22,-8422.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Karrina Mekenda|r
    .trainer >> Erlernt eure Begleiterfähigkeiten
    .target Karrina Mekenda
step
    .isQuestComplete 2040
    .goto 1453/0,634.800,-8390.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Shoni die Schtille|r
    .turnin 2040 >> Gebt die Quest Unterirdischer Angriff ab
    .target Shoni the Shilent
step << Shaman
    #completewith ShamTrain
    .goto 1453/0,558.96,-8382.54,25,0
    .goto 1453/0,520.64,-8351.460
    .zone Ironforge >> Geh zur Tiefeneisenbahn. Nehme sie in Richtung Ironforge
step << Shaman
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eldrun Stormbreaker|r
    .target Eldrun Stormbreaker::258098
    .accept 94494 >>Akzeptiert die Quest Ruf des Wassers
    .trainer >> Trainiere deine Klassenfähigkeiten
    .train 2645,1 -- ghost wolf
step << Shaman
    #label ShamTrain
    .goto 1455/0,-1086.500,-4642.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eldrun Stormbreaker|r
    .target Eldrun Stormbreaker::258098
    .trainer >> Trainiere deine Klassenfähigkeiten
    .train 408342,1 -- fire nova r2
    .xp <22,1
step << Shaman
    .goto 1455/0,-1330.28,-4843.6,5,0
    .zone Stormwind City >> Betretet die Tiefenbahn. Nehmt die Straßenbahn nach Sturmwind
    .zoneskip Darkshore
    .zoneskip Ashenvale
step
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 373 >>Gebt die Quest Ein nie abgeschickter Brief ab
    .accept 389 >>Bazil Thedd annehmen
    .target Baros Alexston
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
step << Warlock
    .goto 1453/0,1041.54,-8983.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gakin der Dunkelbinder|r
    .accept 1716 >> Akzeptiert die Quest Verschlinger der Seelen
    .target Gakin the Darkbinder
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
step
    .goto 1453/0,1093.3,-8779.020
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Argos Nightwhisper|r
    .accept 3765 >> Akzeptiert die Quest Verderbnis in der Fremde
    .target Argos Nightwhisper
step << !Druid
    #optional
    .goto 1453/0,1330.100,-8645.400
    >>|cRXP_WARN_Levelt eure|r |T135966:0|t[Erste Hilfe] |cRXP_WARN_während ihr auf das Boot nach Dunkelküste wartet, falls nötig|r
    .zone Darkshore >> Nimm das Boot nach Dunkelküste
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << !Druid
    #label DarkshoreBoat
    .goto 1453/0,1330.100,-8645.400
    .zone Darkshore >> Nimm das Boot nach Dunkelküste
step
    #optional
    .abandon 95999 >>Brecht die Quest GESUCHT: Verbrenner Gar'im ab
]])

RXPGuides.RegisterGuide([[
#forever
#version 1
<< Alliance
#group RestedXP Forever Dungeon Dungeonführer (A)
#subgroup Dungeon Dungeonführer 1-20
--#groupid RXP-SRGCE-A1
#name 20-21 Dunkelküste/Eschental
#next RestedXP Forever Dungeon Dungeonführer (A)\21-23 Eschental/Steinkrallengebirge

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
    .goto 1457/1,2626.51,9946.11
    .zone Teldrassil >> Nimm das Lila Portal nach Rut'Theran
    .zoneskip Darkshore
step << Druid
    .goto 1438/1,841.56,8640.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Fliegt zur Dunkelküste
    .target Vesprystus
    .zoneskip Darkshore
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >> Akzeptiert die Quest Höhlenpilze
    .target Barithras Moonshade
step
    #optional
    .isOnQuest 4763
    .goto 1439/1,467.08,6409.38
    >>|cRXP_WARN_Benutzt die|r |T133748:0|t[Leere Säuberungsschale] |cRXP_WARN_beim Auberdine-Mondbrunnen|r
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .use 12346
step
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Archäologin Hollee|r
    .accept 729 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Archaeologist Hollee
step
    .isQuestTurnedIn 4762
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .accept 4763 >> Akzeptiert die Quest Die verderbten Schwarzfelle
    .target Thundris Windweaver
step
    .isOnQuest 3765
    .goto 1439,38.325,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gershala Nachtraunen|r
    .turnin 3765 >> Gebt die Quest Verderbnis in der Fremde ab
    .target Gershala Nightwhisper
step
.dungeon BFD
    .goto 1439,38.325,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gershala Nachtraunen|r
    .accept 1275 >> Erforschung der Verderbnis annehmen
    .target Gershala Nightwhisper
step
    .isQuestTurnedIn 2138
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2139 >> Akzeptiert die Quest Tharnariuns Hoffnung
    .target Tharnariun Treetender
step
    .goto 1439,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Schildwache Elissa Starbreeze|r oben
    .accept 965 >> Der Turm von Althalaxx annehmen
    .target Sentinel Elissa Starbreeze
step
    .isOnQuest 4763
    .goto 1439/1,467.08,6409.38
    >>|cRXP_WARN_Benutzt die|r |T133748:0|t[Leere Säuberungsschale] |cRXP_WARN_beim Auberdine-Mondbrunnen|r
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .use 12346
step
    .isOnQuest 4763
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
    .isOnQuest 2139
    .goto 1439/1,-503.63,6732.95,45,0
    .goto 1439/1,-430.27,6662.65
    >>Tötet die |cRXP_ENEMY_Höhlenmutter|r
    >>|cRXP_WARN_Seid vorsichtig, denn die |cRXP_ENEMY_Distelbärjunges|r können|r |T132152:0|t[Verheeren]|cRXP_WARN_,wirken. Einen sofortigen Nahkampfangriff, der euch für 2 Sek. betäubt|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
step
    .isOnQuest 4763
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
    .isOnQuest 4763
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
    .isOnQuest 4763
    #optional
    #requires Blackwood3
    #completewith Xabraxxis
    .goto 1439/1,-489.22,6875.30
    .cast 16072 >> |cRXP_WARN_Benutzt die|r |T134712:0|t[Gefüllte Säuberungsschale] |cRXP_WARN_beim |cRXP_PICK_Feuer|r um|r |cRXP_ENEMY_Xabraxxis|r zu beschwören
    .timer 17,Die verderbten Schwarzfelle RP
    .use 12347
step
    .isOnQuest 4763
    #requires Blackwood3
    #label Xabraxxis
    .goto 1439/1,-489.22,6875.30
    >>Tötet |cRXP_ENEMY_Xabraxxis|r. Öffnet die |cRXP_PICK_Xabraxxis Dämonentasche|r, die er auf den Boden fallen lässt. Plündert sie für den |cRXP_LOOT_Talisman der Verderbnis|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step
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
step
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Balthule Schattenhieb|r
    .turnin 965 >> Gebt die Quest Der Turm von Althalaxx ab
    .accept 966 >> Der Turm von Althalaxx annehmen
    .target Balthule Shadowstrike
step
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
step
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Balthule Schattenhieb|r
    .turnin 966 >> Gebt die Quest Der Turm von Althalaxx ab
    .accept 967 >> Der Turm von Althalaxx annehmen
    .target Balthule Shadowstrike
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
    .isQuestTurnedIn 4681
    .goto 1439,53.113,18.099
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4727 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step << Druid
    .goto Darkshore,48.87,11.32
    >>|cRXP_WARN_Schwimmt hinaus ins Wasser|r
    >>Öffnet die |cRXP_PICK_Merkwürdige Schließkassette|r. Plündert sie für den |cRXP_LOOT_Halber Anhänger der Wasser-Beweglichkeit|r
    .collect 15883,1,272,1 --Collect Half Pendant of Aquatic Agility (x1)
step
    #sticky
    #optional
    .destroy 7442 >> Zerstört |T134459:0|t[Gyromasts Schlüssel] aus euren Taschen, da ihr ihn nicht mehr braucht
step
    #completewith ReturnAuberdine
    .subzone 442 >> Kehrt nach Auberdine zurück
step
    .isQuestComplete 2139
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2139 >> Gebt die Quest Tharnariuns Hoffnung ab
    .target Tharnariun Treetender
step
    .isQuestComplete 4763
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thundris Windwirker|r
    .turnin 4763 >> Gebt die Quest Die verderbten Schwarzfelle ab
    .target Thundris Windweaver
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
step
    #label ReturnAuberdine
    .isOnQuest 4727
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >> Gebt die Quest Gestrandete Meeresschildkröte ab
    .target Gwennyth Bly'Leggonde
step
    .goto 1439,35.968,70.807
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4728 >> Akzeptiert die Quest Gestrandete Meereskreatur
    .isQuestTurnedIn 4681
step
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
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Onu|r
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
    #sticky
    #label prospector
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r
    >>|cRXP_WARN_Ihr müsst möglicherweise warten, bis er respawnt oder bis andere die Eskorte beenden|r
    .turnin 729 >> Gebt die Quest Der geistesabwesende Ausgrabungsleiter ab
    .target Prospector Remtravel
step
    .goto 1439/1,602.01,4678.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r. Dieser wird eine Escort Quest starten
    .accept 731,1 >> Der geistesabwesende Ausgrabungsleiter annehmen
    .target Prospector Remtravel
step
    #requires prospector
    >>|cRXP_WARN_Eskortiert |cRXP_FRIENDLY_Ausgrabungsleiter Remtravel|r durch die Ausgrabung|r
    .complete 731,1
    .isOnQuest 731
step
    .isQuestTurnedIn 4681
    .goto 1439,32.644,80.711
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4730 >> Akzeptiert die Quest Gestrandete Meereskreatur
step
    .isQuestTurnedIn 4681
    .goto 1439,31.690,83.700
    >>|cRXP_WARN_Achtet auf |cRXP_ENEMY_Orakel der Grauflossen|r'|r |T136048:0|t[Blitzschlag] |cRXP_WARN_Schaden, sie können auch mit|r |T136052:0|t[Welle der Heilung]|r heilen
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4731 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    .isQuestTurnedIn 4681
    .goto 1439,31.229,85.564
    >>|cRXP_WARN_Achtet auf |cRXP_ENEMY_Orakel der Grauflossen|r'|r |T136048:0|t[Blitzschlag] |cRXP_WARN_Schaden, sie können auch mit|r |T136052:0|t[Welle der Heilung]|r heilen
    >>Klickt die |cRXP_PICK_Gestrandete Meeresschildkröte|r
    .accept 4732 >> Akzeptiert die Quest Gestrandete Meeresschildkröte
step
    .isQuestTurnedIn 4681
    .goto 1439,31.251,87.419
    >>Klickt auf die |cRXP_PICK_Gestrandete Meereskreatur|r
    .accept 4733 >> Akzeptiert die Quest Gestrandete Meereskreatur
    >>|cRXP_WARN_Achtet auf |cRXP_ENEMY_Orakel der Grauflossen|r'|r |T136048:0|t[Blitzschlag] |cRXP_WARN_Schaden, sie können auch mit|r |T136052:0|t[Welle der Heilung]|r heilen
step
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Gebt die Quest Rückkehr zu Onu ab
    .timer 11,Rückkehr zu Onu RP
    .target Onu
step
    #optional
    >>|cRXP_WARN_Benutzt das |T133743:0|t[|cRXP_LOOT_Buch: Die Macht in der Tiefe|r], um die Quest zu beginnen|r
    .accept 968 >> Akzeptiert die Quest Die Macht in der Tiefe
    .use 5352
    .itemcount 5352,1
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
    #optional
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
step
    .goto 1440/1,-433.09,2781.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Kimlya|r
    .home >> Setzt von Euch Ruhestein auf Astranaar
    .target Innkeeper Kimlya
step
    .goto 1440/1,-454.43,2682.24
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pelturas Weißmond|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Gebt die Quest Orendils Heilmittel ab
    .timer 24,Orendils Heilmittel Roleplay
    .accept 1033 >> Elunes Träne annehmen
]])