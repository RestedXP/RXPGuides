
RXPGuides.RegisterGuide([[
#classic
#version 1
#xprate >2.49
<< Alliance
#group RestedXP Alliance 1-20
#name 16-17 Westfall
#defaultfor !NightElf
step
    .goto StormwindClassic,58.08,16.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furen Longbeard|r
    .turnin 1338 >> Turn in Stormpike's Order
    .target Furen Longbeard
step << Priest !NightElf
    #season 2
    .goto StormwindClassic,20.8,50.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara Meideros|r
    .target Nara Meideros
    .accept 78194 >> Accept Secrets of Elune
step << Priest !NightElf
    #season 2
    .goto StormwindClassic,20.8,50.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nara Meideros|r
    .target Nara Meideros
    .train >> Train your class spells
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Travel to The Slaughtered Lamb and go downstairs
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells
    .target Ursula Deline
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spackle Thornberry|r
    >> |cRXP_BUY_Buy the|r |T133738:0|t[Grimoire of Consume Shadows (Rank 1)]
    .collect 16357,1
    .target Spackle Thornberry
    .train 20387,1
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1688 >> Turn in Surena Caledon
    .accept 1689 >> Accept The Binding
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_Travel to the bottom of The Slaughtered Lamb|r
    .cast 7728 >> |cRXP_WARN_Use the|r |T133292:0|t[Bloodstone Choker] |cRXP_WARN_to call forth a|r |cRXP_ENEMY_Summoned Voidwalker|r
    .use 6928
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6928 >> Kill the |cRXP_ENEMY_Summoned Voidwalker|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >> Turn in The Binding
step
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ardwyn Cailen|r inside
    .vendor 1312 >>|cRXP_BUY_Buy a|r |T135468:0|t[Smoldering Wand] |cRXP_BUY_from her if you can afford it (35s)|r
    >>|cRXP_BUY_Alternatively, Buy a|r |T135144:0|t[Greater Magic Wand] |cRXP_BUY_from the Auction House if it's cheaper|r
    .collect 5208,1
    .disablecheckbox
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .itemcount 11288,<1 --Greater Magic Wand (1)
step << Rogue
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
    >>|cRXP_WARN_Ensure you train|r |T136058:0|t[Lockpicking] |cRXP_WARN_as well as you will need it for your Rogue class quest soon|r
    .trainer >> Train your class spells
    .train 1804 >> Train |T136058:0|t[Pick Lock]
    .target Osborne the Night Man
step << Rogue
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Renzik "The Shiv"|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Renzik "The Shiv"|r
    .accept 2281 >> Accept Redridge Rendezvous
    .goto StormwindClassic,75.76,60.35
    .target Renzik "The Shiv"
step << Warrior
    #season 2
    #completewith next
    .gossipoption 109045 >> Talk to |cRXP_FRIENDLY_Liv Bradford|r inside the Inn at the Park
    .goto Stormwind City,22.608,64.621
    .gossipoption 109084 >> Talk to |cRXP_ENEMY_Stuart|r, then beat him up. He will pass out at 0%
    .goto Stormwind City,21.213,62.781
    >>If |cRXP_ENEMY_Stuart|r is not there wait for him to respawn
    .skipgossipid 109047
    .skipgossipid 109045
    .skipgossipid 109084
    --.train 425447,1
step << Warrior
    #season 2
    .goto Stormwind City,22.608,64.621
    .use 204716 >> Talk to |cRXP_FRIENDLY_Liv Bradford|r again after knocking out |cRXP_ENEMY_Stuart|r to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r]
    .collect 204716,1
    .train 425447,1 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r] |cRXP_WARN_to train|r |T236317:0|t[Frenzied Assault]
    >>|cRXP_WARN_Note: This can be quite difficult solo depending on your level. Look for some help if needed|r
    .skipgossip 203478,1
    .target Liv Bradford
    .mob Stuart
step << Hunter
    .goto 1453/0,702.100,-8792.601
    .target Lina Stover
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lina Stover|r
    >>Buy a |T135612:0|t[Large Bore Blunderbuss] (7.4 dps) or look for a better upgrade on the Auction House
    .collect 3023,1
    .money <0.3771
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.3
step << !Human/!Mage
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woo Ping|r
    .train 227 >>Train Staves << Priest/Warlock/Hunter
    .train 201 >>Train 1h Swords << Mage/Warlock/Rogue
    .train 202 >>Train 2h Swords << Warrior/Paladin/Hunter
    --.train 5011 >>Train Crossbows << Hunter
    .target Woo Ping
step << Warrior/Paladin
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
    >>Buy a |T135353:0|t[Espadon] (12.6 dps) or look for a better upgrade on the Auction House
    .target Marda Weller
    .collect 2024,1 --Collect Espadon (1)
    .money <0.6397
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Buy the |T134437:0|t[Anti-Venom] for your |T132290:0|t[Poisons] quest later, and the rest for faster turn ins at Redridge Mountains shortly << !Dwarf Rogue
    >>Buy the following items for faster turn ins at Redridge Mountains shortly << !Rogue/Dwarf Rogue
    >>This will save you time as you won't need to run around looking for mobs to kill. Skip this step if you wish to not buy any
    >>|T134437:0|t[Anti-Venom] << !Dwarf Rogue
    >>|T134172:0|t[Great Goretusk Snout]
    >>|T134028:0|t[Tough Condor Meat]
    >>|T134321:0|t[Crisp Spider Meat]
    >>Anti-Venom can be crafted with first aid skill using a |T134339:0|t[Small Venom Sac] << Rogue !Dwarf
    .collect 6452,1,2359,1 << !Dwarf Rogue --Anti-Venom (1)
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
step << Human
    .goto StormwindClassic,66.28,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .turnin 6261 >> Turn in Dungar Longdrink
    .accept 6285 >> Accept Return to Lewis
    .target Dungar Longdrink
    .isQuestTurnedIn 6281
step << !Human/Warlock
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fp Stormwind >> Get the Stormwind City flight path << !Human
    .fly Redridge >> Fly to Redridge Mountains << Warlock
    .target Thor
step << !Warlock
    .goto Elwynn Forest,32.45,50.16
    .zone Elwynn Forest >> Travel to Elwynn Forest
    .zoneskip Westfall
    .zoneskip Redridge Mountains
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Train your class spells
    .target Lyria Du Lac
step << Paladin
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Wilhelm|r
    .trainer >> Train your class spells
    .target Brother Wilhelm
step << !Human !Warlock
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r
    .home >> Set your Hearthstone to Goldshire
    .target Innkeeper Farley
step << Mage
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Travel upstairs in the Inn
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Train your class spells
step << !Warlock
    .goto 1429/0,73.800,-9465.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Dughan|r
    .target Marshal Dughan
    .accept 109 >>Accept Report to Gryan Stoutmantle
step << !Warlock
    #label RedridgeS
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Travel to Redridge Mountains
step
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >> Accept Encroaching Gnolls
    .target Guard Parker
step
    .goto Redridge Mountains,30.73,59.99
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 244 >> Turn in Encroaching Gnolls
    .accept 246 >> Accept Assessing the Threat
    .target Deputy Feldon
step << !Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
    .target Ariena Stormfeather
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 118 >> Accept The Price of Shoes
step << Human/Dwarf Paladin
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Westfall >> Fly to Westfall
    .target Ariena Stormfeather
step << Gnome Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Stormwind >> Fly to Stormwind
    .target Ariena Stormfeather
step << Gnome Warlock
    .goto Elwynn Forest,32.45,50.16
    .zone Elwynn Forest >> Travel to Elwynn Forest
    .zoneskip Westfall
    .isQuestAvailable 153
step << !Human !Paladin !Warlock
    #completewith next
    .hs >> Hearth to Goldshire
step << !Human !Paladin
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smith Argus|r
	.target Smith Argus
    .turnin 118 >> Turn in The Price of Shoes
    .accept 119 >> Accept Return to Verner
step << !Human !Paladin
    #completewith next
    .zone Westfall >> Travel to Westfall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r and |cRXP_FRIENDLY_Captain Danuvin|r
    .goto Westfall,56.327,47.520
    .turnin -109 >> Turn in Report to Gryan Stoutmantle
    .accept 12 >> Accept The People's Militia
    .target Gryan Stoutmantle
step << Human
    #label Lewis
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quartermaster Lewis|r
    .target Quartermaster Lewis
    .goto Westfall,57.00,47.17
    .turnin 6285 >> Turn in Return to Lewis
    .isOnQuest 6285
step
    .goto Westfall,54.00,53.00
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Galiaan|r
    .target Scout Galiaan
    .accept 153 >> Accept Red Leather Bandanas
step << Rogue
    .goto Westfall,52.8,53.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Heather|r
    .target Innkeeper Heather
    .home >> Set your Hearthstone to Westfall
step
    >>Kill |cRXP_ENEMY_Defias Trappers|r and |cRXP_ENEMY_Defias Smugglers|r. Loot them for their |cRXP_LOOT_Red Leather Bandanas|r
    .goto Westfall,48.21,46.70,60,0
    .goto Westfall,46.74,52.87,60,0
    .goto Westfall,50.74,40.07,60,0
    .goto Westfall,46.21,38.26,60,0
    .goto Westfall,41.21,40.75,60,0
    .goto Westfall,44.57,26.09,60,0
    .goto Westfall,48.21,46.70
    .goto Westfall,41.21,40.75,0
    .complete 12,1 -- Defias Trapper slain (15)
    .complete 12,2 -- Defias Smuggler slain (15)
    .complete 153,1 -- Red Leather Bandana (15)
    .mob Defias Trapper
    .mob Defias Smuggler
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Galiaan|r
	.target Scout Galiaan
    .goto Westfall,54.00,53.00
    .turnin 153 >> Turn in Red Leather Bandanas
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
	.target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 12 >> Turn in The People's Militia
    .accept 13 >> The People's Militia
    .accept 65 >> Accept The Defias Brotherhood
step
    .goto Westfall,56.04,31.23
    .target Farmer Saldean
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
    .accept 9 >> Accept The Killing Fields
step
#loop
    .goto Westfall,37.4,50.6,0
    .goto Westfall,44.8,33.6,0
    .goto Westfall,54.0,32.0,0
    .goto Westfall,51.0,22.0,0
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,80,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,44.47,35.35,60,0
    .goto Westfall,50.80,21.76,60,0
    >>Kill |cRXP_ENEMY_Harvest Watchers|r. Loot them for their |cRXP_LOOT_Flasks of Oil|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5,103,1 --Flask of Oil (5)
    .mob Harvest Watcher
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
	.target Farmer Saldean
    .goto Westfall,56.04,31.23
    .turnin 9 >> Turn in The Killing Fields
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Redridge >> Fly to Redridge
    .target Thor

]])

