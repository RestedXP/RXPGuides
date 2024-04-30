local _,addon = ...
if addon.game ~= "CATA" or addon.player.faction ~= 'Alliance' then return end


RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclysm 1-80 (A)
#cata
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
    .goto 62,50.92,18.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyrisse.|r
    .vendor 43439 >> |cRXP_WARN_Vendor and Repair.|r
	.target Nyrisse
step
    .goto 62,50.22,19.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Glynda Nal'Shea.|r
    .accept 13522 >>Accept Threat from the Water
	.target Ranger Glynda Nal'Shea
step
    #completewith finalrescue
    >>Kill |cRXP_ENEMY_Vile Spray.|r
    .complete 13522,1 --8/8 Vile Spray slain
	.mob Vile Spray
step
    .goto 62,45.02,18.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Volcor.|r
    .complete 13518,4 --1/1 Volcor rescued
	.target Volcor
step
    .goto 62,44.11,17.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gershala.|r
    .complete 13518,2 --1/1 Gershala Nightwhisper rescued
	.target Gershala Nightwhisper
step
    .goto 62,44.58,19.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whiteclaw.|r
    .complete 13518,1 --1/1 Cerellean Whiteclaw rescued
	.target Cerellean Whiteclaw
step
	#label finalrescue
    .goto 62,42.91,21.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaldyn.|r
    .complete 13518,3 --1/1 Shaldyn rescued
	.target Shaldyn
step
    .goto 62,46.22,17.15,40,0
    .goto 62,44.85,17.07
    .goto 62,44.06,20.31
    .goto 62,42.91,21.51
    .goto 62,46.22,17.15
    >>Kill |cRXP_ENEMY_Vile Spray.|r
    .complete 13522,1 --8/8 Vile Spray slain
	.target Vile Spray
step
    .goto 62,50.21,19.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Glynda Nal'Shea.|r
    .turnin 13522 >>Turn in Threat from the Water
	.target Ranger Glynda Nal'Shea
step
    .goto 62,51.78,17.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dentaria Silverglade.|r
    .turnin 13518 >>Turn in The Last Wave of Survivors
	.target Dentaria Silverglade
step
    .goto 62,51.8,18.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serendia Oakwhisper|r |cFFfa9602patrolling up and down the stairs in the Inn.|r
    .accept 13520 >>Accept The Boon of the Seas
	.target Serendia Oakwhisper
step
    .goto 62,50.934,18.614
    .home >>Set your Hearthstone to Lor'danel
step
    .goto 62,51.14,19.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizbang Cranktoggle.|r
    .accept 13521 >>Accept Buzzbox 413
	.target Wizbang Cranktoggle
step
    #completewith next
    >>Kill |cRXP_ENEMY_Corrupted Tide Crawlers|r and loot them for their |cRXP_LOOT_Corrupted Tide Crawler Flesh.|r
    .complete 13521,1 --4/4 Corrupted Tide Crawler Flesh
	.mob Corrupted Tide Crawler
step
    .goto 62,52.41,19.60,20,0
    .goto 62,52.50,16.62,20,0
    .goto 62,52.57,17.53,20,0
    .goto 62,53.18,18.53,20,0
    .goto 62,52.41,19.60
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Encrusted Clams|r underwater.
    .complete 13520,1 --16/16 Encrusted Clam Muscle
step
    .goto 62,52.41,19.60,20,0
    .goto 62,52.50,16.62,20,0
    .goto 62,52.57,17.53,20,0
    .goto 62,53.18,18.53,20,0
    .goto 62,52.41,19.60
    >>Kill |cRXP_ENEMY_Corrupted Tide Crawlers|r and loot them for their |cRXP_LOOT_Corrupted Tide Crawler Flesh.|r
    .complete 13521,1 --4/4 Corrupted Tide Crawler Flesh
	.mob Corrupted Tide Crawler
step
    .goto 62,53.24,19.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Buzzbox 413.|r
    .turnin 13521 >>Turn in Buzzbox 413
    .accept 13527 >>Accept No Accounting for Taste
step
    .goto 62,55.1,21.0
    >>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_ENEMY_Decomposing Thistle Bear.|r
    .complete 13527,1 --1/1 Foul Bear Carcass Sample
	.target Decomposing Thistle Bear
