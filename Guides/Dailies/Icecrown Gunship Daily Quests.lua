if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#version 1
#group +RestedXP Northrend Daily Quests
#subgroup Faction Daily Quests
#wotlk
#cata
#name Icecrown Gunship Daily Quests Route

step << Alliance -- Checking that the actual pre quests that have been completed, not dailies
	+To unlock all the Icecrown Gunship daily quests you must first complete the Pre Quest chain. Please use the Icecrown Gunship Unlock Daily Quests guide to unlock all the daily quests
	.isQuestAvailable 13314,13346,13342,13318,13321,13295,13288,13380,13291,13231,13296

--	 13314  Get the Message
--	 13346  No Rest For The Wicked
--	 13342  Not a Bug
--	 13318  Drag and Drop
--	 13321  Retest Now
--	 13295  Basic Chemistry
--	 13288  That's Abominable!
--	 13380  Leading the Charge
--	 13291  Borrowed Technology
--	 13231  The Broken Front
--	 13296  Get to Ymirheim!

step << Horde -- Checking that the actual quests that have been completed, not dailies
	+To unlock all the Icecrown Gunship daily quests you must first complete the Pre Quest chain. Please use the Icecrown Gunship Unlock Daily Quests guide to unlock all the daily quests
	.isQuestAvailable 13313,13228,13293,13239,13373,13279,13356,13352,13358,13367,13264

--	 13313  Blinding the Eyes in the Sky
--	 13228  The Broken Front
--	 13293  Get to Ymirheim!
--	 13239  Volatility
--	 13279  Basic Chemistry
--	 13356  Retest Now
--	 13352  Drag and Drop
--	 13358  Not a Bug
--	 13367  No Rest For The Wicked
--	 13264  That's Abominable!

--Alliance Skybreaker Quests (11)
--	Blood of the Chosen, 13336
--	Slaves to Saronite, 13300
--	No Mercy!, 13233
--	The Solution Solution, 13292
--	That's Abominable!, 13289
--	Neutralizing the Plague, 13297
--	Retest Now, 13322
--	Drag and Drop, 13323
--	Not a Bug, 13344
--	No Rest For The Wicked, 13350
--	Capture More Dispatches, 13333

--Alliance other misc quests nearby included with gunship quest chain (5)
--  King of the Mountain, 13280
--  Assault by Air, 13309
--  Assault by Ground, 13284
--  Static Shock Troops: the Bombardment, 13404
--  Putting the Hertz: The Valley of Lost Hope, 13382 -- not implimented by blizzard

--Horde Orgrim's Hammer Quests (11)
--	Blood of the Chosen, 13330
--	Slaves to Saronite, 13302
--	Make Them Pay!, 13234
--	Volatility, 13261
--	That's Abominable!, 13276
--	Neutralizing the Plague, 13281
--	Retest Now, 13357
--	Drag and Drop, 13353
--	Not a Bug, 13365
--	No Rest For The Wicked, 13368
--	Keeping the Alliance Blind, 13331

--Horde other misc quests nearby included with gunship quest chain (5)
--  King of the Mountain, 13283  -- DONE
--  Assault by Air, 13310 -- DONE
--  Assault by Ground, 13301 -- DONE
--  Riding the Wavelength: The Bombardment, 13406
--  Total Ohmage: The Valley of Lost Hope!, 13376 -- not implimented by blizzard

step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Fly to the Alliance Gunship, The Skybreaker
	>>Talk to Knight-Captain Drosche, Absalan the Pious, High Captain Justin Bartlett, Chief Engineer Boltwrench and Thassarian
	>>Note that the quest No Mercy! is a PvP quest which requires you to kill 15 Horde players in Icecrown. You may abandon/skip this daily if you wish
    .daily 13336 >>Accept Blood of the Chosen
    .daily 13300 >>Accept Slaves to Saronite
	.daily 13233 >>Accept No Mercy!
    .daily 13292 >>Accept The Solution Solution
    .daily 13289 >>Accept That's Abominable!
	.daily 13297 >>Accept Neutralizing the Plague
    .daily 13322 >>Accept Retest Now
    .daily 13323 >>Accept Drag and Drop
	.daily 13344 >>Accept Not a Bug
    .daily 13350 >>Accept No Rest For The Wicked
    .daily 13333 >>Accept Capture More Dispatches
