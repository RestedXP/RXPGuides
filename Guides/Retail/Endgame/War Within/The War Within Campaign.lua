--Nesting
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within
#subgroup |cFFFCDC00(80)|r Campaigns
#name a) 11.0: War Within
#displayname 11.0: War Within
#chapters a) Against the Current;a) Ties That Bird;a) News from Below;a) The Machines to War;a) A Light in the Dark;a) Lingering Shadows



]])

--Against the Current
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within
#name a) Against the Current
#displayname |cFF00CCFF1|r - Against the Current
#next a) Ties That Bird
#chapter

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
--Ties That Bird
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within
#name a) Ties That Bird
#displayname |cFF00CCFF2|r - Ties That Bird
#next a) News from Below
#chapter

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
--News from Below
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within
#name a) News from Below
#displayname |cFF00CCFF3|r - News from Below
#next a) The Machines to War
#chapter

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
--The Machines to War
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within
#name a) The Machines to War
#displayname |cFF00CCFF4|r - The Machines to War
#next a) A Light in the Dark
#chapter

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
--A Light in the Dark
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within
#name a) A Light in the Dark
#displayname |cFF00CCFF5|r - A Light in the Dark
#next a) Lingering Shadows
#chapter

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
--Lingering Shadows
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within
#name a) Lingering Shadows
#displayname |cFF00CCFF6|r - Lingering Shadows
#next a) Siren Isle Campaign
#chapter

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

--Nesting
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within
#subgroup |cFFFCDC00(80)|r Campaigns
#name ab) 11.0.7: Siren Isle
#displayname 11.0.7: Siren Isle
#chapters a) Siren Isle Campaign;a) Siren Isle Weeklies



]])

--Siren Isle Campaign
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within
#name a) Siren Isle Campaign
#displayname |cFF00CCFF1|r - A Song of Secrets
#next a) Chapter 1 - Trust Issues
#chapter

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
--Siren Isle Dailies/Weeklies?
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within
#name a) Siren Isle Weeklies
#displayname |cFF00CCFF2|r - Weeklies
#chapter

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

--Nesting
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within
#subgroup |cFFFCDC00(80)|r Campaigns
#name ac) 11.1: Undermined
#displayname 11.1: Undermined
#chapters a) Trust Issues;a) Undermine Awaits;a) Uncovering the Truth;a) Breaking the Shackles;a) Ignite the Fuel of Change;a) Homecoming




]])

