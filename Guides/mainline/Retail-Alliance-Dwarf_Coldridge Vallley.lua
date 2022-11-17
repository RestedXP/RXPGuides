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
step 
    >>Kill Rockjaw Invaders in the area
    .goto 427,66.92,48.00
    .complete 24469,1 --6/6 Rockjaw Invader slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Joren Ironstock
    .turnin 24469 >> Turn in Hold the Line!
    .goto 427,67.1,41.3
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sten Stoutarm
    .goto 427,65.5,42.5
    .accept 24471 >>Accept Aid for the Wounded
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Joren Ironstock
    .goto 427,67.1,41.3
    .turnin 24469 >>Turn in Hold the Line!
    .accept 24470 >>Accept Give 'em What-For
step
    #sticky
    #completewith Area1
    +If you want to make the most of RXP; Press Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4
    *This will allow you to press a keybind to use a Quest Item rather than manually clicking it
step
    #sticky
    #label Area1
    >>Use the First Aid Kit in your bag on kneeling Wounded Coldridge Mountaineers
    .use 49743
    .goto 427,65.77,57.34
    .complete 24471,1 --4/4 Wounded Coldridge Mountaineers Aided
step    
    >>Kill Rockjaw Goons in the Area
    .goto 427,65.77,57.34
    .complete 24470,1 --3/3 Rockjaw Goon slain
step
    #requires Area1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sten Stoutarm 
    .goto 427,65.5,42.5
    .turnin 24471 >>Turn in Aid for the Wounded
step  
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Joren Ironstock
    .goto 427,67.16,41.3,
    .turnin 24470 >>Turn in Give 'em What-For
    .accept 24473 >>Accept Lockdown in Anvilmar
step
    .goto 427,60.6,21.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jona Ironstock she patrols in circles around the fire
    .turnin 24473 >>Turn in Lockdown in Anvilmar
    .accept 24474 >>Accept First Things First: We're Gonna Need Some Beer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grundel Harkin
    .goto 427,61.7,22.1
    .accept 24477 >>Accept Dwarven Artifacts
step
    #completewith next
    >>Click the Tablets on the Ground
    .complete 24477,1 --1/1 Forgotten Dwarven Artifacts
step 
    >>Click on the Barrels of Ale
    .goto 427,68.2,27.9,10,0
    .goto 427,56.8,28.2,10,0
    .goto 427,39.9,28.3,10,0
    .goto 427,39.67,29.0
    .complete 24474,3 --1/1 Cask of Gnomenbrau
    .complete 24474,1 --1/1 Cask of Stormhammer Stout
    .complete 24474,1 --1/1 Cask of Stormhammer Stout
    .complete 24474,2 --1/1 Cask of Theramore Pale Ale
step
    >>Click the Tablets on the Ground
    .goto 427,68.2,27.9,10,0
    .goto 427,56.8,28.2,10,0
    .goto 427,39.9,28.3,10,0
    .goto 427,39.67,29.0
    .complete 24477,1 --1/1 Forgotten Dwarven Artifacts
step
    #completewith next
    .hs >> Use Hearthstone
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grundel Harkin
    .goto 427,61.7,22.0
    .turnin 24477 >>Turn in Dwarven Artifacts
    .accept 24486 >>Accept Make Hay While the Sun Shines
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jona Ironstock
    .goto 427,62.2,19.5
    .turnin 24474 >>Turn in First Things First: We're Gonna Need Some Beer
    .accept 24475 >>Accept All the Other Stuff
step
    #completewith next
    >>Kill and loot Rockjaw Scavengers
    .complete 24486,1 --5/5 Priceless Rockjaw Artifact
step
    >>Kill and loot Boars and Wolfs in the area
    .goto 427,54.14,41.39,60,0
    .goto 427,51.54,59.25,40,0
    .goto 427,45.80,49.46,40,0
    .goto 427,46.33,38.36,40,0
    .goto 427,54.14,41.39
    .complete 24475,1 --3/3 Boar Haunch
    .complete 24475,2 --4/4 Ragged Wolf Hide
step
    >>Kill and loot Rockjaw Scavengers
    .goto 427,53.29,44.64
    .complete 24486,1 --5/5 Priceless Rockjaw Artifact
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grundel Harkin
    .goto 427,61.7,22.0
    .turnin 24486 >>Turn in Make Hay While the Sun Shines
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jona Ironstock 
    .turnin 24475 >>Turn in All the Other Stuff
    .accept 24487 >>Accept Whitebeard Needs Ye
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grelin Whitebeard
    .goto 427,42.72,62.23
    .turnin 24487 >>Turn in Whitebeard Needs Ye
    .accept 182 >>Accept The Troll Menace
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Apprentice Soren
    .goto 427,43.26,63.13
    .accept 24489 >>Accept Trolling for Information
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Felix Whindlebolt
    .goto 427,41.88,62.74
    .accept 3361 >>Accept A Refugee's Quandary
