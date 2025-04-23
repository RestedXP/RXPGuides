
--Max Level Campaign

RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP The War Within
#subgroup 11.0 Max Level Campaign (80)
#name a) Against the Current
#displayname |cRXP_WARN_Chapter 1|r - Against the Current
#next b) Ties That Bird
#subweight 6

step
    .isOnQuest 84365
    .goto 2339,47.40,44.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .turnin 84365 >>Turn in Something on the Horizon
    .target Brann Bronzebeard
step
    .isQuestTurnedIn 84365
    .goto 2339,47.40,44.39
    .gossipoption 123770 >>Talk to Brann to skip the remaining level-up campaign.
step
    .isQuestTurnedIn 84365
    .goto 2339,47.40,44.39
    .gossipoption 123771 >>Talk to Brann to skip the remaining level-up campaign.
step
    .goto 2339,36.12,80.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r
    .accept 79333 >>Accept The Fleet Arrives
    .target Moira Thaurissan
step
    .goto 2339,35.13,80.28
    >>Click on the |cRXP_PICK_Telescope|r
    .complete 79333,1 --1/1 Telescope used
step
    .goto 2339,36.12,80.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r
    .complete 79333,2 --1/1 Report back to Moira
    .timer 8,RP
    .skipgossipid 121591
    .target Moira Thaurissan
step << Alliance
    .goto 2339,35.88,81.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .turnin 79333 >>Turn in The Fleet Arrives
    .target Lady Jaina Proudmoore
    .accept 82153 >>Accept Embassies and Envoys
step << Horde
    .goto 2339,36.2,81.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 79333 >>Turn in The Fleet Arrives
    .target Lady Jaina Proudmoore
    .accept 79328 >>Accept Embassies and Envoys
step << Horde
    .goto 2339,30.34,63.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dornogal Steward|r
    .complete 79328,1 --1/1 Horde Embassy steward found in Dornogal
    .skipgossipid 121623
    .target Dornogal Steward
step << Horde
    .goto 2339,30.14,62.79
    >>Click on the |cRXP_PICK_Horde Banner|r
    .complete 79328,2,1 --2/2 Horde banners placed
step << Horde
    .goto 2339,30.65,63.55
    >>Click on the |cRXP_PICK_Horde Banner|r
    .complete 79328,2,2 --2/2 Horde banners placed
step << Horde
    .goto 2339,27.35,69.22
    >>Click on the |cRXP_PICK_Large Horde Banner|r
    .complete 79328,3,1 --5/5 Decorations placed inside
step << Horde
    .goto 2339,26.32,67.67
    >>Click on the |cRXP_PICK_Large Horde Banner|r
    .complete 79328,3,2 --5/5 Decorations placed inside
step << Horde
    .goto 2339,26.31,67.31
    >>Click on the |cRXP_PICK_Weapon Rack|r
    .complete 79328,3,3 --5/5 Decorations placed inside
step << Horde
    .goto 2339,26.21,67.08
    >>Click on the |cRXP_PICK_Strongbox|r
    .complete 79328,3,4 --5/5 Decorations placed inside
step << Horde
    .goto 2339,27.02,65.5
    >>Click on the |cRXP_PICK_Small Horde Banner|r
    .complete 79328,3,5 --5/5 Decorations placed inside
step << Horde
    .goto 2339,28.36,66.24
    .skipgossipid 121721
    .skipgossipid 122248
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dornogal Steward|r
    .complete 79328,4 --1/1 Document signed
    .target Dornogal Steward
step << Horde
    #completewith next
    #title Leave House
    .goto 2339,30.58,62.84,10 >> Leave the House
step << Horde
    .goto 2339,31.79,59.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r
    .turnin 79328 >>Turn in Embassies and Envoys
    .target Moira Thaurissan
step << Alliance
    .goto 2339,30.33,56.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dornogal Steward|r
    .complete 82153,1 --1/1 Alliance Embassy steward found in Dornogal
    .skipgossipid 122277
    .target Dornogal Steward
step << Alliance
    .goto 2339,30.14,56.49
    >>Click on the |cRXP_PICK_Alliance banner|r
    .complete 82153,2,1 --2/2 Alliance banners placed
step << Alliance
    .goto 2339,30.66,55.72
    >>Click on the |cRXP_PICK_Alliance banner|r
    .complete 82153,2,2 --2/2 Alliance banners placed
step << Alliance
    .goto 2339,28.93,53.53,10,0
    .goto 2339,28.86,51.07
    >>Click on the |cRXP_PICK_Small Alliance banner|r
    .complete 82153,3,1 --5/5 Decorations placed inside
step << Alliance
    .goto 2339,27.86,49.89
    >>Click on the |cRXP_PICK_Supplies|r
    .complete 82153,3,2 --5/5 Decorations placed inside
step << Alliance
    .goto 2339,27.6,49.86
    >>Click on the |cRXP_PICK_Alliance Weapon Rack|r
    .complete 82153,3,3 --5/5 Decorations placed inside
step << Alliance
    .goto 2339,27.39,50.01
    >>Click on the |cRXP_PICK_Large Alliance Banner|r
    .complete 82153,3,4 --5/5 Decorations placed inside
step << Alliance
    .goto 2339,26.34,51.58
    >>Click on the |cRXP_PICK_Large Alliance Banner|r
    .complete 82153,3,5 --5/5 Decorations placed inside
step << Alliance
    .goto 2339,28.35,53.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dornogal Steward|r
    .complete 82153,4 --1/1 Document signed
    .skipgossipid 121721
    .skipgossipid 122278
    .target Dornogal Steward
step << Alliance
    .goto 2339,31.79,59.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r
    .turnin 82153 >>Turn in Embassies and Envoys
    .target Moira Thaurissan
step
    .goto 2339,31.79,59.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r
    .accept 83271 >>Accept There's Always Another Secret
step
    .goto 2339,29.76,59.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dagran Thaurissan II|r
    .complete 83271,1 --1/1 Talk to Dagran Thaurissan II
    .skipgossipid 122851
    .target Dagran Thaurissan II
step
    .goto 2339,29.75,59.67
    >>Click on the |cRXP_PICK_Waygate|r |cRXP_WARN_[1]|r
    .complete 83271,2 --1/1 Waygate activated
    .skipgossipid 122852
step
    .goto 2339,29.75,59.67
    >>Click on the |cRXP_PICK_Waygate|r |cRXP_WARN_[2]|r
    .complete 83271,3 --1/1 Waygate used
step
    .goto 2367,49.79,60.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Speaker Brinthe|r
    .turnin 83271 >>Turn in There's Always Another Secret
    .target High Speaker Brinthe
    .accept 83286 >>Accept What's Hidden Beneath Dornogal
step
    #completewith next
    .goto 2367,49.63,63.79
    .gossipoption 122926 >>Click on the |cRXP_PICK_Central Archives Console.|r
step
    .goto 2367,49.63,63.79
    >>Connect Sparkling Orbs in a way that ensures no lines intersect with each other.
    .complete 83286,1 --1/1 Restart the central console
    .skipgossipid 122926
step
    .goto 2367,49.96,60.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Speaker Brinthe|r
    .turnin 83286 >>Turn in What's Hidden Beneath Dornogal
    .target High Speaker Brinthe
    .accept 83315 >>Accept Preparing for the Unknown
step
    #completewith next
    .goto 2367,49.93,35.87
    .cast 296687 >>Click on the |cRXP_PICK_Waygate|r
step
    .goto 2339,31.77,59.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r
    .turnin 83315 >>Turn in Preparing for the Unknown
    .target Moira Thaurissan
step
    .goto 2339,31.77,59.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r
    .accept 79344 >>Accept Urban Odyssey
step
    .goto 2339,47.8,45.83,10,0
    .goto 2339,47.36,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brann Bronzebeard|r
    .complete 79344,1 --1/1 Delver's Headquarters found
    .target Brann Bronzebeard
step
    #completewith next
    #title Enter House
    .goto 2339,51.44,42.19,10 >> Enter the House
step
    .goto 2339,52.08,42.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vaskarn|r
    .complete 79344,3 --1/1 Item upgrades and crest exchange vendors found
    .target Vaskarn
step
    #completewith next
    #title Leave House
    .goto 2339,51.09,41.43,10 >>Leave the House
step
    .goto 2339,39.08,24.14
    #title |cFFFCDC00Follow the Arrow|r
    .complete 79344,2 --1/1 Keepers of Renown found
    .goto 2339,39.29,24.1
step
    #completewith next
    .goto 2339,40.72,22.36
    .cast 431519 >>Click on the |cRXP_PICK_Earthen Teleporter|r
step
    .goto 2339,31.78,59.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moira Thaurissan|r
    .turnin 79344 >>Turn in Urban Odyssey
    .target Moira Thaurissan
]])

RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP The War Within
#subgroup 11.0 Max Level Campaign (80)
#name b) Ties That Bird
#displayname |cRXP_WARN_Chapter 2|r - Ties That Bird
#next c) News from Below
#subweight 6

step
    .goto 2339,31.54,59.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .accept 79107 >>Accept After the Storm
    .target Alleria Windrunner
step
    .goto 2339,38.28,70.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stormrider Meirand|r
    .complete 79107,1,1 --4/4 Stormriders assessed
    .skipgossip
    -- .skipgossipid 121934
    -- .skipgossipid 121930
    .target Stormrider Meirand
step
    .goto 2339,38.28,70.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stormrider Vokmar|r
    .complete 79107,1,2 --4/4 Stormriders assessed
    .skipgossip
    -- .skipgossipid 121935
    -- .skipgossipid 121936
    -- .skipgossipid 121948
    .target Stormrider Vokmar
step
    .goto 2339,38.3,71.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stormrider Edeltrau|r
    .complete 79107,1,3 --4/4 Stormriders assessed
    .skipgossip
    -- .skipgossipid 121935
    -- .skipgossipid 121936
    -- .skipgossipid 121943
    .target Stormrider Edeltrau
step
    .goto 2339,38.38,71.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stormrider Hunfrid|r
    .complete 79107,1,4 --4/4 Stormriders assessed
    .skipgossip
    -- .skipgossipid 121937
    -- .skipgossipid 121938
    .target Stormrider Hunfrid
step
    .goto 2339,38.31,71.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rooktender Lufsela|r
    .complete 79107,2 --1/1 Lufsela questioned
    .skipgossipid 122017
    .target Rooktender Lufsela
step
    #completewith next
    .goto 2248,47.64,52.08,10 >>|cRXP_WARN_Follow the Arrow|r
step
    .goto 2339,37.46,82.17
    >>|cRXP_WARN_Approach |cRXP_FRIENDLY_Rooktender Lufsela|r from behind to avoid a stun.|r
    *|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rooktender Lufsela|r
    .turnin 79107 >>Turn in After the Storm
    .target Rooktender Lufsela
    .accept 81914 >>Accept Dhar Oztan
step
    .goto 2248,28.54,61.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olbarig|r
    .turnin 81914 >>Turn in Dhar Oztan
    .target Olbarig
    .accept 79124 >>Accept Conduit of the Southern Storm
step
    .goto 2248,28.55,61.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olbarig|r
    .accept 79124 >>Accept Conduit of the Southern Storm
    .target Olbarig
step
    #completewith Conduit of the Southern Storm
    .goto 2248,27.82,59.95,30 >>Take flight and ascend the tower
    #title Fly up the Tower
step
    #completewith Conduit of the Southern Storm
    .goto 2248,27.73,59.69,10 >> Enter the Tower
    #title Enter the Tower
step
    #label Conduit of the Southern Storm
    .goto 2248,27.73,59.93,5,0
    .goto 2248,27.73,59.58,5,0
    .goto 2248,27.77,59.69
    >>|cRXP_WARN_Descend the Tower by carefully jumping off the stairs|r
    *Click on |cRXP_PICK_Click on the Chest.|r
    .complete 79124,2 --1/1 Conduit of the Southern Storm
    .skipgossipid 122158
step
    #completewith next
    .goto 2248,27.83,59.94,10 >>Descend the Tower
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rooktender Lufsela|r and |cRXP_FRIENDLY_Olbarig|r
    .turnin 79124 >>Turn in Conduit of the Southern Storm
    .goto 2248,27.65,60.48
    .target +Rooktender Lufsela
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olbarig|r
    .accept 79475 >>Accept Charging Up That Hill
    .accept 79476 >>Accept Heeding the Call
    .goto 2248,27.65,60.53
    .target +Olbarig
step
    #completewith Stranded Earthen
    >>Kill |cRXP_ENEMY_Stirred Cobblestone,|r |cRXP_ENEMY_Charged Spirecrystal|r and |cRXP_ENEMY_Charged Storm Wolf|r
    .complete 79475,1 --Conduit charged (100%)
    .mob Stirred Cobblestone
    .mob Charged Spirecrystal
    .mob Charged Storm Wolf
step
    .goto 2248,27.27,58.82,15,0
    .goto 2248,28.45,57.91
    >>Click on |cRXP_PICK_Stranded Pilgrim|r
    #title Kill enemies along the way
    .complete 79476,1,2 --8/8 Stranded Earthen helped
    .target Stranded Pilgrim
step
    .goto 2248,26.88,56.11
    >>Click on |cRXP_PICK_Stranded Pilgrim|r
    #title Kill enemies along the way
    .complete 79476,1,4 --8/8 Stranded Earthen helped
    .target Stranded Pilgrim
step
    .goto 2248,26.78,57.82,15,0
    .goto 2248,26.02,58.7
    >>Click on |cRXP_PICK_Stranded Pilgrim|r
    #title Kill enemies along the way
    .complete 79476,1,6 --8/8 Stranded Earthen helped
    .target Stranded Pilgrim
step
    #label Stranded Earthen
    .goto 2248,25.78,57.81
    >>Click on |cRXP_PICK_Stranded Pilgrim|r
    #title Kill enemies along the way
    .complete 79476,1,8 --8/8 Stranded Earthen helped
    .target Stranded Pilgrim
step
    #loop
    .goto 2248,25.15,56.92,30,0
    .goto 2248,26.09,58.51,30,0
    .goto 2248,27.09,59.67,30,0
    .goto 2248,28.16,57.57,30,0
    .goto 2248,27.08,56.41,30,0
    .goto 2248,26.49,57.97,30,0
    >>Kill |cRXP_ENEMY_Stirred Cobblestone,|r |cRXP_ENEMY_Charged Spirecrystal|r and |cRXP_ENEMY_Charged Storm Wolf|r
    .complete 79475,1 --Conduit charged (100%)
    .mob Stirred Cobblestone
    .mob Charged Spirecrystal
    .mob Charged Storm Wolf
step
    .goto 2248,25.62,57.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rooktender Lufsela|r
    .turnin 79475 >>Turn in Charging Up That Hill
    .target Rooktender Lufsela
    .turnin 79476 >>Turn in Heeding the Call
    .accept 79129 >>Accept Rook Rally
step
    .goto 2248,25.07,58.12
    >>Kill |cRXP_ENEMY_Rampant Air Elemental|r and |cRXP_ENEMY_Rampant Thunder Elemental|r
    .complete 79129,1 --Ritual safeguarded (100%)
    .mob Rampant Air Elemental
    .mob Rampant Thunder Elemental
step
    .goto 2248,24.90,58.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rooktender Lufsela|r
    .complete 79129,2 --1/1 Lufsela encouraged
    .skipgossipid 120784
    .target Rooktender Lufsela
step
    .goto 2248,27.82,60.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 79129 >>Turn in Rook Rally
    .target Thrall
    .accept 79146 >>Accept Ground Pounders
step
    .goto 2248,33.32,63.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adelgonn|r
    .turnin 79146 >>Turn in Ground Pounders
    .target Adelgonn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Exarch Turalyon|r and |cRXP_FRIENDLY_Overlord Geya'rah|r
    .accept 79145 >>Accept Metal and Stone
    .goto 2248,33.33,63.38
    .target +High Exarch Turalyon
    .accept 79140 >>Accept Goldbricking
    .goto 2248,33.29,63.32
    .target +Overlord Geya'rah
step
    #loop
    .goto 2248,33.2,62.4,30,0
    .goto 2248,32.91,62.16,30,0
    .goto 2248,32.93,62.17,30,0
    .goto 2248,33.19,60.97,30,0
    .goto 2248,33.31,60.72,30,0
    .goto 2248,33.74,60.75,30,0
    .goto 2248,33.86,62.28,30,0
    .goto 2248,34.3,62.56,30,0
    .goto 2248,34.89,62.7,30,0
    .goto 2248,35.09,63.15,30,0
    .goto 2248,33.6,63.38,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Undisciplined Earthen|r and defeat them.
    .complete 79140,1 --8/8 Undisciplined Earthen sparred
    .target Undisciplined Earthen
    .skipgossip
step
    .goto 2248,34.24,63.79
    >>Click on the Weapon Rack based |cRXP_WARN_on the Onscreen Instructions|r
    .complete 79145,1 --10/10 Earthen Trainees armed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Exarch Turalyon|r and |cRXP_FRIENDLY_Overlord Geya'rah|r
    .turnin 79145 >>Turn in Metal and Stone
    .goto 2248,33.32,63.38
    .target +High Exarch Turalyon
    .turnin 79140 >>Turn in Goldbricking
    .goto 2248,33.29,63.32
    .target +Overlord Geya'rah
step
    .goto 2248,33.32,63.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adelgonn|r
    .accept 81915 >>Accept Home to Roost
    .target Adelgonn
step
    .goto 2248,28.98,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rooktender Lufsela|r
    .turnin 81915 >>Turn in Home to Roost
    .target Rooktender Lufsela
    .accept 79477 >>Accept Strays
step
    .goto 2248,23.66,67.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stormrider Gurnot|r
    .complete 79477,1,1 --3/3 Stray recruits found
    .target Stormrider Gurnot
    .skipgossipid 120977
step
    .goto 2248,23.47,51.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stormrider Adalar|r
    .complete 79477,1,2 --3/3 Stray recruits found
    .target Stormrider Adalar
    .skipgossipid 120968
step
    .goto 2248,31.48,56.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stormrider Kothilde|r
    .complete 79477,1,3 --3/3 Stray recruits found
    .skipgossipid 120979
    .target Stormrider Kothilde
step
    .goto 2248,29.06,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurdran Wildhammer|r
    .turnin 79477 >>Turn in Strays
    .target Kurdran Wildhammer
    .accept 79147 >>Accept Flight Training 101
    .timer 14,Roleplay Duration
step
    .goto 2248,28.94,61.62
    >>Wait for the roleplay
    .complete 79147,1 --1/1 Rook supercharging witnessed
step
    .goto 2248,28.94,61.62
    >>Click on |cRXP_PICK_Shraubendre|r: You can fly yourself for a faster trip, or let the NPC fly, |cRXP_WARN_which is slower.|r
    .complete 79147,2 --1/1 Shraubendre mounted
    -- .skipgossipid 122439
    -- .skipgossipid 121165
    .target Shraubendre
step
    .goto 2248,27.96,57.17,10,0
    .goto 2248,30.48,56.86,10,0
    .goto 2248,31.64,53.76,10,0
    .goto 2248,30.76,50.4,10,0
    .goto 2248,27.06,45.84,10,0
    .goto 2248,28.13,43.82,10,0
    .goto 2248,31.67,41.07,10,0
    .goto 2248,36.19,35.78,10,0
    .goto 2248,39.03,34.62,10,0
    .goto 2248,40.84,37.26,10,0
    .goto 2248,41.68,40.84,10,0
    .goto 2248,41.48,43.92,10,0
    .goto 2248,38.88,49.33,10,0
    .goto 2248,40.07,54.56,10,0
    .goto 2248,43.28,57.82,10,0
    .goto 2248,43.14,60.2,10,0
    .goto 2248,41.04,60.4,10,0
    .goto 2248,39.31,60.36,10,0
    .goto 2248,36.21,59.98,10,0
    .goto 2248,31.97,64.32,10,0
    >>|cRXP_WARN_Fly through the rings.|r
    .complete 79147,3 --1/1 Maneuvering lesson complete
step
    .goto 2248,35.02,72.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurdran Wildhammer|r
    .turnin 79147 >>Turn in Flight Training 101
    .target Kurdran Wildhammer
    .accept 81912 >>Accept Flight Training 102
