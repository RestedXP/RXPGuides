local faction = UnitFactionGroup("player")
if faction == "Horde" then return end


RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Alliance
#name 13-15 Westfall
#version 1
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 1-20
#defaultfor Human/Gnome/Dwarf/NightElf
#next 15-18 Darkshore

step
    #sticky
    .goto Elwynn Forest,19.00,81.00
    .zone Westfall >> Travel to Westfall
step
    .goto Westfall,59.95,19.35
    .target Farmer Furlbrow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r
    .accept 64 >> Accept The Forgotten Heirloom
    .accept 109 >> Accept Report to Gryan Stoutmantle
step
    .goto Westfall,59.92,19.42
    .target Verna Furlbrow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verna Furlbrow|r
    .accept 36 >> Accept Westfall Stew
    .accept 151 >> Accept Poor Old Blanchy
step
    #completewith SalmaS
    .goto Westfall,56.04,31.23,65 >> Travel to Saldean's Farm
step
    .goto Westfall,56.04,31.23
    .target Farmer Saldean
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
    .accept 9 >> Accept The Killing Fields
step
    #label SalmaS
    .goto Westfall,56.40,30.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 36 >> Turn in Westfall Stew
    .target Salma Saldean
    .accept 38 >> Accept Westfall Stew
    .accept 22 >> Accept Goretusk Liver Pie
step << Human
    #label Lewis
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lewis|r
    .target Quartermaster Lewis
    .goto Westfall,57.00,47.17
    .turnin 6285 >> Turn in Return to Lewis
step
    .goto Westfall,56.33,47.52
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 109 >> Turn in Report to Gryan Stoutmantle
    .isOnQuest 109
step
    .goto Westfall,56.33,47.52
    .target Gryan Stoutmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 12 >> Accept The People's Militia
step
    #era
    .goto Westfall,56.42,47.62
    .target Captain Danuvin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Danuvin|r
    .accept 102 >> Accept Patrolling Westfall
step << Human
    #requires Lewis
    .goto Westfall,54.00,53.00
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Galiaan|r
    .target Scout Galiaan
    .accept 153 >> Accept Red Leather Bandanas
step << !Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Galiaan|r
    .target Scout Galiaan
    .goto Westfall,54.00,53.00
    .accept 153 >> Accept Red Leather Bandanas
step
    .goto Westfall,52.86,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Heather|r
	>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
    .vendor >>|T133918:0|t[Longjaw Mud Snapper] |cRXP_WARN_is very cheap|r
	.target Innkeeper Heather
step
	#completewith bennytime
    >>Open the |cRXP_PICK_Sacks of Oats|r on the ground. Loot them for the |cRXP_LOOT_Handful of Oats|r
    >>|cRXP_WARN_You can usually find them near Farm Fences or Buildings|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith HarvestW
    >>Kill |cRXP_ENEMY_Young Goretusks|r and |cRXP_ENEMY_Young Fleshrippers|r. Loot them for their |cRXP_LOOT_Vulture Meat|r, |cRXP_LOOT_Snouts|r and |cRXP_LOOT_Livers|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .mob +Goretusk
step
    >>Kill |cRXP_ENEMY_Defias Trappers|r and |cRXP_ENEMY_Defias Smugglers|r. Loot them for their |cRXP_LOOT_Red Leather Bandanas|r
    .goto Westfall,48.21,46.70,60,0
    .goto Westfall,46.74,52.87,60,0
    .goto Westfall,50.74,40.07,60,0
    .goto Westfall,46.21,38.26,60,0
    .goto Westfall,41.21,40.75,60,0
    .goto Westfall,44.57,26.09,60,0
    .goto Westfall,48.21,46.70
    .goto Westfall,41.21,40.75
    .complete 12,1 -- Defias Trapper slain (15)
    .mob +Defias Trapper
    .complete 12,2 -- Defias Smuggler slain (15)
    .mob +Defias Smuggler
    .complete 153,1 -- Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
step
	#label bennytime
    .goto Westfall,49.34,19.27
    >>Open |cRXP_PICK_Furlbrow's Wardrobe|r. Loot it for |cRXP_LOOT_Furlbrow's Pocket Watch|r
    >>|cRXP_WARN_You can loot |cRXP_PICK_Furlbrow's Wardrobe|r from outside if you angle your camera correctly|r
	>>|cRXP_WARN_Be aware of |cRXP_ENEMY_Benny Blanco|r. He hits hard|r
    .complete 64,1 --Furlbrow's Pocket Watch
step
	#completewith next
    >>Open the |cRXP_PICK_Sacks of Oats|r on the ground. Loot them for the |cRXP_LOOT_Handful of Oats|r
	>>|cRXP_WARN_You can usually find them near Farm Fences or Buildings|r
	.complete 151,1 --Handful of Oats (8)
step
    #era
    .goto Westfall,56.40,13.50,60,0
    .goto Westfall,42.82,14.70,60,0
    .goto Westfall,45.83,13.75,60,0
    .goto Westfall,52.36,14.82,60,0
    .goto Westfall,56.86,13.53,60,0
    .goto Westfall,56.86,13.53,60,0
    .goto Westfall,42.82,14.70,60,0
    .goto Westfall,52.36,14.82,60,0
    .goto Westfall,45.83,13.75
    >>Kill |cRXP_ENEMY_Riverpaw Gnolls|r and |cRXP_ENEMY_Riverpaw Scouts|r. Loot them for their |cRXP_LOOT_Gnoll Paws|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto Westfall,56.40,9.40,60,0
    .goto Westfall,52.13,10.36,60,0
    .goto Westfall,56.40,9.40,60,0
    .goto Westfall,52.13,10.36,60,0
    .goto Westfall,56.40,9.40
    >>Kill |cRXP_ENEMY_Murloc Raiders|r and |cRXP_ENEMY_Murloc Coastrunners|r. Loot them for their |cRXP_LOOT_Eyes|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .mob Murloc Raider
    .mob Murloc Coastrunner
step
    .goto Westfall,57.48,13.58,60,0
    .goto Westfall,57.23,19.78,60,0
    .goto Westfall,52.13,33.22,60,0
    .goto Westfall,57.06,34.47,60,0
    .goto Westfall,57.23,19.78
    >>Open the |cRXP_PICK_Sacks of Oats|r on the ground. Loot them for the |cRXP_LOOT_Handful of Oats|r
	>>|cRXP_WARN_You can usually find them near Farm Fences or Buildings|r
	.complete 151,1 --Handful of Oats (8)
step
    #era
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r and |cRXP_FRIENDLY_Verna Furlbrow|r
    .turnin 64 >> Turn in The Forgotten Heirloom
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 151 >> Turn in Poor Old Blanchy
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step
    #som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r and |cRXP_FRIENDLY_Verna Furlbrow|r
    .turnin 64 >> Turn in The Forgotten Heirloom
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 151 >> Turn in Poor Old Blanchy
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .goto Westfall,56.40,30.50
    .turnin 22 >> Turn in Goretusk Liver Pie
    .isQuestComplete 22
    .target Salma Saldean
step
    #completewith next
	.goto Westfall,56.04,31.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
    .vendor
    >>|cRXP_WARN_Do NOT sell |T133884:0|t[Murloc Eyes], |T135997:0|t[Goretusk Snouts], |T134341:0|t[Goretusk Livers] or |T133972:0|t[Stringy Vulture Meat]|r
	.target Farmer Saldean
step
    #label HarvestW
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,80,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,44.47,35.35,60,0
    .goto Westfall,50.80,21.76
    >>Kill |cRXP_ENEMY_Harvest Watchers|r. Loot them for their |cRXP_LOOT_Flask of Oil|r and |cRXP_LOOT_Okra|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1
    .mob Harvest Watcher
step
    .goto Westfall,52.49,42.11,75,0
    .goto Westfall,53.67,46.07,75,0
    .goto Westfall,61.60,45.55,75,0
    .goto Westfall,60.36,27.38,75,0
    .goto Westfall,54.63,19.20,75,0
    .goto Westfall,49.09,26.92,75,0
    .goto Westfall,47.89,42.94,75,0
    .goto Westfall,54.42,40.38
    >>Kill |cRXP_ENEMY_Young Goretusks|r and |cRXP_ENEMY_Young Fleshrippers|r. Loot them for their |cRXP_LOOT_Vulture Meat|r, |cRXP_LOOT_Snouts|r and |cRXP_LOOT_Livers|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
    .mob +Fleshripper
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .mob +Goretusk
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .mob +Goretusk
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
	.target Farmer Saldean
    .goto Westfall,56.04,31.23
    .turnin 9 >> Turn in The Killing Fields
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
	.target Salma Saldean
    .goto Westfall,56.40,30.50
    .turnin 38 >> Turn in Westfall Stew
    .turnin 22 >> Turn in Goretusk Liver Pie
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
	.target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 12 >> Turn in The People's Militia
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
	.target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .accept 65 >> Accept The Defias Brotherhood
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Danuvin|r
	.target Captain Danuvin
    .goto Westfall,56.42,47.62
    .turnin 102 >> Turn in Patrolling Westfall
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Galiaan|r
	.target Scout Galiaan
    .goto Westfall,54.00,53.00
    .turnin 153 >> Turn in Red Leather Bandanas
step << Druid
    .goto Westfall,32.6,22.6,30,0
    .goto Westfall,38.8,18.2,30,0
    .goto Westfall,41.0,12.0,30,0
    .goto Westfall,47.6,9.0,30,0
    .goto Westfall,51.8,9.4,30,0
    .goto Westfall,32.6,22.6
    .goto Westfall,38.8,18.2,0
    .goto Westfall,41.0,12.0,0
    .goto Westfall,47.6,9.0,0
    .goto Westfall,51.8,9.4,0
    .xp 16 >> Grind crabs in Westfall to level 16
step << Dwarf !Paladin/Gnome
    #label end
    .hs >> Hearth to Thelsamar
step << Dwarf !Paladin/Gnome
    #hardcore
    .goto Loch Modan,33.94,50.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Fly to Ironforge
    .target Thorgrum Borrelson
step << Human/Dwarf Paladin
    #label end
    .goto Westfall,56.55,52.64
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Ironforge >> Fly to Ironforge
    .target Thor
step << !NightElf
    .goto Ironforge,55.093,58.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nissa Firestone|r
    >>Level up your |T135966:0|t[First Aid]
    .train 3274 >> Train Journeyman First Aid
    .target Nissa Firestone
step << Human Warrior
    .goto Ironforge,62.0,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bixi Wobblebonk|r
    .train 2567 >>Train Thrown
    .target Bixi Wobblebonk
