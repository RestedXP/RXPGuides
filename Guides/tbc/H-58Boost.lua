RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP TBC Guide (H)
<< Horde
#name Boosted Character 58-60
#subgroup RestedXP Horde Boosted 58-60
#subweight -1
#title Boosted Character 58-60
#next 60-61 Hellfire Peninsula

step
+As soon as you log in for the first time, finish the little tutorial section in front of your class trainer to get access to all of the boosted gear
.use 185964
.use 186051
.use 186052
.use 186053
.use 186054
.use 186055
.use 186056
.use 186057
.isQuestAvailable 64035 << Alliance
.isQuestAvailable 64052 << Horde !Druid
.isQuestAvailable 64053 << Horde Druid
step << Druid
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >>Fly to Orgrimmar
    .target Tal
    .zoneskip Orgrimmar
step << Mage
    .goto Orgrimmar,38.66,85.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Thuul|r at the top of the hut
    .train 3567 >> Train |T135759:0|t[Teleport: Orgrimmar]
    .train 11417 >> Train |T135744:0|t[Portal: Orgrimmar]
    .target Thuul
step << Warlock
    .goto Orgrimmar,47.52,46.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgul|r
	.vendor >>Buy any pet upgrades you can afford
	.target Kurgul
step
    .goto Orgrimmar,54.65,67.65
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barkeep Morag|r
	.vendor >>|cRXP_BUY_Buy 2 stacks of food|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Buy 2 stacks of food and water|r << Rogue/Warrior
	.target Barkeep Morag
step
    #completewith next
    .goto Orgrimmar,49.1,94.5,30 >>Exit Orgrimmar
    .complete 64217,1 --Visit Snurk Bucksquick, the Zeppelin Master (1)
    .zoneskip Durotar
step
    .goto Durotar,50.8,13.8,40 >>Go up the Zeppelin Tower
    .complete 64063,1 --Visit Snurk Bucksquick, the Zeppelin Master (1)
    .zone Tirisfal Glades >>Take the Zeppelin to Tirisfal Glades
    .zoneskip Tirisfal Glades
    .zoneskip Undercity
    .zoneskip Western Plaguelands
step
    #completewith UCflightpath1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Enter Undercity
    .zoneskip Undercity
step
    #completewith UCflightpath1
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Take the lift down to the Undercity
step
    #label UCflightpath1
    .isQuestAvailable 5211
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Get the Undercity Flight Path
    .target Michael Garrett
step
	#completewith next
	.subzone 152 >> Exit Undercity and travel to the Bulwark
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTravel to the Bulwark, then talk to |cRXP_FRIENDLY_Derrington|r
    .accept 5096 >>Accept Scarlet Diversions
	.target High Executor Derrington
step
	.goto Western Plaguelands,26.55,56.18
	>>Click the |cRXP_PICK_Box of Incendiaries|r by the fire
	.collect 12814,1,5096,1 --Flame in a Bottle (1)
step
    .goto Tirisfal Glades,83.19,68.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garush|r
    .turnin 5405 >>Turn in Argent Dawn Commission
	.target Argent Officer Garush
step
    .goto Tirisfal Glades,83.2,71.4
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mehlar Dawnblade|r
    .accept 9443 >>Accept in The So-Called Mark of the Lightbringer
    .target Mehlar Dawnblade
step
    .goto Tirisfal Glades,83.29,72.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mickey|r
    .turnin 5901 >>Turn in A Plague Upon Thee
    .accept 5902 >>Accept A Plague Upon Thee
	.target Mickey Levine
step
    #completewith next
    .use 12846 >>|cRXP_WARN_Equip your|r |T133440:0|t[Argent Dawn Commission] |cRXP_WARN_trinket|r
step
    .goto Western Plaguelands,40.5,51.8
    .use 12807 >>Click the |cRXP_PICK_Command Tent|r, then use your |T132484:0|t[Scourge Banner]
	>>|cRXP_WARN_These mobs are relatively difficult and can chain-pull each other, so be careful|r
    .complete 5096,1 --Destroy the command tent and plant the Scourge banner in the camp (1)
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derrington|r
    .turnin 5096 >>Turn in Scarlet Diversions
    .accept 5098 >>Accept All Along the Watchtowers
    .accept 5228 >>Accept The Scourge Cauldrons
	.target High Executor Derrington
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vandis|r
    .turnin 5228 >>Turn in The Scourge Cauldrons
    .accept 5229 >>Accept Target: Felstone Field
	.target Shadow Priestess Vandis
step
    .goto Western Plaguelands,37.12,57.18
    >>Kill |cRXP_ENEMY_Cauldron Lord Bilemaw|r. Loot him for his |cRXP_LOOT_Cauldron Key|r
    .complete 5229,1 --Felstone Field Cauldron Key (1)
    .unitscan Cauldron Lord Bilemaw
step
    .goto Western Plaguelands,37.2,56.8
	>>Click the |cRXP_PICK_Scourge Cauldron|r roiling atop the dais
    .turnin 5229 >>Turn in Target: Felstone Field
    .accept 5230 >>Accept Return to the Bulwark
step
    .goto Western Plaguelands,38.40,54.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janice|r on the second floor of the house
    .accept 5021 >>Accept Better Late Than Never
	.target Janice Felstone
