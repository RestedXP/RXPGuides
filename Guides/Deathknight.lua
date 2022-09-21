RXPGuides.RegisterGuide([[
#version 5
#wotlk

<< DK
#group RestedXP Death Knight Start

#next RestedXP Alliance 60-70\59-61 Hellfire Peninsula << Alliance
#next RestedXP Horde 60-70\59-61 Hellfire Peninsula << Horde


#defaultfor DK
#name 55-58 The Scarlet Enclave
step
    .goto ScarletEnclave,51.3,35.1
    .accept 12593 >>Accept In Service Of The Lich King
--X Needs next guide depending on ally/horde
step
    .goto ScarletEnclave,48.3,28.2
	>>Talk to Instructor Razuvious to turn in your quest
    .turnin 12593 >>Turn in In Service Of The Lich King
    .accept 12619 >>Accept The Emblazoned Runeblade
step
    .goto ScarletEnclave,46.8,29.1,40,0
    .goto ScarletEnclave,48.1,27.9,40,0
    .goto ScarletEnclave,49.2,26.5,40,0
    .goto ScarletEnclave,46.8,29.1,40,0
    .goto ScarletEnclave,48.1,27.9,40,0
    .goto ScarletEnclave,49.2,26.5
	>>Loot the Battle-Worn Sword. It can have multiple spawn locations around the walls
    .collect 38607,1,12619,1 --Battle-Worn Sword (1)
step
    .goto ScarletEnclave,47.9,27.6
	.use 38607 >> Go to the Runeforge. Click the Battle-Worn Sword in your bags to make it into a Runebladed Sword
    .complete 12619,1 --Runebladed Sword (1)
step
    .goto ScarletEnclave,48.3,28.2
	>>Return to Razuvious
    .turnin 12619 >>Turn in The Emblazoned Runeblade
    .accept 12842 >>Accept Runeforging: Preparation For Battle
step
    .goto ScarletEnclave,47.9,27.5
	>>Go to the Runeforge. Click on Runeforging in your spellbook and drag it onto your bars. Apply one of the enchants to your new weapon
    .complete 12842,1 --Weapon emblazoned (1)
step
    .goto ScarletEnclave,48.3,28.2
	>>Return to Razuvious
    .turnin 12842 >>Turn in Runeforging: Preparation For Battle
    .accept 12848 >>Accept The Endless Hunger
step
    .goto ScarletEnclave,48.4,29.0
	.use 40732 >>Go into the middle of the room. Click on one of the Acherus Soul Prisons chaining the Unworthy Initiates to the wall to fight them. Run back up to Razuvious while waiting for their RP, and death grip them up to him. Kill it
    .complete 12848,1 --Unworthy Initiate dominated (1)
step
    .goto ScarletEnclave,48.3,28.2
	>>Return to Razuvious
    .turnin 12848 >>Turn in The Endless Hunger
    .accept 12636 >>Accept The Eye Of Acherus
step
    .goto ScarletEnclave,51.3,35.1
	>>Return to The Lich King
    .turnin 12636 >>Turn in The Eye Of Acherus
    .accept 12641 >>Accept Death Comes From On High
step
	#label dkeyes
	#completewith next
    .goto ScarletEnclave,51.1,36.2
    .goto ScarletEnclave,61.5,60.6,0
	>>Click the Eye to the left or right of The Lich King
	>>Use "Siphon of Acherus" (1) to analyze the Forge. Use "Shroud" (3) to avoid taking damage from the Scarlet mobs.
    .complete 12641,1 --New Avalon Forge Analyzed (1)
step
    .goto ScarletEnclave,61.7,68.2,0
	>>Use "Siphon of Acherus" (1) to analyze the Hold. Use "Shroud" (3) to avoid taking damage from the Scarlet mobs.
    .complete 12641,3 --Scarlet Hold Analyzed (1)
step
    .goto ScarletEnclave,53.4,70.7,0
	>>Use "Siphon of Acherus" (1) to analyze the Town Hall. Use "Shroud" (3) to avoid taking damage from the Scarlet mobs.
    .complete 12641,2 --New Avalon Town Hall Analyzed (1)
step
    .goto ScarletEnclave,52.2,80.7,0
	>>Use "Siphon of Acherus" (1) to analyze the Chapel. Use "Shroud" (3) to avoid taking damage from the Scarlet mobs.
    .complete 12641,4 --Chapel of the Crimson Flame Analyzed (1)
--X NEED A NEW COMMAND FOR THESE PREVIOUS 4 STEPS
step
	#completewith next
 	+Press Cancel or (4) once you're done to return to The Ebon Hold
step
	#requires dkeyes
    .goto ScarletEnclave,51.3,35.3
	>>Return to The Lich King
    .turnin 12641 >>Turn in Death Comes From On High
    .accept 12657 >>Accept The Might Of The Scourge
step
	#completewith next
    .goto ScarletEnclave,50.5,33.4,10 >>Run into the purple portal
step
    .goto ScarletEnclave,48.9,29.8
	>>Talk to Darion in the middle of the room on the bottom floor
    .turnin 12657 >>Turn in The Might Of The Scourge
    .accept 12850 >>Accept Report To Scourge Commander Thalanor
step
    .goto ScarletEnclave,51.0,34.6
	>>Talk to Scourge Commander Thalanor on the floor that you're currently on
    .turnin 12850 >>Turn in Report To Scourge Commander Thalanor
    .accept 12670 >>Accept The Scarlet Harvest
step
	#completewith next
    .goto ScarletEnclave,52.0,35.0
    .fly >>Click on the Scourge Gryphon to go to Death's Breach
step
    .goto ScarletEnclave,52.3,33.9
	>>Talk to Prince Valanar
    .turnin 12670 >>Turn in The Scarlet Harvest
    .accept 12678 >>Accept If Chaos Drives, Let Suffering Hold The Reins
step
	#completewith next
    .goto ScarletEnclave,53.2,33.5,0
    .goto ScarletEnclave,51.4,36.1,0
	>>Talk to Salanar patrolling on the road
    .accept 12680 >>Accept Grand Theft Palomino
step
    .goto ScarletEnclave,54.5,34.2
	>>Talk to Olrun in the body pit
    .accept 12733 >>Accept Death's Challenge
step
    .goto ScarletEnclave,53.2,33.5,30,0
    .goto ScarletEnclave,51.4,36.1
	>>Talk to Salanar patrolling on the road
    .accept 12680 >>Accept Grand Theft Palomino
step
    .goto ScarletEnclave,53.7,36.3,50,0
    .goto ScarletEnclave,52.1,38.2
	>>Talk to Orithos (the patrolling skeleton archer)
    .accept 12679 >>Accept Tonight We Dine In Havenshire
step
	#completewith next
    .goto ScarletEnclave,55.6,51.4
	>>Kill Scarlet Mobs and Citizens of Havenshire in the area. Loot the Saronite arrows on the ground in the area
	.complete 12678,1 --Scarlet Crusader (10)
    .complete 12678,2 --Citizen of Havenshire (10)
    .complete 12679,1 --Saronite Arrow (15)
step
	#completewith next
    .goto ScarletEnclave,57.4,42.3
	.vehicle >>Steal any Havenshire Horse. Be careful of Stable Master Kitrik patrolling the horse area as he is an elite
step
    .goto ScarletEnclave,52.4,34.3
	>>Return the stolen horse back to Death's Breach. Use "Gallop" (2) on cooldown to run faster. Use "Deliver Stolen Horse" (1) to return it
    .complete 12680,1 --Horse Successfully Stolen (1)
step
    .goto ScarletEnclave,53.2,33.5,30,0
    .goto ScarletEnclave,51.4,36.1
	>>Talk to Salanar patrolling on the road
    .turnin 12680 >>Turn in Grand Theft Palomino
    .accept 12687 >>Accept Into the Realm of Shadows
step
	#completewith next
    .goto ScarletEnclave,54.6,46.4
    .vehicle >>Kill a Dark Rider of Acherus. Mount his Deathcharger after killing him
step
    .goto ScarletEnclave,52.4,34.7
	>>Return the Acherus Deathcharger to Death's Breach. Use "Horseman's Call" (1) to return it.
    .complete 12687,1 --The Horseman's Challenge (1)
step
    .goto ScarletEnclave,53.2,33.5,30,0
    .goto ScarletEnclave,51.4,36.1
	>>Talk to Salanar patrolling on the road
    .turnin 12687 >>Turn in Into the Realm of Shadows
step
	#completewith next
	.cast 48778 >> Go into your Character Panel (C), then into the collections tab. Summon your Archerus Deathcharger then bind it to your bars
step
	#completewith Mailbox
    .goto ScarletEnclave,55.6,51.4,0
	>>Kill Citizens of Havenshire in the area. Loot the Saronite arrows on the ground in the area
    .complete 12678,2 --Citizen of Havenshire (10)
    .complete 12679,1 --Saronite Arrow (15)
step
    .goto ScarletEnclave,55.9,38.8,50,0
    .goto ScarletEnclave,53.9,45.6
	>>Kill the Scarlet mobs in the area
	.complete 12678,1 --Scarlet Crusader (10)
step
	#sticky
	#label Citizens
    .goto ScarletEnclave,56.0,58.8,0,0
	>>Kill Citizens of Havenshire running away in the area
    .complete 12678,2 --Citizen of Havenshire (10)
step
    .goto ScarletEnclave,56.1,51.9
	>>Loot the arrows on the ground throughout the field
    .complete 12679,1 --Saronite Arrow (15)
step
	#requires Citizens
    .goto ScarletEnclave,51.9,35.4,30,0
    .goto ScarletEnclave,51.0,33.6,30,0
    .goto ScarletEnclave,53.8,30.9,30,0
    .goto ScarletEnclave,51.9,35.4
	>>Around Death's Breach, talk to and duel 5 Death Knight Initiates. Do not run out of the 30 yard duel range
    .complete 12733,1 --Death Knights defeated in a duel (5)
	.skipgossip
step
    .goto ScarletEnclave,54.5,34.5
    .turnin 12733 >>Turn in Death's Challenge
	.isQuestComplete 12733
step
	#requires Citizens
	>>Ride back to Death's Breach
    .turnin 12679 >>Turn in Tonight We Dine In Havenshire
    .goto ScarletEnclave,53.3,36.8
    .turnin 12733 >>Turn in Death's Challenge
    .goto ScarletEnclave,54.5,34.5
    .turnin 12678 >>Turn in If Chaos Drives, Let Suffering Hold The Reins
    .accept 12697 >>Accept Gothik the Harvester
    .goto ScarletEnclave,52.3,34.0
step
    .goto ScarletEnclave,54.0,35.0
	>>Talk to Gothik the Harvester
    .turnin 12697 >>Turn in Gothik the Harvester
    .accept 12698 >>Accept The Gift That Keeps On Giving
step
	#completewith next
	.use 39253
	+Run inside the Havenshire Mines. Use your Gift of the Harvester in your bags on Scarlet Miners that are NOT in combat until you have 5 Ghouls following you, then return to Death's Breach.
    .goto ScarletEnclave,58.4,30.9,30,0
    .goto ScarletEnclave,60.0,31.6,30,0
    .goto ScarletEnclave,61.6,27.5,0
step
	.goto ScarletEnclave,54.1,34.9
	>>Return all 5 ghouls to Gothik at Death's Breach
    .complete 12698,1 --Scarlet Ghoul Returned (5)
    .turnin 12698 >>Turn in The Gift That Keeps On Giving
    .accept 12700 >>Accept An Attack Of Opportunity
step
    .goto ScarletEnclave,52.3,34.0
	>>Return to Valanar
    .turnin 12700 >>Turn in An Attack Of Opportunity
    .accept 12701 >>Accept Massacre At Light's Point
step
    .goto ScarletEnclave,60.2,32.7,40,0
    .goto ScarletEnclave,63.5,32.3,20,0
    .goto ScarletEnclave,67.7,39.1
    >>Run past the mine, drop down the mountain and go behind Light's Point Tower. Drop down the mountain there, then run to the ship. Avoid all the non-miner mobs that you see. If you die, wait for the Val'Kyr to ressurect you (DO NOT release spirit)
	>>Once you get to the ship, enter one of the Scarlet Cannons. Spam "Scarlet Cannon" (1) to kill the Scarlet Defenders. Use "Electro Magnetic Pulse" (2) if the Scarlet Defenders start to melee attack the cannon
    .complete 12701,1 --Scarlet Defender (100)
step
	#completewith next
	.vehicle >> When you have killed all 100 defenders, use "Skeletal Gryphon Escape" (3) to return to Death's Reach
step
    .goto ScarletEnclave,52.3,34.1
	>>Return to Valanar
    .turnin 12701 >>Turn in Massacre At Light's Point
    .accept 12706 >>Accept Victory At Death's Breach!
step << skip
    .hs >> Hearth back to Acherus (Your Hearth is automatically set here)
--X Flight timer is 15s on retail, so i think its slightly faster. Didn't get a hearthstone on my retail run either
step << skip
	#completewith next
	.goto ScarletEnclave,50.5,33.4,10 >>Take the teleporter downstairs.
step
	#completewith next
    .goto ScarletEnclave,53.1,32.5
	.fly >> Take one of the Scourge Gryphons back up to Acherus
step
    .goto ScarletEnclave,48.9,29.9
	>>Return to Darion Mograine
    .turnin 12706 >>Turn in Victory At Death's Breach!
    .accept 12714 >>Accept The Will Of The Lich King
step
    .goto ScarletEnclave,47.5,26.5
	.turnin 12849 >>Turn in The Power of Blood, Frost And Unholy
	.trainer >> Train your class spells
step
    .goto ScarletEnclave,47.5,26.5
	.turnin 12849 >>Turn in The Power of Blood, Frost And Unholy
step
	#completewith next
.goto ScarletEnclave,52.1,35.0
    .fly >>Click the Gryphon to return to Death's Breach
step
    .goto ScarletEnclave,53.4,36.5
	>>Talk to Valanar. He's moved closer to the mountain edge
    .turnin 12714 >>Turn in The Will Of The Lich King
    .accept 12715 >>Accept The Crypt of Remembrance
step
    .goto ScarletEnclave,52.9,35.2
    >> Buy 40 Corpse Dust
    .collect 37201,40
step
    .goto ScarletEnclave,55.3,46.2
	>>Click the letter on the mailbox
    .turnin 12711 >>Turn in Abandoned Mail
step
    .goto ScarletEnclave,55.8,52.4
	>>Talk to Noth in the field in front of the cauldron
    .accept 12716 >>Accept The Plaguebringer's Request
step
    .goto ScarletEnclave,53.9,58.1,15,0
	>>Head to the bottom of the Crypt of Remembrance
    .turnin 12715 >>Turn in The Crypt of Remembrance
    .accept 12719 >>Accept Nowhere To Run And Nowhere To Hide
    .goto ScarletEnclave,54.3,57.4
    .accept 12722 >>Accept Lambs To The Slaughter
    .goto ScarletEnclave,54.6,57.4
step
	#completewith next
	>>Kill Citizens of New Avalon and Scarlet Crusade mobs. Loot them for their skulls. You'll complete this later
    .complete 12716,3 --Crusader Skull (10)
    .complete 12722,2 --Citizen of New Avalon (15)
    .complete 12722,1 --Scarlet Crusade Soldier (10)
step
    .goto ScarletEnclave,53.1,71.1,20,0
	>>Go inside the Town Hall and kill Mayor Quimby. Loot the book on the table next to him
    .complete 12719,1 --Mayor Quimby (1)
    .goto ScarletEnclave,52.2,71.2
    .complete 12719,2 --New Avalon Registry (1)
    .goto ScarletEnclave,52.5,71.0
step
    .goto ScarletEnclave,53.9,58.1,15,0
	>>Ride back to the Crypt
    .turnin 12719 >>Turn in Nowhere To Run And Nowhere To Hide
    .accept 12720 >>Accept How To Win Friends And Influence Enemies
    .goto ScarletEnclave,54.3,57.4
step
	#completewith Dawn
	>>Kill Citizens of New Avalon and Scarlet Crusade mobs. Loot them for their skulls
    .complete 12716,3 --Crusader Skull (10)
    .complete 12722,2 --Citizen of New Avalon (15)
    .complete 12722,1 --Scarlet Crusade Soldier (10)
step
    .goto ScarletEnclave,62.0,60.3
	>>Loot the chain on the wall inside of the Blacksmith
    .complete 12716,2 --Iron Chain (1)
step
    .goto ScarletEnclave,57.8,61.8
	>>Loot the Cauldron in the basement of the Inn
    .complete 12716,1 --Empty Cauldron (1)
step
	#completewith next
    	.use 39418
	+Open the Ornately Jeweled Box in your bags. Equip both Keleseth's Persuaders inside of it
--X objective step for use/equip
step
	#label Dawn
    .goto ScarletEnclave,62.4,68.2
	>>With Keleseth's Persuaders equipped, attack Scarlet Mobs - Keep killing them until one tells you something (they'll turn neutral when the objective completes)
    .complete 12720,1 --"Crimson Dawn" Revealed (1)
step
	#completewith Soldiers
	>>Loot the Humanoids of New Avalon for their skulls
    .complete 12716,3 --Crusader Skull (10)
step
	#completewith next
    .goto ScarletEnclave,62.7,68.4
	>>Kill the Scarlet Crusade Soldiers in the area
    .complete 12722,1 --Scarlet Crusade Soldier (10)
step
    .goto ScarletEnclave,57.8,67.8,30,0
    .goto ScarletEnclave,56.9,68.5,30,0
    .goto ScarletEnclave,55.5,68.3,30,0
    .goto ScarletEnclave,53.9,71.9,30,0
    .goto ScarletEnclave,53.0,69.7
	>>Kill the Citizens of New Avalon in the area
    .complete 12722,2 --Citizen of New Avalon (15)
step
	#label Soldiers
    .goto ScarletEnclave,62.7,68.4
	>>Kill the Scarlet Crusade Soldiers in the area
    .complete 12722,1 --Scarlet Crusade Soldier (10)
step
    .goto ScarletEnclave,53.0,69.7
	>>Loot the Humanoids of New Avalon for their skulls
    .complete 12716,3 --Crusader Skull (10)
step
	>>Talk to Noth the Plaguebringer, then talk to the Cauldron
    .turnin 12716 >>Turn in The Plaguebringer's Request
    .accept 12717 >>Accept Noth's Special Brew
    .goto ScarletEnclave,55.9,52.4
    .turnin 12717 >>Turn in Noth's Special Brew
    .goto ScarletEnclave,56.2,52.0
step
	#completewith next
    .goto ScarletEnclave,56.2,52.0,0
	>>If you have more than 20 skulls, click the cauldron again for more of Noth's Special Brew. Bind them to your bars
	.turnin 12718 >>Turn in More Skulls for Brew
step
    .goto ScarletEnclave,53.9,58.1,15,0
	>>Ride back to the Crypt. Re-Equip your normal weapon
	.turnin 12722 >> Turn in Lambs To The Slaughter
	.goto ScarletEnclave,54.6,57.5
    .turnin 12720 >>Turn in How To Win Friends And Influence Enemies
    .accept 12723 >>Accept Behind Scarlet Lines
    .goto ScarletEnclave,54.2,57.4
step
	#completewith next
	.destroy 39328 >> Delete any leftover Crusader Skulls that you have in your bags
step
	>>Ride to the house, then go upstairs to the second floor
    .turnin 12723 >>Turn in Behind Scarlet Lines
    .accept 12724 >>Accept The Path Of The Righteous Crusader
    .goto ScarletEnclave,56.3,79.8
    .accept 12725 >>Accept Brothers In Death
    .goto ScarletEnclave,56.3,80.0
step
    .goto ScarletEnclave,62.8,68.6,15,0
    .goto ScarletEnclave,63.0,68.0
	>>Run down to the cellar of Scarlet Hold and talk to Koltira Deathweaver. Avoid fighting the mobs en route - if you die, let the Val'kyr resurrect you (DO NOT RELEASE)
	>>Don't defend Koltira after starting the quest, it is not an escort
    .turnin 12725 >>Turn in Brothers In Death
    .accept 12727 >>Accept Bloody Breakout
step
	#completewith next
    .goto ScarletEnclave,63.1,68.2,15,0
    .goto ScarletEnclave,62.7,68.6,15,0
    .goto ScarletEnclave,62.9,68.3
	>>Don't defend Koltira, rather, go to the top floor. Loot the Patrol Schedule on the table
    .complete 12724,1 --New Avalon Patrol Schedule (1)
step
	.goto ScarletEnclave,63.0,68.0
	>>Go back to Koltira Deathweaver. Kill Valroth. Loot his Head off the ground
	>>You may need to kill adds attacking Koltira as you wait for Valroth to spawn
    .complete 12727,1 --Valroth's Head (1)
step
    .goto ScarletEnclave,63.1,68.2,15,0
    .goto ScarletEnclave,62.7,68.6,15,0
    .goto ScarletEnclave,62.9,68.3
	>>Go to the top floor and loot the Patrol Schedule on the table
    .complete 12724,1 --New Avalon Patrol Schedule (1)
step
	>>Return to the 2nd floor of the House
    .turnin 12724 >>Turn in The Path Of The Righteous Crusader
    .goto ScarletEnclave,56.3,79.8
    .turnin 12727 >>Turn in Bloody Breakout
    .accept 12738 >>Accept A Cry For Vengeance!
    .goto ScarletEnclave,56.3,80.0
step
    .goto ScarletEnclave,52.6,80.7,40,0
    .goto ScarletEnclave,53.1,82.1
	>>Ride out of the house to the Chapel. Talk to Plaguefist
    .turnin 12738 >>Turn in A Cry For Vengeance!
    .accept 12748 >>Accept A Special Surprise << Orc
    .accept 12739 >>Accept A Special Surprise << Tauren
    .accept 12742 >>Accept A Special Surprise << Human
    .accept 12743 >>Accept A Special Surprise << NightElf
    .accept 12744 >>Accept A Special Surprise << Dwarf
    .accept 12745 >>Accept A Special Surprise << Gnome
    .accept 12746 >>Accept A Special Surprise << Draenei
    .accept 12747 >>Accept A Special Surprise << BloodElf
    .accept 12749 >>Accept A Special Surprise << Troll
    .accept 12750 >>Accept A Special Surprise << Undead
step << Orc
    .goto ScarletEnclave,53.8,83.4
	>>Stand infront of Kug and wait for the RP to finish. Kill him after
    .complete 12748,1 --Kug Ironjaw (1)
step << Tauren
    .goto ScarletEnclave,54.4,83.4
	>>Stand infront of Malar and wait for the RP to finish. Kill him after
    .complete 12739,1 -- Malar Bravehorn (1)
step << Human
    .goto ScarletEnclave,53.6,83.6
	>>Stand infront of Ellen and wait for the RP to finish. Kill her after
    .complete 12742,1 --Ellen Stanbridge  (1)
step << NightElf
    .goto ScarletEnclave,54.2,83.8
	>>Stand infront of Yazmina and wait for the RP to finish. Kill her after
    .complete 12743,1 -- Yazmina Oakenthorn (1)
step << Dwarf
    .goto ScarletEnclave,54.0,83.4
	>>Stand infront of Donovan and wait for the RP to finish. Kill him after
    .complete 12744,1 --Donovan Pulfrost (1)
step << Gnome
    .goto ScarletEnclave,54.0,83.4
	>>Stand infront of Goby and wait for the RP to finish. Kill him after
    .complete 12745,1 -- Goby Blastenheimer  (1)
step << Draenei
    .goto ScarletEnclave,54.4,83.4
	>>Stand infront of Valok and wait for the RP to finish. Kill him after
    .complete 12746,1 -- Valok the Righteous (1)
step << BloodElf
    .goto ScarletEnclave,54.2,83.4
	>>Stand infront of Lady Eonys and wait for the RP to finish. Kill her after
    .complete 12747,1 --Lady Eonys (1)
step << Troll
    .goto ScarletEnclave,53.8,83.4
	>>Stand infront of Iggy and wait for the RP to finish. Kill him after
    .complete 12749,1 --Iggy Darktusk(1)
step << Undead
    .goto ScarletEnclave,53.6,83.4
	>>Stand infront of Antoine and wait for the RP to finish. Kill him after
    .complete 12750,1 -- Antoine Brack (1)
step
    .goto ScarletEnclave,53.1,82.1
	>>Return to Plaguefist
     .turnin 12748 >>Turn in A Special Surprise << Orc
    .turnin 12739 >>Turn in A Special Surprise << Tauren
    .turnin 12742 >>Turn in A Special Surprise << Human
    .turnin 12743 >>Turn in A Special Surprise << Nightelf
    .turnin 12744 >>Turn in A Special Surprise << Dwarf
    .turnin 12745 >>Turn in A Special Surprise << Gnome
    .turnin 12746 >>Turn in A Special Surprise << Draenei
    .turnin 12747 >>Turn in A Special Surprise << Bloodelf
    .turnin 12749 >>Turn in A Special Surprise << Troll
    .turnin 12750 >>Turn in A Special Surprise << Undead
	.accept 12751 >>Accept A Sort Of Homecoming
step
    .goto ScarletEnclave,56.3,80.0
	>>Return to the 2nd floor of the house
    .turnin 12751 >>Turn in A Sort Of Homecoming
    .goto ScarletEnclave,56.3,80.0
    .accept 12754 >>Accept Ambush At The Overlook
    .goto ScarletEnclave,56.3,79.8
step
	.use 39645 >>Use the Makeshift Cover in your bags. Kill the Scarlet Courier.
    .goto ScarletEnclave,60.0,77.0
    .complete 12754,1 --Scarlet Courier's Belongings (1)
    .complete 12754,2 --Scarlet Courier's Message (1)
step
    .goto ScarletEnclave,56.3,79.8
	>>Return to the 2nd floor of the house
    .turnin 12754 >>Turn in Ambush At The Overlook
    .accept 12755 >>Accept A Meeting With Fate
step
    .goto ScarletEnclave,65.6,83.9
	>>Ride all the way to General Abbendis on the beach
    .turnin 12755 >>Turn in A Meeting With Fate
    .accept 12756 >>Accept The Scarlet Onslaught Emerges
step
    .goto ScarletEnclave,56.3,79.8
	>>Return to the 2nd floor of the house
    .turnin 12756 >>Turn in The Scarlet Onslaught Emerges
    .accept 12757 >>Accept Scarlet Armies Approach...
step
	#completewith next
    .goto ScarletEnclave,50.0,32.3,20 >> Wait for Orbaz to summon the Portal. Click the portal to Acherus to return to the Hall of Command
step
    .goto ScarletEnclave,48.9,29.9
	>>Return to Darion Mograine
    .turnin 12757 >>Turn in Scarlet Armies Approach...
    .accept 12778 >>Accept The Scarlet Apocalypse
step
    .goto ScarletEnclave,47.4,26.8
	.trainer >> Train your class spells
--X SPELL IDS BASED ON SPECIALIZATION, COPY PASTE THIS FROM EARLIER
step
.goto ScarletEnclave,52.0,35.0
 .fly >>Click the Gryphon to return to Death's Breach
step
    .goto ScarletEnclave,53.5,36.8
	>>Talk to The Lich King who's overlooking Death's Breach
    .turnin 12778 >>Turn in The Scarlet Apocalypse
    .accept 12779 >>Accept An End To All Things...
step
	#completewith next
	.use 39700
	.vehicle >> Use the Horn of the Frostbrood to get on the Frozen Drake
step
	>>Cast "Frozen Deathbolt" (1) to deal damage (DON'T spam it). Use "Devour Humanoid" (2) to pick up a Scarlet Soldier in melee range to restore health and mana. Kill the Ballista's surrounded by Scarlet Soldier
    .goto ScarletEnclave,56.0,62.2,100,0
    .goto ScarletEnclave,55.4,64.8,100,0
    .goto ScarletEnclave,54.8,66.8,100,0
    .goto ScarletEnclave,54.6,69.9,100,0
    .goto ScarletEnclave,54.4,75.6,100,0
    .goto ScarletEnclave,57.0,74.8,100,0
    .goto ScarletEnclave,57.3,71.8,100,0
    .goto ScarletEnclave,60.0,72.2,100,0
    .goto ScarletEnclave,62.6,75.1,100,0
    .goto ScarletEnclave,59.5,66.1,100,0
    .goto ScarletEnclave,59.5,60.2,100,0
    .goto ScarletEnclave,56.0,62.2,100,0
    .goto ScarletEnclave,55.4,64.8,100,0
    .goto ScarletEnclave,54.8,66.8
    .complete 12779,2 --Scarlet Ballista destroyed (10)
    .complete 12779,1 --Scarlet Soldiers (150)
step
	>>Fly back to The Lich King
    .goto ScarletEnclave,53.5,36.8
    .turnin 12779 >>Turn in An End To All Things...
    .accept 12800 >>Accept The Lich King's Command
step
    .goto ScarletEnclave,49.3,28.7,45,0
    .goto ScarletEnclave,47.1,24.1,45,0
    .goto ScarletEnclave,34.1,30.4
	>> Run through The Noxious Pass to the north. Ride to Browman Mill and talk to Thalanor
    .turnin 12800 >>Turn in The Lich King's Command
    .accept 12801 >>Accept The Light of Dawn
step
	#completewith next
	+Talk to Highlord Darion Mograine to start the event
	.skipgossip 29173,2
step
    .goto ScarletEnclave,39.0,38.5
	>> Wait for the event to start (you can take a break in this time). Complete the very long fight and RP
    .complete 12801,1 --The Light of Dawn Uncovered (1)
step
    .goto Eastern Plaguelands,39,39
    .turnin 12801 >>Turn in The Light of Dawn
    .accept 13165 >>Accept Taking Back Acherus
step
	#completewith next
	.cast 50977 >>Use your Death Gate spell to return to Ebon Hold
step
    .goto Eastern Plaguelands,83.4,49.4
	>>Talk to Darion Mograine inside of Ebon Hold
    .turnin 13165 >>Turn in Taking Back Acherus
    .accept 13166 >>Accept The Battle For The Ebon Hold
step
	#completewith next
    .goto ScarletEnclave,50.3,33.1,8 >> Go through the portal
step
	#sticky
	#label ScourgeH
	>>Kill the Scourge within the main floor of The Ebon Hold
    .goto ScarletEnclave,48.1,28.4,-1
    .complete 13166,2 --Scourge (10)
--X low prio waypoint?
step
    .goto ScarletEnclave,48.9,29.8
	>>Kill Patchwerk in the middle of the main floor of The Ebon Hold
    .complete 13166,1 --Patchwerk (1)
step
	#completewith next
    .goto ScarletEnclave,50.5,33.4,10 >>Run into the purple portal
step
	#requires ScourgeH
    .goto ScarletEnclave,50.7,33.7
	>>Return to Darion Mograine
    .turnin 13166 >>Turn in The Battle For The Ebon Hold
    .accept 13188 >>Accept Where Kings Walk << Alliance    
    .accept 13189 >>Accept Warchief's Blessing << Horde
step << Horde
    .goto ScarletEnclave,52.1,35.0
	.zone Durotar >>Take the portal to Orgrimmar
step << Horde
    .goto Orgrimmar,31.9,37.8
    .turnin 13189 >>Turn in Warchief's Blessing
--X unsure of how good coordinates are
step << Horde
	#completewith next
    .goto Orgrimmar,38.1,85.8
	.zone Blasted Lands >> Take the portal to Blasted Lands
step << Alliance
    .goto ScarletEnclave,50.9,36.3
	.zone Elwynn Forest >>Take the portal to Stormwind
step << Alliance
    .goto Stormwind City,80.0,38.5
    .turnin 13188 >>Turn in Where Kings Walk
]])
