RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Starting Zones
#subgroup Gnome Starting Zones
#name 2Retail-Alliance-Gnome_New Tinkertown
#displayname Chapter1-Gnome_New Tinkertown
#next 3Retail-Alliance-Gnome,Dwarf_Dun Morogh
#defaultfor Gnome

<<Alliance !DK

step
    #sticky
    #completewith GnomeExileCheck
    +Welcome to the Draenei Starting Zone Guide of RestedXP.
    *Without consumables/heirlooms this route is roughly 5 minutes slower than Exiles Reach. For faster leveling recreate your character and choose Exiles Reach instead.
    *With consumables/heirlooms this route is just as fast
step
    #label GnomeExileCheck
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nevin Twistwrench
    .goto 30,34.1,32.2
    .accept 27670 >>Accept Pinned Down
step
    >>Kill Gnomes
    .goto 30,40.7,32.0
    .complete 27670,1 --6/6 Crazed Leper Gnome slain
	.target Crazed Leper Gnome
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nevin Twistwrench
    .goto 30,34.1,32.3
    .turnin 27670 >>Turn in Pinned Down
    .accept 28167 >>Accept Report to Carvo Blastbolt
	.target Nevin Twistwrench
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Carvo Blastbolt
    .goto 30,51.0,31.9
    .turnin 28167 >>Turn in Report to Carvo Blastbolt
    .accept 27671 >>Accept See to the Survivors
	.target Carvo Blastbolt
step
    #sticky
    #completewith QuestKeybindingsGnome
    +If you want to make the most of RXP; Press Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4
    *This will allow you to press a keybind to use a Quest Item rather than manually clicking it
step
    >>Use the Teleport Beacon in your Bags on Survivors
    .use 62057
    .goto 30,50.07,30.68
    .complete 27671,1,1 --6/6 Survivors Rescued
	.target Survivor
step
    >>Use the Teleport Beacon in your Bags on Survivors
    .use 62057
    .goto 30,53.18,29.39
    .complete 27671,1,2 --6/6 Survivors Rescued
	.target Survivor
step
    >>Use the Teleport Beacon in your Bags on Survivors
    .use 62057
    .goto 30,52.12,27.63
    .complete 27671,1,3 --6/6 Survivors Rescued
	.target Survivor
step
    >>Use the Teleport Beacon in your Bags on Survivors
    .use 62057
    .goto 30,52.67,23.18
    .complete 27671,1,4 --6/6 Survivors Rescued
	.target Survivor
step
    >>Use the Teleport Beacon in your Bags on Survivors
    .use 62057
    .goto 30,45.88,24.37
    .complete 27671,1,5 --6/6 Survivors Rescued
	.target Survivor
step
    #label QuestKeybindingsGnome
    >>Use the Teleport Beacon in your Bags on Survivors
    .use 62057
    .goto 30,47.63,30.00
    .complete 27671,1,6 --6/6 Survivors Rescued
	.target Survivor
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Carvo Blastbolt
    .goto 30,51.0,31.9
    .turnin 27671 >>Turn in See to the Survivors
    .accept 28169 >>Accept Withdraw to the Loading Room!
	.target Carvo Blastbolt
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gaffer Coilspring
    .goto 30,53.0,82.2
    .turnin 28169 >>Turn in Withdraw to the Loading Room!
    .accept 27635 >>Accept Decontamination
	.target Gaffer Coilspring
step
    >> Sit down by typing "/sit" before clicking the Sanitron 500. This lets you skip the roleplay.
    .goto 30,58.81,82.95
    .complete 27635,1 --1/1 Decontamination Process started
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Technician Braggle
    .goto 30,66.4,81.6
    .turnin 27635 >>Turn in Decontamination
    .accept 27674 >>Accept To the Surface
	.target Technician Braggle
step
    >>Don't take the Elevator! Talk to Torben Zapblast
    .goto 30,67.3,84.2
    .complete 27674,1 --1/1 Speak to Torben Zapblast
	.target Torben Zapblast
	.skipgossip
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nevin Twistwrench
    .goto 469,39.5,38.4
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kelsey Steelspark
    .goto 469,38.0,33.6
    .turnin 26206 >>Turn in The Future of Gnomeregan 
    .accept 26423 >>Accept Meet the High Tinker
	.target Kelsey Steelspark
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bipsi Frostflinger
    .goto 469,41.0,29.13
    .turnin 26197 >>Turn in The Future of Gnomeregan 
    .accept 26421 >>Accept Meet the High Tinker
	.target Bipsi Frostflinger
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to "Doc" Cogspin
    .turnin 26199 >>Turn in The Future of Gnomeregan 
    .accept 26422 >>Accept Meet the High Tinker
	.target "Doc" Cogspin
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alamar Grimm
    .goto 469,37.68,37.96
    .turnin 26202 >>Turn in The Future of Gnomeregan 
    .accept 26424 >>Accept Meet the High Tinker
	.target Alamar Grimm
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Drill Seargent Steamcrank
    .goto 469,40.69,36.20
    .turnin 26203 >>Turn in The Future of Gnomeregan 
    .accept 26425 >>Accept Meet the High Tinker
	.target Drill Seargent Steamcrank