step
    #label FelstoneField
    .goto Western Plaguelands,38.8,55.3
	>>Click |cRXP_PICK_Janice's Parcel|r in the barn
	>>|cRXP_WARN_You can click it through the hallway wall if you want to skip the mobs inside|r
    .turnin 5021 >>Turn in Better Late Than Never
    .accept 5023 >>Accept Better Late Than Never
step
	#completewith next
	.subzone 152 >> Return to The Bulwark
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vandis|r
    .turnin 5230 >>Turn in Return to the Bulwark
    .accept 5231 >>Accept Target: Dalson's Tears
	.target Shadow Priestess Vandis
step
	#sticky
	#completewith wplbf
	+|cRXP_WARN_Make sure you kill & loot mobs between each tower for|r |T133724:0|t[Bone Fragments]
    .collect 22526,30,91261 --Bone Fragments
step
    #label TowerOne
    .goto Western Plaguelands,40.15,71.50
    .use 12815 >>Use your |T135432:0|t[Beacon Torch] on the outside corner of the tower's doorway
	>>|cRXP_WARN_Do not engage the elite inside|r
    .complete 5098,1 --Tower One marked (1)
step
    .goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r on the top floor of the inn
    .accept 4971 >>Accept A Matter of Time
	.target Chromie
step
    .goto Western Plaguelands,44.24,63.06
    .use 12815 >>Use your |T135432:0|t[Beacon Torch] on the outside corner of the tower's doorway
	>>|cRXP_WARN_Do not engage the elite inside|r
    .complete 5098,3 --Tower Three marked (1)
step
    .goto Western Plaguelands,45.8,63.3
	.use 12627 >>Spawn the |cRXP_ENEMY_Temporal Parasites|r by using your |T134229:0|t[Temporal Displacer] near the glowing silos
	>>|cRXP_WARN_Temporal Parasites spam Slow and can spawn more parasites upon death. Be ready to run to the water if they begin overwhelming you; they cannot swim|r
    .complete 4971,1 --Temporal Parasite (10)
	.mob Temporal Parasite
step
    .goto Western Plaguelands,46.73,71.14
    .use 12815 >>Use your |T135432:0|t[Beacon Torch] on the outside corner of the tower's doorway
	>>|cRXP_WARN_Do not engage the elite inside|r
    .complete 5098,4 --Tower Four marked (1)
step
    .goto Western Plaguelands,46.04,52.33
    >>Kill |cRXP_ENEMY_Cauldron Lord Malvinous|r. Loot him for his |cRXP_LOOT_Cauldron Key|r
    .complete 5231,1 --Dalson's Tears Cauldron Key (1)
	.unitscan Cauldron Lord Malvinious
step
    .goto Western Plaguelands,46.2,52.0
	>>Click the |cRXP_PICK_Scourge Cauldron|r roiling atop the dais
    .turnin 5231 >>Turn in Target: Dalson's Tears
    .accept 5232 >>Accept Return to the Bulwark
step
    .goto Western Plaguelands,47.8,50.6
	>>Click |cRXP_PICK_Mrs. Dalson's Diary|r
    .turnin 5058 >>Turn in Mrs. Dalson's Diary
step
    .goto Western Plaguelands,47.49,51.00
	>>Kill the |cRXP_ENEMY_Wandering Skeleton|r. Loot it for its |cRXP_LOOT_Outhouse Key|r
	>>|cRXP_WARN_Grind Bone Fragments if the skeleton isn't spawned|r
	.collect 12738,1 -- Dalson Outhouse Key (x1)
	.unitscan Wandering Skeleton
step
	#completewith next
    .goto Western Plaguelands,48.2,49.7
    >>Click the |cRXP_PICK_Outhouse|r
    .turnin 5059 >>Turn in Locked Away
step
    .goto Western Plaguelands,48.2,49.7
	>>Kill |cRXP_ENEMY_Farmer Dalson|r. Loot him for his |cRXP_LOOT_Cabinet Key|r
    .collect 12739,1,5060 --Collect Dalson Cabinet Key (x1)
	.unitscan Farmer Dalson
step
    .goto Western Plaguelands,47.4,49.7
	>>Click the |cRXP_PICK_Locked Cabinet|r on the top floor of the house
    .turnin 5060 >>Turn in Locked Away
step
    .goto Western Plaguelands,51.92,28.07
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirsta|r
    .accept 6004 >>Accept Unfinished Business
	.target Kirsta Deepshadow
step
	#completewith next
    .goto Western Plaguelands,50.43,41.12,70,0
    .goto Western Plaguelands,53.50,36.85,70,0
    .goto Western Plaguelands,50.43,41.12,70,0
    >>Kill |cRXP_ENEMY_Scarlet Mages|r and |cRXP_ENEMY_Scarlet Knights|r
	>>|cRXP_WARN_The|r |cRXP_ENEMY_Mages|r |cRXP_WARN_and|r |cRXP_ENEMY_Knights|r |cRXP_WARN_share respawns. If necessary, kill extra mobs to reset the area|r
    .complete 6004,3 --Scarlet Mage (2)
	.mob +Scarlet Mage
	.complete 6004,4 --Scarlet Knight (2)
	.mob +Scarlet Knight
