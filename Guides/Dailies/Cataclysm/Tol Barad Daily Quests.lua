if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#cata
#version 1
#group +Tol Barad
#name Tol Barad Daily Quests

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
    .zone 84 >> Travel to Stormwind << Alliance
	.zone 85 >> Travel to Orgrimmar << Horde
	.zoneskip 245
step
    .goto 84,73.220,18.374 << Alliance
    .goto 85,47.405,39.261 << Horde
    .zone 245 >> Take the portal to Tol Barad
step << Alliance
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Gray|r, |cRXP_FRIENDLY_Commander Marcus Johnson|r, |cRXP_FRIENDLY_Camp Coordinator Brack|r and |cRXP_FRIENDLY_Lieutenant Farnsworth|r
    >>|TInterface/GossipFrame/DailyQuestIcon:0|t|cRXP_WARN_Accept all of the available daily quests at the Baradin Base Camp|r
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
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_3rd Officer Kronkar|r, |cRXP_FRIENDLY_Commander Larmash|r, |cRXP_FRIENDLY_Captain Prug|r and |cRXP_FRIENDLY_Private Sarlosk|r
    >>|TInterface/GossipFrame/DailyQuestIcon:0|t|cRXP_WARN_Accept all of the available daily quests at Hellscream's Grasp|r
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
    .subzone 5540 >> Travel to Largo's Overlook
step << Alliance
    .isOnQuest 27987
    #loop
    .goto 245,77.6,54.1,60,0
    .goto 245,79.8,56.5,55,0
    .goto 245,81.4,49.1,30,0
    .goto 245,78.6,41.9,55,0
    >>Loot the |cRXP_LOOT_Stacks of Cannonballs|r on the ground
    .complete 27987,1 -- Stack of Cannonballs (4)
step << Alliance
    .isOnQuest 27978
    #loop
    .goto 245,77.24,49.46,60,0
    .goto 245,80.31,52.61,60,0
    .goto 245,82.23,48.44,45,0
    .goto 245,79.88,43.55,70,0
    >>Kill |cRXP_ENEMY_Overlook Spirits|r, |cRXP_ENEMY_Overlook Spectres|r and |cRXP_ENEMY_Ghastly Workers|r
    .complete 27978,1 -- Largo's Overlook Ghosts Slain (14)
    .mob Overlook Spirit
    .mob Overlook Spectre
    .mob Ghastly Worker
step << Alliance
    #label CommanderLargo
    .isOnQuest 27991
    .goto 245,78.594,42.031
    >>Kill |cRXP_ENEMY_Commander Largo|r atop Largo's Overlook tower
    .complete 27991,1 -- Commander Largo slain (1)
    .mob Commander Largo
step << Alliance
    #completewith Seabass
    .subzone 5538 >> Travel to Rustberg Village
step << Alliance
    .isOnQuest 28130
    #loop
    .goto 245,62.0,31.0,70,0 << Horde
    .goto 245,72.6,35.8,70,0 << Alliance
    .goto 245,67.4,34.0,70,0
    .goto 245,64.4,25.4,70,0
    .goto 245,72.2,25.8,70,0
    >>Kill |cRXP_ENEMY_Suspicious Villagers|r, |cRXP_ENEMY_Apprehensive Workers|r, |cRXP_ENEMY_Rustberg Bandits|r and |cRXP_ENEMY_Rustberg Fishermen|r
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
    >>Kill |cRXP_ENEMY_Rustberg Fishermen|r. Loot them for their |cRXP_LOOT_Rustberg Seabass|r
    >>|cRXP_LOOT_Rustberg Seabass|r |cRXP_WARN_can also be looted from the|r |cRXP_PICK_String of Fish|r
    .complete 28137,1 -- Rustberg Seabass (22)
    .mob Rustberg Fisherman
step << Alliance
    #completewith Tankslain
    .subzone 5534 >> Travel to the Cape of Lost Hope
step << Alliance
    .isOnQuest 27972
    #loop
    .goto 245,47.6,27.4,70,0
    .goto 245,50.4,21.6,70,0
    .goto 245,49.1,13.7,70,0
    .goto 245,41.6,16.2,70,0
    >>Loot the |cRXP_LOOT_Barrels of Southsea Rum|r on the shoreline and underwater
    .complete 27972,1 -- Barrel of Southsea Rum (6)
step << Alliance
    .isOnQuest 27971
    #loop
    .goto 245,51.60,37.67,70,0
    .goto 245,49.14,28.63,70,0
    .goto 245,44.39,23.37,70,0
    >>Kill |cRXP_ENEMY_Shipwrecked Sailors|r
    .complete 27971,1 -- Shipwrecked Sailors slain (8)
    .mob Shipwrecked Sailor
step << Alliance
    .isOnQuest 27970
    .goto 245,48.04,8.00
    >>Kill |cRXP_ENEMY_Captain P. Harris|r on the shipwreck
    .complete 27970,1 -- Captain P. Harris slain (1)
    .mob Captain P. Harris
step << Alliance
    #label Tankslain
    .isOnQuest 28050
    #loop
    .goto 245,51.4,24.2,80,0
    .goto 245,41.0,16.6,80,0
    .goto 245,49.0,13.4,80,0
    >>Kill |cRXP_ENEMY_Tank|r
    >>|cRXP_ENEMY_Tank|r |cRXP_WARN_is an elite shark which patrols the Cape of Lost Hope|r
    .complete 28050,1 -- Tank slain (1)
    .unitscan Tank