step << Dwarf Paladin
    .goto Ironforge,24.55,4.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Beldruk Doombrow|r
    .trainer >> Train your class spells
    .target Beldruk Doombrow
step << Dwarf Paladin
    #completewith next
    .goto Ironforge,25.27,1.53,6,0
    .goto Ironforge,24.35,11.90,10 >> Travel toward |cRXP_FRIENDLY_Muiredon|r upstairs
step << Dwarf Paladin
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muiredon Battleforge|r
    .turnin 1784 >>Turn in The Tome of Divinity
    .accept 1785 >>Accept The Tome of Divinity
    .target Muiredon Battleforge
step << Dwarf Paladin
    .goto Ironforge,27.63,12.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tiza Battleforge|r
    .turnin 1785 >>Turn in The Tome of Divinity
    .target Tiza Battleforge
step
    .goto Ironforge,39.553,57.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senator Barin Redstone|r
    .turnin 291 >> Turn in The Reports
    .target Senator Barin Redstone
    .isOnQuest 291
step
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>Buy the following items for instant turn ins at Darkshore shortly. Skip this step if you wish to not buy any
    >>|T133972:0|t[Strider Meat]
    >>|T133912:0|t[Darkshore Grouper]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Ironforge,1
step << !NightElf
    #hardcore
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Exit Ironforge
step << !NightElf
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >> Travel to the Dun Morogh -> Wetlands skip spot
step << !NightElf
    #hardcore
    .goto Dun Morogh,59.5,42.8,40,0
    .goto Dun Morogh,60.4,44.1,40,0
    .goto Dun Morogh,61.1,44.1,40,0
    .goto Dun Morogh,61.2,42.3,40,0
    .goto Dun Morogh,60.8,40.9,40,0
    .goto Dun Morogh,59.0,39.5,40,0
    .goto Dun Morogh,60.3,38.6,40,0
    .goto Dun Morogh,61.7,38.7,40,0
    .goto Dun Morogh,65.7,21.6,40,0
    .goto Dun Morogh,65.8,12.5,40,0
    .goto Dun Morogh,65.6,10.8,40,0
    .goto Dun Morogh,66.5,10.0,40,0
    .goto Dun Morogh,66.9,8.5,40,0
    .goto Wetlands,20.6,67.2,50,0
    .goto Wetlands,17.7,67.7,40,0
    .goto Wetlands,16.8,65.3,40,0
    .goto Wetlands,15.1,64.0,40,0
    .goto Wetlands,12.1,60.3,40,0
    >>|cRXP_WARN_Watch the video guide for a reference on how to do the skip first!|r
    >>|cRXP_WARN_Do the Deathless Dun Morogh -> Wetlands skip|r
    >>|cRXP_WARN_Avoid the |cRXP_ENEMY_Wetlands Crocolisks|r and |cRXP_ENEMY_Murlocs|r when crossing the water|r
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >> |cRXP_WARN_Click here for a video guide|r
    .goto Wetlands,12.1,60.3,80 >> Travel to Menethil Harbor
    .mob Wetlands Crocolisk
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
step << !NightElf
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Neal Allen|r doesn't have one|r
	.target Neal Allen
    .bronzetube
step << !NightElf
    .goto Wetlands,10.43,61.01,10,0
    .goto Wetlands,10.496,60.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Samor Festivus|r upstairs
    .vendor >> |cRXP_BUY_Buy as many|r |T134831:0|t[Healing Potions] |cRXP_BUY_that are available|r
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Samor Festivus|r doesn't have any|r
    .target Samor Festivus
step << !NightElf
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
    .fp Wetlands>> Get the Wetlands flight path
    .target Shellei Brondir
step << Hunter !NightElf
	.goto Wetlands,11.334,59.554
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Murndan Derth|r
    >>|cRXP_WARN_Buy a|r |T135612:0|t[Large Bore Blunderbuss]
    >>Skip this step if you cannot afford it
	.collect 3023,1 -- Large Bore Blunderbuss
    .target Murndan Derth
step << !NightElf
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dewin Shimmerdawn|r
    .vendor >> |cRXP_BUY_Buy as many|r |T134831:0|t[Healing Potions] |cRXP_BUY_that are available|r
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Dewin Shimmerdawn|r doesn't have any|r
    .target Dewin Shimmerdawn
step << !NightElf
    #completewith next
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Travel to the Menethil Harbor docks. Wait for the boat to Darkshore
step << !NightElf
    .zone Darkshore >> Take the boat to Darkshore
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_and|r |T133971:0|t[Cooking] |cRXP_WARN_while waiting for the boat to Darkshore|r
    >>|cRXP_WARN_Level up your|r |T133971:0|t[Cooking] |cRXP_WARN_using the|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_you farmed earlier. Level it to 10 ideally|r
step << NightElf !Druid
    .goto Westfall,56.556,52.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fp Westfall >> Get the Westfall flight path
    .fly Stormwind >> Fly to Stormwind
    .target Thor
step << Druid
	#completewith next
	.cast 18960 >> Cast Teleport: Moonglade
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,44.1444,45.227
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silva Fil'naveth|r
    .skipgossip 1
    .fly Teldrassil >> Fly to Rut'theran Village
    .target Silva Fil'naveth
step << Druid
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Take the purple portal into Darnassus
step << Druid
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 6121 >> Accept Lessons Anew
    .accept 26 >> A Lesson to Learn
    .trainer >> Train your class spells
    .target Mathrengyl Bearwalker
step << Druid
	#completewith next
	.cast 18960 >> Cast Teleport: Moonglade
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r up stairs
    .turnin 6121 >> Turn in Lessons Anew
    .accept 6122 >> Accept The Principal Source
    .turnin 26 >> Turn in A Lesson to Learn
    .accept 29 >> Accept Trial of the Lake
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,52.6,51.6
    >>Swim into Lake Elune'Ara
    >>Open a |cRXP_PICK_Bauble Container|r. Loot it for a |T134125:0|t[Shrine Bauble]
    >>|cRXP_WARN_It may spawn in different locations underwater|r
    .collect 15877,1,29,1 -- Shrine Bauble (1)
step << Druid
    #completewith next
    .cast 18960 >> Cast Teleport: Moonglade
    >>|cRXP_WARN_It will be faster this way so you don't need to swim for a longer time|r
step << Druid
    .goto Moonglade,36.026,41.374
    .use 15877 >>|cRXP_WARN_Use the|r |T134125:0|t[Shrine Bauble] |cRXP_WARN_at the Shrine of Remulos tree|r
    .complete 29,1 --Complete the Trial of the Lake.
step << Druid
    .goto Moonglade,36.517,40.104
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tajarri|r
    .turnin 29 >> Turn in Trial of the Lake
    .target Tajarri
    .accept 272 >> Accept Trial of the Sea Lion
step << NightElf Priest
    .goto StormwindClassic,38.550,26.853
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
    .trainer >> Train your class spells
    .target Brother Joshua
step << NightElf Warrior
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunther Weller|r
    .vendor >> |cRXP_BUY_Buy|r |T133046:0|[Rock Hammer] |cRXP_BUY_if you can afford it|r
    .target Gunther Weller
step << NightElf Rogue
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunther Weller|r
    .vendor >> |cRXP_BUY_Buy|r |T133052:0|[Hammer] |cRXP_BUY_if you can afford it|r
    .target Gunther Weller
step << NightElf Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woo Ping|r
    .target Woo Ping
    .goto StormwindClassic,57.130,57.704
    .train 201 >> Train 1h Swords
step << NightElf Hunter
    .goto StormwindClassic,49.990,57.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Frederick Stover|r
    >>|cRXP_BUY_Buy a|r |T135490:0|t[Reinforced Bow]
    >>|cRXP_BUY_Stock up on|r |T132382:0|t[Sharp Arrows]
    .collect 3026,1
    .target Frederick Stover
step << NightElf
    .goto StormwindClassic,43.065,26.156
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaina Fuller|r
    >>Level up your |T135966:0|t[First Aid]
    .train 3274 >> Train Journeyman First Aid
    .target Shaina Fuller
step << NightElf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Train your class spells
    .target Wu Shen
    .target Ilsa Corbin
step << NightElf Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
    .trainer >> Train your class spells
    .target Osborne the Night Man
step << NightElf Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Train your class spells
    .target Einris Brightspear
step << NightElf
    .hs >> Hearth to Auberdine
]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Alliance
#name 15-18 Darkshore
#version 1
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 1-20
--#defaultfor !NightElf
#next 18-19 Loch Modan

step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
	.target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    .accept 3524 >> Accept Washed Ashore
step << !NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
	.target Caylais Moonfeather
    .goto Darkshore,36.336,45.574
    .fp Auberdine >> Get the Auberdine flight path
step << !NightElf
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaussiy|r
    .home >> Set your Hearthstone to Auberdine
    .target Innkeeper Shaussiy
step
    #completewith next
    .goto Darkshore,36.70,43.78,5 >> Travel up stairs toward |cRXP_FRIENDLY_Wizbang Cranktoggle|r
step
#map Darkshore
    .goto Felwood,19.51,18.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizbang Cranktoggle|r
    .accept 983 >> Accept Buzzbox 827
    .target Wizbang Cranktoggle
step
#map Darkshore
    .goto Felwood,21.63,18.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2118 >> Accept Plagued Lands
    .target Tharnariun Treetender
step
#map Darkshore
    #label BigThreat
    .goto Felwood,22.24,18.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >> Accept How Big a Threat?
    .target Terenthis
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .goto Darkshore,36.096,44.931
    .accept 1141 >> Accept The Family and the Fishing Pole
    .turnin 1141 >> Turn in The Family and the Fishing Pole
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #completewith RabidThistle
    .goto Darkshore,35.88,47.01,0
    .goto Darkshore,36.50,53.30,0
    .goto Darkshore,35.72,55.84,0
    >>Kill |cRXP_ENEMY_Pygmy Tide Crawlers|r and |cRXP_ENEMY_Young Reef Crawlers|r. Loot them for their |cRXP_LOOT_Legs|r
    >>|cRXP_WARN_You may need to go in the water for them|r
    .complete 983,1
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
#map Darkshore
    .goto Felwood,18.81,26.69
    >>Loot the |cRXP_PICK_Beached Sea Creature|r for the |cRXP_LOOT_Sea Creature Bones|r
    .complete 3524,1
