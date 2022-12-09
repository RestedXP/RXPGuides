RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Starting Zones
#subgroup Worgen Starting Zones
#displayname Worgen_Gilneas
#name 2Retail-Alliance-Worgen_Gilneas
#next RestedXP Alliance 10-60\1A_Elwynn Forest

<<Worgen !DK

step
    #sticky
    #completewith WorgenExileCheck
    +Welcome to the Draenei Starting Zone Guide of RestedXP.
    *Without consumables/heirlooms this route is roughly 5 minutes slower than Exiles Reach. For faster leveling recreate your character and choose Exiles Reach instead.
    *With consumables/heirlooms this route is just as fast
step
    #label WorgenExileCheck
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Prince Liam Greymane
    .goto 202,59.1,23.8
    .accept 14078 >>Accept Lockdown!
	.target Prince Liam Greymane
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the corpse of Lieutenant Walden
    .goto 202,56.86,17.89,15,0
    .goto 202,54.6,16.7
    .turnin 14078 >>Turn in Lockdown!
    .accept 14091 >>Accept Something's Amiss
	.target Lieutenant Walden
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Prince Liam Greymane
    .goto 202,59.8,22.2
    .turnin 14091 >>Turn in Something's Amiss
    .accept 14093 >>Accept All Hell Breaks Loose
    .accept 14098 >>Accept Evacuate the Merchant Square
	.target Prince Liam Greymane
step
    #completewith Area1
    >>Kill Rampaging Worgen in the Area
    .complete 14093,1 --6/6 Rampaging Worgen slain
	.target Rampaging Worgen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gwen Armstead
    .goto 202,59.7,26.8
    .accept 14094 >>Accept Salvage the Supplies
	.target Gwen Armstead
step
    #completewith next
    >>Loot Salvaged Supplies from the ground in the Area
    .complete 14094,1 --4/4 Salvaged Supplies
step
    #label Area1
    >>Click on the Doors to Evacuate the Homes
    .goto 202,63.19,31.69,15,0
    .goto 202,63.13,34.72,15,0
    .goto 202,55.03,26.53
    .complete 14098,1 --3/3 Market Homes Evacuated
step
	>>Kill Rampaging Worgen and Loot Salvaged Supplies from the ground in the Area
    .goto 202,63.19,31.69,15,0
    .goto 202,63.13,34.72,15,0
    .goto 202,55.03,26.53
    .complete 14094,1 --4/4 Salvaged Supplies
    .complete 14093,1 --6/6 Rampaging Worgen slain
	.target Rampaging Worgen
step
    #requires Area1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gwen Armstead
    .goto 202,59.6,26.8
    .turnin 14094 >>Turn in Salvage the Supplies
	.target Gwen Armstead
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Prince Liam Greymane
    .goto 202,59.8,22.2
    .turnin 14093 >>Turn in All Hell Breaks Loose
    .turnin 14098 >>Turn in Evacuate the Merchant Square
	.target Prince Liam Greymane
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Liam Greymane
    .goto 202,59.9,22.1
    .accept 14099 >>Accept Royal Orders
	.target Liam Greymane
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gwen Armstead
    .goto 202,70.8,55.1
    .turnin 14099 >>Turn in Royal Orders
    .accept 14275 >>Accept Someone's Keeping Track of You << Hunter
    .accept 14265 >>Accept Your Instructur << Warrior
    .accept 14280 >>Accept The Winds Know Your Name  << Druid
    .accept 14269 >>Accept Someone's Looking for you << Rogue
    .accept 14278 >>Accept Seek the Sister << Priest
    .accept 14273 >>Accept Shady Associates << Warlock
	.target Gwen Armstead
step
    #completewith next
    .vendor >> Talk to Marie Allen beside you. Vendor and buy bags if you need
	.target Marie Allen
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Huntsman Blake
    .goto 202,71.5,61.3 
    .turnin 14275 >>Turn in Someone's Keeping Track of You
    .accept 14290 >>Accept Safety in Numbers
	.target Huntsman Blake
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Celestine of the Harvest
    .goto 202,70.18,65.88 
    .turnin 14280 >> Turn in The Winds Know Your Name
    .accept 14291 >> Accept Safety in Numbers
	.target Celestine of the Harvest
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Seargent Cleese
    .goto 202,67.52,64.36 
    .turnin 14275 >>Turn in Your Instructur 
    .accept 14286 >>Accept Safety in Numbers 
    .accept 14280 >>Turn in the winds know your name
	.target Seargent Cleese
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Loren the Fence
    .goto 202,71.41,65.74 
    .turnin 14269 >>Turn in Someone's Looking for you 
    .accept 14285 >>Accept Safety in Numbers
	.target Loren the Fence
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Loren the Fence
    .goto 202,71.41,65.74 
    .turnin 14269 >>Seek the Sister
    .accept 14285 >>Accept Safety in Numbers
	.target Loren the Fence
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Vitus Darkwalker
    .goto 202,71.42, 64.41 
    .turnin 14273 >>Shady Associatees
    .accept 14287 >>Accept Safety in Numbers
	.target Vitus Darkwalker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to King Genn Greymane
    .goto 202,65.8,77.7
    .turnin 14290 >>Turn in Safety in Numbers << Hunter
    .turnin 14291 >>Turn in Safety in Numbers << Druid
    .turnin 14288 >>Turn in Safety in Numbers << Mage
    .turnin 14286 >>Turn in Safety in Numbers << Warrior
    .turnin 14287 >>Turn in Safety in Numbers << Warlock
    .turnin 14285 >>Turn in Safety in Numbers << Rogue
    .accept 14157 >>Accept Old Divisions
	.target King Genn Greymane
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Godfrey
    .goto 202,65.3,77.6
    .accept 24930 >>Accept While You're At It
	.target Lord Godfrey
