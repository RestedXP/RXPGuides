RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Starting Zones
#subgroup Gnome Starting Zones
#name 2Retail-Alliance-Gnome_New Tinkertown
#displayname Gnome_New Tinkertown
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
    >>Kill 6 Gnomes
    .goto 30,40.7,32.0
    .complete 27670,1 --6/6 Crazed Leper Gnome slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Nevin Twistwrench
    .goto 30,34.1,32.3
    .turnin 27670 >>Turn in Pinned Down
    .accept 28167 >>Accept Report to Carvo Blastbolt
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Carvo Blastbolt
    .goto 30,51.0,31.9
    .turnin 28167 >>Turn in Report to Carvo Blastbolt
    .accept 27671 >>Accept See to the Survivors
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
step
    >>Use the Teleport Beacon in your Bags on Survivors
    .use 62057
    .goto 30,53.18,29.39
    .complete 27671,1,2 --6/6 Survivors Rescued
step
    >>Use the Teleport Beacon in your Bags on Survivors
    .use 62057
    .goto 30,52.12,27.63
    .complete 27671,1,3 --6/6 Survivors Rescued
step
    >>Use the Teleport Beacon in your Bags on Survivors
    .use 62057
    .goto 30,52.67,23.18
    .complete 27671,1,4 --6/6 Survivors Rescued
step
    >>Use the Teleport Beacon in your Bags on Survivors
    .use 62057
    .goto 30,45.88,24.37
    .complete 27671,1,5 --6/6 Survivors Rescued
step
    #label QuestKeybindingsGnome
    >>Use the Teleport Beacon in your Bags on Survivors
    .use 62057
    .goto 30,47.63,30.00
    .complete 27671,1,6 --6/6 Survivors Rescued
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Carvo Blastbolt
    .goto 30,51.0,31.9
    .turnin 27671 >>Turn in See to the Survivors
    .accept 28169 >>Accept Withdraw to the Loading Room!
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gaffer Coilspring
    .goto 30,53.0,82.2
    .turnin 28169 >>Turn in Withdraw to the Loading Room!
    .accept 27635 >>Accept Decontamination
step
    >> Sit down by typing "/sit" before clicking the Sanitron 500. This lets you skip the roleplay.
    .goto 30,58.81,82.95
    .complete 27635,1 --1/1 Decontamination Process started
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Technician Braggle
    .goto 30,66.4,81.6
    .turnin 27635 >>Turn in Decontamination
    .accept 27674 >>Accept To the Surface
step
    >>Don't take the Elevator! Talk to Torben Zapblast
    .goto 30,67.3,84.2
    .complete 27674,1 --1/1 Speak to Torben Zapblast
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
step << Rogue
    .goto 469,38.0,33.6
    .turnin 26206 >>Turn in The Future of Gnomeregan 
    .accept 26423 >>Accept Meet the High Tinker 
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bipsi Frostflinger
    .goto 469,41.0,29.13
    .turnin 26197 >>Turn in The Future of Gnomeregan 
    .accept 26421 >>Accept Meet the High Tinker 
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to "Doc" Cogspin
    .turnin 26199 >>Turn in The Future of Gnomeregan 
    .accept 26422 >>Accept Meet the High Tinker 
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Alamar Grimm
    .goto 469,37.68,37.96
    .turnin 26202 >>Turn in The Future of Gnomeregan 
    .accept 26424 >>Accept Meet the High Tinker 
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Drill Seargent Steamcrank
    .goto 469,40.69,36.20
    .turnin 26203 >>Turn in The Future of Gnomeregan 
    .accept 26425 >>Accept Meet the High Tinker 
step << Monk
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Xi, Friend to the Small
    .goto 469,40.10,35.61
    .turnin 31135 >>Turn in The Future of Gnomeregan 
    .accept 31137 >>Accept Meet the High Tinker 
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Muffinus Chromebrew
    .turnin 41217 >>Turn in The Future of Gnomeregan 
    .accept 41218 >>Accept Meet the High Tinker 
    .goto 469,41.92,31.63
 step << Druid
    .turnin 41217 >>Turn in The Future of Gnomeregan 
    .accept 41218 >>Accept Meet the High Tinker 
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
step
    >>Don't move away from High Tinker Mekkartorque
    .goto 469,38.6,32.9
    .complete 26208,1 --1/1 Learn about Operation: Gnomeregan
    .timer 5, Mekkatorque Talks
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to High Tinker Mekkatorque
    .goto 469,38.6,32.9
    .turnin 26208 >>Turn in The Fight Continues
    .accept 26566 >>Accept A Triumph of Gnomish Ingenuity
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Engineer Grindspark
    .goto 469,40.6,28.1
    .turnin 26566 >>Turn in A Triumph of Gnomish Ingenuity
    .accept 26222 >>Accept Scrounging for Parts
step 
    >>Click the Spare Parts on the ground
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
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk Tock Sprysprocket
    .goto 469,39.2,26.6
    .accept 26264 >>Accept What's Left Behind
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Corporal Fizzwhistle
    .goto 469,38.2,40.2
    .accept 26265 >>Accept Dealing with the Fallout