step << Alliance
    #completewith KeepLordFarson
    .subzone 5539 >> Travel to Farson Hold
step << Alliance
    .isOnQuest 28063
    .goto 245,37.34,29.35
    >>Kill |cRXP_ENEMY_Crazed Guards|r. Loot them for their |cRXP_LOOT_Rusty Rifles|r
    >>|cRXP_LOOT_Rusty Rifles|r |cRXP_WARN_can also be looted from the|r |cRXP_PICK_Racks of Rifles|r
    >>|cRXP_WARN_Continue to run around through the Hold until complete|r
    .complete 28063,1 -- Rusty Rifle (12)
    .mob Crazed Guard
step << Alliance
    #label KeepLordFarson
    .isOnQuest 28059
    .goto 245,38.42,31.22,20,0
    .goto 245,35.64,30.22,10,0
    .goto 245,35.64,28.90,10,0
    .goto 245,36.12,27.30
    >>Kill |cRXP_ENEMY_Keep Lord Farson|r upstairs in the Keep
    .complete 28059,1 -- Keep Lord Farson slain (1)
    .mob Keep Lord Farson
step << Alliance
    #completewith ForemanWellson
    .subzone 5535 >> Travel to the Wellson Shipyard
step << Alliance
    .isOnQuest 27973
    #loop
    .goto 245,28.8,43.5,70,0
    .goto 245,27.56,36.69,50,0
    .goto 245,25.00,36.69,50,0
    .goto 245,27.05,50.57,35,0
    .goto 245,25.03,48.20,45,0
    >>Kill |cRXP_ENEMY_Ghastly Dockhands|r, |cRXP_ENEMY_Accursed Shipbuilders|r and |cRXP_ENEMY_Accursed Longshoremen|r. Loot them for their |cRXP_LOOT_Shipyard Lumber|r
    >>|cRXP_LOOT_Shipyard Lumber|r |cRXP_WARN_can also be looted from the ground|r
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
    .vehicle 48283 >> |cRXP_WARN_Enter a|r |cRXP_FRIENDLY_Wellson Cannon|r
    .target Wellson Cannon
step << Alliance
    .isOnQuest 28275
    >>|cRXP_WARN_Cast|r |T252185:0|t[Cannon Blast] (1) |cRXP_WARN_to destroy the Supply Boats in the water|r
    .complete 28275,1 -- Wellson Supply Boats Destroyed (10)
step << Alliance
    #label ForemanWellson
    .isOnQuest 27975
    #loop
    .goto 245,30.6,44.6,50,0
    .goto 245,27.6,47.6,50,0
    .goto 245,30.6,44.6,70,0
    .goto 245,26.4,41.0,50,0
    >>Kill |cRXP_ENEMY_Foreman Wellson|r
    >>|cRXP_ENEMY_Foreman Wellson|r |cRXP_WARN_patrols the Wellson Shipyard|r
    .complete 27975,1 -- Foreman Wellson slain (1)
    .unitscan Foreman Wellson
step << Horde
    #completewith FirstLieutenantConnor
    .subzone 5536 >> Travel to Forgotten Hill
step << Horde
    .isOnQuest 27949
    #loop
    .goto 245,39.0,75.6,75,0
    .goto 245,27.6,66.0,75,0
    .goto 245,29.9,76.2,60,0
    .goto 245,39.9,83.5,75,0
    >>Click on the |cRXP_PICK_Forgotten Soldier's Tombstones|r throughout Forgotten Hill
    .complete 27949,1 -- Forgotten Soldier's Tombstone (6)
step << Horde
    .isOnQuest 27966
    #loop
    .goto 245,39.0,75.6,75,0
    .goto 245,27.6,66.0,75,0
    .goto 245,29.9,76.2,60,0
    .goto 245,39.9,83.5,75,0
    >>Kill |cRXP_ENEMY_Hungry Ghouls|r, |cRXP_ENEMY_Forgotten Ghouls|r, |cRXP_ENEMY_Wandering Souls|r and |cRXP_ENEMY_Skeletal Beastmasters|r. Loot them for their |cRXP_LOOT_Cursed Femurs|r
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
    >>Kill |cRXP_ENEMY_First Lieutenant Connor|r
    >>|cRXP_ENEMY_First Lieutenant Connor|r |cRXP_WARN_patrols slightly|r
    .complete 27967,1 -- First Lieutenant Connor slain (1)
    .unitscan First Lieutenant Connor
step
    #completewith SiegeEngineScrap
    .subzone 5542 >> Travel to the Restless Front
step << Alliance
    .isOnQuest 28046
    #loop
    .goto 245,39.23,61.12,60,0
    .goto 245,47.46,69.52,60,0
    .goto 245,43.90,60.75,60,0
    >>Kill |cRXP_ENEMY_Restless Infantries|r
    .complete 28046,1 -- Restless Infantry slain (5)
    .mob Restless Infantry
