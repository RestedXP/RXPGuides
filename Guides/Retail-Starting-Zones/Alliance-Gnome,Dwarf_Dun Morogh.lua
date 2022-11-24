RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Starting Zones
#subgroup Dwarf Starting Zones << Dwarf
#subgroup Gnome Starting Zones << Gnome
#name 3Retail-Alliance-Gnome,Dwarf_Dun Morogh
#displayname Chapter2-Gnome_Dun Morogh << Gnome
#displayname Chapter2-Dwarf_Dun Morogh << Dwarf
#next RestedXP Alliance 10-60\1A_Elwynn Forest
#defaultfor !DK 

<<Gnome/Dwarf

#next 
step << Gnome
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ciara Deepstone
    .goto 27,49.91,44.98
    .accept 26380 >>Accept Bound for Kharanos
	.target Ciara Deepstone
step << Dwarf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tharek Blackstone
    .goto 27,53.12,50.0
    .turnin 24493 >>Turn in Don't Forget About Us
	.target Tharek Blackstone
step 
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ragnar Thunderbrew
    .goto 27,53.93,50.68
    .accept 384 >>Accept Beer Basted Boar Ribs
	.target Ragnar Thunderbrew
step << Gnome
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Innkeeper Belm inside the Inn
    .goto 27,54.07,50.22,5,0
    .goto 27,54.49,50.85
    .turnin 26380,1 >>Turn in Bound for Kharanos 
	.target Innkeeper Belm
step 
    #completewith gremlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Innkeeper Belm
    .goto 27,54.07, 50.22,5,0
    .goto 27,54.49,50.85
    .home >>Set your Hearthstone to Thunderbrew Distillery
	.target Innkeeper Belm
step 
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Innkeeper Belm. Buy a Rhapsody Malt
    .goto 27,54.49,50.85
    .collect 2894,1
	.target Innkeeper Belm
step 
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gremlock Pilsnor
    .goto 27,54.73,50.81
    .accept 6387 >>Accept Honor Students
	.target Gremlock Pilsnor
step
	#label gremlock
    .train 2550 >> Train Cooking from Gremlock Pilsnor
    .goto 27,54.73,50.81
	.target Gremlock Pilsnor
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rejold Barleybrew outside beside the Inn
    .goto 27,54.35,50.39,5,0
    .goto 27,54.07,50.25,5,0
    .goto 27,54.2,51.17
    .accept 315 >>Accept The Perfect Stout
	.target Rejold Barleybrew
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brolan Galebeard
    .goto 27,53.8,52.76
    .turnin 6387 >>Turn in Honor Students
    .accept 6391 >>Accept Ride to Ironforge
	.target Brolan Galebeard
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Tharran
    .goto 27,53.7,52.2
    .accept 25724 >>Accept Frostmane Aggression
	.target Captain Tharran
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wembil Taskwidget
    >> Mining Ores and Herbing gives experience. Don't go out of your way to gather however, only when they are directly in your path.
    .goto 27,53.80,51.94
    .train 2366 >> Train Herbalism
    .train 2575 >> Train Mining
	.target Wembil Taskwidget
step
    #completewith next
	>>Kill Crag Boars. Loot them for their Ribs. You don't have to finish this now you will have time later
    .complete 384,1 --4/4 Tender Boar Ribs
	.target Crag Boar
step
	#completewith next
	.goto 27,51.14,40.51,25 >> Run up the ramp from here
step
    #completewith next
    .goto 27,49.06,37.13,20 >> Check for Great Father Arctikus (Rare) in a Hut
	.unitscan Great Father Arctikus	  	
step
    >>Kill Frostmane Snowstriders and Seers
	>>Loot Shimmerweed Baskets off the ground
	>>You will do a deathskip to Kharanos once finished
	.goto 27,48.64,36.81,30,0
	.goto 27,47.70,39.50,30,0	
	.goto 27,49.87,39.92,30,0
	.goto 27,48.5,37.8	
    .complete 25724,2 --7/7 Frostmane Snowstrider slain
    .complete 25724,1 --5/5 Frostmane Seer slain
    .complete 315,1 --7/7 Shimmerweed
	.target Frostmane Snowstrider
	.target Frostmane Seer
step
	#completewith next
	.goto 27,50.12,38.68,20 >> Die on the Eastern side of the camp