--Trust Issues
RXPGuides.RegisterGuide([[
#retail
#version 3
#group RestedXP War Within
#name a) Trust Issues
#displayname |cFF00CCFF1|r - Trust Issues
#next a) Undermine Awaits
#chapter

-----------------------------------------------------
--- START CHAPTER 1
-----------------------------------------------------

step
    .zone 2339 >>Enter Dornogal
step
    .goto 2339,52.61,50.14
    .achievement 40900,6 
    .zone 2346 >>Enter Undermine by taking the portal.
step
    .isQuestAvailable 86417
    #completewith next
    #label skip the campaign
    .goto 2346,27.1,53.07,5,0
    .goto 2346,37.48,50.94,10,0
    .goto 2346,42.64,52,10,0
    .goto 2346,43.53,51.7
    .achievement 40900,6
    .gossipoption 132243 >>Talk to |cRXP_FRIENDLY_Paks Topskimmer|r to skip the campaign.
    *|cRXP_WARN_This is for skipping the campaign. If you want to playthrough the campaign, manually skip this step|r.
    .target Paks Topskimmer
step
    #hidewindow
    #completewith skip the campaign
    .goto 2346,43.53,51.7,60 >>1
step
    #requires skip the campaign
    .isQuestAvailable 86417
    .goto 2346,43.53,51.7
    .achievement 40900,6
    .gossipoption 132243 >>Talk to |cRXP_FRIENDLY_Paks Topskimmer|r to skip the campaign |cRXP_WARN_until Chapter 6|r.
    *|cRXP_WARN_This is for skipping the campaign. If you want to playthrough the campaign, manually skip this step|r.
    .target Paks Topskimmer
step
    .isQuestTurnedIn 86417
    +If you want to do Chapter 6; Switch to Chapter 6 Guide.
    *|cRXP_WARN_This is for skipping the campaign. If you want to playthrough the campaign, manually skip this step|r.
-- step
--     .isQuestTurnedIn 86417
--     .goto 2346,43.61,51.09
--     .achievement 40900,6
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r.
--     .accept 86204 >>Accept Liberation of Undermine: The House Loses
--     .target Monte Gazlowe
-- step
--     .isQuestTurnedIn 86417
--     #completewith next
--     #label Chrome King Gallywix
--     .achievement 40900,6
--     >>Kill |cRXP_ENEMY_Chrome King Gallywix|r inside the Liberation of Undermine raid.
--     .complete 86204,2 --1/1 Chrome King Gallywix defeated
-- step
--     .isQuestTurnedIn 86417
--     #completewith Chrome King Gallywix
--     .goto 2346,43.51,51.7
--     .achievement 40900,6
--     -- .gossipoption 131582 >>Talk to |cRXP_FRIENDLY_|r
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Paks Topskimmer|r
--     .complete 86204,1 --1/1 Chrome King Gallywix defeated
--     .skipgossipid 131582
--     .target Paks Topskimmer
-- step
--     .isQuestTurnedIn 86417
--     #requires Chrome King Gallywix
--     .achievement 40900,6
--     >>Kill |cRXP_ENEMY_Chrome King Gallywix|r inside the Liberation of Undermine raid.
--     .complete 86204,2 --1/1 Chrome King Gallywix defeated
-- step
--     .isQuestTurnedIn 86417
--     .zoneskip 2409,1
--     .achievement 40900,6
--     +Leave the Raid (Right-Click your player frame) or use the npc near gallywix.
-- step
--     .isQuestTurnedIn 86417
--     #completewith next
--     #label LiberationOfThingsLeft
--     .achievement 40900,6
--     *|cRXP_WARN_Leave the Raid (Right-Click your player frame; storymode) or hearthstone.|r
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
--     .turnin 86204 >>Turn in Liberation of Undermine: The House Loses
--     .accept 87321 >>Accept Things Left Undone
--     .target Marin Noggenfogger
-- step
--     .isQuestTurnedIn 86417
--     #completewith LiberationOfThingsLeft
--     #title |cFFFCDC00Enter the laboratory|r
--     .goto 2346,29.00,69.66,5 >>Enter the laboratory
--     .achievement 40900,6
-- step
--     .isQuestTurnedIn 86417
--     #requires LiberationOfThingsLeft
--     .goto 2346,27.37,70.97
--     .achievement 40900,6
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r.
--     .turnin 86204 >>Turn in Liberation of Undermine: The House Loses
--     .accept 87321 >>Accept Things Left Undone
--     .target Marin Noggenfogger
-- step
--     .goto 2339,42.22,26.97
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renzik "The Shiv"|r in Dornogal.
--     .accept 83137 >>Accept When Opportunity Explodes
--     .target Renzik "The Shiv"
-- step
--     .zoneskip 2214
--     .isQuestTurnedIn 78546
--     .goto 2248,37.60,72.64
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Oathsworn Earthen|r.
--     .turnin 84220 >>Accept & Turn in Passage to the Ringing Deeps
--     .target Oathsworn Earthen
step
    .isQuestTurnedIn 84220
    #label WhenOpportunityExplodes
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r.
    .turnin 83137 >>Turn in When Opportunity Explodes
    .accept 83139 >>Accept Mixed Messages
    .target Monte Gazlowe
step
    .isQuestTurnedIn 84220
    #completewith WhenOpportunityExplodes
    .goto 2248,37.40,72.88
    .zone 2214 >>Click on the |cRXP_PICK_Elevator Lever|r.
step
    .isOnQuest 83137
    .isQuestAvailable 84220
    .goto 2339,63.61,52.69
    #title Portal to Azj-Kahet
    .zone 2255 >>Go through the Portal to Azj-Kahet
step
    #title |cFFFCDC00Fly to The Ringing Deeps|r
    .isOnQuest 83137
    .isQuestAvailable 84220
    .goto 2255,59.23,42.38,40,0
    .goto 2255,65.48,21.53,70,0
    .goto 2214,49.32,67.56,40,0
    *|cRXP_WARN_Fly through the slipstream|r.
    .zone 2214 >>Follow the arrow to The Ringing Deeps
step
    #requires WhenOpportunityExplodes
    .goto 2214,63,78.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r.
    .turnin 83137 >>Turn in When Opportunity Explodes
    .accept 83139 >>Accept Mixed Messages
    .target Monte Gazlowe
step
    .goto 2214,63.05,78.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tollbooth Entrepreneur|r.
    .complete 83139,1 --1/1 Speak to Tollbooth Entrepreneur
    .target Tollbooth Entrepreneur
    .skipgossipid 124980
step
    #title |cFFFCDC00Follow the arrow|r
    .goto 2214,65.8,75.3
    .complete 83139,2 --Locate Mining Camp
step
    #loop
    .goto 2214,65.8,75.3,10,0
    .goto 2214,65.97,75.25,10,0
    .goto 2214,65.98,75.6,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trella|r, |cRXP_FRIENDLY_Ishqikle|r, and |cRXP_FRIENDLY_Aberee|r.
    .complete 83139,3 --3/3 Investigate mining operation
    .skipgossipid 123393
    .skipgossipid 123394
    .skipgossipid 123395
    .skipgossipid 123396
    .skipgossipid 123397
    .skipgossipid 123398
    .target Trella
    .target Ishqikle
    .target Aberee
step
    .goto 2214,65.92,75.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83139 >>Turn in Mixed Messages
    .accept 83140 >>Accept Hostile Work Environment
    .target Monte Gazlowe
step
    .goto 2214,65.87,75.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orweyna|r
    .accept 83141 >>Accept Miner Investigations
    .target Orweyna
step
    #completewith WorkerTimecard
    >>Kill |cRXP_ENEMY_Darkfuse Managers|r, |cRXP_ENEMY_Darkfuse Muscles|r, and |cRXP_ENEMY_Compliance Enforcer|r. Loot them for the |T133468:0|t[|cRXP_LOOT_Bounty from Gallywix|r].
    .complete 83140,2 --5/5 Darkfuse Manager slain
    .mob +Darkfuse Manager
    .complete 83140,1 --5/5 Darkfuse Muscle slain
    .mob +Darkfuse Muscle
    .complete 83140,3 --2/2 Compliance Enforcer slain
    .mob +Compliance Enforcer
    .collect 224772,1,83142,0
    .accept 83142 >>Accept Order of Magnitude
step
    .goto 2214,70.83,76.79
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Suspicious Canister|r.
    .complete 83141,1 --1/1 Suspicious Canister
step
    .goto 2214,72.13,73.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zirdo|r.
    .complete 83141,2 --1/1 Ask about shipments
    .skipgossipid 124999
step
    #label WorkerTimecard
    .goto 2214,72.15,78.62
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Worker Timecard|r.
    .complete 83141,3 --1/1 Worker Timecard inspected
step
    #loop
    .goto 2214,74.04,76.81,40,0
    .goto 2214,72.62,75.75,40,0
    .goto 2214,72.21,74.39,40,0
    .goto 2214,71.83,72.66,40,0
    .goto 2214,69.75,75.99,40,0
    .goto 2214,72.04,77.36,40,0
    >>Kill |cRXP_ENEMY_Darkfuse Managers|r, |cRXP_ENEMY_Darkfuse Muscles|r, and |cRXP_ENEMY_Compliance Enforcer|r. Loot them for the |T133468:0|t[|cRXP_LOOT_Bounty from Gallywix|r].
    .complete 83140,2 --5/5 Darkfuse Manager slain
    .mob +Darkfuse Manager
    .complete 83140,1 --5/5 Darkfuse Muscle slain
    .mob +Darkfuse Muscle
    .complete 83140,3 --2/2 Compliance Enforcer slain
    .mob +Compliance Enforcer
    .collect 224772,1,83142,0
    .accept 83142 >>Accept Order of Magnitude
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orweyna|r and |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83141 >>Turn in Miner Investigations
    .goto 2214,72.56,79.33
    .target +Orweyna
    .turnin 83140 >>Turn in Hostile Work Environment
    .turnin 83142 >>Turn in Order of Magnitude
    .goto 2214,72.53,79.24
    .target +Monte Gazlowe
step
    .goto 2214,72.54,79.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zirdo|r.
    .accept 83143 >>Accept Good Honest Work
    .target Zirdo
step
    #hidewindow
    #completewith next
    .gossipoption 123518 >>Talk to |cRXP_FRIENDLY_Zirdo|r.
    .timer 17,Roleplay
step
    .goto 2214,72.54,79.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zirdo|r.
    .complete 83143,1 --1/1 Begin the tour
    .target Zirdo
    .skipgossipid 123518
step
    #title Follow the arrow
    .goto 2214,72.27,80.17
    >>|cRXP_WARN_Wait at the waypoint for the roleplay|r
    .complete 83143,2 --1/1 Follow Zirdo's tour
step
    .goto 2214,72.25,80.17
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Extractor Drill X-78|r.
    .complete 83143,3 --1/1 Extractor Drill X-78 tested
    .timer 27,Roleplay
    .mob Extractor Drill X-78
step
    .goto 2214,72.22,80.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zirdo|r |cRXP_WARN_after the roleplay|r.
    .complete 83143,4 --1/1 Continue Zirdo's tour
    .target Zirdo
    .skipgossipid 125018
step
    .goto 2214,71.87,80.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orweyna|r
    .turnin 83143 >>Turn in Good Honest Work
    .accept 83144 >>Accept Bloodletting
    .target Orweyna
step
    #completewith PipelineValves
    >>Kill |cRXP_ENEMY_Giant Gorewalker|r and |cRXP_ENEMY_Forming Pusglob|r
    .complete 83144,2 --2/2 Giant Gorewalker slain
    .mob +Giant Gorewalker
    .complete 83144,1 --6/6 Forming Pusglob slain
    .mob +Forming Pusglob
step
    #title Pipeline Valve (1/4)
    .goto 2214,70.15,81.76
    >>Use the |T132106:0|t[|cRXP_WARN_ExtraActionButton]|r and aim it at the valve.
    .complete 83144,3,1 --1/4 Target attack on Pipeline Valve
step
    #title Pipeline Valve (2/4)
    .goto 2214,69.9,82.33
    >>Use the |T132106:0|t[|cRXP_WARN_ExtraActionButton]|r and aim it at the valve.
    .complete 83144,3,2 --2/4 Target attack on Pipeline Valve
step
    #title Pipeline Valve (3/4)
    .goto 2214,69.18,82.85
    >>Use the |T132106:0|t[|cRXP_WARN_ExtraActionButton]|r and aim it at the valve.
    .complete 83144,3,3 --3/4 Target attack on Pipeline Valve
step
    #label PipelineValves
    #title Pipeline Valve (4/4)
    .goto 2214,69.53,84.25
    >>Use the |T132106:0|t[|cRXP_WARN_ExtraActionButton]|r and aim it at the valve.
    .complete 83144,3 --4/4 Target attack on Pipeline Valve
    .timer 15,Roleplay
step
    #loop
    .goto 2214,70.93,82.88,45,0
    .goto 2214,70.31,81.12,45,0
    .goto 2214,68.07,83.52,45,0
    .goto 2214,69.95,85.88,45,0
    >>Kill |cRXP_ENEMY_Giant Gorewalker|r and |cRXP_ENEMY_Forming Pusglob|r
    .complete 83144,2 --2/2 Giant Gorewalker slain
    .mob +Giant Gorewalker
    .complete 83144,1 --6/6 Forming Pusglob slain
    .mob +Forming Pusglob
step
    .goto 2214,69.55,84.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orweyna|r
    .turnin 83144 >>Turn in Bloodletting
    .target Orweyna
step
    .goto 2214,69.55,84.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamsy|r
    .accept 84683 >>Accept Into the Gutter
    .target Pamsy
step
    .goto 2214,71.47,83.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamsy|r
    .turnin 84683 >>Turn in Into the Gutter
    .accept 85409 >>Accept Snitches Get Stitches
    .target Pamsy
step
    .goto 2214,71.42,83.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .accept 83145 >>Accept Paranoia Prevention
    .target Monte Gazlowe
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greedy Turncoat|r. 
    >>Afterwards kill the hostile |cRXP_ENEMY_Greedy Turncoat|r
    .complete 85409,1 --6/6 Greedy Turncoat slain
    .mob Greedy Turncoat
    .skipgossipid 132096
step
    .goto 2214,71.88,84.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeble|r
    .complete 83145,1 --1/1 Speak with Keeble
    .target Keeble
    .skipgossipid 124904
step
    #loop
    .goto 2214,72.01,82.72,15,0
    .goto 2214,71.03,83.67,15,0
    .goto 2214,70.54,84.97,20,0
    .goto 2214,71.32,84.04,20,0
    .goto 2214,72.02,84.25,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greedy Turncoat|r. 
    >>Afterwards kill the hostile |cRXP_ENEMY_Greedy Turncoat|r
    .complete 85409,1 --6/6 Greedy Turncoat slain
    .mob Greedy Turncoat
    .skipgossipid 132096
step
    #completewith next
    #label SpeakBinni
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Conspiracy Theory" Binni|r
    .complete 83145,2 --1/1 Speak with "Conspiracy Theory" Binni
    .timer 15,Roleplay
    .target "Conspiracy Theory" Binni
    .skipgossipid 124901
    .skipgossipid 124900
step
    #completewith SpeakBinni
    #title |cFFFCDC00Enter Cave|r
    .goto 2214,72.24,82.42,10 >>Enter the cave
step
    #requires SpeakBinni
    .goto 2214,72.34,82.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Conspiracy Theory" Binni|r
    .complete 83145,2 --1/1 Speak with "Conspiracy Theory" Binni
    .timer 14,Roleplay
    .target "Conspiracy Theory" Binni
    .skipgossipid 124900
    .skipgossipid 124901
step
    .goto 2214,72.21,82.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Extractor Drill X-71|r |cRXP_WARN_after the roleplay|r.
    .complete 83145,3 --1/1 Stop the drill
    .timer 4,Roleplay
    .mob Extractor Drill X-71
step
    .goto 2214,72.3,82.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamsy|r.
    .turnin 83145 >>Turn in Paranoia Prevention
    .turnin 85409 >>Turn in Snitches Get Stitches
    .accept 83146 >>Accept Pamsy's Prized Pump
    .target Pamsy
step
    #completewith next
    #title |cFFFCDC00Leave Cave|r
    .goto 2214,71.98,82.96,15 >>Leave the cave
step
    .goto 2214,70.58,88.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamsy|r.
    .turnin 83146 >>Turn in Pamsy's Prized Pump
    .accept 85444 >>Accept Found Family
step
    .goto 2214,70.58,88.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orweyna|r.
    .accept 83147 >>Accept Bloody Business
    .target Orweyna
step
    #completewith FoundFamily
    >>Kill |cRXP_ENEMY_Engorged Bloodticks|r, |cRXP_ENEMY_Enveloping Bloodeater|r, |cRXP_ENEMY_Guttergorger|r, and |cRXP_ENEMY_Bloated Abcesses|r
    .complete 83147,1 --Kill Blood Monstrosities (100%)
    .mob Bloated Abcess
    .mob Guttergorger
    .mob Enveloping Bloodeater
step
    .goto 2214,68.7,90.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keets|r.
    .complete 85444,2 --1/1 Keets saved
    .target Keets
    .skipgossipid 124963
step
    .goto 2214,70.25,92.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razi|r.
    .complete 85444,1 --1/1 Razi saved
    .target Razi
    .skipgossipid 124964
step
    #label FoundFamily
    #loop
    .goto 2214,71.46,94.75,15,0
    .goto 2214,71.55,95.38,15,0
    .goto 2214,71,95.04,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Glizza|r.
    .complete 85444,3 --1/1 Glizza saved
    .target Glizza
    .skipgossipid 124962
step
    #loop
    .goto 2214,72.85,94.8,40,0
    .goto 2214,73.63,93.52,40,0
    .goto 2214,72.98,91.92,40,0
    .goto 2214,71.59,91.8,40,0
    .goto 2214,70.2,91.66,40,0
    .goto 2214,69.11,89.47,40,0
    .goto 2214,69.61,87.1,40,0
    .goto 2214,70.85,87.13,40,0
    .goto 2214,68.13,91.25,40,0
    .goto 2214,68.88,94.81,40,0
    .goto 2214,69.87,98.01,40,0
    .goto 2214,71.88,96.5,40,0
    >>Kill |cRXP_ENEMY_Engorged Bloodticks|r, |cRXP_ENEMY_Enveloping Bloodeater|r, |cRXP_ENEMY_Guttergorger|r, and |cRXP_ENEMY_Bloated Abcesses|r
    .complete 83147,1 --Kill Blood Monstrosities (100%)
    .mob Bloated Abcess
    .mob Guttergorger
    .mob Enveloping Bloodeater
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orweyna|r and |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83147 >>Turn in Bloody Business
    .goto 2214,70.58,88.69
    .target +Orweyna
    .turnin 85444 >>Turn in Found Family
    .accept 83148 >>Accept X-Treme Chill
    .timer 6,Roleplay
    .goto 2214,70.53,88.75
    .target +Monte Gazlowe
step
    .goto 2214,70.5,88.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renzik "The Shiv"|r.
    .accept 83149 >>Accept Avenge Them
    .target Renzik "The Shiv"
step
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Chillburst Canister|r.
    >>Kill |cRXP_ENEMY_Chillgut Slimes|r. Loot them for the |T237030:0|t[|cRXP_LOOT_Chillburst Canister|r].
    .complete 83148,1 --12/12 Chillburst Canister
    .mob Chillgut Slime
step
    #loop
    .goto 2214,72.53,97.05,6,0
    .goto 2214,72.36,97.41,6,0
    >>Kill |cRXP_ENEMY_Gozzic Cogcrane|r. Loot him for the |T237245:0|t[|cRXP_LOOT_Correspondence from Zirdo|r].
    .complete 83149,1 --1/1 Gozzic Cogcrane slain
    .complete 83149,2 --1/1 Correspondence from Zirdo
    .mob Gozzic's Bloody Shredder
    .mob Gozzic Cogcrane
step
    #loop
    .goto 2214,73.02,97.31,40,0
    .goto 2214,73.72,97,40,0
    .goto 2214,73.31,95.61,40,0
    .goto 2214,73.53,94.25,40,0
    .goto 2214,72.59,93.02,40,0
    .goto 2214,72.35,96.05,40,0
    .goto 2214,71.59,97.48,40,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Chillburst Canister|r.
    >>Kill |cRXP_ENEMY_Chillgut Slimes|r. Loot them for the |T237030:0|t[|cRXP_LOOT_Chillburst Canister|r].
    .complete 83148,1 --12/12 Chillburst Canister
    .mob Chillgut Slime
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renzik "The Shiv"|r and |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83149 >>Turn in Avenge Them
    .goto 2214,70.5,88.77
    .target +Renzik "The Shiv"
    .turnin 83148 >>Turn in X-Treme Chill
    .accept 83150 >>Accept Expanding the Plan
    .goto 2214,70.53,88.75
    .target +Monte Gazlowe
step
    .goto 2214,70.33,89.56
    >>|Tinterface/cursor/crosshair/driver.blp:20|tClick on |cRXP_PICK_Pamsy's Rocketboard|r
    .complete 83150,1 --1/1 Ride Pamsy's Rocketboard
    .target Pamsy's Rocketboard
step
    #loop
    .goto 2214,71.27,90.7,40,0
    .goto 2214,71.76,88.95,40,0
    .goto 2214,70.92,87.97,40,0
    .goto 2214,70.49,86.21,40,0
    .goto 2214,70.01,84.5,40,0
    .goto 2214,70.09,82.97,40,0
    .goto 2214,70.98,82.18,40,0
    .goto 2214,71.05,79.74,40,0
    .goto 2214,71.11,77.01,40,0
    .goto 2214,70.13,77.2,40,0
    .goto 2214,70.4,80.63,40,0
    .goto 2214,69.49,81.94,40,0
    .goto 2214,68.66,83.45,40,0
    .goto 2214,69.56,85.64,40,0
    .goto 2214,70.21,87.21,40,0
    >>Use |T429385:0|t[Chillburst Toss] (1) and aim it at the green arrows
    .complete 83150,2 --12/12 Freeze the pipes
step
    .goto 2214,74.28,82.87
    .complete 83150,3 --Return to Gazlowe
step
    .goto 2214,70.35,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r.
    .turnin 83150 >>Turn in Expanding the Plan
    .target Monte Gazlowe
step
    .goto 2214,70.29,89.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renzik "The Shiv"|r.
    .accept 85410 >>Accept Undermine's Long Shadow
    .target Renzik "The Shiv"
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keets|r, |cRXP_FRIENDLY_Glizza|r, and |cRXP_FRIENDLY_Razi|r.
    .complete 85410,2 --1/1 Speak to Keets
    .target +Keets
    .goto 2214,70.35,89.51,-1
    .complete 85410,3 --1/1 Speak to Glizza
    .target +Glizza
    .goto 2214,70.38,89.09,-1
    .complete 85410,1 --1/1 Speak to Razi
    .target +Razi
    .goto 2214,70.19,89.51,-1
    .skipgossipid 124928
    .skipgossipid 124929
    .skipgossipid 124930
step
    .goto 2214,70.29,89.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renzik "The Shiv"|r.
    .turnin 85410 >>Turn in Undermine's Long Shadow
    .accept 83151 >>Accept Down Undermine
    .target Renzik "The Shiv"
step
    .goto 2214,70.36,89.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r.
    .complete 83151,1 --1/1 Speak to Gazlowe
    .target Monte Gazlowe
    .skipgossipid 123805
step
    #completewith next
    .goto 2214,70.33,89.59,0,0
    >>|Tinterface/cursor/crosshair/driver.blp:20|tClick on |cRXP_PICK_Pamsy's Rocketboard|r |cRXP_WARN_(Optional)|r
    .complete 83151,2 --1/1 Ride Pamsy's Rocketboard (Optional)
    .timer 20,RP
    .target Pamsy's Rocketboard
step
    .goto 2214,72.96,73.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stelliya|r.
    .complete 83151,3 --1/1 Rocket Drill used
    .target Stelliya
    .skipgossipid 123817
step
    .goto 2346,24.11,51.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r.
    .turnin 83151 >>Turn in Down Undermine
    .target Monte Gazlowe

-----------------------------------------------------
--- END CHAPTER 1
-----------------------------------------------------
]])
--Undermine Awaits
RXPGuides.RegisterGuide([[
#retail
#version 3
#group RestedXP War Within
#name a) Undermine Awaits
#displayname |cFF00CCFF2|r - Undermine Awaits
#next a) Uncovering the Truth
#chapter

-----------------------------------------------------
--- START CHAPTER 2
-----------------------------------------------------
step
    .goto 2346,24.15,51.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimla Fizzlecrank|r
    .accept 83096 >>Accept Welcome to Undermine
    .target Grimla Fizzlecrank
step
    #completewith next
    .goto 2346,24.25,51.56
    .vehicle >>|Tinterface/cursor/crosshair/driver.blp:20|tClick on the |cRXP_PICK_Gramps|r
    .timer 28,RP
step
    .goto 2346,39.65,53.29
    >>|cRXP_WARN_Wait for the roleplay.|r
    .complete 83096,1 --1/1 Ride the hot rod
    .target Gramps
step
    .goto 2346,42.90,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaydee Racketring|r
    .complete 83096,5 --1/1 Speak to Kaydee Racketring
    .target Kaydee Racketring
    .skipgossipid 131682
step
    .goto 2346,43.51,51.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Paks Topskimmer|r
    .complete 83096,2 --1/1 Speak to Paks Topskimmer
    .target Paks Topskimmer
    .skipgossipid 131273
step
    .goto 2346,43.84,50.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smaks Topskimmer|r
    .complete 83096,4 --1/1 Speak to Smaks Topskimmer
    .target Smaks Topskimmer
    .skipgossipid 131276
    .skipgossipid 131311
step
    .goto 2346,42.68,51.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gas Grimeshank|r
    .complete 83096,3 --1/1 Speak to Gas Grimeshank
    .timer 25,Roleplay
    .target Gas Grimeshank
    .skipgossipid 131277
step
    .goto 2346,39.97,53.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimla Fizzlecrank|r |cRXP_WARN_after the roleplay|r
    .turnin 83096 >>Turn in Welcome to Undermine
    .accept 83109 >>Accept The Grimla Express
    .target Grimla Fizzlecrank
step
    #completewith next
    .goto 2346,39.80,53.04
    .vehicle >>|Tinterface/cursor/crosshair/driver.blp:20|tClick on the |cRXP_PICK_Gramps|r
    .timer 37,Roleplay
step
    .goto 2346,45.21,42.12
    >>|cRXP_WARN_Wait for the roleplay.|r
    .complete 83109,1 --1/1 Ride the hot rod
    .target Gramps
step
    .goto 2346,45.21,42.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimla Fizzlecrank|r |cRXP_WARN_after the roleplay|r
    .turnin 83109 >>Turn in The Grimla Express
    .target Grimla Fizzlecrank
    .accept 85941 >>Accept Attitude Adjustment
step
    .goto 2346,45.55,41.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .accept 86297 >>Accept Morale Reflects Leadership
    .target Monte Gazlowe
step
    #completewith DelbyOverbiteQuestioned
    >>Kill |cRXP_ENEMY_Darkfuse forces|r in the area.
    .complete 85941,1 --12/12 Darkfuse slain
    .mob Darkfuse Harasser
    .mob Darkfuse Oppressor
    .mob Darkfuse Enforcer
step
    .goto 2346,48.88,41.44,10,0
    .goto 2346,49.09,42.71,6,0
    .goto 2346,49.29,42.22,6,0
    .goto 2346,48.94,42.19
    #title |cFFFCDC00Follow the arrow upstairs|r
    .complete 86297,1 --Search upstairs for information
step
    #label DelbyOverbiteQuestioned
    .goto 2346,48.94,42.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delby Overbite|r
    .complete 86297,2 --1/1 Delby Overbite questioned
    .target Delby Overbite
    .skipgossipid 125518
    .skipgossipid 125517
step
    #completewith next
    #label DarkfuseSlainA
    >>Kill the |cRXP_ENEMY_Darkfuse forces|r in the area
    .complete 85941,1 --12/12 Darkfuse slain
    .mob Darkfuse Harasser
    .mob Darkfuse Oppressor
    .mob Darkfuse Enforcer
step
    #completewith DarkfuseSlainA
    #title Leave the house
    .goto 2346,48.92,42.76,5,0
    .goto 2346,48.78,41.22,10 >>Leave the house
step
    #requires DarkfuseSlainA
    #loop
    .goto 2346,51.42,38.79,30,0
    .goto 2346,45.26,30.03,30,0
    .goto 2346,43.81,39.57,45,0
    >>Kill the |cRXP_ENEMY_Darkfuse forces|r in the area
    .complete 85941,1 --12/12 Darkfuse slain
    .mob Darkfuse Harasser
    .mob Darkfuse Oppressor
    .mob Darkfuse Enforcer
    .mob Darkfuse Growler
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r and |cRXP_FRIENDLY_Grimla Fizzlecrank|r
    .turnin 86297 >>Turn in Morale Reflects Leadership
    .goto 2346,45.28,42.33
    .target +Monte Gazlowe
    .turnin 85941 >>Turn in Attitude Adjustment
    .accept 83163 >>Accept Split Venture
    .goto 2346,45.24,42.15
    .target +Grimla Fizzlecrank
step
    #completewith next
    .goto 2346,45.08,42.05
    .vehicle >>|Tinterface/cursor/crosshair/driver.blp:20|tClick on the |cRXP_PICK_Gramps|r
    .timer 27,Roleplay
step
    .goto 2346,43.05,59.56
    >>|cRXP_WARN_Wait for the roleplay.|r
    .complete 83163,1 --1/1 Ride the hot rod
    .target Gramps
step
    #hidewindow
    #completewith next
    .gossipoption 124998 >>Talk to |cRXP_FRIENDLY_Pamsy|r
    .timer 17,Roleplay
step
    .goto 2346,43.74,60.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamsy|r
    .complete 83163,2 --1/1 Talk to Pamsy
    .target Pamsy
    .skipgossipid 124998
step
    .goto 2346,43.51,60.96
    >>|cRXP_WARN_Wait for the roleplay.|r
    .complete 83163,3 --1/1 Confront Nikki the Fixer
step
    #loop
    .goto 2346,43.47,61.33,5,0
    .goto 2346,44.69,60.82,5,0
    .goto 2346,43.72,59.52,5,0
    .goto 2346,42.68,63.26,5,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_FRIENDLY_Magsy Bootstrap|r, |cRXP_FRIENDLY_Waxle Bangsaw|r, |cRXP_FRIENDLY_Evwix Bentrocket|r, and |cRXP_FRIENDLY_Mux Skullskipper|r
    .complete 83163,4 --4/4 Aid Venture Co Goblins
    .target Magsy Bootstrap
    .target Waxle Bangsaw
    .target Evwix Bentrocket
    .target Mux Skullskipper
step
    .goto 2346,43.49,60.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimla Fizzlecrank|r
    .turnin 83163 >>Turn in Split Venture
    .target Grimla Fizzlecrank
step
    .goto 2346,43.75,61.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamsy|r
    .accept 83167 >>Accept Eyes from Above
    .target Pamsy
step
    #loop
    .goto 2346,47.87,58.00,30,0
    .goto 2346,47.71,70.77,40,0
    .goto 2346,43.59,66.27,35,0
    .goto 2346,45.83,62.50
    >>Kill the |cRXP_ENEMY_Darkfuse Spy-copters|r. Loot them for the |T4548884:0|t[|cRXP_LOOT_Spy-copter Footage Rolls|r].
    .complete 83167,1 --8/8 Spy-copter Footage Roll
    .mob Darkfuse Sky-copter
step
    .goto 2346,43.76,60.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamsy|r
    .turnin 83167 >>Turn in Eyes from Above
    .timer 7,Roleplay
    .target Pamsy
step
    .goto 2346,43.46,61.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orweyna|r
    .accept 83168 >>Accept A Trail of Black Blood
    .target Orweyna
step
    .isQuestAvailable account,87581
    .goto 2346,43.26,59.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gas Grimeshank|r
    .accept 87581 >>Accept No More Walkin' Here
    .target Gas Grimeshank
step
    .isOnQuest 84352,87581
    #completewith next
    #label NoMoreWalkinHere
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nanny Talullah|r
    .dailyturnin 84352,87581 >>Turn in No More Walkin' Here
    .accept 86618 >>Accept License Not Required
    .target Nanny Talullah
step
    .isQuestAvailable account,86618
    #completewith NoMoreWalkinHere
    .goto 2346,35.40,48.84,15,0
    .goto 2346,36.49,46.12,15,0
    .goto 2346,37.65,48.06,5,0
    .goto 2346,37.89,47.56,5,0
    .goto 2346,37.51,47.13,5,0
    .goto 2346,37.78,46.73,5,0
    .goto 2346,38.11,47.25,5 >>Climb the stairs of the house
step
    .isOnQuest 84352,87581
    #requires NoMoreWalkinHere
    .goto 2346,37.42,48.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nanny Talullah|r
    .dailyturnin 84352,87581 >>Turn in No More Walkin' Here
    .accept 86618 >>Accept License Not Required
    .target Nanny Talullah
step
    .isOnQuest 86618
    .goto 2346,37.42,48.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nanny Talullah|r
    .complete 86618,1 --1/1 Talk to Nanny Talullah
    .target Nanny Talullah
    .skipgossipid 132619
step
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,33.46,48.27
    .complete 83168,1 --Investigate Hovel Hill
step
    .goto 2346,33.55,48.12
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ethereal Warning Letter|r
    .complete 83168,2 --1/1 Ethereal Warning Letter
step
    #loop
    .goto 2346,33.80,48.20,6,0
    .goto 2346,34.10,47.58,6,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Labeled Black Blood Shipments|r
    .complete 83168,3 --3/3 Shipment Labels investigated
step
    .goto 2346,34.00,47.42
    >>Kill the |cRXP_ENEMY_Anti-Ethereal Unit|r
    .complete 83168,4 --1/1 Defend yourself
    .mob Anti-Ethereal Unit
step
    .goto 2346,33.04,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83168 >>Turn in A Trail of Black Blood
    .accept 83169 >>Accept Long Way from Booty Bay
    .target Monte Gazlowe

-----------------------
--- INSERT G-99 Questline
-----------------------
step
    #completewith next
    #label SpeakBaronRevilgazA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .complete 83169,1 --1/1 Speak with Baron Revilgaz
    .target Baron Revilgaz
step
    #completewith SpeakBaronRevilgazA
    #title |cFFFCDC00Use the G-99 Breakneck|r
    .goto 2346,26.28,50.01,20,0
    .goto 2346,31.22,38.08,15 >>Follow the arrow
step
    #requires SpeakBaronRevilgazA
    .goto 2346,30.76,39.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .complete 83169,1 --1/1 Speak with Baron Revilgaz
    .target Baron Revilgaz
    .skipgossipid 123665
    .skipgossipid 123666
step
    .goto 2346,30.76,39.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 83169 >>Turn in Long Way from Booty Bay
    .target Baron Revilgaz
    .accept 83170 >>Accept Not Again!
    .accept 83171 >>Accept Eye Sores for Sore Eyes
step
    #completewith next
    >>Kill |cRXP_ENEMY_Recruitment Enforcer|r, |cRXP_ENEMY_Arrogant Intruder|r, and |cRXP_ENEMY_Propaganda Pusher|r
    .complete 83170,3 --2/2 Recruitment Enforcer slain
    .mob +Recruitment Enforcer
    .complete 83170,1 --6/6 Arrogant Intruder slain
    .mob +Arrogant Intruder
    .complete 83170,2 --6/6 Propaganda Pusher slain
    .mob +Propaganda Pusher
step
    #loop
    .goto 2346,30.97,40.20,8,0
    .goto 2346,29.89,39.62,8,0
    .goto 2346,30.49,43.25,8,0
    .goto 2346,31.66,45.23,8,0
    .goto 2346,33.92,42.21,8,0
    .goto 2346,37.05,43.20,8,0
    .goto 2346,33.88,36.07,8,0
    .goto 2346,31.97,37.10,8,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Darkfuse Recruitment Papers|r
    .complete 83171,1 --8/8 Darkfuse Recruitment Posters burned
step
    #loop
    .goto 2346,33.28,39.01,30,0
    .goto 2346,38.75,35.88,35,0
    .goto 2346,33.28,39.01,30,0
    .goto 2346,30.29,37.60,30,0
    .goto 2346,30.39,42.62,30,0
    .goto 2346,34.59,48.18,35,0
    >>Kill |cRXP_ENEMY_Recruitment Enforcer|r, |cRXP_ENEMY_Arrogant Intruder|r, and |cRXP_ENEMY_Propaganda Pusher|r
    .complete 83170,3 --2/2 Recruitment Enforcer slain
    .mob +Recruitment Enforcer
    .complete 83170,1 --6/6 Arrogant Intruder slain
    .mob +Arrogant Intruder
    .complete 83170,2 --6/6 Propaganda Pusher slain
    .mob +Propaganda Pusher
step
    .goto 2346,30.71,39.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 83170 >>Turn in Not Again!
    .turnin 83171 >>Turn in Eye Sores for Sore Eyes
    .target Baron Revilgaz
step
    .goto 2346,30.79,39.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renzik "The Shiv"|r
    .accept 83172 >>Accept Black Blood Baton Pass
    .target Renzik "The Shiv"
step
    .isOnQuest 86618
    #title |cFFFCDC00Use the|r |T6383558:0|t[G-99 Breakneck]
    #loop
    .goto 2346,37.27,46.46,40,0
    .goto 2346,37.07,41.26,30,0
    .complete 86618,4 --Drive around Undermine (100%)
step
    .isOnQuest 86618
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,37.27,46.46
    .complete 86618,5 --Reach the D.R.I.V.E.
step
    .isOnQuest 86618
    .goto 2346,37.72,47.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mobber|r
    >>|cRXP_WARN_Install the |T4548870:0|t[Turbo: Wildfuel Mk. 0]|r
    .complete 86618,6 --1/1 Exit the G-99 Breakneck and install a turbo at the D.R.I.V.E.
    .target Mobber
    .skipgossipid 125367
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renzik "The Shiv"|r and |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83172 >>Turn in Black Blood Baton Pass
    .accept 83173 >>Accept Clearing Out the Depot
    .goto 2346,61.78,71.87
    .accept 83174 >>Accept Our Good Pal
    .goto 2346,61.73,72.02
    .target Monte Gazlowe
step
    #completewith next
    >>Kill the |cRXP_ENEMY_Depot Goblin forces|r
    .complete 83173,1 --Clear the Heaps Depot (100%)
    .mob Depot Infuser
    .mob Depot Igniter
    .mob Heaps Crusher
step
    .goto 2346,65.76,81.94
    >>Kill |cRXP_ENEMY_Zirdo|r
    .complete 83174,1 --1/1 Zirdo slain
    .mob Zirdo
step
    .goto 2346,65.59,80.98
    >>|TInterface/cursor/crosshair/interact.blp:20|tTalk on the |cRXP_PICK_Zirdo's Ledger|r
    .accept 83175 >>Accept Another Piece of the Puzzle
    .target Zirdo's Ledger
step
    #loop
    .goto 2346,67.74,86.35,35,0
    .goto 2346,62.51,71.32,35,0
    .goto 2346,60.51,80.84,35,0
    >>Kill the |cRXP_ENEMY_Depot Goblin forces|r
    .complete 83173,1 --Clear the Heaps Depot (100%)
    .mob Depot Infuser
    .mob Depot Igniter
    .mob Heaps Crusher
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r and |cRXP_FRIENDLY_Renzik "The Shiv"|r
    .turnin 83175 >>Turn in Another Piece of the Puzzle
    .turnin 83174 >>Turn in Our Good Pal
    .goto 2346,61.74,72.01
    .target +Monte Gazlowe
    .turnin 83173 >>Turn in Clearing Out the Depot
    .accept 83176 >>Accept Just a Hunch
    .goto 2346,61.78,71.87
    .target +Renzik "The Shiv"
    .skipgossipid 132221
step
    .goto 2346,61.78,71.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renzik "The Shiv"|r
    .complete 83176,1 --1/1 Listen to Renzik
    .target Renzik "The Shiv"
    .skipgossipid 132221
step
    #hidewindow
    #completewith next
    .gossipoption 131173 >>Talk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .timer 15,Roleplay
step
    .goto 2346,53.25,60.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .complete 83176,2 --1/1 Meet outside the Heaps
    .target Monte Gazlowe
    .skipgossipid 131173
step
    .goto 2346,53.01,59.36
    >>|cRXP_WARN_Wait for the roleplay|r
    .complete 83176,3 --1/1 Look for Renzik... quietly
    .complete 83176,4 --1/1 Watch Out!
step
    .goto 2346,53.05,59.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renzik "The Shiv"|r
    .complete 83176,5 --1/1 Check in with Renzik
    .target Renzik "The Shiv"
    .skipgossipid 124342
step
    .goto 2346,42.33,51.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83176 >>Turn in Just a Hunch
    .target Monte Gazlowe

-----------------------------------------------------
--- END CHAPTER 2
-----------------------------------------------------
]])
--Uncovering the Truth
RXPGuides.RegisterGuide([[
#retail
#version 3
#group RestedXP War Within
#name a) Uncovering the Truth
#displayname |cFF00CCFF3|r - Uncovering the Truth
#next a) Breaking the Shackles
#chapter

-----------------------------------------------------
--- START CHAPTER 3
-----------------------------------------------------

step
    .goto 2346,42.33,51.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .accept 83114 >>Accept Red Tape
    .target Monte Gazlowe
step
    .isQuestAvailable account,86535
    .goto 2346,27.67,54.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rustol|r
    .accept 86535 >>Accept Test Run
    .target Rustol
step
    .isOnQuest 86535
    #title |cFFFCDC00Walk onto the teleporter|r
    .goto 2346,27.82,54.03
    .complete 86535,1 --1/1 Use the teleporter to travel to Dornogal
step
    .isOnQuest 86535
    .goto 2339,52.63,50.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kenzi|r
    .turnin 86535 >>Turn in Test Run
    .target Kenzi
step
    #hidewindow
    #completewith next
    #label FindAlleriaAtSlamCentralStation
    #title |cFFFCDC00Follow the arrow|r
    .complete 83114,1 --1/1 Find Alleria at Slam Central Station
step
    .zoneskip 2339,1
    #completewith FindAlleriaAtSlamCentralStation
    .goto 2339,52.53,50.58
    .zone 2346 >>|cRXP_WARN_Walk onto the teleporter|r
step
    #requires FindAlleriaAtSlamCentralStation
    .goto 2346,17.66,50.96
    #title |cFFFCDC00Follow the arrow|r
    .complete 83114,1 --1/1 Find Alleria at Slam Central Station
step
    .goto 2346,17.79,50.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Customs Agents|r. Defeat the ones that turn hostile
    .complete 83114,2 --4/4 Customs Agents convinced to leave
    .timer 17,Roleplay
    .target Custom Agent
    .skipgossipid 124207
    .skipgossipid 124208
    .skipgossipid 132331
    .skipgossipid 124200
step
    .goto 2346,18.13,50.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r |cRXP_WARN_after the roleplay|r
    .turnin 83114 >>Turn in Red Tape
    .accept 83115 >>Accept In the Mix
    .target Monte Gazlowe
step
    #completewith next
    #label FindNoggenfoggerInVatworks
    .complete 83115,1 --1/1 Find Noggenfogger in the Vatworks
step
    #completewith FindNoggenfoggerInVatworks
    #title |cFFFCDC00Enter the house|r
    .goto 2346,25.19,53.24,30,0
    .goto 2346,29.06,69.60,5 >>Enter the house
step
    #requires FindNoggenfoggerInVatworks
    .goto 2346,27.63,71.03
    #title |cFFFCDC00Follow the arrow|r
    .complete 83115,1 --1/1 Find Noggenfogger in the Vatworks
step
    #title |cFFFCDC00Below the stairs|r
    .goto 2346,27.46,70.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r |cRXP_WARN_below|r
    .complete 83115,2 --1/1 Ask Noggenfogger to say more
    .target Marin Noggenfogger
    .skipgossipid 123596
step
    .goto 2346,27.46,71.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83115 >>Turn in In the Mix
    .target Monte Gazlowe
step
    .goto 2346,27.47,70.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
    .accept 83116 >>Accept Potion Commotion
    .target Marin Noggenfogger
step
    .goto 2346,27.62,70.66
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Semi-Deluxe Noggenfogger Elixirs|r
    .complete 83116,1 --1/1 Semi-Deluxe Noggenfogger Elixirs
step
    #loop
    .goto 2346,27.81,71.46,10,0
    .goto 2346,27.77,72.95,12,0
    .goto 2346,26.80,72.26,12,0
    >>Use the |T413575:0|t[Semi-Deluxe Noggenfogger Elixirs] and aim it at the |cRXP_ENEMY_Stationed Labguard|r
    .complete 83116,2,3 --3/8 Stationed Labguards distracted
    .mob Splashed Droplet
    .use 226157
step
    #completewith next
    #label StationLabguardsA
    >>Use the |T413575:0|t[Semi-Deluxe Noggenfogger Elixirs] and aim it at the |cRXP_ENEMY_Stationed Labguard|r
    .complete 83116,2 --8/8 Stationed Labguards distracted
    .mob Splashed Droplet
    .use 226157
step
    #completewith StationLabguardsA
    #title |cFFFCDC00Leave the laboratory|r
    .goto 2346,27.07,71.21,5,0
    .goto 2346,27.41,70.83,5,0
    .goto 2346,27.86,70.82,5,0
    .goto 2346,29.02,69.64,5 >>Leave the laboratory
step
    #requires StationLabguardsA
    #loop
    .goto 2346,31.88,67.46,30,0
    .goto 2346,32.19,72.89,30,0
    .goto 2346,28.28,66.42,30,0
    >>Use the |T413575:0|t[Semi-Deluxe Noggenfogger Elixirs] and aim it at the |cRXP_ENEMY_Stationed Labguard|r
    .complete 83116,2 --8/8 Stationed Labguards distracted
    .mob Splashed Droplet
    .use 226157
step
    #completewith next
    #label PotionCommotion
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83116 >>Turn in Potion Commotion
    .accept 83117 >>Accept Chasing a Lead
    .target Monte Gazlowe
step
    #completewith PotionCommotion
    #title |cFFFCDC00Enter the laboratory|r
    .goto 2346,29.00,69.66,5 >>Enter the laboratory
step
    #requires PotionCommotion
    #title |cFFFCDC00Below the stairs|r
    .goto 2346,27.47,71.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83116 >>Turn in Potion Commotion
    .accept 83117 >>Accept Chasing a Lead
    .target Monte Gazlowe
step
    #completewith next
    #label ChasingaLeadA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83117 >>Turn in Chasing a Lead
    .accept 83118 >>Accept Check the Schedule
    .target Monte Gazlowe
step
    #completewith ChasingaLeadA
    #title |cFFFCDC00Leave the laboratory|r
    .goto 2346,27.07,71.21,5,0
    .goto 2346,27.41,70.83,5,0
    .goto 2346,27.86,70.82,5,0
    .goto 2346,29.02,69.64,5 >>Leave the laboratory
step
    #requires ChasingaLeadA
    .goto 2346,46.08,78.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83117 >>Turn in Chasing a Lead
    .accept 83118 >>Accept Check the Schedule
    .target Monte Gazlowe
step
    .goto 2346,45.94,78.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimla Fizzlecrank|r
    .accept 83119 >>Accept It's Worth a Shot
    .target Grimla Fizzlecrank
step
    .goto 2346,45.94,78.93
    >>Use the |T6323360:0|t[Spare Venture Co. Uniform]
    .complete 83119,1 --1/1 Venture Co. uniform equipped
    .use 226358
step
    #completewith EmployeeSchedules
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Underpaid Workers|r. |cRXP_WARN_Kill the ones that turn hostile|r
    *Use the |T6323360:0|t[Spare Venture Co. Uniform] if you loose the buff
    .complete 83119,2 --10/10 Venture employees confronted
    .target Underpaid Worker
    .skipgossipid 123439
    .skipgossipid 123440
    .skipgossipid 123441
    .use 226358
step
    #title |cFFFCDC00Avoid the |cFFFF5722Hyenas|r|r. Schedule (1/3)
    .goto 2346,46.6,86.1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Employee Schedule|r
    .complete 83118,1,1 --1/3 Employee Schedule
step
    #title |cFFFCDC00Avoid the |cFFFF5722Hyenas|r|r. Schedule (2/3)
    .goto 2346,47.98,85.87
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Employee Schedule|r
    .complete 83118,1,2 --2/3 Employee Schedule
step
    #label EmployeeSchedules
    #title |cFFFCDC00Avoid the |cFFFF5722Hyenas|r|r. Schedule (3/3)
    .goto 2346,49.44,88.02
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Employee Schedule|r
    .complete 83118,1 --3/3 Employee Schedule
step
    #title |cFFFCDC00Avoid the |cFFFF5722Hyenas|r|r
    #loop
    .goto 2346,44.95,88.03,25,0
    .goto 2346,50.19,86.74,20,0
    .goto 2346,46.89,85.85,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Underpaid Workers|r. |cRXP_WARN_Kill the ones that turn hostile|r
    *Use the |T6323360:0|t[Spare Venture Co. Uniform] if you loose the buff
    .complete 83119,2 --10/10 Venture employees confronted
    .target Underpaid Worker
    .skipgossipid 123439
    .skipgossipid 123440
    .skipgossipid 123441
    .use 226358
step
    #completewith next
    .aura -458737 >>Remove the |T6323360:0|t[Venture Co. Disguise] buff
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r and |cRXP_FRIENDLY_Grimla Fizzlecrank|r
    .turnin 83118 >>Turn in Check the Schedule
    .goto 2346,53.35,71.04
    .target +Monte Gazlowe
    .turnin 83119 >>Turn in It's Worth a Shot
    .accept 83120 >>Accept Stealing the Keys
    .goto 2346,53.46,71.10
    .target +Grimla Fizzlecrank
step
    .goto 2346,51.56,70.65,8,0
    .goto 2346,51.89,72.72
    >>Kill |cRXP_ENEMY_Lead Foreman Krome|r. Loot him for the |T5770743:0|t[|cRXP_LOOT_Sputtering Taserblade|r].
    .complete 83120,1 --1/1 Lead Foreman Krome slain
    .complete 83120,2 --1/1 Sputtering Taserblade
    .mob Lead Foreman Krome
step
    .goto 2346,53.35,71.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83120 >>Turn in Stealing the Keys
    .accept 83933 >>Accept The Kaja'Coast
    .target Monte Gazlowe
step
    .goto 2346,18.80,52.21
    #title |cFFFCDC00Follow the arrow|r
    .complete 83933,1 --1/1 Get to Slam Central Station
step
    .goto 2346,18.80,52.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bigz Speedtrack|r
    .complete 83933,2 --1/1 Board the Coastside Drill to travel to Zuldazar
    .target Bigz Speedtrack
    .skipgossipid 125410
step
    .goto 862,22.41,54.26
    #title |cFFFCDC00Follow the arrow|r
    .complete 83933,3 --1/1 Regroup with Gazlowe and Renzik
    .timer 18,RP
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r and |cRXP_FRIENDLY_Renzik "The Shiv"|r
    .turnin 83933 >>Turn in The Kaja'Coast
    .accept 84122 >>Accept Cut the Cameras
    .goto 862,22.23,54.47
    .target +Monte Gazlowe
    .accept 84121 >>Accept Blowing a Path Through
    .goto 862,22.20,54.43
    .target Renzik "The Shiv"
step
    #completewith DarkfuseSlainB
    #hidewindow
    #loop
    .goto 862,21.52,57.43,25,0
    .goto 862,19.10,56.40,35,0
    .goto 862,19.01,59.14,35,0
    +1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Darkfuse|r
    .complete 84121,1 --10/10 Darkfuse slain
    .mob Darkfuse
step
    #title |cFFFCDC00You can fly here|r
    >>Kill the |cRXP_ENEMY_Surveillance B.I.R.D.s|r. Loot them for the |T4548891:0|t[|cRXP_LOOT_Handful of B.I.R.D. Parts]
    >>Use the |T1373906:0|t[Bilgewater Auto-Grappler] or click on the |cRXP_ENEMY_Surveillance B.I.R.D.s|r to ground them.
    .complete 84122,1 --6/6 Handful of B.I.R.D. Parts
    .mob Surveillance B.I.R.D.
step
    #label DarkfuseSlainB
    >>Kill |cRXP_ENEMY_Darkfuse|r
    .complete 84121,1 --10/10 Darkfuse slain
    .mob Darkfuse
step
    #title |cFFFCDC00You can fly here|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r and |cRXP_FRIENDLY_Renzik "The Shiv"|r
    .turnin 84122 >>Turn in Cut the Cameras
    .goto 862,22.09,57.73
    .target +Monte Gazlowe
    .turnin 84121 >>Turn in Blowing a Path Through
    .goto 862,22.11,57.69
    .target +Renzik "The Shiv"
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r and |cRXP_FRIENDLY_Renzik "The Shiv"|r
    .accept 83122 >>Accept Crashing the Market
    .goto 862,22.09,57.73
    .target +Monte Gazlowe
    .accept 83121 >>Accept Asset Management
    .goto 862,22.11,57.69
    .target +Renzik "The Shiv"
---add teleport outside mine here
step
    #hidewindow
    #completewith next
    #label VentureStockpiles
    .complete 83121,1 --6/6 Venture Supervisor slain
    .complete 83122,1 --5/5 Kaja'mite Stockpiles destroyed
step
    #completewith VentureStockpiles
    #title Enter the mine
    .goto 862,23.18,60.14,10 >>Enter the mine
step
    #requires VentureStockpiles
    #hidewindow
    #completewith VentureSupervisors
    #loop
    .goto 862,23.84,60.21,15,0
    .goto 862,24.24,59.32,15,0
    .goto 862,24.75,60.49,15,0
    .goto 862,25.27,59.80,15,0
    .goto 862,25.17,58.96,15,0
    .goto 862,25.02,59.83,15,0
    .goto 862,25.25,58.34,15,0
    .goto 862,24.30,58.29,20,0
    .goto 862,23.53,59.14,15,0
    +1
step
    #requires VentureStockpiles
    #completewith next
    >>Kill |cRXP_ENEMY_Venture Supervisor|r. Loot them for the |T133469:0|t[|cRXP_LOOT_Crumpled Paystub|r].
    .complete 83121,1 --6/6 Venture Supervisor slain
    .collect 232464,1,83123,0
    .accept 83123 >>Accept A Miner Mistake
    .mob Venture Supervisor
step
    #requires VentureStockpiles
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Kaja'mite Stockpiles|r
    .complete 83122,1 --5/5 Kaja'mite Stockpiles destroyed
step
    #label VentureSupervisors
    >>Kill |cRXP_ENEMY_Venture Supervisor|r. Loot them for the |T133469:0|t[|cRXP_LOOT_Crumpled Paystub|r].
    .complete 83121,1 --6/6 Venture Supervisor slain
    .collect 232464,1,83123,0
    .accept 83123 >>Accept A Miner Mistake
    .mob Venture Supervisor
step
    >>Use the |T133469:0|t[Crumbled Paystub]
    .complete 83123,1 --1/1 Read the note on the paystub
    .use 232464
step
    .isOnQuest 83121,83123,83122
    #label EmergencyExit
    #completewith TooFarFromTeleporter
    .goto 862,25.36,58.98
    .cast 3365 >>Click on the |cRXP_PICK_Emergency Exit|r
step
    .isOnQuest 83121,83123,83122
    #hidewindow
    #completewith EmergencyExit
    #label TooFarFromTeleporter
    .goto 862,23.49,60.19,80 >>1
step
    #requires TooFarFromTeleporter
    #completewith next
    #label CrashingMinerBIRD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renzik "The Shiv"|r and |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83121 >>Turn in Asset Management
    .goto 862,22.10,57.69
    .target +Renzik "The Shiv"
    .turnin 83122 >>Turn in Crashing the Market
    .turnin 83123 >>Turn in A Miner Mistake
    .accept 83124 >>Accept B.I.R.D. Watching
    .target +Monte Gazlowe
step
    #requires TooFarFromTeleporter
    #completewith CrashingMinerBIRD
    #title Leave the mine
    .goto 862,22.94,60.12,10 >>Leave the mine
step
    #requires CrashingMinerBIRD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renzik "The Shiv"|r and |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83121 >>Turn in Asset Management
    .target +Renzik "The Shiv"
    .turnin 83122 >>Turn in Crashing the Market
    .turnin 83123 >>Turn in A Miner Mistake
    .accept 83124 >>Accept B.I.R.D. Watching
    .goto 862,22.09,57.72
    .target +Monte Gazlowe
step
    .goto 862,22.09,57.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Surveillance B.I.R.D.|r
    .complete 83124,1 --1/1 Hotwired B.I.R.D. activated
    .target Surveillance B.I.R.D.
step
    .goto 862,22.08,57.69
    >>|Tinterface/cursor/crosshair/driver.blp:20|tClick on the |cRXP_PICK_Surveillance B.I.R.D.|r
    .complete 83124,2 --1/1 Take control of the Hotwired B.I.R.D.
    .target Surveillance B.I.R.D.
step
    .goto 862,18.94,55.49
    #title |cFFFCDC00Follow the arrow|r
    >>|cRXP_WARN_Use |T878211:0|t[E.N.H.A.N.C.E.] (1)|r. Avoid the |cRXP_ENEMY_B.I.R.D. Watchers|r
    *- |cRXP_WARN_Collect treats in the air to refill your energy bar|r
    *- Use |T965900:0|t[Jailbreak] (2) for a speed buff
    .complete 83124,3 --1/1 Northern beach investigated
step
    .goto 862,18.85,58.15
    #title |cFFFCDC00Follow the arrow|r
    >>|cRXP_WARN_Use |T878211:0|t[E.N.H.A.N.C.E.] (1)|r. Avoid the |cRXP_ENEMY_B.I.R.D. Watchers|r
    *- |cRXP_WARN_Collect treats in the air to refill your energy bar|r
    *- Use |T965900:0|t[Jailbreak] (2) for a speed buff
    .complete 83124,4 --1/1 Shipping vessel investigated
step
    .goto 862,20.77,54.48
    #title |cFFFCDC00Follow the arrow|r
    >>|cRXP_WARN_Use |T878211:0|t[E.N.H.A.N.C.E.] (1)|r. Avoid the |cRXP_ENEMY_B.I.R.D. Watchers|r
    *- |cRXP_WARN_Collect treats in the air to refill your energy bar|r
    *- Use |T965900:0|t[Jailbreak] (2) for a speed buff
    .complete 83124,5 --1/1 Spy on Overseer Dritz
step
    .goto 862,22.09,57.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83124 >>Turn in B.I.R.D. Watching
    .accept 83125 >>Accept Price Hike
    .target Monte Gazlowe
step
    #loop
    .goto 862,17.85,60.52,20,0
    .goto 862,17.95,61.50,20,0
    >>Kill |cRXP_ENEMY_Overseer Dritz|r
    .complete 83125,1 --1/1 Overseer Dritz slain
    .mob Overseer Dritz
-- step
--     .goto 862,18.10,60.43
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Spare Excavation Rocket|r
--     .complete 83125,2 --1/1 Ride rocket back to the Coastside Drill (Optional)
step
    .isOnQuest 83125
    .goto 862,22.55,54.07
    #title |cFFFCDC00Follow the arrow|r
    .zone 2346 >>Click on the |cRXP_PICK_Coastside Drill Control Panel|r
    .skipgossipid 125429
step
    .goto 2346,29.22,69.55
    #title |cFFFCDC00Follow the arrow|r
    .complete 83125,3 --1/1 Meet Gazlowe at the Vatworks
step
    .goto 2346,29.22,69.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83125 >>Turn in Price Hike
    .target Monte Gazlowe
-----------------------------------------------------
--- END CHAPTER 3
-----------------------------------------------------
]])
--Breaking the Shackles
RXPGuides.RegisterGuide([[
#retail
#version 3
#group RestedXP War Within
#name a) Breaking the Shackles
#displayname |cFF00CCFF4|r - Breaking the Shackles
#next a) Ignite the Fuel of Change
#chapter

--------------------------------------------------
--- START CHAPTER 4
-----------------------------------------------------
step
    .goto 2346,29.47,69.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .accept 83126 >>Accept Ethereal Invasion
    .accept 85449 >>Accept Phase Shift
    .target Alleria Windrunner
step
    #completewith next
    >>Kill the |cRXP_ENEMY_Ethereals|r
    .complete 83126,1 --10/10 Ethereals slain
    .mob Ethereal Warpblade
    .mob Ethereal Mind-Scraper
step
    #loop
    .goto 2346,30.47,74.80,15,0
    .goto 2346,34.10,69.96,15,0
    .goto 2346,28.81,63.09,15,0
    .goto 2346,26.31,69.16,15,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Phase Resonance|r
    .complete 85449,1 --4/4 Phase Resonance destroyed
step
    #loop
    .goto 2346,28.81,63.09,25,0
    .goto 2346,34.10,69.96,25,0
    .goto 2346,30.47,74.80,25,0
    .goto 2346,30.64,69.69,25,0
    .goto 2346,26.31,69.16,25,0
    >>Kill the |cRXP_ENEMY_Ethereals|r
    .complete 83126,1 --10/10 Ethereals slain
    .mob Ethereal Warpblade
    .mob Ethereal Mind-Scraper
step
    .goto 2346,29.50,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r |cRXP_WARN_next to you|r
    .turnin 85449 >>Turn in Phase Shift
    .turnin 83126 >>Turn in Ethereal Invasion
    .accept 85450 >>Accept Evacuation Plan
    .target Alleria Windrunner
step
    #completewith next
    #label SpeakGazloweLaboratory
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .complete 85450,1 --1/1 Speak to Gazlowe inside the laboratory
    .target Monte Gazlowe
step
    #completewith SpeakGazloweLaboratory
    #title Enter the laboratory
    .goto 2346,29.00,69.66,5 >>Enter the laboratory
step
    #requires SpeakGazloweLaboratory
    #completewith next
    #hidewindow
    .gossipoption 125342 >>Talk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .timer 29,Roleplay
step
    #requires SpeakGazloweLaboratory
    .goto 2346,26.92,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .complete 85450,1 --1/1 Speak to Gazlowe inside the laboratory
    .target Monte Gazlowe
    .skipgossipid 125342
step
    .goto 2346,26.92,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 85450 >>Turn in Evacuation Plan
    .accept 83127 >>Accept Racing the Clock
    .target Monte Gazlowe
step
    #completewith next
    #label RacingPeopleOut
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83127 >>Turn in Racing the Clock
    .accept 83128 >>Accept Get Our People Out
    .target Monte Gazlowe
step
    #completewith RacingPeopleOut
    #title Leave the laboratory
    .goto 2346,27.07,71.21,5,0
    .goto 2346,27.41,70.83,5,0
    .goto 2346,27.86,70.82,5,0
    .goto 2346,29.02,69.64,5 >>Leave the laboratory
step
    #requires RacingPeopleOut
    .goto 2346,55.67,63.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83127 >>Turn in Racing the Clock
    .accept 83128 >>Accept Get Our People Out
    .target Monte Gazlowe
step
    #completewith HostagesRescued
    >>Kill the |cRXP_ENEMY_Ethereal Heartseeker|r by using the |T458733:0|t[|cRXP_WARN_ExtraActionButton|r] on them. 
    *- |cRXP_WARN_Running into the hidden |cRXP_ENEMY_Ethereal Heartseeker|r will stun you|r
    .complete 83128,2 --10/10 Ethereal Heartseeker slain
    .mob Ethereal Heartseeker
-- step
    -- #title Hostages rescued (1/3)
    -- .goto 2346,53.41,59.78,10,0
    -- .goto 2346,54.37,59.76,5,0
    -- .goto 2346,55.23,58.73,5,0
    -- .goto 2346,54.42,59.57,10,0
    -- .goto 2346,55.67,58.8
    -- >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bomb-and-Chain|r
    -- *|cRXP_WARN_This will cause nearby |cRXP_ENEMY_Ethereal Heartseeker|r to become hostile|r
    -- .complete 83128,1,1 --1/3 Hostages rescued
step
    #title |cFFFCDC00Click on the |cFFDB2EEFDoor|r|r. Hostages rescued (1/3)
    .goto 2346,56.51,60.59,10,0
    .goto 2346,55.64,58.80
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bomb-and-Chain|r
    *|cRXP_WARN_This will cause nearby |cRXP_ENEMY_Ethereal Heartseeker|r to become hostile|r
    .complete 83128,1,1 --1/3 Hostages rescued
-- step
--     #title |cFFFCDC00Follow the way to the second floor|r. Hostages rescued (2/3)
--     .goto 2346,55.23,58.73,5,0
--     .goto 2346,54.37,59.76,5,0
--     .goto 2346,53.41,59.78,10,0
--     .goto 2346,56.14,57.14,10,0
--     .goto 2346,56.76,57.71,5,0
--     .goto 2346,56.38,57.11,5,0
--     .goto 2346,56.8,57.59,5,0
--     .goto 2346,57.01,56.71,5,0
--     .goto 2346,56.85,57.46,7,0
--     .goto 2346,57.16,56.91
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bomb-and-Chains|r
--     *|cRXP_WARN_This will cause nearby |cRXP_ENEMY_Ethereal Heartseeker|r to become hostile|r
--     .complete 83128,1,2 --2/3 Hostages rescued
step
    #title |cFFFCDC00Follow the way to the second floor|r. Hostages rescued (2/3)
    .goto 2346,57.41,57.36,8,0
    .goto 2346,57.46,56.25,5,0
    .goto 2346,57.17,55.96,5,0
    .goto 2346,56.98,56.80,5,0
    .goto 2346,56.74,57.29,5,0
    .goto 2346,57.15,56.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bomb-and-Chains|r
    *|cRXP_WARN_This will cause nearby |cRXP_ENEMY_Ethereal Heartseeker|r to become hostile|r
    .complete 83128,1,2 --2/3 Hostages rescued
step
    #label HostagesRescued
    #title |cFFFCDC00Jump down|r. Hostages rescued (3/3)
    .goto 2346,57.43,57.62,5,0
    .goto 2346,57.89,54.93,10,0
    .goto 2346,57.59,54.63
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bomb-and-Chain|r and |cRXP_PICK_Padlock|r
    *|cRXP_WARN_This will cause nearby |cRXP_ENEMY_Ethereal Heartseeker|r to become hostile|r
    .complete 83128,1 --3/3 Hostages rescued
step
    #loop
    .goto 2346,57.99,63.45,30,0
    .goto 2346,54.93,59.30,30,0
    .goto 2346,58.98,56.15,30,0
    >>Kill the |cRXP_ENEMY_Ethereal Heartseeker|r by using the |T458733:0|t[|cRXP_WARN_ExtraActionButton|r] on them. 
    *- |cRXP_WARN_Running into the hidden |cRXP_ENEMY_Ethereal Heartseeker|r will stun you|r
    .complete 83128,2 --10/10 Ethereal Heartseeker slain
    .mob Ethereal Heartseeker
step
    .goto 2346,58.59,59.43
    #title |cFFFCDC00Follow the arrow|r
    .complete 83128,3 --1/1 Cave entrance found
    .timer 4,Roleplay
step
    .goto 2346,58.63,59.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83128 >>Turn in Get Our People Out
    .target Monte Gazlowe
    .accept 83129 >>Accept Nowhere Left to Hide
step
    .goto 2346,58.69,59.43
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Improvised Explosives|r
    .complete 83129,1 --3/3 Light the Improvised Explosives
step
    #completewith next
    #label GallywixConfronted
    #hidewindow
    .complete 83129,2 --1/1 Gallywix confronted
step
    #completewith GallywixConfronted
    #title |cFFFCDC00Enter the cave|r
    .goto 2346,59.47,59.10,8 >>Enter the cave
step
    #requires GallywixConfronted
    .goto 2346,61.74,62.09
    #title |cFFFCDC00Follow the arrow|r
    .complete 83129,2 --1/1 Gallywix confronted
step
    .goto 2346,61.71,62.69
    >>Kill the |cRXP_ENEMY_Ultra-Deluxe Riotguards|r
    .complete 83129,3 --1/1 Hold off Gallywix's riotguards
step
    .goto 2346,61.63,62.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83129 >>Turn in Nowhere Left to Hide
    .accept 83130 >>Accept Sour Victory
    .target Monte Gazlowe
step
    #completewith next
    #label SourVictory
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83130 >>Turn in Sour Victory
    .target Monte Gazlowe
step
    #completewith SourVictory
    #title |cFFFCDC00Leave the cave|r
    .goto 2346,59.47,59.10,10,0
    .goto 2346,58.51,59.45,10 >>Leave the cave
step
    #requires SourVictory
    .goto 2346,38.97,24.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83130 >>Turn in Sour Victory
    .target Monte Gazlowe
-----------------------------------------------------
--- END CHAPTER 4
-----------------------------------------------------
]])
--Ignite the Fuel of Change
RXPGuides.RegisterGuide([[
#retail
#version 3
#group RestedXP War Within
#name a) Ignite the Fuel of Change
#displayname |cFF00CCFF5|r - Ignite the Fuel of Change
#next a) Homecoming
#chapter

-----------------------------------------------------
--- START CHAPTER 5
-----------------------------------------------------
step
    .goto 2346,38.97,24.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .accept 83138 >>Accept End of the Day
    .target Monte Gazlowe
step
    #hidewindow
    #completewith next
    .gossipoption 123568 >>Talk to |cRXP_FRIENDLY_Renzik|r
    .timer 50,Roleplay
    .target Renzik
step
    .goto 2346,38.96,24.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renzik|r
    .complete 83138,1 --1/1 Speak to Renzik
    .target Renzik
    .skipgossipid 123568
step
    .goto 2346,39.67,24.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83138 >>Turn in End of the Day
    .accept 83194 >>Accept Under Fire
    .target Monte Gazlowe
step
    #completewith next
    #hidewindow
    .gossipoption 131237 >>Talk to |cRXP_FRIENDLY_Gazlowe|r
    .timer 8,Roleplay
step
    .goto 2346,39.67,24.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
    .complete 83194,1 --1/1 Talk to Gazlowe
    .target Gazlowe
    .skipgossipid 131237
step
    .goto 2346,39.96,24.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r, |cRXP_FRIENDLY_Grimla Fizzlecrank|r, and |cRXP_FRIENDLY_Baron Revilgaz|r
    .complete 83194,3 --1/1 Affirm Revilgaz's Support
    .complete 83194,4 --1/1 Affirm Grimla's Support
    .complete 83194,2 --1/1 Affirm Noggenfogger's Support
    .target Marin Noggenfogger
    .target Grimla Fizzlecrank
    .target Baron Revilgaz
    .skipgossipid 123820
    .skipgossipid 123821
    .skipgossipid 123822
step
    .goto 2346,39.81,24.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83194 >>Turn in Under Fire
    .accept 85174 >>Accept Get Out There
    .target Monte Gazlowe
step
    .goto 2346,39.81,24.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    >>|cRXP_WARN_Click on "Yes" on the popup|r
    .complete 85174,1 --1/1 Begin the Revolution
    .target Monte Gazlowe
    .skipgossipid 132094
step
    #completewith next
    #label GetRayyDisperse
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirk Greasedealer|r
    .turnin 85174 >>Turn in Get Out There
    .accept 83195 >>Accept Rally the People
    .accept 83196 >>Accept Disperse!
    .target Dirk Greasedealer
step
    #completewith GetRayyDisperse
    #title |cFFFCDC00Leave the house|r
    .goto 2346,39.27,24.00,5 >>Leave the house
step
    #requires GetRayyDisperse
    .goto 2346,47.77,40.99,8,0
    .goto 2346,48.67,40.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirk Greasedealer|r
    .turnin 85174 >>Turn in Get Out There
    .accept 83195 >>Accept Rally the People
    .accept 83196 >>Accept Disperse!
    .target Dirk Greasedealer
step
    .goto 2346,48.67,40.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dirk Greasedealer|r
    .complete 83195,1 --1/1 Speak to Dirk Greasedealer
    .target Dirk Greasedealer
    .skipgossipid 123181
step
    #completewith DarkfuseRiotForcesSlain
    #hidewindow
    #loop
    .goto 2346,44.55,38.54,30,0
    .goto 2346,43.00,33.65,35,0
    .goto 2346,46.16,30.45,35,0
    .goto 2346,51.99,41.24,40,0
    +1
step
    #completewith DefacePropaganda
    >>Kill the |cRXP_ENEMY_Darkfuse Riot Forces|r
    .complete 83196,1 --20/20 Darkfuse Riot Forces slain
    .mob Darkfuse Riotstomper
    .mob Darkfuse Smashcaster
step
    #completewith DefacePropaganda
    >>Use the |T1506452:0|t[Anti-Darkfuse Pamphlets] and aim it at the |cRXP_FRIENDLY_Terrified Citizens|r
    .complete 83195,3 --10/10 Throw pamphlets to Terrified Citizens
    .target Terrified Citizen
    .use 228196
step
    #label DefacePropaganda
    #loop
    .goto 2346,51.94,40.48,0
    .goto 2346,49.17,40.79,0
    .goto 2346,47.87,41.66,0
    .goto 2346,44.27,38.04,0
    .goto 2346,46.03,34.95,0
    .goto 2346,43.38,35.91,0
    .goto 2346,42.20,33.49,0
    .goto 2346,43.85,30.79,0
    .goto 2346,43.92,27.68,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Revolution Graffiti|r
    *- |cRXP_WARN_The locations are marked on your map/minimap|r
    .complete 83195,2 --5/5 Deface Darkfuse Propaganda
step
    #completewith next
    >>Kill the |cRXP_ENEMY_Darkfuse Riot Forces|r
    .complete 83196,1 --20/20 Darkfuse Riot Forces slain
    .mob Darkfuse Riotstomper
    .mob Darkfuse Smashcaster
step
    >>Use the |T1506452:0|t[Anti-Darkfuse Pamphlets] and aim it at the |cRXP_FRIENDLY_Terrified Citizens|r
    .complete 83195,3 --10/10 Throw pamphlets to Terrified Citizens
    .target Terrified Citizen
    .use 228196
step
    #label DarkfuseRiotForcesSlain
    >>Kill the |cRXP_ENEMY_Darkfuse Riot Forces|r
    .complete 83196,1 --20/20 Darkfuse Riot Forces slain
    .mob Darkfuse Riotstomper
    .mob Darkfuse Smashcaster
step
    #title |cFFFCDC00Click on the |cFFDB2EEFDoor|r|r
    .goto 2346,51.10,35.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83195 >>Turn in Rally the People
    .turnin 83196 >>Turn in Disperse!
    .timer 15,Roleplay
    .target Monte Gazlowe
step
    #title |cFFFCDC00Click on the |cFFDB2EEFDoor|r|r
    .goto 2346,50.86,34.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r |cRXP_WARN_after the roleplay|r
    .accept 83197 >>Accept Who Owns the Streets?
    .timer 10,Roleplay
    .target Monte Gazlowe
step
    .goto 2346,50.18,32.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe and confront Nikki|r
    .complete 83197,1 --1/1 Speak to Gazlowe and confront Nikki
    .target Gazlowe and confront Nikki
step
    .goto 2346,50.15,32.20
    >>Kill the |cRXP_ENEMY_Vile Refuses|r and the |cRXP_ENEMY_Gatgloop|r
    .complete 83197,2 --Defeat Nikki's Monstrosities (100%)
    .mob Vile Refuse
    .mob Gatgloop
step
    .goto 2346,58.45,33.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baron Revilgaz|r
    .turnin 83197 >>Turn in Who Owns the Streets?
    .accept 83198 >>Accept Backyard Navy
    .target Baron Revilgaz
step
    .goto 2346,58.49,33.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
    .accept 83199 >>Accept Been Savin' This One
    .target Marin Noggenfogger
step
    #completewith next
    >>Use the |T369278:0|t[Blackwater Blast] and aim it at the |cRXP_ENEMY_Darkfuse Joyrider|r
    *|cRXP_WARN_There are 2 ways to collect |T252185:0|t[|cRXP_LOOT_Blackwater Cannonballs|r]:|r
    *- Kill |cRXP_ENEMY_Darkfuse Mariner|r.
    *- Click on the |cRXP_PICK_Blackwater Ordinances|r
    .complete 83198,2 --6/6 Darkfuse Joyrider sunk
    .collect 228975,6,83198,0x2,-1
    .mob Darkfuse Joyrider
step
    #loop
    .goto 2346,61.21,17.20,30,0
    .goto 2346,58.82,27.29,30,0
    *|cRXP_WARN_There are 3 ways to collect Sliced Limes:|r
    >>- Kill the |cRXP_ENEMY_Darkfuse "Waiter"|r
    >>- Click on the |cRXP_PICK_Overpriced Tropical Punches|r
    >>- Talk to |cRXP_FRIENDLY_Frustrated Vacationer|r
    .complete 83199,1 --12/12 Sliced Limes
    .skipgossipid 125254
step
    #loop
    .goto 2346,61.21,17.20,40,0
    .goto 2346,66.35,19.27,40,0
    .goto 2346,61.21,17.20,40,0
    .goto 2346,60.90,26.30,40,0
    >>Use the |T369278:0|t[Blackwater Blast] and aim it at the |cRXP_ENEMY_Darkfuse Joyrider|r
    *|cRXP_WARN_There are 2 ways to collect |T252185:0|t[|cRXP_LOOT_Blackwater Cannonballs|r]:|r
    *- Kill |cRXP_ENEMY_Darkfuse Mariner|r.
    *- Click on the |cRXP_PICK_Blackwater Ordinances|r
    .complete 83198,2 --6/6 Darkfuse Joyrider sunk
    .collect 228975,6,83198,0x2,-1
    .mob Darkfuse Joyrider
step
    #completewith next
    #label NavyOneSwabs
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
    .turnin 83198 >>Turn in Backyard Navy
    .turnin 83199 >>Turn in Been Savin' This One
    .accept 83200 >>Accept A Vast, Ye Swabs
    .target Fleet Master Seahorn
step
    #completewith NavyOneSwabs
    #title |cFFFCDC00Enter the house|r
    .goto 2346,63.11,18.18,5 >>Enter the house
step
    #requires NavyOneSwabs
    .goto 2346,63.98,17.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
    .turnin 83198 >>Turn in Backyard Navy
    .turnin 83199 >>Turn in Been Savin' This One
    .accept 83200 >>Accept A Vast, Ye Swabs
    .target Fleet Master Seahorn
step
    .goto 2346,63.98,17.19
    >>Use the |T413581:0|t[|cRXP_WARN_ExtraActionButton|r]
    .complete 83200,1 --1/1 Noggenfogger Deluxe Mixed
step
    .goto 2346,63.98,17.19
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_FRIENDLY_Fleet Master Seahorn|r
    .complete 83200,2 --1/1 Give the potion to Seahorn
    .timer 15,Roleplay
    .target Fleet Master Seahorn
step
    .goto 2346,63.98,17.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
    .turnin 83200 >>Turn in A Vast, Ye Swabs
    .accept 85562 >>Accept Tougher Than We Thought
    .accept 85724 >>Accept Repel the Invaders
    .target Fleet Master Seahorn
step
    #completewith next
    #label SmugglerSkeez
    #hidewindow
    .complete 85562,1 --12/12 Black Blood Smugglers slain
    .complete 85724,1 --1/1 Dockmaster Skeez slain
step
    #completewith SmugglerSkeez
    #title |cFFFCDC00Leave the house|r
    .goto 2346,63.49,17.55,5,0
    .goto 2346,63.53,15.45,5,0
    .goto 2346,63.95,15.16,5 >>Leave the house
step
    #requires SmugglerSkeez
    #completewith next
    >>Kill |cRXP_ENEMY_Black Blood Smugglers|r
    .complete 85562,1 --12/12 Black Blood Smugglers slain
    .mob Darkfuse Muscle
    .mob Darkfuse Dockworker
    .mob Darkfuse Racketeer
step
    #requires SmugglerSkeez
    .goto 2346,60.64,10.01
    >>Kill |cRXP_ENEMY_Dockmaster Skeez|r
    .complete 85724,1 --1/1 Dockmaster Skeez slain
    .mob Dockmaster Skeez
step
    #loop
    .goto 2346,60.53,14.64,35,0
    .goto 2346,64.83,14.82,35,0
    .goto 2346,64.66,17.84,35,0
    .goto 2346,62.50,7.29,35,0
    >>Kill |cRXP_ENEMY_Black Blood Smugglers|r
    .complete 85562,1 --12/12 Black Blood Smugglers slain
    .mob Darkfuse Muscle
    .mob Darkfuse Dockworker
    .mob Darkfuse Racketeer
step
    .goto 2346,62.43,15.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r |cRXP_WARN_next to you|r.
    .turnin 85562 >>Turn in Tougher Than We Thought
    .turnin 85724 >>Turn in Repel the Invaders
    .accept 83201 >>Accept Expedited Delivery
    .target Fleet Master Seahorn
step
    .goto 2346,62.43,15.28
    >>|Tinterface/cursor/crosshair/driver.blp:20|tClick on the |cRXP_PICK_Malfunctioning Cratemover|r
    .complete 83201,1 --1/1 Hijack a Venture Cratemover
    .timer 38,Roleplay
    .target Mulfunctioning Cratemover
step
    .goto 2346,45.11,56.72
    >>|cRXP_WARN_Wait for the Roleplay|r
    .complete 83201,2 --1/1 Seek the Black Blood's destination
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimla Fizzlecrank|r and |cRXP_FRIENDLY_Orweyna|r
    .turnin 83201 >>Turn in Expedited Delivery
    .accept 83202 >>Accept Punching Up
    .goto 2346,45.32,57.51
    .target +Grimla Fizzlecrank
    .accept 83203 >>Accept Weapons Hot
    .goto 2346,45.22,57.57
    .target +Orweyna
step
    #completewith PunchingUp
    >>Kill the |cRXP_ENEMY_Black Blood forces|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Black Blood Shipments|r
    .complete 83203,1 --Black Blood Weapons Eliminated (100%)
    .mob Bloodfueled Sapper
    .mob Bloodarmed Tester
    .mob Loyalist Scrapper
step
    #title |cFFFCDC00Go up the stairs|r
    .goto 2346,50.26,59.20,5,0
    .goto 2346,49.80,59.87
    >>Kill |cRXP_ENEMY_Fusetwister Trish|r
    .complete 83202,3 --1/1 Fusetwister Trish slain
    .mob Fusetwister Trish
step
    #title |cFFFCDC00Go up the stairs|r
    .goto 2346,48.15,65.35,10,0
    .goto 2346,48.82,65.72,10,0
    .goto 2346,48.91,65.15
    >>Kill |cRXP_ENEMY_Underboss Paulie|r
    .complete 83202,2 --1/1 Underboss Paulie slain
    .mob Underboss Paulie
step
    #label PunchingUp
    .goto 2346,44.24,68.06
    >>Kill |cRXP_ENEMY_Foreman Luddy|r
    .complete 83202,1 --1/1 Foreman Luddy slain
    .mob Foreman Luddy
step
    #loop
    .goto 2346,47.45,55.45,30,0
    .goto 2346,43.46,66.60,30,0
    .goto 2346,48.35,67.76,40,0
    >>Kill the |cRXP_ENEMY_Black Blood forces|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Black Blood Shipments|r and |cRXP_PICK_Black Blood Grenades|r
    .complete 83203,1 --Black Blood Weapons Eliminated (100%)
    .mob Bloodfueled Sapper
    .mob Bloodarmed Tester
    .mob Loyalist Scrapper
    .mob Bloodfused Hoverturret
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orweyna|r and |cRXP_FRIENDLY_Grimla Fizzlecrank|r
    .turnin 83203 >>Turn in Weapons Hot
    .goto 2346,48.55,77.36
    .target +Orweyna
    .turnin 83202 >>Turn in Punching Up
    .goto 2346,48.55,77.50
    .target +Grimla Fizzlecrank
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamsy|r and |cRXP_FRIENDLY_Orweyna|r
    .accept 83204 >>Accept The Thingamajig
    .goto 2346,48.53,77.63
    .target Pamsy
    .accept 83205 >>Accept Production Halted
    .goto 2346,48.56,77.35
    .target +Orweyna
step
    #completewith ProductionHalted
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Venture Cratemover|r
    >>Kill |cRXP_ENEMY_Bloodfueled Junkers|r. Loot them for the |T4548883:0|t[|cRXP_LOOT_Reactive Platings|r].
    >>Kill |cRXP_ENEMY_Loyalist Tankfillers|r. Loot them for the |T133027:0|t[|cRXP_LOOT_Dented Bloodhose|r].
    .complete 83204,2 --2/2 Kaja'fused Coupling
    .target +Venture Cratemover
    .complete 83204,1 --4/4 Reactive Plating
    .mob +Bloodfueled Junker
    .complete 83204,4 --1/1 Dented Bloodhose
    .mob +Loyalist Tankfiller
step
    >>Use the |T132106:0|t[|cRXP_WARN_ExtraActionButton|r]. Aim it at the |cRXP_PICK_Stockpile|r
    .complete 83205,2 --1/1 South Stockpile destroyed
    .goto 2346,55.77,80.66,-1
    .complete 83205,3 --1/1 West Stockpile destroyed
    .goto 2346,57.62,82.08,-1
    .complete 83205,1 --1/1 North Stockpile destroyed
    .goto 2346,57.37,79.77,-1
step
    #label ProductionHalted
    .goto 2346,57.09,81.62
    >>Kill |cRXP_ENEMY_Bloody Amalgam|r
    .complete 83205,4 --1/1 Bloody Amalgam slain
    .mob Bloody Amalgam
step
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Venture Cratemover|r
    >>Kill |cRXP_ENEMY_Bloodfueled Junkers|r. Loot them for the |T4548883:0|t[|cRXP_LOOT_Reactive Platings|r].
    >>Kill |cRXP_ENEMY_Loyalist Tankfillers|r. Loot them for the |T133027:0|t[|cRXP_LOOT_Dented Bloodhose|r].
    .complete 83204,2 --2/2 Kaja'fused Coupling
    .target +Venture Cratemover
    .complete 83204,1 --4/4 Reactive Plating
    .mob +Bloodfueled Junker
    .complete 83204,4 --1/1 Dented Bloodhose
    .mob +Loyalist Tankfiller
step
    #title |cFFFCDC00You can still use the ExtraActionButton|r
    .goto 2346,58.18,73.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Heat-Beater 2001
    .complete 83204,3 --1/1 Coolant Core
step
    #completewith next
    >>Kill |cRXP_ENEMY_Bloodfueled Junkers|r. Loot them for the |T4548883:0|t[|cRXP_LOOT_Reactive Platings|r].
    >>Kill |cRXP_ENEMY_Loyalist Tankfillers|r. Loot them for the |T133027:0|t[|cRXP_LOOT_Dented Bloodhose|r].
    .complete 83204,1 --4/4 Reactive Plating
    .mob +Bloodfueled Junker
    .complete 83204,4 --1/1 Dented Bloodhose
    .mob +Loyalist Tankfiller
step
    #title |cFFFCDC00You can still use the ExtraActionButton|r
    #loop
    .goto 2346,58.20,76.84,25,0
    .goto 2346,55.57,76.23,25,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Venture Cratemover|r
    .complete 83204,2 --2/2 Kaja'fused Coupling
    .target +Venture Cratemover
step
    #title |cFFFCDC00You can still use the ExtraActionButton|r
    #loop
    .goto 2346,54.83,79.37,30,0
    .goto 2346,59.27,77.44,30,0
    .goto 2346,56.88,73.31,30,0
    >>Kill |cRXP_ENEMY_Bloodfueled Junkers|r. Loot them for the |T4548883:0|t[|cRXP_LOOT_Reactive Platings|r].
    >>Kill |cRXP_ENEMY_Loyalist Tankfillers|r. Loot them for the |T133027:0|t[|cRXP_LOOT_Dented Bloodhose|r].
    .complete 83204,1 --4/4 Reactive Plating
    .mob +Bloodfueled Junker
    .complete 83204,4 --1/1 Dented Bloodhose
    .mob +Loyalist Tankfiller
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pamsy|r and |cRXP_FRIENDLY_Grimla Fizzlecrank|r
    .turnin 83204 >>Turn in The Thingamajig
    .goto 2346,56.46,67.62
    .target +Pamsy
    .turnin 83205 >>Turn in Production Halted
    .accept 86417 >>Accept Ready Check
    .goto 2346,56.41,67.69
    .target +Grimla Fizzlecrank
step
    .goto 2346,56.41,67.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimla Fizzlecrank|r
    .complete 86417,1 --1/1 Talk to Grimla
    .target Grimla Fizzlecrank
    .skipgossipid 131200
step
    .goto 2346,56.31,67.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 86417 >>Turn in Ready Check
    .accept 83206 >>Accept We Own the Streets
    .target Monte Gazlowe
step
    #loop
    .goto 2346,52.95,62.36,15,0
    .goto 2346,51.60,61.90,15,0
    .goto 2346,53.19,59.33,15,0
    .goto 2346,53.31,57.55,15,0
    .goto 2346,47.51,51.93,15,0
    .goto 2346,46.34,53.60,15,0
    .goto 2346,45.99,46.42,15,0
    .goto 2346,48.27,47.18,15,0
    .goto 2346,47.51,51.93,15,0
    .goto 2346,53.19,59.33,15,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Abandoned Strike Breaker|r, |cRXP_FRIENDLY_Uncertain Citizens|r, and |cRXP_PICK_Darkfuse Crowd Gasser|r
    >>Use the |T236550:0|t[|cRXP_WARN_ExtraActionButton] when it shows up
    .complete 83206,1 --Rabble Roused (100%)
    .mob Abandoned Strike Breaker
    .mob Darkfuse Crowd Gasser
    .target Uncertain Citizen
step
    #hidewindow
    #completewith next
    #label GallywixStatueDemolished
    .complete 83206,2 --1/1 Gallywix Statue Demolished
step
    #completewith GallywixStatueDemolished
    .goto 2346,54.20,44.47
    .cast 463646 >>Click on the |cRXP_PICK_Riot-Grade Rope Coil|r
step
    #requires GallywixStatueDemolished
    .goto 2346,52.92,44.64
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Riot-Grade Rope Coil|r and run away from the statue
    .complete 83206,2 --1/1 Gallywix Statue Demolished
step
    .goto 2346,56.54,44.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83206 >>Turn in We Own the Streets
    .accept 83207 >>Accept My Top Gal
    .timer 11,Roleplay
    .target Monte Gazlowe
step
    #hidewindow
    #completewith next
    .gossipoption 124314 >>Talk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .timer 5,Roleplay
step
    #title |cFFFCDC00Attack |cFFFF5722Nikki the Fixer|r immediately|r
    .goto 2346,56.70,44.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .complete 83207,1 --1/1 Talk to Gazlowe to confront Nikki the Fixer
    .target Monte Gazlowe
    .skipgossipid 124314
step
    #completewith next
    #label NikkiFixerSlain
    >>Kill |cRXP_ENEMY_Nikki the Fixer|r
    .complete 83207,2 --1/1 Nikki the Fixer slain
    .mob Nikki the Fixer
step
    #completewith NikkiFixerSlain
    .goto 2346,57.27,44.68
    .cast 1214213 >>Use the |T999951:0|t[|cRXP_WARN_ExtraActionButton|r]
step
    #requires NikkiFixerSlain
    .goto 2346,57.27,44.68
    >>Kill |cRXP_ENEMY_Nikki the Fixer|r
    .complete 83207,2 --1/1 Nikki the Fixer slain
    .mob Nikki the Fixer
step
    .goto 2346,57.27,44.68
    >>|cRXP_WARN_Wait for the roleplay.|r
    .complete 83207,3 --1/1 Watch Gallywix squirm
step
    .goto 2346,57.22,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 83207 >>Turn in My Top Gal
    .accept 85780 >>Accept Right Where We Want Him
    .target Monte Gazlowe
step
    .goto 2346,43.61,51.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r
    .turnin 85780 >>Turn in Right Where We Want Him
    .target Monte Gazlowe

-----------------------------------------------------
--- END CHAPTER 5
-----------------------------------------------------
]])
--Homecoming
RXPGuides.RegisterGuide([[
#retail
#version 3
#group RestedXP War Within
#name a) Homecoming
#displayname |cFF00CCFF6|r - Homecoming
#chapter

step
    .goto 2346,43.61,51.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r.
    .accept 86204 >>Accept Liberation of Undermine: The House Loses
    .target Monte Gazlowe
step
    #completewith next
    #label Chrome King Gallywix
    >>Kill |cRXP_ENEMY_Chrome King Gallywix|r inside the Liberation of Undermine raid.
    .complete 86204,2 --1/1 Chrome King Gallywix defeated
step
    #completewith Chrome King Gallywix
    .goto 2346,43.51,51.7
    -- .gossipoption 131582 >>Talk to |cRXP_FRIENDLY_|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Paks Topskimmer|r
    .complete 86204,1 --1/1 Chrome King Gallywix defeated
    .skipgossipid 131582
    .target Paks Topskimmer
step
    #requires Chrome King Gallywix
    >>Kill |cRXP_ENEMY_Chrome King Gallywix|r inside the Liberation of Undermine raid.
    .complete 86204,2 --1/1 Chrome King Gallywix defeated
step
    .zoneskip 2409,1
    +Leave the Raid (Right-Click your player frame) or use the npc near gallywix.
step
    #completewith next
    #label LiberationOfThingsLeft
    *|cRXP_WARN_Leave the Raid (Right-Click your player frame; storymode) or hearthstone.|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
    .turnin 86204 >>Turn in Liberation of Undermine: The House Loses
    .accept 87321 >>Accept Things Left Undone
    .target Marin Noggenfogger
step
    #completewith LiberationOfThingsLeft
    #title |cFFFCDC00Enter the laboratory|r
    .goto 2346,29.00,69.66,5 >>Enter the laboratory
step
    #requires LiberationOfThingsLeft
    .goto 2346,27.37,70.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r.
    .turnin 86204 >>Turn in Liberation of Undermine: The House Loses
    .accept 87321 >>Accept Things Left Undone
    .target Marin Noggenfogger
step
    #completewith next
    #label ThingsSettledDust
    .goto 2346,42.59,51.57,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r.
    .turnin 87321 >>Turn in Things Left Undone
    .accept 85190 >>Accept Settled Dust
    .target Monte Gazlowe
step
    #completewith ThingsSettledDust
    #title |cFFFCDC00Leave the laboratory|r
    .goto 2346,27.07,71.21,5,0
    .goto 2346,27.41,70.83,5,0
    .goto 2346,27.86,70.82,5,0
    .goto 2346,29.02,69.64,5 >>Leave the laboratory
step
    #requires ThingsSettledDust
    .goto 2346,42.99,50.87,10,0
    .goto 2346,42.44,50.11,10,0
    .goto 2346,42.59,51.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r.
    .turnin 87321 >>Turn in Things Left Undone
    .accept 85190 >>Accept Settled Dust
    .target Monte Gazlowe
step
    .goto 2346,42.59,51.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r.
    .complete 85190,1 --1/1 Speak to Gazlowe
    .target Gazlowe
    .skipgossipid 131839
step
    .goto 2346,42.89,52.11
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal to Westfall|r.
    .complete 85190,3 --1/1 Enter the Portal to Westfall
step
    #title |cFFFCDC00Follow the arrow|r
    .goto 52,30.03,86.05
    .complete 85190,4 --1/1 Meet Mathias Shaw in Westfall
step
    .goto 52,30.03,86.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r.
    .turnin 85190 >>Turn in Settled Dust
    .accept 85191 >>Accept Cut After Cut
    .target Master Mathias Shaw
step
    .goto 52,30.16,86.39
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Well-Worn Throwing Knives|r.
    .complete 85191,1,1 --1/3 Renzik's belongings collected
step
    .goto 52,29.66,85.39
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Unused Fishing Gear|r.
    .complete 85191,1,2 --2/3 Renzik's belongings collected
step
    .goto 52,30.56,85.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Old Copy of "Undermine Weekly"|r.
    .complete 85191,1 --3/3 Renzik's belongings collected
step
    .goto 52,30.02,86.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r.
    .turnin 85191 >>Turn in Cut After Cut
    .accept 85192 >>Accept Coming Home
    .target Master Mathias Shaw
step
    .goto 52,29.52,85.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |A:Dungeon:24:24|a|cRXP_PICK_Portal to Undermine|r
    .complete 85192,1 --1/1 Take the portal to Undermine (Optional)
step
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,39.12,23.26
    .complete 85192,2 --1/1 Meet Gazlowe on the Scrapshop's upper stairs
step
    .goto 2346,39.12,23.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r.
    .complete 85192,3 --1/1 Take Renzik's ashes
    .target Monte Gazlowe
    .skipgossipid 131347
step
    .isOnQuest 85192
    .goto 2346,39.13,23.55
    .cast 474433 >>Use the |T571694:0|t[|cRXP_WARN_ExtraActionButton|r].
    .timer 5,RP
step
    >>|cRXP_WARN_Wait for the roleplay|r.
    .complete 85192,4 --1/1 Spread Renzik's ashes
step
    .goto 2346,39.12,23.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r.
    .turnin 85192 >>Turn in Coming Home
    .accept 87297 >>Accept Cashing the Check
    .target Monte Gazlowe
step
    .goto 2346,43.56,51.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimla|r.
    .complete 87297,1 --1/1 Speak to Grimla
    .target Grimla
    .skipgossipid 132237
step
    .goto 2346,43.63,51.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Monte Gazlowe|r.
    .turnin 87297 >>Turn in Cashing the Check
    .target Monte Gazlowe
]])