step << Horde
    .isOnQuest 28693
    #loop
    .goto 245,47.46,69.52,60,0
    .goto 245,43.90,60.75,60,0
    .goto 245,39.23,61.12,60,0
    >>Kill |cRXP_ENEMY_Restless Soldiers|r
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
    .use 62829 >> |cRXP_WARN_Use the|r |T134519:0|t[Magnetized Scrap Collector] |cRXP_WARN_while at the Restless Front. This will cause |cRXP_LOOT_Siege Engine Scraps|r to be revealed on the ground|r
    >>|cRXP_WARN_Note the|r |T134519:0|t[Magnetized Scrap Collector] |cRXP_WARN_doesn't always reveal|r |cRXP_LOOT_Siege Engine Scraps|r
    >>Loot the |cRXP_LOOT_Siege Engine Scraps|r on the ground
    .complete 27992,1 -- Siege Engine Scrap (7)
step << Alliance
    #completewith FirstLieutenantConnor
    .subzone 5536 >> Travel to Forgotten Hill
step << Alliance
    .isOnQuest 27949
    #loop
    .goto 245,39.0,75.6,75,0
    .goto 245,27.6,66.0,75,0
    .goto 245,29.9,76.2,60,0
    .goto 245,39.9,83.5,75,0
    >>Click on the |cRXP_PICK_Forgotten Soldier's Tombstones|r throughout Forgotten Hill
    .complete 27949,1 -- Forgotten Soldier's Tombstone (6)
step << Alliance
    .isOnQuest 27966
    #loop
    .goto 245,39.0,75.6,75,0
    .goto 245,27.6,66.0,75,0
    .goto 245,29.9,76.2,60,0
    .goto 245,39.9,83.5,75,0
    >>Kill |cRXP_ENEMY_Hungry Ghouls|r, |cRXP_ENEMY_Forgotten Ghouls|r, |cRXP_ENEMY_Wandering Souls|r and |cRXP_ENEMY_Skeletal Beastmasters|r. Loot them for their |cRXP_LOOT_Cursed Femurs|r
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
    >>Kill |cRXP_ENEMY_First Lieutenant Connor|r
    >>|cRXP_ENEMY_First Lieutenant Connor|r |cRXP_WARN_patrols slightly|r
    .complete 27967,1 -- First Lieutenant Connor slain (1)
    .unitscan First Lieutenant Connor
step << Alliance
    #completewith next
    .subzone 5537 >> Travel to The Darkwood
step << Alliance
    .isOnQuest 27944
    #loop
    .goto 245,56.4,53.6,70,0
    .goto 245,54.5,58.8,70,0
    .goto 245,54.4,48.3,70,0
    .goto 245,63.8,53.4,70,0
    .goto 245,58.6,59.9,70,0
    >>Kill |cRXP_ENEMY_Darkwood Lurkers|r
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
    >>Kill |cRXP_ENEMY_Darkwood Broodmothers|r. Loot them for their |cRXP_LOOT_Sticky Silk Glands|r
    .complete 27948,1 -- Sticky Silk Gland (4)
    .mob Darkwood Broodmother
step << Horde
    #completewith ForemanWellson
    .subzone 5535 >> Travel to the Wellson Shipyard
step << Horde
    .isOnQuest 27973
    #loop
    .goto 245,28.8,43.5,70,0
    .goto 245,27.56,36.69,50,0
    .goto 245,25.00,36.69,50,0
    .goto 245,27.05,50.57,35,0
    .goto 245,25.03,48.20,45,0
    >>Kill |cRXP_ENEMY_Ghastly Dockhands|r, |cRXP_ENEMY_Accursed Shipbuilders|r and |cRXP_ENEMY_Accursed Longshoremen|r. Loot them for their |cRXP_LOOT_Shipyard Lumber|r
    >>|cRXP_LOOT_Shipyard Lumber|r |cRXP_WARN_can also be looted from the ground|r
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
    .vehicle 48283 >> |cRXP_WARN_Enter a|r |cRXP_FRIENDLY_Wellson Cannon|r
    .target Wellson Cannon
step << Horde
    .isOnQuest 28275
    >>|cRXP_WARN_Cast|r |T252185:0|t[Cannon Blast] (1) |cRXP_WARN_to destroy the Supply Boats in the water|r
    .complete 28275,1 -- Wellson Supply Boats Destroyed (10)
step << Horde
    #label ForemanWellson
    .isOnQuest 27975
    #loop
    .goto 245,30.6,44.6,50,0
    .goto 245,27.6,47.6,50,0
    .goto 245,30.6,44.6,70,0
    .goto 245,26.4,41.0,50,0
    >>Kill |cRXP_ENEMY_Foreman Wellson|r
    >>|cRXP_ENEMY_Foreman Wellson|r |cRXP_WARN_patrols the Wellson Shipyard|r
    .complete 27975,1 -- Foreman Wellson slain (1)
    .unitscan Foreman Wellson
step << Horde
    #completewith KeepLordFarson
    .subzone 5539 >> Travel to Farson Hold
step << Horde
    .isOnQuest 28063
    .goto 245,37.34,29.35
    >>Kill |cRXP_ENEMY_Crazed Guards|r. Loot them for their |cRXP_LOOT_Rusty Rifles|r
    >>|cRXP_LOOT_Rusty Rifles|r |cRXP_WARN_can also be looted from the|r |cRXP_PICK_Racks of Rifles|r
    >>|cRXP_WARN_Continue to run around through the Hold until complete|r
    .complete 28063,1 -- Rusty Rifle (12)
    .mob Crazed Guard