step
    .goto 62,51.17,19.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizbang Cranktoggle.|r
    .turnin 13527 >>Turn in No Accounting for Taste
    .accept 13528 >>Accept Buzzbox 723
	.target Wizbang Cranktoggle
step
    .goto 62,52.96,25.46,40,0
    .goto 62,54.02,25.28,40,0
    .goto 62,55.73,23.95,40,0
    .goto 62,54.87,27.67,40,0
    .goto 62,52.96,25.46
    >>Kill |cRXP_ENEMY_Bears|r and loot them for their |cRXP_LOOT_Corrupted Thistle Bear Guts.|r
    .complete 13528,1 --6/6 Corrupted Thistle Bear Guts
	.mob Corrupted Thistle Bear
	.mob Corrupted Thistle Bear Matriarch
	.mob Thistle Bear Cub
step
    .goto 62,54.17,29.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Buzzbox 723.|r
    .turnin 13528 >>Turn in Buzzbox 723
    .accept 13554 >>Accept A Cure In The Dark
step
    #label itall
    .goto 62,56.26,27.41,40,0
    .goto 62,56.78,30.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun.|r
    .accept 13529 >>Accept The Corruption's Source
	.target Tharnariun
step
    #completewith next
	>>Kill |cRXP_ENEMY_Vile Grells|r and |cRXP_ENEMY_Vile Corrupters|r and loot them for |cRXP_LOOT_Foul Ichor|r and the |cRXP_LOOT_Corruptor's Master Key.|r
	>>|cRXP_WARN_Check for |cRXP_ENEMY_Licillin(Rare|r) as you quest.|r
    .complete 13554,1 --6/6 Foul Ichor
    .complete 13529,2 --8/8 Vile Grell slain
	.collect 44927,1,13557
	>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Corruptor's Master Key.|r
    .accept 13557 >>Accept Bearer of Good Fortune
    .use 44927
	.mob Vile Grell
	.mob Vile Corruptor
	.unitscan Licillin
step
    .goto 62,57.51,32.31,15,0
    .goto 62,58.58,32.24,15,0
    .goto 62,58.13,32.84,15,0
    .goto 62,57.34,33.00,15,0
    .goto 62,57.17,32.12,15,0
    .goto 62,56.97,32.66,15,0
    .goto 62,56.58,33.64,15,0
    .goto 62,57.10,34.18
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Cages|r |cFFfa9602throughout the Cave.|r
	.complete 13557,1
step
    .goto 62,58.41,33.08
    >>Go down into the bottom level of the cave and kill |cRXP_ENEMY_Zenn|r
    >>|cRXP_WARN_Check for a chest next to him. It may not be there.|r
    .complete 13529,1 --1/1 Zenn Foulhoof slain
	.mob Zenn Foulhoof
step
    .goto 62,56.79,33.52,20,0
    .goto 62,57.43,33.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick on the |cRXP_PICK_Disgusting Workbench|r at the back of the cave.
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
    >>Kill |cRXP_ENEMY_Vile Grells|r and |cRXP_ENEMY_Vile Corrupters|r and loot them for |cRXP_LOOT_Foul Ichor|r and the |cRXP_LOOT_Corruptor's Master Key.|r
    >>|cRXP_WARN_Check for |cRXP_ENEMY_Licillin(Rare|r) as you quest.|r
    .complete 13554,1 --6/6 Foul Ichor
    .complete 13529,2 --8/8 Vile Grell slain
	.collect 44927,1,13557
	>>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Corruptor's Master Key.|r
    .accept 13557 >>Accept Bearer of Good Fortune
	.mob Vile Grell
	.mob Vile Corrup
	.unitscan Licillin
    .use 44927
step
    #completewith next
    .hs >> Hearth to Lor'Danel
    --TODO: Check if logout skips work on the beta, might not need to hs
step
    .goto 62,51.13,19.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender.|r
    .turnin 13557 >>Turn in A Troubling Prescription
    .turnin 13831 >>Turn in A Troubling Prescription
    .turnin 13529 >>Turn in The Corruption's Source
	.target Tharnariun Treetender
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizbang.|r
    .turnin 13554 >>Turn in A Cure In The Dark
	.target Wizbang