--Nesting
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within
#subgroup |cFFFCDC00(80)|r Campaigns
#name ad) 11.2: Ghosts of K'aresh
#displayname 11.2: Ghosts of K'aresh
#chapters a) A Shadowy Invitation;a) Void Alliance;a) Desert Power;a) Shadows En Garde;a) The Light of K'aresh



]])

--A Shadowy Invitation
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within
#name a) A Shadowy Invitation
#displayname |cFF00CCFF1|r - A Shadowy Invitation
#next a) Void Alliance
#chapter

step
    #completewith next
    #label Shadowy Invitation
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 84956 >>Turn in A Shadowy Invitation
    .target Locus-Walker
    .accept 84957 >>Accept Return to the Veiled Market
    .disablecheckbox
step
    #completewith Shadowy Invitation
    .zone 2339 >>Enter Dornogal
step
    #requires Shadowy Invitation
    .goto 2339,42.11,26.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 84956 >>Turn in A Shadowy Invitation
    .target Locus-Walker
    .accept 84957 >>Accept Return to the Veiled Market
    .timer 23,RP
step
    .goto 2339,40.41,22.89
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84957,1 --1/1 Follow Locus-Walker
step
    .goto 2339,40.30,22.71
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 84957,2 --1/1 Take the Spatial Rift to Tazavesh
step
    .goto 2472,59.75,83.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 84957 >>Turn in Return to the Veiled Market
    .target Locus-Walker