step
    .goto Western Plaguelands,51.77,44.13,70,0
    .goto Western Plaguelands,40.83,52.30,70,0
    .goto Western Plaguelands,47.35,51.54,0
    .goto Western Plaguelands,51.77,44.13
	>>Kill |cRXP_ENEMY_Scarlet Medics|r and |cRXP_ENEMY_Scarlet Hunters|r
	>>|cRXP_ENEMY_Medics|r |cRXP_WARN_and|r |cRXP_ENEMY_Hunters|r |cRXP_WARN_can be found in the camps. If necessary, kill extra mobs to reset the area|r
    .complete 6004,1 --Scarlet Medic (2)
	.mob +Scarlet Medic
    .complete 6004,2 --Scarlet Hunter (2)
	.mob +Scarlet Hunter
step
    .goto Western Plaguelands,50.43,41.12,70,0
    .goto Western Plaguelands,53.50,36.85,70,0
    .goto Western Plaguelands,50.43,41.12
    >>Finish killing |cRXP_ENEMY_Scarlet Mages|r and |cRXP_ENEMY_Scarlet Knights|r
	>>|cRXP_WARN_The|r |cRXP_ENEMY_Mages|r |cRXP_WARN_and|r |cRXP_ENEMY_Knights|r |cRXP_WARN_share respawns. If necessary, kill extra mobs to reset the area|r
    .complete 6004,3 --Scarlet Mage (2)
	.mob +Scarlet Mage
	.complete 6004,4 --Scarlet Knight (2)
	.mob +Scarlet Knight
step
    .goto Western Plaguelands,51.92,28.07
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirsta|r
    .turnin 6004 >>Turn in Unfinished Business
    .accept 6023 >>Accept Unfinished Business
	.target Kirsta Deepshadow
step
    .goto Western Plaguelands,57.83,36.10
	>>Kill |cRXP_ENEMY_Huntsman Radley|r
	>>|cRXP_WARN_The mobs around her can chain pull easily. The Spellbinders cast Frost Nova|r
    .complete 6023,1 --Huntsman Radley (1)
	.unitscan Huntsman Radley
step
    .goto Western Plaguelands,54.64,23.71
	>>Kill |cRXP_ENEMY_Cavalier Durgen|r
	>>|cRXP_WARN_This encounter is much more safe if you wait for him to patrol out of the tower before pulling. He has a 5 second, instant cast stun|r
    .complete 6023,2 --Cavalier Durgen (1)
	.unitscan Cavalier Durgen
step
	#label crusader
    .goto Western Plaguelands,55.1,23.5
    >>Loot the |cRXP_PICK_Holy Coffer|r at the top of the tower for |cRXP_LOOT_Mark of the Lightbringer|r
	>>|cRXP_WARN_The |cRXP_ENEMY_Scarlet High Clerist|r (63  elite) may be up. Skip this quest if needed|r
    .complete 9443,1 --Mark of the Lightbringer (1)
    .unitscan Scarlet High Clerist
step
	#label Businessman
    .goto Western Plaguelands,51.92,28.07
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirsta|r
    .turnin 6023 >>Turn in Unfinished Business
    .accept 6025 >>Accept Unfinished Business
	.target Kirsta Deepshadow
step
    #label HearthglenOverlook
    .goto Western Plaguelands,47.94,21.43,60,0
    .goto Western Plaguelands,43.31,17.34,50,0
    .goto Western Plaguelands,45.6,18.6
    >>Run into Hearthglen and follow the arrow to reset the mobs once you're inside
    >>Run up to the top of the tower. Be careful as the Paladins outside can heal. You can try running past them/Crowd controlling them and going to the top
    >>|cRXP_WARN_Be mindful that mobs have no Z axis range. They can hit you from the bottom of the tower if they're directly below you|r
    .complete 6025,1 --Overlook Hearthglen from a high vantage point (1)
step
    .goto Western Plaguelands,51.92,28.06
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tLeave Hearthglen, then talk to |cRXP_FRIENDLY_Kirsta|r
    .turnin 6025 >>Turn in Unfinished Business
	.target Kirsta Deepshadow
step
	#completewith next
	.subzone 152 >> Return to The Bulwark
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vandis|r
    .turnin 5232 >>Turn in Return to the Bulwark
    .accept 5233 >>Accept Target: Writhing Haunt
	.target Shadow Priestess Vandis
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derrington|r
    .turnin 5098 >>Turn in All Along the Watchtowers
    .accept 838 >>Accept Scholomance
	.target High Executor Derrington
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dithers|r
    .turnin 838 >>Turn in Scholomance
    .accept 964 >>Accept Skeletal Fragments
	.target Apothecary Dithers
step
    .goto Tirisfal Glades,83.2,71.4
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mehlar Dawnblade|r
    .turnin 9443 >>Turn in The So-Called Mark of the Lightbringer
    .accept 9444 >>Accept Defiling Uther's Tomb
    .target Mehlar Dawnblade
	.isQuestComplete 9443
step
    #optional
    .goto Tirisfal Glades,83.2,71.4
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mehlar Dawnblade|r
    .accept 9444 >>Accept Defiling Uther's Tomb
    .target Mehlar Dawnblade
	.isQuestTurnedIn 9443