step
    #completewith next
    .gossipoption 122555 >>Click on |cRXP_PICK_Shraubendre|r |cRXP_WARN_If you are not mounted on him already|r
    .target Shraubendre
step
    .goto 2248,38.25,71.25,120,0
    .goto 2248,39.08,75.2,120,0
    .goto 2248,43.22,75.82,120,0
    .goto 2248,45.21,75.79,120,0
    .goto 2248,44.87,73.49,120,0
    .goto 2248,43.78,67.67,120,0
    .goto 2248,46.53,67.46,120,0
    .goto 2248,49.97,72.14,120,0
    .goto 2248,50.79,66.63,120,0
    .goto 2248,53.36,64.03,120,0
    .goto 2248,55.47,63.17,120,0
    .goto 2248,59.23,62.56,120,0
    .goto 2248,61.27,62.94,120,0
    >>Use |T4640498:0|t[Skwyard Ascent] from |cRXP_WARN_far and near|r to hit the |cRXP_PICK_Targets|r,
    --x |cRXP_WARN_even when they disappear; they will still count toward quest credit.|r
    *For additional vigor, fly through the green orbs on your path and use |T4640489:0|t[Second Wind] whenever it's off cooldown.
    .complete 81912,1 --15/15 Targets hit
step
    .goto 2248,61.75,65.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurdran Wildhammer|r
    .turnin 81912 >>Turn in Flight Training 102
    .target Kurdran Wildhammer
    .accept 81913 >>Accept Flight Training 103
step
    #completewith next
    .gossipoption 121166 >>Click on |cRXP_PICK_Shraubendre|r |cRXP_WARN_If you are not mounted on him already|r
    .target Shraubendre
step
    .goto 2248,68.96,70.62
    >>Use |T4640498:0|t[Skwyard Ascent] from |cRXP_WARN_far and near|r to hit |cRXP_PICK_Shalemaws|r
    *For additional vigor, fly through the green orbs on your path and use |T4640489:0|t[Second Wind] whenever it's off cooldown.
    .complete 81913,1 --50/50 Shalemaws blasted
    .mob Tiderusher Shalemaw
step
    .goto 2248,75.97,39.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olbarig|r
    .turnin 81913 >>Turn in Flight Training 103
    .target Olbarig
    .accept 79480 >>Accept Paying Respects
step
    #loop
    .goto 2248,76.57,35.66,40,0
    .goto 2248,75.35,35.92,40,0
    .goto 2248,75.09,37.76,40,0
    .goto 2248,76.05,39.26,40,0
    >>Kill |cRXP_ENEMY_Faithful of Zirix|r
    .complete 79480,1 --8/8 Faithful of Zirix slain
    .mob Faithful of Zirix
step
    .goto 2248,76.56,35.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olbarig|r
    .turnin 79480 >>Turn in Paying Respects
    .target Olbarig
    .accept 79156 >>Accept The Edicts
step
    .goto 2248,57.06,50.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merrix|r
    .complete 79156,1 --1/1 Report to Merrix
    .skipgossipid 121537
step
    .goto 2248,57.06,50.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merrix|r
    .turnin 79156 >>Turn in The Edicts
    .target Merrix
    .accept 79157 >>Accept Titanic Failsafe
step
    .goto 2248,57.24,50.69
    >>Click on |cRXP_PICK_Shraubendre|r
    .complete 79157,1 --1/1 Shraubendre mounted
    .skipgossipid 122477
step
    .goto 2248,60.97,76.58
    >>Use |T4640498:0|t[Skwyard Ascent] to hit the |cRXP_PICK_Colossal Titan Construct|r
    *Use |T4640490:0|t[Surge Forward] to shield yourself from incoming attacks.
    *For additional vigor, fly through the green orbs on your path and use |T4640489:0|t[Second Wind] whenever it's off cooldown.
    .complete 79157,2 --1/1 Colossal Titan Construct slain
    .mob Colossal Titan Construct
step
    .goto 2339,31.54,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .turnin 79157 >>Turn in Titanic Failsafe
    .target Alleria Windrunner
    .accept 79224 >>Accept Gathering Intel


]])

RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP The War Within
#subgroup 11.0 Max Level Campaign (80)
#name c) News from Below
#displayname |cRXP_WARN_Chapter 3|r - News from Below
#next d) The Machines to War
#subweight 6


step
    .goto 2339,31.54,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .target Alleria Windrunner
    .accept 79224 >>Accept Gathering Intel
step
    #completewith next
    .goto 2339,63.62,52.36
    .zone 2255 >>Take the burrow to Azj-Kahet
step
    .goto 2255,55.76,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Widow Arak'nai|r
    .turnin 79224 >>Turn in Gathering Intel
    .target Widow Arak'nai
    .accept 79227 >>Accept A Spider's-Eye View
step
    .isOnQuest 79227
    .goto 2213,49.73,20.22
    .cast 423519 >>Click on |cRXP_PICK_Vizier's Scouting Shadecaster|r |cRXP_WARN_on the hut.|r
    .timer 2,RP
step
    .isOnQuest 79227
    .goto 2213,78.72,41.78
    .complete 79227,1 --1/1 Umbral Bazaar scouted
    .cast 423519 >>Click on |cRXP_PICK_Weaver's Scouting Shadecaster|r |cRXP_WARN_on the hut.|r
    .timer 2,RP
step
    .isOnQuest 79227
    .goto 2255,64.18,74.20
    .complete 79227,3 --1/1 Twitching Gorge scouted
    .cast 423519 >>Click on |cRXP_PICK_General's Scouting Shadecaster|r |cRXP_WARN_on the hut.|r
    .timer 2,RP
step
    .goto 2213,69.54,71.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r
    .complete 79227,2 --1/1 Eastern Span scouted
    .turnin 79227 >>Turn in A Spider's-Eye View
    .target Lilian Voss
    .accept 79230 >>Accept Creeping Through Corridors
step
    .goto 2213,69.47,72.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Y'tekhi|r
    .accept 79233 >>Accept Lab Access
    .target Y'tekhi
step
    #completewith Central Warehouse investigated
    >>Kill |cRXP_ENEMY_Loyalist Mutagenician|r and |cRXP_ENEMY_Loyalist Bio-smith.|r Loot them for |T1391773:0|t[|cRXP_LOOT_Loyalist Secretions|r]
    *Use your |cRXP_WARN_ExtraActionButton|r to distract nearby patrolling guards if they are in the way.
    .complete 79233,1 --6/6 Loyalist Secretions
    .mob Loyalist Mutagenician
    .mob Loyalist Bio-smith
step
    #completewith next
    #title Enter House
    .goto 2213,68.31,80.63,10 >> Enter the House
step
    .goto 2213,68.63,81.57
    >>Click on |cRXP_PICK_Cannister of Vile Ooze.|r
    .complete 79230,1 --1/1 Eastern Stockpile investigated
step
    #completewith next
    #title Leave House
    .goto 2213,67.69,79.65,10 >> Leave the House
step
    #label Central Warehouse investigated
    .goto 2213,61.88,89.53
    >>Click on |cRXP_PICK_Suspicious Shipping Container.|r
    *Kill |cRXP_ENEMY_Ascension-Crazed Soldier|r
    .complete 79230,2 --1/1 Central Warehouse investigated
    .mob Ascension-Crazed Soldier
step
    #loop
    .goto 2213,54.52,84.64,40,0
    .goto 2213,63.96,87.09,40,0
    .goto 2213,72.17,78.49,40,0
    .goto 2213,68.07,63.29,40,0
    .goto 2213,57.86,62.09,40,0
    >>Kill |cRXP_ENEMY_Loyalist Mutagenician|r and |cRXP_ENEMY_Loyalist Bio-smith.|r Loot them for |T1391773:0|t[|cRXP_LOOT_Loyalist Secretions|r]
    *Use your |cRXP_WARN_ExtraActionButton|r to distract nearby patrolling guards if they are in the way.
    .complete 79233,1 --6/6 Loyalist Secretions
    .mob Loyalist Mutagenician
    .mob Loyalist Bio-smith
step
    #completewith next
    #title Enter House
    .goto 2213,56.89,89.48,10 >> Enter the House
    .timer 20,RP
step
    .goto 2213,57.09,91.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Y'tekhi|r
    .turnin 79233 >>Turn in Lab Access
    .target Y'tekhi
step
    .goto 2213,56.99,93.35
    #title |cFFFCDC00Follow the Arrow|r
    .complete 79230,3 --1/1 First Ascended's Prison investigated
step
    .goto 2213,56.68,90.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r
    .turnin 79230 >>Turn in Creeping Through Corridors
    .target Lilian Voss
    .accept 79237 >>Accept Making of a Monster
step
    .goto 2213,56.99,89.14,10,0
    .goto 2213,62.18,77.06
    >>Click on the |cRXP_PICK_Air Duct|r
    .complete 79237,1 --1/1 Air Duct accessed
step
    .goto 2213,60.95,79.01
    >>Click on the |cRXP_PICK_Caustic Alchemical Supplies|r
    .complete 79237,3 --1/1 Caustic Alchemical Supplies examined
step
    .goto 2213,63.41,78.89
    >>Click on the |cRXP_PICK_Experiment Notes|r
    .complete 79237,4 --1/1 Experiment Notes examined
step
    .goto 2213,62.69,79.88
    >>Click on the |cRXP_PICK_Discarded Shadecaster|r
    .complete 79237,5 --1/1 Discarded Shadecaster investigated
step
    .goto 2213,63.17,79.62
    >>Click on the |cRXP_PICK_Escape Line.|r
    .complete 79237,6 --1/1 Escape Line taken
step
    .goto 2213,56.67,90.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r
    .turnin 79237 >>Turn in Making of a Monster
    .target Lilian Voss
step
    .goto 2213,57.12,91.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Y'tekhi|r
    .accept 79239 >>Accept The Queen's Chains
    .target Y'tekhi
step
    .goto 2213,55.65,92.75
    >>Click on the |cRXP_PICK_Caustic Chemicals|r
    .complete 79239,1,1 --4/4 Caustic Chemicals
step
    .goto 2213,55.53,93.44
    >>Click on the |cRXP_PICK_Caustic Chemicals|r
    .complete 79239,1,2 --4/4 Caustic Chemicals
step
    .goto 2213,56.06,94.94
    >>Click on the |cRXP_PICK_Caustic Chemicals|r
    .complete 79239,1,3 --4/4 Caustic Chemicals
step
    .goto 2213,58.11,92.36
    >>Click on the |cRXP_PICK_Caustic Chemicals|r
    .complete 79239,1,4 --4/4 Caustic Chemicals
step
    .goto 2213,58.19,93.68
    >>Click on the |cRXP_PICK_Shackle Anchor|r
    .complete 79239,2 --1/1 Neferess's Right Leg Freed
step
    .goto 2213,55.81,93.70
    >>Click on the |cRXP_PICK_Shackle Anchor|r
    .complete 79239,4 --1/1 Neferess's Left Leg Freed
step
    .goto 2213,57.45,92.73
    >>Click on the |cRXP_PICK_Shackle Anchor|r
    .complete 79239,6 --1/1 Neferess's Right Arm Freed
step
    .goto 2213,56.74,92.62
    #title |cFFFCDC00Follow the Arrow|r
    *|cRXP_WARN_Relog if you don't get teleported.|r
    .complete 79239,8 --1/1 Neferess Freed
step
    .goto 2213,78.76,57.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r
    .turnin 79239 >>Turn in The Queen's Chains
    .target Lilian Voss
    .accept 79240 >>Accept Rogue Agent
step
    .goto 2213,78.09,54.81
    >>Defeat |cRXP_ENEMY_Y'tekhi|r
    .complete 79240,1 --1/1 Y'tekhi subdued
    .mob Y'tekhi
step
    .goto 2213,78.63,40.17
    #title |cFFFCDC00Follow the Arrow|r
    .complete 79240,2 --1/1 Y'tekhi brought to safety
step
    .goto 2213,78.65,39.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r
    .turnin 79240 >>Turn in Rogue Agent
    .target Lilian Voss
    .accept 79241 >>Accept Go Loud
    .accept 79243 >>Accept Manufactured Mutiny
step
    .goto 2255,59.39,75.07
    >>Click on the |cRXP_PICK_Repurposed Nerubian Charge|r
    .complete 79241,1,1 --6/6 Charges planted
step
    .goto 2255,61.01,74.61
    >>Click on the |cRXP_PICK_Repurposed Nerubian Charge|r
    .complete 79241,1,2 --6/6 Charges planted
step
    .goto 2255,61.16,73.49
    >>Use your |cRXP_WARN_ExtraActionButton|r on |cRXP_ENEMY_Siege Marshal Tekhzok|r and kill it.
    .complete 79243,1 --1/1 Siege Marshal Tekhzok slain
    .mob Siege Marshal Tekhzok
step
    .goto 2255,61.65,72.52
    >>Click on the |cRXP_PICK_Repurposed Nerubian Charge|r
    .complete 79241,1,3 --6/6 Charges planted
step
    .goto 2255,63.62,71.47
    >>Click on the |cRXP_PICK_Repurposed Nerubian Charge|r
    .complete 79241,1,4 --6/6 Charges planted
step
    .goto 2255,66.48,70.6
    >>Click on the |cRXP_PICK_Repurposed Nerubian Charge|r
    .complete 79241,1,5 --6/6 Charges planted
step
    .goto 2255,66.72,69.38
    >>Use your |cRXP_WARN_ExtraActionButton|r on |cRXP_ENEMY_Royal Quartermaster Ze'erik|r and kill it.
    .complete 79243,2 --1/1 Royal Quartermaster Ze'erik slain
    .mob Royal Quartermaster Ze'erik
step
    .goto 2255,66.61,68.16
    >>Click on the |cRXP_PICK_Repurposed Nerubian Charge|r
    .complete 79241,1,6 --6/6 Charges planted
step
    .goto 2255,67.57,64.79
    >>Click on the |cRXP_PICK_Dry Webbing|r
    .complete 79241,2 --1/1 Fuse lit
step
    .goto 2255,55.71,44.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lilian Voss|r
    .turnin 79243 >>Turn in Manufactured Mutiny
    .target Lilian Voss
    .turnin 79241 >>Turn in Go Loud
    .accept 79244 >>Accept News From Below
step
    .goto 2255,55.74,43.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Widow Arak'nai|r
    .complete 79244,1 --1/1 Inform the Weaver
    .skipgossipid 121590
    .target Widow Arak'nai
step
    .goto 2255,57.49,41.62
    .zone 2339 >>Take the Tunnel to Dornogal
step
    .goto 2339,31.54,59.66
    #title |cFFFCDC00Follow the Arrow|r
    .complete 79244,2 --1/1 Report back to Alleria at the Coreway in Dornogal
step
    .goto 2339,31.54,59.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .turnin 79244 >>Turn in News From Below
    .target Alleria Windrunner
]])

RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP The War Within
#subgroup 11.0 Max Level Campaign (80)
#name d) The Machines to War
#displayname |cRXP_WARN_Chapter 4|r - The Machines to War
#next e) A Light in the Dark


step
    .goto 2339,31.54,59.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .target Alleria Windrunner
    .accept 79022 >>Accept A Mysterious Signal
step
    #completewith TravelToRingingDeepsMysteriousSignal
    #label AMysteriousSignalA
    .goto 2214,52.11,74.92,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Speaker Brinthe|r
    .turnin 79022 >>Turn in A Mysterious Signal
    .target High Speaker Brinthe
    .accept 79023 >>Accept Small Friend, Big Plans
step
    .isOnQuest 79022
    #label TakePortalAzjkahetMysteriousSignal
    #completewith TravelToRingingDeepsMysteriousSignal
    .goto 2339,63.6,52.7
    .zone 2255 >>Take the Portal to Azj-Kahet
step
    .isOnQuest 79022
    #requires TakePortalAzjkahetMysteriousSignal
    #label TravelToRingingDeepsMysteriousSignal
    .goto 2255,65.65,20.88,80,0
    .goto 2214,45.99,67.61
    .zone 2214 >>Travel to The Ringing Deeps
step
    #requires AMysteriousSignalA
    .goto 2214,52.11,74.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Speaker Brinthe|r
    .turnin 79022 >>Turn in A Mysterious Signal
    .target High Speaker Brinthe
    .accept 79023 >>Accept Small Friend, Big Plans
step
    .goto 2214,52.14,74.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_ZZ-01-47|r
    .complete 79023,1 --1/1 Introduce yourself to ZZ-01-47
    .skipgossipid 120640
    .target ZZ-01-47
step
    .goto 2214,52.11,74.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Speaker Brinthe|r
    .turnin 79023 >>Turn in Small Friend, Big Plans
    .target High Speaker Brinthe
    .accept 79024 >>Accept Factory Recon
step
    .goto 2214,52.14,74.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_ZZ-01-47|r
    .complete 79024,1 --1/1 Command ZZ-01-47 to Scout the Facility
    .skipgossipid 121305
    .target ZZ-01-47
step
    .goto 2214,53.79,75.88
    >>Use |T135788:0|t[Turbo Boost] and click on the |cRXP_PICK_Pipe Grate|r
    .complete 79024,2 --1/1 Pipe Grate Entered
    .timer 3,Roleplay Duration
step
    .goto 2214,53.86,76.92
    #title |cFFFCDC00Follow the Arrow|r
    >>Use |T135788:0|t[Turbo Boost]
    .complete 79024,3 --Scout the Darkfuse leader
step
    .goto 2214,52.37,77.6
    #title |cFFFCDC00Follow the Arrow|r
    >>Use |T135788:0|t[Turbo Boost]
    .complete 79024,4 --Scout the Manufacturing Bay
step
    .goto 2214,53.06,77.71,15,0
    .goto 2214,53.05,78.36
    >>Click on |cRXP_PICK_Sewer Grate|r
    .complete 79024,5 --1/1 Sneak through the pipes
    .timer 3,Roleplay Duration
step
    .goto 2214,53.97,79.78
    #title |cFFFCDC00Follow the Arrow|r
    .complete 79024,6 --Scout the Cargo Bay
step
    .goto 2214,54.16,76.50
    >>Use |T135788:0|t[Turbo Boost] and click on the |cRXP_PICK_Pipe Grate|r
    .complete 79024,7 --1/1 Exit back through the Pipe
step
    >>|cRXP_WARN_Leave the Vehicle|r
    .complete 79024,8 --Return to Brinthe
step
    .goto 2214,52.11,74.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Speaker Brinthe|r
    .turnin 79024 >>Turn in Factory Recon
    .target High Speaker Brinthe
    .accept 79217 >>Accept Back to Base
step
    #completewith next
    #title Enter House
    .goto 2214,42.96,33.83,10 >>Enter the House
step
    .goto 2214,42.94,34.23
    #title |cFFFCDC00Follow the Arrow|r
    .complete 79217,1 --Meet Brinthe at her home in Gundargaz
step
    .goto 2214,42.94,34.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Speaker Brinthe|r
    .turnin 79217 >>Turn in Back to Base
    .target High Speaker Brinthe
    .accept 79025 >>Accept A Plan Comes Together
step
    .goto 2214,42.92,34.21
    >>Click on |cRXP_PICK_Deactivated War Golem|r
    .complete 79025,1 --1/1 Point out the Golem Factory
step
    .goto 2214,42.92,34.23
    >>Click on |cRXP_PICK_Deactivated War Golem|r
    .complete 79025,2 --1/1 Point out the Waterworks
step
    .goto 2214,42.91,34.24
    >>Click on |cRXP_PICK_Deactivated War Golem|r
    .complete 79025,3 --1/1 Point out the Shadowvein Extraction Site
step
    .goto 2214,42.94,34.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Speaker Brinthe|r
    .turnin 79025 >>Turn in A Plan Comes Together
    .target High Speaker Brinthe
    .accept 79324 >>Accept To the Waterworks
step
    #completewith next
    .isOnQuest 79324
    .goto 2214,42.95,33.86,10 >>Leave the House
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dagran Thaurissan II|r and |cRXP_FRIENDLY_"Zee-Zee"|r
    .turnin 79324 >>Turn in To the Waterworks
    .accept 79026 >>Accept Putting the Works in Waterworks
    .goto 2214,43.14,42.38
    .target +Dagran Thaurissan II
    .accept 79027 >>Accept Elemental Trepidation
    .goto 2214,43.12,42.38
    .target +"Zee-Zee"
