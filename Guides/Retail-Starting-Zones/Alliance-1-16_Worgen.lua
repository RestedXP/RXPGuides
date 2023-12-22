RXPGuides.RegisterGuide([[
#df
#version 2
#group RestedXP Starting Zones
#displayname Worgen Starting Zone
#name 2Retail-Alliance-Worgen_Gilneas
#next RestedXP Alliance 10-60\1A_Elwynn Forest

<<Worgen !DK

step
    #completewith next
    +Welcome to the |cFFfa9602Worgen Starting Zone|r Guide by RestedXP.
    *Without consumables or heirlooms, this route is approximately 5 minutes slower than |cFFfa9602Exile's Reach.|r For faster leveling, consider recreating your character and selecting |cFFfa9602Exile's Reach|r instead.
step
    .goto 202,59.1,23.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane.|r
    .accept 14078 >>Accept Lockdown!
	.target Prince Liam Greymane
step
    .goto 202,56.86,17.89,15,0
    .goto 202,54.6,16.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteract with the corpse of |cRXP_FRIENDLY_Lieutenant Walden.|r
    .turnin 14078 >>Turn in Lockdown!
    .accept 14091 >>Accept Something's Amiss
	.target Lieutenant Walden
step
    .goto 202,59.8,22.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane.|r
    .turnin 14091 >>Turn in Something's Amiss
    .accept 14093 >>Accept All Hell Breaks Loose
    .accept 14098 >>Accept Evacuate the Merchant Square
	.target Prince Liam Greymane
step
    #completewith Area1
    >>Kill |cRXP_ENEMY_Rampaging Worgen.|r
    .complete 14093,1 --6/6 Rampaging Worgen slain
	.mob Rampaging Worgen
step
    .goto 202,59.7,26.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead.|r
    .accept 14094 >>Accept Salvage the Supplies
	.target Gwen Armstead
step
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Salvaged Supplies.|r
    .complete 14094,1 --4/4 Salvaged Supplies
step
    #label Area1
    .goto 202,63.19,31.69,15,0
    .goto 202,63.13,34.72,15,0
    .goto 202,55.03,26.53
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_doors|r to evacuate the occupants from their homes.
    .complete 14098,1 --3/3 Market Homes Evacuated
step
    .goto 202,63.19,31.69,15,0
    .goto 202,63.13,34.72,15,0
    .goto 202,55.03,26.53
	>>Kill |cRXP_ENEMY_Rampaging Worgen|r and |TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Salvaged Supplies.|r
    .complete 14094,1 --4/4 Salvaged Supplies
    .complete 14093,1 --6/6 Rampaging Worgen slain
	.mob Rampaging Worgen
step
    #requires Area1
    .goto 202,59.6,26.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead.|r
    .turnin 14094 >>Turn in Salvage the Supplies
	.target Gwen Armstead
step
    .goto 202,59.8,22.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane.|r
    .turnin 14093 >>Turn in All Hell Breaks Loose
    .turnin 14098 >>Turn in Evacuate the Merchant Square
	.target Prince Liam Greymane
step
    .goto 202,59.9,22.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liam Greymane.|r
    .accept 14099 >>Accept Royal Orders
	.target Liam Greymane
step
    .goto 202,70.8,55.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead.|r
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
    .vendor >> Talk to |cRXP_FRIENDLY_Marie Allen|r. |cRXP_WARN_Vendor and buy bags if you need to.|r
	.target Marie Allen
step << Hunter
    .goto 202,71.5,61.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huntsman Blake.|r
    .turnin 14275 >>Turn in Someone's Keeping Track of You
    .accept 14290 >>Accept Safety in Numbers
	.target Huntsman Blake
step << Druid
    .goto 202,70.18,65.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Celestine of the Harvest.|r
    .turnin 14280 >> Turn in The Winds Know Your Name
    .accept 14291 >> Accept Safety in Numbers
	.target Celestine of the Harvest
step << Warrior
.goto 202,67.52,64.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seargent Cleese.|r
    .turnin 14275 >>Turn in Your Instructur
    .accept 14286 >>Accept Safety in Numbers
    .accept 14280 >>Turn in the winds know your name
	.target Seargent Cleese
step << Rogue
    .goto 202,71.41,65.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loren the Fence.|r
    .turnin 14269 >>Turn in Someone's Looking for you
    .accept 14285 >>Accept Safety in Numbers
	.target Loren the Fence
step << Priest
    .goto 202,71.41,65.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loren the Fence.|r
    .turnin 14269 >>Seek the Sister
    .accept 14285 >>Accept Safety in Numbers
	.target Loren the Fence
step << Warlock
    .goto 202,71.42, 64.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vitus Darkwalker.|r
    .turnin 14273 >>Shady Associatees
    .accept 14287 >>Accept Safety in Numbers
	.target Vitus Darkwalker
step
    .goto 202,65.8,77.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane.|r
    .turnin 14290 >>Turn in Safety in Numbers << Hunter
    .turnin 14291 >>Turn in Safety in Numbers << Druid
    .turnin 14288 >>Turn in Safety in Numbers << Mage
    .turnin 14286 >>Turn in Safety in Numbers << Warrior
    .turnin 14287 >>Turn in Safety in Numbers << Warlock
    .turnin 14285 >>Turn in Safety in Numbers << Rogue
    .accept 14157 >>Accept Old Divisions
	.target King Genn Greymane
step
    .goto 202,65.3,77.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey.|r
    .accept 24930 >>Accept While You're At It
	.target Lord Godfrey
step
    #completewith next
	>>Kill |cRXP_ENEMY_Bloodfang Worgen.|r
    .complete 24930,1 --5/5 Bloodfang Worgen slain
	.mob Bloodfang Worgen
step
    .goto 202,58.86,71.20,10,0
    .goto 202,57.9,75.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Broderick|r |cFFfa9602inside the fort.|r
    .turnin 14157 >>Turn in Old Divisions
    .accept 28850 >>Accept The Prison Rooftop
	.target Captain Broderick
step
    .goto 202,55.21,62.88
    >>|cRXP_WARN_Ascend the spiral staircase.|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley.|r
    .turnin 28850 >>Turn in The Prison Rooftop
    .accept 14154 >>Accept By the Skin of His Teeth
	.target Lord Darius Crowley
step
    .goto 202,57.43,69.82,15,0
    .goto 202,59.54,63.46,15,0
    .goto 202,61.79,67.46,15,0
    .goto 202,57.43,69.82
    >>|cRXP_WARN_As a Hunter, use 'Disengage' to land on the small house roof, or alternatively, walk downstairs|r << Hunter
    >>|cRXP_WARN_Walk downstairs.|r<< !Hunter
	>>Kill |cRXP_ENEMY_Bloodfang Worgen|r
    .complete 24930,1 --5/5 Bloodfang Worgen slain
	.mob Bloodfang Worgen
step
    .goto 202,65.3,77.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey.|r
    .turnin 24930 >>Turn in While You're At It
	.target Lord Godfrey
step
    >>Kill some of the |cRXP_ENEMY_Enemies|r located |cFFfa9602downstairs,|r then return upstairs before the buff expires.
    .complete 14154,1
    .mob Bloodfang Worgen
step
    #requires Area99
    .goto 202,55.22,62.86
	>>|cRXP_WARN_Ascend the spiral staircase.|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley.|r
    .turnin 14154 >>Turn in By the Skin of His Teeth
    .accept 26129 >>Accept Brothers In Arms
	.target Lord Darius Crowley
step
    .goto 202,65.8,77.7
    >>|cRXP_WARN_As a Hunter, use 'Disengage' to land on the small house roof, or alternatively, walk downstairs|r << Hunter
    >>|cRXP_WARN_Walk downstairs.|r<< !Hunter
    .turnin 26129 >>Turn in Brothers In Arms
    .accept 14159 >>Accept The Rebel Lord's Arsenal
step
    .goto 202,61.44,82.38,20,0
    .goto 202,56.11,81.47,5,0
    .goto 202,56.8,85.5
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Cellar Door|r to enter it.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Josiah Avery|r
    .turnin 14159 >>Turn in The Rebel Lord's Arsenal
	.target Josiah Avery
step
    .goto 202,56.8,81.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r
    .accept 14204 >>Accept From the Shadows
	.target Lorna Crowley
step
    #completewith next
    +|cRXP_WARN_To enable keybinding for quest items, follow these steps:|r
    *[1] Press the |cRXP_WARN_Escape key.|r
    *[2] Select |cRXP_WARN_Options.|r
    *[3] Navigate to |cRXP_WARN_Keybindings.|r
    *[4] Within |cRXP_WARN_Keybindings|r, find |cRXP_WARN_RestedXP Guides.|r
    *[5] Select and bind the |cRXP_WARN_Active Buttons.|r
step
    .goto 202,54.04,81.06,15,0
    .goto 202,50.48,76.82,15,0
    .goto 202,47.40,80.25,15,0
    .goto 202,51.25,83.82,15,0
    .goto 202,50.48,76.82
    >>Kill 6 |cRXP_ENEMY_Bloodfang Lurkers.|r They are stealthily located in the area |cFFfa9602outside of the Cellar.|r
    .use 48707 >> Should you lose your |T236926:0|t[Gilnean Mastiff], it can be resummoned. If needed, use the Mastiff's |T236186:0|t'Attack Lurker' ability to assist in locating them. This option will appear above your action bars.
    .complete 14204,1 --6/6 Bloodfang Lurker slain
	.mob Bloodfang Lurker
step
    .goto 202,56.9,81.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley.|r
    .turnin 14204 >>Turn in From the Shadows
    .accept 14214 >>Accept Message to Greymane
	.target Lorna Crowley
step
    .goto 202,59.2,83.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Genn Greymane.|r
    .turnin 14214 >>Turn in Message to Greymane
    .accept 14293 >>Accept Save Krennan Aranas
	.target Genn Greymane
step
    .goto 202,66.0,62.2
    >>Use [Rescue Krennan](1) to save him when the horse comes. After you save him, |cRXP_WARN_get out of the vehicle and let your character die.|r
    .complete 14293,1 --1/1 Krennan Aranas rescued
	.target Krennan Aranas
step
    .goto 202,55.7,80.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey.|r
    .turnin 14293 >>Turn in Save Krennan Aranas
    .accept 14294 >>Accept Time to Regroup
	.target Lord Godfrey
step
    .goto 202,30.4,73.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Genn Greymane.|r
    .turnin 14294 >>Turn in Time to Regroup
	.target Genn Greymane
step
    .goto 202,31.1,72.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley.|r
    .accept 14212 >>Accept Sacrifices
	.target Lord Darius Crowley
step
    .goto 202,25.3,43.9
    >>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Crowley's Horse.|r Use |T135433:0|t[Throw Torch] (1) on |cRXP_ENEMY_Bloodfang Stalkers.|r
    .complete 14212,1 --30/30 Bloodfang Stalker rounded up
	.mob Bloodfang Stalker
step
    #completewith next
    >>By starting a new WoW client and relogging, you'll be thrown off the horse and die, saving you time. |cRXP_WARN_Alternatively, you can simply wait until the horse finishes its ride.|r
    .deathskip >> Pull as many Enemies as you can, Die and Respawn at the Graveyard
step
    .goto 202,40.5,39.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tobias Mistmantle.|r
    .turnin 14212 >>Turn in Sacrifices
    .accept 14218 >>Accept By Blood and Ash
	.target Tobias Mistmantle
step
    .goto 202,40.13,36.52
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Rebel Cannon.|r
    >>Use (1) to kill |cRXP_ENEMY_Bloodfang Stalkers|r
    .complete 14218,1 --80/80 Bloodfang Stalker slain
    .mob Bloodfang Stalker
step
    .goto 202,40.6,39.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tobias Mistmantle.|r
    .turnin 14218 >>Turn in By Blood and Ash
    .accept 14221 >>Accept Never Surrender, Sometimes Retreat
	.target Tobias Mistmantle
step
    .goto 202,48.9,52.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Daruius Crowley|r |cFFfa9602inside the Church.|r
    .turnin 14221 >>Turn in Never Surrender, Sometimes Retreat
    .accept 14222 >>Accept Last Stand
	.target Lord Daruius Crowley
step
    .goto 202,46.9,49.2
    >>Kill |cRXP_ENEMY_Frenzied Stalkers.|r
    .complete 14222,1 --8/8 Frenzied Stalker slain
	.mob Frenzied Stalker
step
    .goto 202,48.9,52.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Daruius Crowley.|r
    --x(shiek) .timer
    .turnin 14222 >>Turn in Last Stand
	.target Lord Daruius Crowley
step
    --x(shiek) , which will be completed when the timer runs out.
    .goto 179,36.4,61.3
    >>|cRXP_WARN_Wait for the brief roleplay|r then Talk to |cRXP_FRIENDLY_Genn Greymane.|r
    .turnin 14375 >>Turn in Last Chance at Humanity
	.target Genn Greymane
step
    .goto 179,36.5,62.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey.|r
    .accept 14313 >>Accept Among Humans Again
	.target Lord Godfrey
step
    .goto 179,37.4,63.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krennan Aranas.|r
    .turnin 14313 >>Turn in Among Humans Again
    .accept 14320 >>Accept In Need of Ingredients
	.target Krennan Aranas
step
	#completewith next
    .goto 179,37.36,63.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jack "All Trades" Derrington.|r
    .train 2366 >> Train |T4620675:0|tHerbalism
	.skipgossip 50247,1,1,1
	.target Jack "All Trades" Derrington
step
    .goto 179,37.36,63.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jack "All Trades" Derrington.|r
    .train 2575 >> Train |T4620679:0|tMining
	.skipgossip 50247,2,3,2
	.target Jack "All Trades" Derrington
step
    #completewith next
    +|cRXP_WARN_Herbing and Mining Ores gives Experience. Only do this when the herbs/ores are right next to you.|r
step
    .goto 179,32.8,66.4
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crate of Mandrake Essence.|r
    .turnin 14320 >>Turn in In Need of Ingredients
step
    #label MiningWorgen
    .goto 179,32.76,66.15
    >>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_FRIENDLY_Slain Watchman.|r
	>>|cRXP_WARN_If he is not giving a quest type /reload in chat.|r
    .accept 14321 >>Accept Invasion
    .target Slain Watchman
step
    .goto 179,37.41,63.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead.|r
    .turnin 14321 >>Turn in Invasion
    .accept 14336 >>Accept Kill or Be Killed
	.target Gwen Armstead
step
    .goto 179,35.7,67.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane.|r
    .turnin 14336 >>Turn in Kill or Be Killed
    .accept 14347 >>Accept Hold the Line
    .accept 14348 >>Accept You Can't Take 'Em Alone
	.target Prince Liam Greymane
step
    #completewith next
    >>Kill |cRXP_ENEMY_Forsaken Invaders.|r
    .complete 14347,1 --10/10 Forsaken Invader slain
	.mob Forsaken Invader
step
    #label Area98
    .goto 179,35.76,67.23,30,0
    .goto 179,36.99,69.29,30,0
    .goto 179,33.89,67.86,50,0
    .goto 179,35.76,67.23
    .use 49202 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Gunpowder Barrels|r and throw them at |cRXP_ENEMY_Horrid Abominations.|r
    .collect 49202,4,14348,1,-1
    .complete 14348,1 --4/4 Gunpowder thrown at Abominations
	.mob Forsaken Invader
	.mob Horrid Abomination
step
    .goto 179,35.76,67.23,30,0
    .goto 179,36.99,69.29,30,0
    .goto 179,33.89,67.86,50,0
    .goto 179,35.76,67.23
    >>Kill |cRXP_ENEMY_Forsaken Invaders.|r
    .complete 14347,1 --10/10 Forsaken Invader slain
	.mob Forsaken Invader
step
    #requires Area98
    .goto 179,35.7,66.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead.|r
    .turnin 14347 >>Turn in Hold the Line
    .turnin 14348,1 >>Turn in You Can't Take 'Em Alone
    .accept 14366 >>Accept Holding Steady
	.target Gwen Armstead
step
    .goto 179,37.4,63.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead.|r
    .turnin 14366 >>Turn in Holding Steady
    .accept 14367 >>Accept The Allens' Storm Cellar
	.target Gwen Armstead
step
    .isOnQuest 14367
    .goto 179,28.44,64.28,5 >>Go back |cFFfa9602into the Cellar.|r
step
    .goto 179,28.97,63.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey.|r
    .turnin 14367 >>Turn in The Allens' Storm Cellar
    .accept 14369 >>Accept Unleash the Beast
    .accept 14382 >>Accept Two By Sea
	.target Lord Godfrey
step
    .goto 179,28.93,64.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melinda Hammond.|r
    .accept 14368 >>Accept Save the Children!
	.target Melinda Hammond
step
    .goto 179,27.83,66.18,2,0
    .goto 179,28.20,66.25,2,0
    .goto 179,27.89,66.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ashley|r who is |cFFfa9602located upstairs in the house.|r
    .complete 14368,2 --1/1 Ashley rescued
	.target Ashley
step
    .goto 179,28.5,66.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James|r |cFFfa9602next to the house.|r
    .complete 14368,3 --1/1 James rescued
	.target James
step
    .goto 179,29.6,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cynthia|r |cFFfa9602in the Field near the Scarecrow.|r
    .complete 14368,1 --1/1 Cynthia rescued
	.target Cynthia
step
	#completewith lastboat
    >>Kill |cRXP_ENEMY_Forsaken Sailors|r and |cRXP_FRIENDLY_Forsaken Sailors.|r
    .complete 14369,1 --8/8 Forsaken Combatant slain
	.mob Forsaken Sailor
	.mob Forsaken Soldier
step
    .goto 179,28.39,71.96,50,0
    .goto 179,23.77,74.71
    >>Kill a |cRXP_ENEMY_Forsaken Machinest|r, |TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Forsaken Catapult|r and |cFFfa9602launch yourself towards the ship.|r then Kill |cRXP_ENEMY_Captain Anson.|r
    .complete 14382,1 --1/1 Captain Anson slain
	.mob Captain Anson
	.mob Forsaken Machinest
step
	#label lastboat
    >>Kill a |cRXP_ENEMY_Forsaken Machinest|r, |TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_FRIENDLY_Forsaken Catapult|r and |cFFfa9602launch yourself towards the ship.|r then Kill |cRXP_ENEMY_Captain Morris.|r
    .goto 179,25.06,72.07,50,0
    .goto 179,26.85,79.33
    .complete 14382,2 --1/1 Captain Morris slain
	.mob Captain Morris
	.mob Forsaken Machinest
step
    .goto 179,25.06,72.07,30,0
    .goto 179,26.85,79.33
    >>Kill |cRXP_ENEMY_Forsaken Sailors|r and |cRXP_FRIENDLY_Forsaken Sailors.|r
    .complete 14369,1 --8/8 Forsaken Combatant slain
	.mob Forsaken Sailor
	.mob Forsaken Soldier
step
    #completewith next
    .deathskip >> Pull as many Enemies as you can, Die and Respawn at the Graveyard
step
    .isOnQuest 14369
    .goto 179,28.43,64.25,5 >>|cRXP_WARN_Go into the Cellar.|r
step
    .goto 179,28.9,64.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melinda Hammond.|r
    .turnin 14368 >>Turn in Save the Children!
	.target Melinda Hammond
step
    .goto 179,28.97,63.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey.|r
    .turnin 14369 >>Turn in Unleash the Beast
    .turnin 14382 >>Turn in Two By Sea
    .accept 14386 >>Accept Leader of the Pack
	.target Lord Godfrey
step
    .goto 179,23.48,67.54
    >>Use the |T132161:0|t[Mastiff Whistle] to signal the |cRXP_FRIENDLY_Mastiff|r to help you kill |cRXP_ENEMY_Dark Ranger Thyala.|r
    .complete 14386,1 --1/1 Dark Ranger Thyala slain
    .use 49240
	.mob Dark Ranger Thyala
step
    .isOnQuest 14386
    .goto 179,28.43,64.25,5 >>|cRXP_WARN_Go into the Cellar.|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Godfrey.|r
    .goto 179,29.0,63.9
    .turnin 14386 >>Turn in Leader of the Pack
    .accept 14396 >>Accept As the Land Shatters
	.target Lord Godfrey
step
    .goto 179,29.0,65.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane.|r
    .turnin 14396 >>Turn in As the Land Shatters
    .accept 14395 >>Accept Gasping for Breath
	.target Prince Liam Greymane
step
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
    >>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_FRIENDLY_Drowning Watchman|r and bring them back to |cRXP_FRIENDLY_Prince Liam.|r
    .complete 14395,1 --4/4 Drowning Watchman rescued
	.target Drowning Watchman
	.target Prince Liam
step
    .goto 179,29.03,65.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam.|r
    .turnin 14395,1 >>Turn in Gasping for Breath
    .accept 14397 >>Accept Evacuation
	.target Prince Liam
step
    .goto 179,37.6,65.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead.|r
    .turnin 14397 >>Turn in Evacuation
    .accept 14398 >>Accept Grandma Wahl
    .accept 14406 >>Accept The Crowley Orchard
    .accept 14403 >>Accept The Hayward Brothers
	.target Gwen Armstead
step
    .goto 179,37.7,72.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley.|r
    .turnin 14406 >>Turn in The Crowley Orchard
    .accept 14416 >>Accept The Hungry Ettin
	.target Lorna Crowley
step
    .goto 179,39.49,77.07,30,0
    .goto 179,37.7,72.7
    >>|TInterface/cursor/crosshair/interact.blp:20|tInteract with a |cRXP_FRIENDLY_Riding Horse|r and use |T134326:0|tRound Up Horse (1) to make other |cRXP_FRIENDLY_Mountain Horses|r follow you. Guide them all back to |cRXP_FRIENDLY_Lorna.|r
    .complete 14416,1 --5/5 Mountain Horse rescued
	.target Mountain Horse
	.target Lorna
step
    .goto 179,37.7,72.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley.|r
    .turnin 14416 >>Turn in The Hungry Ettin
	.target Lorna Crowley
step
    .goto 179,32.5,75.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grandma Wahl.|r
    .turnin 14398 >>Turn in Grandma Wahl
    .accept 14399 >>Accept Grandma's Lost It Alright
	.target Grandma Wahl
step
    .goto 179,33.9,77.4
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Linen-Wrapped Books.|r
    .complete 14399,1 --1/1 Linen-Wrapped Book
step
    .goto 179,32.5,75.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grandma Wahl.|r
    .turnin 14399 >>Turn in Grandma's Lost It Alright
    .accept 14400 >>Accept I Can't Wear This
	.target Grandma Wahl
step
    .goto 179,32.04,75.45
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Washing Line.|r
    .complete 14400,1 --1/1 Grandma's Good Clothes
step
    .goto 179,32.5,75.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grandma Wahl.|r
    .turnin 14400 >>Turn in I Can't Wear This
    .accept 14401 >>Accept Grandma's Cat
	.target Grandma Wahl
step
    .goto 179,35.16,74.82
    >>|TInterface/cursor/crosshair/interact.blp:20|tInteract with |cRXP_FRIENDLY_Chance the Cat|r, kill |cRXP_ENEMY_Lucius the Cruel|r then |cRXP_LOOT_loot him.|r
    .complete 14401,1 --1/1 Chance the Cat
	.mob Lucius the Cruel
step
    .goto 179,32.5,75.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grandma Wahl.|r
    .turnin 14401 >>Turn in Grandma's Cat
	.target Grandma Wahl
step
    .goto 179,36.89,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sebastian Hayward.|r
    .turnin 14403 >>Turn in The Hayward Brothers
    .accept 14412 >>Accept Washed Up
    .accept 14404 >>Accept Not Quite Shipshape
	.target Sebastian Hayward
step
	#completewith wood
    >>Kill |cRXP_ENEMY_Forsaken Castaways|r
    .complete 14412,1 --6/6 Forsaken Castaway slain
	.target Forsaken Castaway
step
    .goto 179,37.5,86.0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Barrel of Coal Tar|r |cFFfa9602that's on the the ground.|r
    .complete 14404,3 --1/1 Coal Tar
step
    .goto 179,37.4,87.1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Shipwright's Tools|r |cFFfa9602inside the house.|r
    .complete 14404,1 --1/1 Shipwright's Tools
step
	#label wood
    .goto 179,36.2,86.4
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Planks of Wood|r |cFFfa9602that's on the the ground.|r
    .complete 14404,2 --1/1 Planks of Wood
step
    .goto 179,36.9,84.2
    >>Kill |cRXP_ENEMY_Forsaken Castaways.|r
    .complete 14412,1 --6/6 Forsaken Castaway slain
	.target Forsaken Castaway
step
    #requires Area97
    .goto 179,36.9,84.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sebastian Hayward.|r
    .turnin 14404 >>Turn in Not Quite Shipshape
    .turnin 14412 >>Turn in Washed Up
    .accept 14405 >>Accept Escape By Sea
	.target Sebastian Hayward
step
    .isOnQuest 14405
    .hs >> Hearthstone to |cFFfa9602Duskhaven.|r
step
    .goto 179,37.6,65.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead.|r
    .turnin 14405 >>Turn in Escape By Sea
    .accept 14465 >>Accept To Greymane Manor
	.timer 30,Horse Ride |cFFfa9602to Graymane Manor|r
	.target Gwen Armstead
step
    .goto 179,30.24,52.16,5,0
    .goto 181,62.10,49.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Queen Mia Greymane|r, who can be found |cFFfa9602 upstairs within the Manor.|r
    .turnin 14465 >>Turn in To Greymane Manor
    .accept 14466 >>Accept The King's Observatory
	.target Queen Mia Greymane
step
    .goto 182,61.52,38.13,10,0
    .goto 182,50.18,33.47,10,0
    .goto 182,39.84,16.68,5 >>|cRXP_WARN_Make your way upstairs, enter the tower, and then follow the spiral staircase to ascend further.|r
step
    .goto 182,41.9,20.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Genn Greymane.|r
    .turnin 14466 >>Turn in The King's Observatory
    .turnin 14467 >>Turn in Alas, Gilneas!
    .accept 24438 >>Accept Exodus
	.target Genn Greymane
step
    .goto 179,28.86,54.2
    >>Exit the Manor and |TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Carriage.|r
    .complete 24438,1 --1/1 Carriage boarded
	.timer x,Carriage ride
step
    .goto 179,51.8,80.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane.|r
    .turnin 24438 >>Turn in Exodus
    .accept 24468 >>Accept Stranded at the Marsh
	.target Prince Liam Greymane
step
    .goto 179,53.3,74.2
    >>Kill |cRXP_ENEMY_Swamp Crocolisks.|r
    .complete 24468,1 --5/5 Crash Survivor rescued
	.target Swamp Crocolisk
step
    .goto 179,51.8,80.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prince Liam Greymane.|r
    .turnin 24468 >>Turn in Stranded at the Marsh
    .accept 24472 >>Accept Introductions Are in Order
	.target Prince Liam Greymane
step
    .isOnQuest 24472
    .goto 179,50.74,83.56,10 >>|cRXP_WARN_Take the path that leads up the mountain.|r
step
    .goto 179,46.73,83.2
    >>Kill |cRXP_ENEMY_Ogre Minions|r and loot |cRXP_LOOT_Koroth's Banner|r |cFFfa9602atop the Mountain.|r
    .complete 24472,1 --4/4 Ogre Minion slain
    .complete 24472,2 --1/1 Koroth's Banner
	.mob Ogre Minion
step
    .goto 179,51.8,80.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk |cRXP_FRIENDLY_Prince Liam Greymane.|r
    .turnin 24472 >>Turn in Introductions Are in Order
    .accept 24483 >>Accept Stormglen
	.target Prince Liam Greymane
step
    .goto 179,59.86,91.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead.|r
    .turnin 24483 >>Turn in Stormglen
    .accept 24484 >>Accept Pest Control
	.target Gwen Armstead
step
    #completewith next
    .goto 179,60.05,91.66
    .home >>Set your Hearthstone |cFFfa9602to Stormglen Village.|r
step
    .goto 179,60.26,91.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley.|r
    .accept 24495 >>Accept Pieces of the Past
	.target Lorna Crowley
step
    .goto 179,62.43,92.16,25,0
    .goto 179,64.07,91.72,25,0
    .goto 179,67.07,91.03
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Old Journal Pages|r and kill |cRXP_ENEMY_Vilebrood Skitterers.|r
    .complete 24495,1 --6/6 Old Journal Page
    .complete 24484,1 --6/6 Vilebrood Skitterer slain
	.mob Vilebrood Skitterer
step
    .goto 179,59.87,91.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead.|r
    .turnin 24484 >>Turn in Pest Control
    .accept 24501 >>Accept Queen-Sized Troubles
	.target Gwen Armstead
step
    .goto 179,60.3,91.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley.|r
    .turnin 24495 >>Turn in Pieces of the Past
	.target Lorna Crowley
step
    .goto 179,67.6,82.8
    >>Kill |cRXP_ENEMY_Rygna.|r
    .complete 24501,1 --1/1 Rygna slain
	.target Rygna
step
    .goto 179,59.9,91.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead.|r
    .turnin 24501 >>Turn in Queen-Sized Troubles
	.target Gwen Armstead
step
    .goto 179,60.26,91.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley.|r
    .accept 24578 >>Accept The Blackwald
	.target Lorna Crowley
step
    .goto 179,63.34,82.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belyrsa Starbreeze.|r
    .turnin 24578 >>Turn in The Blackwald
    .accept 24616 >>Accept Losing Your Tail
	.target Belyrsa Starbreeze
step
    .goto 179,63.8,81.3
    >>Kill the |cRXP_ENEMY_Dark Scout|r
    *|cRXP_ENEMY_Use |T133443:0|t[Belysra's Talisman]|r|cRXP_WARN_when you are frozen.|r
    .complete 24616,1 --1/1 Dark Scout slain
    .use 49944
	.mob Dark Scout
step
    .goto 179,63.34,82.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belyrsa Starbreeze.|r
    .turnin 24616 >>Turn in Losing Your Tail
    .accept 24617 >>Accept Tal'doren, the Wild Home
	.target Belyrsa Starbreeze
step
    .goto 179,68.7,73.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley.|r
    .turnin 24617 >>Turn in Tal'doren, the Wild Home
    .accept 24627 >>Accept At Our Doorstep
	.target Lord Darius Crowley
step
    .goto 179,69.3,73.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vassandra Stormclaw.|r
    .accept 24628 >>Accept Preparations
	.target Vassandra Stormclaw
step
    .goto 179,61.8,72.7
    >>Kill |cRXP_ENEMY_Howling Banshees|r and loot |cRXP_LOOT_Moonleaf|r |cFFfa9602on the ground.|r
    *|cRXP_WARN_Check your minimap for Moonleaf locations with track herbs.|r
	.skill herbalism,<1,1
    .complete 24628,1 --6/6 Moonleaf
    .complete 24627,1 --6/6 Howling Banshee slain
	.mob Howling Banshee
step
    .goto 179,61.8,72.7
    >>Kill |cRXP_ENEMY_Howling Banshees|r and loot |cRXP_LOOT_Moonleaf|r |cFFfa9602on the ground.|r
    .skill herbalism,1,1
    .complete 24628,1 --6/6 Moonleaf
    .complete 24627,1 --6/6 Howling Banshee slain
    .mob Howling Banshee
step
    .goto 179,68.7,73.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darius Crowley.|r
    .turnin 24627 >>Turn in At Our Doorstep
    .accept 24646 >>Accept Take Back What's Ours
	.target Darius Crowley
step
    .goto 179,69.3,73.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vassandra Stormclaw.|r
    .turnin 24628 >>Turn in Preparations
	.target Vassandra Stormclaw
step
    .goto 179,57.6,75.7
    >>Use |T134229:0|t[Horn of Tal'doren] |cRXP_WARN_before you run into the camp.|r
	>>Go |cFFfa9602inside the House|r and |TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Worn Coffer.|r
    .complete 24646,1 --1/1 Mysterious Artifact
    .use 50134
step
    .goto 179,68.71,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley.|r
    .turnin 24646 >>Turn in Take Back What's Ours
    .accept 24593 >>Accept Neither Human Nor Beast
	.target Lord Darius Crowley
step
    .goto 179,69.0,72.8
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Well of Fury.|r
    .complete 24593,1 --1/1 Well of Fury
step
    .goto 179,69.2,73.1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Well of Tranquility.|r
    .complete 24593,2 --1/1 Well of Tranquility
step
    .goto 179,69.1,73.5
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Well of Balance.|r
    .complete 24593,3 --1/1 Well of Balance
step
    .goto 179,68.7,73.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley.|r
    .turnin 24593 >>Turn in Neither Human Nor Beast
    .accept 24673 >>Accept Return to Stormglen
	.target Lord Darius Crowley
step
    #completewith next
    .hs >> Hearthstone to |cFFfa9602Stormglen Village.|r
step
    .goto 179,59.9,91.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwen Armstead.|r
    .turnin 24673 >>Turn in Return to Stormglen
    .accept 24672 >>Accept Onwards and Upwards
	.target Gwen Armstead
step
    .goto 179,71.46,84.97,80,0
    .goto 179,72.7,80.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krennas Aranas.|r
    .turnin 24672 >>Turn in Onwards and Upwards
    .accept 24592 >>Accept Betrayal at Tempest's Reach
	.target Krennas Aranas
step
    .goto 179,79.2,69.08
    >>|T135446:0|t[Krennan's Potion of Stealth] to stealth to |cRXP_ENEMY_Lord Walden.|r
    >>|cRXP_WARN_If you accidently end up in combat, use it aswell.|r
    .complete 24592,2 --1/1 Lord Walden slain
	.target Lord Walden
    .use 50218
step
    .goto 179,84.1,73.4
    >>|T135446:0|t[Krennan's Potion of Stealth] to stealth to |cRXP_ENEMY_Baron Ashbury.|r
    >>|cRXP_WARN_If you accidently end up in combat, use it aswell.|r
    .complete 24592,1 --1/1 Baron Ashbury slain
	.target Baron Ashbury
    .use 50218
step
    .goto 179,78.3,72.1
    .use 50218 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane.|r
    >>|cRXP_WARN_Use your stealth if you need to.|r
    .turnin 24592 >>Turn in Betrayal at Tempest's Reach
    .accept 24677 >>Accept Flank the Forsaken
	.target King Genn Greymane
step
    .goto 179,70.9,39.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley.|r
    .turnin 24677 >>Turn in Flank the Forsaken
    .accept 24575 >>Accept Liberation Day
	.target Lorna Crowley
step
    .goto 179,70.65,39.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magda Whitewall.|r
    .accept 24675 >>Accept Last Meal
	.target Magda Whitewall
step
    .goto 179,70.8,40.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marcus.|r
    .accept 24674 >>Accept Slaves to No One
	.target Marcus
step
    .goto 179,75.67,39.07,40,0
    .goto 179,77.96,37.54,45,0
    .goto 179,77.76,48.78
    >>Kill |cRXP_ENEMY_Brown Stags|r and loot them for |cRXP_LOOT_Side of Stag Meat.|r
    .complete 24675,1 --10/10 Side of Stag Meat
	.mob Brown Stag
step
    .isOnQuest 24675
    .goto 179,76.22,31.47,10,0 >>Enter |cFFfa9602the Emberstone Mine.|r
step
    #completewith next
    >>Kill |cRXP_ENEMY_Forsaken Slavedrivers|r, loot them for their |cRXP_LOOT_keys|r and use these keys on the |cRXP_PICK_Ball and Chain|r of |cRXP_FRIENDLY_Enslaved Villagers.|r
    .collect 49881,5,24575,1,-1
    .complete 24575,1 --5/5 Enslaved Gilnean freed
	.mob Forsaken Slavedriver
	.mob Enslaved Villagers
step
    .goto 180,55.05,75.25
    >>Kill |cRXP_ENEMY_Brothogg the Slavemaster|r |cFFfa9602in the back of the mine.|r
    .complete 24674,1 --1/1 Brothogg the Slavemaster slain
	.mob Brothogg the Slavemaster
step
    .goto 179,76.22,31.47,10,0
    .goto 180,55.05,75.25
    >>Kill |cRXP_ENEMY_Forsaken Slavedrivers|r, loot them for their |cRXP_LOOT_Keys|r and use these keys on the |cRXP_PICK_Ball and Chain|r of |cRXP_FRIENDLY_Enslaved Villagers.|r
    .collect 49881,5,24575,1,-1
    .complete 24575,1 --5/5 Enslaved Gilnean freed
	.mob Forsaken Slavedriver
step
	#completewith next
	.goto 179,70.9,39.8
    .deathskip >> Die |cFFfa9602inside the Mine.|r and respawn |cFFfa9602near the Outpost.|r
step
    .goto 179,70.9,39.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley.|r
    .turnin 24575 >>Turn in Liberation Day
	.target Lorna Crowley
step
    .goto 179,70.7,39.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magda Whitewall.|r
    .turnin 24675 >>Turn in Last Meal
	.target Magda Whitewall
step
    .goto 179,71.1,39.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marcus.|r
    .turnin 24674 >>Turn in Slaves to No One
	.target Marcus
step
    .goto 179,70.9,39.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley.|r
    .accept 24676 >>Accept Push Them Out
	.target Lorna Crowley
step
    >>Kill |cRXP_FRIENDLY_Forsaken Infantry|r, |cRXP_ENEMY_Cornell|r and |cRXP_ENEMY_Valnov.|r
    .complete 24676,2 --1/1 Executor Cornell slain
	.goto 179,72.87,28.36
    .complete 24676,3 --1/1 Valnov the Mad slain
	.goto 179,74.14,27.44
	.complete 24676,1 --4/4 Forsaken Infantry slain
	.goto 179,73.51,30.22
	.mob Forsaken Infantry
	.mob Executor Cornell
	.mob Valnov the Mad
step
    .goto 179,70.9,39.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley.|r
    .turnin 24676 >>Turn in Push Them Out
    .accept 24904 >>Accept The Battle for Gilneas City
	.target Lorna Crowley
step
    .goto 202,68.87,45.00,20,0
    .goto 202,66.9,56.31,20,0
    .goto 202,57.6,67.6
    >>Kill |cRXP_ENEMY_Gorerot|r, |cRXP_WARN_you can use the catapults to kill him quicker.|r
    .complete 24904,1 --1/1 Gorerot slain
	.mob Gorerot
step
    .goto 202,42.45,82.39,25,0
    .goto 202,38.58,60.24
    >>Kill the [3] |cRXP_ENEMY_Soultethered Banshees|r and then fight |cRXP_ENEMY_Sylvanas.|r
    .complete 24904,2 --1/1 Battle for Gilneas City Complete
    .mob Soultethered Banshees
step
    .goto 202,38.58,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Talk to |cRXP_FRIENDLY_Lorna Crowley.|r
    .turnin 24904 >>Turn in The Battle for Gilneas City
    .accept 24902 >>Accept The Hunt For Sylvanas
	.target Lorna Crowley
step
    .goto 202,36.44,47.17,20,0
    .goto 202,40.3,31.24,10,0
    .goto 202,45.06,52.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley|r then follow |cRXP_FRIENDLY_Tobias Mistmantle|r until he hides in the water |cFFfa9602inside the Cathedral.|r Go back to |cRXP_FRIENDLY_Lorna|r after the roleplay ends. It takes a minute.
    .complete 24902,1 --Hunt for Sylvanas
	.target Lorna Crowley
	.target Tobias Mistmantle
step
    .goto 202,38.61,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley.|r
    .turnin 24902 >>Turn in The Hunt For Sylvanas
    .accept 24903 >>Accept Vengeance or Survival
	.target Lorna Crowley
step
    goto 202,32.3,57.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane.|r
    .turnin 24903 >>Turn in Vengeance or Survival
    .accept 24920 >>Accept Slowing the Inevitable
	.target King Genn Greymane
step
    .goto 202,30.21,60.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tInteract with the |cRXP_FRIENDLY_Captured Bat.|r
    >>Use |T133709:0|tIron Bomb(1) on |cRXP_ENEMY_Catapults|r and |cRXP_ENEMY_Forsaken|r and use |T132182:0|tFly Back (2) once you are done.
    .complete 24920,1 --6/6 Forsaken Catapult slain
    .complete 24920,2 --40/40 Invading Forsaken
step
    .goto 202,32.4,57.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Genn Greymane.|r
    .turnin 24920 >>Turn in Slowing the Inevitable
    .accept 24678 >>Accept Knee-Deep
	.target King Genn Greymane
step
    .isOnQuest 24678
    .goto 179,34.06,57.47,15 >>Go |cFFfa9602into the Tunnel beside Greymane.|r
step
    .goto 179,49.84,56.93
    Use the |T135432:0|t[Half-Burnt Torch] |cRXP_WARN_to scare the Rats away.|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krennan Aranas.|r
    .turnin 24678 >>Turn in Knee-Deep
    .accept 24602 >>Accept Laid to Rest
    .use 50220
step
    .goto 179,46.7,50.2
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Disturbed Soil|r |cFFfa9602on the ground.|r
    .complete 24602,1 --5/5 Unearthed Memento
step
    .goto 179,49.8,56.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krennan Aranas.|r
    .turnin 24602 >>Turn in Laid to Rest
    .accept 24679 >>Accept Patriarch's Blessing
step
    .goto 179,49.03,53.40
    >>Use |T133669:0|t[Blessed Offering] on the Shrine.
    .complete 24679,1 --1/1 Offering placed
    .use 51956
step
    .goto 179,49.84,56.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krennan Aranas.|r
    .turnin 24679 >>Turn in Patriarch's Blessing
    .accept 24680 >>Accept Keel Harbor
	.target Krennan Aranas
step
    .goto 179,41.9,37.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley.|r
    .turnin 24680 >>Turn in Keel Harbor
    .accept 24681 >>Accept They Have Allies, But So Do We
	.target Lord Darius Crowley
step
	#completewith next
    .goto 179,42.38,37.81
    .vehicle >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Glaive Thrower|r to mount it.
step
    .goto 179,35.03,36.16,60,0
    .goto 179,32.23,28.14,60,0
    .goto 179,27.98,26.45,60,0
    .goto 179,27.94,38.40,60,0
    .goto 179,35.03,36.16
    >>Use [Double Speed] (3) on cooldown to move faster. Use [Launch Glaive] (1) and [Glaive Barrage] (2) to Kill |cRXP_ENEMY_Wolfmaw Outriders|r, |cRXP_ENEMY_Orc Raiders|r and |cRXP_ENEMY_Orcish War Machines.|r
    .complete 24681,2 --8/8 Wolfmaw Outrider slain
    .complete 24681,3 --4/4 Orcish War Machine slain
    .complete 24681,1 --40/40 Orc Raider slain
step
    .goto 179,41.94,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Darius Crowley.|r
    .turnin 24681 >>Turn in They Have Allies, But So Do We
	.target Lord Darius Crowley
step
    .goto 179,41.65,36.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley.|r
    .accept 26706 >>Accept Endgame
	.target Lorna Crowley
step
	#completewith next
    .goto 179,41.64,36.11
    .vehicle >> |TInterface/cursor/crosshair/interact.blp:20|tInteract with a |cRXP_FRIENDLY_Hippogryph|r to mount it.
    >>|cRXP_WARN_NOTE: This Quest is on an Independant Timer, that means that you have to wait anywhere inbetween 1-5 minutes to be able to mount the |cRXP_FRIENDLY_Hippogryph|r|r
	.timer 58,Gunship Hippogryph Flight Time
step
    >>Kill all the |cRXP_ENEMY_Orcs|r on the top deck then |TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Rope|r in the middle connection to go down to the lower deck. Continue to Kill |cRXP_ENEMY_Orcs.|r |cRXP_WARN_rDo your best to follow |r |cRXP_FRIENDLY_Lorna.|r
    .complete 26706,1 --1/1 Gunship destroyed
	.timer 55,Gunship Victory Flight
step
    .goto 179,41.64,36.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorna Crowley.|r
    .turnin 26706 >>Turn in Endgame
	.target Lorna Crowley
step
    .goto 179,42.6,35.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Nightwind.|r
    .accept 14434 >> Accept Rut'theran Village
    .turnin 14434 >>Turn in Rut'theran Village
	.target Admiral Nightwind
step
    #completewith next
    .goto 57,52.54,89.44,5 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cFFfa9602Exodar Portal|r
    .zoneskip 97
    .nodmf
step
    .goto 103,41.87,72.93,10 >>Enter |cFFfa9602The Exodar|r |cFFfa9602and descend the Spiral Staircase.|r
    .goto 103,48.33,62.94,10 >>|TInterface/cursor/crosshair/interact.blp:20|tClick the |cRXP_PICK_Stormwind Portal.|r
    .zoneskip 84
    .nodmf
step
    #completewith next
    .goto 84,67.49,80.56,20,0
    .goto 84,67.03,83.44,20,0
    .goto 84,69.76,84.87,20,0
    .goto 37,41.71,64.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bartlett the Brave|r |cFFfa9602in Goldshire.|r
    .fp >>Get the Goldshire Flight Path
	.target Bartlett the Brave
    .nodmf
step
    #veteran
    .goto 89,56.58,60.73,10,0
    .goto 89,54.82,59.18
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost.|r You'll need to purchase |cRXP_WARN_certain items from the auction house to take full advantage of this.|r If necessary,|cRXP_WARN_you can transfer gold from your other characters to make these purchases.|r However, if you find that you can't afford everything, |cRXP_WARN_It's still worthwhile to visit the Darkmoon Faire for the temporary experience buff and to buy only some of the items.|r
    >>|cRXP_WARN_It is recommended to log in with a different character possessing at least 10,000 gold. Use this character to purchase the items and then send them over.|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Auctioneer|r
    .collect 71715,1
    .collect 71638,1
    .collect 71637,1
    .collect 71636,1
    .collect 71635,1
    .collect 71952,1
    .collect 71951,1
    .collect 71953,1
    .collect 71716,1
    .target Auctioneer Tolon
    .target Auctioneer Golothas
    .target Auctioneer Cazarez
    .target Auctioneer Golothas
step
    #fresh
    #completewith DarkMoonFaire
    +The Darkmoon Faire event is now active, |cRXP_WARN_which guarantees you to gain an additional level for free and a temporary 10% experience boost.|r
step
    #completewith next
    .link /run AbandonSkill(186); AbandonSkill(182);>> |cRXP_WARN_Click this text to receive a macro that will unlearn your professions.|r
    .dmf
step
    #label DarkMoonFaire
    .goto 89,38.58,49.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage.|r
    .accept 7905 >>Accept The Darkmoon Faire
	.target Darkmoon Faire Mystic
    .dmf
step
    .goto 89,38.58,49.38
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darkmoon Faire Mystic Mage.|r
    .skipgossip
    .zoneskip 37
    .dmf
    .target Darkmoon Faire Mystic Mage
]])
