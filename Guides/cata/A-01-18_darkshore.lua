local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction ~= 'Alliance' then return end


RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclysm 1-80 (A)
#cata
#mop
#name 10-18 Darkshore
#next 15-20 Redridge
#defaultfor NightElf/Worgen/Draenei
<< Alliance


step
    #optional
    .goto 62,51.785,18.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dentaria Silverglade|r
    .turnin 26383 >>Turn in Breaking Waves of Change << !Worgen
    .turnin 26385 >>Turn in Breaking Waves of Change << Worgen
    .accept 13518 >>Accept The Last Wave of Survivors
	.target Dentaria Silverglade
    .isOnQuest 26383 << !Worgen
    .isOnQuest 26385 << Worgen
step
    .goto 62,51.785,18.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dentaria Silverglade|r
    .accept 13518 >>Accept The Last Wave of Survivors
	.target Dentaria Silverglade
step
    .goto 62,50.22,19.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Glynda Nal'Shea|r
    .accept 13522 >>Accept Threat from the Water
	.target Ranger Glynda Nal'Shea
step
    #completewith finalrescue
    >>Kill |cRXP_ENEMY_Vile Sprays|r
    .complete 13522,1 --8/8 Vile Spray slain
	.mob Vile Spray
step
    .goto 62,45.02,18.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Volcor|r
    .complete 13518,4 --1/1 Volcor rescued
	.target Volcor
step
    .goto 62,44.11,17.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gershala|r
    .complete 13518,2 --1/1 Gershala Nightwhisper rescued
	.target Gershala Nightwhisper
step
    .goto 62,44.58,19.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whiteclaw|r
    .complete 13518,1 --1/1 Cerellean Whiteclaw rescued
	.target Cerellean Whiteclaw
step
	#label finalrescue
    .goto 62,42.91,21.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaldyn|r
    .complete 13518,3 --1/1 Shaldyn rescued
	.target Shaldyn
step
    .goto 62,46.22,17.15,40,0
    .goto 62,44.85,17.07
    .goto 62,44.06,20.31
    .goto 62,42.91,21.51
    .goto 62,46.22,17.15
    >>Kill |cRXP_ENEMY_Vile Sprays|r
    .complete 13522,1 --8/8 Vile Spray slain
	.mob Vile Spray
step
    .goto 62,50.21,19.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Glynda Nal'Shea|r
    .turnin 13522 >>Turn in Threat from the Water
	.target Ranger Glynda Nal'Shea
step
    .goto 62,51.78,17.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dentaria Silverglade|r
    .turnin 13518 >>Turn in The Last Wave of Survivors
	.target Dentaria Silverglade
step
    .goto 62,51.8,18.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serendia Oakwhisper|r |cFFfa9602patrolling up and down the stairs in the Inn|r
    .accept 13520 >>Accept The Boon of the Seas
	.target Serendia Oakwhisper
step
    .goto 62,50.964,18.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kyteran|r
    .home >>Set your Hearthstone to Lor'danel
    .target Innkeeper Kyteran
step
    .goto 62,51.14,19.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizbang Cranktoggle|r
    .accept 13521 >>Accept Buzzbox 413
	.target Wizbang Cranktoggle
step
    #completewith next
    >>Kill |cRXP_ENEMY_Corrupted Tide Crawlers|r. Loot them for their |cRXP_LOOT_Crawler Flesh|r
    .complete 13521,1 --4/4 Corrupted Tide Crawler Flesh
	.mob Corrupted Tide Crawler
step
    .goto 62,52.41,19.60,20,0
    .goto 62,52.50,16.62,20,0
    .goto 62,52.57,17.53,20,0
    .goto 62,53.18,18.53,20,0
    .goto 62,52.41,19.60
    >>Loot the |cRXP_PICK_Encrusted Clams|r underwater
    .complete 13520,1 --16/16 Encrusted Clam Muscle
step
    .goto 62,52.41,19.60,20,0
    .goto 62,52.50,16.62,20,0
    .goto 62,52.57,17.53,20,0
    .goto 62,53.18,18.53,20,0
    .goto 62,52.41,19.60
    >>Kill |cRXP_ENEMY_Corrupted Tide Crawlers|r. Loot them for their |cRXP_LOOT_Crawler Flesh|r
    .complete 13521,1 --4/4 Corrupted Tide Crawler Flesh
	.mob Corrupted Tide Crawler
step
    .goto 62,53.24,19.64
    >>Click the |cRXP_PICK_Buzzbox 413|r on the ground
    .turnin 13521 >>Turn in Buzzbox 413
    .accept 13527 >>Accept No Accounting for Taste
step
    .goto 62,55.1,21.0
    >>Loot the |cRXP_FRIENDLY_Decomposing Thistle Bear|r
    .complete 13527,1 --1/1 Foul Bear Carcass Sample
	.target Decomposing Thistle Bear
step
    .goto 62,51.17,19.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizbang Cranktoggle|r
    .turnin 13527 >>Turn in No Accounting for Taste
    .accept 13528 >>Accept Buzzbox 723
	.target Wizbang Cranktoggle
step
    #xprate >1.59
    #optional
    .maxlevel 18,DarkshoreEnd
step
    .goto 62,50.90,18.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serendia Oakwhisper|r |cFFfa9602patrolling up and down the stairs in the Inn.|r
    .turnin 13520 >>Turn in The Boon of the Seas
	.target Serendia Oakwhisper
step << Priest
    .goto 62,50.647,19.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Irlara Morninglight|r
    .trainer >> Train your class spells
    .target Irlara Morninglight
step << Hunter
    .goto 62,50.352,19.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanla Bowleaf|r
    .trainer >> Train your class spells
    .target Lanla Bowleaf
step << Mage
    .goto 62,50.465,19.210
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lareth Beld|r
    .trainer >> Train your class spells
    .target Lareth Beld
step << Warlock
    .goto 62,50.487,19.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laera Dubois|r
    .trainer >> Train your class spells
    .target Laera Dubois
step << Rogue
    .goto 62,50.684,18.509
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kenral Nightwind|r
    .trainer >> Train your class spells
    .target Kenral Nightwind
step << Warrior
    .goto 62,50.831,18.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Moonwing|r
    .trainer >> Train your class spells
    .target Sentinel Moonwing
step << Druid
    .goto 62,50.120,19.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dular|r
    .trainer >> Train your class spells
    .target Dular
step
    .goto 62,52.96,25.46,40,0
    .goto 62,54.02,25.28,40,0
    .goto 62,55.73,23.95,40,0
    .goto 62,54.87,27.67,40,0
    .goto 62,52.96,25.46
    >>Kill |cRXP_ENEMY_Bears|r. Loot them for their |cRXP_LOOT_Corrupted Thistle Bear Guts|r
    .complete 13528,1 --6/6 Corrupted Thistle Bear Guts
	.mob Corrupted Thistle Bear
	.mob Corrupted Thistle Bear Matriarch
	.mob Thistle Bear Cub
step
    .goto 62,54.17,29.24
    >>Click the |cRXP_PICK_Buzzbox 723|r on the ground
    .turnin 13528 >>Turn in Buzzbox 723
    .accept 13554 >>Accept A Cure In The Dark
step
    #label itall
    .goto 62,56.26,27.41,40,0
    .goto 62,56.78,30.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun|r
    .accept 13529 >>Accept The Corruption's Source
	.target Tharnariun