step << Horde
    #label KeepLordFarson
    .isOnQuest 28059
    .goto 245,38.42,31.22,20,0
    .goto 245,35.64,30.22,10,0
    .goto 245,35.64,28.90,10,0
    .goto 245,36.12,27.30
    >>Kill |cRXP_ENEMY_Keep Lord Farson|r upstairs in the Keep
    .complete 28059,1 -- Keep Lord Farson slain (1)
    .mob Keep Lord Farson
step << Horde
    #completewith Tankslain
    .subzone 5534 >> Travel to the Cape of Lost Hope
step << Horde
    .isOnQuest 27972
    #loop
    .goto 245,47.6,27.4,70,0
    .goto 245,50.4,21.6,70,0
    .goto 245,49.1,13.7,70,0
    .goto 245,41.6,16.2,70,0
    >>Loot the |cRXP_LOOT_Barrels of Southsea Rum|r on the shoreline and underwater
    .complete 27972,1 -- Barrel of Southsea Rum (6)
step << Horde
    .isOnQuest 27971
    #loop
    .goto 245,51.60,37.67,70,0
    .goto 245,49.14,28.63,70,0
    .goto 245,44.39,23.37,70,0
    >>Kill |cRXP_ENEMY_Shipwrecked Sailors|r
    .complete 27971,1 -- Shipwrecked Sailors slain (8)
    .mob Shipwrecked Sailor
step << Horde
    .isOnQuest 27970
    .goto 245,48.04,8.00
    >>Kill |cRXP_ENEMY_Captain P. Harris|r on the shipwreck
    .complete 27970,1 -- Captain P. Harris slain (1)
    .mob Captain P. Harris
step << Horde
    #label Tankslain
    .isOnQuest 28050
    #loop
    .goto 245,51.4,24.2,80,0
    .goto 245,41.0,16.6,80,0
    .goto 245,49.0,13.4,80,0
    >>Kill |cRXP_ENEMY_Tank|r
    >>|cRXP_WARN_Tank is an elite shark which patrols the Cape of Lost Hope|r
    .complete 28050,1 -- Tank slain (1)
    .unitscan Tank
step << Horde
    #completewith Seabass
    .subzone 5538 >> Travel to Rustberg Village
step << Horde
    .isOnQuest 28130
    #loop
    .goto 245,62.0,31.0,70,0 << Horde
    .goto 245,72.6,35.8,70,0 << Alliance
    .goto 245,67.4,34.0,70,0
    .goto 245,64.4,25.4,70,0
    .goto 245,72.2,25.8,70,0
    >>Kill |cRXP_ENEMY_Suspicious Villagers|r, |cRXP_ENEMY_Apprehensive Workers|r, |cRXP_ENEMY_Rustberg Bandits|r and |cRXP_ENEMY_Rustberg Fishermen|r
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
    >>Kill |cRXP_ENEMY_Rustberg Fishermen|r. Loot them for their |cRXP_LOOT_Rustberg Seabass|r
    >>|cRXP_LOOT_Rustberg Seabass|r |cRXP_WARN_can also be looted from the|r |cRXP_PICK_String of Fish|r
    .complete 28137,1 -- Rustberg Seabass (22)
    .mob Rustberg Fisherman
step << Horde
    #completewith CommanderLargo
    .goto 245,75.26,44.80
    .subzone 5540 >> Travel to Largo's Overlook
step << Horde
    .isOnQuest 27987
    #loop
    .goto 245,77.6,54.1,60,0
    .goto 245,79.8,56.5,55,0
    .goto 245,81.4,49.1,30,0
    .goto 245,78.6,41.9,55,0
    >>Loot the |cRXP_LOOT_Stacks of Cannonballs|r on the ground
    .complete 27987,1 -- Stack of Cannonballs (4)
step << Horde
    .isOnQuest 27978
    #loop
    .goto 245,77.24,49.46,60,0
    .goto 245,80.31,52.61,60,0
    .goto 245,82.23,48.44,45,0
    .goto 245,79.88,43.55,70,0
    >>Kill |cRXP_ENEMY_Overlook Spirits|r, |cRXP_ENEMY_Overlook Spectres|r and |cRXP_ENEMY_Ghastly Workers|r
    .complete 27978,1 -- Largo's Overlook Ghosts Slain (14)
    .mob Overlook Spirit
    .mob Overlook Spectre
    .mob Ghastly Worker
step << Horde
    #label CommanderLargo
    .isOnQuest 27991
    .goto 245,78.594,42.031
    >>Kill |cRXP_ENEMY_Commander Largo|r atop Largo's Overlook tower
    .complete 27991,1 -- Commander Largo slain (1)
    .mob Commander Largo
step << Horde
    #completewith next
    .subzone 5537 >> Travel to The Darkwood
step << Horde
    .isOnQuest 27944
    #loop
    .goto 245,56.4,53.6,70,0
    .goto 245,54.5,58.8,70,0
    .goto 245,54.4,48.3,70,0
    .goto 245,63.8,53.4,70,0
    .goto 245,58.6,59.9,70,0
    >>Kill |cRXP_ENEMY_Darkwood Lurkers|r
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
    >>Kill |cRXP_ENEMY_Darkwood Broodmothers|r. Loot them for their |cRXP_LOOT_Sticky Silk Glands|r
    .complete 27948,1 -- Sticky Silk Gland (4)
    .mob Darkwood Broodmother
step << Alliance
    #completewith BaradinBaseCampTurnins
    .goto 245,69.14,57.86,150 >> Return to the Baradin Base Camp
    .subzoneskip 5545