step
    #completewith 2/2 Waterwheels Activated
    >>Kill |cRXP_ENEMY_Disturbed Kelp|r and |cRXP_ENEMY_Disrupted Slime.|r
    .complete 79027,1 --Defeat Elementals (100%)
    .mob Disturbed Kelp
    .mob Disrupted Slime
step
    .goto 2214,44.25,46.06
    >>Click on the |cRXP_PICK_Congealed Wax|r |cRXP_WARN_twice.|r
    .complete 79026,1,1 --2/2 Waterwheels Activated
step
    #label 2/2 Waterwheels Activated
    .goto 2214,41.27,46.33
    >>Click on the |cRXP_PICK_Congealed Wax|r |cRXP_WARN_twice.|r
    .complete 79026,1,2 --2/2 Waterwheels Activated
step
    #loop
    .goto 2214,42.13,44.06,25,0
    .goto 2214,43.32,43.38,25,0
    .goto 2214,44.15,43.46,25,0
    .goto 2214,43.83,45.61,25,0
    .goto 2214,43.03,46.85,25,0
    >>Kill |cRXP_ENEMY_Disturbed Kelp|r and |cRXP_ENEMY_Disrupted Slime.|r
    .complete 79027,1 --Defeat Elementals (100%)
    .mob Disturbed Kelp
    .mob Disrupted Slime
step
    .goto 2214,42.07,48.09,10,0
    .goto 2214,42.19,48.68
    >>Enter the Delve: |cRXP_WARN_Waterworks|r
    .isOnQuest 79026
    .complete 79026,2 --Delve Entered
step
    #loop
    .goto 2251,47.14,15.59,5,0
    .goto 2251,46.75,15.67,5,0
    .goto 2251,46.38,15.62,5,0
    .isInScenario 2371
    .isOnQuest 79026
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Bruknar|r
    .scenario 6797,1 --1/1 Speak with Foreman Bruknar
    .skipgossipid 120096
step
    .goto 2251,46.76,15.91
    .isInScenario 2371
    .isOnQuest 79026
    >>Click on the |cRXP_PICK_Chest|r
    .scenario 6798,1 --1/1 Stumping Shoes obtained
step
    .isInScenario 2371
    .isOnQuest 79026
    .goto 2251,46.99,17.89
    >>Use your |cRXP_WARN_ExtraActionButton|r near the |cRXP_FRIENDLY_Air Purifier|r
    .scenario 7767,1
step
    .isInScenario 2371
    .isOnQuest 79026
    .goto 2251,46.75,17.28
    >>Click on the |cRXP_PICK_Air Purifier|r
    .scenario 7767,1
step
    .isInScenario 2371
    .isOnQuest 79026
    #completewith Waxface
    >>If the aura gets dimmer or fades use your |cRXP_WARN_ExtraActionButton|r next to |cRXP_FRIENDLY_Air Purifier|r to refresh it.
step
    .isInScenario 2371
    .isOnQuest 79026
    #hidewindow
    #completewith next
    #loop
    .goto 2251,50.23,21.52,40,0
    .goto 2251,44.1,21.26,40,0
    .goto 2251,46.72,23.48,40,0
    .goto 2251,48.7,25.93,30,0
    .goto 2251,49.73,29.06,30,0
    .goto 2251,46.21,35.97,30,0
    .goto 2251,46.83,51.14,30,0
    .goto 2251,47.8,56.89,30,0
    .goto 2251,47.82,64.32,30,0
    .goto 2251,46.73,68.69,30,0
    .goto 2251,46.79,76.74,30,0
    .goto 2251,46.85,81.64,30,0
    +1
step
    .isInScenario 2371
    .isOnQuest 79026
    >>Kill |cRXP_ENEMY_Kobolds|r and use your |cRXP_WARN_ExtraActionButton|r next to their |cRXP_WARN_corpses.|r Then collect the gears.
    .scenario 6799,1
    .scenario 6799,2
    .mob Kobold Mystic
    .mob Kobold Thwacker
    .mob Kobold Taskfinder
    .mob Spitfire Fusetender
    .mob Spitfire Charger
    .mob Cavernous Shrieker
step
    .isInScenario 2371
    .isOnQuest 79026
    .goto 2251,46.88,81.45
    >>Kill |cRXP_ENEMY_Waxface|r
    .scenario 6801,1
    .mob Waxface
step
    .isOnQuest 79026
    .isInScenario 2355
    .goto 2251,50.44,24.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pagsly|r
    .scenario 6776,1
    .skipgossipid 120081
    .target Pagsly
step
    .isOnQuest 79026
    .isInScenario 2355
    .goto 2251,46.76,17.32
    >>Click on the |cRXP_PICK_Air Totem|r
    .scenario 6776,2
step
    .isOnQuest 79026
    .isInScenario 2355
    .goto 2251,50.28,23.73,10 >>|cRXP_WARN_Follow the Arrow|r
step
    .isOnQuest 79026
    .isInScenario 2355
    .goto 2251,50.28,23.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pagsly|r and defend him.
    .skipgossipid 120082
    .scenario 6777,1,1
    .mob Kobold Skullface
    .mob Kobold Mystic
    .target Pagsly
step
    .isOnQuest 79026
    .isInScenario 2355
    .goto 2251,46.73,24.17,20,0
    .goto 2251,49.6,28.99,20,0
    .goto 2251,49.78,34.5,20 >> |cRXP_WARN_Follow the Arrow|r
step
    .isOnQuest 79026
    .isInScenario 2355
    .goto 2251,48.72,40.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pagsly|r and defend him.
    .skipgossipid 120082
    .scenario 6777,1,2
    .target Pagsly
    .mob Kobold Thwacker
step
    .isOnQuest 79026
    .isInScenario 2355
    .goto 2251,46.78,44.65,20,0
    .goto 2251,47.72,56.7,20,0
    .goto 2251,46.36,61.56,10 >>|cRXP_WARN_Follow the Arrow|r
step
    .isOnQuest 79026
    .goto 2251,46.36,61.56
    .isInScenario 2355
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pagsly|r and defend him.
    .skipgossipid 120082
    .scenario 6777,1,3
    .mob Kobold Skullface
    .mob Kobold Mystic
    .mob Kobold Thwacker
step
    .isOnQuest 79026
    .isInScenario 2355
    .goto 2251,47.76,64.32,20,0
    .goto 2251,48.15,68.73,10 >>|cRXP_WARN_Follow the Arrow|r
step
    .isOnQuest 79026
    .isInScenario 2355
    .goto 2251,48.12,68.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pagsly|r and defend him.
    .skipgossipid 120082
    .scenario 6777,1,4
    .mob Kobold Skullface
    .mob Kobold Mystic
    .mob Kobold Thwacker
    .mob Kobold Fusetender
step
    .goto 2251,46.84,70.35,10,0
    .goto 2251,46.85,81.67
    .isInScenario 2355
    .isOnQuest 79026
    >>Kill |cRXP_ENEMY_Waxface|r
    .scenario 6801,1
    .mob Waxface
step
    .isOnQuest 79026
    .goto 2251,46.75,17.29
    >>Click on the |cRXP_PICK_Air Totem.|r
    .isInScenario 2354,1
    .scenario 6757,2
step
    .isOnQuest 79026
    .goto 2251,47.13,17.98,5,0
    .goto 2251,46.36,17.91,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Bruknar|r
    .isInScenario 2354,2
    .scenario 6757,1
    .skipgossipid 120018
    .target Foreman Bruknar
step
    .isOnQuest 79026
    .goto 2251,47.99,20.68,20,0
    .goto 2251,46.68,24.67,20,0
    .goto 2251,49.67,29.08,20,0
    .goto 2251,49.93,37.05,20,0
    .goto 2251,48.6,41.8,20,0
    .goto 2251,46.81,51.22,20,0
    .goto 2251,47.89,57.11,20,0
    .goto 2251,49.26,60.69,20,0
    .goto 2251,46.94,68.97,20,0
    >>Click on |cRXP_PICK_Captured Workers|r
    .isInScenario 2354,2
    .scenario 6758,1
    .target Captured Worker
step
    .goto 2251,46.84,70.35,10,0
    .goto 2251,46.85,81.67
    .isInScenario 2354
    .isOnQuest 79026
    >>Kill |cRXP_ENEMY_Waxface|r
    .scenario 6759,1
    .mob Waxface
step
    .isOnQuest 79026
    .goto 2251,46.08,83.06
    .cast 441550 >>Click on the |cRXP_PICK_Obstruction Drain.|r
step
    .goto 2251,46.75,83.5
    >>Pull on the kelp to unclog the drain! Kill |cRXP_ENEMY_Enraged Kelp.|r
    .complete 79026,3 --1/1 Main Drain Restored
    .mob Enraged Kelp
step
    #completewith next
    .zone 2214 >>Collect Rewards then click on your player frame and select "leave delve"
    .target Leave-O-Bot 7000
step
    .goto 2214,43.08,42.36
    >>Click on the |cRXP_PICK_Waterworks Primary Activation.|r
    .complete 79026,5 --1/1 Main Drain Restored
step
    .goto 2214,43.14,42.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dagran Thaurissan II|r
    .turnin 79027 >>Turn in Elemental Trepidation
    .turnin 79026 >>Turn in Putting the Works in Waterworks
    .accept 79325 >>Accept Shadowvein Extraction
    .target Dagran Thaurissan II
step
    .goto 2214,51.53,41.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_ZZ-01-47|r
    .turnin 79325 >>Turn in Shadowvein Extraction
    .target ZZ-01-47
    .accept 79028 >>Accept We Require More Minerals
    .timer 16,Roleplay Duration
step
    .goto 2214,51.53,41.11
    >>Wait for the Roleplay.
    .complete 79028,1 --1/1 Listen to Dagran's Report
step
    .isOnQuest 79028
    .goto 2214,52.26,36.99
    .cast 451809 >>Click on the |cRXP_PICK_Power Substation Console|r
    .timer 19,RP
step
    >>Wait infront of the Pipe Room
    .complete 79028,2 --1/1
    .goto 2214,51.93,37.23
step
    #completewith next
    .isOnQuest 79028
    .goto 2214,51.51,37.29,10 >>Enter the Pipe Room
    .timer 17,RP
step
    #title |cFFFCDC00Wait for the Roleplay.|r
    .complete 79028,3 --1/1 Pipe Room Located
    .goto 2214,51.51,37.28
step
    #loop
    .goto 2214,51.51,37.29,8,0
    .goto 2214,51.51,36.95,8,0
    .goto 2214,51.76,36.57,8,0
    .link https://gyazo.com/c13935fb0ec1a58e7a863c7508b45032 >>Click here for the Solution.
    >>Middle -> Bottom -> Top
    .complete 79028,4 --1/1 Supply Water to the Shadowvein Boilers
step
    .goto 2214,51.82,37.24,10,0
    .goto 2214,52.26,36.97
    >>Click on the |cRXP_PICK_Power Substation Console|r
    .complete 79028,5 --1/1 Power Substation Restarted
step
    .isOnQuest 79028
    #title Leave House
    .goto 2214,52.19,38.79,10 >>Leave the House
step
    .goto 2214,51.82,39.28
    >>Use the |cRXP_WARN_ExtraActionButton|r near the |cRXP_FRIENDLY_Cleaned Crusher|r
    .complete 79028,6,1 --5/5 Infested Crushers Decontaminated
    .mob Infested Discharge
step
    .goto 2214,52.62,39.42
    >>Use the |cRXP_WARN_ExtraActionButton|r near the |cRXP_FRIENDLY_Cleaned Crusher|r
    .complete 79028,6,2 --5/5 Infested Crushers Decontaminated
    .mob Infested Discharge
step
    .goto 2214,54.60,38.19
    >>Use the |cRXP_WARN_ExtraActionButton|r near the |cRXP_FRIENDLY_Cleaned Crusher|r
    .complete 79028,6,3 --5/5 Infested Crushers Decontaminated
    .mob Infested Discharge
step
    .goto 2214,55.40,40.27
    >>Use the |cRXP_WARN_ExtraActionButton|r near the |cRXP_FRIENDLY_Cleaned Crusher|r
    .complete 79028,6,4 --5/5 Infested Crushers Decontaminated
    .mob Infested Discharge
step
    .goto 2214,55.12,41.01
    >>Click on the |cRXP_PICK_Mining Cart Track|r
    .complete 79028,7 --1/1 Mining Cart Track Cleared
step
    .goto 2214,55.12,42.12
    >>Use the |cRXP_WARN_ExtraActionButton|r near the |cRXP_FRIENDLY_Cleaned Crusher|r
    .complete 79028,6,5 --5/5 Infested Crushers Decontaminated
    .mob Infested Discharge
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_ZZ-01-47|r |cRXP_WARN_next to you.|r
    .turnin 79028 >>Turn in We Require More Minerals
    .target ZZ-01-47
    .accept 80145 >>Accept The Motherlode
step
    .isOnQuest 80145
    #title Enter Mine
    .goto 2214,54.39,35.9,10 >> Enter the Mine
step
    .goto 2214,54.41,33.91
    >>Click on the |cRXP_PICK_Activation Lever|r
    .complete 80145,1 --1/1 Cave Crushers activated
step
    .goto 2214,54.53,33.74
    >>Kill |cRXP_ENEMY_Magma Serpent|r
    .complete 80145,2 --1/1 Magma Serpent defeated
    .mob Magma Serpent
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_ZZ-01-47|r |cRXP_WARN_next to you.|r
    .complete 80145,3 --1/1 Speak to ZZ-01-47
    .target ZZ
    .skipgossipid 121561
step
    .goto 2214,54.50,33.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_ZZ-01-47|r
    .turnin 80145 >>Turn in The Motherlode
    .target ZZ-01-47
    .accept 80517 >>Accept Back to Where it Began
step
    #completewith next
    .goto 2214,54.54,33.55
    .deathskip >> Die in the Lava and respawn at the Spirit Healer
step
    .goto 2214,52.11,74.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Speaker Brinthe|r
    .turnin 80517 >>Turn in Back to Where it Began
    .target High Speaker Brinthe
    .accept 79029 >>Accept It's Sabotage
step
    #loop
    .goto 2214,53.47,76.94,30,0
    .goto 2214,54.65,77.07,30,0
    .goto 2214,55.24,78.43,30,0
    .goto 2214,54.79,79.47,30,0
    .goto 2214,54.01,78.71,30,0
    .goto 2214,53.32,77.93,30,0
    >>Click on |cRXP_PICK_Goblin Battery,|r |cRXP_PICK_Kegs|r, |cRXP_PICK_Derelict Golem|r and |cRXP_PICK_Grill Racks.|r Kill the incoming |cRXP_ENEMY_enemies.|r
    .complete 79029,1 --Mayhem Caused (100%)
    .mob Irritated Salvager
    .mob Vindictive Technician
    .mob Foreman-in-Training
    .target Derelict Golem
step
    .isOnQuest 79029
    #title Enter House
    .goto 2214,52.72,77.62,10 >>Enter the House
step
    .goto 2214,51.90,77.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brinthe|r
    .complete 79029,2 --1/1 Speak to Brinthe
    .target Brinthe
    .skipgossipid 121606
step
    .goto 2214,52.12,78.02
    >>Kill |cRXP_ENEMY_Supervisor Radlock|r for additional damage move him into the fire laser.
    .complete 79029,3 --1/1 Facility Activated and Secured
    .mob Supervisor Radlock
step
    .goto 2214,51.90,77.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Speaker Brinthe|r
    .turnin 79029 >>Turn in It's Sabotage
    .target High Speaker Brinthe
    .accept 79030 >>Accept The Voice of the Speakers
step
    .isOnQuest 79030
    .zone 2339 >>Go to Dornogal
step
    .goto 2339,31.54,59.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .turnin 79030 >>Turn in The Voice of the Speakers
    .target Alleria Windrunner
]])

RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP The War Within
#subgroup 11.0 Max Level Campaign (80)
#name e) A Light in the Dark
#displayname |cRXP_WARN_Chapter 5|r - A Light in the Dark
#next z) Lingering Shadows
#subweight 6


step
    .goto 2339,31.56,59.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .accept 78941 >>Accept A Tide Needing Turned
    .target Alleria Windrunner
step
    #completewith next
    .goto 2339,38.93,59.89,30,0
    .goto 2339,48.18,60.84,30,0
    .goto 2339,49.94,63.8,30,0
    .goto 2339,49.78,71.69,30,0
    .goto 2339,49.78,71.69,30,0
    .goto 2339,37.7,74.39,30,0
    .goto 2214,35.82,32.58,30,0
    .goto 2214,35.54,31.54,30,0
    .goto 2214,35.71,29.79,30,0
    .goto 2214,37.34,28.33,30,0
    .goto 2214,38.12,28.33,30,0
    .goto 2214,36.38,24.36,30 >>Go to Hallowfall
step
    .goto 2215,71.64,59.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Steelstrike|r
    .turnin 78941 >>Turn in A Tide Needing Turned
    .target General Steelstrike
    .accept 78942 >>Accept The Might of Khaz Algar
    .accept 78943 >>Accept Steel and Flames
step
    #hidewindow
    #completewith Algari forces rallied
    #loop
    .goto 2215,72.53,60.03,30,0
    .goto 2215,72.07,60.63,30,0
    .goto 2215,71.53,59.54,30,0
    .goto 2215,71.06,60.23,30,0
    .goto 2215,71.39,60.99,30,0
    .goto 2215,71.71,61.38,30,0
    .goto 2215,72.16,61.81,30,0
    .goto 2215,72.06,62.39,30,0
    .goto 2215,72.21,63.56,30,0
    .goto 2215,71.71,63.92,30,0
    .goto 2215,71.16,61.93,30,0
    .goto 2215,70.74,61.85,30,0
    +1
step
    #completewith next
    >>Use the |T134229:0|t[Arathi Warhorn] near as many |cRXP_FRIENDLY_Algari forces|r as possible at the same time for maximum impact.
    .complete 78943,1 --20/20 Algari forces rallied
    .use 217309
    .target Unbound Stormrider
    .target Unbound Fighter
    .target Hallowfall Lightblade
    .target Veteran Flamecaller
step
    >>Kill |cRXP_ENEMY_Nerubians|r
    .complete 78942,1 --Stem the Nerubian Tide (100%)
    .mob Maddened Hierophant
    .mob Chitin Ravager
    .mob Agitated Chitterer
    .mob Loyal Shadeweaver
    .mob Nerubian Crypt Lord
    .mob Nerubian Hulk
step
    #label Algari forces rallied
    >>Use the |T134229:0|t[Arathi Warhorn] near as many |cRXP_FRIENDLY_Algari forces|r as possible at the same time for maximum impact.
    .complete 78943,1 --20/20 Algari forces rallied
    .use 217309
    .target Unbound Stormrider
    .target Unbound Fighter
    .target Hallowfall Lightblade
    .target Veteran Flamecaller
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r and |cRXP_FRIENDLY_Lady Jaina Proudmoore|r
    .turnin 78943 >>Turn in Steel and Flames
    .goto 2215,68.56,64.21
    .target +Thrall
    .accept 78950 >>Accept Cutting Off the Legs
    .goto 2215,68.55,64.16
    .target +Lady Jaina Proudmoore
step
    .goto 2215,66.72,64.89
    >>Kill |cRXP_ENEMY_Nix'k the Wicked|r
    .complete 78950,1 --1/1 Nix'k the Wicked slain
    .mob Nix'k the Wicked
step
    .goto 2215,67.82,67.58
    >>Kill |cRXP_ENEMY_Kaz'vik|r
    .complete 78950,2 --1/1 Kaz'vik slain
    .mob Kaz'vik
step
    .goto 2215,64.74,68.40
    >>Kill |cRXP_ENEMY_Anub'ata|r
    .complete 78950,3 --1/1 Anub'ata slain
    .mob Anub'ata
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faerin Lothar|r and |cRXP_FRIENDLY_Anduin Wrynn|r
    .turnin 78942 >>Turn in The Might of Khaz Algar
    .goto 2215,64.58,61.79
    .target +Faerin Lothar
    .turnin 78950 >>Turn in Cutting Off the Legs
    .accept 78948 >>Accept A Light in the Dark
    .goto 2215,64.53,61.79
    .target +Anduin Wrynn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r
    .complete 78948,1 --1/1 Speak with Anduin to chase down Xal'atath
    .skipgossipid 122377
    .target Anduin Wrynn