step
    #sticky
    #label boon1
    .goto 62,50.90,18.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Serendia Oakwhisper|r |cFFfa9602patrolling up and down the stairs in the Inn.|r
    .turnin 13520 >>Turn in The Boon of the Seas
	.target Serendia Oakwhisper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Volcor|r 
    .target Volcor
    .accept 13564 >>Accept A Lost Companion
    .goto 62,50.887,17.995
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r 
    .target Cerellean Whiteclaw
    .accept 13563 >>Accept A Love Eternal
    .goto 62,50.881,17.961
step
#requires boon1
    .goto 62,50.649,19.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Glynda Nal'Shea|r, she patrols the area around the moonwell.
    .target Ranger Glynda Nal'Shea
    .accept 13562 >>Accept The Final Flame of Bashal'Aran
step
    .goto 62,46.807,33.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arya Autumnlight|r 
    .target Arya Autumnlight
    .accept 13561 >>Accept Solace for the Highborne
step
    .goto 62,45.958,34.240
    >>Click on the |cRXP_PICK_Brazier|r inside the gazebo.
    .complete 13562,1
step
#sticky
#label pendant1
    .goto 62,48.482,36.634
    >>Kill |cRXP_ENEMY_Anaya Dawnrunner|r. Loot her for |cRXP_LOOT_Anaya's Pendant|r
    .complete 13563,1 --|1/1 Anaya Dawnrunner slain
    .complete 13563,2 --|1/1 Anaya's Pendant
    .unitscan Anaya Dawnrunner
step
    .goto 62,47.180,35.201
    >>Kill |cRXP_ENEMY_Cursed Highbornes|r and |cRXP_ENEMY_Writhing Highbornes|r
    .complete 13561,1 --|6/6 Cursed Highborne slain
    .complete 13561,2 --|6/6 Writhing Highborne slain
    .mob Cursed Highborne
    .mob Writhing Highborne
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seraphine|r 
    .target Seraphine
    .accept 13565 >>Accept Twice Removed
step
    .goto 62,40.944,38.615
    >>Click the |cRXP_PICK_Moonstalkers|r sleeping next to the trees to loot their whiskers
    *|cRXP_WARN_Only some of the mobs are neutral and are able to be looted|r
    .complete 13566,1 --|3/3 Moonstalker Whisker
    .mob Moonstalker
step
    .goto 62,45.206,41.222
    >>Click the |cRXP_PICK_Mottled Does|r around the area
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
    >>Click the |cRXP_PICK_yellow mushrooms|r around Ruins of Lornesta
    .use 45911 >>Kill Darkscale nagas and use the |T134413:0|t[|cRXP_LOOT_Petrified Root|r] on their corpses to summon an Ent
    .complete 13598,1 --|6/6 Fuming Toadstool
    .complete 13565,2 --|6/6 Withered Ents called
    .mob Darkscale Scout
step
#loop
    .goto 62,48.579,38.630,0
    .goto 62,46.459,38.829,0
    .goto 62,48.579,38.630,30,0
    .goto 62,46.459,38.829,30,0
    >>Click the |cRXP_PICK_Hungry Thistle Bears|r drinking water next to the riverbed to loot their furs
    *|cRXP_WARN_Only some of the mobs are neutral and are able to be looted|r
    .complete 13566,3 --|3/3 Thistle Bear Fur

step
#requires janira
    .goto 62,42.960,38.956
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seraphine|r
    .target Seraphine
    .turnin 13565 >>Turn in Twice Removed
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keeper Karithus|r
    .target Keeper Karithus
    .turnin 13566 >>Turn in Ritual Materials
    .turnin 13598 >>Turn in Unsavory Remedies
    .accept 13569 >>Accept The Ritual Bond
step
    #completewith next
    .goto 62,42.960,38.956
    .gossipoption 37215>>Click the |cRXP_PICK_Grovekeeper's Incense|r right in front of the quest giver.
    .aura 64198
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
    .goto 62,42.596,45.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Alinya|r
    .target Priestess Alinya
    .turnin -13601 >>Turn in In Aid of the Refugees
    .accept 13542 >>Accept Against the Wind
    .accept 13543 >>Accept Three Hammers to Break
    .accept 13573 >>Accept Malfurion's Return