step << Monk
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Xi, Friend to the Small
    .goto 469,40.10,35.61
    .turnin 31135 >>Turn in The Future of Gnomeregan 
    .accept 31137 >>Accept Meet the High Tinker 
	.target Xi, Friend to the Small
step << Hunter/Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Muffinus Chromebrew
    .turnin 41217 >>Turn in The Future of Gnomeregan 
    .accept 41218 >>Accept Meet the High Tinker 
    .goto 469,41.92,31.63
	.target Muffinus Chromebrew
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to High Tinker Mekkatorque then wait 5 seconds
    .goto 469,38.8,32.7
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
    >>Don't move away from High Tinker Mekkartorque
    .goto 469,38.6,32.9
    .complete 26208,1 --1/1 Learn about Operation: Gnomeregan
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to High Tinker Mekkatorque
    .goto 469,38.6,32.9
    .turnin 26208 >>Turn in The Fight Continues
    .accept 26566 >>Accept A Triumph of Gnomish Ingenuity
	.target High Tinker Mekkatorque
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Engineer Grindspark
    .goto 469,40.6,28.1
    .turnin 26566 >>Turn in A Triumph of Gnomish Ingenuity
    .accept 26222 >>Accept Scrounging for Parts
	.target Engineer Grindspark
step 
    >>Loot the Spare Parts on the ground
    .goto 469,39.2,24.4,20,0
    .goto 469,38.45,29.62,20,0
    .goto 469,39.87,31.67,20,0
    .goto 469,40.6,28.1
    .complete 26222,1 --7/7 Spare Part
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Engineer Grindspark
    .goto 469,40.6,28.0
    .turnin 26222 >>Turn in Scrounging for Parts
    .accept 26205 >>Accept A Job for the Multi-Bot
	.target Engineer Grindspark
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk Tock Sprysprocket
    .goto 469,39.2,26.6
    .accept 26264 >>Accept What's Left Behind
	.target Tock Sprysprocket
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Corporal Fizzwhistle
    .goto 469,38.2,40.2
    .accept 26265 >>Accept Dealing with the Fallout
	.target Corporal Fizzwhistle
step
    #completewith next
    >>Kill Living Contaminations and Toxic Sludges. Loot Sludges for their Possessions
    .complete 26265,1 --6/6 Living Contamination slain
    .complete 26264,1 --6/6 Recovered Possession
step
    >>Guide the Robot to the Dark Green Spots in the Green Lakes
	.goto 469,39.99,41.80,20,0
	.goto 469,42.13,44.89,20,0
	.goto 469,41.35,51.48,20,0
	.goto 469,37.08,50.49,20,0
	.goto 469,38.17,46.14
    .complete 26205,1 --5/5 Clean up Toxic Geysers	
step
    .goto 469,40.99,43.12,30,0
	.goto 469,40.70,48.90,30,0
	.goto 469,40.87,52.40,30,0
	.goto 469,37.89,46.34,30,0
	.goto 469,40.54,45.48
    >>Kill Living Contaminations and Toxic Sludges. Loot Sludges for their Possessions
    .complete 26265,1 --6/6 Living Contamination slain
    .complete 26264,1 --6/6 Recovered Possession
step
    #completewith next
    .goto 469,40.58,45.54,20 >> Old World Enemy Rares and Treasure Chests reward as much as 1 or 2 Quests!
    >> Check for Gibblewit (Rare) in the center of The Toxic Airfield
	.unitscan Gibblewit
step
    #requires Area1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Corporal Fizzwhistle
    .goto 469,38.2,40.1
    .turnin 26265 >>Turn in Dealing with the Fallout
	.target Corporal Fizzwhistle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Engineer Grindspark
    .goto 469,40.6,28.0
    .turnin 26205 >>Turn in A Job for the Multi-Bot
	.target Engineer Grindspark
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tock Sprysprocket
    .goto 469,39.2,26.6
    .turnin 26264 >>Turn in What's Left Behind
	.target Tock Sprysprocket
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Tread Sparknozzle
    .goto 469,38.4,33.5
    .accept 26316 >>Accept What's Keeping Kharmarn?
	.target Captain Tread Sparknozzle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk Kharmarn Palegrip
    .goto 469,37.3,65.2
    .turnin 26316 >>Turn in What's Keeping Kharmarn?
    .accept 26284 >>Accept Missing in Action
    .accept 26285 >>Accept Get Me Explosives Back!
	.target Kharmarn Palegrip
step
    #completewith next
    .goto 469,40.58,45.54,20 >> Check for Caverndeep Looter (Rare) who patrols around the camp
	.unitscan Caverndeep Looter	   
step
    #completewith Area2
    >>Kill Rockjaw Bonepickers and Marauders. Loot them for their Powder Kegs
    .complete 26285,1 --7/7 Stolen Powder Keg
	.target Rockjaw Bonepicker
	.target Rockjaw Marauder
