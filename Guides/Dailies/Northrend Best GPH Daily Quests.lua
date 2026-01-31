if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#version 1
#wotlk
#cata
#group +RestedXP Northrend Daily Quests
#name Best Daily Quests Gold Per Hour Route

--20 daily quests total
--5(rep depending) quests from Hodir (didnt include dragon flying one. its terrible) may not be 5 quests for everyone. should be at least 3 though
--6 from icecrown. quests from Ebon Blade
--9 from icecrown. quests from gunship/surroundings
--all of these quests require pre quests to be completed/unlocked. each section has checks to see if they have completed pre quests or not. if they havnt they're told to do pre quest guide
--gives the player still room to do daily heroic+normal as well as jc/cooking/fishing daily quests


--5 Quest section for The Sons of Hodir Daily Quests. Didn't include slaying dragon quest because its really bad/slow

step
	+To unlock The Sons of Hodir daily quests you must first complete their quest chain in The Storm Peaks. Please use The Sons of Hodir Unlock Daily Quests guide to unlock the daily quests
	.isQuestAvailable 13047
step
	>>Talk to Fjorn's Anvil, Hodir's Horn, Hodir's Helm, Frostworg Denmother and Arngrim the Insatiable
    .daily 12981 >>Accept Hot and Cold
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Accept Hodir's Call
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >> Accept A Viscous Cleaning
	.goto TheStormPeaks,64.24,59.23
	.daily 12994 >> Accept Spy Hunter
	.goto TheStormPeaks,63.49,59.73
	.daily 13046 >> Accept Feeding Arngrim
	.goto TheStormPeaks,67.61,59.95
	.reputation 1119,revered,<0,1 -- if you're 0 into revered it will display this step
step
	>>Talk to Fjorn's Anvil, Hodir's Horn, Hodir's Helm and Frostworg Denmother
    .daily 12981 >>Accept Hot and Cold
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Accept Hodir's Call
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >> Accept A Viscous Cleaning
	.goto TheStormPeaks,64.24,59.23
	.daily 12994 >> Accept Spy Hunter
	.goto TheStormPeaks,63.49,59.73
	.reputation 1119,honored,<0,1 -- if you're 0 into honored it will display this step
step
	>>Talk to Fjorn's Anvil, Hodir's Horn and Hodir's Helm
    .daily 12981 >>Accept Hot and Cold
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Accept Hodir's Call
    .goto TheStormPeaks,64.17,65.01
	.daily 13006 >> Accept A Viscous Cleaning
	.goto TheStormPeaks,64.24,59.23
	.reputation 1119,friendly,<0,1 -- if you're 0 into friendly it will display this step
step
	.goto TheStormPeaks,70.00,58.00,60,0
    .goto TheStormPeaks,70.14,61.16
	>>Kill Brittle Revenants. Loot them for Essences of Ice
	.collect 42246,6 --Essence of Ice (6)
	.isOnQuest 12981
step
	.goto TheStormPeaks,73.5,62.9,70,0
    .goto TheStormPeaks,76.2,63.4
	.use 42246 >> Use the Essences of Ice next to the Smoldering Scrap around Fjorn's Anvil. Loot the Frozen Iron Scrap
    .complete 12981,1 --Frozen Iron Scrap (6)
	.isOnQuest 12981
step
    .goto TheStormPeaks,70.73,50.96,65,0
	.goto TheStormPeaks,73.00,49.05,65,0
    .goto TheStormPeaks,71.45,47.76
	.use 42164 >> Kill Niffelem Forefathers and Restless Frostborn in the area. Use Hodir's Horn in your bags on their corpses to free them
    .complete 12977,1 --Niffelem Forefather freed (5)
    .complete 12977,2 --Restless Frostborn freed (5)
	.isOnQuest 12977
step
	#completewith next
    .goto TheStormPeaks,57.23,64.02
	.use 42479 >> Use the Ethereal Worg's Fang in your bags on the Corpse of the Fallen Worg. Follow the Ethereal Frostworg until it tracks a Stormforged Infiltrator then kill it.
	.complete 12994,1 --Stormforged Infiltrators Slain (3)
	.isOnQuest 12994