step
    #completewith next
	>>Kill Bloodfang Worgen
    .complete 24930,1 --5/5 Bloodfang Worgen slain
	.target Bloodfang Worgen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Captain Broderick inside the fort
    .goto 202,58.86,71.20,10,0
    .goto 202,57.9,75.6
    .turnin 14157 >>Turn in Old Divisions
    .accept 28850 >>Accept The Prison Rooftop
	.target Captain Broderick
step
	>>Go Up the Spiral Staircase
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Darius Crowley
    .goto 202,55.21, 62.88
    .turnin 28850 >>Turn in The Prison Rooftop
    .accept 14154 >>Accept By the Skin of His Teeth
	.target Lord Darius Crowley
step
    >>Use Disengage to land on the small House roof, alternatively walk downstairs. Ignore the event for now. << Hunter 
    >>Walk downstairs. Ignore the event for now. << !Hunter 
	>>Kill Bloodfang Worgen
	.goto 202,57.43,69.82,15,0
	.goto 202,59.54,63.46,15,0
	.goto 202,61.79,67.46,15,0
	.goto 202,57.43,69.82
    .complete 24930,1 --5/5 Bloodfang Worgen slain
	.target Bloodfang Worgen
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Godfrey
    .goto 202,65.3,77.6
    .turnin 24930 >>Turn in While You're At It
	.target Lord Godfrey
step
    >>Kill Enemies downstairs and then go back upstairs before the buff runs out. Just grinding exp until the event is ready.
    .complete 14154,1
step
    #requires Area99
	>>Go Up the Spiral Staircase
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Darius Crowley 
    .goto 202,55.22,62.86 
    .turnin 14154 >>Turn in By the Skin of His Teeth
    .accept 26129 >>Accept Brothers In Arms
	.target Lord Darius Crowley
step
    >>Use Disengage to land on the small House roof or walk downstairs <<Hunter 
    >>Walk Downstairs << !Hunter 
    .goto 202,65.8,77.7
    .turnin 26129 >>Turn in Brothers In Arms
    .accept 14159 >>Accept The Rebel Lord's Arsenal
step
    >>Click on the Cellar door to enter it
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Josiah Avery
    .goto 202,61.44,82.38,20,0
    .goto 202,56.11,81.47,5,0
    .goto 202,56.8,85.5
    .turnin 14159 >>Turn in The Rebel Lord's Arsenal
	.target Josiah Avery
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lorna Crowley
    .goto 202,56.8,81.3
    .accept 14204 >>Accept From the Shadows
	.target Lorna Crowley
step
    #completewith next
    +If you want to make the most of RXP; Press Escape -> Options -> Keybindings -> RestedXP Guides -> Select and Bind Active Button 1,2,3 and 4
    *This will allow you to press a keybind to use a Quest Item rather than manually clicking it
step
    >>Kill 6 Bloodfang Lurkers. They are stealthed in the Area upstairs
    .goto 202,54.04,81.06,15,0
	.goto 202,50.48,76.82,15,0
	.goto 202,47.40,80.25,15,0
	.goto 202,51.25,83.82,15,0
	.goto 202,50.48,76.82
    .use 48707 >> If you lose your Gilnean Mastiff you can resummon it. Use the Mastiffs ability "Attack Lurker" to help locating them if needed. It will appear above your action bars
    .goto 202,52.6,83.6
    .complete 14204,1 --6/6 Bloodfang Lurker slain
	.target Bloodfang Lurker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lorna Crowley
    .goto 202,56.9,81.4
    .turnin 14204 >>Turn in From the Shadows
    .accept 14214 >>Accept Message to Greymane
	.target Lorna Crowley
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Genn Greymane
    .goto 202,59.2,83.7
    .turnin 14214 >>Turn in Message to Greymane
    .accept 14293 >>Accept Save Krennan Aranas
	.target Genn Greymane
step
	>>Use Rescue Krennan (1) to to save him once the horse arrives
    >>After you have saved him leave the vehicle and die
    .goto 202,66.0,62.2
    .complete 14293,1 --1/1 Krennan Aranas rescued
	.target Krennan Aranas
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Godfrey
    .goto 202,55.7,80.8
    .turnin 14293 >>Turn in Save Krennan Aranas
    .accept 14294 >>Accept Time to Regroup
	.target Lord Godfrey
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Genn Greymane
    .goto 202,30.4,73.2
    .turnin 14294 >>Turn in Time to Regroup
	.target Genn Greymane
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Darius Crowley
    .goto 202,31.1,72.3
    .accept 14212 >>Accept Sacrifices
	.target Lord Darius Crowley
step
    >>Mount Crowley's Horse. Use Throw Torch (1) on Bloodfang Stalkers
    .goto 202,25.3,43.9
    .complete 14212,1 --30/30 Bloodfang Stalker rounded up
	.target Bloodfang Stalker
step
    >>By Starting a new WoW Client and relogging you get thrown of the Horse and die this will save time
    >>Alternatively you can just wait until the Horse is done riding you around
    #completewith next 
    .deathskip >> Pull as many Enemies as you can, Die and Respawn at the Graveyard
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tobias Mistmantle
    .goto 202,40.5,39.4
    .turnin 14212 >>Turn in Sacrifices
    .accept 14218 >>Accept By Blood and Ash
	.target Tobias Mistmantle