step
    >>Right Click on the Cage
    .goto 469,36.6,68.34
    .complete 26284,1,1 --6/6 Captured Demolitionists rescued
step
    >>Right Click on the Cage 
    .goto 469,38.05,68.80
    .complete 26284,1,2 --6/6 Captured Demolitionists rescued
step
    >>Right Click on the Cage 
    .goto 469,37.91,72.33
    .complete 26284,1,3 --6/6 Captured Demolitionists rescued
step
    >>Right Click on the Cage 
    .goto 469,38.70,74.13
    .complete 26284,1,4 --6/6 Captured Demolitionists rescued
step
    >>Right Click on the Cage 
    .goto 469,40.65,74.36
    .complete 26284,1,5 --6/6 Captured Demolitionists rescued
step
    #label Area2
    >>Right Click on the Cage 
    .goto 469,41.07,69.77
    .complete 26284,1,6 --6/6 Captured Demolitionists rescued
step
    .goto 469,36.6,68.34
    >>Kill Rockjaw Bonepickers and Marauders. Loot them for their Powder Kegs
    .complete 26285,1 --7/7 Stolen Powder Keg
	.target Rockjaw Bonepicker
	.target Rockjaw Marauder
step
    #requires Area2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk Kharmarn Palegrip
    .goto 469,37.3,65.2
    .turnin 26284 >>Turn in Missing in Action
    .turnin 26285 >>Turn in Get Me Explosives Back!
    .accept 26318 >>Accept Finishin' the Job
	.target Kharmarn Palegrip
step
	#completewith next
	.goto 469,33.31,66.32,10 >>Enter the cave
step
    >>Run to the end of the cave. Kill Boss Bruggor and Right Click on the Detonator
    .goto 470,36.0,40.92
    .complete 26318,2 --1/1 Boss Bruggor slain
    .complete 26318,1 --1/1 Detonate trogg tunnel
	.target Boss Bruggor
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kharmarn Palegrip outside the Cave
    .goto 469,37.3,65.2
    .turnin 26318 >>Turn in Finishin' the Job
    .accept 26329 >>Accept One More Thing
	.target Kharmarn Palegrip
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to High Tinker Mekkatorgue
    .goto 469,38.8,32.7
    .turnin 26329 >>Turn in One More Thing
    .accept 26331 >>Accept Crushcog's Minions
	.target High Tinker Mekkatorgue
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hinkles Fastblast
    .goto 469,38.2,33.7
    .accept 26333 >>Accept No Tanks!
	.target Hinkles Fastblast
step << Hunter
    #completewith next
	>>Drag |T132161:0|tCall Pet and |T132179:0|tPet Utility onto your Action Bars
	.goto 469,45.59,38.02,30,0
	.goto 469,54.65,30.77,60 >>Cast |T132164:0|tTame Beast on a Young Snow Leopard to tame it
	.target Young Snow Leopard
step
    >>Kill the Irradiated Technicians and Crushcog Battle Suit Minions
    >>Use the Techno-Grenades in your Bag on Rapaired Mechano-Tanks
	.goto 469,53.78,25.15,40,0
	.goto 469,56.25,21.27,40,0		
	.goto 469,59.15,22.28,40,0
	.goto 469,56.95,25.95,40,0	
	.goto 469,53.78,25.15	
	.complete 26331,1 --8/8 Crushcog's Minions killed
    .complete 26333,1 --5/5 Repaired Mechano-Tanks destroyed
    .use 58200
	.target Rapaired Mechano-Tank
	.target Irradiated Technician
	.target Crushcog Battle Suit
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to High Tinker Mekkartorque
    .goto 469,38.80, 32.73
    .turnin 26331 >>Turn in Crushcog's Minions
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hinkles Fastblast
    .goto 469,38.21,33.67
    .turnin 26333 >>Turn in No Tanks!
	.target Hinkles Fastblast
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kelsey Steelspark
    .goto 469,38.0,33.6
    .accept 26339 >>Accept Staging in Brewnall
	.target Kelsey Steelspark
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk Carson Crazybread. Vendor and buy bags if you need
    .vendor
	.target Carson Crazybread
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jarvi Shadowstep
    .goto 469,48.7,52.9
    .turnin 26339 >>Turn in Staging in Brewnall
    .accept 26342 >>Accept Paint it Black
	.target Jarvi Shadowstep
step
    >>Use the Paintinator in your Bags on Crushcog Sentry-Bots
    .goto 469,53.60,52.30,40,0
	.goto 469,56.46,52.03,30,0
	.goto 469,53.75,46.32,30,0
	.goto 469,53.6,52.3
	.use 58203
    .complete 26342,1 --5/5 Crushcog's Sentry Bot blinded
	.target Crushcog Sentry Bot
step
    .isOnQuest 26342
    #completewith next
    .goto 469,67.77,36.55,30 >> Check for Timber (Rare) on the Eastern side of Iceflow Lake. It is a Wolf
	.unitscan Timber
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jarvi Shadowstep
    .goto 469,48.7,52.9
    .turnin 26342 >>Turn in Paint it Black
	.target Jarvi Shadowstep
]])