step
	.goto TheStormPeaks,57.92,61.07,60,0
	.goto TheStormPeaks,57.83,63.59,60,0
	.goto TheStormPeaks,56.51,65.00
	.use 42774 >> Use Arngrim's Tooth in your bags on Roaming Jormungar. Damage it to 30% or less health but do not kill it
	.complete 13046,1 --Arngrim's spirit fed (5)
	.isOnQuest 13046
step
    .goto TheStormPeaks,57.23,64.02
	.use 42479 >> Use the Ethereal Worg's Fang in your bags on the Corpse of the Fallen Worg. Follow the Ethereal Frostworg until it tracks a Stormforged Infiltrator then kill it.
	.complete 12994,1 --Stormforged Infiltrators Slain (3)
	.isOnQuest 12994
step
	.goto TheStormPeaks,55.84,63.94,50,0
    .goto TheStormPeaks,54.4,63.2
	>>Kill Viscous Oils in the Hibernal Cavern. Loot them for their Oil
    .complete 13006,1 --Viscous Oil (5)
	.isOnQuest 13006
step
	>>Return to Dun Niffelem
	>>Talk to Fjorn's Anvil, Hodir's Horn, Hodir's Helm, Frostworg Denmother and Arngrim the Insatiable
    .turnin 12981 >>Turn in Hot and Cold
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Turn in Hodir's Call
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Turn in A Viscous Cleaning
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >> Turn in Spy Hunter
	.goto TheStormPeaks,63.49,59.73
	.turnin 13046 >> Turn in Feeding Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 12994
	.isQuestComplete 13046
step
	>>Return to Dun Niffelem
	>>Talk to Fjorn's Anvil, Hodir's Horn, Hodir's Helm and Arngrim the Insatiable
    .turnin 12981 >>Turn in Hot and Cold
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Turn in Hodir's Call
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Turn in A Viscous Cleaning
	.goto TheStormPeaks,64.24,59.23
	.turnin 13046 >> Turn in Feeding Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 13046
step
	>>Return to Dun Niffelem
	>>Talk to Fjorn's Anvil, Hodir's Horn, Hodir's Helm and Frostworg Denmother
    .turnin 12981 >>Turn in Hot and Cold
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Turn in Hodir's Call
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Turn in A Viscous Cleaning
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >> Turn in Spy Hunter
	.goto TheStormPeaks,63.49,59.73
	.isQuestComplete 12994
step
	>>Return to Dun Niffelem
	>>Talk to Fjorn's Anvil, Hodir's Horn, Hodir's Helm, Frostworg Denmother and Arngrim the Insatiable
    .turnin 12981 >>Turn in Hot and Cold
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Turn in Hodir's Call
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Turn in A Viscous Cleaning
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >> Turn in Spy Hunter
	.goto TheStormPeaks,63.49,59.73
	.turnin 13046 >> Turn in Feeding Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 12994
	.isQuestComplete 13046
step
	>>Return to Dun Niffelem
	>>Talk to Fjorn's Anvil, Hodir's Horn, Hodir's Helm and Arngrim the Insatiable
    .turnin 12981 >>Turn in Hot and Cold
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Turn in Hodir's Call
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Turn in A Viscous Cleaning
	.goto TheStormPeaks,65.00,60.95
	.turnin 13046 >> Turn in Feeding Arngrim
	.goto TheStormPeaks,67.61,59.95
	.isQuestComplete 13046
step
	>>Return to Dun Niffelem
	>>Talk to Fjorn's Anvil, Hodir's Horn, Hodir's Helm and Frostworg Denmother
    .turnin 12981 >>Turn in Hot and Cold
    .goto TheStormPeaks,63.13,62.94
    .turnin 12977 >>Turn in Hodir's Call
    .goto TheStormPeaks,64.17,65.01
	.turnin 13006 >> Turn in A Viscous Cleaning
	.goto TheStormPeaks,64.24,59.23
	.turnin 12994 >> Turn in Spy Hunter
	.goto TheStormPeaks,63.49,59.73
	.isQuestComplete 12994
