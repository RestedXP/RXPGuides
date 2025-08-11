--Max Level Campaign

RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within Campaigns
#subgroup |cFFFCDC00(80)|r 11.0 Campaign
#subweight 1000
#name a) Against the Current
#displayname |cFF00CCFF1|r - Against the Current
#next ab) Ties That Bird

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
#retail
#version 1
#group RestedXP War Within Campaigns
#subgroup |cFFFCDC00(80)|r 11.0 Campaign
#name ab) Ties That Bird
#displayname |cFF00CCFF2|r - Ties That Bird
#next ac) News from Below

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
#retail
#version 1
#group RestedXP War Within Campaigns
#subgroup |cFFFCDC00(80)|r 11.0 Campaign
#name ac) News from Below
#displayname |cFF00CCFF3|r - News from Below
#next ad) The Machines to War


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
#retail
#version 1
#group RestedXP War Within Campaigns
#subgroup |cFFFCDC00(80)|r 11.0 Campaign
#name ad) The Machines to War
#displayname |cFF00CCFF4|r - The Machines to War
#next ae) A Light in the Dark


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
#retail
#version 1
#group RestedXP War Within Campaigns
#subgroup |cFFFCDC00(80)|r 11.0 Campaign
#name ae) A Light in the Dark
#displayname |cFF00CCFF5|r - A Light in the Dark
#next af) Lingering Shadows


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

RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within Campaigns
#subgroup |cFFFCDC00(80)|r 11.0 Campaign
#name af) Lingering Shadows
#displayname |cFF00CCFF6|r - Lingering Shadows
#next ag) Siren Isle Campaign

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