step
    >>Right Click the Rebel Cannon
    >>Use Rebel Cannon (1) to Kill Bloodfang Stalkers
    .goto 202,40.13,36.52
    .complete 14218,1 --80/80 Bloodfang Stalker slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Tobias Mistmantle
    .goto 202,40.6,39.4
    .turnin 14218 >>Turn in By Blood and Ash
    .accept 14221 >>Accept Never Surrender, Sometimes Retreat
	.target Tobias Mistmantle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Daruius Crowley inside the Church
    .goto 202,48.9,52.8
    .turnin 14221 >>Turn in Never Surrender, Sometimes Retreat
    .accept 14222 >>Accept Last Stand
	.target Lord Daruius Crowley
step
    >>Kill Frenzied Stalkers
    .goto 202,46.9,49.2
    .complete 14222,1 --8/8 Frenzied Stalker slain
	.target Frenzied Stalker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Daruius Crowley
    .goto 202,48.9,52.8
    .turnin 14222 >>Turn in Last Stand
	.target Lord Daruius Crowley
step
    >>Wait for the roleplay to finish and then Talk to Genn Greymane
    .goto 179,36.4,61.3
    .turnin 14375 >>Turn in Last Chance at Humanity
	.target Genn Greymane
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Godfrey
    .goto 179,36.5,62.3
    .accept 14313 >>Accept Among Humans Again
	.target Lord Godfrey
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Krennan Aranas
    .goto 179,37.4,63.2
    .turnin 14313 >>Turn in Among Humans Again
    .accept 14320 >>Accept In Need of Ingredients
	.target Krennan Aranas
step
	#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jack "All Trades" Derrington
    .goto 179,37.36,63.19
    .train 2366 >> Train |T4620675:0|tHerbalism
	.skipgossip 50247,1,1,1
	.target Jack "All Trades" Derrington
step
    .goto 179,37.36,63.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jack "All Trades" Derrington
    .train 2575 >> Train |T4620679:0|tMining
	.skipgossip 50247,2,3,2
	.target Jack "All Trades" Derrington
step
    #completewith next
    +Herbing and Mining Ores gives Experience. Only do this when the herbs/ores are right next to you	
step
    >>Click the Crate of Mandrake Essence
    .goto 179,32.8,66.4
    .turnin 14320 >>Turn in In Need of Ingredients
step
    #label MiningWorgen
    >>Click to the Slain Watchman
	>>If he is not giving a quest type /reload in chat
    .goto 179,32.76,66.15
    .accept 14321 >>Accept Invasion
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gwen Armstead
    .goto 179,37.41,63.34
    .turnin 14321 >>Turn in Invasion
    .accept 14336 >>Accept Kill or Be Killed
	.target Gwen Armstead
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Prince Liam Greymane
    .goto 179,35.7,67.0
    .turnin 14336 >>Turn in Kill or Be Killed
    .accept 14347 >>Accept Hold the Line
    .accept 14348 >>Accept You Can't Take 'Em Alone
	.target Prince Liam Greymane
step
    #completewith next
    >>Kill Forsaken Invaders
    .complete 14347,1 --10/10 Forsaken Invader slain
	.target Forsaken Invader
step
    #label Area98
    .use 49202 >>Loot the Gunpowder Barrels in the Area. Throw them at the Horrid Abominations
    .goto 179,35.76,67.23,30,0
    .goto 179,36.99,69.29,30,0
    .goto 179,33.89,67.86,50,0
    .goto 179,35.76,67.23
    .collect 49202,4,14348,1,-1
    .complete 14348,1 --4/4 Gunpowder thrown at Abominations
	.target Forsaken Invader
	.target Horrid Abomination
step
    >> Finish killing Undead in the area
    .goto 179,35.76,67.23,30,0
    .goto 179,36.99,69.29,30,0
    .goto 179,33.89,67.86,50,0
    .goto 179,35.76,67.23
    .complete 14347,1 --10/10 Forsaken Invader slain
	.target Forsaken Invader
step
    #requires Area98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gwen Armstead
    .goto 179,35.7,66.7
    .turnin 14347 >>Turn in Hold the Line
    .turnin 14348,1 >>Turn in You Can't Take 'Em Alone
    .accept 14366 >>Accept Holding Steady
	.target Gwen Armstead
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gwen Armstead
    .goto 179,37.4,63.34
    .turnin 14366 >>Turn in Holding Steady
    .accept 14367 >>Accept The Allens' Storm Cellar
	.target Gwen Armstead
step 
    >>Go into the Cellar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Godfrey
    .goto 179,28.44,64.28,5,0
    .goto 179,28.97,63.92
    .turnin 14367 >>Turn in The Allens' Storm Cellar
    .accept 14369 >>Accept Unleash the Beast
    .accept 14382 >>Accept Two By Sea
	.target Lord Godfrey
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Melinda Hammond
    .goto 179,28.93,64.03
    .accept 14368 >>Accept Save the Children!
	.target Melinda Hammond
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Ashley in the House upstairs
    .goto 179,27.83,66.18,2,0
    .goto 179,28.20,66.25,2,0
    .goto 179,27.89,66.65
    .complete 14368,2 --1/1 Ashley rescued
	.target Ashley
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to James next to the house
    .goto 179,28.5,66.8
    .complete 14368,3 --1/1 James rescued
	.target James
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Cynthia in the Field near the Scarecrow
    .goto 179,29.6,69.32
    .complete 14368,1 --1/1 Cynthia rescued
	.target Cynthia