step
    #completewith Area1
    >>Guide the Robot to the Dark Green Spots in the Green Lakes
    .complete 26205,1 --5/5 Clean up Toxic Geysers
step
    #completewith Area1
    >>Kill Living Contaminations
    .complete 26265,1 --6/6 Living Contamination slain
step
    >>Kill and loot Toxic Sludge 
    .goto 469,41.3,50.6
    .complete 26264,1 --6/6 Recovered Possession
step
    #label Area1
    .isOnQuest 26265
    >> Rares and Treasure Chests reward as much as 1 or 2 Quests!
    *Check for Gibblewit (Rare)
    .goto 469,40.58,45.54,20
step
    >>Guide the Robot to the Dark Green Spots in the Green Lakes
    .goto 469,41.3,50.6
    .complete 26205,1 --5/5 Clean up Toxic Geysers
step
    >>Kill Living Contaminations
    .goto 469,41.3,50.6
    .complete 26265,1 --6/6 Living Contamination slain
step
    #requires Area1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Corporal Fizzwhistle
    .goto 469,38.2,40.1
    .turnin 26265 >>Turn in Dealing with the Fallout
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Engineer Grindspark
    .goto 469,40.6,28.0
    .turnin 26205 >>Turn in A Job for the Multi-Bot
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tock Sprysprocket
    .goto 469,39.2,26.6
    .turnin 26264 >>Turn in What's Left Behind
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Tread Sparknozzle
    .goto 469,38.4,33.5
    .accept 26316 >>Accept What's Keeping Kharmarn?
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk Kharmarn Palegrip
    .goto 469,37.3,65.2
    .turnin 26316 >>Turn in What's Keeping Kharmarn?
    .accept 26284 >>Accept Missing in Action
    .accept 26285 >>Accept Get Me Explosives Back!
step << Hunter
    #completewith next
    +Tame a Boar
step
    #completewith next
    +Check in the camp for the Caverndeep Looter (Rare)
step
    #completewith Area2
    >>Kill and loot Rockjaw Bonepicker/Marauder
    .complete 26285,1 --7/7 Stolen Powder Keg
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
    >>Kill and loot Rockjaw Bonepicker/Marauder
    .complete 26285,1 --7/7 Stolen Powder Keg
step
    #requires Area2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk Kharmarn Palegrip
    .goto 469,37.3,65.2
    .turnin 26284 >>Turn in Missing in Action
    .turnin 26285 >>Turn in Get Me Explosives Back!
    .accept 26318 >>Accept Finishin' the Job
step
    >>Kill Boss Bruggor and Click on the Detonator in the Cave
    .goto 470,36.0,40.92
    .complete 26318,2 --1/1 Boss Bruggor slain
    .complete 26318,1 --1/1 Detonate trogg tunnel
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kharmarn Palegrip outside the Cave
    .goto 469,37.3,65.2
    .turnin 26318 >>Turn in Finishin' the Job
    .accept 26329 >>Accept One More Thing
step << Warlock
    #completewith next
    .hs >> use hearthstone
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to High Tinker Mekkatorgue
    .goto 469,38.8,32.7
    .turnin 26329 >>Turn in One More Thing
    .accept 26331 >>Accept Crushcog's Minions
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hinkles Fastblast
    .goto 469,38.2,33.7
    .accept 26333 >>Accept No Tanks!
step
    #completewith next
    >>Kill the Enemies in the Area while destroying the Tanks
    .complete 26331,1 --8/8 Crushcog's Minions killed
step
    >>Use the Techno-Grenades in your Bag on Rapaired Mechano-Tank
    .use 58200
    .goto 469,59.5,21.6
    .complete 26333,1 --5/5 Repaired Mechano-Tanks destroyed
step
    #label Area3
    >>Kill the Enemies in the Area
    .goto 469,54.7,20.9
    .complete 26331,1 --8/8 Crushcog's Minions killed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to High Tinker Mekkartorque
    .goto 469,38.80, 32.73
    .turnin 26331 >>Turn in Crushcog's Minions
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hinkles Fastblast
    .goto 469,38.21,33.67
    .turnin 26333 >>Turn in No Tanks!
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Kelsey Steelspark
    .goto 469,38.0,33.6
    .accept 26339 >>Accept Staging in Brewnall
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk Carson Crazybread, vendor and buy bags if you need
    .vendor
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jarvi Shadowstep
    .goto 469,48.7,52.9
    .turnin 26339 >>Turn in Staging in Brewnall
    .accept 26342 >>Accept Paint it Black
step
    >>Use the Paintinator in your Bags on Crushcog Sentry Bot
    .use 58203
    .goto 469,53.6,52.3
    .complete 26342,1 --5/5 Crushcog's Sentry Bot blinded
step
    .isOnQuest 26342
    >> Kill Timber (Rare)
    .goto 469,67.77,36.55,20
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jarvi Shadowstep
    .goto 469,48.7,52.9
    .turnin 26342 >>Turn in Paint it Black
]]) 
