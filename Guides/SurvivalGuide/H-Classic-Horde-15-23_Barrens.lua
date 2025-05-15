local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 15-19 The Barrens
#version 1
#group RestedXP Survival Guide (H)
#subgroup RXP Survival Guide 1-20
#next 19-23 Stonetalon/Barrens/Ashenvale


step << !Tauren !Hunter !Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 837 >>Turn in Encroachment
    .goto Durotar,51.95,43.50
    .target Gar'Thok
    .isQuestComplete 837
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai'jin|r
	.train 6074 >> Train your class spells
    .target Tai'jin
    .xp <14,1
    .xp >16,1
step << Priest
    #optional
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai'jin|r
	.train 8102 >> Train your class spells
    .target Tai'jin
    .xp <16,1
step << Orc Warrior/Troll Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarshaw|r
    .train 1160 >> Train your class spells
    .target Tarshaw Jaggedscar
    .xp <14,1
    .xp >16,1
step << Orc Warrior/Troll Warrior
    #optional
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tarshaw|r
    .train 285 >> Train your class spells
    .target Tarshaw Jaggedscar
    .xp <16,1
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaplak|r
    .train 1758 >> Train your class spells
    .target Kaplak
    .xp <14,1
    .xp >16,1
step << Rogue
    #optional
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaplak|r
    .train 6761 >> Train your class spells
    .target Kaplak
    .xp <16,1
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dhugru|r
    .train 6222 >> Train your class spells
    .target Dhugru Gorelust
    .xp <14,1
    .xp >16,1
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kitha|r and buy |T133738:0|t[Grimoire of Sacrifice]
    .collect 16316,1,842,1 --Grimoire of Sacrifice (Rank 1) (1)
    .target Kitha
    .xp <16,1
step << Warlock
    #optional
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dhugru|r
    .train 1455 >> Train your class spells
    .target Dhugru Gorelust
    .xp <16,1
step << !Tauren !Hunter !Shaman
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Accept Conscript of the Horde
    .target Takrin Pathseeker
    .isQuestAvailable 840
step
    #optional
    .abandon 480 >> Abandon The Weaver to avoid quest log issues. You'll pick it up again later
    .isOnQuest 480
step
    #completewith next
    .zone The Barrens >> Travel to The Barrens
    .zoneskip The Barrens
step << !Tauren !Hunter !Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Turn in Conscript of the Horde
    .accept 842 >>Accept Crossroads Conscription
    .target Kargal Battlescar
    .isOnQuest 840
step << !Tauren !Hunter !Shaman
    #label Akzeloth
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Turn in Ak'Zeloth
    .accept 924 >>Accept The Demon Seed
    .isOnQuest 809
    .target Ak'Zeloth
    .group
step << !Tauren !Hunter !Shaman
    .goto The Barrens,62.34,20.03
    >>|cRXP_WARN_Loot the|r |T134095:0|t[Flawed Power Stone] |cRXP_WARN_next to|r |cRXP_FRIENDLY_Ak'Zeloth|r|cRXP_WARN_. This item has a 30 minute timer, so be sure to be quick|r
    .turnin 926 >>Turn in Flawed Power Stone
    .isOnQuest 924
    .group
step << !Tauren !Hunter !Shaman
    #completewith next
    .goto The Barrens,52.34,29.27,150 >> Travel to The Crossroads
step << !Undead !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zargh|r, |cRXP_FRIENDLY_Gazrog|r, |cRXP_FRIENDLY_Sergra|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Mankrik|r and |cRXP_FRIENDLY_Thork|r
    .accept 6365 >>Accept Meats to Orgrimmar
    .target +Zargh
    .goto The Barrens,52.62,29.84
    .accept 869 >>Accept Raptor Thieves
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .turnin 842 >>Turn in Crossroads Conscription
    .accept 844 >>Accept Plainstrider Menace
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
    .accept 870 >>Accept The Forgotten Pools
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.94
    .accept 899 >>Accept Consumed by Hatred
    .accept 4921 >>Accept Lost in Battle
    .target +Mankrik
    .goto The Barrens,52.00,31.60
    .accept 871 >>Accept Disrupt the Attacks
    .accept 5041 >>Accept Supplies for the Crossroads
    .target +Thork
    .goto The Barrens,51.50,30.87
    .maxlevel 16
step << !Undead !Tauren
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zargh|r, |cRXP_FRIENDLY_Gazrog|r, |cRXP_FRIENDLY_Sergra|r, |cRXP_FRIENDLY_Tonga|r and |cRXP_FRIENDLY_Mankrik|r
    .accept 6365 >>Accept Meats to Orgrimmar
    .target +Zargh
    .goto The Barrens,52.62,29.84
    .accept 869 >>Accept Raptor Thieves
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .turnin 842 >>Turn in Crossroads Conscription
    .accept 844 >>Accept Plainstrider Menace
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
    .accept 870 >>Accept The Forgotten Pools
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.94
    .accept 899 >>Accept Consumed by Hatred
    .accept 4921 >>Accept Lost in Battle
    .target +Mankrik
    .goto The Barrens,52.00,31.60
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazrog|r, |cRXP_FRIENDLY_Sergra|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Mankrik|r and |cRXP_FRIENDLY_Thork|r
    .accept 869 >>Accept Raptor Thieves
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .turnin 842 >>Turn in Crossroads Conscription
    .accept 844 >>Accept Plainstrider Menace
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
    .accept 870 >>Accept The Forgotten Pools
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.94
    .accept 899 >>Accept Consumed by Hatred
    .accept 4921 >>Accept Lost in Battle
    .target +Mankrik
    .goto The Barrens,52.00,31.60
    .accept 871 >>Accept Disrupt the Attacks
    .accept 5041 >>Accept Supplies for the Crossroads
    .target +Thork
    .goto The Barrens,51.50,30.87
    .maxlevel 16
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazrog|r, |cRXP_FRIENDLY_Sergra|r, |cRXP_FRIENDLY_Tonga|r and |cRXP_FRIENDLY_Mankrik|r
    .accept 869 >>Accept Raptor Thieves
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .turnin 842 >>Turn in Crossroads Conscription
    .accept 844 >>Accept Plainstrider Menace
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
    .accept 870 >>Accept The Forgotten Pools
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.94
    .accept 899 >>Accept Consumed by Hatred
    .accept 4921 >>Accept Lost in Battle
    .target +Mankrik
    .goto The Barrens,52.00,31.60
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_He is at the top of the tower|r
    .accept 867 >>Accept Harpy Raiders
    .target Darsok Swiftdagger
step
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .turnin 6365 >>Turn in Meats to Orgrimmar << !Tauren !Undead
    .accept 6384 >>Accept Ride to Orgrimmar << !Tauren !Undead
    --.fp Crossroads >> Get the Crossroads Flight Path
    .zoneskip Orgrimmar
    .target Devrak
    .isOnQuest 6365
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    .accept 848 >>Accept Fungal Spores
    .accept 1492 >>Accept Wharfmaster Dizzywig
	.turnin 1358 >>Turn in Sample for Helbrim
    .target Apothecary Helbrim
step
    #completewith DemonSeed
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    .group
    .goto The Barrens,51.09,22.68,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,47.58,19.38,100 >> Travel to the top of the mountain
    .isOnQuest 924
step
    .group
    #label DemonSeed
    .goto The Barrens,47.98,19.08
    >>Right click the |cRXP_PICK_Altar|r
    >>|cRXP_WARN_Make sure you have a|r |T134095:0|t[Flawed Power Stone] |cRXP_WARN_(30 minute duration) on you|r
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step
    .group
    #completewith DisruptTheAttacks
    .goto The Barrens,47.58,19.38,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,51.09,22.68,100 >> Travel down the mountain where you came from
    .isOnQuest 924
step
    #completewith DisruptTheAttacks
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    #completewith next
    >>Kill |cRXP_ENEMY_Water Seekers|r, |cRXP_ENEMY_Thornweavers|r and |cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
    .isOnQuest 871
step
    .goto The Barrens,55.70,27.30
    .use 4926 >> Loot |cRXP_PICK_Chen's Empty Keg|r from the ground and start the quest. If it's not up you'll get it later
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Accept Chen's Empty Keg
step << !Tauren !Hunter !Shaman
    #label DisruptTheAttacks
    #loop
	.goto The Barrens,53.63,24.50,0
	.goto The Barrens,53.63,24.50,50,0
	.goto The Barrens,54.26,24.64,50,0
	.goto The Barrens,54.81,25.19,50,0
	.goto The Barrens,55.50,25.61,50,0
	.goto The Barrens,55.86,26.30,50,0
	.goto The Barrens,55.83,27.15,50,0
	.goto The Barrens,55.41,27.41,50,0
	.goto The Barrens,54.50,26.97,50,0
	.goto The Barrens,54.05,26.11,50,0
	.goto The Barrens,53.51,25.24,50,0
    >>Kill |cRXP_ENEMY_Water Seekers|r, |cRXP_ENEMY_Thornweavers|r and |cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
    .isOnQuest 871
step
    #loop
    .goto The Barrens,53.71,29.19,0
    .goto The Barrens,53.36,26.28,80,0
    .goto The Barrens,53.23,28.41,80,0
    .goto The Barrens,53.57,29.58,80,0
    .goto The Barrens,52.91,32.90,80,0
    .goto The Barrens,51.31,32.91,80,0
    .goto The Barrens,50.50,31.05,80,0
    .goto The Barrens,50.05,29.77,80,0
    .goto The Barrens,50.93,27.72,80,0
    .goto The Barrens,52.83,27.91,80,0
    .goto The Barrens,53.71,29.19,80,0
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    .goto The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .turnin 844 >>Turn in Plainstrider Menace
    .accept 845 >>Accept The Zhevra
    .target Sergra Darkthorn
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r
    .turnin 871 >>Turn in Disrupt the Attacks
    .accept 872 >>Accept The Disruption Ends
    .target Thork
    .isQuestComplete 871
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r
    .accept 872 >>Accept The Disruption Ends
    .target Thork
    .isQuestTurnedIn 871
step << !Tauren !Undead
    .goto The Barrens,52.62,29.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >>Turn in Return to the Crossroads
    .target Zargh
    .isOnQuest 6386
step
    #sticky
    #completewith EnterRFC
    .subzone 2437 >> Now you should be looking for a group to Ragefire Chasm
    .dungeon RFC
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Boorand|r
    .home >> Set your Hearthstone to Crossroads
    .target Innkeeper Boorand Plainswind
    .dungeon RFC
step << skip --!Tauren
    #completewith next
    .zone Stonetalon Mountains >> Travel to Stonetalon Mountains
    .zoneskip Stonetalon Mountains
    .dungeon RFC
step << skip --!Tauren
    #completewith next
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >> Follow the path on the left upward
    .dungeon RFC
step << skip --!Tauren
    .goto Stonetalon Mountains,74.69,98.10
    .goto Thunder Bluff,56.65,18.96,30 >>|cRXP_WARN_Jump onto one of the cages. Perform a Logout Skip by logging out and back in|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >> |cRXP_WARN_CLICK HERE for an example|r
    .dungeon RFC
step << skip --!Tauren
    #completewith RFCPickups
    .goto Thunder Bluff,50.75,37.07,40 >> Take the elevator up to Thunder Bluff
    .dungeon RFC
step << Tauren
    #completewith RFCPickups
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >>Fly to Thunder Bluff
    .dungeon RFC
step << !Tauren
    #completewith RFCPickups
    .goto Mulgore,68.68,60.34,120,0
    .zone Thunder Bluff >>Travel South to Camp Taurajo and enter Mulgore. Travel to Thunder Bluff from there
    >>|cRXP_WARN_If you have the Thunder Bluff flight path, fly there instead|r
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >> Travel to the Elder Rise
    .dungeon RFC
step
    #label RFCPickups
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rahauro|r
    .accept 5722 >> Accept Searching for the Lost Satchel
    .accept 5723 >> Accept Testing an Enemy's Strength
    .target Rahauro
    .dungeon RFC
step
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fp Thunder Bluff >> Get the Thunder Bluff flight path << !Tauren
    .fly Orgrimmar >> Fly to Orgrimmar
    .target Tal
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Accept Hidden Enemies
    .target Thrall
    .dungeon RFC
step
    .goto Durotar,53.08,9.19
    >>Kill |cRXP_ENEMY_Burning Blade|r mobs in Skull Rock until |cRXP_LOOT_Lieutenant's Insignia|r drops
    .complete 5726,1 --Lieutenant's Insignia (1)
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >> Turn in Hidden Enemies
    .accept 5727 >> Accept Hidden Enemies
    .target Thrall
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeru Fireblade|r
    .accept 5761 >>Accept Slaying the Beast
    .target Neeru Fireblade
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeru Fireblade|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >> Turn in Hidden Enemies
    .accept 5728 >> Accept Hidden Enemies
    .target Thrall
    .dungeon RFC
