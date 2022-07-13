RXPGuides.RegisterGuide([[
#group RestedXP Wrath Preparation
#name 25 Questlog Guide
#loop
step
#sticky
    +XP Breakdown:
    .showtotalxp >> Total XP prepared:
    .showtotalxp 1 >> Maximum XP possible using the guide on this character:
step
	#sticky
	+The questlog guide is not fully done yet step by step. It will be out soon. Keep an eye out for an update via our discord.
    .show25quests >> CLICK HERE to see the list of 25 best quests for your character
    ]])

	RXPGuides.RegisterGuide([[
#group RestedXP Wrath Preparation
#name !How to Use This Guide
step
	#sticky
	+Welcome to the RXP 70-71 Prep guide!
	+Start with the Collectible Items and Launch Prep Guide chapters, as they will prepare you for all the quests you'll be turning in on launch. Complete them in full, turn in all quests. These are questlines you leave in the open world, not quests you keep in your quest log!
	+Next, do the 25 Quest Log guide, it is recommended you do around 24 quests and not the full 25 to make sure you have room for quests on launch day. Do not do this guide before completing the Launch Prep Guide!
step
	+It is highly recommended you copy your character over to the PTR and give it a test whirl before launch day so you know the route better!

]])
RXPGuides.RegisterGuide([[
#group RestedXP Wrath Preparation
#name Collectable Items
step
	#completewith questdrops
	#sticky
	+This chapter of the guide is all items that drop from mobs that start quests. It is highly recommended you follow it to completion, even if it means finding a group for elite quests.
step
	#sticky
	#completewith dragonsloveme
	.reputation 1015,friendly >> Get friendly with Netherwing.
step
	.isQuestAvailable 10804
	.goto Shadowmoon Valley,59.4,58.6
	>> This questline will make you friendly with the Netherwing, which gives a lot of potential exp.
	* The quest giver can be off fighting Rocknails or even die to them, you may need to wait for him to respawn.
	.accept 10804 >> Accept Kindness
step
	.isOnQuest 10804
	.goto Shadowmoon Valley,62.4,58.6
	.use 31372 >> Kill and loot Rocknail Flayers in the area for their caracass. Then feed their carcass to the Netherwing Drakes by placing it on the ground.
	*Make sure to travel a bit when laying the meat, as the same drakes won't eat twice in a row
	.complete 10804,1 --Mature Netherwing Drake fed (x8)
step
	.isOnQuest 10804
	.goto Shadowmoon Valley,59.4,58.6
	>> The quest giver can be off fighting Rocknails or even die to them, you may need to wait for him to respawn.
	.turnin 10804 >> Turn in Kindness
step
	.isQuestTurnedIn 10804
	.goto Shadowmoon Valley,59.4,58.6
	.accept 10811 >> Accept Seek Out Neltharaku.
step
	.isQuestTurnedIn 10804
	.goto Shadowmoon Valley,61.8,60.0,80,0
	.goto Shadowmoon Valley,66.2,60.4,80,0
	.goto Shadowmoon Valley,61.8,60.0
	>> She is a ghostly dragon flying around above the Netherwing Fields, may need to look around for her.
	.unitscan Neltharaku
	.turnin 10811 >> Turn in Seek out Neltharaku
	.accept 10814 >> Accept Neltharaku's Tale
step
	.isQuestTurnedIn 10804
	.goto Shadowmoon Valley,61.8,60.0
	.skipgossip
	>> Speak to Neltharaku
	.turnin 10814 >> Turn in Neltharaku's Tale
	.accept 10836 >> Accept Infiltrating Dragonmaw Fortress
step
	.isQuestTurnedIn 10804
	.goto Shadowmoon Valley,66.0,60.0
	>> Kill any Dragonmaw Orcs in the area, any but peons count towards the quest
	.complete 10836,1 --Dragonmaw Orc slain (x15)
step
	.isQuestTurnedIn 10804
	.goto Shadowmoon Valley,61.8,60.0
	>> Find Neltharaku in the sky again, hopefully near where you last saw her
	.unitscan Neltharaku
	.turnin 10836 >> Turn in Infiltrating Dragonmaw Fortress
	.accept 10837 >> Accept To Netherwing Ledge!
step
	.isQuestTurnedIn 10804
	.goto Shadowmoon Valley,66.0,80.0,60,0
	.goto Shadowmoon Valley,66.3,82.3,30,0
	.goto Shadowmoon Valley,67.3,81.7,30,0
	.goto Shadowmoon Valley,68.3,79.8,30,0
	.goto Shadowmoon Valley,71.7,83.1,30,0
	.goto Shadowmoon Valley,76.7,83.3,60,0
	.goto Shadowmoon Valley,66.0,80.0
	>> Loot Nethervine Crystals in the area. Find Minerals can track them despite them looking like plants.
	.complete 10837,1 --Nethervine Crystal collected (x12)
step
	.isQuestTurnedIn 10804
	.goto Shadowmoon Valley,61.8,60.0
	.unitscan Neltharaku
	>> Find Neltharaku flying above the Netherwing Fields
	.turnin 10837 >> Turn in To Netherwing Ledge!
	.accept 10854 >> Accept The Force of Neltharaku
step
	.isQuestTurnedIn 10804
	.goto Shadowmoon Valley,71.0,64.0 --check coordinates
	.use 31652 >> Use the crystals on enslaved drakes. Don't stand too close or they will attack you and not the orcs.
	*The drakes are very weak and will charge nearby orcs after freeing them, be quick to help them in combat or they will die.
	.complete 10854,1 --Enslaved Netherwing Drake freed (x5)
step
	.isQuestTurnedIn 10804
	.goto Shadowmoon Valley,61.8,60.0
	.unitscan Neltharaku
	>> Find Neltharaku flying above the Netherwing Fields
	.turnin 10854 >> Turn in The Force of Neltharaku
	.accept 10858 >> Accept Karynaku
step
	.isQuestTurnedIn 10804
	.goto Shadowmoon Valley,69.8,61.4
	>> Find Karynaku on the second floor of the fortress
	.unitscan Karynaku
	.turnin 10858 >> Turn in Karynaku
	.accept 10872 >> Accept Zuluhed the Whacked
step
	.isQuestTurnedIn 10804
	.goto Shadowmoon Valley,71.0,62.2
	>> This is an elite quest, you may need help. Kill Zuluhed and loot him for the key.
	.complete 10872,2
step
	.isQuestTurnedIn 10804
	.goto Shadowmoon Valley,69.8,61.4
	.use 31664 >> Use the key's on Karynaku's chains to free her.
	.complete 10872,1
step
	.isQuestTurnedIn 10804
	.goto Shadowmoon Valley,69.8,61.4
	.turnin 10872 >> Turn in Zuluhed the Whacked
	.accept 10871 >> Accept Ally of the Netherwing
step
	.isQuestTurnedIn 10804
	.goto Shadowmoon Valley,59.4,58.6
	>>  The quest giver can be off fighting Rocknails or even die to them, you may need to wait for him to respawn.
	.turnin 10871 >> Turn in Ally of the Netherwing
	.accept 11012 >> Accept Blood Oath of the Netherwing
step
	.isQuestTurnedIn 10804
	.goto Shadowmoon Valley,59.4,58.6
	.turnin 11012 >> Turn in Blood Oath of the Netherwing
	.accept 11013 >> Accept In Service of the Illidari
step
	.isQuestTurnedIn 10804
	.goto Shadowmoon Valley,66.2,85.6
	.turnin 11013 >> Turn in In Service of the Illidari
	.accept 11014 >> Accept Enter the Taskmaster
step
	.isQuestTurnedIn 10804
	.goto Shadowmoon Valley,73.4,86.0
	>> Kill Arvoar the Rapacious and loot him. He is elite, you may need a group.
	.unitscan Arvoar the Rapacious
	.collect 32621,1
step
	.isQuestTurnedIn 10804
	.goto Shadowmoon Valley,73.4,86.0
	.use 32621 >> Use the Partially Digested Hand in your bags to accept the quest
	.accept 11041 >> Accept A Job Unfinished
step
	.isQuestTurnedIn 10804
	.goto Shadowmoon Valley,70.4,84.6
	>> Kill Overmine Flayers and Barash the Den Mother in the area
	.unitscan Barash the Den Mother
	.complete 11041,1
	.complete 11041,2
step
	.isQuestTurnedIn 10804
	.goto Shadowmoon Valley,66.2,85.6
	.turnin 11041 >> Turn in A Job Unfinished
step
	.isQuestTurnedIn 10804
	.goto Shadowmoon Valley,66.0,86.4
	.accept 11019 >> Accept Your Friend On The Inside
	.turnin 11019 >> Turn in Your Friend On The Inside
step
	.isQuestTurnedIn 10804
	.goto Shadowmoon Valley,66.0,86.4
	.turnin 11014 >> Turn in Enter the Taskmaster
step
	#label dragonsloveme
	.goto Shadowmoon Valley,65.3,89.9,30,0
    .goto Shadowmoon Valley,70.0,86.6
	>> When friendly with Netherwing enter the mines then kill the oozes and loot them for the Sludge-covererd Object
	.collect 32726,1,11081,1 >> Kill Black Blood of Draenor
step
	.goto Shadowmoon Valley,53.0,62.4,60,0
	.goto Shadowmoon Valley,52.7,68.6,60,0
	.goto Shadowmoon Valley,51.6,63.8,60,0
	.goto Shadowmoon Valley,52.3,59.1,60,0
	.goto Shadowmoon Valley,53.0,62.4
	.unitscan Val'zareq the Conqueror
	>> Go kill Val'zareq the Conqueror. This is an elite quest, you will likely need to group up.
	.collect 31345,1,10793,1 >> Get the Journal of Vel'zareq
step << Horde
    .goto Shadowmoon Valley,67.6,36.6
	>> Kill Smith Gorlunk and loot him
	.unitscan Smith Gorlunk
	.collect 31241,1,10755,1
step << Alliance
	>> Kill Smith Gorlunk and loot him
	.unitscan Smith Gorlunk
    .goto Shadowmoon Valley,67.6,36.6
	.collect 31239,1,10754,1
step
    .goto Terokkar Forest,69.6,78.6
	>> Kill and loot Talonpriest Ishaal. If you have not completed the quest World of Shadows you will need to find someone who has completed it and group up with them, he is invisible without the elixir from that quest.
	>> They can kill Talonpriest for you and you can loot him for the Journal. Do NOT complete World of Shadows to do this quest, World of Shadows is more exp on launch day.
	>> Skip this step if you cannot find someone.
	.unitscan Talonpriest Ishaal
	.collect 32523,1,11021,1
step
    .goto Terokkar Forest,41.2,56.8
	>> Kill and loot Cabal enemies in the area until you get the quest item
	.collect 31707,1,10880,1
step << Alliance
	#sticky
	#completewith zangarfish
	.isQuestAvailable 11531
	.skill fishing,300 >> This is highly recommended. This is a potentially unlimited turn in quest, stop by Shattrath and work on leveling your fishing up to 300 before continuing
step
    .goto Hellfire Peninsula,25.6,76.6
	.unitscan Avruu
	 >> Kill and loot Avruu
	.collect 23580,1,9418,1
step << Horde
    .goto Hellfire Peninsula,65.6,30.0
	>> Kill and loot Razorsaw
 	.collect 29590,1,10393,1
step << Alliance
	.goto Hellfire Peninsula,53.1,26.7
	>> Kill and loot Warbringer Arix'Amal
	.collect 29588,1,10395,1
step
    .goto Hellfire Peninsula,48.6,39.6
	>> Kill and loot Marauding Crust Bursters until you get the quest item
	* You will need to run over the "Earthquakes" on the ground to spawn the enemies
 	.collect 23338,1,9373,1
step
     .goto Hellfire Peninsula,17.8,40.6
	>> Kill and loot a Raging Colossus
	.collect 29476,1,10134,1
step << Alliance
    .goto Zangarmarsh,80.2,41.0
	>> Kill and loot Withered Giants until you get the quest item.
	* Save the Bog Lord Tendrils if you need Sporegar rep
	.collect 24483,1,9827,1
step << Horde
    .goto Zangarmarsh,80.2,41.0
	>> Kill and loot Withered Giants until you get the quest item.
	* Save the Bog Lord Tendrils if you need Sporegar rep
	.collect 24484,1,9828,1
step << Alliance
	#label zangarfish
	.goto Zangarmarsh,77.5,66.8
	.skill fishing,<300,1 >> Fish up as many Strange Engine Parts as you can, they can be turned in infinitely. A full inventory is 3.9mil exp. They are fished in Zangermarsh by fishing up Steam Pump Flotsam in the Zangermarsh Lakes. Steam Pump Flotsam shares spawns with all other fishing pools, so you may need to fish up other pools. This turn in is repeatable, fish up as many as you can!
	.collect 34474,200,11531,1
step
    .goto Zangarmarsh,62.2,40.6
	>> Kill and loot Steam Pump Overseers and other nagas in the area until you get the Drain Schematics
	.collect 24330,1,9731,1
step
    .goto Nagrand,73.6,59.2,40,0
    .goto Nagrand,69.8,52.8,40,0
    .goto Nagrand,72.8,44.6,40,0
    .goto Nagrand,65.8,38.2,0
	>> Kill and loot the lightning elementals in the area, Dust Howlers have the best droprate.
	.collect 24504,1,9861,1
step << Alliance
    .goto Nagrand,48.6,34.4,40,0
    .goto Nagrand,43.0,31.6,40,0
    .goto Nagrand,41.0,27.0,40,0
    .goto Nagrand,35.8,26.0,40,0
    .goto Nagrand,34.0,20.4,0
	>> Kill and loot Murkblood Invaders, they patrol around so you may need to do multiple laps.
	.collect 24559,1,9871,1
	.unitscan Murkblood Invader
step << Horde
    .goto Nagrand,48.6,34.4,40,0
    .goto Nagrand,43.0,31.6,40,0
    .goto Nagrand,41.0,27.0,40,0
    .goto Nagrand,35.8,26.0,40,0
    .goto Nagrand,34.0,20.4,0
	>> Kill and loot Murkblood Invaders, they patrol around so you may need to do multiple laps.
	.collect 24558,1,9872,1
	.unitscan Murkblood Invader
step
    .goto Zangarmarsh,32.9,59.6
	>> Kill and loot "Count" Ungula
	.collect 25459,1,9911,1
	.unitscan "Count" Ungula
step
    .goto Blade's Edge Mountains,75.8,23.6,40,0
    .goto Blade's Edge Mountains,71.6,33.6,40,0
    .goto Blade's Edge Mountains,70.6,44.8,0
	>> Kill and loot a Fel Corrupter
	.collect 31384,1,10810,1
	.unitscan Fel Corrupter
step
    .goto Blade's Edge Mountains,60.0,35.6
	>> Kill and loot Wrymcult Hewers and Poachers in the area until the quest item drops. It has a very low drop rate.
	.collect 31120,1,10719,1
step
    .goto Blade's Edge Mountains,41.6,21.4
	>> Kill and loot Grishna mobs in the area
	.collect 31489,1,10825,1
step
    .goto Netherstorm,59.8,86.8
	 >> Kill and loot Cohlien Frostweaver
	.collect 29236,1,10307,1
	.unitscan Cohlien Frostweaver
step
    .goto Netherstorm,60.0,85.2
	 >> Kill and loot Conjurer Luminrath
	.collect 29235,1,10306,1
	.unitscan Conjurer Luminrath
step
    .goto Netherstorm,60.6,87.6
	>> Kill and loot Battle-Mage Dathric
	.collect 29233,1,10182,1
	.unitscan Battle-Mage Dathric
step
    .goto Netherstorm,59.0,88.2
	 >> Kill and loot Abjurist Belmara
	.collect 29234,1,10305,1
	.unitscan Abjurist Belmara
step
    .goto Netherstorm,55.0,43.4
	>> Kill the Congealed Void Horror and loot him. This is an elite, you may need to group up. This is a rare spawn
	.collect 29738,1,10413,1
	.unitscan Congealed Void Horror
step << Horde
	>> Kill the last boss in Hellfire Ramparts.
	.collect 23892,1,9588,1
step << Alliance
	 >> Kill the last boss in Hellfire Ramparts.
	.collect 23890,1,9587,1
step
	>> Kill mobs in The Steamvault until the Orders from Lady Vashj drop
	.collect 24367,1,9764,1 >> Get Orders from Lady Vashj
step
	#sticky
	#label questdrops
	#completewith BOEitems
	+These quests are from raids get them if you can, otherwise skip this chapter
step << Alliance
	>> Get Magtheridon Head from Magtheridon's Lair
	.collect 32385,1,11002,1
step << Horde
	>> Get Magtheridon Head from Magtheridon's Lair
	.collect 32386,1,11003,1
step
	>> Get Kael'thas and the Verdant Sphere from Tempest Keep.
	.collect 32405,1,11007,1
step
	>> Get Blood of the Warlord from Zul'Aman. This quest requires a summon to Ghostlands be an effecient turn in, skip if you won't have access to one on launch day.
	.collect 33102,1,11178,1
step
	#sticky
	#completewith BOPitemslist
	#label BOEitems
	+This chapter is all items that can be bought on the Auction house and will be free delivery quests. Check them off as you purchase them.
step << Horde
	.collect 31670,3,10860,1
	.collect 31671,3,10860,1
step
	.collect 24368,1,9765,1 --Coilfang armaments
step
--Shattered halls key
	.collect 23445,4,10763,1
	.collect 22445,2,10763,1
	.collect 22574,4,10763,1
step
	.collect 24449,6,9806,1 --fertile spores
step
	.collect 24246,5,9715,1 --sanguine hibiscus
step
	.collect 24245,10,9808,1 --Glowcap
step
	#aldor
	.collect 25744,8,10024,1 --Dampscale Basilisk Eye
step
	#aldor
	.collect 29740,1,10420,1 --Fel Armament
step
	#aldor
	.collect 30809,10,10653,1 --Mark of Sargeras
step << Alliance
    .goto Blasted Lands,63.5,17.0
    >>Head to Nethergarde keep in Blasted lands. Go inside the keep and buy 1 Nethergarde Bitter
    .collect 23848,1,9563,1 --Collect Nethergarde Bitter (x1)
step
	#aldor
	.collect 29425,10,10325,1 --Mark of Kil'jaeden
step
	#scryer
	.collect 30810,10,10656,1 --Sunfury Signet
step
	#scryer
	.collect 29426,10,10412,1 --Firewing Signet
step
	#scryer
	.collect 29739,1,10416,1 --Arcane Tome
step
	.collect 25719,30,10917,1 --Arakkoa Feather
step
	.collect 32388,6,11004,1 --Shadow Dust
step
	>> This quest requires you be neutral with the Consortium, we will be reducing our rep to Neutral later in the guides. Skip this step if you don't want to do that.
	.collect 25463,27,9914,1 --Pair of Ivory Tusks
step
	>> This quest requires you be neutral with the Consortium, we will be reducing our rep to Neutral later in the guides. Skip this step if you don't want to do that.
	.collect 25416,10,9882,1 --Oshu'gun Crystal Fragment
step
	.collect 32601,1,11061,1 --Unstable Flask of the Sorcerer
step
	.collect 32598,1,11030,1 --Unstable Flask of the Beast
step
	.collect 32464,40
	.skill mining,350 >> You can only turn in one Netherwing gathering daily, if you have two gathering professions skip the next purchase step
step
	.collect 32468,40
	.skill herbalism,350 >> You can only turn in one Netherwing gathering daily, if you have two gathering professions skip the next purchase step
step
	.collect 32470,35
	.skill skinning,350
step
	#completewith BOEitems
	.collect 24401,10,9802,1 --Unidentified Plant Parts
step
	#sticky
	#label BOPitemslist
	#completewith BOPitems
	+These items are BOP items and will need to be farmed on your character for free turn ins.
step
	--.reputation 933,neutral
	>>Kill Ogres in nagrand for Warbeads
	.collect 25433,20,9893,1 --Warbeads
step << Alliance
	.goto Nagrand,75.0,65.0
	>> Grind any mobs in Nagrand for Oshu'gun Crystal Powder. Note it is Unique up to 100, including any in your bank
	.collect 26043,100 --doesnt need quest id, repeatable quest gives exp
step << Horde
	#label BOPitems
    .goto Nagrand,75.0,65.0
	>> Grind any mobs in an area of Nagrand of your choosing for Oshu'gun Crystal Powder. Note it is Unique up to 100, including any in your bank.
	.collect 26042,100 --doesnt need quest id, repeatable quest gives exp
step
    .goto Blade's Edge Mountains,30.2,75.2
	--Apexis Shard
	>>Kill mobs around Ogri'la
	.collect 32569,5 -- Zarant making command for this based on the quests.
step
	.goto Netherstorm,30.6,75.2
	>> Kill and loot Zaxxis Raiders and Stalkers in Netherstorm
	.collect 29209,10,10262,1 --Zaxxis Insignia.
step
	.goto Shadowmoon Valley,69.0,85.0
	>> Kill mobs in the area and loot them for Netherwing Crystals
	.collect 32427,30,11015,1 --Netherwing Crystal (x30)
step
	.goto Shadowmoon Valley,69.0,85.0
	.reputation 1015,friendly,<0,1
	>> Can be found from herbing, mining, killing monsters in the area, or by finding one in the world. They look like large glowing columns, similar to the eggs at Celestial Ridge in Netherstorm.
	.collect 32506,1,11049,1 --Netherwing Egg
step << Alliance
	.goto Blade's Edge Mountains,46.8,78.6,30,0
	.goto Blade's Edge Mountains,43.2,80.4
	 >> Collect 11 Bloodmaul Brutebane Brew from Brewmasters.
	.collect 29443,11,10511,1
]])