-- step
--     #completewith ScenarioXalatah
--     .isOnQuest 78948
--     .complete 78948,2 --Defeat Xal'atath
step
    .goto 2330,78.19,47.28,15,0
    .goto 2330,76.41,38.32,15,0
    .goto 2330,70.21,31.48,15,0
    .goto 2330,64.81,32.97
    .scenario 7008,2 >>Click on the |cRXP_PICK_North Brazier|r and kill the enemies that emerge.
    .isOnQuest 78948
    .mob Forming Whispers
    .mob Writhing Shade
    .mob Hazzk the Ascended
step
    .isOnQuest 78948
    .goto 2330,71.32,32.52,15,0
    .goto 2330,76.58,39.5,15,0
    .goto 2330,78.22,56.55,15,0
    .goto 2330,70.22,69.8,15,0
    .goto 2330,62.88,74.36
    .scenario 7008,1 >>Click on the |cRXP_PICK_South Brazier|r and kill the enemies that emerge.
    .mob Forming Whispers
    .mob Nightcaller Velys
    .mob Writhing Shade
step
    .isOnQuest 78948
    .goto 2330,71.4,69.61,40,0
    .goto 2330,74.29,63.9,40,0
    .goto 2330,78.88,54.94,40,0
    .goto 2330,67.14,50.03,40,0
    .goto 2330,60.3,50.65,40,0
    .goto 2330,56.57,51.21
    .scenario 7009,1 >>Kill |cRXP_ENEMY_Shadesworn Crusher|r and click on the |cRXP_PICK_Fountain|r in the middle.
    .mob Shadesworn Crusher
    .mob Forming Whispers
    .mob Writhing Shade
    .mob Whispering Monstrosity
step
    .goto 2330,56.57,51.21
    .isOnQuest 78948
    .scenario 7010,1 >>Click on |cRXP_PICK_Oil Brazier|r
step
    .goto 2330,47.9,61.65,30,0
    .goto 2330,38.03,54.21,30,0
    .goto 2330,27.49,55.87
    .isOnQuest 78948
    .scenario 7012,1 >>Kill |cRXP_ENEMY_Broken Queen|r
    .mob The Broken Queen
step
    -- #label ScenarioXalatah
    .isOnQuest 78948
    .goto 2330,27.49,55.87
    #title |cFFFCDC00Follow the Arrow|r
    .scenario 7013,1
    .complete 78948,2 --Defeat Xal'atath
step
    .goto 2215,35.93,35.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .turnin 78948 >>Turn in A Light in the Dark
    .target Alleria Windrunner
    .accept 83503 >>Accept Return to Dornogal
step
    .goto 2339,39.86,26.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merrix|r
    .complete 83503,1 --1/1 Report back to Merrix in Dornogal
    .target Merrix
    .skipgossipid 123407
step
    #title Use |cFFFCDC00Earthen Teleporter|r
    .goto 2339,40.74,22.38
    .cast 431519 >>Click on the |cRXP_PICK_Earthen Teleporter|r
step
    .goto 2339,25.33,66.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r
    .turnin 83503 >>Turn in Return to Dornogal
    .target Anduin Wrynn
]])

-- Lingering Shadows
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP The War Within
#subgroup Miscellaneous Storylines (80)
#name z) Lingering Shadows
#displayname Lingering Shadows
#subweight 4.5

step
    .goto 2339,42.36,26.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r in |cRXP_WARN_Dornogal|r.
    .accept 82690 >>Accept Lingering Shadows
    .target Alleria Windrunner
step
    #completewith next
    .gossipoption 124142 >>To fast travel, open the Dungeon Finder and queue for the follower dungeon Dawnbreak. Once inside, Talk to |cRXP_FRIENDLY_General Steelstrike|r.
    .target General Steelstrike
step
    .goto 2215,62.98,67.51
    #title Follow the Arrow
    >>Find |cRXP_FRIENDLY_Orweyna|r in |cRXP_WARN_Hallowfall|r.
    .complete 82690,1 --1/1 Return to where Alleria sensed Black Blood in Hallowfall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orweyna|r and |cRXP_FRIENDLY_Hannan|r
    .turnin 82690 >>Turn in Lingering Shadows
    .accept 82692 >>Accept Price of a Mission
    .accept 82693 >>Accept Standing in the Way
    .goto 2215,62.98,67.51
    .accept 82691 >>Accept No Breathing Room
    .goto 2215,62.99,67.59
    .target Orweyna
    .target Hannan
step
    #completewith Strange Flower
    >>Kill |cRXP_ENEMY_Fleshmite|r and |cRXP_ENEMY_Jawcrawler|r. Kill |cRXP_ENEMY_Seeping Crustbreaker|r |cRXP_WARN_if they are not bugged|r.
    .complete 82691,1 --Seeping creatures culled (100%)
    .mob Seeping Fleshmite
    .mob Seeping Jawcrawler
    .mob Seeping Crustbreaker
step
    .goto 2215,64.42,67.95
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Strange Flower|r.
    .complete 82692,1,1 --6/6 Strange Flower examined
step
    .goto 2215,64.47,68.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_On'hiea|r
    .complete 82692,2,1 --3/3 Haranir evacuated
    .skipgossipid 123067
    .mob On'hiea
step
    #completewith next
    >>Kill |cRXP_ENEMY_Bloodcrust Behemoth|r
    .complete 82693,1 --1/1 Bloodcrust Behemoth slain
    .mob Bloodcrust Behemoth
step
    .goto 2215,65.98,65.55,40,0
    .goto 2215,66.65,64.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greenspeaker Na'layro|r
    .complete 82692,2,2 --3/3 Haranir evacuated
    .skipgossipid 123068
    .mob Greenspeaker Na'layro
step
    .goto 2215,66.63,64.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Strange Flower|r.
    .complete 82692,1,2 --6/6 Strange Flower examined
step
    .goto 2215,65.95,65.56
    >>Kill |cRXP_ENEMY_Bloodcrust Behemoth|r
    .complete 82693,1 --1/1 Bloodcrust Behemoth slain
    .mob Bloodcrust Behemoth
step
    .goto 2215,65.4,65.09
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Strange Flower|r.
    .complete 82692,1,3 --6/6 Strange Flower examined
step
    .goto 2215,64.58,64.33
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Strange Flower|r.
    .complete 82692,1,4 --6/6 Strange Flower examined
step
    .goto 2215,64.2,64.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ney'leia|r
    .complete 82692,2,3 --3/3 Haranir evacuated
    .skipgossipid 123066
    .mob Ney'leia
step
    .goto 2215,64.16,64.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Strange Flower|r.
    .complete 82692,1,5 --6/6 Strange Flower examined
step
    #label Strange Flower
    .goto 2215,63.39,67.02
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Strange Flower|r.
    .complete 82692,1,6 --6/6 Strange Flower examined
step
    #loop
    .goto 2215,62.94,68.48,40,0
    .goto 2215,64.38,68.9,40,0
    .goto 2215,64.96,67.86,40,0
    .goto 2215,67.05,67.42,40,0
    .goto 2215,66.18,65.54,40,0
    .goto 2215,64.36,64.81,40,0
    .goto 2215,63.97,66.82,40,0
    >>Kill |cRXP_ENEMY_Fleshmite|r and |cRXP_ENEMY_Jawcrawler|r. Kill |cRXP_ENEMY_Seeping Crustbreaker|r |cRXP_WARN_if they are not bugged|r.
    .complete 82691,1 --Seeping creatures culled (100%)
    .mob Seeping Fleshmite
    .mob Seeping Jawcrawler
    .mob Seeping Crustbreaker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hannan|r and |cRXP_FRIENDLY_Orweyna|r
    .turnin 82691 >>Turn in No Breathing Room
    .goto 2215,63,67.58
    .target +Hannan
    .turnin 82692 >>Turn in Price of a Mission
    .turnin 82693 >>Turn in Standing in the Way
    .accept 82694 >>Accept Together, Alone
    .goto 2215,62.97,67.5
    .target +Orweyna
step
    .goto 2215,58.83,46.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hannan|r 
    .complete 82694,1 --1/1 Find Hannan beneath the Fangs in Hallowfall
step
    .goto 2215,58.84,46.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hannan|r
    .complete 82694,2 --1/1 Speak to Hannan
    .skipgossipid 123866
    .target Hannan
step
    .goto 2215,24.90,51.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orweyna|r
    .turnin 82694 >>Turn in Together, Alone
    .target Orweyna
    .accept 82695 >>Accept The Voice
step
    .goto 2215,24.9,51.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orweyna|r
    .complete 82695,1 --1/1 Speak to Orweyna to begin (Optional)
    .skipgossipid 124955
    .target Orweyna
step
    .goto 2215,24.3,51.69,25,0
    .goto 2215,24.36,51.19,25,0
    .goto 2215,24.7,50.98,25,0
    .goto 2215,25.06,50.99,25,0
    .goto 2215,24.62,50.66,25,0
    >>Kill 5 enemy waves of |cRXP_ENEMY_Oozing Visions|r and |cRXP_ENEMY_Terrifying Visions|r.
    .complete 82695,2 --1/1 Defend Orweyna during her meditation
    .mob Oozing Vision
    .mob Terrifying Vision
step
    .goto 2215,24.90,51.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orweyna|r
    .turnin 82695 >>Turn in The Voice
    .target Orweyna
    .accept 82696 >>Accept Ringing in the Deeps
--Travel
step
    .goto 2214,54.58,64.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orweyna|r |cRXP_WARN_in Ringing Deeps|r.
    .turnin 82696 >>Turn in Ringing in the Deeps
    .target Orweyna
step
    .goto 2214,54.30,64.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .accept 82697 >>Accept Good Help These Days
    .target Monte Gazlowe
step
    .goto 2214,58.36,75.04
    >>Kill |cRXP_ENEMY_Haxle Drillbit|r. Loot them for |T134939:0|t[|cRXP_LOOT_Opportunity Work Permit|r].
    .complete 82697,1 --1/1 Opportunity Work Permit taken
    .mob Haxle Drillbit
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r and |cRXP_FRIENDLY_Orweyna|r.
    .turnin 82697 >>Turn in Good Help These Days
    .accept 82699 >>Accept Hey, What's Going On?
    .goto 2214,60.41,79.77
    .target +Monte Gazlowe
    .accept 82698 >>Accept Haywired and Hostile
    .goto 2214,60.30,79.77
    .target +Orweyna
step
    #completewith Question Harried Workers
    >>Kill |cRXP_ENEMY_Haywire Excavator|r. |cRXP_WARN_It's important that you don't skip them|r.
    .complete 82698,1 --4/4 Haywire Excavator slain
    .mob Haywire Excavator
step
    .goto 2214,58.20,82.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harried Worker|r
    .complete 82699,1,1 --4/4 Question Harried Workers
    .mob Harried Worker
    .skipgossipid 123125
step
    .goto 2214,57.62,82.4
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Oil Barrel|r. |cRXP_WARN_|cRXP_ENEMY_Activated Remnants|r will spawn|r.
    .complete 82699,2,1 --6/6 Used Fuel Drum examined
    .mob Activated Remnants
step
    .goto 2214,58.42,83.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Oil Barrel|r. |cRXP_WARN_|cRXP_ENEMY_Activated Remnants|r will spawn|r.
    .complete 82699,2,2 --6/6 Used Fuel Drum examined
    .mob Activated Remnants
step
    .goto 2214,57.30,84.72
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Oil Barrel|r. |cRXP_WARN_|cRXP_ENEMY_Activated Remnants|r will spawn|r.
    .complete 82699,2,3 --6/6 Used Fuel Drum examined
    .mob Activated Remnants
step
    .goto 2214,57.10,85.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harried Worker|r
    .complete 82699,1,2 --4/4 Question Harried Workers
    .mob Harried Worker
    .skipgossipid 123125
step
    .goto 2214,57.85,87.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harried Worker|r
    .complete 82699,1,3 --4/4 Question Harried Workers
    .mob Harried Worker
    .skipgossipid 123125
step
    .goto 2214,58.11,88.25
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Oil Barrel|r. |cRXP_WARN_|cRXP_ENEMY_Activated Remnants|r will spawn|r.
    .complete 82699,2,4 --6/6 Used Fuel Drum examined
    .mob Activated Remnants
step
    .goto 2214,57.98,89.46
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Oil Barrel|r. |cRXP_WARN_|cRXP_ENEMY_Activated Remnants|r will spawn|r.
    .complete 82699,2,5 --6/6 Used Fuel Drum examined
    .mob Activated Remnants
step
    #label Question Harried Workers
    .goto 2214,57.47,90.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harried Worker|r
    .complete 82699,1,4 --4/4 Question Harried Workers
    .mob Harried Worker
    .skipgossipid 123125
step
    #completewith next
    .goto 2214,56.69,90.37,30,0
    .goto 2214,56.89,92.26,40,0
    .goto 2214,55.78,91.3,40,0
    .goto 2214,60.68,88
    >>Kill |cRXP_ENEMY_Haywire Excavator|r. |cRXP_WARN_It's important that you don't skip them|r.
    .complete 82698,1 --4/4 Haywire Excavator slain
    .mob Haywire Excavator
step
    .goto 2214,60.68,88
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Oil Barrel|r. |cRXP_WARN_|cRXP_ENEMY_Activated Remnants|r will spawn|r.
    .complete 82699,2,6 --6/6 Used Fuel Drum examined
    .mob Activated Remnants
step
    #loop
    .goto 2214,56.02,81.9,40,0
    .goto 2214,58.41,84.2,40,0
    .goto 2214,57.64,85.97,40,0
    .goto 2214,57.80,90.34,40,0
    .goto 2214,56.63,90.41,40,0
    .goto 2214,56.90,92.33,40,0
    .goto 2214,55.76,91.43,40,0
    >>Kill |cRXP_ENEMY_Haywire Excavator|r. |cRXP_WARN_It's important that you don't skip them|r.
    .complete 82698,1 --4/4 Haywire Excavator slain
    .mob Haywire Excavator
step
    .goto 2214,56.23,87.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renzik "The Shiv"|r |cRXP_WARN_on the house|r.
    .turnin 82699 >>Turn in Hey, What's Going On?
    .target Renzik "The Shiv"
    .turnin 82698 >>Turn in Haywired and Hostile
    .accept 82700 >>Accept Built to Blast
step
    .goto 2214,54.26,86.41
    >>Kill |cRXP_ENEMY_Haywire MEK IV|r
    .complete 82700,1 --1/1 Haywire MEK IV slain
    .mob Haywire MEK IV
step
    .goto 2214,60.30,79.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orweyna|r
    .turnin 82700 >>Turn in Built to Blast
    .target Orweyna
    .accept 82701 >>Accept Bat Versus World
step
    .goto 2214,60.30,79.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orweyna|r
    .complete 82701,1 --1/1 Speak to Orweyna
    .skipgossipid 123172 
    .target Orweyna
step
    #title Fly to the top of the tower
    .goto 2214,64.27,80
    >>Use |T135788:0|t[Flap] |cRXP_WARN_for more movement speed|r.
    *Use |T252188:0|t[Listen In] |cRXP_WARN_on the Tower near the Circle|r.
    *Use |T132320:0|t[Sneak] |cRXP_WARN_to avoid detection|r
    *|cRXP_WARN_Be aware that goblins will try to kill you|r.
    .complete 82701,2,1 --4/4 "Listen In" to Gather Intel
step
    .goto 2214,58.94,80.78
    >>Use |T135788:0|t[Flap] |cRXP_WARN_for more movement speed|r. 
    *Use |T252188:0|t[Listen In] |cRXP_WARN_on the Bridge near the Circle|r.
    *Use |T132320:0|t[Sneak] |cRXP_WARN_to avoid detection|r
    *|cRXP_WARN_Be aware that goblins will try to kill you|r.
    .complete 82701,2,2 --4/4 "Listen In" to Gather Intel
step
    .goto 2214,59.30,78.82
    >>Use |T135788:0|t[Flap] |cRXP_WARN_for more movement speed|r. 
    *Use |T252188:0|t[Listen In] |cRXP_WARN_near the building near the Circle|r.
    *Use |T132320:0|t[Sneak] |cRXP_WARN_to avoid detection|r
    *|cRXP_WARN_Be aware that goblins will try to kill you|r.
    .complete 82701,2,3 --4/4 "Listen In" to Gather Intel
step
    .goto 2214,61.33,77.27
    >>Use |T135788:0|t[Flap] |cRXP_WARN_for more movement speed|r. 
    *Use |T252188:0|t[Listen In] |cRXP_WARN_near the building near the Circle|r.
    *Use |T132320:0|t[Sneak] |cRXP_WARN_to avoid detection|r
    *|cRXP_WARN_Be aware that goblins will try to kill you|r.
    .complete 82701,2,4 ----4/4 "Listen In" to Gather Intel
step
    .goto 2214,62.52,78.42
    >>Use |T135788:0|t[Flap] |cRXP_WARN_for more movement speed|r. 
    *Use |T252188:0|t[Listen In] |cRXP_WARN_near the Cave Wall|r.
    *Use |T132320:0|t[Sneak] |cRXP_WARN_to avoid detection|r
    *|cRXP_WARN_Be aware that goblins will try to kill you|r.
    .complete 82701,3 --1/1 Listen In at the Cave Wall
step
    .goto 2214,56.83,86.47
    >>Use |T135788:0|t[Flap] |cRXP_WARN_for more movement speed|r.
    *Use |T252188:0|t[Listen In] |cRXP_WARN_on the building near the circle|r.
    *|cRXP_WARN_Dodge the obstacles in the sky to avoid getting stunned|r.
    .complete 82701,4 --1/1 Reach Foreman's Office
    .mob Blinding Glowmite
    .mob Hazardous Heli
step
    .goto 2214,56.48,86.81
    >>Use the |T252188:0|t[|cRXP_WARN_ExtraActionButton|r].
    .complete 82701,5 --1/1 Find Information
step
    .goto 2214,60.30,79.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orweyna|r
    .turnin 82701 >>Turn in Bat Versus World
    .target Orweyna
step
    .goto 2214,60.41,79.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .accept 82702 >>Accept Found Friends
    .target Monte Gazlowe
--Travel
step
    .goto 2339,42.37,26.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r |cRXP_WARN_in Dornogalr
    .turnin 82702 >>Turn in Found Friends
    .target Alleria Windrunner
step
    .goto 2339,42.29,27.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orweyna|r
    .accept 84701 >>Accept The Speaker
    .target Orweyna
step
    .goto 2339,35.49,81.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magni Bronzebeard|r
    .turnin 84701 >>Turn in The Speaker
    .target Magni Bronzebeard
]])

--Max Level Storylines

RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP The War Within
#subgroup Miscellaneous Storylines (80)
#name f) Story Mode: Queen Ansurek
#displayname Story Mode: Queen Ansurek
#subweight 4.5

step
    .goto 2339,31.62,63.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Webster|r
    .accept 83587 >>Accept Our Chance to Strike
    .target Webster
step
    #completewith next
    .goto 2339,63.62,52.36
    .zone 2255 >>Take the burrow to Azj-Kahet
step
    .goto 2213,50.22,44.84,15,0
    .goto 2213,52.87,46.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Nizrek|r
    .turnin 83587 >>Turn in Our Chance to Strike
    .target Executor Nizrek
step
    .goto 2213,52.87,46.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Nizrek|r
    .target Executor Nizrek
    .accept 82124 >>Accept The Beginning of the End
step
    .isOnQuest 82124
    #title Leave the House
    #completewith next
    .goto 2213,50.22,44.84,15 >>Leave the House
