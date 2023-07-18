RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#subgroup Dwarf Starting Zones
#name 2Retail-Alliance-Dwarf_Coldridge Vallley
#displayname Chapter 1 - Coldridge Vallley
#next 3Retail-Alliance-Gnome,Dwarf_Dun Morogh
#defaultfor Dwarf

<<Alliance !DK

step
    #completewith next
    +Welcome to the |cFFfa9602Dwarf Starting Zone|r Guide by RestedXP.
    *Without consumables or heirlooms, this route is approximately 5 minutes slower than |cFFfa9602Exile's Reach.|r For faster leveling, consider recreating your character and selecting |cFFfa9602Exile's Reach|r instead.
step
    .goto 427,67.1,41.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joren Ironstock.|r
    .accept 24469 >>Accept Hold the Line!
	.target Joren Ironstock
step 
    .loop 25,427,63.9,46.81,60.27,49.29,59.53,42.97,69.41,50.53
    >>Kill |cRXP_ENEMY_Rockjaw Invaders|r
    .complete 24469,1 --6/6 Rockjaw Invader slain
	.mob Rockjaw Invader
step
    .goto 427,67.1,41.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joren Ironstock.|r
    .turnin 24469 >> Turn in Hold the Line!
	.target Joren Ironstock
step
    .goto 427,65.5,42.5 
    .line 427,65.7,43.6,65.51,41.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sten Stoutarm.|r
    .accept 24471 >>Accept Aid for the Wounded
	.target Sten Stoutarm
step 
    .goto 427,67.1,41.3 
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joren Ironstock.|r
    .turnin 24469 >>Turn in Hold the Line!
    .accept 24470 >>Accept Give 'em What-For
	.target Joren Ironstock
step
    #completewith next
    +|cRXP_WARN_To enable keybinding for quest items, follow these steps:|r
    *[1] Press the |cRXP_WARN_Escape key.|r 
    *[2] Select |cRXP_WARN_Options.|r
    *[3] Navigate to |cRXP_WARN_Keybindings.|r
    *[4] Within |cRXP_WARN_Keybindings|r, find |cRXP_WARN_RestedXP Guides.|r
    *[5] Select and bind the |cRXP_WARN_Active Buttons.|r
step
	#completewith aid
    >>Kill |cRXP_ENEMY_Rockjaw Goons.|r
    .complete 24470,1 --3/3 Rockjaw Goon slain
	.mob Rockjaw Goon