step
	.goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r on the top floor of the inn
    .turnin 4971 >>Turn in A Matter of Time
    .accept 4972 >>Accept Counting Out Time
	.target Chromie
step
	#completewith next
	>>Loot the |cRXP_PICK_Small Lockboxes|r in the ruined buildings for |cRXP_LOOT_Andorhal Watches|r
    .complete 4972,1 --Andorhal Watch (5)
	.isOnQuest 4972
step
    #loop
	.goto Western Plaguelands,46.40,70.00,0
	.goto Western Plaguelands,46.40,70.00,50,0
	.goto Western Plaguelands,45.60,72.20,50,0
	.goto Western Plaguelands,42.60,71.40,50,0
	.goto Western Plaguelands,41.60,73.20,50,0
	.goto Western Plaguelands,38.80,71.00,50,0
	.goto Western Plaguelands,38.80,68.20,50,0
	.goto Western Plaguelands,40.40,66.40,50,0
	.goto Western Plaguelands,42.60,70.00,50,0
	.goto Western Plaguelands,43.40,64.40,50,0
	.goto Western Plaguelands,45.80,65.80,50,0
	>>Kill all |cRXP_ENEMY_Skeletons|r in Andorhal. Loot them for their |cRXP_LOOT_Fragments|r
	>>|cRXP_ENEMY_Skeletal Executioners|r |cRXP_WARN_can execute|r
    .complete 964,1 --Skeletal Fragments (15)
	.mob Skeletal Executioner
	.mob Skeletal Acolyte
	.mob Skeletal Warlord
	.mob Skeletal Sorcerer
	.mob Skeletal Flayer
	.mob Skeletal Terror
step
    #loop
	.goto Western Plaguelands,40.40,66.50,0
	.goto Western Plaguelands,40.40,66.50,30,0
	.goto Western Plaguelands,38.90,68.10,30,0
	.goto Western Plaguelands,41.30,69.80,30,0
	.goto Western Plaguelands,42.80,73.90,30,0
	.goto Western Plaguelands,43.60,73.40,30,0
	.goto Western Plaguelands,45.10,73.70,30,0
	.goto Western Plaguelands,46.50,73.00,30,0
	.goto Western Plaguelands,44.80,70.50,30,0
	.goto Western Plaguelands,42.90,68.50,30,0
	.goto Western Plaguelands,40.90,67.20,30,0
	>>Loot the |cRXP_PICK_Small Lockboxes|r in the ruined buildings for |cRXP_LOOT_Andorhal Watches|r
    .complete 4972,1 --Andorhal Watch (5)
	.isOnQuest 4972
step
    .goto Western Plaguelands,49.13,78.53
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marlene|r inside the house
    .accept 5142 >>Accept Little Pamela
	.target Marlene Redpath
step
    .goto Western Plaguelands,52.1,83.3
    .use 23691 >>|cRXP_WARN_Equip the|r |T135160:0|t[Corrupted Mark of the Lightbringer] |cRXP_WARN_in your off-hand|r
    >>|cRXP_WARN_Use the|r |T135160:0|t[Corrupted Mark of the Lightbringer] |cRXP_WARN_at Uther's Tomb|r
    .complete 9444,1 --Uther's Tomb Defiled (1)
    .isQuestTurnedIn 9443
step
    .goto Western Plaguelands,53.07,65.97
    >>Kill |cRXP_ENEMY_Cauldron Lord Razarch|r. Loot him for his |cRXP_LOOT_Cauldron Key|r
	>>|cRXP_ENEMY_Freezing Ghouls|r |cRXP_WARN_have a 5-second long, instant cast AoE stun|r
    .complete 5233,1 --Writhing Haunt Cauldron Key (1)
	.unitscan Cauldron Lord Razarch
step
    .goto Western Plaguelands,53.0,65.7
	>>Click the |cRXP_PICK_Scourge Cauldron|r roiling atop the dais
	>>|cRXP_ENEMY_Freezing Ghouls|r |cRXP_WARN_have a 5-second long, instant cast AoE stun|r
    .turnin 5233 >>Turn in Target: Writhing Haunt
    .accept 5234 >>Accept Return to the Bulwark
step
    #label WildlifePU
    .goto Western Plaguelands,53.73,64.66
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mulgris|r inside the house
	>>|cRXP_ENEMY_Freezing Ghouls|r |cRXP_WARN_have a 5-second long, instant cast AoE stun|r
    .accept 4984 >>Accept The Wildlife Suffers Too
	.target Mulgris Deepriver
step
    #loop
	.goto Western Plaguelands,46.80,39.60,0
	.goto Western Plaguelands,46.80,39.60,70,0
	.goto Western Plaguelands,45.80,46.40,70,0
	.goto Western Plaguelands,43.40,54.80,70,0
	.goto Western Plaguelands,46.00,59.20,70,0
	.goto Western Plaguelands,51.60,61.60,70,0
	.goto Western Plaguelands,51.00,53.20,70,0
	.goto Western Plaguelands,50.00,46.60,70,0
	.goto Western Plaguelands,47.80,43.40,70,0
	>>Kill |cRXP_ENEMY_Diseased Wolves|r
	>>|cRXP_ENEMY_Diseased Wolves|r |cRXP_WARN_share spawns with|r |cRXP_ENEMY_Carrion Lurkers|r|cRXP_WARN_. If necessary, kill them to reset the area|r
    .complete 4984,1 --Diseased Wolf (8)
	.unitscan Diseased Wolf