step
    #loop
    .goto 2216,51.83,38.55,35,0
    .goto 2213,50.69,34.03,35,0
    .goto 2213,47.53,35.42,35,0
    .goto 2213,49.58,27.56,35,0
    .goto 2213,45.6,28.18,35,0
    .goto 2213,41.08,28.92,35,0
    .goto 2213,46.65,18.41,35,0
    .goto 2213,47.3,13.92,35,0
    .goto 2213,51.08,15.51,35,0
    .goto 2213,54.24,20.73,35,0
    .goto 2213,61.26,18.95,35,0
    .goto 2213,60.43,27.59,35,0
    .goto 2213,55.38,29.1,35,0
    >>Kill |cRXP_ENEMY_Bazaar Guards,|r |cRXP_ENEMY_Bazaar Sentry|r and |cRXP_ENEMY_Loyalist Threadblade.|r
    *Click on the |cRXP_PICK_Propaganda Holograms|r
    -- *|cRXP_WARN_Ignore |cRXP_PICK_Propaganda Holograms|r as they usually waste time|r
    .complete 82124,1 --Umbral Bazaar disrupted (100%)
    .mob Bazaar Guard
    .mob Bazaar Sentry
    .mob Loyalist Threadblade
step
    .isOnQuest 82124
    #title Enter the House
    #completewith next
    .goto 2213,50.12,44.59,15 >> Enter the House
step
    .goto 2213,52.88,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Nizrek|r
    .turnin 82124 >>Turn in The Beginning of the End
    .target Executor Nizrek
    .accept 82125 >>Accept A Spy Like Us
step
    .isOnQuest 82125
    #title Leave the House
    #completewith next
    .goto 2213,53.92,50.28,15 >> Leave the House
step
    .goto 2216,55,42.55,10,0
    .goto 2216,57.30,41.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gut'usul|r |cRXP_WARN_below inside a House.|r
    .turnin 82125 >>Turn in A Spy Like Us
    .target Gut'usul
    .accept 82126 >>Accept Defense of the People
    .accept 82127 >>Accept Make Them Prey
step
    .isOnQuest 82127
    #title Leave the House
    #completewith next
    .goto 2216,55.19,42.91,10 >> Leave the House
step
    #completewith Burrows Residents
    >>Kill |cRXP_ENEMY_Abductors|r
    .complete 82127,1 --8/8 Abductors slain
    .mob Abductors
step
    .goto 2216,54,55.95
    >>Click on |cRXP_PICK_Kah'net|r
    .complete 82126,1,1 --5/5 Burrows Residents rescued
    .mob Kah'net
step
    .goto 2216,44.26,68.11
    >>Click on |cRXP_PICK_Tihk'ot|r
    .complete 82126,1,2 --5/5 Burrows Residents rescued
    .mob Tihk'ot
step
    .goto 2216,38.2,59.37
    >>Click on |cRXP_PICK_Srax'run|r
    .complete 82126,1,3 --5/5 Burrows Residents rescued
    .mob Srax'run
step
    .goto 2216,36.9,57.71
    >>Click on |cRXP_PICK_Gruthit|r
    .complete 82126,1,4 --5/5 Burrows Residents rescued
    .mob Gruthit
step
    #label Burrows Residents
    .goto 2216,46.85,49.12,15,0
    .goto 2216,44.63,49.17
    >>Click on |cRXP_PICK_Mus'ten|r
    .complete 82126,1,5 --5/5 Burrows Residents rescued
    .mob Mus'ten
step
    #loop
    .goto 2216,54,55.95,35,0
    .goto 2216,44.26,68.11,35,0
    .goto 2216,38.2,59.37,35,0
    .goto 2216,36.9,57.71,35,0
    .goto 2216,44.63,49.17,35,0
    >>Kill |cRXP_ENEMY_Abductors|r
    .complete 82127,1 --8/8 Abductors slain
    .mob Abductors
step
    .goto 2216,55.16,42.49,10,0
    .goto 2216,57.33,41.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gut'usul|r
    .turnin 82126 >>Turn in Defense of the People
    .target Gut'usul
    .turnin 82127 >>Turn in Make Them Prey
    .accept 82130 >>Accept A Shot at the Top
step
    .goto 2216,56.47,53.83,15,0
    .goto 2216,55.17,42.87
    >>Kill |cRXP_ENEMY_Master Abductor|r
    .complete 82130,1 --1/1 Master Abductor slain
    .mob Master Abductor
step
    .goto 2216,56.54,53.44,10,0
    .goto 2213,53.74,50.06,10,0
    .goto 2213,52.91,46.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Nizrek|r |cRXP_WARN_up above, inside the main house.|r
    .turnin 82130 >>Turn in A Shot at the Top
    .target Executor Nizrek
    .accept 82141 >>Accept To Kill a Queen
step
    #completewith next
    >>|cRXP_WARN_You can kill her solo or in a raid group (LFR, Normal, Heroic, or Mythic).|r
    *|cRXP_WARN_The fastest and most accessible method is to kill her solo, but you might want to wait if you plan on killing her in a raid group.|r
    *|cRXP_WARN_It all depends on how eager you are for the Heroic Tier Token reward offered by this quest.|r
    *|cFFFF0000This guide will continue to direct you through the solo version|r.
    .complete 82141,2 --1/1 Enter Nerub-ar Palace in Story Mode (Optional)>>Kill |cRXP_ENEMY_Queen Ansurek|r
    .complete 82141,1 --1/1 Queen Ansurek slain
step
    .isOnQuest 82141
    .goto 2213,31.47,64.05
    .gossipoption 123174 >>Talk to |cRXP_FRIENDLY_Kriz the "Loyal"|r
    .mob Kriz the "Loyal"
step
    >>Kill |cRXP_ENEMY_Queen Ansurek|r
    .complete 82141,1 --1/1 Queen Ansurek slain
    .mob Queen Ansurek
step
    #completewith next
    +Click on your player frame and leave the instance group if you're in the solo version.
step
    .goto 2213,50.02,44.51,15,0
    .goto 2213,52.70,46.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Executor Nizrek|r
    .turnin 82141 >>Turn in To Kill a Queen
    .target Executor Nizrek
]])

-- Siren Isle Campaign
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP The War Within
#subgroup Miscellaneous Storylines (80)
#name g) Siren Isle Campaign
#next h) Fate of the Kirn Tor
#displayname Siren Isle Campaign
#subweight 4.5

--WEEK 1 CAMPAIGN START

step
    .goto 2339,41.85,26.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawn|r
    .accept 84719 >>Accept The Expedition Awaits
    .target Dawn
step
    .goto 2339,43.41,29.92,15,0
    .goto 2248,55.40,33.862
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skaggit|r |cRXP_WARN_on the zeppelin|r.
    .turnin 84719 >>Turn in The Expedition Awaits
    .target Skaggit
    .accept 84720 >>Accept To the Siren Isle!
step
    .goto 2248,55.40,33.862
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skaggit|r
    .complete 84720,1 --1/1 Talk to Skaggit to depart from Dornogal
    .skipgossipid 124305
    .target Skaggit to depart from Dornogal
step
    #completewith next
    #hidewindow
    #title Follow the Arrow
    .goto 2369,69.34,50.86,20 >> test
    .timer 9,RP
step
    .goto 2369,69.31,48.08
    #title Follow the Arrow
    >>|cRXP_WARN_You are unable to fly here; this will be unlocked later|r.
    .complete 84720,2 --1/1 Rendezvous with Skaggit
step
    .goto 2369,69.32,48.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skaggit|r
    .turnin 84720 >>Turn in To the Siren Isle!
    .target Skaggit
    .accept 84940 >>Accept Friendly Competition
step
    .goto 2369,67.48,41.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bargus|r
    .turnin 84940 >>Turn in Friendly Competition
    .target Bargus
    .accept 84721 >>Accept To Scan a Crystal
step
    .goto 2369,67.75,40.49
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Earthen Prototype|r
    .complete 84721,1 --1/1 Earthen Prototype
step
    .goto 2369,70.98,40.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Tanmar|r
    .complete 84721,2 --1/1 Arathi Crystals
    .skipgossipid 124803
    .target Apprentice Tanmar
step
    .goto 2369,71.09,45.81
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Goblin Power Source|r
    .complete 84721,3 --1/1 Goblin Power Source
step
    #completewith next
    .goto 2369,67.50,41.98
    .gossipoption 124801 >>Talk to |cRXP_FRIENDLY_Bargus|r
    .timer 3.5, Roleplay Duration
    .target Bargus
step
    .goto 2369,67.50,41.98
    >>|cRXP_WARN_Wait for the brief roleplay|r, |cRXP_WARN_which will be completed when the timer runs out|r.
    .complete 84721,4 --1/1 Device assembled
step
    .goto 2369,67.47,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bargus|r
    .turnin 84721 >>Turn in To Scan a Crystal
    .target Bargus
    .accept 84722 >>Accept Facet-nating Signals
step
    .goto 2369,57.03,47.72,40,0
    .goto 2369,48.56,44.7
    #title Follow the Arrow
    .complete 84722,1 --Meet up with Bargus
step
    .goto 2369,48.56,44.7
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Earthen Pylon|r at the waypoint destination
    .complete 84722,2 --1/1 First Earthen Pylon Activated
step
    .goto 2369,45.44,41.66
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Earthen Pylon|r at the waypoint destination
    .complete 84722,3 --1/1 Second Earthen Pylon Activated
step
    .goto 2369,44.86,44.12
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Earthen Pylon|r at the waypoint destination
    .complete 84722,4 --1/1 Third Earthen Pylon Activated
step
    .goto 2369,48.12,43.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bargus|r
    .turnin 84722 >>Turn in Facet-nating Signals
    .target Bargus
    .accept 84727 >>Accept The Second Signal
step
    .goto 2369,43.53,28.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bargus|r
    .turnin 84727 >>Turn in The Second Signal
    .accept 84941 >>Accept Cave Barging
    .target Bargus
step
    .isOnQuest 84941
    .goto 2369,44.64,22.43,40 >>Follow the Arrow
    #title Follow the Arrow
    .timer 10,RP
step
    .goto 2369,44.64,22.43
    >>Wait in front of the cave |cRXP_WARN_with your back facing it|r until the entrance is blown open,|cRXP_WARN_so the blast pushes you closer to the cave.|r
    .complete 84941,1 --1/1 Collapsed tunnel cleared
step
    .goto 2369,48.87,18.42
    #title Follow the Arrow
    .complete 84941,2 --Cave entered
    .timer 5,RP
step
    .goto 2369,48.83,18.43
    >>|cRXP_WARN_Wait for the brief roleplay|r, |cRXP_WARN_which will be completed when the timer runs out|r.
    *|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bargus|r
    .turnin 84941 >>Turn in Cave Barging
    .target Bargus
    .accept 84723 >>Accept Buried Secrets
step
    .goto 2369,50.32,15.38
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_the Singing Tablet|r
    *|cRXP_WARN_Remove "Singing Runes" debuff to save 3 seconds.|r
    .complete 84723,1 --1/1 Examine the Singing Tablet
    .skipgossipid 125532
step
    .goto 2375,47.58,44.69
    #title Follow the Arrow
    .complete 84723,1 --1/1 Examine the Singing Tablet
step
    .goto 2375,47.58,44.69
    #title Follow the Arrow
    >>Kill |cRXP_ENEMY_Crystalsworn Memory|r |cRXP_WARN_if they bother you|r and |cRXP_WARN_don't run into|r |cRXP_ENEMY_Faded Construct|r.
    .complete 84723,2 --Follow the Signal through the Vault.
    .mob Crystalsworn Memory
step
    .goto 2375,47.59,44.68
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ancient Rune|r
    *Kill |cRXP_ENEMY_Crystalsworn Memory|r |cRXP_WARN_if they bother you|r and |cRXP_WARN_don't run into|r |cRXP_ENEMY_Faded Construct|r.
    .complete 84723,4 --Follow the signal into the Central Chamber
    .mob Crystalsworn Memory
    .mob Faded Construct
    .target Bargus
step
    .goto 2375,48.02,49.32,10,0
    .goto 2375,40.15,70.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bargus|r
    *>>Kill |cRXP_ENEMY_Crystalsworn Memory|r |cRXP_WARN_if they bother you|r.
    .complete 84723,5 --Follow the signal into the Central Chamber
    .timer 8,RP
    .target Bargus
step
    .goto 2375,40.15,70.7
    >>|cRXP_WARN_Wait for the brief roleplay|r, |cRXP_WARN_which will be completed when the timer runs out|r.
    *|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bargus|r
    .turnin 84723 >>Turn in Buried Secrets
    .target Bargus
    .accept 84724 >>Accept The Radiant Vault
step
    .goto 2375,37.43,77.95
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Skeletal Remains|r.
    .complete 84724,1 --1/1 Skeletal Remains Inspected
    .target Skeletal Remains
step
    .goto 2375,37.43,77.95
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Skeletal Remains|r.
    .complete 84724,2 --1/1 Ring Taken
    .skipgossipid 124399
step
    .goto 2375,44.86,72.79
    >>Kill the |cRXP_ENEMY_Vault Guardian|r.
    .complete 84724,3 --1/1 Tomb Guardian Defeated
    .mob Vault Guardian
step
    .goto 2375,41.37,74.38
    >>Loot |cRXP_ENEMY_Vault Guardian|r for |T6215540:0|t[|cRXP_LOOT_Cracked Citrine|r].
    .complete 84724,4 --1/1 Cracked Citrine Collected
step
    #completewith next
    .goto 2375,38.01,78.01
    .gossipoption 124775 >>Talk to |cRXP_FRIENDLY_Bargus|r
    .timer 13,RP
    .target Bargus
step
    .goto 2369,71.12,44.27
    >>|cRXP_WARN_Wait for the brief roleplay|r, |cRXP_WARN_which will be completed when the timer runs out|r.
    *|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bargus|r
    .turnin 84724 >>Turn in The Radiant Vault
    .target Bargus
step
    .goto 2369,71.09,44.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angorla|r
    .accept 84728 >>Accept Reforged Anew
    .target Angorla
step
    .goto 2369,71.09,44.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angorla|r and finish the puzzle.
    *|cRXP_WARN_Rearrange the positions so that none of the connecting intersect|r.
    .skipgossipid 124757 -- do It
    .complete 84728,1 --1/1 Cracked Citrine Repaired
    --x .skipgossipid 131242 -- wait
step
    .goto 2369,71.09,44.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angorla|r
    .turnin 84728 >>Turn in Reforged Anew
    .target Angorla
    .accept 84725 >>Accept The Circlet Calls