step
	#label aid
    .goto 427,65.07,49.39,10,0 
    .goto 427,66.78,56.91,10,0
    .goto 427,65.23,58.98,10,0
    .goto 427,66.67,61.23,10,0
    .goto 427,61.87,59.87,10,0
    .goto 427,58.2,57.14,10,0
    .goto 427,61.05,54.65,10,0
    .goto 427,58.88,51.08,10,0
    .goto 427,56.67,49.6,10,0
    .loop 15,427,61.77,47.67,67.98,50.49,72.11,52.15,73.72,56.51,71.06,59.72
    >>Use |T133675:0|t[Sten's First Aid Kit] on |cRXP_FRIENDLY_Wounded Coldridge Mountaineers.|r
    .complete 24471,1 --4/4 Wounded Coldridge Mountaineers Aided
	.use 49743
	.target Wounded Coldridge Mountaineer	
step
    .goto 427,59.19,58.95,10,0
    .goto 427,56.98,55.36,10,0
    .goto 427,56.67,49.6,10,0
    .loop 15,427,61.77,47.67,67.98,50.49,72.11,52.15,73.72,56.51,71.06,59.72
    >>Kill |cRXP_ENEMY_Rockjaw Goons|r
    .complete 24470,1 --3/3 Rockjaw Goon slain
	.mob Rockjaw Goon
step
    .goto 427,65.5,42.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sten Stoutarm.|r
    .turnin 24471 >>Turn in Aid for the Wounded
	.target Sten Stoutarm
step  
    .goto 427,67.16,41.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joren Ironstock.|r
    .turnin 24470 >>Turn in Give 'em What-For
    .accept 24473 >>Accept Lockdown in Anvilmar
	.target Joren Ironstock
step
    .goto 427,60.6,21.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jona Ironstock|r located inside |cFFfa9602Anvilmar patrolling in a circle.|r 
    .turnin 24473 >>Turn in Lockdown in Anvilmar
    .accept 24474 >>Accept First Things First: We're Gonna Need Some Beer
	.target Jona Ironstock
step
    .goto 427,61.7,22.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grundel Harkin.|r
    .accept 24477 >>Accept Dwarven Artifacts
	.target Grundel Harkin		
step
    #completewith ale
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Tablets.|r
    .complete 24477,1 --5/5 Forgotten Dwarven Artifacts	
step
    .goto 427,62.57,25.16,10,0
    .goto 427,61.72,27.84,10,0
    .goto 427,62.26,31.68,10,0
    .goto 427,68.2,27.92
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrel.|r
    .complete 24474,3 --1/1 Cask of Gnomenbrau
step
    .goto 427,56.92,28.1    
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrel.|r   
    .complete 24474,1 --1/1 Cask of Stormhammer Stout
step
    #label ale
    .goto 427,39.88,28.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrel.|r
    .complete 24474,2 --1/1 Cask of Theramore Pale Ale
step
    .goto 427,35.92,31.45,10,0
    .goto 427,31.06,34.28,10,0
    .goto 427,26.9,36.89,10,0
    .goto 427,23.07,33.96,10,0
    .goto 427,26.46,30.54 
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Tablets|r
    .complete 24477,1 --5/5 Forgotten Dwarven Artifacts	
step
    .isOnQuest 24477
    .hs >> Hearthstone to |cFFfa9602Anvilmar|r
step
    .goto 427,61.7,22.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grundel Harkin.|r
    .turnin 24477 >>Turn in Dwarven Artifacts
    .accept 24486 >>Accept Make Hay While the Sun Shines
	.target Grundel Harkin
step
    .goto 427,62.2,19.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jona Ironstock|r inside |cFFfa9602Anvilmar patrolling in a circle.|r 
    .turnin 24474 >>Turn in First Things First: We're Gonna Need Some Beer
    .accept 24475 >>Accept All the Other Stuff
	.target Jona Ironstock
step
    #completewith next
    >>Kill |cRXP_ENEMY_Rockjaw Scavengers|r and loot them for their |T135238:0|t|cRXP_LOOT_Priceless Rockjaw Artifacts.|r
    .complete 24486,1 --5/5 Priceless Rockjaw Artifact
	.mob Rockjaw Scavenger
step
    .goto 427,61.68,26.88,10,0
    .loop 15,427,55.34,46.47,52.1,46.98,51.58,62.21,58.29,58.58
    >>Kill |cRXP_ENEMY_Small Crag Boars|r, |cRXP_ENEMY_Wolves|r and loot them for their |T133969:0|t|cRXP_LOOT_Boar Haunches|r and |T134366:0|t|cRXP_LOOT_Ragged Wolf Hides.|r 
    .complete 24475,1 --3/3 Boar Haunch
    .complete 24475,2 --4/4 Ragged Wolf Hide
    .mob Small Crag Boar
    .mob Ragged Young Wolf
    .mob Ragged Timber Wolf
step
    .loop 15,427,55.34,46.47,52.1,46.98,51.58,62.21,58.29,58.58
    >>Kill |cRXP_ENEMY_Rockjaw Scavengers|r and loot them for their |T135238:0|t|cRXP_LOOT_Priceless Rockjaw Artifact.|r
    .complete 24486,1 --5/5 Priceless Rockjaw Artifact
	.mob Rockjaw Scavenger
step
    .goto 427,61.7,22.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grundel Harkin|r |cFFfa9602inside Anvilmar.|r
    .turnin 24486 >>Turn in Make Hay While the Sun Shines
	.target Grundel Harkin
step
    .goto 427,62.2,19.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jona Ironstock|r |cFFfa9602 inside Anvilmar patrolling in a circle.|r 
    .turnin 24475 >>Turn in All the Other Stuff
    .accept 24487 >>Accept Whitebeard Needs Ye
	.target Jona Ironstock
step
    .goto 427,61.71,27.29,10,0
    .goto 427,42.72,62.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard.|r
    .turnin 24487 >>Turn in Whitebeard Needs Ye
    .accept 182 >>Accept The Troll Menace
	.target Grelin Whitebeard
step
    .goto 427,43.26,63.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apprentice Soren.|r
    .accept 24489 >>Accept Trolling for Information
	.target Apprentice Soren
step
    .goto 427,41.88,62.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felix Whindlebolt.|r
    .accept 3361 >>Accept A Refugee's Quandary
	.target Felix Whindlebolt
step
	#completewith Soothsayer Shi'kala Scouted
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps.|r
    .complete 182,1 --10/10 Frostmane Troll Whelp slain
	.mob Frostmane Troll Whelp	
step
    .goto 427,21.4,64.1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Felix's Box.|r
    .complete 3361,1 --1/1 Felix's Box	
step
    .isOnQuest 24489
    .goto 427,20.84,67.47,5 >> Go near |cRXP_FRIENDLY_Soothsayer Mirim'koa|r |cFFfa9602inside the hut.|r
    .timer 11, Hut roleplay
step
    .goto 427,20.84,67.47
    >>|cRXP_WARN_Wait for the brief roleplay near |cRXP_FRIENDLY_Soothsayer Mirim'koa|r, which will be completed when the timer runs out.|r
    >>You can kill nearby |cRXP_ENEMY_Frostmane Troll Whelps|r in the meantime.
    .complete 24489,3 --1/1 Soothsayer Mirim'koa Scouted
    .target Soothsayer Mirim'koa	
step
    .goto 427,30.97,84.10
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Felix's Chest.|r
    .complete 3361,2 --1/1 Felix's Chest
step
    .isOnQuest 24489
    .goto 427,30.18,85.45,5 >> Go near |cRXP_FRIENDLY_Soothsayer Rikkari|r |cFFfa9602inside the hut.|r 
    .timer 11, Hut roleplay
step
	.goto 427,30.18,85.45
    >>|cRXP_WARN_Wait for the brief roleplay near |cRXP_FRIENDLY_Soothsayer Rikkari|r, which will be completed when the timer runs out.|r
    .complete 24489,2 --1/1 Soothsayer Rikkari Scouted
    .target Soothsayer Rikkari
step
    .isOnQuest 24489
    .goto 427,49.11,81.59,10 >> Go near |cRXP_FRIENDLY_Soothsayer Shi'kala|r |cFFfa9602near the cave.|r
    .timer 11, Hut roleplay
step
    .goto 427,49.1,80.4
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Felix's Bucket of Bolts.|r
    .complete 3361,3 --1/1 Felix's Bucket of Bolts
step
    #label Soothsayer Shi'kala Scouted
	.goto 427,49.11,81.59
    >>|cRXP_WARN_Wait for the brief roleplay near |cRXP_FRIENDLY_Soothsayer Rikkari|r, which will be completed when the timer runs out.|r
    .complete 24489,1 --1/1 Soothsayer Shi'kala Scouted
    .target Soothsayer Shi'kala
step
    .goto 427,52.48,77.81,15,0
    .goto 427,47.95,75.22,15,0
    .goto 427,45.02,71.18
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps.|r
    .complete 182,1 --10/10 Frostmane Troll Whelp slain
	.mob Frostmane Troll Whelp
step 
    .isOnQuest 3361
    .goto 427,42.0,63.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felix Whindlebolt.|r
    .vendor >> |cRXP_WARN_Vendor and buy bags if you need.|r
    .collect 4496,3
	.target Felix Whindlebolt
step
    .goto 427,42.0,63.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felix Whindlebolt.|r
    .turnin 3361 >>Turn in A Refugee's Quandary
	.target Felix Whindlebolt
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r and |cRXP_FRIENDLY_Apprentice Soren.|r
    .turnin 24489 >>Turn in Trolling for Information
    .goto 427,43.23,63.10
    .turnin 182,2 >>Turn in The Troll Menace
	.accept 218 >>Accept Ice and Fire
    .goto 427,42.72,62.23
	.target Grelin Whitebeard
	.target Apprentice Soren
step
	.isOnQuest 218
	.goto 427,51.42,83.01,15 >> Enter |cFFfa9602the Troll Cave.|r
step
    #completewith Grik'nir the Cold
    .goto 428,13.86,45.98,10,0
    .goto 428,26.08,47.78,10,0
    .goto 428,47.21,15.5,10,0
    .goto 428,57.24,14.77,10,0
    .goto 428,76.49,32.10,10,0
    >>Kill the |cRXP_ENEMY_Frostmane Clan.|r 
    .complete 218,4 --6/6 Frostmane Blade slain
    .complete 218,3 --3/3 Frostmane Novice slain
    .complete 218,2 --1/1 Wayward Fire Elemental slain
	.mob Frostmane Blade
	.mob Frostmane Novice
	.mob Wayward Fire Elemental
step
    #label Grik'nir the Cold
    .goto 428,76.49,32.10
    >>Kill |cRXP_ENEMY_Grik'nir the Cold|r |cFFfa9602at the end of the Cave.|r
    .complete 218,1 --1/1 Grik'nir the Cold slain
	.mob Grik'nir the Cold
step
    .goto 428,58.94,15.2,10,0
    .goto 428,44.43,18.4,10,0
    .goto 428,33.87,35.13,10,0
    .goto 428,21.29,48.72,10,0
    .goto 428,14.31,44.81,10,0
    >>Kill the |cRXP_ENEMY_Frostmane Clan|r |cFFfa9602at the end of the Cave.|r
    .complete 218,4 --6/6 Frostmane Blade slain
    .complete 218,3 --3/3 Frostmane Novice slain
    .complete 218,2 --1/1 Wayward Fire Elemental slain
	.mob Frostmane Blade
	.mob Frostmane Novice
	.mob Wayward Fire Elemental
step
    .isOnQuest 218
    .goto 428,58.94,15.2,10,0
    .goto 428,44.43,18.4,10,0
    .goto 428,33.87,35.13,10,0
    .goto 428,21.29,48.72,10,0
    .goto 428,14.31,44.81,10,0
    .goto 427,51.17,81.93,15 >>Exit |cFFfa9602the Cave.|r
step
    .goto 427,42.74,62.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard.|r
    .turnin 218 >>Turn in Ice and Fire
    .accept 24490 >>Accept A Trip to Ironforge
	.target Grelin Whitebeard
step
    .goto 427,87.52,44.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hands Springsprocket.|r
    .turnin 24490 >>Turn in A Trip to Ironforge
    .accept 24491 >>Accept Follow that Gyro-Copter!
	.target Hands Springsprocket
step
    .goto 427,69.85,44.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milo Geartwinge.|r
    .turnin 24491 >>Turn in Follow that Gyro-Copter!
    .accept 24492 >>Accept Pack Your Bags
	.target Milo Geartwinge
step
    .goto 427,62.71,30.62,10,0
    .goto 427,61.76,26.21,10,0
    .goto 427,62.62,24.6,5,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Barrel|r, |cRXP_PICK_Leftover Boar Meat|r and the |cRXP_PICK_Crate|r |cFFfa9602inside Anvilmar.|r 
    .complete 24492,1 --1/1 Coldridge Beer Flago
	.goto 427,62.50,23.43  
    .complete 24492,3 --1/1 Leftover Boar Meat
	.goto 427,62.13,23.56
    .complete 24492,2 --1/1 Ragged Wolf-Hide Cloak
	.goto 427,62.22,24.12
step
    .line 427,60.67,21.25,61.35,19.63,62.54,20.52,61.82,22.2,60.73,21.01
    .goto 427,61.2,22.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jona Ironstock|r |cFFfa9602inside Anvilmar patrolling in a circle.|r 
    .accept 24493 >>Accept Don't Forget About Us
	.target Jona Ironstock
step
    .goto 427,61.71,27.13,10,0
    .goto 427,61.8,31.32,10,0
    .goto 427,69.8,44.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milo Geartwinge.|r
    .turnin 24492 >>Turn in Pack Your Bags
    .timer 83.5, Ride to Kharanos
	.target Milo Geartwinge
]])

RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#subgroup Gnome Starting Zones
#name 2Retail-Alliance-Gnome_New Tinkertown
#displayname Chapter 1 - New Tinkertown
#next 3Retail-Alliance-Gnome,Dwarf_Dun Morogh
#defaultfor Gnome

<<Alliance !DK

step
    #completewith next
    +Welcome to the |cFFfa9602Gnome Starting Zone|r Guide by RestedXP.
    *Without consumables or heirlooms, this route is approximately 5 minutes slower than |cFFfa9602Exile's Reach.|r For faster leveling, consider recreating your character and selecting |cFFfa9602Exile's Reach|r instead.
step
    .goto 30,34.1,32.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nevin Twistwrench.|r
    .accept 27670 >>Accept Pinned Down
step
    .goto 30,40.7,32.0
    >>Kill |cRXP_ENEMY_Gnomes.|r
    .complete 27670,1 --6/6 Crazed Leper Gnome slain
	.mob Crazed Leper Gnome
step
    .goto 30,34.1,32.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Nevin Twistwrench.|r
    .turnin 27670 >>Turn in Pinned Down
    .accept 28167 >>Accept Report to Carvo Blastbolt
	.target Nevin Twistwrench
step
    .goto 30,51.0,31.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carvo Blastbolt.|r
    .turnin 28167 >>Turn in Report to Carvo Blastbolt
    .accept 27671 >>Accept See to the Survivors
	.target Carvo Blastbolt
step
    .isOnQuest 27671
    #completewith next
    +|cRXP_WARN_To enable keybinding for quest items, follow these steps:|r
    *[1] Press the |cRXP_WARN_Escape key.|r 
    *[2] Select |cRXP_WARN_Options.|r
    *[3] Navigate to |cRXP_WARN_Keybindings.|r
    *[4] Within |cRXP_WARN_Keybindings|r, find |cRXP_WARN_RestedXP Guides.|r
    *[5] Select and bind the |cRXP_WARN_Active Buttons.|r
step
    .goto 30,50.07,30.68
    >>Use the |T967530:0|t[Teleport Beacon] on |cRXP_FRIENDLY_Survivors.|r
    .complete 27671,1,1 --6/6 Survivors Rescued
    .use 62057
	.target Survivor
step
    .goto 30,53.18,29.39
    >>Use the |T967530:0|t[Teleport Beacon] on |cRXP_FRIENDLY_Survivors.|r
    .use 62057
    .complete 27671,1,2 --6/6 Survivors Rescued
	.target Survivor
step
    .goto 30,52.12,27.63
    >>Use the |T967530:0|t[Teleport Beacon] on |cRXP_FRIENDLY_Survivors.|r
    .use 62057
    .complete 27671,1,3 --6/6 Survivors Rescued
	.target Survivor
step
    .goto 30,52.67,23.18
    >>Use the |T967530:0|t[Teleport Beacon] on |cRXP_FRIENDLY_Survivors.|r
    .use 62057
    .complete 27671,1,4 --6/6 Survivors Rescued
	.target Survivor
step
    .goto 30,45.88,24.37
    >>Use the |T967530:0|t[Teleport Beacon] on |cRXP_FRIENDLY_Survivors.|r
    .use 62057
    .complete 27671,1,5 --6/6 Survivors Rescued
	.target Survivor
step
    .goto 30,47.63,30.00
    >>Use the |T967530:0|t[Teleport Beacon] on |cRXP_FRIENDLY_Survivors.|r
    .use 62057
    .complete 27671,1,6 --6/6 Survivors Rescued
	.target Survivor
step
    .goto 30,51.0,31.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carvo Blastbolt.|r
    .turnin 27671 >>Turn in See to the Survivors
    .accept 28169 >>Accept Withdraw to the Loading Room!
	.target Carvo Blastbolt
step
    .goto 30,53.0,82.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gaffer Coilspring.|r
    .turnin 28169 >>Turn in Withdraw to the Loading Room!
    .accept 27635 >>Accept Decontamination
	.target Gaffer Coilspring
step
    .goto 30,58.81,82.95
    >>TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Sanitron 500|r |cRXP_WARN_after typing /sit|r infront of him. |cRXP_WARN_This way, you won't need to wait on roleplay.|r
    .complete 27635,1 --1/1 Decontamination Process started
    .target Sanitron 500
step
    .goto 30,66.4,81.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Technician Braggle.|r
    .turnin 27635 >>Turn in Decontamination
    .accept 27674 >>Accept To the Surface
	.target Technician Braggle