RXPGuides.RegisterGuide([[
#classic
#version 1
#xprate >2.49
<< Alliance
#group RestedXP Alliance 1-20
#name 17-22 Redridge
#defaultfor !NightElf


step
    #label BMenace
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .goto Redridge Mountains,33.50,48.97
    .accept 20 >> Accept Blackrock Menace
    .target Marshal Marris
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Oslow|r
    .goto Redridge Mountains,32.13,48.63
    .accept 125 >> Accept The Lost Tools
    .target Foreman Oslow
step
#optional
    .goto Redridge Mountains,30.97,47.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
	.target Verner Osgood
    .turnin 119 >> Turn in Return to Verner
    .isOnQuest 119
step
#optional
    .goto Redridge Mountains,30.97,47.27
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
	.target Verner Osgood
    .accept 124 >> Accept A Baying of Gnolls
    .accept 122 >> Accept Underbelly Scales
    .isQuestTurnedIn 119

step
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
	.target Magistrate Solomon
    .accept 120 >> Accept Messenger to Stormwind
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.70,47.40
    .accept 127 >> Accept Selling Fish
step
    .goto Redridge Mountains,26.80,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_walks around inside the Inn|r
	.target Darcy
    .accept 129 >> Accept A Free Lunch
step << !Rogue
    .goto Redridge Mountains,27.0,44.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Brianna|r
    .target Innkeeper Brianna
    .home >> Set your Hearthstone to Lakeshire
    .isQuestAvailable 20
step
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wiley the Black|r upstairs
	.target Wiley the Black
    .turnin 65 >> Turn in The Defias Brotherhood
    .isOnQuest 65
step
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wiley the Black|r up stairs
    .turnin 65 >> Turn in The Defias Brotherhood
    .accept 132 >> Accept The Defias Brotherhood
	.target Wiley the Black
step
#optional
    .goto Redridge Mountains,22.67,43.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Breanna|r
    .accept 92 >> Accept Redridge Goulash
    .turnin 92 >> Turn in Redridge Goulash
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
    .target Chef Breanna
step << Rogue
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >> Turn in Redridge Rendevous
    .accept 2282 >> Accept Alther's Mill
    .target Lucius
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shawn|r
	.target Shawn
    .goto Redridge Mountains,29.31,53.63
    .accept 3741 >> Accept Hilary's Necklace
step
#loop
    >>|cRXP_WARN_Jump into the Lake|r
    >>Open the |cRXP_PICK_Glinting Mud|r. Loot it for |cRXP_LOOT_Hilary's Necklace|r
    >>|cRXP_WARN_It has multiple spawn locations in the Lake|r
    .goto Redridge Mountains,27.80,56.05,0
    .goto Redridge Mountains,26.56,50.63,0
    .goto Redridge Mountains,23.96,55.17,0
    .goto Redridge Mountains,19.16,51.75,0
    .goto Redridge Mountains,31.12,54.21,0
    .goto Redridge Mountains,34.03,55.34,0
    .goto Redridge Mountains,38.09,54.49,0
    .goto Redridge Mountains,19.16,51.75,70,0
    .goto Redridge Mountains,38.09,54.49,70,0
    .complete 3741,1 --Hilary's Necklace (1)
step
    >>Open the |cRXP_PICK_Sunken Chest|r. Loot it for |cRXP_LOOT_Oslow's Toolbox|r
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Oslow|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.13,48.63
    .turnin 125 >> Turn in The Lost Tools
    .accept 89 >> Accept The Everstill Bridge
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >> Turn in Hilary's Necklace
step
    #optional
	#completewith threat1
	>>Kill |cRXP_ENEMY_Black Dragon Whelps|r. Loot them for their |cRXP_LOOT_Scales|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
    .isOnQuest 122
step
    #optional
    #completewith threat1
    >>Kill |cRXP_ENEMY_Great Goretusks|r. Loot them for their |cRXP_LOOT_Great Goretusk Snouts|r
    .collect 2296,5,92,1
    .mob Great Goretusk
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Parker|r
	.target Guard Parker
    .goto Redridge Mountains,15.27,71.45
    .turnin 129 >> Turn in A Free Lunch
    .accept 130 >> Accept Visit the Herbalist
step
    .goto Redridge Mountains,21.22,67.77,45,0
    .goto Redridge Mountains,17.70,73.39,45,0
    .goto Redridge Mountains,11.20,76.31,45,0
    .goto Redridge Mountains,13.37,81.48,45,0
    .goto Redridge Mountains,18.86,73.63
    >>Kill |cRXP_ENEMY_Tarantulas|r. Loot them for their |cRXP_LOOT_Crisp Spider Meat|r
    .collect 1081,5,92,1
    .mob Tarantula
step
#loop
    .goto Redridge Mountains,29.49,82.80,0
    .goto Redridge Mountains,32.52,81.78,0
    .goto Redridge Mountains,43.18,72.22,0
    .goto Redridge Mountains,31.13,82.18,0
    .goto Redridge Mountains,29.49,82.80,45,0
    .goto Redridge Mountains,32.52,81.78,45,0
    .goto Redridge Mountains,43.18,72.22,45,0
    .goto Redridge Mountains,31.13,82.18,45,0
	>>Kill |cRXP_ENEMY_Redridge Mongrels|r and |cRXP_ENEMY_Redridge Poachers|r
    .complete 246,1 --Redridge Mongrel (10)
    .complete 246,2 --Redridge Poacher (6)
    .mob Redridge Mongrel
	.mob Redridge Poacher
step
#label threat1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Feldon|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.73,59.99
    .turnin 246 >> Turn in Assessing the Threat
step << Rogue
    .goto 1433,51.846,45.116
    >>|cRXP_WARN_You MUST do this for your|r |T132290:0|t[Poisons] |cRXP_WARN_quest later|r
    >>|cRXP_WARN_Stand on the waypoint location. Position your camera and cursor until you can click 3 |cRXP_PICK_Practice Lockboxes|r at once without having to move anything|r
    .skill lockpicking,80 >>|cRXP_WARN_Open the |cRXP_PICK_Practice Lockboxes|r on the ground in Alther's Mill until your|r |T136058:0|t[Lockpicking] skill is 80|r
step << Rogue
	.goto Redridge Mountains,52.05,44.69
    >>Open |cRXP_PICK_Lucius's Lockbox|r. Loot it for the |cRXP_LOOT_Token of Thievery|r
    .complete 2282,1 --Token of Thievery (1)
step << Rogue
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucius|r
    .turnin 2282 >> Turn in Alther's Mill
    .target Lucius
step << Rogue
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_walks around inside the Inn|r
	.target Darcy
    .goto Redridge Mountains,26.80,44.30
    .turnin 131 >> Turn in Delivering Daffodils
step << Rogue
    .goto Redridge Mountains,21.85,46.32
    .target Martie Jainrose
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
    .accept 34 >> Accept An Unwelcome Guest
step << Rogue
#completewith xp20
#label Bellygrub
    .goto Redridge Mountains,15.68,49.30
    >>Kill |cRXP_ENEMY_Bellygrub|r. Loot him for his |cRXP_LOOT_Tusk|r
    >>Use your thrown weapon and your ranged runes to kite him back to Lakeshire so the guards can assist you, remember that you need to do at least 50% of the damage to get kill credit
    >>|cRXP_WARN_This quest is VERY difficult. You can skip this step and come back later|r
    .complete 34,1 -- Bellygrub's Tusk (1)
    .mob Bellygrub
step << Rogue
    #completewith xp20
    #requires Bellygrub
    .goto Redridge Mountains,21.85,46.32
    .target Martie Jainrose
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >> Turn in An Unwelcome Guest
step << Rogue
#label xp20
    >> You should be almost level 20 here, if you're not, do the gnoll quests north of Lakeshire or the murloc quests east and grind until you are 20
    .xp 20-1700
step
    #completewith db1
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Stormwind >> Fly to Stormwind
    .target Ariena Stormfeather
step
    #optional
    .goto StormwindClassic,63.982,75.338
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Marcus Jonathan|r
    .turnin 120 >> Turn in Messenger to Stormwind
    .accept 121 >> Accept Messenger to Stormwind
    .target General Marcus Jonathan
    .isQuestTurnedIn 118
step
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 135 >> Turn in The Defias Brotherhood
    .accept 141 >> Accept The Defias Brotherhood
    .target Master Mathias Shaw
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 2360 >> Accept Mathias and the Defias
    .goto StormwindClassic,75.78,59.84
    .target Master Mathias Shaw
step
    .accept 167 >> Accept Oh Brother. . .
    .accept 168 >> Accept Collecting Memories
    .goto StormwindClassic,65.438,21.175
    .target Wilder Thistlenettle
    .target Shoni the Shilent
    .dungeon DM
step
    .goto StormwindClassic,63.982,75.338
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Marcus Jonathan|r
    .turnin 120 >> Turn in Messenger to Stormwind
    .accept 121 >> Accept Messenger to Stormwind
    .target General Marcus Jonathan
step
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smith Argus|r
	.target Smith Argus
    .turnin 118 >> Turn in The Price of Shoes
    .accept 119 >> Accept Return to Verner
step << !Rogue
    .dungeon !DM
    .cooldown item,6948,>120,1
    .hs >> Hearth to Lakeshire
    .zoneskip Redridge Mountains
step << Rogue
    .cooldown item,6948,>120,1
    .hs >> Hearth to Westfall
    .zoneskip Westfall
step << !Rogue
#optional
.dungeon !DM
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge >> Fly to Redridge
    .target Dungar Longdrink
    .zoneskip Redridge Mountains

step
#completewith next
.dungeon DM << !Rogue
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Westfall >> Fly to Westfall
    .target Dungar Longdrink
    .zoneskip Westfall
step << Rogue
.dungeon !DM
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 141 >> Turn in The Defias Brotherhood
    .target Gryan Stoutmantle
step
.dungeon DM
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 141 >> Turn in The Defias Brotherhood
    .accept 142 >> Accept The Defias Brotherhood
    .target Gryan Stoutmantle
step
.dungeon DM
    #completewith next
    .goto Westfall,44.50,69.62,55 >> Travel to Moonbrook
step
.dungeon DM
    .goto Westfall,44.50,69.62
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>Kill the |cRXP_ENEMY_Defias Messenger|r. Loot him for his |cRXP_LOOT_Mysterious Message|r
    >>|cRXP_WARN_The |cRXP_ENEMY_Defias Messenger|r spawns in Moonbrook. He walks along the road north of Moonbrook, to the Gold Coast Quarry and Jangolode Mine. If you don't see him along the road, wait for him to spawn in Moonbrook|r
    >>|cRXP_WARN_He has a 4-5 minute respawn timer|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
step
.dungeon DM
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 142 >> Turn in The Defias Brotherhood
    .target Gryan Stoutmantle
step
.dungeon DM
    .goto Westfall,55.68,47.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Defias Traitor|r
    >>|cRXP_WARN_You may need to wait for |cRXP_FRIENDLY_The Defias Traitor|r to spawn if he's not there|r
    .accept 155 >> Accept The Defias Brotherhood
    .target The Defias Traitor
step
.dungeon DM
    .goto Westfall,42.56,71.71
    >>Escort the |cRXP_FRIENDLY_The Defias Traitor|r to The Deadmines
    >>|cRXP_WARN_Stay beside |cRXP_FRIENDLY_The Defias Traitor|r at all times! Be ready to fight |cRXP_ENEMY_The Defias|r upon reaching Moonbrook|r
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
step
.dungeon DM
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 155 >> Turn in The Defias Brotherhood
    .accept 166 >> Accept The Defias Brotherhood
    .target Gryan Stoutmantle
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Riell|r atop the Tower
    .accept 214 >> Accept Red Silk Bandanas
    .goto Westfall,56.67,47.35
    .target Scout Riell

step
.dungeon DM
    .goto Westfall,60.4,72.2
    .goto Westfall,40.4,71.6
    .subzone 1581 >> Now you should be looking for a group to The Deadmines
    >>Grind gnolls while assembling a Deadmines group
step
.dungeon DM
    .goto Westfall,42.55,71.69
    .subzone 1581 >> Travel to The Deadmines
step
.dungeon DM
    #completewith EnterDM
    >>Kill the |cRXP_ENEMY_Defias|r. Loot them for their |cRXP_LOOT_Bandanas|r
    >>|cRXP_WARN_You may complete this after you enter the Dungeon|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    #completewith next
    >>Kill |cRXP_ENEMY_Skeletal Miners|r, |cRXP_ENEMY_Undead Dynamiters|r and |cRXP_ENEMY_Undead Excavators|r. Loot them for their |cRXP_LOOT_Cards|r
    >>|cRXP_WARN_This is completed OUTSIDE of the Dungeon|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Kill |cRXP_ENEMY_Foreman Thistlenettle|r. Loot him for his |cRXP_LOOT_Badge|r
    >>|cRXP_WARN_This is completed OUTSIDE of the Dungeon|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
.dungeon DM
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Kill |cRXP_ENEMY_Skeletal Miners|r, |cRXP_ENEMY_Undead Dynamiters|r and |cRXP_ENEMY_Undead Excavators|r. Loot them for their |cRXP_LOOT_Cards|r
    >>|cRXP_WARN_This is completed OUTSIDE of the Dungeon|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    #label EnterDM
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >> Enter The Deadmines Dungeon
step
.dungeon DM
    #completewith DMend
    >>Kill the |cRXP_ENEMY_Defias|r inside The Deadmines. Loot them for their |cRXP_LOOT_Bandanas|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    >>Kill |cRXP_ENEMY_Sneed|r. Loot him for the |cRXP_LOOT_Gnoam Sprecklesprocket|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
.dungeon DM
    >>Kill |cRXP_ENEMY_Edwin VanCleef|r. Loot him for his |cRXP_LOOT_Head|r and |T133471:0|t[|cRXP_LOOT_An Unsent Letter|r]
    >>|cRXP_WARN_Use |T133471:0|t[|cRXP_LOOT_An Unsent Letter|r] to start the quest|r
    .collect 2874,1,373 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .accept 373 >> Accept The Unsent Letter
    .use 2874 -- An Unsent Letter
step
.dungeon DM
    #label DMend
    #completewith next
    .goto Westfall,56.33,47.52,100 >> Travel to Sentinel Hill
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r and |cRXP_FRIENDLY_Scout Riell|r atop the Tower
    .turnin 166 >> Turn in The Defias Brotherhood
    .goto Westfall,56.33,47.52
    .turnin -214 >> Turn in Red Silk Bandanas
    .goto Westfall,56.67,47.35
    .target Gryan Stoutmantle
    .target Scout Riell
step
.dungeon DM
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind
    .target Thor
]])