step
    .goto 2369,71.09,44.11
    >>Equip |T6215518:0|t[Cyrce's Circlet]
    .complete 84725,1 --1/1 Equip Cyrce's Circlet
    .use 228411
step
    .goto 2369,71.09,44.11
    >>Open your character panel and Shift+Right-Click on |T6215518:0|t[Cyrce's Circlet] (ring slot). Then, Left-Click and drag |T6215530:0|t[Windsinger's Runed Citrine] from your bags into the |cFFEB144Cred gem slot|r.
    .complete 84725,2 --1/1 Socket
step
    .goto 2369,71.09,44.11
    >>Open your character panel and Shift+Right-Click on |T6215518:0|t[Cyrce's Circlet]. Next, Left-Click to remove |T6215530:0|t[Windsinger's Runed Citrine] from the |cFFEB144Cred gem slot|r, then Left-Click again to reapply it.
    .complete 84725,3 --1/1 Unsocket
step
    .goto 2369,71.09,44.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angorla|r
    .turnin 84725 >>Turn in The Circlet Calls
    .accept 84726 >>Accept Uncovered Mysteries
    .target Angorla

--CONTRUBUTION

step
    .goto 2369,69.40,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jack the Hammer|r
    .accept 85059 >>Accept A Piece of the Action
    .target Jack the Hammer
step
    .goto 2369,69.32,43.18
    >>Click on |cRXP_PICK_Siren Isle Command Map|r and contribute to any of the 3 events.
    .complete 85059,1 --1/1 Contribute to an event
step
    .goto 2369,69.40,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jack the Hammer|r
    .turnin 85059 >>Turn in A Piece of the Action
    .accept 86156 >>Accept Getting Involved
    .target Jack the Hammer
step
    .goto 2369,70.46,67.14,20,0
    .goto 2369,68.38,73.76
    >>|cRXP_WARN_Use the ExtraActionButton in the cave|r.
    *|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Runed Storm Cache|r.
    .complete 84726,1 --1/1 Vrykul Ruins Searched
step
    .areapoiexists 2369,8149
    .goto 2369,61.93,74.69
    >>Complete the |cRXP_WARN_The Drain Excavation|r by killing |cRXP_ENEMY_Gravesludge|r
    .complete 86156,2 --1/1 DO ONE OF THE EVENTS IF ITS UP
    .mob Gravesludge
step
    .goto 2369,32.41,69.36
    >>|cRXP_WARN_Use the ExtraActionButton|r.
    *|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Runed Storm Cache|r.
    .complete 84726,2 --1/1 Vrykul Ritual Site Searched
step
    .areapoiexists 2369,8152
    .goto 2369,33.20,64.80
    >>Complete the |cRXP_WARN_The Drowned Lair Excavation|r by killing |cRXP_ENEMY_Nerathor|r
    .complete 86156,2 --1/1 DO ONE OF THE EVENTS IF ITS UP
    .mob Nerathor
step
    .areapoiexists 2369,8150
    .goto 2369,44.03,56.32
    >>Complete the |cRXP_WARN_Shuddering Hallow Excavation|r by killing |cRXP_ENEMY_Stalgnarok|r
    .complete 86156,2 --1/1 DO ONE OF THE EVENTS IF ITS UP
    .mob Stalagnarok
step
    .goto 2369,39.48,20.23
    >>|cRXP_WARN_Use the ExtraActionButton|r.
    *|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Runed Storm Cache|r.
    .complete 84726,3 --1/1 Vrykul Gravesite Searched
step
    .goto 2369,71.21,44.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angorla|r
    .turnin 84726 >>Turn in Uncovered Mysteries
    .target Angorla
step
    .areapoiexists 2369,8149
    .goto 2369,61.93,74.69
    >>Complete the |cRXP_WARN_The Drain Excavation|r by killing |cRXP_ENEMY_Gravesludge|r
    .complete 86156,2 --1/1 DO ONE OF THE EVENTS IF ITS UP
    .mob Gravesludge
step
    .areapoiexists 2369,8150
    .goto 2369,44.03,56.32
    >>Complete the |cRXP_WARN_Shuddering Hallow Excavation|r by killing |cRXP_ENEMY_Stalgnarok|r
    .complete 86156,2 --1/1 DO ONE OF THE EVENTS IF ITS UP
    .mob Stalagnarok
step
    .areapoiexists 2369,8152
    .goto 2369,33.20,64.80
    >>Complete the |cRXP_WARN_The Drowned Lair Excavation|r by killing |cRXP_ENEMY_Nerathor|r
    .complete 86156,2 --1/1 DO ONE OF THE EVENTS IF ITS UP
    .mob Nerathor
step
    .goto 2369,69.32,43.18
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Siren Isle Command Map|r and contribute to any of the 3 events. |cRXP_WARN_10 times if u can.|r
    .complete 86156,1 --10/10 Contribute ten times to events
step
    .areapoiexists 2369,8149
    .goto 2369,61.93,74.69
    >>Complete the |cRXP_WARN_The Drain Excavation|r by killing |cRXP_ENEMY_Gravesludge|r
    .complete 86156,2 --1/1 DO ONE OF THE EVENTS IF ITS UP
    .mob Gravesludge
step
    .areapoiexists 2369,8150
    .goto 2369,44.03,56.32
    >>Complete the |cRXP_WARN_Shuddering Hallow Excavation|r by killing |cRXP_ENEMY_Stalgnarok|r
    .complete 86156,2 --1/1 DO ONE OF THE EVENTS IF ITS UP
    .mob Stalagnarok
step
    .areapoiexists 2369,8152
    .goto 2369,33.20,64.80
    >>Complete the |cRXP_WARN_The Drowned Lair Excavation|r by killing |cRXP_ENEMY_Nerathor|r
    .complete 86156,2 --1/1 DO ONE OF THE EVENTS IF ITS UP
    .mob Nerathor
step
    .goto 2369,69.40,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jack the Hammer|r
    .turnin 86156 >>Turn in Getting Involved
    .target Jack the Hammer
step
    .goto 2369,72.18,43.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Tanmar|r
    .accept 85653 >>Accept Dipping a Toe
    .target Apprentice Tanmar
step
    .goto 2369,73.34,52.34
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Seafearer's Chest|r on the seabed.
    .complete 85653,1 --1/1 Search the East Shore
step
    .goto 2369,45.92,87.70
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Seafearer's Chest|r on the seabed.
    .complete 85653,3 --1/1 Search the Southern Shore
step
    .goto 2369,33.07,20.52
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Seafearer's Chest|r on the seabed.
    .complete 85653,2 --1/1 Search the Northern Shore
step
    .goto 2369,72.19,42.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Tanmar|r
    .turnin 85653 >>Turn in Dipping a Toe
    .target Apprentice Tanmar

step
    .isQuestAvailable 85654
    .isQuestTurnedIn 85653
    .isOnQuest 84852
    >>Kill |cRXP_ENEMY_rares|r, |cRXP_ENEMY_enemies|r, complete repeatable quests and excavations or open |cRXP_PICK_chests|r to complete the first part of the special assignment quest
    .complete 84852,1 --Complete activities and secure the Siren Isle (100%)
step
    .isQuestAvailable 85654
    .isQuestTurnedIn 85653
    .isOnQuest 84851
    >>Kill |cRXP_ENEMY_rares|r, |cRXP_ENEMY_enemies|r, complete repeatable quests and excavations or open |cRXP_PICK_chests|r to complete the first part of the special assignment quest
    .complete 84851,1 --Complete activities and secure the Siren Isle (100%)
step
    .isQuestAvailable 85654
    .isQuestTurnedIn 85653
    .isOnQuest 84850
    >>Kill |cRXP_ENEMY_rares|r, |cRXP_ENEMY_enemies|r, complete repeatable quests and excavations or open |cRXP_PICK_chests|r to complete the first part of the special assignment quest
    .complete 84850,1 --Complete activities and secure the Siren Isle (100%)
step
    .goto 2369,71.28,45.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Didi the Wrench|r
    .accept 85654 >>Accept Juicing Up And Storming Out
    .target Didi the Wrench
step
    .goto 2369,69.07,49.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suzie Boltwrench to enter Storm Mode|r
    .complete 85654,2 --1/1 Talk to Suzie Boltwrench to enter Storm Mode
    .target Suzie Boltwrench
    .skipgossipid 123657
step
    .isOnQuest 85654
    .goto 2369,69.07,49.25
    .aura 458069 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suzie Boltwrench to enter Storm Mode|r
    .target Suzie Boltwrench
    .skipgossipid 123657
step
    .goto 2369,69.14,49.66
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_TR-06 Pummeler|r
    .complete 85654,3 --1/1 Activate the TR-06 Pummeler
step
    .isOnQuest 85654
    #hidewindow
    #completewith next
    #label NUKULARTargetPainter
    .complete 85654,4 --1/1 Use the N.U.K.U.L.A.R Target Painter
step
    .isOnQuest 85654
    #completewith NUKULARTargetPainter
    .goto 2369,69.27,47.94
    .aura 466925 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_.U.K.U.L.A.R Target Painter|r on top of the boxes
step
    .isOnQuest 85654
    #requires NUKULARTargetPainter
    >>Use the |cRXP_WARN_ExtraActionButton|r and aim it anywhere
    .complete 85654,4 --1/1 Use the N.U.K.U.L.A.R Target Painter
step
    .isOnQuest 85654
    .goto 2369,69.23,49.26
    .aura -458069 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suzie Boltwrench to leave Storm Mode|r
    .skipgossipid 125326
    .target Suzie Boltwrench
step
    .goto 2369,71.28,45.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Didi the Wrench|r
    .turnin 85654 >>Turn in Juicing Up And Storming Out
    .target Didi the Wrench
step
    .goto 2369,71.22,44.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angorla|r
    .accept 85655 >>Accept Unleashing Her Power
    .target Angorla
step
    #completewith next
    #hidewindow
    #label EquipCyresCircleUnleashingPower
    .isOnQuest 85655
    .equip 11,228411 >>Equip the Cyre's Circle

step
    .isOnQuest 85655
    #completewith EquipCyresCircleUnleashingPower
    .equip 11,228411 >>Equip the Cyre's Circle
    .use 228411
step
    #requires EquipCyresCircleUnleashingPower
    #loop
    .goto 2369,63.44,76.73,35,0
    .goto 2369,34.47,65.59,35,0
    .goto 2369,45.96,56.72,35,0
    .goto 2369,45.19,23.39,45,0
    >>Run around and attack |cRXP_ENEMY_anything|r
    .complete 85655,1 --10/10 Potential Unveiled
step
    .goto 2369,71.21,44.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angorla|r
    .turnin 85655 >>Turn in Unleashing Her Power
    .target Angorla
step
    .goto 2369,72.19,43.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Tanmar|r
    .accept 85656 >>Accept The Singing Bandit Catcher
    .target Apprentice Tanmar
step
    #completewith next
    #label SpiritScarredCave
    >>Kill the |cRXP_ENEMY_Cursed Sailor|r. Loot it for the |T6215537:0|t[|cRXP_LOOT_Singing Fragment|r].
    .complete 85656,1 --1/1 Spirit Scarred Cave Searched
    .mob Cursed Sailor
step
    #title Enter Cave
    #completewith SpiritScarredCave
    .goto 2369,49.96,42.67,10 >>Enter the cave
step
    #requires SpiritScarredCave
    .goto 2369,52.34,38.57
    >>Kill the |cRXP_ENEMY_Cursed Sailor|r. Loot it for the |T6215537:0|t[|cRXP_LOOT_Singing Fragment|r].
    .complete 85656,1 --1/1 Spirit Scarred Cave Searched
    .mob Cursed Sailor
step
    .goto 2369,43.21,47.79,10,0
    .goto 2369,43.02,49.41,10,0
    .goto 2369,38.94,52.49
    >>Kill the |cRXP_ENEMY_Cursed Sailor|r. Loot it for the |T6215537:0|t[|cRXP_LOOT_Singing Fragment|r].
    .complete 85656,2 --1/1 Salt and Shanty Searched
    .mob Cursed Sailor
step
    .goto 2369,48.43,58.40
    >>Kill the |cRXP_ENEMY_Cursed Sailor|r. Loot it for the |T6215537:0|t[|cRXP_LOOT_Singing Fragment|r].
    .complete 85656,3 --1/1 Ghoststone Diggings Searched
    .mob Cursed Sailor
step
    .goto 2369,72.14,42.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Tanmar|r
    .turnin 85656 >>Turn in The Singing Bandit Catcher
    .target Apprentice Tanmar
step
    .goto 2369,71.28,45.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Didi the Wrench|r
    .accept 85657 >>Accept Cyrce Would Be So Proud
    .target Didi the Wrench
step
    .goto 2369,72.19,44.89
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_The Skypiercer|r
    *|cRXP_WARN_Use the correct ability:|r
    - Wind on the left: Left
    - Wind on the right: Right
    - Wind in the middle: Forward
    .complete 85657,1 --1/1 Survive a ride in the Skypiercer
    .target The Skypiercer
step
    .goto 2369,71.29,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Didi the Wrench|r
    .turnin 85657 >>Turn in Cyrce Would Be So Proud
    .target Didi the Wrench
]])

-- Siren Isle Dailies/Weeklies?
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP The War Within
#subgroup Dailies and Weeklies (80)
#name a) Siren Isle Weeklies
#displayname Siren Isle Weeklies
#subweight -2
step
    #loop
    .goto 2369,69.29,43.48,10,0
    .goto 2369,69.42,42.84,10,0
    .goto 2369,71.34,44.10,10,0
    .goto 2369,71.04,39.69,10,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky-Captain Elaena Lancekat|r, |cRXP_FRIENDLY_Skaggit|r, |cRXP_FRIENDLY_Dawn|r, and |cRXP_FRIENDLY_Stellin Verasa|r
    .questcount <4,83932,85589,84222,84627,84430,84432,84680,83753,84299,84619 >>|cRXP_WARN_Accept the repeatable quests in the Floatsam Shoal|r
    *Skip this step when you've accepted all quests.
    .target Sky-Captain Elaena Lancekat
    .target Dawn
    .target Stellin Verasa
    .target Skaggit
step
    .isOnQuest 83932
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Interesting Notes|r, |cRXP_PICK_Faded Notes|r and |cRXP_PICK_Old Scrolls|r.
    *|cRXP_WARN_Use the|r |T2101967:0|t[Research Journal] |cRXP_WARN_afterwards|r.
    .complete 83932,1 --12/12 Interesting Notes added to the Research Journal
    .use 227405
step
    .isOnQuest 83932
    .isQuestAvailable 84248
    .goto 2369,51.50,48.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Machinist Kromleg|r
    .accept 84248 >>Accept A Ritual of Runes
    .target Machinist Kromleg
step
    .isOnQuest 84248
    #completewith next
    #label EnterCaveRitualRunes
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Summoning Runes|r
    .complete 84248,1 --5/5 Summoning Runes destroyed
step
    .isOnQuest 84248
    #completewith EnterCaveRitualRunes
    #title Enter the cave
    .goto 2369,50.09,42.41,8 >>Enter the cave
step
    .isOnQuest 84248
    #title |TInterface/cursor/crosshair/interact.blp:20|tSummoning Runes
    #requires EnterCaveRitualRunes
    #loop
    .goto 2369,52.58,38.46,10,0
    .goto 2369,53.10,40.69,10,0
    .goto 2369,54.11,37.70,10,0
    .goto 2369,53.32,35.62,10,0
    .goto 2369,51.41,37.53,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Summoning Runes|r
    .complete 84248,1 --5/5 Summoning Runes destroyed
step
    .isOnQuest 84248
    .goto 2369,53.02,37.76
    >>Kill |cRXP_ENEMY_Inhyldir the Cursed|r
    .complete 84248,2 --1/1 Inhyldir the Cursed slain
    .mob Inhyldir the Cursed
step
    .isOnQuest 84248
    #completewith next
    #label LeaveCaveRitualRunes
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Machinist Kromleg|r
    .turnin 84248 >>Turn in A Ritual of Runes
    .target Machinist Kromleg
step
    .isOnQuest 84248
    #completewith LeaveCaveRitualRunes
    #title Leave the cave
    .goto 2369,50.09,42.41,8 >>Leave the cave
step
    .isOnQuest 84248
    #requires LeaveCaveRitualRunes
    .goto 2369,51.51,48.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Machinist Kromleg|r
    .turnin 84248 >>Turn in A Ritual of Runes
    .target Machinist Kromleg
step
    .isOnQuest 84299
    #completewith OokerDookerLiteratureClub
    >>Kill the |cRXP_ENEMY_Bilge Rat forces|r in the area
    >>|TInterface/cursor/crosshair/interact.blp:20|tOr click on the |cRXP_PICK_Kaja'Cola Cans|r and |cRXP_PICK_Kaja'Cola Stash|r
    .complete 84299,1 --Bilge Rat forces disupted (100%)
step
    .isOnQuest 84619,84299,83753
    .isQuestAvailable 84001
    .goto 2369,48.53,53.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Machinist Kromleg|r
    .accept 84001 >>Accept Cart Blanche
    .target Machinist Kromleg
step
    .isOnQuest 84001
    #loop
    .goto 2369,50.03,57.31,8,0
    .goto 2369,51.43,58.68,8,0
    .goto 2369,52.65,59.07,8,0
    .goto 2369,58.49,62.64,8,0
    .goto 2369,58.78,62.96,8,0
    .goto 2369,58.49,62.64,8,0
    .goto 2369,52.65,59.07,8,0
    .goto 2369,51.43,58.68,8,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crashed Ore Carts|r, |cRXP_PICK_Ore Samples|r, and |cRXP_PICK_Mine Tracks|r
    *|cRXP_WARN_Tracks and carts are on the track, most of the ore is below it|r
    .complete 84001,1 --2/2 Mine Tracks repaired
    .complete 84001,2 --5/5 Crashed Mine Carts cleared
    .complete 84001,3 --12/12 Ore Sample
step
    .isOnQuest 84001
    .isQuestComplete 84001
    .goto 2369,48.55,53.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Machinist Kromleg|r
    .turnin 84001 >>Turn in Cart Blanche
    .target Machinist Kromleg
step
    .isOnQuest 83753
    .goto 2369,47.64,64.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Blackstell Cannonballs|r.
    >>Kill |cRXP_ENEMY_Cannon Master Jin'chu|r. Loot him for the |T252185:0|t[|cRXP_LOOT_Blacksteel Cannonballs|r].
    .complete 83753,1 --1/1 Cannon Master Jin'chu
    .complete 83753,2 --1/1 Blacksteel Cannonballs collected
    .mob Cannon Master Jin'chu
step
    .isOnQuest 83753
    .goto 2369,47.95,66.03
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bilge Rat Cannon|r.
    .complete 83753,3 --1/1 Bilge Rat Cannon controlled
step
    .isOnQuest 83753
    .goto 2369,47.95,66.03
    >>Spam |T252185:0|t[Cannon Shot] to kill the |cRXP_ENEMY_Bilge Rat|r forces
    .complete 83753,4 --Bilge Rat Forces destroyed (100%)
step
    .isOnQuest 84619,84299,83753
    .isQuestAvailable 83827
    .goto 2369,45.31,67.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regald Hornfyre|r
    .accept 83827 >>Accept Silence the Song
    .target Regald Hornfyre
step
    .isOnQuest 83827
    #completewith next
    >>Use the |T458645:0|t[Sonic Scrambler] on |cRXP_ENEMY_Arathor Scouts|r and |cRXP_ENEMY_Greaseguard Acquisitioner|r (|cRXP_WARN_or kill them|r)
    .complete 83827,2 --7/7 Charmed Troops dispelled
    .mob Arathor Scout
    .mob Greaseguard Acquisitioner
    .mob Alluring Songtwister
    .use 226261
step
    .isOnQuest 83827
    .goto 2369,33.05,73.80
    >>Kill |cRXP_ENEMY_Macabea The Sea Banshee|r
    .complete 83827,1 --1/1 Macabea The Sea Banshee slain
    .mob Macabea The Sea Banshee
step
    .isOnQuest 83827
    #loop
    .goto 2369,36.76,73.33,25,0
    .goto 2369,39.44,67.92,25,0
    .goto 2369,42.50,73.33,25,0
    .goto 2369,32.56,70.59,25,0
    >>Use the |T458645:0|t[Sonic Scrambler] on |cRXP_ENEMY_Arathor Scouts|r and |cRXP_ENEMY_Greaseguard Acquisitioner|r (|cRXP_WARN_or kill them|r)
    .complete 83827,2 --7/7 Charmed Troops dispelled
    .mob Arathor Scout
    .mob Greaseguard Acquisitioner
    .mob Alluring Songtwister
    .use 226261
step
    .isOnQuest 83827
    .isQuestComplete 83827
    .goto 2369,45.31,67.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regald Hornfyre|r
    .turnin 83827 >>Turn in Silence the Song
    .target Regald Hornfyre
step
    .isOnQuest 84432,84680
    #completewith next
    >>Kill the |cRXP_ENEMY_Bloodwake Vrykuls|r and |cRXP_ENEMY_Bloodbrine Horrors|r in the area
    .complete 84432,1 --15/15 Bloodwake Vrykul slain
    .complete 84680,2 --8/8 Bloodbrine Horror slain
    .mob Bloodwake Spellslinger
    .mob Bloodwake Deathdealer
    .mob Bloodwake Marauder
    .mob Bloodwake Brawler
step
    .isOnQuest 84680
    #label BrinedMonstrosity
    .goto 2369,39.39,73.45
    >>Kill the |cRXP_ENEMY_Brined Monstrosity|r
    .complete 84680,3 --1/1 Brined Monstrosity slain
    .mob Brined Monstrosity
step
    #hidewindow
    #completewith BloodwakeVrykul
    #loop
    .goto 2369,39.39,73.45,30,0
    .goto 2369,49.72,74.73,30,0
    .goto 2369,57.90,70.69,45,0
    .goto 2369,54.82,82.28,25,0
    .goto 2369,61.58,83.82,25,0
    .goto 2369,63.17,87.14,30,0
    .goto 2369,66.11,67.24,35,0
    .goto 2369,57.92,61.66,25,0
    .goto 2369,50.18,61.10,25,0
    +1
step
    .isOnQuest 83932
    #completewith RestlessBloodbrine
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Interesting Notes|r, |cRXP_PICK_Faded Notes|r and |cRXP_PICK_Old Scrolls|r.
    *|cRXP_WARN_Use the|r |T2101967:0|t[Research Journal] |cRXP_WARN_afterwards|r.
    .complete 83932,1 --12/12 Interesting Notes added to the Research Journal
    .use 227405
step
    .isOnQuest 84432,84680
    #completewith RestlessBloodbrine
    >>Kill the |cRXP_ENEMY_Bloodwake Vrykuls|r and |cRXP_ENEMY_Bloodbrine Horrors|r in the area
    .complete 84432,1 --15/15 Bloodwake Vrykul slain
    .complete 84680,2 --8/8 Bloodbrine Horror slain
    .mob Bloodwake Spellslinger
    .mob Bloodwake Marauder
    .mob Bloodbrine Horror
step
    .isOnQuest 84680
    #label RestlessBloodbrine
    >>Use the |T511729:0|t[Rock Reviver] on |cRXP_PICK_Restless Stones|r and |cRXP_PICK_Restless Pebbles|r
    .complete 84680,1 --8/8 Restless Stones and Pebbles animated
    .use 228988
    .target Restless Stone
    .target Restless Pebble
step
    .isOnQuest 83932
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Interesting Notes|r, |cRXP_PICK_Faded Notes|r and |cRXP_PICK_Old Scrolls|r.
    *|cRXP_WARN_Use the|r |T2101967:0|t[Research Journal] |cRXP_WARN_afterwards|r.
    .complete 83932,1 --12/12 Interesting Notes added to the Research Journal
step
    .isOnQuest 84432,84680
    #label BloodwakeVrykul
    >>Kill the |cRXP_ENEMY_Bloodwake Vrykuls|r and |cRXP_ENEMY_Bloodbrine Horrors|r in the area
    .complete 84432,1 --15/15 Bloodwake Vrykul slain
    .complete 84680,2 --8/8 Bloodbrine Horror slain
    .mob Bloodwake Spellslinger
    .mob Bloodwake Marauder
    .mob Bloodbrine Horror
step
    .isOnQuest 83932
    #label InterestingNotes
    #loop
    .goto 2369,48.19,60.36,20,0
    .goto 2369,42.30,46.05,20,0
    .goto 2369,45.95,47.72,20,0
    .goto 2369,39.75,52.98,20,0
    .goto 2369,39.02,39.07,20,0
    .goto 2369,52.22,32.87,20,0
    .goto 2369,66.49,64.54,15,0
    .goto 2369,67.39,60.92,15,0
    .goto 2369,63.95,63.12,15,0
    .goto 2369,62.48,67.31,20,0
    .goto 2369,56.01,85.92,20,0
    .goto 2369,54.01,77.09,20,0
    .goto 2369,50.80,76.44,20,0
    .goto 2369,49.17,71.57,20,0
    .goto 2369,51.91,70.01,15,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Interesting Notes|r, |cRXP_PICK_Faded Notes|r and |cRXP_PICK_Old Scrolls|r.
    *|cRXP_WARN_Use the|r |T2101967:0|t[Research Journal] |cRXP_WARN_afterwards|r.
    .complete 83932,1 --12/12 Interesting Notes added to the Research Journal
step
    .isOnQuest 84430
    #completewith ThreeHeadsOfTheDeep
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Water Shells|r and afterwards on the |cRXP_PICK_Crystal Chunks|r
    >>Kill the |cRXP_ENEMY_Naga forces|r. Loot them for the |T134111:0|t[|cRXP_LOOT_Crystal Fragments|r].
    .complete 84430,1 --10/10 Crystal Chunk
    .complete 84430,2 --30/30 Crystal Fragment
    .mob Water Shell
    .mob Crystal Chunk
step
    .isOnQuest 84627
    .goto 2369,67.22,61.88
    >>Kill |cRXP_ENEMY_Warlord Thresh|r
    .complete 84627,1 --1/1 Warlord Thresh slain
    .mob Warlord Thresh