step
#map Darkshore
    .goto Felwood,22.39,29.45
    >>Discover the Furbolg Camp
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #label RabidThistle
    .goto Darkshore,38.47,57.92,50,0
    .goto Darkshore,39.79,58.33,50,0
    .goto Darkshore,38.86,60.72,50,0
    .goto Darkshore,38.47,57.92
    .use 7586 >>|cRXP_WARN_Use|r |T134335:0|t[Tharnariun's Hope] |cRXP_WARN_on a|r |cRXP_ENEMY_Rabid Thistle Bear|r
    .complete 2118,1
    .unitscan Rabid Thistle Bear
step
    .goto Darkshore,36.53,53.39,55,0
    .goto Darkshore,36.38,55.96,55,0
    .goto Darkshore,35.11,54.69,55,0
    .goto Darkshore,35.79,47.35,55,0
    .goto Darkshore,36.53,53.39
    >>Kill |cRXP_ENEMY_Pygmy Tide Crawlers|r and |cRXP_ENEMY_Young Reef Crawlers|r. Loot them for their |cRXP_LOOT_Legs|r
    >>|cRXP_WARN_You may need to go in the water for them|r
    .complete 983,1
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
#map Darkshore
    .goto Felwood,19.13,21.39
    >>Click the |cRXP_PICK_Buzzbox 827|r on the ground
    .turnin 983 >> Turn in Buzzbox 827
step
#map Darkshore
	#era/som
	.goto Felwood,19.13,21.39
    >>Click the |cRXP_PICK_Buzzbox 827|r on the ground
    .accept 1001 >> Accept Buzzbox 411
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
	.target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,10,0
    .goto Felwood,19.10,20.63
    .turnin 3524 >> Turn in Washed Ashore
    .accept 4681 >> Accept Washed Ashore
step
    #completewith next
    .goto Darkshore,36.88,44.10,8,0
    .goto Darkshore,36.01,43.77,10 >> Travel toward |cRXP_FRIENDLY_Cerellean Whiteclaw|r on the dock
step
#map Darkshore
    .goto Felwood,18.10,18.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .accept 963 >> Accept For Love Eternal
    .target Cerellean Whiteclaw
step
    #completewith next
    .goto 1439,32.432,43.744,15 >> Travel to the end of the dock then jump into the water
step
    #completewith washed1
    .goto Darkshore,33.59,40.36,0
    .goto Darkshore,30.94,45.79,0
    .goto Darkshore,33.03,48.13,0
    >>Kill |cRXP_ENEMY_Darkshore Threshers|r. Loot them for their |cRXP_LOOT_Eyes|r
    .complete 1001,1
    .mob Darkshore Thresher
step
#map Darkshore
    .goto Felwood,13.63,21.44
    >>Loot the |cRXP_PICK_Skeletal Sea Turtle|r for the |cRXP_LOOT_Sea Turtle Remains|r
    .complete 4681,1
step
#map Darkshore
    #label washed1
    .goto Darkshore,36.71,44.98,10,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Turn in Washed Ashore
    .target Gwennyth Bly'Leggonde
step
.group
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barithras Moonshade|r
	.target Barithras Moonshade
    .goto Felwood,19.90,18.40
    .accept 947 >> Accept Cave Mushrooms
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
	.target Sentinel Glynda Nal'Shea
    .goto Felwood,20.34,18.12
    .accept 4811 >> Accept The Red Crystal
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .turnin 2118 >> Turn in Plagued Lands
    .accept 2138 >> Accept Cleansing of the Infected
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
	.target Terenthis
    .goto Felwood,22.24,18.22
    .turnin 984 >> Turn in How Big a Threat?
    .accept 985 >> Accept How Big a Threat?
    .accept 4761 >> Accept Thundris Windweaver
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
	.target Gorbold Steelhand
    .goto Felwood,20.80,15.58
    .accept 982 >> Accept Deep Ocean, Vast Sea
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .turnin 4761 >> Turn in Thundris Windweaver
    .accept 4762 >> Accept The Cliffspring River
    .accept 958 >> Accept Tools of the Highborne
    .accept 954 >> Accept Bashal'Aran
step
	#era/som
    #completewith MistVeil
    .goto Darkshore,35.44,35.83,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83,0
    .goto Darkshore,35.71,32.27,0
    .goto Darkshore,36.70,30.00,0
    .goto Darkshore,38.73,28.25,0
    .goto Darkshore,40.17,28.76,0
    >>Kill |cRXP_ENEMY_Darkshore Threshers|r. Loot them for their |cRXP_LOOT_Eyes|r
    .complete 1001,1
    .mob Darkshore Thresher
step
    #completewith next
    .goto Darkshore,38.95,29.36,30 >> Swim to the wrecked Silver Dawning ship
step
#map Darkshore
    .goto Darkshore,38.95,29.36,10,0
    .goto Felwood,20.94,1.49
    >>|cRXP_WARN_Enter the wrecked Silver Dawning ship through the broken hull on the bottom. Make sure you have a full breath bar before diving down and entering|r
    >>Loot the |cRXP_LOOT_Silver Dawning's Lockbox|r on the ground
    .complete 982,1
step
    #completewith next
    .goto Darkshore,40.30,27.56,30 >> Swim to the wrecked Mist Veil ship
step
    #label MistVeil
    .goto Darkshore,40.30,27.56,10,0
    .goto Darkshore,39.63,27.45
    >>|cRXP_WARN_Enter the wrecked Mist Veil ship through the broken hull on the bottom. Make sure you have a full breath bar before diving down and entering|r
    >>Loot the |cRXP_LOOT_Mist Veil's Lockbox|r on the ground
    .complete 982,2
step
    .goto Darkshore,40.17,28.76,0
    .goto Darkshore,38.73,28.25,0
    .goto Darkshore,36.70,30.00,0
    .goto Darkshore,40.17,28.76,55,0
    .goto Darkshore,38.73,28.25,55,0
    .goto Darkshore,36.70,30.00,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83
    >>Kill |cRXP_ENEMY_Darkshore Threshers|r. Loot them for their |cRXP_LOOT_Eyes|r
    .complete 1001,1
    .mob Darkshore Thresher
step
#map Darkshore
	#era/som
    .goto Felwood,25.19,1.29
    >>Click the |cRXP_PICK_Buzzbox 411|r on the ground
    .turnin 1001 >> Turn in Buzzbox 411
    .accept 1002 >> Accept Buzzbox 323
step
#map Darkshore
    .goto Felwood,25.15,4.61
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4723 >> Accept Beached Sea Creature
step << Druid
    #completewith cure1
    >>Collect 5 |T134187:0|t[Earthroot] as you quest
    .collect 2449,5,6123,1
step
    #completewith Ameth
    >>Kill |cRXP_ENEMY_Foreststriders|r and |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #era/som
    #completewith Ameth
    >>Kill |cRXP_ENEMY_Moonstalkers|r and |cRXP_ENEMY_Moonstalker Runts|r. Loot them for their |cRXP_LOOT_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
    #completewith bears1
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    .goto Darkshore,44.18,20.60
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4725 >> Accept Beached Sea Turtle
step
    .goto Darkshore,50.81,25.50
    .use 12350 >>|cRXP_WARN_Use the|r |T134865:0|t[Empty Sampling Tube] |cRXP_WARN_at the base of the Cliffspring River|r
    .complete 4762,1
step
#map Darkshore
    #completewith next
    .goto Felwood,27.70,10.03,60 >> Travel to Bashal'Aran
step
#map Darkshore
    #label bears1
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Avoid killing |cRXP_ENEMY_Wild Grells|r and |cRXP_ENEMY_Vile Sprites|r en-route|r
    .turnin 954 >> Turn in Bashal'Aran
    .accept 955 >> Accept Bashal'Aran
    .target Asterion
step
    .goto Darkshore,44.78,37.91,40,0
    .goto Darkshore,45.43,39.15,40,0
    .goto Darkshore,46.30,39.01,40,0
    .goto Darkshore,47.36,36.86,40,0
    .goto Darkshore,44.80,36.91,40,0
    .goto Darkshore,46.30,39.01
    >>Kill |cRXP_ENEMY_Wild Grells|r and |cRXP_ENEMY_Vile Sprites|r. Loot them for their |cRXP_LOOT_Earrings|r
    .complete 955,1
    .mob Wild Grell
    .mob Vile Sprite
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Turn in Bashal'Aran
    .accept 956 >> Accept Bashal'Aran
    .target Asterion
step
    .goto Darkshore,45.88,38.56,40,0
    .goto Darkshore,46.76,39.13,40,0
    .goto Darkshore,47.69,36.73,40,0
    .goto Darkshore,45.07,36.76
    >>Kill |cRXP_ENEMY_Deth'ryll Satyr|r. Loot them for the |cRXP_LOOT_Moonstone Seal|r
    .complete 956,1
    .mob Deth'ryll Satyr
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Turn in Bashal'Aran
    .accept 957 >> Accept Bashal'Aran
    .target Asterion
step << !NightElf
#map Darkshore
    .goto Felwood,31.29,24.14
    >>Kill |cRXP_ENEMY_Moonkin|r. Loot them for their |T132832:0|t[|cRXP_LOOT_Small Eggs|r]
    >>|cRXP_WARN_You will level|r |T133971:0|t[Cooking] |cRXP_WARN_to 10 later using|r |T132832:0|t[|cRXP_LOOT_Small Eggs|r]
    .collect 6889,10,2178,1,0x21,cooking -- Small Egg
    >>Travel to |cRXP_PICK_The Red Crystal|r
    .complete 4811,1
step << NightElf
#map Darkshore
    .goto Felwood,31.29,24.14
    >>Travel to |cRXP_PICK_The Red Crystal|r
    .complete 4811,1
step
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67,60,0
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67
    >>Kill |cRXP_ENEMY_Moonkin|r. Loot them for their |T132832:0|t[|cRXP_LOOT_Small Eggs|r]
    .collect 6889,10,2178,1,0x20,cooking -- Small Egg
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
step
    #completewith next
    .goto Darkshore,40.30,59.70,70 >> Travel south toward |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r at Ameth'Aran
step
    #label Ameth
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
	.target Sentinel Tysha Moonblade
    .goto Darkshore,40.30,59.70
    .accept 953 >> Accept The Fall of Ameth'Aran
step
    #completewith TheLay
    >>Kill |cRXP_ENEMY_Anaya Dawnrunner|r. Loot her for her |cRXP_LOOT_Pendant|r
    >>|cRXP_ENEMY_Anaya Dawnrunner|r |cRXP_WARN_patrols Ameth'Aran|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
    #completewith TheLay
    >>Kill |cRXP_ENEMY_Cursed Highbornes|r, |cRXP_ENEMY_Writhing Highbornes|r and |cRXP_ENEMY_Wailing Highbornes|r. Loot them for their |cRXP_LOOT_Relics|r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
#map Darkshore
    .goto Felwood,25.98,40.62
    >>Click the |cRXP_PICK_The Fall of Ameth'Aran|r
    .complete 953,2 -- The Fall of Ameth'Aran
step
#map Darkshore
    .goto Felwood,25.66,39.11
    >>Click the |cRXP_PICK_Ancient Flame|r
    .complete 957,1
step
    #label TheLay
    .goto Darkshore,43.30,58.70
    >>Click the |cRXP_PICK_The Lay of Ameth'Aran|r
    .complete 953,1 -- The Lay of Ameth'Aran
step
    #completewith next
    >>Kill |cRXP_ENEMY_Anaya Dawnrunner|r. Loot her for her |cRXP_LOOT_Pendant|r
    >>|cRXP_ENEMY_Anaya Dawnrunner|r |cRXP_WARN_patrols Ameth'Aran|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70,50,0
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70
    >>Kill |cRXP_ENEMY_Cursed Highbornes|r, |cRXP_ENEMY_Writhing Highbornes|r and |cRXP_ENEMY_Wailing Highbornes|r. Loot them for their |cRXP_LOOT_Relics|r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70,50,0
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70
    >>Kill |cRXP_ENEMY_Anaya Dawnrunner|r. Loot her for her |cRXP_LOOT_Pendant|r
    >>|cRXP_ENEMY_Anaya Dawnrunner|r |cRXP_WARN_patrols Ameth'Aran. She has a long respawn timer and if she isn't up right now, you may skip this step|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
#map Darkshore
    .goto Felwood,23.29,36.73
    .target Sentinel Tysha Moonblade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .turnin 953 >> Turn in The Fall of Ameth'Aran
step
    #era/som
    #completewith ReturnAuber
    >>Kill |cRXP_ENEMY_Moonstalkers|r and |cRXP_ENEMY_Moonstalker Runts|r. Loot them for their |cRXP_LOOT_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
    #completewith BearComplete
    >>Kill |cRXP_ENEMY_Foreststriders|r and |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #completewith Beached4728
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    >>Kill |cRXP_ENEMY_Blackwood Pathfinders|r and |cRXP_ENEMY_Blackwood Windtalkers|r
    .goto Darkshore,39.84,53.82,50,0
    .goto Darkshore,40.03,56.24,50,0
    .goto Darkshore,39.34,56.58,50,0
    .goto Darkshore,39.84,53.82
    .complete 985,1 -- Blackwood Pathfinder
    .mob +Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker
    .mob +Blackwood Windtalker
step
#map Darkshore
    .goto Felwood,22.39,29.45
    .xp 16 >> Grind to level 16

step
#map Darkshore
    .goto Felwood,19.64,39.52
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4722 >> Accept Beached Sea Turtle
step
#map Darkshore
    #label Beached4728
    .goto Felwood,18.41,49.43
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4728 >> Accept Beached Sea Creature
step
    #label BearComplete
    .goto Darkshore,40.11,69.39,60,0
    .goto Darkshore,43.37,68.78,70,0
    .goto Darkshore,41.97,64.81,70,0
    .goto Darkshore,38.51,64.72,70,0
    .goto Darkshore,38.67,59.54,60,0
    .goto Darkshore,40.11,69.39
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    .goto Darkshore,40.11,69.39,60,0
    .goto Darkshore,43.37,68.78,70,0
    .goto Darkshore,41.97,64.81,70,0
    .goto Darkshore,38.51,64.72,70,0
    .goto Darkshore,38.67,59.54,60,0
    .goto Darkshore,40.11,69.39
    >>Kill |cRXP_ENEMY_Foreststriders|r and |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
#map Darkshore
    #label ReturnAuber
    #completewith ManyBeached
    .goto Felwood,18.50,19.87,100 >> Travel to Auberdine
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
	.target Gubber Blump
    .goto Felwood,18.50,19.87
    .accept 1138 >> Accept Fruit of the Sea
step
#map Darkshore
    #label ManyBeached
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
	.target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    .turnin 4723 >> Turn in Beached Sea Creature
    .turnin 4728 >> Turn in Beached Sea Creature
    .turnin 4722 >> Turn in Beached Sea Turtle
    .turnin 4725 >> Turn in Beached Sea Turtle
step
    #completewith next
    .goto Darkshore,36.88,44.10,8,0
    .goto Darkshore,36.01,43.77,10 >> Travel toward |cRXP_FRIENDLY_Cerellean Whiteclaw|r on the dock
step
#map Darkshore
	.isQuestComplete 963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
	.target Cerellean Whiteclaw
    .goto Felwood,18.10,18.48
    .turnin 963 >> Turn in For Love Eternal
step << !NightElf !Mage !Paladin !Warlock
    .goto Darkshore,33.17,40.17,40,0
    .goto Darkshore,33.17,40.17,0
    .zone Teldrassil >> Take the boat to Darnassus
    .zoneskip Darnassus
step << !NightElf !Mage !Paladin !Warlock
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Take the purple portal into Darnassus
step << !NightElf Hunter
    .goto Darnassus,40.377,8.545
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Train your class spells
    .target Jocaste
step << !NightElf Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jandria|r
    .goto Darnassus,37.901,82.742
    .trainer >> Train your class spells
    .target Jandria
step << !NightElf Warrior
    .goto Darnassus,58.945,35.336
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darnath Bladesinger|r
    .trainer >> Train your class spells
    .target Darnath Bladesinger
step << !NightElf Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r inside the tree house
    .trainer >> Train your class spells
    .target Syurna
step << !NightElf Hunter/!NightElf Warrior
    #sticky
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .goto Darnassus,57.56,46.72
    .train 264 >> Train Bows
    .train 227 >> Train Staves
    .target Ilyenia Moonfire
step << !NightElf !Mage !Paladin !Warlock
    .goto Darnassus,30.7,41.3,15 >> Take the purple portal back to Rut'theran
    .zoneskip Darkshore
    .zoneskip Teldrassil
step << !NightElf !Mage !Paladin !Warlock
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Fly to Darkshore
    .target Vesprystus
step
    #completewith next
    .goto Darkshore,38.109,41.170,5,0
    .goto Darkshore,37.512,41.674
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    +Buy |T134059:0|t[Mild Spices]
    >>|cRXP_WARN_Use the|r |T134059:0|t[Mild Spices] |cRXP_WARN_and your|r |T132832:0|t[Small Eggs] |cRXP_WARN_to make Herb Baked Eggs. Do this until your Cooking has reached level 10|r
    .skill cooking,10,1 -- step only displays if cooking skill is less than 10
    .target Gorbold Steelhand
step
    #completewith ezstrider
    +|cRXP_WARN_Use your|r |T133971:0|t[Cooking] |cRXP_WARN_profession to make Herb Baked Eggs. Do this until your|r |T133971:0|t[Cooking] |cRXP_WARN_has reached level 10|r
    .skill cooking,10,1 -- step only displays if cooking skill is less than 10
    .target Gorbold Steelhand
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
	.target Gorbold Steelhand
    .goto Felwood,20.80,15.58
    .turnin 982 >> Turn in Deep Ocean, Vast Sea
step
    #label ezstrider
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
	.target Alanndarian Nightsong
    .goto Darkshore,37.70,40.70
    .accept 2178 >> Accept Easy Strider Living
    .turnin 2178 >> Turn in Easy Strider Living
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher than x
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .turnin 958 >> Turn in Tools of the Highborne
    .turnin 4762 >> Turn in The Cliffspring River
    .accept 4763 >> Accept The Blackwood Corrupted
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
	.target Sentinel Glynda Nal'Shea
    .goto Felwood,20.34,18.12
    .turnin 4811 >> Turn in The Red Crystal
    .accept 4812 >> Accept As Water Cascades
step
#sticky
#label tube1
    .goto Darkshore,37.78,44.06
    .use 14338 >>|cRXP_WARN_Use the|r |T134865:0|t[Empty Water Tube] |cRXP_WARN_at the Auberdine Moonwell|r
    .complete 4812,1
step
    .goto Darkshore,37.78,44.06
    .use 12346 >>|cRXP_WARN_Use the|r |T133748:0|t[Empty Cleansing Bowl] |cRXP_WARN_at the Auberdine Moonwell|r
    .collect 12347,1,4763,1
step
#requires tube1
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .turnin 2138 >> Turn in Cleansing of the Infected
    .accept 2139 >> Accept Tharnariun's Hope
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
	.target Terenthis
    .goto Felwood,22.24,18.22
    .turnin 985 >> Turn in How Big a Threat?
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
	.target Terenthis
    .goto Felwood,22.24,18.22
    .accept 986 >> Accept A Lost Master
    .group
step
#map Darkshore
    .goto Darkshore,39.26,43.04,5,0
    .goto Felwood,21.86,18.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Elissa Starbreeze|r up stairs
    .accept 965 >> Accept The Tower of Althalaxx
    .target Sentinel Elissa Starbreeze
step
    #era/som
    #completewith CliffCave
    >>Kill |cRXP_ENEMY_Moonstalkers|r and |cRXP_ENEMY_Moonstalker Runts|r. Loot them for their |cRXP_LOOT_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
#map Darkshore
    #completewith next
    .goto Felwood,31.29,24.14,15 >> Travel to The Red Crystal again
step
#map Darkshore
    .goto Felwood,31.29,24.14
    >>Click the |cRXP_PICK_The Red Crystal|r
    .turnin 4812 >> Turn in As Water Cascades
    .accept 4813 >> Accept The Fragments Within
step
#map Darkshore
    #completewith next
    .goto Felwood,27.70,10.03,70 >> Travel toward |cRXP_FRIENDLY_Asterion|r at Bashal'Aran
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
	.target Asterion
    .goto Felwood,27.70,10.03
    .turnin 957 >> Turn in Bashal'Aran
step << Paladin
    .goto Darkshore,50.74,34.68
	>>Kill |cRXP_ENEMY_Blackwood Warriors|r and |cRXP_ENEMY_Blackwood Totemics|r. Loot them for their |T132889:0|t[Linen Cloth]
    >>|cRXP_WARN_You need to save 10|r |T132889:0|t[Linen Cloth] |cRXP_WARN_for your|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_class quest later|r
	.collect 2589,10,1,1644 --Linen Cloth (10)
    .mob Blackwood Warrior
    .mob Blackwood Totemic
step
.group
    .goto Darkshore,50.66,34.94
    >>Open the |cRXP_PICK_Blackwood Grain Stores|r. Loot it for the |cRXP_LOOT_Blackwood Grain Sample|r
    >>|cRXP_WARN_Looting this will spawn 2 |cRXP_ENEMY_Blackwood Furbolgs|r that will agro and run at you. Be ready to fight them or reset them|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
step
.group
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Kill |cRXP_ENEMY_Den Mother|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Thistle Cubs|r can cast|r |T132152:0|t[Ravage]|cRXP_WARN_, a meele instant attack which stuns you for 2 seconds|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .mob Thistle Cub
step
.group
    .goto Darkshore,51.83,33.50
    >>Open the |cRXP_PICK_Blackwood Nut Stores|r. Loot it for the |cRXP_LOOT_Blackwood Nut Sample|r
    >>|cRXP_WARN_Looting this will spawn 2 |cRXP_ENEMY_Blackwood Furbolgs|r that will agro and run at you. Be ready to fight them or reset them|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
step
.group
    #label Fruit
    .goto Darkshore,52.86,33.41
    >>Open the |cRXP_PICK_Blackwood Fruit Stores|r. Loot it for the |cRXP_LOOT_Blackwood Fruit Sample|r
    >>|cRXP_WARN_Looting this will spawn 2 |cRXP_ENEMY_Blackwood Furbolgs|r that will agro and run at you. Be ready to fight them or reset them|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
step
.group
    #completewith next
    .goto Darkshore,52.38,33.39
    .cast 16072 >> |cRXP_WARN_Use the|r |T134712:0|t[Filled Cleansing Bowl] |cRXP_WARN_at the |cRXP_PICK_Bonfire|r to summon|r |cRXP_ENEMY_Xabraxxis|r
    .timer 17,The Blackwood Corrupted RP
    .use 12347
step
.group
    .goto Darkshore,52.38,33.39
    >>Kill |cRXP_ENEMY_Xabraxxis|r. Open the |cRXP_PICK_Xabraxxis' Demon Bag|r he drops on the ground. Loot it for the |cRXP_LOOT_Talisman of Corruption|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step
.group << !Druid
#map Darkshore
    #label CliffCave
    #completewith next
    .goto Darkshore,54.99,32.04,30,0
    .goto Darkshore,54.99,33.41,15 >> Travel to the Cliffspring River Cave
step << Druid
    >>|cRXP_WARN_Use the|r |T134776:0|t[Empty Cliffspring Falls Sampler] |cRXP_WARN_in the water at the entrance of the Cliffspring River Cave|r
    .goto Darkshore,54.99,33.41
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
step
.group
    .goto Darkshore,55.66,34.89
    >>Loot the |cRXP_LOOT_Scaber Stalks|r and |cRXP_LOOT_Death Cap|r on the ground
    >>|cRXP_WARN_Stay on the upper section. If the |cRXP_LOOT_Death Cap|r is not at the end of the top side, drop down and get one from below|r
    >>|cRXP_WARN_Don't face your back to the center! |cRXP_ENEMY_Stormscale Wave Rider's|r can knock you back!|r
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
step
.group
    .isQuestComplete 947
    .goto Darkshore,54.81,32.92,30 >> Exit the Cliffspring River Cave
step
    #completewith next
    >>Kill |cRXP_ENEMY_Moonstalkers|r and |cRXP_ENEMY_Moonstalker Runts|r. Loot them for their |cRXP_LOOT_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
	.target Balthule Shadowstrike
    .goto Winterspring,4.82,27.18
    .turnin 965 >> Turn in The Tower of Althalaxx
    .accept 966 >> Accept The Tower of Althalaxx
step << !Paladin
    .goto Darkshore,55.27,27.74,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,57.54,25.99,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,55.27,27.74
    >>Kill |cRXP_ENEMY_Dark Strand Fanatics|r. Loot them for their |cRXP_LOOT_Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step << Paladin
    .goto Darkshore,55.27,27.74,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,57.54,25.99,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,55.27,27.74
    >>Kill |cRXP_ENEMY_Dark Strand Fanatics|r. Loot them for their |cRXP_LOOT_Parchments|r and |T132889:0|t[Linen Cloth]
    >>|cRXP_WARN_You need to save 10|r |T132889:0|t[Linen Cloth] |cRXP_WARN_for your|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_class quest later|r
    .complete 966,1 --Worn Parchment (4)
    .collect 2589,10,1,1644 --Linen Cloth (10)
    .mob Dark Strand Fanatic
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
	.target Balthule Shadowstrike
    .goto Winterspring,4.82,27.18
    .turnin 966 >> Turn in The Tower of Althalaxx
    .accept 967 >> Accept The Tower of Althalaxx
step
.group 3
#map Darkshore
    #completewith next
    .goto Winterspring,6.37,16.66,50 >> Travel to Mist's Edge
step
.group 3
#map Darkshore
    .goto Winterspring,6.37,16.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .accept 2098 >> Accept Gyromast's Retrieval
    .target Gelkak Gyromast
step
.group 3
    #completewith next
    .goto Darkshore,56.10,16.88,0
    >>Kill |cRXP_ENEMY_Raging Reef Crawlers|r and |cRXP_ENEMY_Encrusted Tide Crawlers|r. Loot them for the |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Raging Reef Crawlers|r |T132152:0|t[Thrash] ability. You can take 200 damage instantly from their melee hits|r
    .complete 2098,3 -- Bottom of Gelkak's Key
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
.group 3
    .goto Darkshore,54.93,12.19
    >>Kill |cRXP_ENEMY_Greymist Oracles|r and |cRXP_ENEMY_Greymist Tidehunter|r. Loot them for the |cRXP_LOOT_Middle of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Greymist Oracles|r |T136048:0|t[Lightning Bolt] damage, they can also heal with |T136052:0|t[Healing Wave]|r
    >>Care as |cRXP_ENEMY_Greymist Tidehunters|r can cast |T136016:0|t[|cRXP_FRIENDLY_Poison|r] while in meele leaving a dot dealing 13 damage per 3 seconds for 30 seconds
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Oracle
    .mob Greymist Tidehunter
step
.group 3
    .goto Darkshore,55.59,16.98,45,0
    .goto Darkshore,53.76,18.96,45,0
    .goto Darkshore,51.34,22.00,45,0
    .goto Darkshore,56.63,12.08
    >>Kill |cRXP_ENEMY_Raging Reef Crawlers|r and |cRXP_ENEMY_Encrusted Tide Crawlers|r. Loot them for the |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Raging Reef Crawlers|r |T132152:0|t[Thrash] ability. You can take 200 damage instantly from their melee hits|r
    .complete 2098,3 -- Bottom of Gelkak's Key
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
.group 3
    #sticky
    #label foreststriders
    .goto Darkshore,59.29,13.22,55,0
    .goto Darkshore,61.40,9.40,50,0
    .goto Darkshore,61.51,12.66,50,0
    .goto Darkshore,61.24,15.38,50,0
    .goto Darkshore,61.40,9.40
    >>Kill |cRXP_ENEMY_Giant Foreststriders|r. Loot them for the |cRXP_LOOT_Top of Gelkak's Key|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob Giant Foreststrider
step
.group
    .goto Darkshore,61.40,9.40,45,0
    .goto Darkshore,62.42,7.67
    >>Kill |cRXP_ENEMY_Moonstalker Sires|r and |cRXP_ENEMY_Moonstalker Matriarchs|r. Loot them for their |cRXP_LOOT_Pelts|r and |cRXP_LOOT_Fangs|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Moonstalker Matriarchs|r. They always attack with a |cRXP_ENEMY_Moonstalker Runt|r by their side|r
    >>|cRXP_ENEMY_Moonstalker Sires|r can cast |T132090:0|t[Exploit Weakness] a backstab attack dealing 20-40 damage if you turn your back to them
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
    .isOnQuest 986,1002
step
.group 3
#map Darkshore
    #requires foreststriders
    .goto Winterspring,6.37,16.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2098 >> Turn in Gyromast's Retrieval
    .accept 2078 >> Accept Gyromast's Revenge
    .target Gelkak Gyromast
step
.group 3
#map Darkshore
    .goto Winterspring,5.59,21.09,10,0
    .goto Winterspring,6.37,16.66
    >>Talk to |cRXP_FRIENDLY_The Threshwackonator 4100|r to start the escort
    >>Escort |cRXP_FRIENDLY_The Threshwackonator 4100|r to |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>Kill |cRXP_ENEMY_The Threshwackonator 4100|r once it turns hostile
    >>|cRXP_WARN_This quest is VERY difficult|r
    .skipgossip
    .complete 2078,1
    .link https://clips.twitch.tv/VainAmorphousMacaroniPRChase-iGvhTnz0ked6LO0A >> |cRXP_WARN_Click here for a video guide|r
    .mob The Threshwackonator 4100
step
.group 3
#map Darkshore
    .goto Winterspring,6.37,16.66
    .target Gelkak Gyromast
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2078 >> Turn in Gyromast's Revenge
    .isQuestComplete 2078
step
.group
    #sticky
    .destroy 7442 >> Delete Gyromast's Key from your inventory
step
#map Darkshore
    .goto Winterspring,3.10,20.90
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4727 >> Accept Beached Sea Turtle
step << Druid
    .goto Darkshore,48.87,11.32
    >>|cRXP_WARN_Swim out in the water|r
    >>Open the |cRXP_PICK_Strange Lockbox|r. Loot it for the |cRXP_LOOT_Half Pendant of Aquatic Agility|r
    .collect 15883,1,272,1 --Collect Half Pendant of Aquatic Agility (x1)
step
    #completewith next
    >>Kill |cRXP_ENEMY_Encrusted Tide Crawlers|r and |cRXP_ENEMY_Reef Crawlers|r. Loot them for their |cRXP_LOOT_Crab Chunks|r
    >>|cRXP_WARN_If the |cRXP_ENEMY_Encrusted Tide Crawlers|r are too strong, focus on just|r |cRXP_ENEMY_Reef Crawlers|r
    >>Be careful as |cRXP_ENEMY_Reef Crawlers|r can cast |T132155:0|t[Muscle Tear] an instant attack dealing 30-55 damage
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
#map Darkshore
    .goto Winterspring,1.42,26.89
    >>Click the |cRXP_PICK_Buzzbox 323|r on the ground
    .turnin 1002 >> Turn in Buzzbox 323
    .accept 1003 >> Accept Buzzbox 525
step
    .goto Darkshore,51.50,22.26,50,0
    .goto Darkshore,49.66,21.39
    >>Kill |cRXP_ENEMY_Encrusted Tide Crawlers|r and |cRXP_ENEMY_Reef Crawlers|r. Loot them for their |cRXP_LOOT_Crab Chunks|r
    >>|cRXP_WARN_If the |cRXP_ENEMY_Encrusted Tide Crawlers|r are too strong, focus on just|r |cRXP_ENEMY_Reef Crawlers|r
    >>Be careful as |cRXP_ENEMY_Reef Crawlers|r can cast |T132155:0|t[Muscle Tear] an instant attack dealing 30-55 damage
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .goto Darkshore,50.74,34.68
	.xp 18-2750 >>Grind until you are 2750 xp away from level 18
    >>Kill |cRXP_ENEMY_Blackwood Warriors|r and |cRXP_ENEMY_Blackwood Totemics|r.
    .mob Blackwood Warrior
    .mob Blackwood Totemic
step
    #completewith NorthDarkshore
    #map Darkshore
    .goto Felwood,18.50,19.87,100 >> Travel to Auberdine
    .cooldown item,6948,<0
step
    #completewith next
    .hs >> Hearth to Auberdine
    .cooldown item,6948,>0,1
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
	.target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    .turnin 4727 >> Turn in Beached Sea Turtle
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
	.target Gubber Blump
    .goto Felwood,18.50,19.87
    .turnin 1138 >> Turn in Fruit of the Sea
step
.group
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barithras Moonshade|r
	.target Barithras Moonshade
    .goto Felwood,19.90,18.40
    .turnin 947 >> Turn in Cave Mushrooms
    .accept 948 >> Accept Onu
step
#map Darkshore
    #label NorthDarkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
	.target Sentinel Glynda Nal'Shea
    .goto Darkshore,37.70,43.39
    .turnin 4813 >> Turn in The Fragments Within
step
.group
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .turnin 2139 >> Turn in Tharnariun's Hope
step
.group
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
	.target Terenthis
    .goto Darkshore,39.37,43.48
    .turnin 986 >> Turn in A Lost Master
    .accept 993 >> Accept A Lost Master
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
	.target Alanndarian Nightsong
    .goto Darkshore,37.70,40.70
    .accept 2178 >> Accept Easy Strider Living
    .turnin 2178 >> Turn in Easy Strider Living
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher than x
step
.group
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .turnin 4763 >> Turn in The Blackwood Corrupted
step << Druid
    .goto Darkshore,37.7,40.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 6122 >> Turn in The Principal Source
    .target Alanndarian Nightsong
    .accept 6123 >> Accept Gathering the Cure
step << Druid
#label cure1
    .goto Darkshore,43.4,45.9,90,0
    .goto Darkshore,43.3,49.1,90,0
    .goto Darkshore,42.4,52.6,90,0
    .goto Darkshore,45.7,50.3,90,0
    .goto Darkshore,45.3,53.3
    .goto Darkshore,43.4,45.9,0
    .goto Darkshore,43.3,49.1,0
    .goto Darkshore,42.4,52.6,0
    .goto Darkshore,45.7,50.3,0
    >>Kill |cRXP_ENEMY_Moonkin|r. Loot them for their |T132832:0|t[|cRXP_LOOT_Small Eggs|r]
    >>You'll need 50 cooking for a quest later
    .collect 6889,40,90,1,0x21,cooking
    >>Loot |cRXP_LOOT_Lunar Fungi|r on the ground throughout caves
    .complete 6123,2
step
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67,60,0
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67
    >>Kill |cRXP_ENEMY_Moonkin|r. Loot them for their |T132832:0|t[|cRXP_LOOT_Small Eggs|r]
    >>You'll need 50 cooking for a quest later
    .collect 6889,40,90,1,0x20,cooking
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
step << Druid
    >>Finish off collecting 5 |T134187:0|t[Earthroot]
    >>You can gather them along the mountains east
    .collect 2449,5,6123,1
step << Druid
    #requires earthroot
    .goto Darkshore,37.7,40.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 6123 >> Turn in Gathering the Cure
    .accept 6124 >> Accept Curing the Sick
    .target Alanndarian Nightsong
step << Druid
    .goto Darkshore,41.0,79.6
    >>|cRXP_WARN_Head south while using the|r |T132801:0|t[Curative Animal Salve] |cRXP_WARN_on|r |cRXP_ENEMY_Sickly Deer|r
    .complete 6124,1 -- Sickly Deer cured (10)
    .unitscan Sickly Deer
step << Druid
	#completewith next
	.cast 18960 >> Cast Teleport: Moonglade
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.2,30.4
    >>Go to Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 6124 >> Curing the Sick
    .accept 6125 >> Accept Power over Poison
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Train your class spells
    .target Loganaar
step << Druid
    .goto Moonglade,44.1444,45.227
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silva Fil'naveth|r
    .skipgossip 1
    .fly Teldrassil >> Fly to Rut'theran Village
    .target Silva Fil'naveth
    .zoneskip Teldrassil
    .zoneskip Darnassus
step << Druid
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Take the purple portal into Darnassus
step << Druid
    .goto Darnassus,35.375,8.405
    .target Mathrengyl Bearwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r up stairs
    .turnin 6125 >> Turn in Power over Poison
step << Druid
    .goto Darnassus,30.7,41.3 >> Take the purple portal back to Rut'theran
    .zoneskip Darkshore
    .zoneskip Teldrassil
step << Druid
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Fly to Darkshore
    .target Vesprystus
step
    #completewith next
    .goto 1439,32.432,43.744,15 >> Travel to the Auberdine Docks. Wait for the Menethil Harbor boat
step
    .goto Darkshore,32.44,43.71
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_and|r |T133971:0|t[Cooking] |cRXP_WARN_while waiting for the Menethil Harbor boat|r
    .zone Wetlands >> Take the boat to Menethil Harbor
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
]])