step
    #label KareshCampaignSkipA
    #completewith next
    .goto 2472,59.55,83.46
    .achievementComplete 41970,3,1
    .isQuestTurnedIn account,89345
    .gossipoption 134153 >>Talk to |cRXP_FRIENDLY_Om'en|r
    .skipgossipid 134142
    .target Om'en
step
    #hidewindow
    #completewith KareshCampaignSkipA
    .accept 85003 >>Accept Restoring Operational Efficiency
step
    #requires KareshCampaignSkipA
    .isQuestTurnedIn account,89561
    #completewith next
    #label Reshii Wraps
    .equip 15,235499 >>Equip |T7110834:0|t[Reshii Wraps]
    .use 235499
step
    #requires KareshCampaignSkipA
    #completewith Reshii Wraps
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hashim|r
    .collect 235499,1
    .skipgossipid 133897
step
    #requires Reshii Wraps
    .goto 2371,50.34,36.33
    .equip 15,235499 >>Equip |T7110834:0|t[Reshii Wraps]
    .use 235499
    .subzoneskip 15807,1
step
    #requires KareshCampaignSkipA
    .goto 2472,59.55,83.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'en|r
    .accept 85003 >>Accept Restoring Operational Efficiency
    .target Om'en
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ta'ka|r and |cRXP_FRIENDLY_Xy'bin|r
    .accept 84958 >>Accept Beasts Unbound
    .goto 2472,56.86,73.02
    .target +Ta'ka
    .accept 85039 >>Accept Compromised Containment
    .goto 2472,56.64,72.88
    .target +Xy'bin
step
    .goto 2472,53.15,64.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ba'ver|r
    .accept 84959 >>Accept Lost Lines of Defense
    .target Ba'ver
step
    #completewith UnstableArtifactSealedB
    >>Kill |cRXP_ENEMY_Unstable Motes|r, |cRXP_ENEMY_Enchanted Ledgers|r, and |cRXP_ENEMY_Unstable Manifestations|r
    .complete 85039,1 --Arcane entities destroyed (100%)
    .mob Unstable Mote
    .mob Enchanted Ledger
    .mob Unstable Manifestation
step
    #completewith UnstableArtifactSealedB
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stolen Barrier Projectors|r
    .complete 84959,1 --8/8 Stolen Barrier Projector
step
    #completewith next
    #label UnstableArtifactSealedA
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Unstable Artifact|r
    .complete 85039,2 --1/1 Unstable Artifact sealed
step
    #title |cFFFCDC00Enter the chamber|r
    #completewith UnstableArtifactSealedA
    .goto 2472,56.50,52.65,12 >>Enter the chamber
step
    #requires UnstableArtifactSealedA
    #label UnstableArtifactSealedB
    .goto 2472,59.59,46.81
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Unstable Artifact|r
    .complete 85039,2 --1/1 Unstable Artifact sealed
step
    #completewith next
    >>Kill |cRXP_ENEMY_Unstable Motes|r, |cRXP_ENEMY_Enchanted Ledgers|r, and |cRXP_ENEMY_Unstable Manifestations|r
    .complete 85039,1 --Arcane entities destroyed (100%)
    .mob Unstable Mote
    .mob Enchanted Ledger
    .mob Unstable Manifestation
step
    #completewith next
    #label StolenBarrierProjectorA
    .goto 2472,61.74,48.11,12,0
    .goto 2472,60.03,44.92,12,0
    .goto 2472,55.60,44.03,12,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stolen Barrier Projectors|r
    .complete 84959,1 --8/8 Stolen Barrier Projector
step
    #hidewindow
    #completewith StolenBarrierProjectorA
    .goto 2472,53.43,44.91,15 >>1
step
    #requires StolenBarrierProjectorA
    #hidewindow
    #completewith ArcaneEntitiesA
    #loop
    .goto 2472,52.87,51.01,18,0
    .goto 2472,53.80,54.57,18,0
    .goto 2472,56.46,54.52,18,0
    .goto 2472,57.58,56.78,18,0
    .goto 2472,53.04,57.61,18,0
    .goto 2472,50.78,54.68,18,0
    +1
step
    #requires StolenBarrierProjectorA
    #completewith next
    >>Kill |cRXP_ENEMY_Unstable Motes|r, |cRXP_ENEMY_Enchanted Ledgers|r, and |cRXP_ENEMY_Unstable Manifestations|r
    .complete 85039,1 --Arcane entities destroyed (100%)
    .mob Unstable Mote
    .mob Enchanted Ledger
    .mob Unstable Manifestation
step
    #requires StolenBarrierProjectorA
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stolen Barrier Projectors|r
    .complete 84959,1 --8/8 Stolen Barrier Projector
step
    #label ArcaneEntitiesA
    >>Kill |cRXP_ENEMY_Unstable Motes|r, |cRXP_ENEMY_Enchanted Ledgers|r, and |cRXP_ENEMY_Unstable Manifestations|r
    .complete 85039,1 --Arcane entities destroyed (100%)
    .mob Unstable Mote
    .mob Enchanted Ledger
    .mob Unstable Manifestation
-- step
--     #completewith next
--     .goto 2472,53.42,61.39,0,0
--     +|cRXP_WARN_You can fly here|r. If not then take the portal.
step
    .goto 2472,53.08,64.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ba'ver|r
    .turnin 84959 >>Turn in Lost Lines of Defense
    .complete 85003,2 --1/1 Ba'ver assisted
    .target Ba'ver
-- step
--     #completewith next
--     .goto 2472,57.60,72.84,0,0
--     >>|cRXP_WARN_You can fly here|r. If not then take the portal.
--     .complete 84958,1 --1/1 Take the access to the overlook (Optional)
step
    #loop
    .goto 2472,62.71,59.51,30,0
    .goto 2472,66.38,77.05,40,0
    .goto 2472,51.43,86.23,40,0
    .goto 2472,42.70,70.01,40,0
    >>Kill the |cRXP_ENEMY_Escaped Creatures|r
    .complete 84958,2 --8/8 Escaped creatures recovered
    .mob Escaped Creature
step
    #completewith next
    #label CompromisedUnboundA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xy'bin|r and |cRXP_FRIENDLY_Ta'ka|r
    .turnin 85039 >>Turn in Compromised Containment
    .complete 85003,1 --1/1 Xy'bin assisted
    .target +Xy'bin
    .turnin 84958 >>Turn in Beasts Unbound
    .complete 85003,3 --1/1 Ta'ka assisted
    .target +Ta'ka
step
    #completewith next
    +Enter the Portal
    .goto 2472,60.17,66,-1
step
    #completewith CompromisedUnboundA
    #hidewindow
    .goto 2472,56.74,72.91,20 >>1
step
    #requires CompromisedUnboundA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xy'bin|r and |cRXP_FRIENDLY_Ta'ka|r
    .turnin 85039 >>Turn in Compromised Containment
    .complete 85003,1 --1/1 Xy'bin assisted
    .goto 2472,56.65,72.84,-1
    .target +Xy'bin
    .turnin 84958 >>Turn in Beasts Unbound
    .complete 85003,3 --1/1 Ta'ka assisted
    .goto 2472,56.86,72.99,-1
    .target +Ta'ka
step
    .goto 2472,59.45,83.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'en|r
    .turnin 85003 >>Turn in Restoring Operational Efficiency
    .target Om'en
step
    .goto 2472,59.74,83.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .accept 84960 >>Accept The Darkness Among Us
    .target Locus-Walker
step
    .goto 2472,54.81,66.26
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Void Presence|r
    .complete 84960,2 --1/1 Investigate the Void Presence
step
    #completewith next
    #label Locate the source
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84960,3 --1/1 Locate the source
step
    #completewith Locate the source
    .goto 2472,47.81,63.46,20 >>Enter the Room
step
    #requires Locate the source
    .goto 2472,47.43,65.77
    .complete 84960,3 --1/1 Locate the source
step
    .goto 2472,47.43,65.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .complete 84960,4 --1/1 Speak to Locus-Walker
    .timer 50,RP
    .target Locus-Walker
    .skipgossipid 131268