step
    .goto Western Plaguelands,53.73,64.66
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mulgris|r
    .turnin 4984 >>Turn in The Wildlife Suffers Too
    .accept 4985 >>Accept The Wildlife Suffers Too
	.target Mulgris Deepriver
step
    #loop
    .goto Western Plaguelands,56.08,63.26,0
    .goto Western Plaguelands,56.08,63.26,90,0
    .goto Western Plaguelands,60.15,59.93,90,0
    .goto Western Plaguelands,59.43,52.40,90,0
    .goto Western Plaguelands,68.18,46.23,90,0
	>>Kill |cRXP_ENEMY_Diseased Grizzlies|r
	>>|cRXP_ENEMY_Diseased Grizzlies|r |cRXP_WARN_share spawns with|r |cRXP_ENEMY_Plague Lurkers|r|cRXP_WARN_. If necessary, kill them to reset the area|r
    .complete 4985,1 --Diseased Grizzly (8)
	.unitscan Diseased Grizzly
step
	.goto Eastern Plaguelands,26.55,74.72
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos|r
    .accept 6022 >>Accept To Kill With Purpose
	.target Nathanos Blightcaller
step
	.goto Eastern Plaguelands,27.28,85.22
	>>Click the big |cRXP_PICK_Torn Scroll|r on the ground inside the crypt
    .accept 6024 >>Accept Hameya's Plea
step
    .goto Eastern Plaguelands,36.47,90.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela|r
    .turnin 5142 >>Turn in Little Pamela
    .accept 5149 >>Accept Pamela's Doll
	.target Pamela Redpath
step
    .goto Eastern Plaguelands,38.10,92.24
	>>Loot the 3 |cRXP_PICK_Doll Parts|r on the floor in ruined buildings
	>>|cRXP_WARN_Clicking the doll pieces can spawn a few|r |cRXP_ENEMY_Ghosts of the Past|r |cRXP_WARN_which have ice armor and frost shock|r
	.collect 12886,1,5149,1 -- Pamela's Doll's Head
	.unitscan Ghost of the Past
    .isOnQuest 5149
step
    .goto Eastern Plaguelands,39.64,92.51
	>>Loot the 3 |cRXP_PICK_Doll Parts|r on the floor in ruined buildings
	>>|cRXP_WARN_Clicking the doll pieces can spawn a few|r |cRXP_ENEMY_Ghosts of the Past|r |cRXP_WARN_which have ice armor and frost shock|r
	.collect 12887,1,5149,1 -- Pamela's Doll's Left Side
	.unitscan Ghost of the Past
    .isOnQuest 5149
step
    .goto Eastern Plaguelands,39.67,90.24
	>>Loot the 3 |cRXP_PICK_Doll Parts|r on the floor in ruined buildings
	>>|cRXP_WARN_Clicking the doll pieces can spawn a few|r |cRXP_ENEMY_Ghosts of the Past|r |cRXP_WARN_which have ice armor and frost shock|r
	.collect 12888,1,5149,1 -- Pamela's Doll's Right Side
	.unitscan Ghost of the Past
    .isOnQuest 5149
step
    .goto Eastern Plaguelands,36.47,90.80
	.use 12886 >>|cRXP_WARN_Click|r |T134164:0|t[Pamela's Doll's Head] |cRXP_WARN_to combine the three pieces|r
    .complete 5149,1 --Pamela's Doll (1)
    .isOnQuest 5149
step
    .goto Eastern Plaguelands,36.47,90.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela|r
    .turnin 5149 >>Turn in Pamela's Doll
    .accept 5152 >>Accept Auntie Marlene
    .accept 5241 >>Accept Uncle Carlin
	.target Pamela Redpath
    .isQuestComplete 5149
step
    #optional
    .goto Eastern Plaguelands,36.47,90.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamela|r
    .accept 5152 >>Accept Auntie Marlene
    .accept 5241 >>Accept Uncle Carlin
	.target Pamela Redpath
    .isQuestTurnedIn 5149
step
	#completewith RottingUndead
	.subzone 2264 >> Travel to Corrin's Crossing
step
	#completewith next
	>>Kill |cRXP_ENEMY_Undead|r. Loot them for their |cRXP_LOOT_Living Rot|r.
	>>|cRXP_WARN_Groups of elites patrol the north and east road. Invisible mobs patrol inside of Corrin's Crossing, so try to pull mobs out|r
	.collect 15447,7 --Living Rot (7)
	.mob Hate Shrieker
	.mob Scourge Warder
	.mob Stitched Horror
	.mob Gibbering Ghoul
	.mob Unseen Servant
	.mob Dark Caster