step
    #completewith GrellsIchor
	>>Kill |cRXP_ENEMY_Vile Grells|r and |cRXP_ENEMY_Vile Corrupters|r. Loot them for their |cRXP_LOOT_Foul Ichor|r and the |T134245:0|t[|cRXP_LOOT_Corruptor's Master Key|r]
    .use 44927 >>|cRXP_WARN_Use the|r |T134245:0|t[|cRXP_LOOT_Corruptor's Master Key|r] |cRXP_WARN_to start the quest|r
    .complete 13529,2 --8/8 Vile Grell slain
    .complete 13554,1 --6/6 Foul Ichor
	.collect 44927,1,13557
    .accept 13557 >>Accept Bearer of Good Fortune
	.mob Vile Grell
	.mob Vile Corruptor
step
    .goto 62,57.51,32.31,15,0
    .goto 62,58.58,32.24,15,0
    .goto 62,58.13,32.84,15,0
    .goto 62,57.34,33.00,15,0
    .goto 62,57.17,32.12,15,0
    .goto 62,56.97,32.66,15,0
    .goto 62,56.58,33.64,15,0
    .goto 62,57.10,34.18
    >>Open the |cRXP_PICK_Cages|r throughout the cave
	.complete 13557,1
step
    .goto 62,58.41,33.08
    >>Kill |cRXP_ENEMY_Zenn Foulhoof|r
    >>|cRXP_ENEMY_Zenn Foulhoof|r |cRXP_WARN_is on the bottom level of the cave|r
    .complete 13529,1 --1/1 Zenn Foulhoof slain
	.mob Zenn Foulhoof
step
    #label GrellsIchor
    .goto 62,56.79,33.52,20,0
    .goto 62,57.43,33.75
    >>Click on the |cRXP_PICK_Disgusting Workbench|r at the back of the cave
    .accept 13831 >>Accept A Troubling Prescription
step
    .goto 62,57.51,32.31,30,0
    .goto 62,58.58,32.24,30,0
    .goto 62,58.13,32.84,30,0
    .goto 62,57.34,33.0,30,0
    .goto 62,57.17,32.12,30,0
    .goto 62,56.97,32.66,30,0
    .goto 62,56.58,33.64,30,0
    .goto 62,57.10,34.18
	>>Kill |cRXP_ENEMY_Vile Grells|r and |cRXP_ENEMY_Vile Corrupters|r. Loot them for their |cRXP_LOOT_Foul Ichor|r and the |T134245:0|t[|cRXP_LOOT_Corruptor's Master Key|r]
    .use 44927 >>|cRXP_WARN_Use the|r |T134245:0|t[|cRXP_LOOT_Corruptor's Master Key|r] |cRXP_WARN_to start the quest|r
    .complete 13529,2 --8/8 Vile Grell slain
    .complete 13554,1 --6/6 Foul Ichor
	.collect 44927,1,13557
    .accept 13557 >>Accept Bearer of Good Fortune
	.mob Vile Grell
	.mob Vile Corruptor
step
    #completewith next
    .hs >> Hearth to Lor'Danel
    .cooldown item,6948,>2
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizbang Cranktoggle|r and |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 13554 >>Turn in A Cure In The Dark
	.target +Wizbang Cranktoggle
    .goto 62,51.142,19.658
    .turnin 13557 >>Turn in A Troubling Prescription
    .turnin 13831 >>Turn in A Troubling Prescription
    .turnin 13529 >>Turn in The Corruption's Source
	.target +Tharnariun Treetender
    .goto 62,51.134,19.709
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Volcor|r
    .target Volcor
    .accept 13564 >>Accept A Lost Companion
    .goto 62,50.943,18.026
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .target Cerellean Whiteclaw
    .accept 13563 >>Accept A Love Eternal
    .goto 62,50.821,17.884
step
    .goto 62,50.649,19.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Glynda Nal'Shea|r
    >>|cRXP_FRIENDLY_Ranger Glynda Nal'Shea|r |cRXP_WARN_patrols throughout Lor'danel|r
    .target Ranger Glynda Nal'Shea
    .accept 13562 >>Accept The Final Flame of Bashal'Aran
step
    .goto 62,46.807,33.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arya Autumnlight|r
    .target Arya Autumnlight
    .accept 13561 >>Accept Solace for the Highborne
step
    .goto 62,45.958,34.240
    >>Click the |cRXP_PICK_The Final Flame of Bashal'Aran|r on the ground
    .complete 13562,1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Cursed Highbornes|r and |cRXP_ENEMY_Writhing Highbornes|r
    .complete 13561,1 --|6/6 Cursed Highborne slain
    .mob +Cursed Highborne
    .complete 13561,2 --|6/6 Writhing Highborne slain
    .mob +Writhing Highborne
step
    .goto 62,48.482,36.634
    >>Kill |cRXP_ENEMY_Anaya Dawnrunner|r. Loot her for |cRXP_LOOT_Anaya's Pendant|r
    .complete 13563,1 --|1/1 Anaya Dawnrunner slain
    .complete 13563,2 --|1/1 Anaya's Pendant
    .unitscan Anaya Dawnrunner
step
    .goto 62,47.180,35.201
    >>Kill |cRXP_ENEMY_Cursed Highbornes|r and |cRXP_ENEMY_Writhing Highbornes|r
    .complete 13561,1 --|6/6 Cursed Highborne slain
    .mob +Cursed Highborne
    .complete 13561,2 --|6/6 Writhing Highborne slain
    .mob +Writhing Highborne
step
    .goto 62,46.807,33.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arya Autumnlight|r
    .target Arya Autumnlight
    .turnin 13561 >>Turn in Solace for the Highborne
step
    .goto 62,42.954,39.006
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Karithus|r
    .target Keeper Karithus
    .turnin 13564 >>Turn in A Lost Companion
    .accept 13566 >>Accept Ritual Materials
    .accept 13598 >>Accept Unsavory Remedies
step
    .goto 62,42.932,38.958
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seraphine|r
    .target Seraphine
    .accept 13565 >>Accept Twice Removed
step
    .goto 62,40.944,38.615
    >>Click the |cRXP_PICK_Moonstalkers|r sleeping next to the trees to loot them their |cRXP_LOOT_Whiskers|r
    *|cRXP_WARN_Only some of the mobs are neutral and are able to be looted|r
    .complete 13566,1 --|3/3 Moonstalker Whisker
    .mob Moonstalker
step
    .goto 62,45.206,41.222
    >>Click the |cRXP_PICK_Mottled Does|r to loot them for their |cRXP_LOOT_Hair|r
    .complete 13566,2 --|3/3 Tuft of Mottled Doe Hair
    .mob Mottled Doe
step
    #label janira
    #sticky
    .goto 62,48.554,40.330
    >>Kill |cRXP_ENEMY_Lady Janira|r
    .complete 13565,1 --|1/1 Lady Janira slain
    .unitscan Lady Janira
step
#loop
    .goto 62,47.071,41.609,0
    .goto 62,47.429,40.389,0
    .goto 62,48.422,40.225,0
    .goto 62,49.074,39.158,0
    .goto 62,47.071,41.609,30,0
    .goto 62,47.429,40.389,30,0
    .goto 62,48.422,40.225,30,0
    .goto 62,49.074,39.158,30,0
    .goto 62,48.422,40.225,30,0
    .goto 62,48.422,40.225,30,0
    >>Loot the |cRXP_LOOT_Fuming Toadstools|r on the ground
    .use 45911 >>Kill |cRXP_ENEMY_Darkscale Scouts|r. |cRXP_WARN_Use the|r |T134413:0|t[Petrified Root] |cRXP_WARN_on their corpses|r
    .complete 13598,1 --|6/6 Fuming Toadstool
    .complete 13565,2 --|6/6 Withered Ents called
    .mob Darkscale Scout
step
#loop
    .goto 62,48.579,38.630,0
    .goto 62,46.459,38.829,0
    .goto 62,48.579,38.630,30,0
    .goto 62,46.459,38.829,30,0
    >>Click the |cRXP_PICK_Hungry Thistle Bears|r drinking water next to the riverbed to loot them for their |cRXP_LOOT_Fur|r
    *|cRXP_WARN_Only some of the mobs are neutral and are able to be looted|r
    .complete 13566,3 --|3/3 Thistle Bear Fur
step
    #requires janira
    .goto 62,42.932,38.958
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seraphine|r
    .target Seraphine
    .turnin 13565 >>Turn in Twice Removed
step
    .goto 62,42.954,39.006
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Karithus|r
    .target Keeper Karithus
    .turnin 13566 >>Turn in Ritual Materials
    .turnin 13598 >>Turn in Unsavory Remedies
    .accept 13569 >>Accept The Ritual Bond
step
    #completewith next
    .goto 62,42.938,39.031
    .aura 64198 >> Click the |cRXP_PICK_Grovekeeper's Incense|r on the ground
    .skipgossip
step
    .goto 62,43.683,39.926
    .turnin 13567>>Speak with the |cRXP_FRIENDLY_Great Stag Spirit|r
    .disablecheckbox
    .complete 13569,1
    .target Great Stag Spirit
step
#requires janira
    .goto 62,42.960,38.956
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Karithus|r
    .target Keeper Karithus
    .turnin 13569 >>Turn in The Ritual Bond
    .accept 13599 >>Accept Grimclaw's Return
step
    .xp 13
--Grinding checkpoint, likely won't be needed at all
----CENTRAL DARKSHORE

step
    .isOnQuest 13601
    .goto 62,42.596,45.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Alinya|r
    .target Priestess Alinya
    .turnin 13601 >>Turn in In Aid of the Refugees
step
    #xprate >1.59
    #optional
    .maxlevel 18,DarkshoreEnd
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Selarin|r and |cRXP_FRIENDLY_Corvine Moonrise|r
    .accept 13542 >>Accept Against the Wind
    .goto 62,42.513,45.154
    .target +Sentinel Selarin
    .accept 13543 >>Accept Three Hammers to Break
    .accept 13573 >>Accept Malfurion's Return
    .goto 62,42.681,45.151
    .target +Corvine Moonrise
step
    #completewith WindmasterTzuTzu
    >>Kill |cRXP_ENEMY_Frenzied Cyclones|r. Loot them for their |T236968:0|t[|cRXP_LOOT_Frenzied Cyclone Bracers|r]
    .collect 44868,8,13542,1
    .mob Frenzied Cyclone
step
    .goto 62,40.818,41.476
    >>Kill |cRXP_ENEMY_Cloudtamer Wildmane|r
    .complete 13543,1 --|1/1 Cloudtamer Wildmane slain
    .mob Cloudtamer Wildmane
step
    .goto 62,39.159,38.314
    >>Kill |cRXP_ENEMY_Skylord Braax|r
    .complete 13543,3 --|1/1 Skylord Braax slain
    .mob Skylord Braax
step
    #label WindmasterTzuTzu
    .goto 62,37.829,42.721
    >>Kill |cRXP_ENEMY_Cloudtamer Wildmane|r
    .complete 13543,2 --|1/1 Windmaster Tzu-Tzu slain
    .mob Windmaster Tzu-Tzu
step
    #loop
    .goto 62,39.466,42.096,0
    .goto 62,40.585,41.779,40,0
    .goto 62,39.379,39.127,40,0
    .goto 62,37.963,43.867,40,0
    >>Kill |cRXP_ENEMY_Frenzied Cyclones|r. Loot them for their |T236968:0|t[|cRXP_LOOT_Frenzied Cyclone Bracers|r]
    .collect 44868,8,13542,1
    .mob Frenzied Cyclone
step
    .goto 62,39.466,42.096
    .use 44868 >>|cRXP_WARN_Use the|r |T236968:0|t[Frenzied Cyclone Bracers] |cRXP_WARN_next to the Auberdine moonwell|r
    .complete 13542,1 --|8/8 Frenzied Cyclone bracers destroyed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Selarin|r and |cRXP_FRIENDLY_Corvine Moonrise|r
    .turnin 13542 >>Turn in Against the Wind
    .goto 62,42.513,45.154
    .target +Sentinel Selarin
    .turnin 13543 >>Turn in Three Hammers to Break
    .goto 62,42.681,45.151
    .target +Corvine Moonrise

--
step
    .goto 62,43.662,53.441
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .target Malfurion Stormrage
    .turnin 13573 >>Turn in Malfurion's Return
    .accept 13575 >>Accept The Land Is in Their Blood
    .accept 13577 >>Accept The Last Wildkin
    .accept 13579 >>Accept Protector of Ameth'Aran
--
step
    .goto 62,45.584,48.470
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aroom|r
    .target Aroom
    .turnin 13577 >>Turn in The Last Wildkin
    .accept 13578 >>Accept Aroom's Farewell
step
#loop
    .goto 62,45.015,47.835,0
    .goto 62,44.704,45.966,40,0
    .goto 62,46.463,47.371,40,0
    .goto 62,45.046,49.702,40,0
    .goto 62,43.670,47.028,40,0
    >>Loot the |cRXP_LOOT_Slain Wildkin Feathers|r on the ground
    .complete 13578,1 --|8/8 Slain Wildkin Feather
step
    .goto 62,45.584,48.470
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aroom|r
    .target Aroom
    .turnin 13578 >>Turn in Aroom's Farewell
    .accept 13582 >>Accept Elune's Fire
step
#loop
    .goto 62,46.875,50.147,0
    .goto 62,46.875,50.147,40,0
    .goto 62,45.698,52.584,40,0
    .goto 62,46.867,50.276,40,0
    >>Kill |cRXP_ENEMY_Horoo the Flamekeeper|r. Loot him for |cRXP_LOOT_Elune's Torch|r
    >>|cRXP_ENEMY_Horoo the Flamekeeper|r |cRXP_WARN_patrols slightly|r
    .complete 13582,1 --|1/1 Elune's Torch
    .unitscan Horoo the Flamekeeper
step
    .goto 62,45.584,48.470
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aroom|r
    .target Aroom
    .turnin 13582 >>Turn in Elune's Fire
    .accept 13583 >>Accept The Wildkin's Oath
--
step
    .goto 62,40.945,56.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Brownpaw|r
    .target Elder Brownpaw
    .turnin 13575 >>Turn in The Land Is in Their Blood
    .accept 13576 >>Accept Mutual Aid

step
#loop
    .goto 62,40.288,61.724,0
    .goto 62,40.576,59.527,40,0
    .goto 62,39.982,63.824,40,0
    .use 44959 >>Kill |cRXP_ENEMY_Unbound Fire Elementals|r
    >>|cRXP_WARN_Use the|r |T136061:0|t[Soothing Totem] |cRXP_WARN_on their corpses|r
    .complete 13576,1 --|8/8 Unbound Fire Elemental absorbed
    .mob Unbound Fire Elemental
step
    .goto 62,40.945,56.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Brownpaw|r
    .target Elder Brownpaw
    .turnin 13576 >>Turn in Mutual Aid
    .accept 13580 >>Accept Soothing the Elements
step
    #completewith next
    .goto 62,38.77,60.82,25,0
    .goto 62,39.66,62.12,30 >> Travel to the altar at the top of the small hill
step
    .goto 62,39.66,62.12
    .cast 65361 >> |cRXP_WARN_Use the|r |T135839:0|t[Energized Soothing Totem] |cRXP_WARN_next to the altar then defend it|r
    .use 46546
    .isOnQuest 13580
step
    .goto 62,39.66,62.12
    .use 46546 >> |cRXP_WARN_Defend the|r |T135839:0|t[Energized Soothing Totem] |cRXP_WARN_against the attackers|r
    .complete 13580,1 --|1/1 Ritual of Soothing complete
    .mob Fire Elemental Remnant
    .mob Fire Elemental Rager
step
    .goto 62,40.945,56.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Brownpaw|r
    .target Elder Brownpaw
    .turnin 13580 >>Turn in Soothing the Elements
    .accept 13581 >>Accept The Blackwood Pledge
--
step
    .goto 62,44.442,56.757
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Selenn|r
    .target Selenn
    .turnin 13579 >>Turn in Protector of Ameth'Aran
    .accept 13584 >>Accept Calming the Earth
step
#loop
    .goto 62,43.922,59.006,0
    .goto 62,45.281,58.363,40,0
    .goto 62,42.966,60.120,40,0
    .goto 62,45.190,56.295,40,0
    >>Kill |cRXP_ENEMY_Enraged Earth Elementals|r
    .complete 13584,1 --|8/8 Enraged Earth Elemental slain
    .mob Enraged Earth Elemental
step
    .goto 62,44.442,56.757
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Selenn|r
    .target Selenn
    .turnin 13584 >>Turn in Calming the Earth
    .accept 13585 >>Accept Sworn to Protect
step
    .goto 62/1,192.60001,5918.10010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .target Malfurion Stormrage
    .turnin 13581 >>Turn in The Blackwood Pledge
    .turnin 13583 >>Turn in The Wildkin's Oath
    .turnin 13585 >>Turn in Sworn to Protect
    .accept 13586 >>Accept The Emerald Dream
--
step
#completewith next
    .goto 62,46.620,54.478,25,0
    .goto 62,47.366,55.964,25 >> Head towards the Earthshatter Cavern
    .subzoneskip 4708
step
    .goto 62,49.003,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick the Nightmare Portal and talk to |cRXP_FRIENDLY_Thessera|r
    .target Thessera
    .turnin 13586 >>Turn in The Emerald Dream
    .accept 13587 >>Accept The Waking Nightmare
step
    .goto 62,49.06,55.97,40,0
    .goto 62,50.115,55.431
    >>Kill the |cRXP_ENEMY_Nightmare Guardian|r. Loot it for the |cRXP_LOOT_Emerald Scroll|r
    .complete 13587,1 --|1/1 Emerald Scroll
    .mob Nightmare Guardian
step
    .goto 62,49.210,56.935
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thessera|r
    .target Thessera
    .turnin 13587 >>Turn in The Waking Nightmare
    .accept 13940 >>Accept Leaving the Dream
    .timer 30,Leaving the Dream RP
step
    .goto 62/1,192.60001,5918.10010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .target Malfurion Stormrage
    .turnin 13940 >> Turn in Leaving the Dream
    .accept 13588 >> Accept The Eye of All Storms
step
    .goto 62,43.555,53.701
    >>Talk to |cRXP_FRIENDLY_Thessera|r to take flight, use her first ability to kill |cRXP_ENEMY_Twilight Riders|r and the |cRXP_ENEMY_Twilight Portal|r in the middle
    .complete 13588,1 --|1/1 Twilight Portal slain
    .mob +Twilight Portal
    .complete 13588,2 --|12/12 Twilight Rider slain
    .mob +Twilight Rider
    .target Thessera
step
    .goto 62,43.647,53.432
    >>Use the second ability to land your drake
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .target Malfurion Stormrage
    .turnin 13588 >>Turn in The Eye of All Storms
    .usespell 65579--landing spell, not sure if it works

----
step
    #completewith next
    .hs >> Hearth to Lor'danel
step
#sticky
#label glynda2
    .goto 62,50.649,19.992,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Glynda Nal'Shea|r
    >>|cRXP_FRIENDLY_Ranger Glynda Nal'Shea|r |cRXP_WARN_patrols throughout Lor'danel|r
    .target Ranger Glynda Nal'Shea
    .turnin 13562 >>Turn in The Final Flame of Bashal'Aran
    .accept 13589 >>Accept The Shatterspear Invaders
step
    .goto 62,50.90,18.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serendia Oakwhisper|r |cFFfa9602patrolling up and down the stairs in the Inn.|r
    .turnin 13599 >>Turn in Grimclaw's Return
	.target Serendia Oakwhisper
step
    .goto 62,50.825,17.935
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .target Cerellean Whiteclaw
    .turnin 13563 >>Turn in A Love Eternal
step << skip
#requires glynda2
    .goto 62,50.986,19.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .target Gorbold Steelhand
    .accept 13560 >>Accept An Ocean Not So Deep
step << skip--terrible xp/hr
    .goto 62,52.954,11.045,0
    .goto 62,52.954,11.045,15,0
    >>Click the |cRXP_PICK_Decoy Bot Control Console|r next to Gary
    .target Gary
    >>Use the robot to kill murlocs around the sunken ships nearby
    .complete 13560,1

step << Priest
    .goto 62,50.647,19.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Irlara Morninglight|r
    .trainer >> Train your class spells
    .target Irlara Morninglight
step << Hunter
    .goto 62,50.352,19.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanla Bowleaf|r
    .trainer >> Train your class spells
    .target Lanla Bowleaf
step << Mage
    .goto 62,50.465,19.210
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lareth Beld|r
    .trainer >> Train your class spells
    .target Lareth Beld
step << Warlock
    .goto 62,50.487,19.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laera Dubois|r
    .trainer >> Train your class spells
    .target Laera Dubois
step << Rogue
    .goto 62,50.684,18.509
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kenral Nightwind|r
    .trainer >> Train your class spells
    .target Kenral Nightwind
step << Warrior
    .goto 62,50.831,18.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Moonwing|r
    .trainer >> Train your class spells
    .target Sentinel Moonwing
step << Druid
    .goto 62,50.120,19.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dular|r
    .trainer >> Train your class spells
    .target Dular
step
    #optional
    .maxlevel 18,DarkshoreEnd
step
#requires glynda2
    .goto 62,58.912,19.448
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Morra Starbreeze|r
    .target Lieutenant Morra Starbreeze
    .turnin 13589 >>Turn in The Shatterspear Invaders
step
    .goto 62,58.893,19.411
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .accept 13504 >>Accept Shatterspear Laborers
    .target Sentinel Tysha Moonblade
step
    .goto 62,58.880,19.530
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .accept 13505 >>Accept Remnants of the Highborne
    .target Balthule Shadowstrike
step
    #sticky
    #label overseer
#loop
    .waypoint 62,60.342,17.689,45,0
    .waypoint 62,60.691,13.745,45,0
    .waypoint 62,63.258,15.511,45,0
    .waypoint 62,62.593,19.890,45,0
    .goto 62,61.832,17.573,0,0
    .use 44979>>Kill |cRXP_ENEMY_Shatterspear Overseers|r. Loot them for the |T134939:0|t[|cRXP_LOOT_Overseer's Orders|r]
    >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_LOOT_Overseer's Orders|r] |cRXP_WARN_to start the quest|r
    .unitscan Shatterspear Overseer
    .collect 44979,1,13506
    .accept 13506 >>Accept Reason to Worry

step
#loop
    .goto 62,60.342,17.689,45,0
    .goto 62,60.691,13.745,45,0
    .goto 62,63.258,15.511,45,0
    .goto 62,62.593,19.890,45,0
    .line 62,60.342,17.689,60.691,13.745,63.258,15.511,62.593,19.890,60.342,17.689
    >>Kill |cRXP_ENEMY_Shatterspear Laborers|r
    >>Loot the |cRXP_LOOT_Highborne Relics|r on the ground
    .complete 13504,1 --|10/10 Shatterspear Laborer slain
    .complete 13505,1 --|8/8 Highborne Relic
    .mob Shatterspear Laborer
step
    #requires overseer
    .goto 62,58.880,19.530
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 13505 >>Turn in Remnants of the Highborne
    .target Balthule Shadowstrike
step
    .goto 62,58.893,19.411
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .turnin 13504 >>Turn in Shatterspear Laborers
    .accept 13507 >>Accept Denying Manpower
    .target Sentinel Tysha Moonblade
step
    .goto 62,58.912,19.448
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Morra Starbreeze|r
    .target Lieutenant Morra Starbreeze
    .turnin 13506 >>Turn in Reason to Worry
    .accept 13508 >>Accept Swift Response
    .turnin 13505 >>Turn in Remnants of the Highborne
    .accept 13509 >>Accept War Supplies
step
#completewith escort1a
    .goto 62,62.143,9.604,0
    >>Kill |cRXP_ENEMY_Horde Enforcers|r and |cRXP_ENEMY_Shatterspear Mystics|r
    .use 44999 >> |cRXP_WARN_Use the|r |T135433:0|t[Sentinel Torch] |cRXP_WARN_on the |cRXP_PICK_Shatterspear Armaments|r around the Horde camp|r
    .complete 13507,1 --|6/6 Horde Enforcer slain
    .mob +Horde Enforcer
    .complete 13507,2 --|6/6 Shatterspear Mystic slain
    .mob +Shatterspear Mystic
    .complete 13509,1 --|12/12 Shatterspear Armaments burned
step
    .goto 62,63.757,6.014
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .target Alanndarian Nightsong
    .turnin 13508 >>Turn in Swift Response
    .accept 13511 >>Accept One Bitter Wish
step
    .goto 62,64.122,5.336
    >>Kill |cRXP_ENEMY_Rit'ko|r. Loot him for the |cRXP_LOOT_Shatterspear Torturer's Cage Key|r
    .complete 13511,1 --|1/1 Rit'ko slain
    .collect 45040,1,13510--Key
    .mob Rit'ko
step
    .goto 62,64.500,5.455
    >>Click the |cRXP_PICK_Shatterspear Cage|r
    .target Sentinel Aynasha
    .accept 13510 >>Accept Timely Arrival
step
    #label escort1a
    .goto 62,60.21,6.9
    >>|cRXP_WARN_Escort|r |cRXP_FRIENDLY_Sentinel Aynasha|r
    .complete 13510,1
    .target Sentinel Aynasha
step
#loop
    .goto 62,62.929,8.213,30,0
    .goto 62,61.720,11.021,30,0
    .goto 62,62.143,9.604,0
    >>Kill |cRXP_ENEMY_Horde Enforcers|r and |cRXP_ENEMY_Shatterspear Mystics|r
    .use 44999 >> |cRXP_WARN_Use the|r |T135433:0|t[Sentinel Torch] |cRXP_WARN_on the |cRXP_PICK_Shatterspear Armaments|r around the Horde camp|r
    .complete 13507,1 --|6/6 Horde Enforcer slain
    .mob +Horde Enforcer
    .complete 13507,2 --|6/6 Shatterspear Mystic slain
    .mob +Shatterspear Mystic
    .complete 13509,1 --|12/12 Shatterspear Armaments burned
step
    .goto 62,58.893,19.411
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .turnin 13507 >>Turn in Denying Manpower
    .target Sentinel Tysha Moonblade
step
    .goto 62,58.912,19.448
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Morra Starbreeze|r
    .target Lieutenant Morra Starbreeze
    .turnin 13509 >>Turn in War Supplies
    .turnin 13510 >>Turn in Timely Arrival
    .turnin 13511 >>Turn in One Bitter Wish
    .accept 13512 >>Accept Strategic Strikes
step
    .goto 62,58.880,19.530
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .accept 13513 >>Accept On the Brink
    .target Balthule Shadowstrike
step
    .goto 62,59.154,19.624
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathas Wildwood|r
    .target Mathas Wildwood
    .accept 13844 >>Accept The Looting of Althalaxx
step
#sticky
#label sheya
    .goto 62,61.233,20.367
    .use 44995 >> |cRXP_WARN_Use the|r |T136021:0|t[Dryad Spear] |cRXP_WARN_to kill|r |cRXP_ENEMY_Sheya Stormweaver|r
    .complete 13512,2 --|1/1 Sheya Stormweaver slain
    .mob Sheya Stormweaver
step
#sticky
#loop
#label shamans
    .waypoint 62,61.233,20.367,20,0
    .waypoint 62,56.801,25.781,20,0
    .waypoint 62,61.233,20.367,0
    .waypoint 62,56.801,25.781,0
    >>Kill |cRXP_ENEMY_Shatterspear Shamans|r. Loot them for their |cRXP_LOOT_Shatterspear Amulets|r
    .complete 13513,1 --|6/6 Shatterspear Amulet
    .mob Shatterspear Shaman
step
#requires sheya
    .goto 62,58.242,23.971
    >>Kill |cRXP_ENEMY_Teegan Holloway|r atop the tower
    >>Loot |cRXP_LOOT_Narassin's Tome|r located on the middle level of the tower
    .complete 13844,1 --|1/1 Teegan Holloway slain
    .complete 13844,2 --|1/1 Narassin's Tome
    .mob Teegan Holloway
step
    .goto 62,56.801,25.781
    .use 44995 >> |cRXP_WARN_Use the|r |T136021:0|t[Dryad Spear] |cRXP_WARN_to kill|r |cRXP_ENEMY_Lorenth Thundercall|r
    .complete 13512,1 --|1/1 Lorenth Thundercall slain
    .mob Lorenth Thundercall
step--TODO: Fix this bit
#requires shamans
    .goto 1439/1,-804.20001,7376.39990
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathas Wildwood|r
    .target Mathas Wildwood
    .turnin 13844 >>Turn in The Looting of Althalaxx
step
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .goto 1439/1,-791.50000,7381.60010
    .turnin 13513 >>Turn in On the Brink
    .target Balthule Shadowstrike
step
    .goto 1439/1,-792.79999,7384.80029
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Morra Starbreeze|r
    .turnin 13512 >>Turn in Strategic Strikes
    .accept 13590 >>Accept The Front Line
    .target Lieutenant Morra Starbreeze
step
    .goto 1439/1,-1450.59998,7392.20020
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kerlonian Evershade|r
    .accept 13514 >>Accept The Ancients' Ire
    .target Kerlonian Evershade
step
#completewith next
    .goto 62,69.435,19.546
    .vehicle >> |cRXP_WARN_Mount the|r |cRXP_FRIENDLY_Vengeful Protector|r
    .target Vengeful Protector
step
    .goto 62,70.684,20.841,0
    .goto 62,70.589,16.872,0
    .goto 62,70.684,20.841,50,0
    .goto 62,70.589,16.872,50,0
    >>|cRXP_WARN_Cast|r |T136025:0|t[Shockwave] (1) |cRXP_WARN_to kill|r |cRXP_ENEMY_Shatterspear Trolls|r
    >>|cRXP_WARN_Cast|r |T135734:0|t[Moonsurge] (2) |cRXP_WARN_to burn Shatterspear buildings|r
    .complete 13514,1 --|30/30 Shatterspear Vale Trolls killed
    .mob +Shatterspear Champion
    .mob +Shatterspear Priestess
    .mob +Shatterspear Raider
    .complete 13514,2 --|6/6 Shatterspear Structures destroyed
step
    .isOnQuest 13514
    .exitvehicle >> |cRXP_WARN_Exit the|r |cRXP_FRIENDLY_Vengeful Protector|r
step
    .goto 62,72.263,19.096
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Sandrya Moonfall|r
    .target Huntress Sandrya Moonfall
    .turnin 13590 >>Turn in The Front Line
    .accept 13515 >>Accept Ending the Threat
step
    .isOnQuest 13515
    .goto 62,72.263,19.096
    .gossip 33178,0 >> Talk to |cRXP_FRIENDLY_Huntress Sandrya Moonfall|r to begin the assault
    .skipgossip 33178,1
    .target Huntress Sandrya Moonfall
step
    .goto 62,72.857,18.019
    >>Kill |cRXP_ENEMY_Jor'kil the Soulripper|r. Loot him for |T133466:0|t[|cRXP_LOOT_Hellscream's Missive|r]
    .use 46318 >>|cRXP_WARN_Use|r |T133466:0|t[|cRXP_LOOT_Hellscream's Missive|r] |cRXP_WARN_to start the quest|r
    .complete 13515,1 --|1/1 Jor'kil the Soulripper slain
    .collect 46318,1,13591
    .accept 13591 >>Accept Disturbing Connections
    .mob Jor'kil the Soulripper
step
    .goto 62,72.251,19.095
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntress Sandrya Moonfall|r
    .target Huntress Sandrya Moonfall
    .turnin 13515 >>Turn in Ending the Threat
--TODO: Test Logout skip
step
    .goto 62,69.109,19.249
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kerlonian Evershade|r
    .target Kerlonian Evershade
    .turnin 13514 >>Turn in The Ancients' Ire
step
    #completewith next
    .hs >> Hearth to Lor'danel
step << skip
    .goto 62,51.004,19.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .target Gorbold Steelhand
    .turnin 13560 >>Turn in An Ocean Not So Deep
step
    .goto 62,50.684,19.712
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Glynda Nal'Shea|r, she patrols the area around the moonwell.
    .target Ranger Glynda Nal'Shea
    .turnin 13591 >>Turn in Disturbing Connections
step
    .goto 62,50.129,19.461
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .target Cerellean Whiteclaw
    .accept 13570 >>Accept Remembrance of Auberdine
    .turnin 13570 >>Turn in Remembrance of Auberdine
step << Priest
    .goto 62,50.647,19.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Irlara Morninglight|r
    .trainer >> Train your class spells
    .target Irlara Morninglight
step << Hunter
    .goto 62,50.352,19.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanla Bowleaf|r
    .trainer >> Train your class spells
    .target Lanla Bowleaf
step << Mage
    .goto 62,50.465,19.210
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lareth Beld|r
    .trainer >> Train your class spells
    .target Lareth Beld
step << Warlock
    .goto 62,50.487,19.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laera Dubois|r
    .trainer >> Train your class spells
    .target Laera Dubois
step << Rogue
    .goto 62,50.684,18.509
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kenral Nightwind|r
    .trainer >> Train your class spells
    .target Kenral Nightwind
step << Warrior
    .goto 62,50.831,18.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Moonwing|r
    .trainer >> Train your class spells
    .target Sentinel Moonwing
step << Druid
    .goto 62,50.120,19.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dular|r
    .trainer >> Train your class spells
    .target Dular
step
    #optional
    #label DarkshoreEnd

--NORTHERN DARKSHORE END
step
#questguide
#completewith next
    .goto 62,51.724,17.651
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teldira Moonfeather|r
    .target Teldira Moonfeather
    .fly Grove of the Ancients >>Fly to Grove of the Ancients
step
#questguide
    .goto 62,45.141,75.174
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foriel Broadleaf|r
    .target Foriel Broadleaf
    .accept 13525 >>Accept What's Happening to the Blackwood Furbolg?
step
#questguide
    .goto 62,45.311,75.131
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balren of the Claw|r
    .target Balren of the Claw
    .turnin -13902 >>Turn in Mounting the Offensive
    .accept 13892 >>Accept Leave No Tracks
step
#questguide
    .goto 62,45.198,74.627
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kathrena Winterwisp|r
    .target Kathrena Winterwisp
    .accept 13881 >>Accept Consumed
step
#questguide
#completewith furbolgs
    >>Kill |cRXP_ENEMY_Consumed Thistle Bears|r
    .complete 13881,1
    .mob Consumed Thistle Bear
step
#questguide
    .goto 62,45.031,79.192
    >>|cRXP_WARN_Swim to the |cRXP_PICK_Devouring Artifact|r underwater|r
    .complete 13881,2 --|Watering Hole Investigated
step
#questguide
    .goto 62,43.524,80.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Brolg|r
    .target Elder Brolg
    .turnin 13525 >>Turn in What's Happening to the Blackwood Furbolg?
    .accept 13526 >>Accept The Bear's Paw
step
#questguide
#loop
#label furbolgs
    .goto 62,44.749,82.357,40,0
    .goto 62,45.929,83.041,40,0
    .goto 62,45.275,85.286,40,0
    .goto 62,44.143,81.923,40,0
    .goto 62,44.828,83.242,0
    >>Loot the |cRXP_LOOT_Bear's Paws|r on the ground
    >>|cRXP_WARN_They look like small plants|r
    .complete 13526,1 --|8/8 Bear's Paw
step
#questguide
    .goto 62,40.634,84.297
    .subzone 449 >> Travel to The Master's Glaive
    .isOnQuest 13892
step
#questguide
    #completewith next
    .cast 65426 >> |cRXP_WARN_Use the|r |T133236:0|t[Panther Figurine] |cRXP_WARN_to transform into a Panther|r
    .use 46696
step
#questguide
    .goto 62,40.634,84.297
    >>|cRXP_WARN_Head to |cRXP_ENEMY_Foreman Balsoth|r and wait for the RP to complete|r
    >>|cRXP_WARN_Note if you take fall damage you will lose the Panther buff|r
    .complete 13892,1 --|1/1 Twilight's Hammer surveillance
    .target Foreman Balsoth
    .use 46696
step
#questguide
    .goto 62,45.311,75.131
    >>Click on the quest popup under your minimap to turn in the quest
    >>|cRXP_WARN_If you cannot do this head back and talk to|r |cRXP_FRIENDLY_Balren of the Claw|r
    .turnin 13892 >>Turn in Leave No Tracks
    .accept 13948 >>Accept Stepping Up Surveillance
    .target Balren of the Claw
step
#questguide
    .goto 62,39.658,86.384,10,0
    .goto 62,41.056,86.360,10,0
    .goto 62,40.733,85.046,10,0
    .goto 62,39.809,85.356,10,0
    .goto 62,40.101,84.651
    .use 46696 >> |cRXP_WARN_Use the|r |T133236:0|t[Panther Figurine] |cRXP_WARN_to transform into a Panther again|r
    >>|cRXP_WARN_Sneak up to|r |cRXP_ENEMY_Doomspeaker Trevellion|r |cRXP_WARN_all the way up the scaffolding. Wait out the RP again|r
    >>|cRXP_WARN_Avoid |cRXP_ENEMY_Faceless Ones|r as they have stealth detection|r
    .target Doomspeaker Trevellion
    .complete 13948,1
step
#questguide
    .goto 62,43.535,81.019
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Brolg|r
    .target Elder Brolg
    .turnin 13526 >>Turn in The Bear's Paw
    .accept 13544 >>Accept The Bear's Blessing
step
#questguide
#sticky
#label fleetfoot
    .goto 62,45.103,78.471
    >>Kill |cRXP_ENEMY_Fleetfoot|r. Loot it for its |cRXP_LOOT_Tailfeathers|r
    .collect 44886,1,13544,1
    .mob Fleetfoot
step
#questguide
#loop
    .goto 62,45.945,78.353,0
    .goto 62,42.014,76.593,0
    .goto 62,45.945,78.353,40,0
    .goto 62,42.014,76.593,40,0
    >>Kill |cRXP_ENEMY_Consumed Thistle Bears|r
    .complete 13881,1
    .mob Consumed Thistle Bear
step
#questguide
#requires fleetfoot
    .goto 62,45.300,76.734
    .use 44888 >> |cRXP_WARN_Use the|r |T134189:0|t[Bear's Paw Bundle] |cRXP_WARN_next to the|r |cRXP_PICK_Ancient Bear Statue|r
    .complete 13544,1
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balren of the Claw|r and |cRXP_FRIENDLY_Larien|r
    .turnin 13948 >>Turn in Stepping Up Surveillance
    .target +Balren of the Claw
    .goto 62,45.284,75.170
    .accept 13896 >>Accept Unearthed Knowledge
    .target +Larien
    .goto 62,45.324,75.050
step
#questguide
    .goto 62,45.194,74.629
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kathrena Winterwisp|r
    .target Kathrena Winterwisp
    .turnin 13881 >>Turn in Consumed
    .accept 13882 >>Accept The Seeds of Life
step
#questguide
    .goto 62,45.405,74.859
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r to receive the |cRXP_LOOT_Seed of the Earth|r
    .complete 13882,1
    .skipgossip
    .target Onu
step
#questguide
    #sticky
    #label skyseed
    #loop
    .goto 62,41.860,77.050,0
    .goto 62,44.292,78.937,0
    .goto 62,40.902,79.825,0
    .waypoint 62,41.860,77.050,40,0
    .waypoint 62,44.292,78.937,40,0
    .waypoint 62,40.902,79.825,40,0
    >>|cRXP_WARN_Look for the |cRXP_FRIENDLY_Darkshore Wisps|r flying around. Click on them once they approach the ground|r
    .unitscan Darkshore Wisp
    .complete 13882,3
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Brolg|r and |cRXP_FRIENDLY_Gren Tornfur|r
    .turnin 13544 >>Turn in The Bear's Blessing
    .accept 13545 >>Accept Cleansing the Afflicted
    .target +Elder Brolg
    .goto 62,43.515,81.018
    .accept 13572 >>Accept Jadefire Braziers
    .target +Gren Tornfur
    .goto 62,43.576,81.023
step
#questguide
    #loop
    #sticky
    #label braziers
    .goto 62,44.749,82.357,40,0
    .goto 62,45.929,83.041,40,0
    .goto 62,45.275,85.286,40,0
    .goto 62,44.143,81.923,40,0
    .goto 62,44.828,83.242,0
    >>Click the |cRXP_PICK_Jadefire Braziers|r scattered around the camp
    .complete 13572,1 --|8/8 Jadefire Brazier
step
#questguide
#loop
    .goto 62,44.749,82.357,40,0
    .goto 62,45.929,83.041,40,0
    .goto 62,45.275,85.286,40,0
    .goto 62,44.143,81.923,40,0
    .goto 62,44.828,83.242,0
    .use 44889>>|cRXP_WARN_Use the|r |T237425:0|t[Blessed Herb Bundle] |cRXP_WARN_on a |cRXP_ENEMY_Blackwood Furbolg|r, then kill the|r |cRXP_ENEMY_Spirit of Corruption|r |cRXP_WARN_that spawns|r
    .complete 13545,1
    .mob Spirit of Corruption
    .target Maddened Blackwood
    .target Corrupted Blackwood
step
#questguide
#requires braziers
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gren Tornfur|r and |cRXP_FRIENDLY_Elder Brolg|r
    .turnin 13572 >>Turn in Jadefire Braziers
    .target +Gren Tornfur
    .goto 62,43.576,81.023
    .turnin 13545 >>Turn in Cleansing the Afflicted
    .accept 13546 >>Accept The Defiler
    .target +Elder Brolg
    .goto 62,43.515,81.018
step
#questguide
    .goto 62,46.754,84.038
    >>Kill |cRXP_ENEMY_Sharax the Defiler|r
    .complete 13546,1 --|1/1 Sharax the Defiler slain
    .mob Sharax the Defiler
step
#questguide
    .goto 62,43.526,80.990
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Brolg|r
    .target Elder Brolg
    .turnin 13546 >>Turn in The Defiler
step
#questguide
#loop
    .goto 62,38.060,79.195,0
    .goto 62,38.645,78.225,0
    .goto 62,37.263,76.834,0
    .goto 62,37.999,74.396,0
    .goto 62,38.060,79.195,20,0
    .goto 62,38.645,78.225,20,0
    .goto 62,37.263,76.834,20,0
    .goto 62,37.999,74.396,20,0
    >>Open the |cRXP_PICK_Glittering Shells|r on the ground . Loot them for the |cRXP_LOOT_Seed of the Sea|r
    .complete 13882,2 --|1/1 Seed of the Sea
step
#questguide
#requires skyseed
    .goto 62,37.626,82.824
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Groff|r
    .target Archaeologist Groff
    .turnin 13896 >>Turn in Unearthed Knowledge
    .accept 13893 >>Accept Soggoth and Kronn
    .accept 13907 >>Accept Sweeping Clean the Ruins
step
#questguide
    .goto 62,37.747,82.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jr. Archaeologist Ferd|r
    .target Jr. Archaeologist Ferd
    .accept 13912 >>Accept Swamped Secrets
step
#questguide
    .goto 62,37.695,82.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Remtravel|r
    .target Prospector Remtravel
    .accept 13911 >>Accept The Absent-Minded Prospector
    >>|cRXP_WARN_This will start an escort quest|r
step
#questguide
    #completewith prospector
    #optional
    >>Kill |cRXP_ENEMY_Greymist Refugees|r and |cRXP_ENEMY_Greymist Oracle|r
    .complete 13907,1
    .mob Greymist Refugee
    .mob Greymist Oracle
step
#questguide
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_Prospector Remtravel|r through the Excavation site|r
    .complete 13911,1
    .target Prospector Remtravel
step
#questguide
    .goto 62,37.747,82.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jr. Archaeologist Ferd|r
    .target Jr. Archaeologist Ferd
    .turnin 13911 >>Turn in The Absent-Minded Prospector
step
#questguide
#label prospector
    .goto 62,37.023,83.441
    >>Click the |cRXP_PICK_Mud-Crusted Ancient Disc|r underwater
    .complete 13912,1 --|1/1 Mud-Crusted Ancient Disc
step
#questguide
#loop
    .goto 62,36.355,83.599,20,0
    .goto 62,37.393,82.425,20,0
    .goto 62,36.572,84.501,20,0
    .goto 62,37.669,84.418,0
    >>Kill |cRXP_ENEMY_Greymist Refugees|r and |cRXP_ENEMY_Greymist Oracle|r
    .complete 13907,1
    .mob Greymist Refugee
    .mob Greymist Oracle
step
#questguide
    .goto 62,37.626,82.824
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Groff|r
    .target Archaeologist Groff
    .turnin 13907 >>Turn in Sweeping Clean the Ruins
    .accept 13909 >>Accept Got Some Flotsam?
step
#questguide
    .goto 62,37.747,82.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jr. Archaeologist Ferd|r
    .target Jr. Archaeologist Ferd
    .turnin 13912 >>Turn in Swamped Secrets
    .accept 13918 >>Accept The Titans' Terminal
step
#questguide
#completewith next
    >>Loot |cRXP_PICK_Floating Greymist Debris|r along the coast
    .complete 13909,1
step
#questguide
#loop
    .goto 62,38.407,78.988,0
    .goto 62,36.452,81.574,0
    .goto 62,36.126,84.743,0
    .goto 62,37.149,86.795,0
    .goto 62,38.407,78.988,40,0
    .goto 62,36.452,81.574,40,0
    .goto 62,36.126,84.743,40,0
    .goto 62,37.149,86.795,40,0
    .use 46388 >>|cRXP_WARN_Use the|r |T134519:0|t[Buried Artifact Detector] |cRXP_WARN_to reveal the |cRXP_PICK_Buried Debris|r along the coast. Loot them for the|r |cRXP_LOOT_Ancient Device Fragments|r
    .collect 46702,5,13918,1
    .isOnQuest 13918
step
#questguide
#loop
    .goto 62,38.407,78.988,0
    .goto 62,36.452,81.574,0
    .goto 62,36.126,84.743,0
    .goto 62,37.149,86.795,0
    .goto 62,38.407,78.988,40,0
    .goto 62,36.452,81.574,40,0
    .goto 62,36.126,84.743,40,0
    .goto 62,37.149,86.795,40,0
    >>Loot |cRXP_PICK_Floating Greymist Debris|r along the coast
    .complete 13909,1
step
#questguide
    .use 46702 >> |cRXP_WARN_Use the|r |T132997:0|t[Ancient Device Fragments] |cRXP_WARN_to combine them into the|r |cRXP_LOOT_Ancient Slotted Device|r
    .complete 13918,1
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Groff|r and |cRXP_FRIENDLY_Jr. Archaeologist Ferd|r
    .turnin 13909 >>Turn in Got Some Flotsam?
    .accept 13910 >>Accept A New Home
    .target +Archaeologist Groff
    .goto 62,37.645,82.832
    .turnin 13918 >>Turn in The Titans' Terminal
    .target +Jr. Archaeologist Ferd
    .goto 62,37.747,82.932
step
#questguide
    .goto 62,35.905,81.942
    .use 46385 >> |cRXP_WARN_Use the|r |T132281:0|t[Marvelous Mobile Murloc Manor Maker] |cRXP_WARN_next to the|r |cRXP_PICK_Greymist Murloc Build Site|r
    .complete 13910,1 --|1/1 Greymist Murloc Home Built
step
#questguide
    .goto 62,37.643,82.805
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Groff|r
    .target Archaeologist Groff
    .turnin 13910 >>Turn in A New Home
step
#questguide
    .goto 62,45.310,75.054
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larien|r
    .target Larien
    .turnin 13893 >>Turn in Soggoth and Kronn
step
#questguide
    .goto 62,45.210,74.633
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kathrena Winterwisp|r
    .target Kathrena Winterwisp
    .turnin 13882 >>Turn in The Seeds of Life
    .accept 13925 >>Accept An Ounce of Prevention
step
#questguide
    .goto 62,45.405,74.864
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    .target Onu
    .accept 13895 >>Accept The Slumbering Ancients
step
#questguide
    .goto 62,45.683,71.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aros|r
    .target Aros
    .turnin 13895 >>Turn in The Slumbering Ancients
step
#questguide
    .goto 62,45.568,71.637
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkscale Assassin|r
    .target Darkscale Assassin
    .accept 13953 >>Accept Naga In Our Midst
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balren of the Claw|r and |cRXP_FRIENDLY_Felros|r
    .turnin 13953 >>Turn in Naga In Our Midst
    .accept 13899 >>Accept The Darkscale Warlord
    .target +Balren of the Claw
    .goto 62,45.303,75.129
    .accept 13898 >>Accept The Tides Turn Against Us
    .target +Felros
    .goto 62,45.352,75.115
step
#questguide
#loop
    .goto 62,41.893,75.131,0
    .goto 62,40.264,73.207,0
    .goto 62,41.893,75.131,30,0
    .goto 62,40.264,73.207,30,0
    .use 46363 >>|cRXP_WARN_Use the|r |T133749:0|t[Lifebringer Sapling] |cRXP_WARN_on a |cRXP_ENEMY_Whitetail Stag|r, |cRXP_ENEMY_Grizzled Thistle Bear|r, |cRXP_ENEMY_Moonstalker Matriarch|r or|r |cRXP_ENEMY_Moonstalker Sire|r
    .complete 13925,1 --|1/1 Lifebringer Sapling Tested
    .target Whitetail Stag
    .target Grizzled Thistle Bear
    .target Moonstalker Matriarch
    .target Moonstalker Sire
step
#questguide
    .goto 62,45.197,74.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kathrena Winterwisp|r
    .target Kathrena Winterwisp
    .turnin 13925 >>Turn in An Ounce of Prevention
    .accept 13885 >>Accept In Defense of Darkshore
step
#questguide
#completewith next
    .goto 62,44.474,75.350
    .vehicle >> |cRXP_WARN_Talk to |cRXP_FRIENDLY_Orseus|r to mount a|r |cRXP_FRIENDLY_Hippogryph|r
    .skipgossip
step
#questguide
    >>|cRXP_WARN_Cast|r |T136065:0|t[Protect Wildlife] (1) |cRXP_WARN_on |cRXP_ENEMY_Grizzled Thistle Bears|r, |cRXP_ENEMY_Moonstalkers|r and|r |cRXP_ENEMY_Whitetail Deer|r
    .complete 13885,1 -- Grizzled Thistle Bear Protected (8)
    .target +Grizzled Thistle Bear
    .complete 13885,2 -- Moonstalker Protected (8)
    .target +Moonstalker
    .complete 13885,3 -- Whitetail Deer Protected (8)
    .target +Whitetail Deer
step
#questguide
    .goto 62,45.198,74.627
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kathrena Winterwisp|r
    .target Kathrena Winterwisp
    .turnin 13885 >>Turn in In Defense of Darkshore
    .accept 13891 >>Accept The Devourer of Darkshore
step
#questguide
    #completewith next
    .goto 62,45.031,79.192
    .cast 65207 >> |cRXP_WARN_Use the|r |T133749:0|t[Lifebringer Sapling] |cRXP_WARN_at the |cRXP_PICK_Devouring Artifact|r underwater to summon|r |cRXP_ENEMY_Yoth'al the Devourer|r
    .timer 10,The Devourer of Darkshore RP
    .use 46370
step
#questguide
    .goto 62,45.031,79.192
    .use 46370 >> Kill |cRXP_ENEMY_Yoth'al the Devourer|r
    .complete 13891,1
    .mob Yoth'al the Devourer
step
#questguide
    #completewith AzsharaOffering
    >>Kill |cRXP_ENEMY_Darkscale Myrmidons|r
    .complete 13898,1 --|8/8 Darkscale Myrmidon slain
    .mob Darkscale Myrmidon
step
#questguide
    .goto 62,33.43,83.65,50,0
    .goto 62,33.040,83.773,15,0
    .goto 62,32.269,84.069,15,0
    .goto 62,32.263,85.379
    >>Kill |cRXP_ENEMY_Warlord Wrathspine|r
    >>Click |cRXP_FRIENDLY_Warlord Wrathspines|r corpse after
    .mob Warlord Wrathspine
    .turnin 13899 >>Turn in The Darkscale Warlord
    .accept 13900 >>Accept The Offering to Azshara
step
#questguide
    #label AzsharaOffering
    .goto 62,32.874,84.131
    >>|cRXP_WARN_Exit the cave and head to the terrace above the entrance|r
    >>Kill the |cRXP_ENEMY_Darkscale Priestesses|r
    .complete 13900,1 --|1/1 Offering to Azshara prevented
    .timer 64,The Offering to Azshara RP
    .mob Darkscale Priestess
step
#questguide
#completewith next
    +|cRXP_WARN_Wait out the RP with |cRXP_ENEMY_Queen Azshara|r and wait for |cRXP_FRIENDLY_Malfurion Stormrage|r to arrive|r
step
#questguide
    .goto 62,32.796,84.294
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .turnin 13900 >>Turn in The Offering to Azshara
    .accept 13897 >> Accept The Battle for Darkshore
    .target Malfurion Stormrage
step
#questguide
    .goto 62,32.874,84.131
    >>Kill |cRXP_ENEMY_Darkscale Myrmidons|r
    .complete 13898,1 --|8/8 Darkscale Myrmidon slain
    .mob Darkscale Myrmidon
step
#questguide
#completewith next
    .cast 80230 >>|cRXP_WARN_Travel to the The Master's Glaive and use the|r |T237377:0|t[Horn of the Ancients]
    .use 58365
step
#questguide
    .goto 62,40.552,83.946
    .use 58365 >>Kill the |cRXP_ENEMY_Avatar of Soggoth|r
    .mob Avatar of Soggoth
    .complete 13897,1 --|1/1 Avatar of Soggoth slain
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balren of the Claw|r
    .turnin 13897 >>Turn in The Battle for Darkshore
    --.accept 26408 >> Accept Ashes in Ashenvale
    .target Balren of the Claw
    .goto 62,45.305,75.134
step
#questguide
    .goto 62,45.352,75.115
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felros|r
    .turnin 13898 >>Turn in The Tides Turn Against Us
    .target Felros
step
#questguide
    .goto 62,45.198,74.627
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kathrena Winterwisp|r
    .target Kathrena Winterwisp
    .turnin 13891 >>Turn in The Devourer of Darkshore
step
#questguide
    #completewith next
    .hs >> Hearth to Lor'danel
]])