step
	>>Return to Dun Niffelem
	>>Talk to Fjorn's Anvil, Hodir's Horn and Hodir's Helm
    .turnin -12981 >>Turn in Hot and Cold
    .goto TheStormPeaks,63.13,62.94
    .turnin -12977 >>Turn in Hodir's Call
    .goto TheStormPeaks,64.17,65.01
	.turnin -13006 >> Turn in A Viscous Cleaning
	.goto TheStormPeaks,64.24,59.23
step << Mage
	#completewith next
	.zone Dalaran >> Teleport to Dalaran
	>>Fly to Icecrown
step << !Mage
	#completewith next
    .hs >>Hearth to Dalaran if your Hearth is set there or somewhere near Icecrown.
	>>Fly to Icecrown

--9 Quest section from Icecrown Gunship and close surroundings section. 6 Quests from the gunship, other 3 from on the ground/in Ymirheim

step << Alliance
	+To unlock all the Icecrown Gunship daily quests you must first complete the pre quest chain. Please use the Icecrown Gunship Unlock Daily Quests guide to unlock all the daily quests
	.isQuestAvailable 13314,13342,13321,13318
--	13314  Get the Message
-- 	13342  Not a Bug
--	13321  Retest Now
--	13318  Drag and Drop

step << Horde
	+To unlock all the Icecrown Gunship daily quests you must first complete the pre quest chain. Please use the Icecrown Gunship Pre Quests guide to unlock all the daily quests
	.isQuestAvailable 13313,13356,13352,13358
--	13313  Blinding the Eyes in the Sky
--	13356  Retest Now
--	13352  Drag and Drop
--	13358  Not a Bug

step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>In Icecrown, fly to the Alliance Gunship, The Skybreaker
	>>Talk to Knight-Captain Drosche, Absalan the Pious, High Captain Justin Bartlett, Chief Engineer Boltwrench and Thassarian
	>>They are positioned respectively back left of the ship, on the top deck, in the main central hold and below on the bottom deck
    .daily 13336 >>Accept Blood of the Chosen
    .daily 13300 >>Accept Slaves to Saronite
    .daily 13322 >>Accept Retest Now
    .daily 13323 >>Accept Drag and Drop
	.daily 13344 >>Accept Not a Bug
    .daily 13333 >>Accept Capture More Dispatches
step << Horde
	.goto IcecrownGlacier,67.00,38,0
	>>In Icecrown, fly to the Horde Gunship, Orgrim's Hammer
	>>Talk to Warbringer Davos Rioht, Brother Keltan, Sky-Reaver Korm Blackscar, Chief Engineer Copperclaw and Koltira Deathweaver
	>>They are positioned respectively in the main front hold, patrolling the top deck and below on the bottom deck
    .daily 13330 >>Accept Blood of the Chosen
    .daily 13302 >>Accept Slaves to Saronite
    .daily 13357 >>Accept Retest Now
    .daily 13353 >>Accept Drag and Drop
	.daily 13365 >>Accept Not a Bug
    .daily 13331 >>Accept Keeping the Alliance Blind
step << Alliance
    .goto IcecrownGlacier,62.6,51.3
	>>Fly to Ground Commander Koup (on the ground - not on the ship)
    .daily 13309 >>Accept Assault by Air
step << Alliance
    #completewith next
    .goto Icecrown,62.55,50.67
    .vehicle 32227 >> Right click the turret on top of the Flying Machine to start the quest
	.isOnQuest 13309
step << Alliance
	>>Shoot at all the Spear Guns to disable them you see while flying around. Infiltrators will drop as you do this
    .goto Icecrown,52.65,56.93
    .complete 13309,1 --4/4 Skybreaker Infiltrators dropped
	.isOnQuest 13309
step << Alliance
    .goto Icecrown,62.55,51.29
	>>Exit the Flying Machine. You will receive a parachute. Return to Koup
    .turnin 13309 >>Turn in Assault by Air
	.isQuestComplete 13309