RXPGuides.RegisterGuide([[
#hardcore
#classic
<< Alliance
#name 20-21 Darkshore/Ashenvale
#version 1
#group RestedXP Survival Guide (A)
#subgroup RXP Survival Guide 1-20
#next 21-23 Stonetalon/Ashenvale

step << Druid
	#completewith next
	.cast 18960 >> Cast Teleport: Moonglade
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.57
	>>Go to Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Train your class spells
    .target Loganaar
step
    #completewith TheryluneE
    .hs >> Hearth to Auberdine
    .zoneskip Darkshore
    .zoneskip Ashenvale
step
    .goto Darkshore,37.21,44.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick on |cRXP_FRIENDLY_The Wanted Poster|r
    .accept 4740 >> Accept WANTED: Murkdeep!
step
#map Darkshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barithras Moonshade|r
    .target Barithras Moonshade
    .goto Felwood,19.90,18.40
    .accept 947 >> Accept Cave Mushrooms
step
    .goto Darkshore,37.44,41.83
    .target Archaeologist Hollee
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >> Accept The Absent Minded Prospector
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .accept 4763 >> Accept The Blackwood Corrupted
step
    .goto Darkshore,37.78,44.06
    .use 12346 >>|cRXP_WARN_Use the|r |T133748:0|t[Empty Cleansing Bowl] |cRXP_WARN_in the Auberdine Moonwell|r
    .collect 12347,1,4763,1
step
    .goto Darkshore,38.326,43.040
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin 3765 >> Turn in The Corruption Abroad
    .target Gershala Nightwhisper
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .accept 2139 >> Accept Tharnariun's Hope
step
    .goto Darkshore,50.66,34.94
    >>Open the |cRXP_PICK_Blackwood Grain Stores|r. Loot it for the |cRXP_LOOT_Blackwood Grain Sample|r
    >>|cRXP_WARN_Looting this will spawn 2 |cRXP_ENEMY_Blackwood Furbolgs|r that will agro and run at you. Be ready to fight them or reset them|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
step
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Kill |cRXP_ENEMY_Den Mother|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Thistle Cubs|r can cast|r |T132152:0|t[Ravage]|cRXP_WARN_, a meele instant attack which stuns you for 2 seconds|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .mob Thistle Cub
step
    .goto Darkshore,51.83,33.50
    >>Open the |cRXP_PICK_Blackwood Nut Stores|r. Loot it for the |cRXP_LOOT_Blackwood Nut Sample|r
    >>|cRXP_WARN_Looting this will spawn 2 |cRXP_ENEMY_Blackwood Furbolgs|r that will agro and run at you. Be ready to fight them or reset them|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
step
    #label Fruit
    .goto Darkshore,52.86,33.41
    >>Open the |cRXP_PICK_Blackwood Fruit Stores|r. Loot it for the |cRXP_LOOT_Blackwood Fruit Sample|r
    >>|cRXP_WARN_Looting this will spawn 2 |cRXP_ENEMY_Blackwood Furbolgs|r that will agro and run at you. Be ready to fight them or reset them|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
step
    #completewith next
    .goto Darkshore,52.38,33.39
    .cast 16072 >> |cRXP_WARN_Use the|r |T134712:0|t[Filled Cleansing Bowl] |cRXP_WARN_at the |cRXP_PICK_Bonfire|r to summon|r |cRXP_ENEMY_Xabraxxis|r
    .timer 17,The Blackwood Corrupted RP
    .use 12347
step
    .goto Darkshore,52.38,33.39
    >>Kill |cRXP_ENEMY_Xabraxxis|r. Open the |cRXP_PICK_Xabraxxis' Demon Bag|r he drops on the ground. Loot it for the |cRXP_LOOT_Talisman of Corruption|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step
    .goto Darkshore,55.66,34.89
    >>Loot the |cRXP_LOOT_Scaber Stalks|r and |cRXP_LOOT_Death Cap|r on the ground
    >>|cRXP_WARN_Stay on the upper section. If the |cRXP_LOOT_Death Cap|r is not at the end of the top side, drop down and get one from below|r
    >>|cRXP_WARN_Don't face your back to the center! |cRXP_ENEMY_Stormscale Wave Rider's|r can knock you back!|r
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
--TODO: Add logout skip video
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .turnin 4763 >> Turn in The Blackwood Corrupted
step
#map Darkshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barithras Moonshade|r
    .target Barithras Moonshade
    .goto Felwood,19.90,18.40
    .turnin 947 >> Turn in Cave Mushrooms
    .accept 948 >> Accept Onu
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
	.target Tharnariun Treetender
    .goto Felwood,21.63,18.15
    .turnin 2139 >> Turn in Tharnariun's Hope
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
	.target Terenthis
    .goto Darkshore,39.37,43.48
    .accept 986 >> Accept A Lost Master
step
    #completewith moonstalkers
    >>Kill |cRXP_ENEMY_Moonstalker Sires|r and |cRXP_ENEMY_Moonstalker Matriarchs|r. Loot them for their |cRXP_LOOT_Pelts|r and |cRXP_LOOT_Fangs|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Moonstalker Matriarchs|r. They always attack with a |cRXP_ENEMY_Moonstalker Runt|r by their side|r
    >>|cRXP_ENEMY_Moonstalker Sires|r can cast |T132090:0|t[Exploit Weakness] a backstab attack dealing 20-40 damage if you turn your back to them
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step
	#era/som
    #completewith Murkdeep
    #optional
    .goto Darkshore,40.23,81.28,0
    >>Kill |cRXP_ENEMY_Grizzled Thistle Bears|r. Loot them for their |cRXP_LOOT_Scalps|r
    >>Be careful as they cast |T132152:0|t[Ravage] an instant attack dealing 20-40 damage and |cRXP_WARN_knocking you down for 2s|r
    .complete 1003,1
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
#map Darkshore
    #completewith OnuGrove
    .goto Felwood,27.00,55.59,80 >> Travel to the Grove of the Ancients
step
#map Darkshore
    #label OnuGrove
    .goto Felwood,27.00,55.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    .turnin 952 >> Turn in Grove of the Ancients << NightElf
    .turnin 948 >> Turn in Onu
    .accept 944 >> Accept The Master's Glaive
    .target Onu
step
    #completewith next
    #label MasterG
    .goto Darkshore,38.54,86.05,60 >> Travel to The Master's Glaive
step
#label moonstalkers
    .goto Darkshore,38.54,86.05
    >>Discover The Master's Glaive
    >>|cRXP_ENEMY_Twilight Thugs|r |cRXP_WARN_can|r |T132343:0|t[Disarm] |cRXP_WARN_you for 6 seconds|r << Rogue/Paladin/Warrior
    >>|cRXP_ENEMY_Twilight Disciples|r |cRXP_WARN_cast|r |T135953:0|t[Renew] |cRXP_WARN_and a 3 second|r |T135915:0|t[Heal]
    .complete 944,1
step
    #completewith next
    .cast 5809 >> |cRXP_WARN_Use the|r |T134715:0|t[Phial of Scrying] |cRXP_WARN_and place it on the ground|r
    .use 5251
step
    .goto Darkshore,38.54,86.05
    .use 5251 >> Click the |cRXP_PICK_Scrying Bowl|r
    .turnin 944 >> Turn in The Master's Glaive
    .accept 949 >> Accept The Twilight Camp
    >>|cRXP_ENEMY_Twilight Thugs|r |cRXP_WARN_can|r |T132343:0|t[Disarm] |cRXP_WARN_you for 6 seconds|r << Rogue/Paladin/Warrior
    >>|cRXP_ENEMY_Twilight Disciples|r |cRXP_WARN_cast|r |T135953:0|t[Renew] |cRXP_WARN_and a 3 second|r |T135915:0|t[Heal]
step
    .goto Ashenvale,22.24,2.52
    >>Click the |cRXP_PICK_Twilight Tome|r
    .turnin 949 >> Turn in The Twilight Camp
    .accept 950 >> Accept Return to Onu
    >>|cRXP_ENEMY_Twilight Thugs|r |cRXP_WARN_can|r |T132343:0|t[Disarm] |cRXP_WARN_you for 6 seconds|r << Rogue/Paladin/Warrior
    >>|cRXP_ENEMY_Twilight Disciples|r |cRXP_WARN_cast|r |T135953:0|t[Renew] |cRXP_WARN_and a 3 second|r |T135915:0|t[Heal]
step
    .goto Ashenvale,22.36,3.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therylune|r. This will start an escort
    >>|cRXP_WARN_Skip this step if she is not there|r
    >>|cRXP_ENEMY_Twilight Thugs|r |cRXP_WARN_can|r |T132343:0|t[Disarm] |cRXP_WARN_you for 6 seconds|r << Rogue/Paladin/Warrior
    >>|cRXP_ENEMY_Twilight Disciples|r |cRXP_WARN_cast|r |T135953:0|t[Renew] |cRXP_WARN_and a 3 second|r |T135915:0|t[Heal]
    .accept 945 >> Accept Therylune's Escape
    .target Therylune
step
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_Therylune|r out of The Masters Glaive|r
    >>|cRXP_ENEMY_Twilight Thugs|r |cRXP_WARN_can|r |T132343:0|t[Disarm] |cRXP_WARN_you for 6 seconds|r << Rogue/Paladin/Warrior
    >>|cRXP_ENEMY_Twilight Disciples|r |cRXP_WARN_cast|r |T135953:0|t[Renew] |cRXP_WARN_and a 3 second|r |T135915:0|t[Heal]
    .complete 945,1 -- Escort Therylune
    .isOnQuest 945
step
    .destroy 5251 >> Destroy the |T134715:0|t[Phial of Scrying]. You no longer need it
step
    .goto Darkshore,39.3,91.8,60,0
    .goto Darkshore,37.38,91.87,100,0
    .goto Darkshore,38.96,80.07,100,0
    .goto Darkshore,43.82,82.08,100,0
    .goto Darkshore,38.96,80.07,0
	.goto Darkshore,39.3,91.8
    >>Kill |cRXP_ENEMY_Moonstalker Sires|r and |cRXP_ENEMY_Moonstalker Matriarchs|r. Loot them for their |cRXP_LOOT_Pelts|r and |cRXP_LOOT_Fangs|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Moonstalker Matriarchs|r. They always attack with a |cRXP_ENEMY_Moonstalker Runt|r by their side|r
    >>|cRXP_ENEMY_Moonstalker Sires|r can cast |T132090:0|t[Exploit Weakness] a backstab attack dealing 20-40 damage if you turn your back to them
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step
#map Darkshore
    #sticky
    #label prospector
    .goto Felwood,18.08,64.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Remtravel|r
    .turnin 729 >> Turn in The Absent Minded Prospector
    .target Prospector Remtravel
step
    .goto Darkshore,35.72,83.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Remtravel|r
    >>This will start an escort
    .accept 731,1 >> Accept The Absent Minded Prospector
    >>|cRXP_WARN_This quest is VERY difficult. Skip this step if you're unable to find a group or solo it|r
    .link https://www.twitch.tv/videos/1182180918 >> |cRXP_WARN_Click here for a video guide|r
    .target Prospector Remtravel
step
    #requires prospector
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_Prospector Remtravel|r through the Excavation|r
    >>|cRXP_WARN_This quest is VERY difficult. Skip this step if you're unable to find a group or solo it|r
    .link https://www.twitch.tv/videos/1182180918 >> |cRXP_WARN_Click here for a video guide|r
    .complete 731,1
    .isOnQuest 731
step
    .goto Ashenvale,13.97,4.10
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4733 >> Accept Beached Sea Creature
    >>|cRXP_WARN_This quest can be VERY difficult. Engage the |cRXP_ENEMY_Murlocs|r 1 by 1, otherwise you may agro multiple at the same time|r
    .link https://www.twitch.tv/videos/992307825?t=05h48m36s >> |cRXP_WARN_Click here for a video guide|r
step
    .goto Ashenvale,13.93,2.01
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4732 >> Accept Beached Sea Turtle
step
#map Darkshore
    .goto Felwood,13.47,64.01
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4731 >> Accept Beached Sea Turtle
step
#map Darkshore
    .goto Felwood,14.62,60.72
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4730 >> Accept Beached Sea Creature
step
    #label Murkdeep
    .goto Darkshore,36.64,76.53
    >>Kill |cRXP_ENEMY_Greymist Warriors|r and |cRXP_ENEMY_Greymist Hunters|r at the camp
    >>|cRXP_WARN_Move to the Bonfire in the center of the camp to summon|r |cRXP_ENEMY_Murkdeep|r
    >>Kill |cRXP_ENEMY_Murkdeep|r. He will run in from the water
    .complete 4740,1
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
	#era/som
    .goto Darkshore,41.44,86.06,50,0
    .goto Darkshore,41.77,84.60,50,0
    .goto Darkshore,42.94,82.25,50,0
    .goto Darkshore,43.59,80.02,50,0
    .goto Darkshore,39.74,80.43,50,0
    .goto Darkshore,38.00,83.55
    #optional
    >>Kill |cRXP_ENEMY_Grizzled Thistle Bears|r. Loot them for their |cRXP_LOOT_Scalps|r
    >>Be careful as they cast |T132152:0|t[Ravage] an instant attack dealing 20-40 damage and |cRXP_WARN_knocking you down for 2s|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #era/som
    .goto Darkshore,41.389,80.565
    >>Click the |cRXP_PICK_Buzzbox 525|r on the ground
    .turnin 1003 >> Turn in Buzzbox 525
    .isOnQuest 1003
step
.group
    #completewith next
    .goto Darkshore,45.00,85.30,30 >> Travel toward |cRXP_FRIENDLY_Volcor|r in the Cave
step
.group
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Volcor|r
    .turnin 993 >> Turn in A Lost Master
    .accept 995 >> Accept Escape Through Stealth
    .timer 20,Escape Through Stealth RP
    .target Volcor
    .isQuestTurnedIn 986
step
.group
    .goto Darkshore,44.44,84.69
    >>|cRXP_WARN_Wait out the RP|r
    .complete 995,1
    .isQuestTurnedIn 986
step
#map Darkshore
    .goto Felwood,27.00,55.59
    .target Onu
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    .turnin 951 >> Turn in Mathystra Relics
    .isQuestComplete 951
step
#map Darkshore
    .goto Felwood,27.00,55.59
    .target Onu
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Turn in Return to Onu
step
#map Darkshore
    .goto Felwood,27.96,55.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kerlonian Evershade|r to start the escort
    >>|cRXP_WARN_Skip this step if he is not there. It can take up to 25 minutes for him to respawn|r
	.target Kerlonian Evershade
    .accept 5321 >> Accept The Sleeper Has Awakened
step
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
    >>Open |cRXP_PICK_Kerlonian's Chest|r. Loot it for the |T134229:0|t[|cRXP_LOOT_Horn of Awakening|r]
    .complete 5321,1 -- Horn of Awakening (1)
step
    #completewith tower
    .zone Ashenvale >> Travel south to Ashenvale
    .goto Ashenvale,29.7,13.6
step
    .goto Ashenvale,27.26,35.58
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_Kerlonian|r to Maestra's Post in Ashenvale|r
    .use 13536 >> |cRXP_WARN_Use the|r |T134229:0|t[|cRXP_LOOT_Horn of Awakening|r] |cRXP_WARN_whenever |cRXP_FRIENDLY_Kerlonian|r falls asleep next to him|r
    >>|cRXP_WARN_Avoid running on the main road as much as possible. Enemies will only spawn if you're on the road|r
    .complete 5321,2
    .isOnQuest 5321
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liadris Moonriver|r
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    .turnin 5321 >> Turn in The Sleeper Has Awakened
    .isQuestComplete 5321
step
    #label tower
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 967 >> Turn in The Tower of Althalaxx
step
	#era/som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .accept 970 >> Accept The Tower of Althalaxx
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >> Accept Bathran's Hair
    .xp <20,1
step
    #era/som
    .goto Ashenvale,31.25,30.70
    >>Kill |cRXP_ENEMY_Dark Strand Cultists|r, |cRXP_ENEMY_Dark Strand Adepts|r, |cRXP_ENEMY_Dark Strand Enforcers|r and |cRXP_ENEMY_Dark Strand Excavators|r. Loot them for the |cRXP_LOOT_Glowing Soul Gem|r
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Open the |cRXP_PICK_Plant Bundles|r on the ground. Loot them for |cRXP_LOOT_Bathran's Hairs|r
    >>|cRXP_WARN_They look like small brown sacks. They can be hard to see|r
    .complete 1010,1
    .isOnQuest 1010
step
	#era/som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 970 >> Turn in The Tower of Althalaxx
    .accept 973 >> Accept The Tower of Althalaxx
step
    .goto Ashenvale,31.89,22.53
    .xp 20 >> Grind to level 20
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >> Accept Bathran's Hair
step
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Open the |cRXP_PICK_Plant Bundles|r on the ground. Loot them for |cRXP_LOOT_Bathran's Hairs|r
    >>|cRXP_WARN_They look like small brown sacks. They can be hard to see|r
    .complete 1010,1
    .isOnQuest 1010
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .turnin 1010 >> Turn in Bathran's Hair
    .accept 1020 >> Accept Orendil's Cure
step
	#era/som
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 970 >> Turn in The Tower of Althalaxx
    .accept 973 >> Accept The Tower of Althalaxx
step
    #completewith next
    .goto Ashenvale,25.49,39.59,25,0
    .goto Ashenvale,25.98,41.72,25,0
    .goto Ashenvale,26.88,44.47,30,0
    .goto Ashenvale,28.16,47.68,60,0
    .goto Ashenvale,34.40,48.00
    .subzone 415 >> Travel to Astranaar
step
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar>> Get the Astranaar Flight Path
	.target Daelyshia
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shindrell Swiftfire|r
	.target Shindrell Swiftfire
    .goto Ashenvale,34.67,48.83
    .accept 1008 >> Accept The Zoram Strand
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Thenysil|r
	.target Sentinel Thenysil
    .goto Ashenvale,34.89,49.79
    .accept 1070 >> Accept On Guard in Stonetalon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faldreas Goeth'Shael|r
	.target Faldreas Goeth'Shael
    .goto Ashenvale,35.76,49.10
    .accept 1056 >> Accept Journey to Stonetalon Peak
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raene Wolfrunner|r
	.target Raene Wolfrunner
    .goto Ashenvale,36.61,49.58
    .accept 991 >> Accept Raene's Cleansing
step
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kimlya|r
    .home >> Set your Hearthstone to Astranaar
    .target Innkeeper Kimlya
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Turn in Orendil's Cure
step
.dungeon WC
    #completewith TravelRatchet
    .goto Ashenvale,20.31,42.33,0
    .zone The Barrens >> Grind |cRXP_ENEMY_Saltspittle Murlocs|r while looking for a group for The Wailing Caverns. Their location is marked on your map
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
step
.dungeon WC
    #label TravelRatchet
    .goto Ashenvale,69.71,86.87,50,0
    .goto The Barrens,48.98,5.42,35,0
    .goto The Barrens,49.07,12.80,50,0
    .goto The Barrens,53.87,21.52,120,0
    .goto The Barrens,59.15,25.48,120,0
    .goto The Barrens,63.087,37.607
    .subzone 392 >> Travel to Ratchet in The Barrens. Follow the Arrow to avoid |cRXP_ENEMY_Barrens Guards|r
step
.dungeon WC
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Get the Ratchet Flight Path
    .target Bragok
step
.dungeon WC
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crane Operator Bigglefuzz|r
    .accept 959 >> Accept Trouble at the Docks
    .target Crane Operator Bigglefuzz
step
.dungeon WC
    #completewith next
    .goto The Barrens,46.95,35.44,0
    .goto The Barrens,46.95,35.44,20,0
    .goto The Barrens,47.01,34.67,15,0
    .goto 1414,51.92,55.27,45,0
    .goto 1414,51.82,55.56,20 >> Travel to The Wailing Caverns. Ascend the mountain then drop down into the hidden cave above the entrance of The Wailing Caverns. Follow the Arrow to get to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
    .accept 1486 >> Accept Deviate Hides
    .target +Nalpak
    .goto 1414,51.912,55.422 -- Nalpak
    .accept 1487 >> Accept Deviate Eradication
    .goto 1414,51.918,55.444 -- Ebru
    .target +Ebru
step
.dungeon WC
    #completewith EnterWC
    >>Kill all types of |cRXP_ENEMY_Deviate|r creatures. Loot them for their |cRXP_LOOT_Deviate Hides|r
    >>|cRXP_WARN_This can be completed INSIDE and OUTSIDE of Wailing Caverns|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    .goto 1414,52.04,55.37,20,0
    .goto 1414,52.14,55.14,20,0
    .goto 1414,51.82,54.85,20,0
    .goto 1414,52.04,55.37,20,0
    .goto 1414,52.14,55.14,20,0
    .goto 1414,51.82,54.85,20,0
    .goto 1414,52.04,55.37,20,0
    .goto 1414,52.14,55.14,20,0
    .goto 1414,51.82,54.85
    >>Kill |cRXP_ENEMY_Mad Magglish|r. Loot him for the |cRXP_LOOT_99-Year-Old Port|r
    >>|cRXP_ENEMY_Mad Magglish|r |cRXP_WARN_can spawn in a few locations|r
    >>|cRXP_WARN_This quest is completed OUTSIDE of Wailing Caverns|r
    .complete 959,1 -- 99-Year-Old Port (1)
    .isOnQuest 959
    .mob Mad Magglish
step
.dungeon WC
    #label EnterWC
    .goto 1414,52.37,55.20
    +Zone into The Wailing Caverns
    .zoneskip 1414,1 -- similar to stockades, no subzone for WC
step
.dungeon WC
    >>Kill all types of |cRXP_ENEMY_Deviate|r creatures. Loot them for their |cRXP_LOOT_Deviate Hides|r
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .complete 1486,1 -- Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .isOnQuest 1486
step
.dungeon WC
    >>Kill all types of |cRXP_ENEMY_Deviate|r creatures
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .isOnQuest 1487
step
.dungeon WC
    #completewith next
    >>Kill all types of |cRXP_ENEMY_Deviate|r creatures. Loot them for their |cRXP_LOOT_Deviate Hides|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    >>Kill |cRXP_ENEMY_Lord Cobrahn|r, |cRXP_ENEMY_Lord Pythas|r, |cRXP_ENEMY_Lord Serpentis|r and |cRXP_ENEMY_Lady Anacondra|r then talk to the |cRXP_FRIENDLY_Disciple of Naralex|r at the start of the instance to start his escort
    >>Escort the |cRXP_FRIENDLY_Disciple of Naralex|r through Wailing Caverns and complete the ritual of awakening
    >>Kill |cRXP_ENEMY_Mutanus the Devourer|r. Loot him for the |T135229:0|t[|cRXP_LOOT_Glowing Shard|r]
    >>|cRXP_WARN_Use the |T135229:0|t[|cRXP_LOOT_Glowing Shard|r] to start the quest|r
    .collect 10441,1,6981,1 -- Glowing Shard (1)
    .accept 6981 >> Accept The Glowing Shard
    .use 10441 -- Glowing Shard
    .skipgossip
    .target Disciple of Naralex
    .mob Mutanus the Devourer
step
.dungeon WC
    >>Kill all types of |cRXP_ENEMY_Deviate|r creatures. Loot them for their |cRXP_LOOT_Deviate Hides|r
    >>|cRXP_WARN_This can be completed INSIDE and OUTSIDE of Wailing Caverns|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    #completewith RatchetTurnin
    .goto The Barrens,62.984,37.218
    .subzone 392 >> Travel to Ratchet. You will turn in the quests above WC soon
    .isOnQuest 6981,959
step
.dungeon WC
    .goto The Barrens,62.984,37.218
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sputtervalve|r
    .complete 6981,1 -- Speak with someone in Ratchet about the Glowing Shard
    .skipgossip 1
    .target Sputtervalve
    .isOnQuest 6981
step
.dungeon WC
    #label RatchetTurnin
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crane Operator Bigglefuzz|r
    .turnin 959 >> Turn in Trouble at the Docks
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
step
.dungeon WC
    #completewith next
    .goto The Barrens,50.11,35.21,35,0
    .goto The Barrens,48.60,33.34,35,0
    .goto The Barrens,48.184,32.781,15 >> Ascend the steep mountain above The Wailing Caverns. Follow the Arrow
    .isQuestComplete 6981
step
.dungeon WC
    .goto The Barrens,48.184,32.781
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falla Sagewind|r
    .turnin 6981 >> Turn in The Glowing Shard
    .target Falla Sagewind
    .isQuestComplete 6981
step
.dungeon WC
    #completewith NalpakEbru
    .goto 1414,51.92,55.27,45,0
    .goto 1414,51.82,55.56,20 >> Drop down into the hidden cave above the entrance of The Wailing Caverns. Follow the Arrow to get to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >> Turn in Deviate Hides
    .goto 1414,51.912,55.422 -- Nalpak
    .target +Nalpak
    .turnin 1487 >> Turn in Deviate Eradication
    .goto 1414,51.918,55.444 -- Ebru
    .target +Ebru
    .isQuestComplete 1486
    .isQuestComplete 1487
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
    .turnin 1487 >> Turn in Deviate Eradication
    .goto 1414,51.918,55.444 -- Ebru
    .target Ebru
    .isQuestComplete 1487
step
.dungeon WC
    #label NalpakEbru
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nalpak|r and |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >> Turn in Deviate Hides
    .goto 1414,51.912,55.422 -- Nalpak
    .target Nalpak
    .isQuestComplete 1486
step
.dungeon WC
    .hs >> Hearth to Astranaar
]])