step
	#label RottingUndead
    #loop
	.goto Eastern Plaguelands,58.20,70.20,0
	.goto Eastern Plaguelands,58.20,70.20,25,0
	.goto Eastern Plaguelands,60.40,71.60,25,0
	.goto Eastern Plaguelands,61.00,69.40,25,0
	.goto Eastern Plaguelands,61.40,66.40,25,0
	.goto Eastern Plaguelands,59.40,66.40,25,0
	.goto Eastern Plaguelands,58.00,67.60,25,0
	.use 15454 >>|cRXP_WARN_Use the|r |T133748:0|t[Mortar and Pestle] |cRXP_WARN_before the |cRXP_LOOT_Living Rot|r expires|r
    .complete 6022,1 --Coagulated Rot (1)
step
	#completewith LHFP
	.subzone 2268 >> Travel to Light's Hope Chapel
step
    .goto Eastern Plaguelands,79.60,63.87
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alen|r
    .accept 6021 >>Accept Zaeldarr the Outcast
    .accept 5281 >>Accept The Restless Souls
	.target Caretaker Alen
step
    .goto Eastern Plaguelands,81.51,59.77
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin|r
    .turnin 5241 >>Turn in Uncle Carlin
    .accept 5211 >>Accept Defenders of Darrowshire
	.target Carlin Redpath
step
    .goto Eastern Plaguelands,81.627,58.077
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jessica Chambers|r
    .home >> Set your Hearthstone to Light's Hope Chapel
    .target Jessica Chambers
    .bindlocation 2268
    .subzoneskip 2268,1
step
    #completewith next
    .subzone 2273 >> Travel to Zul'Mashar
step
	.goto Eastern Plaguelands,64.25,22.09,50,0
	.goto Eastern Plaguelands,68.57,20.95,50,0
	.goto Eastern Plaguelands,69.23,18.48
	>>Kill |cRXP_ENEMY_Infiltrator Hameya|r. Loot her for her |cRXP_LOOT_Key|r
	>>|cRXP_WARN_You should be able to avoid all the mobs en route up the mountain. Run past them all then run up the mountains to the east. Do not go near the graves|r
    .complete 6024,1 --Hameya's Key (1)
	.unitscan Infiltrator Hameya
step
	#completewith Termites
	.subzone 2277 >> Travel to Plaguewood
step
    #completewith Egan1
    .goto Eastern Plaguelands,77.11,48.00,0
    .goto Eastern Plaguelands,67.30,40.67,0
	.goto Eastern Plaguelands,26.48,37.58,0
	>>Kill |cRXP_ENEMY_Diseased Flayers|r and |cRXP_ENEMY_Gibbering Ghouls|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darrowshire Spirits|r that appear over their corpses
	>>|cRXP_WARN_These mobs share spawns with a few mob types, so kill everything after all the ghouls have died|r
    .complete 5211,1 --Darrowshire Spirits Freed (15)
	.unitscan Diseased Flayer;Gibbering Ghoul;Cannibal Ghoul
	.skipgossip
step
    #label Termites
    #loop
    .goto Eastern Plaguelands,42.80,34.24,0
    .goto Eastern Plaguelands,39.97,21.11,50,0
    .goto Eastern Plaguelands,34.90,24.67,50,0
    .goto Eastern Plaguelands,30.69,24.99,50,0
    .goto Eastern Plaguelands,26.59,23.84,50,0
    .goto Eastern Plaguelands,24.19,23.62,50,0
    .goto Eastern Plaguelands,21.15,24.05,50,0
    .goto Eastern Plaguelands,20.90,29.89,50,0
    .goto Eastern Plaguelands,23.75,32.44,50,0
    .goto Eastern Plaguelands,26.48,37.58,50,0
    .goto Eastern Plaguelands,29.55,34.13,50,0
    .goto Eastern Plaguelands,34.89,35.29,50,0
    .goto Eastern Plaguelands,42.80,34.24,50,0
	>>Loot the tan |cRXP_PICK_Termite Mounds|r for its |cRXP_LOOT_Termites|r
    .complete 5901,1 --Plagueland Termites (100)
step
    #label Egan1
    .goto Eastern Plaguelands,14.45,33.74
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEnter the house, then talk to |cRXP_FRIENDLY_Egan|r and |cRXP_FRIENDLY_Augustus|r
    .turnin 5281 >>Turn in The Restless Souls
	.target Egan
    .isOnQuest 5281
step
    #loop
    .goto Eastern Plaguelands,77.11,48.00,0
    .goto Eastern Plaguelands,67.30,40.67,0
    .goto Eastern Plaguelands,26.48,37.58,0
	.goto Eastern Plaguelands,68.20,40.80,60,0
	.goto Eastern Plaguelands,68.60,38.60,60,0
	.goto Eastern Plaguelands,66.00,36.00,60,0
	.goto Eastern Plaguelands,64.60,38.00,60,0
	.goto Eastern Plaguelands,65.40,41.20,60,0
	.goto Eastern Plaguelands,66.60,38.60,60,0
	.goto Eastern Plaguelands,68.20,40.80,60,0
	>>Kill |cRXP_ENEMY_Diseased Flayers|r and |cRXP_ENEMY_Gibbering Ghouls|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Darrowshire Spirits|r that appear over their corpses
	>>|cRXP_WARN_These mobs share spawns with a few mob types, so kill everything after all the ghouls have died|r
    .complete 5211,1 --Darrowshire Spirits Freed (15)
	.unitscan Diseased Flayer;Gibbering Ghoul;Cannibal Ghoul
	.skipgossip