step
	#completewith lastboat
    >>Kill Forsaken Sailors and Soldiers
    .complete 14369,1 --8/8 Forsaken Combatant slain
	.target Forsaken Sailor
	.target Forsaken Soldier
step
    >>Kill a Forsaken Machinest and mount their Forsaken Catapult 
    >>Use Launch (1) on the ship closest to you. The Captain is in the lowest level of the ship
	>>Kill Captain Anson
    .goto 179,28.39,71.96,50,0
    .goto 179,23.77,74.71
    .complete 14382,1 --1/1 Captain Anson slain
	.target Captain Anson
	.target Forsaken Machinest
step
	#label lastboat
    >>Kill Forsaken Machinests and mount their Forsaken Catapult 
    >>Use Launch (1) on the ship closest to you. The Captain is in the lowest level of the ship
	>>Kill Captain Morris
    .goto 179,25.06,72.07,50,0
    .goto 179,26.85,79.33
    .complete 14382,2 --1/1 Captain Morris slain
	.target Captain Morris
	.target Forsaken Machinest
step
    >>Kill Forsaken Sailors and Soldiers
    .goto 179,25.06,72.07,30,0
    .goto 179,26.85,79.33
    .complete 14369,1 --8/8 Forsaken Combatant slain
	.target Forsaken Sailor
	.target Forsaken Soldier
step 
    #completewith next
    .deathskip >> Pull as many Enemies as you can, Die and Respawn at the Graveyard
step
    >>Go into the Cellar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Melinda Hammond
    .goto 179,28.43,64.25,5,0
    .goto 179,28.9,64.0
    .turnin 14368 >>Turn in Save the Children!
	.target Melinda Hammond
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Godfrey
    .goto 179,28.97,63.92
    .turnin 14369 >>Turn in Unleash the Beast
    .turnin 14382 >>Turn in Two By Sea
    .accept 14386 >>Accept Leader of the Pack
	.target Lord Godfrey
step
    >>Use the Mastiff Whistle in your Bags to summon the Attack Mastiff. Kill Dark Ranger Thyala
    .use 49240
    .goto 179,23.48,67.54
    .complete 14386,1 --1/1 Dark Ranger Thyala slain
	.target Kill Dark Ranger Thyala
step
    >>Go back into the Cellar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Godfrey
    .goto 179,29.0,63.9
    .turnin 14386 >>Turn in Leader of the Pack
    .accept 14396 >>Accept As the Land Shatters
	.target Lord Godfrey
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Prince Liam Greymane 
    .goto 179,29.0,65.05
    .turnin 14396 >>Turn in As the Land Shatters
    .accept 14395 >>Accept Gasping for Breath
	.target Prince Liam Greymane
step
    >>Go into the Water and Click the Drowning Watchman in the Area and bring him back to Prince Liam
    .goto 179,28.54,66.88,20,0
    .goto 179,29.0,65.05,10,0
    .goto 179,28.54,66.88,20,0
    .goto 179,29.0,65.05,10,0
    .goto 179,28.54,66.88,20,0
    .goto 179,29.0,65.05,10,0
    .goto 179,28.54,66.88,20,0
    .goto 179,29.0,65.05,10,0
    .goto 179,28.54,66.88,20,0
    .goto 179,29.0,65.05
    .complete 14395,1 --4/4 Drowning Watchman rescued
	.target Drowning Watchman
	.target Prince Liam
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Prince Liam Greymane
    .goto 179,29.03,65.05
    .turnin 14395,1 >>Turn in Gasping for Breath
    .accept 14397 >>Accept Evacuation
	.target Prince Liam
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gwen Armstead
    .goto 179,37.6,65.2
    .turnin 14397 >>Turn in Evacuation
    .accept 14398 >>Accept Grandma Wahl
    .accept 14406 >>Accept The Crowley Orchard
    .accept 14403 >>Accept The Hayward Brothers
	.target Gwen Armstead
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lorna Crowley
    .goto 179,37.7,72.8
    .turnin 14406 >>Turn in The Crowley Orchard
    .accept 14416 >>Accept The Hungry Ettin
	.target Lorna Crowley
step
    >>Mount a Riding Horse. Use Round Up Horse (1) to make other Mountain Horses follow you. Return them all to Lorna
    .goto 179,39.49,77.07,30,0
	.goto 179,37.7,72.7
    .complete 14416,1 --5/5 Mountain Horse rescued
	.target Mountain Horse
	.target Lorna
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lorna Crowley
    .goto 179,37.7,72.7
    .turnin 14416 >>Turn in The Hungry Ettin
	.target Lorna Crowley
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grandma Wahl
    .goto 179,32.5,75.5
    .turnin 14398 >>Turn in Grandma Wahl
    .accept 14399 >>Accept Grandma's Lost It Alright
	.target Grandma Wahl
step
    >>Click the Linen-Wrapped Books
    .goto 179,33.9,77.4
    .complete 14399,1 --1/1 Linen-Wrapped Book
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grandma Wahl
    .goto 179,32.5,75.5
    .turnin 14399 >>Turn in Grandma's Lost It Alright
    .accept 14400 >>Accept I Can't Wear This
	.target Grandma Wahl