step
    #completewith next
    .deathskip >> Die and respawn at Kharanos
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Tharran
    .goto 27,53.7,52.2
    .turnin 25724 >>Turn in Frostmane Aggression
    .accept 313 >>Accept Forced to Watch from Afar
    .accept 25667 >>Accept Culling the Wendigos
	.target Captain Tharran
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Quartermaster Glynna
    .goto 27,53.70,52.10
    .accept 25668 >>Accept Pilfered Supplies
	.target Quartermaster Glynna
step
    #completewith next
	>>Kill Crag Boars. Loot them for their Ribs. You don't have to finish this now you will have time later
    .complete 384,1 --4/4 Tender Boar Ribs
	.target Crag Boar
step
	#completewith next
	.goto 27,49.30,51.85,20,0 
	.goto 29,61.94,83.98,10 >> Enter the Wendigo Cave
step
    #completewith Area1
    >>Kill Young Wendigo and Wendigo's
	>>Loot Pilfered Supplies on the ground
    .complete 25667,1 --10/10 Wendigo slain
    .complete 25668,1 --6/6 Pilfered Supplies
	.target Wendigo
	.target Young Wendigo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mountaineer Dunstan
    .goto 29,51.86,48.40
    .skipgossip
    .complete 313,1 --1/1 Convey orders to Mountaineer Dunstan
	.target Mountaineer Dunstan
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mountaineer Lewin
    .goto 29,60.29,56.20
    .skipgossip
    .complete 313,2 --1/1 Convey orders to Mountaineer Lewin
	.target Mountaineer Lewin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Mountaineer Valgrum
    .goto 29,61.55,22.25
    .skipgossip
    .complete 313,3 --1/1 Convey orders to Mountaineer Valgrum
	.target Mountaineer Valgrum
step
    .isOnQuest 25667
    >>Check for the Dark Iron Treasure Chest deeper in the Cave
    .goto 29,54.59,17.12,20,0
    .goto 29,45.89,24.24,20,0
    .goto 29,34.33,36.68,20
step
	#completewith dskip
    .isOnQuest 25667
    .goto 29,31.92,53.23,30 >> Check for Edan the Howler (Rare) at the end of the Cave
	.unitscan Edan the Howler
step
    >>Kill remaining Wendigo and Loot remaining Pilfered Supplies on the ground
	.goto 29,42.13,34.27,25,0
	.goto 29,55.81,14.90,25,0
	.goto 29,59.65,43.36,25,0
	.goto 29,51.36,68.17,25,0
	.goto 29,59.65,43.36,25,0
	.goto 29,55.81,14.90,25,0
	.goto 29,42.13,34.27		
    .complete 25667,1 --10/10 Wendigo slain
    .complete 25668,1 --6/6 Pilfered Supplies
	.target Wendigo
	.target Young Wendigo
step
	#label dskip
    #completewith next
    .deathskip >> Die and respawn at Kharanos
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Tharran
    .goto 27,53.7,52.2
    .turnin 313 >>Turn in Forced to Watch from Afar
    .turnin 25667 >>Turn in Culling the Wendigos
    .accept 25792 >>Accept Pushing Forward
	.target Captain Tharran
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Quartermaster Glynna
    .goto 27,53.70,52.10
    .turnin 25668 >>Turn in Pilfered Supplies
	.target Quartermaster Glynna
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Razzle Sprysprocket
    .goto 27,53.26,51.92
    .accept 412 >>Accept Operation Recombobulation
	.target Razzle Sprysprocket
step
    #completewith next
	>>Kill Crag Boars. Loot them for their Ribs
    .complete 384,1 --4/4 Tender Boar Ribs
	.target Crag Boar
step
    #completewith FinalTotem
    >>Kill Frostmane Scavengers. Loot them for their Gear
    .complete 412,1 --8/8 Gyromechanic Gear
	.target Frostmane Scavenger
step
    >>Use the Rune of Fire in your Bags to burn the Constriction Totems
    .use 56009
    .goto 27,56.7,56.43
    .complete 25792,1,1 --4/4 Constriction Totems burned
step
    >>Use the Rune of Fire in your Bags to burn the Constriction Totems
    .use 56009
    .goto 27,57.57,56.63
    .complete 25792,1,2 --4/4 Constriction Totems burned