step
    .goto 2472,47.43,65.77
    >>Kill 3 waves of |cRXP_ENEMY_Shadowguard Infiltrators|r and |cRXP_ENEMY_Nyz'raal the Umbral Blade|r
    .complete 84960,5 --1/1 Infiltrator's defeated
    .mob Shadowguard Infiltrator
    .mob Nyz'rall the Umbral Blade
step
    #completewith next
    #label DarknessAmongUsA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'en|r
    .turnin 84960 >>Turn in The Darkness Among Us
    .target Om'en
step
    #title |cFFFCDC00Leave the chamber|r
    #completewith DarknessAmongUsA
    .goto 2472,48.05,62.88,10 >>Leave the chamber
step
    #requires DarknessAmongUsA
    .goto 2472,54.06,63.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'en|r
    .turnin 84960 >>Turn in The Darkness Among Us
    .target Om'en
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'en|r, |cRXP_FRIENDLY_Alleria Windrunner|r, and |cRXP_FRIENDLY_Locus-Walker|r
    .accept 84963 >>Accept Sealing the Shadows
    .goto 2472,54.08,63.68,-1
    .target +Om'en
    .accept 84964 >>Accept Heroes Among Shadow
    .goto 2472,53.76,63.24,-1
    .target +Alleria Windrunner
    .accept 84961 >>Accept Barriers to Entry
    .goto 2472,54.17,63.09,-1
    .target +1Locus-Walker
step
    -- https://i.imgur.com/sYulo55.png (Minimap screenshot of Citizens (green), Projectors (blue))
    #completewith SaturatedEntropicCores
    #hidewindow
    #loop
    .goto 2472,49.92,57.97,15,0
    .goto 2472,46.03,51.34,15,0
    .goto 2472,41.39,49.02,15,0
    .goto 2472,40.09,51.51,25,0
    .goto 2472,39.47,41.84,25,0
    .goto 2472,44.43,40.35,25,0
    .goto 2472,44.44,36.23,15,0
    .goto 2472,58.33,32.69,15,0
    .goto 2472,55.74,38.38,25,0
    .goto 2472,51.36,41.17,15,0
    .goto 2472,53.59,40.69,25,0
    .goto 2472,53.23,44.12,25,0
    .goto 2472,52.49,46.77,15,0
    .goto 2472,49.85,58.03,15,0
    +1
step
    #completewith next
    >>Kill the |cRXP_ENEMY_Shadowguard forces|r. Loot them for the |T4037125:0|t[|cRXP_LOOT_Saturated Entropic Cores|r]
    .complete 84963,1 --5/5 Saturated Entropic Core
    .mob Shadowguard Duskwalker
    .mob Shadowguard Darkweaver
    .mob Shadowguard Voidripper
step
    -- There are exactly 8 projectors and there are enough citizens on the loop
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Barrier Projectors|r and |cRXP_FRIENDLY_Tazavesh Citizens|r
    .complete 84964,1 --8/8 Tazavesh Civilians rescued
    .complete 84961,1 --8/8 Barrier Projector placed
    .target Tazavesh Citizen
step
    #label SaturatedEntropicCores
    >>Kill the |cRXP_ENEMY_Shadowguard forces|r. Loot them for the |T4037125:0|t[|cRXP_LOOT_Saturated Entropic Cores|r]
    .complete 84963,1 --5/5 Saturated Entropic Core
    .mob Shadowguard Duskwalker
    .mob Shadowguard Darkweaver
    .mob Shadowguard Voidripper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r |cRXP_WARN_next to you|r.
    .turnin 84964 >>Turn in Heroes Among Shadow
    .turnin 84961 >>Turn in Barriers to Entry
    .turnin 84963 >>Turn in Sealing the Shadows
    .accept 84965 >>Accept Core Contributions
    .target Alleria Windrunner
step
    -- https://i.imgur.com/t9Ek1fB.png (Guardian position + loop, maybe change loop to only go to guardians on the roof)
    #loop
    .goto 2472,48.91,51.99,12,0
    .goto 2472,47.48,57.16,12,0
    .goto 2472,44.02,56.05,12,0
    .goto 2472,39.10,54.79,12,0
    .goto 2472,38.44,54.12,12,0
    .goto 2472,39.43,49.49,12,0
    .goto 2472,42.79,45.97,12,0
    .goto 2472,44.61,47.68,12,0
    .goto 2472,51.25,50.05,12,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Market Guardians|r
    .complete 84965,1 --5/5 Guardians activated
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r |cRXP_WARN_next to you|r.
    .turnin 84965 >>Turn in Core Contributions
    .accept 86835 >>Accept Regroup!
    .target Alleria Windrunner
step
    .goto 2472,40.53,67.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 86835 >>Turn in Regroup!
    .accept 84967 >>Accept The Shadowguard Shattered
    .target Locus-Walker
step
    #completewith next
    #label ShadowlordAlzarA
    >>Kill |cRXP_ENEMY_Shadowlord Al'zar|r
    .complete 84967,1 --1/1 Shadowlord Al'zar slain
    .mob Shadowlord Al'zar
step
    #completewith ShadowlordAlzarA
    #title |cFFFCDC00Enter the boss room|r
    .goto 2472,39.03,67.82,8 >>Enter the boss room
step
    #requires ShadowlordAlzarA
    .goto 2472,36.34,74.69
    >>Kill |cRXP_ENEMY_Shadowlord Al'zar|r
    .complete 84967,1 --1/1 Shadowlord Al'zar slain
    .mob Shadowlord Al'zar
step
    .goto 2472,37.80,74.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 84967 >>Turn in The Shadowguard Shattered
    .target Locus-Walker
]])
--Void Alliance
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within
#name a) Void Alliance
#displayname |cFF00CCFF2|r - Void Alliance
#next a) Desert Power
#chapter

step
    .goto 2472,37.68,74.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r.
    .accept 85032 >>Accept What Is Left of Home
    .target Locus-Walker
step
    #completewith next
    #label TalkToInkeeperA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_the Innkeeper|r.
    .complete 85032,1 --1/1 Talk to the Innkeeper
    .target the Innkeeper
step
    #completewith next
    #title |cFFFCDC00Leave the house|r
    .goto 2472,38.80,69.82,10,0
    .goto 2472,40.66,70.56,10,0
    .goto 2472,39.12,67.59,10,0
    .goto 2472,40.82,65.83,10 >>Leave the house
step
    #hidewindow
    #completewith next
    .goto 2472,40.82,65.83,10 >>1
step
    #hidewindow
    #completewith TalkToInkeeperA
    .goto 2472,41.12,25.09,120 >>1
step
    #requires TalkToInkeeperA
    #completewith next
    #label TalkToInkeeperB
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_the Innkeeper|r.
    .complete 85032,1 --1/1 Talk to the Innkeeper
    .target the Innkeeper
step
    #requires TalkToInkeeperA
    #completewith next
    #title |cFFFCDC00Enter the house|r
    .goto 2472,42.71,31.57,10 >>Enter the house
step
    #hidewindow
    #completewith TalkToInkeeperB
    .goto 2472,41.12,25.09,50 >>1
step
    #requires TalkToInkeeperB
    .goto 2472,41.12,25.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ba'orr|r.
    .complete 85032,1 --1/1 Talk to the Innkeeper
    .target Ba'orr
    .skipgossipid 133203
    .skipgossipid 133205
    .skipgossipid 133223
step
    .goto 2472,40.62,29.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'sirik|r.
    .complete 85032,3 --1/1 Talk to the Quartermaster
    .target Om'sirik
    .skipgossipid 133225
step
    #completewith next
    #label TalkToFlightMasterA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Flight Master|r.
    .complete 85032,4 --1/1 Talk to the Flight Master
    .target the Flight Master
step
    #completewith next
    #title |cFFFCDC00Leave the hall|r
    .goto 2472,39.10,18.53,10 >>Leave the hall
step
    #completewith TalkToFlightMasterA
    #hidewindow
    .goto 2472,34.76,9.96,50 >>1
step
    #requires TalkToFlightMasterA
    .goto 2472,34.75,10.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Flight Master|r.
    .complete 85032,4 --1/1 Talk to the Flight Master
    .target the Flight Master
    .skipgossipid 133617
step
    .goto 2472,33.97,10.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 85032 >>Turn in What Is Left of Home
    .accept 85961 >>Accept Moving the Pawns
    .target Locus-Walker
step
    #label startchapter21
    .goto 2371,48.23,36.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 85961 >>Turn in Moving the Pawns
    .accept 84855 >>Accept Dead Silence
    .target Locus-Walker
step
    .goto 2371,48.28,39.21
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Lo'shah|r
    .complete 84855,1 --1/1 Scout Lo'shah found
    .target Lo'shah
step
    .goto 2371,49.43,36.78
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Yanhal|r |cRXP_WARN_behind the crates|r.
    .complete 84855,2 --1/1 Scout Yanhal found
    .target Yanhal
step
    .goto 2371,50.68,35.14
    >>Kill |cRXP_ENEMY_Raz'ida|r
    .complete 84855,3 --1/1 Scout Raz'ida found
    .mob Raz'ida
step
    .goto 2371,48.19,36.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 84855 >>Turn in Dead Silence
    .accept 86495 >>Accept The Reshii Ribbon
    .target Locus-Walker
step
    .goto 2371,48.25,36.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .complete 86495,2 --1/1 Alleria convinced
    .target Alleria Windrunner
    .skipgossipid 132007
    .skipgossip 233945,1
step
    .goto 2371,48.20,36.58
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Locus-Walker's Reshii Ribbon|r
    .complete 86495,3 --1/1 Locus-Walker's Reshii Ribbon acquired
step
    .goto 2371,48.18,36.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .turnin 86495 >>Turn in The Reshii Ribbon
    .accept 84856 >>Accept Where the Void Gathers
    .target Xal'atath
step
    .goto 2371,48.18,36.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .complete 84856,1 --1/1 Talk to Xal'atath
    .timer 5,RP
    .target Xal'atath
    .skipgossipid 131527
-- step
--     .isOnQuest 84856
--     .logout >>Start logging out, cancel it when the timer runs out.
step
    #title |cFFFCDC00Avoid the Void Revealer|r
    .goto 2371,47.21,21.03,15,0
    .goto 2371,46.20,20.73,30,0
    .goto 2371,45.89,20.06,15,0
    .goto 2371,45.24,19.92
    >>Use the |T6654410:0|t[|cRXP_WARN_ExtraActionButton|r]
    .complete 84856,2 --1/1 Conduit examined
step
    #title |cFFFCDC00Avoid the Void Revealer|r
    .goto 2371,44.12,21.60,20,0
    .goto 2371,42.74,22.15,20,0
    .goto 2371,42.62,22.63
    >>Use the |T6654410:0|t[|cRXP_WARN_ExtraActionButton|r]
    .complete 84856,3 --1/1 Manaforge entrance examined
    .timer 30,RP
    -- Fix RP Duration
step
    #completewith next
    #title |cFFFCDC00Leave Vehicle Fast|r 
    +This only works if you are fast saving 30seconds.
step
    #title |cFFFCDC00Leave Vehicle Fast|r 
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r and |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 84856 >>Turn in Where the Void Gathers
    .goto 2371,48.17,36.64
    .target +Xal'atath
    .accept 84857 >>Accept Eco-Dome: Primus
    .goto 2371,48.19,36.55
    .target +Locus-Walker
step
    #completewith next
    #label Turn in Eco-Dome: Primus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 84857 >>Turn in Eco-Dome: Primus
    .target Locus-Walker
step
    #hidewindow
    #completewith Turn in Eco-Dome: Primus
    .goto 2371,47.73,52.56,20 >>1
step
    #requires Turn in Eco-Dome: Primus
    .goto 2371,47.08,54.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 84857 >>Turn in Eco-Dome: Primus
    .target Locus-Walker
step
    .goto 2371,47.13,54.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r
    .accept 84858 >>Accept System Restart
    .target Ve'nari
step
    #completewith next
    #label Speak to Engineer Om'loof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Om'loof|r
    .complete 84858,1 --1/1 Speak to Engineer Om'loof
    .target Engineer Om'loof
    .skipgossipid 125374
step
    #completewith Speak to Engineer Om'loof
    .goto 2371,46.97,54.89,10 >>Go out of the |cRXP_WARN_NO MOUNT ZONE|r
step
    #requires Speak to Engineer Om'loof
    .goto 2371,46.20,57.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Om'loof|r
    .complete 84858,1 --1/1 Speak to Engineer Om'loof
    .target Engineer Om'loof
    .skipgossipid 125374
step
    .goto 2371,46.23,57.30
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rod of Parameters|r
    .complete 84858,3 --1/1 Rod of Parameters used
step
    .goto 2371,46.25,57.29
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rod of Analysis|r
    .complete 84858,4 --1/1 Rod of Analysis used
step
    .goto 2371,47.18,58.59
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rod of Analysis|r
    .complete 84858,5 --1/1 Rod of Analysis acquired

--skyriding glyph eco dome primus
step
    .goto 2371,46.26,57.29
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rod of Analysis|r
    .complete 84858,6 --1/1 Rod of Analysis replaced
step
    .goto 2371,46.26,56.91
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rod of Restart|r
    .complete 84858,7 --1/1 Rod of Restart used
step
    .goto 2371,47.13,54.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r
    .turnin 84858 >>Turn in System Restart
    .accept 84859 >>Accept Damage Report 101
    .accept 84860 >>Accept Eco-Stabilizing
    .target Ve'nari
step
    #completewith next
    #label Botanist Om'nittar found
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'nittar|r
    .complete 84859,1 --1/1 Botanist Om'nittar found
    .target Om'nittar
step
    #completewith Botanist Om'nittar found
    .goto 2371,47.35,54.31,10 >>Go out of the |cRXP_WARN_NO MOUNT ZONE|r
step
    #requires Botanist Om'nittar found
    .goto 2371,48.42,53.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'nittar|r
    .complete 84859,1 --1/1 Botanist Om'nittar found
    .target Om'nittar
step
    #loop
    .goto 2371,48.74,53.14,12,0
    .goto 2371,48.68,53.90,15,0
    .goto 2371,48.74,53.14,12,0
    .goto 2371,48.21,52.98,12,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Void Creeper|r
    .complete 84859,2 --6/6 Void Creepers dealt with
    .target Void Creeper
step
    .goto 2371,48.42,53.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'nittar|r
    .complete 84859,3 --1/1 Botanic report received
    .target Om'nittar
    .skipgossipid 125356
step
    .goto 2371,49.19,54.48
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shadowguard Device|r
    .complete 84860,1 --1/1 Biome Z-22 stabilized
step
    #label endchapter21
    .goto 2371,50.01,56.50
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Control Console V-37|r
    .complete 84860,2 --1/1 Biome V-37 stabilized
    .skipgossipid 131301
step
    #completewith next
    #label Biome D-28 stabilized
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rod of Activation|r
    .complete 84860,3 --1/1 Biome D-28 stabilized
step
    .isOnQuest 84860
    #completewith Biome D-28 stabilized
    .goto 2371,48.84,59.03
    .cast 1233199 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rod of Activation|r
step
    #requires Biome D-28 stabilized
    .goto 2371,48.80,59.08
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rod of Activation|r 
    .complete 84860,3 --1/1 Biome D-28 stabilized
step
    #label startchapter22
    .goto 2371,46.05,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'door|r
    .complete 84859,4 --1/1 Technician Om'door found
    .target Om'door
    .skipgossipid 131437
step
    #loop
    .goto 2371,45.88,57.84,18,0
    .goto 2371,46.66,59.21,18,0
    >>Use the |T4914669:0|t[|cRXP_WARN_ExtraActionButton|r] and aim at the |cRXP_PICK_Void Spores|r
    *|cRXP_WARN_If you don't have the ExtraActionButton then talk to |cRXP_FRIENDLY_Om'door|r again|r
    .complete 84859,5 --8/8 Void Spores collected
    .skipgossipid 131437
step
    .goto 2371,46.05,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'door|r
    .complete 84859,6 --1/1 Technician report received
    .target Om'door
    .skipgossipid 125353
step
    .goto 2371,47.11,54.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r
    .turnin 84860 >>Turn in Eco-Stabilizing 101
    .turnin 84859 >>Turn in Damage Report 101
    .accept 84861 >>Accept This Is Our Dome!
    .target Ve'nari
step
    .goto 2371,47.09,54.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .accept 84862 >>Accept Void Alliance
    .target Xal'atath
step
    #completewith DefenseMatricesPlacedA
    >>Kill the |cRXP_ENEMY_Shadowguard forces|r
    .complete 84861,1 --7/7 Shadowguard forces slain
    .mob Shadowguard forces
step
    .goto 2371,50.45,54.15
    #title Matrix placed (1/4)
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Defense Matrix|r
    .complete 84862,1,1 --1/4 Defense Matrices placed
step
    #label endchapter22
    .goto 2371,51.00,56.34
    #title Matrix placed (2/4)
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Defense Matrix|r
    .complete 84862,1,2 --2/4 Defense Matrices placed
step
    #label startchapter23
    .goto 2371,50.29,58.83
    #title Matrix placed (3/4)
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Defense Matrix|r
    .complete 84862,1,3 --3/4 Defense Matrices placed
step
    #label DefenseMatricesPlacedA
    .goto 2371,49.29,60.53
    #title Matrix placed (4/4)
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Defense Matrix|r
    .complete 84862,1 --4/4 Defense Matrices placed
step
    #loop
    .goto 2371,50.20,61.98,35,0
    .goto 2371,51.31,55.93,35,0
    .goto 2371,50.50,53.12,35,0
    .goto 2371,51.31,55.93,35,0
    >>Kill |cRXP_ENEMY_Shadowguard forces|r. |cRXP_WARN_A lot of them are invisible|r
    .complete 84861,1 --7/7 Shadowguard forces slain
    .mob Shadowguard Saboteur
    .mob Shadowguard Scout
step
    #completewith next
    .goto 2371,49.01,61.15,20,0
    >>Use |T4548850:0|t[Flamethrower] on |cRXP_ENEMY_Glutted Creeper|r to remove the barrier then kill them.
    *|cRXP_WARN_just kill the few and move on or ignore them entirely|r
    .complete 86201,1 --8/8 Glutted Creeper slain
    .mob Glutted Creeper
    .use 233028
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r and |cRXP_FRIENDLY_Xal'atath|r
    .turnin 84861 >>Turn in This Is Our Dome!
    .goto 2371,47.13,54.56
    .target +Ve'nari
    .turnin 84862 >>Turn in Void Alliance
    .accept 84865 >>Accept Divide and Conquer
    .accept 84864 >>Accept Her Dark Side
    .goto 2371,47.09,54.60
    .target +Xal'atath
    .accept 84863 >>Accept Counter Measures
    .goto 2371,47.13,54.56
    .target +Ve'nari
step
    #completewith next
    #label destroyed
    #hidewindow
    .complete 84865,1,1 --3/3 Shadowguard Cannons destroyed
step
    #completewith destroyed
    .goto 2371,47.34,54.24,10 >>Go out of the |cRXP_WARN_NO MOUNT ZONE|r
step
    #requires destroyed
    #completewith Shadowguard Cannons1
    >>Kill the |cRXP_ENEMY_Shadowguard forces|r
    .complete 84863,1 --12/12 Shadowguard forces eliminated
    .mob Shadowguard Speardancer
    .mob Shadowguard Voidblade
    .mob Shadowguard Riftcaller
step
    #requires destroyed
    .goto 2371,52.5,49.81
    >>Use the |T5976941:0|t[|cRXP_WARN_ExtraActionButton|r] and aim it at the |cRXP_PICK_Shadowguard Cannons|r
    .complete 84865,1,1 --3/3 Shadowguard Cannons destroyed
step
    .goto 2371,52.26,48
    >>Use the |T5976941:0|t[|cRXP_WARN_ExtraActionButton|r] and aim it at the |cRXP_PICK_Shadowguard Cannons|r
    .complete 84865,1,2 --3/3 Shadowguard Cannons destroyed
step
    #completewith next
    #hidewindow
    #label Ethereal Siphon Barrier
    .complete 84864,1 --1/1 Ethereal Siphon Barrier removed
step
    #completewith Ethereal Siphon Barrier
    .goto 2371,54.10,48.13
    .cast 1218640 >>Use the |T4913234:0|t[|cRXP_WARN_ExtraActionButton|r] |cRXP_WARN_on the barrier|r.
    *|cRXP_WARN_Make sure to wait infront of the barrier for 1-2second before moving on|r
    .timer 20,RP
step
    #requires Ethereal Siphon Barrier
    .goto 2371,54.49,50.38
    >>Use the |T5976941:0|t[|cRXP_WARN_ExtraActionButton|r] and aim it at the |cRXP_PICK_Shadowguard Cannons|r
    .complete 84865,1,3 --3/3 Shadowguard Cannons destroyed
step
    #label Shadowguard Cannons1
    .goto 2371,54.10,48.13
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ethereal Siphon Console|r
    .complete 84864,2 --1/1 Ethereal Siphon Console overloaded
step
    #loop
    .goto 2371,53.67,45.18,35,0
    .goto 2371,54.44,50.84,35,0
    .goto 2371,52.58,50.18,35,0
    .goto 2371,52.12,47.58,35,0
    >>Kill the |cRXP_ENEMY_Shadowguard forces|r
    .complete 84863,1 --12/12 Shadowguard forces eliminated
    .mob Shadowguard Speardancer
    .mob Shadowguard Voidblade
    .mob Shadowguard Riftcaller
step
    .goto 2371,54.47,46.95,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r |cRXP_WARN_next to you|r
    .turnin 84863 >>Turn in Counter Measures
    .turnin 84865 >>Turn in Divide and Conquer
    .turnin 84864 >>Turn in Her Dark Side
    .accept 84866 >>Accept To Purchase Safety
    .target Alleria Windrunner
step
    .goto 2371,54.48,46.63
    >>Kill |cRXP_ENEMY_Shadow-Captain Lakheesh|r
    .complete 84866,1 --1/1 Shadow-Captain Lakheesh slain
    .mob Shadow-Captain Lakheesh
step
    #label endchapter23
    .goto 2371,54.27,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .turnin 84866 >>Turn in To Purchase Safety
    .accept 86946 >>Accept Unwrapped and Unraveled
    .target Xal'atath
step
    #label startchapter24
    .goto 2371,47.07,54.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .complete 86946,1 --1/1 Find Alleria in Eco-Dome Primus
    .skipgossipid 132658
step
    .goto 2371,47.12,54.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r
    .turnin 86946 >>Turn in Unwrapped and Unraveled
    .accept 90517 >>Accept My Part of the Deal
    .target Ve'nari
step
    .goto 2371,47.12,54.53
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ve'nari's Reshii Ribbon|r
    .complete 90517,1 --1/1 Ve'nari's Reshii Ribbon acquired
step
    #label endchapter24
    .goto 2371,47.12,54.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r
    .turnin 90517 >>Turn in My Part of the Deal
    .target Ve'nari
]])
--Desert Power
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within
#name a) Desert Power
#displayname |cFF00CCFF3|r - Desert Power
#next a) Shadows En Garde
#chapter

step
    .goto 2371,47.08,54.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .accept 84826 >>Accept Eco-Dome: Rhovan
    .target Locus-Walker
step
    #hidewindow
    #completewith next
    #label Eco-Dome: Rhovan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r and |cRXP_FRIENDLY_Om'resh|r
    .turnin 84826 >>Turn in Eco-Dome: Rhovan
    .target +Om'resh
step
    #completewith Eco-Dome: Rhovan
    .goto 2371,47.32,54.87,10 >>Go out of the |cRXP_WARN_NO MOUNT ZONE|r
step
    #requires Eco-Dome: Rhovan
    #label StartTurnEcoDome1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r and |cRXP_FRIENDLY_Om'resh|r
    .turnin 84826 >>Turn in Eco-Dome: Rhovan
    .accept 84827 >>Accept The Shattered Dome
    .goto 2371,70.94,58.11
    .target +Locus-Walker
    .accept 84831 >>Accept The Rhovan Infestation
    .goto 2371,70.98,58.04
    .target +Om'resh
step
    #completewith DaggerCollectedA
    >>Kill the |cRXP_ENEMY_creatures|r in the area
    .complete 84831,1 --10/10 Invasive creatures slain
    .mob Void-touched Hoppling
    .mob Void-touched Hopper
    .mob Death Scavenger
step
    .goto 2371,70.88,54.39
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Om'Bera's Clipboard|r
    .complete 84827,1 --1/1 Clue found
step
    .goto 2371,69.99,53.15
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_FRIENDLY_Om'bera|r
    .complete 84827,2 --1/1 Om'bera found
step
    #label DaggerCollectedA
    .goto 2371,69.99,53.15
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Curved Dagger|r
    .complete 84827,3 --1/1 Dagger collected
step
    #loop
    .goto 2371,70.60,51.67,40,0
    .goto 2371,68.94,52.20,35,0
    .goto 2371,69.20,55.04,35,0
    .goto 2371,71.59,54.20,35,0
    >>Kill the |cRXP_ENEMY_creatures|r in the area
    .complete 84831,1 --10/10 Invasive creatures slain
    .mob Void-touched Hoppling
    .mob Void-touched Hopper
    .mob Death Scavenger
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r and |cRXP_FRIENDLY_Om'resh|r
    .turnin 84827 >>Turn in The Shattered Dome
    .goto 2371,70.94,58.10
    .target +Locus-Walker
    .turnin 84831 >>Turn in The Rhovan Infestation
    .accept 85730 >>Accept Salvaging What's Left
    .goto 2371,70.98,58.05
    .target +Om'resh
step
    #loop
    .goto 2371,67.00,57.66,14,0
    .goto 2371,66.39,58.17,14,0
    .goto 2371,65.81,58.58,14,0
    .goto 2371,65.69,57.09,14,0
    .goto 2371,65.26,57.06,14,0
    .goto 2371,65.22,56.16,14,0
    .goto 2371,64.94,55.01,14,0
    .goto 2371,64.98,52.10,14,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stolen Research Crates|r
    .complete 85730,1 --5/5 Stolen Research Crate
step
    .goto 2371,68.57,53.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stolen Research Crates|r
    *|cRXP_WARN_You will be attacked by 3 |cRXP_ENEMY_Wastelander Assassins|r
    .complete 85730,2 --1/1 Stolen Crates returned
step
    #completewith next
    #hidewindow
    .gossipoption 131611 >>1
    .timer 29,RP
step
    .goto 2371,68.54,53.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .complete 85730,3 --1/1 Talk to Locus-Walker
    .target Locus-Walker
step
    .goto 2371,68.48,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'resh|r |cRXP_WARN_after the roleplay|r.
    .turnin 85730 >>Turn in Salvaging What's Left
    .target Om'resh
step
    .goto 2371,68.41,51.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .accept 86327 >>Accept The Tempest Fields
    .target Xal'atath
step
    .goto 2371,64.11,47.00
    #title |cFFFCDC00Follow the Arrow|r
    .complete 86327,2 --Meet Xal'atath at the Tempest Fields
step
    .goto 2371,64.11,47.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .turnin 86327 >>Turn in The Tempest Fields
    .accept 84834 >>Accept Tempest Clefts
    .accept 84869 >>Accept Hunting on Glass
    .target Xal'atath
step
    #completewith next
    >>Kill |cRXP_ENEMY_Void Terror|r
    .complete 84869,1 --4/4 Void Terror slain
    .complete 84869,2 --8/8 Unreal Observer slain
    .mob Void Terror
    .mob Unreal Observer