step
    #optional
    #completewith windmaster
    >>Kill |cRXP_ENEMY_Frenzied Cyclone|r elementals and loot them for their |T236968:0|t[Frenzied Cyclone Bracers]
    .collect 44868,8,13542,1,-1
    .mob Frenzied Cyclone
step
    .goto 62,40.818,41.476
    >>Kill |cRXP_ENEMY_Cloudtamer Wildmane|r
    .complete 13543,1 --|1/1 Cloudtamer Wildmane slain
    .unitscan Cloudtamer Wildmane
step
    .goto 62,39.159,38.314
    >>Kill |cRXP_ENEMY_Skylord Braax|r
    .complete 13543,3 --|1/1 Skylord Braax slain
    .unitscan Skylord Braax
step
#label windmaster
    .goto 62,37.829,42.721
    >>Kill |cRXP_ENEMY_Cloudtamer Wildmane|r
    .complete 13543,2 --|1/1 Windmaster Tzu-Tzu slain
    .unitscan Windmaster Tzu-Tzu
step
    #optional
    #completewith windmaster
    >>Kill |cRXP_ENEMY_Frenzied Cyclone|r elementals and loot them for their |cRXP_LOOT_bracers|r
    .collect 44868,8,13542,1,-1
    .mob Frenzied Cyclone
step
#loop
    .goto 62,39.466,42.096,0
    .goto 62,40.585,41.779,40,0
    .goto 62,39.379,39.127,40,0
    .goto 62,37.963,43.867,40,0
    >>Kill |cRXP_ENEMY_Frenzied Cyclone|r elementals and loot them for their |cRXP_LOOT_bracers|r
    .collect 44868,8,13542,1,-1
    .mob Frenzied Cyclone
step
    .goto 62,39.466,42.096
    .use 44868 >>Destroy the |T236968:0|t[Frenzied Cyclone Bracers] by right clicking them next to the Auberdine moonwell
    .complete 13542,1 --|8/8 Frenzied Cyclone bracers destroyed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Selarin|r and |cRXP_FRIENDLY_Corvine Moonrise|r
    .turnin 13542 >>Turn in Against the Wind
    .goto 62,42.595,45.160
    .target +Sentinel Selarin
    .turnin 13543 >>Turn in Three Hammers to Break
    .goto 62,42.680,45.152
    .target +Corvine Moonrise
--
step
    .goto 62,43.638,53.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfurion Stormrage|r
    .target Malfurion Stormrage
    .turnin 13573 >>Turn in Malfurion's Return
    .accept 13575 >>Accept The Land Is in Their Blood
    .accept 13577 >>Accept The Last Wildkin
    .accept 13579 >>Accept Protector of Ameth'Aran
--
step
    .goto 62,45.558,48.483
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
    >>Look for |cRXP_PICK_Wildkin Feathers|r on the ground, usually next to trees and bushes
    .complete 13578,1 --|8/8 Slain Wildkin Feather