step << Horde
	>>Fly to Ground Commander Xutjja (on the ground - not on the ship)
    .goto IcecrownGlacier,58.3,46.0
    .daily 13310 >>Accept Assault by Air
step << Horde
	#completewith next
	.vehicle >>Right click the turret on top of the Flying Machine to start the quest
    .goto IcecrownGlacier,59.60,45.84
	.isOnQuest 13310
step << Horde
	>>Shoot at all the Spear Guns to disable them you see while flying around. Infiltrators will drop as you do this
    .goto IcecrownGlacier,56.8,64.3
    .complete 13310,1 --Kor'kron Infiltrators dropped (4)
	.isOnQuest 13310
step << Horde
    .goto IcecrownGlacier,58.3,46.0
	>>Exit the Flying Machine. You will receive a parachute. Return to Xutjja
    .turnin 13310 >>Turn in Assault by Air
	.isQuestComplete 13310
step << Alliance
    .goto IcecrownGlacier,62.5,51.1,15,0
    .goto IcecrownGlacier,62.8,51.6
	>>Talk to the Squad Leader. He may not be here if someone else started the quest and has a roughly 6 minute respawn time, and respawns about 10 yards to the right of Koup. You may skip this if you don't want to wait or check later
    .daily 13284 >>Accept Assault by Ground
step << Alliance
    .goto IcecrownGlacier,58.2,55.9,0
    .goto IcecrownGlacier,59.6,59.3,0
    .goto IcecrownGlacier,57.8,62.6,0
	#completewith Mineslave
	>>Kill the Vrykul throughout Ymirheim
	.complete 13336,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13336
step << Alliance
    .goto Icecrown,59.89,53.50
	>>Escort the troops. Let some of the troops tank the mobs if needed
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
    .turnin 13280 >>Turn in King of the Mountain
	.isQuestComplete 13280
step << Alliance
	>>Return to Ground Commander Koup
    .goto Icecrown,62.60,51.35
    .turnin 13284 >>Turn in Assault by Ground
	.isQuestComplete 13284
step << Horde
    .goto IcecrownGlacier,58.3,46.0
	>>Talk to the Squad Leader. He may not be here if someone else started the quest and has a roughly 6 minute respawn time. You may skip this if you don't want to wait or check later
    .daily 13301 >>Accept Assault by Ground
step << Horde
    .goto IcecrownGlacier,58.2,55.9,0
    .goto IcecrownGlacier,59.6,59.3,0
    .goto IcecrownGlacier,57.8,62.6,0
	#completewith Mineslave
	>>Kill the Vrykul throughout Ymirheim
	.complete 13330,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13330
step << Horde
	>>Escort the troops. Let some of the troops tank the mobs if needed
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
    .goto IcecrownGlacier,58.2,55.9,70,0
    .goto IcecrownGlacier,59.6,59.3,70,0
    .goto IcecrownGlacier,57.8,62.6
	>>Kill the Vrykul throughout Ymirheim
	.complete 13330,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13330
step << Horde
    .goto IcecrownGlacier,51.9,57.6
	>>NOTE: This quest flags you for PvP. It is VERY easy however.
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
    .turnin 13283 >>Turn in King of the Mountain
	.isQuestComplete 13283
step << Horde
	>>Return to Ground Commander Xutjja
    .goto Icecrown,58.3,46.0
    .turnin 13301 >>Turn in Assault by Ground
	.isQuestComplete 13301
step
	>>Head to the platform and kill Bitter Initiates in the area. Loot them for their Orbs of Illusion
	.use 44246 >>Use the Orb of Illusion on Dark Subjugators in the area when you are out of combat.
	.collect 44246,3,13353,1,-1 << Horde--Orb of Illusion (3 -1)
	.collect 44246,3,13323,1,-1 << Alliance--Orb of Illusion (3 -1)
    .goto IcecrownGlacier,53.7,46.1
    .complete 13323,1 << Alliance --Dark Subjugator dragged and dropped (3)
    .complete 13353,1 << Horde --Dark Subjugator dragged and dropped (3)
    .goto IcecrownGlacier,54.7,45.9,60,0
    .goto IcecrownGlacier,54.0,46.3,60,0
    .goto IcecrownGlacier,52.2,45.7,60,0
    .goto IcecrownGlacier,54.0,46.3
	.isOnQuest 13323 << Alliance
	.isOnQuest 13353 << Horde