step
    .goto 30,67.3,84.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torben Zapblast.|r
    .complete 27674,1 --1/1 Speak to Torben Zapblast
	.skipgossip
    .target Torben Zapblast
step
    .goto 469,39.5,38.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nevin Twistwrench.|r
    .turnin 27674 >>Turn in To the Surface
    .accept 26206 >>Accept The Future of Gnomeregan << Rogue
    .accept 26197 >>Accept The Future of Gnomeregan << Mage
    .accept 26199 >>Accept The Future of Gnomeregan << Priest
    .accept 26202 >>Accept The Future of Gnomeregan << Warlock
    .accept 26203 >>Accept The Future of Gnomeregan << Warrior
    .accept 31135 >>Accept The Future of Gnomeregan << Monk
    .accept 41217 >>Accept The Future of Gnomeregan <<Hunter/Druid
	.target Nevin Twistwrench
step << Rogue
    .goto 469,38.0,33.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark.|r
    .turnin 26206 >>Turn in The Future of Gnomeregan 
    .accept 26423 >>Accept Meet the High Tinker
	.target Kelsey Steelspark
step << Mage
    .goto 469,41.0,29.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bipsi Frostflinger.|r
    .turnin 26197 >>Turn in The Future of Gnomeregan 
    .accept 26421 >>Accept Meet the High Tinker
	.target Bipsi Frostflinger
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Doc" Cogspin.|r
    .turnin 26199 >>Turn in The Future of Gnomeregan 
    .accept 26422 >>Accept Meet the High Tinker
	.target "Doc" Cogspin
step << Warlock
    .goto 469,37.68,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alamar Grimm.|r
    .turnin 26202 >>Turn in The Future of Gnomeregan 
    .accept 26424 >>Accept Meet the High Tinker
	.target Alamar Grimm
step << Warrior
    .goto 469,40.69,36.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drill Seargent Steamcrank.|r
    .turnin 26203 >>Turn in The Future of Gnomeregan 
    .accept 26425 >>Accept Meet the High Tinker
	.target Drill Seargent Steamcrank
step << Monk
    .goto 469,40.10,35.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xi, Friend to the Small.|r
    .turnin 31135 >>Turn in The Future of Gnomeregan 
    .accept 31137 >>Accept Meet the High Tinker 
	.target Xi, Friend to the Small
step << Hunter/Druid
    .goto 469,41.92,31.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muffinus Chromebrew.|r
    .turnin 41217 >>Turn in The Future of Gnomeregan 
    .accept 41218 >>Accept Meet the High Tinker 
	.target Muffinus Chromebrew
step
    .goto 469,38.8,32.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkatorque.|r
    .turnin 26423 >>Turn in Meet the High Tinker << Rogue
    .turnin 26421 >>Turn in Meet the High Tinker << Mage
    .turnin 26422 >>Turn in Meet the High Tinker << Priest
    .turnin 26424 >>Turn in Meet the High Tinker << Warlock
    .turnin 26425 >>Turn in Meet the High Tinker << Warrior
    .turnin 31137 >>Turn in Meet the High Tinker << Monk
    .turnin 41218 >>Turn in Meet the High Tinker << Hunter/Druid
    .accept 26208 >>Accept The Fight Continues
	.timer 6, Mekkatorque Roleplay
	.target High Tinker Mekkatorque
step
    .goto 469,38.6,32.9
    >>|cRXP_WARN_Don't move away from High Tinker Mekkartorque.|r
    .complete 26208,1 --1/1 Learn about Operation: Gnomeregan
step
    .goto 469,38.6,32.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkatorque.|r
    .turnin 26208 >>Turn in The Fight Continues
    .accept 26566 >>Accept A Triumph of Gnomish Ingenuity
	.target High Tinker Mekkatorque
step
    .goto 469,40.6,28.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Grindspark.|r
    .turnin 26566 >>Turn in A Triumph of Gnomish Ingenuity
    .accept 26222 >>Accept Scrounging for Parts
	.target Engineer Grindspark
step 
    .goto 469,39.2,24.4,20,0
    .goto 469,38.45,29.62,20,0
    .goto 469,39.87,31.67,20,0
    .goto 469,40.6,28.1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_LOOT_Spare Parts.|r
    .complete 26222,1 --7/7 Spare Part
step
    .goto 469,40.6,28.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Grindspark.|r
    .turnin 26222 >>Turn in Scrounging for Parts
    .accept 26205 >>Accept A Job for the Multi-Bot
	.target Engineer Grindspark
step
    .goto 469,39.2,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Tock Sprysprocket.|r
    .accept 26264 >>Accept What's Left Behind
	.target Tock Sprysprocket
step
    .goto 469,38.2,40.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Fizzwhistle|r
    .accept 26265 >>Accept Dealing with the Fallout
	.target Corporal Fizzwhistle
step
    #completewith next
    >>Kill |cRXP_ENEMY_Living Contaminations|r, |cRXP_ENEMY_Toxic Sludges|r and loot them for their |cRXP_LOOT_Recovered Possessions.|r
    .complete 26265,1 --6/6 Living Contamination slain
    .complete 26264,1 --6/6 Recovered Possession
    .mob Living Contamination
step
    .goto 469,39.99,41.80,20,0
    .goto 469,42.13,44.89,20,0
    .goto 469,41.35,51.48,20,0
    .goto 469,37.08,50.49,20,0
    .goto 469,38.17,46.14
    >>Guide the |cRXP_FRIENDLY_Robot|r |cFFfa9602to the Dark Green Spots in the Green Lakes.|r
    .complete 26205,1 --5/5 Clean up Toxic Geysers	
step
    .goto 469,40.99,43.12,30,0
	.goto 469,40.70,48.90,30,0
	.goto 469,40.87,52.40,30,0
	.goto 469,37.89,46.34,30,0
	.goto 469,40.54,45.48
    >>Kill |cRXP_ENEMY_Living Contaminations|r, |cRXP_ENEMY_Toxic Sludges|r and loot them for their |cRXP_LOOT_Recovered Possessions.|r
    .complete 26265,1 --6/6 Living Contamination slain
    .complete 26264,1 --6/6 Recovered Possession
    .mob Living Contamination
step
    #completewith next
    .goto 469,40.58,45.54,20 >> |cRXP_WARN_Old World Enemy Rares and Treasure Chests reward as much as 1 or 2 Quests!|r
    >>Check for |cRXP_ENEMY_Gibblewit(Rare)|r |cFFfa9602in the center of The Toxic Airfield.|r
	.unitscan Gibblewit
step
    #requires Area1
    .goto 469,38.2,40.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Fizzwhistle.|r
    .turnin 26265 >>Turn in Dealing with the Fallout
	.target Corporal Fizzwhistle
step
    .goto 469,40.6,28.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Engineer Grindspark.|r
    .turnin 26205 >>Turn in A Job for the Multi-Bot
	.target Engineer Grindspark
step
    .goto 469,39.2,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tock Sprysprocket.|r
    .turnin 26264 >>Turn in What's Left Behind
	.target Tock Sprysprocket