step
    .isOnQuest 84627
    .goto 2369,61.36,67.21
    >>Kill |cRXP_ENEMY_Nereu of the Silent Wave|r
    .complete 84627,3 --1/1 Nereu of the Silent Wave slain
    .mob Nereu of the Silent Wave
step
    .isOnQuest 84627
    .goto 2369,48.54,74.89
    >>Kill |cRXP_ENEMY_Extractor Silisai|r
    .complete 84627,2 --1/1 Extractor Silisai slain
    .mob Extractor Silisai
step
    .isQuestAvailable 85051
    .isOnQuest 84627,84430,85589
    .goto 2369,41.95,68.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Machinist Kromleg|r
    .accept 85051 >>Accept Beach Comber
    .target Machinist Kromleg
step
    .isOnQuest 85051
    #loop
    .goto 2369,32.70,70.21,15,0
    .goto 2369,30.62,76.18,15,0
    .goto 2369,33.63,78.16,15,0
    .goto 2369,37.30,74.36,15,0
    .goto 2369,38.84,67.95,15,0
    >>|cRXP_WARN_Follow and defend |cRXP_FRIENDLY_Recycler Kerchunk|r.
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Salvaged Scrap|r on the ground
    .complete 85051,1 --Escort Kerchunk as he searches the beach
    .complete 85051,2 --24/24 Salvageable Scrap
    .mob Driftwave Bull
    .mob Cliffreach Pridetalon
step
    .isOnQuest 85051
    .isQuestComplete 85051
    #label ThreeHeadsOfTheDeep
    .goto 2369,41.95,68.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Machinist Kromleg|r
    .turnin 85051 >>Turn in Beach Comber
    .target Machinist Kromleg
step
    .isOnQuest 84430
    #loop
    .goto 2369,47.21,75.12,35,0
    .goto 2369,52.21,59.35,35,0
    .goto 2369,59.92,66.82,35,0
    .goto 2369,53.64,79.25,35,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Water Shells|r and afterwards on the |cRXP_PICK_Crystal Chunks|r
    >>Kill the |cRXP_ENEMY_Naga forces|r. Loot them for the |T134111:0|t[|cRXP_LOOT_Crystal Fragments|r].
    .complete 84430,1 --10/10 Crystal Chunk
    .complete 84430,2 --30/30 Crystal Fragment
    .mob Water Shell
    .mob Crystal Chunk
step
    .isOnQuest 85589
    #completewith next
    #label RuffledPagesA
    >>Kill |cRXP_ENEMY_Cliffreach Pridetalons|r. Loot them for the |T134332:0|t[|cRXP_LOOT_Ruffled Pages|r].
    .complete 85589,1 --15/15 Ruffled Pages
    .mob Cliffreach Pridetalon
    .mob Cliffreach Matriarch
step
    .isOnQuest 85589
    #completewith RuffledPagesA
    .goto 2369,46.27,65.11
    .cast 313062 >>Look up and click on the |cRXP_PICK_Grappling Hold|r.
step
    .isOnQuest 85589
    #requires RuffledPagesA
    #loop
    .goto 2369,42.31,61.27,15,0
    .goto 2369,39.70,62.48,15,0
    .goto 2369,41.94,60.27,10,0
    .goto 2369,43.18,63.49,10,0
    .goto 2369,39.59,58.73,15,0
    .goto 2369,38.83,58.94,20,0
    .goto 2369,31.29,59.51,15,0
    .goto 2369,30.69,65.57,15,0
    .goto 2369,29.57,70.49,10,0
    .goto 2369,26.74,72.44,15,0
    >>Kill |cRXP_ENEMY_Cliffreach Pridetalons|r. Loot them for the |T134332:0|t[|cRXP_LOOT_Ruffled Pages|r].
    *Look up and click on the |cRXP_PICK_Grappling Hold|r.
    .complete 85589,1 --15/15 Ruffled Pages
    .mob Cliffreach Pridetalon
    .mob Cliffreach Matriarch
step
    .isOnQuest 84222
    >>Kill |cRXP_ENEMY_Rares|r on the Siren Isle (look for stars on your map)
    *|cRXP_WARN_Just wait in the center of the isle until one appears|r
    .complete 84222,1 --2/2 Rare Siren Isle enemies slain
step
    .isOnQuest 84619
    .goto 2369,54.76,83.26
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bilge Rat Trunk|r
    .complete 84619,4 --1/1 Ookler's Diary
step
    .isOnQuest 84619
    .goto 2369,55.09,92.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Siren Isle Manifest|r |cRXP_WARN_on the boat|r
    .complete 84619,2 --1/1 Siren Isle Manifest
step
    .isOnQuest 84619
    #completewith next
    >>Kill |cRXP_ENEMY_First Mate Dat-Dat|r. Loot him for |T134245:0|t[|cRXP_LOOT_First Mate Dat Dat's Key|r].
    .collect 231809,1 --1/1 First Mate Dat Dat's Key
    .mob First Mate Dat-Dat
step
    .isOnQuest 84619
    .goto 2369,62.69,97.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Song's of the Siren|r book |cRXP_WARN_on the boat|r
    .complete 84619,5 --1/1 Songs of the Siren
step
    .isOnQuest 84619
    #hidewindow
    #label FirstMateDatDatsKey
    #completewith next
    .complete 84619,1 --1/1 Ashvane Co. Survry Report
step
    .isOnQuest 84619
    .goto 2369,62.92,97.25
    #completewith FirstMateDatDatsKey
    >>Kill |cRXP_ENEMY_First Mate Dat-Dat|r. Loot him for |T134245:0|t[|cRXP_LOOT_First Mate Dat Dat's Key|r].
    .collect 231809,1 --1/1 First Mate Dat Dat's Key
    .mob First Mate Dat-Dat
step
    .isOnQuest 84619
    #requires FirstMateDatDatsKey
    .goto 2369,60.36,98.00
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dat Dat's Book Stash|r
    .complete 84619,1 --1/1 Ashvane Co. Survry Report
step
    .isOnQuest 84619
    #label OokerDookerLiteratureClub
    #requires FirstMateDatDatsKey
    .goto 2369,66.64,87.34
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Hozen Poetry|r
    .complete 84619,3 --1/1 Hozen Poetry
step
    .isOnQuest 84299
    #loop
    .goto 2369,68.27,60.10,35,0
    .goto 2369,59.66,67.45,35,0
    .goto 2369,47.73,65.43,35,0
    .goto 2369,46.45,75.68,35,0
    .goto 2369,66.34,86.30,35,0
    >>Kill the |cRXP_ENEMY_Bilge Rat forces|r in the area
    >>|TInterface/cursor/crosshair/interact.blp:20|tOr click on the |cRXP_PICK_Kaja'Cola Cans|r and |cRXP_PICK_Kaja'Cola Stash|r
    .complete 84299,1 --Bilge Rat forces disupted (100%)
step
    .isQuestComplete 83753
    .goto 2369,69.34,43.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skaggit|r
    .turnin 83753 >>Turn in Cannon Karma
    .target Skaggit
step
    .isQuestComplete 84299
    .goto 2369,69.34,43.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skaggit|r
    .turnin 84299 >>Turn in Pirate Plunder
    .target Skaggit
step
    .isQuestComplete 84619
    .goto 2369,71.05,39.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stellin Verasa|r
    .turnin 84619 >>Turn in Ooker Dooker Literature Club
    .target Stellin Verasa
step
    .isOnQuest 84222
    .isQuestComplete 84222
    .goto 2369,69.43,42.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky-Captain Elaena Lancekat|r
    .turnin 84222 >>Turn in Secure the Perimeter
    .target Sky-Captain Elaena Lancekat
step
    .isOnQuest 84430
    .goto 2369,69.43,42.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky-Captain Elaena Lancekat|r
    .turnin 84430 >>Turn in Crystal Crusade
    .target Sky-Captain Elaena Lancekat
step
    .isOnQuest 84627
    .goto 2369,69.43,42.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky-Captain Elaena Lancekat|r
    .turnin 84627 >>Turn in Three Heads of the Deep
    .target Sky-Captain Elaena Lancekat
step
    .isOnQuest 84680
    .goto 2369,69.13,43.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawn|r
    .turnin 84680 >>Turn in Rock 'n Stone Revival
    .target Dawn
step
    .isOnQuest 84432
    .goto 2369,69.13,43.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawn|r
    .turnin 84432 >>Turn in Longship Landing
    .target Dawn
step
    .isOnQuest 83932
    .goto 2369,71.05,39.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stellin Verasa|r
    .turnin 83932 >>Turn in Historical Documents
    .target Stellin Verasa,
step
    .isOnQuest 85589
    .goto 2369,71.05,39.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stellin Verasa|r
    .turnin 85589 >>Turn in Ruffled Pages
    .target Stellin Verasa
]])

-- Fate of the Kirin Tor 1
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP The War Within
#subgroup 11.0.7 Fate of the Kirin Tor (80)
#name a) Arcane Desolation
#displayname |cRXP_WARN_Chapter 1|r - Arcane Desolation
#next b) Strength Amidst Ruins
#subweight 5

step
    .isQuestAvailable 82702
    #completewith next
    +|cRXP_WARN_You have to complete the 'Lingering Shadows' chapter first|r
step
    .goto 2339,42.58,27.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r |cRXP_WARN_in Dornogal|r.
    .accept 84223 >>Accept Survivor's Guilt
    .target Archmage Khadgar
step
    #completewith next
    #title Leave the hall
    .goto 2339,42.74,30.57,15 >>Leave the Hall
step
    .goto 2248,29.58,58.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Aethas Sunreaver|r.
    .turnin 84223 >>Turn in Survivor's Guilt
    .target Archmage Aethas Sunreaver
    .accept 83031 >>Accept The Hardest Part
step
    .goto 2248,29.59,58.14
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Letter|r.
    .complete 83031,1 --1/1 Letter to the survivors written
    .skipgossipid 124241
    .skipgossipid 124239
    .skipgossipid 124242
step
    .goto 2248,29.57,58.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Aethas Sunreaver|r.
    .turnin 83031 >>Turn in The Hardest Part
    .target Archmage Aethas Sunreaver
    .accept 83499 >>Accept Arcane Wasteland
step
    #completewith Frostfire Essence
    >>Kill |cRXP_ENEMY_Lingering Spark|r, |cRXP_ENEMY_Mana Fragment|r and |cRXP_ENEMY_Shard of Dalaran|r. Loot them for the |T4549108:0|t[|cRXP_LOOT_Arcane Dust|r].
    *|cRXP_WARN_You should kill most of the ones you encounter|r.
    .complete 83499,1 --10/10 Arcane Dust collected
    .mob Lingering Spark
    .mob Mana Fragment
    .mob Shard of Dalaran
step
    .goto 2248,29.89,54.29
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Radiant Prism Crystal|r.
    .complete 83499,2,1 --4/4 Radiant Prism Crystals collected
step
    .goto 2248,29.93,53.74
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Radiant Prism Crystal|r.
    .complete 83499,2,2 --4/4 Radiant Prism Crystals collected
step
    .goto 2248,30.64,52.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Radiant Prism Crystal|r.
    .complete 83499,2,3 --4/4 Radiant Prism Crystals collected
step
    .goto 2248,31.28,52.29
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Radiant Prism Crystal|r.
    .complete 83499,2,4 --4/4 Radiant Prism Crystals collected
step
    #label Frostfire Essence
    .goto 2248,28.87,51.88
    >>Kill |cRXP_ENEMY_Frostfire Elemental|r. Loot it for the |T429384:0|t[|cRXP_LOOT_Frostfire Essence|r].
    .complete 83499,3 --1/1 Frostfire Essence collected
    .mob Frostfire Elemental
step
    #loop
    .goto 2248,29.98,53.81,40,0
    .goto 2248,31.02,55.42,40,0
    .goto 2248,31.62,53.89,40,0
    .goto 2248,30.96,52.24,40,0
    >>Kill |cRXP_ENEMY_Lingering Spark|r, |cRXP_ENEMY_Mana Fragment|r and |cRXP_ENEMY_Shard of Dalaran|r. Loot them for |T132854:0|t[|cRXP_LOOT_Arcane Dust|r].
    *|cRXP_WARN_You should kill most of the ones you encounter|r.
    .complete 83499,1 --10/10 Arcane Dust collected
    .mob Lingering Spark
    .mob Mana Fragment
    .mob Shard of Dalaran
step
    .goto 2248,29.57,58.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Aethas Sunreaver|r.
    .turnin 83499 >>Turn in Arcane Wasteland
    .target Archmage Aethas Sunreaver
    .accept 83502 >>Accept Lessons in Defensive Magic
step
    .goto 2248,29.37,58.08
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Arcane Ward|r.
    .complete 83502,1 --1/1 First Ward activated
step
    .goto 2248,29.61,57.50
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Arcane Ward|r.
    .complete 83502,2 --1/1 Second Ward activated
step
    .goto 2248,29.99,57.92
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Arcane Ward|r.
    .complete 83502,3 --1/1 Third Ward activated
step
    .goto 2248,29.76,58.52
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Arcane Ward|r.
    .complete 83502,4 --1/1 Fourth Ward activated
step
    .goto 2248,29.74,57.93
    >>Use the |T429384:0|t[|cRXP_WARN_ExtraActionButton|r].
    .complete 83502,5 --1/1 Spell empowered
    .timer 6,RP
step
    .goto 2248,29.74,57.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Aethas Sunreaver|r.
    .turnin 83502 >>Turn in Lessons in Defensive Magic
    .target Archmage Aethas Sunreaver
    .accept 83539 >>Accept Feeling Blue
    .timer 13,RP
step
    .goto 2248,29.62,57.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalecgos|r.
    .complete 83539,1 --1/1 Speak with Kalecgos
    .skipgossipid 123141
    .target Kalecgos
step
    .goto 2248,29.65,57.59
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bag of Helpful Goods|r.
    .complete 83539,2 --1/1 Bag of Helpful Goods collected
step
    #completewith next
    .cast 456663 >>Use the |T1519433:0|t[|cRXP_WARN_ExtraActionButton|r].
    .timer 5,RP
step
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 83539,3 --1/1 Bag of Helpful Goods searched
step
    .goto 2248,29.5,57.79
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Mailbox|r.
    .complete 83539,4,1 --6/6 Items placed in the outpost
step
    .goto 2248,29.46,57.99
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Tent|r.
    .complete 83539,4,2 --6/6 Items placed in the outpost
step
    .goto 2248,29.49,58.12
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Cabinet Display|r.
    .complete 83539,4,3 --6/6 Items placed in the outpost
step
    .goto 2248,29.59,58.17
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Enchanted Display|r.
    .complete 83539,4,4 --6/6 Items placed in the outpost
step
    .goto 2248,29.74,58.33
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Flying Carpet|r.
    .complete 83539,4,5 --6/6 Items placed in the outpost
    .skipgossipid 123144
step
    .goto 2248,29.71,58
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Banner|r.
    .complete 83539,4,6 --6/6 Items placed in the outpost 
step
    .goto 2248,29.78,57.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalecgos|r.
    .turnin 83539 >>Turn in Feeling Blue
    .target Kalecgos
    .accept 83553 >>Accept Magic-stealing Kobolds
step
    .goto 2248,61.72,41.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalecgos|r.
    .turnin 83553 >>Turn in Magic-stealing Kobolds
    .accept 83554 >>Accept Trinkets, Curios and Other Powerful Objects
    .target Kalecgos
step
    .goto 2248,62.14,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kobold Thief|r.
    .accept 83555 >>Accept Mysterious Necklace
    .target Kobold Thief
step
    #completewith Arcane Manuscripts
    >>Kill |cRXP_ENEMY_Kobolds|r. Loot them for the |T1379168:0|t[|cRXP_LOOT_Kirin Tor Artifacts|r].
    .complete 83554,1 --15/15 Kirin Tor Artifacts collected
    .mob Candlelit Big-Boomer
    .mob Candlelit Ouchpatcher
    .mob Candlelit Hexthrower
step
    .goto 2248,62.17,40.61
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bag of Stolen Goods|r.
    .complete 83554,2,1 --5/5 Arcane Manuscripts found
step
    .goto 2248,64.31,41.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bag of Stolen Goods|r.
    .complete 83554,2,2 --5/5 Arcane Manuscripts found
step
    .goto 2248,64.37,43.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bag of Stolen Goods|r.
    .complete 83554,2,3 --5/5 Arcane Manuscripts found
step
    .goto 2248,64.42,44.14
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bag of Stolen Goods|r.
    .complete 83554,2,4 --5/5 Arcane Manuscripts found
step
    #label Arcane Manuscripts
    .goto 2248,63.25,45.23
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bag of Stolen Goods|r.
    .complete 83554,2,5 --5/5 Arcane Manuscripts found
step
    #loop
    .goto 2248,64.07,42.53,40,0
    .goto 2248,63.33,41.85,40,0
    .goto 2248,62.64,43.54,40,0
    .goto 2248,62.45,42.58,40,0
    >>Kill |cRXP_ENEMY_Kobolds|r. Loot them for |T1379168:0|t[|cRXP_LOOT_Kirin Tor Artifacts|r].
    .complete 83554,1 --15/15 Kirin Tor Artifacts collected
    .mob Candlelit Big-Boomer
    .mob Candlelit Ouchpatcher
    .mob Candlelit Hexthrower
step
    .goto 2248,61.52,42.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalecgos|r.
    .turnin 83554 >>Turn in Trinkets, Curios and Other Powerful Objects
    .target Kalecgos
    .turnin 83555 >>Turn in Mysterious Necklace
    .accept 83556 >>Accept Maybe You Shouldn't Touch That
step
    .goto 2248,61.52,42.85
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Emerald Necklace|r |cRXP_WARN_In Kalecgos Hands|r.
    .complete 83556,1 --1/1 Emerald Necklace inspected
    .skipgossipid 123192
step
    .isOnQuest 83556
    #completewith PocketDimension
    +|cRXP_WARN_There are no coordinates available in this zone|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalecgos|r.
    .turnin 83556 >>Turn in Maybe You Shouldn't Touch That
    .timer 20,RP
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalecgos|r.
    .accept 83641 >>Accept Trapped Between Life and Death
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Scroll|r |cRXP_WARN_in the center of the platform|r.
    .complete 83641,1 --1/1 Scroll investigated
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Fragmented Souls|r |cRXP_WARN_at the edge of the platform|r.
    .complete 83641,2 --3/3 Fragmented Souls released
    .skipgossipid 123261
    .target Fragmented Soul
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on 3 |cRXP_PICK_Ingredients|r |cRXP_WARN_next to the cauldron|r (Essence of Death, Alchemical Solution, Skull).
    .complete 83641,3 --3/3 Ingredients added to the Cauldron
step
    >>Kill the |cRXP_ENEMY_Disfigured Ghouls|r.
    .complete 83641,4 --3/3 Disfigured Ghoul slain
    .timer 12,RP
    .mob Disfigured Ghoul
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the mirror image of |cRXP_FRIENDLY_Archmage Kel'Thuzad|r.
    .complete 83641,5 --1/1 Speak with the Mirror Image
    .skipgossipid 131340
    .mob Archmage Kel'Thuzad
step
    #label PocketDimension
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Passage Between Dimensions (Portal)|r.
    .complete 83641,6 --1/1 Leave pocket dimension
step
    .goto 2248,61.52,42.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalecgos|r.
    .turnin 83641 >>Turn in Trapped Between Life and Death
    .target Kalecgos
    .accept 83643 >>Accept Somehow We Survived
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kalecgos|r.
    .turnin 83643 >>Turn in Somehow We Survived
    .goto 2248,30.99,57.80
    .target +Kalecgos
]])

-- Fate of the Kirin Tor 2
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP The War Within
#subgroup 11.0.7 Fate of the Kirin Tor (80)
#name b) Strength Amidst Ruins
#displayname |cRXP_WARN_Chapter 2|r - Strength Amidst Ruins
#subweight 5

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r.
    .accept 83723 >>Accept A Helping Hand
    .goto 2248,30.97,57.73
    .target +Lady Jaina Proudmoore
step
    #completewith next
    .goto 2248,31.12,56.66
    .cast 462625 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Unstable Portal|r.
    .target Unstable Portal