step << Alliance
    .goto IcecrownGlacier,46.2,52.1,70,0
    .goto IcecrownGlacier,42.4,59.4,0,0
	.use 44222 >>Use the Dart Gun in your bags on the Orgrim's Hammer Scouts (you can use it while on your flying mount). Loot their corpses for the Dispatches
    .complete 13333,1 --Orgrim's Hammer Dispatch (6)
	.isOnQuest 13333
step << Horde
	.goto IcecrownGlacier,48.85,40.44
	.use 44212 >>Use the SGM-3 in your bags on the Skybreaker Recon Fighters in the air
	.complete 13331,1 --Skybreaker Recon Fighters shot down (6)
	.isOnQuest 13331
step
    .goto IcecrownGlacier,49.7,34.4
	.use 44307 >>Use the Diluted Cult Tonic in your bags to gain the "Dark Discernment" Buff. This allows you to loot the Tainted Essences from all the humanoids you kill in the area
	.collect 44301,10,13322,1 << Alliance
	.collect 44301,10,13357,1 << Horde
	.isOnQuest 13322 << Alliance
	.isOnQuest 13357 << Horde
step
    .goto IcecrownGlacier,49.7,34.4
	.use 44301 -- to combine the 10 tainted essences into a writhing mass
	.use 44304 >> Right click the Tainted Essences in your bags to turn them into a Writhing Mass. Throw it into a cauldron
	.complete 13322,1 << Alliance
	.complete 13357,1 << Horde
	.isOnQuest 13322 << Alliance
	.isOnQuest 13357 << Horde
step
    .goto IcecrownGlacier,54.1,31.4,70,0
    .goto IcecrownGlacier,54.7,28.0,70,0
    .goto IcecrownGlacier,57.0,28.8,70,0
    .goto IcecrownGlacier,54.1,31.4
	.use 44433 >> Kill 5 Enslaved Minions (Voidwalkers). Use the Rod of Siphoning on their corpses for their Dark Matter
	.collect 44434,5,13344,1 << Alliance --Dark Matter (5)
	.collect 44434,5,13365,1 << Horde --Dark Matter (5)
	.isOnQuest 13344 << Alliance
	.isOnQuest 13365 << Horde
step
    .goto IcecrownGlacier,53.8,33.6
	>>Click on the Summoning Stone
	.complete 13344,1 << Alliance  --Dark Messenger Summoned (1)
    .complete 13365,1 << Horde --Dark Messenger Summoned (1)
	.isOnQuest 13344 << Alliance
	.isOnQuest 13365 << Horde
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Return to the Skybreaker. Talk to Knight-Captain Drosche, Absalan the Pious, High Captain Justin Bartlett, Chief Engineer Boltwrench and Thassarian
    .turnin -13336 >>Turn in Blood of the Chosen
    .turnin -13300 >>Turn in Slaves to Saronite
    .turnin -13322 >>Turn in Retest Now
    .turnin -13323 >>Turn in Drag and Drop
	.turnin -13344 >>Turn in Not a Bug
    .turnin -13333 >>Turn in Capture More Dispatches
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Return to Orgrim's Hammer. Talk to Warbringer Davos Rioht, Brother Keltan, Sky-Reaver Korm Blackscar, Chief Engineer Copperclaw and Koltira Deathweaver
    .turnin -13330 >>Turn in Blood of the Chosen
    .turnin -13302 >>Turn in Slaves to Saronite
    .turnin -13357 >>Turn in Retest Now
    .turnin -13353 >>Turn in Drag and Drop
	.turnin -13365 >>Turn in Not a Bug
    .turnin -13331 >>Turn in Keeping the Alliance Blind