step
    .goto 469,38.4,33.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tread Sparknozzle.|r
    .accept 26316 >>Accept What's Keeping Kharmarn?
	.target Captain Tread Sparknozzle
step
    .goto 469,37.3,65.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Kharmarn Palegrip.|r
    .turnin 26316 >>Turn in What's Keeping Kharmarn?
    .accept 26284 >>Accept Missing in Action
    .accept 26285 >>Accept Get Me Explosives Back!
	.target Kharmarn Palegrip
step
    #completewith next
    .goto 469,40.58,45.54,20 >> Check for |cRXP_ENEMY_Caverndeep Looter(Rare)|r |cFFfa9602who patrols around the camp.|r
	.unitscan Caverndeep Looter	   
step
    #completewith Area2
    >>Kill |cRXP_ENEMY_Rockjaw Bonepickers|r, |cRXP_ENEMY_Marauders|r and loot them for |cRXP_LOOT_Stolen Powder Kegs.|r
    .complete 26285,1 --7/7 Stolen Powder Keg
	.target Rockjaw Bonepicker
	.target Rockjaw Marauder
step
    .goto 469,36.6,68.34
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Cage.|r
    .complete 26284,1,1 --6/6 Captured Demolitionists rescued
step
    .goto 469,38.05,68.80
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Cage.|r
    .complete 26284,1,2 --6/6 Captured Demolitionists rescued
step
    .goto 469,37.91,72.33
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Cage.|r
    .complete 26284,1,3 --6/6 Captured Demolitionists rescued
step
    .goto 469,38.70,74.13
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Cage.|r
    .complete 26284,1,4 --6/6 Captured Demolitionists rescued
step
    .goto 469,40.65,74.36
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Cage.|r
    .complete 26284,1,5 --6/6 Captured Demolitionists rescued
step
    #label Area2
    .goto 469,41.07,69.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Cage.|r
    .complete 26284,1,6 --6/6 Captured Demolitionists rescued
step
    .goto 469,36.6,68.34
    >>Kill |cRXP_ENEMY_Rockjaw Bonepickers|r, |cRXP_ENEMY_Marauders|r and loot them for |cRXP_LOOT_Stolen Powder Kegs.|r
    .complete 26285,1 --7/7 Stolen Powder Keg
	.target Rockjaw Bonepicker
	.target Rockjaw Marauder
step
    #requires Area2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Kharmarn Palegrip.|r
    .goto 469,37.3,65.2
    .turnin 26284 >>Turn in Missing in Action
    .turnin 26285 >>Turn in Get Me Explosives Back!
    .accept 26318 >>Accept Finishin' the Job
	.target Kharmarn Palegrip
step
	#completewith next
	.goto 469,33.31,66.32,10 >>Enter the |cFFfa9602cave|r
step
    >>Kill |cRXP_ENEMY_Boss Bruggor|r and |TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Detonator.|r
    .goto 470,36.0,40.92
    .complete 26318,2 --1/1 Boss Bruggor slain
    .complete 26318,1 --1/1 Detonate trogg tunnel
	.target Boss Bruggor
step
    .goto 469,37.3,65.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kharmarn Palegrip|r |cFFfa9602outside the Cave.|r
    .turnin 26318 >>Turn in Finishin' the Job
    .accept 26329 >>Accept One More Thing
	.target Kharmarn Palegrip
step
    .goto 469,38.8,32.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkatorgue.|r
    .turnin 26329 >>Turn in One More Thing
    .accept 26331 >>Accept Crushcog's Minions
	.target High Tinker Mekkatorgue
step
    .goto 469,38.2,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hinkles Fastblast.|r
    .accept 26333 >>Accept No Tanks!
	.target Hinkles Fastblast
step
    .goto 469,53.78,25.15,40,0
    .goto 469,56.25,21.27,40,0		
    .goto 469,59.15,22.28,40,0
    .goto 469,56.95,25.95,40,0	
    .goto 469,53.78,25.15	
    >>Kill |cRXP_ENEMY_Irradiated Technicians|r and |cRXP_ENEMY_Crushcog Battle Suit Minions.|r
    >>Use the |T967530:0|t[Techno-Grenades] on |cRXP_ENEMY_Repaired Mechano-Tanks.|r
	.complete 26331,1 --8/8 Crushcog's Minions killed
    .complete 26333,1 --5/5 Repaired Mechano-Tanks destroyed
    .use 58200
	.target Rapaired Mechano-Tank
	.target Irradiated Technician
	.target Crushcog Battle Suit
step
    .goto 469,38.80, 32.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Tinker Mekkartorque.|r
    .turnin 26331 >>Turn in Crushcog's Minions
step
    .goto 469,38.21,33.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hinkles Fastblast.|r
    .turnin 26333 >>Turn in No Tanks!
	.target Hinkles Fastblast
step
    .goto 469,38.0,33.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelsey Steelspark.|r
    .accept 26339 >>Accept Staging in Brewnall
	.target Kelsey Steelspark
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carson Crazybread|r |cRXP_WARN_if you need to vendor and buy bags.|r
    .vendor
	.target Carson Crazybread
step
    .goto 469,48.7,52.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarvi Shadowstep.|r
    .turnin 26339 >>Turn in Staging in Brewnall
    .accept 26342 >>Accept Paint it Black
	.target Jarvi Shadowstep
step
    .goto 469,53.60,52.30,40,0
    .goto 469,56.46,52.03,30,0
    .goto 469,53.75,46.32,30,0
    .goto 469,53.6,52.3
    >>Use the |T967530:0|t[Paintinator] on |cRXP_ENEMY_Crushcog Sentry-Bots.|r
    .complete 26342,1 --5/5 Crushcog's Sentry Bot blinded
	.target Crushcog Sentry Bot
    .use 58203
step
    .isOnQuest 26342
    #completewith next
    .goto 469,67.77,36.55,30 >> Check for |cRXP_ENEMY_Timber(Rare)|r |cFFfa9602on the Eastern side of Iceflow Lake.|r
	.unitscan Timber
step
    .goto 469,48.7,52.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jarvi Shadowstep.|r
    .turnin 26342 >>Turn in Paint it Black
	.target Jarvi Shadowstep
]])

RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#subgroup Dwarf Starting Zones << Dwarf
#subgroup Gnome Starting Zones << Gnome
#name 3Retail-Alliance-Gnome,Dwarf_Dun Morogh
#displayname Chapter 2 - Dun Morogh << Gnome
#displayname Chapter 2 - Dun Morogh << Dwarf
#next RestedXP Alliance 10-60\1A_Elwynn Forest
#defaultfor Dwarf/Gnome

<<Alliance !DK

step << Gnome
    .goto 27,49.91,44.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ciara Deepstone.|r
    .accept 26380 >>Accept Bound for Kharanos
	.target Ciara Deepstone
step << Dwarf
    .goto 27,53.12,50.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharek Blackstone.|r
    .turnin 24493 >>Turn in Don't Forget About Us
	.target Tharek Blackstone