step
    #loop
    .goto 2371,63.82,48.49,14,0
    .goto 2371,63.03,47.47,14,0
    .goto 2371,63.29,47.11,14,0
    .goto 2371,64.29,45.75,14,0
    .goto 2371,64.07,44.54,14,0
    .goto 2371,64.86,44.89,14,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Void Clefts|r
    .complete 84834,1 --6/6 Void Cleft Essence
step
    #loop
    .goto 2371,68.03,40.15,40,0
    .goto 2371,64.49,44.76,40,0
    .goto 2371,63.60,48.60,40,0
    .goto 2371,63.72,43.52,40,0
    .goto 2371,62.01,40.35,40,0
    .goto 2371,64.49,44.76,40,0
    >>Kill |cRXP_ENEMY_Void Terror|r
    .complete 84869,1 --4/4 Void Terror slain
    .complete 84869,2 --8/8 Unreal Observer slain
    .mob Void Terror
    .mob Unreal Observer
step
    #label EndTurnEcoDomeRhovan1
    .goto 2371,64.12,47.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .turnin 84869 >>Turn in Hunting on Glass
    .turnin 84834 >>Turn in Tempest Clefts
    .accept 84838 >>Accept Enemies of Enemies
    .target Xal'atath
step
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Void Clefts|r
    .complete 84838,1 --1/1 Coalesced void energy placed (Optional)
step
    .goto 2371,61.02,38.90
    >>Kill |cRXP_ENEMY_Zagithav|r
    .complete 84838,2 --1/1 Zagithav slain
    .mob Zagithav
step
    .goto 2371,61.25,39.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Soul-Scribe|r
    .complete 84838,3 --1/1 Talk to Soul-Scribe
    .target Soul-Scribe
    .skipgossipid 132980
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Soul-Scribe|r and |cRXP_FRIENDLY_Xal'atath|r
    .turnin 84838 >>Turn in Enemies of Enemies
    .goto 2371,61.26,39.32
    .target +Soul-Scribe
    .accept 84848 >>Accept Before the Void
    .goto 2371,61.28,39.28
    .target +Xal'atath
step
    .goto 2371,61.26,39.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Soul-Scribe|r
    .complete 84848,1 --1/1 Dagger returned
    .target Soul-Scribe
step
    #label StartTurnEcoDome2
    .goto 2371,61.28,39.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Xal'atath|r
    .complete 84848,2 --1/1 Talk to Xal'atath
    .target Xal'atath
    .skipgossipid 125430
step
    .goto 2371,63.18,38.96
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84848,3 --Meet Xal'atath in the upper camp
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soul-Scribe|r and |cRXP_FRIENDLY_Xal'atath|r
    .turnin 84848 >>Turn in Before the Void
    .goto 2371,63.18,38.96
    .target +Soul-Scribe
    .accept 84867 >>Accept Stalking Stalkers
    .goto 2371,63.13,39.01
    .target +Xal'atath
step
    .goto 2371,61.01,39.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narathe|r
    .complete 84867,1 --1/1 Speak to Narathe
    .target Narathe
    .skipgossipid 124848
step
    .goto 2371,61.05,39.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narathe|r
    .accept 86332 >>Accept Distribution of Power
    .target Narathe
step
    #completewith next
    .aura 467420,1 >>|TInterface/cursor/crosshair/interact.blp:20|tDefeat a |cRXP_ENEMY_Escaped Stalker|r and click on it afterwards.
    .mob Escaped Stalker
step
    #loop
    .goto 2371,60.38,44.77,14,0
    .goto 2371,59.55,45.43,14,0
    .goto 2371,60.80,45.59,14,0
    .goto 2371,61.97,46.41,14,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Power Harvester|r
    .complete 86332,1 --4/4 Energy collected
step
    #completewith next
    #hidewindow
    #label BringStalkerToZabtaA
    .complete 84867,3 --1/1 Bring a stalker to Zabta
step
    #completewith BringStalkerToZabtaA
    .isOnQuest 84867
    #loop
    .goto 2371,59.92,44.82,35,0
    .goto 2371,61.93,46.81,35,0
    .goto 2371,67.21,36.89,35,0
    .goto 2371,64.21,37.74,35,0
    .aura 467420,1 >>|TInterface/cursor/crosshair/interact.blp:20|tDefeat a |cRXP_ENEMY_Escaped Stalker|r and click on it afterwards.
    .mob Escaped Stalker
step
    #requires BringStalkerToZabtaA
    .goto 2371,61.04,43.65
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84867,3 --1/1 Bring a stalker to Zabta
step
    #loop
    .goto 2371,60.70,42.97,12,0
    .goto 2371,63.88,42.41,12,0
    .goto 2371,61.57,40.57,12,0
    .goto 2371,62.07,39.20,12,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Empty Crates|r
    .complete 86332,2 --4/4 Crates charged
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soul-Scribe|r and |cRXP_FRIENDLY_Xal'atath|r
    .turnin 84867 >>Turn in Stalking Stalkers
    .turnin 86332 >>Turn in Distribution of Power
    .goto 2371,63.18,38.96
    .target +Soul-Scribe
    .accept 84876 >>Accept The Oasis
    .goto 2371,63.13,39.01
    .target +Xal'atath
step
    .goto 2371,73.67,38.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'rajula|r
    .complete 84876,1 --1/1 Report to Om'rajula at the Oasis
    .target Om'rajula
    .skipgossipid 131494
step
    .goto 2371,75.81,34.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Om'talad|r
    .turnin 84876 >>Turn in The Oasis
    .target Om'talad
step
    #label EndTurnEcoDomeRhovan2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r and |cRXP_FRIENDLY_Soul-Scribe|r
    .accept 84879 >>Accept Restoring Hope
    .goto 2371,75.88,34.18,-1
    .target +Xal'atath
    .accept 84883 >>Accept K'aresh That Was
    .goto 2371,75.83,34.29,-1
    .target +Soul-Scribe
step
    #label StartTurnEcoDomeRhovan3
    #completewith HeartspringWaterA
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Invasive Wurm Eggs|r and |cRXP_PICK_Void Rifts|r
    .complete 84879,1 --Dome cleansed (100%)
step
    #completewith HeartspringWaterA
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Zaranit Buds|r
    .complete 84883,1 --6/6 Zaranit Bud
step
    #label HeartspringWaterA
    .goto 2371,76.78,30.12
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rippling Wellspring|r
    .complete 84883,2 --1/1 Heartspring Water
step
    -- https://i.imgur.com/24Fjv7C.png
    #completewith DomeCleansedA
    #hidewindow
    #loop
    .goto 2371,76.27,30.25,25,0
    .goto 2371,74.78,28.59,30,0
    .goto 2371,73.69,28.88,30,0
    .goto 2371,73.06,29.80,30,0
    .goto 2371,71.82,31.21,30,0
    .goto 2371,74.30,31.13,40,0
    .goto 2371,73.03,32.49,30,0
    .goto 2371,73.07,36.65,30,0
    .goto 2371,75.50,36.19,40,0
    .goto 2371,74.88,34.11,30,0
    .goto 2371,75.69,32.65,30,0
    .goto 2371,77.07,31.44,30,0
    +1
step
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Invasive Wurm Eggs|r and |cRXP_PICK_Void Rifts|r
    .complete 84879,1 --Dome cleansed (100%)
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Zaranit Buds|r
    .complete 84883,1 --6/6 Zaranit Bud
step
    #label DomeCleansedA
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Invasive Wurm Eggs|r and |cRXP_PICK_Void Rifts|r
    *|cRXP_WARN_Don't mount up until the portal is destroyed|r
    .complete 84879,1 --Dome cleansed (100%)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r and |cRXP_FRIENDLY_Soul-Scribe|r
    .turnin 84879 >>Turn in Restoring Hope
    .goto 2371,75.88,34.18
    .target +Xal'atath
    .turnin 84883 >>Turn in K'aresh That Was
    .accept 84910 >>Accept The Tabiqa
    .goto 2371,75.83,34.29
    .target +Soul-Scribe
step
    .goto 2371,74.39,30.43
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84910,1 --Meet Soul-Scribe by the water
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Petals and Pollen|r, |cRXP_PICK_Vial|r, and |cRXP_PICK_Tabiqa Dagger|r on the table
    .complete 84910,2 --1/1 Pollen and petals placed
    .goto 2371,74.40,30.51,-1
    .complete 84910,3 --1/1 Vial of water placed
    .goto 2371,74.38,30.50,-1
    .complete 84910,4 --1/1 Ritual dagger placed
    .goto 2371,74.37,30.51,-1
step
    .goto 2371,74.45,30.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .complete 84910,5 --1/1 Talk to Soul-Scribe
    .target Xal'atath
    .skipgossipid 125067
step
    #label EndTurnEcoDomeRhovan3
    .goto 2371,74.39,30.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soul-Scribe|r
    .turnin 84910 >>Turn in The Tabiqa
    .target Soul-Scribe
step
    .isQuestAvailable account,89380
    .goto 2371,74.90,31.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shad'anis|r
    .accept 89380 >>Accept Another World
    .target Shad'anis
step
    .isQuestAvailable account,89561
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hashim|r
    .accept 89561 >>Accept Wrapped Up
    .target Hashim
step
    .isOnQuest 90938
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hashim|r
    .complete 89561,1 --1/1 Ask Hashim about empowering the Reshii Wraps
    .skipgossipid 132925
step
    .isOnQuest 90938
    .goto 2371,50.34,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hashim|r and select the upgrades.
    .complete 89561,2 --1/1 Ask Hashim about empowering the Reshii Wraps
    .skipgossipid 132925
step
    .isOnQuest 90938
    .goto 2371,50.36,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shad'anis|r
    .turnin 89561 >>Turn in Wrapped Up
    .target Shad'anis
step
    #include RestedXP War Within Loremaster\a) Phase Diving Unlock Free
]])
--Shadows En Garde
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within
#name a) Shadows En Garde
#displayname |cFF00CCFF4|r - Shadows En Garde
#next a) The Light of K'aresh
#chapter

step
    #label KareshCampaignSkipB
    #completewith next
    .goto 2371,74.39,30.43
    .achievementComplete 41970,4,1
    .isQuestTurnedIn account,85037
    .gossipoption 134152 >>Talk to |cRXP_FRIENDLY_Soul-Scribe|r
    .skipgossipid 134142
    .target Soul-Scribe
step
    #hidewindow
    #completewith KareshCampaignSkipB
    .accept 84896 >>Accept The Next Dimension
step
    #requires KareshCampaignSkipB
    .goto 2371,74.39,30.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soul-Scribe|r
    .accept 84896 >>Accept The Next Dimension
    .target Soul-Scribe
step
    .goto 2371,60.24,29.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soul-Scribe|r
    .turnin 84896 >>Turn in The Next Dimension
    .accept 84897 >>Accept The Calm Before we Storm
    .target Soul-Scribe
step
    .goto 2371,60.74,27.94
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84897,1 --Approach Alleria
step
    .goto 2371,60.74,27.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria|r
    .complete 84897,2 --1/1 Speak with Alleria
    .target Alleria
    .skipgossipid 133244
    .skipgossipid 135471
step
    .goto 2371,60.61,27.70
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Wounded Riftwalker|r
    .complete 84897,4 --1/1 Heal the Wounded Riftwalker
    .skipgossipid 132242
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soul-Scribe|r and |cRXP_FRIENDLY_Alleria Windrunner|r
    .turnin 84897 >>Turn in The Calm Before we Storm
    .accept 84898 >>Accept The Sands of K'aresh
    .goto 2371,60.68,28.00
    .target +Soul-Scribe
    .accept 84899 >>Accept Shadowguard Diffusion
    .goto 2371,60.74,27.94
    .target +Alleria Windrunner
step 
    #completewith Shadowguard Weapons
    >>Kill |cRXP_ENEMY_Shadowguard Phaseblade|r, |cRXP_ENEMY_Shadowguard Adept|r, and |cRXP_ENEMY_Shadowguard Voidtamer|r
    .complete 84899,1 --6/6 Shadowguard Phaseblade slain
    .mob +Shadowguard Phaseblade
    .complete 84899,2 --6/6 Shadowguard Adept slain
    .mob +Shadowguard Adept
    .complete 84899,3 --3/3 Shadowguard Voidtamer slain
    .mob +Shadowguard Voidtamer
step 
    .goto 2371,58.93,30.5,30,0
    .goto 2371,58.68,29.55
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Sand Piles|r appearing after you are close enough to their position
    .complete 84898,1,1 --3/3 Shadowguard Weapons
step 
    .goto 2371,59.12,28.51
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Sand Piles|r appearing after you are close enough to their position
    .complete 84898,1,2 --3/3 Shadowguard Weapons
step
    #label Shadowguard Weapons
    .goto 2371,58.35,26.31
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Sand Piles|r appearing after you are close enough to their position
    .complete 84898,1,3 --3/3 Shadowguard Weapons
step 
    #loop
    .goto 2371,58.56,25.13,40,0
    .goto 2371,59.73,26.45,40,0
    .goto 2371,59.67,29.67,40,0
    .goto 2371,58.44,29.72,40,0
    >>Kill |cRXP_ENEMY_Shadowguard Phaseblade|r, |cRXP_ENEMY_Shadowguard Adept|r, and |cRXP_ENEMY_Shadowguard Voidtamer|r
    .complete 84899,1 --6/6 Shadowguard Phaseblade slain
    .mob +Shadowguard Phaseblade
    .complete 84899,2 --6/6 Shadowguard Adept slain
    .mob +Shadowguard Adept
    .complete 84899,3 --3/3 Shadowguard Voidtamer slain
    .mob +Shadowguard Voidtamer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Soul-Scribe|r and |cRXP_FRIENDLY_Alleria Windrunner|r
    .turnin 84898 >>Turn in The Sands of K'aresh
    .goto 2371,55.19,30.28
    .target +Soul-Scribe
    .turnin 84899 >>Turn in Shadowguard Diffusion
    .goto 2371,55.11,30.45
    .target +Alleria Windrunner
step
    .goto 2371,55.12,30.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .accept 84900 >>Accept Like a Knife Through Aether
    .target Xal'atath
step
    #label StartShadowPointDarkmend
    .goto 2371,49.95,26.80
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84900,1 --Approach Xal'atath at Shadow Point: Darkmend
step
    #loop
    .goto 2371,49.51,26.81,22,0
    .goto 2371,49.53,28.22,30,0
    .goto 2371,49.62,25.17,30,0
    >>Kill the |cRXP_ENEMY_Shadowguard Forgecasters|r. Loot them for the |T4549241:0|t[|cRXP_LOOT_Forgecaster Wraps|r]
    .complete 84900,2 --4/4 Forgecaster Wraps
step
    .goto 2371,49.54,26.71
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Unwieldy Energies|r
    .complete 84900,3 --4/4 Unwieldy Energy disrupted
step
    .goto 2371,48.65,26.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .turnin 84900 >>Turn in Like a Knife Through Aether
    .target Xal'atath
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r, |cRXP_FRIENDLY_Locus-Walker|r, and |cRXP_FRIENDLY_Soul-Scribe|r
    .accept 84903 >>Accept Until the Sands Bleed Void
    .goto 2371,48.58,26.63,-1
    .target +Alleria Windrunner
    .accept 84902 >>Accept Adverse Instantiation
    .goto 2371,48.58,26.70,-1
    .target +Locus-Walker
    .accept 84904 >>Accept And We Will Answer
    .goto 2371,48.60,26.78,-1
    .target +Soul-Scribe
step
    #completewith Power Pylon disabled
    >>Kill the |cRXP_ENEMY_Shadowguard forces|r
    .complete 84903,1 --Shadowguard extinguished (100%)
    .mob Shadowguard Adept
    .mob Shadowguard Voidcaller
    .mob Shadowguard Colossus
    .mob Shadowguard Bulwark
    .mob Shadowguard Phaseblade
step
    .goto 2371,47.26,21.63
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shadowguard Power Pylons|r
    .complete 84902,1,1 --6/6 Power Pylon disabled
step
    .goto 2371,46.72,21.24
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Captured Wastelanders|r
    .complete 84904,1,1 --6/6 Trapped Wastelanders rescued
step
    .goto 2371,46.52,20.79
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Captured Wastelanders|r
    .complete 84904,1,2 --6/6 Trapped Wastelanders rescued
step
    .goto 2371,45.93,19.84
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shadowguard Power Pylons|r
    .complete 84902,1,2 --6/6 Power Pylon disabled
step
    .goto 2371,45.96,19.23
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Captured Wastelanders|r
    .complete 84904,1,3 --6/6 Trapped Wastelanders rescued
step
    .goto 2371,44.79,18.89
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shadowguard Power Pylons|r
    .complete 84902,1,3 --6/6 Power Pylon disabled
step
    .goto 2371,44.39,18.95
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Captured Wastelanders|r
    .complete 84904,1,4 --6/6 Trapped Wastelanders rescued
step
    .goto 2371,43.87,19.53
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shadowguard Power Pylons|r
    .complete 84902,1,4 --6/6 Power Pylon disabled
step
    .goto 2371,45.95,17.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Captured Wastelanders|r
    .complete 84904,1,5 --6/6 Trapped Wastelanders rescued
step
    .goto 2371,46.01,17.39
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shadowguard Power Pylons|r
    .complete 84902,1,5 --6/6 Power Pylon disabled
step
    .goto 2371,47.04,17.85
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Captured Wastelanders|r
    .complete 84904,1,6 --6/6 Trapped Wastelanders rescued
step
    .goto 2371,46.88,18.11
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shadowguard Power Pylons|r
    .complete 84902,1,6 --6/6 Power Pylon disabled
step
    #label Power Pylon disabled
    .goto 2371,47.51,22.4,40,0
    .goto 2371,43.36,23.69,40,0
    .goto 2371,43.23,19.02,40,0
    >>Kill the |cRXP_ENEMY_Shadowguard forces|r
    .complete 84903,1 --Shadowguard extinguished (100%)
    .mob Shadowguard Adept
    .mob Shadowguard Voidcaller
    .mob Shadowguard Colossus
    .mob Shadowguard Bulwark
    .mob Shadowguard Phaseblade
step
    #loop
    .goto 2371,46.89,16.87,40,0
    .goto 2371,43.25,19.48,45,0
    .goto 2371,43.41,23.74,45,0
    .goto 2371,46.15,21.23,40,0
    >>Kill the |cRXP_ENEMY_Shadowguard forces|r
    .complete 84903,1 --Shadowguard extinguished (100%)
    .mob Shadowguard Adept
    .mob Shadowguard Voidcaller
    .mob Shadowguard Colossus
    .mob Shadowguard Bulwark
    .mob Shadowguard Phaseblade
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r, |cRXP_FRIENDLY_Soul-Scribe|r, and |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 84903 >>Turn in Until the Sands Bleed Void
    .goto 2371,48.16,19.43
    .target +Alleria Windrunner
    .turnin 84904 >>Turn in And We Will Answer
    .goto 2371,48.20,19.52
    .target +Soul-Scribe
    .turnin 84902 >>Turn in Adverse Instantiation
    .accept 84905 >>Accept To Walk Among Shadow
    .goto 2371,48.23,19.43
    .target +Locus-Walker
step
    .goto 2371,48.90,18.68
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84905,1 --Follow Locus-Walker
step
    .goto 2371,49.1,18.57
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Unstable Energy Matrices|r
    .complete 84905,2,2 --4/4 Unstable Energy Matrix overloaded
step
    .goto 2371,49.12,18.37
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Unstable Energy Matrices|r
    .complete 84905,2 --4/4 Unstable Energy Matrix overloaded
step
    .goto 2371,49.25,17.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shadowguard Energy Reserves|r
    *|cRXP_WARN_Avoid the |cRXP_PICK_Tripwires|r, stay on the wall to avoid the lasers and doge the void zones|r
    .complete 84905,3,1 --4/4 Shadowguard Energy Reserves destroyed
step
    .goto 2371,49.46,18.5
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shadowguard Energy Reserves|r
    *|cRXP_WARN_Avoid the |cRXP_PICK_Tripwires|r, stay on the wall to avoid the lasers and doge the void zones|r
    .complete 84905,3,2 --4/4 Shadowguard Energy Reserves destroyed
step
    .goto 2371,49.08,19.13
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shadowguard Energy Reserves|r
    *|cRXP_WARN_Avoid the |cRXP_PICK_Tripwires|r, stay on the wall to avoid the lasers and doge the void zones|r
    .complete 84905,3,3 --4/4 Shadowguard Energy Reserves destroyed
step
    .goto 2371,48.72,18.33
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shadowguard Energy Reserves|r
    *|cRXP_WARN_Avoid the |cRXP_PICK_Tripwires|r, stay on the wall to avoid the lasers and doge the void zones|r
    .complete 84905,3,4 --4/4 Shadowguard Energy Reserves destroyed
step
    .goto 2371,48.25,19.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Locus-Walker|r
    .turnin 84905 >>Turn in To Walk Among Shadow
    .target Locus-Walker
step
    .goto 2371,48.17,19.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .accept 84906 >>Accept Nexus Regicide
    .target Alleria Windrunner
step
    #label StartShadowPointDarkmend1
    .goto 2371,44.20,16.79
    #title |cFFFCDC00Follow the Arrow|r
    >>It's inside the Reactor
    .complete 84906,1 --Follow Alleria to Umbral Garrison: Apotheosis
step
    .goto 2371,43.80,17.11
    >>Kill |cRXP_ENEMY_Nexus-Prince Azir|r
    *|cRXP_WARN_Drag him to the friendly NPCs to make the help you|r
    .complete 84906,2 --1/1 Nexus-Prince Azir slain
    .mob Nexus-Prince Azir
step
    .goto 2371,44.16,16.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Nexus-Prince Azir's Reshii Ribbon|r
    .complete 84906,3 --1/1 Nexus-Prince Azir's Reshii Ribbon
step
    .goto 2371,44.24,18.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .turnin 84906 >>Turn in Nexus Regicide
    .target Alleria Windrunner
step
    .goto 2371,44.24,18.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .accept 85037 >>Accept That's a Wrap
    .target Xal'atath
step
    .goto 2371,42.85,21.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xal'atath|r
    .complete 85037,1 --1/1 Speak to Xal'atath
    .target Xal'atath
    .skipgossipid 131307
step
    .goto 2371,42.82,21.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Reshii Ribbons|r
    .complete 85037,2 --1/1 K'areshi Wraps
step
    #label EndShadowPointDarkmend1
    .goto 2371,42.89,21.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .turnin 85037 >>Turn in That's a Wrap
    .target Alleria Windrunner
]])
--The Light of K'aresh
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within
#name a) The Light of K'aresh
#displayname |cFF00CCFF5|r - The Light of K'aresh
#next a) Radiant Visions
#chapter

step
    .goto 2371,42.89,21.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .accept 86820 >>Accept Manaforge Omega: Dimensius Looms
    .target Alleria Windrunner
step
    #completewith next
    #label Dimensius
    >>Kill |cRXP_ENEMY_Dimensius|r inside the Manaforge Omega Raid.
    .complete 86820,2
    .mob Dimensius
step
    #completewith Dimensius
    .goto 2371,41.97,22.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Phase-General Ameer|r
    .complete 86820,1
    .target Phase-General Ameer
step
    #requires Dimensius
    >>Kill |cRXP_ENEMY_Dimensius|r a inside the Manaforge Omega Raid.
    .complete 86820,2
step
    #completewith next
    #label Xal'tath's Portal
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Xal'tath's Portal|r to complete the quest.
    .complete 86820,3
step
    #completewith Xal'tath's Portal
    >>Loot |cRXP_ENEMY_Dimensius|r for |T2060147:0|t[|cRXP_LOOT_A Dimmed Crystal|r].
    .accept 86456 >>Accept An Elegy for a Silent World
    .collect 234273,1
step
    #requires Xal'tath's Portal
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Xal'tath's Portal|r to complete the quest.
    .complete 86820,3
step
    .goto 2371,42.89,21.51
    >>Click on the quest pop-up to turn in the quest
    .turnin 86820 >>Turn in Manaforge Omega: Dimensius Looms
    .target Alleria Windrunner
step
    .isOnQuest 86456
    .goto 2371,75.88,34.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r
    .complete 86456,1 --1/1 Dimmed Crystal shown to Ve'nari
    .skipgossip
    .target Ve'nari
step
    .isOnQuest 86456
    .goto 2371,75.88,34.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r
    .turnin 86456 >>Turn in An Elegy for a Silent World
    .target Ve'nari
step
    .isQuestTurnedIn 86456
    .goto 2371,75.88,34.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r
    .accept 86457 >>Accept A Lullaby of Hope
    .target Ve'nari
step
    .isOnQuest 86457
    .goto 2371,75.88,34.17
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dimmed Crystal|r
    .complete 86457,1 --1/1 Interact with the Dimmed Crystal
    .timer 3,RP
step
    .goto 2371,75.88,34.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cartel Om Custodian|r
    .turnin 87290 >>Turn in The Oasis
    .target Cartel Om Custodian
    .accept 87337 >>Accept Custodian Duties
step
    .isOnQuest 86457
    .goto 2371,75.89,34.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r
    .turnin 86457 >>Turn in A Lullaby of Hope
    .target Ve'nari
step
    .isQuestTurnedIn 86457
    .goto 2371,75.89,34.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r
    .accept 86458 >>Accept A Song for Our Future
    .target Ve'nari
step
    .isOnQuest 86458
    >>Que Solo for Eco-Dome Al'dani as a Follower Dungeon or do it with a group.
    .complete 86458,1 --1/1 Soul-Scribe defeated
    .mob Soul-Scribe
step
    .isOnQuest 86458
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r
    .complete 86458,2 --1/1 Talk to Ve'nari
    .skipgossip
    .target Ve'nari
step
    .isOnQuest 86458
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r
    .turnin 86458 >>Turn in A Song for Our Future
    .target Ve'nari
]])

--Nesting
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within
#subgroup |cFFFCDC00(80)|r Campaigns
#name ae) 11.2.7: Radiant Visions
#displayname 11.2.7: Radiant Visions
#chapters a) Radiant Visions;a) A Meeting with Minn'da;a) Paths Forward



]])

--Radiant Visions
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within
#name a) Radiant Visions
#displayname |cFF00CCFF1|r - Radiant Visions
#next a) A Meeting with Minn'da
#chapter

step
    .goto 2339,51.60,45.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silver Hand Squire|r in Dornogal.
    .accept 92405 >>Accept Meet Arator
    .target Silver Hand Squire
step
    .goto 2248,28.60,44.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arator|r
    .turnin 92405 >>Turn in Meet Arator
    .target Arator
    .accept 84996 >>Accept Vereesa's Tale
step
    #completewith next
    #label Vereesa's tale
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 84996,1 --1/1 Listen to Vereesa's tale
step
    #completewith Vereesa's tale
    .goto 2248,28.58,44.69
    .gossipoption 132038 >>Talk to |cRXP_FRIENDLY_Vereesa Windrunner|r
    .timer 9,RP
    .target Vereesa Windrunner
step
    #requires Vereesa's tale
    .goto 2248,26.59,42.30
    #title |cFFFCDC00Follow the Arrow|r
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 84996,1 --1/1 Listen to Vereesa's tale
step
    .goto 2248,26.59,42.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vereesa Windrunner|r
    .turnin 84996 >>Turn in Vereesa's Tale
    .target Vereesa Windrunner
    .accept 84997 >>Accept What Might Come
 step
    .goto 2248,26.59,42.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vereesa Windrunner|r
    .complete 84997,1 --1/1 Ceremony witnessed
    .skipgossipid 125312
    .target Vereesa Windrunner