step << Alliance
    .isQuestComplete 28275
    .goto 245,72.934,60.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Gray|r
    .dailyturnin 28275 >> Turn in Bombs Away!
    .target Sergeant Gray
step << Alliance
    .isQuestComplete 27987
    .goto 245,72.934,60.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Gray|r
    .dailyturnin 27987 >> Turn in Cannonball!
    .target Sergeant Gray
step << Alliance
    .isQuestComplete 27978
    .goto 245,72.934,60.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Gray|r
    .dailyturnin 27978 >> Turn in Ghostbuster
    .target Sergeant Gray
step << Alliance
    .isQuestComplete 27991
    .goto 245,72.934,60.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Gray|r
    .dailyturnin 27991 >> Turn in Taking the Overlook Back
    .target Sergeant Gray
step << Alliance
    .isQuestComplete 27973
    .goto 245,72.934,60.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Gray|r
    .dailyturnin 27973 >> Turn in Watch Out For Splinters!
    .target Sergeant Gray
step << Alliance
    .isQuestComplete 27975
    .goto 245,72.934,60.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Gray|r
    .dailyturnin 27975 >> Turn in WANTED: Foreman Wellson
    .target Sergeant Gray
step << Alliance
    .isQuestComplete 28059
    .goto 245,73.390,59.176
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Marcus Johnson|r
    .dailyturnin 28059 >> Turn in Claiming The Keep
    .target Commander Marcus Johnson
step << Alliance
    .isQuestComplete 28063
    .goto 245,73.390,59.176
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Marcus Johnson|r
    .dailyturnin 28063 >> Turn in Leave No Weapon Behind
    .target Commander Marcus Johnson
step << Alliance
    .isQuestComplete 28130
    .goto 245,73.390,59.176
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Marcus Johnson|r
    .dailyturnin 28130 >> Turn in Not The Friendliest Town
    .target Commander Marcus Johnson
step << Alliance
    .isQuestComplete 28137
    .goto 245,73.390,59.176
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Marcus Johnson|r
    .dailyturnin 28137 >> Turn in Teach A Man To Fish.... Or Steal
    .target Commander Marcus Johnson
step << Alliance
    .isQuestComplete 28065
    .goto 245,73.390,59.176
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Marcus Johnson|r
    .dailyturnin 28065 >> Turn in Walk A Mile In Their Shoes
    .target Commander Marcus Johnson
step << Alliance
    .isQuestComplete 27948
    .goto 245,73.729,57.571
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Camp Coordinator Brack|r
    .dailyturnin 27948 >> Turn in A Sticky Task
    .target Camp Coordinator Brack
step << Alliance
    .isQuestComplete 27972
    .goto 245,73.729,57.571
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Camp Coordinator Brack|r
    .dailyturnin 27972 >> Turn in Boosting Morale
    .target Camp Coordinator Brack
step << Alliance
    .isQuestComplete 27970
    .goto 245,73.729,57.571
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Camp Coordinator Brack|r
    .dailyturnin 27970 >> Turn in Captain P. Harris
    .target Camp Coordinator Brack
step << Alliance
    .isQuestComplete 27971
    .goto 245,73.729,57.571
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Camp Coordinator Brack|r
    .dailyturnin 27971 >> Turn in Rattling Their Cages
    .target Camp Coordinator Brack
step << Alliance
    .isQuestComplete 28050
    .goto 245,73.729,57.571
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Camp Coordinator Brack|r
    .dailyturnin 28050 >> Turn in Shark Tank
    .target Camp Coordinator Brack
step << Alliance
    .isQuestComplete 27944
    .goto 245,73.729,57.571
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Camp Coordinator Brack|r
    .dailyturnin 27944 >> Turn in Thinning the Brood
    .target Camp Coordinator Brack
step << Alliance
    .isQuestComplete 28046
    .goto 245,74.776,59.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farnsworth|r
    .dailyturnin 28046 >> Turn in Finish The Job
    .target Lieutenant Farnsworth
step << Alliance
    .isQuestComplete 27967
    .goto 245,74.776,59.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farnsworth|r
    .dailyturnin 27967 >> Turn in First Lieutenant Connor
    .target Lieutenant Farnsworth
step << Alliance
    .isQuestComplete 27992
    .goto 245,74.776,59.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farnsworth|r
    .dailyturnin 27992 >> Turn in Magnets, How Do They Work?
    .target Lieutenant Farnsworth
step << Alliance
    .isQuestComplete 27966
    .goto 245,74.776,59.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farnsworth|r
    .dailyturnin 27966 >> Turn in Salvaging the Remains
    .target Lieutenant Farnsworth
step << Alliance
    #label BaradinBaseCampTurnins
    .isQuestComplete 27949
    .goto 245,74.776,59.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Farnsworth|r
    .dailyturnin 27949 >> Turn in The Forgotten
    .target Lieutenant Farnsworth
step << Horde
    #completewith HellscreamsGraspTurnins
    .goto 245,52.43,68.91,150 >> Return to Hellscream's Grasp
    .subzoneskip 5546
step << Horde
    .isQuestComplete 28693
    .goto 245,54.890,79.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Prug|r
    .dailyturnin 28693 >> Turn in Finish The Job
    .target Captain Prug
