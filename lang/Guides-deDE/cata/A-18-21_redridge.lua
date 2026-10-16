if GetLocale() ~= "deDE" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
RXPGuides.RegisterGuide([[

#version 1
#group RXP Kataklysmus 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 15-20 Redridge
#displayname 18-21 Redridge
#next 20-25 Dämmerwald
<<Alliance

--TODO: Figure out how flight paths work while leveling
--FPs from lower level zones are supposed to open up as you level: https://youtu.be/9Y_PE0Wb4IM?si=H5H-FVQ-5StEQUfI&t=929

step << NightElf/Draenei/Worgen
    .goto 62,51.716,17.647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Teldira Moonfeather|r
    .target Teldira Moonfeather
    .fly Rut'theran Village >>Fliegt nach Rut'theran
    .zoneskip Darkshore,1
step << NightElf
    .goto 57,55.045,88.301
    .zone 89 >>Geht durch das Portal nach Darnassus
    .train 33388,1
    .money <3.4000
    .xp <20,1
step << NightElf
    .goto 57,55.045,88.301
    .zone 89 >>Geht durch das Portal nach Darnassus
    .mountcount 0-150,<1
    .itemcount 8632,<1
    .itemcount 8631,<1
    .itemcount 8629,<1
    .itemcount 47100,<1
step << NightElf
    .goto 89,42.497,32.595
    >>Sprecht mit |cRXP_FRIENDLY_Lelanai|r
    +|cRXP_BUY_Kauft ein|r |T132267:0|t[Saber] |cRXP_BUY_Reittier, ihr könnt es erst ab Stufe 20 benutzen, behaltet es in den Taschen von Euch für später|r
    .target Lelanai
    .mountcount 0-150,<1
    .itemcount 8632,<1
    .itemcount 8631,<1
    .itemcount 8629,<1
    .itemcount 47100,<1
step << NightElf
    .goto 89,42.782,32.919
    >>Sprecht mit |cRXP_FRIENDLY_Jartsam|r
    .train 33388 >> Erlernen Unerfahrener Reiter
    .target Jartsam
    .money <3.4000
    .xp <20,1
step << NightElf
    .goto 89,36.547,50.413
    .zone 57 >>Geht zurück durch das Portal zu Rut'Theran Village
    .zoneskip 89,1
step << Draenei
    .goto 57,52.30,89.50
    .zone Azuremyst Isle >> Nehmt das Boot nach Azurmythosinsel
    .mountcount 0-150,<1
    .itemcount 29743,<1
    .itemcount 29744,<1
    .itemcount 28481,<1
step << Draenei
    .goto Azuremyst Isle,81.497,51.456
    >>Sprecht mit |cRXP_FRIENDLY_Torallius der Herdentreiber|r
    +Kauft einen Elekk, ihr könnt es erst ab Stufe 20 benutzen, behaltet es in den Taschen von Euch für später
    .target Torallius the Pack Handler
    .mountcount 0-150,<1
    .itemcount 29743,<1
    .itemcount 29744,<1
    .itemcount 28481,<1
step << Draenei
    .goto 89,81.348,52.623
    >>Sprecht mit |cRXP_FRIENDLY_Aalun|r
    .train 33388 >> Erlernen Unerfahrener Reiter
    .target Aalun
    .money <3.6000
    .xp <20,1
    .zoneskip Azuremyst Isle,1
step << Draenei
    .goto Azuremyst Isle,20.41,54.18
    .zone 57 >> Nehmt das Boot zurück nach Rut'theran
    .zoneskip Azuremyst Isle,1
step << NightElf/Draenei/Worgen
    .goto 57,55.037,93.677,25,0
    .goto 57,55.037,93.677,0
    .zone Stormwind City >> Nehmt das Boot nach Sturmwind
step << Gnome/Dwarf
#completewith next
    .goto 48,33.938,50.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Kharanos >> Fliegt nach Kharanos << Gnome
    .fly Gol'Bolar Quarry >> Fliegt nach Steinbruch Gol'Bolar << Dwarf
    .target Thorgrum Borrelson
    .zoneskip Loch Modan,1
    .mountcount 0-150,<1
    .itemcount 5864,<1
    .itemcount 5872,<1
    .itemcount 5873,<1
    .itemcount 8563,<1
    .itemcount 8595,<1
    .itemcount 13321,<1
    .itemcount 13322,<1
step << Gnome
    .goto 1426/0,-618.400,-5451.100
    >>Sprecht mit |cRXP_FRIENDLY_Milli Featherwhistle|r
    +|cRXP_BUY_Kauft ein|r |T132247:0|t[Roboschreiter] |cRXP_BUY_Reittier, ihr könnt es erst ab Stufe 20 benutzen, behaltet es in den Taschen von Euch für später|r
    .target Milli Featherwhistle
    .mountcount 0-150,<1
    .itemcount 8563,<1
    .itemcount 8595,<1
    .itemcount 13321,<1
    .itemcount 13322,<1
step << Dwarf
    .goto 1426/0,-1322.500,-5539.800
    >>Sprecht mit |cRXP_FRIENDLY_Veron Amberstill|r
    +|cRXP_BUY_Kauft ein|r |T132248:0|t[Harrison Jones] |cRXP_BUY_Reittier, ihr könnt es erst ab Stufe 20 benutzen, behaltet es in euren Taschen für später|r
    .target Veron Amberstill
    .mountcount 0-150,<1
    .itemcount 5864,<1
    .itemcount 5872,<1
    .itemcount 5873,<1
step << Human/Dwarf/Gnome
    .goto 48,33.938,50.932,-1
    .goto 1426/0,-497.200,-5663.700,-1 << Gnome
    .goto 1426/0,-1578.000,-5718.000,-1 << Dwarf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Stormwind >> Fliege nach Sturmwind
    .target Thorgrum Borrelson
    .target Brolan Galebeard << Gnome
    .target Dominic Galebeard << Dwarf
    .zoneskip Stormwind City
    .zoneskip Elwynn Forest
    .zoneskip Redridge Mountains
step
    .goto Stormwind City,62.875,71.490
    >>Klickt auf das |cRXP_PICK_Hero's Call An Bord gehen|r
    .accept 28563 >>Akzeptiert die Quest Heldenaufruf: Rotkammgebirge!
    >>|cRXP_WARN_Überspringt diesen Schritt, falls euch diese Quest nicht angeboten wird|r
    .isQuestAvailable 26504
step << Warrior/Paladin
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Kauft ein|r |T135280:0|t[Dakische Sichel] |cRXP_BUY_von ihr|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 922,1 -- Dacian Falx (1)
    .money <1.0233
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .target Marda Weller
    .xp <21,1
step << Warrior/Paladin
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Kauft ein|r |T135280:0|t[Dakische Sichel] |cRXP_BUY_von ihr. Legt es an, wenn ihr Stufe 21 seid|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 922,1 -- Dacian Falx (1)
    .money <1.0233
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .target Marda Weller
    .xp >21,1
step << Rogue
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Kauft ein|r |T135324:0|t[Langschwert] |cRXP_BUY_von ihr|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 923,1 -- Longsword (1)
    .money <0.7432
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .target Marda Weller
    .xp <21,1
step << Rogue
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Kauft ein|r |T135324:0|t[Langschwert] |cRXP_BUY_von ihr. Legt es an, wenn ihr Stufe 21 seid|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 923,1 -- Longsword (1)
    .money <0.7432
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .target Marda Weller
    .xp >21,1
step << Shaman
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Kauft ein|r |T132415:0|t[Doppelaxt] |cRXP_BUY_von ihr|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 927,1 -- Double Axe (1)
    .money <0.5911
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
    .target Marda Weller
step << Hunter
    .goto 84,58.720,68.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lina Stover|r
    >>|cRXP_BUY_Kauft ein|r |T135612:0|t[BKP 2700 "Enforcer"] |cRXP_BUY_von ihr|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 3024,1 -- BKP 2700 "Enforcer" (1)
    .money <0.6033
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .target Lina Stover
    .xp <21,1
step << Hunter
    .goto 84,58.720,68.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lina Stover|r
    >>|cRXP_BUY_Kauft ein|r |T135612:0|t[BKP 2700 "Enforcer"] |cRXP_BUY_von ihr. Legt es an, wenn ihr Stufe 21 seid|r
    >>|cRXP_WARN_Alternativ könnt ihr bald das Auktionshaus nach etwas Besserem oder Billigerem durchsuchen|r
    .collect 3024,1 -- BKP 2700 "Enforcer" (1)
    .money <0.6033
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .target Lina Stover
    .xp >21,1
step << Warrior/Paladin
    #optional
    #completewith EnterRR
    +|cRXP_WARN_Legt die|r |T135280:0|t[Dakische Sichel] an
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
step << Rogue
    #optional
    #completewith EnterRR
    +|cRXP_WARN_Legt das|r |T135324:0|t[Langschwert] an
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
step << Shaman
    #optional
    #completewith EnterRR
    +|cRXP_WARN_Anlegen|r |T132415:0|t[Doppelaxt]
    .use 927
    .itemcount 927,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
step << Hunter
    #optional
    #completewith EnterRR
    +|cRXP_WARN_Anlegen|r |T135612:0|t[BKP 2700 "Enforcer"]
    .use 3024
    .itemcount 3024,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step
    #optional
    #completewith next
    .goto 84,64.55,70.61,15,0
    .goto 84,68.50,73.43,10,0
    .goto 84,68.54,74.89,10,0
    .goto 84,70.94,72.47,10 >> Reisen toward |cRXP_FRIENDLY_Dungar Longdrink|r
    .noflyable --Azeroth Flying
step
    #completewith EnterRR
    .goto 84,70.94,72.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Dungar Trinkfest|r
    .fly Eastvale Logging Camp >> Fliegt nach Holzfällerlager des Osttals
	.target Dungar Longdrink
    .zoneskip 49 --Redridge Mountains
step
    .goto 37,84.322,64.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Randal Jäger|r
    .train 33388 >> Erlernen Unerfahrener Reiter
    .money <3.6000
    .target Randal Hunter
    .xp <20,1
step << Human
    .train 33388,3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Katie Jäger|r
    +|cRXP_BUY_Kauft ein|r |T132261:0|t[Pferd] |cRXP_BUY_von ihr|r
    .money <0.08
    .target Katie Hunter
    .mountcount 0-150,<1
    .itemcount 2414,<1
    .itemcount 5655,<1
    .itemcount 5656,<1
    .itemcount 47100,<1
step
    #label EnterRR
    .goto 49,11.78,64.40
    .zone Redridge Mountains >> Reist ins Rotkammgebirge
    .isQuestAvailable 26504
step
    #optional
    .goto Redridge Mountains,29.405,53.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fp Lakeshire >> Erlernt die Flugroute nach Seenhain
    .target Ariena Stormfeather
    .xp <21,1
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    .goto 49,16.032,64.633
    >>Klickt das |cRXP_PICK_Gesucht-Plakat|r
    .accept 26504 >>Akzeptiert die Quest GESUCHT: Rotkammgnolle
step
    .goto 49,15.622,65.327
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Darcy Parker|r innerhalb
    .accept 26506 >>Akzeptiert die Quest Würstchen mit Bohnen
    .target Darcy Parker
    .maxlevel 20
step
    .goto 49,15.309,64.691
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Watch Captain Parker|r atop Turmwacht
    .turnin 28563 >>Gebt die Quest Heldenaufruf: Rotkammgebirge! ab
    .accept 26503 >>Akzeptiert die Quest Weitere Einschätzung der Gefahr
    .target Watch Captain Parker
    .isOnQuest 28563
step
    .goto 49,15.309,64.691
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Watch Captain Parker|r atop Turmwacht
    .accept 26503 >>Akzeptiert die Quest Weitere Einschätzung der Gefahr
    .target Watch Captain Parker
step
    #optional
    #loop
    .goto 49,13.543,66.732,0
    .goto 49,12.566,69.384,0
    .goto 49,14.471,75.116,0
    .goto 49,15.220,73.203,0
    .goto 49,16.461,54.587,0
    .goto 49,20.199,58.665,0
    .goto 49,20.881,65.321,0
    .goto 49,20.123,66.613,0
    .goto 49,16.993,63.436,0
    .goto 49,13.697,68.732,0
    .goto 49,13.265,62.483,0
    .goto 49,13.543,66.732,50,0
    .goto 49,12.566,69.384,50,0
    .goto 49,14.471,75.116,50,0
    .goto 49,15.220,73.203,50,0
    >>Tötet |cRXP_ENEMY_Tarantulas|r. Plündert sie für |cRXP_LOOT_Tarantula Augen|r
    >>Tötet die |cRXP_ENEMY_Dire Condors|r flying above oder sitting on perches. Plündert sie für |cRXP_LOOT_Condor Giblets|r
    .complete 26506,1,2 --Tarantula Eyes (2/4)
    .mob +Tarantula
    .complete 26506,2 --Condor Giblets (4)
    .disablecheckbox
    .unitscan Dire Condor
    .mob Tarantula
    .maxlevel 20
step
    #completewith GnollGuide
    .goto 49,13.543,66.732,0
    .goto 49,12.566,69.384,0
    .goto 49,14.471,75.116,0
    .goto 49,15.220,73.203,0
    .goto 49,16.461,54.587,0
    .goto 49,20.199,58.665,0
    .goto 49,20.881,65.321,0
    .goto 49,20.123,66.613,0
    .goto 49,16.993,63.436,0
    .goto 49,13.697,68.732,0
    .goto 49,13.265,62.483,0
    .goto 49,27.403,59.815,0
    .goto 49,29.142,56.606,0
    .goto 49,32.433,54.249,0
    .goto 49,33.624,57.701,0
    .goto 49,35.378,64.225,0
    .goto 49,32.309,63.674,0
    .goto 49,29.952,64.571,0
    >>Tötet |cRXP_ENEMY_Tarantulas|r. Plündert sie für |cRXP_LOOT_Tarantula Augen|r
    >>Tötet |cRXP_ENEMY_Dire Condors|r flying above oder sitting on perches. Plündert sie für |cRXP_LOOT_Condor Giblets|r
    >>Tötet |cRXP_ENEMY_Great Goretusks|r. Plündert sie für |cRXP_LOOT_Goretusk Kidneys|r
    .complete 26506,1 --Tarantula Eyes (4)
    .mob +Tarantula
    .complete 26506,2 --Condor Giblets (4)
    .unitscan +Dire Condor
    .complete 26506,3 --Goretusk Kidney (4)
    .mob +Great Goretusk
    .maxlevel 20
step
    #completewith Kidneys
    .goto 49,28.028,74.887,0
    .goto 49,30.563,62.710,0
    .goto 49,25.600,57.889,0
    .goto 49,16.203,55.263,0
    >>Tötet |cRXP_ENEMY_Redridge Thrashers|r, |cRXP_ENEMY_Redridge Mongrels|r, und |cRXP_ENEMY_Redridge Brutes|r
    .complete 26504,1 --Redridge Gnoll (15)
    .mob *Redridge Thrasher
    .mob *Redridge Mongrel
    .mob *Redridge Brute
step
    #optional
    #completewith next
    .goto 49,23.281,68.320,50,0
    .goto 49,28.028,74.887,30 >>Reist zu den |cRXP_PICK_Befehle der Gnolle|r
    .noflyable --Azeroth Flying
step
    #label GnollOrders
    .goto 49,28.028,74.887
    >>Sammelt die |cRXP_PICK_Befehle der Gnolle|r vom Boden auf dem Fass
    .complete 26503,2 --Gnoll Orders (1)
step
    #label GnollGuide
    .goto 49,30.563,62.710
    >>Sammelt |cRXP_PICK_Gnoll Strategieführer|r vom Boden
    .complete 26503,3 --Gnoll Strategy Guide (1)
step
    #label Kidneys
    #loop
    .goto 49,27.403,59.815,0
    .goto 49,29.142,56.606,0
    .goto 49,32.433,54.249,0
    .goto 49,33.624,57.701,0
    .goto 49,35.378,64.225,0
    .goto 49,32.309,63.674,0
    .goto 49,29.952,64.571,0
    .goto 49,27.403,59.815,50,0
    .goto 49,29.142,56.606,50,0
    .goto 49,32.433,54.249,50,0
    .goto 49,33.624,57.701,50,0
    .goto 49,35.378,64.225,50,0
    .goto 49,32.309,63.674,50,0
    .goto 49,29.952,64.571,50,0
    >>Tötet |cRXP_ENEMY_Great Goretusks|r. Plündert sie für |cRXP_LOOT_Goretusk Kidneys|r
    .complete 26506,3 --Goretusk Kidney (4)
    .mob Great Goretusk
    .maxlevel 20
step
    #optional
    #completewith RRGnolls
    .goto 49,13.543,66.732,0
    .goto 49,12.566,69.384,0
    .goto 49,14.471,75.116,0
    .goto 49,15.220,73.203,0
    .goto 49,16.461,54.587,0
    .goto 49,20.199,58.665,0
    .goto 49,20.881,65.321,0
    .goto 49,20.123,66.613,0
    .goto 49,16.993,63.436,0
    .goto 49,13.697,68.732,0
    .goto 49,13.265,62.483,0
    >>Tötet |cRXP_ENEMY_Tarantulas|r. Plündert sie für |cRXP_LOOT_Tarantula Augen|r
    >>Tötet |cRXP_ENEMY_Dire Condors|r flying above oder sitting on perches. Plündert sie für |cRXP_LOOT_Condor Giblets|r
    .complete 26506,1 --Tarantula Eyes (4)
    .mob +Tarantula
    .complete 26506,2 --Condor Giblets (4)
    .unitscan +Dire Condor
    .maxlevel 20
step
    #optional
    #completewith next
    .goto 49,28.028,74.887,0
    .goto 49,30.563,62.710,0
    .goto 49,25.600,57.889,0
    .goto 49,16.203,55.263,0
    >>Tötet |cRXP_ENEMY_Redridge Thrashers|r, |cRXP_ENEMY_Redridge Mongrels|r, und |cRXP_ENEMY_Redridge Brutes|r
    .complete 26504,1 --Redridge Gnoll (15)
    .mob *Redridge Thrasher
    .mob *Redridge Mongrel
    .mob *Redridge Brute
step
    #label GnollPlans
    .goto 49,16.203,55.263
    >>Sammelt die |cRXP_PICK_Gnoll Schlachtpläne|r vom Boden
    .complete 26503,1 --Gnoll Battle Plans (1)
step
    #label RRGnolls
    #loop
    .goto 49,28.028,74.887,0
    .goto 49,30.563,62.710,0
    .goto 49,25.600,57.889,0
    .goto 49,16.203,55.263,0
    .goto 49,16.188,59.307,50,0
    .goto 49,18.410,58.985,50,0
    .goto 49,17.988,55.657,50,0
    .goto 49,15.728,54.280,50,0
    .goto 49,16.049,56.984,50,0
    >>Tötet |cRXP_ENEMY_Redridge Thrashers|r, |cRXP_ENEMY_Redridge Mongrels|r, und |cRXP_ENEMY_Redridge Brutes|r
    .complete 26504,1 --Redridge Gnoll (15)
    .mob *Redridge Thrasher
    .mob *Redridge Mongrel
    .mob *Redridge Brute
step
    #sticky
    #label Eyes
    #loop
    .goto 49,13.543,66.732,0
    .goto 49,12.566,69.384,0
    .goto 49,14.471,75.116,0
    .goto 49,15.220,73.203,0
    .waypoint 49,13.543,66.732,40,0
    .waypoint 49,12.566,69.384,40,0
    .waypoint 49,14.471,75.116,40,0
    .waypoint 49,15.220,73.203,40,0
    >>Tötet |cRXP_ENEMY_Tarantulas|r. Plündert sie für |cRXP_LOOT_Tarantula Augen|r
    .complete 26506,1 --Tarantula Eyes (4)
    .mob Tarantula
    .maxlevel 20
step
    #loop
    .goto 49,16.461,54.587,0
    .goto 49,20.199,58.665,0
    .goto 49,20.881,65.321,0
    .goto 49,20.123,66.613,0
    .goto 49,16.993,63.436,0
    .goto 49,13.697,68.732,0
    .goto 49,13.265,62.483,0
    .goto 49,16.461,54.587,40,0
    .goto 49,20.199,58.665,40,0
    .goto 49,20.881,65.321,40,0
    .goto 49,20.123,66.613,40,0
    .goto 49,16.993,63.436,40,0
    .goto 49,13.697,68.732,40,0
    .goto 49,13.265,62.483,40,0
    >>Tötet |cRXP_ENEMY_Dire Condors|r flying above oder sitting on perches. Plündert sie für |cRXP_LOOT_Condor Giblets|r
    .complete 26506,2 --Condor Giblets (4)
    .unitscan Dire Condor
    .maxlevel 20
step
    #requires Eyes
    .goto 49,15.622,65.327
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Darcy Parker|r innerhalb
    .turnin 26506 >>Gebt die Quest Würstchen mit Bohnen ab
    .target Darcy Parker
    .maxlevel 20
step
    .goto 49,15.309,64.691
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Watch Captain Parker|r atop Turmwacht
    .turnin 26504 >>Gebt die Quest GESUCHT: Rotkammgnolle ab
    .turnin 26503 >>Gebt die Quest Weitere Einschätzung der Gefahr ab
    .accept 26505 >>Akzeptiert die Quest Parkers Bericht
    .target Watch Captain Parker
step
    .goto Redridge Mountains,29.405,53.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fp Lakeshire >> Erlernt die Flugroute nach Seenhain
    .target Ariena Stormfeather
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    #optional
    .goto 49,28.344,48.874
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shawn|r
    .accept 26508 >>Akzeptiert die Quest Nidas Halskette
    .target Shawn
    .flyable --Azeroth Flying
step
    .goto 49,28.344,48.874
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shawn|r am Kai
    .accept 26508 >>Akzeptiert die Quest Nidas Halskette
    .target Shawn
    .noflyable --Azeroth Flying
step
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >> Betretet das Seenhain-Hauptgebäude
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bailiff Conacher|r und |cRXP_FRIENDLY_Magistrate Solomon|r innerhalb
    .accept 26511 >>Akzeptiert die Quest Säuberung des Immerruhsees
    .goto 49,28.681,40.955
    .target +Bailiff Conacher
    .turnin 26505 >>Gebt die Quest Parkers Bericht ab
    .accept 26510 >>Akzeptiert die Quest Wir müssen uns vorbereiten!
    .goto 49,28.910,41.111
    .target +Magistrate Solomon
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >> Verlasst das Seenhain-Hauptgebäude
step
    #sticky
    #label EverstillMurlocs
    #loop
    .goto 49,37.818,42.158,0
    .goto 49,39.626,46.404,0
    .waypoint 49,36.095,45.006,40,0
    .waypoint 49,36.580,43.202,40,0
    .waypoint 49,37.798,41.157,40,0
    .waypoint 49,38.840,41.673,40,0
    .waypoint 49,40.457,44.698,40,0
    .waypoint 49,42.557,47.125,40,0
    .waypoint 49,40.397,48.986,40,0
    .waypoint 49,36.943,50.290,40,0
    .waypoint 49,36.640,46.754,40,0
    >>Tötet |cRXP_ENEMY_Murloc Flesheaters|r und |cRXP_ENEMY_Murloc Späher|r
    .complete 26511,1 --Lake Everstill Murloc (10)
    .mob Murloc Flesheater
    .mob Murloc Scout
step
    .goto 49,37.818,42.158
    >>Plündert |cRXP_PICK_Gnomcorder|r vom Boden
    .complete 26510,1 --Gnomecorder (1)
step
    #optional
    #requires EverstillMurlocs
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >> Betretet das Seenhain-Hauptgebäude
step
    #requires EverstillMurlocs
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bailiff Conacher|r und |cRXP_FRIENDLY_Magistrate Solomon|r innerhalb
    .turnin 26511 >>Gebt die Quest Säuberung des Immerruhsees ab
    .goto 49,28.681,40.955
    .target +Bailiff Conacher
    .turnin 26510 >>Gebt die Quest Wir müssen uns vorbereiten! ab
    .accept 26512 >>Akzeptiert die Quest Einstellung des Gnomcorders
    .goto 49,28.971,41.123
    .target +Magistrate Solomon
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >> Verlasst das Seenhain-Hauptgebäude
step
    .goto 49,31.856,44.894
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Marris|r
    .accept 26513 >>Akzeptiert die Quest Wie ein Furz im Wind
    .target Marshal Marris
step
    .goto 49,32.330,39.544
	>>|cRXP_WARN_Reist zum Seenhain-Friedhof|r
    .complete 26512,1 --Test the Gnomecorder at the Lakeshire Graveyard
    .turnin 26512 >>Gebt die Quest Einstellung des Gnomcorders ab
    .accept 26514 >>Akzeptiert die Quest Schluchtenspringen
--TODO: Quest is an auto turnin/pickup from the quest log, research how to automate it
--XX     >>|cRXP_WARN_Click the pop-up in your questlog|r
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    #sticky
    #label DirtScroll
    .goto 49,36.305,30.502,0
    .goto 49,32.496,24.909,0
    .goto 49,30.051,28.018,0
    .goto 49,27.453,27.292,0
    .goto 49,27.470,34.077,0
    .goto 49,21.637,34.274,0
    .goto 49,23.390,26.005,0
    .waypoint 49,36.305,30.502,50,0
    .waypoint 49,32.496,24.909,50,0
    .waypoint 49,30.051,28.018,50,0
    .waypoint 49,27.453,27.292,50,0
    .waypoint 49,27.470,34.077,50,0
    .waypoint 49,21.637,34.274,50,0
    .waypoint 49,23.390,26.005,50,0
    >>Tötet |cRXP_ENEMY_Redridge Gnolls|r. Plündert sie für |T134944:0|t|cRXP_LOOT_[Dirt-Stained Rolle]|r
    >>|cRXP_WARN_Benutzt |T134944:0|t|cRXP_LOOT_[Dirt-Stained Rolle]|r, um die Quest zu starten|r
    .collect 58898,1,26519,1 --Dirt-Stained Scroll (1)
    .accept 26519 >>Akzeptiert die Quest Wer die Ettins beherrscht
    .mob Redridge Drudger
    .mob Redridge Mystic
    .mob Redridge Basher
    .mob Redridge Alpha
    .mob Redridge Brute
    .use 58898
step
    #loop
    .goto 49,36.305,30.502,0
    .goto 49,32.496,24.909,0
    .goto 49,30.051,28.018,0
    .goto 49,27.453,27.292,0
    .goto 49,27.470,34.077,0
    .goto 49,21.637,34.274,0
    .goto 49,23.390,26.005,0
    .goto 49,36.305,30.502,50,0
    .goto 49,32.496,24.909,50,0
    .goto 49,30.051,28.018,50,0
    .goto 49,27.453,27.292,50,0
    .goto 49,27.470,34.077,50,0
    .goto 49,21.637,34.274,50,0
    .goto 49,23.390,26.005,50,0
    >>Plündert die |cRXP_LOOT_Redridge Supply Kisten|r am Boden
    >>Tötet |cRXP_ENEMY_Redridge Drudgers|r, |cRXP_ENEMY_Redridge Mystics|r, |cRXP_ENEMY_Redridge Bashers|r, |cRXP_ENEMY_Redridge Alphas|r, und |cRXP_ENEMY_Redridge Brutes|r. Plündert sie für |cRXP_LOOT_Redridge Gnoll Collars|r
    >>|cRXP_WARN_Weicht |cRXP_ENEMY_Canyon Ettins|r aus, die in der Gegend patrouillieren|r
    .complete 26513,1 --Redridge Supply Crate (8)
    .disablecheckbox
    .complete 26514,1 --Redridge Gnoll Collar (10)
    .mob Redridge Drudger
    .mob Redridge Mystic
    .mob Redridge Basher
    .mob Redridge Alpha
    .mob Redridge Brute
    .unitscan Canyon Ettin
step
    .goto 49,20.431,26.655
    >>|cRXP_WARN_Zwickt das Pop-up im Questtagebuch von Euch|r
    .turnin 26514 >>Gebt die Quest Schluchtenspringen ab
    .accept 26544 >>Akzeptiert die Quest Sie werden schlauer...
--TODO: Auto turn in, research how to automate it
step
    #optional
    #completewith next
    .goto 49,36.305,30.502,0
    .goto 49,32.496,24.909,0
    .goto 49,30.051,28.018,0
    .goto 49,27.453,27.292,0
    .goto 49,27.470,34.077,0
    .goto 49,21.637,34.274,0
    .goto 49,23.390,26.005,0
    >>Plündert die |cRXP_LOOT_Redridge Supply Kisten|r am Boden
    >>|cRXP_WARN_Weicht |cRXP_ENEMY_Canyon Ettins|r aus, die in der Gegend patrouillieren|r
    .complete 26513,1 --Redridge Supply Crate (8)
    .unitscan Canyon Ettin
step
    #completewith Ardo
    #requires DirtScroll
    .goto 49,20.431,26.655
    .subzone 98 >> Betrete die Rethban-Höhlen
    .isOnQuest 26544
step
    #sticky
    #requires DirtScroll
    #label Missive1
    #loop
    .goto 49,20.337,15.044,0
    .goto 49,22.424,17.323,0
    .goto 49,22.425,21.890,0
    .goto 49,21.588,23.647,0
    .goto 49,19.525,24.078,0
    .goto 49,20.141,21.509,0
    .goto 49,16.783,19.487,0
    .waypoint 49,20.337,15.044,20,0
    .waypoint 49,22.424,17.323,20,0
    .waypoint 49,22.425,21.890,20,0
    .waypoint 49,21.588,23.647,20,0
    .waypoint 49,19.525,24.078,20,0
    .waypoint 49,20.141,21.509,20,0
    .waypoint 49,16.783,19.487,20,0
    >>Tötet |cRXP_ENEMY_Blackrock Overseers|r innerhalb Rethbanhöhlen. Plündert sie für |cRXP_LOOT_Blackrock Orc Missive|r
    .complete 26544,1 --Blackrock Orc Missive (1)
    .mob *Blackrock Overseer
step
    #sticky
    #label Missive2
    #requires Missive1
    >>|cRXP_WARN_Zwickt das Pop-up im Questtagebuch von Euch|r
    .turnin 26544 >>Gebt die Quest Sie werden schlauer... ab
    .accept 26545 >>Akzeptiert die Quest Jauler muss sterben!
step
    #optional
    #completewith next
    #requires DirtScroll
    .goto 49,19.502,24.380,20,0
    .goto 49,18.121,22.037,20,0
    .goto 49,17.650,17.871,20,0
    .goto 49,19.884,17.025,15 >>Reisen toward |cRXP_ENEMY_Ardo Dirtpaw|r inside Rethbanhöhlen
step
    #requires DirtScroll
    #label Ardo
    >>Tötet |cRXP_ENEMY_Ardo Schmutzpranke|r. Klickt auf die |cRXP_PICK_Ettinsteuerungskugel|r neben ihm
    .complete 26519,1 --Ardo Dirtpaw (1)
    .goto 49,18.432,18.172
    .mob +Ardo Dirtpaw
    .turnin 26519 >>Gebt die Quest Wer die Ettins beherrscht ab
    .accept 26520 >>Akzeptiert die Quest Rettet Großknecht Oslow
    .goto 49,17.841,18.619
step
    #requires Missive1
    .goto 49,20.431,26.655,25,0
    .goto 49,21.318,27.426,40 >>Verlasst die Rethbanhöhlen
    .isOnQuest 26520
    .zoneskip 49,1 --Redridge Mountains
step
    #sticky
    #label SupplyCrates
    #loop
    .goto 49,36.305,30.502,0
    .goto 49,32.496,24.909,0
    .goto 49,30.051,28.018,0
    .goto 49,27.453,27.292,0
    .goto 49,27.470,34.077,0
    .goto 49,21.637,34.274,0
    .goto 49,23.390,26.005,0
    .waypoint 49,36.305,30.502,50,0
    .waypoint 49,32.496,24.909,50,0
    .waypoint 49,30.051,28.018,50,0
    .waypoint 49,27.453,27.292,50,0
    .waypoint 49,27.470,34.077,50,0
    .waypoint 49,21.637,34.274,50,0
    .waypoint 49,23.390,26.005,50,0
    >>Plündert die |cRXP_LOOT_Redridge Supply Kisten|r am Boden
    >>|cRXP_WARN_Weicht |cRXP_ENEMY_Canyon Ettins|r aus, die in der Gegend patrouillieren|r
    .complete 26513,1 --Redridge Supply Crate (8)
    .unitscan Canyon Ettin
step
    #requires Missive2
    .goto 49,26.870,21.977
    >>Tötet |cRXP_ENEMY_Yowler|r. Plündert sie für |cRXP_LOOT_Blackrock Invasion der Geißel Plans|r
    .complete 26545,1 --Yowler (1)
    .complete 26545,2 --Blackrock Invasion Plans (1)
    .mob Yowler
step
    #completewith next
    #requires SupplyCrates
    #loop
    .goto 49,23.859,29.302,0
    .goto 49,22.766,34.745,0
    .goto 49,24.022,35.828,0
    .goto 49,28.492,36.235,0
    .goto 49,27.799,30.853,0
    .line 49,23.859,29.302,23.973,30.595,23.762,32.089,22.766,34.745,23.014,35.134,23.619,34.381,24.022,35.828,25.529,35.789,26.902,36.339,28.492,36.235,28.357,34.410,27.054,32.432,27.799,30.853,27.502,28.865,26.595,28.355,25.013,28.408
    .goto 49,23.859,29.302,50,0
    .goto 49,23.973,30.595,50,0
    .goto 49,23.762,32.089,50,0
    .goto 49,22.766,34.745,50,0
    .goto 49,23.014,35.134,50,0
    .goto 49,23.619,34.381,50,0
    .goto 49,24.022,35.828,50,0
    .goto 49,25.529,35.789,50,0
    .goto 49,26.902,36.339,50,0
    .goto 49,28.492,36.235,50,0
    .goto 49,28.357,34.410,50,0
    .goto 49,27.054,32.432,50,0
    .goto 49,27.799,30.853,50,0
    .goto 49,27.502,28.865,50,0
    .goto 49,26.595,28.355,50,0
    .goto 49,25.013,28.408,50,0
    .cast 80704 >> Während ihr stillsteht, benutzt |T332402:0|t[Ettinsteuerungskugel] auf |cRXP_ENEMY_Schluchtettin|r
    .use 58895
    .unitscan Canyon Ettin
    .isOnQuest 26520
step
    #requires SupplyCrates
    .goto 49,31.480,44.344
    >>Reist zu |cRXP_FRIENDLY_Großknecht Oslow|r. Benutzt |T332402:0|t[Ettinsteuerungskugel] neben ihm, während ihr einen |cRXP_FRIENDLY_Subdued Schluchtettin|r kontrolliert
    .complete 26520,1 --Foreman Oslow Saved (1)
    .use 58895
step
    .goto 49,31.856,44.894
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Marschall Marris|r
    .turnin 26513 >>Gebt die Quest Wie ein Furz im Wind ab
    .target Marshal Marris
step
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >> Betretet das Seenhain-Hauptgebäude
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Magistrate Solomon|r und |cRXP_FRIENDLY_Colonel Troteman|r innerhalb
    .turnin 26545 >>Gebt die Quest Jauler muss sterben! ab
    .turnin 26520 >>Gebt die Quest Rettet Großknecht Oslow ab
    .goto 49,28.971,41.123
    .target +Magistrate Solomon
    .accept 26567 >>Akzeptiert die Quest Jannes J. Keeshan
    .goto 49,28.659,40.744,5,0
    .goto 49,28.892,40.894,5,0
    .goto 49,28.659,40.744
    .target +Colonel Troteman
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Büttel Conacher|r
    >>|cRXP_WARN_Falls ihr die Quest Heldenaufruf: Dämmerwald! früher von Sturmwind akzeptiert habt, überspringt diesen Schritt|r
    .accept 26728 >>Akzeptiert die Quest Heldenaufruf: Dämmerwald!
    .goto 49,28.681,40.955
    .target +Bailiff Conacher
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bailiff Conacher|r und |cRXP_FRIENDLY_Magistrate Solomon|r innerhalb
    .accept 26728 >>Akzeptiert die Quest Heldenaufruf: Dämmerwald!
    .goto 49,28.681,40.955
    .target +Bailiff Conacher
    .turnin 26545 >>Gebt die Quest Jauler muss sterben! ab
    .turnin 26520 >>Gebt die Quest Rettet Großknecht Oslow ab
    .goto 49,28.971,41.123
    .target +Magistrate Solomon
    --XX Level 19/20 xp gate needed? (Hero's Call req is 19)
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >> Verlasst das Seenhain-Hauptgebäude
------Skip/remove section if Keeshan added
step
    .goto 49,22.043,42.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Martie Jainrose|r
    .accept 26509 >>Akzeptiert die Quest Ein ungebetener Gast
    .target Martie Jainrose
step
    .goto 49,16.919,45.720,0
    .goto 49,17.203,44.935,15,0
    .goto 49,16.919,45.720,15,0
    .goto 49,17.375,45.858,15,0
    .goto 49,16.919,45.720
    >>Tötet |cRXP_ENEMY_Bellygrub|r. Plündert sie für |cRXP_LOOT_Bellygrub's Tusk|r
    .complete 26509,1 --Bellygrub's Tusk (1)
    .mob Bellygrub
step
    .goto 49,22.043,42.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 26509 >>Gebt die Quest Ein ungebetener Gast ab
    .target Martie Jainrose
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    #loop
    .goto 49,19.760,47.282,0
    .goto 49,21.922,48.497,0
    .goto 49,23.938,49.802,0
    .goto 49,25.321,49.235,0
    .goto 49,25.985,46.815,0
    .goto 49,27.096,50.935,0
    .goto 49,29.752,49.376,0
    .goto 49,32.075,50.279,0
    .goto 49,34.767,49.432,0
    .goto 49,35.716,49.607,0
    .goto 49,19.760,47.282,40,0
    .goto 49,21.922,48.497,40,0
    .goto 49,23.938,49.802,40,0
    .goto 49,25.321,49.235,40,0
    .goto 49,25.985,46.815,40,0
    .goto 49,27.096,50.935,40,0
    .goto 49,29.752,49.376,40,0
    .goto 49,32.075,50.279,40,0
    .goto 49,34.767,49.432,40,0
    .goto 49,35.716,49.607,40,0
    >>|cRXP_WARN_Schwimmt unter Wasser und überprüft die Spawnpunkte. Es gibt 10 Standorte mit je 2 Spawns gleichzeitig|r
    >>Öffnet |cRXP_PICK_Glinting Mud|r. Plündert es um |cRXP_LOOT_Nidas Halskette|r zu erhalten
    .complete 26508,1 --Nida's Necklace (1)
step
    .train 33388,1
    .goto Redridge Mountains,29.405,53.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Ariena Sturmfeder|r
    .fly Eastvale Logging Camp >> Fliegt nach Holzfällerlager des Osttals
	.target Ariena Stormfeather
step << Human
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Katie Jäger|r
    +|cRXP_BUY_Kauft ein|r |T132261:0|t[Pferd] |cRXP_BUY_von ihr|r
    .target Katie Hunter
    .mountcount 0-150,<1
    .itemcount 2414,<1
    .itemcount 5655,<1
    .itemcount 5656,<1
    .itemcount 47100,<1
step
    .train 33388,1
    .goto 37,84.322,64.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Randal Jäger|r
    .train 33388 >> Erlernen Unerfahrener Reiter
    .money <3.6000
    .target Randal Hunter
    .xp <20,1
step
    .train 33388,3
    .goto 37,81.830,66.553
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Goss der Flinke|r
    .fly Lakeshire, Redridge >> Fliegt nach Seenhain
	.target Goss the Swift
    .zoneskip 37,1
step
    #optional
    .goto 49,28.277,48.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nida|r
    .turnin 26508 >>Gebt die Quest Nidas Halskette ab
    .target Nida
    .flyable --Azeroth Flying
step
    .goto 49,28.277,48.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nida|r während ihr auf dem Dock seid
    .turnin 26508 >>Gebt die Quest Nidas Halskette ab
    .target Nida
    .noflyable --Azeroth Flying
------XX Optional Section
step
    #optional
    #completewith KeeshanStart
    .goto 49,26.093,42.716,10,0
    .goto 49,26.138,42.315,8,0
    .goto 49,26.306,42.096,8 >> Betretet die Seenhain Gasthaus
step
    .goto 49,26.393,41.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gastwirtin Brianna|r
    .home >> Setzt euren Ruhestein nach Seenhain
    .target Innkeeper Brianna
    .isOnQuest 26567
step
    #optional
    #completewith next
    .goto 49,26.253,40.514,8,0
    .goto 49,25.945,39.756,6 >>Geht ins Hinterzimmer, dann geht hinunter zu |cRXP_FRIENDLY_Jannes J. Keeshan|r
step
    #label KeeshanStart
    .goto 49,26.297,40.131
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jannes J. Keeshan|r im Keller der Seenhain Gasthaus
    .turnin 26567 >>Gebt die Quest Jannes J. Keeshan ab
    .accept 26568 >>Nehmt die Quest Is' nich' mein Krieg an
    .target John J. Keeshan
step
    #optional
    #completewith next
    .goto 49,25.945,39.756,8,0
    .goto 49,26.253,40.514,8,0
    .goto 49,26.306,42.096,8,0
    .goto 49,26.138,42.315,8,0
    .goto 49,25.990,42.754,10 >> Verlasst die Seenhain Gasthaus --Exiting West (OPTIONAL SECTION)
step
    .goto 49,22.043,42.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Martie Jainrose|r
    .accept 26509 >>Akzeptiert die Quest Ein ungebetener Gast
    .target Martie Jainrose
step
    .goto 49,16.919,45.720,0
    .goto 49,17.203,44.935,15,0
    .goto 49,16.919,45.720,15,0
    .goto 49,17.375,45.858,15,0
    .goto 49,16.919,45.720
    >>Tötet |cRXP_ENEMY_Bellygrub|r. Plündert sie für |cRXP_LOOT_Bellygrub's Tusk|r
    .complete 26509,1 --Bellygrub's Tusk (1)
    .mob Bellygrub
step
    .goto 49,22.043,42.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 26509 >>Gebt die Quest Ein ungebetener Gast ab
    .target Martie Jainrose
step
    #loop
    .goto 49,19.760,47.282,0
    .goto 49,21.922,48.497,0
    .goto 49,23.938,49.802,0
    .goto 49,25.321,49.235,0
    .goto 49,25.985,46.815,0
    .goto 49,27.096,50.935,0
    .goto 49,29.752,49.376,0
    .goto 49,32.075,50.279,0
    .goto 49,34.767,49.432,0
    .goto 49,35.716,49.607,0
    .goto 49,19.760,47.282,40,0
    .goto 49,21.922,48.497,40,0
    .goto 49,23.938,49.802,40,0
    .goto 49,25.321,49.235,40,0
    .goto 49,25.985,46.815,40,0
    .goto 49,27.096,50.935,40,0
    .goto 49,29.752,49.376,40,0
    .goto 49,32.075,50.279,40,0
    .goto 49,34.767,49.432,40,0
    .goto 49,35.716,49.607,40,0
    >>|cRXP_WARN_Schwimmt unter Wasser und überprüft die Spawnpunkte. Es gibt 10 Standorte mit je 2 Spawns gleichzeitig|r
    >>Öffnet |cRXP_PICK_Glinting Mud|r. Plündert es um |cRXP_LOOT_Nidas Halskette|r zu erhalten
    .complete 26508,1 --Nida's Necklace (1)
step
    #optional
    .goto 49,28.277,48.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nida|r
    .turnin 26508 >>Gebt die Quest Nidas Halskette ab
    .target Nida
    .flyable --Azeroth Flying
step
    .goto 49,28.277,48.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nida|r während ihr auf dem Dock seid
    .turnin 26508 >>Gebt die Quest Nidas Halskette ab
    .target Nida
    .noflyable --Azeroth Flying
step
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >> Betretet das Seenhain-Hauptgebäude
step
    .goto 49,28.659,40.744
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Colonel Troteman|r innerhalb
    .turnin 26568 >>Gebt die Quest Is' nich' mein Krieg ab
    .accept 26571 >>Nehmt die Quest Kriegswaffen an
    .accept 26586 >>Nehmt die Quest Die Suche nach der Kompanie Bravo an
    .target Colonel Troteman
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >> Verlasst das Seenhain-Hauptgebäude
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Foreman Oslow|r und |cRXP_FRIENDLY_Marshal Marris|r
    .accept 26569 >>Nehmt die Quest Vermessungsausrüstung an
    .goto 49,29.652,44.548
    .target +Foreman Oslow
    .accept 26570 >>Nehmt die Quest Renders Armee an
    .goto 49,29.731,44.519
	.target +Marshal Marris
step
	#completewith Render
    .goto 49,44.299,30.816,0
    .goto 49,41.458,35.639,0
    .goto 49,44.548,35.896,0
    .goto 49,47.950,33.981,0
    .goto 49,47.671,40.994,0
    .goto 49,51.823,42.459,0
    .goto 49,53.901,37.198,0
	>>Tötet |cRXP_ENEMY_Blackrock Renegades|r und |cRXP_ENEMY_Blackrock Späher|r
    .complete 26570,1 --Blackrock Orcs of Alther's Mill or Render's Camp (25)
	.mob Blackrock Scout
	.mob Blackrock Renegade
step
    #completewith Messner1
    .goto 49,39.751,37.234,50,0
    .goto 49,44.242,39.198,50,0
    .goto 49,47.119,41.138,15,0
    .goto 49,47.529,41.955,12 >>Reisen toward |cRXP_FRIENDLY_Messner|r
    .noflyable --Azeroth Flying
step
    #label Messner1
    .goto 49,47.529,41.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Messner|r im Käfig
    .turnin 26586 >>Gebt die Quest Die Suche nach der Kompanie Bravo ab
    .accept 26587 >>Nehmt die Quest Der Schlüssel zum Erfolg an
    .target Messner
step
	>>Tötet |cRXP_ENEMY_Murdunk|r und |cRXP_ENEMY_Homurk|r. Plündert sie für |cRXP_LOOT_Keeshan's Verbeugen|r und |cRXP_LOOT_Keeshan's Überlebensmesser|r
    .complete 26571,2 --Keeshan's Survival Knife (1)
    .goto 49,51.525,41.398
	.mob +Homurk
    .complete 26571,1 --Keeshan's Bow (1)
    .goto 49,51.681,41.330
	.mob +Murdunk
step
    #sticky
    #label Heart
    >>|cRXP_WARN_Zwickt das Pop-up im Questtagebuch von Euch|r
    .turnin 26571 >>Gebt die Quest Kriegswaffen ab
    .accept 26573 >>Nehmt die Quest Er muss mit ganzem Herzen dabei sein an
step
    .goto 49,49.234,38.005
    >>Öffnet |cRXP_PICK_Blackrock-Schlüsselbeutel|r im Baumstumpf. Sammelt |cRXP_LOOT_Mesners Käfigschlüssel|r
    >>|cRXP_WARN_Ausweichen|cRXP_ENEMY_ die |rBlackrock Worg des Schwarzfels Worghauptmann des Schwarzfels|cRXP_ENEMY_ und |rBlackrock Kampf Worgs|r
    .complete 26587,1 --Messner's Cage Key (1)
	.unitscan Blackrock Worg Captain
    .mob Blackrock Battle Worg
step
    #requires Heart
    .goto 49,47.529,41.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Messner|r im Käfig und wenn er neben euch wieder erscheint
    .turnin 26587 >>Gebt die Quest Der Schlüssel zum Erfolg ab
    .timer 3,Messner Rollenspiel
    .accept 26560 >>Nehmt die Quest Jorgensen an
	.target Messner
step
    #optional
    #label Render
    .goto 49,44.518,27.137,70 >>Reist zum Rand von Renders Lager
    .isOnQuest 26560
    .noflyable --Azeroth Flying
step
    #completewith Danforth
    #label Spyglass1
    .goto 49,42.789,21.487,0
    .goto 49,43.357,17.991,0
    .goto 49,42.034,14.041,0
    .goto 49,36.291,15.982,0
    .goto 49,32.625,10.192,0
    >>Tötet |cRXP_ENEMY_Blackrock-Beschwörer|r und |cRXP_ENEMY_Blackrock Fährtenleser|r. Sammelt |cRXP_LOOT_Blackrock-Spähgläser|r
    .complete 26570,1 --Blackrock Orcs of Alther's Mill or Render's Camp (25)
    .complete 26569,1 --Blackrock Spyglass (5)
	.mob Blackrock Tracker
	.mob Blackrock Summoner
    .itemcount 58952,<5 --Blackrock Spyglass (<5)
step
    #optional
    #completewith Danforth
    #requires Spyglass1
    .goto 49,42.789,21.487,0
    .goto 49,43.357,17.991,0
    .goto 49,42.034,14.041,0
    .goto 49,36.291,15.982,0
    .goto 49,32.625,10.192,0
    >>Tötet |cRXP_ENEMY_Blackrock Summoners|r und |cRXP_ENEMY_Blackrock Fährtenleser|r
    .complete 26570,1 --Blackrock Orcs of Alther's Mill or Render's Camp (25)
	.mob Blackrock Tracker
	.mob Blackrock Summoner
    .itemcount 58952,5 --Blackrock Spyglass (5)
step
    .goto 49,43.546,10.819
    >>Tötet |cRXP_ENEMY_Utroka die Schlüsselmeisterin|r. Plündert |cRXP_LOOT_Jorgensens Käfigschlüssel|r
    .complete 26560,1 --Jorgensen's Cage Key (1)
	.mob Utroka the Keymistress
step
    #optional
    #completewith next
    .goto 49,37.338,15.299,40,0
    .goto 49,35.846,14.524,40,0
    .goto 49,33.538,11.867,15 >> Reisen toward |cRXP_FRIENDLY_Jorgensen|r
    .noflyable --Azeroth Flying
step
    .goto 49,33.538,11.867
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jorgensen|r im Käfig und wenn er neben euch wieder erscheint
    .turnin 26560 >>Gebt die Quest Jorgensen ab
    .timer 3,Jorgensen Rollenspiel
    .accept 26561 >>Nehmt die Quest Krakauer an
	.target Jorgensen
step
    #completewith BlackrockC
    #label RendersRock
    .goto 49,30.861,9.190,20 >> Betrete Renders Lager
    .isOnQuest 265261
step
    #sticky
    #label Tarak
    #requires RendersRock
    .goto 49,26.057,10.450,0,0
    >>Tötet |cRXP_ENEMY_Ritualist Tarak|r innerhalb
    .complete 26561,1 --Ritualist Tarak (1)
	.mob +Ritualist Tarak
step
    #optional
	#completewith BlackrockC
    #requires RendersRock
    .goto 49,30.050,9.353,15,0
    .goto 49,29.150,10.594,15,0
    .goto 49,26.586,10.530,15 >>Reist zum |cRXP_PICK_Schwarzfelskasten|r
step
	#label BlackrockC
    .goto 49,26.586,10.530
    >>Öffnet |cRXP_PICK_Schwarzfelskasten|r auf dem Boden im Inneren. Sammelt |cRXP_LOOT_Keeshans rotes Stirnband|r und |cRXP_LOOT_Keeshans Jadamulett|r
    .complete 26573,1 --Keeshan's Red Headband (1)
    .complete 26573,2 --Keeshan's Jade Amulet (1)
step
    #requires Tarak
    .goto 49,25.906,10.487
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krakauer|r drinnen auf dem Altar und wenn er neben euch wieder erscheint
    .turnin 26561 >>Gebt die Quest Krakauer ab
    .timer 3,Krakauer RP
    .accept 26562 >>Akzeptiert die Quest Der Nachzügler... Danforth
	.target Krakauer
step
    #optional
    #completewith next
    .goto 49,26.615,13.314,15,0
    .goto 49,25.552,14.772,15,0
    .goto 49,25.856,16.403,15,0
    .goto 49,27.634,18.155,15 >Travel toward |cRXP_ENEMY_Overlord Barbarius|r inside
step
    .goto 49,27.634,18.155
    >>Tötet |cRXP_ENEMY_Overlord Barbarius|r innerhalb. Plündert sie für |cRXP_LOOT_Blackrock Hebel Schlüssel|r
	>>|cRXP_WARN_Sorgt dafür, dass von Euch Wächter herunterteleportieren, wenn ihr herunter springt|r
    .complete 26562,1 --Overlord Barbarius (1)
    .complete 26562,2 --Blackrock Lever Key (1)
	.mob Overlord Barbarius
step
	#completewith next
    .goto 49,27.765,17.943
	.cast 80887 >>|cRXP_WARN_Klickt den |cRXP_PICK_Kettenhebel|r auf dem Boden drinnen|r
	.isOnQuest 26562
step
    #label Danforth
    .goto 49,28.326,17.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Danforth|r innerhalb im Wasser und when he reappears neben euch
    .turnin 26562 >>Gebt die Quest Der Nachzügler... Danforth ab
    .timer 3,Danforth RP
    .accept 26563 >>Akzeptiert die Quest Rückkehr der Kompanie Bravo
	.target Danforth
--ZXCV Logout Skip here (if it works) add solid Spyglass step
step
    #optional
	#completewith next
    .goto 49,30.100,15.657,15,0
    .goto 49,30.004,12.928,15,0
    .goto 49,29.820,10.349,15,0
    .goto 49,30.372,9.117,15,0
    .goto 49,31.635,9.630,30 >> Verlassen Renders Fels
step
    #optional
    #loop
    .goto 49,42.789,21.487,0
    .goto 49,43.357,17.991,0
    .goto 49,42.034,14.041,0
    .goto 49,36.291,15.982,0
    .goto 49,32.625,10.192,0
    .goto 49,45.155,23.968,55,0
    .goto 49,42.789,21.487,55,0
    .goto 49,41.185,20.004,55,0
    .goto 49,41.167,17.881,55,0
    .goto 49,43.357,17.991,55,0
    .goto 49,44.269,13.930,55,0
    .goto 49,41.899,12.146,55,0
    .goto 49,42.034,14.041,55,0
    .goto 49,40.282,16.319,55,0
    .goto 49,38.889,17.678,55,0
    .goto 49,36.291,15.982,55,0
    .goto 49,34.239,13.808,55,0
    .goto 49,34.298,11.938,55,0
    .goto 49,32.625,10.192,55,0
    >>Tötet |cRXP_ENEMY_Blackrock-Beschwörer|r und |cRXP_ENEMY_Blackrock Fährtenleser|r. Sammelt |cRXP_LOOT_Blackrock-Spähgläser|r
    .complete 26570,1 --Blackrock Orcs of Alther's Mill or Render's Camp (25)
    .complete 26569,1 --Blackrock Spyglass (5)
	.mob Blackrock Tracker
	.mob Blackrock Summoner
step
    #completewith next
    .hs >> Benutzt euren Ruhestein nach Seenhain
step
    .goto 49,26.456,42.038
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kimberly Hiett|r in der Seenhain-Taverne
    .vendor >>Verkaufe und Repariere
    .target Kimberly Hiett
	.isOnQuest 26573
step
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >> Betretet das Seenhain-Hauptgebäude
step
    .goto 49,28.659,40.744
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Colonel Troteman|r
    .turnin 26563 >>Gebt die Quest Rückkehr der Kompanie Bravo ab
    .turnin 26573 >>Gebt die Quest Er muss mit ganzem Herzen dabei sein ab
    .accept 26607 >>Akzeptiert die Quest Sie haben zuerst Blut vergossen
	.target Colonel Troteman
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >> Verlasst das Seenhain-Hauptgebäude
step
    #optional
    #completewith Keeshan2
    .goto 49,26.093,42.716,10,0
    .goto 49,26.138,42.315,8,0
    .goto 49,26.306,42.096,8 >> Betretet die Seenhain Gasthaus
step
    #optional
    #completewith next
    .goto 49,26.253,40.514,8,0
    .goto 49,25.945,39.756,6 >>Geht ins Hinterzimmer, dann geht hinunter zu |cRXP_FRIENDLY_Jannes J. Keeshan|r
step
#questguide
    #label Keeshan2
    .goto 49,26.334,40.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jannes J. Keeshan|r im Keller der Seenhain Gasthaus
    .turnin 26607 >>Gebt die Quest Sie haben zuerst Blut vergossen ab
    .accept 26616 >>Akzeptiert die Quest Es ist nie vorbei
	.target John J. Keeshan
step
    #label Keeshan2
    .goto 49,26.334,40.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Jannes J. Keeshan|r im Keller der Seenhain Gasthaus
    .turnin 26607 >>Gebt die Quest Sie haben zuerst Blut vergossen ab
	.target John J. Keeshan
step
    #optional
    #completewith next
    .goto 49,25.945,39.756,8,0
    .goto 49,26.253,40.514,8,0
    .goto 49,26.306,42.096,8,0
    .goto 49,26.138,42.315,8,0
    .goto 49,26.108,42.747,10 >> Verlasst die Seenhain Gasthaus --East
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Foreman Oslow|r und |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 26569 >>Gebt die Quest Vermessungsausrüstung ab
    .goto 49,29.652,44.548
    .target +Foreman Oslow
    .turnin 26570 >>Gebt die Quest Renders Armee ab
    .goto 49,29.731,44.519
	.target +Marshal Marris
step
#questguide
	#label Boat
    .goto 49,34.426,45.914
	.vehicle >> Besteigt |cRXP_PICK_Keeshans Flussboot|r
	.timer 43,Es ist nie vorbei RP
    .isOnQuest 26616
step
#questguide
    .goto 49,52.901,52.999
    >>Wartet auf das Ende des Rollenspiels
    >>|cRXP_WARN_Verlasst das Boot manuell, wenn der Timer abläuft|r
    .complete 26616,1 --Keeshan's Riverboat Ride Complete
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_John J. Keeshan|r, |cRXP_FRIENDLY_Krakauer|r, |cRXP_FRIENDLY_Messner|r, und |cRXP_FRIENDLY_Danforth|r
    .turnin 26616 >>Gebt die Quest Es ist nie vorbei ab
    .accept 26639 >>Akzeptiert die Quest Kontaktpunkt: Brubaker
    .goto 49,52.551,55.408
	.target +John J. Keeshan
    .accept 26636 >>Akzeptiert die Quest Fernmeldeausrüstung der Bravo-Kompanie: Tarnung
    .goto 49,52.402,55.407
	.target +Krakauer
    .accept 26637 >>Akzeptiert die Quest Fernmeldeausrüstung der Bravo-Kompanie: Chloroform
    .goto 49,52.432,55.541
	.target +Messner
    .accept 26638 >>Akzeptiert die Quest Jagd auf die Jäger
    .goto 49,52.533,55.557
	.target +Danforth
step
#questguide
    #loop
    .goto 49,48.669,54.976,0
    .goto 49,46.956,56.688,0
    .goto 49,43.168,55.127,0
    .goto 49,39.453,57.087,0
    .goto 49,39.358,50.183,0
    .goto 49,45.014,49.280,0
    .goto 49,48.669,54.976,55,0
    .goto 49,48.798,57.741,55,0
    .goto 49,46.786,58.420,55,0
    .goto 49,46.956,56.688,55,0
    .goto 49,44.610,54.864,55,0
    .goto 49,44.320,52.796,55,0
    .goto 49,43.168,55.127,55,0
    .goto 49,41.915,53.874,55,0
    .goto 49,40.214,54.370,55,0
    .goto 49,39.453,57.087,55,0
    .goto 49,38.895,60.012,55,0
    .goto 49,38.064,52.309,55,0
    .goto 49,39.358,50.183,55,0
    .goto 49,40.550,47.338,55,0
    .goto 49,42.860,49.655,55,0
    .goto 49,45.014,49.280,55,0
    >>Tötet |cRXP_ENEMY_Muckdwellers|r underwater. Plündert sie für |cRXP_LOOT_Muckdweller Glands|r
    >>|cRXP_WARN_Ausweichen|r |cRXP_ENEMY_Antiquarius Parodontitis|r
    .complete 26637,1 --Muckdweller Gland (8)
	.mob Muckdweller
	.unitscan Ol' Gummers
step
#questguide
    #sticky
    #label Hunters
    #loop
    .goto 49,55.822,66.568,0
    .goto 49,53.086,69.251,0
    .goto 49,50.922,65.688,0
    .goto 49,49.219,67.953,0
    .goto 49,47.151,66.384,0
    .goto 49,45.798,69.412,0
    .goto 49,43.679,70.878,0
    .goto 49,39.093,68.551,0
    .waypoint 49,55.822,66.568,20,0
    .waypoint 49,54.430,68.474,20,0
    .waypoint 49,53.627,69.824,20,0
    .waypoint 49,53.086,69.251,20,0
    .waypoint 49,52.089,69.305,20,0
    .waypoint 49,49.800,69.120,20,0
    .waypoint 49,50.922,65.688,20,0
    .waypoint 49,50.313,66.097,20,0
    .waypoint 49,49.024,66.516,20,0
    .waypoint 49,49.219,67.953,20,0
    .waypoint 49,48.006,68.721,20,0
    .waypoint 49,48.030,67.211,20,0
    .waypoint 49,47.151,66.384,20,0
    .waypoint 49,46.832,67.484,20,0
    .waypoint 49,45.871,66.825,20,0
    .waypoint 49,46.634,70.734,20,0
    .waypoint 49,45.798,69.412,20,0
    .waypoint 49,43.680,66.576,20,0
    .waypoint 49,43.679,70.878,20,0
    .waypoint 49,41.375,69.805,20,0
    .waypoint 49,39.093,68.551,20,0
    >>Tötet |cRXP_ENEMY_Blackrock Hunters|r
    >>|cRXP_WARN_Seid vorsichtig, denn sie sind getarnt|r |T136041:0|t[Getarnt]
    .complete 26638,1 --Blackrock Hunter (8)
	.mob Blackrock Hunter
step
#questguide
    .goto 49,39.080,69.773,0
    .goto 49,41.122,69.990,0
    .goto 49,42.532,70.274,0
    .goto 49,45.198,68.405,0
    .goto 49,47.075,66.697,0
    .goto 49,39.080,69.773,40,0
    .goto 49,39.687,69.959,40,0
    .goto 49,40.424,68.797,40,0
    .goto 49,41.122,69.990,40,0
    .goto 49,41.557,68.559,40,0
    .goto 49,42.280,69.740,40,0
    .goto 49,42.532,70.274,40,0
    .goto 49,44.090,70.194,40,0
    .goto 49,43.958,67.755,40,0
    .goto 49,45.198,68.405,40,0
    .goto 49,46.057,69.072,40,0
    .goto 49,47.075,66.697,40,0
	>>Sammelt die Beute |cRXP_LOOT_Piles of Leaves|r und |cRXP_LOOT_Fox Poop|r auf dem Boden
    .complete 26636,1 --Pile of Leaves (5)
    .complete 26636,2 --Fox Poop (5)
step
#questguide
    .goto 49,53.052,67.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Brubaker|r
    .turnin 26639 >>Gebt die Quest Kontaktpunkt: Brubaker ab
    .accept 26640 >>Akzeptiert die Quest Unaussprechliche Gräuel
	.target Brubaker
step
#questguide
    #optional
    #questguide
    #requires Hunters
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Messner|r, |cRXP_FRIENDLY_Krakauer|r, |cRXP_FRIENDLY_Danforth|r, und |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 26637 >>Gebt die Quest Fernmeldeausrüstung der Bravo-Kompanie: Chloroform ab
    .goto 49,52.432,55.541
	.target +Messner
    .turnin 26636 >>Gebt die Quest Fernmeldeausrüstung der Bravo-Kompanie: Tarnung ab
    .goto 49,52.402,55.407
	.target +Krakauer
    .turnin 26638 >>Gebt die Quest Jagd auf die Jäger ab
    .goto 49,52.533,55.557
	.target +Danforth
    .turnin 26640 >>Gebt die Quest Unaussprechliche Gräuel ab
    .accept 26646 >>Akzeptiert die Quest Kriegsgefangene
    .goto 49,52.551,55.408
	.target +John J. Keeshan
step
#questguide
    #requires Hunters
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Messner|r, |cRXP_FRIENDLY_Krakauer|r, |cRXP_FRIENDLY_Danforth|r, und |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 26637 >>Gebt die Quest Fernmeldeausrüstung der Bravo-Kompanie: Chloroform ab
    .goto 49,52.432,55.541
	.target +Messner
    .turnin 26636 >>Gebt die Quest Fernmeldeausrüstung der Bravo-Kompanie: Tarnung ab
    .goto 49,52.402,55.407
	.target +Krakauer
    .turnin 26638 >>Gebt die Quest Jagd auf die Jäger ab
    .goto 49,52.533,55.557
	.target +Danforth
    .turnin 26640 >>Gebt die Quest Unaussprechliche Gräuel ab
    .goto 49,52.551,55.408
	.target +John J. Keeshan
step << Human
#questguide
    #completewith next
    .goto 49,52.920,54.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arlen Marsters|r
    .fly Eastvale Logging Camp >> Fliegt nach Holzfällerlager des Osttals
	.target Arlen Marsters
    .isQuestAvailable 26646 --Prisoners of War
    .skill riding,75,1
    .zoneskip 49,1
step << Human
#questguide
    .goto 37,84.321,64.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Randal Jäger|r
    .skill riding,75 >> Erlernt |T136103:0|t[Unerfahrener Reiter] von ihm
    .target Randal Hunter
step << Human
#questguide
    .goto 37,84.150,65.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Katie Jäger|r
    +|cRXP_BUY_Kauft jedes verfügbare|r |T132261:0|t[Pferd] |cRXP_BUY_das euch gefällt von ihr|r
	.target Katie Hunter
    .itemcount 2414,<1 --Pinto Bridle
    .itemcount 5655,<1 --Chestnut Mare Bridle
    .itemcount 5656,<1 --Brown Horse Bridle
    .skill riding,<75,1
    .zoneskip 37,1
step << Human
#questguide
    #optional
    .cast 55884 >> Benutzt |T132261:0|t[Schecke Bridle] um es zu erlernen
    .use 2414
    .itemcount 2414,1
    .zoneskip 37,1
step << Human
#questguide
    #optional
    .cast 55884 >> Benutzt |T132261:0|t[Kastanienbraune Stute Bridle] um es zu erlernen
    .use 5655
    .itemcount 5655,1
    .zoneskip 37,1
step << Human
#questguide
    #optional
    .cast 55884 >> Benutzt |T132261:0|t[Braunes Pferd Bridle] um es zu lernen
    .use 5656
    .itemcount 5656,1
    .zoneskip 37,1
step << Human
#questguide
    #optional
    #completewith Goss
    >>|cRXP_WARN_Drückt "Verschiebung+P", um den Reittier-Reiter zu öffnen|r
    >>|cRXP_WARN_Zieht|r |T132261:0|t[Schecke] |cRXP_WARN_auf eure Aktionsleisten|r
    .cast 472 >> Aufsitzen von Euch |T132261:0|t[Schecke]
    .train 472,3
    .zoneskip 37,1
step << Human
#questguide
    #optional
    #completewith Goss
    >>|cRXP_WARN_Drückt "Verschiebung+P", um den Reittier-Reiter zu öffnen|r
    >>|cRXP_WARN_Zieht|r |T132261:0|t[Kastanienbraune Stute] |cRXP_WARN_auf eure Aktionsleisten|r
    .cast 6648 >> Aufsitzen von Euch |T132261:0|t[Kastanienbraune Stute]
    .train 6648,3
    .zoneskip 37,1
step << Human
#questguide
    #optional
    #completewith Goss
    >>|cRXP_WARN_Drückt "Verschiebung+P", um den Reittier-Reiter zu öffnen|r
    >>|cRXP_WARN_Zieht|r |T132261:0|t[Braunes Pferd] |cRXP_WARN_auf eure Aktionsleisten|r
    .cast 458 >> Aufsitzen von Euch |T132261:0|t[Braunes Pferd]
    .train 458,3
    .zoneskip 37,1
step << Human
#questguide
    #optional
    #label Goss
    #completewith Duskwood
    .goto 37,81.829,66.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Goss der Flinke|r
    .fly Darkshire >> Fliege nach Dunkelhain
    .target Goss the Swift
    .zoneskip 37,1
step
#questguide
    #optional
    #completewith Duskwood
    .goto 49,52.920,54.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arlen Marsters|r
    .fly Darkshire >> Fliege nach Dunkelhain
	.target Arlen Marsters
    .isQuestAvailable 26646
    .skill riding,<75,1 << Human
    .zoneskip 49,1
------start of optional Keeshan questline
step
    #questguide
    #completewith SeaforiumD
    +|cRXP_WARN_Benutzt|r |T133878:0|t[Fernmeldeausrüstung der Bravo-Kompanie] |cRXP_WARN_in|r |cRXP_WARN_Renders Tal|r
    >>|cRXP_WARN_Ihr könnt mit dem Gegenstand ganz Normal aufsteigen, aber nicht mit aktiver|r |T136041:0|t[Tarnung] << !Druid
    >>|cRXP_WARN_Ihr könnt mit dem Gegenstand ganz Normal aufsteigen und in|r |T132128:0|t[Fluggestalt] |cRXP_WARN_fliegen, auch mit aktiver|r |T136041:0|t[Tarnung] << Druid
    >>Wirkt |T136074:0|t[Tarnung] (1) um unsichtbar zu werden|r
    >>Wirkt |T132289:0|t[Ablenkung] (2) um die |cRXP_ENEMY_Blackrock-Orks|r zu bewegen
    >>Wirkt |T136090:0|t[Chloroform] (3) um die |cRXP_ENEMY_Blackrock-Wächter|r und |cRXP_ENEMY_Blackrock-Wachen|r einzuschläfern. Dies funktioniert nicht bei |cRXP_ENEMY_Blackrock Drachen-Reitern|r
    .use 60384
    .mob Blackrock Drake Rider
    .mob Blackrock Warden
    .mob Blackrock Guard
    .isOnQuest 26646
    .flyable << Druid --Azeroth Flying
step << Druid
    #questguide
    #optional
    #completewith SeaforiumD
    +|cRXP_WARN_Benutzt|r |T133878:0|t[Fernmeldeausrüstung der Bravo-Kompanie] |cRXP_WARN_in|r |cRXP_WARN_Renders Tal|r
    >>|cRXP_WARN_Ihr könnt mit dem Gegenstand ganz Normal aufsteigen, aber nicht mit aktiver|r |T136041:0|t[Tarnung]
    >>Wirkt |T136074:0|t[Tarnung] (1) um unsichtbar zu werden|r
    >>Wirkt |T132289:0|t[Ablenkung] (2) um die |cRXP_ENEMY_Blackrock-Orks|r zu bewegen
    >>Wirkt |T136090:0|t[Chloroform] (3) um die |cRXP_ENEMY_Blackrock-Wächter|r und |cRXP_ENEMY_Blackrock-Wachen|r einzuschläfern. Dies funktioniert nicht bei |cRXP_ENEMY_Blackrock Drachen-Reitern|r
    .use 60384
    .mob Blackrock Drake Rider
    .mob Blackrock Warden
    .mob Blackrock Guard
    .isOnQuest 26646
    .noflyable --Azeroth Flying
step
    #questguide
    #optional
    #completewith next
    .goto 49,68.486,75.120,20 >> BETRETET die Höhle in Renders Tal
step
    #questguide
    .goto 49,69.525,76.315
    >>Öffnet den |cRXP_PICK_Blackrock-Schlüsselbeutel|r darin. Plündert ihn für den |cRXP_LOOT_Blackrock Halten Pen Schlüssel|r
    .collect 59261,1,26646,1 --Blackrock Holding Pen Key (1)
step
    #questguide
    .goto 49,69.805,59.125,-1
    .goto 49,68.970,60.132,-1
    >>Öffnet irgendeinen der |cRXP_PICK_Blackrock Halten Pens|r
    .complete 26646,1 --Prisoners of War Freed (1)
step
    #questguide
    #sticky
    #label Prisoners
    >>|cRXP_WARN_Zwickt das Pop-up im Questtagebuch von Euch|r
    .turnin 26646 >>Gebt die Quest Kriegsgefangene ab
    .accept 26651 >>Akzeptiert die Quest Um einen Krieg zu gewinnen, müsst Ihr zum Krieg werden
step
    #questguide
    #optional
    #completewith next
    .goto 49,66.318,70.789,15 >>Geht in den Turm
    .noflyable --Azeroth Flying
step
    #questguide
    .goto 49,66.411,71.479
    >>Mit |T133878:0|t[Fernmeldeausrüstung der Bravo-Kompanie] ausgerüstet, wirkt |T136173:0|t[Zephyrium platzieren] (4) auf dem mittleren Boden in der Mitte des Turms
    .complete 26651,2 --Seaforium Planted at Blackrock Tower (1)
step
    #questguide
    #label SeaforiumD
    .goto 49,64.112,70.826
    >>Mit |T133878:0|t[Fernmeldeausrüstung der Bravo-Kompanie] ausgerüstet, wirkt |T136173:0|t[Zephyrium platzieren] (4) auf der Außenwand der Hütte
    .complete 26651,1 --Seaforium Planted at Munitions Hut (1)
step
    #questguide
    #optional
    #label FieldKit
    #completewith War
    .aura -82587 >> |cRXP_WARN_Klickt|r |T133878:0|t[Fernmeldeausrüstung der Bravo-Kompanie] |cRXP_WARN_Buff weg|r
    .isOnQuest 26651
step
    #questguide
    #optional
    #requires FieldKit
    #completewith War
    >>|cRXP_WARN_Meidet |cRXP_ENEMY_Blackrock Wardens|r, |cRXP_ENEMY_Blackrock Guards|r, und|r |cRXP_ENEMY_Blackrock Drache Riders|r
    .goto 49,77.683,65.506,15 >> Reisen toward |cRXP_FRIENDLY_John J. Keeshan|r
    .noflyable --Azeroth Flying
step
    #questguide
    #label War
    .goto 49,77.683,65.506
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_John J. Keeshan|r
	>>|cRXP_WARN_Drückt "Flucht" auf der Tastatur von Euch, um die Zwischensequenz zu überspringen|r
    .turnin 26651 >>Gebt die Quest Um einen Krieg zu gewinnen, müsst Ihr zum Krieg werden ab
    .accept 26668 >>Akzeptiert die Quest Detonation
    .target John J. Keeshan
step
    #questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_John J. Keeshan|r und |cRXP_FRIENDLY_Danforth|r
    .turnin 26668 >>Gebt die Quest Detonation ab
    .accept 26693 >>Akzeptiert die Quest Der dunkle Turm
    .goto 49,77.683,65.506
    .target +John J. Keeshan
    .accept 26692 >>Akzeptiert die Quest Ausrottung der Schattenfelle
    .goto 49,77.628,65.341
    .target +Danforth
step
    #questguide
    #sticky
    #label Shadowhide
    .goto 49,73.167,48.650,0
    .goto 49,74.650,52.479,0
    .goto 49,72.277,51.252,0
    .goto 49,69.079,50.430,0
    .goto 49,67.317,43.754,0
    .goto 49,66.197,37.545,0
    .goto 49,71.332,33.267,0
    .goto 49,70.571,38.254,0
    .goto 49,73.004,43.909,0
    .waypoint 49,73.167,48.650,50,0
    .waypoint 49,73.795,49.819,50,0
    .waypoint 49,76.102,53.026,50,0
    .waypoint 49,74.650,52.479,50,0
    .waypoint 49,73.531,53.657,50,0
    .waypoint 49,73.185,50.399,50,0
    .waypoint 49,72.277,51.252,50,0
    .waypoint 49,71.567,50.196,50,0
    .waypoint 49,71.349,48.124,50,0
    .waypoint 49,69.079,50.430,50,0
    .waypoint 49,66.885,47.661,50,0
    .waypoint 49,67.015,45.857,50,0
    .waypoint 49,67.317,43.754,50,0
    .waypoint 49,65.054,40.527,50,0
    .waypoint 49,64.633,37.658,50,0
    .waypoint 49,66.197,37.545,50,0
    .waypoint 49,66.330,33.341,50,0
    .waypoint 49,68.025,35.534,50,0
    .waypoint 49,71.332,33.267,50,0
    .waypoint 49,72.209,34.231,50,0
    .waypoint 49,71.606,35.978,50,0
    .waypoint 49,70.571,38.254,50,0
    .waypoint 49,70.569,41.638,50,0
    .waypoint 49,73.004,43.909,50,0
    >>Tötet |cRXP_ENEMY_Rabid Shadowhide Gnolls|r, |cRXP_ENEMY_Shadowhide Darkweavers|r, |cRXP_ENEMY_Shadowhide Assassins|r, |cRXP_ENEMY_Shadowhide Warriors|r, |cRXP_ENEMY_Shadowhide Slayers|r, |cRXP_ENEMY_Shadowhide Brutes|r und |cRXP_ENEMY_Shadowhide Gnolls|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Shadowhide Assassins|r are|r |T132320:0|t[Verstohlen]
    .complete 26692,1 --Shadowhide Gnoll (20)
    .mob Rabid Shadowhide Gnoll
    .mob *Shadowhide Darkweaver
    .mob *Shadowhide Assassins
    .mob *Shadowhide Warrior
    .mob *Shadowhide Slayer
    .mob *Shadowhide Brute
    .mob *Shadowhide Gnoll
step
    #questguide
    #sticky
    #requires Shadowhide
    #label Extinction
    >>|cRXP_WARN_Zwickt das Pop-up im Questtagebuch von Euch|r
    .turnin 26692 >>Gebt die Quest Ausrottung der Schattenfelle ab
step
    #questguide
    #optional
    #completewith next
    .goto 49,67.611,30.650 >>Betretet |cRXP_ENEMY_General Fangore|r's cave
step
    #questguide
    .goto 49,67.542,28.902
    >>Tötet |cRXP_ENEMY_General Fangor|r darin. Plündert ihn für den |cRXP_LOOT_Key of Ilgalar|r
    .complete 26693,1 --Key of Ilgalar (1)
    .mob General Fangore
step
    #questguide
    >>|cRXP_WARN_Zwickt das Pop-up im Questtagebuch von Euch|r
    .turnin 26693 >>Gebt die Quest Der dunkle Turm ab
    .accept 26694 >>Akzeptiert die Quest Der Großmagus Doane
step
    #questguide
    #optional
    #label Ilgalar1
    #completewith next
    .goto 49,72.538,44.629,20,0
    .goto 49,71.952,44.819,15 >>Reist zum Eingang von Der Turm von Ilgalar
    .noflyable --Azeroth Flying
step
    #questguide
    #optional
    #label Ilgalar2
    #requires Ilgalar1
    #completewith next
    .goto 49,71.952,44.819
    .cast 81776 >> Klickt |cRXP_PICK_Ward of Ilgalar|r am Fuße des Turms von Ilgalar an
    .isOnQuest 26694
step
    #questguide
    .goto 49,71.491,44.896,0
    .goto 49,71.256,45.402
    >>Besiegt |cRXP_ENEMY_Großmagus Doane|r oben auf dem Turm von Ilgalar
    .complete 26694,1 --Grand Magus Doane confronted (1)
    .mob Grand Magus Doane
step
    #questguide
    #optional
    #requires Extinction
    #completewith next
    .goto 49,76.973,52.844,40,0
    .goto 49,77.906,58.960,40,0
    .goto 49,77.683,65.506,15 >> Kehrt zurück zu |cRXP_FRIENDLY_John J. Keeshan|r
    .noflyable --Azeroth Flying
step
    #questguide
    #requires Extinction
    .goto 49,77.683,65.506
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 26694 >>Gebt die Quest Der Großmagus Doane ab
    .timer 29,Der Großmagus Doane RP
    .target John J. Keeshan
step
    #questguide
    .goto 49,77.204,65.923
    >>Warte auf das RP
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Colonel Troteman|r
    .accept 26708 >>Akzeptiert die Quest AHHHHHHHHHHHH! AHHHHHHH!!!
    .target Colonel Troteman
step
    #questguide
    #completewith BlackrockInvaders
    #label BravoCompany
    .goto 49,76.916,66.133
    .vehicle >> Betretet den |cRXP_FRIENDLY_Belagerungspanzer der Kompanie Bravo|r
    .target Bravo Company Siege Tank
    .isOnQuest 26708
step
    #questguide
    #optional
    #completewith BlackrockInvaders
    #requires BravoCompany
    .goto 49,77.906,58.960,40,0
    .goto 49,76.869,54.470,40 >>|cRXP_WARN_Während ihr im |cRXP_FRIENDLY_Belagerungspanzer der Kompanie Bravo|r seid, reist zurück nach Galardelltal
    .isOnQuest 26708
step
    #questguide
    #label BlackrockInvaders
    .goto 49,75.045,50.854,0
    .goto 49,71.179,48.591,0
    .goto 49,67.150,44.692,0
    .goto 49,63.587,39.740,0
    .goto 49,63.587,39.740,50,0
    .goto 49,75.045,50.854,50,0
    .goto 49,60.660,36.666
    >>|cRXP_WARN_Während ihr im |cRXP_FRIENDLY_Belagerungspanzer der Kompanie Bravo|r seid, fahrt durch die |cRXP_ENEMY_Blackrock Invaders|r zu Keeshans Posten, wirkt|r |T252187:0|t[Harrison Jones] (1) |cRXP_WARN_Auf Abklingzeit|r
    .complete 26708,1 --Blackrock Invader (200)
    .mob Blackrock Invader
step
    #questguide
    #optional
    #completewith next
    >>|cRXP_WARN_Verlasst den|r |cRXP_FRIENDLY_Belagerungspanzer der Kompanie Bravo|r
    >>|cRXP_WARN_Das wird euch sofort aus der Phase mit |cRXP_ENEMY_Blackrock Invaders|r und zurück in die Phase mit der|r |cRXP_ENEMY_Shadowhide Gnolls|r
    .goto 49,60.660,36.666,15 >> Kehrt zu |cRXP_FRIENDLY_Oberst Trottmann|r zurück
step
    #questguide
    .goto 49,60.660,36.666
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Colonel Troteman|r
    .turnin 26708 >>Gebt die Quest AHHHHHHHHHHHH! AHHHHHHHHH!!! ab
    .accept 26713 >>Akzeptiert die Quest Endkampf in Steinwacht
    .target Colonel Troteman
step
    #questguide
    #optional
    #completewith Darkblaze
    +|cRXP_WARN_Stellt sicher, dass das Team von Euch bei euch ist, bevor ihr fortfahrt. Sie sollten erscheinen, wenn ihr |cRXP_ENEMY_Tharil'zun|r nähert. Falls nicht, meldet euch ab und wieder an|r
step
    #questguide
    .goto 49,60.307,47.402
    >>Tötet |cRXP_ENEMY_Tharil'zun|r
    .complete 26713,1 --Tharil'zun (1)
    .mob Tharil'zun
step
    #questguide
    #optional
    #completewith next
    .goto 49,60.307,47.402,40,0
    .goto 49,57.775,56.285,45 >>Reisen toward |cRXP_ENEMY_Gath'Ilzogg|r
    .noflyable --Azeroth Flying
step
    #questguide
    .goto 49,57.775,56.285
    >>Tötet |cRXP_ENEMY_Gath'Ilzogg|r
    .complete 26713,2 --Gath'Ilzogg (1)
    .mob Gath'Ilzogg
step
    #questguide
    >>|cRXP_WARN_Zwickt das Pop-up im Questtagebuch von Euch|r
    .turnin 26713 >>Gebt die Quest Endkampf in Steinwacht ab
    .goto 49,58.651,55.469
    .accept 26714 >>Akzeptiert die Quest Dunkelflamme, Brut des Weltenbrechers
    .timer 25,Dunkelflamme RP
    .goto 49,60.660,36.666
step
    #questguide
    #label Darkblaze
    .goto 49,58.651,55.469
    >>|cRXP_WARN_Wartet auf die Verwandlung des |cRXP_ENEMY_Großmagus Doane|r ab|r
    >>|cRXP_WARN_Besiegt |cRXP_ENEMY_Dunkelflamme|r, sobald das RP vorbei ist|r
    >>|cRXP_WARN_Wenn ihr fehlschlagt, benutzt |cRXP_PICK_Horn der Beschwörung|r auf dem Boden, um|r Großmagus Doane|cRXP_ENEMY_ erneut zu beschwören|r
    .complete 26714,1 --Darkblaze Defeated (1)
    .mob Darkblaze
    .mob *Grand Magus Doane
--XX     .goto 49,58.608,55.390 Horn of Summoning
step
    #questguide
    .goto 49,60.660,36.666
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Colonel Troteman|r
    .turnin 26714 >>Gebt die Quest Dunkelflamme, Brut des Weltenbrechers ab
    .accept 26726 >>Akzeptiert die Quest Triumphale Rückkehr
    .target Colonel Troteman
step
    #questguide
    #completewith next
    .hs >> Benutzt euren Ruhestein nach Seenhain
    .cooldown item,6948,>2
    .isOnQuest 26726
    .subzoneskip 69 --Yes that is Lakeshire's subzone id
step
    #questguide
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >> Betretet das Seenhain-Hauptgebäude
    .isOnQuest 26726
step
    #questguide
    .goto 49,28.971,41.123
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Magistrate Solomon|r innerhalb
    .turnin 26726 >>Gebt die Quest Triumphale Rückkehr ab
	.target Magistrate Solomon
------End of optional Keeshan questline
step
    #optional
    #label endOfTheGuide
]])
