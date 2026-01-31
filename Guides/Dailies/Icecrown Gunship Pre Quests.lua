if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#version 1
#group +RestedXP Northrend Daily Quests
#subgroup Faction Daily Quests
#wotlk
#cata
#name Icecrown Gunship Unlock Daily Quests

step
	+Note: A number of Daily quests have 5 Player Group quests as prerequisites in Icecrown. You must finish them in order to unlock the proceeding Daily quests. Complete ALL Group quests when instructed by the guide
	>>If you cannot complete them return to them later
step
    .goto IcecrownGlacier,87.8,78.1
    .fp The Argent Vanguard >> Get the The Argent Vanguard flight path
step
    .goto IcecrownGlacier,87.5,75.8
	>>Fly to The Argent Vanguard. Talk to Tirion
    .accept 13036 >>Accept Honor Above All Else
step
    .goto IcecrownGlacier,87.1,75.8
	>>Talk to Entari below you
    .turnin 13036 >>Turn in Honor Above All Else
    .accept 13008 >>Accept Scourge Tactics
step
    .goto IcecrownGlacier,86.8,76.6
	>>Talk to Gustav
    .accept 13040 >>Accept Curing The Incurable
step
    .goto IcecrownGlacier,86.1,75.8
	>>Talk to Dalfors
    .accept 13039 >>Accept Defending The Vanguard
step
	#sticky
	#label webbedfreed
    .goto IcecrownGlacier,83.5,75.1,0,0
	>>Kill the Webbed Crusader Cocoons in the area to free them. They'll also buff and heal you << !Paladin
	>>Kill the Webbed Crusader Cocoons in the area to free them. Make sure you buff yourself something other than Kings as the npcs will buff you with it (and heal you) << Paladin
    .complete 13008,1 --Webbed Crusader Freed (8)
step
    .goto IcecrownGlacier,84.7,78.8,80,0
    .goto IcecrownGlacier,83.5,75.1,80,0
    .goto IcecrownGlacier,83.1,72.6,80,0
    .goto IcecrownGlacier,84.8,73.0,80,0
    .goto IcecrownGlacier,83.5,75.1
	>>Kill the Nerubians and Spiders in the area. Loot them for their Venom Sacs
    .complete 13039,1 --Forgotten Depths Nerubians (15)
    .complete 13040,1 --Forgotten Depths Venom Sac (10)
step
	#requires webbedfreed
    .goto IcecrownGlacier,86.1,75.8
	>>Return to Dalfors
    .turnin 13039 >>Turn in Defending The Vanguard
step
    .goto IcecrownGlacier,86.8,76.6
	>>Return to Gustav
    .turnin 13040 >>Turn in Curing The Incurable
step
    .goto IcecrownGlacier,87.1,75.8
	>>Return to Entari
    .turnin 13008 >>Turn in Scourge Tactics
    .accept 13044 >>Accept If There Are Survivors...
step
    .goto IcecrownGlacier,87.0,79.0
	>>Talk to Penumbrius
    .turnin 13044 >>Turn in If There Are Survivors...
    .accept 13045 >>Accept Into The Wild Green Yonder
step
	#completewith next
    .goto IcecrownGlacier,87.1,79.2
	.vehicle 30228 >> Right click an Argent Skytalon to mount it
step
	>>Fly over to Scourgeholme. Use "Grab Captured Crusader" (1) to rescue the Crusaders (you can only grab one at a time), then fly back to Gustav at The Argent Vanguard and use "Drop Off Captured Crusader" (2) to drop them off. Use "Soar" (3) on cooldown to go faster.
	.pin Icecrown,78.7,67.0
    .waypoint IcecrownGlacier,78.7,67.0,0,rescue,VEHICLE_PASSENGERS_CHANGED,VEHICLE_UPDATE
	.goto Icecrown,86.68,76.83
    .complete 13045,1 --Captured Crusader Rescued (3)
step
    .goto IcecrownGlacier,87.5,75.8
	>>Fly back to Tirion
    .turnin 13045 >>Turn in Into The Wild Green Yonder
    .accept 13070 >>Accept A Cold Front Approaches
step
    .goto IcecrownGlacier,85.6,76.0
	>>Talk to Fezzik inside the small house
    .turnin 13070 >>Turn in A Cold Front Approaches
    .accept 13086 >>Accept The Last Line Of Defense
step
	#completewith next
    .goto IcecrownGlacier,85.3,75.8
	.vehicle >>Fly to and get inside one of the Turrets located on top of the walls
step
    .goto IcecrownGlacier,84.8,75.8
	--vehicle id 30236
	>>Spam use "Argent Cannon" (1) to kill mobs in a small AoE and generate mana. Use "Reckoning Bomb" (2) to kill mobs in a large AoE at the cost of mana.
    .complete 13086,1 --Scourge Attackers (100)
    .complete 13086,2 --Frostbrood Destroyer (3)
step
    .goto IcecrownGlacier,85.6,76.0
	>>Exit the cannon. Return to Fezzik
    .turnin 13086 >>Turn in The Last Line Of Defense
step
    .goto IcecrownGlacier,86.0,75.8
	>>Talk to Tirion behind you
    .accept 13104 >>Accept Once More Unto The Breach, Hero << !DK
    .accept 13105 >>Accept Once More Unto The Breach, Hero << DK
step
	>>Travel north-west. Talk to The Ebon Watcher, Silas, Spitzpatrick, and then Gustav inside the house
    .turnin 13104 >>Turn in Once More Unto The Breach, Hero << !DK
    .turnin 13105 >>Turn in Once More Unto The Breach, Hero << DK
    .accept 13118 >>Accept The Purging Of Scourgeholme
    .accept 13122 >>Accept The Scourgestone
    .goto IcecrownGlacier,83.0,73.0
    .accept 13130 >>Accept The Stone That Started A Revolution
    .accept 13135 >>Accept It Could Kill Us All
    .goto IcecrownGlacier,83.0,73.1
    .accept 13110 >>Accept The Restless Dead
    .goto IcecrownGlacier,82.9,72.8
step
	#completewith Crusaders
	>>Kill the Scourge in Scourgeholme. Loot them for their Scourgestones
    .complete 13122,1 --Scourgestone (15)
step
	#completewith Kings
	.use 43153 >> Kill the Reanimated Crusaders in Scourgeholme. Use the Holy Water in your bags on their corpses to free their souls
    .goto IcecrownGlacier,78.6,69.7,0
    .goto IcecrownGlacier,77.9,66.2,0
    .goto IcecrownGlacier,78.5,64.6,0
    .goto IcecrownGlacier,80.2,65.7,0
    .complete 13110,1 --Restless Soul Freed (10)
    .complete 13118,3 --Reanimated Crusader (8)