step
    .goto 62,45.556,48.475
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
    >>Kill |cRXP_ENEMY_Horoo the Flamekeeper|r and loot |T135777:0|t[Elune's Torch], he patrols the area around the eastern lake
    .complete 13582,1 --|1/1 Elune's Torch
    .unitscan Horoo the Flamekeeper
step
    .goto 62,45.593,48.472
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aroom|r
    .target Aroom
    .turnin 13582 >>Turn in Elune's Fire
    .accept 13583 >>Accept The Wildkin's Oath
--
step
    .goto 62,40.952,56.480
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Brownpaw|r
    .target Elder Brownpaw
    .turnin 13575 >>Turn in The Land Is in Their Blood
    .accept 13576 >>Accept Mutual Aid

step
#loop
    .goto 62,40.288,61.724,0
    .goto 62,40.576,59.527,40,0
    .goto 62,39.982,63.824,40,0
    .use 44959 >>Kill |cRXP_ENEMY_Unbound Fire Elementals|r and use the |T136061:0|t[Soothing Totem] on their corpses
    .complete 13576,1 --|8/8 Unbound Fire Elemental absorbed
    .mob Unbound Fire Elemental
step
    .goto 62,40.933,56.516
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Brownpaw|r
    .target Elder Brownpaw
    .turnin 13576 >>Turn in Mutual Aid
    .accept 13580 >>Accept Soothing the Elements
step
    .goto 62,39.329,62.143
    .use 46546 >>Use the |T135839:0|t[Energized Soothing Totem] next to the altar on top of the overlook, then defend it from the incoming waves of enemies
    .complete 13580,1 --|1/1 Ritual of Soothing complete

step
    .goto 62,40.938,56.548
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Brownpaw|r
    .target Elder Brownpaw
    .turnin 13580 >>Turn in Soothing the Elements
    .accept 13581 >>Accept The Blackwood Pledge
--
step
    .goto 62,44.451,56.699
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
    .goto 62,44.423,56.745
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
    .goto 62,49.082,57.007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick the Nightmare Portal and talk to |cRXP_FRIENDLY_Thessera|r
    .target Thessera
    .turnin 13586 >>Turn in The Emerald Dream
    .accept 13587 >>Accept The Waking Nightmare
step
    .goto 62,50.115,55.431
    >>Kill and loot |cRXP_ENEMY_Nightmare Guardian|r
    .complete 13587,1 --|1/1 Emerald Scroll
    .mob Nightmare Guardian
step
    .goto 62,49.163,56.923
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thessera|r
    .target Thessera
    .turnin 13587 >>Turn in The Waking Nightmare
    .accept 13940 >>Accept Leaving the Dream
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
    .hs >> Hearth to Lor'Danel
step
#sticky
#label glynda2
    .goto 62,50.649,19.992,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ranger Glynda Nal'Shea|r, she patrols the area around the moonwell.
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
step
#requires glynda2
    .goto 62,58.930,19.411
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Morra Starbreeze|r
    .target Lieutenant Morra Starbreeze
    .turnin 13589 >>Turn in The Shatterspear Invaders
    .accept 13504 >>Accept Shatterspear Laborers
    .accept 13505 >>Accept Remnants of the Highborne
step
    #sticky
    #label overseer
#loop
    .waypoint 62,60.342,17.689,45,0
    .waypoint 62,60.691,13.745,45,0
    .waypoint 62,63.258,15.511,45,0
    .waypoint 62,62.593,19.890,45,0
    .goto 62,61.832,17.573,0,0
    .use 44979>>Kill and loot a |cRXP_ENEMY_Shatterspear Overseer|r
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
    >>Loot the small |cRXP_PICK_relics|r scattered around the dig site
    .complete 13504,1 --|10/10 Shatterspear Laborer slain
    .complete 13505,1 --|8/8 Highborne Relic

    .mob Shatterspear Laborer
step
    #requires overseer
    .goto 62,58.893,19.462
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Morra Starbreeze|r
    .target Lieutenant Morra Starbreeze
    .turnin 13506 >>Turn in Reason to Worry
    .accept 13508 >>Accept Swift Response
    .turnin 13504 >>Turn in Shatterspear Laborers
    .turnin 13505 >>Turn in Remnants of the Highborne
    .accept 13509 >>Accept War Supplies
    .accept 13507 >>Accept Denying Manpower
step
#completewith escort1a
    .goto 62,62.143,9.604,0
    >>Kill |cRXP_ENEMY_Enforcers|r and |cRXP_ENEMY_Mystics|r
    .use 44999 >> Use the |T135433:0|t[Sentinel Torch] on the boxes around the horde camp
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
    >>Kill and loot |cRXP_ENEMY_Rit'ko|r
    .complete 13511,1 --|1/1 Rit'ko slain
    .collect 45040,1,13510--Key
    .mob Rit'ko
step
    .goto 62,64.439,5.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tUse the key you got from earlier to free |cRXP_FRIENDLY_Sentinel Aynasha|r 
    .target Sentinel Aynasha
    .accept 13510 >>Accept Timely Arrival
step
    #label escort1a
    >>Escort |cRXP_FRIENDLY_Sentinel Aynasha|r
    .complete 13510,1
    .target Sentinel Aynasha
step 
#loop
    .goto 62,62.929,8.213,30,0
    .goto 62,61.720,11.021,30,0
    .goto 62,62.143,9.604,0
    >>Kill |cRXP_ENEMY_Enforcers|r and |cRXP_ENEMY_Mystics|r
    .use 44999 >> Use the |T135433:0|t[Sentinel Torch] on the boxes around the horde camp
    .complete 13507,1 --|6/6 Horde Enforcer slain
    .mob +Horde Enforcer
    .complete 13507,2 --|6/6 Shatterspear Mystic slain
    .mob +Shatterspear Mystic
    .complete 13509,1 --|12/12 Shatterspear Armaments burned
step
    .goto 62,58.901,19.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .target Sentinel Tysha Moonblade
    .turnin 13507 >>Turn in Denying Manpower
    .turnin 13509 >>Turn in War Supplies
    .turnin 13510 >>Turn in Timely Arrival
    .turnin 13511 >>Turn in One Bitter Wish
    .accept 13512 >>Accept Strategic Strikes
    .accept 13513 >>Accept On the Brink
step
    .goto 62,59.154,19.624
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathas Wildwood|r 
    .target Mathas Wildwood
    .accept 13844 >>Accept The Looting of Althalaxx
step
#sticky
#label sheya
    .goto 62,61.233,20.367
    .use 44995 >> Use the |T136021:0|t[Dryad Spear] to kill |cRXP_ENEMY_Sheya Stormweaver|r
    .complete 13512,2 --|1/1 Sheya Stormweaver slain
    .unitscan Sheya Stormweaver
step
#sticky
#loop
#label shamans
    .waypoint 62,61.233,20.367,20,0
    .waypoint 62,56.801,25.781,20,0
    .waypoint 62,61.233,20.367,0
    .waypoint 62,56.801,25.781,0
    >>Kill and loot |cRXP_ENEMY_Shatterspear Shamans|r for their amulets
    .complete 13513,1 --|6/6 Shatterspear Amulet
    .mob Shatterspear Shaman
step
#requires sheya
    .goto 62,58.242,23.971
    >>Climb the tower and kill |cRXP_ENEMY_Teegan|r
    >>Loot |cRXP_LOOT_Narassin's Tome|r, a small tome located at the middle level of the tower
    .complete 13844,1 --|1/1 Teegan Holloway slain
    .complete 13844,2 --|1/1 Narassin's Tome
    .mob Teegan Holloway
step
    .goto 62,56.801,25.781
    .use 44995 >> Use the |T136021:0|t[Dryad Spear] to kill |cRXP_ENEMY_Lorenth Thundercall|r
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
    .vehicle >> Right click the |cRXP_FRIENDLY_Vengeful Protector|r
step
    .goto 62,70.684,20.841,0
    .goto 62,70.589,16.872,0
    .goto 62,70.684,20.841,50,0
    .goto 62,70.589,16.872,50,0
    >>Use your first ability to kill the small trolls and the second to burn the huts
    .complete 13514,1 --|30/30 Shatterspear Vale Trolls killed
    .complete 13514,2 --|6/6 Shatterspear Structures destroyed
step
    .goto 62,72.263,19.096
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tLeave your vehicle and talk to |cRXP_FRIENDLY_Huntress Sandrya Moonfall|r
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
    >>Follow the Night Elf sentinels and let them tank |cRXP_ENEMY_Jor'kil the Soulripper|r, then loot him for the quest item
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
    .hs >> Hearth to Lor'Danel
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
    .goto 62,50.175,19.525
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .target Cerellean Whiteclaw
    .turnin 13570 >>Turn in Remembrance of Auberdine
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
    >>Kill |cRXP_ENEMY_Consumed Thistle Bear|r
    .complete 13881,1
    .mob Consumed Thistle Bear
step
#questguide
    .goto 62,45.062,79.069
    >>Swim down the watering hole
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
    >>Click on |cRXP_PICK_Bear's Paw|r, they look like small bushes on the ground
    .complete 13526,1 --|8/8 Bear's Paw
step
#questguide
    .goto 62,40.634,84.297
    .subzone 449 >> Travel to The Master's Glaive
    .isOnQuest 13892
step
#questguide
    #completewith next
    .cast 65426 >> Use the |T133236:0|t[Panther Figurine] to transform into a panther
step
#questguide
    .goto 62,40.634,84.297
    >>as you transform into a panther sneak up to |cRXP_FRIENDLY_Foreman Balsoth|r to overhear his conversation
    .complete 13892,1 --|1/1 Twilight's Hammer surveillance
    .target Foreman Balsoth
    .use 46696
step
#questguide
    >>Click the Quest Turn in Pop-Up in your Questlog.
    .turnin 13892 >>Turn in Leave No Tracks
    .accept 13948 >>Accept Stepping Up Surveillance
step
#questguide
    .goto 62,39.658,86.384,10,0
    .goto 62,41.056,86.360,10,0
    .goto 62,40.733,85.046,10,0
    .goto 62,39.809,85.356,10,0
    .goto 62,40.101,84.651
    .use 46696 >> Use the |T133236:0|t[Panther Figurine] to transform into a panther
    >>Sneak up to |cRXP_FRIENDLY_Doomspeaker Trevellion|r all the way up the scaffolding
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
    >>Kill and loot |cRXP_ENEMY_Fleetfoot|r
    .collect 44886,1,13544,1
    .mob Fleetfoot
step
#questguide
#loop
    .goto 62,45.945,78.353,0
    .goto 62,42.014,76.593,0
    .goto 62,45.945,78.353,40,0
    .goto 62,42.014,76.593,40,0
    >>Kill |cRXP_ENEMY_Consumed Thistle Bear|r
    .complete 13881,1
step
#questguide
#requires fleetfoot
    .goto 62,45.300,76.734
    .use 44888 >> Use the |T134189:0|t[Bear's Paw Bundle] next to the |cRXP_PICK_Ancient Bear Statue|r
    .complete 13544,1
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balren of the Claw|r
    .turnin 13948 >>Turn in Stepping Up Surveillance
    .target +Balren of the Claw
    .goto 62,45.284,75.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larien|r 
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
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
    >>Look for |cRXP_PICK_Darkshore Wisps|r, right click them as they get to the ground
    .unitscan Darkshore Wisp
    .complete 13882,3
step
#questguide
    .goto 62,43.541,80.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Brolg|r
    .turnin 13544 >>Turn in The Bear's Blessing
    .accept 13545 >>Accept Cleansing the Afflicted
    .target +Elder Brolg
    .accept 13572 >>Accept Jadefire Braziers
    .target +Gren Tornfur
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
    .use 44889>>Use the |T237425:0|t[Blessed Herb Bundle] on a blackwood furbolg, then kill the |cRXP_ENEMY_Spirit of Corruption|r that spawns
    .complete 13545,1
    .mob Spirit of Corruption
    .target Maddened Blackwood
    .target Corrupted Blackwood
step
#questguide
#requires braziers
    .goto 62,43.539,80.984
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gren Tornfur|r
    .turnin 13572 >>Turn in Jadefire Braziers
    .target +Gren Tornfur
    .turnin 13545 >>Turn in Cleansing the Afflicted
    .accept 13546 >>Accept The Defiler
    .target +Elder Brolg
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
    >>Loot |cRXP_PICK_Glittering Shells|r scattered around the shore east
    .complete 13882,2 --|1/1 Seed of the Sea
step
#questguide
#requires skyseed
    .goto 62,37.707,82.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Groff|r
    .target Archaeologist Groff
    .turnin 13896 >>Turn in Unearthed Knowledge
    .accept 13893 >>Accept Soggoth and Kronn
    .accept 13907 >>Accept Sweeping Clean the Ruins
step
#questguide
#sticky
#label prospector
    .goto 62,37.738,82.897
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jr. Archaeologist Ferd|r 
    .target Jr. Archaeologist Ferd
    .accept 13912 >>Accept Swamped Secrets
step
#questguide
    .goto 62,37.709,82.903
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Remtravel|r 
    .target Prospector Remtravel
    .accept 13911 >>Accept The Absent-Minded Prospector
    >>|cRXP_WARN_This will start an escort quest|r
step
#questguide
    #completewith next
    #optional
    >>Kill |cRXP_ENEMY_Murlocs|r
    .complete 13907,1
step
#questguide
    >>Escort |cRXP_FRIENDLY_Prospector Remtravel|r
    .complete 13911,1
    .target Prospector Remtravel
step
#questguide
#requires prospector
    .goto 62,37.023,83.441
    >>Click the yellow plate like disc underwater
    .complete 13912,1 --|1/1 Mud-Crusted Ancient Disc
step
#questguide
#loop
    .goto 62,36.355,83.599,20,0
    .goto 62,37.393,82.425,20,0
    .goto 62,36.572,84.501,20,0
    .goto 62,37.669,84.418,0
    >>Kill |cRXP_ENEMY_Murlocs|r
    .complete 13907,1

step
#questguide
#sticky
#label debris
#loop
    .goto 62,38.407,78.988,0
    .goto 62,36.452,81.574,0
    .goto 62,36.126,84.743,0
    .goto 62,37.149,86.795,0
    
    .goto 62,38.407,78.988,40,0
    .goto 62,36.452,81.574,40,0
    .goto 62,36.126,84.743,40,0
    .goto 62,37.149,86.795,40,0
    >>Loot |cRXP_PICK_Greymist Debris|r along the coast
    .complete 13909,1
step
#questguide
#completewith next
#loop
    .goto 62,38.407,78.988,0
    .goto 62,36.452,81.574,0
    .goto 62,36.126,84.743,0
    .goto 62,37.149,86.795,0
    .goto 62,38.407,78.988,40,0
    .goto 62,36.452,81.574,40,0
    .goto 62,36.126,84.743,40,0
    .goto 62,37.149,86.795,40,0
    .use 46388 >>Keep using the |T134519:0|t[Buried Artifact Detector] to reveal the |cRXP_PICK_Buried Debris|r
    >>Click them to loot |cRXP_LOOT_Device Fragments|r
    .collect 46702,5,13918,1
    .isOnQuest 13918
step
#questguide
#requires debris
    .use 46702 >> Click the |T132997:0|t[Ancient Device Fragments] to combine them
    .complete 13918,1
step
#questguide
    .goto 62,37.645,82.832
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Groff|r
    .turnin 13909 >>Turn in Got Some Flotsam?
    .accept 13910 >>Accept A New Home
    .target +Archaeologist Groff
    .turnin 13918 >>Turn in The Titans' Terminal
step
#questguide
    .goto 62,35.945,81.989
    .complete 13910,1 --|1/1 Greymist Murloc Home Built
    .use 46385 >> Use the |T132281:0|[Marvelous Mobile Murloc Manor Maker] near the construction banner
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
    .goto 62,45.303,75.129
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balren of the Claw|r
    .target Balren of the Claw
    .turnin 13953 >>Turn in Naga In Our Midst
    .accept 13899 >>Accept The Darkscale Warlord
    .accept 13898 >>Accept The Tides Turn Against Us
step
#questguide
#loop
    .goto 62,41.893,75.131,0
    .goto 62,40.264,73.207,0
    .goto 62,41.893,75.131,30,0
    .goto 62,40.264,73.207,30,0
    .complete 13925,1 --|1/1 Lifebringer Sapling Tested
    .use 46363 >>Use the |T133749:0|t[Lifebringer Sapling] on an uncorrupted animal
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
    --.accept 13885 >>Accept In Defense of Darkshore
step
#questguide
    .goto 62,33.040,83.773,15,0
    .goto 62,32.269,84.069,15,0
    .goto 62,32.263,85.379
    >>Kill |cRXP_ENEMY_Warlord Wrathspine|r and click on his corpse
    .mob Warlord Wrathspine
    .turnin 13899 >>Turn in The Darkscale Warlord
    .accept 13900 >>Accept The Offering to Azshara
--TODO: logout skip maybe?
step
#questguide
    .goto 62,32.874,84.131
    >>Exit the cave and run to the terrace above the cave entrance
    .complete 13900,1 --|1/1 Offering to Azshara prevented
step
#questguide
    .goto 62,32.874,84.131
    >>Kill |cRXP_ENEMY_Darkscale Myrmidons|r
    .complete 13898,1 --|8/8 Darkscale Myrmidon slain
    .mob Darkscale Myrmidon
step
#questguide
    .goto 62,40.552,83.946
    >>Kill |cRXP_ENEMY_Avatar of Soggoth|r
    .use 58365 >> Use the |T237377:0|t[Horn of the Ancients] to help you with the fight
    .mob Avatar of Soggoth
    .complete 13897,1 --|1/1 Avatar of Soggoth slain
step
#questguide
    .goto 62,45.340,75.115
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balren of the Claw|r
    .target Balren of the Claw
    .turnin 13897 >>Turn in The Battle for Darkshore
    .turnin 13898 >>Turn in The Tides Turn Against Us
--
--Should be level 20 here, still missing the bombing run quest, garbage xp/hr
step
#questguide
    #completewith next
    .hs >> Hearth to Lor'Danel

]])