step
    .goto 27,53.93,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragnar Thunderbrew.|r
    .accept 384 >>Accept Beer Basted Boar Ribs
	.target Ragnar Thunderbrew
step << Gnome
    .goto 27,54.07,50.22,5,0
    .goto 27,54.49,50.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r |cFFfa9602inside the Inn.|r
    .turnin 26380,1 >>Turn in Bound for Kharanos 
	.target Innkeeper Belm
step
    .isOnQuest 384
    #completewith next
    .goto 27,54.07,50.22,5,0  
    .goto 27,54.29,50.26,5,0
    .goto 27,54.49,50.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm.|r
    .skipgossip 2
    .home >>Set your Hearthstone to Thunderbrew Distillery
	.target Innkeeper Belm
step
    .isOnQuest 384
    .goto 27,54.49,50.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Belm|r and buy a |T132800:0|t[Rhapsody Malt].
    .skipgossip 3
    .collect 2894,1
	.target Innkeeper Belm
step
    .line 27,54.74,50.81,54.82,50.62,54.74,50.58
    .goto 27,54.77,50.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gremlock Pilsnor.|r
    .accept 6387 >>Accept Honor Students
	.target Gremlock Pilsnor
step
    .isOnQuest 6387
    .goto 27,54.77,50.6
    .train 2550 >> Train Cooking from |cRXP_FRIENDLY_Gremlock Pilsnor.|r
	.target Gremlock Pilsnor
step
    .goto 27,54.51,50.72,5,0
    .goto 27,54.35,50.39,5,0
    .goto 27,54.07,50.25,5,0
    .goto 27,54.2,51.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rejold Barleybrew|r |cFFfa9602outside, next to the Inn.|r
    .accept 315 >>Accept The Perfect Stout
	.target Rejold Barleybrew
step
    .goto 27,53.8,52.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brolan Galebeard.|r
    .turnin 6387 >>Turn in Honor Students
    .accept 6391 >>Accept Ride to Ironforge
	.target Brolan Galebeard
step
    .goto 27,53.7,52.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tharran.|r
    .accept 25724 >>Accept Frostmane Aggression
	.target Captain Tharran
step
    #completewith next
    .goto 27,53.80,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wembil Taskwidget|r and train Herbalism.
    >>|cRXP_WARN_Mining and herbing earn XP. Gather only when resources are on your direct path.|r
    .skipgossip 1
    .gossipoption 38919 >> Herbalism Window
    .target Wembil Taskwidget
step
    .goto 27,53.80,51.94
    .train 2366 >> Train Herbalism
step
    .goto 27,53.80,51.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wembil Taskwidget|r and train Mining.
    >>|cRXP_WARN_Mining and herbing earn XP. Gather only when resources are on your direct path.|r
    --x shiek review: .skipgossip doesn't work here(troubleshoot)
    .train 2575 >> Train Mining
    --x.gossipoption 38987 >> Mining Window 2
    --x gossipoption 38858 >> Mining Window 1
    .target Wembil Taskwidget
step
    #completewith next
	>>Kill |cRXP_ENEMY_Crag Boars|r and loot them for their |T133972:0|t|cRXP_LOOT_Tender Boar Ribs.|r
    |cRXP_WARN_Progress steadily, but no need to rush because there is time later.|r
    .complete 384,1 --4/4 Tender Boar Ribs
	.mob Crag Boar
step
	.isOnQuest 25724
	.goto 27,51.14,40.51,25 >> Run |cFFfa9602up the ramp.|r
step
    #title RARE
    #completewith Great Father Arctikus
    .isOnQuest 25724,315
    .goto 27,49.06,37.13,30 >> Check for |cRXP_FRIENDLY_Great Father Arctikus|r |cFFfa9602in a Hut.|r
	.unitscan Great Father Arctikus
step
    #title PICK-UP / LOOT
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shimmerweed Baskets|r and loot |cRXP_ENEMY_Frostmane Seers|r for additional |T134184:0|t|cRXP_LOOT_Shimmerweed.|r
    .complete 315,1 --7/7 Shimmerweed
step
    #title KILL
    .goto 27,48.64,36.81,30,0
    .goto 27,47.70,39.50,30,0	
    .goto 27,49.87,39.92,30,0
    .goto 27,48.5,37.8	
    >>Kill |cRXP_ENEMY_Frostmane Snowstriders|r and |cRXP_ENEMY_Frostmane Seers.|r
    .complete 25724,2 --7/7 Frostmane Snowstrider slain
    .complete 25724,1 --5/5 Frostmane Seer slain
    .mob Frostmane Snowstrider
	.mob Frostmane Seer
step
    #title PICK-UP / LOOT
    .goto 27,48.64,36.81,30,0
    .goto 27,47.70,39.50,30,0	
    .goto 27,49.87,39.92,30,0
    .goto 27,48.5,37.8	
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shimmerweed Baskets|r and loot |cRXP_ENEMY_Frostmane Seers|r for additional |T134184:0|t|cRXP_LOOT_Shimmerweed.|r
    .complete 315,1 --7/7 Shimmerweed	
step
    #label Great Father Arctikus
    #title Deathskip
	#completewith next
	.goto 27,50.12,38.68,20 >> Die on the |cFFfa9602Eastern side of the camp.|r
step
    #completewith next
    >>|cRXP_WARN_1./sit increases your damage taken.|r
    >>|cRXP_WARN_2.Unequipping your gear increases your damage taken.|r
    .deathskip >> Die and respawn |cFFfa9602at Kharanos.|r
step
    .goto 27,53.7,52.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tharran.|r
    .turnin 25724 >>Turn in Frostmane Aggression
    .accept 313 >>Accept Forced to Watch from Afar
    .accept 25667 >>Accept Culling the Wendigos
	.target Captain Tharran
step
    .goto 27,53.70,52.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Glynna.|r
    .accept 25668 >>Accept Pilfered Supplies
	.target Quartermaster Glynna
step
    #title LOOT
    #completewith Cave Entrance
    >>Kill |cRXP_ENEMY_Crag Boars|r and loot them for their |T133972:0|t|cRXP_LOOT_Tender Boar Ribs.|r
    |cRXP_WARN_Completion here is ideal, but there's time to find boars later.|r
    .complete 384,1 --4/4 Tender Boar Ribs
	.mob Crag Boar
step
    #title KILL
    #completewith Edan the Howler
    >>Kill |cRXP_ENEMY_Wendigos|r
    .complete 25667,1 --10/10 Wendigo slain
	.mob Wendigo
	.mob Young Wendigo
step
    #title PICK-UP
    #completewith Edan the Howler
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Pilfered Supplies.|r 
    .complete 25668,1 --6/6 Pilfered Supplies
step
    #label Cave Entrance
    #title Cave Entrance
	.isOnQuest 25667,25668
	.goto 27,49.58,52.72,15,0
	.goto 27,49.32,51.66,20 >> Enter the |cFFfa9602Wendigo Cave.|r
