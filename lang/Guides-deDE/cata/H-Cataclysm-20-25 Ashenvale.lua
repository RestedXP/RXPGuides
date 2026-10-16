if GetLocale() ~= "deDE" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 22-27 Eschental
#next 27-31 Nördliches Schlingendorntal
#version 1
--#group RXP Cataclysm (H) << cata

#group RXP Kataklysmus 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000

step
    #optional
    .goto 63,94.410,46.819
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kulg Gorespatter|r
    .gossipoption 111683 >>Fliegt zu Mor'Shan Ramparts
    .target Kulg Gorespatter
    .subzoneskip 2457,1
    .subzoneskip 1703
    .isOnQuest 13866
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kadrak|r
    .turnin 13866 >>Gebt die Quest Zum Schutzwall ab!
    .accept 13612 >>Akzeptiert die Quest Die Verteidigung von Mor'shan
    .accept 13618 >>Akzeptiert die Quest Findet Gorat!
    .target Kadrak
    .isOnQuest 13866
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kadrak|r
    .turnin 28493 >>Gebt die Quest Auf Befehl des Kriegshäuptlings: Eschental! ab
    .accept 13612 >>Akzeptiert die Quest Die Verteidigung von Mor'shan
    .accept 13618 >>Akzeptiert die Quest Findet Gorat!
    .target Kadrak
    .isOnQuest 28493
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kadrak|r
    .accept 13612 >>Akzeptiert die Quest Die Verteidigung von Mor'shan
    .accept 13618 >>Akzeptiert die Quest Findet Gorat!
    .target Kadrak
step
    .goto 10,42.27,15.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Truun|r
    .accept 13615 >>Akzeptiert die Quest Leere Köcher
    .target Truun
step
    .goto 10,42.43,15.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dinah|r
    .accept 13613 >>Akzeptiert die Quest Rettet die Gefallenen
    .target Dinah Halfmoon
step
    .goto 10,41.99,15.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gort|r
    .fp The Mor'shan Rampart >> Get Schutzwall von Mor'shan flight path
    .target Gort Goreflight
    .subzoneskip 1703,1
step
    #completewith FindGorat
    >>Tötet |cRXP_ENEMY_Ashenvale Skirmishers|r und |cRXP_ENEMY_Ashenvale Bowmen|r
    .complete 13612,1 --5/5 Ashenvale Skirmishers Slain
    .mob +Ashenvale Skirmisher
    .complete 13612,2 --5/5 Ashenvale Bowmen Slain
    .mob +Ashenvale Bowman
step
    #completewith Skirmishers
    .use 45001 >> |cRXP_WARN_Benutzt|r |T133690:0|t[Medicated Salve] |cRXP_WARN_auf|r |cRXP_FRIENDLY_Verwundete Mor'shan Defenders|r
    .complete 13613,1 --5/5 Wounded Mor'shan Defenders Rescued
    .target Wounded Mor'shan Defender
step
    #completewith MorshanDefenders
    >>Plündert die |cRXP_PICK_Pfeile|r vom Boden
    .complete 13615,1 --10/10 Serviceable Arrow
step
    #label FindGorat
    .goto 63,64.19,84.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorat|r
    .turnin 13618 >>Gebt die Quest Findet Gorat! ab
    .accept 13619 >>Akzeptiert die Quest Abschlussbericht
    .target Gorat
step
    #label Skirmishers
    #loop
    .goto 63,68.816,82.328,0
    .waypoint 63,66.454,85.871,50,0
    .waypoint 63,70.033,85.211,50,0
    .waypoint 63,68.816,82.328,50,0
    .waypoint 63,67.731,82.870,50,0
    .waypoint 63,66.784,84.708,50,0
    >>Tötet |cRXP_ENEMY_Ashenvale Skirmishers|r und |cRXP_ENEMY_Ashenvale Bowmen|r
    .complete 13612,1 --5/5 Ashenvale Skirmishers Slain
    .mob +Ashenvale Skirmisher
    .complete 13612,2 --5/5 Ashenvale Bowmen Slain
    .mob +Ashenvale Bowman
step
    #label MorshanDefenders
    #loop
    .goto 63,66.934,86.130,0
    .waypoint 63,65.370,85.300,20,0
    .waypoint 63,66.934,86.130,20,0
    .waypoint 63,66.813,84.329,20,0
    .waypoint 63,67.587,83.172,20,0
    .waypoint 63,69.001,83.160,20,0
    .waypoint 63,68.994,86.080,20,0
    .waypoint 10,40.760,12.633,20,0
    .waypoint 63,65.280,86.817,20,0
    .use 45001 >> Benutzt das |T133690:0|t[Medicated Salve] auf |cRXP_FRIENDLY_Verwundete Mor'shan Defenders|r
    .complete 13613,1 --5/5 Wounded Mor'shan Defenders Rescued
    .target Wounded Mor'shan Defender
step
    #loop
    .goto 1440/1,-2057.00000,1391.50000,15,0
    .waypoint 1440/1,-2057.00000,1391.50000,15,0
    .waypoint 1440/1,-2082.40015,1365.00000,15,0
    .waypoint 1440/1,-2105.19995,1352.90002,15,0
    .waypoint 1440/1,-2154.69995,1411.90002,15,0
    .waypoint 1440/1,-2240.50000,1383.09998,15,0
    .waypoint 1440/1,-2280.10010,1393.00000,15,0
    .waypoint 1440/1,-2315.60010,1391.40002,15,0
    .waypoint 1440/1,-2341.69995,1376.00000,15,0
    .waypoint 1440/1,-2344.50000,1410.59998,15,0
    >>Plündert die |cRXP_PICK_Pfeile|r vom Boden
    .complete 13615,1 --10/10 Serviceable Arrow
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kadrak|r
    .turnin 13612 >>Gebt die Quest Die Verteidigung von Mor'shan ab
    .turnin 13619 >>Gebt die Quest Abschlussbericht ab
    .accept 13620 >>Akzeptiert die Quest Zu Dinah, sofort!
    .target Kadrak
step
    .goto 10,42.25,15.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Truun|r
    .turnin 13615 >>Gebt die Quest Leere Köcher ab
    .target Truun
step
    .goto 10,42.43,15.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dinah|r
    .turnin 13620 >>Gebt die Quest Zu Dinah, sofort! ab
    .turnin 13613 >>Gebt die Quest Rettet die Gefallenen ab
    .accept 13621 >>Akzeptiert die Quest Gorats Vergeltung
    .target Dinah Halfmoon