step << Horde
    .isQuestComplete 27967
    .goto 245,54.890,79.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Prug|r
    .dailyturnin 27967 >> Turn in First Lieutenant Connor
    .target Captain Prug
step << Horde
    .isQuestComplete 27992
    .goto 245,54.890,79.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Prug|r
    .dailyturnin 27992 >> Turn in Magnets, How Do They Work?
    .target Captain Prug
step << Horde
    .isQuestComplete 27966
    .goto 245,54.890,79.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Prug|r
    .dailyturnin 27966 >> Turn in Salvaging the Remains
    .target Captain Prug
step << Horde
    .isQuestComplete 27949
    .goto 245,54.890,79.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Prug|r
    .dailyturnin 27949 >> Turn in The Forgotten
    .target Captain Prug
step << Horde
    .isQuestComplete 28275
    .goto 245,55.770,78.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Sarlosk|r
    .dailyturnin 28275 >> Turn in Bombs Away!
    .target Private Sarlosk
step << Horde
    .isQuestComplete 27987
    .goto 245,55.770,78.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Sarlosk|r
    .dailyturnin 27987 >> Turn in Cannonball!
    .target Private Sarlosk
step << Horde
    .isQuestComplete 27978
    .goto 245,55.770,78.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Sarlosk|r
    .dailyturnin 27978 >> Turn in Ghostbuster
    .target Private Sarlosk
step << Horde
    .isQuestComplete 27991
    .goto 245,55.770,78.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Sarlosk|r
    .dailyturnin 27991 >> Turn in Taking the Overlook Back
    .target Private Sarlosk
step << Horde
    .isQuestComplete 27973
    .goto 245,55.770,78.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Sarlosk|r
    .dailyturnin 27973 >> Turn in Watch Out For Splinters!
    .target Private Sarlosk
step << Horde
    .isQuestComplete 27975
    .goto 245,55.770,78.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Private Sarlosk|r
    .dailyturnin 27975 >> Turn in WANTED: Foreman Wellson
    .target Private Sarlosk
step << Horde
    .isQuestComplete 27948
    .goto 245,55.223,81.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_3rd Officer Kronkar|r
    .dailyturnin 27948 >> Turn in A Sticky Task
    .target 3rd Officer Kronkar
step << Horde
    .isQuestComplete 27972
    .goto 245,55.223,81.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_3rd Officer Kronkar|r
    .dailyturnin 27972 >> Turn in Boosting Morale
    .target 3rd Officer Kronkar
step << Horde
    .isQuestComplete 27970
    .goto 245,55.223,81.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_3rd Officer Kronkar|r
    .dailyturnin 27970 >> Turn in Captain P. Harris
    .target 3rd Officer Kronkar
step << Horde
    .isQuestComplete 27971
    .goto 245,55.223,81.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_3rd Officer Kronkar|r
    .dailyturnin 27971 >> Turn in Rattling Their Cages
    .target 3rd Officer Kronkar
step << Horde
    .isQuestComplete 28050
    .goto 245,55.223,81.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_3rd Officer Kronkar|r
    .dailyturnin 28050 >> Turn in Shark Tank
    .target 3rd Officer Kronkar
step << Horde
    .isQuestComplete 27944
    .goto 245,55.223,81.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_3rd Officer Kronkar|r
    .dailyturnin 27944 >> Turn in Thinning the Brood
    .target 3rd Officer Kronkar
step << Horde
    .isQuestComplete 28059
    .goto 245,53.535,80.569
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Larmash|r
    .dailyturnin 28059 >> Turn in Claiming The Keep
    .target Commander Larmash
step << Horde
    .isQuestComplete 28063
    .goto 245,53.535,80.569
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Larmash|r
    .dailyturnin 28063 >> Turn in Leave No Weapon Behind
    .target Commander Larmash
step << Horde
    .isQuestComplete 28130
    .goto 245,53.535,80.569
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Larmash|r
    .dailyturnin 28130 >> Turn in Not The Friendliest Town
    .target Commander Larmash
step << Horde
    .isQuestComplete 28137
    .goto 245,53.535,80.569
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Larmash|r
    .dailyturnin 28137 >> Turn in Teach A Man To Fish.... Or Steal
    .target Commander Larmash
step << Horde
    #label HellscreamsGraspTurnins
    .isQuestComplete 28065
    .goto 245,53.535,80.569
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Larmash|r
    .dailyturnin 28065 >> Turn in Walk A Mile In Their Shoes
    .target Commander Larmash