step
    .goto 2248,31.7,54.96
    #title Mount Up
    >>|cRXP_WARN_After clicking on the portal run towards the next objective|r.
    .complete 83723,1,1 --3/3 Mages extracted from portals
step
    #completewith next
    .goto 2248,31.7,54.96
    .cast 462625 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Unstable Portal|r.
    .target Unstable Portal
step
    .goto 2248,29.98,54.05
    #title Mount Up
    >>|cRXP_WARN_After clicking on the portal run towards the next objective|r.
    .complete 83723,1,2 --3/3 Mages extracted from portals
step
    #completewith next
    .goto 2248,29.98,54.05
    .cast 462625 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Unstable Portal|r.
    .target Unstable Portal
step
    .goto 2248,29.80,57.83
    #title Mount Up
    >>|cRXP_WARN_After clicking on the portal run towards the next objective|r.
    .complete 83723,1,3 --3/3 Mages extracted from portals
step
    .goto 2248,29.80,57.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r.
    .turnin 83723 >>Turn in A Helping Hand
    .target Lady Jaina Proudmoore
    .accept 83743 >>Accept Arcane Cold War
    .timer 15,RP
step
    .goto 2248,29.68,57.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r.
    .complete 83743,2 --1/1 Portal taken (Optional)
step
    .goto 2274,39.62,75.09
    .complete 83743,1 --1/1 Jaina found in Azj-Kahet
step
    .goto 2255,35.27,53.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r.
    .turnin 83743 >>Turn in Arcane Cold War
    .target Lady Jaina Proudmoore
    .accept 83762 >>Accept Critical Mass
step
    #loop
    .goto 2255,35.38,52.82,20,0
    .goto 2255,35.18,52.02,20,0
    .goto 2255,35.79,51.25,20,0
    .goto 2255,36.03,51.8,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Objects|r that are connected to the mana bomb in the center and kill any |cRXP_ENEMY_enemies|r that emerge.
    *|cRXP_WARN_It's possible that some objects are not connected but still required|r
    .complete 83762,1 --Magical objects disentangled (100%)
    .mob Polymorphed Sheep
step
    .goto 2255,35.59,52.38
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Mana Bomb|r and entangle the connections.
    .complete 83762,2 --1/1 Mana Bomb disarmed
    .timer 5,RP
step
    .goto 2255,35.55,52.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r.
    .turnin 83762 >>Turn in Critical Mass
    .accept 83763 >>Accept Preserve the Legacy
    .accept 83764 >>Accept Too Powerful, Too Dangerous
    .target Lady Jaina Proudmoore
step
    .goto 2255,35.68,52.57
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Wand of Permafrost|r.
    .complete 83764,1,1 --3/3 Dangerous artifacts destroyed
step
    .goto 2255,36.22,52.53
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Thalen Songweaver's Notes|r |cRXP_WARN_in the water|r.
    .complete 83763,3 --1/1 Thalen Songweaver's notes collected
step
    .goto 2255,35.65,51.35
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Antonidas' book|r.
    .complete 83763,1 --1/1 Antonidas' book collected
step
    .goto 2255,35.03,51.22
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Medivh's Karazhan Schematics|r.
    .complete 83763,2 --1/1 Medivh's Schematics collected
step
    .goto 2255,35.31,51.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Staff of a Thousand Meteors|r.
    .complete 83764,1,2 --3/3 Dangerous artifacts destroyed
step
    .goto 2255,35.32,52.54
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Scroll of Permanent Polymorph|r.
    .complete 83764,1,3 --3/3 Dangerous artifacts destroyed
step
    #completewith next
    .goto 2255,57.49,41.63
    .zone 2339 >>Take the Azj-Kahet Portal to Dornogal.
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Jaina Proudmoore|r and |cRXP_FRIENDLY_Archmage Khadgar|r.
    .turnin 83763 >>Turn in Preserve the Legacy
    .turnin 83764 >>Turn in Too Powerful, Too Dangerous
    .goto 2248,31.46,50.96
    .target +Lady Jaina Proudmoore
    .accept 83773 >>Accept Farewell, City of Magic
    .goto 2248,31.45,50.93
    .target +Archmage Khadgar
step
    #loop
    .goto 2248,31.41,51.03,5,0
    .goto 2248,31.63,50.8,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on one of the |cRXP_PICK_Mementos|r on the table and |cRXP_WARN_then on  the correct boat|r. Repeat this 3 times.
    *|cRXP_WARN_Repeat 3times|r.
    .complete 83773,1 --3/3 Mementos placed on boats
step
    .goto 2248,31.47,50.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jaina|r.
    .complete 83773,2 --1/1 Speak with Jaina
    .skipgossipid 123819
    .target Jaina
step
    .goto 2248,31.43,50.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Khadgar|r.
    .turnin 83773 >>Turn in Farewell, City of Magic
    .target Archmage Khadgar
]])

--Horrific Visions
RXPGuides.RegisterGuide([[
#retail
#version 3
#group RestedXP The War Within
#subgroup 11.1.5 (80)
#name a) Horrific Visions
#displayname Horrific Vision Intro
#next a) Nightfall Radiance

step
    .goto 2339,42.51,28.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Researcher Onermu|r
    .accept 86706 >>Accept Seeking Knowledge of the Past
    .target Researcher Onermu
step
    .goto 2339,34.69,68.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soridormi|r
    .turnin 86706 >>Turn in Seeking Knowledge of the Past
    .accept 87328 >>Accept Truly Horrific to Behold
    .target Soridormi
step
    .goto 2339,34.69,68.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soridormi|r
    .complete 87328,1 --1/1 Speak to Soridormi
    .skipgossipid 132133
    .target Soridormi
step
    .goto 2339,34.52,69.71
    >>Shortly, orbs will appear in the sky and descend toward the ground. Jump into them to receive credit.
    .complete 87328,2 --10/10 Collect Horrific Sands of Time
step
    .goto 2339,34.56,68.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soridormi|r
    .turnin 87328 >>Turn in Truly Horrific to Behold
    .accept 87329 >>Accept Into the Darkest Memories
    .target Soridormi
step
    .goto 2339,34.68,68.34
    >>Click on the |cFFDB2EEFPortal|r
    .complete 87329,1 --1/1 Portal to Horrific Visions used
    .skipgossipid 132129
    .skipgossipid 132128
step
    .goto 2403,51.99,83.64
    .wpradius 2403,51.99,83.64,100,0
    .goto 2404,53.25,51.25
    .wpradius 2404,53.25,51.25,100,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_the Image of Wrathion|r
    .complete 87329,2 --1/1 Speak to the Image of Wrathion
    .timer 10,RP
    .skipgossipid 125259
    .target the Image of Wrathion
step
    .zoneskip 2403,1
    .isOnQuest 87329
    .goto 2403,49.86,75.54,10,0
    .goto 2403,49.37,75.07,10,0
    .goto 2403,49.34,74.01,10,0
    .goto 2403,48.45,71.42
    .scenario 1733,1 >>Kill |cRXP_ENEMY_Voidbound Honor Guards|r to open the door to |cRXP_ENEMY_Thrall|r and kill him.
    .mob Thrall
    .mob Voidbound Honor Guard
step
    .zoneskip 2404,1
    .isOnQuest 87329
    .goto 2404,52,54.15,15,0
    .goto 2404,53.53,52.32,15,0
    .goto 2404,52.97,51.12,10,0
    .goto 2404,52.26,50.62,10,0
    .goto 2404,51.72,49.68,10,0
    .goto 2404,51.63,48.56,10,0
    .goto 2404,50.13,45.71
    .scenario 4171,1 >>Kill |cRXP_ENEMY_Fallen Riftwalker|r to open the door to |cRXP_ENEMY_Alleria Windrunner|r and kill her. 
    .mob Alleria Windrunner
    .mob Fallen Riftwalker
step
    .zoneskip 2404,1
    .isOnQuest 87329
    .goto 2404,41.58,34.72
    .cast 3365 >>Click on the |cRXP_PICK_Chest|r
    .complete 87329,3 --100/20 Corrupted Mementos
step
    .isOnQuest 87329
    .zoneskip 2404,1
    +Leave the Horrific Vision (Right-Click your player frame).
step
    .isOnQuest 87329
    .zoneskip 2403,1
    .goto 2403,51.99,85.64
    .cast 3365 >>Click on the |cRXP_PICK_Chest|r
    .complete 87329,3 --100/20 Corrupted Mementos
step
    .isOnQuest 87329
    .zoneskip 2403,1
    +Leave the Horrific Vision (Right-Click your player frame).
step
    .goto 2339,34.57,68.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soridormi|r
    .turnin 87329 >>Turn in Into the Darkest Memories
    .target Soridormi
    .accept 87332 >>Accept A Collection of Variables
step
    .goto 2339,35.21,68.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Augermu|r
    .turnin 87332 >>Turn in A Collection of Variables
    .target Augermu
    .accept 87335 >>Accept Echoing Lessons
step
    .goto 2339,35.24,68.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Augermu|r
    .complete 87335,1 --1/1 Echo of N'Zoth created
    .skipgossipid 132107
    .target Augermu
step
    .goto 2339,35.09,68.34
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Hourglass of Horrific Visions|r and select Orb Operation Manual.
    .complete 87335,2 --1/1 Orb Operation Manual unlocked
    .skipgossipid 132100
step
    .goto 2339,35.19,68.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Augermu|r
    .turnin 87335 >>Turn in Echoing Lessons
    .target Augermu
    .accept 87336 >>Accept Remembering Again and Again
step
    .goto 2339,34.55,68.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soridormi|r
    .turnin 87336 >>Turn in Remembering Again and Again
    .target Soridormi
step
    .goto 2339,35.24,68.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Augermu|r
    .accept 90719 >>Accept Borrowing Corruption
    .target Augermu
step
    .zoneskip 2404
    .goto 2339,34.67,68.29
    .zone 2403 >>Click on the |cRXP_PICK_Portal|r and enter the Vision.
    .skipgossipid 132129
    .skipgossipid 132128
step
    .zoneskip 2403,1
    .goto 2403,52.00,82.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bronze Hourglass|r
    .accept 88803 >>Accept Timely Assistance
    .target Bronze Hourglass
step
    .zoneskip 2404,1
    .goto 2404,53.29,50.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bronze Hourglass|r
    .accept 88803 >>Accept Timely Assistance
    .target Bronze Hourglass
step
    .goto 2404,53.29,50.39
    .wpradius 2404,53.29,50.39,100,0
    .goto 2403,52.00,82.81
    .wpradius 2403,52.00,82.81,100,0
    >>Select DPS,Healer or Tank Role for your companion.
    .complete 88803,1 --1/1 Use the hourglass to summon aid
step
    .zoneskip 2403,1
    .goto 2403,52.00,82.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bronze Hourglass|r
    .turnin 88803 >>Turn in Timely Assistance
    .target Bronze Hourglass
step
    .zoneskip 2404,1
    .goto 2404,53.29,50.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bronze Hourglass|r
    .turnin 88803 >>Turn in Timely Assistance
    .target Bronze Hourglass
step
    >>Kill |cRXP_ENEMY_Bosses|r inside the Horrific Vision and open the crates at the end to loot them for |T3528446:0|t[|cRXP_LOOT_Black Blood Residue|r].
    .complete 90719,1
]])

--Nightfall Radiance
RXPGuides.RegisterGuide([[
#retail
#version 3
#group RestedXP The War Within
#subgroup 11.1.5 (80)
#name a) Nightfall Radiance
#displayname Nightfall Radiance

step
    #include a) DawnBreakerTeleport
step
    .goto 2215,28.26,56.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mylton Wyldbraun|r
    .turnin 85005 >>Turn in A Radiant Call
    .target Mylton Wyldbraun
    .accept 89331 >>Accept Flame Fortification
    .accept 89332 >>Accept Boot Camp
    .accept 89295 >>Accept The Flame Burns Eternal
 step
    .goto 2215,28.26,56.11
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mylton Wyldbraun|r 
    .questcount <3 87477,87475,87480,88711,88916,88945 >> |cRXP_WARN_Pick up the 3 available dailies |r
    .target Mylton Wyldbraun
    -- .accept 87477 >>Accept Sureki Incursion: Southern Swarm
    -- .accept 87475 >>Accept Sureki Incursion: Hold the Wall
    -- .accept 87480 >>Accept Sureki Incursion: The Eastern Assault
    -- .accept 88711 >>Accept Radiant Incursion: Toxins and Pheromones
    -- .accept 88916 >>Accept Radiant Incursion: Sureki's End
    -- .accept 88945 >>Accept Radiant Incursion: Rak-Zakaz
step
    .goto 2215,28.29,56.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lars Bronsmaelt|r
    .accept 89493 >>Accept Welcome to the Field
    .turnin 89493 >>Turn in Welcome to the Field
    .target Lars Bronsmaelt
step
    .isOnQuest 88711
    .goto 2215,26.48,55.11,40,0
    #completewith Radiant Incursion: Toxins and Pheromones
    >>Check your map to see if the Nightfall event is active. If it is, complete it now; if not, do it later.
    .complete 89295,1 --Complete the scenario "Nightfall"
    .complete 89331,1 --Complete the scenario "Nightfall"
step
    .isOnQuest 
    .goto 2215,26.48,55.11,40,0
    #completewith Sureki Incursion: The Eastern Assault
    >>Check your map to see if the Nightfall event is active. If it is, complete it now; if not, do it later.
    .complete 89295,1 --Complete the scenario "Nightfall"
    .complete 89331,1 --Complete the scenario "Nightfall"
-----------------------------------------------------
--- DAILLIES BATCH 1
-----------------------------------------------------
step
    .isOnQuest 88916
    .goto 2274,48.6,57.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sacred Alchemist|r
    .complete 88916,1 --1/1 Field Elixir taken (Optional)
    .skipgossipid 132981
    .target Sacred Alchemist
step
    .isOnQuest 88916
    #loop
    .goto 2255,63.1,0.87,40,0
    .goto 2255,63.77,5.57,40,0
    .goto 2255,64.24,6.33,40,0
    .goto 2255,64.39,8.27,40,0
    .goto 2255,64.37,10.76,40,0
    .goto 2255,64.74,14.76,40,0
    .goto 2255,66.34,13.43,40,0
    .goto 2255,65.25,6.91,40,0
    >>Kill |cRXP_ENEMY_Sureki Forces|r and click on the nearby |cRXP_PICK_Objects|r.
    .complete 88916,2 --Sureki Forces disrupted (100%)
    .mob Toxic Swarmite
    .mob Battlefront Hauler
    .mob Stagshell Mite
    .mob Skitterling Soldier
    .mob Sureki Raider
    .mob Nerubian Ballista
    .mob Crimson Deathweaver
    .mob Sureki Priestess
step
    #loop
    .goto 2255,64.76,21.1,40,0
    .goto 2255,63.91,27.14,40,0
    .goto 2255,63.83,30.4,40,0
    .goto 2255,62.39,30.92,40,0
    .goto 2255,60.62,28.25,40,0
    .isOnQuest 88945
    >>Kill |cRXP_ENEMY_Sureki Forces|r
    .complete 88945,1 --Sureki Sympathizers disrupted (100%)
step
    .isQuestComplete 88916
    .isQuestComplete 88945
    .goto 2255,60.65,18.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ysabel Gleamgaard|r
    .dailyturnin 88916 >>Turn in Radiant Incursion: Sureki's End
    .dailyturnin 88945 >>Turn in Radiant Incursion: Rak-Zakaz
    .target Ysabel Gleamgaard
step
    .isOnQuest 88711
    .goto 2255,65.33,49.67,40,0
    .goto 2255,66.34,53.89,40,0
    .goto 2255,68.72,54.3,40,0
    .goto 2255,69.9,56.17,40,0
    .goto 2255,66.52,55.31,40,0
    >>Kill |cRXP_ENEMY_Sureki Forces|r and click on the nearby |cRXP_PICK_Objects|r.
    .complete 88711,1 --Sureki forces disrupted (100%)
step
    #label Radiant Incursion: Toxins and Pheromones
    .isQuestComplete 88711
    .goto 2255,65.98,59.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lamplighter Kaerter|r
    .dailyturnin 88711 >>Turn in Radiant Incursion: Toxins and Pheromones
    .target Lamplighter Kaerter
step
    .isQuestComplete 88711
    #include a) DawnBreakerTeleport
-----------------------------------------------------
--- DAILLIES BATCH 2
-----------------------------------------------------
step
    #loop
    .isOnQuest 87475
    .goto 2215,40.13,58.29,30,0
    .goto 2215,41.29,59.47,30,0
    .goto 2215,40.61,61.16,30,0
    >>Kill |cRXP_ENEMY_Sureki Forces|r and click on the nearby |cRXP_PICK_Objects|r.
    .complete 87475,1 --Sureki forces repelled (100%)
    .mob Sureki Ballista
    .mob Sureki Marauder
    .mob Sureki Battle Drone
    .mob Sureki Siegelord
step
    .isQuestComplete 87475
    .goto 2215,40.59,57.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auralia Steelstrike|r
    .turnin 87475 >>Turn in Sureki Incursion: Hold the Wall
    .target Auralia Steelstrike
step
    .isOnQuest 87477
    #loop
    .goto 2215,47.5,68.2,30,0
    .goto 2215,48.06,69.2,30,0
    .goto 2215,51.2,65.38,30,0
    .goto 2215,51.49,70.75,30,0
    >>Kill |cRXP_ENEMY_Sureki Forces|r and click on the nearby |cRXP_PICK_Objects|r.
    .complete 87477,1 --Sureki swarm thwarted (100%)
    .mob Sureki Ballista
    .mob Sureki Marauder
    .mob Sureki Battle Drone
    .mob Sureki Siegelord
step
    .isQuestComplete 87477
    .goto 2215,52.00,66.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meradyth Lacke|r
    .turnin 87477 >>Turn in Sureki Incursion: Southern Swarm
    .target Meradyth Lacke
step
    .isOnQuest 87480
    #loop
    .goto 2215,71.76,45.59,30,0
    .goto 2215,72.06,46.62,30,0
    .goto 2215,72.78,47.01,30,0
    .goto 2215,73.61,45.84,30,0
    .goto 2215,74.6,45,30,0
    .goto 2215,75.86,45.18,30,0
    .goto 2215,75.66,43.38,30,0
    .goto 2215,73.09,43.06,30,0
    .goto 2215,71.5,42.9,30,0
    >>Kill |cRXP_ENEMY_Sureki Forces|r and click on the nearby |cRXP_PICK_Objects|r.
    .complete 87480,1 --Sureki invasion disrupted (100%)
step
    .isQuestComplete 87480
    #label Sureki Incursion: The Eastern Assault
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Izaeh Strongiron|r on a platform high above.
    .turnin 87480 >>Turn in Sureki Incursion: The Eastern Assault
    .target Izaeh Strongiron
step
    .goto 2215,26.48,55.11
    >>Check your map to see if the Nightfall event is active. If it is, complete it now; if not, wait for it to become active.
    .complete 89295,1 --Complete the scenario "Nightfall"
    .complete 89331,1 --Complete the scenario "Nightfall"
step
    .goto 2215,28.26,56.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mylton Wyldbraun|r
    .turnin 89332 >>Turn in Boot Camp
    .turnin 89295 >>Turn in The Flame Burns Eternal
    .turnin 89331 >>Turn in Flame Fortification
    .target Mylton Wyldbraun
]])

--DawnBreakerTeleport
RXPGuides.RegisterGuide([[
#retail
#version 3
#group RestedXP The War Within
#name a) DawnBreakerTeleport
#internal

step
    >>Open the Adventure Guide (default: Shift + J), navigate to Suggested Content, and look for the quest Nightfall Radiance. Accept it.
    .accept 85005 >>Accept A Radiant Call
step
    .zoneskip 2215
    .zone 2359 >>Open the Dungeon Finder, navigate to Follower Dungeons, and queue for |cRXP_WARN_'The Dawnbreaker'|r.
step
    .zoneskip 2215
    .gossipoption 124142 >>Talk to |cRXP_FRIENDLY_General Steelstrike|r inside Dawnbreaker. |cRXP_WARN_She should be visible from the entrance. Use the Active Targets frame to mark her.|r
    .target General Steelstrik
]])