step
    >>Collect her Good Clothes on the Line
    .goto 179,32.04,75.45
    .complete 14400,1 --1/1 Grandma's Good Clothes
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grandma Wahl
    .goto 179,32.5,75.5
    .turnin 14400 >>Turn in I Can't Wear This
    .accept 14401 >>Accept Grandma's Cat
	.target Grandma Wahl
step
    >>Right click Chance the Cat. Kill Lucius the Cruel. Loot him for Chance the Cat
    .goto 179,35.16,74.82
    .complete 14401,1 --1/1 Chance the Cat
	.target Lucius the Cruel
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Grandma Wahl
    .goto 179,32.5,75.5
    .turnin 14401 >>Turn in Grandma's Cat
	.target Grandma Wahl
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sebastian Hayward
    .goto 179,36.89,84.19
    .turnin 14403 >>Turn in The Hayward Brothers
    .accept 14412 >>Accept Washed Up
    .accept 14404 >>Accept Not Quite Shipshape
	.target Sebastian Hayward
step
	#completewith wood
    >>Kill Forsaken Castaways
    .complete 14412,1 --6/6 Forsaken Castaway slain
	.target Forsaken Castaway
step
    >>Loot the Barrel of Coal Tar from the ground
    .goto 179,37.5,86.0
    .complete 14404,3 --1/1 Coal Tar
step
    >>Loot the Shipwright's Tools inside the House
    .goto 179,37.4,87.1
    .complete 14404,1 --1/1 Shipwright's Tools
step
	#label wood
    >>Loot the Planks of Wood on the ground
    .goto 179,36.2,86.4
    .complete 14404,2 --1/1 Planks of Wood
step
    >>Kill Forsaken Castaways
	.goto 179,36.9,84.2	
    .complete 14412,1 --6/6 Forsaken Castaway slain
	.target Forsaken Castaway
step
    #requires Area97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Sebastian Hayward
    .goto 179,36.9,84.2
    .turnin 14404 >>Turn in Not Quite Shipshape
    .turnin 14412 >>Turn in Washed Up
    .accept 14405 >>Accept Escape By Sea
	.target Sebastian Hayward
step
    #completewith next
    .hs >> Hearthstone to Duskhaven
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gwen Armstead
    .goto 179,37.6,65.2
    .turnin 14405 >>Turn in Escape By Sea
    .accept 14465 >>Accept To Greymane Manor
	.timer 30,Horse Ride to Graymane Manor
	.target Gwen Armstead
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Queen Mia Greymane upstairs inside the Manor
    .goto 179,30.24,52.16,5,0
    .goto 181,62.10,49.64
    .turnin 14465 >>Turn in To Greymane Manor
    .accept 14466 >>Accept The King's Observatory
	.target Queen Mia Greymane
step
    >>Go upstairs then go into the tower and up the spiral staircase
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Genn Greymane
    .goto 182,61.52,38.13,10,0
    .goto 182,50.18,33.47,10,0
    .goto 182,39.84,16.68,5,0
    .goto 182,41.9,20.1
    .turnin 14466 >>Turn in The King's Observatory
    .turnin 14467 >>Turn in Alas, Gilneas!
    .accept 24438 >>Accept Exodus
	.target Genn Greymane
step
    >>Go Outside the Manor and right click the Carriage to ride it
    .goto 179,28.86,54.2
    .complete 24438,1 --1/1 Carriage boarded
	.timer x,Carriage ride
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Prince Liam Greymane
    .goto 179,51.8,80.5
    .turnin 24438 >>Turn in Exodus
    .accept 24468 >>Accept Stranded at the Marsh
	.target Prince Liam Greymane
step << Hunter
	#completewith next
	>>Drag |T132161:0|tCall Pet and |T132179:0|tPet Utility onto your Action Bars
    .goto 179,52.51,71.63,50 >>Cast |T132164:0|tTame Beast on a Swamp Crocolisk to tame it
	>>NOTE: It needs to be on one not being attacked by Crash Survivors
	.target Swamp Crocolisk
step
    >>Kill Swamp Crocolisks
    .goto 179,53.3,74.2
    .complete 24468,1 --5/5 Crash Survivor rescued
	.target Swamp Crocolisk
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Prince Liam Greymane
    .goto 179,51.8,80.5
    .turnin 24468 >>Turn in Stranded at the Marsh
    .accept 24472 >>Accept Introductions Are in Order
	.target Prince Liam Greymane
step
    >>Follow the Path up the Mountain
    >>Kill Ogre Minions. Loot Koroth's Banner atop the Mountain
	.goto 179,50.74,83.56,10,0
    .goto 179,46.73,83.2
    .complete 24472,1 --4/4 Ogre Minion slain
    .complete 24472,2 --1/1 Koroth's Banner
	.target Ogre Minion
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk Prince Liam Greymane
    .goto 179,51.8,80.5
    .turnin 24472 >>Turn in Introductions Are in Order
    .accept 24483 >>Accept Stormglen
	.target Prince Liam Greymane
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gwen Armstead
    .goto 179,59.86,91.71
    .turnin 24483 >>Turn in Stormglen
    .accept 24484 >>Accept Pest Control
	.target Gwen Armstead
step
    #completewith next
    .goto 179,60.05,91.66
    .home >>Set your Hearthstone to Stormglen Village
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lorna Crowley
    .goto 179,60.26,91.84
    .accept 24495 >>Accept Pieces of the Past
	.target Lorna Crowley