--6 Quest section from Knights of the Ebon Blade. 3 come from The Shadow Vault, other 3 from Death's Rise

step
	+To unlock the Knights of the Ebon Blade daily quests you must first complete their quest chain in Icecrown. Please use the Ebon Blade Unlock Daily Quests guide to unlock the daily quests
	.isQuestAvailable 12814

-- 3 Quests from The Shadow Vault
step
	>>From The Shadow Vault accept the 3 daily quests
    >>Talk to Silver
	.daily 12995 >>Accept Leave Our Mark
	.goto Icecrown,42.84,24.92
	>>Talk to The Leaper. He walks around the tent
	.daily 13069 >>Accept Shoot'Em Up
	.goto IcecrownGlacier,43.5,25.0
	>>Talk to Vile, he is an abomination that patrols the path between the entrance and the main building
    .daily 13071 >>Accept Vile Like Fire!
    .goto IcecrownGlacier,42.7,26.8,60,0
    .goto IcecrownGlacier,43.6,24.1
step
    .goto IcecrownGlacier,29.5,43.4,50,0
    .goto IcecrownGlacier,29.6,45.7,50,0
    .goto IcecrownGlacier,27.9,45.8,50,0
    .goto IcecrownGlacier,27.8,40.2,50,0
    .goto IcecrownGlacier,28.3,38.0,50,0
    .goto IcecrownGlacier,29.0,35.1,50,0
    .goto IcecrownGlacier,34.1,28.7,50,0
    .goto IcecrownGlacier,29.5,43.4
	.use 42480 >>Kill Vrykul in the area. Use the Ebon Blade Banner in your bags on their corpses
    .complete 12995,1--Ebon Blade Banner planted near Vrykul corpse (15)
	.isOnQuest 12995
step
    .goto IcecrownGlacier,27.9,33.2
	>>Whilst inside the Harpoon, spam use "Rapid-Fire Harpoon" (3) to shoot down the Dragons
	.complete 13069,1 --Jotunheim Proto-Drakes & their riders shot down
	.isOnQuest 13069
step
	#completewith next
    .goto IcecrownGlacier,28.0,37.7
    .vehicle 30564 >> Right click a Njorndar Proto-Drake to mount it
	.isOnQuest 13071
step
    .goto IcecrownGlacier,27.7,41.1,70,0
    .goto IcecrownGlacier,29.2,41.0,70,0
    .goto IcecrownGlacier,29.6,39.7,70,0
    .goto IcecrownGlacier,31.5,36.9,70,0
    .goto IcecrownGlacier,32.0,39.1,70,0
    .goto IcecrownGlacier,30.8,40.2,70,0
    .goto IcecrownGlacier,32.4,40.7,70,0
    .goto IcecrownGlacier,31.5,43.9,70,0
    .goto IcecrownGlacier,30.1,43.1,70,0
    .goto IcecrownGlacier,27.7,41.1
	>>Use "Burst of Speed" (1) on cooldown to move faster. Use "Strafe Jotunheim Building" (3) to set the buildings ablaze
    .complete 13071,1 --Vrykul buildings set ablaze (8)
	.isOnQuest 13071
step
    >>Return to The Shadow Vault. Talk to Silver, The Leaper and Vile
	.turnin 12995 >>Turn in Leave Our Mark
	.goto Icecrown,42.84,24.92
    .turnin 13069 >>Turn in Shoot'Em Up
	.goto IcecrownGlacier,43.5,25.0
    .turnin 13071 >>Turn in Vile Like Fire!
    .goto IcecrownGlacier,43.6,24.1,60,0
    .goto IcecrownGlacier,42.7,26.8

-- 3 Quests from Death's Rise
step
	>>From Death's Rise accept the 3 daily quests
	>>Talk to Setaal
	.daily 12813 >>Accept From Their Corpses, Rise!
	.goto Icecrown,19.67,48.39
	>>Talk to Aurochs. He patrols around the middle fire
    .daily 12838 >>Accept Intelligence Gathering
    .goto IcecrownGlacier,20.1,47.5,20,0
    .goto IcecrownGlacier,20.4,47.9,20,0
    .goto IcecrownGlacier,20.1,48.4,20,0
    .goto IcecrownGlacier,19.7,47.9
	>>Talk to Uzo
    .daily 12815 >>Accept No Fly Zone
	.goto Icecrown,19.64,47.80