step
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_Destroy|r |T134417:0|t[Lieutenant's Insignia] |cRXP_WARN_as you no longer need it|r
step
    #label EnterRFC
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >> Enter the RFC Instance portal. Zone in
    .dungeon RFC
step
    #completewith next
    >>Kill |cRXP_ENEMY_Ragefire Troggs|r and |cRXP_ENEMY_Ragefire Shamans|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .turnin 5722 >> Turn in Searching for the Lost Satchel
    .accept 5724 >> Accept Returning the Lost Satchel
    .target Maur Grimtotem
    .isOnQuest 5722
    .dungeon RFC
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .accept 5724 >> Accept Returning the Lost Satchel
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
    .dungeon RFC
step
    #label TroggsShamans
    >>Kill |cRXP_ENEMY_Ragefire Troggs|r and |cRXP_ENEMY_Ragefire Shamans|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>Kill |cRXP_ENEMY_Searing Blade Cultists|r and |cRXP_ENEMY_Searing Blade Warlocks|r. Loot them for the |cRXP_LOOT_Spells of Shadow|r and |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step
    >>Kill |cRXP_ENEMY_Taragaman the Hungerer|r. Loot him for his |cRXP_LOOT_Heart|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob Taragaman the Hungerer
    .isOnQuest 5761
    .dungeon RFC
step
    #label BazzalanandJergosh
    >>Kill |cRXP_ENEMY_Bazzalan|r and |cRXP_ENEMY_Jergosh the Invoker|r
    .complete 5728,1 --Bazzalan (1)
    .mob +Bazzalan
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob +Jergosh the Invoker
    .isOnQuest 5728
    .dungeon RFC
step
    >>Kill |cRXP_ENEMY_Searing Blade Cultists|r and |cRXP_ENEMY_Searing Blade Warlocks|r. Loot them for the |cRXP_LOOT_Spells of Shadow|r and |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeru Fireblade|r
    .turnin 5761 >>Turn in Slaying the Beast
    .target Neeru Fireblade
    .isQuestComplete 5761
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 5728 >> Turn in Hidden Enemies
    .accept 5729 >> Accept Hidden Enemies
    .target Thrall
    .isQuestComplete 5728
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .accept 5729 >> Accept Hidden Enemies
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neeru Fireblade|r
    .turnin 5729 >> Turn in Hidden Enemies
    .accept 5730 >> Accept Hidden Enemies
    .target Neeru Fireblade
    .dungeon RFC
    .isQuestTurnedIn 5728
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall|r
    .turnin 5730 >> Turn in Hidden Enemies
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step
    #completewith next
    .zone Durotar >> Leave Orgrimmar
    .zoneskip Durotar
    .dungeon RFC
step
    .goto Durotar,50.8,13.8,40 >>Go up the Zeppelin Tower
    .zone Tirisfal Glades >>Take the Zeppelin to Tirisfal Glades
    .zoneskip Tirisfal Glades
    .isQuestComplete 5725
    .dungeon RFC
step
    #completewith Varimathras
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Enter Undercity
    .zoneskip Undercity
    .dungeon RFC
step
    #completewith next
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Take the lift down to the Undercity
    .goto Undercity,56.2,96.2
    .dungeon RFC
step
    #label Varimathras
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Varimathras|r
    .turnin 5725 >>Turn in The Power to Destroy...
    .target Varimathras
    .isQuestComplete 5725
    .dungeon RFC
step
    #completewith next
    .hs >> Hearth to The Crossroads
    .use 6948
    .dungeon RFC
step
    #completewith FinalRFCTurnin
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >> Fly to Thunder Bluff
    .target Devrak
    .zoneskip Thunder Bluff
    .dungeon RFC
step
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Turn in Returning the Lost Satchel
    .turnin 5723 >> Turn in Testing an Enemy's Strength
    .target Rahauro
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Turn in Returning the Lost Satchel
    .target Rahauro
    .dungeon RFC
    .isOnQuest 5724
step
    #label FinalRFCTurnin
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rahauro|r
    .turnin 5723 >> Turn in Testing an Enemy's Strength
    .target Rahauro
    .dungeon RFC
    .isQuestComplete 5723
step
    #completewith RatchetArrive
    .hs >> Hearth to The Crossroads
    .cooldown item,6948,>0
    .use 6948
    .dungeon RFC
    .zoneskip Thunder Bluff,1
step
    #completewith RatchetArrive
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Fly to The Crossroads
    .target Tal
    .cooldown item,6948,<0
    .zoneskip The Barrens
    .dungeon RFC
step
    #optional
    .abandon 5723 >> Abandon Testing an Enemy's Strength
    .isOnQuest 5723
    .dungeon RFC
step
    #optional
    .abandon 5725 >> Abandon Turn in The Power to Destroy...
    .isOnQuest 5725
    .dungeon RFC
step
    #optional
    .abandon 5728 >> Abandon Hidden Enemies
    .isOnQuest 5728
    .dungeon RFC
step
    #optional
    .abandon 5761 >> Abandon Slaying the Beast
    .isOnQuest 5761
    .dungeon RFC
step
    .goto The Barrens,55.70,27.30,20,0
    .goto The Barrens,55.78,20.00
    .use 4926 >> Loot |cRXP_PICK_Chen's Empty Keg|r from the ground and start the quest
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Accept Chen's Empty Keg
step
    #completewith KreenigSnarlsnout
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>Kill |cRXP_ENEMY_Razormane Geomancers|r and |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .isOnQuest 872
step
    #completewith next
    >>Loot the |cRXP_PICK_Crossroads' Supply Crates|r. It has multiple spawn locations
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .isOnQuest 5041
step
    #label KreenigSnarlsnout
    .goto The Barrens,58.69,27.08
    >>Kill |cRXP_ENEMY_Kreenig Snarlsnout|r. Loot him for his |cRXP_LOOT_Tusk|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Kreenig Snarlsnout
    .isOnQuest 872
step
    #optional
    #completewith next
    .goto The Barrens,56.75,24.69,0
    .goto The Barrens,59.26,24.67,0
    >>Kill |cRXP_ENEMY_Razormane Geomancers|r and |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .isOnQuest 872
step
    .goto The Barrens,58.38,27.01,30,0
    .goto The Barrens,59.46,24.58
    >>Loot the |cRXP_PICK_Crossroads' Supply Crates|r. It has multiple spawn locations
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .isOnQuest 5041
step
    #loop
	.goto The Barrens,58.90,25.37,0
	.goto The Barrens,59.37,25.38,50,0
	.goto The Barrens,59.63,24.46,50,0
	.goto The Barrens,59.63,23.88,50,0
	.goto The Barrens,59.06,23.89,50,0
	.goto The Barrens,58.62,23.98,50,0
	.goto The Barrens,57.83,24.28,50,0
	.goto The Barrens,56.87,24.55,50,0
	.goto The Barrens,56.74,25.37,50,0
	.goto The Barrens,57.25,25.46,50,0
	.goto The Barrens,57.52,25.63,50,0
	.goto The Barrens,57.65,25.08,50,0
	.goto The Barrens,58.24,24.98,50,0
	.goto The Barrens,58.90,25.37,50,0
    >>Kill |cRXP_ENEMY_Razormane Geomancers|r and |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .isOnQuest 872
step
    #completewith next
    >>Kill any |cRXP_ENEMY_Zhevra|r you see. Loot them for their |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    .group
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 924 >>Turn in The Demon Seed
    .target Ak'Zeloth
    .isQuestComplete 924
step
    #completewith next
    >>Kill any |cRXP_ENEMY_Zhevra|r you see. Loot them for their |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    .goto The Barrens,63.08,36.56,120 >> Travel toward Ratchet
    .subzoneskip 392,1
step
    #label RatchetArrive
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
    .accept 887 >>Accept Southsea Freebooters
    .target Gazlowe
step
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Get the Ratchet flight path
    .target Bragok
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r and |cRXP_FRIENDLY_Wanted poster|r
    .accept 894 >>Accept Samophlange
    .goto The Barrens,62.98,37.22
    .accept 895 >>Accept WANTED: Baron Longshore
    .goto The Barrens,62.59,37.47
    .target Sputtervalve
step << Troll Warrior/Undead Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135147:0|t[Gnarled Staff] |cRXP_BUY_from him|r
    .collect 2030,1,895,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior/Undead Warrior
    #completewith BarenLongshore
    +Equip the |T135147:0|t[Gnarled Staff]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_.Buy a|r |T132394:0|t[Bearded Axe] |cRXP_BUY_from him|r
    .collect 2025,1,895,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #completewith BarenLongshore
    +Equip the |T132394:0|t[Bearded Axe]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T133046:0|t[Rock Hammer] |cRXP_BUY_from him|r
    .collect 2026,1,895,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #completewith BarenLongshore
    +Equip the |T133046:0|t[Rock Hammer] when you are level 16
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Shaman
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135147:0|t[Gnarled Staff] |cRXP_BUY_from him|r
    .collect 2030,1,895,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #completewith BarenLongshore
    +Equip the |T135147:0|t[Gnarled Staff]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135343:0|t[Scimitar] |cRXP_BUY_from him|r
    .collect 2027,1,895,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a second|r |T135343:0|t[Scimitar] |cRXP_BUY_from him for your off-hand|r
    .collect 2027,2,895,1 --Collect Scimitar(1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step
    .goto The Barrens,62.27,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drohn|r
    .turnin 819 >>Turn in Chen's Empty Keg
    .accept 821 >>Accept Chen's Empty Keg
    .target Brewmaster Drohn
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Wiley|r
    >>|cRXP_BUY_Buy|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    >>|cRXP_BUY_Buy|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_WARN_They are extremely cheap, buy as many as you want|r
    .vendor >> Vendor Trash
    .collect 4592,40,895,1 --Longjaw Mud Snapper (40)
    .collect 1205,20,895,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (20)
    .home >>Set your Hearthstone to Ratchet
    .target Innkeeper Wiley
step
    #completewith BaronLongshore
    .destroy 5088 >> |cRXP_WARN_Delete the|r |T133735:0|t[Control Console Operating Manual] |cRXP_WARN_from your bags, as it's no longer needed|r
step
    #completewith BaronLongshore
    >>Kill |cRXP_ENEMY_Southsea Brigands|r and |cRXP_ENEMY_Southsea Cannoneers|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
step << Orc Rogue/Troll Rogue
	#completewith next
	>>Kill |cRXP_ENEMY_Tazan|r. Loot him for his |cRXP_LOOT_Satchel|r. He patrols up and down the hill
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    #label BaronLongshore
    #loop
    .goto The Barrens,64.21,47.14,0
    .goto The Barrens,63.57,49.14,0
    .goto The Barrens,62.64,49.72,0
    .goto The Barrens,64.21,47.14,50,0
    .goto The Barrens,63.57,49.14,50,0
    .goto The Barrens,62.64,49.72,50,0
    >>Kill |cRXP_ENEMY_Baron Longshore|r. Loot him for his |cRXP_LOOT_Head|r He can be found in one of the camps
    .complete 895,1 --Baron Longshore's Head (1)
    .unitscan Baron Longshore
step << Orc Rogue/Troll Rogue
	#completewith next
	>>Kill |cRXP_ENEMY_Tazan|r. Loot him for his |cRXP_LOOT_Satchel|r. He patrols up and down the hill
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    #loop
    .goto The Barrens,64.23,47.10,0
    .goto The Barrens,64.40,44.09,50,0
    .goto The Barrens,63.62,46.26,50,0
    .goto The Barrens,64.23,47.10,50,0
    >>Kill |cRXP_ENEMY_Southsea Brigands|r and |cRXP_ENEMY_Southsea Cannoneers|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
step << Orc Rogue/Troll Rogue
    .goto The Barrens,63.70,44.32,50,0
    .goto The Barrens,62.70,44.07,50,0
    .goto The Barrens,62.18,44.47
    >>Kill |cRXP_ENEMY_Tazan|r. Loot him for his |cRXP_LOOT_Satchel|r. He patrols up and down the hill
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
    .turnin 887 >>Turn in Southsea Freebooters
    .turnin 895 >>Turn in WANTED: Baron Longshore
    .accept 890 >>Accept The Missing Shipment
    .target Gazlowe
step
    .goto The Barrens,63.35,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzywig|r
    .turnin 1492 >>Turn in Wharfmaster Dizzywig
    .turnin 890 >>Turn in The Missing Shipment
    .accept 892 >>Accept The Missing Shipment
    .accept 896 >>Accept Miner's Fortune
    .target Wharfmaster Dizzywig
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
    .turnin 892 >>Turn in The Missing Shipment
    .accept 888 >>Accept Stolen Booty
    .target Gazlowe
step << Troll Warrior/Undead Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135147:0|t[Gnarled Staff] |cRXP_BUY_from him|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior/Undead Warrior
    #completewith FlyToXroads1
    +Equip the |T135147:0|t[Gnarled Staff]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T132394:0|t[Bearded Axe] |cRXP_BUY_from him|r
    .collect 2025,1,850,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #completewith FlyToXroads1
    +Equip the |T132394:0|t[Bearded Axe]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T133046:0|t[Rock Hammer] |cRXP_BUY_from him|r
    .collect 2026,1,850,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #completewith FlyToXroads1
    +Equip the |T133046:0|t[Rock Hammer] when you are level 16
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Shaman
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135147:0|t[Gnarled Staff] |cRXP_BUY_from him|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #completewith FlyToXroads1
    +Equip the |T135147:0|t[Gnarled Staff]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a|r |T135343:0|t[Scimitar] |cRXP_BUY_from him.|r
    .collect 2027,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Buy a second|r |T135343:0|t[Scimitar] |cRXP_BUY_from him for your off-hand.|r
    .collect 2027,2,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step
    #label FlyToXroads1
    #completewith XroadsTurnins3
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fly to The Crossroads
    .target Bragok
    .isQuestComplete 845
step
    #completewith next
    >>Kill every |cRXP_ENEMY_Raptor|r you see. Loot them for their |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #loop
    .goto The Barrens,55.27,37.82,0
    .goto The Barrens,48.33,36.75,0
    .goto The Barrens,55.27,37.82,80,0
    .goto The Barrens,53.84,38.52,80,0
    .goto The Barrens,52.63,38.07,80,0
    .goto The Barrens,49.49,37.20,80,0
    .goto The Barrens,48.33,36.75,80,0
    >>Finish killing |cRXP_ENEMY_Zhevras|r. Loot them for their |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r
    .turnin 5041 >>Turn in Supplies for the Crossroads
    .turnin 872 >>Turn in The Disruption Ends
    .target Thork
    .isQuestComplete 872
    .isQuestComplete 5041
step
    #optional
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r
    .turnin 5041 >>Turn in Supplies for the Crossroads
    .target Thork
    .isQuestComplete 5041
step
    #optional
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r
    .turnin 872 >>Turn in The Disruption Ends
    .target Thork
    .isQuestComplete 872
step
    #label XroadsTurnins3
    .goto The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .turnin 845 >>Turn in The Zhevra
    .accept 903 >>Accept Prowlers of the Barrens
    .target Sergra Darkthorn
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Barg|r
    .collect 2515,1200,870,1 << Hunter --Sharp Arrow (1200)
    .target Barg
step
    #completewith RegtharDeathgate1
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    #completewith next
    >>Kill every |cRXP_ENEMY_Raptor|r you see. Loot them for their |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #label RegtharDeathgate1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Accept Kolkar Leaders
    .accept 855 >>Accept Centaur Bracers
    .target Regthar Deathgate
step
    #completewith Leaders
    >>Kill |cRXP_ENEMY_Kolkar Wranglers|r and |cRXP_ENEMY_Kolkar Stormers|r. Loot them for their |cRXP_LOOT_Bracers|r
    >>|cRXP_WARN_This quest does not have to be completed now|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
step
    #completewith next
    >>Collect |cRXP_LOOT_Laden Mushrooms|r around The Forgotten Pools
    >>|cRXP_WARN_This quest does not have to be completed now|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    .goto The Barrens,45.06,22.54
    >>Dive underwater to the |cRXP_PICK_Bubble Fissure|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    .goto The Barrens,42.82,23.52
    >>Kill |cRXP_ENEMY_Barak Kodobane|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Be careful! His melee hits deal a lot of damage and he is protected by a|r |cRXP_ENEMY_Kolkar Wrangler|r|cRXP_WARN_ . They can net you and shoot at you from ranged distance|r
    .complete 850,1 --Kodobane's Head (1)
    .mob Barak Kodobane
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Turn in Kolkar Leaders
    .accept 851 >>Accept Verog the Dervish
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #label Leaders
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Turn in Kolkar Leaders
    .accept 851 >>Accept Verog the Dervish
    .target Regthar Deathgate
step
    #completewith next
    >>Kill every |cRXP_ENEMY_Raptor|r you see. Loot them for their |cRXP_LOOT_Heads|r
    >>|cRXP_WARN_This quest does not have to be completed now|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #loop
    .goto The Barrens,41.62,23.42,0
    .goto The Barrens,41.62,23.42,50,0
    .goto The Barrens,41.30,24.31,50,0
    .goto The Barrens,40.52,22.88,50,0
    .goto The Barrens,41.00,21.19,50,0
    .goto The Barrens,40.32,20.69,50,0
    >>Kill |cRXP_ENEMY_Savannah Prowlers|r. Loot them for their |cRXP_LOOT_Claws|r and |cRXP_LOOT_Tusks|r
    .complete 903,1 --Prowler Claws (7)
    .complete 821,1 --Savannah Lion Tusk (5)
    .mob Savannah Prowler
step
    #loop
    .goto The Barrens,41.84,14.81,0
    .goto The Barrens,41.51,19.09,60,0
    .goto The Barrens,40.82,18.23,60,0
    .goto The Barrens,40.95,16.80,60,0
    .goto The Barrens,41.23,15.79,60,0
    .goto The Barrens,41.21,14.75,60,0
    .goto The Barrens,41.84,14.81,60,0
    >>Kill |cRXP_ENEMY_Witching Harpies|r and |cRXP_ENEMY_Witching Roguefeathers|r. Loot them for their |cRXP_LOOT_Talons|r
    .complete 867,1 --Witchwing Talon (8)
    .mob Witchwing Harpy
    .mob Witchwing Roguefeather
step
    #completewith Samophlange
    +|cRXP_WARN_Be careful of|r |cRXP_ENEMY_Sunscale Scytheclaws|r |cRXP_WARN_in the area. They are up to level 18 and can|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
step
    #sticky
    #completewith Samophlange
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    .goto The Barrens,43.80,12.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vrang|r
	.vendor	>> Vendor trash and repair
    .target Vrang Wildgore
step
	#label Samophlange
    .goto The Barrens,52.40,11.65
    >>Click on the |cRXP_PICK_Control Console|r
    .turnin 894 >>Turn in Samophlange
    .accept 900 >>Accept Samophlange
step
    .goto The Barrens,52.33,11.57
    >>Click on the |cRXP_PICK_Valve|r
    >>|cRXP_WARN_Be careful! Two mobs will spawn after you shut off the Valve|r
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    .goto The Barrens,52.29,11.40
    >>Click on the |cRXP_PICK_Valve|r
    >>|cRXP_WARN_One mob will spawn after you shut off the Valve|r
    .complete 900,3 --Shut off Regulator Valve (1)
step
    .goto The Barrens,52.40,11.40
    >>Click on the |cRXP_PICK_Valve|r
    .complete 900,1 --Shut off Main Control Valve (1)
step
    .goto The Barrens,52.40,11.65
    >>Click on the |cRXP_PICK_Control Console|r
    .turnin 900 >>Turn in Samophlange
    .accept 901 >>Accept Samophlange
step
    .goto The Barrens,52.84,10.40
    >>Kill |cRXP_ENEMY_Tinkerer Sniggles|r in the building. Loot him for his |cRXP_LOOT_Console Key|r
    .complete 901,1 --Console Key (1)
    .mob Tinkerer Sniggles
step
    .goto The Barrens,52.40,11.65
    >>Click on the |cRXP_PICK_Control Console|r
    .turnin 901 >>Turn in Samophlange
    .accept 902 >>Accept Samophlange
step << Druid
    #completewith DruidTraining1
    .cast 18960 >>Cast |T135758:0|t[Teleport: Moonglade]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .train 5211 >> Train your class spells
    .target Loganaar
    .xp <16,1
    .xp >18,1
step << Druid
    #label DruidTraining1
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .train 1430 >> Train your class spells
    .target Loganaar
    .xp <18,1
step
    #completewith next
    .hs >>Hearth to Ratchet
    .use 6948
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Wiley|r
    >>|cRXP_BUY_Buy|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    >>|cRXP_BUY_Buy|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_WARN_They are extremely cheap, buy as many as you want|r
    .vendor >> Vendor Trash
    .collect 4592,40,896,1 --Longjaw Mud Snapper (40)
    .collect 1205,40,896,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (40)
    .target Innkeeper Wiley
step
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 902 >>Turn in Samophlange
    .accept 3921 >>Accept Wenikee Boltbucket
    .accept 1483 >> Accept Ziz Fizziks
    .target Sputtervalve
step
    #completewith Crossroadsturnins2
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fly to The Crossroads
    .target Bragok
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Turn in Fungal Spores
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r and |cRXP_FRIENDLY_Gazrog|r
    .turnin 867 >>Turn in Harpy Raiders
    .accept 875 >>Accept Harpy Lieutenants
    .target +Darsok Swiftdagger
    .goto The Barrens,51.62,30.90
    .turnin 870 >> Turn in The Forgotten Pools
    .accept 877 >> Accept The Stagnant Oasis
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
    .turnin 903 >>Turn in Prowlers of the Barrens
    .accept 881 >>Accept Echeyakee
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.01
    .turnin 869 >>Turn in Raptor Thieves
    .accept 3281 >>Accept Stolen Silver
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .isQuestComplete 869
step
    #label Crossroadsturnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r, |cRXP_FRIENDLY_Darsok|r, |cRXP_FRIENDLY_Tonga|r and |cRXP_FRIENDLY_Sergra|r
    .turnin 867 >>Turn in Harpy Raiders
    .accept 875 >>Accept Harpy Lieutenants
    .target +Darsok Swiftdagger
    .goto The Barrens,51.62,30.90
    .turnin 870 >> Turn in The Forgotten Pools
    .accept 877 >> Accept The Stagnant Oasis
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
    .turnin 903 >>Turn in Prowlers of the Barrens
    .accept 881 >>Accept Echeyakee
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.01
step << Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Buy a|r |T134410:0|t[Medium Quiver] |cRXP_BUY_from him|r
    .collect 11362,1,896,1 --Medium Quiver (1)
    .collect 2515,1800,896,1 --Sharp Arrow (1800)
    .target Uthrok
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Boorand|r
    .home >>Set your Hearthstone to Crossroads
    .target Innkeeper Boorand Plainswind
step
    #completewith CatsEye
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fly to Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << !Tauren !Undead
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Turn in Ride to Orgrimmar
    .accept 6385 >>Accept Doras the Wind Rider Master
    .target Innkeeper Gryshka
    .isOnQuest 6384
step << !Tauren !Undead
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >> Turn in Doras the Wind Rider Master
    .accept 6386 >> Accept Return to the Crossroads
    .target Doras
    .isOnQuest 6385
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 8019 >> Train your class spells
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 913 >> Train your class spells
    .target Kardris Dreamseeker
    .xp <18,1
step
    .goto Orgrimmar,38.94,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zor|r
    .accept 1061 >>Accept The Spirits of Stonetalon
    .target Zor Lonetree
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenthul|r
    .train 1804 >> Train |T136058:0|t[Pick Lock]
    .train 921 >> Train |T133644:0|t[Pick Pocket]
    .accept 2379 >> Accept Zando'Zan
    .target Shenthul
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therzok|r
    .turnin 1963 >> Turn in The Shattered Hand
    .accept 1858 >> Accept The Shattered Hand
    .target Therzok
step << Rogue
    .goto Orgrimmar,42.72,52.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zando'zan|r
    .turnin 2379 >>Turn in Zando'zan
    .accept 2382 >>Accept Wrenix of Ratchet
    .target Zando'zan
step << Orc Rogue/Troll Rogue
    #completewith next
    .goto Orgrimmar,42.10,49.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Buy a|r |T134065:0|t[Thieves' Tools] |cRXP_BUY_from him|r
    .collect 5060,1,1858,1 --Collect Thieves' Tools (1)
    .target Rekkul
    .money <0.15
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.52
    >>|cRXP_WARN_Use|r |T136058:0|t[Pick Lock] |cRXP_WARN_to open|r |T133626:0|t[Tazan's Satchel]
    .complete 1858,1 --Tazan's Logbook (1)
    .money <0.15
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therzok|r
    .turnin 1858 >>Turn in The Shattered Hand
    .target Therzok
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,53.99,68.05
    >>|cRXP_WARN_Use|r |T133644:0|t[Pick Pocket] |cRXP_WARN_on|r |cRXP_ENEMY_Gamon|r |cRXP_WARN_in the Inn. Use his key to open|r |T133626:0|t[Tazan's Satchel]
	.collect 7208,1,1858,1 --Tazan's Key
	.complete 1858,1 --Tazan's Logbook (1)
    .isOnQuest 1858
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therzok|r
    .turnin 1858 >>Turn in The Shattered Hand
    .target Therzok
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
    .train 1455 >> Train your class spells
    .target Mirket
    .xp <16,1
    .xp >18,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mirket|r
    .train 1014 >> Train your class spells
    .target Mirket
    .xp <18,1
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgul|r and buy |T133738:0|t[Grimoire of Sacrifice]
    .collect 16316,1,896,1 --Grimoire of Sacrifice (Rank 1) (1)
    .target Kurgul
    .xp <16,1
    .xp >18,1
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgul|r and buy |T133738:0|t[Grimoire of Sacrifice]
    .collect 16351,1,896,1 --Grimoire of Sacrifice (Rank 1) (1)
    .target Kurgul
    .xp <18,1
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
    .train 285 >> Train your class spells
    .target Grezz Ragefist
    .xp <16,1
    .xp >18,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
    .train 8198 >> Train your class spells
    .target Grezz Ragefist
    .xp <18,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
    .train 13795 >> Train your class spells
    .target Ormak Grimshot
    .xp <16,1
    .xp >18,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
    .train 2643 >> Train your class spells
    .target Ormak Grimshot
    .xp <18,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xao'tsu|r
    .train 24557 >> Train your pet spells
    .target Xao'tsu
step << Hunter
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanashi|r
    .train 227 >>Train Staves
    .target Hanashi
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8102 >> Train your class spells
    .target Ur'kyo
    .xp <16,1
    .xp >18,1
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 970 >> Train your class spells
    .target Ur'kyo
    .xp <18,1
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
    .train 2120 >> Train your class spells
    .target Pephredo
    .xp <16,1
    .xp >18,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
    .train 3140 >> Train your class spells
    .target Pephredo
    .xp <18,1
step
    #completewith next
    .skill firstaid,40 >> Create|T133685:0|t[Linen Bandages] until your skill is 40 or higher
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Arnok|r
    .train 3276 >> Train |T133688:0|t[Heavy Linen Bandage]
    .target Arnok
    .skill firstaid,<1,1
step
    #completewith next
    .skill firstaid,50 >> Create |T133688:0|t[Heavy Linen Bandages] until your skill is 50 or higher
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Arnok|r
    .train 3274 >> Train Journeyman First Aid
    .target Arnok
    .skill firstaid,<1,1
step
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .goto Orgrimmar,18.03,60.51,50 >> Enter The Barrens through the Western Exit
    .zoneskip The Barrens
    .isOnQuest 896
step
    #label CatsEye
    #loop
    .goto The Barrens,61.51,4.43,0
    .goto The Barrens,61.46,4.50,40,0
    .goto The Barrens,61.06,3.63,40,0
    .goto The Barrens,61.63,3.37,40,0
    .goto The Barrens,62.14,3.52,40,0
    .goto The Barrens,61.94,4.53,40,0
    .goto The Barrens,61.85,5.37,40,0
    .goto The Barrens,61.44,5.56,40,0
    .goto The Barrens,61.17,5.05,40,0
    .goto The Barrens,61.51,4.43,40,0
    >>Kill |cRXP_ENEMY_Venture Co. Enforcers|r and |cRXP_ENEMY_Venture Co. Overseers|r. Loot them for |cRXP_LOOT_Cats Eye Emerald|r
    >>|cRXP_WARN_Avoid going into the mine. Mobs are easily double pulled and there is little room for escape|r
    .complete 896,1 -- Cats Eye Emerald (1)
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    #ssf
    .goto The Barrens,61.51,4.43,0
    .goto The Barrens,61.46,4.50,40,0
    .goto The Barrens,61.06,3.63,40,0
    .goto The Barrens,61.63,3.37,40,0
    .goto The Barrens,62.14,3.52,40,0
    .goto The Barrens,61.94,4.53,40,0
    .goto The Barrens,61.85,5.37,40,0
    .goto The Barrens,61.44,5.56,40,0
    .goto The Barrens,61.17,5.05,40,0
    .goto The Barrens,61.51,4.43,40,0
    >>Kill |cRXP_ENEMY_Venture Co. Overseers|r. Loot them for their |T132794:0|t[|cRXP_LOOT_Flask of Oil|r]
    .collect 814,5,103,1 --Flask of Oil (5)
    .dungeon DM
step
    #ah
    .goto The Barrens,61.51,4.43,0
    .goto The Barrens,61.46,4.50,40,0
    .goto The Barrens,61.06,3.63,40,0
    .goto The Barrens,61.63,3.37,40,0
    .goto The Barrens,62.14,3.52,40,0
    .goto The Barrens,61.94,4.53,40,0
    .goto The Barrens,61.85,5.37,40,0
    .goto The Barrens,61.44,5.56,40,0
    .goto The Barrens,61.17,5.05,40,0
    .goto The Barrens,61.51,4.43,40,0
    >>Kill |cRXP_ENEMY_Venture Co. Overseers|r. Loot them for their |T132794:0|t[|cRXP_LOOT_Flask of Oil|r]
    >>|cRXP_WARN_You could also buy them from the auction house instead|r
    .collect 814,5,103,1 --Flask of Oil (5)
    .dungeon DM
step
    #completewith Wenikee
    >>Kill every |cRXP_ENEMY_Raptor|r you see. Loot them for their |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #completewith next
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Ornery Plainstrider
step
    #label Wenikee
    .goto The Barrens,49.05,11.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wenikee|r
    .turnin 3921 >>Turn in Wenikee Boltbucket
    .accept 3922 >>Accept Nugget Slugs
    .target Wenikee Boltbucket
step
    #sticky
    #completewith Slugs
    >>Loot |cRXP_PICK_Tool Buckets|r from the ground around The Sludge Ven.
    .complete 3922,1 --Nugget Slugs (15)
step
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Wizzlecrank's Shredder|r in The Sludge Ven
    .accept 858 >>Accept Ignition
    .target Wizzlecrank's Shredder
step
    #completewith next
    +|cRXP_WARN_Be careful if|r |cRXP_ENEMY_Foreman Grills|r |cRXP_WARN_or|r |cRXP_ENEMY_Sludge Beast|r |cRXP_WARN_is up. They are strong level 19 rare mobs|r
    .unitscan Foreman Grills
    .unitscan Sludge Beast
step
    .goto The Barrens,56.52,8.47,20,0
    .goto The Barrens,56.34,8.24,12,0
    .goto The Barrens,56.12,8.33,12,0
    .goto The Barrens,56.05,8.49,12,0
    .goto The Barrens,56.13,8.56,12,0
    .goto The Barrens,56.34,8.24
    >>Kill |cRXP_ENEMY_Supervisor Lugwizzle|r. Loot him for his |cRXP_LOOT_Key|r. He patrols up and down the platform
    .complete 858,1 --Ignition Key (1)
    .mob Supervisor Lugwizzle
step
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Wizzlecrank's Shredder|r
    >>|cRXP_WARN_This will begin an escort. Make sure you're at full health|r
    .turnin 858 >>Turn in Ignition
    .accept 863,1 >>Accept The Escape
    .target Wizzlecrank's Shredder
step
    #label Slugs
    .goto The Barrens,55.80,7.76,30,0
    .goto The Barrens,55.51,7.13
    >>|cRXP_WARN_Two|r |cRXP_ENEMY_Venture Co. Mercenaries|r |cRXP_WARN_will spawn when the shredder moves onto the higher ground. Kill them then wait for his RP event at the end|r
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
    .mob Venture Co. Mercenary
    .mob Venture Co. Drudger
    .mob Overseer Glibby
step
    #loop
	.goto The Barrens,55.69,6.94,0
	.goto The Barrens,55.50,7.98,25,0
	.goto The Barrens,55.60,8.85,25,0
	.goto The Barrens,56.04,9.79,25,0
	.goto The Barrens,56.68,8.82,25,0
	.goto The Barrens,57.17,9.08,25,0
	.goto The Barrens,57.61,8.41,25,0
	.goto The Barrens,57.31,7.20,25,0
	.goto The Barrens,56.72,6.92,25,0
	.goto The Barrens,56.17,6.80,25,0
	.goto The Barrens,55.69,6.94,25,0
    >>Loot |cRXP_PICK_Tool Buckets|r from the ground around The Sludge Ven.
    .complete 3922,1 --Nugget Slugs (15)
step
	#completewith NuggetSlugsTurnIn
	+|cRXP_WARN_If you have over 15 |cRXP_LOOT_Nugget Slugs|r|cRXP_WARN_, split the stack of any extras (shift click), then delete them|r
step
    #sticky
    #completewith NuggetSlugsTurnIn
    >>Kill every |cRXP_ENEMY_Raptor|r you see. Loot them for their |cRXP_LOOT_Heads|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #sticky
    #completewith NuggetSlugsTurnIn
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    .goto The Barrens,55.80,17.03
    >>Use the |T134227:0|t[Horn of Echeyakee] to summon |cRXP_ENEMY_Echeyakee|r
    >>Kill |cRXP_ENEMY_Echeyakee|r. Loot him for |cRXP_LOOT_Echeyakee's Hide|r
    >>|cRXP_WARN_If |cRXP_ENEMY_Echeyakee|r doesn't spawn after using the|r |T134227:0|t[Horn of Echeyakee]|cRXP_WARN_ or you didn't get the tag when it did spawn, skip this step|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    .goto The Barrens,52.23,31.00
    .abandon 881 >>|cRXP_WARN_If |cRXP_ENEMY_Echeyakee|r didn't spawn after using the|r |T134227:0|t[Horn of Echeyakee]|cRXP_WARN_or you didn't get the tag when it did spawn, abandon Echeyakee, then return to town and accept it again|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .accept 881 >>Accept Echeyakee
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto The Barrens,55.80,17.03
    >>Use the |T134227:0|t[Horn of Echeyakee] to summon |cRXP_ENEMY_Echeyakee|r
    >>Kill |cRXP_ENEMY_Echeyakee|r. Loot him for |cRXP_LOOT_Echeyakee's Hide|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    #label NuggetSlugsTurnIn
    .goto The Barrens,49.05,11.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wenikee|r
    .turnin 3922 >>Turn in Nugget Slugs
    .accept 3923 >>Accept Rilly Greasygob
    .target Wenikee Boltbucket
step
    #loop
    .goto The Barrens,47.81,14.18,0
    .goto The Barrens,47.81,14.18,50,0
    .goto The Barrens,45.78,14.74,50,0
    .goto The Barrens,44.60,15.04,50,0
    >>Finish killing |cRXP_ENEMY_Raptors|r. Loot them for their |cRXP_LOOT_Heads|r
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r    
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #loop
	.goto The Barrens,40.15,15.98,0
	.goto The Barrens,40.28,15.49,50,0
	.goto The Barrens,39.50,14.68,50,0
	.goto The Barrens,39.47,13.24,50,0
	.goto The Barrens,38.94,12.80,50,0
	.goto The Barrens,38.18,12.56,50,0
	.goto The Barrens,37.96,13.52,50,0
	.goto The Barrens,38.62,13.95,50,0
	.goto The Barrens,38.18,14.62,50,0
	.goto The Barrens,38.14,15.59,50,0
	.goto The Barrens,37.29,15.68,50,0
	.goto The Barrens,37.24,16.26,50,0
	.goto The Barrens,37.67,16.34,50,0
	.goto The Barrens,38.35,17.08,50,0
	.goto The Barrens,38.83,17.71,50,0
	.goto The Barrens,39.37,17.21,50,0
	.goto The Barrens,39.87,16.66,50,0
	.goto The Barrens,40.15,15.98,50,0
    >>Kill |cRXP_ENEMY_Witchwing Slayers|r. Loot them for their |cRXP_LOOT_Rings|r
    >>|cRXP_WARN_Be careful!|r |cRXP_ENEMY_Witchwing Slayers|r |cRXP_WARN_can execute. Stay above 20% health|r
    >>|cRXP_WARN_Watch out for|r |cRXP_ENEMY_Witchwing Ambushers|r|cRXP_WARN_. They are stealthed and patrol in the area|r
    .complete 875,1 --Harpy Lieutenant Ring (6)
    .mob Witchwing Slayer
    .mob Witchwing Ambusher
step
    #completewith FoodandWater1
    .hs >> Hearth to The Crossroads
    .use 6948
    .cooldown item,6948,>0
    .subzoneskip 380
step
    #completewith FoodandWater1
    .goto The Barrens,52.09,30.43,120 >>Travel to The Crossroads. You can also grind untill your |T134414:0|t[Hearthstone] is back up
    .cooldown item,6948,<0
    .subzoneskip 380
step
    #completewith next
    +|cRXP_WARN_Make sure you don't sell your|r |T132794:0|t[|cRXP_LOOT_Flask of Oil|r]!
    .itemcount 814,5
    .dungeon DM
step
    #label FoodandWater1
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Boorand|r
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
step << !Tauren !Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazrog|r, |cRXP_FRIENDLY_Zargh|r, |cRXP_FRIENDLY_Sergra|r and |cRXP_FRIENDLY_Darsok|r
    .turnin 869 >>Turn in Raptor Thieves
    .accept 3281 >>Accept Stolen Silver
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .turnin 6386 >> Turn in Return to the Crossroads
    .target +Zargh
    .goto The Barrens,52.62,29.84
    .turnin 881 >>Turn in Echeyakee
    .accept 905 >>Accept The Angry Scytheclaws
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
    .turnin 875 >> Turn in Harpy Lieutenants
    .accept 876 >> Accept Serena Bloodfeather
    .target +Darsok Swiftdagger
    .goto The Barrens,51.62,30.90
    .isOnQuest 6386
step
    #label EcheyakeeTurnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazrog|r, |cRXP_FRIENDLY_Sergra|r and |cRXP_FRIENDLY_Darsok|r
    .turnin 869 >>Turn in Raptor Thieves
    .accept 3281 >>Accept Stolen Silver
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .turnin 881 >>Turn in Echeyakee
    .accept 905 >>Accept The Angry Scytheclaws
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
    .turnin 875 >> Turn in Harpy Lieutenants
    .accept 876 >> Accept Serena Bloodfeather
    .target +Darsok Swiftdagger
    .goto The Barrens,51.62,30.90
step
    #completewith TheEscapeTurnIn
    .destroy 10327 >>|cRXP_WARN_Destroy|r |T134227:0|t[Horn of Echeyakee] |cRXP_WARN_as you no longer need it|r
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Barg|r
    .collect 2515,1800,888,1 << Hunter --Sharp Arrow (1800)
    .target Barg
step
    #completewith TheEscapeTurnIn
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >> Fly to Ratchet
    .target Devrak
step << Rogue
    .goto The Barrens,63.07,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wrenix|r
    .turnin 2382 >>Turn in Wrenix of Ratchet
    .accept 2381 >>Accept Plundering the Plunderers
    .target Wrenix the Wretched
step << Rogue
    .goto The Barrens,63.12,36.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wrenix's Gizmotronic Apparatus|r
    >>|cRXP_WARN_Obtain an|r |T134059:0|t[E.C.A.C.] |cRXP_WARN_and a|r |T134065:0|t[Thieves' Tools]
    .collect 7970,1,888,1 --E.C.A.C. (1)
    .collect 5060,1,888,1 --Thieves' Tools (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r and |cRXP_FRIENDLY_Dizzywig|r
    .turnin 863 >> Turn in The Escape
    .accept 1483 >> Accept Ziz Fizziks
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 896 >> Turn in Miner's Fortune
    .target +Wharfmaster Dizzywig
    .goto The Barrens,63.35,38.45
    .isQuestComplete 896
step
    #label TheEscapeTurnIn
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r
    .turnin 863 >> Turn in The Escape
    .accept 1483 >> Accept Ziz Fizziks
    .target Sputtervalve
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mebok|r
    .accept 865 >>Accept Raptor Horns
    .accept 1069 >>Accept Deepmoss Spider Eggs
    .target Mebok Mizzyrix
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Wiley|r
    >>|cRXP_BUY_Buy|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    >>|cRXP_BUY_Buy|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_WARN_They are extremely cheap, buy as many as you want|r
    .vendor >> Vendor Trash
    .collect 4592,40,888,1 --Longjaw Mud Snapper (40)
    .collect 1205,20,888,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (20)
    .target Innkeeper Wiley
step << Rogue
	#completewith next
    .goto The Barrens,65.04,45.44
    +|cRXP_WARN_Jump onto the ship, go down to the 2nd floor and level your lockpicking up to at least 70|r
step << Rogue
    .goto The Barrens,64.95,45.44
    >>Once your lockpicking is 70, go to the bottom floor of the ship and open |cRXP_PICK_The Jewel of the Southsea|r
    >>|cRXP_WARN_Use the|r |T134059:0|t[E.C.A.C.] |cRXP_WARN_on|r |cRXP_ENEMY_Polly|r
    .complete 2381,1 --Southsea Treasure (1)
    .use 7970
    .mob Polly
step
    .goto The Barrens,63.58,49.25
    >>Loot the |cRXP_PICK_Crate|r on the ground
    .complete 888,2 --Telescopic Lens (1)
step
    .goto The Barrens,62.63,49.64
    >>Loot the |cRXP_PICK_Crate|r on the ground
    .complete 888,1 --Shipment of Boots (1)
step
    #completewith TestSeeds
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #completewith TestSeeds
    >>Kill any |cRXP_ENEMY_Sunscale Scytheclaw|r you see. Loot them for their |cRXP_LOOT_Horns|r and |cRXP_LOOT_Feathers|r
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r    
    .complete 865,1 --Intact Raptor Horn (5)
    .collect 5165,3,905,3 --Sunscale Feather (3)
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,57.39,52.28,60,0
    .goto The Barrens,58.04,53.87
    >>Loot the |cRXP_PICK_Stolen Silver|r
    .complete 3281,1 --Stolen Silver (1)
step
    #completewith Verog
    >>Collect |cRXP_LOOT_Laden Mushrooms|r around The Stagnant Oasis
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #label TestSeeds
    .goto The Barrens,55.61,42.75
    >>Dive underwater in the middle of the lake and click the |cRXP_PICK_Bubble Fissure|r
    .complete 877,1 --Test the Dried Seeds (1)
step
    #completewith next
    .goto The Barrens,52.95,41.75,0
    >>Kill |cRXP_ENEMY_Verog|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_He has a chance of spawning every time a|r |cRXP_ENEMY_Centaur|r |cRXP_WARN_is killed|r
    .complete 851,1 --Verog's Head (1)
    .mob Verog the Dervish
    .isOnQuest 851
step
    #loop
    .goto The Barrens,55.80,45.78,0
    .goto The Barrens,55.80,45.78,50,0
    .goto The Barrens,56.75,43.41,50,0
    .goto The Barrens,57.01,41.22,50,0
    .goto The Barrens,55.45,41.37,50,0
    .goto The Barrens,54.99,40.84,50,0
    .goto The Barrens,53.41,40.26,50,0
    .goto The Barrens,52.99,44.73,50,0
    .goto The Barrens,54.31,46.81,50,0
    >>Grind |cRXP_ENEMY_Centaurs|r around the oasis. Loot them for their |cRXP_LOOT_Bracers|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 851
step
    #label Verog
    #loop
    .goto The Barrens,56.75,43.41,0
    .goto The Barrens,55.80,45.78,50,0
    .goto The Barrens,56.75,43.41,50,0
    .goto The Barrens,57.01,41.22,50,0
    .goto The Barrens,55.45,41.37,50,0
    .goto The Barrens,54.99,40.84,50,0
    .goto The Barrens,53.41,40.26,50,0
    .goto The Barrens,52.99,44.73,50,0
    .goto The Barrens,54.31,46.81,50,0
    >>Grind |cRXP_ENEMY_Centaurs|r around the oasis. Once |cRXP_ENEMY_Verog|r spawns, kill him and loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_ENEMY_Verog|r |cRXP_WARN_has a chance of spawning every time a|r |cRXP_ENEMY_Centaur|r |cRXP_WARN_is killed|r
    .complete 851,1 --Verog's Head (1)
    .mob Verog the Dervish
step
    #loop
    .goto The Barrens,55.72,42.14,0
    .goto The Barrens,55.72,42.14,30,0
    .goto The Barrens,55.49,41.75,30,0
    .goto The Barrens,55.09,41.58,30,0
    .goto The Barrens,55.03,42.24,30,0
    .goto The Barrens,55.27,43.17,30,0
    .goto The Barrens,55.78,43.47,30,0
    .goto The Barrens,56.15,43.28,30,0
    .goto The Barrens,56.08,42.58,30,0
    >>Collect |cRXP_LOOT_Laden Mushrooms|r around The Stagnant Oasis
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #completewith LizardHorn
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    .goto The Barrens,52.60,46.10
    >>Click the Blue Raptor Nest. Kill more |cRXP_ENEMY_Sunscale Scytheclaws|r if you don't have a |T132914:0|t[Sunscale Feather]
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r  
    .complete 905,1 --Visit Blue Raptor Nest (1)
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,52.45,46.57
    >>Click the Red Raptor Nest. Kill more |cRXP_ENEMY_Sunscale Scytheclaws|r if you don't have a |T132914:0|t[Sunscale Feather]
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r  
    .complete 905,3 --Visit Red Raptor Nest (1)
    .mob Sunscale Scytheclaw
step
    #label Nest
    .goto The Barrens,52.02,46.47
    >>Click the Yellow Raptor Nest. Kill more |cRXP_ENEMY_Sunscale Scytheclaws|r if you don't have a |T132914:0|t[Sunscale Feather]
    >>|cRXP_WARN_Be careful as they cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r  
    .complete 905,2 --Visit Yellow Raptor Nest (1)
    .mob Sunscale Scytheclaw
step
    #loop
    .goto The Barrens,57.3,53.7,0
    .goto The Barrens,52.0,46.5,0
    .goto The Barrens,57.3,53.7,90,0
    .goto The Barrens,52.0,46.5,90,0
    >>Finish killing |cRXP_ENEMY_Sunscale Scytheclaws|r. Loot them for their Horns
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #label LostmyWife
    .goto The Barrens,49.33,50.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mankrik's Wife|r
    .complete 4921,1 --Find Mankrik's Wife (1)
    .target Beaten Corpse
step
    #label LizardHorn
    #completewith SetCampTaurajoHS
    >>Kill |cRXP_ENEMY_Stormstouts|r. Loot them for a |cRXP_LOOT_Horn|r. This does not have to be completed now
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    .goto The Barrens,45.23,58.41,120 >> Travel to Camp Taurajo
step
    #label SetCampTaurajoHS
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Byula|r
    .home >>Set your Hearthstone to Camp Taurajo
    .target Innkeeper Byula
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mangletooth|r
    .accept 878 >>Accept Tribes at War
    .target Mangletooth
step
    #completewith Xroadsturnins2
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Get the Camp Taurajo flight path << !Tauren
    .fly Crossroads >>Fly to The Crossroads
    .target Omusa Thunderhorn
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Turn in Fungal Spores
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #label Xroadsturnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mankrik|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r and |cRXP_FRIENDLY_Gazrog|r
    .turnin 4921 >>Turn in Lost in Battle
    .target +Mankrik
    .goto The Barrens,52.00,31.60
    .turnin 877 >>Turn in The Stagnant Oasis
    .accept 880 >>Accept Altered Beings
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
    .turnin 905 >>Turn in The Angry Scytheclaws
    .accept 3261 >>Accept Jorn Skyseer
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.01
    .turnin 3281 >>Turn in Stolen Silver
    .target +Gazrog
    .goto The Barrens,51.93,30.32
step
    .destroy 5165 >>Delete any leftover |T132914:0|t[Sunscale Feathers] you may still have
    .itemcount 5165,1
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Barg|r
    .collect 2515,1800,888,1 << Hunter --Sharp Arrow (1800)
    .target Barg
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
    .isQuestComplete 855
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 851 >>Turn in Verog the Dervish
    .accept 852 >>Accept Hezrul Bloodmark
    .target Regthar Deathgate
    .isQuestComplete 851
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .accept 852 >>Accept Hezrul Bloodmark
    .target Regthar Deathgate
    .isQuestTurnedIn 851
step
    #completewith next
    .goto The Barrens,35.26,27.88,100 >> Travel to Stonetalon Mountains
    .zoneskip Stonetalon Mountains
step
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seereth|r and |cRXP_FRIENDLY_Makaba|r
    .turnin 1061 >> Turn in The Spirits of Stonetalon
    .accept 1062 >> Accept Goblin Invaders
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .accept 6548 >> Accept Avenge My Village
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79

]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Horde
#name 19-23 Stonetalon/Barrens/Ashenvale
#version 1
#group RestedXP Survival Guide (H)
#subgroup RXP Survival Guide 1-20
#next 23-25 Hillsbrad

step
    #optional
    #completewith next
    >>Abandon Report to Kadrak to avoid quest log issues. You'll pick it up again later
    .abandon 6541 >> Abandon Report to Kadrak
    .isOnQuest 6541
step
    #loop
    .goto Stonetalon Mountains,80.62,89.99,0
    .goto Stonetalon Mountains,80.62,89.99,40,0
    .goto Stonetalon Mountains,79.79,88.75,40,0
    .goto Stonetalon Mountains,81.19,87.56,40,0
    .goto Stonetalon Mountains,81.70,86.44,40,0
    .goto Stonetalon Mountains,82.26,86.10,40,0
    .goto Stonetalon Mountains,82.55,85.22,40,0
    .goto Stonetalon Mountains,83.64,85.02,40,0
    .goto Stonetalon Mountains,84.20,85.20,40,0
    .goto Stonetalon Mountains,83.80,86.38,40,0
    .goto Stonetalon Mountains,83.25,87.23,40,0
    .goto Stonetalon Mountains,82.33,89.73,40,0
    .goto Stonetalon Mountains,82.33,90.43,40,0
    .goto Stonetalon Mountains,81.34,90.78,40,0
    >>Kill |cRXP_ENEMY_Grimtotem Ruffians|r and |cRXP_ENEMY_Grimtotem Mercenaries|r in the area
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
    .mob +Grimtotem Ruffian
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .mob +Grimtotem Mercenary
step
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Makaba|r
    .turnin 6548 >> Turn in Avenge My Village
    .accept 6629 >> Accept Kill Grundig Darkcloud
    .target Makaba Flathoof
step
    #completewith next
    .goto Stonetalon Mountains,75.89,87.49,30 >>Travel up the path to the bonfire
step
    .goto Stonetalon Mountains,73.65,86.13
    >>Kill |cRXP_ENEMY_Grundig Darkcloud|r and |cRXP_ENEMY_Grimtotem Brutes|r
    >>|cRXP_WARN_Make sure you kill all six|r |cRXP_ENEMY_Grimtotem Brutes|r |cRXP_WARN_before starting the quest inside|r
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .mob +Grundig Darkcloud
    .complete 6629,2 --Kill Grimtotem Brute (x6)
    .mob +Grimtotem Brute
step
    .goto Stonetalon Mountains,73.48,85.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaya|r
    .accept 6523,1 >> Accept Protect Kaya
    .target Kaya Flathoof
step
    .goto Stonetalon Mountains,71.82,86.79,40,0
    .goto Stonetalon Mountains,71.83,89.79,40,0
    .goto Stonetalon Mountains,76.73,90.85
    >>Escort |cRXP_FRIENDLY_Kaya|r and stay close to her
    >>|cRXP_WARN_Be careful! Three|r |cRXP_ENEMY_Grimtotems|r |cRXP_WARN_will spawn when you reach the bonfire in Camp Aparaje|r
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
    .target Kaya Flathoof
step
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xen'Zilla|r
    .accept 6461 >> Accept Blood Feeders
    .target Xen'Zilla
step
    #completewith InDeepTrouble
    .goto Stonetalon Mountains,68.59,88.34,80,0
    .goto Stonetalon Mountains,64.95,83.88,80,0
    .goto Stonetalon Mountains,61.47,81.51,80,0
    .goto Stonetalon Mountains,60.36,76.28,80,0
    .goto Stonetalon Mountains,59.04,73.01,80,0
    .goto Stonetalon Mountains,60.83,71.84,80,0
    >>Kill every |cRXP_ENEMY_Deepmoss Creeper|r you see
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    #completewith InDeepTrouble
    .goto Stonetalon Mountains,49.38,61.68,50 >> Travel to Sun Rock Retreat
step
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,20,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >> Run up the path to the left
    .group
step
    #label InDeepTrouble
    .goto Stonetalon Mountains,47.21,64.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mor'Rogal|r
    .accept 6421 >>Accept Boulderslide Ravine
    .target Mor'Rogal
    .group
step
    .goto Stonetalon Mountains,47.47,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Jayka|r
    >>|cRXP_WARN_Do NOT set your hearthstone!|r
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
    .target Innkeeper Jayka
step
    .goto Stonetalon Mountains,47.61,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeeda|r on the second floor of the inn
    .vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_from her if they're up|r << !Warrior
    .vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_and|r |T134413:0|t[Liferoot] |cRXP_BUY_from her if they're up|r << Warrior
    .target Jeeda
step
    .goto Stonetalon Mountains,45.13,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharm|r
    .fp Sun Rock Retreat >> Get the Sun Rock Retreat flight path
    .target Tharm
step
    #completewith next
    .goto Stonetalon Mountains,58.99,62.60,100 >> Travel to Windshear Crag
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz|r
    .turnin 1483 >> Turn in Ziz Fizziks
    .accept 1093 >> Accept Super Reaper 6000
    .target Ziz Fizziks
step
    #completewith next
    >>Kill |cRXP_ENEMY_Deepmoss Venomspitters|r
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob Deepmoss Venomspitter
step
    #loop
    .goto Stonetalon Mountains,61.41,56.77,0
    .goto Stonetalon Mountains,59.25,61.55,30,0
    .goto Stonetalon Mountains,60.37,60.10,30,0
    .goto Stonetalon Mountains,61.34,59.15,30,0
    .goto Stonetalon Mountains,61.15,57.85,30,0
    .goto Stonetalon Mountains,61.41,56.77,30,0
    .goto Stonetalon Mountains,62.21,58.55,30,0
    .goto Stonetalon Mountains,63.12,60.02,30,0
    .goto Stonetalon Mountains,64.69,60.03,30,0
    .goto Stonetalon Mountains,62.76,61.69,30,0
    .goto Stonetalon Mountains,62.50,62.92,30,0
    .goto Stonetalon Mountains,62.48,64.15,30,0
    .goto Stonetalon Mountains,61.85,66.07,30,0
    .goto Stonetalon Mountains,60.71,66.12,30,0
    .goto Stonetalon Mountains,60.96,63.99,30,0
    .goto Stonetalon Mountains,60.25,63.21,30,0
    >>Loot the |cRXP_PICK_Spider Eggs|r near the trees
    >>|cRXP_WARN_Be careful! The|r |cRXP_ENEMY_Deepmoss Hatchlings|r |cRXP_WARN_have a chance of summoning a level 22|r |cRXP_ENEMY_Deepmoss Matriarch|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #loop
	.goto Stonetalon Mountains,60.25,63.21,0
	.goto Stonetalon Mountains,59.25,61.55,50,0
	.goto Stonetalon Mountains,60.37,60.10,50,0
	.goto Stonetalon Mountains,61.34,59.15,50,0
	.goto Stonetalon Mountains,61.15,57.85,50,0
	.goto Stonetalon Mountains,61.41,56.77,50,0
	.goto Stonetalon Mountains,62.21,58.55,50,0
	.goto Stonetalon Mountains,63.12,60.02,50,0
	.goto Stonetalon Mountains,64.69,60.03,50,0
	.goto Stonetalon Mountains,62.76,61.69,50,0
	.goto Stonetalon Mountains,62.50,62.92,50,0
	.goto Stonetalon Mountains,62.48,64.15,50,0
	.goto Stonetalon Mountains,61.85,66.07,50,0
	.goto Stonetalon Mountains,60.71,66.12,50,0
	.goto Stonetalon Mountains,60.96,63.99,50,0
	.goto Stonetalon Mountains,60.25,63.21,50,0
    >>Kill |cRXP_ENEMY_Deepmoss Venomspitters|r
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob Deepmoss Venomspitter
step << Troll Warrior/Undead Warrior
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Buy a|r |T135157:0|t[Long Staff] |cRXP_BUY_from him|r
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Troll Warrior/Undead Warrior
    #completewith BluePrints
    +Equip the |T135157:0|t[Long Staff]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Orc Warrior
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Buy a|r |T135423:0|t[Battle Axe] |cRXP_BUY_from him|r
    .collect 926,1,899,1 --Collect Battle Axe (1)
    .money <0.9784
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.3
step << Orc Warrior
    #completewith BluePrints
    +Equip the |T135423:0|t[Battle Axe]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.3
    .xp <20,1
step << Tauren Warrior
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Buy a|r |T133044:0|t[Maul] |cRXP_BUY_from him|r
    .collect 924,1,899,1 --Collect Maul (1)
    .money <1.0972
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Tauren Warrior
    #completewith BluePrints
    +Equip the |T133044:0|t[Maul]
    .use 924
    .itemcount 924,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
    .xp <21,1
step << Shaman
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Buy a|r |T135157:0|t[Long Staff] |cRXP_BUY_from him|r
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #completewith BluePrints
    +Equip the |T135157:0|t[Long Staff]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Rogue
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Buy a|r |T135324:0|t[Longsword] |cRXP_BUY_from him.|r
    .collect 923,1,899,1 --Collect Longsword (1)
    .money <0.8743
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #completewith BluePrints
    +Equip the |T135324:0|t[Longsword]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Venture Co. Loggers|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
    #label BluePrints
    #loop
    .goto Stonetalon Mountains,62.8,53.7,0
    .goto Stonetalon Mountains,62.8,53.7,100,0
    .goto Stonetalon Mountains,61.7,51.5,100,0
    .goto Stonetalon Mountains,66.8,45.3,100,0
    .goto Stonetalon Mountains,71.7,49.9,100,0
    .goto Stonetalon Mountains,74.3,54.7,100,0
    >>Kill |cRXP_ENEMY_Venture Co. Operators|r. Loot them for their |cRXP_LOOT_Blueprints|r
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
    .mob Venture Co. Operator
step
    #loop
    .goto Stonetalon Mountains,61.50,55.12,0
    .goto Stonetalon Mountains,61.50,55.12,50,0
    .goto Stonetalon Mountains,60.48,55.10,50,0
    .goto Stonetalon Mountains,59.80,53.69,50,0
    .goto Stonetalon Mountains,59.53,52.52,50,0
    .goto Stonetalon Mountains,60.80,51.23,50,0
    .goto Stonetalon Mountains,62.06,54.39,50,0
    .goto Stonetalon Mountains,62.63,55.35,50,0
    .goto Stonetalon Mountains,63.63,54.42,50,0
    .goto Stonetalon Mountains,65.42,54.15,50,0
    .goto Stonetalon Mountains,66.83,54.92,50,0
    .goto Stonetalon Mountains,68.64,54.03,50,0
    .goto Stonetalon Mountains,69.86,53.53,50,0
    .goto Stonetalon Mountains,70.34,56.41,50,0
    .goto Stonetalon Mountains,67.90,56.96,50,0
    .goto Stonetalon Mountains,66.25,56.64,50,0
    .goto Stonetalon Mountains,65.29,57.14,50,0
    .goto Stonetalon Mountains,64.27,57.63,50,0
    >>Kill |cRXP_ENEMY_Venture Co. Loggers|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
	#completewith next
	+|cRXP_WARN_If you have over 15 |cRXP_LOOT_Deepmoss Eggs|r|cRXP_WARN_, split the stack of any extras (shift click), then delete them|r
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz|r
    .turnin 1093 >> Turn in Super Reaper 6000
    .accept 1094 >> Accept Further Instructions
    .target Ziz Fizziks
step
    #loop
    .goto Stonetalon Mountains,68.59,88.34,0
    .goto Stonetalon Mountains,60.83,71.84,80,0
    .goto Stonetalon Mountains,59.04,73.01,80,0
    .goto Stonetalon Mountains,60.36,76.28,80,0
    .goto Stonetalon Mountains,61.47,81.51,80,0
    .goto Stonetalon Mountains,64.95,83.88,80,0
    .goto Stonetalon Mountains,68.59,88.34,80,0
    >>Finish killing |cRXP_ENEMY_Deepmoss Creepers|r
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step << Druid
    #completewith DruidTraining2
    .cast 18960 >>Cast |T135758:0|t[Teleport: Moonglade]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .train 1430 >> Train your class spells
    .target Loganaar
    .xp <18,1
    .xp >20,1
step << Druid
    #label DruidTraining2
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .train 768 >> Train your class spells
    .target Loganaar
    .xp <20,1
step
    #completewith next
    .hs >> Hearth to Camp Taurajo
    .use 6948
step
    .goto The Barrens,45.58,59.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Byula|r
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
    .target Innkeeper Byula
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 3261 >>Turn in Jorn Skyseer
    .accept 882 >>Accept Ishamuhale
    .target Jorn Skyseer
step
	#completewith LakotaMani
    >>Kill |cRXP_ENEMY_Stormstouts|r. Loot them for a |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    >>Kill a lot of |cRXP_ENEMY_Bristleback Quillboars|r. Loot them for their |cRXP_LOOT_Tusks|r. Save the |T134128:0|t[|cRXP_LOOT_Blood Shards|r] you get
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .mob +Bristleback Water Seeker
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .mob +Bristleback Thornweaver
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .mob +Bristleback Geomancer
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
    .mob +Bristleback Water Seeker
    .mob +Bristleback Thornweaver
    .mob +Bristleback Geomancer
step
    #label LakotaMani
    #loop
    .goto The Barrens,45.14,52.82,0
    .goto The Barrens,45.93,49.08,0
    .goto The Barrens,47.43,51.37,0
    .goto The Barrens,50.10,53.34,0
    .goto The Barrens,45.14,52.82,80,0
    .goto The Barrens,45.93,49.08,80,0
    .goto The Barrens,47.43,51.37,80,0
    .goto The Barrens,50.10,53.34,80,0
	>>Kill |cRXP_ENEMY_Lakota'mani|r. Loot him for the |T132318:0|t[|cRXP_LOOT_Hoof of Lakota'mani|r]
    >>|cRXP_WARN_Use the |T132318:0|t[|cRXP_LOOT_Hoof of Lakota'mani|r] to start the quest|r
    >>|cRXP_WARN_He has 4 spawnpoints (marked on the map)|r
    >>|cRXP_WARN_Skip this step if you can't find him|r
	.collect 5099,1,883,1 --Collect Hoof of Lakota'Mani
	.accept 883 >>Accept Lakota'Mani
    .use 5099
    .unitscan Lakota'mani
step
    #completewith next
    >>Kill |cRXP_ENEMY_Stormstouts|r. Loot them for a |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #loop
    .goto The Barrens,50.71,54.60,0
    .goto The Barrens,50.71,54.60,60,0
    .goto The Barrens,50.74,55.33,60,0
    .goto The Barrens,50.73,56.78,60,0
    .goto The Barrens,50.42,57.23,60,0
    .goto The Barrens,50.50,57.65,60,0
    .goto The Barrens,50.87,57.50,60,0
    .goto The Barrens,51.26,57.84,60,0
    .goto The Barrens,51.74,57.69,60,0
    .goto The Barrens,51.79,57.10,60,0
    .goto The Barrens,53.08,54.69,60,0
    .goto The Barrens,53.65,54.27,60,0
    .goto The Barrens,53.63,53.53,60,0
    .goto The Barrens,53.35,52.72,60,0
    .goto The Barrens,53.00,51.83,60,0
    .goto The Barrens,52.62,52.19,60,0
    .goto The Barrens,52.59,52.71,60,0
    .goto The Barrens,52.41,53.07,60,0
    .goto The Barrens,52.32,53.71,60,0
    .goto The Barrens,51.39,54.22,60,0
    >>Kill a lot of |cRXP_ENEMY_Bristleback Quillboars|r. Loot them for their |cRXP_LOOT_Tusks|r. Save the |T134128:0|t[|cRXP_LOOT_Blood Shards|r] you get
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .mob +Bristleback Water Seeker
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .mob +Bristleback Thornweaver
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .mob +Bristleback Geomancer
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
    .mob +Bristleback Water Seeker
    .mob +Bristleback Thornweaver
    .mob +Bristleback Geomancer
step
    #loop
    .goto The Barrens,50.88,52.96,0
    .goto The Barrens,50.88,52.96,50,0
    .goto The Barrens,50.06,52.78,50,0
    .goto The Barrens,49.35,53.74,50,0
    .goto The Barrens,49.54,55.08,50,0
    .goto The Barrens,49.03,56.24,50,0
    .goto The Barrens,49.72,56.13,50,0
    >>Kill |cRXP_ENEMY_Stormstouts|r. Loot them for a |cRXP_LOOT_Horn|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #loop
    .goto The Barrens,53.98,51.68,0
    .goto The Barrens,53.98,51.68,50,0
    .goto The Barrens,54.10,50.58,50,0
    .goto The Barrens,53.85,49.76,50,0
    .goto The Barrens,54.32,49.38,50,0
    .goto The Barrens,54.82,49.00,50,0
    .goto The Barrens,55.23,47.96,50,0
    >>Finish killing |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
step
    #loop
    .goto The Barrens,55.59,43.39,0
    .goto The Barrens,55.59,43.39,40,0
    .goto The Barrens,55.09,43.00,40,0
    .goto The Barrens,55.03,42.21,40,0
    .goto The Barrens,55.47,41.51,40,0
    .goto The Barrens,55.99,42.00,40,0
    .goto The Barrens,56.15,42.53,40,0
    .goto The Barrens,56.01,43.40,40,0
    >>Kill |cRXP_ENEMY_Oasis Snapjaws|r in and around the lake. Loot them for their |cRXP_LOOT_Shells|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob Oasis Snapjaw
step
    #completewith next
    >>Kill any |cRXP_ENEMY_Zhevra|r. Loot it for a |cRXP_LOOT_Fresh Zhevra Carcass|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
step
    .goto The Barrens,59.71,30.33
    .use 10338 >>Use the |T134368:0|t[|cRXP_LOOT_Fresh Zhevra Carcass|r] at the dead tree to summon |cRXP_ENEMY_Ishamuhale|r. Kill and loot him for his |cRXP_LOOT_Fang|r
    >>|cRXP_WARN_The Carcass only has a 30 minute duration!|r
    .complete 882,1 --Ishamuhale's Fang (1)
    .mob Ishamuhale
step
    #completewith BootyTurnin
    .goto The Barrens,63.00,36.42,100 >> Run to Ratchet
step << Rogue
    .goto The Barrens,63.07,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wrenix|r
    .turnin 2381 >>Turn in Plundering the Plunderers
    .target Wrenix the Wretched
step
    #label BootyTurnin
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazlowe|r
    .turnin 888 >>Turn in Stolen Booty
    .target Gazlowe
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r, |cRXP_FRIENDLY_Mebok|r and |cRXP_FRIENDLY_Drohn|r
    .turnin 1094 >>Turn in Further Instructions
    .accept 1095 >>Accept Further Instructions
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 865 >>Turn in Raptor Horns
    .turnin 1069 >>Turn in Deepmoss Spider Eggs
    .accept 1491 >>Accept Smart Drinks
    .target +Mebok Mizzyrix
    .goto The Barrens,62.37,37.62
    .turnin 821 >>Turn in Chen's Empty Keg
    .accept 822 >>Accept Chen's Empty Keg
    .target +Brewmaster Drohn
    .goto The Barrens,62.27,38.39
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r, |cRXP_FRIENDLY_Mebok|r and |cRXP_FRIENDLY_Drohn|r
    .turnin 1094 >>Turn in Further Instructions
    .accept 1095 >>Accept Further Instructions
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 865 >>Turn in Raptor Horns
    .turnin 1069 >>Turn in Deepmoss Spider Eggs
    .target +Mebok Mizzyrix
    .goto The Barrens,62.37,37.62
    .turnin 821 >>Turn in Chen's Empty Keg
    .accept 822 >>Accept Chen's Empty Keg
    .target +Brewmaster Drohn
    .goto The Barrens,62.27,38.39
step << Warrior
    .goto The Barrens,62.20,38.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grazlix|r
    .vendor >>Buy |T134583:0|t[|cRXP_FRIENDLY_Mighty Chain Pants|r] from him if it's up
    .target Grazlix
    .money <0.619
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 7,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    .goto The Barrens,62.16,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vexspindle|r
    .vendor >> Buy |T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r] from him if they're up
    .target Vexspindle
    .money <0.3515
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Wiley|r
    .home >>Set your Hearthstone to Ratchet
    .target Innkeeper Wiley
    .dungeon WC
step << Warrior
    #completewith FlytoXroads
    +Equip the |T134583:0|t[|cRXP_FRIENDLY_Mighty Chain Pants|r]
    .use 4800
    .itemcount 4800,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 7,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    #completewith FlytoXroads
    +Equip the |T132603:0|t[|cRXP_FRIENDLY_Wolf Bracers|r]
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bigglefuzz|r
    .accept 959 >> Accept Trouble at the Docks
    .target Crane Operator Bigglefuzz
    .dungeon WC
step
    #label FlytoXroads
    #completewith XroadsHS2
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fly to The Crossroads
    .target Bragok
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mankrik|r and |cRXP_FRIENDLY_Tonga|r
    .turnin 899 >>Turn in Consumed by Hatred
    .target +Mankrik
    .goto The Barrens,51.95,31.58
    .turnin 880 >>Turn in Altered Beings
    .accept 1489 >>Accept Hamuul Runetotem
    .accept 3301 >>Accept Mura Runetotem
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
step
    .destroy 5085 >>Delete any leftover |T133721:0|t[Bristleback Quilboar Tusks] you may still have
    .itemcount 5085,1
step
    #label XroadsHS2
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Boorand|r
    .home >>Set your Hearthstone to Crossroads
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .dungeon !WC
step << Shaman
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fly to Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Shaman
    .goto Orgrimmar,37.96,37.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Searn|r
	.accept 1528 >> Accept Call of Water
    .target Searn Firewarder
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 2645 >> Train your class spells
    .target Kardris Dreamseeker
step << Warlock
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fly to Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gan'rul|r
    .trainer >> Train your class spells
    .accept 1507 >>Accept Devourer of Souls
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurgul|r and buy |T133738:0|t[Grimoire of Torment (Rank 2)]
    .collect 16346,1,1507,1 --Grimoire of Torment (Rank 2)
    .target Kurgul
step << Warlock
    .goto Orgrimmar,47.05,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cazul|r
    .turnin 1507 >>Turn in Devourer of Souls
    .accept 1508 >>Accept Blind Cazul
    .target Cazul
step << Warlock
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Buy a|r |T135139:0|t[Burning Wand] |cRXP_BUY_from her|r
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Warlock
    .goto Orgrimmar,37.03,59.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zankaja|r
    .turnin 1508 >>Turn in Blind Cazul
    .accept 1509 >>Accept News of Dogran
    .target Zankaja
step
    #completewith EnterDM
    .subzone 1581 >> Now you should be looking for a group to The Deadmines
    .dungeon DM
step
    #completewith ZepptoSTVforDM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Fly to Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .dungeon DM
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 8052 >> Train your class spells
    .target Kardris Dreamseeker
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 2645 >> Train your class spells
    .target Kardris Dreamseeker
    .xp <20,1
    .dungeon DM
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
	.train 14318 >>Train your class spells
    .target Ormak Grimshot
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
	.train 14290 >>Train your class spells
    .target Ormak Grimshot
    .xp <20,1
    .dungeon DM
step << Hunter
    .goto Orgrimmar,66.33,14.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xao'tsu|r
	.train 5118 >>Train your pet spells
	.target Xao'tsu
    .xp <20,1
    .dungeon DM
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
	.train 8198 >>Train your class spells
    .target Grezz Ragefist
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
    .train 845 >> Train your class spells
    .target Grezz Ragefist
    .xp <20,1
    .dungeon DM
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormok|r
    .train 1943 >> Train your class spells
    .target Ormok
    .xp <20,1
    .dungeon DM
step << Warlock
    .goto Undercity,48.47,45.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zevrost|r
    .train 1014 >> Train your class spells
	.target Zevrost
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Warlock
    #optional
    .goto Undercity,48.47,45.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zevrost|r
    .train 706 >> Train your class spells
	.target Zevrost
    .xp <20,1
    .dungeon DM
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
    .train 3140 >> Train your class spells
    .target Pephredo
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
    .train 1953 >> Train your class spells
    .target Pephredo
    .xp <20,1
    .dungeon DM
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 970 >> Train your class spells
    .target Ur'kyo
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 14914 >> Train your class spells
    .target Ur'kyo
    .xp <20,1
    .dungeon DM
step
    #ah
    .goto Orgrimmar,55.59,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thathung|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Flask of Oil] |cRXP_BUY_from the Auction House if possible|r
    .collect 814,5,103,1 --Flask of Oil (5)
	.target Auctioneer Thathung
    .dungeon DM
step
    #completewith next
    .zone Durotar >> Leave Orgrimmar
    .zoneskip Durotar
    .dungeon DM
step
    #label ZepptoSTVforDM
    .goto Durotar,50.8,13.8,40 >>Go up the Zeppelin Tower
    .zone Stranglethorn Vale >>Take the Zeppelin to Stranglethorn Vale
    .zoneskip Stranglethorn Vale
    .dungeon DM
step
    .goto Stranglethorn Vale,30.51,29.10,40,0
    .goto Stranglethorn Vale,27.09,31.27,40,0
    .goto Stranglethorn Vale,22.90,31.17,60,0
    .goto Stranglethorn Vale,19.06,27.00,60,0
    .goto Stranglethorn Vale,16.33,23.46,60,0
    .goto Stranglethorn Vale,13.49,19.04,60,0
    .goto Westfall,41.08,98.55,60,0
    .goto Westfall,37.10,89.16,40,0
    .goto Westfall,30.01,86.02,200 >> Swim directly to the west from Grom'Gol into the Vile Reef and then swim north toward Westfall
    >>|cRXP_WARN_Steer clear from the island. Follow the waypoint for safety!|r
    .dungeon DM
step
    #completewith next
    .goto Westfall,30.01,86.02,40 >> Travel to the Westfall Lighthouse
    .dungeon DM
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .accept 103 >> Accept Keeper of the Flame
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
    .dungeon DM
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .turnin 103 >> Turn in Keeper of the Flame
    .itemcount 814,5 -- Flask of Oil (5)
    .target Captain Grayson
    .dungeon DM
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .accept 104 >> Accept The Coastal Menace
    .target Captain Grayson
    .dungeon DM
step
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Kill |cRXP_ENEMY_Old Murk-Eye|r. Loot him for his |cRXP_LOOT_Scale|r
    >>|cRXP_ENEMY_Old Murk-Eye|r |cRXP_WARN_patrols up and down the Longshore. If you don't see him along the Longshore, wait for him to spawn in the most southern |cRXP_ENEMY_Murloc|r camp|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
    .dungeon DM
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .turnin 104 >> Turn in The Coastal Menace
    .target Captain Grayson
    .dungeon DM
step
    #optional
    .abandon 103 >> Abandon Keeper of the Flame
    .dungeon DM
step
    #label EnterDM
    .goto Eastern Kingdoms,40.92,81.97,8,0
    .goto Eastern Kingdoms,40.92,82.02,8,0
    .goto Eastern Kingdoms,40.89,82.04,8,0
    .goto Eastern Kingdoms,40.96,82.10,8,0
    .goto Eastern Kingdoms,40.92,82.16,15,0
    .goto Eastern Kingdoms,40.82,82.30,15,0
    .goto Eastern Kingdoms,40.77,82.52,15,0
    .goto Eastern Kingdoms,40.74,82.61,15,0
    .goto Eastern Kingdoms,40.63,82.49,15,0
    .goto Eastern Kingdoms,40.50,82.45
    .zone 291 >> Enter the Deadmines Instance portal. Zone in
    .dungeon DM
step
    .hs >> Hearth to The Barrens after having completed Deadmines
    .zone The Barrens >> Arrive in The Barrens
    .use 6948
    .dungeon DM
step
    #optional
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Wiley|r
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
    .target Innkeeper Wiley
    .subzoneskip 392,1
    .dungeon WC
step
    #optional
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Boorand|r
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .subzoneskip 380,1
    .dungeon DM
step << Warlock
    #completewith TurninDogran
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fly to The Crossroads
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step << Warlock
    #completewith TurninDogran
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
	.fly Crossroads >> Fly to The Crossroads
    .zoneskip Orgrimmar,1
    .target Doras
step << Warlock
    #label TurninDogran
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazrog|r
    .turnin 1509 >>Turn in News of Dogran
    .accept 1510 >>Accept News of Dogran
    .target Gazrog
step << Shaman
    #completewith CallofWater01
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doras|r
    .fly Ratchet >> Fly to Ratchet
    .target Doras
    .zoneskip Orgrimmar,1
step << Shaman
    #optional
    #completewith CallofWater01
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Ratchet >> Fly to Ratchet
    .target Bragok
    .subzoneskip 392,1
    .dungeon DM
step << Shaman
    #label CallofWater01
    .goto The Barrens,65.83,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Islen|r
    .turnin 1528 >>Turn in Call of Water
    .accept 1530 >>Accept Call of Water
    .target Islen Waterseer
step << Shaman
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fly to Crossroads
    .target Bragok
step << !Shaman
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fly to Crossroads
    .target Bragok
    .subzoneskip 392,1
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_FRIENDLY_Helbrim|r |cRXP_WARN_Starts a 45-minute timed quest|r
    .accept 853 >> Accept Apothecary Zamah
    .target Apothecary Helbrim
    .isQuestTurnedIn 848
    .isQuestAvailable 853
step
    #sticky
    #completewith ZamahTurnin
    +|cRXP_WARN_You are on a timed quest, don't go afk. It will get turned 20-30 minutes after pick-up|r
    .isOnQuest 853
step << !Warlock !Shaman
    #completewith TribesTurnin
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Camp Taurajo >> Fly to Camp Taurajo
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step << Shaman
    #completewith TribesTurnin
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Camp Taurajo >> Fly to Camp Taurajo
    .target Bragok
step << !Shaman
    #completewith TribesTurnin
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Camp Taurajo >> Fly to Camp Taurajo
    .target Devrak
    .subzoneskip 380,1
step
    .goto The Barrens,44.55,59.27
    >>Kill |cRXP_ENEMY_Bristleback Quillboars|r. Loot them for a |T134128:0|t[|cRXP_LOOT_Blood Shard|r
    .collect 5075 --Blood Shard (1)
    .mob Bristleback Water Seeker
    .mob Bristleback Thornweaver
    .mob Bristleback Geomancer
step
    #label TribesTurnin
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mangletooth|r
    .turnin 878 >>Turn in Tribes at War
    .accept 5052 >>Accept Blood Shards of Agamaggan
    .turnin 5052 >>Turn in Blood Shards of Agamaggan
    .target Mangletooth
    .addquestitem 5075,5052
step
    #optional
    #completewith Thunderhawk
    .goto The Barrens,44.55,59.27,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mangletooth|r
    +|cRXP_WARN_Use your|r |T134128:0|t[|cRXP_LOOT_Blood Shards|r] |cRXP_WARN_to get buffs. Save at least 4 of them for later|r
    +|cRXP_WARN_Make sure to turn off any autocomplete functions from addons such as Questie or Leatrix Plus for this!|r
    .target Mangletooth
step
    #label IshamuhaleTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 882 >>Turn in Ishamuhale
    .accept 907 >>Accept Enraged Thunder Lizards
    .target Jorn Skyseer
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .accept 883 >>Accept Lakota'Mani
    .turnin 883 >>Turn in Lakota'mani
    .target Jorn Skyseer
    .itemcount 5099,1
step
    #loop
    .goto The Barrens,44.32,60.84,0
    .goto The Barrens,44.32,60.84,60,0
    .goto The Barrens,44.25,61.78,60,0
    .goto The Barrens,44.07,62.63,60,0
    .goto The Barrens,44.52,63.10,60,0
    .goto The Barrens,45.67,63.59,60,0
    .goto The Barrens,46.94,62.21,60,0
    .goto The Barrens,47.42,60.57,60,0
    .goto The Barrens,47.92,60.55,60,0
    .goto The Barrens,48.32,60.23,60,0
    .goto The Barrens,49.14,61.07,60,0
    .goto The Barrens,49.85,61.13,60,0
    .goto The Barrens,49.63,59.75,60,0
    .goto The Barrens,49.21,59.33,60,0
    .goto The Barrens,48.12,58.59,60,0
    >>Kill |cRXP_ENEMY_Thunder Lizards|r. Loot them for their |cRXP_LOOT_Blood|r
    .complete 907,1 --Thunder Lizard Blood (3)
    .mob Thunderhead
    .mob Stormsnout
step
    #label Thunderhawk
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn|r
    .turnin 907 >>Turn in Enraged Thunder Lizards
    .accept 913 >>Accept Cry of the Thunderhawk
    .target Jorn Skyseer
step << Shaman
    #completewith CallofWater2
    .goto The Barrens,43.42,77.41,60>> Travel south toward |cRXP_FRIENDLY_Brine|r
step << Shaman
    #completewith next
    >>Kill a |cRXP_ENEMY_Thunderhawk|r. Loot it for its |cRXP_LOOT_Wings|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
    .mob Greater Thunderhawk
step << Shaman
    #label CallofWater2
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brine|r
    .turnin 1530 >>Turn in Call of Water
    .accept 1535 >>Accept Call of Water
    .target Brine
step << Shaman
    .goto The Barrens,44.22,76.75
    .use 7766 >> Fill your |T132825:0|t[Empty Brown Waterskin] in the watering hole below Brine's hut
    .complete 1535,1 --Filled Brown Waterskin (1)
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brine|r
    .turnin 1535 >>Turn in Call of Water
    .accept 1536 >>Accept Call of Water
    .target Brine
step << Shaman
    #completewith ThunderhawkTurnin
    .goto The Barrens,44.85,59.14,200 >>Travel back toward Camp Taurajo
step
    #loop
    .goto The Barrens,44.83,63.12,0
    .goto The Barrens,44.83,63.12,60,0
    .goto The Barrens,46.57,61.33,60,0
    .goto The Barrens,48.99,58.69,60,0
    .goto The Barrens,45.45,56.69,60,0
    .goto The Barrens,43.41,56.96,60,0
    >>Kill a |cRXP_ENEMY_Thunderhawk|r. Loot it for its |cRXP_LOOT_Wings|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
step
    #label ThunderhawkTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorn Skyseer|r
    .turnin 913 >>Turn in Cry of the Thunderhawk
    .accept 874 >>Accept Mahren Skyseer
    .target Jorn Skyseer
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mangletooth|r
    .aura 16618 >>|cRXP_WARN_If you have 10|r |T134128:0|t[|cRXP_LOOT_Blood Shards|r |cRXP_WARN_left, use them to obtain|r |T136022:0|t[Spirit of the Wind] |cRXP_WARN_from|r |cRXP_FRIENDLY_Mangletooth|r
    >>|cRXP_WARN_Skip this step if you have the Thunder Bluff flight path|r
    .itemcount 5075,10
step << !Tauren
    #completewith next
    .goto Mulgore,68.68,60.34,120,0
    .zone Mulgore >>Travel into Mulgore
step << !Tauren
    #completewith DeathDUPpickup
    .goto Thunder Bluff,31.78,65.92
    .zone Thunder Bluff >>Take the lift into Thunder Bluff
    >>|cRXP_WARN_If you have the Thunder Bluff flight path, fly there instead|r
step << Tauren
    #completewith DeathDUPpickup
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >>Fly to Thunder Bluff
    .target Omusa Thunderhorn
step << Undead Warrior/Orc Warrior/Troll Warrior
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Train Two-Handed Maces
    .train 227 >>Train Staves
    .target Ansekhwa
step << Troll Hunter/Orc Hunter/Undead Warrior/Warlock/Priest
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Train Staves
    .target Ansekhwa
step << Rogue
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ansekhwa|r
    .train 198 >>Train Maces
    .target Ansekhwa
step << Rogue
    .goto Thunder Bluff,38.95,64.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kuruk|r|cRXP_BUY_. Buy |r |T135423:0|t[Deadly Throwing Axe] |cRXP_BUY_from him|r
    .collect 3137,200,6544,1 --Deadly Throwing Axe (200)
    .target Kuruk
step
    .goto Thunder Bluff,47.12,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chesmu|r
    .bankdeposit 5075 >> Deposit your |T134128:0|t[Blood Shards]
    .target Chesmu
step
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Pala|r
    .home >>Set your Hearthstone to Thunder Bluff
    .target Innkeeper Pala
    .dungeon !WC
step
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >> Travel to the Spirit Rise and enter the pools of vision
step
    #sticky
    #completewith DeathDUPpickup
    .goto Thunder Bluff,28.55,25.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clarice|r
    .accept 264 >> Until Death Do Us Part
    .target Clarice Foster
    .dungeon !WC
step
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Turn in Apothecary Zamah
    .accept 962 >> Accept Serpentbloom
    .target Apothecary Zamah
    .isOnQuest 853
    .dungeon WC
step
    #optional
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamah|r
    .accept 962 >> Accept Serpentbloom
    .target Apothecary Zamah
    .dungeon WC
step
    #optional
    #label ZamahTurnin
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Turn in Apothecary Zamah
    .target Apothecary Zamah
    .isOnQuest 853
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miles|r
    .accept 5644 >> Accept Devouring Plague << Undead Priest
    .accept 5642 >> Accept Shadowguard << Troll Priest
    .trainer >> Train your class spells
    .target Miles Welsh
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shymm|r
    .train 12051 >> Train your class spells
    .target Archmage Shymm
    .xp <20,1
    .xp >22,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shymm|r
    .train 2138 >> Train your class spells
    .target Archmage Shymm
    .xp <22,1
step
    #optional
    #label DeathDUPpickup
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tigor|r
    .train 2645 >> Train your class spells
    .target Tigor Skychaser
    .xp <20,1
    .xp >22,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tigor|r
    .train 8498 >> Train your class spells
    .target Tigor Skychaser
    .xp <22,1
step
    #completewith next
    .skill firstaid,80 >> |cRXP_WARN_Create|r |T133688:0|t[Heavy Linen Bandages] |cRXP_WARN_until your skill is 80 or higher|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pand|r
    >>|cRXP_WARN_Skip this step if you did not have enough|r |T132889:0|t[Linen Cloth] |cRXP_WARN_to reach 80 skill|r
    .train 3277 >> Train |T133684:0|t[Wool Bandage]
    .train 7934 >> Train |T134437:0|t[Anti-Venom] << Rogue
    .target Pand Stonebinder
    .skill firstaid,<1,1
step << Rogue
    >>|cRXP_WARN_Create|r |T134437:0|t[Anti-Venom] |cRXP_WARN_if you found any|r |T134339:0|t[Small Venom Sacs]
    >>|cRXP_WARN_Save them for later|r
    .collect 6452,1 --Anti Venom
    .itemcount 1475,1
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >> Travel to the Elder Rise
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hamuul|r
    .turnin 1489 >> Turn in Hamuul Runetotem
    .accept 1490 >> Accept Nara Wildmane
    .target Arch Druid Hamuul Runetotem
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >> Turn in Nara Wildmane
    .accept 914 >> Accept Leaders of the Fang
    .target Nara Wildmane
    .dungeon WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >> Turn in Nara Wildmane
    .target Nara Wildmane
step << Druid
    .goto Thunder Bluff,76.48,27.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
    .trainer >> Train your class spells
    .accept 27 >> Accept A Lesson to Learn
    .target Turak Runetotem
step << Druid
    #completewith next
    .cast 18960 >>Cast |T135758:0|t[Teleport: Moonglade]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite|r
    .turnin 27 >> Turn in A Lesson to Learn
    .accept 28 >> Accept Trial of the Lake
    .target Dendrite Starblaze
step << Druid
    #completewith next
    .goto Moonglade,54.30,55.68
    .collect 15877,1,28,1 >>Loot the |cRXP_PICK_Bauble Container|r at the bottom of the lake for a|T134125:0|t[Shrine Bauble]
    >>|cRXP_WARN_Do not go underwater untill you arive right above the Bauble|r
step << Druid
    .goto Moonglade,36.40,42.01
    .cast 19719 >> Use the |T134125:0|t[Shrine Bauble] at the Shrine of Remulos
    .complete 28,1 -- Complete the Trial of the Lake
    .use 15877
step << Druid
    .goto Moonglade,36.52,40.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tajarri|r
    .turnin 28 >> Turn in Trial of the Lake
    .accept 30 >> Accept Trial of the Sea Lion
    .target Tajarri
step << Druid
    #completewith FlyXroads2
    .hs >> Hearth to Thunder Bluff
    .use 6948
    .cooldown item,6948,>0
    .dungeon !WC
step << Druid
    #completewith FlyXroads2
    .goto Moonglade,44.29,45.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >> Fly to Thunder Bluff
    .target Bunthen Plainswind
    .dungeon WC
step << Druid
    #completewith FlyXroads2
    .goto Moonglade,44.29,45.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >> Fly to Thunder Bluff
    .target Bunthen Plainswind
    .cooldown item,6948,<0
    .dungeon !WC
step << Hunter
    #completewith HunterTraining2
    .goto Thunder Bluff,61.31,78.25,60 >> Travel to the Hunter Rise
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Train your class spells
    .target Urek Thunderhorn
    .xp <20,1
    .xp >22,1
step << Hunter
    #label HunterTraining2
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Train your class spells
    .target Urek Thunderhorn
    .xp <22,1
step << Hunter
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hesuwa|r
    .train 24494 >> Train your pet spells
    .target Hesuwa Thunderhorn
step << Warrior
    #completewith next
    .goto Thunder Bluff,61.31,78.25,60 >> Travel to the Hunter Rise
step << Warrior
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torm|r
    .train 845 >> Train your class spells
    .accept 1823 >>Accept Speak with Ruga
    .target Torm Ragetotem
step << Rogue
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Buy a|r |T135324:0|t[Longsword] |cRXP_BUY_from him.|r
    .collect 923,1,493,1 --Collect Longsword (1)
    .money <0.8743
    .target Kard Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #completewith KayaLives
    +Equip the |T135324:0|t[Longsword]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
step << Warrior/Shaman
    #completewith next
    #ah
    +|cRXP_FRIENDLY_If it's cheaper you can buy a green weapon from the auction house instead|r
step << Warrior
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Etu|r|cRXP_BUY_. Buy a|r |T135157:0|t[Long Staff] |cRXP_BUY_from him|r
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Warrior
    #completewith KayaLives
    +Equip the |T135157:0|t[Long Staff]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Etu|r|cRXP_BUY_. Buy a|r |T135157:0|t[Long Staff] |cRXP_BUY_from him|r
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #completewith KayaLives
    +Equip the |T135157:0|t[Long Staff]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #season 2
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Etu|r|cRXP_BUY_. Buy a|r |T133476:0|t[Flail] |cRXP_BUY_from him|r
    .collect 925,1,493,1 --Collect Flail (1)
    .money <0.7797
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Shaman
    #season 2
    #completewith KayaLives
    +Equip the |T133476:0|t[Flail]
    .use 925
    .itemcount 925,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kuna|r|cRXP_BUY_. Buy a|r |T135489:0|t[Heavy Recurve Bow] |cRXP_BUY_from her|r
    .collect 3027,1,493,1 --Collect Heavy Recurve Bow (1)
    .money <0.5643
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
    .target Kuna Thunderhorn
step << Hunter
    #completewith KayaLives
    +Equip the |T135489:0|t[Heavy Recurve Bow]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kuna|r
    >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows] |cRXP_BUY_from her|r
    .collect 2515,1600,493,1 << Hunter --Sharp Arrow (1600)
    .target Kuna Thunderhorn
step
    #sticky
    #completewith EnterWC
    .subzone 718 >> Now you should be looking for a group to Wailing Caverns
    .dungeon WC
step
    #label FlyXroads2
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Fly to Crossroads
    .target Tal
    .zoneskip The Barrens
step
    #completewith next
    .goto The Barrens,45.66,40.34,120 >> Travel to the Lushwater Oasis
    .isQuestTurnedIn 851
step
    #loop
    .goto The Barrens,45.64,38.16,0
    .goto The Barrens,45.64,38.16,50,0
    .goto The Barrens,45.84,37.86,50,0
    .goto The Barrens,45.78,37.41,50,0
    .goto The Barrens,45.95,37.11,50,0
    .goto The Barrens,45.93,36.91,50,0
    .goto The Barrens,46.14,36.85,50,0
    .goto The Barrens,46.19,36.88,50,0
    .goto The Barrens,46.28,36.86,50,0
    .goto The Barrens,46.46,37.17,50,0
    .goto The Barrens,46.58,37.31,50,0
    .goto The Barrens,46.63,37.93,50,0
    .goto The Barrens,46.75,38.39,50,0
    .goto The Barrens,47.27,38.98,50,0
    .goto The Barrens,47.47,39.27,50,0
    .goto The Barrens,48.20,39.57,50,0
    .goto The Barrens,48.40,39.58,50,0
    .goto The Barrens,48.60,39.51,50,0
    .goto The Barrens,48.54,39.96,50,0
    .goto The Barrens,48.58,40.52,50,0
    .goto The Barrens,48.27,40.82,50,0
    .goto The Barrens,48.06,40.82,50,0
    .goto The Barrens,47.86,41.13,50,0
    .goto The Barrens,47.49,41.33,50,0
    .goto The Barrens,47.34,41.61,50,0
    .goto The Barrens,47.22,41.64,50,0
    .goto The Barrens,46.85,42.05,50,0
    .goto The Barrens,46.56,41.93,50,0
    .goto The Barrens,46.27,41.76,50,0
    .goto The Barrens,46.03,41.15,50,0
    .goto The Barrens,45.86,41.32,50,0
    .goto The Barrens,46.09,40.98,50,0
    .goto The Barrens,46.08,40.68,50,0
    .goto The Barrens,45.71,40.56,50,0
    >>Find & kill |cRXP_ENEMY_Hezrul Bloodmark|r, he patrols around the lake. Loot him for his |cRXP_LOOT_Head|r
    .complete 852,1 --Hezrul's Head
    .unitscan Hezrul Bloodmark
    .isQuestTurnedIn 851
step
    .goto The Barrens,46.15,36.93,100 >> Travel to Wailing Caverns
    .isOnQuest 914
    .dungeon WC
step
    #completewith next
    .goto The Barrens,46.95,35.18,0
    .goto The Barrens,46.95,35.18,30,0
    .goto The Barrens,46.83,34.74,20,0
    .goto Kalimdor,51.98,55.36,20,0
    .goto Kalimdor,51.89,55.55,10,0
    .goto Kalimdor,51.87,55.50,10 >>Run up the mountain at the Wailing Caverns meeting stone
    >>|cRXP_WARN_Follow the arrow closely to reach the hidden cave|r
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_They are located above the the Wailing Caverns cave entrance|r
    .accept 1486 >> Accept Deviate Hides
    .target +Nalpak
    .goto Kalimdor,51.91,55.42
    .accept 1487 >> Accept Deviate Eradication
    .goto Kalimdor,51.92,55.44
    .target +Ebru
    .dungeon WC
step
    #completewith EnterWC
    >>Loot the |cRXP_LOOT_Serpentbloom|r on the ground
    >>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_LOOT_Serpentbloom|r |cRXP_WARN_for everybody|r
    .complete 962,1 --Serpentbloom (10)
    .isOnQuest 962
    .dungeon WC
step
    #completewith EnterWC
    >>Kill all the |cRXP_ENEMY_Deviate Beasts|r you see. Loot them for their |cRXP_LOOT_Hides|r
    >>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_LOOT_Hides|r |cRXP_WARN_for everybody|r
    .complete 1486,1 --Deviate Hide (20)
    .dungeon WC
    .isOnQuest 1486
    --Too many .mobs, would clutter target box
step
    #completewith EnterWC
    >>Kill |cRXP_ENEMY_Ectoplasms|r. Loot them for their |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #loop
    .goto Kalimdor,52.15,55.15,0
    .goto Kalimdor,51.90,55.43,30,0
    .goto Kalimdor,51.97,55.23,30,0
    .goto Kalimdor,51.82,54.86,30,0
    .goto Kalimdor,52.01,55.02,30,0
    .goto Kalimdor,52.15,55.15,30,0
    >>Kill |cRXP_ENEMY_Mad Magglish|r. Loot him for the |cRXP_LOOT_99-Year-Old Port|r
    .complete 959,1 --99-Year-Old Port (1)
    .mob Mad Magglish
    .isOnQuest 959
    .dungeon WC
step
    #label EnterWC
    .goto Kalimdor,51.89,54.77,20,0
    .goto Kalimdor,51.95,54.56,20,0
    .goto Kalimdor,52.27,54.65,30,0
    .goto Kalimdor,52.40,55.20,30 >> Enter the WC Instance portal. Zone in
    .dungeon WC
step
    #completewith GlowingShard
    >>Loot the |cRXP_LOOT_Serpentbloom|r on the ground
    >>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_LOOT_Serpentbloom|r |cRXP_WARN_for everybody|r
    .complete 962,1 --Serpentbloom (10)
    .isOnQuest 962
    .dungeon WC
step
    #completewith GlowingShard
    >>Kill |cRXP_ENEMY_Ectoplasms|r. Loot them for their |cRXP_LOOT_Essence|r
    >>|cRXP_WARN_It is recommended that maximum 3 players attempt to complete this quest if you're doing only 1 run. There aren't enough|r |cRXP_LOOT_Hides|r |cRXP_WARN_for everybody|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #completewith GlowingShard
    >>Kill |cRXP_ENEMY_Deviate Ravagers|r, |cRXP_ENEMY_Vipers|r, |cRXP_ENEMY_Shamblers|r and |cRXP_ENEMY_Dreadfangs|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .complete 1486,1 --Deviate Hide (20)
    .isOnQuest 1487
    .dungeon WC
step
    #label Gems
    >>Kill |cRXP_ENEMY_Lord Cobrahn|r, |cRXP_ENEMY_Lady Anacondra|r, |cRXP_ENEMY_Lord Pythas|r and |cRXP_ENEMY_Lord Serpentis|r. Loot them for their |cRXP_LOOT_Gems|r
    .complete 914,1 --Gem of Cobrahn (1)
    .mob +Lord Cobrahn
    .complete 914,2 --Gem of Anacondra (1)
    .mob +Lady Anacondra
    .complete 914,3 --Gem of Pythas (1)
    .mob +Lord Pythas
    .complete 914,4 --Gem of Serpentis (1)
    .mob +Lord Serpentis
    .isOnQuest 914
    .dungeon WC
    .dungeon WC
step
    #requires Gems
    #completewith next
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Disciple of Naralex|r at the entrance of Wailing Caverns. Escort him safely to |cRXP_FRIENDLY_Naralex|r
    .target Disciple of Naralex
    .skipgossip
    .dungeon WC
step
    #label GlowingShard
    >>Once you have reached |cRXP_FRIENDLY_Naralex|r you will get attack by two waves of enemies and finally by |cRXP_ENEMY_Mutanus the Devourer|r
    >>Kill him and loot him for the |T135229:0|t[|cRXP_LOOT_Glowing Shard|r]
    .collect 10441,1,6981,1 --Collect Glowing Shard (x1)
    .mob Mutanus the Devourer
    .dungeon WC
step
    #completewith DeviateRaptors
    >>Kill |cRXP_ENEMY_Ectoplasms|r. Loot them for their |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #completewith DeviateRaptors
    >>Loot the |cRXP_LOOT_Serpentbloom|r on the ground
    .complete 962,1 --Serpentbloom (10)
    .isOnQuest 962
    .dungeon WC
step
    >>Kill |cRXP_ENEMY_Deviate Ravagers|r, |cRXP_ENEMY_Vipers|r, |cRXP_ENEMY_Shamblers|r and |cRXP_ENEMY_Dreadfangs|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .complete 1486,1 --Deviate Hide (20)
    .isOnQuest 1487
    .isOnQuest 1486
    .dungeon WC
 step
    >>Kill |cRXP_ENEMY_Deviate Ravagers|r, |cRXP_ENEMY_Vipers|r, |cRXP_ENEMY_Shamblers|r and |cRXP_ENEMY_Dreadfangs|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .isOnQuest 1487
    .dungeon WC
step
    #label DeviateRaptors
    >>Kill |cRXP_ENEMY_Deviate Raptors|r
    .complete 1486,1 --Deviate Hide (20)
    .mob Deviate Ravager
    .mob Deviate Viper
    .mob Deviate Shambler
    .mob Deviate Dreadfang
    .isOnQuest 1486
    .dungeon WC
step
    #completewith next
    >>Loot the |cRXP_LOOT_Serpentbloom|r on the ground
    .complete 962,1 --Serpentbloom (10)
    .isOnQuest 962
    .dungeon WC
step
    >>Kill |cRXP_ENEMY_Ectoplasms|r. Loot them for their |cRXP_LOOT_Essence|r
    .complete 1491,1 --Wailing Essence (6)
    .mob Devouring Ectoplasm
    .mob Evolving Ectoplasm
    .mob Nightmare Ectoplasm
    .isOnQuest 1491
    .dungeon WC
step
    >>Loot the |cRXP_LOOT_Serpentbloom|r on the ground
    .complete 962,1 --Serpentbloom (10)
    .isOnQuest 962
    .dungeon WC
step
    #completewith GlowingShardRP
    .hs >> Hearth to Ratchet
    .use 6948
    .dungeon WC
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bigglefuzz|r
    .turnin 959 >> Turn in Trouble at the Docks
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon WC
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mebok|r
    .turnin 1491 >>Turn in Smart Drinks
    .target Mebok Mizzyrix
    .isQuestComplete 1491
    .dungeon WC
step
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Fly to The Crossroads
    .target Bragok
    .isOnQuest 6981
    .dungeon WC
step
    .use 10441 >>Use the |T135229:0|t[|cRXP_LOOT_Glowing Shard|r] to accept the quest
    .accept 6981 >> Accept The Glowing Shard
    .itemcount 10441,1
    .dungeon WC
step
    #label GlowingShardRP
    .goto The Barrens,62.99,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r
    .complete 6981,1 --Speak with someone in Ratchet about the Glowing Shard
    .skipgossip
    .target Sputtervalve
    .isOnQuest 6981
    .dungeon WC
step
    #completewith next
    .goto The Barrens,50.49,34.36,20,0
    .goto The Barrens,49.61,34.54,20,0
    .goto The Barrens,49.14,34.02,20,0
    .goto The Barrens,48.18,32.78,50 >> Travel up the mountain
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falla|r
    .turnin 6981 >> Turn in The Glowing Shard
    .accept 3369 >> Accept In Nightmares
    .target Falla Sagewind
    .isOnQuest 6981
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falla|r
    .accept 3369 >> Accept In Nightmares
    .target Falla Sagewind
    .isQuestTurnedIn 6981
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_They are located above the the Wailing Caverns cave entrance|r
    .turnin 1486 >> Turn in Deviate Hides
    .target +Nalpak
    .goto Kalimdor,51.91,55.42
    .turnin 1487 >> Turn in Deviate Eradication
    .target +Ebru
    .goto Kalimdor,51.92,55.44
    .isQuestComplete 1487
    .isQuestComplete 1486
    .dungeon WC
step
    .goto Kalimdor,51.92,55.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_He is located above the the Wailing Caverns cave entrance|r
    .turnin 1487 >> Turn in Deviate Eradication
    .target Ebru
    .isQuestComplete 1487
    .dungeon WC
step
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|
    >>|cRXP_WARN_He is located above the the Wailing Caverns cave entrance|r
    .turnin 1486 >> Turn in Deviate Hides
    .target Nalpak
    .isQuestComplete 1486
    .dungeon WC
step
    #completewith next
    .goto The Barrens,44.45,59.16,100 >> Travel south to Camp Taurajo
    .dungeon WC
step
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >>Fly to Thunder Bluff
    .target Omusa Thunderhorn
    .dungeon WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara|r
    .turnin 914 >>Turn in Leaders of the Fang
    .target Nara Wildmane
    .isQuestComplete 914
    .dungeon WC
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hamuul|r
    .turnin 3369 >> Turn in In Nightmares
    .target Arch Druid Hamuul Runetotem
    .isOnQuest 3369
    .dungeon WC
step
    .goto Thunder Bluff,23.0,21.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Zamah|r
    .turnin 962 >>Turn in Serpentbloom
    .target Apothecary Zamah
    .isQuestComplete 962
    .dungeon WC
step
    .goto Thunder Bluff,28.55,25.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clarice|r
    .accept 264 >> Until Death Do Us Part
    .target Clarice Foster
    .dungeon WC
step
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Pala|r
    .home >>Set your Hearthstone to Thunder Bluff
    .target Innkeeper Pala
    .dungeon WC
step
    #completewith SerenaKill
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Fly to Crossroads
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon WC
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Turn in Hezrul Bloodmark
    .target Regthar Deathgate
    .isQuestComplete 852
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
    .isQuestComplete 855
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .accept 4021 >>Accept Counterattack!
    --.timer 183,Warlord Krom'zar Spawn
    .target Regthar Deathgate
    .isQuestTurnedIn 852
    .group
    --timer is random, generally somewhere between 120-210 seconds
step
    .goto The Barrens,44.48,28.15
    >>Kill |cRXP_ENEMY_Warlord Krom'zar|r once he appears. Loot the |cRXP_PICK_Banner|r that he drops on the ground
    >>|cRXP_WARN_Be careful! He is a strong elite and is guarded by at least two|r |cRXP_ENEMY_Kolkar|r |cRXP_WARN_mobs|r
    >>|cRXP_WARN_It can take up to 3 minutes until he spawns|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .group 3
    .isQuestTurnedIn 852
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Turn in Counterattack!
    .target Regthar Deathgate
    .isQuestComplete 4021
    .group
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Turn in Centaur Bracers
    .target Regthar Deathgate
    .isQuestComplete 855
    .group
step
    #optional
    >>Abandon Centaur Bracers if you haven't completed it at this point
    .abandon 855 >> Abandon Centaur Bracers
    .isOnQuest 855
step
    #label SerenaKill
    .goto The Barrens,39.16,12.16
    >>Kill |cRXP_ENEMY_Serena Bloodfeather|r. Loot her for her |cRXP_LOOT_Head|r
    .complete 876,1 --Serena's Head (1)
    .mob Serena Bloodfeather
step
    #completewith next
    .goto The Barrens,52.09,30.43,120 >>Travel to The Crossroads
step
    #label ApothecaryPickup
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok|r and |cRXP_FRIENDLY_Korran|r
    .turnin 876 >> Turn in Serena Bloodfeather
    .accept 1060 >> Accept Letter to Jin'Zil
    .target +Darsok Swiftdagger
    .goto The Barrens,51.62,30.90
    .accept 868 >> Accept Egg Hunt
    .target +Korran
    .goto The Barrens,51.10,29.60
step
    #completewith next
    .zone Stonetalon Mountains >> Travel to Stonetalon Mountains
    .zoneskip Stonetalon Mountains
step
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seereth|r and |cRXP_FRIENDLY_Makaba|r
    .turnin 1062 >>Turn in Goblin Invaders
    .timer 4,Goblin Invaders RP
    .accept 1063 >>Accept The Elder Crone
    .accept 1068 >> Accept Shredding Machines
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .turnin 6629 >>Turn in Kill Grundig Darkcloud
    .turnin 6523 >>Turn in Protect Kaya
    .accept 6401 >>Accept Kaya's Alive
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
step
    #completewith next
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >> Follow the path on the left upward
step
    .goto Stonetalon Mountains,74.54,97.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jin'Zil|r
    .turnin 1060 >> Turn in Letter to Jin'Zil
    .accept 1058 >> Accept Jin'Zils Forest Magic
    .target Witch Doctor Jin'Zil
step << Warlock
    .goto Stonetalon Mountains,73.25,95.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ken'zigla|r
    .turnin 1510 >>Turn in News of Dogran
    .accept 1511 >>Accept Ken'zigla's Draught
    .target Ken'zigla
step
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >>Turn in Blood Feeders
    .target Xen'Zilla
step << skip
    .goto Stonetalon Mountains,74.69,98.10
    .goto Thunder Bluff,56.65,18.96,30 >>|cRXP_WARN_Jump onto one of the cages. Perform a Logout Skip by logging out and back in|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >> |cRXP_WARN_CLICK HERE for an example|r
    .solo
step
    #completewith next
    .goto Stonetalon Mountains,67.41,87.92,60,0
    .goto Stonetalon Mountains,65.93,89.87,40,0
    .goto Stonetalon Mountains,63.66,93.80,40,0
    .goto Stonetalon Mountains,61.75,93.06,40 >> Travel into Boulderslide Ravine and enter the northern cave
    .group
step
    .goto Stonetalon Mountains,60.16,90.92,30,0
    .goto Stonetalon Mountains,58.44,89.90
    >>Attack the |cRXP_PICK_Resonite Crystals|r and walk far enough into the cave to investigate the area
    >>|cRXP_WARN_Be careful! These mobs are tougher than they look and are easily double pulled.|r |cRXP_ENEMY_Gogger Rock Keepers|r |cRXP_WARN_cast|r |T136026:0|t[Earth Shock] |cRXP_WARN_which deals a high amount of damage!|r
    .complete 6421,1 --Investigate Cave in Boulderslide Ravine
    .complete 6421,2 --Resonity Crystal (x10)
    .isOnQuest 6421
    .group
step << skip
    #completewith next
    .goto Stonetalon Mountains,64.62,93.86,25,0
    .goto Stonetalon Mountains,64.80,95.27,20,0
    .goto Stonetalon Mountains,64.32,95.84,15 >> Enter the southern cave in Boulderslide Ravine
    .group
step << skip
    .goto Stonetalon Mountains,64.28,96.60
    .goto Thunder Bluff,56.65,18.96,30 >>|cRXP_WARN_Jump the rock on the right. Perform a Logout Skip by positioning your character until it looks like they're floating, then logging out and back in|r
    .link https://www.youtube.com/watch?v=j_DRDkqWeuE&ab >> |cRXP_WARN_CLICK HERE for an example|r
    .group
step
    #completewith next
    .subzone 460 >>Travel to Sun Rock Retreat
step
    #label KayaLives
    .goto Stonetalon Mountains,47.46,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tammra|r
    .turnin 6401 >>Turn in Kaya's Alive
    .target Tammra Windfield
step
    .goto Stonetalon Mountains,47.47,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Jayka|r
    >>|cRXP_WARN_Do NOT set your hearthstone!|r
	.vendor >>|cRXP_BUY_Sell your junk, then restock on food and water if necessary|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Sell your junk, then restock on food if necessary|r << Rogue/Warrior
    .target Innkeeper Jayka
step
    .goto Stonetalon Mountains,47.61,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jeeda|r on the second floor of the inn
    .vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_from her if they're up|r << !Warrior
    .vendor >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_and|r |T134413:0|t[Liferoot] |cRXP_BUY_from her if they're up|r << Warrior
    .target Jeeda
step
    #completewith InDeepTrouble2
    .goto Stonetalon Mountains,49.38,61.68,30,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >> Run up the path to the right
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tsunaman|r and |cRXP_FRIENDLY_Mor'Rogal|r
    .accept 6562 >>Accept Trouble in the Deeps
    .accept 6393 >>Accept Elemental War
    .target +Tsunaman
    .goto Stonetalon Mountains,47.36,64.25
    .turnin 6421 >>Turn in Boulderslide Ravine
    .accept 6481 >>Accept Earthen Arise
    .target +Mor'Rogal
    .goto Stonetalon Mountains,47.21,64.05
    .isQuestComplete 6421
    .group
step
    .goto Stonetalon Mountains,47.21,64.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mor'Rogal|r
    .accept 6481 >>Accept Earthen Arise
    .target Mor'Rogal
    .isQuestTurnedIn 6421
    .group
step
    #label InDeepTrouble2
    .goto Stonetalon Mountains,47.36,64.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tsunaman|r
    .accept 6562 >>Accept Trouble in the Deeps
    .accept 6393 >>Accept Elemental War
    .target Tsunaman
step
    .goto Stonetalon Mountains,59.08,75.70
    >>Click the |cRXP_FRIENDLY_Wanted Poster|r
    .accept 6284 >>Accept Arachnophobia
    .group
step
    .goto Stonetalon Mountains,51.89,73.81,50,0
    .goto Stonetalon Mountains,52.46,71.67
    >>Kill |cRXP_ENEMY_Besseleth|r. Loot her for for her |cRXP_LOOT_Fang|r
    >>|cRXP_WARN_Clear out the area befor you pull her. Be careful, she can web you for 10 seconds!|r
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
    .group 3
step
    #completewith next
    .goto Stonetalon Mountains,67.41,87.92,60,0
    .goto Stonetalon Mountains,65.93,89.87,40,0
    .goto Stonetalon Mountains,63.66,93.80,40,0
    .goto Stonetalon Mountains,61.75,93.06,40 >> Travel into Boulderslide Ravine and enter the northern cave
    .group
    .isOnQuest 6481
step
    .goto Stonetalon Mountains,59.50,90.40,40,0
    .goto Stonetalon Mountains,57.65,89.52
    >>Click the |cRXP_PICK_Resonite Cask|r to summon |cRXP_ENEMY_Goggeroc|r. Kill him when he spawns
    .complete 6481,1 --Goggeroc slain (1)
    .mob Goggeroc
    .group 2
    .isOnQuest 6481
step << skip
    .goto Stonetalon Mountains,58.24,89.81
    .goto Stonetalon Mountains,57.57,61.99,30 >>|cRXP_WARN_Jump onto a yellow mushroom. Perform a Logout Skip by jumping into the air and simultaneously logging out and back in. Run back to Sun Rock Retreat if you don't succeed|r
    .link https://www.youtube.com/watch?v=DGsL3FX9_TE&ab >> |cRXP_WARN_CLICK HERE for an example|r
    .group
    .isQuestComplete 6481
    --VV Jump logout required for it to work, remove if it doesn't work on new servers
step
    #completewith EarthenAriseTurnin
    .goto Stonetalon Mountains,49.38,61.68,50 >> Travel to Sun Rock Retreat
    .group
    .isQuestComplete 6481
step
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,20,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >> Run up the path to the left
    .group
    .isQuestComplete 6481
step
    #label EarthenAriseTurnin
    .goto Stonetalon Mountains,47.21,64.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mor'Rogal|r
    .turnin 6481 >>Turn in Earthen Arise
    .target Mor'Rogal
    .isQuestComplete 6481
    .group
step
    .goto Stonetalon Mountains,47.20,61.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maggran|r
	.turnin 6284 >> Turn in Arachnophobia
    .target Maggran Earthbinder
	.isQuestComplete 6284
    .group
step
    #completewith next
    .goto Stonetalon Mountains,58.99,62.60,100 >> Travel to Windshear Crag
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz|r
    .turnin 1095 >>Turn in Further Instructions
    .target Ziz Fizziks
step
    #loop
    .line Stonetalon Mountains,70.82,55.25,70.52,56.22,69.76,56.70,68.52,56.04,67.77,55.97,66.94,56.25,66.41,56.31,65.74,57.20,65.14,57.02,64.37,56.47,63.72,56.80,62.99,56.25,62.32,56.11,61.58,55.10,61.10,54.68,60.98,54.06,59.81,53.51,59.66,52.14,60.33,51.68
    .goto Stonetalon Mountains,61.03,52.32,50,0
    .goto Stonetalon Mountains,60.33,51.68,50,0
    .goto Stonetalon Mountains,59.66,52.14,50,0
    .goto Stonetalon Mountains,59.81,53.51,50,0
    .goto Stonetalon Mountains,60.98,54.06,50,0
    .goto Stonetalon Mountains,61.10,54.68,50,0
    .goto Stonetalon Mountains,61.58,55.10,50,0
    .goto Stonetalon Mountains,62.32,56.11,50,0
    .goto Stonetalon Mountains,62.99,56.25,50,0
    .goto Stonetalon Mountains,63.72,56.80,50,0
    .goto Stonetalon Mountains,64.37,56.47,50,0
    .goto Stonetalon Mountains,65.14,57.02,50,0
    .goto Stonetalon Mountains,65.74,57.20,50,0
    .goto Stonetalon Mountains,66.41,56.31,50,0
    .goto Stonetalon Mountains,66.94,56.25,50,0
    .goto Stonetalon Mountains,67.77,55.97,50,0
    .goto Stonetalon Mountains,68.52,56.04,50,0
    .goto Stonetalon Mountains,69.76,56.70,50,0
    .goto Stonetalon Mountains,70.52,56.22,50,0
    .goto Stonetalon Mountains,70.82,55.25,50,0
    .goto Stonetalon Mountains,59.66,52.14,0
    >>Kill |cRXP_ENEMY_XT:9|r. It patrols the southern side of the river
    >>|cRXP_WARN_This quest does not need to be completed now|r
    .complete 1068,2 --XT:9 (1)
    .unitscan XT:9
step
    #loop
    .line Stonetalon Mountains,67.18,46.87,66.53,46.95,65.72,45.09,63.73,45.02,63.72,45.92,63.43,46.57,64.43,46.13,64.72,46.63,64.82,47.72,65.11,48.31,65.98,48.67,66.24,49.65,66.65,49.58,66.88,48.95,68.41,49.58,69.45,46.56,70.22,48.62,70.95,48.49,71.41,45.54,71.25,43.45
    .goto Stonetalon Mountains,67.18,46.87,50,0
    .goto Stonetalon Mountains,66.53,46.95,50,0
    .goto Stonetalon Mountains,65.72,45.09,50,0
    .goto Stonetalon Mountains,63.73,45.02,50,0
    .goto Stonetalon Mountains,63.72,45.92,50,0
    .goto Stonetalon Mountains,63.43,46.57,50,0
    .goto Stonetalon Mountains,64.43,46.13,50,0
    .goto Stonetalon Mountains,64.72,46.63,50,0
    .goto Stonetalon Mountains,64.82,47.72,50,0
    .goto Stonetalon Mountains,65.11,48.31,50,0
    .goto Stonetalon Mountains,65.98,48.67,50,0
    .goto Stonetalon Mountains,66.24,49.65,50,0
    .goto Stonetalon Mountains,66.65,49.58,50,0
    .goto Stonetalon Mountains,66.88,48.95,50,0
    .goto Stonetalon Mountains,68.41,49.58,50,0
    .goto Stonetalon Mountains,69.45,46.56,50,0
    .goto Stonetalon Mountains,70.22,48.62,50,0
    .goto Stonetalon Mountains,70.95,48.49,50,0
    .goto Stonetalon Mountains,71.41,45.54,50,0
    .goto Stonetalon Mountains,71.25,43.45,50,0
    .goto Stonetalon Mountains,64.82,47.23,50,0
    .goto Stonetalon Mountains,64.82,47.23,0
    >>Kill |cRXP_ENEMY_XT:4|r. It patrols the northern side of the river
    >>|cRXP_WARN_This quest does not need to be completed now|r
    .complete 1068,1 --XT:4 (1)
    .unitscan XT:4
step
    #completewith next
    .subzone 2160 >> Enter the Windshear Mine
    .group
step
    .goto Stonetalon Mountains,71.87,60.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Piznik|r
    .accept 1090 >> Accept Gerenzo's Orders
    .target Piznik
    .group 3
step
    .goto Stonetalon Mountains,71.77,60.19
    >>Protect |cRXP_FRIENDLY_Piznik|r from incoming |cRXP_ENEMY_Windshear Vermin|r
    .complete 1090,1 --Keep Piznik safe while he mines the mysterious ore
    .mob Windshear Vermin
    .group 3
step
    .goto Stonetalon Mountains,71.87,60.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Piznik|r
    .turnin 1090 >> Turnin Gerenzo's Orders
    .accept 1092 >> Accept Gerenzo's Orders
    .target Piznik
    .group
step << skip
    .goto Stonetalon Mountains,71.83,60.34
    .goto Stonetalon Mountains,57.57,61.99,30 >>|cRXP_WARN_Jump onto the wooden wheel. Perform a Logout Skip by logging out and back in|r
    .link https://www.youtube.com/watch?v=8s1SRza7qFg&ab_channel=RestedXP >> |cRXP_WARN_CLICK HERE for an example|r
    .group
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ziz|r
    .turnin 1092 >> Turnin Gerenzo's Orders
    .target Ziz Fizziks
    .isQuestTurnedIn 1090
    .group
step
    #completewith next
    .goto Stonetalon Mountains,78.29,42.51,30 >> Enter the Talondeep Path
step << skip
    .goto Stonetalon Mountains,78.89,41.24
    .goto Ashenvale,40.40,53.06,30 >>|cRXP_WARN_Jump onto the white stone on your right. Perform a Logout Skip by logging out and back in|r
    .link https://www.youtube.com/watch?v=h2s4ZjFBLtg&ab_channel=RestedXP >> |cRXP_WARN_CLICK HERE for an example|r
    .zoneskip Ashenvale
step
	#completewith ZoramFP
    .goto Ashenvale,39.45,55.29,50,0
    .goto Ashenvale,36.47,57.15,50,0
    .goto Ashenvale,34.56,54.13,30,0
    .goto Ashenvale,32.14,52.12,60,0
    .goto Ashenvale,28.64,48.10,50,0
    .goto Ashenvale,26.34,45.44,50,0
    .goto Ashenvale,25.40,39.00,70,0
    .goto Ashenvale,11.96,34.28,80 >>Travel toward the Zoram'gar Outpost
    >>|cRXP_WARN_Make sure to avoid Astranaar guards en route. Follow the waypoint for safety|r
    .unitscan Astranaar Sentinel
step
    #optional
	#loop
	.goto Ashenvale,10.86,26.99,50,0
	.goto Ashenvale,11.23,25.73,50,0
	.goto Ashenvale,11.83,25.75,50,0
	.goto Ashenvale,12.51,24.09,50,0
	.goto Ashenvale,14.18,24.03,50,0
	.goto Ashenvale,14.85,23.08,50,0
	.goto Ashenvale,14.13,20.77,50,0
	.goto Ashenvale,14.73,19.56,50,0
	.goto Ashenvale,14.59,17.90,50,0
	.goto Ashenvale,13.38,16.39,50,0
	.goto Ashenvale,13.62,14.48,50,0
	.goto Ashenvale,14.15,15.31,50,0
	.goto Ashenvale,15.88,15.42,50,0
	.goto Ashenvale,15.40,16.96,50,0
	.goto Ashenvale,15.22,18.81,50,0
	.goto Ashenvale,15.33,20.78,50,0
	.goto Ashenvale,15.33,22.51,50,0
	.goto Ashenvale,15.32,24.90,50,0
	.goto Ashenvale,14.76,25.52,50,0
	.goto Ashenvale,14.62,26.49,50,0
	.goto Ashenvale,14.52,28.25,50,0
	.goto Ashenvale,13.55,29.36,50,0
	.goto Ashenvale,12.41,29.15,50,0
	.goto Ashenvale,11.22,31.04,50,0
	.goto Ashenvale,10.38,29.60,50,0
	.goto Ashenvale,11.01,28.57,50,0
    .xp 21 >> Grind to level 21
step
    #label ZoramFP
    .goto Ashenvale,12.20,33.80
    .fp Zoram'gar Outpost >> Get the Zoram'gar Outpost flight path
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu|r, |cRXP_FRIENDLY_Karang|r, |cRXP_FRIENDLY_Mitsuwa|r and |cRXP_FRIENDLY_Marukai|r
    .turnin 6562 >> Turn in Trouble in the Deeps
    .accept 6563 >> Accept The Essence of Aku'Mai
    .target +Je'neu Sancrea
    .goto Ashenvale,11.56,34.29
    .accept 216 >> Accept Between a Rock and a Thistlefur
    .target +Karang Amakkar
    .goto Ashenvale,11.90,34.53
    .accept 6462 >> Accept Troll Charm
    .target +Mitsuwa
    .goto Ashenvale,11.65,34.85
    .accept 6442 >> Accept Naga at the Zoram Strand
    .target +Marukai
    .goto Ashenvale,11.69,34.90
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu|r, |cRXP_FRIENDLY_Karang|r, |cRXP_FRIENDLY_Mitsuwa|r and |cRXP_FRIENDLY_Marukai|r
    .turnin 6562 >> Turn in Trouble in the Deeps
    .target +Je'neu Sancrea
    .goto Ashenvale,11.56,34.29
    .accept 216 >> Accept Between a Rock and a Thistlefur
    .target +Karang Amakkar
    .goto Ashenvale,11.90,34.53
    .accept 6462 >> Accept Troll Charm
    .target +Mitsuwa
    .goto Ashenvale,11.65,34.85
    .accept 6442 >> Accept Naga at the Zoram Strand
    .target +Marukai
    .goto Ashenvale,11.69,34.90
step
    .goto Ashenvale,12.06,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muglash|r
    >>|cRXP_WARN_This will start an escort quest. Be careful as it's difficult|r
    .accept 6641,1 >> Accept Vorsha the Lasher
    .target Muglash
    .group 2
step
    .goto Ashenvale,9.63,27.63
    >>Click the |cRXP_PICK_Brazier|r when you get there
    >>|cRXP_WARN_There will be waves of|r |cRXP_ENEMY_Naga|r |cRXP_WARN_that spawn. Be careful once|r |cRXP_ENEMY_Vorsha|r |cRXP_WARN_comes out, he hits very hard|r
    >>|cRXP_WARN_You can let|r |cRXP_FRIENDLY_Muglash|r |cRXP_WARN_get some aggro before fighting him|r
    .complete 6641,1 --Defeat Vorsha the Lasher
    .mob Vorsha the Lasher
    .group 2
step
	#loop
	.goto Ashenvale,11.01,28.57,0
	.goto Ashenvale,10.86,26.99,50,0
	.goto Ashenvale,11.23,25.73,50,0
	.goto Ashenvale,11.83,25.75,50,0
	.goto Ashenvale,12.51,24.09,50,0
	.goto Ashenvale,14.18,24.03,50,0
	.goto Ashenvale,14.85,23.08,50,0
	.goto Ashenvale,14.13,20.77,50,0
	.goto Ashenvale,14.73,19.56,50,0
	.goto Ashenvale,14.59,17.90,50,0
	.goto Ashenvale,13.38,16.39,50,0
	.goto Ashenvale,13.62,14.48,50,0
	.goto Ashenvale,14.15,15.31,50,0
	.goto Ashenvale,15.88,15.42,50,0
	.goto Ashenvale,15.40,16.96,50,0
	.goto Ashenvale,15.22,18.81,50,0
	.goto Ashenvale,15.33,20.78,50,0
	.goto Ashenvale,15.33,22.51,50,0
	.goto Ashenvale,15.32,24.90,50,0
	.goto Ashenvale,14.76,25.52,50,0
	.goto Ashenvale,14.62,26.49,50,0
	.goto Ashenvale,14.52,28.25,50,0
	.goto Ashenvale,13.55,29.36,50,0
	.goto Ashenvale,12.41,29.15,50,0
	.goto Ashenvale,11.22,31.04,50,0
	.goto Ashenvale,10.38,29.60,50,0
	.goto Ashenvale,11.01,28.57,50,0
    >>Kill |cRXP_ENEMY_Wraithtail Nagas|r. Loot them for their |cRXP_LOOT_Heads|r
    .complete 6442,1 --Wraithtail Head (20)
    .mob Wrathtail Razortail
    .mob Wrathtail Wave Rider
    .mob Wrathtail Sorceress
    .mob Wrathtail Sea Witch
    .mob Wrathtail Priestess
    .mob Wrathtail Myrmidon
    .mob Lady Vespia
step
    .goto Kalimdor,43.89,35.23,100 >> Travel to the entrance of Blackfathom Deeps
    .isOnQuest 6563
    .group
step
    #completewith next
    >>Loot |cRXP_PICK_Sapphire of Aku'Mai|r from the wall
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .group 4
step
    #loop
    .goto Kalimdor,43.94,34.86,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.53,34.86,20,0
    .goto Kalimdor,43.94,34.86,20,0
    >>Kill |cRXP_ENEMY_Blackfathom Tide Priestesses|r. Loot them for a |T134332:0|t[|cRXP_LOOT_Damp Note|r] and use it to start the quest
    .collect 16790,1,6564 --Collect Damp Note (1)
    .accept 6564 >> Accept Allegiance to the Old Gods
    .mob Blackfathom Tide Priestess
    .use 16790
    .group 4
step
    #loop
    .goto Kalimdor,44.34,35.11,0
    .goto Kalimdor,44.53,34.86,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,44.34,35.11,20,0
    >>Loot |cRXP_PICK_Sapphire of Aku'Mai|r from the wall
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .group 4
step
	#loop
	.goto Ashenvale,10.86,26.99,50,0
	.goto Ashenvale,11.23,25.73,50,0
	.goto Ashenvale,11.83,25.75,50,0
	.goto Ashenvale,12.51,24.09,50,0
	.goto Ashenvale,14.18,24.03,50,0
	.goto Ashenvale,14.85,23.08,50,0
	.goto Ashenvale,14.13,20.77,50,0
	.goto Ashenvale,14.73,19.56,50,0
	.goto Ashenvale,14.59,17.90,50,0
	.goto Ashenvale,13.38,16.39,50,0
	.goto Ashenvale,13.62,14.48,50,0
	.goto Ashenvale,14.15,15.31,50,0
	.goto Ashenvale,15.88,15.42,50,0
	.goto Ashenvale,15.40,16.96,50,0
	.goto Ashenvale,15.22,18.81,50,0
	.goto Ashenvale,15.33,20.78,50,0
	.goto Ashenvale,15.33,22.51,50,0
	.goto Ashenvale,15.32,24.90,50,0
	.goto Ashenvale,14.76,25.52,50,0
	.goto Ashenvale,14.62,26.49,50,0
	.goto Ashenvale,14.52,28.25,50,0
	.goto Ashenvale,13.55,29.36,50,0
	.goto Ashenvale,12.41,29.15,50,0
	.goto Ashenvale,11.22,31.04,50,0
	.goto Ashenvale,10.38,29.60,50,0
	.goto Ashenvale,11.01,28.57,50,0
    .xp 23 >> Grind to level 23
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6563 >>Turn in The Essence of Aku'Mai
    .turnin 6564 >>Turn in Allegiance to the Old Gods
    .target Je'neu Sancrea
    .group
    .isQuestComplete 6563
    .isQuestComplete 6564
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6563 >>Turn in The Essence of Aku'Mai
    .target Je'neu Sancrea
    .group
    .isQuestComplete 6563
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6564 >>Turn in Allegiance to the Old Gods
    .target Je'neu Sancrea
    .group
    .isQuestComplete 6564
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warsong Runner|r and |cRXP_FRIENDLY_Marukai|r
    .turnin 6641 >> Turn in Vorsha the Lasher
    .target +Warsong Runner
    .goto Ashenvale,12.22,34.21
    .turnin 6442 >> Turn in Naga at the Zoram Strand
    .target +Marukai
    .goto Ashenvale,11.69,34.90
    .isQuestComplete 6641
    .group
step
    .goto Ashenvale,11.69,34.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marukai|r
    .turnin 6442 >> Turn in Naga at the Zoram Strand
    .target Marukai
step
    .goto Ashenvale,11.90,34.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karang|r
    .accept 216 >> Accept Between a Rock and a Thistlefur
    .target Karang Amakkar
step
    #completewith flytoORG
    .hs >> Hearth to Thunder Bluff
    .use 6948
    .cooldown item,6948,>0
step
    .goto Thunder Bluff,47.12,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chesmu|r
    .bankdeposit 5059 >> Deposit your |T132938:0|t[Digging Claw]
    .target Chesmu
step
    #completewith flytoORG
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andruk|r
    .fly Thunder Bluff >> Fly to Thunder Bluff
    .target Andruk
    .cooldown item,6948,<0
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >> Travel to the Elder Rise
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magatha|r
    >>|cRXP_WARN_Wait for the RP to finish|r
    .turnin 1063 >> Turn in The Elder Crone
    .timer 6,The Elder Crone RP
    .accept 1064 >> Accept Forsaken Aid
    .target Magatha Grimtotem
step
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamah|r
    .turnin 1064 >> Turn in Forsaken Aid
    .accept 1065 >> Accept Journey to Tarren Mill
    .target Apothecary Zamah
step << Warlock
    #completewith flytoORG
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Fly to Camp Taurajo
    .target Tal
step << !Warlock
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >>Fly to Orgrimmar
    .target Tal
step << Warlock
    .goto The Barrens,44.62,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Logmar|r
    .turnin 1511 >>Turn in Ken'zigla's Draught
    .accept 1515 >>Accept Dogran's Captivity
    .target Grunt Logma
step << Warlock
    .goto The Barrens,43.31,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dogran|r
    .turnin 1515 >>Turn in Dogran's Captivity
    .accept 1512 >>Accept Love's Gift
    .target Grunt Dogran
step << Warlock
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fly Orgrimmar >>Fly to Orgrimmar
    .target Omusa Thunderhorn
    .zoneskip The Barrens,1
step
    #optional
    #label flytoORG
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gan'rul|r
    .trainer >> Train your class spells
    .turnin 1512 >>Turn in Love's Gift
    .accept 1513 >>Accept The Binding
    .target Gan'rul Bloodeye
step << Warlock
    #completewith next
    .cast 9224 >>Use |T133290:0|t[Dogran's Pendant] at the Summoning Circle
    .use 6626
step << Warlock
    .goto Orgrimmar,49.66,50.15
    >>Kill the |cRXP_ENEMY_Summoned Succubus|r
    .complete 1513,1 --Kill Summoned Succubus (1)
    .mob Summoned Succubus
    .use 6626
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gan'rul|r
    .turnin 1513 >>Turn in The Binding
    .target Gan'rul Bloodeye
step << Rogue
    #completewith next
    .goto Orgrimmar,45.64,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kareth|r|cRXP_BUY_. Buy a|r |T135640:0|t[Jambiya] |cRXP_BUY_from him if you do not have a dagger|r
    .collect 2207,1 --Collect Jambiya (1)
    .target Kareth
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenthul|r
    .train 921 >> Train |T133644:0|t[Pick Pocket]
    .train 8676 >> Train |T132282:0|t[Ambush]
    .train 1943 >> Train |T132302:0|t[Rupture]
    .train 1856 >> Train |T132331:0|t[Vanish]
    .train 1725 >> Train |T132289:0|t[Distract]
    .train 1785 >> Train |T132320:0|t[Stealth Rank 2]
    .accept 2460 >>Accept The Shattered Salute
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>After |cRXP_FRIENDLY_Shenthul|r does his salute, type /Salute while targeting him
    .complete 2460,1 --Shattered Salute Performed (1)
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenthul|r
    .turnin 2460 >>Turn in The Shattered Salute
    .accept 2458 >>Accept Deep Cover
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Buy |r |T134387:0|t[Flash Powder] |cRXP_BUY_from him|r
    .collect 2928,20,2479,1 --Collect Dust of Decay (20)
    .collect 3371,20,2479,1 --Collect Empty Vial (20)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target Rekkul
step
    .goto Orgrimmar,76.50,24.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rilli |r
    .turnin 3923 >> Turn in Rilli Greasygob
    .accept 3924 >> Accept Samophlange Manual
    .target Rilli Greasygob
step << Priest/Warlock
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Buy a|r |T135139:0|t[Burning Wand] |cRXP_BUY_from her|r
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
    .train 2138 >> Train your class spells
    .target Pephredo
    .xp <22,1
    .xp >24,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Pephredo|r
    .train 2121 >> Train your class spells
    .target Pephredo
    .xp <24,1
step << Mage
    .goto Orgrimmar,38.66,85.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Thuul|r at the top of the hut
    .train 3567 >> Train |T135759:0|t[Teleport: Orgrimmar]
    .target Thuul
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5642 >> Turn in Shadowguard
    .trainer >> Train your class spells
    .target Ur'kyo
step << Undead Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8103 >> Train your class spells
    .target Ur'kyo
    .xp <22,1
    .xp >24,1
step << Undead Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 3747 >> Train your class spells
    .target Ur'kyo
    .xp <24,1
step << Rogue/Druid
    #completewith MissionProbable
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .goto Orgrimmar,18.03,60.51,50 >> Enter The Barrens through the Western Exit
    .zoneskip The Barrens
step << Rogue/Druid
    #completewith MissionProbable
    .goto The Barrens,57.63,7.48,120 >> Travel toward the Sludge Ven
step << Druid
    .goto The Barrens,56.67,8.32
    >>Loot the |cRXP_PICK_Strange Lockbox|r in the water for the |T133443:0|t[Half Pendant of Aquatic Agility]
    .collect 15883,1,3924,1 --Half Pendant of Aquatic Agility (1)
step << Rogue
    #completewith next
    .goto The Barrens,55.70,5.89
    +Target |cRXP_FRIENDLY_Taskmaster Fizzule|r, then use your |T134536:0|t[Flare Gun] TWICE and type /Salute
    >>|cRXP_WARN_Be careful! Do NOT approach him until he becomes friendly or he will attack you!|r
    .use 8051
    .target Taskmaster Fizzule
step << Rogue
    .goto The Barrens,55.44,5.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Taskmaster Fizzule|r
    .turnin 2458 >>Turn in Deep Cover
    .accept 2478 >>Accept Mission: Possible But Not Probable
    .target Taskmaster Fizzule
step << Rogue/Druid
    #optional
    #label MissionProbable
step << Rogue
    .goto The Barrens,54.80,5.97
    >>Use |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Foreman Silixiz|r for his |cRXP_LOOT_Tower Key|r
    .complete 2478,5 --Silixiz's Tower Key (1)
    .mob Foreman Silixiz
step << Rogue
    #completewith roguetowerq
    +|cRXP_WARN_Each mob here will take increased damage to certain abilities|r
    >>Use |T132282:0|t[Ambush] on the |cRXP_ENEMY_Mutated Venture Co. Drones|r
    >>Use |T132302:0|t[Rupture] on the |cRXP_ENEMY_Venture Co. Patrollers|r
    >>Use |T132292:0|t[Eviscerate] on the |cRXP_ENEMY_Venture Co. Lookouts|r once (1 combo point)
step << Rogue
    #label roguetowerq
    .goto The Barrens,54.72,5.74
    >>Run into the Rogue Tower and kill |cRXP_ENEMY_Drones|r, |cRXP_ENEMY_Patrollers|r and |cRXP_ENEMY_Lookouts|r
    .complete 2478,1 --Mutated Venture Co. Drone (2)
    .mob +Mutated Venture Co. Drone
    .complete 2478,3 --Venture Co. Patroller (2)
    .mob +Venture Co. Patroller
    .complete 2478,2 --Venture Co. Lookout (2)
    .mob +Venture Co. Lookout
step << Rogue
    .goto The Barrens,54.77,5.57
    >>At the top of the tower you'll find |cRXP_ENEMY_Gallywix|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Use|r |T132282:0|t[Ambush] |cRXP_WARN_to reduce his HP to half. Use|r |T132155:0|t[Gouge] |cRXP_WARN_to restore energy and use|r |T136205:0|t[Evasion]
	>>|cRXP_WARN_Remember to use a Potion and|r |T132819:0|t[Thistle Tea] |cRXP_WARN_if needed|r
    .complete 2478,4 --Gallywix's Head (1)
    .mob Grand Foreman Puzik Gallywix
    --VV Video?
step << Rogue
    .goto The Barrens,54.77,5.57
    >>Use your lock picking to open |cRXP_PICK_Gallywix's Lockbox|r & loot the |cRXP_LOOT_Mixture|r.
    .complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << Rogue/Druid
    #completewith SamophlangePages
    .goto The Barrens,61.33,4.21,120 >>Travel toward the Boulder Lode Mine
step << !Rogue/Druid
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .goto Orgrimmar,18.03,60.51,50 >> Enter The Barrens through the Western Exit
    .zoneskip The Barrens
    .isOnQuest 3924
step
    #completewith next
    >>Kill |cRXP_ENEMY_Venture Co. Enforcers|r and |cRXP_ENEMY_Venture Co. Overseers|r. Loot them for |cRXP_LOOT_Samophlange Manual Pages|r
    .collect 11148,5 --Samophlange Manual Page (5)
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    #label SamophlangePages
    .goto The Barrens,60.90,3.84,20,0
    .goto The Barrens,59.99,4.13
    >>Kill |cRXP_ENEMY_Boss Copperplug|r in the back of the mine. Loot him for the |cRXP_LOOT_Samophlange Manual Cover|r
    .collect 11147,1 --Samophlange Manual Cover (1)
    .mob Boss Copperplug
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    #label SamophlangePages2
    #loop
    .goto The Barrens,61.51,4.43,0
    .goto The Barrens,61.46,4.50,40,0
    .goto The Barrens,61.06,3.63,40,0
    .goto The Barrens,61.63,3.37,40,0
    .goto The Barrens,62.14,3.52,40,0
    .goto The Barrens,61.94,4.53,40,0
    .goto The Barrens,61.85,5.37,40,0
    .goto The Barrens,61.44,5.56,40,0
    .goto The Barrens,61.17,5.05,40,0
    .goto The Barrens,61.51,4.43,40,0
    >>Kill |cRXP_ENEMY_Venture Co. Enforcers|r and |cRXP_ENEMY_Venture Co. Overseers|r. Loot them for |cRXP_LOOT_Samophlange Manual Pages|r
    .collect 11148,5 --Samophlange Manual Page (5)
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    #requires SamophlangePages
    #requires SamophlangePages2
    >>Click the |T133735:0|t[Samophlange Manual Cover] to create the |cRXP_LOOT_Manual|r
    .complete 3924,1 -- Samophlange Manual
    .use 6626
step << skip
    .goto The Barrens,60.00,4.09
    .goto Orgrimmar,40.05,68.05,30 >>|cRXP_WARN_Jump onto the tent. Perform a Logout Skip by logging out and back in. Run back to Orgrimmar if you don't succeed|r
    .link https://www.youtube.com/watch?v=cOxspH4RcI8&ab >> |cRXP_WARN_CLICK HERE for an example|r
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenthul|r
    .turnin 2478 >>Turn in Mission: Possible But Not Probable
    .accept 2479 >>Accept Hinott's Assistance
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Buy |r |T133849:0|t[Dust of Decay] |cRXP_BUY_and|r |T132793:0|t[Empty Vials] |cRXP_BUY_from him|r
    .collect 2928,20,2479,1 --Collect Dust of Decay (20)
    .collect 3371,20,2479,1 --Collect Empty Vial (20)
    .target Rekkul
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 8498 >> Train your class spells
    .target Kardris Dreamseeker
    .xp <22,1
    .xp >24,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris|r
    .train 905 >> Train your class spells
    .target Kardris Dreamseeker
    .xp <24,1
step
    .goto Orgrimmar,76.50,24.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rilli |r
    .turnin 3924 >> Turn in Samophlange Manual
    .target Rilli Greasygob
step << Troll Warrior/Undead Warrior/Tauren Warrior
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Train Two-Handed Axes
    .target Hanashi
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
    .train 6192 >> Train your class spells
    .target Grezz Ragefist
    .xp <22,1
    .xp >24,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz|r
    .train 5308 >> Train your class spells
    .target Grezz Ragefist
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
    .train 14323 >> Train your class spells
    .target Ormak Grimshot
    .xp <22,1
    .xp >24,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak|r
    .train 14262 >> Train your class spells
    .target Ormak Grimshot
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xao'tsu|r
    .train 24558 >> Train your pet spells
    .target Xao'tsu
    .xp <24,1
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Buy |r |T135423:0|t[Deadly Throwing Axe] |cRXP_BUY_from him|r
    .collect 3137,200,6544,1 --Deadly Throwing Axe (200)
    .target Trak'gen
step
    #optional
    .abandon 6421 >> Abandon Boulderslide Ravine
    .isOnQuest 6421
step
    #optional
    .abandon 4021 >> Abandon Counterattack!
    .isOnQuest 4021
step
    #optional
    .abandon 6481 >> Abandon Earthen Arise
    .isOnQuest 6481
step
    #optional
    .abandon 6284 >> Abandon Arachnophobia
    .isOnQuest 6284
step
    #optional
    .abandon 6641 >> Abandon Vorsha the Lasher
    .isOnQuest 6641
step
    #optional
    .abandon 6563 >> Abandon The Essence of Aku'Mai
    .isOnQuest 6563
step
    #optional
    .abandon 1486 >> Abandon Deviate Hides
    .isOnQuest 1486
    .dungeon WC
step
    #optional
    .abandon 1487 >> Abandon Deviate Eradication
    .isOnQuest 1487
    .dungeon WC
step
    #optional
    .abandon 1491 >> Abandon Smart Drinks
    .isOnQuest 1491
    .dungeon WC
step
    #optional
    .abandon 959 >> Abandon Trouble at the Docks
    .isOnQuest 959
    .dungeon WC
step
    #optional
    .abandon 914 >> Abandon Leaders of the Fang
    .isOnQuest 914
    .dungeon WC
step
    #optional
    .abandon 962 >> Abandon Serpentbloom
    .isOnQuest 962
    .dungeon WC
step
    #completewith next
    .zone Durotar >> Leave Orgrimmar
    .zoneskip Durotar
step
    .goto Durotar,50.8,13.8,40 >>Go up the Zeppelin Tower
    .zone Tirisfal Glades >>Take the Zeppelin to Tirisfal Glades
    .zoneskip Tirisfal Glades
    .zoneskip Undercity

]])