step
    >>Click the Old Journal Pages in the Area while killing the Vilebrood Skitterers
    .goto 179,62.43,92.16,25,0
	.goto 179,64.07,91.72,25,0
	.goto 179,67.07,91.03
    .complete 24495,1 --6/6 Old Journal Page
    .complete 24484,1 --6/6 Vilebrood Skitterer slain
	.target Vilebrood Skitterer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gwen Armstead
    .goto 179,59.87,91.7
    .turnin 24484 >>Turn in Pest Control
    .accept 24501 >>Accept Queen-Sized Troubles
	.target Gwen Armstead
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lorna Crowley
    .goto 179,60.3,91.9
    .turnin 24495 >>Turn in Pieces of the Past
	.target Lorna Crowley
step
    >>Kill Rygna 
    .goto 179,67.6,82.8
    .complete 24501,1 --1/1 Rygna slain
	.target Rygna
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gwen Armstead
    .goto 179,59.9,91.7
    .turnin 24501 >>Turn in Queen-Sized Troubles
	.target Gwen Armstead
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lorna Crowley
    .goto 179,60.26,91.85
    .accept 24578 >>Accept The Blackwald
	.target Lorna Crowley
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Belyrsa Starbreeze
    .goto 179,63.34,82.9
    .turnin 24578 >>Turn in The Blackwald
    .accept 24616 >>Accept Losing Your Tail
	.target Belyrsa Starbreeze
step
    >>Kill the Dark Scout. Use Belysra's Talisman when you are frozen
    .use 49944
    .goto 179,63.8,81.3
    .complete 24616,1 --1/1 Dark Scout slain
	.target Dark Scout
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Belyrsa Starbreeze
    .goto 179,63.34,82.9
    .turnin 24616 >>Turn in Losing Your Tail
    .accept 24617 >>Accept Tal'doren, the Wild Home
	.target Belyrsa Starbreeze
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Darius Crowley
    .goto 179,68.7,73.2
    .turnin 24617 >>Turn in Tal'doren, the Wild Home
    .accept 24627 >>Accept At Our Doorstep
	.target Lord Darius Crowley
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Vassandra Stormclaw
    .goto 179,69.3,73.0
    .accept 24628 >>Accept Preparations
	.target Vassandra Stormclaw
step
    >>Kill Howling Banshees. Loot Moonleaf on the ground
    >>Check your Minimap for Moonleaf Locations with Track Herbs
	.skill herbalism,<1,1
    .goto 179,61.8,72.7
    .complete 24628,1 --6/6 Moonleaf
    .complete 24627,1 --6/6 Howling Banshee slain
	.target Howling Banshee
step
    >>Kill Howling Banshees. Loot Moonleaf on the ground
    .skill herbalism,1,1
    .goto 179,61.8,72.7
    .complete 24628,1 --6/6 Moonleaf
    .complete 24627,1 --6/6 Howling Banshee slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Darius Crowley
    .goto 179,68.7,73.3
    .turnin 24627 >>Turn in At Our Doorstep
    .accept 24646 >>Accept Take Back What's Ours
	.target Darius Crowley
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Vassandra Stormclaw
    .goto 179,69.3,73.0
    .turnin 24628 >>Turn in Preparations
	.target Vassandra Stormclaw
step
    >>Use the The Item in your Bags "Horn of Tal'doren" before you run into the camp
	>>Go inside the House. Loot the Worn Coffer
    .use 50134
    .goto 179,57.6,75.7
    .complete 24646,1 --1/1 Mysterious Artifact
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Darius Crowley
    .goto 179,68.71,73.24
    .turnin 24646 >>Turn in Take Back What's Ours
    .accept 24593 >>Accept Neither Human Nor Beast
	.target Lord Darius Crowley
step
    >>Click on the Well of Fury
    .goto 179,69.0,72.8
    .complete 24593,1 --1/1 Well of Fury
step
    >>Click on the Well of Tranquility
    .goto 179,69.2,73.1
    .complete 24593,2 --1/1 Well of Tranquility
step
    >>Click on the Well of Balance
    .goto 179,69.1,73.5
    .complete 24593,3 --1/1 Well of Balance
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Darius Crowley
    .goto 179,68.7,73.2
    .turnin 24593 >>Turn in Neither Human Nor Beast
    .accept 24673 >>Accept Return to Stormglen
	.target Lord Darius Crowley
step
    #completewith next
    .hs >> Hearthstone to Stormglen Village
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Gwen Armstead
    .goto 179,59.9,91.7
    .turnin 24673 >>Turn in Return to Stormglen
    .accept 24672 >>Accept Onwards and Upwards
	.target Gwen Armstead
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Krennas Aranas
    .goto 179,71.46,84.97,80,0
	.goto 179,72.7,80.0
    .turnin 24672 >>Turn in Onwards and Upwards
    .accept 24592 >>Accept Betrayal at Tempest's Reach
	.target Krennas Aranas
step
    >>Use the Item in your Bags "Krennan's Potion of Stealth" in your Bags to stealth to Lord Walden
    >>If you accidently get into combat use it aswell
    .use 50218
    .goto 179,79.2,69.08
    .complete 24592,2 --1/1 Lord Walden slain
	.target Lord Walden
step
    >>Use the Item in your Bags "Krennan's Potion of Stealth" in your Bags to stealth to Baron Ashbury
    >>If you accidently get into combat use it aswell
    .use 50218
    .goto 179,84.1,73.4
    .complete 24592,1 --1/1 Baron Ashbury slain
	.target Baron Ashbury