step
    #completewith next
    .goto 245,66.83,81.42,30,0
    .goto 244,40.80,20.76
    .zone 244 >> |cRXP_WARN_You have completed all daily quests on the Tol Barad Peninsula for today. Head south to Tol Barad to complete more daily quests there|r
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_2nd Lieutenant Wansworth|r, |cRXP_FRIENDLY_Marshal Fallows|r, |cRXP_FRIENDLY_Sergeant Parker|r and |cRXP_FRIENDLY_Commander Stevens|r
    .daily 28186 >> Accept Cursed Shackles
    .daily 28165 >> Accept D-Block
    .daily 28185 >> Accept Svarnos
    .goto 244,53.108,46.414
    .target +2nd Lieutenant Wansworth
    .daily 28232 >> Accept Food From Below
    .daily 28188 >> Accept Prison Revolt
    .daily 28223 >> Accept The Warden
    .goto 244,53.517,47.011
    .target +Marshal Fallows
    .daily 28122 >> Accept A Huge Problem
    .daily 28162 >> Accept Swamp Bait
    .daily 28163 >> Accept The Leftovers
    .goto 244,54.568,46.338
    .target +Sergeant Parker
    .daily 28117 >> Accept Clearing the Depths
    .daily 28120 >> Accept Learning From The Past
    .daily 28118 >> Accept The Imprisoned Archmage
    .goto 244,54.385,45.623
    .target +Commander Stevens
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Staff Sergeant Lazgar|r, |cRXP_FRIENDLY_Commander Zanoth|r, |cRXP_FRIENDLY_Private Garnoth|r and |cRXP_FRIENDLY_Drillmaster Razgoth|r
    .daily 28232 >> Accept Food From Below
    .daily 28188 >> Accept Prison Revolt
    .daily 28223 >> Accept The Warden
    .goto 244,48.719,53.631
    .target +Staff Sergeant Lazgar
    .daily 28122 >> Accept A Huge Problem
    .daily 28162 >> Accept Swamp Bait
    .daily 28659 >> Accept The Leftovers
    .goto 244,48.003,54.792
    .target +Commander Zanoth
    .daily 28117 >> Accept Clearing the Depths
    .daily 28120 >> Accept Learning From The Past
    .daily 28118 >> Accept The Imprisoned Archmage
    .goto 244,48.476,55.240
    .target +Private Garnoth
    .daily 28186 >> Accept Cursed Shackles
    .daily 28165 >> Accept D-Block
    .daily 28185 >> Accept Svarnos
    .goto 244,49.230,53.860
    .target +Drillmaster Razgoth
step
    #completewith GalusStaff
    .goto 244,61.330,50.108
    .subzone 5658 >> Enter the Cursed Depths
step
    #completewith GalusStaff
    .isOnQuest 28117
    >>Kill |cRXP_ENEMY_Captive Spirits|r, |cRXP_ENEMY_Ghastly Convicts|r and |cRXP_ENEMY_Cellblock Oozes|r
    .complete 28117,1 -- Ghosts Slain (9)
    .mob Captive Spirit
    .mob Cellblock Ooze
    .mob Ghastly Convict
step
    #completewith GalusStaff
    .isOnQuest 28120
    >>Loot the |cRXP_LOOT_Dusty Prison Journals|r on the ground
    .complete 28120,1 -- Cursed Shackles (8)
step
    #label GalusStaff
    .isOnQuest 28118
    .goto 244,56.31,54.75
    >>Kill |cRXP_ENEMY_Archmage Galus|r. Loot him for |cRXP_LOOT_Archmage Galus' Staff|r
    .complete 28118,1 -- Archmage Galus' Staff (1)
    .mob Archmage Galus
step
    #completewith next
    .isOnQuest 28117
    >>Kill |cRXP_ENEMY_Captive Spirits|r, |cRXP_ENEMY_Ghastly Convicts|r and |cRXP_ENEMY_Cellblock Oozes|r
    .complete 28117,1 -- Ghosts Slain (9)
    .mob Captive Spirit
    .mob Cellblock Ooze
    .mob Ghastly Convict
step
    #loop
    .goto 244,58.38,48.32,40,0
    .goto 244,58.33,54.84,40,0
    .isOnQuest 28120
    >>Loot the |cRXP_LOOT_Dusty Prison Journals|r on the ground
    .complete 28120,1 -- Cursed Shackles (8)
step
    #loop
    .goto 244,58.38,48.32,40,0
    .goto 244,58.33,54.84,40,0
    .isOnQuest 28117
    >>Kill |cRXP_ENEMY_Captive Spirits|r, |cRXP_ENEMY_Ghastly Convicts|r and |cRXP_ENEMY_Cellblock Oozes|r
    .complete 28117,1 -- Ghosts Slain (9)
    .mob Captive Spirit
    .mob Cellblock Ooze
    .mob Ghastly Convict
step
    #completewith SvarnosCollar
    .goto 244,42.722,38.648
    .subzone 5657 >> Enter D-Block
step
    #completewith SvarnosCollar
    .isOnQuest 28165
    >>Kill |cRXP_ENEMY_Demons|r
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
    >>Loot the |cRXP_LOOT_Cursed Shackles|r on the ground
    .complete 28186,1 -- Cursed Shackles (8)
step
    #label SvarnosCollar
    .isOnQuest 28185
    .goto 244,48.26,30.75
    >>Kill |cRXP_ENEMY_Svarnos|r. Loot him for |cRXP_LOOT_Svarnos' Cursed Collar|r
    .complete 28185,1 -- Svarnos' Cursed Collar (1)
    .mob Svarnos
step
    #completewith next
    .isOnQuest 28165
    >>Kill |cRXP_ENEMY_Demons|r
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
    >>Loot the |cRXP_LOOT_Cursed Shackles|r on the ground
    .complete 28186,1 -- Cursed Shackles (8)
step
    .isOnQuest 28165
    #loop
    .goto 244,39.53,30.31,40,0
    .goto 244,39.63,27.50,40,0
    .goto 244,48.26,30.75,40,0
    >>Kill |cRXP_ENEMY_Demons|r
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
    >>Kill |cRXP_ENEMY_Baradin Crocolisks|r. Loot them for their |cRXP_LOOT_Crocolisk Hides|r
    .complete 28162,1 -- Crocolisk Hide (8)
    .mob Baradin Crocolisk