step << Horde
	.goto IcecrownGlacier,67.00,38.00,0
	>>Fly to the Horde Gunship, Orgrim's Hammer
	>>Talk to Warbringer Davos Rioht, Brother Keltan, Sky-Reaver Korm Blackscar, Chief Engineer Copperclaw and Koltira Deathweaver
	>>Note that the quest Make Them Pay! is a PvP quest which requires you to kill 15 Alliance players in Icecrown. You may abandon/skip this daily if you wish
    .daily 13330 >>Accept Blood of the Chosen
    .daily 13302 >>Accept Slaves to Saronite
	.daily 13234 >>Accept Make Them Pay!
    .daily 13261 >>Accept Volatility
    .daily 13276 >>Accept That's Abominable!
	.daily 13281 >>Accept Neutralizing the Plague
    .daily 13357 >>Accept Retest Now
    .daily 13353 >>Accept Drag and Drop
	.daily 13365 >>Accept Not a Bug
    .daily 13368 >>Accept No Rest For The Wicked
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
	>>Shoot at all the Spear Guns on the buildings as you fly around
    .goto Icecrown,52.65,56.93
    .complete 13309,1 --4/4 Skybreaker Infiltrators dropped
	.isOnQuest 13309
step << Alliance
    .goto Icecrown,62.55,51.29
	>>Return to Koup
    .turnin 13309 >>Turn in Assault by Air
	.isQuestComplete 13309
step << Horde
	>>Fly to Ground Commander Xutjja (on the ground - not on the ship)
    .goto IcecrownGlacier,58.3,46.0
    .daily 13310 >>Accept Assault by Air
step << Horde
	#completewith next
	.vehicle >>Run over to the Kor'kron Supression Turret on the ship and click it.
    .goto IcecrownGlacier,59.60,45.84
	.isOnQuest 13310
step << Horde
	>>Shoot at all the turrets to disable them you see while flying around. Infiltrators will drop as you do this.
    .goto IcecrownGlacier,56.8,64.3
    .complete 13310,1 --Kor'kron Infiltrators dropped (4)
	.isOnQuest 13310
step << Horde
    .goto IcecrownGlacier,58.3,46.0
    .turnin 13310 >>Turn in Assault by Air
	.isQuestComplete 13310
step << Alliance
    .goto IcecrownGlacier,62.5,51.1,15,0
    .goto IcecrownGlacier,62.8,51.6
	>>Talk to the Squad Leader. He may not be here if someone else started the quest and has a roughly 6 minute respawn time
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
	>>Talk to the Squad Leader. He may not be here if someone else started the quest and has a roughly 6 minute respawn time
    .daily 13301 >>Accept Assault by Ground
step << Horde
    .goto IcecrownGlacier,54.9,52.8,0,0
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
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 44048 >>Loot the pieces of abandoned equipment scattered on the ground around The Broken Front. Use the Smuggled Solution in your bags when you have one of each piece of equipment (you don't need to wait for the RP) << Alliance
	.collect 43609,3,13292,1,-1 << Alliance --Pile of Bones (3)
	.collect 43610,3,13292,1,-1 << Alliance --Abandoned Helm (3)
	.collect 43616,3,13292,1,-1  << Alliance --Abandoned Armor (3)
    .complete 13292,1 << Alliance --Field Tests Conducted (3)
	.use 43608 >>Loot the pieces of abandoned equipment scattered on the ground around The Broken Front. Use Copperclaw's Volatile Oil in your bags when you have one of each piece of equipment (you don't need to wait for the RP) << Horde
	.collect 43609,3,13261,1,-1  << Horde --Pile of Bones (3)
	.collect 43610,3,13261,1,-1 << Horde --Abandoned Helm (3)
	.collect 43616,3,13261,1,-1 << Horde --Abandoned Armor (3)
    .complete 13261,1 << Horde --Field Tests Conducted (3)
	.isOnQuest 13292 << Alliance
	.isOnQuest 13261 << Horde