step
    .goto 2248,26.59,42.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vereesa Windrunner|r
    .turnin 84997 >>Turn in What Might Come
    .target Vereesa Windrunner
    .accept 84998 >>Accept Bringer of the Void
step 
    .goto 2248,26.57,42.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arator|r
    .accept 85001 >>Accept Blessings Be Upon You
    .target Arator
step
    .goto 2248,26.41,43.31
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dalaran Custodian|r
    .complete 85001,1,1 --8/8 Dalaran Custodians rescued
    .target Dalaran Custodian
step
    .goto 2248,26.42,43.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dalaran Custodian|r
    .complete 85001,1,2 --8/8 Dalaran Custodians rescued
    .target Dalaran Custodian
step
    .goto 2248,26.61,43.51
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dalaran Custodian|r
    .complete 85001,1,3 --8/8 Dalaran Custodians rescued
    .target Dalaran Custodian
step
    .goto 2248,26.76,43.79
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dalaran Custodian|r
    .complete 85001,1,4 --8/8 Dalaran Custodians rescued
    .target Dalaran Custodian
step
    .goto 2248,26.59,44.3
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dalaran Custodian|r
    .complete 85001,1,5 --8/8 Dalaran Custodians rescued
    .target Dalaran Custodian
step
    .goto 2248,26.79,44.9
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dalaran Custodian|r
    .complete 85001,1,6 --8/8 Dalaran Custodians rescued
    .target Dalaran Custodian
step
    .goto 2248,27.31,45.38
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dalaran Custodian|r
    .complete 85001,1,7 --8/8 Dalaran Custodians rescued
    .target Dalaran Custodian
step
    .goto 2248,27.2,45.64
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dalaran Custodian|r
    .complete 85001,1,8 --8/8 Dalaran Custodians rescued
    .target Dalaran Custodian
step
    .goto 2248,26.63,46.17
    >>Kill |cRXP_ENEMY_Voidbringer Aqu'lir|r
    .complete 84998,1 --1/1 Voidbringer Aqu'lir slain
    .mob Voidbringer Aqu'lir
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vereesa Windrunner|r and |cRXP_FRIENDLY_Arator|r
    .turnin 84998 >>Turn in Bringer of the Void
    .goto 2248,26.59,42.30
    .target +Vereesa Windrunner
    .turnin 85001 >>Turn in Blessings Be Upon You
    .accept 85002 >>Accept Off to Tazavesh
    .goto 2248,26.57,42.31
    .target +Arator
step
    .goto 2248,26.54,42.31
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 85002,2 --1/1 Take the Portal to K'aresh (Optional)
step
    .goto 2472,60.11,91.33
    #title |cFFFCDC00Follow the Arrow|r
    .complete 85002,3 --1/1 Regroup with Arator in Tazavesh on K'aresh
step
    .goto 2472,60.11,91.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arator|r
    .turnin 85002 >>Turn in Off to Tazavesh
    .target Arator
    .accept 85011 >>Accept Where in K'aresh is Alleria Windrunner?
]])
--A Meeting with Minn'da
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within
#name a) A Meeting with Minn'da
#displayname |cFF00CCFF2|r - A Meeting with Minn'da
#next a) Paths Forward
#chapter

step
    .goto 2472,60.11,91.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arator|r
    .turnin 85002 >>Turn in Off to Tazavesh
    .target Arator
    .accept 85011 >>Accept Where in K'aresh is Alleria Windrunner?
step
    #completewith next
    #label Trader Ba'kril
    .goto 2472,43.04,53.41,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trader Ba'kril|r
    .complete 85011,1 --1/1 Speak with Trader Ba'kril
    .skipgossipid 125402
    .target Trader Ba'kril
step
    #completewith Trader Ba'kril
    .isOnQuest 85011
    .goto 2472,43.75,52.34,20 >>Enter the House
step
    #requires Trader Ba'kril
    .goto 2472,43.75,52.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trader Ba'kril|r
    .complete 85011,1 --1/1 Speak with Trader Ba'kril
    .skipgossipid 125402
    .target Trader Ba'kril
step
    #completewith next
    #label Associate Xy'gav
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Associate Xy'gav|r
    .complete 85011,2 --1/1 Speak with Associate Xy'gav
    .target Associate Xy'gav
step
    #completewith Associate Xy'gav
    .goto 2472,42.92,53.45,5 >>Leave the House
step
    #requires Associate Xy'gav
    .goto 2472,51.59,40.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Associate Xy'gav|r
    .complete 85011,2 --1/1 Speak with Associate Xy'gav
    .skipgossipid 132293
    .target Associate Xy'gav
step
    .goto 2472,51.38,19.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Umbric|r
    .complete 85011,3 --1/1 Speak with Magister Umbric
    .skipgossipid 131370
    .target Magister Umbric
step
    .goto 2472,51.36,19.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magister Umbric|r
    .turnin 85011 >>Turn in Where in K'aresh is Alleria Windrunner?
    .target Magister Umbric
    .accept 85804 >>Accept The Parent Trap
step
    .isOnQuest 85804
    .goto 2472,48.06,56.98,20,0
    .goto 2472,46.81,56.87
    .cast 1239390 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Phase Conduit|r.
step
    .isOnQuest 85804
    .goto 2472,46.81,56.87
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Phase Conduit|r.
    .fly Untethered Space >>Fly to Untethered Space
    .target Phase Conduit
step
    .isOnQuest 85804
    .goto 2371,53.98,26.86
    .aura -1214374 >>Remove the |T135752:0|t[Phase Diving] buff (with Right-Click)
    .macro Remove Aura,135752 >>/cancelaura Phase Diving
step
    .goto 2371,55.24,27.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria|r
    .complete 85804,1 --1/1 Speak with Alleria at the Fracture of Laacuna
    .timer 10,RP
    .skipgossipid 132011
    .target Alleria
step
    .goto 2371,55.25,27.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria|r
    .complete 85804,2 --1/1 Tell Alleria about Vereesa's vision
    .skipgossipid 132019
    .target Alleria
step
    .goto 2371,55.24,27.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .turnin 85804 >>Turn in The Parent Trap
    .accept 85151 >>Accept In Her Shadow
    .target Alleria Windrunner
step
    .goto 2371,55.32,26.53
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Note|r
    .complete 85151,1 --1/1 Camp Ledger read
step
    .goto 2371,55.30,24.14
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Weapon Rack|r
    .complete 85151,2 --1/1 Weapon Rack investigated
step
    .goto 2371,56.9,20.92
    #title |cFFFCDC00Follow the Arrow|r
    .complete 85151,3 --1/1 Get to the top of the rise
step
    .goto 2371,56.9,20.92
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Batteries|r
    .complete 85151,4 --1/1 Hide behind storage batteries
    .timer 27,RP
step
    .goto 2371,55.19,28.17
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 85151,5 --1/1 Spy on Shadowlord Vesheen
step
    .goto 2371,56.92,20.87
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 85151,7 --1/1 Alleria's Void Portal used (Optional)
step
    .goto 2371,55.24,27.92
    #title |cFFFCDC00Follow the Arrow|r
    .complete 85151,6 --Regroup with Alleria & Arator
step
    .goto 2371,55.24,27.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .turnin 85151 >>Turn in In Her Shadow
    .target Alleria Windrunner
    .accept 85155 >>Accept Do You Have a Spare?
step
    .isOnQuest 85155
    .goto 2371,53.92,26.75
    .cast 1239390 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Phase Conduit|r.
step
    .isOnQuest 85155
    .goto 2371,53.92,26.75
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Phase Conduit|r.
    .fly The Oasis >>Fly to The Oasis
    .target Phase Conduit
step
    .isOnQuest 85155
    .goto 2371,75.89,34.18
    .aura -1214374 >>Remove the |T135752:0|t[Phase Diving] buff (with Right-Click)
    .macro Remove Aura,135752 >>/cancelaura Phase Diving
step
    .goto 2371,75.89,34.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r
    .turnin 85155 >>Turn in Do You Have a Spare?
    .target Ve'nari
    .accept 85184 >>Accept Repossession is Nine-Tenths of the Law
    .accept 85185 >>Accept Those As Well
step
    .isOnQuest 85185
    .goto 2371,76.02,34.6,15 >>Go out of the |cRXP_WARN_NO MOUNT ZONE|r
step
    #completewith K'areshi Relics
    >>Kill |cRXP_ENEMY_Sufaadi's|r. Loot them for |T454060:0|t[|cRXP_LOOT_Lesser K'areshi Artifacts|r].
    .complete 85185,1 --6/6 Lesser K'areshi Artifacts recovered
    .mob Sufaadi Bladetamer
    .mob Sufaadi Soulbinder
step
    .goto 2371,77.05,45.43
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Relic|r
    .complete 85184,1,1 --10/10 Ancestral K'areshi Relics repossessed
step
    .goto 2371,77.39,46.05
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Relic|r
    *|cRXP_WARN_Avoid the purple powerline|r.
    .complete 85184,1,2 --10/10 Ancestral K'areshi Relics repossessed
step
    .goto 2371,77.06,46.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Relic|r
    .complete 85184,1,3 --10/10 Ancestral K'areshi Relics repossessed
step
    .goto 2371,76.58,47.85
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Relic|r |cRXP_WARN_behind the stone|r.
    .complete 85184,1,4 --10/10 Ancestral K'areshi Relics repossessed
step
    .goto 2371,75.97,48.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Relic|r
    .complete 85184,1,5 --10/10 Ancestral K'areshi Relics repossessed
step
    .goto 2371,75.45,48.26
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Relic|r
    .complete 85184,1,6 --10/10 Ancestral K'areshi Relics repossessed
step
    .goto 2371,76.04,49.57
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Relic|r
    .complete 85184,1,7 --10/10 Ancestral K'areshi Relics repossessed
step
    .goto 2371,76.05,50.47
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Relic|r
    .complete 85184,1,8 --10/10 Ancestral K'areshi Relics repossessed
step
    .goto 2371,77.14,49.7
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Relic|r
    .complete 85184,1,9 --10/10 Ancestral K'areshi Relics repossessed
step
    #label K'areshi Relics
    .goto 2371,77.61,48.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Relic|r
    .complete 85184,1,10 --10/10 Ancestral K'areshi Relics repossessed
step
    #loop
    .goto 2371,77.44,50.61,40,0
    .goto 2371,76.8,51.86,40,0
    .goto 2371,75.77,50.31,40,0
    .goto 2371,75.82,47.22,40,0
    .goto 2371,77.25,45.58,40,0
    >>Kill |cRXP_ENEMY_Sufaadi's|r. Loot them for |T454060:0|t[|cRXP_LOOT_Lesser K'areshi Artifacts|r].
    .complete 85185,1 --6/6 Lesser K'areshi Artifacts recovered
    .mob Sufaadi Bladetamer
    .mob Sufaadi Soulbinder
step
    .isOnQuest 85185
    .goto 2371,77.18,48.93
    .cast 1239390 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Phase Conduit|r.
step
    .isOnQuest 85185
    .goto 2371,77.18,48.93
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Phase Conduit|r.
    .fly The Oasis >>Fly to The Oasis
    .target Phase Conduit
step
    .isOnQuest 85185
    .goto 2371,75.89,34.18
    .aura -1214374 >>Remove the |T135752:0|t[Phase Diving] buff (with Right-Click)
    .macro Remove Aura,135752 >>/cancelaura Phase Diving
step
    .goto 2371,75.89,34.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r
    .turnin 85184 >>Turn in Repossession is Nine-Tenths of the Law
    .target Ve'nari
    .turnin 85185 >>Turn in Those As Well
    .accept 85186 >>Accept A Cage for Alleria
step
    .isOnQuest 85186
    .goto 2371,75.88,33.12
    .cast 1239390 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Phase Conduit|r.
step
    .isOnQuest 85186
    .goto 2371,75.88,33.12
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Phase Conduit|r.
    .fly Shan'dorah >>Fly to Shan'dorah
    .target Phase Conduit
step
    .isOnQuest 85186
    .goto 2371,60.87,28.24
    .aura -1214374 >>Remove the |T135752:0|t[Phase Diving] buff (with Right-Click)
    .macro Remove Aura,135752 >>/cancelaura Phase Diving
step
    .goto 2371,60.87,28.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .turnin 85186 >>Turn in A Cage for Alleria
    .target Alleria Windrunner
    .accept 85196 >>Accept Tag, You're It
step
    .goto 2371,62.56,24.02
    >>Kill |cRXP_ENEMY_Shadowlord Vesheen|r and use the |cRXP_WARN_ExtraActionButton|r
    .complete 85196,2 --1/1 Shadowlord Vesheen captured
    .mob Shadowlord Vesheen
    .usespell 471679
step
    .goto 2371,60.76,28.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .turnin 85196 >>Turn in Tag, You're It
    .target Alleria Windrunner
    .accept 85212 >>Accept A Void Test of Wills
step
    .goto 2371,60.76,28.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alleria Windrunner|r
    .complete 85212,1 --1/1 Tell Alleria you're ready
    .skipgossipid 125519
    .target Alleria Windrunner
step
    .goto 2371,60.82,28.13,5,0
    .goto 2371,60.85,28.2
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Void Focus|r |cRXP_WARN_from a far|r.
    .complete 85212,2,1 --3/3 Void Focus placed
step
    .goto 2371,60.9,27.62,5,0
    .goto 2371,60.93,27.51
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Void Focus|r |cRXP_WARN_from a far|r.
    .complete 85212,2,2 --3/3 Void Focus placed
step
    .goto 2371,60.64,27.81,5,0
    .goto 2371,60.56,27.85
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Void Focus|r |cRXP_WARN_from a far|r.
    .complete 85212,2,3 --3/3 Void Focus placed
step
    #completewith next
    #label power bolstered
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 85212,3 --1/1 Alleria's power bolstered
step
    #completewith power bolstered
    .goto 2371,60.68,27.99
    .cast 472240 >>Use the |cRXP_WARN_ExtraActionButton|r on the spot.
    .timer 27.5,RP
    .usespell 472240
step
    #requires power bolstered
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 85212,3 --1/1 Alleria's power bolstered
    .usespell 472240
step
    >>|cRXP_WARN_Dodge the Voids|r
    .complete 85212,4 --1/1 Void storm survived
step
    .goto 2371,60.73,28.45
    >>Stand near |cRXP_FRIENDLY_Arator|r
    .complete 85212,5 --1/1 Help Arator push back Vesheen's power
    .timer 28,RP
    .target Arator
step
    .goto 2371,60.8,28.06
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 85212,6 --1/1 Shadowlord Vesheen defeated
step
    .goto 2371,60.80,28.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arator|r
    .turnin 85212 >>Turn in A Void Test of Wills
    .target Arator
    .accept 85213 >>Accept Off to Tazavesh, Again
step
    .goto 2371,60.85,28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r
    .complete 85213,1 --1/1 Ask Ve'nari about getting to the Maw
    .skipgossipid 132240
    .target Ve'nari
step
    .isOnQuest 85213
    .goto 2371,60.61,28.4,10 >>Go out of the |cRXP_WARN_NO MOUNT ZONE|r
step
    .isOnQuest 85213
    .goto 2371,60.21,29.04
    .cast 1239390 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Phase Conduit|r.
step
    .isOnQuest 85213
    .goto 2371,60.21,29.04
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Phase Conduit|r.
    .fly Tazavesh, the Veiled Market >>Fly to Tazavesh, the Veiled Market
    .target Phase Conduit
step
    .isOnQuest 85213
    .goto 2472,48.23,57.04
    .aura -1214374 >>Remove the |T135752:0|t[Phase Diving] buff (with Right-Click)
    .macro Remove Aura,135752 >>/cancelaura Phase Diving
step
    .goto 2472,60.52,92.72
    #title |cFFFCDC00Follow the Arrow|r
    .complete 85213,3 --1/1 Regroup with Arator & Ve'nari at Tazavesh
step
    .goto 2472,60.52,92.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ve'nari|r
    .turnin 85213 >>Turn in Off to Tazavesh, Again
    .target Ve'nari
    .accept 85214 >>Accept Here Goes Something
step
    .goto 2472,60.39,93.12
    >>Use the |cRXP_WARN_ExtraActionButton|r on the spot.
    .complete 85214,1 --1/1 Maw Gateway activated
    .usespell 472486
step
    .goto 2472,60.36,93.42
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 85214,2 --1/1 Maw Gateway used
step
    #completewith next
    #label Here Goes Something
    .goto 1543,24.43,33.69,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arator|r
    .turnin 85214 >>Turn in Here Goes Something
    .target Arator
    .accept 84935 >>Accept Excising the Incursion
    .accept 84936 >>Accept To Cleanse Shadow's Stain
step
    #completewith Here Goes Something
    .goto 1543,25.61,32.49,20 >>Leave the Cave
step
    #requires Here Goes Something
    .goto 1543,25.61,32.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arator|r
    .turnin 85214 >>Turn in Here Goes Something
    .target Arator
    .accept 84935 >>Accept Excising the Incursion
    .accept 84936 >>Accept To Cleanse Shadow's Stain
]])
--Paths Forward
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP War Within
#name a) Paths Forward
#displayname |cFF00CCFF3|r - Paths Forward
#chapter

step
    .goto 1543,25.39,32.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arator|r
    .turnin 85214 >>Turn in Here Goes Something
    .target Arator
    .accept 84935 >>Accept Excising the Incursion
    .accept 84936 >>Accept To Cleanse Shadow's Stain
step
    #completewith Voidstained Souls
    >>Kill |cRXP_ENEMY_Devourings|r
    .complete 84935,1,100 --Devouring Host invaders slain (100%)
    .mob Devouring Voidwalker
    .mob Devouring Revenant
    .mob Devouring Ooze
step
    .goto 1543,26.35,34.25
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Voidstained Soul|r
    .complete 84936,1,1 --5/5 Voidstained Souls cleansed
    .target Voidstained Soul
step
    .goto 1543,27.55,33.56
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Voidstained Soul|r
    .complete 84936,1,2 --5/5 Voidstained Souls cleansed
    .target Voidstained Soul
step
    .goto 1543,27.97,32.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Voidstained Soul|r
    .complete 84936,1,3 --5/5 Voidstained Souls cleansed
    .target Voidstained Soul
step
    .goto 1543,27.49,30.55
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Voidstained Soul|r
    .complete 84936,1,4 --5/5 Voidstained Souls cleansed
    .target Voidstained Soul
step
    #label Voidstained Souls
    .goto 1543,25.7,30.71
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Voidstained Soul|r
    .complete 84936,1,5 --5/5 Voidstained Souls cleansed
    .target Voidstained Soul
step
    #loop
    .goto 1543,24.73,29.01,40,0
    .goto 1543,25.2,27.03,40,0
    .goto 1543,28.07,31.48,40,0
    .goto 1543,28.93,34.26,40,0
    .goto 1543,26.61,35.84,40,0
    .goto 1543,31.87,29.1,40,0
    .goto 1543,31.11,24.33,40,0
    .goto 1543,29.1,22.16,40,0
    .goto 1543,29.28,27.71,40,0
    .goto 1543,27.11,27.63,40,0
    .goto 1543,26.1,24.34,40,0
    .goto 1543,24.44,22.37,40,0
    .goto 1543,22.28,25.51,40,0
    >>Kill |cRXP_ENEMY_Devourings|r
    .complete 84935,1,100 --Devouring Host invaders slain (100%)
    .mob Devouring Voidwalker
    .mob Devouring Revenant
    .mob Devouring Ooze
step
    .goto 1543,27.00,31.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arator|r
    .turnin 84936 >>Turn in To Cleanse Shadow's Stain
    .target Arator
    .turnin 84935 >>Turn in Excising the Incursion
    .accept 84937 >>Accept Distant Echoes
step
    .goto 1543,32.03,31.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Basket|r
    .complete 84937,1 --1/1 Melody followed
step
    .goto 1543,26.98,28.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Devouring Voidwalker|r
    .complete 84937,2 --1/1 Melody followed again
    .mob Devouring Voidwalker
step
    .goto 1543,23.46,21.24
    #title |cFFFCDC00Follow the Arrow|r
    .complete 84937,3 --1/1 Melody found
step
    .goto 1543,23.46,21.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sylvanas Windrunner|r
    .complete 84937,4 --1/1 Sylvanas questioned
    .skipgossipid 134968
step
    .goto 1543,23.45,21.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sylvanas Windrunner|r
    .turnin 84937 >>Turn in Distant Echoes
    .target Sylvanas Windrunner
    .accept 84938 >>Accept Chaos Control
step
    .goto 1543,23.63,21.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arator|r
    .accept 84939 >>Accept Mad Space
    .target Arator
step
    #completewith Voidbeings
    >>Kill |cRXP_ENEMY_Voidbeings|r
    *Use the |cRXP_WARN_ExtraActionButton|r to deal additional damage.
    .complete 84938,1 --Stymie the Devouring Host (100%)
    .mob Devouring Zealot
    .mob Astral Wriggler
    .mob Devouring Supplicant
step
    #completewith next
    #label Unstable Void Rifts
    .goto 1543,26.22,21.03,20,0
    .goto 1543,27.07,19.97,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 84939,1 --5/5 Unstable Void Rifts closed
step
    #completewith Unstable Void Rifts
    .goto 1543,25.34,17.85,60 >>Follow the Arrow
step
    #requires Unstable Void Rifts
    #completewith next
    #label Unstable Void Rifts2
    >>Move towards the next Rift.
    .complete 84939,1 --5/5 Unstable Void Rifts closed
step
    #requires Unstable Void Rifts
    #completewith Unstable Void Rifts2
    .goto 1543,25.34,17.85
    .cast 430692 >>Click on the |cRXP_PICK_Portal|r
step
    #requires Unstable Void Rifts2
    .goto 1543,25.34,16.1
    >>Move towards the next Rift.
    .complete 84939,1,1 --5/5 Unstable Void Rifts closed
step
    #completewith next
    #label Unstable Void Rifts3
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 84939,1,2 --5/5 Unstable Void Rifts closed
step
    #completewith Unstable Void Rifts3
    .goto 1543,25.32,16.16
    .cast 430692 >>Click on the |cRXP_PICK_Portal|r
step
    #requires Unstable Void Rifts3
    .goto 1543,26.3,16.3
    >>Move towards the next Rift.
    .complete 84939,1,2 --5/5 Unstable Void Rifts closed
step
    #completewith next
    #label Unstable Void Rifts4
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 84939,1,3 --5/5 Unstable Void Rifts closed
step
    #completewith Unstable Void Rifts4
    .goto 1543,26.87,14.77
    .cast 430692 >>Click on the |cRXP_PICK_Portal|r
step
    #requires Unstable Void Rifts4
    .goto 1543,27.32,14.58
    >>Move towards the next Rift.
    .complete 84939,1,3 --5/5 Unstable Void Rifts closed
step
    #completewith next
    #label Unstable Void Rifts5
    .goto 1543,26.54,12.01,25,0
    .goto 1543,27.1,11.09,25,0
    .goto 1543,27.87,11.11,25,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 84939,1,4 --5/5 Unstable Void Rifts closed
step
    #completewith Unstable Void Rifts5
    .goto 1543,27.84,12.42
    .cast 430692 >>Click on the |cRXP_PICK_Portal|r
step
    #requires Unstable Void Rifts5
    .goto 1543,28.97,13.44
    >>Move towards the next Rift.
    .complete 84939,1,4 --5/5 Unstable Void Rifts closed
step
    #completewith next
    #label Unstable Void Rifts6
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 84939,1,5 --5/5 Unstable Void Rifts closed
step
    #completewith Unstable Void Rifts6
    .goto 1543,28.97,13.44
    .cast 430692 >>Click on the |cRXP_PICK_Portal|r
step
    #requires Unstable Void Rifts6
    #label Voidbeings
    .goto 1543,28.05,13.09
    >>Move toward the Questgiver.
    .complete 84939,1,5 --5/5 Unstable Void Rifts closed
step
    #loop
    .goto 1543,29.05,10.87,30,0
    .goto 1543,31.08,14.76,30,0
    .goto 1543,28.35,17.5,30,0
    .goto 1543,26.89,15.31,30,0
    .goto 1543,28,13.77,30,0
    >>Kill |cRXP_ENEMY_Voidbeings|r
    *Use the |cRXP_WARN_ExtraActionButton|r to deal additional damage.
    .complete 84938,1 --Stymie the Devouring Host (100%)
    .mob Devouring Zealot
    .mob Astral Wriggler
    .mob Devouring Supplicant
step
    .goto 1543,28.04,13.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sylvanas Windrunner|r
    .turnin 84938 >>Turn in Chaos Control
    .target Sylvanas Windrunner
step
    .goto 1543,28.20,12.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arator|r
    .turnin 84939 >>Turn in Mad Space
    .accept 84942 >>Accept The Final Hazard
    .target Arator