step
    #completewith WardensKeys
    .goto 244,43.93,70.10
    .subzone 5659 >> Enter the Hole
step
    #completewith WardensKeys
    .isOnQuest 28188
    >>Kill |cRXP_ENEMY_Prisoners|r inside The Hole
    .complete 28188,1 -- Prisoners Slain (10)
    .mob Imprisoned Worker
    .mob Warden Guard
    .mob Warden Silva
    .mob Exiled Mage
    .mob Demented Prisoner
step
    .isOnQuest 28232
    #completewith WardensKeys
    >>Kill |cRXP_ENEMY_Imprisoned Workers|r. Loot them for their |cRXP_LOOT_Cellblock Rations|r
    >>|cRXP_LOOT_Cellblock Rations|r |cRXP_WARN_can also be looted from the ground|r
    .complete 28232,1 -- Cellblock Rations (12)
    .mob Imprisoned Worker
step
    #label WardensKeys
    .isOnQuest 28223
    .goto 244,37.375,71.036
    >>Kill |cRXP_ENEMY_Warden Silva|r. Loot him for the |cRXP_LOOT_Warden's Keys|r
    .complete 28223,1 -- Warden's Keys (1)
    .mob Warden Silva
step
    #completewith next
    .isOnQuest 28188
    >>Kill |cRXP_ENEMY_Prisoners|r inside The Hole
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
    >>Kill |cRXP_ENEMY_Imprisoned Workers|r. Loot them for their |cRXP_LOOT_Cellblock Rations|r
    >>|cRXP_LOOT_Cellblock Rations|r |cRXP_WARN_can also be looted from the ground|r
    .complete 28232,1 -- Cellblock Rations (12)
    .mob Imprisoned Worker
step
    #loop
    .goto 244,37.35,75.01,50,0
    .goto 244,37.28,78.18,50,0
    .goto 244,40.88,78.23,50,0
    .goto 244,46.15,81.49,50,0
    .isOnQuest 28188
    >>Kill |cRXP_ENEMY_Prisoners|r inside The Hole
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
    >>Kill the |cRXP_ENEMY_Horde Infantry|r in The Slagworks, Warden's Vigil or the Ironclad Garrison << Alliance
    >>Kill the |cRXP_ENEMY_Alliance Infantry|r in The Slagworks, Warden's Vigil or the Ironclad Garrison << Horde
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
    >>Kill |cRXP_ENEMY_Problim|r
    >>|cRXP_ENEMY_Problim|r |cRXP_WARN_patrols along the road|r
    .complete 28122,1 -- Problim slain (1)
    .mob Problim
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_2nd Lieutenant Wansworth|r, |cRXP_FRIENDLY_Marshal Fallows|r, |cRXP_FRIENDLY_Sergeant Parker|r and |cRXP_FRIENDLY_Commander Stevens|r
    .dailyturnin 28186 >> Turn in Cursed Shackles
    .dailyturnin 28165 >> Turn in D-Block
    .dailyturnin 28185 >> Turn in Svarnos
    .goto 244,53.108,46.414
    .target +2nd Lieutenant Wansworth
    .dailyturnin 28232 >> Turn in Food From Below
    .dailyturnin 28188 >> Turn in Prison Revolt
    .dailyturnin 28223 >> Turn in The Warden
    .goto 244,53.517,47.011
    .target +Marshal Fallows
    .dailyturnin 28122 >> Turn in A Huge Problem
    .dailyturnin 28162 >> Turn in Swamp Bait
    .dailyturnin 28163 >> Turn in The Leftovers
    .goto 244,54.568,46.338
    .target +Sergeant Parker
    .dailyturnin 28117 >> Turn in Clearing the Depths
    .dailyturnin 28120 >> Turn in Learning From The Past
    .dailyturnin 28118 >> Turn in The Imprisoned Archmage
    .goto 244,54.385,45.623
    .target +Commander Stevens
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Staff Sergeant Lazgar|r, |cRXP_FRIENDLY_Commander Zanoth|r, |cRXP_FRIENDLY_Private Garnoth|r and |cRXP_FRIENDLY_Drillmaster Razgoth|r
    .dailyturnin 28232 >> Turn in Food From Below
    .dailyturnin 28188 >> Turn in Prison Revolt
    .dailyturnin 28223 >> Turn in The Warden
    .goto 244,48.719,53.631
    .target +Staff Sergeant Lazgar
    .dailyturnin 28122 >> Turn in A Huge Problem
    .dailyturnin 28162 >> Turn in Swamp Bait
    .dailyturnin 28659 >> Turn in The Leftovers
    .goto 244,48.003,54.792
    .target +Commander Zanoth
    .dailyturnin 28117 >> Turn in Clearing the Depths
    .dailyturnin 28120 >> Turn in Learning From The Past
    .dailyturnin 28118 >> Turn in The Imprisoned Archmage
    .goto 244,48.476,55.240
    .target +Private Garnoth
    .dailyturnin 28186 >> Turn in Cursed Shackles
    .dailyturnin 28165 >> Turn in D-Block
    .dailyturnin 28185 >> Turn in Svarnos
    .goto 244,49.230,53.860
    .target +Drillmaster Razgoth
step
    +|cRXP_WARN_You have completed all daily quests for Tol Barad today|r
]])
