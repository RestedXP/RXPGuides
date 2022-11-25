RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Starting Zones
#subgroup Dwarf Starting Zones
#name 2Retail-Alliance-Dwarf_Coldridge Vallley
#displayname Chapter1-Dwarf_Coldridge Vallley
#next 3Retail-Alliance-Gnome,Dwarf_Dun Morogh
#defaultfor Dwarf

<<Alliance !DK

step
    #sticky
    #completewith DwarfExileCheck
    +Welcome to the Dwarf Starting Zone Guide of RestedXP.
    *Without consumables/heirlooms this route is roughly 5 minutes slower than Exiles Reach. For faster leveling recreate your character and choose Exiles Reach instead.
    *With consumables/heirlooms this route is just as fast
step
    #label DwarfExileCheck
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Joren Ironstock
    .goto 427,67.1,41.3
    .accept 24469 >>Accept Hold the Line!
	.target Joren Ironstock
step 
    >>Kill Rockjaw Invaders
	.goto 427,69.43,47.60,20,0
	.goto 427,66.75,51.59,20,0
	.goto 427,62.56,48.77,20,0
	.goto 427,58.51,48.00,20,0
	.goto 427,62.10,42.70,20,0
	.goto 427,69.43,47.60
    .complete 24469,1 --6/6 Rockjaw Invader slain
	.target Rockjaw Invader
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Joren Ironstock
    .turnin 24469 >> Turn in Hold the Line!
    .goto 427,67.1,41.3
	.target Joren Ironstock
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sten Stoutarm
    .goto 427,65.5,42.5
    .accept 24471 >>Accept Aid for the Wounded
	.target Sten Stoutarm
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Joren Ironstock
    .goto 427,67.1,41.3
    .turnin 24469 >>Turn in Hold the Line!
    .accept 24470 >>Accept Give 'em What-For
	.target Joren Ironstock
step
    #sticky
    #completewith aid
    +If you want to make the most of RXP; Press Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4
    *This will allow you to press a keybind to use a Quest Item rather than manually clicking it
step
	#completewith next
    >>Kill Rockjaw Goons
    .complete 24470,1 --3/3 Rockjaw Goon slain
	.target Rockjaw Goon
step
	#label aid
    >>Use Sten's First Aid Kit in your bags on Wounded Coldridge Mountaineers
	.goto 427,64.62,51.11,15,0
	.goto 427,59.58,47.34,15,0
	.goto 427,58.50,51.91,15,0
	.goto 427,66.19,58.14,15,0
	.goto 427,69.72,61.64,15,0
	.goto 427,74.53,52.43	
    .complete 24471,1 --4/4 Wounded Coldridge Mountaineers Aided
	.use 49743
	.target Wounded Coldridge Mountaineer	
step    
    >>Kill Rockjaw Goons
	.goto 427,64.62,51.11,20,0
	.goto 427,59.58,47.34,20,0
	.goto 427,58.50,51.91,20,0
	.goto 427,66.19,58.14,20,0
	.goto 427,69.72,61.64,20,0
	.goto 427,74.53,52.43
    .complete 24470,1 --3/3 Rockjaw Goon slain
	.target Rockjaw Goon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sten Stoutarm 
    .goto 427,65.5,42.5
    .turnin 24471 >>Turn in Aid for the Wounded
	.target Sten Stoutarm
step  
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Joren Ironstock
    .goto 427,67.16,41.3,
    .turnin 24470 >>Turn in Give 'em What-For
    .accept 24473 >>Accept Lockdown in Anvilmar
	.target Joren Ironstock
step
    .goto 427,60.6,21.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jona Ironstock. She patrols in circles around the fire
    .turnin 24473 >>Turn in Lockdown in Anvilmar
    .accept 24474 >>Accept First Things First: We're Gonna Need Some Beer
	.target Jona Ironstock
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grundel Harkin
    .goto 427,61.7,22.1
    .accept 24477 >>Accept Dwarven Artifacts
	.target Grundel Harkin			
step
    >>Loot the Casks and Tablets on the ground. The tablets can be scattered around more in the area
    .goto 427,68.2,27.9,10,0
    .goto 427,56.8,28.2,10,0
    .goto 427,39.9,28.3,10,0
    .goto 427,39.67,29.0,10,0
	.goto 427,32.74,31.33,10,0
	.goto 427,30.45,30.95,10,0
	.goto 427,25.92,30.10,10,0
	.goto 427,22.81,34.21,10,0
	.goto 427,27.19,37.55,10,0
	.goto 427,37.95,38.60
    .complete 24474,3 --1/1 Cask of Gnomenbrau
    .complete 24474,1 --1/1 Cask of Stormhammer Stout
    .complete 24474,1 --1/1 Cask of Stormhammer Stout
    .complete 24474,2 --1/1 Cask of Theramore Pale Ale
    .complete 24477,1 --1/1 Forgotten Dwarven Artifacts