step
    >>Use the Rune of Fire in your Bags to burn the Constriction Totems
    .use 56009
    .goto 27,58.19,57.43
    .complete 25792,1,3 --4/4 Constriction Totems burned
step
	#label FinalTotem
    >>Use the Rune of Fire in your Bags to burn the Constriction Totems
    .use 56009
    .goto 27,57.71,57.8
    .complete 25792,1,4 --4/4 Constriction Totems burned
step
	#completewith next
    .isOnQuest 25792
    .goto 27,57.39,57.76,10 >> Check for the Chest beside the Cannon    
step
	#completewith next
    >>Kill Frostmane Scavengers. Loot them for their Gear
	.goto 27,57.84,57.35,30,0
	.goto 27,56.44,59.52,30,0
	.goto 27,56.26,57.22
    .complete 412,1 --8/8 Gyromechanic Gear
	.target Frostmane Scavenger
step
	>>Kill Crag Boars. Loot them for their Ribs
	.goto 27,55.42,57.91,30,0
	.goto 27,54.91,59.79,30,0
	.goto 27,55.40,56.43
    .complete 384,1 --4/4 Tender Boar Ribs
	.target Crag Boar
step
    >>Kill Frostmane Scavengers. Loot them for their Gear
	.goto 27,57.84,57.35,30,0
	.goto 27,56.44,59.52,30,0
	.goto 27,56.26,57.22
    .complete 412,1 --8/8 Gyromechanic Gear
	.target Frostmane Scavenger
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Tharran
    .goto 27,53.71,52.2
    .turnin 25792,1 >>Turn in Pushing Forward
	.target Captain Tharran
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Razzle Sprysprocket
    .goto 27,53.26,51.92
    .turnin 412 >>Turn in Operation Recombobulation
	.target Razzle Sprysprocket
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Tharran
    .goto 27,53.7,52.2
    .accept 25838 >>Accept Help from Steelgrill's Depot
	.target Captain Tharran
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rejold Barleybrew
    .goto 27,54.19,51.17
    .turnin 315 >>Turn in The Perfect Stout
	.target Rejold Barleybrew
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ragnar Thunderbrew
    .goto 27,53.94,50.69
    .turnin 384 >>Turn in Beer Basted Boar Ribs
	.target Ragnar Thunderbrew
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Delber Cranktoggle
    .goto 27,56.83,47.1
    .turnin 25838 >>Turn in Help from Steelgrill's Depot
    .accept 25839 >>Accept The Ultrasafe Personnel Launcher
	.target Delber Cranktoggle
step << Gnome
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Binjy Featherwhistle
    .goto 27,56.27,46.42
    .xp <10,1
    .turnin 32663 >>Turn in Learn To Ride
	.train 33388 >> Train Apprentice Riding
    .skill riding,75  
	.target Binjy Featherwhistle
step << Gnome
    #fresh
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Milli Featherwhistle. Vendor all trash. Buy a Mechanostrider
    .goto 27,56.24,46.25
    .xp <10,1
    .vendor
	.target Milli Featherwhistle
step
    >>Click the Ultrasafe Personnel Launcher
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Slamp Wobblecog
    .goto 27,56.73,46.59,5,0
    .goto 27,62.5,53.71
    .turnin 25839 >>Turn in The Ultrasafe Personnel Launcher
    .accept 25840 >>Accept Eliminate the Resistance
    .accept 25841 >>Accept Strike From Above
	.target Slamp Wobblecog
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Snevik the Blade 
    .goto 27,62.55,53.81
    .accept 28868 >>Accept The View from Down Here
	.target Snevik the Blade
step
    #completewith Area99
    >>Check for a Chest in Battok's Camp near the Drum
	>>Kill Battok the Berserker and Frostmane Warriors
    .use 67249
    .complete 25840,1 --1/1 Battok the Berserker slain
    .complete 25840,2 --5/5 Frostmane Warrior slain
	.target Frostmane Warrior
	.target Battok the Berserker
step
    #completewith Area99
    >>Use the Viewpoint Equalizer in your Bags on Frostmane Builders
    .use 67249
    .complete 28868,1 --5/5 Frostmane Builders shrunk
	.target Frostmane Builder
