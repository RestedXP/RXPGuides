if GetLocale() ~= "deDE" then return end
RXPGuides.RegisterGuide([[
#cata
#version 1
#group +Tol Barad
#name Tol Barad Täglich Quests

step << Horde
    #optional
    -- Peninsula quests
    .convertquest 27948,28684
    .convertquest 28275,28696
    .convertquest 27972,28680
    .convertquest 27987,28698
    .convertquest 27970,28678
    .convertquest 28059,28682
    .convertquest 27967,28691
    .convertquest 27978,28697
    .convertquest 28063,28685
    .convertquest 27992,28692
    .convertquest 28130,28686
    .convertquest 27971,28679
    .convertquest 27966,28690
    .convertquest 28050,28681
    .convertquest 27991,28700
    .convertquest 28137,28687
    .convertquest 27949,28689
    .convertquest 27944,28683
    .convertquest 27975,28695
    .convertquest 28065,28721
    .convertquest 27973,28694
    -- South Island quests
    .convertquest 28122,28657
    .convertquest 28117,28660
    .convertquest 28186,28665
    .convertquest 28165,28663
    .convertquest 28232,28670
    .convertquest 28120,28662
    .convertquest 28188,28668
    .convertquest 28185,28664
    .convertquest 28162,28658
    .convertquest 28118,28661
    .convertquest 28223,28669

step
    #completewith next
    .zone 84 >> Lauf nach Sturmwind << Alliance
	.zone 85 >> Reist nach Orgrimmar << Horde
	.zoneskip 245
step
    .goto 84,73.220,18.374 << Alliance
    .goto 85,47.405,39.261 << Horde
    .zone 245 >> Benutzt das Portal zu Tol Barad
step << Alliance
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergeant Grau|r, |cRXP_FRIENDLY_Commander Marcus Johnson|r, |cRXP_FRIENDLY_Camp Coordinator Brack|r und |cRXP_FRIENDLY_Lieutenant Farnsworth|r
    >>|TInterface/GossipFrame/DailyQuestIcon:0|t|cRXP_WARN_Akzeptiert alle verfügbaren Tagesquests im Baradinbasislager|r
    .questcount <6,28046,27948,28275,27972,27987,27970,28059,27967,27978,28063,27992,28130,27971,27966,28050,27991,28137,27949,27944,27975,28065,27973
    #loop
    .goto 245,72.933,60.937,5,0
    .goto 245,73.393,59.177,5,0
    .goto 245,73.726,57.574,5,0
    .goto 245,74.775,59.600,5,0
    .target Sergeant Gray
    .target Commander Marcus Johnson
    .target Camp Coordinator Brack
    .target Lieutenant Farnsworth
step << Horde
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_3rd Offizier Kronkar|r, |cRXP_FRIENDLY_Commander Larmash|r, |cRXP_FRIENDLY_Captain Prug|r und |cRXP_FRIENDLY_Private Sarlosk|r
    >>|TInterface/GossipFrame/DailyQuestIcon:0|t|cRXP_WARN_Akzeptiert alle verfügbaren Tagesquests auf Höllschreis Griff|r
    .questcount <6,28693,27948,28275,27972,27987,27970,28059,27967,27978,28063,27992,28130,27971,27966,28050,27991,28137,27949,27944,27975,28065,27973
    #loop
    .goto 245,55.221,81.330,5,0
    .goto 245,53.526,80.582,5,0
    .goto 245,54.889,79.307,5,0
    .goto 245,55.779,78.475,5,0
    .target 3rd Officer Kronkar
    .target Commander Larmash
    .target Captain Prug
    .target Private Sarlosk
step << Alliance
    #completewith CommanderLargo
    .goto 245,75.26,44.80
    .subzone 5540 >> Reist zu Largos Warte
step << Alliance
    .isOnQuest 27987
    #loop
    .goto 245,77.6,54.1,60,0
    .goto 245,79.8,56.5,55,0
    .goto 245,81.4,49.1,30,0
    .goto 245,78.6,41.9,55,0
    >>Plündert die |cRXP_LOOT_Stacks of Kanonenkugeln|r am Boden
    .complete 27987,1 -- Stack of Cannonballs (4)
step << Alliance
    .isOnQuest 27978
    #loop
    .goto 245,77.24,49.46,60,0
    .goto 245,80.31,52.61,60,0
    .goto 245,82.23,48.44,45,0
    .goto 245,79.88,43.55,70,0
    >>Tötet |cRXP_ENEMY_Overlook Geister|r, |cRXP_ENEMY_Overlook Spectres|r und |cRXP_ENEMY_Ghastly Workers|r
    .complete 27978,1 -- Largo's Overlook Ghosts Slain (14)
    .mob Overlook Spirit
    .mob Overlook Spectre
    .mob Ghastly Worker
step << Alliance
    #label CommanderLargo
    .isOnQuest 27991
    .goto 245,78.594,42.031
    >>Tötet |cRXP_ENEMY_Commander Largo|r atop Largos Warte tower
    .complete 27991,1 -- Commander Largo slain (1)
    .mob Commander Largo
step << Alliance
    #completewith Seabass
    .subzone 5538 >> Reist zu Rostberg
step << Alliance
    .isOnQuest 28130
    #loop
    .goto 245,62.0,31.0,70,0 << Horde
    .goto 245,72.6,35.8,70,0 << Alliance
    .goto 245,67.4,34.0,70,0
    .goto 245,64.4,25.4,70,0
    .goto 245,72.2,25.8,70,0
    >>Tötet |cRXP_ENEMY_Suspicious Villagers|r, |cRXP_ENEMY_Apprehensive Workers|r, |cRXP_ENEMY_Rustberg Bandits|r und |cRXP_ENEMY_Rustberg Fishermen|r
    .complete 28130,1 -- Rustberg Village Residents slain (14)
    .mob Rustberg Bandit
    .mob Suspicious Villager
    .mob Rustberg Fisherman
    .mob Apprehensive Worker
step << Alliance
    #label Seabass
    .isOnQuest 28137
    #loop
    .goto 245,64.2,23.4,50,0 << Horde
    .goto 245,70.79,24.62,50,0 << Horde
    .goto 245,70.79,24.62,50,0 << Alliance
    .goto 245,64.2,23.4,50,0 << Alliance
    >>Tötet |cRXP_ENEMY_Rustberg Fishermen|r. Plündert sie für |cRXP_LOOT_Rustberg Seabass|r
    >>|cRXP_LOOT_Rustberg Seabass|r |cRXP_WARN_kann auch geplündert werden von|r |cRXP_PICK_String of Fisch|r
    .complete 28137,1 -- Rustberg Seabass (22)
    .mob Rustberg Fisherman
step << Alliance
    #completewith Tankslain
    .subzone 5534 >> Reist zum Kap der Verlorenen Hoffnung
step << Alliance
    .isOnQuest 27972
    #loop
    .goto 245,47.6,27.4,70,0
    .goto 245,50.4,21.6,70,0
    .goto 245,49.1,13.7,70,0
    .goto 245,41.6,16.2,70,0
    >>Plündert |cRXP_LOOT_Fässer Southsea Rum|r am Ufer und unter Wasser
    .complete 27972,1 -- Barrel of Southsea Rum (6)
step << Alliance
    .isOnQuest 27971
    #loop
    .goto 245,51.60,37.67,70,0
    .goto 245,49.14,28.63,70,0
    .goto 245,44.39,23.37,70,0
    >>Tötet |cRXP_ENEMY_Shipwrecked Sailors|r
    .complete 27971,1 -- Shipwrecked Sailors slain (8)
    .mob Shipwrecked Sailor
step << Alliance
    .isOnQuest 27970
    .goto 245,48.04,8.00
    >>Tötet |cRXP_ENEMY_Kapitän P. Harris|r auf dem Wrack
    .complete 27970,1 -- Captain P. Harris slain (1)
    .mob Captain P. Harris
step << Alliance
    #label Tankslain
    .isOnQuest 28050
    #loop
    .goto 245,51.4,24.2,80,0
    .goto 245,41.0,16.6,80,0
    .goto 245,49.0,13.4,80,0
    >>Tötet |cRXP_ENEMY_Tank|r
    >>|cRXP_ENEMY_Schutz|r |cRXP_WARN_ist ein Elite-Hai, der das Kap der Verlorenen Hoffnung bewacht|r
    .complete 28050,1 -- Tank slain (1)
    .unitscan Tank
step << Alliance
    #completewith KeepLordFarson
    .subzone 5539 >> Reist zu Farsonfestung
step << Alliance
    .isOnQuest 28063
    .goto 245,37.34,29.35
    >>Tötet |cRXP_ENEMY_Crazed Guards|r. Plündert sie für |cRXP_LOOT_Rusty Rifles|r
    >>|cRXP_LOOT_Rostige Gewehre|r |cRXP_WARN_können auch geplündert werden aus|r |cRXP_PICK_Gewehrgestelle|r
    >>|cRXP_WARN_Rennt weiter durch den Halten bis zum Abschluss|r
    .complete 28063,1 -- Rusty Rifle (12)
    .mob Crazed Guard
step << Alliance
    #label KeepLordFarson
    .isOnQuest 28059
    .goto 245,38.42,31.22,20,0
    .goto 245,35.64,30.22,10,0
    .goto 245,35.64,28.90,10,0
    .goto 245,36.12,27.30
    >>Tötet |cRXP_ENEMY_Festungslord Farson|r oben in der Festung
    .complete 28059,1 -- Keep Lord Farson slain (1)
    .mob Keep Lord Farson
step << Alliance
    #completewith ForemanWellson
    .subzone 5535 >> Reist zur Wellsons Werft
step << Alliance
    .isOnQuest 27973
    #loop
    .goto 245,28.8,43.5,70,0
    .goto 245,27.56,36.69,50,0
    .goto 245,25.00,36.69,50,0
    .goto 245,27.05,50.57,35,0
    .goto 245,25.03,48.20,45,0
    >>Tötet |cRXP_ENEMY_Ghastly Dockhands|r, |cRXP_ENEMY_Accursed Shipbuilders|r und |cRXP_ENEMY_Accursed Longshoremen|r. Plündert sie für |cRXP_LOOT_Shipyard Holz|r
    >>|cRXP_LOOT_Werftholz|r |cRXP_WARN_können auch vom Boden geplündert werden|r
    .complete 27973,1 -- Shipyard Lumber (15)
    .mob Ghastly Dockhand
    .mob Accursed Shipbuilder
    .mob Accursed Longshoreman
step << Alliance
    #completewith next
    .isOnQuest 28275
    #loop
    .goto 245,22.08,36.61,20,0
    .goto 245,21.76,47.89,20,0
    .vehicle 48283 >> |cRXP_WARN_Betretet|r |cRXP_FRIENDLY_Wellson Kanone|r
    .target Wellson Cannon
step << Alliance
    .isOnQuest 28275
    >>|cRXP_WARN_Wirkt|r |T252185:0|t[Kanonenschuss] (1) |cRXP_WARN_um die Versorgungsboote im Wasser zu zerstören|r
    .complete 28275,1 -- Wellson Supply Boats Destroyed (10)
step << Alliance
    #label ForemanWellson
    .isOnQuest 27975
    #loop
    .goto 245,30.6,44.6,50,0
    .goto 245,27.6,47.6,50,0
    .goto 245,30.6,44.6,70,0
    .goto 245,26.4,41.0,50,0
    >>Tötet |cRXP_ENEMY_Foreman Wellson|r
    >>|cRXP_ENEMY_Vorarbeiter Wellson|r |cRXP_WARN_patrouilliert die Wellsons Werft|r
    .complete 27975,1 -- Foreman Wellson slain (1)
    .unitscan Foreman Wellson
step << Horde
    #completewith FirstLieutenantConnor
    .subzone 5536 >> Reist zum Vergessenen Hügel
step << Horde
    .isOnQuest 27949
    #loop
    .goto 245,39.0,75.6,75,0
    .goto 245,27.6,66.0,75,0
    .goto 245,29.9,76.2,60,0
    .goto 245,39.9,83.5,75,0
    >>Klickt auf |cRXP_PICK_Forgotten Soldat's Tombstones|r überall in Vergessener Hügel
    .complete 27949,1 -- Forgotten Soldier's Tombstone (6)
step << Horde
    .isOnQuest 27966
    #loop
    .goto 245,39.0,75.6,75,0
    .goto 245,27.6,66.0,75,0
    .goto 245,29.9,76.2,60,0
    .goto 245,39.9,83.5,75,0
    >>Tötet |cRXP_ENEMY_Hungry Ghule|r, |cRXP_ENEMY_Forgotten Ghule|r, |cRXP_ENEMY_Wandering Seelen|r und |cRXP_ENEMY_Skeletal Beastmasters|r. Plündert sie für |cRXP_LOOT_Cursed Femurs|r
    .complete 27966,1 -- Cursed Femur (9)
    .mob Forgotten Ghoul
    .mob Wandering Soul
    .mob Skeletal Beastmaster
    .mob Hungry Ghoul
step << Horde
    #label FirstLieutenantConnor
    .isOnQuest 27967
    #loop
    .goto 245,38.51,77.49,40,0
    .goto 245,36.02,79.14,40,0
    >>Tötet |cRXP_ENEMY_First Lieutenant Connor|r
    >>|cRXP_ENEMY_Oberleutnant Connor|r |cRXP_WARN_patrouilliert|r
    .complete 27967,1 -- First Lieutenant Connor slain (1)
    .unitscan First Lieutenant Connor
step
    #completewith SiegeEngineScrap
    .subzone 5542 >> Reist zur Unruhigen Front
step << Alliance
    .isOnQuest 28046
    #loop
    .goto 245,39.23,61.12,60,0
    .goto 245,47.46,69.52,60,0
    .goto 245,43.90,60.75,60,0
    >>Tötet |cRXP_ENEMY_Restless Infantries|r
    .complete 28046,1 -- Restless Infantry slain (5)
    .mob Restless Infantry
step << Horde
    .isOnQuest 28693
    #loop
    .goto 245,47.46,69.52,60,0
    .goto 245,43.90,60.75,60,0
    .goto 245,39.23,61.12,60,0
    >>Tötet |cRXP_ENEMY_Restless Soldiers|r
    .complete 28693,1 -- Restless Soldier slain (5)
    .mob Restless Soldier
step
    #label SiegeEngineScrap
    .isOnQuest 27992
    #loop
    .goto 245,39.23,61.12,60,0 << Alliance
    .goto 245,47.46,69.52,60,0 << Alliance
    .goto 245,43.90,60.75,60,0 << Alliance
    .goto 245,47.46,69.52,60,0 << Horde
    .goto 245,43.90,60.75,60,0 << Horde
    .goto 245,39.23,61.12,60,0 << Horde
    .use 62829 >> |cRXP_WARN_Benutzt den|r |T134519:0|t[Magnetisierter Schrottsammler] |cRXP_WARN_während ihr an der Unruhigen Front seid. Dies wird|cRXP_LOOT_ Belagerungsmaschinenschrott|r auf dem Boden offenbaren|r
    >>|cRXP_WARN_Beachtet:|r |T134519:0|t[Magnetisierter Schrottsammler] |cRXP_WARN_enthüllt nicht immer|r |cRXP_LOOT_Belagerungsmaschinenschrott|r
    >>Plündert |cRXP_LOOT_Belagerungsmaschinenschrott|r vom Boden
    .complete 27992,1 -- Siege Engine Scrap (7)
step << Alliance
    #completewith FirstLieutenantConnor
    .subzone 5536 >> Reist zum Vergessenen Hügel
step << Alliance
    .isOnQuest 27949
    #loop
    .goto 245,39.0,75.6,75,0
    .goto 245,27.6,66.0,75,0
    .goto 245,29.9,76.2,60,0
    .goto 245,39.9,83.5,75,0
    >>Klickt auf |cRXP_PICK_Forgotten Soldat's Tombstones|r überall in Vergessener Hügel
    .complete 27949,1 -- Forgotten Soldier's Tombstone (6)
step << Alliance
    .isOnQuest 27966
    #loop
    .goto 245,39.0,75.6,75,0
    .goto 245,27.6,66.0,75,0
    .goto 245,29.9,76.2,60,0
    .goto 245,39.9,83.5,75,0
    >>Tötet |cRXP_ENEMY_Hungry Ghule|r, |cRXP_ENEMY_Forgotten Ghule|r, |cRXP_ENEMY_Wandering Seelen|r und |cRXP_ENEMY_Skeletal Beastmasters|r. Plündert sie für |cRXP_LOOT_Cursed Femurs|r
    .complete 27966,1 -- Cursed Femur (9)
    .mob Forgotten Ghoul
    .mob Wandering Soul
    .mob Skeletal Beastmaster
    .mob Hungry Ghoul
step << Alliance
    #label FirstLieutenantConnor
    .isOnQuest 27967
    #loop
    .goto 245,38.51,77.49,40,0
    .goto 245,36.02,79.14,40,0
    >>Tötet |cRXP_ENEMY_First Lieutenant Connor|r
    >>|cRXP_ENEMY_Oberleutnant Connor|r |cRXP_WARN_patrouilliert|r
    .complete 27967,1 -- First Lieutenant Connor slain (1)
    .unitscan First Lieutenant Connor
step << Alliance
    #completewith next
    .subzone 5537 >> Reist zum Finsterwald
step << Alliance
    .isOnQuest 27944
    #loop
    .goto 245,56.4,53.6,70,0
    .goto 245,54.5,58.8,70,0
    .goto 245,54.4,48.3,70,0
    .goto 245,63.8,53.4,70,0
    .goto 245,58.6,59.9,70,0
    >>Tötet |cRXP_ENEMY_Darkwood Lurkers|r
    .complete 27944,1 -- Darkwood Lurker slain (12)
    .mob Darkwood Lurker
step << Alliance
    .isOnQuest 27948
    #loop
    .goto 245,56.4,53.6,70,0
    .goto 245,54.5,58.8,70,0
    .goto 245,54.4,48.3,70,0
    .goto 245,63.8,53.4,70,0
    .goto 245,58.6,59.9,70,0
    >>Tötet |cRXP_ENEMY_Darkwood Broodmothers|r. Plündert sie für |cRXP_LOOT_Sticky Silk Glands|r
    .complete 27948,1 -- Sticky Silk Gland (4)
    .mob Darkwood Broodmother
step << Horde
    #completewith ForemanWellson
    .subzone 5535 >> Reist zur Wellsons Werft
step << Horde
    .isOnQuest 27973
    #loop
    .goto 245,28.8,43.5,70,0
    .goto 245,27.56,36.69,50,0
    .goto 245,25.00,36.69,50,0
    .goto 245,27.05,50.57,35,0
    .goto 245,25.03,48.20,45,0
    >>Tötet |cRXP_ENEMY_Ghastly Dockhands|r, |cRXP_ENEMY_Accursed Shipbuilders|r und |cRXP_ENEMY_Accursed Longshoremen|r. Plündert sie für |cRXP_LOOT_Shipyard Holz|r
    >>|cRXP_LOOT_Werftholz|r |cRXP_WARN_können auch vom Boden geplündert werden|r
    .complete 27973,1 -- Shipyard Lumber (15)
    .mob Ghastly Dockhand
    .mob Accursed Shipbuilder
    .mob Accursed Longshoreman
step << Horde
    #completewith next
    .isOnQuest 28275
    #loop
    .goto 245,22.08,36.61,20,0
    .goto 245,21.76,47.89,20,0
    .vehicle 48283 >> |cRXP_WARN_Betretet|r |cRXP_FRIENDLY_Wellson Kanone|r
    .target Wellson Cannon
step << Horde
    .isOnQuest 28275
    >>|cRXP_WARN_Wirkt|r |T252185:0|t[Kanonenschuss] (1) |cRXP_WARN_um die Versorgungsboote im Wasser zu zerstören|r
    .complete 28275,1 -- Wellson Supply Boats Destroyed (10)
step << Horde
    #label ForemanWellson
    .isOnQuest 27975
    #loop
    .goto 245,30.6,44.6,50,0
    .goto 245,27.6,47.6,50,0
    .goto 245,30.6,44.6,70,0
    .goto 245,26.4,41.0,50,0
    >>Tötet |cRXP_ENEMY_Foreman Wellson|r
    >>|cRXP_ENEMY_Vorarbeiter Wellson|r |cRXP_WARN_patrouilliert die Wellsons Werft|r
    .complete 27975,1 -- Foreman Wellson slain (1)
    .unitscan Foreman Wellson
step << Horde
    #completewith KeepLordFarson
    .subzone 5539 >> Reist zu Farsonfestung
step << Horde
    .isOnQuest 28063
    .goto 245,37.34,29.35
    >>Tötet |cRXP_ENEMY_Crazed Guards|r. Plündert sie für |cRXP_LOOT_Rusty Rifles|r
    >>|cRXP_LOOT_Rostige Gewehre|r |cRXP_WARN_können auch geplündert werden aus|r |cRXP_PICK_Gewehrgestelle|r
    >>|cRXP_WARN_Rennt weiter durch den Halten bis zum Abschluss|r
    .complete 28063,1 -- Rusty Rifle (12)
    .mob Crazed Guard
step << Horde
    #label KeepLordFarson
    .isOnQuest 28059
    .goto 245,38.42,31.22,20,0
    .goto 245,35.64,30.22,10,0
    .goto 245,35.64,28.90,10,0
    .goto 245,36.12,27.30
    >>Tötet |cRXP_ENEMY_Festungslord Farson|r oben in der Festung
    .complete 28059,1 -- Keep Lord Farson slain (1)
    .mob Keep Lord Farson
step << Horde
    #completewith Tankslain
    .subzone 5534 >> Reist zum Kap der Verlorenen Hoffnung
step << Horde
    .isOnQuest 27972
    #loop
    .goto 245,47.6,27.4,70,0
    .goto 245,50.4,21.6,70,0
    .goto 245,49.1,13.7,70,0
    .goto 245,41.6,16.2,70,0
    >>Plündert |cRXP_LOOT_Fässer Southsea Rum|r am Ufer und unter Wasser
    .complete 27972,1 -- Barrel of Southsea Rum (6)
step << Horde
    .isOnQuest 27971
    #loop
    .goto 245,51.60,37.67,70,0
    .goto 245,49.14,28.63,70,0
    .goto 245,44.39,23.37,70,0
    >>Tötet |cRXP_ENEMY_Shipwrecked Sailors|r
    .complete 27971,1 -- Shipwrecked Sailors slain (8)
    .mob Shipwrecked Sailor
step << Horde
    .isOnQuest 27970
    .goto 245,48.04,8.00
    >>Tötet |cRXP_ENEMY_Kapitän P. Harris|r auf dem Wrack
    .complete 27970,1 -- Captain P. Harris slain (1)
    .mob Captain P. Harris
step << Horde
    #label Tankslain
    .isOnQuest 28050
    #loop
    .goto 245,51.4,24.2,80,0
    .goto 245,41.0,16.6,80,0
    .goto 245,49.0,13.4,80,0
    >>Tötet |cRXP_ENEMY_Tank|r
    >>|cRXP_WARN_Tank ist ein Elite-Hai, der das Kap der Verlorenen Hoffnung patrouilliert|r
    .complete 28050,1 -- Tank slain (1)
    .unitscan Tank
step << Horde
    #completewith Seabass
    .subzone 5538 >> Reist zu Rostberg
step << Horde
    .isOnQuest 28130
    #loop
    .goto 245,62.0,31.0,70,0 << Horde
    .goto 245,72.6,35.8,70,0 << Alliance
    .goto 245,67.4,34.0,70,0
    .goto 245,64.4,25.4,70,0
    .goto 245,72.2,25.8,70,0
    >>Tötet |cRXP_ENEMY_Suspicious Villagers|r, |cRXP_ENEMY_Apprehensive Workers|r, |cRXP_ENEMY_Rustberg Bandits|r und |cRXP_ENEMY_Rustberg Fishermen|r
    .complete 28130,1 -- Rustberg Village Residents slain (14)
    .mob Rustberg Bandit
    .mob Suspicious Villager
    .mob Rustberg Fisherman
    .mob Apprehensive Worker
step << Horde
    #label Seabass
    .isOnQuest 28137
    #loop
    .goto 245,64.2,23.4,50,0 << Horde
    .goto 245,70.79,24.62,50,0 << Horde
    .goto 245,70.79,24.62,50,0 << Alliance
    .goto 245,64.2,23.4,50,0 << Alliance
    >>Tötet |cRXP_ENEMY_Rustberg Fishermen|r. Plündert sie für |cRXP_LOOT_Rustberg Seabass|r
    >>|cRXP_LOOT_Rustberg Seabass|r |cRXP_WARN_kann auch geplündert werden von|r |cRXP_PICK_String of Fisch|r
    .complete 28137,1 -- Rustberg Seabass (22)
    .mob Rustberg Fisherman
step << Horde
    #completewith CommanderLargo
    .goto 245,75.26,44.80
    .subzone 5540 >> Reist zu Largos Warte
step << Horde
    .isOnQuest 27987
    #loop
    .goto 245,77.6,54.1,60,0
    .goto 245,79.8,56.5,55,0
    .goto 245,81.4,49.1,30,0
    .goto 245,78.6,41.9,55,0
    >>Plündert die |cRXP_LOOT_Stacks of Kanonenkugeln|r am Boden
    .complete 27987,1 -- Stack of Cannonballs (4)
step << Horde
    .isOnQuest 27978
    #loop
    .goto 245,77.24,49.46,60,0
    .goto 245,80.31,52.61,60,0
    .goto 245,82.23,48.44,45,0
    .goto 245,79.88,43.55,70,0
    >>Tötet |cRXP_ENEMY_Overlook Geister|r, |cRXP_ENEMY_Overlook Spectres|r und |cRXP_ENEMY_Ghastly Workers|r
    .complete 27978,1 -- Largo's Overlook Ghosts Slain (14)
    .mob Overlook Spirit
    .mob Overlook Spectre
    .mob Ghastly Worker
step << Horde
    #label CommanderLargo
    .isOnQuest 27991
    .goto 245,78.594,42.031
    >>Tötet |cRXP_ENEMY_Commander Largo|r atop Largos Warte tower
    .complete 27991,1 -- Commander Largo slain (1)
    .mob Commander Largo
step << Horde
    #completewith next
    .subzone 5537 >> Reist zum Finsterwald
step << Horde
    .isOnQuest 27944
    #loop
    .goto 245,56.4,53.6,70,0
    .goto 245,54.5,58.8,70,0
    .goto 245,54.4,48.3,70,0
    .goto 245,63.8,53.4,70,0
    .goto 245,58.6,59.9,70,0
    >>Tötet |cRXP_ENEMY_Darkwood Lurkers|r
    .complete 27944,1 -- Darkwood Lurker slain (12)
    .mob Darkwood Lurker
step << Horde
    .isOnQuest 27948
    #loop
    .goto 245,56.4,53.6,70,0
    .goto 245,54.5,58.8,70,0
    .goto 245,54.4,48.3,70,0
    .goto 245,63.8,53.4,70,0
    .goto 245,58.6,59.9,70,0
    >>Tötet |cRXP_ENEMY_Darkwood Broodmothers|r. Plündert sie für |cRXP_LOOT_Sticky Silk Glands|r
    .complete 27948,1 -- Sticky Silk Gland (4)
    .mob Darkwood Broodmother
step << Alliance
    #completewith BaradinBaseCampTurnins
    .goto 245,69.14,57.86,150 >> Kehrt zum Baradin-Basislager zurück
    .subzoneskip 5545
step << Alliance
    .isQuestComplete 28275
    .goto 245,72.934,60.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergeant Grau|r
    .dailyturnin 28275 >> Gebt die Quest Bomben los! ab
    .target Sergeant Gray
step << Alliance
    .isQuestComplete 27987
    .goto 245,72.934,60.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergeant Grau|r
    .dailyturnin 27987 >> Gebt die Quest Kanonenkugel! ab
    .target Sergeant Gray
step << Alliance
    .isQuestComplete 27978
    .goto 245,72.934,60.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergeant Grau|r
    .dailyturnin 27978 >> Gebt die Quest Ghostbuster ab
    .target Sergeant Gray
step << Alliance
    .isQuestComplete 27991
    .goto 245,72.934,60.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergeant Grau|r
    .dailyturnin 27991 >> Gebt die Quest Nehmen the Die Warte Zurück ab
    .target Sergeant Gray
step << Alliance
    .isQuestComplete 27973
    .goto 245,72.934,60.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergeant Grau|r
    .dailyturnin 27973 >> Gebt die Quest Beobachten Raus For Splitter! ab
    .target Sergeant Gray
step << Alliance
    .isQuestComplete 27975
    .goto 245,72.934,60.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Sergeant Grau|r
    .dailyturnin 27975 >> Gebt die Quest WANTED: Vorarbeiter Wellson ab
    .target Sergeant Gray
step << Alliance
    .isQuestComplete 28059
    .goto 245,73.390,59.176
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Commander Marcus Johnson|r
    .dailyturnin 28059 >> Gebt die Quest Beanspruchen The Keep ab
    .target Commander Marcus Johnson
step << Alliance
    .isQuestComplete 28063
    .goto 245,73.390,59.176
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Commander Marcus Johnson|r
    .dailyturnin 28063 >> Gebt die Quest Verlassen No Waffe Behind ab
    .target Commander Marcus Johnson
step << Alliance
    .isQuestComplete 28130
    .goto 245,73.390,59.176
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Commander Marcus Johnson|r
    .dailyturnin 28130 >> Gebt die Quest Not The Friendliest Town ab
    .target Commander Marcus Johnson
step << Alliance
    .isQuestComplete 28137
    .goto 245,73.390,59.176
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Commander Marcus Johnson|r
    .dailyturnin 28137 >> Gebt die Quest Lehren A Man To Fisch.... Or Steal ab
    .target Commander Marcus Johnson
step << Alliance
    .isQuestComplete 28065
    .goto 245,73.390,59.176
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Commander Marcus Johnson|r
    .dailyturnin 28065 >> Gebt die Quest Gehen A Mile In Their Shoes ab
    .target Commander Marcus Johnson
step << Alliance
    .isQuestComplete 27948
    .goto 245,73.729,57.571
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Camp Coordinator Brack|r
    .dailyturnin 27948 >> Gebt die Quest A Klebrig Task ab
    .target Camp Coordinator Brack
step << Alliance
    .isQuestComplete 27972
    .goto 245,73.729,57.571
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Camp Coordinator Brack|r
    .dailyturnin 27972 >> Gebt die Quest Boosting Moral ab
    .target Camp Coordinator Brack
step << Alliance
    .isQuestComplete 27970
    .goto 245,73.729,57.571
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Camp Coordinator Brack|r
    .dailyturnin 27970 >> Gebt die Quest Kapitän P. Harris ab
    .target Camp Coordinator Brack
step << Alliance
    .isQuestComplete 27971
    .goto 245,73.729,57.571
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Camp Coordinator Brack|r
    .dailyturnin 27971 >> Gebt die Quest Rattern Their Cages ab
    .target Camp Coordinator Brack
step << Alliance
    .isQuestComplete 28050
    .goto 245,73.729,57.571
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Camp Coordinator Brack|r
    .dailyturnin 28050 >> Gebt die Quest Hai Schutz ab
    .target Camp Coordinator Brack
step << Alliance
    .isQuestComplete 27944
    .goto 245,73.729,57.571
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Camp Coordinator Brack|r
    .dailyturnin 27944 >> Gebt die Quest Thinning the Brood ab
    .target Camp Coordinator Brack
step << Alliance
    .isQuestComplete 28046
    .goto 245,74.776,59.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lieutenant Farnsworth|r
    .dailyturnin 28046 >> Gebt die Quest Beenden The Job ab
    .target Lieutenant Farnsworth
step << Alliance
    .isQuestComplete 27967
    .goto 245,74.776,59.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lieutenant Farnsworth|r
    .dailyturnin 27967 >> Gebt die Quest Oberleutnant Connor ab
    .target Lieutenant Farnsworth
step << Alliance
    .isQuestComplete 27992
    .goto 245,74.776,59.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lieutenant Farnsworth|r
    .dailyturnin 27992 >> Gebt die Quest Magnets, How Do They Arbeiten? ab
    .target Lieutenant Farnsworth
step << Alliance
    .isQuestComplete 27966
    .goto 245,74.776,59.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lieutenant Farnsworth|r
    .dailyturnin 27966 >> Gebt die Quest Bergen the Remains ab
    .target Lieutenant Farnsworth
step << Alliance
    #label BaradinBaseCampTurnins
    .isQuestComplete 27949
    .goto 245,74.776,59.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Lieutenant Farnsworth|r
    .dailyturnin 27949 >> Gebt die Quest The Forgotten ab
    .target Lieutenant Farnsworth
step << Horde
    #completewith HellscreamsGraspTurnins
    .goto 245,52.43,68.91,150 >> Kehrt zu Höllschreis Griff zurück
    .subzoneskip 5546
step << Horde
    .isQuestComplete 28693
    .goto 245,54.890,79.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Prug|r
    .dailyturnin 28693 >> Gebt die Quest Beenden The Job ab
    .target Captain Prug
step << Horde
    .isQuestComplete 27967
    .goto 245,54.890,79.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Prug|r
    .dailyturnin 27967 >> Gebt die Quest Oberleutnant Connor ab
    .target Captain Prug
step << Horde
    .isQuestComplete 27992
    .goto 245,54.890,79.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Prug|r
    .dailyturnin 27992 >> Gebt die Quest Magnets, How Do They Arbeiten? ab
    .target Captain Prug
step << Horde
    .isQuestComplete 27966
    .goto 245,54.890,79.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Prug|r
    .dailyturnin 27966 >> Gebt die Quest Bergen the Remains ab
    .target Captain Prug
step << Horde
    .isQuestComplete 27949
    .goto 245,54.890,79.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Captain Prug|r
    .dailyturnin 27949 >> Gebt die Quest The Forgotten ab
    .target Captain Prug
step << Horde
    .isQuestComplete 28275
    .goto 245,55.770,78.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Private Sarlosk|r
    .dailyturnin 28275 >> Gebt die Quest Bomben los! ab
    .target Private Sarlosk
step << Horde
    .isQuestComplete 27987
    .goto 245,55.770,78.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Private Sarlosk|r
    .dailyturnin 27987 >> Gebt die Quest Kanonenkugel! ab
    .target Private Sarlosk
step << Horde
    .isQuestComplete 27978
    .goto 245,55.770,78.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Private Sarlosk|r
    .dailyturnin 27978 >> Gebt die Quest Ghostbuster ab
    .target Private Sarlosk
step << Horde
    .isQuestComplete 27991
    .goto 245,55.770,78.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Private Sarlosk|r
    .dailyturnin 27991 >> Gebt die Quest Nehmen the Die Warte Zurück ab
    .target Private Sarlosk
step << Horde
    .isQuestComplete 27973
    .goto 245,55.770,78.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Private Sarlosk|r
    .dailyturnin 27973 >> Gebt die Quest Beobachten Raus For Splitter! ab
    .target Private Sarlosk
step << Horde
    .isQuestComplete 27975
    .goto 245,55.770,78.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Private Sarlosk|r
    .dailyturnin 27975 >> Gebt die Quest WANTED: Vorarbeiter Wellson ab
    .target Private Sarlosk
step << Horde
    .isQuestComplete 27948
    .goto 245,55.223,81.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_3rd Offizier Kronkar|r
    .dailyturnin 27948 >> Gebt die Quest A Klebrig Task ab
    .target 3rd Officer Kronkar
step << Horde
    .isQuestComplete 27972
    .goto 245,55.223,81.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_3rd Offizier Kronkar|r
    .dailyturnin 27972 >> Gebt die Quest Boosting Moral ab
    .target 3rd Officer Kronkar
step << Horde
    .isQuestComplete 27970
    .goto 245,55.223,81.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_3rd Offizier Kronkar|r
    .dailyturnin 27970 >> Gebt die Quest Kapitän P. Harris ab
    .target 3rd Officer Kronkar
step << Horde
    .isQuestComplete 27971
    .goto 245,55.223,81.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_3rd Offizier Kronkar|r
    .dailyturnin 27971 >> Gebt die Quest Rattern Their Cages ab
    .target 3rd Officer Kronkar
step << Horde
    .isQuestComplete 28050
    .goto 245,55.223,81.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_3rd Offizier Kronkar|r
    .dailyturnin 28050 >> Gebt die Quest Hai Schutz ab
    .target 3rd Officer Kronkar
step << Horde
    .isQuestComplete 27944
    .goto 245,55.223,81.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_3rd Offizier Kronkar|r
    .dailyturnin 27944 >> Gebt die Quest Thinning the Brood ab
    .target 3rd Officer Kronkar
step << Horde
    .isQuestComplete 28059
    .goto 245,53.535,80.569
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Commander Larmash|r
    .dailyturnin 28059 >> Gebt die Quest Beanspruchen The Keep ab
    .target Commander Larmash
step << Horde
    .isQuestComplete 28063
    .goto 245,53.535,80.569
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Commander Larmash|r
    .dailyturnin 28063 >> Gebt die Quest Verlassen No Waffe Behind ab
    .target Commander Larmash
step << Horde
    .isQuestComplete 28130
    .goto 245,53.535,80.569
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Commander Larmash|r
    .dailyturnin 28130 >> Gebt die Quest Not The Friendliest Town ab
    .target Commander Larmash
step << Horde
    .isQuestComplete 28137
    .goto 245,53.535,80.569
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Commander Larmash|r
    .dailyturnin 28137 >> Gebt die Quest Lehren A Man To Fisch.... Or Steal ab
    .target Commander Larmash
step << Horde
    #label HellscreamsGraspTurnins
    .isQuestComplete 28065
    .goto 245,53.535,80.569
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Commander Larmash|r
    .dailyturnin 28065 >> Gebt die Quest Gehen A Mile In Their Shoes ab
    .target Commander Larmash
step
    #completewith next
    .goto 245,66.83,81.42,30,0
    .goto 244,40.80,20.76
    .zone 244 >> |cRXP_WARN_Ihr habt heute alle täglichen Quests auf der Halbinsel Tol Barad abgeschlossen. Geht südlich nach Tol Barad, um dort weitere tägliche Quests abzuschließen|r
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_2nd Lieutenant Wansworth|r, |cRXP_FRIENDLY_Marshal Fallows|r, |cRXP_FRIENDLY_Sergeant Parker|r und |cRXP_FRIENDLY_Commander Stevens|r
    .daily 28186 >> Akzeptiert die Quest Verflucht Fesseln
    .daily 28165 >> Akzeptiert die Quest D-Blocken
    .daily 28185 >> Akzeptiert die Quest Svarnos
    .goto 244,53.108,46.414
    .target +2nd Lieutenant Wansworth
    .daily 28232 >> Akzeptiert die Quest Essen von unten
    .daily 28188 >> Akzeptiert die Quest Gefängnisaufstand
    .daily 28223 >> Akzeptiert die Quest Der Wächter
    .goto 244,53.517,47.011
    .target +Marshal Fallows
    .daily 28122 >> Akzeptiert die Quest Ein riesiges Problem
    .daily 28162 >> Akzeptiert die Quest Sumpfköder
    .daily 28163 >> Akzeptiert die Quest Die Essensreste
    .goto 244,54.568,46.338
    .target +Sergeant Parker
    .daily 28117 >> Akzeptiert die Quest Die Tiefen säubern
    .daily 28120 >> Akzeptiert die Quest Aus der Vergangenheit lernen
    .daily 28118 >> Akzeptiert die Quest Der eingesperrte Erzmagier
    .goto 244,54.385,45.623
    .target +Commander Stevens
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Staff Landsknecht Lazgar|r, |cRXP_FRIENDLY_Commander Zanoth|r, |cRXP_FRIENDLY_Private Garnoth|r und |cRXP_FRIENDLY_Drillmaster Razgoth|r
    .daily 28232 >> Akzeptiert die Quest Essen von unten
    .daily 28188 >> Akzeptiert die Quest Gefängnisaufstand
    .daily 28223 >> Akzeptiert die Quest Der Wächter
    .goto 244,48.719,53.631
    .target +Staff Sergeant Lazgar
    .daily 28122 >> Akzeptiert die Quest Ein riesiges Problem
    .daily 28162 >> Akzeptiert die Quest Sumpfköder
    .daily 28659 >> Akzeptiert die Quest Die Essensreste
    .goto 244,48.003,54.792
    .target +Commander Zanoth
    .daily 28117 >> Akzeptiert die Quest Die Tiefen säubern
    .daily 28120 >> Akzeptiert die Quest Aus der Vergangenheit lernen
    .daily 28118 >> Akzeptiert die Quest Der eingesperrte Erzmagier
    .goto 244,48.476,55.240
    .target +Private Garnoth
    .daily 28186 >> Akzeptiert die Quest Verflucht Fesseln
    .daily 28165 >> Akzeptiert die Quest D-Blocken
    .daily 28185 >> Akzeptiert die Quest Svarnos
    .goto 244,49.230,53.860
    .target +Drillmaster Razgoth
step
    #completewith GalusStaff
    .goto 244,61.330,50.108
    .subzone 5658 >> Betretet die Verfluchte Tiefen
step
    #completewith GalusStaff
    .isOnQuest 28117
    >>Tötet |cRXP_ENEMY_Captive Geister|r, |cRXP_ENEMY_Ghastly Convicts|r und |cRXP_ENEMY_Cellblock Oozes|r
    .complete 28117,1 -- Ghosts Slain (9)
    .mob Captive Spirit
    .mob Cellblock Ooze
    .mob Ghastly Convict
step
    #completewith GalusStaff
    .isOnQuest 28120
    >>Plündert die |cRXP_LOOT_Dusty Prison Journals|r vom Boden
    .complete 28120,1 -- Cursed Shackles (8)
step
    #label GalusStaff
    .isOnQuest 28118
    .goto 244,56.31,54.75
    >>Tötet |cRXP_ENEMY_Archmage Galus|r. Plündert sie für |cRXP_LOOT_Archmage Galus' Stab|r
    .complete 28118,1 -- Archmage Galus' Staff (1)
    .mob Archmage Galus
step
    #completewith next
    .isOnQuest 28117
    >>Tötet |cRXP_ENEMY_Captive Geister|r, |cRXP_ENEMY_Ghastly Convicts|r und |cRXP_ENEMY_Cellblock Oozes|r
    .complete 28117,1 -- Ghosts Slain (9)
    .mob Captive Spirit
    .mob Cellblock Ooze
    .mob Ghastly Convict
step
    #loop
    .goto 244,58.38,48.32,40,0
    .goto 244,58.33,54.84,40,0
    .isOnQuest 28120
    >>Plündert die |cRXP_LOOT_Dusty Prison Journals|r vom Boden
    .complete 28120,1 -- Cursed Shackles (8)
step
    #loop
    .goto 244,58.38,48.32,40,0
    .goto 244,58.33,54.84,40,0
    .isOnQuest 28117
    >>Tötet |cRXP_ENEMY_Captive Geister|r, |cRXP_ENEMY_Ghastly Convicts|r und |cRXP_ENEMY_Cellblock Oozes|r
    .complete 28117,1 -- Ghosts Slain (9)
    .mob Captive Spirit
    .mob Cellblock Ooze
    .mob Ghastly Convict
step
    #completewith SvarnosCollar
    .goto 244,42.722,38.648
    .subzone 5657 >> Betretet D-Blocken
step
    #completewith SvarnosCollar
    .isOnQuest 28165
    >>Tötet |cRXP_ENEMY_Demons|r
    .complete 28165,1 -- Demons slain (10)
    .mob Shivarra Destroyer
    .mob Svarnos
    .mob Imprisoned Imp
    .mob Disciple of Hate
    .mob Cell Watcher
    .mob Jailed Wrathguard
step
    #completewith SvarnosCollar
    .isOnQuest 28186
    >>Plündert die |cRXP_LOOT_Cursed Fesseln|r vom Boden
    .complete 28186,1 -- Cursed Shackles (8)
step
    #label SvarnosCollar
    .isOnQuest 28185
    .goto 244,48.26,30.75
    >>Tötet |cRXP_ENEMY_Svarnos|r. Plündert sie für |cRXP_LOOT_Svarnos' Verflucht Collar|r
    .complete 28185,1 -- Svarnos' Cursed Collar (1)
    .mob Svarnos
step
    #completewith next
    .isOnQuest 28165
    >>Tötet |cRXP_ENEMY_Demons|r
    .complete 28165,1 -- Demons slain (10)
    .mob Shivarra Destroyer
    .mob Svarnos
    .mob Imprisoned Imp
    .mob Disciple of Hate
    .mob Cell Watcher
    .mob Jailed Wrathguard
step
    .isOnQuest 28186
    #loop
    .goto 244,39.53,30.31,40,0
    .goto 244,39.63,27.50,40,0
    .goto 244,48.26,30.75,40,0
    >>Plündert die |cRXP_LOOT_Cursed Fesseln|r vom Boden
    .complete 28186,1 -- Cursed Shackles (8)
step
    .isOnQuest 28165
    #loop
    .goto 244,39.53,30.31,40,0
    .goto 244,39.63,27.50,40,0
    .goto 244,48.26,30.75,40,0
    >>Tötet |cRXP_ENEMY_Demons|r
    .complete 28165,1 -- Demons slain (10)
    .mob Shivarra Destroyer
    .mob Svarnos
    .mob Imprisoned Imp
    .mob Disciple of Hate
    .mob Cell Watcher
    .mob Jailed Wrathguard
step
    .isOnQuest 28162
    #loop
    .goto 244,39.8,55.0,70,0
    .goto 244,34.4,49.0,70,0
    .goto 244,39.6,40.2,70,0
    .goto 244,45.0,48.0,70,0
    >>Tötet |cRXP_ENEMY_Baradin Crocolisks|r. Plündert sie für |cRXP_LOOT_Crocolisk Hides|r
    .complete 28162,1 -- Crocolisk Hide (8)
    .mob Baradin Crocolisk
step
    #completewith WardensKeys
    .goto 244,43.93,70.10
    .subzone 5659 >> Betretet das Loch
step
    #completewith WardensKeys
    .isOnQuest 28188
    >>Tötet |cRXP_ENEMY_Prisoners|r innerhalb Das Loch
    .complete 28188,1 -- Prisoners Slain (10)
    .mob Imprisoned Worker
    .mob Warden Guard
    .mob Warden Silva
    .mob Exiled Mage
    .mob Demented Prisoner
step
    .isOnQuest 28232
    #completewith WardensKeys
    >>Tötet |cRXP_ENEMY_Imprisoned Workers|r. Plündert sie für |cRXP_LOOT_Cellblock Rations|r
    >>|cRXP_LOOT_Cellblock Rations|r |cRXP_WARN_können auch vom Boden geplündert werden|r
    .complete 28232,1 -- Cellblock Rations (12)
    .mob Imprisoned Worker
step
    #label WardensKeys
    .isOnQuest 28223
    .goto 244,37.375,71.036
    >>Tötet |cRXP_ENEMY_Warden Silva|r. Plündert sie für |cRXP_LOOT_Warden's Keys|r
    .complete 28223,1 -- Warden's Keys (1)
    .mob Warden Silva
step
    #completewith next
    .isOnQuest 28188
    >>Tötet |cRXP_ENEMY_Prisoners|r innerhalb Das Loch
    .complete 28188,1 -- Prisoners Slain (10)
    .mob Imprisoned Worker
    .mob Warden Guard
    .mob Warden Silva
    .mob Exiled Mage
    .mob Demented Prisoner
step
    #loop
    .goto 244,37.35,75.01,50,0
    .goto 244,37.28,78.18,50,0
    .goto 244,40.88,78.23,50,0
    .goto 244,46.15,81.49,50,0
    .isOnQuest 28232
    >>Tötet |cRXP_ENEMY_Imprisoned Workers|r. Plündert sie für |cRXP_LOOT_Cellblock Rations|r
    >>|cRXP_LOOT_Cellblock Rations|r |cRXP_WARN_können auch vom Boden geplündert werden|r
    .complete 28232,1 -- Cellblock Rations (12)
    .mob Imprisoned Worker
step
    #loop
    .goto 244,37.35,75.01,50,0
    .goto 244,37.28,78.18,50,0
    .goto 244,40.88,78.23,50,0
    .goto 244,46.15,81.49,50,0
    .isOnQuest 28188
    >>Tötet |cRXP_ENEMY_Prisoners|r innerhalb Das Loch
    .complete 28188,1 -- Prisoners Slain (10)
    .mob Imprisoned Worker
    .mob Warden Guard
    .mob Warden Silva
    .mob Exiled Mage
    .mob Demented Prisoner
step
    .isOnQuest 28163 << Alliance
    .isOnQuest 28659 << Horde
    #loop
    .goto 244,36.2,68.4,60,0 -- sw
    .goto 244,51.4,29.0,60,0 -- north
    .goto 244,64.8,63.8,60,0 -- se
    >>Tötet die |cRXP_ENEMY_Horde Infantry|r in der Erzraffinerie, Hüterwacht oder der Eisernen Garnison << Alliance
    >>Tötet die |cRXP_ENEMY_Allianz Infantry|r in der Erzraffinerie, Hüterwacht oder der Eisernen Garnison << Horde
    .complete 28163,1 << Alliance -- Horde Infantry slain (12)
    .complete 28659,1 << Horde -- Alliance Infantry slain (12)
    .mob Horde Druid Infantry << Alliance
    .mob Horde Rogue Infantry << Alliance
    .mob Horde Mage Infantry << Alliance
    .mob Horde Shaman Infantry << Alliance
    .mob Alliance Hunter Infantry << Horde
    .mob Alliance Warrior Infantry << Horde
    .mob Alliance Mage Infantry << Horde
    .mob Alliance Paladin Infantry << Horde
step
    .isOnQuest 28122
    #loop
    .goto 244,51.0,36.6,80,0
    .goto 244,34.2,38.4,80,0
    .goto 244,38.2,60.6,80,0
    .goto 244,62.0,58.0,80,0
    .goto 244,58.6,36.8,80,0
    >>Tötet |cRXP_ENEMY_Problim|r
    >>|cRXP_ENEMY_Problim|r |cRXP_WARN_patrouilliert entlang der Straße|r
    .complete 28122,1 -- Problim slain (1)
    .mob Problim
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_2nd Lieutenant Wansworth|r, |cRXP_FRIENDLY_Marshal Fallows|r, |cRXP_FRIENDLY_Sergeant Parker|r und |cRXP_FRIENDLY_Commander Stevens|r
    .dailyturnin 28186 >> Gebt die Quest Verflucht Fesseln ab
    .dailyturnin 28165 >> Gebt die Quest D-Blocken ab
    .dailyturnin 28185 >> Gebt die Quest Svarnos ab
    .goto 244,53.108,46.414
    .target +2nd Lieutenant Wansworth
    .dailyturnin 28232 >> Gebt die Quest Essen von unten ab
    .dailyturnin 28188 >> Gebt die Quest Gefängnisaufstand ab
    .dailyturnin 28223 >> Gebt die Quest Der Wächter ab
    .goto 244,53.517,47.011
    .target +Marshal Fallows
    .dailyturnin 28122 >> Gebt die Quest Ein riesiges Problem ab
    .dailyturnin 28162 >> Gebt die Quest Sumpfköder ab
    .dailyturnin 28163 >> Gebt die Quest Die Essensreste ab
    .goto 244,54.568,46.338
    .target +Sergeant Parker
    .dailyturnin 28117 >> Gebt die Quest Die Tiefen säubern ab
    .dailyturnin 28120 >> Gebt die Quest Aus der Vergangenheit lernen ab
    .dailyturnin 28118 >> Gebt die Quest Der eingesperrte Erzmagier ab
    .goto 244,54.385,45.623
    .target +Commander Stevens
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSprecht mit |cRXP_FRIENDLY_Staff Landsknecht Lazgar|r, |cRXP_FRIENDLY_Commander Zanoth|r, |cRXP_FRIENDLY_Private Garnoth|r und |cRXP_FRIENDLY_Drillmaster Razgoth|r
    .dailyturnin 28232 >> Gebt die Quest Essen von unten ab
    .dailyturnin 28188 >> Gebt die Quest Gefängnisaufstand ab
    .dailyturnin 28223 >> Gebt die Quest Der Wächter ab
    .goto 244,48.719,53.631
    .target +Staff Sergeant Lazgar
    .dailyturnin 28122 >> Gebt die Quest Ein riesiges Problem ab
    .dailyturnin 28162 >> Gebt die Quest Sumpfköder ab
    .dailyturnin 28659 >> Gebt die Quest Die Essensreste ab
    .goto 244,48.003,54.792
    .target +Commander Zanoth
    .dailyturnin 28117 >> Gebt die Quest Die Tiefen säubern ab
    .dailyturnin 28120 >> Gebt die Quest Aus der Vergangenheit lernen ab
    .dailyturnin 28118 >> Gebt die Quest Der eingesperrte Erzmagier ab
    .goto 244,48.476,55.240
    .target +Private Garnoth
    .dailyturnin 28186 >> Gebt die Quest Verflucht Fesseln ab
    .dailyturnin 28165 >> Gebt die Quest D-Blocken ab
    .dailyturnin 28185 >> Gebt die Quest Svarnos ab
    .goto 244,49.230,53.860
    .target +Drillmaster Razgoth
step
    +|cRXP_WARN_Ihr habt heute alle täglichen Quests für Tol Barad abgeschlossen|r
]])