step
	#sticky
	#label Gryphon
	.goto IcecrownGlacier,10.5,44.1,70,0
    .goto IcecrownGlacier,5.0,43.4,70,0
    .goto IcecrownGlacier,10.5,39.0,70,0
    .goto IcecrownGlacier,12.7,41.2,70,0
    .goto IcecrownGlacier,10.5,44.1
	>>Kill the Gryphon Riders in the area. Shoot them down with ranged abilities or group multiple ones of them up in the air and then fly down and kill them
    .complete 12815,1 --Onslaught Gryphon Rider (10)
	.isOnQuest 12815
step
    #completewith next
	.goto IcecrownGlacier,9.5,44.8,50,0
    .goto IcecrownGlacier,9.5,44.8,0,0
	.use 40587 >> Kill the Onslaught mobs in the area. Use Darkmender's Tincture in your bags on their corpses
    .complete 12813,1 --Scarlet Onslaught corpse transformed (10)
	.isOnQuest 12813
step
	>>Kill Onslaught mobs, then loot them for their keys. Use them to open chests all around the Onslaught Harbor for the Documents
	>>|cff00ecffNOTE: Only open chests that are sparkling for the Documents. Chest which are not sparkling DO NOT contain Documents.|r
    .goto IcecrownGlacier,10.7,45.6,40,0
    .goto IcecrownGlacier,10.3,46.4,40,0
    .goto IcecrownGlacier,8.8,46.7,40,0
    .goto IcecrownGlacier,8.8,42.2,40,0
    .goto IcecrownGlacier,10.6,42.9,40,0
    .goto IcecrownGlacier,9.6,40.6,40,0
    .goto IcecrownGlacier,9.3,37.5,40,0
    .goto IcecrownGlacier,10.1,36.2,40,0
    .goto IcecrownGlacier,9.1,36.3,40,0
    .goto IcecrownGlacier,8.5,36.4,40,0
    .goto IcecrownGlacier,10.7,45.6,40,0
    .goto IcecrownGlacier,10.3,46.4,40,0
    .goto IcecrownGlacier,8.8,46.7,40,0
    .goto IcecrownGlacier,8.8,42.2,40,0
    .goto IcecrownGlacier,10.6,42.9,40,0
    .goto IcecrownGlacier,9.6,40.6,40,0
    .goto IcecrownGlacier,9.3,37.5,40,0
    .goto IcecrownGlacier,10.1,36.2,40,0
    .goto IcecrownGlacier,9.1,36.3,40,0
    .goto IcecrownGlacier,8.5,36.4
	.collect 40652,6,12838,-1
    .complete 12838,1 --Onslaught Intel Documents (5)
	.isOnQuest 12838
step
	.goto IcecrownGlacier,9.5,44.8,50,0
    .goto IcecrownGlacier,9.5,44.8,0,0
	.use 40587 >> Kill the Onslaught mobs in the area. Use Darkmender's Tincture in your bags on their corpses
    .complete 12813,1 --Scarlet Onslaught corpse transformed (10)
	.isOnQuest 12813
step
	#requires Gryphon
	>>Return to Death's Rise. Talk to Uzo, Setaal and Aurochs
    .turnin 12815 >>Turn in No Fly Zone
    .goto Icecrown,19.64,47.80
    .turnin 12813 >>Turn in From Their Corpses, Rise!
    .goto Icecrown,19.67,48.39
    .turnin 12838 >>Turn in Intelligence Gathering
    .goto IcecrownGlacier,20.1,47.5,20,0
    .goto IcecrownGlacier,20.4,47.9,20,0
    .goto IcecrownGlacier,20.1,48.4,20,0
    .goto IcecrownGlacier,19.7,47.9
]])