step
    #loop
    .goto Eastern Plaguelands,77.11,48.00,0
    .goto Eastern Plaguelands,67.30,40.67,0
    .goto Eastern Plaguelands,26.48,37.58,0
	.goto Eastern Plaguelands,68.20,40.80,60,0
	.goto Eastern Plaguelands,68.60,38.60,60,0
	.goto Eastern Plaguelands,66.00,36.00,60,0
	.goto Eastern Plaguelands,64.60,38.00,60,0
	.goto Eastern Plaguelands,65.40,41.20,60,0
	.goto Eastern Plaguelands,66.60,38.60,60,0
	.goto Eastern Plaguelands,68.20,40.80,60,0
    >>Kill more |cRXP_ENEMY_Undead|r in the zone for |T133447:0|t[|cRXP_LOOT_Minion's Scourgestone|r]
    .collect 12840,20 --Minion's Scourgestones (x20)
step
    #completewith next
    .hs >>Hearth to Light's Hope Chapel
    .bindlocation 2268,1
    .subzoneskip 2268
    .cooldown item,6948,>2,1
step
    .goto Eastern Plaguelands,81.44,59.81
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nicholas|r and |cRXP_FRIENDLY_Carlin|r
	.turnin 5510 >>Turn in Minion's Scourgestones
	.target Duke Nicholas Zverenhoff
step
    .goto Eastern Plaguelands,81.05,57.55
    >>Talk to |cRXP_FRIENDLY_Metz|r
    .accept 9141 >> Accept They Call Me "The Rooster"
    .turnin 9141 >> Turn in They Call Me "The Rooster"
    .target Dispatch Commander Metz
    .itemcount 12844,1 --Argent Dawn Valor Token (1)
step
    .goto Eastern Plaguelands,81.51,59.77
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carlin|r
    .turnin 5211 >>Turn in Defenders of Darrowshire
	.target Carlin Redpath
step
    #completewith UCvisit2
	.goto Eastern Plaguelands,80.22,57.01
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Georgia|r
    .fly Undercity >>Fly to Undercity
	.target Georgia
	.zoneskip Undercity
step
    .goto Undercity,69.79,43.16
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bauhaus|r
    .turnin 5023 >>Turn in Better Late Than Never
    .accept 5049 >>Accept The Jeremiah Blues
	.target Royal Overseer Bauhaus
step
    .goto Undercity,67.61,44.14
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeremiah|r
    .turnin 5049 >>Turn in The Jeremiah Blues
    .accept 5050 >>Accept Good Luck Charm
	.target Jeremiah Payson
step
    .goto Undercity,51.88,64.49,30,0
    .goto Undercity,58.07,91.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sylvanas|r
    .accept 5961 >>Accept The Champion of the Banshee Queen
	.target Lady Sylvanas Windrunner
step
    #label UCvisit2
	#completewith next
    .goto Tirisfal Glades,61.85,66.59,60 >>Exit Undercity
	.zoneskip Tirisfal Glades
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vandis|r
    .turnin 5234 >>Turn in Return to the Bulwark
    .accept 5235 >>Accept Target: Gahrron's Withering
	.target Shadow Priestess Vandis
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dithers|r
    .turnin 964 >>Turn in Skeletal Fragments
	.target Apothecary Dithers
    .isQuestComplete 964
step
    .goto Tirisfal Glades,83.29,72.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mickey|r
    .turnin 5901 >>Turn in A Plague Upon Thee
    .accept 5902 >>Accept A Plague Upon Thee
	.target Mickey Levine
step
	#optional
    .isQuestTurnedIn 5901
    .destroy 15043 >>Delete any left over |T134321:0|t[Plagueland Termites]
step
    .goto Western Plaguelands,38.40,54.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClimb to the top floor of the building, then talk to |cRXP_FRIENDLY_Janice|r
    .turnin 5050 >>Turn in Good Luck Charm
    .accept 5051 >>Accept Two Halves Become One
	.target Janice Felstone
step
    #loop
	.line Western Plaguelands,36.8,58.6,36.4,56.4,37.4,55.6,38.6,56.2,37.8,57.6,36.8,58.6
	.goto Western Plaguelands,36.80,58.60,0
	.goto Western Plaguelands,36.80,58.60,50,0
	.goto Western Plaguelands,36.40,56.40,50,0
	.goto Western Plaguelands,37.40,55.60,50,0
	.goto Western Plaguelands,38.60,56.20,50,0
	.goto Western Plaguelands,37.80,57.60,50,0
	>>Kill the |cRXP_ENEMY_Jabbering Ghoul|r. Loot it for the |cRXP_LOOT_Good Luck Other-Half-Charm|r
    .use 12722 >> Use it to create the |cRXP_LOOT_Good Luck Good Luck Charm|r
    .complete 5051,1 --Good Luck Charm (1)
	.unitscan Jabbering Ghoul
step
    .goto Western Plaguelands,38.40,54.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Janice|r on the top floor of the building
    .turnin 5051 >>Turn in Two Halves Become One
	.target Janice Felstone
step
    .goto Western Plaguelands,49.13,78.53
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marlene|r inside the house
    .turnin 5152 >>Turn in Auntie Marlene
    .accept 5153 >>Accept A Strange Historian
	.target Marlene Redpath
step
    .goto Western Plaguelands,49.69,76.75
	>>Loot |cRXP_PICK_Joseph Redpath's Monument|r for |cRXP_LOOT_Joseph's Wedding Ring|r
    .complete 5153,1 --Joseph's Wedding Ring (1)
step
    .goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r on the top floor of the inn
    .turnin 5153 >>Turn in A Strange Historian
    .accept 5154 >>Accept The Annals of Darrowshire
    .turnin 4972 >>Turn in Counting Out Time
	.target Chromie
step
    .goto Western Plaguelands,43.4,69.6
	>>Loot |cRXP_PICK_Musty Tomes|r inside the town hall until you loot the |cRXP_LOOT_Annals of Darrowshire|r
	>>|cRXP_WARN_Many books are fake and spawn mobs when opened. The real books have entirely white pages, no gray/dark coloration. You may have to click fake books in order to spawn a real one|r
    .complete 5154,1 --Annals of Darrowshire (1)
	.link https://i.imgur.com/B2HDb6K.png >> Click HERE for a visual example
step
    .goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r on the top floor of the inn
    .turnin 5154 >>Turn in The Annals of Darrowshire
    .accept 5210 >>Accept Brother Carlin
	.target Chromie
step
    .goto Western Plaguelands,53.73,64.66
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mulgris|r
    .turnin 4985 >>Turn in The Wildlife Suffers Too
    .accept 4987 >>Accept Glyphed Oaken Branch
	.target Mulgris Deepriver
step
    .goto Western Plaguelands,62.80,58.76
    >>Kill |cRXP_ENEMY_Cauldron Lord Soulwrath|r. Loot him for his |cRXP_LOOT_Cauldron Key|r
	>>|cRXP_WARN_This mob has a 10-second silencing disease|r << !Priest
	>>|cRXP_WARN_This mob has a 10-second silencing disease; pre-cast Abolish Disease and keep it up|r << Priest
    .complete 5235,1 --Gahrron's Withering Cauldron Key (1)
	.unitscan Cauldron Lord Soulwrath
step
    .goto Western Plaguelands,62.5,58.6
	>>Click the |cRXP_PICK_Scourge Cauldron|r roiling atop the dais
    .turnin 5235 >>Turn in Target: Gahrron's Withering
    .accept 5236 >>Accept Return to the Bulwark
step
	.goto Eastern Plaguelands,28.03,86.16
	>>Click on the |cRXP_PICK_mound of dirt|r behind the crypt
    .turnin 6024 >>Turn in Hameya's Plea
	.isQuestComplete 6024
step
	.goto Eastern Plaguelands,26.55,74.72
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nathanos|r
    .turnin 6022 >>Turn in To Kill With Purpose
	.turnin 5961 >>Turn in The Champion of the Banshee Queen
	.target Nathanos Blightcaller
step
	#completewith next
	.subzone 192 >>Travel to Northridge Lumber Camp
step
	.goto Western Plaguelands,48.35,32.00
	>>Enter the mill. Click the |cRXP_PICK_Northridge Lumber Mill Crate|r by the ramp, then click the |cRXP_PICK_Termite Barrel|r
    .turnin 5902 >>Turn in A Plague Upon Thee
    .accept 6390 >>Accept A Plague Upon Thee
step
    .goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chromie|r on the top floor of the inn
    .turnin 5154 >>Turn in The Annals of Darrowshire
	.target Chromie
step
	#completewith next
	.subzone 152 >>Travel back to the Bulwark
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vandis|r
    .turnin 5236 >>Turn in Return to the Bulwark
	.target Shadow Priestess Vandis
step
    .goto Tirisfal Glades,83.30,72.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mickey|r
    .turnin 6390 >>Turn in A Plague Upon Thee
	.target Mickey Levine
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Derrington|r
    .turnin 5238 >>Turn in Mission Accomplished!
	.target High Executor Derrington
step << skip
    .goto Tirisfal Glades,61.87,59.11
    >>|cRXP_WARN_Go up the Zeppelin Tower|r
    .zone Stranglethorn Vale >>Take the Zeppelin to Stranglethorn
step << skip
    .goto Stranglethorn Vale,32.5,29.3
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thysta|r
    .complete 64217,2 << Druid--Speak to Thysta at Grom'gol Base Camp (1)
    .complete 64063,2 << !Druid--Speak to Thysta at Grom'gol Base Camp (1)
	.target Thysta
step << skip
    .goto Stranglethorn Vale,32.5,29.3
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thysta|r
	.fly Stonard >> Fly to Stonard
	.target Thysta
    .subzoneskip 75
step << skip
	#completewith next
	.goto Swamp of Sorrows,33.4,71.9,60,0
	.goto Swamp of Sorrows,33.2,68.4,60,0
	.zone Blasted Lands >> Travel to Blasted Lands

step << skip
    .goto Blasted Lands,58.1,56.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warlord Dar'toon|r
    --.turnin 64063 >>Turn in The Dark Portal << !Druid
    --.turnin 64217 >>Turn in The Dark Portal << Druid
    --.accept 9407 >>Accept Through the Dark Portal
    .target Warlord Dar'toon

]])
