local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 22-27 Ashenvale
#next 27-31 Northern Stranglethorn
#version 1
--#group RXP Cataclysm (H)
#group RXP Cataclysm 1-80 (H)
#subweight 10000

step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kadrak|r
    .turnin 13866 >>Turn in To The Ramparts!
    .accept 13612 >>Accept Mor'shan Defense
    .accept 13618 >>Accept Find Gorat!
    .target Kadrak
    .isOnQuest 13866
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kadrak|r
    .turnin 28493 >>Turn in Warchief's Command: Ashenvale!
    .accept 13612 >>Accept Mor'shan Defense
    .accept 13618 >>Accept Find Gorat!
    .target Kadrak
    .isOnQuest 28493
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kadrak|r
    .accept 13612 >>Accept Mor'shan Defense
    .accept 13618 >>Accept Find Gorat!
    .target Kadrak
step
    .goto 10,42.27,15.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Truun|r
    .accept 13615 >>Accept Empty Quivers
    .target Truun
step
    .goto 10,42.43,15.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dinah|r
    .accept 13613 >>Accept Rescue the Fallen
    .target Dinah Halfmoon
step
    .goto 10,41.99,15.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gort|r
    .fp The Mor'shan Rampart >> Get The Mor'shan Rampart flight path
    .target Gort Goreflight
    .subzoneskip 1703,1
step
    #completewith FindGorat
    >>Kill |cRXP_ENEMY_Ashenvale Skirmishers|r and |cRXP_ENEMY_Ashenvale Bowmen|r
    .complete 13612,1 --5/5 Ashenvale Skirmishers Slain
    .mob +Ashenvale Skirmisher
    .complete 13612,2 --5/5 Ashenvale Bowmen Slain
    .mob +Ashenvale Bowman
step
    #completewith Skirmishers
    .use 45001 >> |cRXP_WARN_Use|r |T133690:0|t[Medicated Salve] |cRXP_WARN_on|r |cRXP_FRIENDLY_Wounded Mor'shan Defenders|r
    .complete 13613,1 --5/5 Wounded Mor'shan Defenders Rescued
    .target Wounded Mor'shan Defender
step
    #completewith MorshanDefenders
    >>Loot |cRXP_PICK_Arrows|r from the ground
    .complete 13615,1 --10/10 Serviceable Arrow
step
    #label FindGorat
    .goto 63,64.19,84.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorat|r
    .turnin 13618 >>Turn in Find Gorat!
    .accept 13619 >>Accept Final Report
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
    >>Kill |cRXP_ENEMY_Ashenvale Skirmishers|r and |cRXP_ENEMY_Ashenvale Bowmen|r
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
    .use 45001 >> Use the |T133690:0|t[Medicated Salve] on |cRXP_FRIENDLY_Wounded Mor'shan Defenders|r
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
    >>Loot |cRXP_PICK_Arrows|r from the ground
    .complete 13615,1 --10/10 Serviceable Arrow
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kadrak|r
    .turnin 13612 >>Turn in Mor'shan Defense
    .turnin 13619 >>Turn in Final Report
    .accept 13620 >>Accept To Dinah, at Once!
    .target Kadrak
step
    .goto 10,42.25,15.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Truun|r
    .turnin 13615 >>Turn in Empty Quivers
    .target Truun
step
    .goto 10,42.43,15.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dinah|r
    .turnin 13620 >>Turn in To Dinah, at Once!
    .turnin 13613 >>Turn in Rescue the Fallen
    .accept 13621 >>Accept Gorat's Vengeance
    .target Dinah Halfmoon