step
    .goto 1543,26.78,14.18
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Grapple Point|r on the structure infront of you(|cRXP_WARN_it's high up|r)
    .complete 84942,1 --1/1 Use the Grapple Point to ascend the tower (Optional)
step
    .goto 1543,24.98,13.24
    >>Kill |cRXP_ENEMY_Living Gateway|r
    .complete 84942,2 --1/1 Living Gateway slain
    .timer 9.5,RP
    .mob Living Gateway
step
    .goto 1543,25.79,14.67
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Gate|r
    .complete 84942,3 --1/1 Enter the Maw Gate
step
    .goto 1543,30.60,18.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sylvanas Windrunner|r
    .turnin 84942 >>Turn in The Final Hazard
    .target Sylvanas Windrunner
    .accept 84943 >>Accept The Long Vigil
    .accept 84944 >>Accept Preludes and Preparations
step
    #completewith Mawrat Teeth
    +If you can't mount in the maw, you can mount nearby |cRXP_FRIENDLY_Shadehound|r
    .target Scavenging Shadehound
step
    #completewith Gorgoa Reeds
    >>Kill |cRXP_ENEMY_Mawrats|r. Loot them for |T1518101:0|t[|cRXP_LOOT_Mawrat Teeth|r].
    .complete 84944,2 --50/50 Mawrat Teeth
    .mob Pilfering Mawrat
    .mob Emboldened Mawrat
step
    #completewith Gorgoa Reeds
    >>Kill |cRXP_ENEMY_Lamenting Visage|r. Loot them for |T5931428:0|t[|cRXP_LOOT_Soulthread|r].
    .complete 84944,1 --6/6 Soulthread
    .mob Lamenting Visage
step
    #completewith Gorgoa Reeds
    >>Kill |cRXP_ENEMY_Prowling Soul-Eater|r. Loot them for |T2032179:0|t[|cRXP_LOOT_Pristine Soul-Eater Hide|r].
    .complete 84944,4 --1/1 Pristine Soul-Eater Hide
    .mob Prowling Soul-Eater
step
    .goto 1543,32.63,19.67
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Flower|r
    .complete 84944,3,1 --6/6 Gorgoa Reeds
step
    .goto 1543,34.77,18.50
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stalwart Soul|r
    .complete 84943,1 --1/1 Stalwart Soul soothed
    .target Stalwart Soul
step
    .goto 1543,30.27,21.4
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Flower|r
    .complete 84944,3,2 --6/6 Gorgoa Reeds
step
    .goto 1543,28.08,24.35
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Plagued Soul|r
    .complete 84943,2 --1/1 Plagued Soul soothed
    .target Plagued Soul
step
    .goto 1543,26.66,23.44
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Flower|r
    .complete 84944,3,3 --6/6 Gorgoa Reeds
step
    .goto 1543,24.91,24.08
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Flower|r
    .complete 84944,3,4 --6/6 Gorgoa Reeds
step
    .goto 1543,22.51,24.97,20,0
    .goto 1543,23.54,26.81,20,0
    .goto 1543,20.68,29.79
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Betrayed Soul|r
    .complete 84943,3 --1/1 Betrayed Soul soothed
    .target Betrayed Soul
step
    .goto 1543,24.9,29.35,20,0
    .goto 1543,25.44,30.83
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Smoldering Soul|r
    .complete 84943,4 --1/1 Smoldering Soul soothed
    .target Smoldering Soul
step
    .goto 1543,27.02,37.71
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Flower|r
    .complete 84944,3,5 --6/6 Gorgoa Reeds
step
    #label Gorgoa Reeds
    .goto 1543,26.64,38.17
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Flower|r
    .complete 84944,3,6 --6/6 Gorgoa Reeds
step
    #hidewindow
    #completewith Mawrat Teeth
    #loop
    .goto 1543,31.07,28.19
    .goto 1543,29.3,23.71
    .goto 1543,27.84,24.09
    .goto 1543,25.05,25.01
    .goto 1543,24.75,23.55
    .goto 1543,22.94,24.25
    .goto 1543,22.79,26.25
    .goto 1543,27.87,35.67
    +1
step
    #completewith Prowling Soul-Eater
    >>Kill |cRXP_ENEMY_Mawrats|r. Loot them for |T1518101:0|t[|cRXP_LOOT_Mawrat Teeth|r].
    .complete 84944,2 --50/50 Mawrat Teeth
    .mob Pilfering Mawrat
    .mob Emboldened Mawrat
step
    #completewith Prowling Soul-Eater
    >>Kill |cRXP_ENEMY_Lamenting Visage|r. Loot them for |T5931428:0|t[|cRXP_LOOT_Soulthread|r].
    .complete 84944,1 --6/6 Soulthread
    .mob Lamenting Visage
step
    #label Prowling Soul-Eater
    >>Kill |cRXP_ENEMY_Prowling Soul-Eater|r. Loot them for |T2032179:0|t[|cRXP_LOOT_Pristine Soul-Eater Hide|r].
    .complete 84944,4 --1/1 Pristine Soul-Eater Hide
    .mob Prowling Soul-Eater
step
    #completewith next
    >>Kill |cRXP_ENEMY_Mawrats|r. Loot them for |T1518101:0|t[|cRXP_LOOT_Mawrat Teeth|r].
    .complete 84944,2 --50/50 Mawrat Teeth
    .mob Pilfering Mawrat
    .mob Emboldened Mawrat
step
    >>Kill |cRXP_ENEMY_Lamenting Visage|r. Loot them for |T5931428:0|t[|cRXP_LOOT_Soulthread|r].
    .complete 84944,1 --6/6 Soulthread
    .mob Lamenting Visage
step
    #label Mawrat Teeth
    >>Kill |cRXP_ENEMY_Mawrats|r. Loot them for |T1518101:0|t[|cRXP_LOOT_Mawrat Teeth|r].
    .complete 84944,2 --50/50 Mawrat Teeth
    .mob Pilfering Mawrat
    .mob Emboldened Mawrat
step
    .goto 1543,26.89,37.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arator|r
    .turnin 84944 >>Turn in Preludes and Preparations
    .target Arator
step
    .goto 1543,26.87,37.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sylvanas Windrunner|r
    .turnin 84943 >>Turn in The Long Vigil
    .target Sylvanas Windrunner
    .accept 84945 >>Accept Repent of the Highborne
step
    .goto 1543,26.87,37.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sylvanas Windrunner|r
    .complete 84945,1 --1/1 Ritual witnessed
    .skipgossipid 125316
step
    .goto 1543,26.87,37.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sylvanas Windrunner|r
    .turnin 84945 >>Turn in Repent of the Highborne
    .target Sylvanas Windrunner
step
    .goto 1543,26.9,37.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arator|r
    .accept 84946 >>Accept Returning to Life
    .target Arator
step
    .goto 1543,26.87,37.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sylvanas Windrunner|r
    .complete 84946,1 --1/1 Sylvanas warned
    .skipgossipid 134993
    .target Sylvanas Windrunner
step
    .goto 1543,25.89,31.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sylvanas Windrunner|r
    .accept 84947 >>Accept Determination
    .target Sylvanas Windrunner
step
    .goto 1543,25.89,31.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sylvanas Windrunner|r
    .complete 84947,1 --1/1 Stay awhile and listen
    .timer 66,RP
    .skipgossipid 125370
    .target Sylvanas Windrunner
step
    .goto 1543,26.28,31.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sylvanas Windrunner|r
    .turnin 84947 >>Turn in Determination
    .target Sylvanas Windrunner
step
    .goto 1543,24.57,33.14,20,0
    .goto 1543,24.38,34.14,20,0
    .goto 1543,24.89,36.92
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 84946,2 --1/1 Return to K'aresh
step
    .goto 2472,60.66,92.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arator|r
    .turnin 84946 >>Turn in Returning to Life
    .target Arator
    .accept 84949 >>Accept The Eleventh Hour
step
    #completewith next
    #label Vereesa found
    .goto 2472,44.84,26.68,35,0
    .goto 2472,46.01,25.82,5,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vereesa Windrunner|r in Dornogal.
    .complete 84949,2 --1/1 Vereesa found
    .skipgossipid 135008
    .target Vereesa Windrunner
step
    #completewith Vereesa found
    .goto 2472,49.49,19.97
    .zone 2339 >>Enter Dornogal
step
    #requires Vereesa found
    .goto 2339,39.68,79.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vereesa Windrunner|r in Dornogal.
    .complete 84949,2 --1/1 Vereesa found
    .skipgossipid 135008
    .target Vereesa Windrunner
step
    .goto 2339,39.89,79.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arator|r
    .turnin 84949 >>Turn in The Eleventh Hour
    .target Arator
]])




--Sources

--Unlock G-99 Breakneck
RXPGuides.RegisterGuide([[
#retail
#version 3
#group RestedXP War Within
#name Unlock G-99 Breakneck
#displayname G-99 Breakneck Unlock
#internal

step
    #label UnlockG99BreakneckA
    .goto 2346,42.68,51.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gas Grimeshank|r
    .accept 84352 >>Accept No More Walkin' Here
    .target Gas Grimeshank
step
    #completewith next
    #label NoMoreWalkinHere
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nanny Talullah|r
    .turnin 84352 >>Turn in No More Walkin' Here
    .accept 86618 >>Accept License Not Required
    .target Nanny Talullah
step
    #completewith NoMoreWalkinHere
    .goto 2346,35.40,48.84,15,0
    .goto 2346,36.49,46.12,15,0
    .goto 2346,37.65,48.06,5,0
    .goto 2346,37.89,47.56,5,0
    .goto 2346,37.51,47.13,5,0
    .goto 2346,37.78,46.73,5,0
    .goto 2346,38.11,47.25,5 >>Climb the stairs of the house
step
    #requires NoMoreWalkinHere
    .goto 2346,37.42,48.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nanny Talullah|r
    .turnin 84352 >>Turn in No More Walkin' Here
    .accept 86618 >>Accept License Not Required
    .target Nanny Talullah
step
    .goto 2346,37.42,48.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nanny Talullah|r
    .complete 86618,1 --1/1 Talk to Nanny Talullah
    .target Nanny Talullah
    .skipgossipid 131561
step
    #hidewindow
    #completewith next
    #label GetInG99Breakneck
    .complete 86618,2 --1/1 Get in the G-99 Breakneck
step
    #completewith GetInG99Breakneck
    .goto 2346,37.31,49.09
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Escape Chains|r
    .complete 86618,3 --1/1 Use the escape chains to reach the streets of Undermine (Optional)
step
    #requires GetInG99Breakneck
    .goto 2346,36.90,50.03
    >>Use the |T1408996:0|t[G-99 Breakneck] button (zone button)
    .complete 86618,2 --1/1 Get in the G-99 Breakneck
step
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,25.64,49.51,40,0
    .goto 2346,29.31,36.76,40,0
    .goto 2346,37.27,46.46
    .complete 86618,4 --Drive around Undermine (100%)
step
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,37.27,46.46
    .complete 86618,5 --Reach the D.R.I.V.E.
step
    .goto 2346,37.72,47.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mobber|r
    >>|cRXP_WARN_Install the |T4548870:0|t[Turbo: Wildfuel Mk. 0]|r
    .complete 86618,6 --1/1 Exit the G-99 Breakneck and install a turbo at the D.R.I.V.E.
    .target Mobber
    .skipgossipid 125367
step
    #completewith RegainBoostMeter
    #hidewindow
    #loop
    .goto 2346,35.28,50.32,35,0
    .goto 2346,25.83,49.98,35,0
    .goto 2346,36.85,27.64,35,0
    .goto 2346,42.42,35.87,35,0
    .goto 2346,42.31,44.47,35,0
    .goto 2346,38.29,50.19,35,0
    +1
step
    >>Use the |T1408996:0|t[G-99 Breakneck] button (zone button)
    >>Drive around and drift (hold space) to gain Turbo. Use the |T4548870:0|t[Boost] (1) when you have enough Turbo.
    .complete 86618,7 --1/1 Get back in the G-99 Breakneck and activate your boost
step
    #label RegainBoostMeter
    >>Drive around and drift (hold space) to gain Turbo (boost meter).
    .complete 86618,8 --30/30 Regain boost meter by drifting
step
    #label UnlockG99BreakneckB
    .goto 2346,36.82,46.23
    >>Use the |T3610511:0|t[Start Job] (5) button. Get a job (in-game)!
    .complete 86618,9 --1/1 Get a job from Nanny Talullah
step
    .isOnQuest 86618
    #completewith UnlockG99BreakneckC
    >>|cRXP_WARN_It's possible that not all jobs are included in this guide. Just follow the green arrow and the instructions|r
    .complete 86618,10 --1/1 Complete your job from Nanny Talullah
--step
--    .isOnQuest 83055
--    #title |cFFFCDC00Follow the arrow|r
--    .goto 2346,51.37,70.02
--    .complete 83055,1 --Package acquired
--step
--    .isOnQuest 83055
--    #title |cFFFCDC00Follow the arrow|r
--    .goto 2346,46.01,42.96,35,0
--    .goto 2346,51.31,38.26
--    .turnin 83055 >>Package Delivered
step
    .isOnQuest 85732
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,51.48,66.47
    .complete 85732,1 --1/1 Arrived at Venturewood
step
    .isOnQuest 85732
    #loop
    .goto 2346,50.33,62.19,30,0
    .goto 2346,45.41,57.37,30,0
    .goto 2346,43.31,66.03,30,0
    >>Drive over the |cRXP_PICK_Subborn Roaches|r
    .complete 85732,2 --20/20 Roaches "Diffused"
step
    .isOnQuest 86315
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,44.71,68.50
    .complete 86315,1 --1/1 Arrived at Venturewood
step
    .isOnQuest 86315
    #loop
    .goto 2346,44.71,68.50,30,0
    .goto 2346,44.98,61.37,35,0
    .goto 2346,47.99,68.35,35,0
    >>Kill the |cRXP_ENEMY_Underriders|r
    .complete 86315,2 --Underriders defeated (100%)
step
    #title |cFFFCDC00Follow the arrow|r
    .isOnQuest 84791
    .goto 2346,56.34,29.66
    .complete 84791,1 --1/1 Arrived at Blackwater Marina
step
    .isOnQuest 84791
    #completewith next
    #label CustomersFed
    .goto 2346,56.60,29.98,0
    >>Use the |T237335:0|t[|cRXP_WARN_ExtraActionButton|r]. Aim it at the |cRXP_FRIENDLY_Hungry Goblins|r
    .complete 84791,2 --5/5 Customers fed
step
    .isOnQuest 84791
    #completewith CustomersFed
    .goto 2346,56.60,29.98
    .aura -460013 >>Exit the G-99 Breakneck by using |T4200126:0|t[Eject] (6)
step
    .isOnQuest 84791
    #requires CustomersFed
    .goto 2346,56.60,29.98
    >>Use the |T237335:0|t[|cRXP_WARN_ExtraActionButton|r]. Aim it at the |cRXP_FRIENDLY_Hungry Goblins|r
    .complete 84791,2 --5/5 Customers fed
step
    .isOnQuest 84788
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,56.33,29.68
    .complete 84788,1 --1/1 Arrived at Blackwater Marina
step
    .isOnQuest 84788
    #completewith next
    #label CustomersFed
    .goto 2346,56.60,29.98,0
    >>Use the |T1046253:0|t[|cRXP_WARN_ExtraActionButton|r]. Aim it at the |cRXP_FRIENDLY_Hungry Goblins|r
    .complete 84788,2 --5/5 Customers fed
step
    .isOnQuest 84788
    #completewith CustomersFed
    .goto 2346,56.60,29.98
    .aura -460013 >>Exit the G-99 Breakneck by using |T4200126:0|t[Eject] (6)
step
    .isOnQuest 84788
    #requires CustomersFed
    .goto 2346,56.60,29.98
    >>Use the |T1046253:0|t[|cRXP_WARN_ExtraActionButton|r]. Aim it at the |cRXP_FRIENDLY_Hungry Goblins|r
    .complete 84788,2 --5/5 Customers fed
step
    .isOnQuest 86311
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,63.91,76.28
    .complete 86311,1 --Arrived at the Heaps
step
    .isOnQuest 86311
    #loop
    .goto 2346,63.91,76.28,25,0
    .goto 2346,67.68,87.01,35,0
    >>Kill the |cRXP_ENEMY_enemies|r in The Heap
    .complete 86311,2 --Heaps enemies defeated (100%)

step
    .isOnQuest 86319
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,47.00,60.44
    .complete 86319,1 --Arrived at the Heaps
step
    .isOnQuest 86319
    #loop
    .goto 2346,44.69,64.03,30,0
    .goto 2346,48.95,66.08,35,0
    .goto 2346,49.03,58.42,35,0
    >>Kill the |cRXP_ENEMY_Darkfuse Sky-copter|r
    .complete 86319,2 --3/3 Darkfuse Spy-copter slain
    .mob Darkfuse Sky-copter
step
    .isOnQuest 86313
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,47.19,81.59
    .complete 86313,1 --Arrived at the Heaps
step
    .isOnQuest 86313
    #loop
    .goto 2346,47.54,82.71,35,0
    .goto 2346,51.35,85.28,35,0
    .goto 2346,45.48,87.14,35,0
    >>Kill the |cRXP_ENEMY_Darkfuse forces|r
    .complete 86313,2 --Darkfuse defeated (100%)
    .mob Watchful Hyena
    .mob Darkfuse Taskmaster
step
    .isOnQuest 87588
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,46.77,79.42
    .complete 87588,1 --Arrived at The Heaps
step
    .isOnQuest 87588
    #title |cFFFCDC00Jump repeatedly|r
    .goto 2346,47.05,78.37
    .complete 87588,2 --Trash Compacted (100%)
step
    .isOnQuest 85888
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,65.30,86.74
    .complete 85888,1 --Arrived at the Heaps
step
    .isOnQuest 85888
    .goto 2346,64.77,87.06
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Pile of Unsorted Trash|r.
    *|cRXP_WARN_There are 2 possibilities:|r
    *- If it's trash then go to the "Trash This Way!" sign
    *- If it's art then go into the cave next to you
    .complete 85888,2 --5/5 Junk Sorted
step
    .isOnQuest 86318
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,46.08,40.03
    .complete 86318,1 --Arrived at Tailgate Park
step
    .isOnQuest 86318
    #loop
    .goto 2346,42.65,29.33,40,0
    .goto 2346,51.77,40.64,40,0
    .goto 2346,46.10,40.06,40,0
    >>Kill the |cRXP_ENEMY_Darkfuse forces|r
    .complete 86318,2 --Darkfuse defeated (100%)
    .mob Darkfuse Harasser
    .mob Darkfuse Growler
    .mob Darkfuse Oppressor
    .mob Darkfuse Enforcer
step
    .isOnQuest 85946
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,48.88,51.52
    .complete 85946,1 --Arrived at Pleasent Heights
step
    .isOnQuest 85946
    .goto 2346,49.48,51.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Bored Teenagers|r and |cRXP_FRIENDLY_Dweebus Fizzlewit|r
    .complete 85946,2 --3/3 Supermarket Crabs recovered for
    .target Bored Teenager
    .target Dweebus Fizzlewit
    .skipgossipid 125525
    .skipgossipid 125524
    .skipgossipid 125543
step
    .isOnQuest 85733
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,52.32,53.04
    .complete 85733,1 --Arrived at Pleasent Heights
step
    .isOnQuest 85733
    #title |cFFFCDC00Jump repeatedly|r
    .goto 2346,52.51,54.12
    .complete 85733,2 --Fruit Mashed (100%)
step
    .isOnQuest 85797
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,25.28,59.63
    .complete 85797,1 --Arrived at Vatworks
step
    .isOnQuest 85797
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garbo Punchgut|r.
    >>Kill |cRXP_ENEMY_Pierce Punchgut|r.
    .complete 85797,2 --1/1 Knife Tested
    .target Garbo Punchgut
    .mob Pierce Punchgut
    .skipgossipid 125403
step
    .isOnQuest 85874
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,41.27,85.29
    .complete 85874,1 --Arrived at Vatworks
step
    .isOnQuest 85874
    .goto 2346,41.61,85.02
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Fishin Pole|r
    >>Kill the |cRXP_ENEMY_Sewer Slinker|r. Loot it for |T133895:0|t[Gary the Goldfish]
    .complete 85874,2 --1/1 Gary the Goldfish rescued
    .mob Sewer Slinker
step
    .isOnQuest 86320
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,36.66,59.76
    .complete 86320,1 --Arrived at Vatworks
step
    .isOnQuest 86320
    #loop
    .goto 2346,40.41,57.34,25,0
    .goto 2346,37.35,64.17,25,0
    .goto 2346,41.23,62.47,25,0
    >>Kill the |cRXP_ENEMY_Emboldened bullies|r
    .mob Emboldened Bully
    .mob Emboldened Browbeater
step
    .isOnQuest 86410
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,38.23,64.69
    .complete 86410,1 --Arrived at Vatworks
step
    .isOnQuest 86410
    #loop
    .goto 2346,36.62,61.20,25,0
    .goto 2346,34.38,58.86,25,0
    .goto 2346,34.75,66.52,30,0
    .goto 2346,40.04,62.73,25,0
    >>Kill the |cRXP_ENEMY_Runaway Sewage|r
    .complete 86410,2 --Defeat the Slimes! (100%)
    .mob Runaway Sewage
step
    .isOnQuest 86412
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,32.44,68.54
    .complete 86412,1 --Arrived at the Vatworks
step
    .isOnQuest 86412
    #loop
    .goto 2346,31.66,64.55,20,0
    .goto 2346,25.21,64.55,25,0
    .goto 2346,32.04,76.12,25,0
    .goto 2346,34.47,67.11,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on 5 |cRXP_FRIENDLY_Destitute Residents|r
    .complete 86412,2 --New Outfits Distributed (100%)
    .target Destitute Resident
step
    .isOnQuest 85717
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,36.90,55.80
    .complete 85717,1 --Arrived at the Vatworks
step
    .isOnQuest 85717
    #completewith DaisyRescuedRunOntoPipe
    #label DaisyRescued
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_FRIENDLY_Daisy|r
    .complete 85717,2 --1/1 Daisy Rescued
    .target Daisy
step
    .isOnQuest 85717
    #label DaisyRescuedGoUpstairs
    #completewith DaisyRescued
    #title |cFFFCDC00Go upstairs|r
    .goto 2346,37.18,57.18,6,0
    .goto 2346,37.22,58.27,6,0
    .goto 2346,37.49,58.59,6,0
    .goto 2346,37.65,57.60,6,0
    .goto 2346,37.83,57.26,6 >>Go upstairs
step
    .isOnQuest 85717
    #requires DaisyRescuedGoUpstairs
    #label DaisyRescuedRunOntoPipe
    #completewith DaisyRescued
    #title |cFFFCDC00Run onto the pipe|r
    .goto 2346,37.01,56.54,3 >>Run onto the pipe |cRXP_WARN_with base movement speed|r.
step
    #requires DaisyRescuedRunOntoPipe
    .isOnQuest 85717
    .goto 2346,37.27,55.69
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_FRIENDLY_Daisy|r.
    .complete 85717,2 --1/1 Daisy Rescued
    .target Daisy
step
    .isOnQuest 85715
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,29.61,30.30
    .complete 85715,1 --Arrived at Hovel Hill
step
    .isOnQuest 85715
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on to the |cRXP_PICK_Artist Prop|r
    .goto 2346,28.93,29.06
    .complete 85715,2 --1/1 Model for Painting
step
    .isOnQuest 85771
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,28.70,46.76
    .complete 85771,1 --Arrived at Hovel Hill
step
    .isOnQuest 85771
    #title |cFFFCDC00Follow the arrow|r
    #loop
    .goto 2346,26.17,38.88,30,0
    .goto 2346,25.49,46.47,25,0
    .goto 2346,32.91,48.18,35,0
    .goto 2346,28.35,41.46,30,0
    >>Drive around near the |cRXP_FRIENDLY_Citizens|r
    .complete 85771,2 --6/6 Newspapers delivered to citizens of Undermine
step
    .isOnQuest 85759
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,32.72,34.82
    .complete 85759,1 --Arrived at Hovel Hill
step
    .isOnQuest 85759
    #loop
    .goto 2346,33.15,36.28,5,0
    .goto 2346,32.68,36.00,5,0
    .goto 2346,32.64,36.60,5,0
    >>Use the |T612393:0|t[|cRXP_WARN_ExtraActionButton|r] next to the pink and purple crystals
    .complete 85759,2 --3/3 Crystals Aligned
step
    .isOnQuest 86321
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,34.09,34.51
    .complete 86321,1 --Arrived at Hovel Hill
step
    .isOnQuest 86321
    #loop
    .goto 2346,34.44,34.63,30,0
    .goto 2346,39.94,36.10,30,0
    .goto 2346,34.24,47.43,30,0
    >>Kill |cRXP_ENEMY_Gallywix's forces|r
    .complete 86321,2 --Recruiters defeated (100%)
    .mob Arrogant Intruder
    .mob Recruitment Enforcer
    .mob Propaganda Pusher
step
    .isOnQuest 85854
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,28.02,47.54
    .complete 85854,1 --Arrived at Hovel Hill
step
    .isOnQuest 85854
    .goto 2346,28.16,48.61
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Books|r, |cRXP_PICK_Papers|r and |cRXP_PICK_Scrolls|r on the ground in the room
    .complete 85854,2 --Names Suggested (100%)
step
    .isOnQuest 85861
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,30.83,39.40
    .complete 85861,1 --Arrived at Hovel Hill
step
    .isOnQuest 85861
    .goto 2346,31.31,41.32
    >>Kill the |cRXP_ENEMY_Imagined Rug Monster|r
    .complete 85861,2 --1/1 Rug Monster defeated
    .mob Imagined Rug Monster
step
    .isOnQuest 86314
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,35.88,81.88
    .complete 86314,1 --Arrived at destination
step
    .isOnQuest 86314
    #loop
    .goto 2346,35.27,81.81,25,0
    .goto 2346,40.48,88.32,25,0
    .goto 2346,42.20,84.47,28,0
    >>Kill the |cRXP_ENEMY_Acidic Salvage|r
    .complete 86314,2 --5/5 Acidic Salvage slain
    .mob Acidic Salvage
step
    .isOnQuest 87569
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,37.29,46.49
    .complete 87569,1 --Arrived at Shipping and Handling Garage
step
    .isOnQuest 87569
    .goto 2346,37.81,47.24
    >>Use the |T443395:0|t[|cRXP_WARN_ExtraActionButton|r]
    .complete 87569,2 --1/1 Take your Legally Mandated Break
step
    .isOnQuest 86317
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,60.88,14.34
    .complete 86317,1 --Arrived at Castaway Cove
step
    .isOnQuest 86317
    #loop
    .goto 2346,61.66,13.47,30,0
    .goto 2346,62.58,6.84,35,0
    .goto 2346,61.66,13.47,30,0
    .goto 2346,65.62,15.50,35,0
    >>Kill the |cRXP_ENEMY_Darkfuse Smuggler
    .complete 86317,2 --4/4 Darkfuse Smuggler slain
    .mob Darkfuse Smuggler
step
    .isOnQuest 85758
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,39.03,50.96
    .complete 85758,1 --Arrived at the Incontinental Hotel
step
    .isOnQuest 85758
    #loop
    .goto 2346,39.59,51.89,6,0
    .goto 2346,40.19,51.71,6,0
    .goto 2346,40.39,50.59,6,0
    .goto 2346,39.96,50.14,6,0
    .goto 2346,39.60,50.70,5,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dirt Spots|r
    .complete 85758,2 --5/5 Dirt Spots Polished
step
    .isOnQuest 86418
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,43.13,51.09
    .complete 86418,1 --Arrived at the Incontinental Hotel
step
    .isOnQuest 86418
    #loop
    .goto 2346,44.30,49.21,15,0
    .goto 2346,40.28,56.15,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Hotel Guests|r
    .complete 86418,2 --
    .target Hotel Guest
step
    .isOnQuest 85826
    #title |cFFFCDC00Follow the arrow|r
    .goto 2346,45.04,45.71
    .complete 85826,1 --Arrived at the Incontinental Hotel
step
    .isOnQuest 85826
    #completewith next
    #label OldLadyEscorted
    >>Defend |cRXP_FRIENDLY_Old Lady Greasewheel|r
    .complete 85826,2 --1/1 Old Lady Greasewheel Escorted
    .target Old Lady Greasewheel
step
    .isOnQuest 85826
    #completewith OldLadyEscorted
    .goto 2346,45.03,46.36
    .gossipoption 125426 >>Talk to |cRXP_FRIENDLY_Old Lady Greasewheel|r
    .timer 16,Roleplay
step
    .isOnQuest 85826
    #requires OldLadyEscorted
    .goto 2346,46.43,43.22
    >>Defend |cRXP_FRIENDLY_Old Lady Greasewheel|r
    .complete 85826,2 --1/1 Old Lady Greasewheel Escorted
    .target Old Lady Greasewheel
step
    .isOnQuest 85826
    .goto 2346,46.43,43.22
    >>Kill |cRXP_ENEMY_Vengeful Crocheters|r
    .complete 85826,3 --2/2 Old Lady Greasewheel's Enemies Slain
    .mob Vengeful Crocheter
step
    #completewith next
    #label LicenseNotRequiredB
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nanny Talullah|r
    .turnin 86618 >>Turn in License Not Required
    .target Nanny Talullah
step
    #completewith LicenseNotRequiredB
    .goto 2346,36.95,46.39,15,0
    .goto 2346,37.65,48.06,6,0
    .goto 2346,37.89,47.56,6,0
    .goto 2346,37.51,47.13,6,0
    .goto 2346,37.78,46.73,6,0
    .goto 2346,38.11,47.25,6 >>Climb the stairs of the house
step
    #requires LicenseNotRequiredB
    #label UnlockG99BreakneckC
    .goto 2346,37.43,48.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nanny Talullah|r
    .turnin 86618 >>Turn in License Not Required
    .target Nanny Talullah
]])