RXPGuides.RegisterGuide([[
#group RestedXP Wrath Preparation
#name RestedXP Total XP prepared
step
	>> So far the experienced you have prepared is:
	.showtotalxp
	>> Out of the total possible for your character:
	.showtotalxp 1
    >>-
	.show25quests >> CLICK HERE to see the list of 25 best quests for your character
]])


RXPGuides.RegisterGuide([[
#group RestedXP Wrath Preparation
#name Launch Prep Guide

step
	.reputation 989,revered >> Get Revered with Keepers of Time.
	>> Spam Caverns of Time dungeons until revered. This is a MUST DO step unless you have a warlock that can summon you to the Caverns at launch instead.
step << Horde
	.reputation 729,exalted >> Get exalted with the Frostwolf Clan
	.goto Alterac Mountains,62.2,58.9
	>> This step requires a summon to Alterac Mountains on launch day. Skip if you don't have one. We are turning in the AV Trinket Upgrade quest. Get to atleast revered, or exalted if you've already turned in the revered upgrade quest. Revered and Exalted give the same exp. This rep is gained by PvPing in Alterac Valley.
	* Be sure to do Proving Grounds and unlock the base level of your trinket. This quest is picked up in Alterac Mountains
	.accept 7161 >> Accept Proving Grounds
	.turnin 7161 >> Turn in Proving Grounds
step << Alliance
	.reputation 730,exalted >> Get exalted with the Stormpike Guard
	.goto Alterac Mountains,39.6,81.2
	>> This step requires a summon to Alterac Mountains on launch day. Skip if you don't have one. We are turning in the AV Trinket Upgrade quest. Get to atleast revered, or exalted if you've already turned in the revered upgrade quest. Revered and Exalted give the same exp. This rep is gained by PvPing in Alterac Valley.
	* Be sure to do Proving Grounds and unlock the base level of your trinket. This quest is picked up in Alterac Mountains
	.accept 7162 >> Accept Proving Grounds
	.turnin 7162 >> Turn in Proving Grounds
step
	.reputation 967,exalted >> Get exalted with The Violet Eye.
	>> We are turning in the Kara ring upgrade quest. Get to atleast honored, all the turnins past honored are the same exp. Go up a rep rank if you've already turned in the ring upgrade quest this rank. This rep is gained by running Karazhan.
step
	.reputation 990,exalted >> Get exalted with The Scale of the Sands.
	>> We are turning in the Hyjal ring upgrade quest. Get to atleast honored, all the turnins past honored are the same exp. Go up a rep rank if you've already turned in the ring upgrade quest this rank.  This rep is gained by running Mount Hyjal.
step << Horde
	.goto Blasted Lands,58.0,55.8 >> Head to the Blasted Lands.
	>> Accept the quest then go through the Dark Portal
	.accept 9407 >> Accept Through the Dark Portal
step << Horde
	>> Head through the Dark Portal to Hellfire Peninsula
	.goto Hellfire Peninsula,87.4,49.8
	.turnin 9407 >> Turn in Through the Dark Portal
	.accept 10120 >> Accept Arrival in Outland
step << Horde
	.goto Hellfire Peninsula,87.4,48.2
	.turnin 10120 >> Turn in Arrival in Outlands
	.accept 10289 >> Accept Journey to Thrallmar
step << Horde
	#completewith next
	.goto Hellfire Peninsula,55.8,36.8
	.fly Thrallmar >> Talk to the NPC again and fly to Thrallmar
step << Horde
	.goto Hellfire Peninsula,55.8,36.8
	.turnin 10289 >> Turn in Journey to Thrallnar
	.accept 10291 >> Accept Report to Nazgrel
step << Horde
	.goto Hellfire Peninsula,55.0,36.0
	.turnin 10291 >> Turn in Report to Nazgrel
	.accept 10121 >> Accept Eradicate the Burning Legion
step << Horde
	>> Run outside of town
	.goto Hellfire Peninsula,58.0,41.2
	.turnin 10121 >> Turn in Eradicate the Burning Legion
	.accept 10123 >> Accept Felspark Ravine
step << Horde
	.goto Hellfire Peninsula,63.0,38.0
	>> Kill Flamewalker Imps, Infernal Warbringers, and a Dreadcaller in the area
	.complete 10123,1
	.complete 10123,2
	.complete 10123,3
step << Horde
	.goto Hellfire Peninsula,58.0,41.2
	.turnin 10123 >> Turn in Felspark Ravine
step << Horde
	.goto Hellfire Peninsula,55.0,36.0
	.accept 9400 >> Accept The Assassin.
step << Horde
	.goto Hellfire Peninsula,33.6,43.6
	>> Fly to the orc corpse
	.complete 9400,1
step << Horde
	.goto Hellfire Peninsula,33.6,43.6
	.turnin 9400 >> Turn in The Assassin
step << Alliance
	.goto Blasted Lands,58.3,56.0
	>> Go to the Blasted Lands
	.accept 10119 >> Accept Through the Dark Portal
step << Alliance
	.goto Hellfire Peninsula,87.4,50.7
	>> Go through the Dark Portal
	.turnin 10119 >> Turn in Through the Dark Portal
	.accept 10288 >> Accept Arrival in Outland
step << Alliance
	.goto Hellfire Peninsula,87.4,52.4
	.turnin 10288 >> Turn in Arrival in Outland
	.accept 10140 >> Accept Journey to Honor Hold
step << Alliance
	.goto Hellfire Peninsula,54.7,62.8
	>> Either talk to the flight master again or fly yourself to Honor Hold
	.skipgossip
	.turnin 10140 >> Turn in Journey to Honor Hold
	.accept 10254 >> Accept Force Commander Danath
step << Alliance
	.goto Hellfire Peninsula,56.6,66.6
	.turnin 10254 >> Accept Force Commander Danath
	.accept 10141 >> Accept The Legion Reborn
step << Alliance
	.goto Hellfire Peninsula,61.7,60.7
	.turnin 10141 >> Turn in The Legion Reborn
	.accept 10142 >> Accept The Path of Anguish
step << Alliance
	.goto Hellfire Peninsula,67.0,58.6
	>> Kill demons in the area
	.complete 10142,1 --Dreadcaller slain (x1)
	.complete 10142,2 --Flamewalker Imps slain (x4)
	.complete 10142,3 --Infernal Warbringers slain (x6)
step << Alliance
	.goto Hellfire Peninsula,61.7,60.7
	.turnin 10142 >> Turn in The Path of Anguish
	.accept 10143 >> Accept Expedition Point
step << Alliance
	.goto Hellfire Peninsula,56.6,66.5
	.accept 10047 >> Accept The Path of Glory from Warp-Scryer Kryv inside the keep.
step << Alliance
	.goto Hellfire Peninsula,64.5,49.6,10,0
	.goto Hellfire Peninsula,54.6,50.4,10,0
	.use 25889
	>> Use Draenei Holy Water on Trampled Skeletons found along the Path of Glory.
	.complete 10047,1
step << Alliance
	.goto Hellfire Peninsula,56.6,66.6
	.turnin 10047 >> Turn in The Path of Glory
step << Alliance
	.goto Hellfire Peninsula,23.0,40.4
	>> Head to western Hellfire Peninsula
	.accept 9390 >> Accept In Search of Sedai.
step << Alliance
	.goto Hellfire Peninsula,26.8,37.6
	.turnin 9390 >> Turn in In Search of Sedai.

step << Alliance
	.reputation 946,friendly >> Get Friendly with Honor Hold so you can turn in Gaining Mirren's Trust at launch. Do this via spamming dungeons to minimize quest loss.
step << Horde
	.goto Zangarmarsh,85.2,54.6
	.accept 9774 >> Accept Thick Hydra Scales
step << Horde
	.goto Zangarmarsh,84.1,39.0,80,0
	.goto Zangarmarsh,85.2,54.6,80,0
	.goto Zangarmarsh,80.1,34.3,80,0
	.goto Zangarmarsh,81.0,41.3
	>> Kill Hydras in the area and loot them for scales.
	*They do NOT share spawns with the Giants.
	.complete 9774,1
step << Horde
	.goto Zangarmarsh,85.2,54.6
	.turnin 9774 >> Turn in Thick Hydra Scales
step
	.goto Zangarmarsh,78.4,62.0
	.accept 9716 >> Accept Disturbance at Umbrafen Lake
step
	.goto Zangarmarsh,70.8,81.3
	.complete 9716,1
step
	.goto Zangarmarsh,78.4,62.0
	.turnin 9716 >> Turn in Disturbance at Umbrafen Lake
	.accept 9718 >> Accept As the Crow Flies
step
	.goto Zangarmarsh,78.4,62.0
	.use 25465 >> Use Stormcrow Amulet and wait for quest to complete. It takes 2 minutes and 30 seconds, take a lil stretch break :)
	.complete 9718,1
step
	.goto Zangarmarsh,78.4,62.0
	.turnin 9718 >> Turn in As the Crow Flies
	.accept 9720 >> Accept Balance Must Be Preserved
step
	#label schemmy
	.itemcount 24330,1
	.use 24330 >> Use the Drain Schematics in your bag to accept the quest
	.accept 9731 >> Accept Drain Schematics
step
	.goto Zangarmarsh,70.6,80.3
	.use 24355 >> Use the Ironvine Seeds to disable the console at Umbrafen Lake.
	.complete 9720,1
step
	.goto Zangarmarsh,25.2,43.6
	.use 24355 >> Use the Ironvine Seeds to disable the console at Marshlight Lake.
	.complete 9720,2
step
	#requires schemmy
	.itemcount 24330,1
	.goto Zangarmarsh,50.4,40.9
	>> Explore the drain deep enough to get the quest completion.
	.complete 9731,1
step
	.goto Zangarmarsh,62.0,40.8
	.use 24355 >> Use the Ironvine Seeds to disable at Serpent Lake.
	.complete 9720,3
step
	.goto Zangarmarsh,63.1,64.1
	.use 24355 >> Use the Ironvine Seeds to disable at The Lagoon.
	.complete 9720,4
step
	.goto Zangarmarsh,78.4,62.0
	.turnin 9720 >> Turn in Balance Must Be Preserved
step
	#requires schemmy
	.itemcount 24330,1
	.goto Zangarmarsh,78.4,62.0
	.turnin 9731 >> Turn in Drain Schematics
step
	#label thickysticky
	.goto Terokkar Forest,44.4,26.2 --Earthbinder Tavgren
	.accept 9968 >> Accept Strange Energy.
	.accept 9971 >> Accept Clues in the Thicket.
step
	#sticky
	#requires thickysticky
	.goto Terokkar Forest,45.1,21.8,40,0
	.goto Terokkar Forest,44.4,30.8,40,0
	.goto Terokkar Forest,45.1,21.8
	>> Kill Terromoth and Vicious Terromoth for samples.
	*Terromoths spawn on the south side, Vicious Terrormoths spawn north in the village.
	.complete 9968,2
	.complete 9968,1
step
	.goto Terokkar Forest,45.1,21.8
	>> Interact with the strange object on the floor of the inn.
	.complete 9971,1
step
	#requires thickysticky
	.goto Terokkar Forest,44.4,26.2 --Earthbinder Tavgren
	.turnin 9968 >> Turn in Strange Energy.
	.turnin 9971 >> Turn in Clues in the Thicket.

step
	.goto Terokkar Forest,44.4,26.2 --Earthbinder Tavgren
	.accept 9978 >> Accept By Any Means Necessary.
step
	.goto Terokkar Forest,38.3,26.6,80,0
	.goto Terokkar Forest,50.3,29.0,80,0
	.goto Terokkar Forest,38.3,26.6
	.line Terokkar Forest,38.3,26.6,40.6,25.5,47.2,27.0,50.3,29.0
	.skipgossip
	>>Find Empoor on the road and fight him to convince him to tell you what he knows.
	.unitscan Empoor
	.turnin 9978 >> Turn in Accept By Any Means Necessary.
	.accept 9979 >> Accept Wind Trader Lathrai.
step << Horde
	.goto Terokkar Forest,48.8,45.6
	.accept 10000 >> Accept An Unwelcome Presence
step << Horde
	.goto Terokkar Forest,67.4,51.8
	>> Kill Warped Peons in the area
	.complete 10000,1 --Warped Peons slain (x12)
step << Horde
	.goto Terokkar Forest,63.4,42.6
	.turnin 10000 >> Turn in An Unwelcome Presence
step << Alliance
	.goto Terokkar Forest,58.2,54.8
	.accept 9998 >> Accept Unruly Neighbors
step << Alliance
	.goto Terokkar Forest,67.4,51.8
	>> Kill Warped Peons in the area
	.complete 9998,1 --Warped Peons slain (x12)
step << Alliance
	.goto Terokkar Forest,69.6,44.2
	.turnin 9998 >> Turn in Unruly Neighbors
step
	.goto Shattrath City,72.4,31.6
	.turnin 9979 >> Turn in Wind Trader Lathrai.
	.accept 10112 >> Accept A Personal Favor.
step
	.goto Terokkar Forest,31.6,42.6
	>> Kill and loot the Skithian mobs for stolen goods.
	.complete 10112,1
step
	.goto Shattrath City,72.2,30.9
	.turnin 10112 >> Turn in A Personal Favor.
step
	.goto Shattrath City,72.2,30.9
	.accept 9990 >> Accept Investigate Tuurem.
step
	.goto Shattrath City,56.4,49.1
	.accept 10984 >> Accept Speak with the Ogre
step
	.goto Shattrath City,65.2,67.9
	.turnin 10984 >> Turn in Speak with the Ogre
	.accept 10983 >> Accept Mog'dorg the Wizened
step
	>> Collect the sealed box in the ruins.
	.goto Terokkar Forest,54.0,30.0
	.complete 9990,1
step << Horde
	.goto Terokkar Forest,44.4,26.2 --Earthbinder Tavgren
	.turnin 9990 >> Turn in Investigate Tuurem.
	.accept 9995 >> Accept What Are These Things?
step << Alliance
	.goto Terokkar Forest,44.4,26.2 --Earthbinder Tavgren
	.turnin 9990 >> Turn in Investigate Tuurem.
	.accept 9994 >> Accept What Are These Things?
step << Horde
	.goto Terokkar Forest,50.0,45.8
	.turnin 9995 >> Turn in What Are These Things?
	.accept 10448 >> Accept Report to Stonebreaker Camp.
step << Horde
	.goto Terokkar Forest,50.0,44.8
	.accept 9993 >> Accept Olemba Seed Oil.
step << Horde
	#sticky
	#completewith endofseedoil
	#label seedoil
	>> Collect Olemba Seeds around trees in Terokkar Forest as you quest.
	* They look like little blue crystals.
	.complete 9993,1
step << Horde
	.goto Terokkar Forest,63.2,42.4
	.turnin 10448 >> Turn in Report to Stonebreaker Camp.
	.accept 9997 >> Accept Attack on Firewing Point.
step << Alliance
	.goto Terokkar Forest,57.0,53.6
	.turnin 9994 >> Turn in What Are These Things?
	.accept 10444 >> Accept Report to the Allerian Post.
step << Alliance
	.goto Terokkar Forest,69.6,44.0
	.turnin 10444 >> Turn in Report to the Allerian Post.
	.accept 9996 >> Accept Attack on Firewing Point.
step << Alliance
	.goto Terokkar Forest,71.6,37.8
	>> Kill the Firewing Defenders, Bloodwarders and Warlocks.
	.complete 9996,1
	.complete 9996,2
	.complete 9996,3
step << Horde
	.goto Terokkar Forest,71.6,37.8
	>> Kill the Firewing Defenders, Bloodwarders and Warlocks.
	.complete 9997,1
	.complete 9997,2
	.complete 9997,3
step << Alliance
	.goto Terokkar Forest,69.6,44.0
	.turnin 9996 >> Turn in Attack on Firewing Point.
	.accept 10446 >> Accept The Final Code.
step << Horde
	.goto Terokkar Forest,63.2,42.4
	.turnin 9997 >> Turn in Attack on Firewing Point.
	.accept 10447 >> Accept The Final Code.
step
	#sticky
	#completewith endofseedoil
	.goto Terokkar Forest,73.6,36.0
	>> Fly to the top of the tower
step << Alliance
	.goto Terokkar Forest,73.8,35.8
	>> Kill Sharth Voldoun for The Final Code.
	.collect 29912,1,10446,1
step << Horde
	.goto Terokkar Forest,73.8,35.8
	>> Kill Sharth Voldoun for The Final Code.
	.collect 29912,1,10447,1
step << Horde
	.goto Terokkar Forest,71.3,37.4
	.use 29912 >> Click on the pillar in the center of Firewing Point
	.complete 10447,1
step << Alliance
	.goto Terokkar Forest,71.3,37.4
	.use 29912 >> Click on the pillar in the center of Firewing Point
	.complete 10446,1
step << Horde
	.goto Terokkar Forest,50.0,45.8
	.turnin 10447 >> Turn in The Final Code.
step << Alliance
	.goto Terokkar Forest,69.6,44.0
	.turnin 10446 >> Turn in The Final Code.
step << Horde
	#requires seedoil
	.goto Terokkar Forest,50.1,44.9
	.turnin 9993 >> Turn in Olemba Seed Oil.
step
	#label endofseedoil
	.goto Terokkar Forest,49.8,76.2
	.accept 10920 >> Accept For the Fallen.
step
	.goto Terokkar Forest,51.8,78.8,30,0
	.goto Terokkar Forest,55.6,61.2
	>> Kill Dreadfang Widows along the edges of the Bone Wastes.
	.complete 10920,1
step
	.goto Terokkar Forest,49.8,76.2
	.turnin 10920 >> Turn in For the Fallen.
	.accept 10921 >> Accept Terokkarantula.
step
	.goto Terokkar Forest,54.0,81.6
	>> Kill Terokkarantula. This is an elite quest, you may need help.
	.complete 10921,1
step
	.goto Terokkar Forest,49.8,76.2
	.turnin 10921 >> Turn in Terokkarantula.
step
	.goto Terokkar Forest,35.0,65.2
	>> Find Ha'lei near the enterance to the Auchenai Crypts.
	.accept 10227 >> Accept I See Dead Draenei.
step
	.goto Terokkar Forest,35.1,66.0
	.turnin 10227 >> Turn in I See Dead Draenei.
	.accept 10228 >> Accept Ezekiel.
step << Horde
	.goto Nagrand,55.6,37.6
	>> Head to Nagrand
	.accept 9888 >> Accept The Impotent Leader.
step << Horde
	.goto Terokkar Forest,19.8,60.8
	.turnin 9888 >> Turn in The Impotent Leader.
	.accept 9889 >> Accept Don't Kill the Fat One.
step << Horde
	.goto Terokkar Forest,19.8,62.6
	>> Kill 10 Boulderfist Invaders. Do not fight Unkor the Ruthless yet.
	.complete 9889,1
step << Horde
	.goto Terokkar Forest,20.0,63.4
	>> Beat up Unkor untill he submits.
	.complete 9889,2
	.turnin 9889 >> Turn in Don't Kill the Fat One.
	.accept 9890 >> Accept Success!
step << Horde
	.goto Terokkar Forest,19.6,60.8
	.turnin 9890 >> Turn in Success!
	.accept 9891 >> Accept Because Kilrath is a Coward.
step << Horde
	.goto Nagrand,55.6,37.6
	.turnin 9891 >> Turn in Because Kilrath is a Coward.
	.accept 9906 >> Accept Message in a Battle.
step << Horde
	.goto Nagrand,76.4,61.6,20,0
	.goto Nagrand,74.6,69.6
	>> Kill Boulderfist Ogres.
	.complete 9906,1
	.complete 9906,2
step << Horde
	.goto Nagrand,55.6,37.6
	.turnin 9906 >> Turn in Message in a Battle.
	.accept 9907 >> Accept An Audacious Advance.
step << Horde
	.goto Nagrand,49.6,56.4
	.goto Nagrand,40.8,31.6
	>> Kill Boulderfist Ogres.
	.complete 9907,1
	.complete 9907,2
step << Horde
	.goto Nagrand,55.6,37.6
	.turnin 9907 >> Turn in An Audacious Advance.
	.accept 10107 >> Accept Diplomatic Measures.
step << Horde
	.goto Nagrand,73.8,62.6
	>> Speak to Lantressor and go through his dialogue
	.skipgossip
	.turnin 10107 >> Turn in Diplomatic Measures.
	.accept 9928 >> Accept Armaments for Deception.
	.accept 9927 >> Accept Ruthless Cunning.
step << Horde
	.goto Nagrand,69.4,81.4
	>> Pick up Kil'sorrow Armaments from boxes around the fortress.
	.complete 9928,1
	>> Kill Kil'sorrow enemies and plant banners on their corpses. You don't have to target the corpse.
	.use 25552
	.complete 9927,1
step << Horde
	.goto Nagrand,73.8,62.6
	.turnin 9928 >> Turn in Armaments for Deception.
	.turnin 9927 >> Turn in Ruthless Cunning.
	.accept 9931 >> Accept Returning the Favor.
	.accept 9932 >> Accept Body of Evidence.
step << Horde
	.goto Nagrand,54.8,39.8
	.accept 9864 >> Accept The Missing War Party.
step << Horde
	#sticky
	.goto Nagrand,46.7,24.3
	>> Use Damp Woolen Blanket while standing next to the pyre.
	* Boulderfist Saboteurs will spawn, protect them if any ogres aggro to them.
	.use 25658
	.complete 9932,1
step << Horde
	.goto Nagrand,46.0,20.2
	>> Kill Warmaul Ogres and plant banners on their corpses. You don't have to target the corpse.
	.use 25555
	.complete 9931,1
step << Horde
	.goto Nagrand,32.4,36.0
	.turnin 9864 >> Turn in The Missing War Party.
	.accept 9865 >> Accept Once Were Warriors.
step << Horde
	.goto Nagrand,73.8,62.6
	.turnin 9931 >> Turn in Returning the Favor.
	.turnin 9932 >>	Turn in Body of Evidence.
step << Horde
	.goto Nagrand,32.6,42.6
	>> Kill Murkblood Scavengers and Raiders.
	.complete 9865,1
	.complete 9865,2
step << Horde
	.goto Nagrand,32.4,36.0
	.turnin 9865 >> Turn in Once Were Warriors.
step << Alliance
	.goto Nagrand,55.0,70.6
	.accept 9917 >> Accept Do My Eyes Deceive Me.
step << Alliance
	.goto Nagrand,62.8,72.4,40,0
	>> Kill Boulderfist Hunters for the Plans.
	.complete 9917,1
step << Alliance
	.goto Nagrand,55.0,70.6
	.turnin 9917 >> Turn in Do My Eyes Deceive Me.
	.accept 9918 >> Accept Not On My Watch!
step << Alliance
	.goto Nagrand,62.6,71.6
	>> Beat up Lump untill he surrenders, then speak to him.
	.skipgossip
	.complete 9918,1
step << Alliance
	.goto Nagrand,55.0,70.6
	.turnin 9918 >> Turn in Not On My Watch!
	.accept 9920 >> Accept Mo'mor the Breaker.
step << Alliance
	.goto Nagrand,54.6,72.2
	.turnin 9920 >> Turn in Mo'mor the Breaker.
	.accept 9921 >> Accept The Ruins of Burning Blade.
step << Alliance
	.goto Nagrand,74.6,68.6,40,0
	>> Kill Boulderfist Ogres around the camp
	.complete 9921,1
	.complete 9921,2
step << Alliance
	.goto Nagrand,54.6,72.2
	.turnin 9921 >> Turn in The Ruins of Burning Blade.
	.accept 9922 >> Accept The Twin Clefts of Nagrand.
step << Alliance
	.goto Nagrand,50.2,56.8,40,0
	.goto Nagrand,40.8,31.6,40,0
	>> Kill Boulderfist Ogres around the camp
	.complete 9922,1
	.complete 9922,2
step << Alliance
	.goto Nagrand,54.6,72.2
	.turnin 9922 >> Turn in The Twin Clefts of Nagrand.
	.accept 10108 >> Accept Diplomatic Measures.
step << Alliance
	.goto Nagrand,55.4,68.8
	.accept 11044 >> Accept Visions of Destruction
step << Alliance
	.goto Nagrand,73.8,62.6
	>> Speak with Lantresor.
	.skipgossip
	.complete 10108,1
	.turnin 10108 >> Turn in Diplomatic Measures.
	.accept 9928 >> Accept Armaments for Deception.
	.accept 9927 >> Accept Ruthless Cunning.
step << Alliance
	.goto Nagrand,69.4,81.4
	>> Pick up Kil'sorrow Armaments from boxes around the fortress.
	.complete 9928,1
	>> Kill Kil'sorrow enemies and plant banners.
	.use 25552
	.complete 9927,1
step << Alliance
	.goto Nagrand,73.8,62.6
	.turnin 9928 >> Turn in Armaments for Deception.
	.turnin 9927 >> Turn in Ruthless Cunning.
	.accept 9931 >> Accept Returning the Favor.
	.accept 9932 >> Accept Body of Evidence.
step << Alliance
	#sticky
	.goto Nagrand,46.7,24.3
	>> Use Damp Woolen Blanket while standing next to the pyre. Protect the Saboteurs once they spawn.
	.use 25658
	.complete 9932,1
step << Alliance
	.goto Nagrand,46.0,20.2
	>> Kill Warmaul Ogres and plant banners.
	.use 25555
	.complete 9931,1
step << Alliance
	.goto Nagrand,73.8,62.6
	.turnin 9931 >> Turn in Returning the Favor.
	.turnin 9932 >>	Turn in Body of Evidence.
step
	.goto Nagrand,27.4,43.0
	>> Make sure you are dismounted.
	.accept 9991 >> Accept Survey the Land.
step
	>> Scout the forge camps while flying. This takes roughly 2 minutes, feel free to get up and stretch :D
	.complete 9991,1
	.turnin 9991 >> Turn in Survey the Land.
	.accept 9999 >> Accept Buying Time.
step
	.goto Nagrand,24.4,37.4,30,0
	.goto Nagrand,19.6,51.4
	>> Kill the demons around the forge camps. This is an elite quest, you may need help.
	.complete 9999,1
	.complete 9999,2
	.complete 9999,3
step
	.goto Nagrand,27.4,43.0
	.turnin 9999 >> Turn in Buying Time.
	.accept 10001 >> Accept The Master Planner.
step
	.goto Nagrand,23.6,34.8
	>> Kill Mo'arg Master Planner for the blueprints.
	.complete 10001,1
step
	.goto Nagrand,27.4,43.0
	.turnin 10001 >> Turn in The Master Planner.
	.accept 10004 >> Accept Patience and Understanding.
step
	.goto Shattrath City,77.2,34.8
	.skipgossip
	>> Head to Shattrath. Speak with Sal'salabim to fight him. << !Mage
	>> Teleport to Shattrath. Speak with Sal'salabim to fight him. << Mage
	.turnin 10004 >> Turn in Patience and Understanding.
	.accept 10009 >> Accept Crackin' Some Skulls.
step
	.goto Shattrath City,75.0,31.8
	.skipgossip
	>> Get the debt from Raliq the Drunk.
	.complete 10009,1
step
	.goto Shattrath City,61.2,49.6
	>> Find Ezekiel, go around the structure counter-clockwise.
	.unitscan Ezekiel
	.turnin 10228 >> Turn in Ezekiel.
	.accept 10231 >> Accept What Book? I Don't See Any Book.
step
	.goto Shattrath City,43.6,29.4
	.skipgossip
	>> Go beat down Dirty Larry. You may need to wait for him to respawn if he's not alive.
	* He is an elite, you may need help.
	.complete 10231,1
step
	.goto Shattrath City,43.6,29.4
	.turnin 10231 >> Turn in What Book? I Don't See Any Book.
step
	.goto Zangarmarsh,81.0,91.6
	.skipgossip
	>> Get the debt from Coosh'coosh.
	.complete 10009,2
step << Alliance
	.goto Shadowmoon Valley,39.4,53.6
	.turnin 11044 >> Turn in Visions of Destruction
	.accept 10562 >> Accept Besieged!
step << Alliance
	.requires quest,10515
   	 .goto Shadowmoon Valley,36.4,56.8
	.accept 10680 >> Accept The Hand of Gul'dan
step << Alliance
        .goto Shadowmoon Valley,38.8,54.2
        .accept 10569 >> Accept The Skethlon Wreckage
step << Alliance
	.goto Shadowmoon Valley,39.0,50.0
	>> Head north and kill Infernals, the ones around the keep don't always give credit
	.complete 10562,1 --Infernal Attacker (x1)
step << Alliance
	.goto Shadowmoon Valley,39.4,53.6
	.turnin 10562 >> Turn in Besieged!
	.accept 10563 >> Accept To Legion Hold
step << Alliance
	.goto Shadowmoon Valley,23.4,36.8
	.use 30638 >> Use the Box of Tricks to disguise yourself next to the communication device. This roleplay takes roughly a minute.
	.complete 10563,1 -- Discover Legion Plans (x1)
step << Alliance
	.goto Shadowmoon Valley,39.4,53.6
	.turnin 10563 >> Turn in To Legion Hold
	.accept 10572 >> Accept Setting Up the Bomb
step << Alliance
	.goto Shadowmoon Valley,26.2,41.1,40,-1
	.goto Shadowmoon Valley,22.2,35.4,40,-1
	>> Loot the Fel Reaver Power Core and Armor plate from the ground. The power core is underwater.
	.complete 10572,1 -- Fel Reaver Power Core (x1)
	.complete 10572,2 -- Fel Reaver Armor Plate (x1)
step << Alliance
	.goto Shadowmoon Valley,39.4,53.6
	.turnin 10572 >> Turn in Setting Up the Bomb
	.accept 10564 >> Accept Blast the Infernals!
step << Alliance
	.goto Shadowmoon Valley,22.6,39.9
	.use 30614 >> Use the bomb in the green circle. It pulses every 5 seconds if you don't see it right away.
	.complete 10564,1 -- Destroy Legion Hold Infernals (x1)
step << Alliance
	.goto Shadowmoon Valley,39.4,53.6
	.turnin 10564 >> Turn in Blast the Infernals
	.accept 10573 >> Accept The Deathforge
step << Alliance
	.goto Shadowmoon Valley,40.4,41.4
	.turnin 10573 >> Turn in The Deathforge
	.accept 10582 >> Accept Minions of the Shadow Council
step << Alliance
	.goto Shadowmoon Valley,40.0,39.0
	>> Head into the cave and kill Deathforge enemies in the area
	.complete 10582,1 --Deathforge Guardian (x10)
	.complete 10582,2 --Deathforge Summoner (x5)
step << Alliance
	.goto Shadowmoon Valley,40.4,41.4
	>> Head back to the tower
	.turnin 10582 >> Turn in Minions of the Shadow Council
	.accept 10583 >> Accept The Fate of Flanis
	.accept 10585 >> Accept The Summoning Chamber
step << Alliance
	#sticky
	#label elementald2
	.goto Shadowmoon Valley,40.0,39.0
	>> Kill Deathforge Smiths and Tinkerers. Loot them for an Elemental Displacer
	.collect 30672,1,10585,1
step << Alliance
	.goto Shadowmoon Valley,40.0,38.0,40,0
	.goto Shadowmoon Valley,34.0,39.0
	>> Head back into the caves below. Continue across the bridge then take a right past the Infernals. Talk to the corpse of Flanis
	.unitscan Flanis
	.skipgossip
	.collect 30658,1,10583,1
step << Alliance
	#requires elementald2
	.goto Shadowmoon Valley,37.0,38.0
	.use 30672 >> Head to the lower level then use the Elemental Displacer to disrupt the ritual where Summoner Skartax is
	.unitscan Summnoner Skartax
	.complete 10585,1 --End Infernal Summoning Ritual (x1)
step << Alliance
	.goto Shadowmoon Valley,40.4,41.4
	>> Head back to the tower
	.turnin 10583 >> Turn in The Fate of Flanis
	.turnin 10585 >> Turn in The Summoning Chamber
	.accept 10586 >> Accept Bring Down the Warbringer!
step << Alliance
	.goto Shadowmoon Valley,39.0,46.0,20,0
	.goto Shadowmoon Valley,37.4,42.6
	.use 30688 >> Head back into the upper level caves, cross the bridge then use the key to open the porticulus on the left hand side. Kill Warbringer Razuun at the back of the room and loot him for his orders.
	.unitscan Warbringer Razuun
	.complete 10586,1 --Warbringer Razuun slain (x1)
	.collect 30689,1,10586,1
step << Alliance
	.goto Shadowmoon Valley,39.4,53.6
	.turnin 10586 >> Turn in Bring Down the Warbringer!
	.accept 10589 >> Accept Gaining Access
step << Alliance
	.requires quest,10515
    .goto Shadowmoon Valley,42.2,45.0
	.turnin 10680 >> Turn in The Hand of Gul'dan
	.accept 10458 >> Accept Enraged Spirits of Fire and Earth
step << Alliance
    .goto Shadowmoon Valley,46.7,46.1
	.requires quest,10515
    .use 30094 >>Use the totem of spirits and kill fire/earth elementals next to the totem.
	*The range is around 25 yards for the totem to work.
    .complete 10458,1 --Earthen Soul Captured (x8)
    .complete 10458,2 --Fiery Soul Captured (x8)
step << Alliance
	.requires quest,10515
    .goto Shadowmoon Valley,42.1,45.1
    .turnin 10458 >> Turn in Enraged Spirits of Fire and Earth
    .accept 10480 >> Accept Enraged Spirits of Water
step << Alliance
	.requires quest,10515
    .goto Shadowmoon Valley,51.4,27.5
    .use 30094 >>Use the totem of spirits in your bags and kill water elementals next to the totem
	*The range is around 25 yards for the totem to work.
    .complete 10480,1 --Watery Soul Captured (x5)
step << Alliance
	.requires quest,10515
    .goto Shadowmoon Valley,42.2,45.1
    .turnin 10480 >> Turn in Enraged Spirits of Water
    .accept 10481 >> Accept Enraged Spirits of Air
step << Alliance
	.requires quest,10515
    .goto Shadowmoon Valley,60.8,66.6
    .use 30094 >>Use the totem of spirits in your bags and kill air elementals next to the totem. Some elementals can also spawn in the Netherwing Fields to the north.
	*The range is around 25 yards for the totem to work.
    .complete 10481,1 --Airy Soul Captured (x10)
step << Alliance
	.requires quest,10515
    .goto Shadowmoon Valley,42.3,45.0
    .turnin 10481 >> Turn in Enraged Spirits of Air
    .accept 10513 >> Accept Oronok Torn-heart
step << Alliance
	.goto Shadowmoon Valley,22.4,33.4
	>> Kill Mo'arg Weaponsmith and loot them for a Legion Teleporter Control
	.collect 30695,1,10589,1
step << Alliance
        .goto Shadowmoon Valley,37.4,30.4
        >> Kill Dark Conclave mobs in the area and loot them for their journal pages
        .complete 10569,1 --Sketh'lon Commander's Journal - Page 1 (x1)
        .complete 10569,2 --Sketh'lon Commander's Journal - Page 2 (x1)
        .complete 10569,3 --Sketh'lon Commander's Journal - Page 3 (x1)
step << Alliance
	.goto Shadowmoon Valley,39.4,53.6
	.turnin 10589 >> Turn in Gaining Access
	.accept 10766 >> Accept Invasion Point: Cataclysm
step << Alliance
        .goto Shadowmoon Valley,38.8,54.2
        .turnin 10569 >> Turn in The Skethlon Wreckage
        .accept 10759 >> Accept Find the Deserter
step << Alliance
        .goto Shadowmoon Valley,35.4,41.8
        .turnin 10759 >> Turn in Find the Deserter
        .accept 10777 >> Accept Asghar's Totem
step << Alliance
        .goto Shadowmoon Valley,40.0,30.8
        >> Find Asghar, kill and loot him for his totem
        .unitscan Asghar
        .complete 10777,1 --Sketh'lon War Totem (x1)
step << Alliance
	.goto Shadowmoon Valley,40.8,22.2
	.turnin 10766 >> Turn in Invasion Point: Cataclysm
	.accept 10606 >> Accept The Art of Fel Reaver Maintenance
step << Alliance
	.goto Shadowmoon Valley,28.4,20.4
	>> Kill Doctor Gutrick and loot him for the Doctor's Key.
	.unitscan Doctor Gutrick
	.collect 30712,1,10606,1
step << Alliance
	.goto Shadowmoon Valley,29.0,20.5
	.use 30712 >>Use the key to open the Doctor's Strongbox to retrieve The Art of Fel Reaver Maintenance
	.collect 30713,1,10606,1
step << Alliance
	.goto Shadowmoon Valley,40.8,22.2
	.turnin 10606 >> Turn in The Art of Fel Reaver Maintenance
	.accept 10612 >> Accept The Fel and the Furious
step << Alliance
	.goto Shadowmoon Valley,40.8,22.2
	>> Use a Fel Reaver Control Console to destroy 60 Deathforged Infernals
	.complete 10612,1 --Destroy Deathforged Infernals (x60)
step << Alliance
	.goto Shadowmoon Valley,40.8,22.2
	.turnin 10612 >> Turn in The Fel and the Furious
step << Horde
	.goto Shadowmoon Valley,30.4,32.4
	.accept 10595 >> Accept Besieged!
step << Horde
	.goto Shadowmoon Valley,29.8,27.8
	.accept 10624 >> Accept A Haunted History
step << Horde
        .goto Shadowmoon Valley,31,29.8
        .accept 10760 >> Accept The Sketh'lon Wreckage
step << Horde
	#sticky
	#completewith next
	>> Loot Ever-Burning Ash piles as you kill Infernal Attackers
	.complete 10624,1 --Ever-Burning Ash (x15)
step << Horde
	.goto Shadowmoon Valley,32.0,32.0,80,0
	.goto Shadowmoon Valley,30.7,36.2,60,0
	.goto Shadowmoon Valley,32.0,32.0
	>> Kill Infernal Attackers
	.complete 10595,1 --Infernal Attackers slain (x10)
step << Horde
	.goto Shadowmoon Valley,32.2,38.1,60,0
	>> Finish looting Ever-Burning Ash Piles
	.complete 10624,1 --Ever-Burning Ash (x15)
step << Horde
        .goto Shadowmoon Valley,37.4,30.4
        >> Kill Dark Conclave mobs in the area and loot them for their journal pages
        .complete 10760,1 --Sketh'lon Commander's Journal - Page 1 (x1)
        .complete 10760,2 --Sketh'lon Commander's Journal - Page 2 (x1)
        .complete 10760,3 --Sketh'lon Commander's Journal - Page 3 (x1)
step << Horde
	.goto Shadowmoon Valley,29.8,27.8
	.turnin 10624 >> Turn in A Haunted History
	.accept 10625 >> Accept Spectrcles
step << Horde
	.goto Shadowmoon Valley,29.8,27.8
	.use 30719 >> Equip the goggles and kill spirits around the town
	.complete 10625,1 --Shadowmoon Zealot slain (x12)
step << Horde
	.goto Shadowmoon Valley,29.8,27.8
	>> Make sure to re-equip your normal helmet
	.turnin 10625 >> Turn in Spectercles
step << Horde
        .goto Shadowmoon Valley,31.0,29.8
        .turnin 10760 >> Turn in The Sketh'lon Wreckage
        .accept 10761 >> Accept Find the Deserter
step << Horde
	.goto Shadowmoon Valley,30.4,32.4
	.turnin 10595 >> Turn in Besieged!
	.accept 10596 >> Accept To Legion Hold
step << Horde
	.goto Shadowmoon Valley,23.4,36.8
	.use 30638 >> Use the Box of Tricks to disguise yourself next to the communication device. This roleplay takes roughly a minute.
	.complete 10596,1 -- Discover Legion Plans (x1)
step << Horde
	.goto Shadowmoon Valley,30.4,32.4
	.turnin 10596 >> Turn in To Legion Hold
	.accept 10597 >> Setting Up the Bomb
step << Horde
	.goto Shadowmoon Valley,26.2,41.1,20,-1
	.goto Shadowmoon Valley,22.2,35.4,20,-1
	>> Loot the Fel Reaver Power Core and Armor plate. The power core is underwater.
	.complete 10597,1 -- Fel Reaver Power Core (x1)
	.complete 10597,2 -- Fel Reaver Armor Plate (x1)
step << Horde
	.goto Shadowmoon Valley,30.4,32.4
	.turnin 10597 >> Turn in Setting Up the Bomb
	.accept 10598 >> Accept Blast the Infernals!
step << Horde
	.goto Shadowmoon Valley,22.6,39.9
	.use 30614 >> Use the fel bomb in the green circle. It pulses every 5 seconds if you don't see it right away.
	.complete 10598,1 -- Destroy Legion Hold Infernals (x1)
step << Horde
	.goto Shadowmoon Valley,30.4,32.4
	.turnin 10598 >> Turn in Blast the Infernals!
	.accept 10599 >> Accept The Deathforge
step << Horde
	.goto Shadowmoon Valley,38.6,38.2
	>> Head to the roof
	.turnin 10599 >> Turn in The Deathforge
	.accept 10600 >> Accept Minions of the Shadow Council
step << Horde
	.goto Shadowmoon Valley,40.0,39.0
	>> Head into the cave and kill Deathforge enemies in the area
	.complete 10600,1 --Deathforge Guardian (x10)
	.complete 10600,2 --Deathforge Summoner (x5)
step << Horde
	.goto Shadowmoon Valley,38.6,38.2
	.turnin 10600 >> Turn in Minions of the Shadow Council
	.accept 10601 >> Accept The Fate of Kagrosh
	.accept 10602 >> Accept The Summoning Circle
step << Horde
	#sticky
	#label elementald
	.goto Shadowmoon Valley,40.0,39.0
	>> Kill Deathforge Smiths and Tinkerers. Loot them for an Elemental Displacer
	.collect 30672,1,10602,1
step << Horde
	.goto Shadowmoon Valley,40.0,39.0,40,0
	.goto Shadowmoon Valley,35.2,40.1
	.unitscan Kagrosh
	.skipgossip
	>> Head back into the caves below. Continue across the bridge then take a right past the Infernals. Talk to the orc body and take his pack
	.collect 30659,1,10601,1
step << Horde
	#requires elementald
	.goto Shadowmoon Valley,37.0,38.0
	.use 30672 >> Head to the lower level then use the Elemental Displacer to disrupt the ritual where Summoner Skartax is
	.unitscan Summnoner Skartax
	.complete 10602,1 --End Infernal Summoning Ritual (x1)
step << Horde
	.goto Shadowmoon Valley,38.6,38.2
	>> Head back outside to the tower roof
	.turnin 10601 >> Turn in The Fate of Kagrosh
	.turnin 10602 >> Turn in The Summoning Circle
	.accept 10603 >> Accept Bring Down the Warbringer!
step << Horde
	.goto Shadowmoon Valley,40.0,39.0,40,0
	.goto Shadowmoon Valley,38.9,46.7
	.use 30688 >> Head back into the caves where you killed Smiths and Tinkerers. Use the key to open the porticulus on the left side of the room, then kill Warbringer Razuun and loot him for his orders.
	.unitscan Warbringer Razuun
	.complete 10603,1 --Warbringer Razuun slain (x1)
	.collect 30689,1,10603,1
step << Horde
	>> Head back to the tower
	.goto Shadowmoon Valley,30.4,32.4
	.turnin 10603 >> Turn in Bring Down the Warbringer
	.accept 10604 >> Accept Gaining Access
step << Horde
        .goto Shadowmoon Valley,35.4,41.8
        .turnin 10761 >> Turn in Find the Deserter
	.unitscan Parshah
        .accept 10777 >> Accept Asghar's Totem
step << Horde
        .goto Shadowmoon Valley,40.0,30.8
        >> Find Asghar, kill and loot him for his totem
        .unitscan Asghar
        .complete 10777,1 --Sketh'lon War Totem (x1)
step << Horde
	.requires quest,10515
    .goto Shadowmoon Valley,28.4,26.6
	.accept 10681 >> Accept The Hand of Gul'dan
step << Horde
	.requires quest,10515
    .goto Shadowmoon Valley,42.2,45.0
	.turnin 10681 >> Turn in The Hand of Gul'dan
    .accept 10458 >> Accept Enraged Spirits of Fire and Earth
step << Horde
    .goto Shadowmoon Valley,46.7,46.1
	.requires quest,10515
    .use 30094 >>Use the totem of spirits and kill fire/earth elementals next to the totem.
	*The range is around 25 yards for the totem to work.
    .complete 10458,1 --Earthen Soul Captured (x8)
    .complete 10458,2 --Fiery Soul Captured (x8)
step << Horde
	.requires quest,10515
    .goto Shadowmoon Valley,42.1,45.1
    .turnin 10458 >> Turn in Enraged Spirits of Fire and Earth
    .accept 10480 >> Accept Enraged Spirits of Water
step << Horde
	.requires quest,10515
    .goto Shadowmoon Valley,51.4,27.5
    .use 30094 >>Use the totem of spirits in your bags and kill water elementals next to the totem
	*The range is around 25 yards for the totem to work.
    .complete 10480,1 --Watery Soul Captured (x5)
step << Horde
	.requires quest,10515
    .goto Shadowmoon Valley,42.2,45.1
    .turnin 10480 >> Turn in Enraged Spirits of Water
    .accept 10481 >> Accept Enraged Spirits of Air
step << Horde
	.requires quest,10515
    .goto Shadowmoon Valley,60.8,66.6
    .use 30094 >>Use the totem of spirits in your bags and kill air elementals next to the totem. Some elementals can also spawn in the Netherwing Fields to the north.
	*The range is around 25 yards for the totem to work.
    .complete 10481,1 --Airy Soul Captured (x10)
step << Horde
	.requires quest,10515
    .goto Shadowmoon Valley,42.3,45.0
    .turnin 10481 >> Turn in Enraged Spirits of Air
    .accept 10513 >> Accept Oronok Torn-heart
step << Horde
	.goto Shadowmoon Valley,22.4,33.4
	>> Kill Mo'arg Weaponsmith and loot them for a Legion Teleporter Control
	.collect 30695,1,10604,1
step << Horde
	.goto Shadowmoon Valley,30.4,32.4
	.turnin 10604 >> Turn in Gaining Access
	.accept 10767 >> Accept Invasion Point: Cataclysm
step << Horde
	.goto Shadowmoon Valley,27.4,21.2
	.turnin 10767 >> Turn in Invasion Point: Cataclysm
	.accept 10611 >> Accept The Art of Fel Reaver Maintenance
step << Horde
	.goto Shadowmoon Valley,28.9,20.6
	>> Kill Doctor Maleficus and loot him for the Doctor's Key.
	.unitscan Doctor Maleficus
	.collect 30712,1,10611,1
step << Horde
	.goto Shadowmoon Valley,38.9,20.5
	.use 30712 >>Use the key to open the Doctor's Strongbox to retrieve The Art of Fel Reaver Maintenance
	.collect 30713,1,10611,1
step << Horde
	.goto Shadowmoon Valley,27.4,21.2
	.turnin 10611 >> Turn in The Art of Fel Reaver Maintenance
	.accept 10613 >> Accept The Fel and the Furious
step << Horde
	.goto Shadowmoon Valley,27.8,19.8
	>> Use a Fel Reaver Control Console to destroy 60 Deathforged Infernals
	* Using the first Fel Reaver ability destroys the Infernals, the rest of the buttons are rather irrelevant.
	.complete 10613,1 --Destroy Deathforged Infernals (x60)
step << Horde
	.goto Shadowmoon Valley,27.4,21.2
	.turnin 10613 >> Turn in The Fel and the Furious
step

    .goto Shadowmoon Valley,54.0,23.6
    .turnin 10513 >> Turn in Oronok Torn-heart
    .accept 10514 >> Accept I Was A Lot Of Things...
step

    .goto Shadowmoon Valley,54.0,16.0
    .use 30462 >>Stand on top of the small plants on the ground and use the boar whistle to have a nearby boar dig out the tubers. Click it afterwards.
	* You may need to kill Flayers in the area, so they stop killing the boars near tubers.
    .complete 10514,1 --Collect Shadowmoon Tuber (x10)
step
    .goto Shadowmoon Valley,53.9,23.5
    .turnin 10514 >> Turn in I Was A Lot Of Things...
    .accept 10515 >> Accept A Lesson Learned
step
    .goto Shadowmoon Valley,56.6,17.0
    >>Destroy eggs around this area, be careful with the big elite mob patrolling the area
    .complete 10515,1 --Collect Ravenous Flayer Egg Destroyed (x10)
step
    .goto Shadowmoon Valley,53.9,23.4
    .turnin 10515 >> Turn in A Lesson Learned
    .accept 10519 >> Accept The Cipher of Damnation - Truth and History
	>> Speak with Oronok
	.skipgossip
    .complete 10519,1 --The Cipher of Damnation - History and Truth
step
    .goto Shadowmoon Valley,53.9,23.4
    .turnin 10519 >> Turn in The Cipher of Damnation - Truth and History
    .accept 10521 >> Accept Grom'tor, Son of Oronok
    .accept 10527 >> Accept Ar'tor, Son of Oronok
    .accept 10546 >> Accept Borak, Son of Oronok
step
    .goto Shadowmoon Valley,44.6,23.7
    .turnin 10521 >> Turn in Grom'tor, Son of Oronok
    .accept 10522 >> Accept The Cipher of Damnation - Grom'tor's Charge
step
    .goto Shadowmoon Valley,46.0,28.2
    >>Kill Nagas to get Chest Keys, open the chests until you loot the fragment
    .complete 10522,1 --Collect First Fragment of the Cipher of Damnation (x1)
step
    .goto Shadowmoon Valley,44.6,23.7
    .turnin 10522 >> Turn in The Cipher of Damnation - Grom'tor's Charge
step
        .goto Shadowmoon Valley,35.4,41.8
        .turnin 10777 >> Turn in Asghar's Totem
        .accept 10778 >> Accept The Rod of Lianthe
step
    .goto Shadowmoon Valley,47.5,57.3
    .turnin 10546 >> Turn in Borak, Son of Oronok
    .accept 10547 >> Accept Of Thistleheads and Eggs...
step
    .goto Shadowmoon Valley,45.1,57.4
    >>Look for rotten eggs on the ground, be careful because they can damage you upon looting
    .complete 10547,1 --Collect Rotten Arakkoa Egg (x1)
step
    .goto Shattrath City,64.1,69.8
	>> Head to Shattrath. Hearth if it's up and set to Shattrath.
    .turnin 10547 >> Turn in Of Thistleheads and Eggs...
    .accept 10550 >> Accept The Bundle of Bloodthistle
step
	.isOnQuest 10009
	.goto Terokkar Forest,27.2,57.8
	.skipgossip
	>> Get the debt from Floon.
	.complete 10009,3
step
	>> Head back to Shadowmoon Valley
    .goto Shadowmoon Valley,29.6,50.3
    .turnin 10527 >> Turn in Ar'tor, Son of Oronok
    .accept 10528 >> Accept Demonic Crystal Prisons
step
    .goto Shadowmoon Valley,28.0,47.7
    >>Slay Painmistress Gabrissa
    .complete 10528,1 --Collect Crystalline Key (x1)
step
    .goto Shadowmoon Valley,29.6,50.5
    .turnin 10528 >> Turn in Demonic Crystal Prisons
	>> Wait for Ar'tor to die then talk to his spirit
    .accept 10537 >> Accept Lohn'goron, Bow of the Torn-heart
step
    .goto Shadowmoon Valley,30.5,50.0
    >>Kill and loot Illidari mobs around the quest giver.
	* The drop rate is very low, just keep killing
    .complete 10537,1 --Collect Lohn'goron, Bow of the Torn-heart (x1)
step
    .goto Shadowmoon Valley,29.5,50.5
    .turnin 10537 >> Turn in Lohn'goron, Bow of the Torn-heart
    .accept 10540 >> Accept The Cipher of Damnation - Ar'tor's Charge
step
    .goto Shadowmoon Valley,29.5,57.5
    >>Head southeast while Ar'tor's spirit is following you, walk around this area until Ar'tor summons Veneratus the Many
    .complete 10540,1 --Collect Second Fragment of the Cipher of Damnation (x1)
    >>Be ready for a long fight, Veneratus has 3 times more health than a normal mob
step
    .goto Shadowmoon Valley,29.5,50.6
    .turnin 10540 >> Turn in The Cipher of Damnation - Ar'tor's Charge
step
    .goto Shadowmoon Valley,47.5,57.2
    .turnin 10550 >> Turn in The Bundle of Bloodthistle
    .accept 10570 >> Accept To Catch A Thistlehead
step
    .goto Shadowmoon Valley,48.9,57.4
    >>Plant the bundle of Bloodthistle at the end of the bridge. Head back to the other side, then go attakc once Borak whispers to you.
    .complete 10570,1 --Collect Stormrage Missive (x1)
step
    .goto Shadowmoon Valley,47.6,57.2
    .turnin 10570 >> Turn in To Catch A Thistlehead
    .accept 10576 >> Accept The Shadowmoon Shuffle
step
	#sticky
	#label liantherod
        .goto Shadowmoon Valley,47.2,67.0
        >> Kill Eclipsion mobs in the area until they drop Lianthe's Key
        .complete 10778,1 --Lianthe's Ley (x1)
step
    .goto Shadowmoon Valley,49.6,62.2
	>> Kill and loot Eclipsion mobs in the area
    .complete 10576,1 --Collect Eclipsion Armor (x6)
step
	#requires liantherod
        .goto Shadowmoon Valley,47.5,71.7
        >> Use the key on Lianthe's Strongbox and loot the Rod of Lianthe
        .complete 10778,2 --Rod of Lianthe (x1)
step
        .goto Shadowmoon Valley,35.4,41.8
	>> The turn in can patrol up the road from here
        .turnin 10778 >> Turn in Rod of Lianthe
        .accept 10780 >> Accept Sketh'lon Feathers
step
        .goto Shadowmoon Valley,43.7,57.5
        >> Loot feathers on the ground
        .complete 10780,1 --Gather Sketh'lon Feathers (x8)
step
    .goto Shadowmoon Valley,47.6,57.2
    .turnin 10576 >> Turn in The Shadowmoon Shuffle
    .accept 10577 >> Accept What Illidan Wants, Illidan Gets...
step
    .goto Shadowmoon Valley,46.5,71.9
	.skipgossip
    >>Use the disguise provided and talk to the blood elf guarded by 2 orcs
    .complete 10577,1 --Illidan's Message Delivered
step
    .goto Shadowmoon Valley,47.5,57.2
    .turnin 10577 >> Turn in What Illidan Wants, Illidan Gets...
    .accept 10578 >> Accept The Cipher of Damnation - Borak's Charge
step
    .goto Shadowmoon Valley,62.6,57.2
	>> Kill and loot Ruul the Darkener
	* You will need to group for this quest, he is very difficult.
	.unitscan Ruul the Darkener
	.complete 10578,1 --Ruul the Darkener
step
    .goto Shadowmoon Valley,47.5,57.2
    .turnin 10578 >> Turn in The Cipher of Damnation - Borak's Charge
step
        .goto Shadowmoon Valley,35.4,41.8
        .turnin 10780 >> Turn in Sketh'lon Feathers
step
	>> Head back to Shattrath. << !Mage
	>> Teleport back to Shattrath << Mage
	.goto Shattrath City,77.2,34.8
	.turnin 10009 >> Turn in Crackin' Some Skulls.
-- its possible they may not have picked an allegiance yet
step
	.goto Shattrath City,59.7,41.5
	.accept 10210 >> Accept A'dal
step
	.goto Shattrath City,54.5,44.9
	.turnin 10210 >> Turn in A'dal
step
	.goto Shattrath City,54.5,44.9
	>> Speak with Khadgar
	.accept 10211 >> Accept City of Light
step
	.goto Shattrath City,48.1,42.0
	>> Head to the second floor tunnel near G'eras and wait. If someone elses Servant arrives in the meantime, you can target it and it will complete the quest for you. Otherwise it will take 8 minutes and 30 seconds for your own servant to arrive. Take a stretch break!
	.complete 10211,1 --Shown around the City of Light
step
	.goto Shattrath City,54.5,44.9
	.turnin 10211 >> Turn in City of Light
step
 	#label choice
  	#completewith aldorOrScryer
	.goto Shattrath City,54.5,44.1
  	+ Choose an Allegiance to the Aldor or Scryer. They both give the same amount of prep exp for Wrath, so choose whichever you prefer. Manually skip this step once you have chosen.
	* If you do not see aldor or scryer specific quest steps after this, type "/reload" into your ingame chat box
step
 	#scryer
  	#label aldorOrScryer
	.goto Shattrath City,54.5,44.1
  	.turnin 10552 >> Turn in Allegiance to the Scryer
step
 	 #aldor
 	 #label aldorOrScryer
	.goto Shattrath City,54.5,44.1
  	.turnin 10551 >> Turn in Allegiance to the Aldor
step
	#sticky
	#requires choice
	#completewith notofftoarea52
	>> Head to Netherstorm
	* 5 other quests count as the same pre-requisite as Off to Area 52, if it's not here for you, it means you did a different pre-requisite, you can skip this step.
	.goto Netherstorm,20.6,55.7
	.accept 10183 >> Accept Off to Area 52
step
	#label notofftoarea52
	.goto Netherstorm,32.7,64.9
	.turnin 10183 >> Turn in Off to Area 52
	.accept 10186 >> Accept You're Hired!
step
	.goto Netherstorm,32.4,64.2
	.accept 10265 >> Accept Consortium Crystal Collection.
step
    #aldor
    .goto Netherstorm,32.1,64.3
    .accept 10241 >> Accept Distraction at Manaforge B'naar
step
	#scryer
	.goto Netherstorm,32.0,64.0
	.accept 10189 >> Accept Manaforge B'naar.
step
	.goto Netherstorm,31.4,66.2
	.accept 10173 >> Accept The Archmage's Staff.
step
    #aldor
    .goto Netherstorm,26.6,68.4
	>> Slay Sunfury enemies in the area
    .complete 10241,1 --Kill Sunfury Magister (x8)
    .complete 10241,2 --Kill Sunfury Bloodwarder (x8)

step
	#scryer
	.goto Netherstorm,28.0,65.6
	>> Kill Captain Arathyn and loot him for the quest item.
	.complete 10189,1
step
	#scryer
	.goto Netherstorm,32.0,64.0
	.turnin 10189 >> Turn in Manaforge B'naar.
	.accept 10193 >> Accept High Value Targets.
step
	#scryer
	.goto Netherstorm,25.4,71.8,100,0
	.goto Netherstorm,22.0,72.7,40,0
	.goto Netherstorm,25.4,71.8
	>> Kill Sunfury enemies in the area.
	.complete 10193,1
	.complete 10193,2
	.complete 10193,3
step
	#scryer
	.goto Netherstorm,32.0,64.0
	.turnin 10193 >> Turn in High Value Targets.
	.accept 10329 >> Accept Shutting Down Manaforge B'naar.
step
    #aldor
    .goto Netherstorm,32.1,64.3
    .turnin 10241 >> Turn in Distraction at Manaforge B'naar
    .accept 10313 >> Accept Measuring Warp Energies
    .accept 10243 >> Accept Naaru Technology

step
	#scryer
	.goto Netherstorm,23.8,70.6
	>> Kill and loot Overseer Theredis inside the Mana Forge for the B'naar Access Crystal
	.collect 29366,1,10329,1
step
	#scryer
	.goto Netherstorm,23.2,68.1
	>> Click on the console and defend it from technicians that spawn. This takes 2 minutes.
	.skipgossip
	.complete 10329,1
step
	#scryer
	.goto Netherstorm,32.0,64.0
	.turnin 10329 >> Turn in Shutting Down Manaforge B'naar.
	.accept 10194 >> Accept Stealth Flight.
step
	#scryer
	.goto Netherstorm,33.8,64.2
	.turnin 10194 >> Turn in Stealth Flight.
	.accept 10652 >> Accept Behind Enemy Lines
step
    #aldor
    .goto Netherstorm,25.4,60.3
    >>Use the Warp-Attuned Orb in your bags while next to the pipe
    .complete 10313,1 --Northern Pipeline Measured
step
    #aldor
    .goto Netherstorm,20.7,67.5
    >>Stand on top of the scaffolding and use the Orb
    .complete 10313,4 --Western Pipeline Measured
step
	#aldor
    .goto Netherstorm,20.3,70.9
	>> Use the orb while standing next to this pipe
    .complete 10313,3 --Southern Pipeline Measured
step
    #aldor
    .goto Netherstorm,23.2,68.1
	>> Head inside the building then click on the pillar
    .turnin 10243 >> Turn in Naaru Technology
    .accept 10245 >> Accept B'naar Console Transcription
step
    #aldor
    .goto Netherstorm,29.1,72.8
	>>Use the Warp-Attuned Orb in your bags while next to the pipe
    .complete 10313,2 --Eastern Pipeline Measured
step
    #aldor
    .goto Netherstorm,32.1,64.2
    .turnin 10245 >> Turn in B'naar Console Transcription
    .accept 10299 >> Accept Shutting Down Manaforge B'naar
    .turnin 10313 >> Turn in Measuring Warp Energies
step
    #aldor
    .goto Netherstorm,23.7,70.1
    >> Head back inside the building. Kill and loot the Overseer
    .complete 10299,2 --Collect B'naar Access Crystal (x1)
step
    #aldor
    .goto Netherstorm,23.2,68.1
	.skipgossip
    >>Click on the pylon to start the shutdown timer, kill any mobs trying to stop it. This takes 2 minutes.
    .complete 10299,1 --Manaforge B'naar Shut Down
step
    #aldor
    .goto Netherstorm,32.1,64.2
    .turnin 10299 >> Turn in Shutting Down Manaforge B'naar
    .accept 10321 >> Accept Shutting Down Manaforge Coruu
    .accept 10246 >> Accept Attack on Manaforge Coruu
step
	.goto Netherstorm,42.6,72.6
	>> Kill and loot Pentatharon for the Crystal.
	.complete 10265,1
step
	.goto Netherstorm,40.8,72.6
	.use 29207
	>> Use Conjuring Powder while standing next to the brazier to summon Ekkorash and slay her.
	.complete 10173,1
step
	.goto Netherstorm,32.4,64.2
	.turnin 10265 >> Turn in Consortium Crystal Collection.
	.accept 10262 >> Accept A Heap of Ethereals.
step
	.goto Netherstorm,31.4,66.2
	.turnin 10173 >> Turn in The Archmage's Staff.
	.accept 10300 >> Accept Rebuilding the Staff.
step
	.goto Netherstorm,29.3,78.1
	>> Kill Zaxxis mobs in the area and loot them for insignias
	.collect 29029,10,10262,1
step
	.goto Netherstorm,32.4,64.2
	.turnin 10262 >> Turn in A Heap of Ethereals
	.accept 10205 >> Accept Warp-Raider Nesaad
step
	.goto Netherstorm,28.3,79.9
	>> Kill Warp-Raider Nesaad
	.unitscan Warp-Raider Nesaad
	.complete 10205,1
step
	.goto Netherstorm,32.4,64.2
	.turnin 10205 >> Turn in Warp-Raider Nesaad
	.accept 10266 >> Accept Request for Assistance
step
	#sticky
	#label crystalmatrixs
	.goto Netherstorm,33.1,54.4
	>> Loot the red crystals on the ground in the area
	* You can use your racial Find Treasure to track them on the minimap << Dwarf
	.complete 10186,1 --Collect Etherlithium Matrix Crystal (x10)
step
	.goto Netherstorm,33.6,54.6
	>> Kill and loot Disembodied Protectors and Vindicators for Crystals.
	.complete 10300,1
step
	#requires crystalmatrixs
	.goto Netherstorm,32.7,64.9
	.turnin 10186 >> Turn in You're Hired!
step
	.goto Netherstorm,31.4,66.2
	.turnin 10300 >> Turn in Rebuilding the Staff.
	.accept 10174 >> Accept Curse of the Violet Tower.
	.use 28455 >> Use the staff to summon the quest turn in
	.turnin 10174 >> Turn in Curse of the Violet Tower to Archmage Vargoth after using the staff.
step
	#scryer
	.goto Netherstorm,48.2,86.6
	.turnin 10652 >> Turn in Behind Enemy Lines.
	.accept 10197 >> Accept A Convincing Disguise.
step
	#scryer
	.goto Netherstorm,49.0,81.6
	>> Kill and loot mobs in the area. Gather parts for your disguise.
	* Researchers are inside, Guardsmen are found on the eastern side. Arcanists are on the west side.
	.complete 10197,1
	.complete 10197,2
	.complete 10197,3
step
	#scryer
	.goto Netherstorm,48.2,86.6
	.turnin 10197 >> Turn in A Convincing Disguise.
	.accept 10198 >> Accept Information Gathering.
step
	#scryer
	>> Use your disguise and head into Manaforge Coruu, find Commander Dawnforge and stand next to him to get credit for the quest.
	* You may need to wait for the Arcane Annihilator to patrol away from the door
	.use 28607
	.goto Netherstorm,48.2,84.0
	.complete 10198,1
step
	#scryer
	.goto Netherstorm,48.2,86.6
	.turnin 10198 >> Turn in Information Gathering.
	.accept 10330 >> Accept Shutting Down Manaforge Coruu.
step
	#scryer
	.goto Netherstorm,49.0,81.6
	>> Click off your disguisee then kill Overseer Seylanna for her Access Crystal and use it on the console.
	.complete 10330,1
step
	#scryer
	.goto Netherstorm,48.2,86.6
	.turnin 10330 >> Turn in Shutting Down Manaforge Coruu.
step
    #aldor
	#sticky
	#label researcherkills
    .goto Netherstorm,48.7,82.2
	>> Kill Researchers around the room
    .complete 10246,1 --Kill Sunfury Researcher (x5)
step
    #aldor
    .goto Netherstorm,49.0,81.5
    >>Kill the Overseer right next to the console
    .complete 10321,2 --Collect Coruu Access Crystal (x1)
step
	#aldor
	.goto Netherstorm,49.0,81.5
	.skipgossip
    >>Click on the pylon to start the shutdown timer, kill any mobs trying to stop it. Grind Centurions in the area between mobs.
	* Kill Researchers in the area while waiting.
    .complete 10321,1 --Manaforge Coruu Shut Down
step
    #aldor
	#requires researcherkills
    .goto Netherstorm,49.6,80.6
	>> Head outside and kill Arcanists
    .complete 10246,2 --Kill Sunfury Arcanist (x8)
step
	.goto Netherstorm,57.4,86.2
	.accept 10184 >> Accept Malevolent Remnants.
step
	.goto Netherstorm,59.4,87.4
	>> Kill spirits around Kirin'Var.
	.complete 10184,1
step
	.goto Netherstorm,57.4,86.2
	.turnin 10184 >> Turn in Malevolent Remnants.
	.accept 10312 >> Accept The Annals of Kirin'Var.
step
	.goto Netherstorm,60.6,87.6
	>> Kill Battle-Mage Dathric and collect the tome. Do NOT turn in his blade. We will use it in the 70-71 turn in route.
	.complete 10312,1
step
	.goto Netherstorm,57.4,86.2
	.turnin 10312 >> Turn in The Annals of Kirin'Var.
step
    #aldor
    .goto Netherstorm,32.1,64.3
    .turnin 10321 >> Turn in Shutting Down Manaforge Coruu
    .turnin 10246 >> Turn in Attack on Manaforge Coruu
    .accept 10322 >> Accept Shutting Down Manaforge Duro
    .accept 10328 >> Accept Sunfury Briefings
step
	#scryer
	.goto Netherstorm,32.0,64.0
	.accept 10341 >> Accept Kick Them While They're Down.
step
	#scryer
	.goto Netherstorm,59.0,66.8
	>> Kill Sunfury enemies. Centurions are typically found at entrances to the mana forge.
	.complete 10341,1
	.complete 10341,2
	.complete 10341,3
step
	#scryer
	.goto Netherstorm,32.0,64.0
	.turnin 10341 >> Turn in Kick Them While They're Down.
	.accept 10202 >> Accept A Defector.
step
	#scryer
	.goto Netherstorm,26.2,41.6
	.turnin 10202 >> Turn in A Defector.
	.accept 10432 >> Accept Damning Evidence.
step
	#scryer
	.goto Netherstorm,26.4,44.0
	>> Head into the caves below the mana forge. Kill and loot demons for the orders.
	.complete 10432,1,10432,1
step
    #aldor
	#sticky
	#label militarymanaforge
    .goto Netherstorm,58.5,63.6
    >>Kill and loot Sunfury Centurions inside Manaforge Duro
    .complete 10328,1 --Collect Sunfury Military Briefing (x1)
step
    #aldor
    .goto Netherstorm,60.0,68.5
    >>Kill and loot Overseer Athanel inside the southern wing of the mana forge
    .complete 10322,2 --Collect Duro Access Crystal (x1)
step
    #aldor
    .goto Netherstorm,59.1,66.6
	.skipgossip
	>> Talk to the Pylon and start the shut down. Kill any mobs that try to stop you.
    .complete 10322,1 --Manaforge Duro Shut Down
step
	#aldor
	#requires militarymanaforge
	 .goto Netherstorm,57.2,64.2
	>> Kill and loot Sunfury Conjurers around the mana forge
	.complete 10328,2 --Collect Sunfury Arcane Briefing (x1)
step
    #aldor
    .goto Netherstorm,32.0,64.2
    .turnin 10328 >> Turn in Sunfury Briefings
    .accept 10431 >> Accept Outside Assistance
    .turnin 10322 >> Turn in Shutting Down Manaforge Duro
    .accept 10323 >> Accept Shutting Down Manaforge Ara
step
    #aldor
    .goto Netherstorm,34.8,38.2
    .turnin 10431 >> Turn in Outside Assistance
    .accept 10380 >> Accept A Dark Pact
step
	#aldor
	.goto Netherstorm,26.4,43.5
	>> Kill Gan'arg and Mo'arg demons in the cave
	.complete 10380,1 --Slay Gan'arg Warp-Tinker (x8)
	.complete 10380,3 --Slay Mo'arg Warp-Master (x3)
step
	#aldor
	.goto Netherstorm,26.4,43.5,40,0
	.goto Netherstorm,28.5,39.9
	>> Leave the cave and fly around Manaforge Ara looking for Daughter of Destiny
	* The demons don't social aggro with the blood elves if you ranged pull them.
	.unitscan Daughter of Destiny
	.complete 10380,2 --Slay Daughter of Destiny (x3)
step
    #aldor
    .goto Netherstorm,34.8,38.3
    .turnin 10380 >> Turn in A Dark Pact
    .accept 10381 >> Accept Aldor No More
step
    #aldor
    .goto Netherstorm,26.0,38.7
	>> Kill Overseer Azarad. Loot him for the Access Crystal. Then talk to the pylon and protect it like the previous times.
	*This quest can be very overwhelming compared to the previous ones, be ready and you may need help. Clear a safe space in the room beforehand.
	.skipgossip
    .complete 10323,2 --Collect Ara Access Crystal (x1)
    .complete 10323,1 --Manaforge Ara Shut Down
step
    #aldor
    .goto Netherstorm,32.0,64.2
    .turnin 10381 >> Turn in Aldor No More
    .accept 10407 >> Accept Socrethar's Shadow
   .turnin 10323 >> Turn in Shutting Down Manaforge Ara
step
    #aldor
    .goto Netherstorm,36.2,26.4
	>> Kill and loot Forgemaster Morug. He is elite, you may need help.
	.unitscan Forgemaster Morug
    .complete 10407,1 --Collect First Half of Socrethar's Stone (x1)
step
    #aldor
    .goto Netherstorm,40.8,19.5
	>> Kill and loot Silroth, he is elite, you may need help.
	.unitscan Silroth
    .complete 10407,2 --Collect Second Half of Socrethar's Stone (x1)
step
	#scryer
	.goto Netherstorm,32.0,64.0
	.turnin 10432 >> Turn in Damning Evidence.
	.accept 10508 >> Accept A Gift for Voren'thal.
step
	#scryer
	>> Get both halfs of Socrethar's Stone from Morug and Silroth.
	.goto Netherstorm,36.8,27.6,10,0
	.goto Netherstorm,40.8,19.4
	.complete 10508,1
	.complete 10508,2
step
    #aldor
    .goto Netherstorm,32.1,64.3
    .turnin 10407 >> Turn in Socrethar's Shadow
step
	#aldor
	.goto Netherstorm,32.0,64.2
	.accept 10263 >> Accept Assisting the Consortium.
step
	#scryer
	.goto Netherstorm,32.0,64.2
	.accept 10264 >> Accept Assisting the Consortium.
step
	#aldor
	.goto Netherstorm,32.4,64.2
	.turnin 10263 >> Turn in Assisting the Consortium.
step
	#scryer
	.goto Netherstorm,32.4,64.2
	.turnin 10264 >> Turn in Assisting the Consortium.

step
	.goto Netherstorm,33.0,64.6
	.accept 10206 >> Accept Pick your Part
step
	.goto Netherstorm,28.9,77.6
	>> Loot Ethereal Technology in the area, its in little boxes
	.complete 10206,1 --Collect Ethereal Technology (x10)
step
	.goto Netherstorm,33.0,64.6
	.turnin 10206 >> Turn in Pick your Part
	.accept 10333 >> Accept Help Mama Wheeler.
step
	.goto Netherstorm,46.4,56.4
	.accept 10417 >> Accept Run a Diagnostic!
	.accept 10433 >> Accept Keeping Up Appearances.
step
	.goto Netherstorm,48.2,55.0
	>> Collect Diagnostic Results by clicking on the pillar
	.complete 10417,1
step
	.goto Netherstorm,46.4,56.4
	.turnin 10417 >> Turn in Run a Diagnostic!
	.accept 10418 >> Accept Deal With the Saboteurs.
step
	.goto Netherstorm,46.6,57.0
	.turnin 10266 >> Turn in Request for Assistance
	.accept 10267 >> Accept Rightful Repossession
step
	.goto Netherstorm,56.9,63.8
	>> Collect research equipment around the Manaforge. They look like tiny gray colored crates.
	.complete 10267,1
step
	.goto Netherstorm,46.6,57.0
	.turnin 10267 >> Turn in Rightful Repossession
	.accept 10268 >> Accept An Audience with the Prince
step
	#sticky
	#label croctimes
	.goto Netherstorm,47.0,52.6
	>> Kill Crocolisks around the area.
	.complete 10418,1
step
	.goto Netherstorm,44.0,49.4,20,0
	.goto Netherstorm,44.8,57.2,20,0
	.goto Netherstorm,44.0,49.4
	>> Kill Ripfang Lynx under the Eco-dome for their pelts.
	.complete 10433,1
step
	#requires croctimes
	.goto Netherstorm,46.4,56.4
	.turnin 10418 >> Turn in Deal With the Saboteurs.
	.turnin 10433 >> Turn in Keeping Up Appearances.
step
	.goto Netherstorm,46.6,56.6
	.turnin 10333 >> Turn in Help Mama Wheeler.
	.accept 10234 >> Accept One Demon's Trash...
step
	.goto Netherstorm,50.4,58.9
	>> Collect Fel reaver parts around the area.
	.complete 10234,1
step
	.goto Netherstorm,46.6,56.6
	.turnin 10234 >> Turn in One Demon's Trash...
	.accept 10235 >> Accept Declawing Doomclaw.
step
	.goto Netherstorm,50.8,57.6
	>> Kill Doomclaw and collect quest item.
	.complete 10235,1
step
	.goto Netherstorm,46.6,56.6
	.turnin 10235 >> Turn Declawing Doomclaw.
	.accept 10237 >> Accept Warn Area 52!
step
	.goto Netherstorm,45.9,36.0
	.turnin 10268 >> Turn in An Audience with the Prince
	.accept 10269 >> Accept Triangulation Point One
step
	.goto Netherstorm,66.7,33.8
	.use 28962 >> Use the Triangulation Device in the area
	.complete 10269,1
step
	.goto Netherstorm,58.4,31.3
	.turnin 10269 >> Turn in Triangulation Point One
	.accept 10270 >> Accept Triangulation Point Two
step
	.goto Netherstorm,28.9,41.3
	.use 29018 >> Use the Triangulation Device in the area
	.complete 10270,1
step
	.goto Netherstorm,34.6,37.9
	.turnin 10270 >> Turn in Triangulation Point Two
	.accept 10276 >> Accept Full Triangle
step
	.goto Netherstorm,53.5,21.4
	>> Kill and loot Culuthas for the crystal. You may need help if you are undergeared.
	.complete 10276,1
step
	.goto Netherstorm,45.8,36.0
	.turnin 10276 >> Turn in Full Triangle
step
	.goto Netherstorm,32.6,64.8
	.turnin 10237 >> Turn in Warn Area 52!
	.accept 10247 >> Accept Doctor Vomisa, Ph.T.
step
	.goto Netherstorm,37.2,63.8
	.turnin 10247 >> Turn in Doctor Vomisa, Ph.T.
	.accept 10248 >> Accept You, Robot.
step
	.goto Netherstorm,37.2,63.8
	>> Use your controller on Scrap Reaver and defeat Negatron. Make sure to use your robot's abiilities on cooldown.
	* Save the stun for when Negatron uses earthquake. Only use Smash if you start getting threat, otherwise heal Scrap Reaver and stun Negatron during earthquake.
	* Scrap Reaver is buffable as well << Paladin/Priest/Druid
	.use 28634
	.complete 10248,1
step
	.goto Netherstorm,37.2,63.8
	.turnin 10248 >> Turn in You, Robot.
step
	.goto Blade's Edge Mountains,55.4,44.9
	.turnin 10983 >> Turn in Mog'dorg the Wizened
	.accept 10995 >> Accept Grulloc Has Two Skulls
	.accept 10996 >> Accept Maggoc's Treasure Chest
	.accept 10997 >> Accept Even Gronn Have Standards
step
	#sticky
	#completewith gronnsdone
	.goto Blade's Edge Mountains,60.3,47.5
	>> Kill Grulloc and loot the item on the ground when he dies.
	.complete 10995,1
step
	#sticky
	#completewith gronssdone
	.goto Blade's Edge Mountains,58.5,60.8,40,0
	.goto Blade's Edge Mountains,64.5,54.8,40,0
	.goto Blade's Edge Mountains,68.3,74.8
	>> Find Maggoc, he patrols around the Scalewing Shelf. Kill him and loot the item he drops on the ground
	.unitscan Maggoc
	.complete 10996,1
step
	#sticky
	#completewith gronssdone
	.goto Terokkar Forest,20.3,15.9
	>> Kill Slaag and loot him for the item he drops on the ground
	.complete 10997,1
step
	#completewith next
	#label gronnprep
	+These next 3 quests are all elite and require a group, however, they are unique in that the boss drops an item that can be right clicked on the ground for the quest reward, even if you aren't in the group that got the kill. You can do them in any order, two are in Blade's Edge, one is above Shattrath.
step
	#label gronnsdone
	#requires gronnprep
	.goto Blade's Edge Mountains,55.4,44.9
	.turnin 10995 >> Turn in Grulloc Has Two Skulls
	.turnin 10997 >> Turn in Even Gronn Have Standards
	.turnin 10996 >> Turn in Maggoc's Treasure Chest
	.accept 10998 >> Accept Grim(oire) Business
step
	.goto Blade's Edge Mountains,77.4,31.2
	>> Kill Vim'gol the Vile for his book, once again loot the item on the ground. You do not need to be in the group that killed him to loot it.
	.complete 10998,1
step
	.goto Blade's Edge Mountains,55.4,44.9
	.turnin 10998 >> Turn in Grim(oire) Business
	.accept 11000 >> Accept Into the Soulgrinder
step
	.goto Blade's Edge Mountains,60.0,24.1
	.use 32467 >> Step on the altar and use the grimoire to start the encounter. Survive the waves then kill the boss and loot the soul he drops on the ground.
	.complete 11000,1


--should get a bit more detailed directions inside Karazhan
step
	.goto Deadwind Pass,47.0,75.6
	.reputation 967,honored -- You must be honored with the Violet Eye
	>> Head to Deadwind Pass
	.accept 9630 >> Accept Medivh's Journal.
step
	--not 100% on his location
	>> Get into Karazhan and talk to Wravien in the room right after Curator boss.
	.turnin 9630 >> Turn in Medivh's Journal.
	.accept 9638 >> Accept In Good Hands.
step
	>> Gradav is a little further ahead from Wravien.
	.turnin 9638 >> Turn in In Good Hands.
	.accept 9639 >> Accept Kamsis.
step
	>> Like before, Kamsis is a bit ahead from Gradav.
	.turnin 9639 >> Turn in Kamsis.
	.accept 9640 >> Accept The Shade of Aran.
step
	>> Get the Journal from defeating Shade of Aran.
	.complete 9640,1
step
	.turnin 9640 >> Turn in The Shade of Aran with Kamsis.
	.accept 9645 >> Accept The Master's Terrace.
step
	>> Go to Master's Terrace within Karazhan and read the Journal.
	.use 23934
	.complete 9645,1
step
	.goto Deadwind Pass,47.0,75.6
	.turnin 9645 >> Turn in The Master's Terrace.
	.accept 9680 >> Accept Digging Up the Past.
step
	.goto Deadwind Pass,45.0,78.8
	>> Collect Charred Bone Fragment off the ground.
	.complete 9680,1
step
	.goto Deadwind Pass,47.0,75.6
	.turnin 9680 >> Turn in Digging Up the Past.
step
	#sticky
	.goto Netherstorm,43.5,35.0
	+Class quests are not included in the guide due to complexity, however they can be a lot of exp at 70 due to exp scaling. If you have any low level class quests available, like Cure Poison for Druids, Resurrection for Paladins etc, prepare them to turn in at launch. Some level 10 class quests can give up to 30k exp due to scaling.
step
	.goto Netherstorm,43.5,35.0
	+Head to the Stormspire and attack an enemy player to aggro the guards. Kill guards until you are neutral with the Consortium. You lose 250 rep a kill. Having a friend on the opposite faction will speed this up a lot.
    >>Neutral reputation is required to turn in the following quests:
    .turnin 9914 >> A Head Full of Ivory
    .turnin 9882 >> Stealing from Thieves
    >>Skip this step if those 2 quests are already complete
step
	.goto Shadowmoon Valley,66.0,86.0
	.reputation 1015,exalted
	+Reach exalted with Netherwing by doing dailies. Do not turn in any one time quests!

]])