step
    #completewith next
    .hs >> Hearthstone to Anvilmar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grundel Harkin
    .goto 427,61.7,22.0
    .turnin 24477 >>Turn in Dwarven Artifacts
    .accept 24486 >>Accept Make Hay While the Sun Shines
	.target Grundel Harkin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jona Ironstock. She patrols in circles around the fire
    .goto 427,62.2,19.5
    .turnin 24474 >>Turn in First Things First: We're Gonna Need Some Beer
    .accept 24475 >>Accept All the Other Stuff
	.target Jona Ironstock
step
    #completewith next
    >>Kill Rockjaw Scavengers. Loot them for their Artifacts
    .complete 24486,1 --5/5 Priceless Rockjaw Artifact
	.target Rockjaw Scavenger
step
    >>Kill Small Crag Boars and Ragged Young Wolves. Loot them for their Haunches and Hides
    .goto 427,54.14,41.39,60,0
    .goto 427,51.54,59.25,40,0
    .goto 427,45.80,49.46,40,0
    .goto 427,46.33,38.36,40,0
	.goto 427,39.53,42.56,40,0
	.goto 427,44.65,27.46,40,0
	.goto 427,52.12,37.47,40,0
	.goto 427,56.30,35.08,40,0
	.goto 427,47.28,57.04,40,0
	.goto 427,48.56,64.63,40,0
    .goto 427,54.14,41.39
    .complete 24475,1 --3/3 Boar Haunch
    .complete 24475,2 --4/4 Ragged Wolf Hide
step
    >>Kill Rockjaw Scavengers. Loot them for their Artifacts
    .goto 427,54.14,41.39,60,0
    .goto 427,51.54,59.25,40,0
    .goto 427,45.80,49.46,40,0
    .goto 427,46.33,38.36,40,0
    .goto 427,54.14,41.39
    .complete 24486,1 --5/5 Priceless Rockjaw Artifact
	.target Rockjaw Scavenger
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grundel Harkin
    .goto 427,61.7,22.0
    .turnin 24486 >>Turn in Make Hay While the Sun Shines
	.target Grundel Harkin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jona Ironstock. She patrols in circles around the fire
    .goto 427,62.2,19.5
    .turnin 24475 >>Turn in All the Other Stuff
    .accept 24487 >>Accept Whitebeard Needs Ye
	.target Jona Ironstock
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grelin Whitebeard
    .goto 427,42.72,62.23
    .turnin 24487 >>Turn in Whitebeard Needs Ye
    .accept 182 >>Accept The Troll Menace
	.target Grelin Whitebeard
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Apprentice Soren
    .goto 427,43.26,63.13
    .accept 24489 >>Accept Trolling for Information
	.target Apprentice Soren
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Felix Whindlebolt
    .goto 427,41.88,62.74
    .accept 3361 >>Accept A Refugee's Quandary
	.target Felix Whindlebolt
step
	#completewith finalfelix
    >>Kill Frostmane Troll Whelps throughout the Troll camps
    .complete 182,1 --10/10 Frostmane Troll Whelp slain
	.target Frostmane Troll Whelp	
step
	#completewith next
	.goto 427,20.87,67.39
    >>Walk into Soothsayer Mirim'Koa's hut. Don't move too far away. Kill Trolls while you wait for the roleplay
    .complete 24489,3 --1/1 Soothsayer Mirim'koa Scouted
    .unitscan Soothsayer Mirim'koa
step
    .goto 427,21.4,64.1
    >>Loot Felix's Box on the ground
    .complete 3361,1 --1/1 Felix's Box	
step
	.goto 427,20.87,67.39
    >>Walk into Soothsayer Mirim'Koa's hut. Don't move too far away. Kill Trolls while you wait for the roleplay
    .complete 24489,3 --1/1 Soothsayer Mirim'koa Scouted
    .unitscan Soothsayer Mirim'koa	
step
	#completewith next
	.goto 427,30.18,85.45
    >>Walk into Soothsayer Rikkari's hut. Don't move too far away. Kill Trolls while you wait for the roleplay
    .complete 24489,2 --1/1 Soothsayer Rikkari Scouted
    .unitscan Soothsayer Rikkari
step
    >>Loot Felix's Chest on the ground
    .goto 427,30.97,84.10
    .complete 3361,2 --1/1 Felix's Chest