step
    .goto IcecrownGlacier,68.3,61.5
	>>Kill the Hulking Abominations in the area and loot them for Chilled Abomination Guts
	.use 43968 >> Use Abominations Reanimation Kit with some Guts in your bag to summon an Abomination you can control. Gather as many mobs as possible by making the Abomination attack them and get aggro, then use "Burst at the Seams" to kill all the mobs near your Abomination (the mobs have to be in combat to get their credit)
	>>If you run out of Guts, go and kill more Hulking Abominations. You can only have 1 gut on you at a time.
	.collect 43966,1,13289,-1,1 << Alliance --Chilled Abomination Guts (3)
    .complete 13289,1 << Alliance  --Icy Ghouls Exploded (15)
    .complete 13289,2 << Alliance  --Vicious Geists Exploded (15)
    .complete 13289,3 << Alliance  --Risen Alliance Soldiers Exploded (15)
	.collect 43966,1,13276,-1,1 << Horde  --Chilled Abomination Guts (3)
    .complete 13276,1 << Horde --Icy Ghouls Exploded (15)
    .complete 13276,2 << Horde --Vicious Geists Exploded (15)
    .complete 13276,3 << Horde --Risen Alliance Soldiers Exploded (15)
	.isOnQuest 13289 << Alliance
	.isOnQuest 13276 << Horde
step
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7,70,0
    .goto IcecrownGlacier,66.8,58.4,70,0
    .goto IcecrownGlacier,69.5,57.3,70,0
    .goto IcecrownGlacier,72.5,59.0,70,0
    .goto IcecrownGlacier,70.1,57.2,70,0
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7
	>>Kill the Pustulent Horrors in the area. Loot them for a Flesh Giant Spine. This quest is VERY hard. Group up for it if needed or you may abandon/skip this daily if you wish
	.collect 44009,1 -- Flesh Giant Spine (1)
	.isOnQuest 13297 << Alliance
	.isOnQuest 13281 << Horde
step
	.goto IcecrownGlacier,62.3,63.4
	.use 44009 >> Use the Flesh Giant Spine in your bags to create Pustulant Spinal Fluid
	.collect 44010,1 -- Pustulant Spinal Fluid (1)
	.isOnQuest 13297 << Alliance
	.isOnQuest 13281 << Horde
step
    .goto IcecrownGlacier,62.3,63.4
	.use 44010 >> Use the Pustulant Spinal Fluid in your bags on the bubbling green cauldrons. Kill the mobs that spawn and use the Spinal Fluid again when prompted to "Add fluid soon". This quest is VERY hard. Group up for it if needed or you may abandon/skip this daily if you wish
    .complete 13297,1 << Alliance --Batch of Plague Neutralized (1)
    .complete 13281,1 << Horde --Batch of Plague Neutralized (1)
	.isOnQuest 13297 << Alliance
	.isOnQuest 13281 << Horde
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
step
	#completewith next
    .goto IcecrownGlacier,51.9,32.5,30 >> Go inside of Aldur'thar
	.isOnQuest 13350 << Alliance
	.isOnQuest 13368 << Horde
step
	>>This quest is VERY hard. Group up for it if needed or abandon/skip this daily
	>>Open the chests inside Aldur'thar and loot Alumeth's Skull, Heart, Scepter and Robes
	.collect 44476,1 --Alumeth's Skull (1)
    .goto IcecrownGlacier,50.5,30.0
	.collect 44477,1 --Alumeth's Heart (1)
    .goto IcecrownGlacier,52.8,30.7
	.collect 44478,1 --Alumeth's Scepter (1)
    .goto IcecrownGlacier,52.8,29.8
	.collect 44479,1 --Alumeth's Robes (1)
    .goto IcecrownGlacier,53.0,29.0
	.isOnQuest 13350 << Alliance
	.isOnQuest 13368 << Horde
step
    .goto IcecrownGlacier,51.9,29.0
	>>This quest is VERY hard. Group up for it if needed or abandon/skip this daily
	.use 44476 >> Click any of the items in your bags to combine them into Alumeth's Remains
	.collect 44480,1 --Alumeth's Remains (1)
	.isOnQuest 13350 << Alliance
	.isOnQuest 13368 << Horde
step
    .goto IcecrownGlacier,51.9,29.0
	>>This quest is VERY hard. Group up for it if needed or abandon/skip this daily
	.use 44480 >> Use Alumeth's Remains in front of the glowing crystal to summon him. Kill him
    .complete 13350,1 << Alliance --Alumeth the Ascended Defeated (1)
    .complete 13368,1 << Horde --Alumeth the Ascended Defeated (1)
	.isOnQuest 13350 << Alliance
	.isOnQuest 13368 << Horde
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
step << Alliance
	>>Fly to the small platform in the air. Talk to Killohertz
	.goto IcecrownGlacier,53.96,42.93
	.daily 13404 >>Accept Static Shock Troops: the Bombardment