step
    .use 50218 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to King Genn Greymane. Use your stealth if you need to.
    .goto 179,78.3,72.1
    .turnin 24592 >>Turn in Betrayal at Tempest's Reach
    .accept 24677 >>Accept Flank the Forsaken
	.target King Genn Greymane
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lorna Crowley
    .goto 179,70.9,39.8
    .turnin 24677 >>Turn in Flank the Forsaken
    .accept 24575 >>Accept Liberation Day
	.target Lorna Crowley
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Magda Whitewall
    .goto 179,70.65,39.7
    .accept 24675 >>Accept Last Meal
	.target Magda Whitewall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Marcus
    .goto 179,70.8,40.0
    .accept 24674 >>Accept Slaves to No One
	.target Marcus
step
    >>Kill Brown Stags. Loot them for their Meat
    .goto 179,75.67,39.07,40,0
	.goto 179,77.96,37.54,45,0
	.goto 179,77.76,48.78
    .complete 24675,1 --10/10 Side of Stag Meat
	.target Brown Stag
step
    #completewith next
	>>Enter the Emberstone Mine
    >>Kill Forsaken Slavedrivers. Loot them for their Keys. Use the Keys on the Ball and Chain of Enslaved Villagers
    .collect 49881,5,24575,1,-1
    .complete 24575,1 --5/5 Enslaved Gilnean freed
	.target Forsaken Slavedriver
	.target Enslaved Villagers
step
    >>Kill Brothogg the Slavemaster in the back of the mine
	.goto 179,76.22,31.47,10,0
    .goto 180,55.05,75.25
    .complete 24674,1 --1/1 Brothogg the Slavemaster slain
	.target Brothogg the Slavemaster
step
    >>Kill Forsaken Slavedrivers. Loot them for their Keys. Use the Keys on the Ball and Chain of Enslaved Villagers
	.goto 179,76.22,31.47,10,0
    .goto 180,55.05,75.25
    .collect 49881,5,24575,1,-1
    .complete 24575,1 --5/5 Enslaved Gilnean freed
	.target Forsaken Slavedriver
step
	#completewith next
	.goto 179,70.9,39.8
    .deathskip >> Die inside the Mine. Respawn near the Outpost
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lorna Crowley
    .goto 179,70.9,39.8
    .turnin 24575 >>Turn in Liberation Day
	.target Lorna Crowley
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Magda Whitewall
    .goto 179,70.7,39.7
    .turnin 24675 >>Turn in Last Meal
	.target Magda Whitewall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Marcus
    .goto 179,71.1,39.8
    .turnin 24674 >>Turn in Slaves to No One
	.target Marcus
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lorna Crowley
    .goto 179,70.9,39.8
    .accept 24676 >>Accept Push Them Out
	.target Lorna Crowley
step 
    >>Kill Forsaken Infantry while killing Cornell and Valnov
    .complete 24676,2 --1/1 Executor Cornell slain
	.goto 179,72.87,28.36
    .complete 24676,3 --1/1 Valnov the Mad slain
	.goto 179,74.14,27.44
	.complete 24676,1 --4/4 Forsaken Infantry slain
	.goto 179,73.51,30.22
	.target Forsaken Infantry
	.target Executor Cornell
	.target Valnov the Mad
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lorna Crowley
    .goto 179,70.9,39.8
    .turnin 24676 >>Turn in Push Them Out
    .accept 24904 >>Accept The Battle for Gilneas City
	.target Lorna Crowley
step
    >> Head south into the city, ignoring mobs on the way. Kill Gorerot. Use the catapults to kill him faster.
    .goto 202,68.87,45.00,20,0
    .goto 202,66.9,56.31,20,0
    .goto 202,57.6,67.6
    .complete 24904,1 --1/1 Gorerot slain
	.target Gorerot
step
    >>Kill the 3 Soultethered Banshees and then fight Sylvanas
	.goto 202,42.45,82.39,25,0
    .goto 202,38.58,60.24
    .complete 24904,2 --1/1 Battle for Gilneas City Complete
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tGo into the building and talk to Lorna Crowley
    .goto 202,38.58,60.24
    .turnin 24904 >>Turn in The Battle for Gilneas City
    .accept 24902 >>Accept The Hunt For Sylvanas
	.target Lorna Crowley
step
    >>Talk to Lorna Crowley then follow Tobias Mistmantle until he hides in the water inside the Cathedral. Go back to Lorna after the roleplay ends. It takes a minute.
    .goto 202,36.44,47.17,20,0
    .goto 202,40.3,31.24,10,0
    .goto 202,45.06,52.78
    .complete 24902,1 --Hunt for Sylvanas
	.target Lorna Crowley
	.target Tobias Mistmantle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lorna Crowley
    .goto 202,38.61,60.24
    .turnin 24902 >>Turn in The Hunt For Sylvanas
    .accept 24903 >>Accept Vengeance or Survival
	.target Lorna Crowley
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to King Genn Greymane
    .goto 202,32.3,57.0
    .turnin 24903 >>Turn in Vengeance or Survival
    .accept 24920 >>Accept Slowing the Inevitable
	.target King Genn Greymane
step
    >>Click The Captured Bat. 
    >>Use Iron Bomb (1) On Catapults and Forsaken. Use Fly Back (2) once you are done
    .goto 202,30.21,60.96
    .complete 24920,1 --6/6 Forsaken Catapult slain
    .complete 24920,2 --40/40 Invading Forsaken
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to King Genn Greymane
    .goto 202,32.4,57.1
    .turnin 24920 >>Turn in Slowing the Inevitable
    .accept 24678 >>Accept Knee-Deep
	.target King Genn Greymane