step
    #completewith next
    .goto 63,64.16,84.50
    .cast 62772 >> |cRXP_WARN_Use|r |T134719:0|t[Gorat's Imbued Blood] |cRXP_WARN_on|r |cRXP_FRIENDLY_Gorat|r
    .timer 103,Gorat's Vengeance RP
    .use 45023
step
    .goto 63,65.72,82.20
    >>Follow the |cRXP_FRIENDLY_Spirit of Gorat|r and kill |cRXP_ENEMY_Captain Elendilad|r once he appears
    .complete 13621,1 --1/1 Captain Elendilad slain
    .mob Captain Elendilad
    .target Gorat
    .target Spirit of Gorat
    .use 45023
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kadrak|r
    .turnin 13621 >>Turn in Gorat's Vengeance
    .target Kadrak
step
    .goto 10,42.26,15.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Truun|r
    .accept 13628 >>Accept Got Lumber?
    .target Truun
step
    .goto 1413/1,-2251.30005,1236.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kadrak|r
    >>Obtain |cRXP_LOOT_Kadrak's Reins|r from him
    .collect 45051,1,13628,1 --Kadrak's Reins (1)
    .target Kadrak
    .skipgossip
step
    .goto 10,42.84,16.15
    >>Mount |cRXP_FRIENDLY_Brutusk|r
    .complete 13628,1 --1/1 Brutusk mounted
    .timer 39,Got Wood? RP
    .target Brutusk
    --VV Timer
step
    .goto 63,72.93,80.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorka|r
    .turnin 13628 >>Turn in Got Lumber?
    .accept 13640 >>Accept Management Material
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Demoralized Peons|r
    >>|cRXP_WARN_Follow and protect them from|r |cRXP_ENEMY_Ashenvale Stalkers|r |cRXP_WARN_as they start cutting wood. Loot the|r |cRXP_LOOT_Freshly Cut Wood|r |cRXP_WARN_on the ground as it appears|r
    .complete 13640,1 --5/5 Freshly Cut Wood
    .skipgossip
    .target Demoralized Peon
    .mob Ashenvale Stalker
step
    .goto 63,72.93,80.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorka|r
    .turnin 13640 >>Turn in Management Material
    .accept 13651 >>Accept Needs a Little Oil
    .target Gorka
step
    #completewith next
    >>Kill |cRXP_ENEMY_Sharptalon|r if he is up. Loot him for |T136063:0|t[|cRXP_LOOT_Sharptalon's Claw|r] and use it to start the quest
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >> Accept Sharptalon's Claw
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
    >>Kill |cRXP_ENEMY_Rotting Slime|r. Loot them for their |cRXP_LOOT_Natural Oil|r
    .complete 13651,1 --5/5 Natural Oil
    .mob Rotting Slime
step
    .goto 63,72.93,80.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorka|r
    .turnin 13651 >>Turn in Needs a Little Oil
    .accept 13653 >>Accept Crisis at Splintertree
    .target Gorka
step
    .goto 63,72.93,80.44
    .gossipoption 111661 >>Talk to |cRXP_FRIENDLY_Gorka|r
    .timer 79,Crisis at Splintertree RP
    .target Gorka
    .isOnQuest 13653
step
    .goto 63,72.93,80.44
    >>Return to Mor'shan Ramparts with |cRXP_FRIENDLY_Gorka|r
    >>|cRXP_WARN_Make sure you are not mounted!|r
    .complete 13653,1 --1/1 Gorka accompanied to Mor'shan Ramparts
    .target Gorka
    .skipgossip
    --VV Timer
step
    .goto 10,42.71,14.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kadrak|r
    .turnin 13653 >>Turn in Crisis at Splintertree
    .target Kadrak
    .accept 13712 >>Accept To the Rescue!
    --VV Timer
step
    .goto 10,42.71,14.95
    .gossipoption 111656 >>Talk to |cRXP_FRIENDLY_Kadrak|r to travel to Splintertree Post
    .timer 110,To the Rescue! RP
    >>|cRXP_WARN_This quest may be bugged! Skip this step if this is the case|r
    .target Kadrak
    .isOnQuest 13712
step
    .goto 63,73.59,62.19
    >>Arrive in Splintertree Post
    >>|cRXP_WARN_This quest may be bugged! Skip this step if this is the case|r
    .complete 13712,1 --1/1 Splintertree Post Siege Broken
step
    .goto 63,73.61,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kadrak|r
    .turnin 13712 >>Turn in To the Rescue!
    .accept 13803 >>Accept Blood of the Weak
    .target Kadrak
    .isQuestComplete 13712
step
    #optional
    .goto 63,73.61,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kadrak|r
    .accept 13803 >>Accept Blood of the Weak
    .target Kadrak
    .isQuestTurnedIn 13712
step
    #completewith next
    .subzone 431 >>Travel to Splintertree Post
    .isQuestAvailable 13712
step
    .goto 63,73.19,61.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vhulgra|r
    .fp >>Get the Splintertree Post Flight Path
    .target Vhulgra
    .isQuestAvailable 6503
step
    .goto 63,73.56,60.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kuray'bin|r
    .accept 6503 >>Accept Ashenvale Outrunners
    .target Kuray'bin
    .isQuestTurnedIn 13712
step
    .goto 63,74.00,60.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kaylisk|r
    .home >>Set your Hearthstone to Splintertree Post
    .target Innkeeper Kaylisk
    .isQuestTurnedIn 13712
    .isQuestAvailable 6503
step
    .goto 63,73.19,60.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valusha|r
    .accept 26448 >>Accept Destroy the Legion
    .target Valusha
    .isQuestTurnedIn 13712
step
    .goto 63,72.20,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durak|r inside the cave
    .turnin 13803 >>Turn in Blood of the Weak
    .accept 13805 >>Accept Pierce Their Heart!
    .target Durak
    .isQuestTurnedIn 13712
step
    .goto 63,73.83,62.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pixel|r
    .accept 13801 >>Accept Dead Elves Walking
    .target Pixel
    .isQuestTurnedIn 13712
step
    .goto 63,73.34,62.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Splintertree Demolisher|r
    .accept 13730 >>Accept Playing With Felfire
    .target Splintertree Demolisher
    .isQuestTurnedIn 13712
step
    #completewith FelFires
    >>Kill |cRXP_ENEMY_Demons|r in Felfire Hill
    .complete 26448,1 --15/15 Demons Slain
    .mob Mannaroc Lasher
    .mob Roaming Felguard
    .mob Searing Infernal
step
    #completewith KillDemons
    >>One of the |cRXP_ENEMY_Demons|r may drop the |T134943:0|t[|cRXP_LOOT_Diabolical Plans|r]. Use it to start the quest
    .collect 23798,1,26447 --Diabolical Plans (1)
    .accept 26447 >>Accept Diabolical Plans
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
    .use 45478 >>|cRXP_WARN_Use the|r |T237030:0|t[Reinforced Canister] |cRXP_WARN_on the green fires|r
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
    >>Kill |cRXP_ENEMY_Demons|r in Felfire Hill
    .complete 26448,1 --15/15 Demons Slain
    .mob Mannaroc Lasher
    .mob Roaming Felguard
    .mob Searing Infernal
    .isQuestTurnedIn 13712
step
    #completewith DorDanilDen
    >>Kill |cRXP_ENEMY_Sharptalon|r. Loot him for |T136063:0|t[|cRXP_LOOT_Sharptalon's Claw|r] and use it to start the quest
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >> Accept Sharptalon's Claw
    .unitscan Sharptalon
    .use 16305
    .maxlevel 24
step
    #completewith next
    >>Kill |cRXP_ENEMY_Ashenvale Outrunners|r
    >>|cRXP_WARN_They are stealthed near the trees|r
    .complete 6503,1 --9/9 Ashenvale Outrunners Killed
    .unitscan Ashenvale Outrunner
step
    #label DorDanilDen
    .goto 63,75.66,75.32,20 >>Enter the The Dor'Danil Barrow Den
    .isQuestTurnedIn 13712
    .isOnQuest 13805
step
    #completewith next
    >>Kill |cRXP_ENEMY_Severed Keepers|r and |cRXP_ENEMY_Severed Druids|r
    .complete 13801,1 --15/15 Night Elf Ghosts Slain
    .mob Severed Druid
    .mob Severed Keeper
step
    .goto 63,75.52,74.20
    .use 45683 >> |cRXP_WARN_Use the|r |T134840:0|t[Tainted Blood of the Kaldorei] |cRXP_WARN_at the centre of the cave|r
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
    >>Finish killing |cRXP_ENEMY_Severed Keepers|r and |cRXP_ENEMY_Severed Druids|r
    .complete 13801,1 --15/15 Night Elf Ghosts Slain
    .mob Severed Druid
    .mob Severed Keeper
    .isQuestTurnedIn 13712
step
    #completewith next
    >>Kill |cRXP_ENEMY_Sharptalon|r. Loot him for |T136063:0|t[|cRXP_LOOT_Sharptalon's Claw|r] and use it to start the quest
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >> Accept Sharptalon's Claw
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
    >>Finish killing |cRXP_ENEMY_Ashenvale Outrunners|r
    >>|cRXP_WARN_They are stealthed near the trees|r
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
    >>Kill |cRXP_ENEMY_Sharptalon|r. Loot him for |T136063:0|t[|cRXP_LOOT_Sharptalon's Claw|r] and use it to start the quest
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >> Accept Sharptalon's Claw
    .unitscan Sharptalon
    .use 16305
    .isQuestTurnedIn 13712
    .maxlevel 24
step << skip
    #completewith next
    .hs >> Hearth to Splintertree Post
    .use 6948
    .subzoneskip 431
    --Need hearth cd for zoram strand
step
    .goto 63,73.87,62.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pixel|r
    .turnin 13801 >>Turn in Dead Elves Walking
    .target Pixel
    .isQuestTurnedIn 13712
step
    .goto 63,73.61,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kadrak|r
    .turnin 13805 >>Turn in Pierce Their Heart!
    --.accept 13808 >>Accept Mission Improbable
    .accept 13848 >>Accept Bad News Bear-er
    .target Kadrak
    .isQuestTurnedIn 13712
step
    #questguide
    .goto 63,73.61,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kadrak|r
    .turnin 13805 >>Turn in Pierce Their Heart!
    .accept 13808 >>Accept Mission Improbable
    .accept 13848 >>Accept Bad News Bear-er
    .target Kadrak
    .isQuestTurnedIn 13712
step
    .goto 63,73.32,62.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Splintertree Demolisher|r
    .turnin 13730 >>Turn in Playing With Felfire
    --.accept 13751 >>Accept Tell No One! -- Optional skip
    .target Splintertree Demolisher
    .isQuestTurnedIn 13712
step
    #questguide
    .goto 63,73.32,62.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Splintertree Demolisher|r
    .turnin 13730 >>Turn in Playing With Felfire
    .accept 13751 >>Accept Tell No One!
    .target Splintertree Demolisher
    .isQuestTurnedIn 13712
step
    .goto 63,73.56,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kuray'bin|r
    .turnin 6503 >>Turn in Ashenvale Outrunners
    .target Kuray'bin
    .isQuestTurnedIn 13712
step
    .goto 63,73.16,60.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valusha|r
    .turnin 26448 >>Turn in Destroy the Legion
    .turnin 26447 >>Turn in Diabolical Plans
    --.accept 26449 >>Accept Never Again!
    .target Valusha
    .isOnQuest 26447
step
    .goto 63,73.16,60.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valusha|r
    .turnin 26448 >>Turn in Destroy the Legion
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durak|r inside the cave
    .turnin 13751 >>Turn in Tell No One!
    .accept 13797 >>Accept Dirty Deeds
    .target Durak
step
    #questguide
    .goto 63,72.62,58.34
    >>Loot |cRXP_PICK_Fresh Rubble|r scattered throughout the cave for |cRXP_LOOT_Chunks of Ore|r
    .complete 13797,1 --10/10 Chunk of Ore
step
    #questguide
    .goto 63,72.20,57.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durak|r
    .turnin 13797 >>Turn in Dirty Deeds
    .accept 13798 >>Accept Rain of Destruction
    .target Durak
step
    #questguide
    .goto 63,74.09,62.92
    .use 45598 >> |cRXP_WARN_Climb the tower and aim the|r |T134569:0|t[Accursed Ore] |cRXP_WARN_at|r |cRXP_ENEMY_Raging Ancients|r |cRXP_WARN_and|r |cRXP_ENEMY_Attacking Elves|r
    .complete 13798,2 --5/5 Raging Ancients Slain
    .complete 13798,1 --30/30 Attacking Elves Slain
    .mob Raging Ancients
    .mob Ashenvale Assailant
    .mob Ashenvale Bowman
    --VV Dogshit quest, item has 15sec cd and must be used like 10+ times. But good quest rewards
step
    #questguide
    .goto 63,72.18,57.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durak|r
    .turnin 13798 >>Turn in Rain of Destruction
    .target Durak
step
    #questguide
    .goto 63,73.34,62.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Splintertree Demolisher|r
    .accept 13841 >>Accept All Apologies
    .target Splintertree Demolisher
    .isQuestTurnedIn 13798
step
    #questguide
    .goto 63,82.55,53.63
    .use 45710 >>|cRXP_WARN_Use your|r |T133639:0|t[Secret Signal Powder] |cRXP_WARN_at the Smoldering Brazier|r
    .complete 13808,1 --1/1 Smoldering Brazier lit
step
    #questguide
    .goto 63,82.54,53.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krokk|r
    .turnin 13808 >>Turn in Mission Improbable
    .accept 13815 >>Accept Making Stumps
    .accept 13865 >>Accept Wet Work
    .target Krokk
step
    #questguide
    #completewith ChopSomeTrees
    >>Kill |cRXP_ENEMY_Ashenvale Scouts|r
    .complete 13865,4 --12/12 Ashenvale Scouts defeated
    .mob Ashenvale Scout
step
    #questguide
    #completewith next
    .use 45807 >> |cRXP_WARN_Use your|r |T132399:0|t[Splintertree Axe] |cRXP_WARN_to chop down|r |cRXP_FRIENDLY_Ashenvale Oaks|r
    .complete 13815,1 --6/6 Ashenvale Oaks Chopped Down
    .target Ashenvale Oak
step
    #questguide
    >>Kill |cRXP_ENEMY_Endolar|r, |cRXP_ENEMY_Arminon|r and |cRXP_ENEMY_Dorinar|r
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
    .use 45807 >> |cRXP_WARN_Use your|r |T132399:0|t[Splintertree Axe] |cRXP_WARN_to chop down|r |cRXP_FRIENDLY_Ashenvale Oaks|r
    .complete 13815,1 --6/6 Ashenvale Oaks Chopped Down
    .target Ashenvale Oak
step
    #questguide
    .goto 63,85.53,56.74
    >>Finish killing |cRXP_ENEMY_Ashenvale Scouts|r
    .complete 13865,4 --12/12 Ashenvale Scouts defeated
    .mob Ashenvale Scout

    --Quest below (26449) not worth, too much travel

step
    #questguide
    #completewith next
    .subzone 435 >> Travel to Demon Fall Canyon
step
    #questguide
    .goto 63,89.75,76.72
    >>Kill |cRXP_ENEMY_Gorgannon|r. Loot him for his |cRXP_LOOT_Blade|r
    .complete 26449,1 --1/1 Gorgannon's Flaming Blade
    .mob Gorgannon
    .isQuestTurnedIn 26447
step
    #questguide
    .goto 63,78.46,83.89
    >>Kill |cRXP_ENEMY_Diathorus the Seeker|r. Loot him for his |cRXP_LOOT_Spear|r.
    >>|cRXP_WARN_He is located across from the first bridge you run into after entering the cave|r
    .complete 26449,2 --1/1 Seeker's Fel Spear
    .mob Diathorus the Seeker
    .isQuestTurnedIn 26447
step
    #questguide
    .goto 63,82.54,53.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krokk|r
    .use 45710 >>|cRXP_WARN_Use your|r |T133639:0|t[Secret Signal Powder] |cRXP_WARN_at the Smoldering Brazier to summon|r |cRXP_FRIENDLY_Krokk|r
    .turnin 13815 >>Turn in Making Stumps
    .turnin 13865 >>Turn in Wet Work
    .accept 13870 >>Accept As Good as it Gets
    .target Krokk
step
    #questguide
    .goto 63,90.94,58.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overseer Gorthak|r at the Warsong Lumber Camp
    .turnin 13870 >>Turn in As Good as it Gets
    .accept 13871 >>Accept Security!
    .target Overseer Gorthak
step
    #questguide
    .goto 63,89.97,59.10
    >>Run outside and turn left. Kill the |cRXP_ENEMY_Assassin|r that jumps you
    .complete 13871,1 --1/1 Kaldorei Assassin's Head
    .unitscan Kaldorei Assassin
step
    #questguide
    .goto 63,90.94,58.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Overseer Gorthak|r
    .turnin 13871 >>Turn in Security!
    .target Overseer Gorthak
step
    #questguide
    .goto 63,90.75,58.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guardian Menerin|r
    .accept 13873 >>Accept Sheelah's Last Wish
    .target Guardian Menerin
step
    #questguide
    .goto 63,89.60,48.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guardian Gurtar|r
    .turnin 13873 >>Turn in Sheelah's Last Wish
    .accept 13875 >>Accept Gurtar's Request
    .target Guardian Gurtar
step
    #label Bloodcups
    #questguide
    .goto 63,73.29,60.22
    >>Loot |cRXP_PICK_Thorned Bloodcups|r from the ground
    >>|cRXP_WARN_Many can be found along the road toward Splintertree Post|r
    .collect 46315,8,13875,1 --Thorned Bloodcup (8)
step
    #questguide
    #requires Bloodcups
    .use 46316 >>Use the |T134892:0|t[Orc-Hair Braid] to create a |cRXP_LOOT_Bloodcup Braid|r
    .complete 13875,1 --1/1 Bloodcup Braid
step
    #questguide
    .goto 63,73.34,62.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Splintertree Demolisher|r
    .turnin 13875 >>Turn in Gurtar's Request
    .target Splintertree Demolisher
step
    #questguide
    .goto 63,73.15,60.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valusha|r
    .turnin 26449 >>Turn in Never Again!
    .target Valusha
    .isQuestComplete 26447
step
    #questguide
    .goto 63,73.74,61.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locke Okarr|r
    .accept 13806 >>Accept Demon Duty
    .target Locke Okarr
    .isQuestTurnedIn 26449
step
    #questguide
    .goto 63,73.86,62.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pixel|r
    .accept 6441 >>Accept Satyr Horns
    .target Pixel
    .isQuestTurnedIn 26449
step
    #questguide
    #completewith next
    .subzone 430 >>Travel north to Satyrnaar
    .isQuestTurnedIn 26449
step
    #questguide
    #completewith next
    >>Kill |cRXP_ENEMY_Satyrs|r. Loot them for their |cRXP_LOOT_Horns|r
    .complete 6441,1 --16/16 Satyr Horns
    .mob Bleakheart Hellcaller
    .mob Bleakheart Satyr
    .mob Bleakheart Trickster
    .mob Bleakheart Shadowstalker
    .isQuestTurnedIn 26449
step
    #questguide
    .goto 63,79.48,50.21
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tClick the purple |cRXP_FRIENDLY_Ritual Gems|r
    .complete 13806,1 --12/12 Demon Portals Interrupted
    .isQuestTurnedIn 26449
step
    #questguide
    .goto 63,81.69,49.40
    >>Finish killing |cRXP_ENEMY_Satyrs|r. Loot them for their |cRXP_LOOT_Horns|r
    .complete 6441,1 --16/16 Satyr Horns
    .mob Bleakheart Hellcaller
    .mob Bleakheart Satyr
    .mob Bleakheart Trickster
    .mob Bleakheart Shadowstalker
    .isQuestTurnedIn 26449
step
    #questguide
    .goto 63,73.87,62.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pixel|r
    .turnin 6441 >>Turn in Satyr Horns
    .target Pixel
step
    #questguide
    .goto 63,73.78,61.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locke Okarr|r
    .turnin 13806 >>Turn in Demon Duty
    .target Locke Okarr
    .isQuestTurnedIn 26449
step
    #xprate >1.19
    .maxlevel 24,AshenvaleEnd
    .goto 63,73.19,61.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vhulgra|r
    .gossipoption 111682 >> Fly to Zoram Strand
    .timer 165, Zoram Strand, Ashenvale
    .target Vhulgra
    .subzoneskip 414
    .isQuestTurnedIn 13712
step
    #xprate <1.2
    .maxlevel 25,AshenvaleEnd
    .goto 63,73.19,61.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vhulgra|r
    .gossipoption 111682 >> Fly to Zoram Strand
    .timer 165, Zoram Strand, Ashenvale
    .target Vhulgra
    .subzoneskip 414
    .isQuestTurnedIn 13712
step
    #completewith next
    .subzone 2897 >>Travel to Zoram'gar Outpost
    .isQuestAvailable 13712
step
    .goto 63,11.16,34.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andruk|r
    .fp >>Get the Zoram'gar Outpost Flight Path
    .target Andruk
    .isQuestAvailable 26890
step
    .goto 63,12.11,33.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Grimfang|r
    .turnin 13848 >>Turn in Bad News Bear-er
    .accept 13890 >>Accept Keep the Fires Burning
    --.accept 26894 >>Accept Blackfathom Deeps
    .target Commander Grimfang
    --26894 BFD dungeon quest
step
    .goto 63,11.64,35.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dagrun Ragehammer|r
    .accept 13883 >>Accept Lousy Pieces of Ship
    .accept 26890 >>Accept The Essence of Aku'Mai
    .target Dagrun Ragehammer
step
    .goto 63,12.66,35.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marukai|r
    .accept 6442 >>Accept Naga at the Zoram Strand
    .target Marukai
step
    .goto 63,12.99,34.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Duras|r
    .home >>Set your Hearthstone to Zoram'gar Outpost
    .target Innkeeper Duras
    .isQuestAvailable 26890
step
    .goto 63,12.77,34.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muglash|r
    >>|cRXP_WARN_This will start an escort quest. Be careful as it's difficult|r
    .accept 6641,1 >> Accept Vorsha the Lasher
    .target Muglash
step
    #completewith LitLightHouse
    >>Kill |cRXP_ENEMY_Wrathtail Nagas|r. Loot them for their |cRXP_LOOT_Heads|r
    .complete 6442,1 --20/20 Wrathtail Head
    .mob Wrathtail Waverider
    .mob Wrathtail Sorceress
step
    .goto 63,9.66,27.64
    >>Follow |cRXP_FRIENDLY_Muglash|r. Click the |cRXP_PICK_Naga Brazier|r when you get there
    >>|cRXP_WARN_There will be waves of|r |cRXP_ENEMY_Naga|r |cRXP_WARN_that spawn. Be careful once|r |cRXP_ENEMY_Vorsha|r |cRXP_WARN_comes out, he hits hard|r
    .complete 6641,1 --Defeat Vorsha the Lasher
    .mob Vorsha the Lasher
step
    #completewith next
    >>Loot |cRXP_LOOT_Sunken Scrap Metal|r from the ocean floor
    .complete 13883,1 --10/10 Sunken Scrap Metal
step
    #loop
    .goto 1440/1,1237.40002,3394.30005,0
    .waypoint 1440/1,1159.70007,3451.69995,50,0
    .waypoint 1440/1,1237.40002,3394.30005,50,0
    .waypoint 1440/1,1316.80005,3368.30005,50,0
    .waypoint 1440/1,1395.90002,3382.90015,50,0
    >>Kill |cRXP_ENEMY_Mystlash Hydras|r. Loot them for their |cRXP_LOOT_Blubber|r
    .collect 46365,10,13890,1 --Mystlash Hydra Blubber (10)
    .mob Mystlash Hydra
step
    #loop
    .goto 1440/1,1372.59998,3405.80005,0
    .waypoint 1440/1,1372.59998,3405.80005,40,0
    .waypoint 1440/1,1201.90002,3394.40015,40,0
    .waypoint 1440/1,1350.70007,3329.19995,40,0
    >>Finish looting |cRXP_LOOT_Sunken Scrap Metal|r from the ocean floor
    .complete 13883,1 --10/10 Sunken Scrap Metal
step
    #completewith next
    .goto 63,11.69,35.36,30 >> Travel to the forge in Zoram'Gar Outpost
step
    .goto 63,11.69,35.36
    .use 46365 >>|cRXP_WARN_Use the|r |T237338:0|t[Mystlash Hydra Blubber] |cRXP_WARN_to create|r |cRXP_LOOT_Mystlash Hydra Oil|r
    >>|cRXP_WARN_You need to be at the forge in Zoram'Gar Outpost to do this|r
    .collect 46366,1,13890,1 --Mystlash Hydra Oil (1)
step
    .goto 63,11.57,35.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dagrun Ragehammer|r
    .turnin 13883 >>Turn in Lousy Pieces of Ship
    .target Dagrun Ragehammer
step
    #label LitLightHouse
    .goto 63,6.74,28.97
    >>Travel to the top floor of the lighthouse and lit the fire
    .complete 13890,1 --1/1 Lighthouse Fire Lit
step
    #loop
    .goto 1440/1,954.29999,3590.19995,0
    .waypoint 1440/1,1234.80005,3533.40015,50,0
    .waypoint 1440/1,1061.30005,3553.60010,50,0
    .waypoint 1440/1,954.29999,3590.19995,50,0
    .waypoint 1440/1,889.79999,3661.40015,50,0
    .waypoint 1440/1,814.90002,3866.40015,50,0
    >>Finish killing |cRXP_ENEMY_Wrathtail Nagas|r. Loot them for their |cRXP_LOOT_Heads|r
    .complete 6442,1 --20/20 Wrathtail Head
    .mob Wrathtail Waverider
    .mob Wrathtail Sorceress
step
    .goto 63,12.11,33.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Grimfang|r
    .turnin 13890 >>Turn in Keep the Fires Burning
    .accept 13920 >>Accept Before You Go...
    .target Commander Grimfang
step
    .goto 63,12.46,35.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warsong Runner|r
    .turnin 6641 >>Turn in Vorsha the Lasher
    .target Warsong Runner
step
    .goto 63,12.66,35.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marukai|r
    .turnin 6442 >>Turn in Naga at the Zoram Strand
    .accept 13901 >>Accept Deep Despair
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
    >>Kill |cRXP_ENEMY_Wild Bucks|r. Loot them for their |cRXP_LOOT_Steak|r
    .complete 13920,1 --5/5 Venison Steak
    .mob Wild Buck
step
    #completewith next
    .goto 63,14.20,13.85,30 >>Jump down into Blackfathom Deeps
    .subzoneskip 5517
step
    #completewith next
    >>Loot |cRXP_PICK_Sapphire of Aku'Mai|r from the walls
    .complete 26890,1 --20/20 Sapphire of Aku'Mai
step
    #loop
    .goto 1414/1,902.00000,4265.50000,0
    .waypoint 1414/1,940.70001,4170.10010,20,0
    .waypoint 1414/1,902.00000,4265.50000,20,0
    .waypoint 1414/1,898.00000,4319.10010,20,0
    .waypoint 1414/1,821.90002,4252.50000,20,0
    .waypoint 1414/1,742.60004,4223.00000,20,0
    >>Kill |cRXP_ENEMY_Blackfathom Tide Priestesses|r
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
    >>Finish looting |cRXP_PICK_Sapphire of Aku'Mai|r from the walls
    .complete 26890,1 --20/20 Sapphire of Aku'Mai
step
    #completewith next
    .hs >> Hearth to Zoram Strand
    .use 6948
    .subzoneskip 2897
step
    .goto 63,12.11,33.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Grimfang|r
    .turnin 13920 >>Turn in Before You Go...
    .accept 13923 >>Accept To Hellscream's Watch
    .target Commander Grimfang
step
    .goto 63,12.66,35.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marukai|r
    .turnin 13901 >>Turn in Deep Despair
    .target Marukai
step
    .goto 63,11.57,35.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dagrun Ragehammer|r
    .turnin 26890 >>Turn in The Essence of Aku'Mai
    .target Dagrun Ragehammer
step
    #completewith HellscreamsWatchPickups
    .goto 63,11.16,34.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andruk|r
    .gossipoption 111691 >>Fly to Hellscream's Watch
    .target Andruk
step
    .goto 63,38.08,42.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thraka|r
    .fp >>Get the Hellscream's Watch Flight Path
    .target Thraka
    .isQuestAvailable 6462
step
    .goto 63,38.60,42.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Linkasa|r
    .home >>Set your Hearthstone to Hellscream's Watch
    .target Innkeeper Linkasa
    .isQuestAvailable 6462
step
    .goto 63,38.01,42.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Goggath|r
    >>|cRXP_WARN_He patrols around|r
    .turnin 13923 >>Turn in To Hellscream's Watch
    .accept 13936 >>Accept Tweedle's Dumb
    .target Captain Goggath
step
    .goto 63,37.77,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karang Amakkar|r
    .accept 216 >>Accept Between a Rock and a Thistlefur
    .target Karang Amakkar
step
    .goto 63,37.98,43.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tweedle|r
    .turnin 13936 >>Turn in Tweedle's Dumb
    .accept 13942 >>Accept Set Us Up the Bomb
    .target Tweedle
step
    .goto 63,38.00,42.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Goggath|r
    >>|cRXP_WARN_He patrols around|r
    .accept 13943 >>Accept Breathing Room
    .target Captain Goggath
step
    #label HellscreamsWatchPickups
    .goto 63,38.89,42.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mitsuwa|r
    .accept 6462 >>Accept Troll Charm
    .target Mitsuwa
step
    #loop
    .goto 1440/1,-360.50000,2929.60010,0
    .waypoint 1440/1,-298.20001,2929.19995,35,0
    .waypoint 1440/1,-360.50000,2929.60010,35,0
    .waypoint 1440/1,-433.80002,2897.00000,35,0
    .waypoint 1440/1,-571.00000,2871.19995,35,0
    .waypoint 1440/1,-592.50000,2821.19995,35,0
    >>Kill |cRXP_ENEMY_Astranaar Officers|r and |cRXP_ENEMY_Astranaar Skirmishers|r
    >>Loot |cRXP_PICK_Moon-Kissed Clay|r from the ground
    .complete 13943,2 --3/3 Astranaar Officers slain
    .mob +Astranaar Officer
    .complete 13943,1 --10/10 Astranaar Skirmishers slain
    .mob +Astranaar Skirmisher
    .complete 13942,1 --10/10 Moon-Kissed Clay
step
    #completewith next
    >>Kill |cRXP_ENEMY_Thistlefur Furbolgs|r
    .complete 216,1 --15/15 Thistlefur Village Furbolgs killed
    .mob Thistlefur Pathfinder
    .mob Thistlefur Shaman
    .mob Thistlefur Avenger
step
    #completewith next
    .goto 63,38.37,30.59,40 >>Enter Thistlefur Hold
step
    #loop
    .goto 1440/1,-627.70001,3394.69995,0
    .waypoint 1440/1,-605.60004,3401.69995,15,0
    .waypoint 1440/1,-627.70001,3394.69995,15,0
    .waypoint 1440/1,-631.79999,3349.30005,15,0
    .waypoint 1440/1,-574.70001,3385.60010,15,0
    .waypoint 1440/1,-676.70001,3314.19995,15,0
    .waypoint 1440/1,-683.60004,3359.00000,15,0
	>>Loot the |cRXP_PICK_Troll Chests|r on the ground for |cRXP_LOOT_Troll Charms|r
	.complete 6462,1 --Collect Troll Charm (x8)
step
    .goto 63,41.49,34.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruul|r in the back of the cave. This will start an escort
    .accept 6482 >> Accept Freedom to Ruul
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
    >>Escort |cRXP_FRIENDLY_Ruul|r out of Thistlefur Village
    >>|cFFFCDC00Be careful! 3|r |cRXP_ENEMY_Thistlefurs|r |cFFFCDC00will spawn once you are halfway through the cave and another 3 outside the gate of Thistlefur Village|r
    .complete 6482,1 --Escort Ruul from the Thistlefurs
    .target Ruul Snowhoof
step
    .goto 63,39.45,36.62
    >>Finish killing |cRXP_ENEMY_Thistlefur Furbolgs|r
    .complete 216,1 --15/15 Thistlefur Village Furbolgs killed
    .mob Thistlefur Pathfinder
    .mob Thistlefur Shaman
    .mob Thistlefur Avenger
step
    .goto 63,38.00,42.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Goggath|r
    >>|cRXP_WARN_He patrols around|r
    .turnin 13943 >>Turn in Breathing Room
    .target Captain Goggath
step
    .goto 63,37.77,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karang Amakkar|r
    .turnin 216 >>Turn in Between a Rock and a Thistlefur
    .target Karang Amakkar
step
    .goto 63,37.98,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tweedle|r
    .turnin 13942 >>Turn in Set Us Up the Bomb
    .accept 13944 >>Accept Small Stature, Short Fuse
    .target Tweedle
step
    .goto 63,38.89,42.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mitsuwa|r
    .turnin 6462 >>Turn in Troll Charm
    .target Mitsuwa
step
    .goto 63,38.47,44.22
    .use 46701 >>|cRXP_WARN_Use|r |T133711:0|t[Tweedle's Improvised Explosive] |cRXP_WARN_at the broken wagon|r
    .complete 13944,1 --1/1 Broken Wagon exploded
step
    .goto 63,38.00,42.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Goggath|r
    >>|cRXP_WARN_He patrols around|r
    .turnin 13944 >>Turn in Small Stature, Short Fuse
    .accept 13947 >>Accept Blastranaar!
    .target Captain Goggath
step
    .goto 63,38.08,42.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thraka|r
    .gossipoption 111697 >>Take the Wind Rider to bomb Astranaar
    .target Thraka
    .isOnQuest 13947
step
    .goto 63,36.24,51.03
    >>Use |T133711:0|t[Throw Explosive] on |cRXP_ENEMY_Astranaar Sentinels|r and |cRXP_ENEMY_Astranaar Throwers|r
    .complete 13947,1 --20/20 Astranaar Sentinels slain
    .mob +Astranaar Sentinel
    .complete 13947,2 --10/10 Astranaar Throwers destroyed
    .mob +Astranaar Thrower
step
    #completewith next
    +|cRXP_WARN_Use|r |T136011:0|t[Return to Base!] |cRXP_WARN_to fly back to Hellscream's Watch|r
step
    .goto 63,37.99,42.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Goggath|r
    >>|cRXP_WARN_He patrols around|r
    .turnin 13947 >>Turn in Blastranaar!
    .accept 13958 >>Accept Condition Critical!
    .target Captain Goggath
step
    .goto 63,37.98,43.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tweedle|r
    .accept 13974 >>Accept Tweedle's Tiny Parcel
    .target Tweedle
step
    #questguide
    .goto 63,38.79,43.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Broyk|r
    .accept 13879 >>Accept Thunder Peak
    .target Broyk
step
    #questguide
    #completewith next
    .goto 63,52.08,56.50,50 >>Travel to Thunder Peak
step
    #questguide
    .goto 63,52.08,56.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stikwad|r
    .turnin 13879 >>Turn in Thunder Peak
    .target Stikwad
step
    #questguide
    .goto 63,52.08,56.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arctanus|r
    .accept 13884 >>Accept Put Out The Fire
    .target Arctanus
step
    #questguide
    .goto 63,52.31,56.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Core|r
    .accept 13880 >>Accept Hot Lava
    .target Core
step
    #questguide
    #completewith LavaRagers
    .goto 63,52.08,56.71,0
    +|cRXP_WARN_If you lose your|r |cRXP_FRIENDLY_Freezing Surger|r|cRXP_WARN_, talk to|r |cRXP_FRIENDLY_Arctanus|r |cRXP_WARN_again to get another|r
    .skipgossipid 111688
    .target Arctanus
step
    #questguide
    #completewith next
    >>Kill |cRXP_ENEMY_Lava Ragers|r
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
    .use 46352 >> |cRXP_WARN_Use the|r |T237588:0|t[Gift of the Earth] |cRXP_WARN_on|r |cRXP_PICK_Lava Fissures|r
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
    >>Finish killing |cRXP_ENEMY_Lava Ragers|r
    .complete 13884,1 --10/10 Lava Rager slain
    .mob Lava Rager
step
    #questguide
    .goto 63,52.08,56.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arctanus|r
    .turnin 13884 >>Turn in Put Out The Fire
    .target Arctanus
step
    #questguide
    .goto 63,52.32,56.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Core|r
    .turnin 13880 >>Turn in Hot Lava
    .target Core
step
    #questguide
    .goto 63,52.34,56.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Vortex|r
    .accept 13888 >>Accept Vortex
    .target The Vortex
step
    #questguide
    .goto 63,52.34,56.79
    .gossipoption 111689 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Vortex|r again to start the encounter with |cRXP_ENEMY_Lord Magmathar|r
    .target The Vortex
step
    #questguide
    .goto 63,49.19,39.86
    >>Kill |cRXP_ENEMY_Lord Magmathar|r
    >>|cRXP_WARN_Use|r |T252174:0|t[Sky Lightning] |cRXP_WARN_and|r |T236154:0|t[Vortex Vengeance] |cRXP_WARN_on cooldown|r
    >>|cRXP_WARN_Use|r |T135833:0|t[Extinguish Flames] |cRXP_WARN_when inflicted with|r |T135817:0|t[Lordly Immolate]
    .complete 13888,1 --1/1 Lord Magmathar slain
    .mob Lord Magmathar
step
    #questguide
    .goto 63,52.09,56.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stikwad|r
    .turnin 13888 >>Turn in Vortex
    .target Stikwad
step
    #completewith SilverwindPickups
    .goto 63,49.96,67.25,100 >> Travel to Silverwind Refuge
step
    .goto 63,49.79,65.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .turnin 2 >>Turn in Sharptalon's Claw
    .accept 13967 >>Accept Thinning the... Herd?
    .target Senani Thunderheart
    .isOnQuest 2
step
    #optional
    .goto 63,49.79,65.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .accept 13967 >>Accept Thinning the... Herd?
    .target Senani Thunderheart
step
    .goto 63,49.29,65.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wind Tamer Shoshok|r
    .fp >>Get the Silverwind Refuge Flight Path
    .target Wind Tamer Shoshok
    .subzoneskip 420,1
step
    .goto 63,49.96,67.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flooz|r
    .turnin 13974 >>Turn in Tweedle's Tiny Parcel
    .target Flooz
step
    .goto 63,50.14,67.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tarkan|r
    .accept 25 >>Accept Simmer Down Now
    .target Captain Tarkan
step
    .goto 63,49.98,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flooz|r
    .accept 13977 >>Accept Mass Production
    .target Flooz
step
    #label SilverwindPickups
    .goto 1440/1,-1225.90002,2092.80005,0
    .goto 1440/1,-1152.09998,2093.80005,0
    .goto 1440/1,-1225.90002,2092.80005,5,0
    .goto 1440/1,-1152.09998,2093.80005,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cromula|r
    .accept 26416 >>Accept Well, Come to the Jungle
    .target Cromula
step << skip
    .goto 63,49.88,65.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Aldo Rockrain|r
    .accept 25945 >>Accept We're Here to Do One Thing, Maybe Two...
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
    >>Kill |cRXP_ENEMY_Furbolgs|r. Loot them for their |cRXP_LOOT_Ears|r
    .complete 13967,1 --15/15 Furbolg Ear
    .mob Foulweald Totemic
    .mob Foulweald Warrior
    .mob Foulweald Pathfinder
step
    .goto 63,49.74,65.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .turnin 13967 >>Turn in Thinning the... Herd?
    .accept 6621 >>Accept King of the Foulweald
    .target Senani Thunderheart
step
    #optional
    .goto 63,49.74,65.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .turnin 2 >>Turn in Sharptalon's Claw
    .turnin 13967 >>Turn in Thinning the... Herd?
    .accept 6621 >>Accept King of the Foulweald
    .target Senani Thunderheart
    .isOnQuest 2
step
    .goto 63,49.74,65.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .turnin 13967 >>Turn in Thinning the... Herd?
    .accept 6621 >>Accept King of the Foulweald
    .target Senani Thunderheart
step
    .goto 63,56.37,63.54
    .use 16972 >> |cRXP_WARN_Use the|r |T237588:0|t[Gift of the Earth] |cRXP_WARN_on the Totem Mound and protect it from incoming|r |cRXP_ENEMY_Furbolgs|r
    >>Kill |cRXP_ENEMY_Chief Murgut|r once he appears. Loot the |cRXP_PICK_Basket|r for |cRXP_LOOT_Murgut's Totem|r
    .complete 6621,1 --1/1 Murgut's Totem
    .mob Chief Murgut
step
    #completewith next
    >>Kill |cRXP_ENEMY_Water Elementals|r
    .complete 25,1 --12/12 Befouled Water Elemental slain
    .mob Befouled Water Elemental
step
    .goto 1440/1,-1079.70007,1994.20007
    >>Kill |cRXP_ENEMY_Tideress|r. Loot her for the |T136222:0|t[|cRXP_LOOT_Befouled Water Globe|r]. Use it to start the quest
    .complete 25,2 --1/1 Tideress slain
    .collect 16408,1,1918 --Collect Befouled Water Globe (x1)
    .accept 1918 >>Accept The Befouled Element
    .mob Tideress
step
    #loop
    .goto 1440/1,-978.50000,2019.70007,0
    .waypoint 1440/1,-973.10004,1947.70007,50,0
    .waypoint 1440/1,-978.50000,2019.70007,50,0
    .waypoint 1440/1,-1233.80005,2025.00000,50,0
    .waypoint 1440/1,-1177.59998,1928.59998,50,0
    >>Finish killing |cRXP_ENEMY_Water Elementals|r
    .complete 25,1 --12/12 Befouled Water Elemental slain
    .mob Befouled Water Elemental
step
    .goto 63,46.16,63.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Jinx|r
    .turnin 13977 >>Turn in Mass Production
    .accept 13980 >>Accept They're Out There!
    .accept 13983 >>Accept Building Your Own Coffin
    .target Foreman Jinx
step
    #completewith KillAssassins
    >>Kill |cRXP_ENEMY_Ursangous|r. Loot him for |T132941:0|t[|cRXP_LOOT_Ursangous's Paw|r] and use it to start the quest
    >>|cRXP_WARN_He patrols around slightly|r
    .collect 16303,1,23 --Collect Ursangous's Paw (x1)
    .accept 23 >> Accept Ursangous's Paw
    .unitscan Ursangous
    .use 16303
step
    #completewith next
    >>Kill |cRXP_ENEMY_Ashenvale Assassins|r
    .use 46776 >>|cRXP_WARN_They are stealthed! Use|r |T133023:0|t[Jinx's Goggles] |cRXP_WARN_to detect them|r
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
    >>Loot |cRXP_PICK_Bronze Cogs|r, |cRXP_PICK_Locking Bolts|r and |cRXP_PICK_Copper Platings|r from the ground
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
    >>Finish killing |cRXP_ENEMY_Ashenvale Assassins|r
    .use 46776 >>|cRXP_WARN_They are stealthed! Use|r |T133023:0|t[Jinx's Goggles] |cRXP_WARN_to detect them|r
    .complete 13980,1 --12/12 Ashenvale Assassin slain
    .unitscan Ashenvale Assassin
step
    #loop
    .goto 1440/1,-597.40002,2149.40015,0
    .waypoint 1440/1,-585.00000,2234.40015,30,0
    .waypoint 1440/1,-597.40002,2149.40015,30,0
    .waypoint 1440/1,-653.40002,2121.30005,30,0
    .waypoint 1440/1,-693.90002,2149.00000,30,0
    >>Kill |cRXP_ENEMY_Ursangous|r. Loot him for |T132941:0|t[|cRXP_LOOT_Ursangous's Paw|r] and use it to start the quest
    >>|cRXP_WARN_He patrols around slightly|r
    .collect 16303,1,23 --Collect Ursangous's Paw (x1)
    .accept 23 >> Accept Ursangous's Paw
    .unitscan Ursangous
    .use 16303
step
    .goto 63,46.16,63.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Jinx|r
    .turnin 13980 >>Turn in They're Out There!
    .turnin 13983 >>Turn in Building Your Own Coffin
    .target Foreman Jinx
step
    .goto 63,49.75,65.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senani Thunderheart|r
    .turnin 6621 >>Turn in King of the Foulweald
    .target Senani Thunderheart
step
    .goto 63,50.13,67.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tarkan|r
    .turnin 25 >>Turn in Simmer Down Now
    .turnin 23 >>Turn in Ursangous' Paw
    .target Captain Tarkan
step
    #completewith next
    .goto 63,60.65,52.69,100 >> Travel to Raynewood Retreat
step
    .goto 63,60.65,52.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thagg|r
    .turnin 13958 >>Turn in Condition Critical!
    .accept 13962 >>Accept Stalemate
    .target Thagg
step
    #completewith next
    >>Kill |cRXP_ENEMY_Shadumbra|r. Loot her for |T132225:0|t[|cRXP_LOOT_Shadumbra's Head|r] and use it to start the quest
    >>|cRXP_ENEMY_Shadumbra|r patrols around slightly
    .collect 16304,1,24 --Collect Shadumbra's Head
	.accept 24 >> Accept Shadumbra's Head
	.unitscan Shadumbra
    .use 16304
step
    .goto 63,62.04,51.41
    >>Kill |cRXP_ENEMY_Keeper Ordanus|r at the top floor of the building
    .complete 13962,1 --1/1 Keeper Ordanus slain
    .mob Keeper Ordanus
step
    #loop
    .goto 1440/1,-1825.50000,2708.69995,0
    .waypoint 1440/1,-1867.09998,2752.19995,30,0
    .waypoint 1440/1,-1825.50000,2708.69995,30,0
    .waypoint 1440/1,-1857.90002,2660.80005,30,0
    >>Kill |cRXP_ENEMY_Shadumbra|r. Loot her for |T132225:0|t[|cRXP_LOOT_Shadumbra's Head|r] and use it to start the quest
    >>|cRXP_ENEMY_Shadumbra|r patrols around the building
    .collect 16304,1,24 --Collect Shadumbra's Head
	.accept 24 >> Accept Shadumbra's Head
	.unitscan Shadumbra
    .use 16304
step
    .goto 63,60.67,52.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thagg|r
    .turnin 13962 >>Turn in Stalemate
    .target Thagg
step
    #completewith FlytoSP
    .hs >> Hearth to Hellscream's Watch
    .use 6948
    .subzoneskip 4691
    .cooldown item,6948,>0,1
step
    #completewith FlytoSP
    .subzone 4691 >>Travel to Hellscream's Watch
    .cooldown item,6948,<0
step
    .goto 63,38.56,42.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Goggath|r
    >>|cRXP_WARN_He patrols around|r
    .turnin 24 >>Turn in Shadumbra's Head
    .target Captain Goggath
    .isOnQuest 24
step
    #label FlytoSP
    #completewith next
    .goto 63,38.08,42.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thraka|r
    .fly Splintertree Post >>Fly to Splintertree Post
    .target Thraka
step
    .goto 63,74.12,60.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yama|r
    .turnin 6482 >> Turn in Freedom to Ruul
    .target Yama Snowhoof
step
    .goto 63,74.19,60.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mastok Wrilehiss|r
    .accept 1918 >>Accept The Befouled Element
    .turnin 1918 >>Turn in The Befouled Element
    .target Mastok Wrilehiss
    .itemcount 16408,1
step
    #optional
    #label AshenvaleEnd
step
    #optional
    #sticky
    .abandon 2 >>Abandon Sharptalon's Claw as it won't get turned in anymore
step
    #completewith STV1
    .goto 63,73.18,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vhulgra|r
    .fly Orgrimmar >>Fly to Orgrimmar
    .target Vhulgra
    .zoneskip Orgrimmar
step << Rogue/Warlock
    #completewith next
    .goto 1454,45.81,66.88,40 >> Travel toward the Cleft of Shadow
step << Shaman/Druid/Paladin/Warrior/Hunter/Priest
    #completewith next
    .goto 1454/1,-4291.89990,1876.70007,50 >> Travel to the Valley of Wisdom
step << Rogue
    .goto 1454,44.65,61.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gordul|r
    .trainer >> Train your class spells
    .target Gordul
step << Rogue
    .goto 1454,29.60,50.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rekkul|r.
    .vendor >>|cRXP_BUY_Stock up on|r |T132273:0|t[Poisons]
    .target Rekkul
step << Shaman
    .goto 1454/1,-4282.60010,1884.09998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sahi|r
    .trainer >> Train your class spells
    .target Sahi Cloudsinger
step << Druid
    .goto 1454/1,-4285.10010,1889.09998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shalla|r
    .trainer >> Train your class spells
    .target Shalla Whiteleaf
step << Mage
    .goto 1454/1,-4125.10010,1690.59998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uthel'nay|r
    .trainer >> Train your class spells
    .target Uthel'nay
step << Mage
    .goto 1454/1,-4128.89990,1692.09998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zirazi the Star-Gazer|r
    .train 3567 >>Train |T135759:0|t[Teleport: Orgrimmar]
    .train 3563 >>Train |T135766:0|t[Teleport: Undercity]
    .train 3566 >>Train |T135765:0|t[Teleport: Thunder Bluff]
    .train 32272 >>Train |T135761:0|t[Teleport: Silvermoon]
    .target Zirazi the Star-Gazer
    .xp <24,1
step << Mage
    .goto 1454/1,-4382.50000,1673.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Horthus|r
    .collect 17031,20 >>|cRXP_BUY_Buy a stack of|r |T134419:0|t[Rune of Teleportation] |cRXP_BUY_from him|r
    .target Horthus
step << Priest
    .goto 1454/1,-4297.60010,1863.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liwatha|r
    .trainer >> Train your class spells
    .target Seer Liwatha
step << Warlock
    .goto 1454,54.49,39.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
    .trainer >> Train your class spells
    .target Mirket
step << Paladin
    .goto 1454/1,-4292.50000,1863.70007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Atohmo|r
    .trainer >> Train your class spells
    .target Sunwalker Atohmo
step << Hunter
    .goto 1454/1,-4281.00000,1872.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nohi|r
    .trainer >> Train your class spells
    .target Nohi Plainswalker
step << Warrior
    .goto 1454/1,-4284.00000,1867.80005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nahu|r
    .trainer >> Train your class spells
    .target Nahu Ragehoof


    --Next section is flying back only for final Ashenvale quest, not worth xp wise. Nice bow reward for hunters though..

step
    #questguide
    .goto 85,49.21,72.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r inside Grommash Hold
    .turnin 13841 >>Turn in All Apologies
    .accept 13842 >>Accept Dread Head Redemption
    .target Eitrigg
    .isQuestTurnedIn 13798
step
    #questguide
    .goto 85,53.62,78.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Gryshka|r
    .home >>Set your Hearthstone to Orgrimmar
    .target Innkeeper Gryshka
    .isQuestTurnedIn 13841
step
    #questguide
    #completewith STV1
    .goto 85,49.64,59.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
    .fly Splintertree Post >>Fly to Splintertree Post
    .target Doras
    .zoneskip Ashenvale
    .isQuestTurnedIn 13841
step
    #questguide
    .goto 63,72.20,57.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Durak|r inside the cave
    .complete 13842,1 --1/1 Durak Persuaded
    .skipgossip
    .target Durak
    .isQuestTurnedIn 13841
step
    #questguide
    .goto 63,72.22,56.76
    >>Follow |cRXP_ENEMY_Durak|r until he becomes hostile, then kill him
    .complete 13842,2 --1/1 Durak slain
    .mob Durak
    .isQuestTurnedIn 13841
step
    #questguide
    .hs >> Hearth to Orgrimmar
    .use 6948
    .cooldown item,6948,>2
    .zoneskip Orgrimmar
    .isQuestTurnedIn 13841
step
    #questguide
    #completewith STV1
    .goto 63,73.18,61.58
    .fly Orgrimmar >>Fly to Orgrimmar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vhulgra|r
    .target Vhulgra
    .cooldown item,6948,<0
    .zoneskip Orgrimmar
    .isQuestTurnedIn 13841
step
    #questguide
    .goto 85,49.20,72.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eitrigg|r
    .turnin 13842 >>Turn in Dread Head Redemption
    .target Eitrigg
    .isQuestTurnedIn 13841
step
    .goto 85,51.31,56.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bort|r
    .turnin 26416 >>Turn in Well, Come to the Jungle
    .accept 26417 >>Accept Northern Stranglethorn: The Fallen Empire
    .target Bort
    .isOnQuest 26416
    --STV breadcrumb quest
step
    #label STV1
    #optional
    .goto 85,51.31,56.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bort|r
    .accept 26417 >>Accept Northern Stranglethorn: The Fallen Empire
    .target Bort
    .isQuestTurnedIn 26416
    ]])