step << Alliance
	.goto IcecrownGlacier,53.96,43.11
	>>Talk to Karen to get on a bomber. Use Charge Shield (1) to gain 100 shields then switch to Bomber Bay (5) and begin bombing scourge below until all Infantry and Captains are slain. Switch to Anti-Air Turret (4) and begin using Anti-Air Rockets (1) to shoot Gargoyles in the air. Once completed press the Leave Vehicle button and you will be returned to the platform
	.complete 13404,1 -- Bombardment Infantry slain (50)
	.complete 13404,2 -- Bombardment Captain slain (10)
	.complete 13404,3 -- Gargoyle Ambusher slain (20)
	.skipgossip
step << Alliance
	>>Talk to Killohertz
    .goto IcecrownGlacier,53.96,42.93
    .turnin 13404 >>Turn in Static Shock Troops: the Bombardment
	.isQuestComplete 13404
step << Horde
	>>Fly to the small platform in the air. Talk to Tezzla
    .goto IcecrownGlacier,53.99,36.87
    .daily 13406 >>Accept Riding the Wavelength: The Bombardment
step << Horde
	.goto IcecrownGlacier,54.00,36.70
	>>Talk to Rizzy to get on a bomber. Use Charge Shield (1) to gain 100 shields then switch to Bomber Bay (5) and begin bombing scourge below until all Infantry and Captains are slain. Switch to Anti-Air Turret (4) and begin using Anti-Air Rockets (1) to shoot Gargoyles in the air. Once completed press the Leave Vehicle button and you will be returned to the platform
	.complete 13406,1 -- Bombardment Infantry slain (50)
	.complete 13406,2 -- Bombardment Captain slain (10)
	.complete 13406,3 -- Gargoyle Ambusher slain (20)
	.skipgossip
step << Horde
	>>Talk to Tezzla
    .goto IcecrownGlacier,54.00,36.94
    .turnin 13406 >>Turn in Riding the Wavelength: The Bombardment
	.isQuestComplete 13406
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Return to the Skybreaker. Talk to Knight-Captain Drosche, Absalan the Pious, High Captain Justin Bartlett, Chief Engineer Boltwrench and Thassarian
    .turnin -13336 >>Turn in Blood of the Chosen
    .turnin -13300 >>Turn in Slaves to Saronite
	.turnin -13233 >>Turn in No Mercy!
    .turnin -13292 >>Turn in The Solution Solution
    .turnin -13289 >>Turn in That's Abominable!
	.turnin -13297 >>Turn in Neutralizing the Plague
    .turnin -13322 >>Turn in Retest Now
    .turnin -13323 >>Turn in Drag and Drop
	.turnin -13344 >>Turn in Not a Bug
    .turnin -13350 >>Turn in No Rest For The Wicked
    .turnin -13333 >>Turn in Capture More Dispatches
step << Horde
	.goto IcecrownGlacier,67.00,38.00,0
	>>Return to Orgrim's Hammer. Talk to Warbringer Davos Rioht, Brother Keltan, Sky-Reaver Korm Blackscar, Chief Engineer Copperclaw and Koltira Deathweaver
    .turnin -13330 >>Turn in Blood of the Chosen
    .turnin -13302 >>Turn in Slaves to Saronite
	.turnin -13234 >>Turn in Make Them Pay!
    .turnin -13261 >>Turn in Volatility
    .turnin -13276 >>Turn in That's Abominable!
	.turnin -13281 >>Turn in Neutralizing the Plague
    .turnin -13357 >>Turn in Retest Now
    .turnin -13353 >>Turn in Drag and Drop
	.turnin -13365 >>Turn in Not a Bug
    .turnin -13368 >>Turn in No Rest For The Wicked
    .turnin -13331 >>Turn in Keeping the Alliance Blind
step << Alliance
	+You have completed all of The Skybreaker Daily Quests for today :) Remember to try to complete any of the group quests you abandoned/skipped if you wish!
step << Horde
	+You have completed all of Orgrim's Hammer Daily Quests for today :) Remember to try to complete any of the group quests you abandoned/skipped if you wish!
]])