step
	#completewith next
    .goto IcecrownGlacier,79.5,68.6,0
    .goto IcecrownGlacier,80.8,64.5,0
    .goto IcecrownGlacier,77.7,63.2,0
    .goto IcecrownGlacier,78.4,65.7,0
	>>Kill the Forgotten Underkings in Scourgeholme
    .complete 13118,2 --Forgotten Depths Underking (3)
step
    .goto IcecrownGlacier,79.2,64.0,20,0
    .goto IcecrownGlacier,79.6,64.1,15,0
    .goto IcecrownGlacier,77.8,65.1,50,0
    .goto IcecrownGlacier,77.3,68.2,20,0
    .goto IcecrownGlacier,77.6,68.7,15,0
    .goto IcecrownGlacier,79.2,64.0,20,0
    .goto IcecrownGlacier,79.6,64.1,15,0
    .goto IcecrownGlacier,77.8,65.1,50,0
    .goto IcecrownGlacier,77.3,68.2,20,0
    .goto IcecrownGlacier,77.6,68.7
	>>Kill the Forgotten High Priests mainly located inside the Ziggurats of the area
    .complete 13118,1 --Forgotten Depths High Priest (3)
step
	#label Kings
    .goto IcecrownGlacier,79.5,68.6,80,0
    .goto IcecrownGlacier,80.8,64.5,80,0
    .goto IcecrownGlacier,77.7,63.2,80,0
    .goto IcecrownGlacier,78.4,65.7
	>>Kill the Forgotten Underkings in the area
    .complete 13118,2 --Forgotten Depths Underking (3)
step
	#label Crusaders
    .goto IcecrownGlacier,78.6,69.7,80,0
    .goto IcecrownGlacier,77.9,66.2,80,0
    .goto IcecrownGlacier,78.5,64.6,80,0
    .goto IcecrownGlacier,80.2,65.7,80,0
    .goto IcecrownGlacier,78.6,69.7,80,0
    .goto IcecrownGlacier,77.9,66.2,80,0
    .goto IcecrownGlacier,78.5,64.6,80,0
    .goto IcecrownGlacier,80.2,65.7
	.use 43153 >> Kill the Reanimated Crusaders in Scourgeholme. Use the Holy Water in your bags on their corpses to free their souls
    .complete 13110,1 --Restless Soul Freed (10)
    .complete 13118,3 --Reanimated Crusader (8)
step
    .goto IcecrownGlacier,78.6,69.7,80,0
    .goto IcecrownGlacier,77.9,66.2,80,0
    .goto IcecrownGlacier,78.5,64.6,80,0
    .goto IcecrownGlacier,80.2,65.7,80,0
    .goto IcecrownGlacier,78.6,69.7,80,0
    .goto IcecrownGlacier,77.9,66.2,80,0
    .goto IcecrownGlacier,78.5,64.6,80,0
    .goto IcecrownGlacier,80.2,65.7
	>>Kill the Scourge in Scourgeholme. Loot them for their Scourgestones
    .complete 13122,1 --Scourgestone (15)
step
	#completewith next
    .goto CrystalsongForest,61.1,52.4,0
    .goto CrystalsongForest,58.9,62.8,0
    .goto CrystalsongForest,81.1,72.4,0
    .goto CrystalsongForest,89.2,55.7,0
    .goto CrystalsongForest,61.1,52.4,0
	>>Kill the Humanoid/Undead/Elemental mobs in the area. Loot them for their Energy
    .complete 13135,1 --Crystallized Energy (8)
step
	>>Loot the purple tree stumps on the ground in the area
    .complete 13130,1 --Crystalline Heartwood (10)
    .goto CrystalsongForest,65.0,53.5,80,0
    .goto CrystalsongForest,70.6,56.1,80,0
    .goto CrystalsongForest,71.4,67.6,80,0
    .goto CrystalsongForest,63.9,69.0,80,0
    .goto CrystalsongForest,65.0,53.5,80,0
    .goto CrystalsongForest,70.6,56.1,80,0
    .goto CrystalsongForest,71.4,67.6,80,0
    .goto CrystalsongForest,63.9,69.0
    .complete 13130,2 --Ancient Elven Masonry (10)
    .goto CrystalsongForest,73.7,65.4,80,0
    .goto CrystalsongForest,82.6,64.5,80,0
    .goto CrystalsongForest,86.5,59.1,80,0
    .goto CrystalsongForest,73.4,56.9,80,0
    .goto CrystalsongForest,73.7,65.4,80,0
    .goto CrystalsongForest,82.6,64.5,80,0
    .goto CrystalsongForest,86.5,59.1,80,0
    .goto CrystalsongForest,73.4,56.9
	>>Loot small blue pieces of marble around the destroyed elven buildings
step
    .goto CrystalsongForest,61.1,52.4,80,0
    .goto CrystalsongForest,58.9,62.8,80,0
    .goto CrystalsongForest,81.1,72.4,80,0
    .goto CrystalsongForest,89.2,55.7,80,0
    .goto CrystalsongForest,61.1,52.4
	>>Kill the Humanoid/Undead/Elemental mobs in the area. Loot them for their Energy
    .complete 13135,1 --Crystallized Energy (8)
step
	>>Return to The Ebon Watcher
    .turnin 13130 >>Turn in The Stone That Started A Revolution
    .turnin 13135 >>Turn in It Could Kill Us All
    .goto IcecrownGlacier,83.0,73.1
    .turnin 13118 >>Turn in The Purging Of Scourgeholme
    .turnin 13122 >>Turn in The Scourgestone
    .accept 13125 >>Accept The Air Stands Still
    .goto IcecrownGlacier,83.1,73.0
step
    .goto IcecrownGlacier,82.9,72.8
	>>Go inside the hut
    .turnin 13110 >>Turn in The Restless Dead
step
    .goto IcecrownGlacier,77.3,61.9
	.use 43206 >>Go inside the building. Use the War Horn of Acherus to summon an NPC to assist you in killing Salranax
    .complete 13125,1 --Salranax the Flesh Render (1)
step
    .goto IcecrownGlacier,80.1,61.2
	.use 43206 >>Go inside the building. Use the War Horn of Acherus to summon an NPC to assist you in killing Yath'amon
    .complete 13125,3 --High Priest Yath'amon (1)
step
    .goto IcecrownGlacier,76.5,53.2
	.use 43206 >>Use the War Horn of Acherus to summon an NPC to assist you in killing Talonox
    .complete 13125,2 --Underking Talonox (1)
step
    .goto IcecrownGlacier,83.0,72.9
	>>Return to The Ebon Watcher
    .turnin 13125 >>Turn in The Air Stands Still
step
    .goto IcecrownGlacier,82.9,72.8
	>>Go inside the hut
    .accept 13139 >>Accept Into The Frozen Heart Of Northrend