step
    #title GOSSIP
    .goto 29,51.86,48.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Dunstan.|r
    .skipgossip
    .complete 313,1 --1/1 Convey orders to Mountaineer Dunstan
	.target Mountaineer Dunstan
step
    #title GOSSIP
    .goto 29,60.29,56.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Lewin.|r
    .skipgossip
    .complete 313,2 --1/1 Convey orders to Mountaineer Lewin
	.target Mountaineer Lewin
step
    #title GOSSIP
    .goto 29,61.55,22.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mountaineer Valgrum.|r
    .skipgossip
    .complete 313,3 --1/1 Convey orders to Mountaineer Valgrum
	.target Mountaineer Valgrum
step
    #title Chest
    .isOnQuest 25667,25668,313
    .goto 29,54.14,15.05,15,0
    .goto 29,34.33,36.68,20 >>Check for the |cRXP_PICK_Dark Iron Treasure Chest|r |cFFfa9602deeper in the Cave.|r
step
    #label Edan the Howler
    #title Rare
    .isOnQuest 25667,25668,313
    .goto 29,31.92,53.23,30 >>Check for |cRXP_ENEMY_Edan the Howler|r |cFFfa9602at the end of the Cave.|r 
	.unitscan Edan the Howler
step
    #title KILL
    #completewith next
    >>Kill |cRXP_ENEMY_Wendigos|r
    .complete 25667,1 --10/10 Wendigo slain
	.mob Wendigo
	.mob Young Wendigo
step
    #title PICK-UP
    .loop 20,29,31.92,53.23,34.33,36.68,61.55,22.25,60.29,56.20
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Pilfered Supplies.|r 
    .complete 25668,1 --6/6 Pilfered Supplies
step
    #title KILL
    .loop 20,29,31.92,53.23,34.33,36.68,61.55,22.25,60.29,56.20
    >>Kill |cRXP_ENEMY_Wendigos|r
    .complete 25667,1 --10/10 Wendigo slain
	.mob Wendigo
	.mob Young Wendigo
step
    #completewith next
    >>|cRXP_WARN_1./sit increases your damage taken.|r
    >>|cRXP_WARN_2.Unequipping your gear increases your damage taken.|r
    --x shiek review: think of additional things / formatting
    .deathskip >> Die and respawn |cFFfa9602at Kharanos.|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tharran|r and |cRXP_FRIENDLY_Quartermaster Glynna.|r
    .turnin 313 >>Turn in Forced to Watch from Afar
    .turnin 25667 >>Turn in Culling the Wendigos
    .accept 25792 >>Accept Pushing Forward
    .goto 27,53.7,52.2
    .turnin 25668 >>Turn in Pilfered Supplies
    .goto 27,53.70,52.10
	.target Captain Tharran
    .target Quartermaster Glynna
step
    .goto 27,53.26,51.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzle Sprysprocket.|r
    .accept 412 >>Accept Operation Recombobulation
	.target Razzle Sprysprocket
step
    #title LOOT
    #completewith Boars
    >>Kill |cRXP_ENEMY_Crag Boars|r and loot them for their |T133972:0|t|cRXP_LOOT_Tender Boar Ribs.|r
    >>|cRXP_WARN_You should really finish it soon to avoid wasting time.|r
    .complete 384,1 --4/4 Tender Boar Ribs
	.mob Crag Boar
step
    #completewith Chestss
    >>Kill |cRXP_ENEMY_Frostmane Scavengers|r and loot them for their |T134063:0|t|cRXP_LOOT_Gyromechanic Gears.|r
    .complete 412,1 --8/8 Gyromechanic Gear
	.mob Frostmane Scavenger
step
    .goto 27,56.7,56.44,10,0
    .goto 27,57.58,56.64,10,0
    .goto 27,58.18,57.43,10,0
    .goto 27,57.73,57.8,10,0
    .goto 27,57.67,58.83,10,0
    .goto 27,57.14,59.48,10,0
    >>Use |T134424:0|t[Rune of Fire] on Constriction Totems.
    .complete 25792,1 --4/4 Constriction Totems burned
    .use 56009
step
    #label Chestss
    .isOnQuest 25792
    .goto 27,57.39,57.76,15 >> Check for the |cRXP_PICK_Chest|r |cFFfa9602next to the Cannon.|r 
step
    #label Boars
    .loop 15,27,57.3,58.88,56.93,59.97,56.21,59.03,55.92,57.45,56.31,57.12
    >>Kill |cRXP_ENEMY_Frostmane Scavengers|r and loot them for their |T134063:0|t|cRXP_LOOT_Gyromechanic Gears.|r
    .complete 412,1 --8/8 Gyromechanic Gear
	.mob Frostmane Scavenger
step
    #title LOOT
    .loop 15,27,57.3,58.88,56.93,59.97,56.21,59.03,55.92,57.45,56.31,57.12
    >>Kill |cRXP_ENEMY_Crag Boars|r and loot them for their |T133972:0|t|cRXP_LOOT_Tender Boar Ribs.|r
    .complete 384,1 --4/4 Tender Boar Ribs
	.mob Crag Boar
step
    .goto 27,53.26,51.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzle Sprysprocket.|r
    .turnin 412 >>Turn in Operation Recombobulation
	.target Razzle Sprysprocket
step
    .goto 27,53.71,52.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Tharran.|r
    .turnin 25792,1,1 >>Turn in Pushing Forward
    .accept 25838 >>Accept Help from Steelgrill's Depot
	.target Captain Tharran
step
    .goto 27,54.19,51.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rejold Barleybrew.|r
    .turnin 315 >>Turn in The Perfect Stout
	.target Rejold Barleybrew
step
    .goto 27,53.94,50.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ragnar Thunderbrew.|r
    .turnin 384 >>Turn in Beer Basted Boar Ribs
	.target Ragnar Thunderbrew
step
    .goto 27,53.9,50.12,10,0
    .goto 27,56.83,47.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delber Cranktoggle.|r
    .turnin 25838 >>Turn in Help from Steelgrill's Depot
    .accept 25839 >>Accept The Ultrasafe Personnel Launcher
	.target Delber Cranktoggle
step
    .isOnQuest 25839
    .goto 27,56.73,46.59
    .vehicle >>Click the |cRXP_PICK_Ultrasafe Personnel Launcher.|r
    .timer 20, Flight RP
step
    .goto 27,62.5,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Slamp Wobblecog.|r
    .turnin 25839 >>Turn in The Ultrasafe Personnel Launcher
    .accept 25840 >>Accept Eliminate the Resistance
    .accept 25841 >>Accept Strike From Above
	.target Slamp Wobblecog
step
    .goto 27,62.55,53.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Snevik the Blade.|r
    .accept 28868 >>Accept The View from Down Here
	.target Snevik the Blade
step
    #completewith South Camp
    >>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_ENEMY_Frostmane Builder.|r
    .complete 28868,1 --5/5 Frostmane Builders shrunk
	.target Frostmane Builder
    .use 67249
    .mob Frostmane Builder