step
    #completewith next
    .goto 63,64.16,84.50
    .cast 62772 >> |cRXP_WARN_Use|r |T134719:0|t[Gorat's Verzaubert Blut] |cRXP_WARN_on|r |cRXP_FRIENDLY_Gorat|r
    .timer 103,Gorats Vergeltung RP
    .use 45023
step
    .goto 63,65.72,82.20
    >>Folgt dem |cRXP_FRIENDLY_Willenskraft Gorats Geist|r und tötet |cRXP_ENEMY_Hauptmann Elendilad|r, wenn er auftaucht
    .complete 13621,1 --1/1 Captain Elendilad slain
    .mob Captain Elendilad
    .target Gorat
    .target Spirit of Gorat
    .use 45023
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kadrak|r
    .turnin 13621 >>Gebt die Quest Gorats Vergeltung ab
    .target Kadrak
step
    .goto 10,42.26,15.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Truun|r
    .accept 13628 >>Akzeptiert die Quest Gut Holz
    .target Truun
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kadrak|r
    >>Erhaltet |cRXP_LOOT_Kadrak's Zügel|r von ihm
    .collect 45051,1,13628,1 --Kadrak's Reins (1)
    .target Kadrak
    .skipgossip
step
    .goto 10,42.84,16.15
    >>Aufsitzen |cRXP_FRIENDLY_Brutusk|r
    .complete 13628,1 --1/1 Brutusk mounted
    .timer 39,Got Holz? RP
    .target Brutusk
    --VV Timer
step
    .goto 63,72.93,80.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorka|r
    .turnin 13628 >>Gebt die Quest Gut Holz ab
    .accept 13640 >>Akzeptiert die Quest Managerqualitäten
    .target Gorka
step
    #loop
    .goto 1440/1,-2385.00000,1520.30005,0
    .goto 1440/1,-2437.60010,1554.80005,30,0
    .goto 1440/1,-2417.50000,1496.09998,30,0
    .goto 1440/1,-2385.00000,1520.30005,30,0
    .goto 1440/1,-2373.19995,1467.50000,30,0
    .goto 1440/1,-2383.90015,1405.90002,30,0
    .goto 1440/1,-2323.00000,1496.50000,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Demoralized Peons|r
    >>|cRXP_WARN_Folgt und beschützt sie vor|r |cRXP_ENEMY_Eschental-Jäger|r |cRXP_WARN_, während sie anfangen, Holz zu hacken. Sammelt das|r |cRXP_LOOT_Frisch geschlagenes Holz|r |cRXP_WARN_vom Boden, während es auftaucht|r
    .complete 13640,1 --5/5 Freshly Cut Wood
    .skipgossip
    .target Demoralized Peon
    .mob Ashenvale Stalker
step
    .goto 63,72.93,80.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorka|r
    .turnin 13640 >>Gebt die Quest Managerqualitäten ab
    .accept 13651 >>Akzeptiert die Quest Da fehlt nur ein wenig Öl
    .target Gorka
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Scharfkralle|r wenn er auftaucht. Plündert ihn für |T136063:0|t[|cRXP_LOOT_Scharfkralle's Klaue|r] und benutzt es, um die Quest zu starten
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >> Akzeptiert die Quest Klaue von Scharfkralle
    .unitscan Sharptalon
    .use 16305
    .maxlevel 24
step
    #loop
    .goto 1440/1,-2566.90015,1799.70007,0
    .waypoint 1440/1,-2514.19995,1700.09998,50,0
    .waypoint 1440/1,-2566.90015,1799.70007,50,0
    .waypoint 1440/1,-2615.00000,1843.20007,50,0
    .waypoint 1440/1,-2497.90015,1864.70007,50,0
    .waypoint 1440/1,-2522.19995,1952.50000,50,0
    .waypoint 1440/1,-2606.50000,1940.30005,50,0
    .waypoint 1440/1,-2615.00000,1855.50000,50,0
    >>Tötet |cRXP_ENEMY_Rotting Schleim|r. Plündert sie für |cRXP_LOOT_Natural Oil|r
    .complete 13651,1 --5/5 Natural Oil
    .mob Rotting Slime
step
    .goto 63,72.93,80.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gorka|r
    .turnin 13651 >>Gebt die Quest Da fehlt nur ein wenig Öl ab
    .accept 13653 >>Akzeptiert die Quest Krise am Splitterholzposten
    .target Gorka
step
    .goto 63,72.93,80.44
    .gossipoption 111661 >>Sprecht mit |cRXP_FRIENDLY_Gorka|r
    .timer 79,Krise am Splitterholzposten RP
    .target Gorka
    .isOnQuest 13653
step
    .goto 63,72.93,80.44
    >>Kehrt mit |cRXP_FRIENDLY_Gorka|r zu Mor'Shan Ramparts zurück
    >>|cRXP_WARN_Ihr dürft nicht reiten!|r
    .complete 13653,1 --1/1 Gorka accompanied to Mor'shan Ramparts
    .target Gorka
    .skipgossip
    --VV Timer
step
    .goto 10,42.71,14.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kadrak|r
    .turnin 13653 >>Gebt die Quest Krise am Splitterholzposten ab
    .target Kadrak
    .accept 13712 >>Akzeptiert die Quest Rettung in der Not
    --VV Timer
step
    .goto 10,42.71,14.95
    .gossipoption 111656 >>Sprecht mit |cRXP_FRIENDLY_Kadrak|r, um nach Splitterholzposten zu reisen
    .timer 110,Rettung in der Not RP
    >>|cRXP_WARN_Diese Quest kann einen Bug haben! Überspringt diesen Schritt, wenn das der Fall ist!|r
    .target Kadrak
    .isOnQuest 13712
step
    .goto 63,73.59,62.19
    >>Trefft in Splitterholzposten ein
    >>|cRXP_WARN_Diese Quest kann einen Bug haben! Überspringt diesen Schritt, wenn das der Fall ist!|r
    .complete 13712,1 --1/1 Splintertree Post Siege Broken
step
    .goto 63,73.61,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kadrak|r
    .turnin 13712 >>Gebt die Quest Rettung in der Not ab
    .accept 13803 >>Akzeptiert die Quest Das Blut der Schwachen
    .target Kadrak
    .isQuestComplete 13712
step
    #optional
    .goto 63,73.61,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kadrak|r
    .accept 13803 >>Akzeptiert die Quest Das Blut der Schwachen
    .target Kadrak
    .isQuestTurnedIn 13712
step
    #completewith next
    .subzone 431 >>Reist nach Splitterholzposten
    .isQuestAvailable 13712
step
    .goto 63,73.19,61.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vhulgra|r
    .fp >>Erlernt die Flugroute nach Splitterholzposten
    .target Vhulgra
    .isQuestAvailable 6503
step
    .goto 63,73.56,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kuray'bin|r
    .accept 6503 >>Akzeptiert die Quest Die Kundschafter des Eschentals
    .target Kuray'bin
    .isQuestTurnedIn 13712
step
    .goto 63,74.00,60.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Kaylisk|r
    .home >>Setzt von Euch den Ruhestein nach Splitterholzposten
    .target Innkeeper Kaylisk
    .isQuestTurnedIn 13712
    .isQuestAvailable 6503
step
    .goto 63,73.19,60.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valusha|r
    .accept 26448 >>Akzeptiert die Quest Zerstört die Legion
    .target Valusha
    .isQuestTurnedIn 13712
step
    .goto 63,72.20,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Durak|r in der Höhle
    .turnin 13803 >>Gebt die Quest Das Blut der Schwachen ab
    .accept 13805 >>Akzeptiert die Quest Mitten ins Herz!
    .target Durak
    .isQuestTurnedIn 13712
step
    .goto 63,73.83,62.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pixel|r
    .accept 13801 >>Akzeptiert die Quest Geisterelfen
    .target Pixel
    .isQuestTurnedIn 13712
step
    .goto 63,73.34,62.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Splintertree Demolisher|r
    .accept 13730 >>Akzeptiert die Quest Spiel mit dem Teufelsfeuer
    .target Splintertree Demolisher
    .isQuestTurnedIn 13712
step
    #completewith FelFires
    >>Tötet |cRXP_ENEMY_Demons|r im Dämonenhügel
    .complete 26448,1 --15/15 Demons Slain
    .mob Mannaroc Lasher
    .mob Roaming Felguard
    .mob Searing Infernal
step
    #completewith KillDemons
    >>Einer der |cRXP_ENEMY_Demons|r kann das |T134943:0|t[|cRXP_LOOT_Teuflische Pläne|r] fallen lassen. Benutzt es, um die Quest zu starten
    .collect 23798,1,26447 --Diabolical Plans (1)
    .accept 26447 >>Akzeptiert die Quest Teuflische Pläne
    .isQuestTurnedIn 13712
step
    #label FelFires
    #loop
    .goto 63,81.928,66.385,0
    .waypoint 63,83.797,70.490,30,0
    .waypoint 63,84.297,67.684,30,0
    .waypoint 63,83.339,66.328,30,0
    .waypoint 63,82.818,66.955,30,0
    .waypoint 63,81.928,66.385,30,0
    .waypoint 63,81.788,65.245,30,0
    .waypoint 63,80.768,64.565,30,0
    .waypoint 63,80.654,67.347,30,0
    .waypoint 63,81.829,69.984,30,0
    .use 45478 >>|cRXP_WARN_Benutzt den|r |T237030:0|t[Verstärkt Kanister] |cRXP_WARN_auf die grünen Feuer|r
    .complete 13730,1 --7/7 Fel Fires Siphoned
    .isQuestTurnedIn 13712
step
    #label KillDemons
    .goto 63,81.928,66.385,0
    .waypoint 63,83.797,70.490,50,0
    .waypoint 63,84.297,67.684,50,0
    .waypoint 63,83.339,66.328,50,0
    .waypoint 63,82.818,66.955,50,0
    .waypoint 63,81.928,66.385,50,0
    .waypoint 63,81.788,65.245,50,0
    .waypoint 63,80.768,64.565,50,0
    .waypoint 63,80.654,67.347,50,0
    .waypoint 63,81.829,69.984,50,0
    >>Tötet |cRXP_ENEMY_Demons|r im Dämonenhügel
    .complete 26448,1 --15/15 Demons Slain
    .mob Mannaroc Lasher
    .mob Roaming Felguard
    .mob Searing Infernal
    .isQuestTurnedIn 13712
step
    #completewith DorDanilDen
    >>Tötet |cRXP_ENEMY_Scharfkralle|r und sammelt |T136063:0|t[|cRXP_LOOT_Klaue von Scharfkralle|r] von ihm, um die Quest zu starten
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >> Akzeptiert die Quest Klaue von Scharfkralle
    .unitscan Sharptalon
    .use 16305
    .maxlevel 24
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Ashenvale Outrunners|r
    >>|cRXP_WARN_Sie sind versteckt in der Nähe der Bäume|r
    .complete 6503,1 --9/9 Ashenvale Outrunners Killed
    .unitscan Ashenvale Outrunner
step
    #label DorDanilDen
    .goto 63,75.66,75.32,20 >>BETRITT den Grabhügel von Dor'Danil
    .isQuestTurnedIn 13712
    .isOnQuest 13805
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Severed Keepers|r und |cRXP_ENEMY_Severed Druids|r
    .complete 13801,1 --15/15 Night Elf Ghosts Slain
    .mob Severed Druid
    .mob Severed Keeper
step
    .goto 63,75.52,74.20
    .use 45683 >> |cRXP_WARN_Benutzt das|r |T134840:0|t[Besudeltes Blut of the Kaldorei] |cRXP_WARN_in der Mitte der Höhle|r
    .complete 13805,1 --1/1 Forest Heart Corrupted
    .isQuestTurnedIn 13712
step
    #loop
    .goto 63,76.929,74.847,0
    .waypoint 63,75.394,75.203,15,0
    .waypoint 63,75.842,76.211,15,0
    .waypoint 63,76.208,75.300,15,0
    .waypoint 63,76.929,74.847,15,0
    .waypoint 63,77.356,75.219,15,0
    .waypoint 63,77.359,75.949,15,0
    .waypoint 63,76.722,75.943,15,0
    .waypoint 63,77.401,74.644,15,0
    >>Beenden killing |cRXP_ENEMY_Severed Keepers|r und |cRXP_ENEMY_Severed Druids|r
    .complete 13801,1 --15/15 Night Elf Ghosts Slain
    .mob Severed Druid
    .mob Severed Keeper
    .isQuestTurnedIn 13712
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Scharfkralle|r und sammelt |T136063:0|t[|cRXP_LOOT_Klaue von Scharfkralle|r] von ihm, um die Quest zu starten
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >> Akzeptiert die Quest Klaue von Scharfkralle
    .unitscan Sharptalon
    .use 16305
    .maxlevel 24
step
    #loop
    .goto 63,74.504,72.562,0
    .waypoint 63,74.504,72.562,30,0
    .waypoint 63,71.936,73.893,30,0
    .waypoint 63,71.127,73.817,30,0
    .waypoint 63,71.392,72.955,30,0
    .waypoint 63,71.921,70.364,30,0
    .waypoint 63,72.913,70.286,30,0
    .waypoint 63,73.638,70.814,30,0
    .waypoint 63,74.243,69.532,30,0
    .waypoint 63,75.577,70.316,30,0
    .waypoint 63,74.493,72.447,30,0
    >>Beenden killing |cRXP_ENEMY_Ashenvale Outrunners|r
    >>|cRXP_WARN_Sie sind versteckt in der Nähe der Bäume|r
    .complete 6503,1 --9/9 Ashenvale Outrunners Killed
    .unitscan Ashenvale Outrunner
    .isQuestTurnedIn 13712
step
    #loop
    .goto 1440/1,-2557.50000,1751.50000,0
    .waypoint 1440/1,-2525.19995,1684.30005,40,0
    .waypoint 1440/1,-2557.50000,1751.50000,40,0
    .waypoint 1440/1,-2578.90015,1805.80005,40,0
    .waypoint 1440/1,-2494.19995,1868.70007,40,0
    .waypoint 1440/1,-2416.10010,1835.40002,40,0
    .waypoint 1440/1,-2387.90015,1787.09998,40,0
    .waypoint 1440/1,-2480.90015,1737.70007,40,0
    >>Tötet |cRXP_ENEMY_Scharfkralle|r und sammelt |T136063:0|t[|cRXP_LOOT_Klaue von Scharfkralle|r] von ihm, um die Quest zu starten
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >> Akzeptiert die Quest Klaue von Scharfkralle
    .unitscan Sharptalon
    .use 16305
    .isQuestTurnedIn 13712
    .maxlevel 24
step << skip
    #completewith next
    .hs >> Ruhestein nach Splitterholzposten
    .use 6948
    .subzoneskip 431
    --Need hearth cd for zoram strand
step
    .goto 63,73.87,62.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pixel|r
    .turnin 13801 >>Gebt die Quest Geisterelfen ab
    .target Pixel
    .isQuestTurnedIn 13712
step
    .goto 63,73.61,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kadrak|r
    .turnin 13805 >>Gebt die Quest Mitten ins Herz! ab
    --.accept 13808 >>Accept Mission Improbable
    .accept 13848 >>Akzeptiert die Quest Überbringer schlechter Nachrichten
    .target Kadrak
    .isQuestTurnedIn 13712
step
    #questguide
    .goto 63,73.61,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Kadrak|r
    .turnin 13805 >>Gebt die Quest Mitten ins Herz! ab
    .accept 13808 >>Akzeptiert die Quest In geheimer Mission
    .accept 13848 >>Akzeptiert die Quest Überbringer schlechter Nachrichten
    .target Kadrak
    .isQuestTurnedIn 13712
step
    .goto 63,73.32,62.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Splintertree Demolisher|r
    .turnin 13730 >>Gebt die Quest Spiel mit dem Teufelsfeuer ab
    --.accept 13751 >>Accept Tell No One! -- Optional skip
    .target Splintertree Demolisher
    .isQuestTurnedIn 13712
step
    #questguide
    .goto 63,73.32,62.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Splintertree Demolisher|r
    .turnin 13730 >>Gebt die Quest Spiel mit dem Teufelsfeuer ab
    .accept 13751 >>Akzeptiert die Quest Schweigt still wie ein Grab!
    .target Splintertree Demolisher
    .isQuestTurnedIn 13712
step
    .goto 63,73.56,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Kuray'bin|r
    .turnin 6503 >>Gebt die Quest Die Kundschafter des Eschentals ab
    .target Kuray'bin
    .isQuestTurnedIn 13712
step
    .goto 63,73.16,60.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valusha|r
    .turnin 26448 >>Gebt die Quest Zerstört die Legion ab
    .turnin 26447 >>Gebt die Quest Teuflische Pläne ab
    --.accept 26449 >>Accept Never Again!
    .target Valusha
    .isOnQuest 26447
step
    .goto 63,73.16,60.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valusha|r
    .turnin 26448 >>Gebt die Quest Zerstört die Legion ab
    .target Valusha
    .isQuestTurnedIn 13712
--step
    --.goto 63,73.16,60.10
    -->>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valusha|r
    --.accept 26449 >>Accept Never Again!
    --.target Valusha
    --.isQuestTurnedIn 26447
    --Not worth doing

    --Could go straight to Zoram Strand from here. The 13751 chain is bad xp/hr (13751/13797/13798/13841/13842)

step
    #questguide
    .goto 63,72.20,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Durak|r in der Höhle
    .turnin 13751 >>Gebt die Quest Schweigt still wie ein Grab! ab
    .accept 13797 >>Akzeptiert die Quest Gemeinheiten
    .target Durak
step
    #questguide
    .goto 63,72.62,58.34
    >>Sammelt |cRXP_PICK_Frische Geröll|r in der ganzen Höhle für |cRXP_LOOT_Erzbrocken|r
    .complete 13797,1 --10/10 Chunk of Ore
step
    #questguide
    .goto 63,72.20,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Durak|r
    .turnin 13797 >>Gebt die Quest Gemeinheiten ab
    .accept 13798 >>Akzeptiert die Quest Regen der Zerstörung
    .target Durak
step
    #questguide
    .goto 63,74.09,62.92
    .use 45598 >> |cRXP_WARN_Klettert den Turm hoch und richtet|r |T134569:0|t[Verflucht Ore] |cRXP_WARN_auf|r |cRXP_ENEMY_Wütende Urtume|r |cRXP_WARN_und|r |cRXP_ENEMY_Angreifende Elfen|r
    .complete 13798,2 --5/5 Raging Ancients Slain
    .complete 13798,1 --30/30 Attacking Elves Slain
    .mob Raging Ancients
    .mob Ashenvale Assailant
    .mob Ashenvale Bowman
    --VV Dogshit quest, item has 15sec cd and must be used like 10+ times. But good quest rewards
step
    #questguide
    .goto 63,72.18,57.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Durak|r
    .turnin 13798 >>Gebt die Quest Regen der Zerstörung ab
    .target Durak
step
    #questguide
    .goto 63,73.34,62.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Splintertree Demolisher|r
    .accept 13841 >>Akzeptiert die Quest Mit der Bitte um Entschuldigung
    .target Splintertree Demolisher
    .isQuestTurnedIn 13798
step
    #questguide
    .goto 63,82.55,53.63
    .use 45710 >>|cRXP_WARN_Benutzt euer|r |T133639:0|t[Geheimnis Signal Powder] |cRXP_WARN_auf der qualmenden Kohlenpfanne|r
    .complete 13808,1 --1/1 Smoldering Brazier lit
step
    #questguide
    .goto 63,82.54,53.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krokk|r
    .turnin 13808 >>Gebt die Quest In geheimer Mission ab
    .accept 13815 >>Akzeptiert die Quest Stümpfe machen
    .accept 13865 >>Akzeptiert die Quest Drei Anführer sind drei zu viel
    .target Krokk
step
    #questguide
    #completewith ChopSomeTrees
    >>Tötet |cRXP_ENEMY_Ashenvale Späher|r
    .complete 13865,4 --12/12 Ashenvale Scouts defeated
    .mob Ashenvale Scout
step
    #questguide
    #completewith next
    .use 45807 >> |cRXP_WARN_Benutzt von Euch|r |T132399:0|t[Splintertree Axt] |cRXP_WARN_zum Fällen|r |cRXP_FRIENDLY_Eschental-Eichen|r
    .complete 13815,1 --6/6 Ashenvale Oaks Chopped Down
    .target Ashenvale Oak
step
    #questguide
    >>Tötet |cRXP_ENEMY_Endolar|r, |cRXP_ENEMY_Arminon|r und |cRXP_ENEMY_Dorinar|r
    .goto 63,85.46,56.04
    .complete 13865,1 --1/1 Protector Endolar slain
    .goto 63,85.74,57.97
    .complete 13865,3 --1/1 Protector Arminon slain
    .goto 63,85.36,60.68
    .complete 13865,2 --1/1 Protector Dorinar slain
    .mob Protector Endolar
    .mob Protector Arminon
    .mob Protector Dorinar
step
    #questguide
    #label ChopSomeTrees
    .goto 63,86.51,54.67
    .use 45807 >> |cRXP_WARN_Benutzt von Euch|r |T132399:0|t[Splintertree Axt] |cRXP_WARN_zum Fällen|r |cRXP_FRIENDLY_Eschental-Eichen|r
    .complete 13815,1 --6/6 Ashenvale Oaks Chopped Down
    .target Ashenvale Oak
step
    #questguide
    .goto 63,85.53,56.74
    >>Beenden killing |cRXP_ENEMY_Ashenvale Späher|r
    .complete 13865,4 --12/12 Ashenvale Scouts defeated
    .mob Ashenvale Scout

    --Quest below (26449) not worth, too much travel

step
    #questguide
    #completewith next
    .subzone 435 >> Reist nach Dämonensturz
step
    #questguide
    .goto 63,89.75,76.72
    >>Tötet |cRXP_ENEMY_Gorgannon|r. Plündert sie für |cRXP_LOOT_Blade|r
    .complete 26449,1 --1/1 Gorgannon's Flaming Blade
    .mob Gorgannon
    .isQuestTurnedIn 26447
step
    #questguide
    .goto 63,78.46,83.89
    >>Tötet |cRXP_ENEMY_Diathorus der Sucher|r. Plündert seinen |cRXP_LOOT_Speer|r.
    >>|cRXP_WARN_Er ist auf der anderen Seite der ersten Brücke, auf die ihr stoßt, wenn ihr die Höhle betretet|r
    .complete 26449,2 --1/1 Seeker's Fel Spear
    .mob Diathorus the Seeker
    .isQuestTurnedIn 26447
step
    #questguide
    .goto 63,82.54,53.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Krokk|r
    .use 45710 >>|cRXP_WARN_Benutzt Euer|r |T133639:0|t[Geheimnis-Signal-Pulver] |cRXP_WARN_bei der Qualmenden Kohlenpfanne, um herbeizurufen|r |cRXP_FRIENDLY_Krokk|r
    .turnin 13815 >>Gebt die Quest Stümpfe machen ab
    .turnin 13865 >>Gebt die Quest Drei Anführer sind drei zu viel ab
    .accept 13870 >>Akzeptiert die Quest Besser geht's nicht
    .target Krokk
step
    #questguide
    .goto 63,90.94,58.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Vorarbeiter Gorthak|r im Holzfällerlager des Kriegshymnenklans
    .turnin 13870 >>Gebt die Quest Besser geht's nicht ab
    .accept 13871 >>Akzeptiert die Quest Wachen!
    .target Overseer Gorthak
step
    #questguide
    .goto 63,89.97,59.10
    >>Lauft nach außen und dreht euch nach links. Tötet |cRXP_ENEMY_Assassine|r, der auf euch springt
    .complete 13871,1 --1/1 Kaldorei Assassin's Head
    .unitscan Kaldorei Assassin
step
    #questguide
    .goto 63,90.94,58.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Overseer Gorthak|r
    .turnin 13871 >>Gebt die Quest Wachen! ab
    .target Overseer Gorthak
step
    #questguide
    .goto 63,90.75,58.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Guardian Menerin|r
    .accept 13873 >>Akzeptiert die Quest Sheelahs Vermächtnis
    .target Guardian Menerin
step
    #questguide
    .goto 63,89.60,48.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Guardian Gurtar|r
    .turnin 13873 >>Gebt die Quest Sheelahs Vermächtnis ab
    .accept 13875 >>Akzeptiert die Quest Gurtars Bitte
    .target Guardian Gurtar
step
    #label Bloodcups
    #questguide
    .goto 63,73.29,60.22
    >>Sammelt |cRXP_PICK_Dornengespickte Blutkelche|r vom Boden
    >>|cRXP_WARN_Viele befinden sich entlang der Straße zum Splitterholzposten|r
    .collect 46315,8,13875,1 --Thorned Bloodcup (8)
step
    #questguide
    #requires Bloodcups
    .use 46316 >>Benutzt den |T134892:0|t[Ork-Haare-Zopf], um einen |cRXP_LOOT_Blutkelchzopf|r zu erstellen
    .complete 13875,1 --1/1 Bloodcup Braid
step
    #questguide
    .goto 63,73.34,62.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Splintertree Demolisher|r
    .turnin 13875 >>Gebt die Quest Gurtars Bitte ab
    .target Splintertree Demolisher
step
    #questguide
    .goto 63,73.15,60.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Valusha|r
    .turnin 26449 >>Gebt die Quest Nie wieder! ab
    .target Valusha
    .isQuestComplete 26447
step
    #questguide
    .goto 63,73.74,61.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Locke Okarr|r
    .accept 13806 >>Akzeptiert die Quest Dämonendienst
    .target Locke Okarr
    .isQuestTurnedIn 26449
step
    #questguide
    .goto 63,73.86,62.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pixel|r
    .accept 6441 >>Akzeptiert die Quest Satyrhörner
    .target Pixel
    .isQuestTurnedIn 26449
step
    #questguide
    #completewith next
    .subzone 430 >>Reist nach Satyrnaar
    .isQuestTurnedIn 26449
step
    #questguide
    #completewith next
    >>Tötet |cRXP_ENEMY_Satyre|r. Plündert sie für ihre |cRXP_LOOT_Hörner|r
    .complete 6441,1 --16/16 Satyr Horns
    .mob Bleakheart Hellcaller
    .mob Bleakheart Satyr
    .mob Bleakheart Trickster
    .mob Bleakheart Shadowstalker
    .isQuestTurnedIn 26449
step
    #questguide
    .goto 63,79.48,50.21
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tKlickt |cRXP_FRIENDLY_Rituelle Edelsteine|r
    .complete 13806,1 --12/12 Demon Portals Interrupted
    .isQuestTurnedIn 26449
step
    #questguide
    .goto 63,81.69,49.40
    >>Beenden killing |cRXP_ENEMY_Satyrs|r. Plündert sie für |cRXP_LOOT_Horns|r
    .complete 6441,1 --16/16 Satyr Horns
    .mob Bleakheart Hellcaller
    .mob Bleakheart Satyr
    .mob Bleakheart Trickster
    .mob Bleakheart Shadowstalker
    .isQuestTurnedIn 26449
step
    #questguide
    .goto 63,73.87,62.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Pixel|r
    .turnin 6441 >>Gebt die Quest Satyrhörner ab
    .target Pixel
step
    #questguide
    .goto 63,73.78,61.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Locke Okarr|r
    .turnin 13806 >>Gebt die Quest Dämonendienst ab
    .target Locke Okarr
    .isQuestTurnedIn 26449
step
    #xprate >1.19
    .maxlevel 24,AshenvaleEnd
    .goto 63,73.19,61.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vhulgra|r
    .gossipoption 111682 >> Fliegt nach Zoram Strand
    .timer 165,Zoram Strand, Eschental
    .target Vhulgra
    .subzoneskip 414
    .isQuestTurnedIn 13712
step
    #xprate <1.2
    .maxlevel 25,AshenvaleEnd
    .goto 63,73.19,61.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vhulgra|r
    .gossipoption 111682 >> Fliegt nach Zoram Strand
    .timer 165,Zoram Strand, Eschental
    .target Vhulgra
    .subzoneskip 414
    .isQuestTurnedIn 13712
step
    #completewith next
    .subzone 2897 >>Reist zum Außenposten von Zoram'gar
    .isQuestAvailable 13712
step
    .goto 63,11.16,34.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Andruk|r
    .fp >>Erlernt die Flugroute zum Außenposten von Zoram'gar
    .target Andruk
    .isQuestAvailable 26890
step
    .goto 63,12.11,33.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Commander Grimfang|r
    .turnin 13848 >>Gebt die Quest Überbringer schlechter Nachrichten ab
    .accept 13890 >>Akzeptiert die Quest Schürt das Feuer
    --.accept 26894 >>Accept Blackfathom Deeps
    .target Commander Grimfang
    --26894 BFD dungeon quest
step
    .goto 63,11.64,35.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dagrun Wuthammer|r
    .accept 13883 >>Akzeptiert die Quest Ein Wrack neben dem anderen
    .accept 26890 >>Akzeptiert die Quest Die Essenz von Aku'mai
    .target Dagrun Ragehammer
step
    .goto 63,12.66,35.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marukai|r
    .accept 6442 >>Akzeptiert die Quest Die Naga am Zoramstrand
    .target Marukai
step
    .goto 63,12.99,34.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Innkeeper Duras|r
    .home >>Setzt Euren Ruhestein beim Außenposten von Zoram'gar
    .target Innkeeper Duras
    .isQuestAvailable 26890
step
    .goto 63,12.77,34.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Muglash|r
    >>|cRXP_WARN_Dies wird ein Eskortenquest starten. Seid vorsichtig, da es schwierig ist|r
    .accept 6641,1 >> Akzeptiert die Quest Vorsha die Peitscherin
    .target Muglash
step
    #completewith LitLightHouse
    >>Tötet |cRXP_ENEMY_Rächerflossen Nagas|r. Plündert sie für ihre |cRXP_LOOT_Köpfe|r
    .complete 6442,1 --20/20 Wrathtail Head
    .mob Wrathtail Waverider
    .mob Wrathtail Sorceress
step
    .goto 63,9.66,27.64
    >>Folgt |cRXP_FRIENDLY_Muglash|r. Klickt |cRXP_PICK_Naga-Kohlenpfanne|r, wenn ihr dort ankommt
    >>|cRXP_WARN_Es werden Wellen von|r |cRXP_ENEMY_Naga|r |cRXP_WARN_hervorkommen. Seid vorsichtig, wenn|r |cRXP_ENEMY_Vorsha|r |cRXP_WARN_auftaucht - er schlägt hart zu|r
    .complete 6641,1 --Defeat Vorsha the Lasher
    .mob Vorsha the Lasher
step
    #completewith next
    >>Sammelt |cRXP_LOOT_Versunkenes Verschrottetes Metall|r vom Meeresboden
    .complete 13883,1 --10/10 Sunken Scrap Metal
step
    #loop
    .goto 1440/1,1237.40002,3394.30005,0
    .waypoint 1440/1,1159.70007,3451.69995,50,0
    .waypoint 1440/1,1237.40002,3394.30005,50,0
    .waypoint 1440/1,1316.80005,3368.30005,50,0
    .waypoint 1440/1,1395.90002,3382.90015,50,0
    >>Tötet |cRXP_ENEMY_Mystlash Hydras|r. Plündert sie für |cRXP_LOOT_Blubber|r
    .collect 46365,10,13890,1 --Mystlash Hydra Blubber (10)
    .mob Mystlash Hydra
step
    #loop
    .goto 1440/1,1372.59998,3405.80005,0
    .waypoint 1440/1,1372.59998,3405.80005,40,0
    .waypoint 1440/1,1201.90002,3394.40015,40,0
    .waypoint 1440/1,1350.70007,3329.19995,40,0
    >>Beendet das Sammeln von |cRXP_LOOT_Versunkenes Verschrottetes Metall|r vom Meeresboden
    .complete 13883,1 --10/10 Sunken Scrap Metal
step
    #completewith next
    .goto 63,11.69,35.36,30 >> Reist zur Schmiede im Außenposten von Zoram'gar
step
    .goto 63,11.69,35.36
    .use 46365 >>|cRXP_WARN_Benutzt das|r |T237338:0|t[Tran einer Nebelpeitscherhydra] |cRXP_WARN_um zu erstellen|r |cRXP_LOOT_Öl einer Nebelpeitscherhydra|r
    >>|cRXP_WARN_Ihr müsst an der Schmiede im Außenposten von Zoram'gar sein|r
    .collect 46366,1,13890,1 --Mystlash Hydra Oil (1)
step
    .goto 63,11.57,35.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dagrun Wuthammer|r
    .turnin 13883 >>Gebt die Quest Ein Wrack neben dem anderen ab
    .target Dagrun Ragehammer
step
    #label LitLightHouse
    .goto 63,6.74,28.97
    >>Reist zum obersten Geschoss des Leuchtturms und zündet das Feuer an
    .complete 13890,1 --1/1 Lighthouse Fire Lit
step
    #loop
    .goto 1440/1,954.29999,3590.19995,0
    .waypoint 1440/1,1234.80005,3533.40015,50,0
    .waypoint 1440/1,1061.30005,3553.60010,50,0
    .waypoint 1440/1,954.29999,3590.19995,50,0
    .waypoint 1440/1,889.79999,3661.40015,50,0
    .waypoint 1440/1,814.90002,3866.40015,50,0
    >>Beenden killing |cRXP_ENEMY_Wrathtail Nagas|r. Plündert sie für |cRXP_LOOT_Heads|r
    .complete 6442,1 --20/20 Wrathtail Head
    .mob Wrathtail Waverider
    .mob Wrathtail Sorceress
step
    .goto 63,12.11,33.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Commander Grimfang|r
    .turnin 13890 >>Gebt die Quest Schürt das Feuer ab
    .accept 13920 >>Akzeptiert die Quest Bevor Ihr geht...
    .target Commander Grimfang
step
    .goto 63,12.46,35.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Warsongläufer|r
    .turnin 6641 >>Gebt die Quest Vorsha die Peitscherin ab
    .target Warsong Runner
step
    .goto 63,12.66,35.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marukai|r
    .turnin 6442 >>Gebt die Quest Die Naga am Zoramstrand ab
    .accept 13901 >>Akzeptiert die Quest Tiefe Verzweiflung
    .target Marukai
step
    #loop
    .goto 1440/1,394.10001,3549.50000,0
    .waypoint 1440/1,682.60004,3480.60010,50,0
    .waypoint 1440/1,584.60004,3343.60010,50,0
    .waypoint 1440/1,394.10001,3549.50000,50,0
    .waypoint 1440/1,558.50000,3604.00000,50,0
    .waypoint 1440/1,661.20001,3772.90015,50,0
    .waypoint 1440/1,643.00000,3932.40015,50,0
    >>Tötet |cRXP_ENEMY_Wild Bucks|r. Plündert sie für |cRXP_LOOT_Steak|r
    .complete 13920,1 --5/5 Venison Steak
    .mob Wild Buck
step
    #completewith next
    .goto 63,14.20,13.85,30 >>Springen down into Tiefschwarze Grotte
    .subzoneskip 5517
step
    #completewith next
    >>Beute |cRXP_PICK_Saphir von Aku'mai|r von den Mauern
    .complete 26890,1 --20/20 Sapphire of Aku'Mai
step
    #loop
    .goto 1414/1,902.00000,4265.50000,0
    .waypoint 1414/1,940.70001,4170.10010,20,0
    .waypoint 1414/1,902.00000,4265.50000,20,0
    .waypoint 1414/1,898.00000,4319.10010,20,0
    .waypoint 1414/1,821.90002,4252.50000,20,0
    .waypoint 1414/1,742.60004,4223.00000,20,0
    >>Tötet |cRXP_ENEMY_Blackfathom Tide Priestesses|r
    .complete 13901,1 --6/6 Blackfathom Tide Priestesses slain
    .mob Blackfathom Tide Priestess
step
    #loop
    .goto 1414/1,902.00000,4265.50000,0
    .waypoint 1414/1,940.70001,4170.10010,20,0
    .waypoint 1414/1,902.00000,4265.50000,20,0
    .waypoint 1414/1,898.00000,4319.10010,20,0
    .waypoint 1414/1,821.90002,4252.50000,20,0
    .waypoint 1414/1,742.60004,4223.00000,20,0
    >>Beendet das Plündern von |cRXP_PICK_Saphir von Aku'mai|r von den Mauern
    .complete 26890,1 --20/20 Sapphire of Aku'Mai
step
    #completewith next
    .hs >> Benutzt euren Ruhestein zum Zoram Strand
    .use 6948
    .subzoneskip 2897
step
    .goto 63,12.11,33.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Commander Grimfang|r
    .turnin 13920 >>Gebt die Quest ab, bevor Ihr geht
    .accept 13923 >>Akzeptiert die Quest Zu Höllschreis Wacht
    .target Commander Grimfang
step
    .goto 63,12.66,35.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Marukai|r
    .turnin 13901 >>Gebt die Quest Tiefe Verzweiflung ab
    .target Marukai
step
    .goto 63,11.57,35.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Dagrun Wuthammer|r
    .turnin 26890 >>Gebt die Quest Die Essenz von Aku'mai ab
    .target Dagrun Ragehammer
step
    #completewith HellscreamsWatchPickups
    .goto 63,11.16,34.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Andruk|r
    .gossipoption 111691 >>Fliegt nach Höllschreis Wacht
    .target Andruk
step
    .goto 63,38.08,42.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thraka|r
    .fp >>Erlernt die Flugroute nach Höllschreis Wacht
    .target Thraka
    .isQuestAvailable 6462
step
    .goto 63,38.60,42.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Innkeeper Linkasa|r
    .home >>Setzt euren Ruhestein bei Höllschreis Wacht
    .target Innkeeper Linkasa
    .isQuestAvailable 6462
step
    .goto 63,38.01,42.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Goggath|r
    >>|cRXP_WARN_Er patrouilliert herum|r
    .turnin 13923 >>Gebt die Quest Zu Höllschreis Wacht ab
    .accept 13936 >>Akzeptiert die Quest Twidels Narretei
    .target Captain Goggath
step
    .goto 63,37.77,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Karang Amakkar|r
    .accept 216 >>Akzeptiert die Quest Hart auf hart
    .target Karang Amakkar
step
    .goto 63,37.98,43.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tweedle|r
    .turnin 13936 >>Gebt die Quest Twidels Narretei ab
    .accept 13942 >>Akzeptiert die Quest Bombenbasteln
    .target Tweedle
step
    .goto 63,38.00,42.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Goggath|r
    >>|cRXP_WARN_Er patrouilliert herum|r
    .accept 13943 >>Akzeptiert die Quest Ein Deckel für die Scharmützler
    .target Captain Goggath
step
    #label HellscreamsWatchPickups
    .goto 63,38.89,42.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mitsuwa|r
    .accept 6462 >>Akzeptiert die Quest Troll-Glücksbringer
    .target Mitsuwa
step
    #loop
    .goto 1440/1,-360.50000,2929.60010,0
    .waypoint 1440/1,-298.20001,2929.19995,35,0
    .waypoint 1440/1,-360.50000,2929.60010,35,0
    .waypoint 1440/1,-433.80002,2897.00000,35,0
    .waypoint 1440/1,-571.00000,2871.19995,35,0
    .waypoint 1440/1,-592.50000,2821.19995,35,0
    >>Tötet |cRXP_ENEMY_Astranaar Officers|r und |cRXP_ENEMY_Astranaar Skirmishers|r
    >>Beute |cRXP_PICK_Mond-Kissed Clay|r vom Boden
    .complete 13943,2 --3/3 Astranaar Officers slain
    .mob +Astranaar Officer
    .complete 13943,1 --10/10 Astranaar Skirmishers slain
    .mob +Astranaar Skirmisher
    .complete 13942,1 --10/10 Moon-Kissed Clay
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Thistlefur Furbolgs|r
    .complete 216,1 --15/15 Thistlefur Village Furbolgs killed
    .mob Thistlefur Pathfinder
    .mob Thistlefur Shaman
    .mob Thistlefur Avenger
step
    #completewith next
    .goto 63,38.37,30.59,40 >>Betretet Höhle der Distelfelle
step
    #loop
    .goto 1440/1,-627.70001,3394.69995,0
    .waypoint 1440/1,-605.60004,3401.69995,15,0
    .waypoint 1440/1,-627.70001,3394.69995,15,0
    .waypoint 1440/1,-631.79999,3349.30005,15,0
    .waypoint 1440/1,-574.70001,3385.60010,15,0
    .waypoint 1440/1,-676.70001,3314.19995,15,0
    .waypoint 1440/1,-683.60004,3359.00000,15,0
	>>Beute die |cRXP_PICK_Trollkisten|r auf dem Boden für |cRXP_LOOT_Trollamulett|r
	.complete 6462,1 --Collect Troll Charm (x8)
step
    .goto 63,41.49,34.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Ruul|r hinten in der Höhle. Das wird eine Eskorte einleiten.
    .accept 6482 >> Akzeptiert die Quest Freiheit für Ruul
    .target Ruul Snowhoof
step
    .goto 63,40.68,33.21,20,0
    .goto 63,40.29,32.25,20,0
    .goto 63,39.41,31.00,20,0
    .goto 63,38.28,30.68,20,0
    .goto 63,37.39,32.74,30,0
    .goto 63,37.30,34.49,30,0
    .goto 63,38.73,36.86,50,0
    .goto 63,38.35,38.55
    >>Begleitet |cRXP_FRIENDLY_Ruul|r aus Lager der Distelfelle
    >>|cFFFCDC00Vorsicht! 3|r |cRXP_ENEMY_Thistlefurs|r |cFFFCDC00 werden spawnen, wenn ihr etwa in der Mitte der Höhle seid, und weitere 3 außerhalb des Tores von Lager der Distelfelle|r
    .complete 6482,1 --Escort Ruul from the Thistlefurs
    .target Ruul Snowhoof
step
    .goto 63,39.45,36.62
    >>Beenden killing |cRXP_ENEMY_Thistlefur Furbolgs|r
    .complete 216,1 --15/15 Thistlefur Village Furbolgs killed
    .mob Thistlefur Pathfinder
    .mob Thistlefur Shaman
    .mob Thistlefur Avenger
step
    .goto 63,38.00,42.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Goggath|r
    >>|cRXP_WARN_Er patrouilliert herum|r
    .turnin 13943 >>Gebt die Quest Ein Deckel für die Scharmützler ab
    .target Captain Goggath
step
    .goto 63,37.77,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Karang Amakkar|r
    .turnin 216 >>Gebt die Quest Hart auf hart ab
    .target Karang Amakkar
step
    .goto 63,37.98,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tweedle|r
    .turnin 13942 >>Gebt die Quest Bombenbasteln ab
    .accept 13944 >>Akzeptiert die Quest Kleine Statur, schwache Nerven
    .target Tweedle
step
    .goto 63,38.89,42.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mitsuwa|r
    .turnin 6462 >>Gebt die Quest Trollglücksbringer ab
    .target Mitsuwa
step
    .goto 63,38.47,44.22
    .use 46701 >>|cRXP_WARN_Benutzen|r |T133711:0|t[Twidels Behelfsmäßiger Sprengstoff] |cRXP_WARN_am zerstörten Wagen|r
    .complete 13944,1 --1/1 Broken Wagon exploded
step
    .goto 63,38.00,42.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Goggath|r
    >>|cRXP_WARN_Er patrouilliert herum|r
    .turnin 13944 >>Gebt die Quest Kleine Statur, schwache Nerven ab
    .accept 13947 >>Akzeptiert die Quest Bombenstimmung in Astranaar!
    .target Captain Goggath
step
    .goto 63,38.08,42.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thraka|r
    .gossipoption 111697 >>Nehmt den Windreiter auf, um Astranaar zu bomben
    .target Thraka
    .isOnQuest 13947
step
    .goto 63,36.24,51.03
    >>Benutzt |T133711:0|t[Sprengkörper werfen] on |cRXP_ENEMY_Astranaar Sentinels|r und |cRXP_ENEMY_Astranaar Throwers|r
    .complete 13947,1 --20/20 Astranaar Sentinels slain
    .mob +Astranaar Sentinel
    .complete 13947,2 --10/10 Astranaar Throwers destroyed
    .mob +Astranaar Thrower
step
    #completewith next
    .cast vehicle,65481 >>|cRXP_WARN_Benutzen|r |T136011:0|t[Zur Basis zurückkehren!] |cRXP_WARN_um zu Höllschreis Wacht zurückzufliegen|r
    .subzoneskip 4691
step
    .goto 63,37.99,42.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Goggath|r
    >>|cRXP_WARN_Er patrouilliert herum|r
    .turnin 13947 >>Gebt die Quest Bombenstimmung in Astranaar ab!
    .accept 13958 >>Akzeptiert die Quest Kritischer Zustand!
    .target Captain Goggath
step
    .goto 63,37.98,43.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Tweedle|r
    .accept 13974 >>Akzeptiert die Quest Twidels winziges Paket
    .target Tweedle
step
    #questguide
    .goto 63,38.79,43.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Broyk|r
    .accept 13879 >>Akzeptiert die Quest Donnergipfel
    .target Broyk
step
    #questguide
    #completewith next
    .goto 63,52.08,56.50,50 >>Reist nach Donnergipfel
step
    #questguide
    .goto 63,52.08,56.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Stikwad|r
    .turnin 13879 >>Gebt die Quest Donnergipfel ab
    .target Stikwad
step
    #questguide
    .goto 63,52.08,56.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arctanus|r
    .accept 13884 >>Akzeptiert die Quest Feuerlöscher
    .target Arctanus
step
    #questguide
    .goto 63,52.31,56.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Core|r
    .accept 13880 >>Akzeptiert die Quest Heiße Lava
    .target Core
step
    #questguide
    #completewith LavaRagers
    .goto 63,52.08,56.71,0
    +|cRXP_WARN_Falls ihr den|r |cRXP_FRIENDLY_Eiskalt Woger|r|cRXP_WARN_ von Euch verliert, sprecht mit|r |cRXP_FRIENDLY_Arctanus|r |cRXP_WARN_erneut, um einen weiteren zu bekommen|r
    .skipgossipid 111688
    .target Arctanus
step
    #questguide
    #completewith next
    >>Tötet |cRXP_ENEMY_Lava Ragers|r
    .complete 13884,1 --10/10 Lava Rager slain
    .mob Lava Rager
step
    #questguide
    #loop
    .goto 1440/1,-1165.50000,2678.50000,0
    .waypoint 1440/1,-1189.80005,2600.30005,30,0
    .waypoint 1440/1,-1165.50000,2678.50000,30,0
    .waypoint 1440/1,-1048.50000,2761.10010,30,0
    .waypoint 1440/1,-1122.09998,2828.30005,30,0
    .waypoint 1440/1,-1247.30005,2860.00000,30,0
    .waypoint 1440/1,-1300.80005,2733.19995,30,0
    .waypoint 1440/1,-1323.30005,2631.60010,30,0
    .use 46352 >> |cRXP_WARN_Benutzen|r |T237588:0|t[Geschenk der Erde] |cRXP_WARN_auf|r |cRXP_PICK_Lava-Spalten|r
    .complete 13880,1 --8/8 Lava fissures filled
step
    #questguide
    #label LavaRagers
    #loop
    .goto 1440/1,-1165.50000,2678.50000,0
    .waypoint 1440/1,-1189.80005,2600.30005,50,0
    .waypoint 1440/1,-1165.50000,2678.50000,50,0
    .waypoint 1440/1,-1048.50000,2761.10010,50,0
    .waypoint 1440/1,-1122.09998,2828.30005,50,0
    .waypoint 1440/1,-1247.30005,2860.00000,50,0
    .waypoint 1440/1,-1300.80005,2733.19995,50,0
    .waypoint 1440/1,-1323.30005,2631.60010,50,0
    >>Beenden killing |cRXP_ENEMY_Lava Ragers|r
    .complete 13884,1 --10/10 Lava Rager slain
    .mob Lava Rager
step
    #questguide
    .goto 63,52.08,56.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Arctanus|r
    .turnin 13884 >>Gebt die Quest Feuerlöscher ab
    .target Arctanus
step
    #questguide
    .goto 63,52.32,56.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Core|r
    .turnin 13880 >>Gebt die Quest Heiße Lava ab
    .target Core
step
    #questguide
    .goto 63,52.34,56.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_The Vortex|r
    .accept 13888 >>Akzeptiert die Quest Vortex
    .target The Vortex
step
    #questguide
    .goto 63,52.34,56.79
    .gossipoption 111689 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Der Vortex|r erneut, um die Begegnung mit |cRXP_ENEMY_Lord Magmathar|r zu beginnen
    .target The Vortex
step
    #questguide
    .goto 63,49.19,39.86
    >>Tötet |cRXP_ENEMY_Lord Magmathar|r
    >>|cRXP_WARN_Benutzen|r |T252174:0|t[Himmelsblitz] |cRXP_WARN_und|r |T236154:0|t[Vortexrache] |cRXP_WARN_auf Abklingzeit|r
    >>|cRXP_WARN_Benutzen|r |T135833:0|t[Flammen löschen] |cRXP_WARN_wenn du leidest unter|r |T135817:0|t[Fürstlicher Feuerbrand]
    .complete 13888,1 --1/1 Lord Magmathar slain
    .mob Lord Magmathar
step
    #questguide
    .goto 63,52.09,56.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Stikwad|r
    .turnin 13888 >>Gebt die Quest Vortex ab
    .target Stikwad
step
    #completewith SilverwindPickups
    .goto 63,49.96,67.25,100 >> Reist zu Silberwindzuflucht
step
    .goto 63,49.79,65.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senani Donnerherz|r
    .turnin 2 >>Gebt die Quest Klaue von Scharfkralle ab
    .accept 13967 >>Akzeptiert die Quest Beim Ausdünnen der... Rotte?
    .target Senani Thunderheart
    .isOnQuest 2
step
    #optional
    .goto 63,49.79,65.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senani Donnerherz|r
    .accept 13967 >>Akzeptiert die Quest Beim Ausdünnen der... Rotte?
    .target Senani Thunderheart
step
    .goto 63,49.29,65.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Wind Tamer Shoshok|r
    .fp >>Erlernt die Flugroute nach Silberwindzuflucht
    .target Wind Tamer Shoshok
    .subzoneskip 420,1
step
    .goto 63,49.96,67.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Flooz|r
    .turnin 13974 >>Gebt die Quest Twidels winziges Paket ab
    .target Flooz
step
    .goto 63,50.14,67.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Tarkan|r
    .accept 25 >>Akzeptiert die Quest Und dann langsam abkühlen lassen
    .target Captain Tarkan
step
    .goto 63,49.98,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Flooz|r
    .accept 13977 >>Akzeptiert die Quest Massenproduktion
    .target Flooz
step
    #label SilverwindPickups
    .goto 1440/1,-1225.90002,2092.80005,0
    .goto 1440/1,-1152.09998,2093.80005,0
    .goto 1440/1,-1225.90002,2092.80005,5,0
    .goto 1440/1,-1152.09998,2093.80005,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Cromula|r
    .accept 26416 >>Akzeptiert die Quest Auf in den Dschungel
    .target Cromula
step << skip
    .goto 63,49.88,65.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Blood Schutz Aldo Rockrain|r
    .accept 25945 >>Akzeptiert die Quest Wir haben hier nur eine Aufgabe, vielleicht auch zwei...
    .target Blood Guard Aldo Rockrain
    --Stonetalon Breadcrumb
step
    #loop
    .goto 1440/1,-1432.70007,2296.40015,0
    .waypoint 1440/1,-1405.90002,2233.69995,50,0
    .waypoint 1440/1,-1432.70007,2296.40015,50,0
    .waypoint 1440/1,-1569.30005,2259.90015,50,0
    .waypoint 1440/1,-1581.09998,2184.90015,50,0
    .waypoint 1440/1,-1530.30005,2218.90015,50,0
    >>Tötet |cRXP_ENEMY_Furbolgs|r. Plündert sie für |cRXP_LOOT_Ears|r
    .complete 13967,1 --15/15 Furbolg Ear
    .mob Foulweald Totemic
    .mob Foulweald Warrior
    .mob Foulweald Pathfinder
step
    .goto 63,49.74,65.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senani Donnerherz|r
    .turnin 13967 >>Gebt die Quest Beim Ausdünnen der... Rotte? ab
    .accept 6621 >>Akzeptiert die Quest König der Fäulnisklauen
    .target Senani Thunderheart
step
    #optional
    .goto 63,49.74,65.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senani Donnerherz|r
    .turnin 2 >>Gebt die Quest Klaue von Scharfkralle ab
    .turnin 13967 >>Gebt die Quest Beim Ausdünnen der... Rotte? ab
    .accept 6621 >>Akzeptiert die Quest König der Fäulnisklauen
    .target Senani Thunderheart
    .isOnQuest 2
step
    .goto 63,49.74,65.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senani Donnerherz|r
    .turnin 13967 >>Gebt die Quest Beim Ausdünnen der... Rotte? ab
    .accept 6621 >>Akzeptiert die Quest König der Fäulnisklauen
    .target Senani Thunderheart
step
    .goto 63,56.37,63.54
    .use 16972 >> |cRXP_WARN_Benutzen das|r |T237588:0|t[Geschenk der Erde] |cRXP_WARN_auf dem Totemhügel und schützt es vor eingehenden|r |cRXP_ENEMY_Furbolgs|r
    >>Tötet |cRXP_ENEMY_Häuptling Murgut|r, sobald er erscheint. Beute den |cRXP_PICK_Basket|r für |cRXP_LOOT_Murguts Totem|r
    .complete 6621,1 --1/1 Murgut's Totem
    .mob Chief Murgut
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Water Elementals|r
    .complete 25,1 --12/12 Befouled Water Elemental slain
    .mob Befouled Water Elemental
step
    .goto 1440/1,-1079.70007,1994.20007
    >>Tötet |cRXP_ENEMY_Tideress|r. Beute sie für die |T136222:0|t[|cRXP_LOOT_Besudelt Wasserkugel|r]. Benutzen es um die Quest zu beginnen
    .complete 25,2 --1/1 Tideress slain
    .collect 16408,1,1918 --Collect Befouled Water Globe (x1)
    .accept 1918 >>Akzeptiert die Quest Das beschmutzte Element
    .mob Tideress
step
    #loop
    .goto 1440/1,-978.50000,2019.70007,0
    .waypoint 1440/1,-973.10004,1947.70007,50,0
    .waypoint 1440/1,-978.50000,2019.70007,50,0
    .waypoint 1440/1,-1233.80005,2025.00000,50,0
    .waypoint 1440/1,-1177.59998,1928.59998,50,0
    >>Beenden killing |cRXP_ENEMY_Water Elementals|r
    .complete 25,1 --12/12 Befouled Water Elemental slain
    .mob Befouled Water Elemental
step
    .goto 63,46.16,63.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Foreman Finsterer Fluch|r
    .turnin 13977 >>Gebt die Quest Massenproduktion ab
    .accept 13980 >>Akzeptiert die Quest Sie sind da draußen!
    .accept 13983 >>Akzeptiert die Quest Baut Euren eigenen Sarg
    .target Foreman Jinx
step
    #completewith KillAssassins
    >>Tötet |cRXP_ENEMY_Ursangus|r. Beute ihn für |T132941:0|t[|cRXP_LOOT_Ursangus' Tatze|r] und benutzen es um die Quest zu beginnen
    >>|cRXP_WARN_Er patrouilliert leicht in der Gegend|r
    .collect 16303,1,23 --Collect Ursangous's Paw (x1)
    .accept 23 >> Akzeptiert die Quest Ursangus' Tatze
    .unitscan Ursangous
    .use 16303
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Ashenvale Assassins|r
    .use 46776 >>|cRXP_WARN_Sie sind getarnt! Benutzt|r |T133023:0|t[Finsterer Fluch's Glotzi] |cRXP_WARN_um sie zu entdecken|r
    .complete 13980,1 --12/12 Ashenvale Assassin slain
    .unitscan Ashenvale Assassin
step
    #loop
    .goto 1440/1,-715.10004,1985.59998,0
    .waypoint 1440/1,-846.40002,1993.70007,40,0
    .waypoint 1440/1,-779.10004,1977.80005,40,0
    .waypoint 1440/1,-715.10004,1985.59998,40,0
    .waypoint 1440/1,-545.20001,2052.00000,40,0
    .waypoint 1440/1,-448.70001,2060.90015,40,0
    .waypoint 1440/1,-589.79999,2194.10010,40,0
    .waypoint 1440/1,-628.10004,2297.69995,40,0
    >>Beute |cRXP_PICK_Bronzezahnräder|r, |cRXP_PICK_Verriegelungsbolzen|r und |cRXP_PICK_Kupferplatten|r vom Boden
    .complete 13983,1 --3/3 Bronze Cog
    .complete 13983,3 --5/5 Locking Bolt
    .complete 13983,2 --3/3 Copper Plating
step
    #label KillAssassins
    #loop
    .goto 1440/1,-715.10004,1985.59998,0
    .waypoint 1440/1,-846.40002,1993.70007,40,0
    .waypoint 1440/1,-779.10004,1977.80005,40,0
    .waypoint 1440/1,-715.10004,1985.59998,40,0
    .waypoint 1440/1,-545.20001,2052.00000,40,0
    .waypoint 1440/1,-448.70001,2060.90015,40,0
    .waypoint 1440/1,-685.79999,2128.40015,40,0
    .waypoint 1440/1,-726.40002,2037.50000,40,0
    >>Beenden killing |cRXP_ENEMY_Ashenvale Assassins|r
    .use 46776 >>|cRXP_WARN_Sie sind getarnt! Benutzt|r |T133023:0|t[Finsterer Fluch's Glotzi] |cRXP_WARN_um sie zu entdecken|r
    .complete 13980,1 --12/12 Ashenvale Assassin slain
    .unitscan Ashenvale Assassin
step
    #loop
    .goto 1440/1,-597.40002,2149.40015,0
    .waypoint 1440/1,-585.00000,2234.40015,30,0
    .waypoint 1440/1,-597.40002,2149.40015,30,0
    .waypoint 1440/1,-653.40002,2121.30005,30,0
    .waypoint 1440/1,-693.90002,2149.00000,30,0
    >>Tötet |cRXP_ENEMY_Ursangus|r. Beute ihn für |T132941:0|t[|cRXP_LOOT_Ursangus' Tatze|r] und benutzen es um die Quest zu beginnen
    >>|cRXP_WARN_Er patrouilliert leicht in der Gegend|r
    .collect 16303,1,23 --Collect Ursangous's Paw (x1)
    .accept 23 >> Akzeptiert die Quest Ursangus' Tatze
    .unitscan Ursangous
    .use 16303
step
    .goto 63,46.16,63.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Foreman Finsterer Fluch|r
    .turnin 13980 >>Gebt die Quest Sie sind da draußen! ab
    .turnin 13983 >>Gebt die Quest Baut Euren eigenen Sarg ab
    .target Foreman Jinx
step
    .goto 63,49.75,65.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Senani Donnerherz|r
    .turnin 6621 >>Gebt die Quest König der Fäulnisklauen ab
    .target Senani Thunderheart
step
    .goto 63,50.13,67.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Tarkan|r
    .turnin 25 >>Gebt die Quest Und dann langsam abkühlen lassen ab
    .turnin 23 >>Gebt die Quest Ursangus' Tatze ab
    .target Captain Tarkan
step
    #completewith next
    .goto 63,60.65,52.69,100 >> Reist zu Rajenbaum
step
    .goto 63,60.65,52.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thagg|r
    .turnin 13958 >>Gebt die Quest Kritischer Zustand! ab
    .accept 13962 >>Akzeptiert die Quest Pattsituation
    .target Thagg
step
    #completewith next
    >>Tötet |cRXP_ENEMY_Schattumbra|r. Beute sie für |T132225:0|t[|cRXP_LOOT_Schattumbra's Kopf|r] und benutzen es um die Quest zu beginnen
    >>|cRXP_ENEMY_Schattumbra|r patrouilliert leicht umher
    .collect 16304,1,24 --Collect Shadumbra's Head
	.accept 24 >> Akzeptiert die Quest Schattumbras Kopf
	.unitscan Shadumbra
    .use 16304
step
    .goto 63,62.04,51.41
    >>Tötet |cRXP_ENEMY_Bewahrer Ordanus|r im obersten Stock des Gebäudes
    .complete 13962,1 --1/1 Keeper Ordanus slain
    .mob Keeper Ordanus
step
    #loop
    .goto 1440/1,-1825.50000,2708.69995,0
    .waypoint 1440/1,-1867.09998,2752.19995,30,0
    .waypoint 1440/1,-1825.50000,2708.69995,30,0
    .waypoint 1440/1,-1857.90002,2660.80005,30,0
    >>Tötet |cRXP_ENEMY_Schattumbra|r. Beute sie für |T132225:0|t[|cRXP_LOOT_Schattumbra's Kopf|r] und benutzen es um die Quest zu beginnen
    >>|cRXP_ENEMY_Schattumbra|r patrouilliert um das Gebäude herum
    .collect 16304,1,24 --Collect Shadumbra's Head
	.accept 24 >> Akzeptiert die Quest Schattumbras Kopf
	.unitscan Shadumbra
    .use 16304
step
    .goto 63,60.67,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thagg|r
    .turnin 13962 >>Gebt die Quest Pattsituation ab
    .target Thagg
step
    #completewith FlytoSP
    .hs >> Benutzt euren Ruhestein zum Höllschreis Wacht
    .use 6948
    .subzoneskip 4691
    .cooldown item,6948,>0,1
step
    #completewith FlytoSP
    .subzone 4691 >>Reist nach Höllschreis Wacht
    .cooldown item,6948,<0
step
    .goto 63,38.56,42.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Goggath|r
    >>|cRXP_WARN_Er patrouilliert herum|r
    .turnin 24 >>Gebt die Quest Schattumbras Kopf ab
    .target Captain Goggath
    .isOnQuest 24
step
    #label FlytoSP
    #completewith next
    .goto 63,38.08,42.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Thraka|r
    .fly Splintertree Post >>Fliege nach Splitterholzposten
    .target Thraka
step
    .goto 63,74.12,60.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Yama|r
    .turnin 6482 >> Gebt die Quest Freiheit für Ruul ab
    .target Yama Snowhoof
step
    .goto 63,74.19,60.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Mastok Wrilehiss|r
    .accept 1918 >>Akzeptiert die Quest Das beschmutzte Element
    .turnin 1918 >>Gebt die Quest Das beschmutzte Element ab
    .target Mastok Wrilehiss
    .itemcount 16408,1
step
    #optional
    #label AshenvaleEnd
step
    #optional
    #sticky
    .abandon 2 >>Brecht die Quest Klaue von Scharfkralle ab, da sie nicht mehr abgegeben werden kann
step
    #completewith STV1
    .goto 63,73.18,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vhulgra|r
    .fly Orgrimmar >>Fliege nach Orgrimmar
    .target Vhulgra
    .zoneskip Orgrimmar
step << Rogue Cata/Warlock Cata
    #completewith next
    .goto 1454,45.81,66.88,40 >> Reist zur Kluft der Schatten
step << Shaman Cata/Druid Cata/Paladin Cata/Warrior Cata/Hunter Cata/Priest Cata
    #completewith next
    .goto 1454/1,-4291.89990,1876.70007,50 >> Reist zum Tal der Weisheit
step << Rogue Cata
    .goto 1454,44.65,61.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Gordul|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Gordul
step << Rogue Cata
    .goto 1454,29.60,50.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Rekkul|r.
    .vendor >>|cRXP_BUY_Stock up on|r |T132273:0|t[Gifte]
    .target Rekkul
step << Shaman Cata
    .goto 1454/1,-4282.60010,1884.09998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sahi|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Sahi Cloudsinger
step << Druid Cata
    .goto 1454/1,-4285.10010,1889.09998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Shalla|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Shalla Whiteleaf
step << Mage Cata
    .goto 1454/1,-4125.10010,1690.59998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Uthel'nay|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Uthel'nay
step << Mage Cata
    .goto 1454/1,-4128.89990,1692.09998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Zirazi die Sternenseherin|r
    .train 3567 >>Erlernt |T135759:0|t[Teleportieren: Orgrimmar]
    .train 3563 >>Erlernen |T135766:0|t[Teleportierenieren: Unterstadt]
    .train 3566 >>Erlernen |T135765:0|t[Teleportierenieren: Donnerfels]
    .train 32272 >>Erlernen |T135761:0|t[Teleportierenieren: Silbermond]
    .target Zirazi the Star-Gazer
    .xp <24,1
step << Mage Cata
    .goto 1454/1,-4382.50000,1673.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Horthus|r
    .collect 17031,20 >>|cRXP_BUY_Kauft einen Stack von|r |T134419:0|t[Rune der Teleportation] |cRXP_BUY_von ihm|r
    .target Horthus
step << Priest Cata
    .goto 1454/1,-4297.60010,1863.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Liwatha|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Seer Liwatha
step << Warlock Cata
    .goto 1454,54.49,39.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Mirket|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Mirket
step << Paladin Cata
    .goto 1454/1,-4292.50000,1863.70007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Atohmo|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Sunwalker Atohmo
step << Hunter Cata
    .goto 1454/1,-4281.00000,1872.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nohi|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Nohi Plainswalker
step << Warrior Cata
    .goto 1454/1,-4284.00000,1867.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Nahu|r
    .trainer >> Trainiere deine Klassenfähigkeiten
    .target Nahu Ragehoof


    --Next section is flying back only for final Ashenvale quest, not worth xp wise. Nice bow reward for hunters though..

step
    #questguide
    .goto 85,49.21,72.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eitrigg|r innerhalb Die Feste Grommash
    .turnin 13841 >>Gebt die Quest Mit der Bitte um Entschuldigung ab
    .accept 13842 >>Akzeptiert die Quest Der Tod steht ihm gut
    .target Eitrigg
    .isQuestTurnedIn 13798
step
    #questguide
    .goto 85,53.62,78.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Gastwirtin Gryshka|r
    .home >>Setzt euren Ruhestein nach Orgrimmar
    .target Innkeeper Gryshka
    .isQuestTurnedIn 13841
step
    #questguide
    #completewith STV1
    .goto 85,49.64,59.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Doras|r
    .fly Splintertree Post >>Fliege nach Splitterholzposten
    .target Doras
    .zoneskip Ashenvale
    .isQuestTurnedIn 13841
step
    #questguide
    .goto 63,72.20,57.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Durak|r in der Höhle
    .complete 13842,1 --1/1 Durak Persuaded
    .skipgossip
    .target Durak
    .isQuestTurnedIn 13841
step
    #questguide
    .goto 63,72.22,56.76
    >>Folgt |cRXP_ENEMY_Durak|r bis er feindselig wird, dann tötet ihn
    .complete 13842,2 --1/1 Durak slain
    .mob Durak
    .isQuestTurnedIn 13841
step
    #questguide
    .hs >> Ruhestein nach Orgrimmar
    .use 6948
    .cooldown item,6948,>2
    .zoneskip Orgrimmar
    .isQuestTurnedIn 13841
step
    #questguide
    #completewith STV1
    .goto 63,73.18,61.58
    .fly Orgrimmar >>Fliege nach Orgrimmar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprich mit |cRXP_FRIENDLY_Vhulgra|r
    .target Vhulgra
    .cooldown item,6948,<0
    .zoneskip Orgrimmar
    .isQuestTurnedIn 13841
step
    #questguide
    .goto 85,49.20,72.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Eitrigg|r
    .turnin 13842 >>Gebt die Quest Der Tod steht ihm gut ab
    .target Eitrigg
    .isQuestTurnedIn 13841
step
    .goto 85,51.31,56.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bort|r
    .turnin 26416 >>Gebt die Quest Auf in den Dschungel ab
    .target Bort
    .isOnQuest 26416
    --STV breadcrumb quest
step
    #label STV1
    #optional
    .goto 85,51.31,56.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Bort|r
    .accept 26417 >>Akzeptiert die Quest Das Nördliche Schlingendorntal: Das Gefallene Reich
    .target Bort
    .isQuestTurnedIn 26416
    .isNotOnQuest 28688
    ]])