step
    .goto IcecrownGlacier,86.0,75.8
	>>Return to Tirion
    .turnin 13139 >>Turn in Into The Frozen Heart Of Northrend
    .accept 13141 >>Accept The Battle For Crusaders' Pinnacle
step
    .goto IcecrownGlacier,80.04,71.94
	.use 43243 >>Use the Blessed Banner of the Crusade in your bags at the pile of skulls and defend it against the incoming waves. Focus kill Halof the Deathbringer when he spawns
    .complete 13141,1 --Battle for Crusaders' Pinnacle (1)
step
    .goto IcecrownGlacier,82.9,72.8
	>>Go inside the hut
    .turnin 13141 >>Turn in The Battle For Crusaders' Pinnacle
    .accept 13157 >>Accept The Crusaders' Pinnacle
step
    .goto IcecrownGlacier,79.8,71.8
	>>Go back up to where you defended the Banner. Talk to Tirion
    .turnin 13157 >>Turn in The Crusaders' Pinnacle
    .accept 13068 >>Accept A Tale of Valor
step
    .goto IcecrownGlacier,79.4,72.3
    .fp Crusaders' Pinnacle >> Get the Crusaders' Pinnacle flight path
step << Horde
    .goto IcecrownGlacier,79.5,72.7
	>>Enter the tower. Talk to Strongbrow on the bottom floor on the bed
    .accept 13224 >>Accept Orgrim's Hammer
step << Alliance
    .goto Icecrown,79.44,72.84
	>>Enter the tower. Talk to Ivalius on the bottom floor on the bed
    .accept 13225 >>Accept The Skybreaker
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2
	>>Fly to The Skybreaker, the big Alliance ship that's flying around high up in the air. Go into the big room Maraad is facing in the back and talk to Justin
    .turnin 13225 >>Turn in The Skybreaker
    .accept 13231 >>Accept The Broken Front
step << Alliance
	#label slaves1
	#sticky
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Find Absalan the Pious. He walks around the back of the ship, up and down the stairs to the left and the right
    .daily 13300 >>Accept Slaves to Saronite
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Go up the stairs at the back of the ship and speak to Knight-Captain Drosche
    .daily 13336 >>Accept Blood of the Chosen
    .accept 13341 >>Accept Joining the Assault
step << Alliance
	#requires slaves1
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Take the stairs at the middle of the ship (behind Maraad), then the stairs either side of the first staircase to go down into the engine room. Speak to Chief Engineer Boltwrench
    .accept 13296 >>Accept Get to Ymirheim!
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>> Fly to Orgrim's Hammer, the big Horde ship that's flying around high up in the air. Go into the big room in the front. Talk to Sky-Reaver Korm Blackscar
    .turnin 13224 >>Turn in Orgrim's Hammer
    .accept 13228 >>Accept The Broken Front
step << Horde
	>> Accept the quests from Warbringer Davos Rioht & Brother Keltan. They walk around near the stairs and the lower deck
    .daily 13302 >>Accept Slaves to Saronite
    .daily 13330 >>Accept Blood of the Chosen
    .accept 13340 >>Accept Joining the Assault
step << Horde
	>> Go to the lower deck of the ship. Talk to Chief Engineer Copperclaw
    .accept 13293 >>Accept Get to Ymirheim!
step << Alliance
    .goto IcecrownGlacier,62.6,51.3
	>>Fly to Ground Commander Koup (on the ground)
    .turnin 13341 >>Turn in Joining the Assault
    .daily 13309 >>Accept Assault by Air
	>>You may skip the daily quest if you wish
step << Alliance
    #completewith next
    .goto Icecrown,62.55,50.67
    .vehicle 32227 >> Right click the turret on top of the Flying Machine to start the quest
	.isOnQuest 13309
step << Alliance
	-- completionist
	>>Shoot at all the Spear Guns on the buildings as you fly around
    .goto Icecrown,52.65,56.93
    .complete 13309,1 --4/4 Skybreaker Infiltrators dropped
	.isOnQuest 13309
step << Alliance
    .goto Icecrown,62.55,51.29
	>>Return to Koup
    .turnin 13309 >>Turn in Assault by Air
	.isQuestComplete 13309
step << Alliance
    .goto IcecrownGlacier,62.5,51.1,15,0
    .goto IcecrownGlacier,62.8,51.6
	>>Talk to the Squad Leader. He may not be here if someone else started the quest and has a roughly 6 minute respawn time, and respawns about 10 yards to the right of Koup
	>>You may skip this quest. It's just a daily quest that ties in nicely with the others
    .daily 13284 >>Accept Assault by Ground
step << Alliance
    .goto IcecrownGlacier,58.2,55.9,0
    .goto IcecrownGlacier,59.6,59.3,0
    .goto IcecrownGlacier,57.8,62.6,0
	#completewith Mineslave
	>>Kill the Vrykul throughout Ymirheim
	.complete 13336,1 --Ymirheim Vrykul Slain (20)
step << Alliance
    .goto Icecrown,59.89,53.50
	>> Escort the troops. Let some of the troops tank the mobs if needed
    .complete 13284,1 --4/4 Alliance troops escorted to Ymirheim
	.isOnQuest 13284
step << Alliance
	#label Mineslave
    .goto IcecrownGlacier,55.7,57.3,40,0
    .goto IcecrownGlacier,56.2,58.9,40,0
    .goto IcecrownGlacier,55.6,59.7,40,0
    .goto IcecrownGlacier,54.5,60.0,40,0
    .goto IcecrownGlacier,55.7,57.3
	>>Go into the Saronite Mine. Talk to the slaves to rescue them (sometimes they may attack you).
    .complete 13300,1 --Saronite Mine Slave rescued (10)
	.skipgossip
	.isOnQuest 13300
step << Alliance
    .goto IcecrownGlacier,58.2,55.9,70,0
    .goto IcecrownGlacier,59.6,59.3,70,0
    .goto IcecrownGlacier,57.8,62.6
	>>Kill the Vrykul throughout Ymirheim
	.complete 13336,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13336
step << Alliance
	#completewith next
    .goto Icecrown,57.01,62.53
	>>Fly to Frazzle on the ground
    .turnin 13296 >>Turn in Get to Ymirheim!
step << Alliance
    .goto Icecrown,57.01,62.53
	>>NOTE: This quest flags you for PVP. It is VERY easy however.
    .daily 13280 >>Accept King of the Mountain
step << Alliance
    #completewith next
    .goto Icecrown,56.99,62.60
    .vehicle 31784 >>Right Click on the gnome looking robot
	.isOnQuest 13280
step << Alliance
    .goto Icecrown,54.89,60.12
	>>Spam use "Jump Jets" (3) to quickly scale the cliff (it has no cooldown). Once you get to the top of the mountain, use "Plant Alliance Battle Standard" (1) to plant the banner. Then, leave the vehicle
    .complete 13280,1 --1/1 Alliance Battle Standard planted
	.isOnQuest 13280