step
    #sticky
    #label mirimkoa
    >>Trigger the Roleplay infront Soothsayer Mirim'Koa in the hut don't move too far away. Do other objectives while you wait.
    .complete 24489,3 --1/1 Soothsayer Mirim'koa Scouted
    .unitscan Soothsayer Mirim'koa
step
    #completewith next
    >>Kill 3-4 trolls in this camp before moving on.
    .complete 182,1 --10/10 Frostmane Troll Whelp slain
step
    .goto 427,21.4,64.1
    >>Click the Box on the ground
    .complete 3361,1 --1/1 Felix's Box
step
    #sticky
    #requires mirimkoa
    #label rikkari
    >>Trigger the Roleplay infront Soothsayer Rikkari in the hut don't move too far away. Do other objectives while you wait.
    .complete 24489,2 --1/1 Soothsayer Rikkari Scouted
    .unitscan Soothsayer Rikkari
step
    #completewith next
    >>Kill a few more trolls on the way
    .complete 182,1 --10/10 Frostmane Troll Whelp slain
step
    >>Click the Chest on the ground
    .goto 427,30.9,83.7
    .complete 3361,2 --1/1 Felix's Chest
step
    #sticky
    #requires rikkari
    #label shikala
    >>Trigger the Roleplay infront Soothsayer Shi'kala but don't move too far awway. Do other objectives while you wait.
    .complete 24489,1 --1/1 Soothsayer Shi'kala Scouted
    .unitscan Soothsayer Shi'kala
step
    >>Click the Box on the Ground
    .goto 427,49.1,80.4
    .complete 3361,3 --1/1 Felix's Bucket of Bolts
step
    >>Finish them!! 
    .goto 427,49.1,80.4
    .complete 182,1 --10/10 Frostmane Troll Whelp slain
step
    #requires shikala
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Felix Whindlebolt
    .goto 427,42.0,63.8
    .turnin 3361 >>Turn in A Refugee's Quandary
step 
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Felix Whindlebolt. 
    .vendor >> Vendor and buy bags if you need.
    .collect 4496,3
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grelin Whitebeard and Apprentice Soren
    .turnin 182 >>Turn in The Troll Menace
    .accept 218 >>Accept Ice and Fire
    .goto 427,42.72,62.23
    .turnin 24489 >>Turn in Trolling for Information
    .goto 427,43.2,63.1
step
    >>Go into the cave and slaughter trolls and the Fire Elemental in the back of the cave.
    *Novices only spawn in the back near Grik'nir.
    .goto 427,51.42,83.01,10,0
    .goto 428,76.49,32.10
    .complete 218,4 --6/6 Frostmane Blade slain
    .complete 218,3 --3/3 Frostmane Novice slain
    .complete 218,2 --1/1 Wayward Fire Elemental slain
    .complete 218,1 --1/1 Grik'nir the Cold slain
step
    .goto 427,42.72,62.23
    >>Go outside the Cave and Talk to Grelin Whitebeard
    .turnin 218 >>Turn in Ice and Fire
    .accept 24490 >>Accept A Trip to Ironforge
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hands Springsprocket
    .goto 427,87.52,44.47
    .turnin 24490 >>Turn in A Trip to Ironforge
    .accept 24491 >>Accept Follow that Gyro-Copter!
step << Hunter
    #completewith next
    +Tame a Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Milo Geartwinge
    .goto 427,69.85,44.02
    .turnin 24491 >>Turn in Follow that Gyro-Copter!
    .accept 24492 >>Accept Pack Your Bags
step
    >>Go into the bunker and click the Crate
    .goto 427,62.2,24.0
    .complete 24492,2 --1/1 Ragged Wolf-Hide Cloak
step
    >>Click the Meat on the Table
    .goto 427,62.14,23.57  
    .complete 24492,3 --1/1 Leftover Boar Meat
step
    >>Click the Barrel
    .goto 427,62.45,23.47  
    .complete 24492,1 --1/1 Coldridge Beer Flago
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jona Ironstock
    .goto 427,61.2,22.3
    .accept 24493 >>Accept Don't Forget About Us
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Milo Geartwinge
    .goto 427,69.8,44.0
    .turnin 24492 >>Turn in Pack Your Bags
]])