step
    >>Check for a Chest near the Tents
    >>Use the Signal Flare in your Bags in the Northern Camp
    .goto 27,64.49,54.37
    .use 56048
    .complete 25841,1 --1/1 Attack on Northern Frostmane Retreat
step
    #label Area99
    >>Use the Signal Flare in your Bags in the Southern Camp
    .goto 27,63.15,57.22
    .use 56048
    .complete 25841,2 --1/1 Attack on Southern Frostmane Retreat
step
	#completewith next
	>>Kill Battok the Berserker and Frostmane Warriors
	.goto 27,63.78,55.74,30,0
	.goto 27,64.49,54.37,30,0
	.goto 27,63.15,57.22,30,0	
	.goto 27,63.78,55.74		
	.complete 25840,1 --1/1 Battok the Berserker slain
	.complete 25840,2 --5/5 Frostmane Warrior slain
	.target Frostmane Warrior
	.target Battok the Berserker	
step
	>>Use the Viewpoint Equalizer in your bags on Frostmane Builders
	.goto 27,62.66,55.19,25,0
	.goto 27,62.24,57.34,25,0
	.goto 27,64.76,55.00,25,0
	.goto 27,64.06,52.30,25,0	
	.goto 27,62.66,55.19						
    .complete 28868,1 --5/5 Frostmane Builders shrunk
	.use 67249
	.target Frostmane Builder
step
	>>Kill Battok the Berserker and Frostmane Warriors
	.goto 27,63.78,55.74,30,0
	.goto 27,64.49,54.37,30,0
	.goto 27,63.15,57.22,30,0	
	.goto 27,63.78,55.74		
	.complete 25840,1 --1/1 Battok the Berserker slain
	.complete 25840,2 --5/5 Frostmane Warrior slain
	.target Frostmane Warrior
	.target Battok the Berserker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Snevik the Blade
    .goto 27,62.54,53.81
    .turnin 28868 >>Turn in The View from Down Here
	.target Snevik the Blade
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Wobblecog
    .goto 27,62.49,53.70
    .turnin 25840 >>Turn in Eliminate the Resistance
    .turnin 25841 >>Turn in Strike From Above
    .accept 25882 >>Accept A Hand at the Ranch
	.target Wobblecog
step << Gnome 
    .hs >> Hearthstone to Thunderbrew Distillery
step << Gnome
    .isQuestTurnedIn 32663
    #completewith next
    .vendor 1247 >>Sell as much as you can
step << Gnome
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Binjy Featherwhistle
    .turnin 32663 >>Turn in Learn To Ride
    .goto 27,56.27,46.42
	.train 33388 >> Train Apprentice Riding
    .skill riding,75
	.target Binjy Featherwhistle
step << Gnome
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brolan outside the Inn
    .goto 27,54.26,50.27,10,0
    .goto 27,53.80,52.76
    .fly Ironforge >>Fly to Ironforge
	.target Brolan
step << Gnome 
    .goto 87,51.92,29.47,10,0
    .goto 87,49.56,28.05,10,0	
	.goto 87,51.54,26.30	
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Golnir Bouldertoe
    .turnin 6391 >>Turn in Ride to Ironforge
    .accept 6388 >>Accept Gryth Thurden
	.target Golnir Bouldertoe
step << Gnome 
    .goto 87,55.52,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryth Thurden
    .turnin 6388 >>Turn in Gryth Thurden
	.target Gryth Thurden
step << Dwarf
    .goto 27,70.41,48.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sergeant Flinthammer
    .turnin 25882 >>Turn in A Hand at the Ranch
    .accept 25932 >>Accept It's Raid Night Every Night
	.target Sergeant Flinthammer
step << Dwarf
    >>There is a quick roleplay before you can kill the Attackers. Talk to Veron and sell as much as you can in the meantime.
    #completewith next
    .goto 27,70.64,48.94
    .vendor 1261 >> Sell as much as you can
step << Dwarf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ultham
    #completewith next
    #level 10
    .goto 27,71.14,48.4
    .skill riding,75
    .turnin 32662 >>Turn in Learn To Ride
	.train 33388 >> Train Apprentice Riding
	.target Ultham
step << Dwarf
    >>Kill the Attackers
    .complete 25932,1 --1/1 Defend Amberstill Ranch