step
    #completewith South Camp
	>>Kill |cRXP_ENEMY_Battok the Berserker|r and |cRXP_ENEMY_Frostmane Warriors.|r
    .complete 25840,2 --5/5 Frostmane Warrior slain
	.mob Frostmane Warrior
step
    .isOnQuest 25841
    .goto 27,64.69,54.01,15 >>Check for a |cRXP_PICK_Chest|r |cFFfa9602near the Tents.|r
step
    .goto 27,64.57,54.19
    >>Use the |T133033:0|t[Signal Flare] in the |cFFfa9602Northern Camp.|r
    .complete 25841,1 --1/1 Attack on Northern Frostmane Retreat
    .use 56048
step
    .isOnQuest 25841
    .goto 27,63.64,56.1,10 >>Check for a |cRXP_PICK_Chest|r |cFFfa9602in Battok's Camp near the drums.|r
step
    #label South Camp
    .goto 27,63.15,57.22
    >>Kill |cRXP_ENEMY_Battok the Berserker|r
    >>Use the |T133033:0|t[Signal Flare] in the |cFFfa9602Sourthern Camp.|r
    .complete 25840,1 --1/1 Battok the Berserker slain
    .complete 25841,2 --1/1 Attack on Southern Frostmane Retreat
    .target Battok the Berserker
    .use 56048
step
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_ENEMY_Frostmane Builder.|r
    .complete 28868,1 --5/5 Frostmane Builders shrunk
    .use 67249
    .mob Frostmane Builder
step
    .loop 15,27,62.36,57.2,62.19,55.52,62.98,54.86,63.82,54.45
	>>Kill |cRXP_ENEMY_Frostmane Warriors.|r
    .complete 25840,2 --5/5 Frostmane Warrior slain
	.mob Frostmane Warrior
step
    .loop 15,27,62.36,57.2,62.19,55.52,62.98,54.86,63.82,54.45
    >>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_ENEMY_Frostmane Builder.|r
    .complete 28868,1 --5/5 Frostmane Builders shrunk
    .use 67249
    .mob Frostmane Builder
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Snevik the Blade|r and |cRXP_FRIENDLY_Slamp Wobblecog.|r
    .turnin 28868 >>Turn in The View from Down Here
    .goto 27,62.54,53.81
    .turnin 25840 >>Turn in Eliminate the Resistance
    .turnin 25841 >>Turn in Strike From Above
step 
    .hs >> Hearthstone to |cFFfa9602Thunderbrew Distillery.|r
step 
    .isQuestTurnedIn 32663
    #completewith next
    .vendor 1247 >>|cRXP_WARN_Sell as much as you can|r
step 
    .goto 27,54.26,50.27,10,0
    .goto 27,53.80,52.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brolan|r |cFFfa9602outside the Inn.|r
    .fly Ironforge >>Fly to Ironforge
	.target Brolan
step 
    .goto 87,51.92,29.47,10,0
    .goto 87,49.56,28.05,10,0	
	.goto 87,51.54,26.30	
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Golnir Bouldertoe.|r
    .turnin 6391 >>Turn in Ride to Ironforge
    .accept 6388 >>Accept Gryth Thurden
	.target Golnir Bouldertoe
step
    .goto 87,55.52,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden.|r
    .turnin 6388 >>Turn in Gryth Thurden
	.target Gryth Thurden
step
    #completewith next
    .goto 87,57.97,34.68,15,0
    .goto 87,62.84,29.74,20,0
    .goto 87,69.95,33.94,10,0
    .goto 87,71.37,45.83,15,0
    .goto 87,76.7,51.3,10,0
    .goto 499,66.61,34.72,250,0
    .goto 499,42.46,13.03
    .zone 84 >>Take the Deeprun Tram |cFFfa9602to Stormwind.|r
    >>|cRXP_WARN_You might have to wait for the train to arrive at the station.|r
    .nodmf
step
    .goto 84,64.97,34.53,10,0
    .goto 84,62.18,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hero's Herald.|r
    .accept 46727 >>Accept Tides of War
	.target Hero's Herald
step
    .goto 84,70.0,47.24,20,0
    .goto 84,68.54,51.37,20,0
    .goto 84,69.03,52.98,15,0
    .goto 84,67.45,57.19,25,0
    .goto 84,68.59,62.19,25,0
    .goto 84,66.03,64.49,25,0
    .goto 84,64.39,67.14,25,0
    .goto 84,63.89,72.21,35,0
    .goto 84,63.81,73.53,25,0
    .goto 84,63.78,73.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renato Gallina.|r
    .accept 332 >>Accept Wine Shop Advert
	.target Renato Gallina
    .nodmf
    .isOnQuest 46727
step
    .goto 84,67.45,80.52,25,0
    .goto 84,67.1,83.44,25,0
    .goto 84,69.69,84.78,25,0
    .goto 37,41.71,64.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartlett the Brave|r in |cFFfa9602Goldshire.|r
    .fp >>Get the Goldshire Flight Path
	.target Bartlett the Brave
    .nodmf
    .isOnQuest 46727
step
    #veteran
    .goto 87,26.02,72.35,5,0
    .goto 87,25.75,75.45
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost.|r You'll need to purchase |cRXP_WARN_certain items from the auction house to take full advantage of this.|r If necessary,|cRXP_WARN_you can transfer gold from your other characters to make these purchases.|r However, if you find that you can't afford everything, |cRXP_WARN_It's still worthwhile to visit the Darkmoon Faire for the temporary experience buff and to buy only some of the items.|r
    >>|cRXP_WARN_It is recommended to log in with a different character possessing at least 10,000 gold. Use this character to purchase the items and then send them over.|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Auctioneer Lympkin|r
    .collect 71715,1
    .collect 71638,1
    .collect 71637,1
    .collect 71636,1
    .collect 71635,1
    .collect 71952,1
    .collect 71951,1
    .collect 71953,1
    .collect 71716,1
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .dmf
step
    #fresh
    #completewith DarkMoonFaire
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost.|r
    .dmf
step
    #completewith next
    .link /run AbandonSkill(186); AbandonSkill(182);>> |cRXP_WARN_Click this text to receive a macro that will unlearn your professions.|r
    .dmf
step 
    #label DarkMoonFaire
    .goto 87,38.34,71.30,10,0
    .goto 87,44.67,58.81,20,0
    .goto 84,25.83,69.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hero's Herald.|r
    .accept 46727 >>Accept Tides of War
	.target Hero's Herald
    .dmf
step
    .goto 87,38.34,71.30,10,0
    .goto 87,44.67,58.81,20,0
    .goto 87,51.54,26.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage.|r
    .accept 7905 >>Accept The Darkmoon Faire
	.target Darkmoon Faire Mystic Mage
    .dmf
step
    .goto 87,51.54,26.30
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage.|r
    .zoneskip 37
    .skipgossip
	.target Darkmoon Faire Mystic Mage
    .dmf
]])