step << Alliance
    .goto Icecrown,56.97,62.55
	>>Click the Leave Vehicle button
    .turnin 13280 >>Turn in King of the Mountain
	.isQuestComplete 13280
step << Horde
	>>Fly over to Ground Commander Xutjja (he's on the ground - not on the ship)
    .goto IcecrownGlacier,58.3,46.0
    .turnin 13340 >>Turn in Joining the Assault
step << Horde
    .goto IcecrownGlacier,58.3,46.0
    .daily 13310 >>Accept Assault by Air
	>>You may skip the daily quest if you wish
step << Horde
	#completewith next
	.vehicle >>Run over to the Kor'kron Supression Turret and click it.
    .goto IcecrownGlacier,59.5,45.94
	.isOnQuest 13310
step << Horde
	>>Shoot at all the Spear Guns on the buildings as you fly around. Infiltrators will drop as you do this.
    .goto IcecrownGlacier,56.8,64.3
    .complete 13310,1 --Kor'kron Infiltrators dropped (4)
	.isOnQuest 13310
step << Horde
    .goto IcecrownGlacier,58.3,46.0
    .turnin 13310 >>Turn in Assault by Air
	.isQuestComplete 13310
step << Horde
    .goto IcecrownGlacier,58.3,46.0
	>>Talk to the Squad Leader. He may not be here if someone else started the quest and has a roughly 6 minute respawn time
    .daily 13301 >>Accept Assault by Ground
	>>You may skip this quest. It's just a daily quest that ties in nicely with the others
step << Horde
	#sticky
	#label ymirheimslain
    .goto IcecrownGlacier,58.2,55.9,0
    .goto IcecrownGlacier,59.6,59.3,0
    .goto IcecrownGlacier,57.8,62.6,0
	#completewith Mineslave
	>>Kill the Vrykul throughout Ymirheim
	.complete 13330,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13330
step << Horde
	>> Escort the troops.
    .goto IcecrownGlacier,59.4,52.8
    .complete 13301,1 --Horde troops escorted to Ymirheim (4)
	.isOnQuest 13301
step << Horde
	#label Mineslave
    .goto IcecrownGlacier,55.7,57.3,40,0
    .goto IcecrownGlacier,56.2,58.9,40,0
    .goto IcecrownGlacier,55.6,59.7,40,0
    .goto IcecrownGlacier,54.5,60.0,40,0
    .goto IcecrownGlacier,55.7,57.3
	>>Go into the Saronite Mine. Talk to the slaves to rescue them (sometimes they may attack you).
    .complete 13302,1 --Saronite Mine Slave rescued (10)
	.skipgossip
	.isOnQuest 13302
step << Horde
	#requires ymirheimslain
    .goto IcecrownGlacier,51.9,57.6
    .turnin 13293 >>Turn in Get to Ymirheim!
    .daily 13283 >>Accept King of the Mountain
step << Horde
    #completewith next
    .goto Icecrown,51.95,57.62
    .vehicle >>Right Click on the gnome looking robot
	.isOnQuest 13283
step << Horde
    .goto Icecrown,54.89,60.12
	>>Spam use "Jump Jets" (3) to quickly scale the cliff (it has no cooldown). Once you get to the top of the mountain, use "Plant Horde Battle Standard" (1) to plant the banner. Then, leave the vehicle
    .complete 13283,1 --1/1 Horde Battle Standard planted
	.isOnQuest 13283
step << Horde
    .goto Icecrown,51.9,57.6
	>>Click the Leave Vehicle button
    .turnin 13283 >>Turn in King of the Mountain
	.isQuestComplete 13283
step << Alliance
    .goto IcecrownGlacier,66.4,66.5
	>>Find and speak to a dying soldier around the broken front
    .complete 13231,1 --Dying Soldier Questioned (1)
    .accept 13232 >>Accept Finish Me!
	.skipgossip
step << Alliance
    .goto IcecrownGlacier,69.1,62.1
	>>Find more Dying Soldiers around the area and finish them off
	.complete 13232,1
	.skipgossip
step << Horde
    .goto IcecrownGlacier,67.7,68.4
	>>Find and speak to a Dying Berserker around The Broken Front
    .complete 13228,1 --Dying Berserker Questioned (1)
    .accept 13230 >>Accept Avenge Me!
step << Horde
    .goto IcecrownGlacier,68.7,64.2
	>>Find more Dying Soldiers around the area and finish them off
	.complete 13230,1 --Dying Alliance Soldiers Slain (5)
	.skipgossip
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Fly to The Skybreaker, the big Alliance ship that's flying around high up in the air (you can see it on your map). Go into the big room Maraad is facing in the back and talk to Justin
    .turnin 13231 >>Turn in The Broken Front
    .turnin 13232 >>Turn in Finish Me!
    .accept 13286 >>Accept ...All the Help We Can Get.
    .accept 13290 >>Accept Your Attention, Please
step << Alliance
	#label slaves2
	#sticky
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Find Absalan the Pious. he walks around the back of the ship, up and down the stairs to the left and the right
    .turnin 13300 >>Turn in Slaves to Saronite
	.isQuestComplete 13300
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Go up the stairs at the back of the ship and speak to Knight-Captain Drosche
    .turnin 13336 >>Turn in Blood of the Chosen
	.isQuestComplete 13336
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Speak to Thassarian at the back left corner of the ship
    .turnin 13286 >>Turn in ...All the Help We Can Get.
    .accept 13287 >>Accept Poke and Prod
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Take the stairs at the middle of the ship (behind Maraad), then the stairs either side of the first staircase to go down into the engine room. Speak to Chief Engineer Boltwrench
    .turnin 13290 >>Turn in Your Attention, Please
    .accept 13291 >>Accept Borrowed Technology
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Fly to The Orgrim's Hammer, the big Horde ship that's flying around high up in the air. Talk to Sky-Reaver Korm Blackscar in the front room
    .turnin 13228 >>Turn in The Broken Front
    .turnin 13230 >>Turn in Avenge Me!
    .accept 13238 >>Accept Good For Something?
    .accept 13260 >>Accept Takes One to Know One
step << Horde
	>>Talk to Koltira beside you
    .turnin 13260 >>Turn in Takes One to Know One
    .accept 13237 >>Accept Poke and Prod
step << Horde
	>>Talk to Brother Keltan walking around near the stairs
    .turnin 13302 >>Turn in Slaves to Saronite
	.isQuestComplete 13302
step
	>>Talk to Warbringer Davos Rioht. He also patrols the bottom deck
    .turnin 13330 >>Turn in Blood of the Chosen
	.isQuestComplete 13330
step << Horde
	>> Go to the lower deck of the ship. Talk to Chief Engineer Copperclaw
    .turnin 13238 >>Turn in Good For Something?
    .accept 13239 >>Accept Volatility
step << Alliance
	>>Return to Ground Commander Koup
    .goto Icecrown,62.60,51.35
    .turnin 13284 >>Turn in Assault by Ground
	.isQuestComplete 13284
step << Horde
	>>Return to Ground Commander Xutjja
    .goto IcecrownGlacier,58.3,46.2
    .turnin 13301 >>Turn in Assault by Ground
	.isQuestComplete 13301
step << Alliance
	#completewith next
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 44048 >>Loot the pieces of abandoned equipment scattered on the ground around The Broken Front. Use the Smuggled Solution in your bags when you have one of each piece of equipment (you don't need to wait for the RP)
	.collect 43609,3,13291,1,-1 --Pile of Bones (3)
	.collect 43610,3,13291,1,-1 --Abandoned Helm (3)
	.collect 43616,3,13291,1,-1 --Abandoned Armor (3)
    .complete 13291,1 --Field Tests Conducted (3)
step << Horde
	#completewith next
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 43608 >>Loot the pieces of abandoned equipment scattered on the ground around The Broken Front. Use Copperclaw's Volatile Oil in your bags when you have one of each piece of equipment (you don't need to wait for the RP)
	.collect 43609,3,13239,1,-1 --Pile of Bones (3)
	.collect 43610,3,13239,1,-1 --Abandoned Helm (3)
	.collect 43616,3,13239,1,-1 --Abandoned Armor (3)
    .complete 13239,1 --Field Tests Conducted (3)
step << Alliance
    .goto IcecrownGlacier,67.0,63.3,70,0
    .goto IcecrownGlacier,67.4,70.2,70,0
    .goto IcecrownGlacier,71.6,61.3
	>>Kill the Abominations, Adepts and Necromancers in the area
    .complete 13287,1 --Hulking Abominations Slain (5)
    .complete 13287,3 --Shadow Adepts Slain (5)
    .complete 13287,2 --Malefic Necromancers Slain (5)
step << Horde
    .goto IcecrownGlacier,67.0,63.3,70,0
    .goto IcecrownGlacier,67.4,70.2,70,0
    .goto IcecrownGlacier,71.6,61.3
	>>Kill the Abominations, Adepts and Necromancers in the area
    .complete 13237,1 --Hulking Abominations Slain (5)
    .complete 13237,3 --Shadow Adepts Slain (5)
    .complete 13237,2 --Malefic Necromancers Slain (5)
step << Alliance
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 44048 >>Loot the pieces of abandoned equipment scattered on the ground around The Broken Front. Use the Smuggled Solution in your bags when you have one of each piece of equipment (you don't need to wait for the RP)
	.collect 43609,3,13291,1,-1 --Pile of Bones (3)
	.collect 43610,3,13291,1,-1 --Abandoned Helm (3)
	.collect 43616,3,13291,1,-1 --Abandoned Armor (3)
    .complete 13291,1 --Field Tests Conducted (3)
step << Horde
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 43608 >>Loot the pieces of abandoned equipment scattered on the ground around The Broken Front. Use Copperclaw's Volatile Oil in your bags when you have one of each piece of equipment (you don't need to wait for the RP)
	.collect 43609,3,13239,1,-1 --Pile of Bones (3)
	.collect 43610,3,13239,1,-1 --Abandoned Helm (3)
	.collect 43616,3,13239,1,-1 --Abandoned Armor (3)
    .complete 13239,1 --Field Tests Conducted (3)
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Fly to The Skybreaker, the big Alliance ship that's flying around high up in the air. Speak to Thassarian at the back left corner of the ship
    .turnin 13287 >>Turn in Poke and Prod
    .accept 13288 >>Accept That's Abominable!
    .accept 13294 >>Accept Against the Giants
step << Alliance
	#requires notdead
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Take the stairs at the middle of the ship (behind Maraad), then the stairs either side of the first staircase to go down into the engine room. Speak to Chief Engineer Boltwrench
    .turnin 13291 >>Turn in Borrowed Technology
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Fly to Orgrim's Hammer, the big Horde ship that's flying around high up in the air. Speak to Koltira in the frontroom of the ship
    .turnin 13237 >>Turn in Poke and Prod
    .accept 13264 >>Accept That's Abominable!
	.accept 13277 >>Accept Against the Giants
step << Horde
	>> Go to the lower deck of the ship. Talk to Chief Engineer Copperclaw
    .turnin 13239 >>Turn in Volatility
step
    .goto IcecrownGlacier,68.3,61.5
	>>Kill the Hulking Abominations in the area and loot them for Chilled Abomination Guts
	.use 43968 >> Use Abominations Reanimation Kit with some Guts in your bag to summon an Abomination you can control. Gather as many mobs as possible by making the Abomination attack them and get aggro, then use "Burst at the Seams" to kill all the mobs near your Abomination (the mobs have to be in combat to get their credit)
	>>If you run out of Guts, go and kill more Hulking Abominations. You can only have 1 gut on you at a time.
	.collect 43966,1,13288,-1,1 << Alliance --Chilled Abomination Guts (3)
    .complete 13288,1 << Alliance  --Icy Ghouls Exploded (15)
    .complete 13288,2 << Alliance  --Vicious Geists Exploded (15)
    .complete 13288,3 << Alliance  --Risen Alliance Soldiers Exploded (15)
	.collect 43966,1,13264,-1,1 << Horde  --Chilled Abomination Guts (3)
    .complete 13264,1 << Horde --Icy Ghouls Exploded (15)
    .complete 13264,2 << Horde --Vicious Geists Exploded (15)
    .complete 13264,3 << Horde --Risen Alliance Soldiers Exploded (15)
	.isOnQuest 13288 << Alliance
	.isOnQuest 13264 << Horde
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Return to Orgrim's Hammer. Talk to Koltira
    .turnin 13264 >>Turn in That's Abominable!
    .accept 13351 >>Accept Sneak Preview
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Return to The Skybreaker. Talk to Thassarian
    .turnin 13288 >>Turn in That's Abominable!
    .accept 13315 >>Accept Sneak Preview
step << Alliance
	>>Fly above the waypoints on the platform above the big wall
    .complete 13315,1 --1/1 Aldur'thar South Visited
    .goto Icecrown,55.64,46.73
    .complete 13315,2 --1/1 Aldur'thar Central Visited
    .goto Icecrown,54.10,43.43
    .complete 13315,3 --1/1 Aldur'thar North Visited
    .goto Icecrown,54.09,35.33
    .complete 13315,4 --1/1 Aldur'thar Northwest Visited
    .goto Icecrown,52.06,34.21
step << Horde
	>>Fly above the waypoints on the platform above the big wall
    .complete 13351,1 --Aldur'thar South Visited (1)
    .goto IcecrownGlacier,55.3,43.9
    .complete 13351,2 --Aldur'thar Central Visited (1)
    .goto IcecrownGlacier,55.1,41.6
    .complete 13351,3 --Aldur'thar North Visited (1)
    .goto IcecrownGlacier,53.7,35.5
    .complete 13351,4 --Aldur'thar Northwest Visited (1)
    .goto IcecrownGlacier,51.9,34.8
step << Alliance
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7,70,0
    .goto IcecrownGlacier,66.8,58.4,70,0
    .goto IcecrownGlacier,69.5,57.3,70,0
    .goto IcecrownGlacier,72.5,59.0,70,0
    .goto IcecrownGlacier,70.1,57.2,70,0
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7
	>>Kill the Pustulent Horrors in the area. Loot them for their Spines. This quest is VERY hard, group up for it if needed.
    .complete 13294,1 --Pustulant Spine (5)
step << Horde
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7,70,0
    .goto IcecrownGlacier,66.8,58.4,70,0
    .goto IcecrownGlacier,69.5,57.3,70,0
    .goto IcecrownGlacier,72.5,59.0,70,0
    .goto IcecrownGlacier,70.1,57.2,70,0
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7
	>>Kill the Pustulent Horrors in the area. Loot them for their Spines. This quest is VERY hard, group up for it if needed.
    .complete 13277,1 --Pustulant Spine (5)
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Fly to Orgrim's Hammer, the big Horde ship that's flying around high up in the air. Speak to Koltira in the frontroom of the ship
    .turnin 13351 >>Turn in Sneak Preview
	.turnin 13277 >>Turn in Against the Giants
    .accept 13355 >>Accept Cannot Reproduce
    .accept 13354 >>Accept Chain of Command
    .accept 13352 >>Accept Drag and Drop
	.accept 13279 >>Accept Basic Chemistry
    .accept 13278 >>Accept Coprous the Defiled
step << Horde
	>> Go to the lower deck of the ship. Talk to Chief Engineer Copperclaw
    .accept 13379 >>Accept Green Technology
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Fly to The Skybreaker, the big Alliance ship that's flying around high up in the air. Speak to Thassarian at the back left corner of the ship
    .turnin 13315 >>Turn in Sneak Preview
    .turnin 13294 >>Turn in Against the Giants
    .accept 13318 >>Accept Drag and Drop
    .accept 13319 >>Accept Chain of Command
    .accept 13320 >>Accept Cannot Reproduce
    .accept 13295 >>Accept Basic Chemistry
    .accept 13298 >>Accept Coprous the Defiled
step << Alliance
	>>Take the stairs at the middle of the ship (behind Maraad), then the stairs either side of the first staircase to go down into the engine room. Speak to Chief Engineer Boltwrench
    .accept 13383 >>Accept Borrowed Technology
step
	#completewith next
    .goto IcecrownGlacier,63.3,62.1,25 >> Enter the gate to the inside of Mord'rethar. It's on the second level guarded by the Plagued Fiends
	.isOnQuest 13295 << Alliance
	.isOnQuest 13279 << Horde
step
    .goto IcecrownGlacier,62.3,63.4
	.use 44010 >> Use the Pustulant Spinal Fluid in your bags on the bubbling green cauldrons. Kill the mobs that spawn, and use the Spinal Fluid again when prompted to "Add fluid soon". This quest is VERY hard, group up for it if needed.
    .complete 13295,1 << Alliance --Batch of Plague Neutralized (1)
    .complete 13279,1 << Horde --Batch of Plague Neutralized (1)
step
    .goto IcecrownGlacier,60.8,62.2
	>>Kill Coprous the Defiler inside of Mord'rethar. This quest is VERY hard, so group up for it if needed.
    .complete 13298,1 << Alliance --Coprous the Defiler Slain (1)
    .complete 13278,1 << Horde --Coprous the Defiler Slain (1)
step
	#sticky
	#label darksub
	>>Head to the platform above the wall and kill Bitter Initiates in the area. Loot them for their Orbs of Illusion
	.use 44246 >>Use the Orb of Illusion on Dark Subjugators in the area when you are out of combat.
	.collect 44246,3,13352,1,-1 << Horde --Orb of Illusion (3 -1)
	.collect 44246,3,13318,1,-1 << Alliance --Orb of Illusion (3 -1)
    .goto IcecrownGlacier,53.7,46.1
    .complete 13352,1 << Horde --Dark Subjugator dragged and dropped (3)
    .complete 13318,1 << Alliance --Dark Subjugator dragged and dropped (3)
    .goto IcecrownGlacier,54.7,45.9,60,0
    .goto IcecrownGlacier,54.0,46.3,60,0
    .goto IcecrownGlacier,52.2,45.7,60,0
    .goto IcecrownGlacier,54.0,46.3
--	.unitscan Dark Subjugator
--X too many in the area, unitscan would be awkward
step
    .goto IcecrownGlacier,53.9,46.1
	>>Kill Overseer Faedris in the big tent
    .complete 13354,1 << Horde --Overseer Faedris Killed (1)
	.complete 13319,1 << Alliance --Overseer Faedris Killed (1)
step
	#requires darksub
	.use 44251 >> Use the Partitioned Flask on the cauldrons outside at Aldur'thar
    .complete 13355,3 << Horde --Dark Sample Collected (1)
	.complete 13320,3 << Alliance --Dark Sample Collected (1)
    .goto IcecrownGlacier,49.7,34.4
    .complete 13355,2 << Horde --Green Sample Collected (1)
	.complete 13320,2 << Alliance --Green Sample Collected (1)
    .goto IcecrownGlacier,49.1,34.2
    .complete 13355,1 << Horde --Blue Sample Collected (1)
    .complete 13320,1 << Alliance --Blue Sample Collected (1)
    .goto IcecrownGlacier,48.9,33.2
step
	>>Kill Overseer Savryn and Jhaeqon under the big tents. Then fly up a level to Veraj (under the big tent) and kill him
    .complete 13354,4 << Horde --Overseer Savryn Killed (1)
	.complete 13319,4 << Alliance --Overseer Savryn Killed (1)
    .goto IcecrownGlacier,49.4,31.2
    .complete 13354,2 << Horde --Overseer Jhaeqon Killed (1)
	.complete 13319,2 << Alliance --Overseer Jhaeqon Killed (1)
    .goto IcecrownGlacier,54.7,32.6
    .complete 13354,3 << Horde --Overseer Veraj Killed (1)
	.complete 13319,3 << Alliance --Overseer Veraj Killed (1)
    .goto IcecrownGlacier,53.7,29.2
step << Alliance
	>>Fly to the small platform in the air. Talk to Killohertz
	.goto IcecrownGlacier,53.96,42.93
	.turnin 13383 >>Turn in Killohertz
	.accept 13380 >>Accept Leading the Charge
step << Alliance
	.goto IcecrownGlacier,53.96,43.11
	>>Talk to Karen to get on a bomber. Use Charge Shield (1) to gain 100 shields then switch to Bomber Bay (5) and begin bombing scourge below until all Infantry and Captains are slain. Switch to Anti-Air Turret (4) and begin using Anti-Air Rockets (1) to shoot Gargoyles in the air. Once completed press the Leave Vehicle button and you will be returned to the platform
	.complete 13380,1 -- Bombardment Infantry slain (40)
	.complete 13380,2 -- Bombardment Captain slain (8)
	.complete 13380,3 -- Gargoyle Ambusher slain (15)
	.skipgossip
step << Alliance
	>>Talk to Killohertz
    .goto IcecrownGlacier,53.96,42.93
    .turnin 13380 >>Turn in Leading the Charge
step << Horde
	>>Fly to the small platform in the air. Talk to Tezzla
    .goto IcecrownGlacier,53.99,36.87
    .turnin 13379 >>Turn in Green Technology
    .accept 13373 >>Accept Fringe Science Benefits
step << Horde
	.goto IcecrownGlacier,54.00,36.70
	>>Talk to Rizzy to get on a bomber. Use Charge Shield (1) to gain 100 shields then switch to Bomber Bay (5) and begin bombing scourge below until all Infantry and Captains are slain. Switch to Anti-Air Turret (4) and begin using Anti-Air Rockets (1) to shoot Gargoyles in the air. Once completed press the Leave Vehicle button and you will be returned to the platform
	.complete 13373,1 -- Bombardment Infantry slain (40)
	.complete 13373,2 -- Bombardment Captain slain (8)
	.complete 13373,3 -- Gargoyle Ambusher slain (15)
	.skipgossip
step << Horde
	>>Talk to Tezzla
    .goto IcecrownGlacier,54.00,36.94
    .turnin 13373 >>Turn in Fringe Science Benefits
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Fly to The Skybreaker, the big Alliance ship that's flying around high up in the air. Speak to Thassarian at the back left corner of the ship
    .turnin 13318 >>Turn in Drag and Drop
    .turnin 13319 >>Turn in Chain of Command
    .turnin 13295 >>Turn in Basic Chemistry
    .turnin 13298 >>Turn in Coprous the Defiled
    .accept 13342 >>Accept Not a Bug
    .accept 13345 >>Accept Need More Info
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Take the stairs at the middle of the ship (behind Maraad), then the stairs either side of the first staircase to go down into the engine room. Speak to Chief Engineer Boltwrench
    .turnin 13320 >>Turn in Cannot Reproduce
    .accept 13321 >>Accept Retest Now
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>> Fly to Orgrim's Hammer, the big Horde ship that's flying around high up in the air. Go into the big room in the front. Talk to Kolitra
	.turnin 13352 >>Turn in Drag and Drop
    .turnin 13354 >>Turn in Chain of Command
    .turnin 13279 >>Turn in Basic Chemistry
    .turnin 13278 >>Turn in Coprous the Defiled
    .accept 13358 >>Accept Not a Bug
    .accept 13366 >>Accept Need More Info
step << Horde
	>> Go to the lower deck of the ship. Talk to Chief Engineer Copperclaw
    .turnin 13355 >>Turn in Cannot Reproduce
    .accept 13356 >>Accept Retest Now
step
	#label taintedessence
	#sticky
    .goto IcecrownGlacier,49.7,34.4,0,0
	.use 44307 >>Use the Diluted Cult Tonic in your bags to gain the "Dark Discernment" Buff. This allows you to loot the Tainted Essences from all the humanoids you kill in the area
	.collect 44301,10,13356,1 << Horde
	.collect 44301,10,13321,1 << Alliance
step
    .goto IcecrownGlacier,54.1,31.4,70,0
    .goto IcecrownGlacier,54.7,28.0,70,0
    .goto IcecrownGlacier,57.0,28.8,70,0
    .goto IcecrownGlacier,54.1,31.4
	.use 44433 >> Kill 5 Enslaved Minions (Voidwalkers). Use the Rod of Siphoning on their corpses for their Dark Matter
	.collect 44434,5,13342,1 << Alliance --Dark Matter (5)
	.collect 44434,5,13358,1 << Horde --Dark Matter (5)
step
    .goto IcecrownGlacier,53.8,33.6
	>>Click on the Summoning Stone
	.complete 13342,1 << Alliance  --Dark Messenger Summoned (1)
    .complete 13358,1 << Horde --Dark Messenger Summoned (1)
step
	#completewith next
    .goto IcecrownGlacier,51.9,32.5,30 >> Enter the inside of Aldur'thar
	.isOnQuest 13366 << Horde
	.isOnQuest 13345 << Alliance
step
    .goto IcecrownGlacier,53.1,31.1,60,0
    .goto IcecrownGlacier,53.1,29.2,60,0
    .goto IcecrownGlacier,50.9,29.0,60,0
    .goto IcecrownGlacier,50.9,30.4,60,0
    .goto IcecrownGlacier,53.1,31.1
	>>Kill the Cultist Researchers in the area. Loot them for their Research Pages
	.collect 44459,1 --Cult of the Damned Research - Page 1 (1)
	.collect 44460,1 --Cult of the Damned Research - Page 2 (1)
	.collect 44461,1 --Cult of the Damned Research - Page 3 (1)
	.isOnQuest 13366 << Horde
	.isOnQuest 13345 << Alliance
step
	#sticky
	#label Thesis
    .goto IcecrownGlacier,49.7,34.4
	.use 44459 >> Click one of the research pages in your bags to combine them into the Thesis
    .complete 13366,1 << Horde --Cult of the Damned Thesis (1)
	.complete 13345,1 << Alliance --Cult of the Damned Thesis (1)
step
	#requires taintedessence
    .goto IcecrownGlacier,49.7,34.4
	.use 44301
	.use 44304 >> Right click the Tainted Essences in your bags to turn them into a Writhing Mass. Throw it into a cauldron
	.complete 13321,1 << Alliance
	.complete 13356,1 << Horde
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Fly to The Skybreaker, the big Alliance ship that's flying around high up in the air. Speak to Thassarian at the back left corner of the ship
    .turnin 13342 >>Turn in Not a Bug
    .turnin 13345 >>Turn in Need More Info
    .accept 13346 >>Accept No Rest For The Wicked
    .accept 13332 >>Accept Raise the Barricades
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Take the stairs at the middle of the ship (behind Maraad), then the stairs either side of the first staircase to go down into the engine room. Speak to Chief Engineer Boltwrench
    .turnin 13321 >>Turn in Retest Now
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>> Fly to Orgrim's Hammer, the big Horde ship that's flying around high up in the air. Go into the big room in the front. Talk to Kolitra
    .turnin 13358 >>Turn in Not a Bug
	.turnin 13366 >>Turn in Need More Info
    .accept 13367 >>Accept No Rest For The Wicked
    .accept 13306 >>Accept Raise the Barricades
step << Horde
	>> Go to the lower deck of the ship. Talk to Chief Engineer Copperclaw
    .turnin 13356 >>Turn in Retest Now
step
    .goto IcecrownGlacier,52.5,42.0,70,0
    .goto IcecrownGlacier,51.3,37.1,70,0
    .goto IcecrownGlacier,47.1,37.4,70,0
    .goto IcecrownGlacier,50.0,44.9,70,0
    .goto IcecrownGlacier,52.5,42.0
	.use 44127 >>Use the Barricade Construction Kit in your bags at The Valley of Fallen Heroes on the purple glows that appear
    .complete 13332,1 << Alliance --Barricades constructed (8)
	.complete 13306,1 << Horde --Barricades constructed (8)
step
	>>This quest is VERY hard, group up for it if needed
	>>Open the chests inside Aldur'thar and loot Alumeth's Skull, Heart, Scepter and Robes
	.collect 44476,1 --Alumeth's Skull (1)
    .goto IcecrownGlacier,50.5,30.0
	.collect 44477,1 --Alumeth's Heart (1)
    .goto IcecrownGlacier,52.8,30.7
	.collect 44478,1 --Alumeth's Scepter (1)
    .goto IcecrownGlacier,52.8,29.8
	.collect 44479,1 --Alumeth's Robes (1)
    .goto IcecrownGlacier,53.0,29.0
	.isOnQuest 13346 << Alliance
	.isOnQuest 13367 << Horde
step
    .goto IcecrownGlacier,51.9,29.0
	>>This quest is VERY hard, group up for it if needed
	.use 44476 >> Click any of the items in your bags to combine them into Alumeth's Remains
	.collect 44480,1 --Alumeth's Remains (1)
	.isOnQuest 13346 << Alliance
	.isOnQuest 13367 << Horde
step
    .goto IcecrownGlacier,51.9,29.0
	>>This quest is VERY hard, group up for it if needed
	.use 44480 >> Use Alumeth's Remains in front of the glowing crystal to summon him. Kill him
    .complete 13346,1 << Alliance --Alumeth the Ascended Defeated (1)
    .complete 13367,1 << Horde --Alumeth the Ascended Defeated (1)
	.isOnQuest 13346 << Alliance
	.isOnQuest 13367 << Horde
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Fly to The Skybreaker, the big Alliance ship that's flying around high up in the air. Speak to Thassarian at the back left corner of the ship
    .turnin 13346 >>Turn in No Rest For The Wicked
    .turnin 13332 >>Turn in Raise the Barricades
	.accept 13337 >>Accept The Ironwall Rampart
	.accept 13334 >>Accept Bloodspattered Banners
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>> Fly to Orgrim's Hammer, the big Horde ship that's flying around high up in the air. Go into the big room in the front. Talk to Kolitra
    .turnin 13367 >>Turn in No Rest For The Wicked
    .turnin 13306 >>Turn in Raise the Barricades
	.accept 13312 >>Accept The Ironwall Rampart
	.accept 13307 >>Accept Bloodspattered Banners
step
    .goto IcecrownGlacier,51.3,40.3,70,0
    .goto IcecrownGlacier,49.1,43.8
	>>Kill the Scourge Converters in the area
    .complete 13334,3 << Alliance --Scourge Converter (5)
    .complete 13307,3 << Horde --Scourge Converter (5)
step
    .goto IcecrownGlacier,45.5,46.5
	>>This quest is VERY hard, group up for it if needed
	.use 44186 >> Fly up to the balcony, then use the Rune of Distortion in your bags at Grimkor's Orb. Kill Grimkor the Wicked
    .complete 13337,1 << Alliance --Grimkor the Wicked (1)
    .complete 13312,1 << Horde --Grimkor the Wicked (1)
step
    .goto IcecrownGlacier,47.1,48.5,70,0
    .goto IcecrownGlacier,41.9,48.4,70,0
    .goto IcecrownGlacier,41.9,54.3,70,0
    .goto IcecrownGlacier,46.1,53.1
	>>Kill the Scourge Banner-Bearer and Converted Heroes in the area
    .complete 13334,1 << Alliance --Scourge Banner-Bearer (5)
    .complete 13334,2 << Alliance --Converted Hero (20)
    .complete 13307,1 << Horde --Scourge Banner-Bearer (5)
    .complete 13307,2 << Horde --Converted Hero (20)
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Fly to The Skybreaker, the big Alliance ship that's flying around high up in the air. Speak to Thassarian at the back left corner of the ship
	.turnin 13334 >>Turn in Bloodspattered Banners
	.turnin 13337 >>Turn in The Ironwall Rampart
	>>Go into the big room Maraad is facing on The Skybreaker and talk to Justin
	.accept 13314 >>Accept Get The Message
step << Alliance
    .goto IcecrownGlacier,46.2,52.1,70,0
    .goto IcecrownGlacier,42.4,59.4,0,0
	.use 44222 >>Use the Dart Gun in your bags on the Orgrim's Hammer Scouts (you can use it while on your flying mount). Loot their corpses for the Dispatches
    .complete 13314,1 --Orgrim's Hammer Dispatch (6)
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Go into the big room Maraad is facing on The Skybreaker and talk to Justin
	.turnin 13314 >>Turn in Get The Message
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>> Fly to Orgrim's Hammer, the big Horde ship that's flying around high up in the air. Go into the big room in the front. Talk to Kolitra
	.turnin 13312 >>Turn in The Ironwall Rampart
	.turnin 13307 >>Turn in Bloodspattered Banners
step << Horde
	>>Talk to Krom Blackscar beside you
	.accept 13313 >>Accept Blinding the Eyes in the Sky
step << Horde
	.goto IcecrownGlacier,48.85,40.44
	.use 44212 >>Use the SGM-3 in your bags on the Skybreaker Recon Fighters in the air
	.complete 13313,1 --Skybreaker Recon Fighters shot down (6)
step << Horde
	>> Fly to Orgrim's Hammer, the big Horde ship that's flying around high up in the air. Go into the big room in the front. Talk to Krom Blackscar
	.turnin 13313 >>Turn in Blinding the Eyes in the Sky
step
	+If you skipped or did not finish any of the quests in this guide please restart the guide and finish them. To do this click on the cog wheel and navigate back to the Icecrown Gunship Unlock Daily Quests guide
	>>If you have completed them all you can start using the Icecrown Gunship Daily Quests Route. Note that some may not be available today as you may have completed some daily quests already
]])