step << Dwarf
    .goto 27,70.41,48.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sergeant Flinthammer
    .turnin 25932 >>Turn in It's Raid Night Every Night
	.target Sergeant Flinthammer
step << Dwarf
    .goto 27,70.64,48.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Veron Amberstill
    .accept 25905 >>Accept Rams on the Lam
	.target Veron Amberstill
step << Dwarf
    >>Get close to a Ram and target it. We will automatically whistle for you.
    .emote WHISTLE,41539
    .goto 27,68.34,53.76
    .complete 25905,1 --6/6 Stolen Rams recovered
step << Dwarf
    .goto 27,70.64,48.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Veron Amberstill
    .turnin 25905 >>Turn in Rams on the Lam
	.target Veron Amberstill
step << Dwarf
    .goto 27,70.28,48.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rudra Amberstill
    .accept 314 >>Accept Protecting the Herd
	.target Rudra Amberstill
step << Dwarf
    >>Kill and loot Vagash
    .goto 27,69.79,48.51,10,0
    .goto 27,69.34,48.37,10,0
    .goto 27,69.71,44.45
    .complete 314,1 --1/1 Fang of Vagash
	.target Vagash
step << Dwarf
    .goto 27,70.28,48.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Rudra Amberstill
    .turnin 314,1 >>Turn in Protecting the Herd
	.target Rudra Amberstill
step << Dwarf
    #completewith next
    .hs >> Hearthstone to Thunderbrew Distillery
step << Dwarf
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Brolan
    .goto 27,54.35,50.39,5,0
    .goto 27,54.02,50.31,5,0
    .goto 27,53.80,52.76
    .fly Ironforge >>Fly to Ironforge
	.target Brolan
step << Dwarf 
    .goto 87,51.54,26.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Golnir Bouldertoe in the Building
    .turnin 6391 >>Turn in Ride to Ironforge
    .accept 6388 >>Accept Gryth Thurden
	.target Golnir Bouldertoe
step << Dwarf
    .goto 87,55.52,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gryth Thurden
    .turnin 6388 >>Turn in Gryth Thurden
	.target Gryth Thurden
step << Gnome/Dwarf
    .nodmf
    .zone 84 >>Take the Deeprun Tram to Stormwind
    .goto 87,57.97,34.68,15,0
    .goto 87,69.95,33.94,10,0
    .goto 87,76.7,51.3,10,0
    .goto 499,66.61,34.72,250,0
    .goto 499,42.46,13.03
step << Gnome/Dwarf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hero's Herald
    .goto 84,62.18,30.15
    .accept 46727 >>Accept Tides of War
	.target Hero's Herald
step <<Dwarf/Gnome
    #veteran
    .nodmf
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Renato
    .accept 332 >>Accept Wine Shop Advert
	.target Renato
step <<Dwarf/Gnome
    .nodmf
    .goto 84,70.0,47.24,20,0
    .goto 84,68.54,51.37,20,0
    .goto 84,67.45,57.19,25,0
    .goto 84,68.59,62.19,25,0
    .goto 84,66.03,64.49,25,0
    .goto 84,64.39,67.14,25,0
    .goto 84,63.89,72.21,35,0
    .goto 84,63.81,73.53,25,0
    .goto 84,67.45,80.52,25,0
    .goto 84,67.1,83.44,25,0
    .goto 84,69.69,84.78,25,0
    .goto 37,41.71,64.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bartlett in Goldshire
    .fp >>Get the Goldshire Flight Path
	.target Bartlett
step 
    .dmf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Hero's Herald
    .goto 87,38.34,71.30,10,0
    .goto 87,44.67,58.81,20,0
    .goto 84,25.83,69.97
    .accept 46727 >>Accept Tides of War
	.target Hero's Herald
step <<Dwarf/Gnome
    .dmf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Darkmoon Faire Mystic Mage
    .goto 87,38.34,71.30,10,0
    .goto 87,44.67,58.81,20,0
    .goto 87,51.54,26.30
    .accept 7905 >>Accept The Darkmoon Faire
	.target Darkmoon Faire Mystic Mage
step <<Dwarf/Gnome
    .dmf
    +Talk to the Darkmoon Faire Mystic Mage and press accept
    .goto 87,51.54,26.30
    .zoneskip 37
    .skipgossip
	.target Darkmoon Faire Mystic Mage
]])