step
    >>Go into the Tunnel beside Greymane. Use the Item in your Bags "Half-Burnt Torch" to scare the Rats away
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Krennan Aranas
    .use 50220
    .goto 179,34.06,57.47,15,0
    .goto 179,49.84,56.93
    .turnin 24678 >>Turn in Knee-Deep
    .accept 24602 >>Accept Laid to Rest
step
    >>Loot the Disturbed Soil off the ground
    .goto 179,46.7,50.2
    .complete 24602,1 --5/5 Unearthed Memento
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Krennan Aranas
    .goto 179,49.8,56.9
    .turnin 24602 >>Turn in Laid to Rest
    .accept 24679 >>Accept Patriarch's Blessing
step
    >>Use the Item in your Bag "Blessed Offering" on the Shrine
    .use 51956
    .goto 179,49.03,53.40
    .complete 24679,1 --1/1 Offering placed
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Krennan Aranas
    .goto 179,49.84,56.93
    .turnin 24679 >>Turn in Patriarch's Blessing
    .accept 24680 >>Accept Keel Harbor
	.target Krennan Aranas
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Darius Crowley
    .goto 179,41.9,37.6
    .turnin 24680 >>Turn in Keel Harbor
    .accept 24681 >>Accept They Have Allies, But So Do We
	.target Lord Darius Crowley
step
	#completewith next
    .goto 179,42.38,37.81
    .vehicle >> Right click a Glaive Thrower to mount it
step
    >>Use Double Speed (3) on cooldown to move faster. Use Launch Glaive (1) and Glaive Barrage (2) to Kill Wolfmaw Outriders, Orc Raiders and Orcish War Machines
    .goto 179,35.03,36.16,60,0
	.goto 179,32.23,28.14,60,0
	.goto 179,27.98,26.45,60,0
	.goto 179,27.94,38.40,60,0
	.goto 179,35.03,36.16
    .complete 24681,2 --8/8 Wolfmaw Outrider slain
    .complete 24681,3 --4/4 Orcish War Machine slain
    .complete 24681,1 --40/40 Orc Raider slain
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lord Darius Crowley
    .goto 179,41.94,37.61
    .turnin 24681 >>Turn in They Have Allies, But So Do We
	.target Lord Darius Crowley
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lorna Crowley
    .goto 179,41.65,36.52
    .accept 26706 >>Accept Endgame
	.target Lorna Crowley
step
	#completewith next
    .goto 179,41.64,36.11
    .vehicle >> Right click a Hippogryph to mount it
	.timer 58,Gunship Hippogryph Flight Time
	>>NOTE: This Quest is on an Independant Timer, that means that you have to wait anywhere inbetween 1-5 minutes to be able to mount the Hippogryph
step
    >>Kill all Orcs on the top then click the Rope in the middle connection to rappel to the lower deck. Continue to Kill Orcs. Do your best to follow Lorna
    .complete 26706,1 --1/1 Gunship destroyed
	.timer 55,Gunship Victory Flight
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Lorna Crowley
    .goto 179,41.64,36.52
    .turnin 26706 >>Turn in Endgame
	.target Lorna Crowley
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Admiral Nightwind
    .goto 179,42.6,35.9
    .accept 14434 >> Accept Rut'theran Village
    .turnin 14434 >>Turn in Rut'theran Village
	.target Admiral Nightwind
step <<Worgen
    .nodmf
    .isQuestTurnedIn 14154 --x Worgen Check
    #completewith next    
    .goto 57,52.54,89.44,5 >>Click the Exodar Portal
    .zoneskip 97
step << Worgen
    .nodmf
    .isQuestTurnedIn 14154 --x Worgen Check        
    .goto 103,41.87,72.93,10 >>Enter The Exodar and go down the Spiral Staircase
    .goto 103,48.33,62.94,10 >>Click the Stormwind Portal
    .zoneskip 84
step << Worgen
    .nodmf
    .isQuestTurnedIn 14154 --x Worgen Check
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bralla Cloudwing
    .goto 84,64.65,70.42,10,0
    .goto 84,68.36,75.02,10,0
    .goto 84,70.22,73.35
	.train 33388 >> Train Apprentice Riding
    .skill riding,75
	.target Bralla Cloudwing	
step << Worgen
    .nodmf
    .isQuestTurnedIn 14154 --x Worgen Check
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Bartlett in Goldshire
    .goto 84,67.49,80.56,20,0
    .goto 84,67.03,83.44,20,0
    .goto 84,69.76,84.87,20,0
    .goto 37,41.71,64.64
    .fp >>Get the Goldshire Flight Path
	.target Bartlett
step << Worgen
    .dmf
    .isQuestTurnedIn 14154 --x Worgen Check
    .goto 57,54.84,88.28,25,0
    .goto 89,42.77,32.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Jartsam
	.train 33388 >> Train Apprentice Riding
    .skill riding,75
	.target Jartsam
step << Worgen
    .isQuestTurnedIn 14434 --x Worgen Check
    .dmf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to Darkmoon Faire Mystic Mage
    .goto 89,38.58,49.38
    .accept 7905 >>Accept The Darkmoon Faire
	.target Darkmoon Faire Mystic
step << Worgen
    .dmf
    .isQuestTurnedIn 14434 --x Worg Check
    +Talk to Darkmoon Faire Mystic Mage and press accept
    .skipgossip
    .zoneskip 37
    .goto 89,38.58,49.38
]])