step
	.goto 427,30.18,85.45
    >>Walk into Soothsayer Rikkari's hut. Don't move too far away. Kill Trolls while you wait for the roleplay
    .complete 24489,2 --1/1 Soothsayer Rikkari Scouted
    .unitscan Soothsayer Rikkari
step
	#completewith next
	.goto 427,49.11,81.59
    >>Walk close to Soothsayer Shi'kala. Don't move too far away. Kill Trolls while you wait for the roleplay
    .complete 24489,1 --1/1 Soothsayer Shi'kala Scouted
    .unitscan Soothsayer Shi'kala
step
	#label finalfelix
    >>Loot Felix's Bucket of Bolts on the ground
    .goto 427,49.1,80.4
    .complete 3361,3 --1/1 Felix's Bucket of Bolts
step
	.goto 427,49.11,81.59
    >>Walk close to Soothsayer Shi'kala. Don't move too far away. Kill Trolls while you wait for the roleplay
    .complete 24489,1 --1/1 Soothsayer Shi'kala Scouted
    .unitscan Soothsayer Shi'kala
step
	.goto 427,49.11,81.59,40,0
	.goto 427,30.18,85.45,40,0
	.goto 427,20.87,67.39,40,0
	.goto 427,49.11,81.59
    >>Kill Frostmane Troll Whelps throughout the Troll camps
    .complete 182,1 --10/10 Frostmane Troll Whelp slain
	.target Frostmane Troll Whelp
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Felix Whindlebolt
    .goto 427,42.0,63.8
    .turnin 3361 >>Turn in A Refugee's Quandary
	.target Felix Whindlebolt
step 
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Felix Whindlebolt
	.goto 427,42.0,63.8
    .vendor >> Vendor and buy bags if you need.
    .collect 4496,3
	.target Felix Whindlebolt
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grelin Whitebeard and Apprentice Soren
    .turnin 182 >>Turn in The Troll Menace
	.goto 427,42.72,62.23
    .turnin 24489 >>Turn in Trolling for Information
	.goto 427,43.23,63.10	
	.accept 218 >>Accept Ice and Fire
	.goto 427,42.72,62.23
	.target Grelin Whitebeard
	.target Apprentice Soren
step << Hunter
	#completewith next
	>>Drag |T132161:0|tCall Pet and |T132179:0|tPet Utility onto your Action Bars
	.goto 427,38.80,68.46,20,0
	.goto 427,35.36,66.98,40 >>Cast |T132164:0|tTame Beast on a Small Crag Boar to tame it
	.target Small Crag Boar
step
	#completewith next
	.goto 427,51.42,83.01,15 >> Enter the Troll Cave
step
    >>Kill Frostmane Blade's. Kill Frostmane Novice's, Grik'nir the Cold and the Wayward Fire Elemental all at the end of the Cave
    .goto 427,51.42,83.01,10,0
    .goto 428,76.49,32.10
    .complete 218,4 --6/6 Frostmane Blade slain
    .complete 218,3 --3/3 Frostmane Novice slain
    .complete 218,2 --1/1 Wayward Fire Elemental slain
    .complete 218,1 --1/1 Grik'nir the Cold slain
	.target Frostmane Blade
	.target Frostmane Novice
	.target Wayward Fire Elemental
	.target Grik'nir the Cold
step
    .goto 427,42.72,62.23
    >>Exit the Cave
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grelin Whitebeard
    .turnin 218 >>Turn in Ice and Fire
    .accept 24490 >>Accept A Trip to Ironforge
	.target Grelin Whitebeard
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hands Springsprocket
    .goto 427,87.52,44.47
    .turnin 24490 >>Turn in A Trip to Ironforge
    .accept 24491 >>Accept Follow that Gyro-Copter!
	.target Hands Springsprocket
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Milo Geartwinge
    .goto 427,69.85,44.02
    .turnin 24491 >>Turn in Follow that Gyro-Copter!
    .accept 24492 >>Accept Pack Your Bags
	.target Milo Geartwinge
step
    >>Loot the Wolf-Hide Cloaks, Leftover Boar Meat and Beer Barrel on the ground
    .complete 24492,2 --1/1 Ragged Wolf-Hide Cloak
	.goto 427,62.22,24.12
	.complete 24492,3 --1/1 Leftover Boar Meat
	.goto 427,62.13,23.56
	.complete 24492,1 --1/1 Coldridge Beer Flago
	.goto 427,62.50,23.43  
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jona Ironstock. She patrols in circles around the fire
    .goto 427,61.2,22.3
    .accept 24493 >>Accept Don't Forget About Us
	.target Jona Ironstock
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Milo Geartwinge
    .goto 427,69.8,44.0
    .turnin 24492 >>Turn in Pack Your Bags
	.target Milo Geartwinge
]])
