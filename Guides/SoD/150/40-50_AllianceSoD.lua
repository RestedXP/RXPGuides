RXPGuides.RegisterGuide([[
#version 20
#season 2
#group RXP SOD TEST
#classic
<< Alliance

#name 40-41 Badlands SoD
#next 41-43 STV SoD

step << Warlock
    #label sw1
    >>Abandon the following quests, you will pick them up again later:
    .abandon 196 >> Abandon Raptor Mastery
    .abandon 193 >> Abandon Panther Mastery
step
    .isOnQuest 1467
    .goto Ironforge,67.91,17.50,25,0
    .goto Ironforge,69.93,21.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Roetten Stonehammer|r
    .turnin 1467 >> Turn in Reagents for Reclaimers Inc.
    .target Roetten Stonehammer
step
    .goto Ironforge,74.645,11.742
    .target Prospector Stormpike
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r
    .accept 707 >> Accept Ironband Wants You!
    .turnin 554 >> Turn in Stormpike's Deciphering
step
.dungeon SM
    .goto Ironforge,74.980,12.486
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Librarian Mae Paledust|r
    .turnin 1050 >> Turn in Mythology of the Titans
    .target Librarian Mae Paledust
step
    .goto Ironforge,50.827,5.621
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gerrig Bonegrip|r
    .turnin 653 >> Turn in Myzrael's Allies
    .accept 687 >> Accept Theldurin the Lost
    .target Gerrig Bonegrip
    .isQuestTurnedIn 652
step << !Druid !Hunter !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenthwick|r << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toldren Deepiron|r << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
    .goto Ironforge,51.1,8.7,15,0 << Warlock
    .goto Ironforge,50.343,5.657 << Warlock
    .goto Ironforge,51.495,15.330 << Rogue
    .goto Ironforge,25.207,10.756 << Priest
    .goto Ironforge,27.18,8.60 << Mage
    .goto Ironforge,23.141,6.149 << Paladin
    .trainer >> Train your class spells
    .target Briarthorn << Warlock
    .target Fenthwick << Rogue
    .target Toldren Deepiron << Priest
    .target Dink << Mage
    .target Brandur Ironhammer << Paladin
step << Warlock
    .goto Ironforge,53.2,7.8,15,0
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
    .vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets|r
    .target Jubahl Corpseseeker
step << Warrior/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regnus Thundergranite|r << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r << Warrior
    .goto Ironforge,69.872,82.890 << Hunter
    .goto Ironforge,65.905,88.405 << Warrior
    .trainer >> Train your class spells
    .target Regnus Thundergranite << Hunter
    .target Bilban Tosslespanner << Warrior
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belia Thundergranite|r
    .goto Ironforge,70.856,85.839
    .train 14925 >>Train |T132270:0|t[Growl (Rank 5)]
    .target Belia Thundergranite
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailey Stonemantle|r
    .goto Ironforge,35.90,60.17
    .bankdeposit 5862,5826,4502 >> Deposit the following items into your bank:
    >>|T132385:0|t[Seaforium Booster] -- 5862
    >>|T134332:0|t[Kravel's Scheme] -- 5826
    >>|T134116:0|t[Sample Elven Gem] -- 4502
    .target Bailey Stonemantle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailey Stonemantle|r
    .goto Ironforge,35.90,60.17
    .bankwithdraw 4611,3404,5827 >> Withdraw the following items from your bank:
    >>9 |T134564:0|t[Blue Pearls] (If you have them) -- 4611
    >>|T134304:0|t[Buzzard Wings] (If you have any)-- 3404
    >>|T133469:0|t[Fizzle Brassbolts' Letter] -- 5827
    .target Bailey Stonemantle  
step
    #ah
    #completewith start
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_BUY_Buy the following from the Auction House. This step is optional and will allow you to complete a few extra quests if you have the items|r
    >>|T134564:0|t[Blue Pearl]
    >>|T134800:0|t[Frost Oil]
    >>|T134377:0|t[Gyrochronatom] |cRXP_WARN_(Don't buy this unless you have a|r |T134800:0|t[Frost Oil]|cRXP_WARN_)|r
    >>|T132606:0|t[Patterned Bronze Bracers] |cRXP_WARN_(Don't buy this unless you have a|r |T134377:0|t[Gyrochronatom] |cRXP_WARN_and|r |T134800:0|t[Frost Oil]|cRXP_WARN_)|r
    >>|T134831:0|t[Healing Potion] |cRXP_WARN_and|r |T134798:0|t[Lesser Invisibility Potion] |cRXP_WARN_(Don't buy this unless you have a|r |T134377:0|t[Gyrochronatom] |cRXP_WARN_and|r |T134800:0|t[Frost Oil]|cRXP_WARN_)|r
    .collect 4611,9,705,1 --9/9 Blue Pearls
    .collect 3829,1,713,1 -- Frost Oil
    .collect 4389,1,714,1 -- Gyrochronatom 
    .collect 2868,1,716,1 -- Patterned Bronze Bracers
    .collect 929,1,715,1 -- Healing Potion
    .collect 3823,1,715,1 -- Lesser Invisibility Potion 
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
step
	#label start
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .goto Ironforge,55.501,47.742
    .fly Loch Modan >> Fly to Loch Modan
    .target Gryth Thurden
step
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Hearthstove|r
    .home >> Set your Hearthstone to Thelsamar
    .target Innkeeper Hearthstove
step
    .goto Loch Modan,36.50,48.35,15,0
    .goto Loch Modan,37.067,49.379
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghak Healtouch|r
    .accept 2500 >> Accept Badlands Reagent Run
    .target Ghak Healtouch
step
    #completewith next
    .goto Loch Modan,65.93,65.62,80 >> Travel to Ironband's Excavation Site
step
    .goto Loch Modan,65.934,65.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
    .turnin 707 >> Turn in Ironband Wants You!
    .target Prospector Ironband
    .accept 738 >> Accept Find Agmond
step
    #completewith EnterBandlands
    .goto Loch Modan,47.04,79.27,0
    .goto Loch Modan,46.71,76.90,65,0
    .goto Badlands,49.23,7.80
    .zone Badlands >> Travel to Badlands
step
    #completewith StudyR
    >>Kill |cRXP_ENEMY_Buzzards|r. Loot them for their |cRXP_LOOT_Gizzards|r and |cRXP_LOOT_Wings|r
    >>Kill |cRXP_ENEMY_Coyotes|r. Loot them for their |cRXP_LOOT_Fangs|r
    .complete 2500,1 -- Buzzard Gizzard (5)
    .collect 3404,4,703,1 -- Buzzard Wing (4)
    .complete 2500,2 -- Crag Coyote Fang (10)
    .mob Starving Buzzard
    .mob Buzzard
    .mob Crag Coyote
    .mob Feral Crag Coyote
    .mob Rabid Crag Coyote
    .mob Elder Crag Coyote
step
    #label EnterBandlands
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ryedol|r and |cRXP_FRIENDLY_Sigrun Ironhew|r
    .accept 719 >> Accept A Dwarf and His Tools
    .goto Badlands,53.421,43.393
    .accept 718 >> Accept Mirages
    .goto Badlands,53.802,43.301
    .target Prospector Ryedol 
    -- .goto Badlands,53.421,43.393
    .target Sigrun Ironhew 
    -- .goto Badlands,53.802,43.301
step
    #completewith next
    .goto Badlands,53.20,30.57,0
    .goto Badlands,43.46,30.54,0
    >>Kill |cRXP_ENEMY_Shadowforge Dwarves|r. Loot them for |cRXP_LOOT_Ryedol's Lucky Pick|r
    .complete 719,1
    .mob Shadowforge Tunneler
    .mob Shadowforge Darkweaver
    .mob Shadowforge Chanter
    .mob Shadowforge Warrior
step
    #qremove 3636 --Don't modify this line
step
    .goto Badlands,53.027,33.944
    >>Click the |cRXP_PICK_Crumpled Map|r on the ground
    >>|cRXP_WARN_NOTE: If you quest log is full, skip this step. You will accept it in a moment|r
    .accept 720 >> Accept A Sign of Hope
step << Warrior
    #season 2
    #sticky
    #completewith OgreScrapMetal
    #label RallyingCry
    >>As you're questing through Badlands be on the lookout for a |cRXP_FRIENDLY_Wandering Swordsman|r. If you find him, complete his dialogue to challenge him to combat. Defeating him will award you with |T132339:0|t[|cRXP_FRIENDLY_Ralling Cry|r]
    .collect 213110,1 --Rune of the Commander
    .train 426490,1
step << Warrior
    #season 2
    #sticky
    #requires RallyingCry
    #completewith OgreScrapMetal
    .train 426491 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Commander|r] |cRXP_WARN_to learn|r |T132339:0|t[Rallying Cry]
    .use 213110
step
    .goto Badlands,53.20,30.57,40,0
    .goto Badlands,43.46,30.54,40,0
    .goto Badlands,53.20,30.57,40,0
    .goto Badlands,43.46,30.54
    >>Kill |cRXP_ENEMY_Shadowforge Dwarves|r. Loot them for |cRXP_LOOT_Ryedol's Lucky Pick|r
    .complete 719,1
    .mob Shadowforge Tunneler
    .mob Shadowforge Darkweaver
    .mob Shadowforge Chanter
    .mob Shadowforge Warrior
step
    #completewith next
    .goto Badlands,66.92,23.45,50 >> Travel to Camp Kosh
step << Hunter
    #season 2
    #sticky
    #completewith OgreScrapMetal
    >>|cRXP_WARN_Ogres and Troggs in Badlands can drop a|r |T237388:0|t[|cRXP_LOOT_Primitive Drawing|r] |cRXP_WARN_which starts a runehunt quest. Accept it once you find one. Don't go out of your way to farm it|r
    .accept 78823 >>Accept Terror of the Desert Skies
step
    .goto Badlands,66.601,21.487,10,0
    .goto Badlands,66.604,22.026,10,0
    .goto Badlands,66.164,21.886,10,0
    .goto Badlands,66.92,23.45
    >>Loot the |cRXP_PICK_Supply Crate|r on the ground
    >>|cRXP_WARN_The |cRXP_PICK_Supply Crate|r can spawn in a few locations at Camp Kosh|r
    .complete 718,1
step
--  #era/som
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r and |cRXP_FRIENDLY_Prospector Ryedol|r
    .turnin 718 >> Turn in Mirages
    .accept 733 >> Accept Scrounging
    .goto Badlands,53.802,43.301
    .turnin 719 >> Turn in A Dwarf and His Tools
    .turnin -720 >> Turn in A Sign of Hope
    .goto Badlands,53.421,43.393
    .target Prospector Ryedol 
    -- .goto Badlands,53.421,43.393
    .target Sigrun Ironhew 
    -- .goto Badlands,53.802,43.301
step << skip
	#som
	#phase 3-6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r and |cRXP_FRIENDLY_Prospector Ryedol|r
    .turnin 718 >> Turn in Mirages
    .accept 733 >> Accept Scrounging
    .accept 706 >> Accept Fiery Blaze Enchantments
    .goto Badlands,53.802,43.301
    .turnin 719 >> Turn in A Dwarf and His Tools
    .turnin -720 >> Turn in A Sign of Hope
    .goto Badlands,53.421,43.393
    .target Prospector Ryedol 
    -- .goto Badlands,53.421,43.393
    .target Sigrun Ironhew 
    -- .goto Badlands,53.802,43.301
step
    .goto Badlands,53.027,33.944
    >>Click the |cRXP_PICK_Crumpled Map|r on the ground
    .accept 720 >> Accept A Sign of Hope
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ryedol|r
    .turnin 720 >> Turn in A Sign of Hope
    .goto Badlands,53.421,43.393
    .target Prospector Ryedol 
step
    .goto Badlands,42.220,52.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martek the Exiled|r
    .turnin 1106 >> Turn in Martek the Exiled
    .accept 1108 >> Accept Indurium
    .target Martek the Exiled
step
    #optional
    .goto Badlands,42.388,52.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rigglefuzz|r
    >>|cRXP_WARN_Save the|r |T133581:0|t[Flash Bomb] |cRXP_WARN_reward from this quest for killing|r |cRXP_ENEMY_King Bangalash|r |cRXP_WARN_in STV later|r
    .accept 705 >> Accept Pearl Diving
    .turnin 705 >> Turn in Pearl Diving
    .itemcount 4611,9
    .target Rigglefuzz
step
    .abandon 705 >> Abandon Pearl Diving
step
    .goto Badlands,42.388,52.927
    .target Rigglefuzz
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rigglefuzz|r
    .accept 703 >> Accept Barbecued Buzzard Wings
step
    #optional
    .isQuestComplete 703
    .goto Badlands,42.388,52.927
    .target Rigglefuzz
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rigglefuzz|r
    .turnin 703 >> Turn in Barbecued Buzzard Wings
step
    .goto Badlands,61.939,54.260
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garek|r
    .accept 732 >> Accept Tremors of the Earth
    .target Garek
step
	#som
	#phase 3-6
    .goto Badlands,68.71,52.68,60,0
    .goto Badlands,75.10,66.54,60,0
    .goto Badlands,81.90,31.65
	>>Kill |cRXP_ENEMY_Scalding Whelps|r. Loot them for the |cRXP_LOOT_Black Drake's Heart|r
	>>|cRXP_WARN_You can choose to skip this quest if you wish, as it has a very low drop rate|r
    .complete 706,1 --Black Drake's Heart (1)
    .mob Scalding Whelp
step
    #completewith BossThogrun
    .line Badlands,36.37,71.63,39.75,72.36,43.61,72.61,51.70,73.52,61.89,67.68,54.73,58.52,48.53,53.02,45.44,51.70,41.01,54.95,35.35,56.99,28.17,56.44,19.50,57.77,16.05,64.35,12.51,72.73,12.85,77.42,14.51,79.15,21.83,78.10,25.39,73.02,32.13,74.04,36.37,71.63
    >>Kill |cRXP_ENEMY_Boss Tho'grun|r. Loot him for his |cRXP_LOOT_Sign of the Earth|r
    >>|cRXP_ENEMY_Boss Tho'grun|r |cRXP_WARN_patrols across all of Badlands|r
    .complete 732,1 -- Sign of the Earth (1)
    .unitscan Boss Tho'grun
step
    .goto Badlands,50.892,62.402
    >>Click the |cRXP_PICK_Battered Dwarven Skeleton|r
    .turnin 738 >> Turn in Find Agmond
    .accept 739 >> Accept Murdaloc
step
    #completewith ScrollFragments
    .goto Badlands,49.58,66.66,0
    >>Kill |cRXP_ENEMY_Stonevault Bonesnappers|r and |cRXP_ENEMY_Murdaloc|r. Loot them for their |cRXP_LOOT_Indurium|r
    .complete 739,2 -- Stonevault Bonesnapper slain (12)
    .complete 739,1 -- Murdaloc slain
    .complete 1108,1 -- Indurium Flake (10)
    .mob Stonevault Bonesnapper
    .mob Murdaloc
step
    .isQuestTurnedIn 653
    .goto Badlands,51.386,76.874
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theldurin the Lost|r
    .turnin 687 >> Turn in Theldurin the Lost
    .accept 692 >> Accept The Lost Fragments
    .target Theldurin the Lost
step
    .goto Badlands,54.66,83.91
    >>Kill |cRXP_ENEMY_Enraged Rock Elementals|r. Loot them for their |cRXP_LOOT_Scroll Fragments|r
    .complete 692,1
    .complete 692,2
    .complete 692,3
    .isOnQuest 692
    .mob Enraged Rock Elemental  
step
    #label ScrollFragments
    .isOnQuest 692
    .goto Badlands,51.386,76.874
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theldurin the Lost|r
    .turnin 692 >> Turn in The Lost Fragments
    .target Theldurin the Lost
step
    >>Kill |cRXP_ENEMY_Stonevault Bonesnappers|r and |cRXP_ENEMY_Murdaloc|r. Loot them for their |cRXP_LOOT_Indurium|r
    .complete 739,2 -- Stonevault Bonesnapper slain (12)
    .goto Badlands,53.0,72.2,40,0
    .goto Badlands,47.2,70.6,40,0
    .goto Badlands,52.4,66.2,40,0
    .goto Badlands,50.36,69.12
    .complete 739,1 -- Murdaloc slain
    .goto Badlands,49.58,66.66
    .complete 1108,1 -- Indurium Flake (10)
    .goto Badlands,53.0,72.2,40,0
    .goto Badlands,47.2,70.6,40,0
    .goto Badlands,52.4,66.2,40,0
    .goto Badlands,50.36,69.12
    .mob Stonevault Bonesnapper
    .mob Murdaloc
step
    .goto Badlands,42.220,52.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martek the Exiled|r
    .turnin 1108 >> Turn in Indurium
    .timer 15,Indurium RP -- wip timer guesstimate
    .accept 1137 >> Accept News for Fizzle
    .target Martek the Exiled
step
    #optional
    .goto Badlands,25.948,44.868
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .target Lotwil Veriatus
    .accept 713 >> Accept Coolant Heads Prevail
    .turnin 713 >> Turn in Coolant Heads Prevail
    .itemcount 3829,1
step
    #optional
    .goto Badlands,25.948,44.868
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .target Lotwil Veriatus
    .accept 714 >> Accept Gyro... What?
    .turnin 714 >> Turn in Gyro... What?
    .itemcount 4389,1
    .isQuestTurnedIn 713
step
    .goto Badlands,25.948,44.868
    .target Lotwil Veriatus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .accept 710 >> Accept Study of the Elements: Rock
step
    .goto Badlands,21.2,45.8,60,0
    .goto Badlands,18.0,42.8,60,0
    .goto Badlands,13.8,38.6,60,0
    .goto Badlands,21.2,45.8,60,0
    .goto Badlands,18.0,42.8
    >>Kill |cRXP_ENEMY_Lesser Rock Elementals|r. Loot them for their |cRXP_LOOT_Small Stone Shards|r and |cRXP_LOOT_Rock Elemental Shards|r
    >>|cRXP_WARN_You don't have to collect all |cRXP_LOOT_Rock Elemental Shards|r right now|r
    .complete 710,1 -- Small Stone Shard (10)
    .complete 2500,3 -- Rock Elemental Shard (5)
    .disablecheckbox
    .mob Lesser Rock Elemental
step
    .goto Badlands,25.948,44.868
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .turnin 710 >> Turn in Study of the Elements: Rock
    .accept 711 >> Accept Study of the Elements: Rock
    .target Lotwil Veriatus
step
    .goto Badlands,14.70,35.30
    >>Kill |cRXP_ENEMY_Rock Elementals|r. Loot them for their |cRXP_LOOT_Large Stone Slabs|r and |cRXP_LOOT_Rock Elemental Shards|r
    >>|cRXP_WARN_You don't have to collect all |cRXP_LOOT_Rock Elemental Shards|r right now|r
    .complete 711,1 -- Large Stone Slab (3)
    .complete 2500,3 -- Rock Elemental Shard (5)
    .disablecheckbox
    .mob Rock Elemental
step
    .goto Badlands,25.948,44.868
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .turnin 711 >> Turn in Study of the Elements: Rock
    .accept 712 >> Accept Study of the Elements: Rock
    .target Lotwil Veriatus
step
    #completewith next
    #label OgreScrapMetal
    >>Kill |cRXP_ENEMY_Dustbelcher Ogres|r. Loot them for their |cRXP_LOOT_Scrap Metal|r
    .complete 733,1 -- Scrap Metal (7)
    .mob Dustbelcher Wyrmhunter
    .mob Dustbelcher Mauler
    .mob Dustbelcher Shaman
step
    .goto Badlands,4.33,77.75,70,0
    .goto Badlands,2.70,81.25,50,0
    .goto Badlands,14.68,89.49,70,0
    .goto Badlands,2.70,81.25
    >>Kill |cRXP_ENEMY_Greater Rock Elementals|r. Loot them for their |cRXP_LOOT_Bracers|r and |cRXP_LOOT_Rock Elemental Shards|r
    .complete 712,1 -- Bracers of Rock Binding (5)
    .complete 2500,3 -- Rock Elemental Shard (5)
    .mob Greater Rock Elemental
step
    #label StudyR
    .goto Badlands,13.6,74.8
    .goto Badlands,8.6,75.8,55,0
    .goto Badlands,11.0,80.0,55,0
    .goto Badlands,8.0,83.6,55,0
    .goto Badlands,8.6,75.8,55,0
    .goto Badlands,11.0,80.0,55,0
    .goto Badlands,8.0,83.6,55,0
    .goto Badlands,11.0,80.0
    >>Kill |cRXP_ENEMY_Dustbelcher Ogres|r. Loot them for their |cRXP_LOOT_Scrap Metal|r
    .complete 733,1 -- Scrap Metal (7)
    .mob Dustbelcher Wyrmhunter
    .mob Dustbelcher Mauler
    .mob Dustbelcher Shaman
step
    >>Kill |cRXP_ENEMY_Buzzards|r. Loot them for their |cRXP_LOOT_Gizzards|r and |cRXP_LOOT_Wings|r
    >>Kill |cRXP_ENEMY_Coyotes|r. Loot them for their |cRXP_LOOT_Fangs|r
    .complete 2500,1 -- Buzzard Gizzard (5)
    .goto Badlands,49.8,53.0,80,0
    .goto Badlands,56.2,67.2,80,0
    .goto Badlands,50.6,74.8,80,0
    .goto Badlands,60.0,70.6,80,0
    .goto Badlands,60.8,53.4,80,0
    .goto Badlands,55.8,60.2
    .complete 703,1 -- Buzzard Wing (4)
    .goto Badlands,49.8,53.0,80,0
    .goto Badlands,56.2,67.2,80,0
    .goto Badlands,50.6,74.8,80,0
    .goto Badlands,60.0,70.6,80,0
    .goto Badlands,60.8,53.4,80,0
    .goto Badlands,55.8,60.2
    .complete 2500,2 -- Crag Coyote Fang (10)
    .goto Badlands,49.0,32.4,80,0
    .goto Badlands,49.2,48.8,80,0
    .goto Badlands,57.8,47.7,80,0
    .goto Badlands,56.6,73.8,80,0
    .goto Badlands,58.8,54.0
    .mob Starving Buzzard
    .mob Buzzard
    .mob Giant Buzzard
    .mob Crag Coyote
    .mob Feral Crag Coyote
    .mob Rabid Crag Coyote
    .mob Elder Crag Coyote
step
    .goto Badlands,25.948,44.868
    .target Lotwil Veriatus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .turnin 712 >> Turn in Study of the Elements: Rock
step
    #optional
    .isQuestTurnedIn 714
    .goto Badlands,25.948,44.868
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .target Lotwil Veriatus
    .accept 734 >> Accept This Is Going to Be Hard
step
    #optional
    .isQuestTurnedIn 714
    .goto Badlands,25.82,44.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucien Tosselwrench|r
    .turnin 734 >>Turn in This Is Going to Be Hard
    .target Lucien Tosselwrench
    .accept 777 >>Accept This Is Going to Be Hard
step
    #optional
    .isQuestTurnedIn 714
    .target Lucien Tosselwrench
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucien Tosselwrench|r
    .accept 716 >>Accept Stone Is Better than Cloth
    .turnin 716 >>Turn in Stone Is Better than Cloth
    .itemcount 2868,1
step
    #optional
    .isQuestTurnedIn 714
    .target Lucien Tosselwrench
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucien Tosselwrench|r
    .accept 715 >>Accept Liquid Stone
    .turnin 715 >>Turn in Liquid Stone
    .itemcount 3823,1
    .itemcount 929,1
step
    #optional
    .isQuestTurnedIn 714
    .goto Badlands,25.948,44.868
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .turnin 777 >>Turn in This Is Going to Be Hard
    .target Lotwil Veriatus
    .accept 778 >>Accept This Is Going to Be Hard
step
    #optional
    .isQuestTurnedIn 714
    .goto Badlands,26.07,46.69
    >>Kill the |cRXP_ENEMY_Fam'Retor Guardian|r. Loot it for its |cRXP_LOOT_Shackles|r
    .complete 778,1 --Lotwil's Shackles of Elemental Binding (1)
    .mob Fam'retor Guardian
step
    #optional
    #label LFGUlda
    .isQuestTurnedIn 714
    .goto Badlands,25.948,44.868
    .target Lotwil Veriatus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotwil Veriatus|r
    .turnin 778 >>Turn in This Is Going to Be Hard
step
    .goto Badlands,42.388,52.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rigglefuzz|r
    .turnin 703 >> Turn in Barbecued Buzzard Wings
    .target Rigglefuzz
step
--  #era/som
    #label BossThogrun
    .goto Badlands,53.802,43.301
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r
    .turnin 733 >> Turn in Scrounging
    .target Sigrun Ironhew
----SOMCHANGE
step << skip
	#som
	#phase 3-6
    #label BossThogrun
    .isQuestComplete 733
    .isQuestComplete 706
    .goto Badlands,53.802,43.301
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r
    .turnin 733 >> Turn in Scrounging
    .turnin 706 >> Turn in Fiery Blaze Enchantments
    .target Sigrun Ironhew
step << skip
	#som
	#phase 3-6
    #label BossThogrun
    .isQuestComplete 733
    .goto Badlands,53.802,43.301
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r
    .turnin 733 >> Turn in Scrounging
    .target Sigrun Ironhew
step << skip
	#som
	#phase 3-6
    #label BossThogrun
    .isQuestComplete 706
    .goto Badlands,53.802,43.301
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sigrun Ironhew|r
    .turnin 706 >> Turn in Fiery Blaze Enchantments
    .target Sigrun Ironhew
step
#loop
	.line Badlands,36.37,71.63,39.75,72.36,43.61,72.61,51.70,73.52,61.89,67.68,54.73,58.52,48.53,53.02,45.44,51.70,41.01,54.95,35.35,56.99,28.17,56.44,19.50,57.77,16.05,64.35,12.51,72.73,12.85,77.42,14.51,79.15,21.83,78.10,25.39,73.02,32.13,74.04,36.37,71.63
	.goto Badlands,36.37,71.63,60,0
	.goto Badlands,39.75,72.36,60,0
	.goto Badlands,43.61,72.61,60,0
	.goto Badlands,51.70,73.52,60,0
	.goto Badlands,61.89,67.68,60,0
	.goto Badlands,54.73,58.52,60,0
	.goto Badlands,48.53,53.02,60,0
	.goto Badlands,45.44,51.70,60,0
	.goto Badlands,41.01,54.95,60,0
	.goto Badlands,35.35,56.99,60,0
	.goto Badlands,28.17,56.44,60,0
	.goto Badlands,19.50,57.77,60,0
	.goto Badlands,16.05,64.35,60,0
	.goto Badlands,12.51,72.73,60,0
	.goto Badlands,12.85,77.42,60,0
	.goto Badlands,14.51,79.15,60,0
	.goto Badlands,21.83,78.10,60,0
	.goto Badlands,25.39,73.02,60,0
	.goto Badlands,32.13,74.04,60,0
	.goto Badlands,36.37,71.63,60,0
    >>Kill |cRXP_ENEMY_Boss Tho'grun|r. Loot him for his |cRXP_LOOT_Sign of the Earth|r
    >>|cRXP_ENEMY_Boss Tho'grun|r |cRXP_WARN_patrols across all of Badlands|r
    .complete 732,1 -- Sign of the Earth (1)
    .unitscan Boss Tho'grun
step
    .goto Badlands,61.939,54.260
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Garek|r
    .turnin 732 >> Turn in Tremors of the Earth
    .target Garek
step
    #optional
    #completewith Murdaloc
    .abandon 706 >> Abandon Fiery Blaze Enchantments
step
    #softcore
    #completewith next
    .goto Badlands,3.62,61.88,50,0
    .goto Searing Gorge,72.34,55.47
	.zone Searing Gorge >> Ride to Searing Gorge
step
    #softcore
    #completewith next
    .goto Searing Gorge,63.40,60.83
    .deathskip >> Once you get to Searing Gorge, die and respawn at Thorium Point 
    .target Spirit Healer
step
    #softcore
    .goto Searing Gorge,37.934,30.861
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanie Reed|r
    .fp Thorium Point >> Get the Thorium Point flight path
    .target Lanie Reed
step << Druid
	#completewith next
	.cast 18960 >> Cast Teleport: Moonglade
	.zoneskip Moonglade
step << Druid
	>>Teleport to Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
	.goto Moonglade,52.53,40.56
    .trainer >> Train your class spells
    .target Loganaar
step << Mage
    #completewith next
    .zone Ironforge >>Teleport to Ironforge
step << Mage
    .goto Ironforge,27.169,8.579
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
    .trainer >> Train your class spells
    .target Dink
step << Warlock
	#softcore
    .zone Loch Modan >> If you didn't abandon the Panther and Tiger quests earlier, Hearth to Loch Modan. If you did, Fly to Loch Modan
step << !Warlock
    .hs >> Hearth to Loch Modan
	>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step << Warlock
    #hardcore
    #completewith next
    .zone Loch Modan >> Run Back to Loch Modan
step << Warlock
    #hardcore
    .goto Loch Modan,65.934,65.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
    .turnin 739 >> Turn in Murdaloc
    .target Prospector Ironband
step
    .goto Loch Modan,36.50,48.35,15,0
    .goto Loch Modan,37.067,49.379
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghak Healtouch|r
    .turnin 2500 >> Turn in Badlands Reagent Run
    .target Ghak Healtouch
step
    #completewith FlyIF
    .destroy 7846 >> Delete any extra |T134298:0|t[Crag Coyote Fangs] you still have
step
    #label Murdaloc
    .goto Loch Modan,65.934,65.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
    .turnin 739 >> Turn in Murdaloc
    .target Prospector Ironband
step
	#softcore
    #completewith next
    .goto Loch Modan,68.47,62.82
    .deathskip >> Die on purpose and respawn at the Thelsamar Spirit Healer
    .target Spirit Healer
step
    #label FlyIF
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Fly to Ironforge
    .target Thorgrum Borrelson
]])

RXPGuides.RegisterGuide([[
#version 20
#season 2
#group RXP SOD TEST
#classic
<< Alliance

#name 41-43 STV SoD
#next 43-44 Tanaris SoD << !Warlock
#next 43-44 Tanaris/Dustwallow SoD << Warlock

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailey Stonemantle|r
    .goto Ironforge,35.90,60.17
    .bankwithdraw 3684,3660,5826,4502 >> Withdraw the following items from your bank: 
    >>|T134332:0|t[Kravel's Scheme] -- 5826
    >>|T134116:0|t[Sample Elven Gem] -- 4502
    >>|T132767:0|t[Perenolde Tiara] (If you have it) -- 3684
    >>|T132761:0|t[Tomes of Alterac] (If you have it) -- 3660
    .target Bailey Stonemantle  
step << !Druid !Hunter !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenthwick|r << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toldren Deepiron|r << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
    .goto Ironforge,51.1,8.7,15,0 << Warlock
    .goto Ironforge,50.343,5.657 << Warlock
    .goto Ironforge,51.495,15.330 << Rogue
    .goto Ironforge,25.207,10.756 << Priest
    .goto Ironforge,27.18,8.60 << Mage
    .goto Ironforge,23.141,6.149 << Paladin
    .trainer >> Train your class spells
    .target Briarthorn << Warlock
    .target Fenthwick << Rogue
    .target Toldren Deepiron << Priest
    .target Dink << Mage
    .target Brandur Ironhammer << Paladin
step << Warlock
    .goto Ironforge,53.2,7.8,15,0
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
    .vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your pets|r
    .target Jubahl Corpseseeker
step << Warrior/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regnus Thundergranite|r << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r << Warrior
    .goto Ironforge,69.872,82.890 << Hunter
    .goto Ironforge,65.905,88.405 << Warrior
    .trainer >> Train your class spells
    .target Regnus Thundergranite << Hunter
    .target Bilban Tosslespanner << Warrior
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belia Thundergranite|r
    .goto Ironforge,70.856,85.839
    .trainer >> Ensure your pets |T135850:0|t[Frost Resistance] is maxed
    .target Belia Thundergranite
step
    #completewith start
    .goto Ironforge,78.00,52.00,5,0
    .zone Stormwind City >> Enter the Deeprun Tram. Take the tram to Stormwind
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_if needed while waiting for the tram|r
step
    .goto Stormwind City,74.010,30.231
    .target Count Remington Ridgewell
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Count Remington Ridgewell|r
    .turnin 543 >> Turn in The Perenolde Tiara
    .isQuestComplete 543
step
    .goto Stormwind City,74.182,7.465
    .target Milton Sheaf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
    .turnin 542 >> Turn in Return to Milton
    .isOnQuest 542
step
.dungeon RFD
    .goto Stormwind City,39.592,27.199
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archbishop Benedictus|r
    .turnin 3636 >> Turn in Bring the Light
    .target Archbishop Benedictus
    .isQuestComplete 3636
step
    #ah
    .goto Stormwind City,57.06,73.05
    .goto Stormwind City,53.612,59.764
    +|cRXP_WARN_Check your bank for any missing|r |T134332:0|t[Green Hills of Stranglethorn - Pages] |cRXP_WARN_and buy any that you still need from the Auction House|r
    >>|cRXP_WARN_Chapter.1 requires: Pages 1,4,6,8|r
    >>|cRXP_WARN_Chapter.2 requires: Pages 10,11,14,16|r
    >>|cRXP_WARN_Chapter.3 requires: Pages 18,20,21,24|r
    >>|cRXP_WARN_Chapter.4 requires: Pages 25,26,27|r
    >>|cRXP_WARN_Place any newly bought Pages into your bank. Skip this step if you aren't able to aquire them|r
    .target Newton Burnside
    .target Auctioneer Jaxon
step <<  Warlock
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Allison|r
    .home >> Set your Hearthstone to Stormwind City
    .target Innkeeper Allison
step << Warlock
    #completewith next
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Westfall >> Fly to Westfall
    .target Dungar Longdrink
step << Warlock
    #completewith next
    .goto Stranglethorn Vale,35.658,10.808,100 >> Travel to Nesingwary's Expedition in STV
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r and |cRXP_FRIENDLY_Hemet Nesingwary|r
    .accept 193 >> Accept Panther Mastery
    .goto Stranglethorn Vale,35.556,10.546
    .accept 196 >> Accept Raptor Mastery
    .goto Stranglethorn Vale,35.658,10.808
    .target Sir S. J. Erlgadin
    .target Hemet Nesingwary
step << Warlock
    .hs >> Hearth to Stormwind
	>>|cRXP_BUY_Buy food/water if needed|r
    .zoneskip Stormwind City
step << Priest
    #season 2
    >>|cRXP_WARN_Find a Rogue with the|r |T132299:0|t[Master of Subtlety] |cRXP_WARN_rune and|r |T338666:0|t[Jani's Charm] |cRXP_WARN_trinket to|r |T133644:0|t[Pick Pocket] |cRXP_WARN_any |cRXP_ENEMY_Bloodscalp Troll|r in Stranglethorn Vale for the|r |T237446:0|t[Mysterious Troll Scroll]|cRXP_WARN_. A Mage must then use a|r |T135933:0|t[Comprehension Charm] |cRXP_WARN_to decipher it for it to become a |T134938:0|t[|cRXP_LOOT_Deciphered Troll Scroll|r]|r
    >>|cRXP_WARN_Alternatively buy a|r |T237446:0|t[Mysterious Troll Scroll]|r |cRXP_WARN_from the Auction House and have a Mage decipher it, or buy the already |T134938:0|t[|cRXP_LOOT_Deciphered Troll Scroll|r]|r
    .use 216880 >>|cRXP_WARN_Use the |T134938:0|t[|cRXP_LOOT_Deciphered Troll Scroll|r] to start the quest|r
    >>|cRXP_WARN_You may also look for a Priest to share the quest with you|r
    >>|cRXP_WARN_You can also check the AH for the prices of|r |T134329:0|t[|cRXP_LOOT_Wastewander Cipher|r] |cRXP_WARN_and|r |T134939:0|t[|cRXP_LOOT_Coded Warlock Notes|r]|cRXP_WARN_. Buy them if they're affordable. You will need them to unlock|r |T237567:0|t[Pain and Suffering] |cRXP_WARN_later. Both of these items can be farmed alone if they're too expensive|r
    .collect 216880,1 --Deciphered Troll Scroll
    .disablecheckbox
    .collect 221547,1 --Coded Warlock Notes
    .collect 221549,1 --Wastewander Cipher
    .accept 79731 >> Accept The Troll Scroll
step << Priest
    #season 2
    .train 425314,1
    #completewith next
    +|cRXP_WARN_Ensure you have 2 active running|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buffs before flying|r
step
    #label start
    .goto Stormwind City,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Booty Bay>> Fly to Booty Bay
    .target Dungar Longdrink
step
    .isQuestComplete 1116
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r up stairs
    .goto Stranglethorn Vale,26.943,77.207
    .turnin 1116 >>Turn in Dream Dust in the Swamp
    .target Krazek
step
    #optional
    .goto Stranglethorn Vale,26.943,77.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
    .accept 627 >> Accept Favor for Krazek
    .turnin 627 >> Turn in Favor for Krazek
    .accept 622 >> Accept Return to Corporal Kaleb
    .itemcount 4278,4 -- Lesser Bloodstone Ore (4)
    .target Krazek
step
    #optional
    .isQuestTurnedIn 627
    .goto Stranglethorn Vale,26.943,77.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
    .accept 622 >> Accept Return to Corporal Kaleb
    .target Krazek
step
    .goto Stranglethorn Vale,27.173,77.007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
    .turnin 669 >> Turn in Sunken Treasure
    .target Fleet Master Seahorn
step
    .goto Stranglethorn Vale,27.283,77.529
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Catelyn the Blade|r inside the Inn
    .turnin 603 >> Turn in Ansirem's Key
    .accept 610 >> Accept "Pretty Boy" Duncan
    .target Catelyn the Blade
step
    .goto Stranglethorn Vale,27.120,77.208
    .target Crank Fizzlebub
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .accept 621 >> Accept Zanzil's Secret
step
    .goto Stranglethorn Vale,27.120,77.208
    .target Crank Fizzlebub
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Crank Fizzlebub|r
    .turnin 1118 >> Turn in Back to Booty Bay
    .isOnQuest 1118
step
    .goto Stranglethorn Vale,27.039,77.310
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Skindle|r
    .home >> Set your Hearthstone to Booty Bay
    .target Innkeeper Skindle
step
    .goto Stranglethorn Vale,26.756,76.383
    .target Privateer Bloads
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Privateer Bloads|r
    .accept 617 >> Accept Akiris by the Bundle
step
    .goto Stranglethorn Vale,27.782,77.071
    .target "Sea Wolf" MacKinley
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .accept 606 >> Accept Scaring Shaky
step
    .goto Stranglethorn Vale,28.294,77.592
    .target Drizzlik
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
    .accept 628 >> Accept Excelsior
step
    .goto Stranglethorn Vale,28.096,76.217
    .target First Mate Crazz
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Crazz|r
    .accept 595 >> Accept The Bloodsail Buccaneers
step
    #completewith next
    >>Kill |cRXP_ENEMY_"Pretty Boy" Duncan|r. Loot him for |cRXP_LOOT_Catelyn's Blade|r
    .complete 610,1
    .mob "Pretty Boy" Duncan
step
    .goto Stranglethorn Vale,27.278,69.521
    >>Click the |cRXP_PICK_Bloodsail Correspondence|r on top of the barrel
    .turnin 595 >> Turn in The Bloodsail Buccaneers
    .accept 597 >> Accept The Bloodsail Buccaneers
step
    .goto Stranglethorn Vale,27.40,69.39
    >>Kill |cRXP_ENEMY_"Pretty Boy" Duncan|r. Loot him for |cRXP_LOOT_Catelyn's Blade|r
    .complete 610,1
    .mob "Pretty Boy" Duncan
step
    .goto Stranglethorn Vale,28.096,76.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_First Mate Crazz|r
    .turnin 597 >> Turn in The Bloodsail Buccaneers
    .accept 599 >> Accept The Bloodsail Buccaneers
    .target First Mate Crazz
step
    .goto Stranglethorn Vale,27.283,77.529
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Catelyn the Blade|r
    .turnin 610 >> Turn in "Pretty Boy" Duncan
    .accept 611 >> Accept The Curse of the Tides
    .target Catelyn the Blade
step << !Warlock
    .goto Stranglethorn Vale,26.920,77.347
    .target Deeg
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deeg|r
    .accept 587 >> Accept Up to Snuff
step
    .goto Stranglethorn Vale,27.173,77.007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
    .turnin 599 >> Turn in The Bloodsail Buccaneers
    .target Fleet Master Seahorn
step
    .goto Stranglethorn Vale,28.591,75.899
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzy One-Eye|r
    .accept 576 >> Accept Keep An Eye Out
    .target Dizzy One-Eye
step
    .goto Stranglethorn Vale,31.88,67.28,70,0
    .goto Stranglethorn Vale,33.46,65.17,70,0
    .goto Stranglethorn Vale,33.43,62.94,70,0
    .goto Stranglethorn Vale,34.27,64.75,70,0
    .goto Stranglethorn Vale,31.88,67.28,70,0
    .goto Stranglethorn Vale,33.46,65.17
    >>Kill |cRXP_ENEMY_Elder Mistvale Gorillas|r. Loot them for their |cRXP_LOOT_Mistvale Giblets|r and |cRXP_LOOT_Gorilla Fangs|r
    >>|cRXP_WARN_Save the |cRXP_LOOT_Gorilla Fangs|r for a later quest|r
    .complete 606,1 -- Mistvale Giblets (5)
    .mob Elder Mistvale Gorilla
step
    .goto Stranglethorn Vale,27.27,49.48,70,0
    .goto Stranglethorn Vale,28.13,47.27,70,0
    .goto Stranglethorn Vale,28.66,43.72,70,0
    .goto Stranglethorn Vale,31.22,43.40,70,0
    .goto Stranglethorn Vale,31.85,40.88
    >>Kill |cRXP_ENEMY_Jungle Stalkers|r
    .complete 196,1 -- Jungle Stalker slain (10)
    .mob Jungle Stalker
step
    .goto Stranglethorn Vale,28.41,46.88,0
    .goto Stranglethorn Vale,31.12,43.17,0
    .goto Stranglethorn Vale,28.41,46.88,55,0
    .goto Stranglethorn Vale,28.71,43.81,55,0
    .goto Stranglethorn Vale,31.12,43.17,55,0
    .goto Stranglethorn Vale,31.76,41.34,55,0
    .goto Stranglethorn Vale,31.12,43.17,55,0
    .goto Stranglethorn Vale,28.71,43.81,55,0
    .goto Stranglethorn Vale,28.41,46.88,55,0
    .goto Stranglethorn Vale,31.12,43.17
    >>Kill |cRXP_ENEMY_Tethis|r. Loot him for his |cRXP_LOOT_Talon|r
    >>|cRXP_ENEMY_Tethis|r |cRXP_WARN_will patrol around in this location|r
    >>Skip this step if you aren't on this quest
    .isOnQuest 197
    .complete 197,1 -- Talon of Tethis (1)
    .unitscan Tethis
step << Mage
    #season 2
    .train 415948,1
    .train 401762,1
    #completewith SpellfrostFrostfire
    >>Kill |cRXP_ENEMY_Skullsplitter Mystics|r. Loot them for the |T134939:0|t[|cRXP_LOOT_Spell Notes: PELFRB STOLLOTS]|r and |T134939:0|t[|cRXP_LOOT_Spell Notes: TROFF IRESTBOL|r]
    >>|cRXP_WARN_Note: You will need to buy|r |T135933:0|t[Comprehension Charms] |cRXP_BUY_from a |cRXP_FRIENDLY_Reagent Vendor|r later to learn the runes|r
    .collect 213127,1
    .collect 217161,1
    .mob Skullsplitter Mystic
    .itemcount 211779,<1 -- Comprehension Charm. step shows if they have 0 in bag
step << Mage
    #season 2
    .train 415948,1
    .train 401762,1
    #completewith SpellfrostFrostfire
    >>Kill |cRXP_ENEMY_Skullsplitter Mystics|r. Loot them for the |T134939:0|t[|cRXP_LOOT_Spell Notes: PELFRB STOLLOTS]|r and |T134939:0|t[|cRXP_LOOT_Spell Notes: TROFF IRESTBOL|r]
    .collect 213127,1
    .collect 217161,1
    .mob Skullsplitter Mystic
    .itemcount 211779,1 -- Comprehension Charm
step << Mage
    #label SpellfrostFrostfire
    .goto Stranglethorn Vale,42.07,36.02,50,0
    .goto Stranglethorn Vale,46.21,32.22,50,0 
    .goto Stranglethorn Vale,42.07,36.02,50,0
    .goto Stranglethorn Vale,46.21,32.22
    .goto Stranglethorn Vale,42.07,36.02,0
    .goto Stranglethorn Vale,47.43,40.20,0
    .goto Stranglethorn Vale,45.78,42.27,0
    >>Kill |cRXP_ENEMY_Skullsplitter Mystics|r and |cRXP_ENEMY_Skullsplitter Witch Doctors|r. Loot them for their |cRXP_LOOT_Skullsplitter Fetishes|r
    .complete 205,1 -- Skullsplitter Fetish (4)
    .mob Skullsplitter Mystic
    .mob Skullsplitter Witch Doctor
step << Mage
    #season 2
    .train 415948,1
    .train 401762,1
    .goto Stranglethorn Vale,42.07,36.02,50,0
    .goto Stranglethorn Vale,46.21,32.22,50,0 
    .goto Stranglethorn Vale,42.07,36.02,50,0
    .goto Stranglethorn Vale,46.21,32.22
    .goto Stranglethorn Vale,42.07,36.02,0
    .goto Stranglethorn Vale,47.43,40.20,0
    .goto Stranglethorn Vale,45.78,42.27,0
    >>|cRXP_WARN_Note: You will need to buy|r |T135933:0|t[Comprehension Charms] |cRXP_BUY_from a |cRXP_FRIENDLY_Reagent Vendor|r later to learn the runes|r
    .collect 213127,1
    .collect 217161,1
    .mob Skullsplitter Mystic
    .itemcount 211779,<1 -- Comprehension Charm. step shows if they have 0 in bag
step << Mage
    #season 2
    .train 415948,1
    .train 401762,1
    .goto Stranglethorn Vale,42.07,36.02,50,0
    .goto Stranglethorn Vale,46.21,32.22,50,0 
    .goto Stranglethorn Vale,42.07,36.02,50,0
    .goto Stranglethorn Vale,46.21,32.22
    .goto Stranglethorn Vale,42.07,36.02,0
    .goto Stranglethorn Vale,47.43,40.20,0
    .goto Stranglethorn Vale,45.78,42.27,0
    >>Kill |cRXP_ENEMY_Skullsplitter Mystics|r. Loot them for the |T134939:0|t[|cRXP_LOOT_Spell Notes: PELFRB STOLLOTS]|r and |T134939:0|t[|cRXP_LOOT_Spell Notes: TROFF IRESTBOL|r]
    .collect 213127,1
    .collect 217161,1
    .mob Skullsplitter Mystic
    .itemcount 211779,1 -- Comprehension Charm. step shows if they have at least 1 in bag
step << Mage
    #season 2
    .train 415948 >> |cRXP_WARN_Use the|r |T134939:0|t[|cRXP_LOOT_Spell Notes: PELFRB STOLLOTS|r] |cRXP_WARN_to train|r |T135780:0|t[Spellfrost Bolt]
    .train 401762 >> |cRXP_WARN_Use the|r |T134939:0|t[|cRXP_LOOT_Spell Notes: TROFF IRESTBOL|r] |cRXP_WARN_to train|r |T236217:0|t[Frostfire Bolt]
    .use 213127
    .use 217161
    .itemcount 211779,1 -- Comprehension Charm
step
    .goto Stranglethorn Vale,47.2,28.0,35,0
    .goto Stranglethorn Vale,49.8,24.6,35,0
    .goto Stranglethorn Vale,48.4,19.2,35,0
    .goto Stranglethorn Vale,49.54,24.17
    .goto Stranglethorn Vale,47.2,28.0,0
    .goto Stranglethorn Vale,49.8,24.6,0
    .goto Stranglethorn Vale,48.4,19.2,0
    >>Kill |cRXP_ENEMY_Bhag'thera|r. Loot him for the |cRXP_LOOT_Fang of Bhag'thera|r
    >>|cRXP_ENEMY_Bhag'thera|r |cRXP_WARN_can spawn north or west of the Mosh'Ogg Ogre Mound|r
    >>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and locate|r |cRXP_ENEMY_Bhag'thera|r << Hunter
    .complete 193,1 -- Fang of Bhag'thera
    .unitscan Bhag'thera
step
    #completewith next
    .goto Stranglethorn Vale,46.30,7.61,30 >> Enter The Stockpile (Kurzen's Cave)
step
    .isOnQuest 202
    >>Kill |cRXP_ENEMY_Kurzen Elites|r and |cRXP_ENEMY_Kurzen Subchiefs|r
    >>Kill |cRXP_ENEMY_Colonel Kurzen|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_If you can't kill |cRXP_ENEMY_Colonel Kurzen|r skip this step|r
    .complete 202,1 -- Kurzen Elite slain (6)
    .complete 202,2 -- Kurzen Subchief slain (4)
    .complete 202,3 -- Kurzen's Head
    .mob Kurzen Elite
    .mob Kurzen Subchief
    .mob Colonel Kurzen
step << Mage
    .goto Stranglethorn Vale,37.832,3.559
    .target Brother Nimetz
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Nimetz|r
    .turnin 205 >> Turn in Troll Witchery
step
    .goto Stranglethorn Vale,38.042,3.012
    .target Lieutenant Doren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    .turnin 202 >> Turn in Colonel Kurzen
    .isQuestComplete 202
step
    #optional
    .isOnQuest 622
    .goto Stranglethorn Vale,37.740,3.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Kaleb|r
    .turnin 622 >> Turn in Return to Corporal Kaleb
    .target Corporal Kaleb
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r and |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 193 >> Turn in Panther Mastery
    .goto Stranglethorn Vale,35.556,10.546
    .turnin 196 >> Turn in Raptor Mastery
    .accept 197 >> Accept Raptor Mastery
    .goto Stranglethorn Vale,35.658,10.808
    .target Sir S. J. Erlgadin
    .target Hemet Nesingwary
    .turnin -78823 >>Turn in Terror of the Desert Skies << Hunter
step
    .goto Stranglethorn Vale,21.55,16.57,70,0
    .goto Stranglethorn Vale,22.64,18.29,70,0
    .goto Stranglethorn Vale,25.53,19.22,70,0
    .goto Stranglethorn Vale,29.00,21.44,70,0
    .goto Stranglethorn Vale,30.02,26.92,70,0
    .goto Stranglethorn Vale,29.00,21.44,70,0
    .goto Stranglethorn Vale,25.53,19.22,70,0
    .goto Stranglethorn Vale,22.64,18.29,70,0
    .goto Stranglethorn Vale,21.55,16.57
    >>Kill a |cRXP_ENEMY_Elder Saltwater Crocolisk|r. Loot it for its |cRXP_LOOT_Elder Crocolisk Skin|r
    .complete 628,1 -- Elder Crocolisk Skin (1)
    .unitscan Elder Saltwater Crocolisk
step
    #completewith next
    +|cRXP_WARN_PAY CLOSE ATTENTION TO YOUR BREATH BAR|r
    .isOnQuest 611
step
    #completewith next
    .goto Stranglethorn Vale,24.957,23.586
    .cast 3678 >> |cRXP_WARN_Use|r |T135637:0|t[Catelyn's Blade] |cRXP_WARN_on the |cRXP_PICK_Altar of the Tides|r underwater to summon|r |cRXP_ENEMY_Gazban|r
    .use 4027
step
    #label Gazban
    .goto Stranglethorn Vale,24.957,23.586
    >>Kill |cRXP_ENEMY_Gazban|r. Loot him for the |cRXP_LOOT_Stone of the Tides|r
    .complete 611,1 -- Stone of the Tides (1)
    .mob Gazban
step
    #completewith BBTurnin
    .hs >> Hearth to Booty Bay
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krazek|r
    .accept 587 >> Accept Up to Snuff
    .goto Stranglethorn Vale,26.920,77.347
    .goto Stranglethorn Vale,27.000,77.124
    .target Krazek
step
    #label BBTurnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r and |cRXP_FRIENDLY_Baron Revilgaz|r
    .accept 604 >> Accept The Bloodsail Buccaneers
    .goto Stranglethorn Vale,27.173,77.007
    .turnin 611 >> Turn in The Curse of the Tides
    .goto Stranglethorn Vale,27.227,76.870
    .target Fleet Master Seahorn
    .target Baron Revilgaz
step
    .goto Stranglethorn Vale,26.539,76.570,-1
    .goto Stranglethorn Vale,26.515,76.471,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viznik|r or |cRXP_FRIENDLY_Rickle|r
    .bankwithdraw 6065,2725,2728,2730,2732,2734,2735,2738,2740,2742,2744,2745,2748,2749,2750,2751 >> Withdraw the following items from your bank:
    >>Any |T134332:0|t[Green Hills of Stranglethorn - Pages] you found
    >>|T133461:0|t[Khadgar's Essays on Dimensional Convergence] (If you have it) -- 6065
    .target Viznik Goldgrubber
    .target Rickle Goldgrubber
step
    #ah
    .goto Stranglethorn Vale,26.588,76.348
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer O'reely|r
    +|cRXP_WARN_Buy any|r |T134332:0|t[Green Hills of Stranglethorn - Pages] |cRXP_WARN_you are missing|r
    >>|cRXP_WARN_Ch.1: 1,4,6,8|r
    >>|cRXP_WARN_Ch.2: 10,11,14,16|r
    >>|cRXP_WARN_Ch.3: 18,20,21,24|r
    >>|cRXP_WARN_Ch.4: 25,26,27|r
    >>|cRXP_WARN_Skip this step if you aren't able to aquire them|r
    .target Auctioneer O'reely
step
    .goto Stranglethorn Vale,26.896,73.590
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Shaky" Phillipe|r
    .turnin 606 >> Turn in Scaring Shaky
    .target "Shaky" Phillipe
    .accept 607 >> Accept Return to MacKinley
step
    .goto Stranglethorn Vale,27.782,77.071
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .turnin 607 >> Turn in Return to MacKinley
    .accept 609 >> Accept Voodoo Dues
    .target "Sea Wolf" MacKinley
step
    #label start2
    .goto Stranglethorn Vale,28.294,77.592
    .target Drizzlik
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Drizzlik|r
    .turnin 628 >> Turn in Excelsior
step << Priest
    #season 2
    .train 425314,1
    #completewith next
    .goto Stranglethorn Vale,28.961,61.931
    >>Click |cRXP_PICK_The Holy Spring|r. Loot it for the |T134712:0|t[|cRXP_LOOT_Holy Spring Water|r]
    >>|cRXP_WARN_You may need to kill |cRXP_ENEMY_Lord Sakrasis|r (level 45 Rare) who guards in front of|r |cRXP_PICK_The Holy Spring|r
    .collect 737,1 --Holy Spring Water
    .mob Lord Sakrasis
step
    .goto Stranglethorn Vale,27.04,63.00,60,0
    .goto Stranglethorn Vale,26.32,60.20,60,0
    .goto Stranglethorn Vale,25.12,60.07,60,0
    .goto Stranglethorn Vale,24.69,64.29,60,0
    .goto Stranglethorn Vale,25.99,62.45
    >>Kill |cRXP_ENEMY_Naga Explorers|r. Loot them for their |cRXP_LOOT_Akiris Reeds|r
    .complete 617,1 -- Akiris Reed (10)
    .mob Naga Explorer
step << Priest
    #season 2
    .train 425314,1
    .goto Stranglethorn Vale,28.961,61.931
    >>Click |cRXP_PICK_The Holy Spring|r. Loot it for the |T134712:0|t[|cRXP_LOOT_Holy Spring Water|r]
    >>|cRXP_WARN_You may need to kill |cRXP_ENEMY_Lord Sakrasis|r (level 45 Rare) who guards in front of|r |cRXP_PICK_The Holy Spring|r
    .collect 737,1 --Holy Spring Water
    .mob Lord Sakrasis
step
    #completewith Bloodsails
    >>Open the |cRXP_PICK_Half-Buried Bottles|r along the coast. Loot them for a |T133469:0|t[|cRXP_LOOT_Carefully Folded Note|r]
    >>|cRXP_WARN_Don't start the quest for this yet|r
    -->>|cRXP_WARN_Use the |T133469:0|t[|cRXP_LOOT_Carefully Folded Note|r] to start the quest|r
    --.use 4098
    .collect 4098,1,594,1 -- Carefully Folded Note (1)
    --.accept 594 >> Accept Message in a Bottle
step
    #completewith next
    >>Kill the |cRXP_ENEMY_Bloodsail|r. Loot them for their |cRXP_LOOT_Snuff|r and |cRXP_LOOT_Dizzy's Eye|r
    .complete 587,1 -- Snuff (15)
    .complete 576,1 -- Dizzy's Eye (1)
    .mob Bloodsail Swashbuckler
    .mob Bloodsail Mage
    .mob Bloodsail Raider
    .mob Bloodsail Warlock
step
    #label Bloodsails
    .goto Stranglethorn Vale,31.76,79.45,100,0
    .goto Stranglethorn Vale,29.56,81.51,75,0
    .goto Stranglethorn Vale,26.99,83.20,70,0
    .goto Stranglethorn Vale,29.56,81.51,75,0
    .goto Stranglethorn Vale,26.99,83.20
    >>Kill |cRXP_ENEMY_Bloodsail Swashbucklers|r
    >>Loot the |cRXP_LOOT_Bloodsail Charts|r and |cRXP_LOOT_Bloodsail Orders|r. These can spawn randomly at one of the camps or in the small rowboat
    .complete 604,1 -- Bloodsail Swashbuckler slain (10)
    .complete 604,2 -- Bloodsail Charts
    .complete 604,3 -- Bloodsail Orders
    .mob Bloodsail Swashbuckler

step
    #completewith CRiddle
    >>Open the |cRXP_PICK_Half-Buried Bottles|r along the coast. Loot them for a |T133469:0|t[|cRXP_LOOT_Carefully Folded Note|r]
    >>|cRXP_WARN_Don't start the quest for this yet|r
    -->>|cRXP_WARN_Use the |T133469:0|t[|cRXP_LOOT_Carefully Folded Note|r] to start the quest|r
    --.use 4098
    .collect 4098,1,594,1 -- Carefully Folded Note (1)
    --.accept 594 >> Accept Message in a Bottle
step
    #completewith CRiddle
    >>Kill the |cRXP_ENEMY_Bloodsail|r. Loot them for their |cRXP_LOOT_Snuff|r and |cRXP_LOOT_Dizzy's Eye|r
    .complete 587,1 -- Snuff (15)
    .complete 576,1 -- Dizzy's Eye (1)
    .mob Bloodsail Swashbuckler
    .mob Bloodsail Mage
    .mob Bloodsail Raider
    .mob Bloodsail Warlock
step
    .goto Stranglethorn Vale,31.76,79.45,100,0
    .goto Stranglethorn Vale,29.56,81.51,75,0
    .goto Stranglethorn Vale,26.99,83.20,70,0
    .goto Stranglethorn Vale,29.56,81.51,75,0
    .goto Stranglethorn Vale,26.99,83.20
    >>Kill |cRXP_ENEMY_Bloodsail Swashbucklers|r
    >>Loot the |cRXP_LOOT_Bloodsail Charts|r and |cRXP_LOOT_Bloodsail Orders|r. These can spawn randomly at one of the camps or in the small rowboat
    .complete 604,1 -- Bloodsail Swashbuckler slain (10)
    .complete 604,2 -- Bloodsail Charts
    .complete 604,3 -- Bloodsail Orders
    .mob Bloodsail Swashbuckler
step
    #completewith next
    >>Open the |cRXP_PICK_Half-Buried Bottles|r along the coast. Loot them for a |T133469:0|t[|cRXP_LOOT_Carefully Folded Note|r]
    >>|cRXP_WARN_Don't start the quest for this yet|r
    -->>|cRXP_WARN_Use the |T133469:0|t[|cRXP_LOOT_Carefully Folded Note|r] to start the quest|r
    --.use 4098
    .collect 4098,1,594,1 -- Carefully Folded Note (1)
    --.accept 594 >> Accept Message in a Bottle
step
    .goto Stranglethorn Vale,31.76,79.45,100,0
    .goto Stranglethorn Vale,29.56,81.51,75,0
    .goto Stranglethorn Vale,26.99,83.20,70,0
    .goto Stranglethorn Vale,29.56,81.51,75,0
    .goto Stranglethorn Vale,26.99,83.20
    >>Kill the |cRXP_ENEMY_Bloodsail|r. Loot them for their |cRXP_LOOT_Snuff|r and |cRXP_LOOT_Dizzy's Eye|r
    .complete 587,1 -- Snuff (15)
    .complete 576,1 -- Dizzy's Eye (1)
    .mob Bloodsail Swashbuckler
    .mob Bloodsail Mage
    .mob Bloodsail Raider
    .mob Bloodsail Warlock
step
    #completewith Chucky
    .goto Stranglethorn Vale,39.99,58.24
    .subzone 311 >> Travel to the Ruins of Aboraz
step
    #completewith next
    .goto Stranglethorn Vale,39.99,58.24,0
    .goto Stranglethorn Vale,34.92,51.84,0
    >>Kill the |cRXP_ENEMY_Zanzils|r. Loot them for their |cRXP_LOOT_Mixtures|r
    .complete 621,1 -- Zanzil's Mixture (12)
    .mob Zanzil Witch Doctor
    .mob Zanzil Zombie
    .mob Zanzil Hunter
    .mob Zanzil Naga
step
    #label Chucky
    .goto Stranglethorn Vale,39.99,58.24
    >>Kill |cRXP_ENEMY_Chucky "Ten Thumbs"|r. Loot him for his |cRXP_LOOT_Huge Ring|r
    .complete 609,3 -- Chucky's Huge Ring (1)
    .mob Chucky "Ten Thumbs"
step
    #completewith FinalZanzil
    .goto Stranglethorn Vale,34.92,51.84
    .subzone 477 >> Travel to the Ruins of Jubuwal
step
    #completewith FinalZanzil
    .goto Stranglethorn Vale,39.99,58.24,0
    .goto Stranglethorn Vale,34.92,51.84,0
    >>Kill the |cRXP_ENEMY_Zanzils|r. Loot them for their |cRXP_LOOT_Mixtures|r
    .complete 621,1 -- Zanzil's Mixture (12)
    .mob Zanzil Witch Doctor
    .mob Zanzil Zombie
    .mob Zanzil Hunter
    .mob Zanzil Naga
step
    #completewith next
    .goto Stranglethorn Vale,34.92,51.84
    >>Kill |cRXP_ENEMY_Jon-Jon the Crow|r. Loot him for his |cRXP_LOOT_Golden Spyglass|r
    .complete 609,2 -- Jon-Jon's Golden Spyglass (1)
    .mob Jon-Jon the Crow
step
    .goto Stranglethorn Vale,35.26,51.28
    >>Kill |cRXP_ENEMY_Maury "Club Foot" Wilkins|r. Loot him for his |cRXP_LOOT_Clubbed Foot|r
    .complete 609,1 -- Maury "Club Foot" Wilkins (1)
    .mob Maury "Club Foot" Wilkins
step
    #label FinalZanzil
    .goto Stranglethorn Vale,34.92,51.84
    >>Kill |cRXP_ENEMY_Jon-Jon the Crow|r. Loot him for his |cRXP_LOOT_Golden Spyglass|r
    .complete 609,2 -- Jon-Jon's Golden Spyglass (1)
    .mob Jon-Jon the Crow
step
    .goto Stranglethorn Vale,34.92,51.84,70,0
    .goto Stranglethorn Vale,39.99,58.24,70,0
    .goto Stranglethorn Vale,34.92,51.84,70,0
    .goto Stranglethorn Vale,39.99,58.24,70,0
    .goto Stranglethorn Vale,34.92,51.84
    .goto Stranglethorn Vale,39.99,58.24,0
    >>Kill the |cRXP_ENEMY_Zanzils|r. Loot them for their |cRXP_LOOT_Mixtures|r
    .complete 621,1 -- Zanzil's Mixture (12)
    .mob Zanzil Witch Doctor
    .mob Zanzil Zombie
    .mob Zanzil Hunter
    .mob Zanzil Naga
step
    .goto Stranglethorn Vale,28.41,46.88,0
    .goto Stranglethorn Vale,31.12,43.17,0
    .goto Stranglethorn Vale,28.41,46.88,55,0
    .goto Stranglethorn Vale,28.71,43.81,55,0
    .goto Stranglethorn Vale,31.12,43.17,55,0
    .goto Stranglethorn Vale,31.76,41.34,55,0
    .goto Stranglethorn Vale,31.12,43.17,55,0
    .goto Stranglethorn Vale,28.71,43.81,55,0
    .goto Stranglethorn Vale,28.41,46.88,55,0
    .goto Stranglethorn Vale,31.12,43.17
    >>Kill |cRXP_ENEMY_Tethis|r. Loot him for his |cRXP_LOOT_Talon|r
    >>|cRXP_ENEMY_Tethis|r |cRXP_WARN_will patrol around in this location|r
    .complete 197,1 -- Talon of Tethis (1)
    .unitscan Tethis
step
    #completewith PagesTurnIn
    .goto Stranglethorn Vale,35.658,10.808,80 >> Travel to Nesingwary's Expedition
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sir S. J. Erlgadin|r and |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 197 >> Turn in Raptor Mastery
    .accept 208 >> Accept Big Game Hunter
    .goto Stranglethorn Vale,35.658,10.808
    .target Hemet Nesingwary
step
    #label PagesTurnIn
    .goto Stranglethorn Vale,35.662,10.528
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r
    >>|cRXP_WARN_Turn in all your|r |T134332:0|t[Green Hills of Stranglethorn - Pages]
    >>|cRXP_WARN_Skip this step if you don't have all the|r |T133677:0|t[Green Hills of Stranglethorn - Chapters]
    .accept 338 >> Accept The Green Hills of Stranglethorn
    .accept 339 >> Accept Chapter I
    .accept 340 >> Accept Chapter II
    .accept 341 >> Accept Chapter III
    .accept 342 >> Accept Chapter IV
    .turnin 339 >> Turn in Chapter I
    .turnin 340 >> Turn in Chapter II
    .turnin 341 >> Turn in Chapter III
    .turnin 342 >> Turn in Chapter IV
    .turnin 338 >> Turn in The Green Hills of Stranglethorn
    .target Barnil Stonepot
step << Priest
    #season 2
    #completewith next
    .train 425314,1
    .subzone 102 >> Travel to the Ruins of Zul'Kunda
step << Priest
    #season 2
    .train 425314,1
    .goto Stranglethorn Vale,23.569,7.955
    .cast 3591 >> |cRXP_WARN_Use the|r |T134712:0|t[|cRXP_LOOT_Holy Spring Water|r] |cRXP_WARN_at the small fountain|r
    >>|cRXP_WARN_You may need to kill |cRXP_ENEMY_Gan'zulah|r (level 41) and a small pack of |cRXP_ENEMY_Trolls|r around him to get to the small fountain|r
    .use 737
    .mob Gan'zulah
step << Priest
    #season 2
    .train 425314,1
    .goto Stranglethorn Vale,23.569,7.955
    >>Click the |cRXP_PICK_Fount|r which appears. Loot it for the |T135975:0|t|cRXP_LOOT_[Prophecy of Imprisoned Malice]|r
    .collect 213142,1
step << Priest
    #season 2
    .train 425314 >> |cRXP_WARN_Use the|r |T135975:0|t|cRXP_LOOT_[Prophecy of Imprisoned Malice]|r |cRXP_WARN_to train|r |T237563:0|t[Dispersion]
    .use 213142
step << Priest
    #season 2
    .isQuestComplete 79731
    .goto Stranglethorn Vale,35.658,10.808
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 79731 >> Turn in The Troll Scroll
    .target Hemet Nesingwary
step
    #optional
    #completewith next
    +|cRXP_WARN_Use the|r |T133581:0|t[Flash Bomb] |cRXP_WARN_on |cRXP_ENEMY_King Bangalash|r when he is at 55%|r
    .itemcount 4852,1
    .use 4852
step
    .goto Stranglethorn Vale,38.20,35.57
    >>Kill |cRXP_ENEMY_King Bangalash|r. Loot him for the |cRXP_LOOT_Head of Bangalash|r
    >>|cRXP_ENEMY_King Bangalash|r |cRXP_WARN_will spawn 2 |cRXP_ENEMY_Panthers|r at 50% health. Try to CC him just before 50% if possible so it prevents him from spawning any|r
    .complete 208,1 -- Head of Bangalash (1)
    .mob King Bangalash
step
    .goto Stranglethorn Vale,35.658,10.808
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hemet Nesingwary|r
    .turnin 208 >> Turn in Big Game Hunter
    .target Hemet Nesingwary
    .isQuestComplete 208
step
    #completewith next
    .hs >> Hearthstone back to Booty Bay
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deeg|r and |cRXP_FRIENDLY_Krazek|r
    .turnin 587 >> Turn in Up to Snuff
    .goto Stranglethorn Vale,26.920,77.347
    .accept 2864 >> Accept Tran'rek
    .goto Stranglethorn Vale,26.943,77.207
    .target Deeg
    .target Krazek
step
    .goto Stranglethorn Vale,27.173,77.007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fleet Master Seahorn|r
    .turnin 604 >> Turn in The Bloodsail Buccaneers
    .target Fleet Master Seahorn
step
    .isQuestTurnedIn 1118
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whiskey Slim|r and |cRXP_FRIENDLY_Crank Fizzlebub|r
    .accept 580 >> Accept Whiskey Slim's Lost Grog
    .goto Stranglethorn Vale,27.135,77.451
    .turnin 621 >> Turn in Zanzil's Secret
    .accept 1119 >> Accept Zanzil's Mixture and a Fool's Stout
    .goto Stranglethorn Vale,27.120,77.208
    .target Whiskey Slim
    .target Crank Fizzlebub
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whiskey Slim|r and |cRXP_FRIENDLY_Crank Fizzlebub|r
    .accept 580 >> Accept Whiskey Slim's Lost Grog
    .goto Stranglethorn Vale,27.135,77.451
    .turnin 621 >> Turn in Zanzil's Secret
    .goto Stranglethorn Vale,27.120,77.208
    .target Whiskey Slim
    .target Crank Fizzlebub
step
    .goto Stranglethorn Vale,26.756,76.383
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Privateer Bloads|r
    .turnin 617 >> Turn in Akiris by the Bundle
    .accept 623 >> Accept Akiris by the Bundle
    .target Privateer Bloads
step
    .goto Stranglethorn Vale,26.539,76.570,-1
    .goto Stranglethorn Vale,26.515,76.471,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viznik|r or |cRXP_FRIENDLY_Rickle|r
    .bankdeposit 2799,4098 >> Deposit the following items into your bank:
    >>|T134298:0|t[Gorilla Fangs] (If you have any) -- 2799
    >>|T133469:0|t[Carefully Folded Note] (If you have it) -- 4098
    .target Viznik Goldgrubber
    .target Rickle Goldgrubber
step
    .goto Stranglethorn Vale,26.539,76.570,-1
    .goto Stranglethorn Vale,26.515,76.471,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viznik|r or |cRXP_FRIENDLY_Rickle|r
    .bankwithdraw 5862 >> Withdraw the following items from your bank:
    >>|T132385:0|t[Seaforium Booster] -- 5862
    .target Viznik Goldgrubber
    .target Rickle Goldgrubber
step
    .goto Stranglethorn Vale,27.782,77.071
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_"Sea Wolf" MacKinley|r
    .turnin 609 >> Turn in Voodoo Dues
    .accept 2872 >> Accept Stoley's Debt
    .target "Sea Wolf" MacKinley
step
    .goto Stranglethorn Vale,28.591,75.899
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dizzy One-Eye|r
    .turnin 576 >> Turn in Keep An Eye Out
    .target Dizzy One-Eye
step
    #completewith next
    .isOnQuest 1119
    +|cRXP_WARN_Note the Zanzil's Mixture and a Fool's Stout quest has a 2 hour timer|r
step
    .goto Stranglethorn Vale,25.8,73.1
    .zone The Barrens >> Take the Boat to Ratchet
]])

RXPGuides.RegisterGuide([[
#version 20
#group RXP SOD TEST
#season 2
#classic
<< Alliance !Warlock

#name 43-44 Tanaris SoD
#next 44-48 Feralas SoD
step
    #optional
    #completewith FlyTanaris
    #season 2
    .goto The Barrens,61.8,39.4
    >>|cRXP_WARN_If you have |cRXP_LOOT_3 gold|r to spare you can buy a rune from|r |cRXP_FRIENDLY_Grizzby|r |cRXP_WARN_in the Ratchet inn. Judge for yourself if you can afford it and if the rune is useful for your class. You can always buy it later|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grizzby|r in the inn
    .use 210822 << Priest
    .use 210820 << Paladin
    .use 210654 << Mage
    .use 210818 << Hunter
    .use 210817 << Druid
    .use 210825 << Warrior
    .use 210824 << Warlock
    .use 210653 << Rogue
    .use 210823 << Shaman
    .train 415995 >>|cRXP_WARN_Buy and use the|r |T135791:0|t[|cRXP_FRIENDLY_Harmonious Epiphany|r] |cRXP_WARN_to train|r |T237549:0|t[Serendipity] << Priest
    .train 410010 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Sacrifice|r] |cRXP_WARN_to train|r |T134596:0|t[Engrave Pants - Divine Sacrifice] << Paladin
    .train 401761 >>|cRXP_WARN_Buy and use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Rewind Time|r] |cRXP_WARN_to train|r |T237538:0|t[Rewind Time] << Mage
    .train 410122 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Lone Wolf|r] |cRXP_WARN_to train|r |T132266:0|t[Lone Wolf] << Hunter
    .train 416042 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Survival|r] |cRXP_WARN_to train|r |T132126:0|t[Survival of the Fittest] << Druid
    .train 425445 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Warbringer|r] |cRXP_WARN_to train|r |T236319:0|t[Warbinger] << Warrior
    .train 425476 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Pact|r] |cRXP_WARN_to train|r |T237562:0|t[Demonic Pact] << Warlock
    .train 424990 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Main Gauche|r] |cRXP_WARN_to train|r |T237531:0|t[Main Gauche] << Rogue
    .train 410096 >>|cRXP_WARN_Buy and use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Dual Wield Specialization|r] |cRXP_WARN_to train|r |T132686:0|t[Engrave Chest - Dual Wield Specialization] << Shaman
    .target Grizzby
    .train 415995,1 << Priest
    .train 410010,1 << Paladin
    .train 401761,1 << Mage
    .train 410122,1 << Hunter
    .train 416042,1 << Druid
    .train 425445,1 << Warrior
    .train 425476,1 << Warlock
    .train 424990,1 << Rogue
    .train 410096,1 << Shaman
step
    #label FlyTanaris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .goto The Barrens,63.084,37.163
    .fly Theramore>> Fly to Theramore
    .target Bragok
step
    .goto Dustwallow Marsh,68.836,53.225,40,0
    .goto Dustwallow Marsh,67.716,51.708
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Privateer Groy|r
    >>|cRXP_FRIENDLY_Privateer Groy|r |cRXP_WARN_patrols through Theramore Isle|r
    .turnin 623 >> Turn in Akiris by the Bundle
    .target Privateer Groy
step << Warrior
    .goto Dustwallow Marsh,67.875,48.409
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Evencane|r up stairs in the Keep
    .trainer >> Train your class spells
    .target Captain Evencane
step << Paladin
    .goto Dustwallow Marsh,67.396,47.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Karman|r
    .trainer >> Train your class spells
    .target Brother Karman
step
    .skill firstaid,<225,1
    .goto Dustwallow Marsh,67.756,48.968
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Gustaf VanHowzen|r
    .accept 6624 >> Accept Triage   
    .target Doctor Gustaf VanHowzen
step
    .isOnQuest 6624
    .goto Dustwallow Marsh,67.756,48.968
    .use 16991 >> |cRXP_WARN_Channel the|r |T133682:0|t[Triage Bandage] |cRXP_WARN_on the |cRXP_FRIENDLY_Alliance Soldiers|r. Prioritize |cRXP_FRIENDLY_Critically Injured Soldiers|r first|r
    .complete 6624,1 -- 15 Patients Saved!
    .target Critically Injured Alliance Soldier
    .target Badly Injured Alliance Soldier
    .target Injured Alliance Soldier
step
    .isQuestComplete 6624
    .goto Dustwallow Marsh,67.756,48.968
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Gustaf VanHowzen|r
    .turnin 6624 >> Turn in Triage
    .target Doctor Gustaf VanHowzen
step
    .isQuestTurnedIn 6624
    .destroy 16991 >> Delete the |T133682:0|t[Triage Bandage]. You no longer need it
step << Druid/Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Janene|r
    .goto Dustwallow Marsh,66.587,45.223
    .home >> Set your Hearthstone to Theramore
    .target Innkeeper Janene
step << Druid
	#completewith next
	.cast 18960 >> Cast Teleport: Moonglade
	.zoneskip Moonglade
step << Druid
	>>Teleport to Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
	.goto Moonglade,52.53,40.56
    .trainer >> Train your class spells
    .target Loganaar
step << Mage
    #completewith next
    .zone Ironforge >>Teleport to Ironforge
step << Mage
    .goto Ironforge,27.169,8.579
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
    .trainer >> Train your class spells
    .target Dink
step << Mage
    .goto Ironforge,31.33,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginny Longberry|r
    .vendor >> |cRXP_BUY_Buy|r |T134419:0|t[Rune of Teleportations] |cRXP_BUY_if needed|r
    .collect 17031,10 --Rune of Teleportation (10)
    .target Ginny Longberry
step << Druid/Mage
    #completewith next
    .hs >> Hearth back to Theramore
	>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
    .isOnQuest 626
step
    .goto Dustwallow Marsh,67.476,51.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
    .fly Tanaris>> Fly to Tanaris
    .target Baldruc
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r and |cRXP_FRIENDLY_Spigot Operator Luglunket|r
    .accept 1690 >> Accept Wastewander Justice
    .goto Tanaris,52.462,28.514
    .accept 1707 >> Accept Water Pouch Bounty
    .goto Tanaris,52.486,28.445
    .target Chief Engineer Bilgewhizzle
    .target Spigot Operator Luglunket
step << Hunter
    .goto Tanaris,52.253,28.001
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laziphus|r
    .stable >> Stable your pet. You will tame a |cRXP_ENEMY_Starving Blisterpaw|r shortly
    .target Laziphus
step << !Druid !Mage
    .goto Tanaris,52.51,27.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Fizzgrimble|r
    .home >> Set your Hearthstone to Gadgetzan
    .target Innkeeper Fizzgrimble
step
    .goto Tanaris,52.358,26.904
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
    .accept 3022 >> Accept Handle With Care
    .target Curgle Cranklehop
    .dungeon !ZF
--XX Pickup later due to qlog space due to gahz'rilla
step
    .goto Tanaris,52.8,27.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andi Lynn|r
    .accept 5863 >> Accept The Dunemaul Compound
    .target Andi Lynn
    .dungeon !ZF
--XX Pickup later due to qlog space due to gahz'rilla
step
    .goto Tanaris,51.566,26.759
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
    .turnin 2864 >> Turn in Tran'rek
    .target Tran'rek
step
    .goto Tanaris,50.960,27.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shreev|r
    .turnin 1188 >> Turn in Safety First
    .accept 1189 >> Accept Safety First
    .target Shreev
    .isOnQuest 1188
step << Hunter
    #completewith st2
    .goto Tanaris,47.70,27.04,0
    .goto Tanaris,47.70,27.04,50,0
    .goto Tanaris,53.45,24.29
    >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Starving Blisterpaw|r to tame it|r -- .tame 5422 
    .train 23111 >>|cRXP_WARN_Attack mobs with it to learn. Do this as you run through Shimmering Flats|r |T132120:0|t[Dash (Rank 2)]
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
    .mob Starving Blisterpaw
step
    #completewith NFF
    .goto Thousand Needles,78.064,77.126
    .zone Thousand Needles >> Travel to The Shimmering Flats
step
    .goto Thousand Needles,78.064,77.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
    .turnin 1137 >> Turn in News for Fizzle
    .target Fizzle Brassbolts
    .isOnQuest 1137
step
    .goto Thousand Needles,78.143,77.120
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
    .accept 2770 >> Accept Gahz'rilla
    .target Wizzle Brassbolts
    .dungeon ZF
step
    .goto Thousand Needles,77.782,77.263
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
    .turnin 1119 >> Turn in Zanzil's Mixture and a Fool's Stout
    .timer 13,Kravel Koalbeard RP
	.isQuestTurnedIn 1118
    .target Kravel Koalbeard
step
    .goto Thousand Needles,80.326,76.096
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
    .turnin 1189 >> Turn in Safety First
    .isOnQuest 1189
    .target Razzeric
step
#xprate >1.99
    .goto Thousand Needles,80.326,76.096
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
    .target Razzeric
    .turnin 1187 >> Turn in Razzeric's Tweaking
    .isQuestComplete 1187
step
#xprate >1.99
    .goto Thousand Needles,80.326,76.096
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
    .target Razzeric
    .accept 1188 >> Accept Safety First
    .isQuestTurnedIn 1187
step
    #label NFF
    .goto Thousand Needles,80.178,75.882
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
    .accept 1190 >> Accept Keeping Pace
    .target Pozzik
    .isQuestTurnedIn 1137
step
    #completewith next
    .goto Thousand Needles,79.809,77.028
    .target Zamek
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamek|r create a diversion
    .turnin 1191 >> Turn in Zamek's Distraction
    .timer 30,Zamek's Distraction RP
    .isQuestTurnedIn 1137
step
    .goto Thousand Needles,77.208,77.386
    >>Click |cRXP_PICK_Rizzle's Unguarded Plans|r on the ground
    .turnin 1190 >> Turn in Keeping Pace
    .accept 1194 >> Accept Rizzle's Schematics
    .isQuestTurnedIn 1137
step
    .goto Thousand Needles,77.782,77.263
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
    .accept 1120 >> Accept Get the Gnomes Drunk
	.isQuestTurnedIn 1118
    .target Kravel Koalbeard  
step
    .goto Thousand Needles,77.563,76.941
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnome Pit Boss|r
    .turnin 1120 >> Turn in Get the Gnomes Drunk
	.isQuestTurnedIn 1118
    .target Gnome Pit Boss
step
    .goto Thousand Needles,77.782,77.263
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
    .accept 1122 >> Accept Report Back to Fizzlebub
	.isQuestTurnedIn 1118
    .target Kravel Koalbeard
step
    .goto Thousand Needles,80.178,75.882
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
    .turnin 1194 >> Turn in Rizzle's Schematics
    .target Pozzik
    .isQuestTurnedIn 1137
step
    #optional
    .destroy 5866 >> Delete the |T134575:0|t[Sample of Indurium Ore] you do not need it
step << !Druid !Mage
    #completewith next
    .hs >> Hearthstone back to Gadgetzan, |cRXP_WARN_run back if your hearthstone is not available|r
    .zoneskip Tanaris
step
    #completewith PortQ
    .goto Tanaris,50.50,18.52
    .zone Tanaris >> Travel to Gadgetzan
step
#xprate >1.99
    .goto Tanaris,50.960,27.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shreev|r
    .turnin -1188 >> Turn in Safety First
step << Hunter
    #label st2
    .goto Tanaris,52.253,28.001
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laziphus|r
    .stable >> Withdraw your main pet from the stable
    .target Laziphus
step << Hunter
    #season 2
    #label Zopilote
    #sticky
    #completewith end
    .goto 1446/1,-3973.700,-7372.900,0
    .goto 1446/1,-3777.100,-7358.200,0
    .goto 1446/1,-3290.200,-7330.700,0
    .goto 1446/1,-3563.000,-7352.400,0
    .goto 1446/1,-3386.400,-7337.400,0
    .goto 1446/1,-3290.200,-7330.700,0
    >>As you're questing you might run across |cRXP_ENEMY_Zopilote|r. A large white carrion bird. If you find it kill him and Loot for the |T134419:0|t[|cRXP_FRIENDLY_Rune of The Raptor|r].
    >>|cRXP_ENEMY_Zopilote|r |cRXP_WARN_is a carrion bird that patrols east to west in a large area spanning from south of Sandsorrow Watch to Gadgetzan|r 
    >>|cRXP_WARN_Don't go out of your way to look for him. The rune is weak for leveling and you can find him later|r
    .collect 220687,1
    .unitscan Zopilote
    .train 416093,1
step << Hunter
    #season 2
    #sticky
    #requires Zopilote
    #completewith end
    .train 416093 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Raptor|r] |cRXP_WARN_to train|r |T132253:0|t[Raptor Fury]
    .use 2220687
    .itemcount 220687,1
    .train 416093,1
step << Priest
    #season2
    #sticky
    #completewith WastewanderEnd
    >>Be on the lookout for |T134329:0|t[|cRXP_LOOT_Wastewander Cipher|r] that can drop from |cRXP_ENEMY_Wastewander Thieves|r. You will need it for a rune later
    .collect 221549,1 --Wastewander Cipher (1)
    .train 413251,1
step
	#completewith PortQ
	>>Kill |cRXP_ENEMY_Wastewander Bandits|r and |cRXP_ENEMY_Wastewander Thieves|r. Loot them for their |cRXP_LOOT_Wastewander Water Pouches|r
    >>|cRXP_WARN_Kill them en-route to Steamwheedle Port. Don't complete this immediately|r
    .goto Tanaris,60.4,24.6,0
    .goto Tanaris,63.6,31.0,0
    .complete 1690,1 -- Wastewander Bandit slain (10)
    .complete 1690,2 -- Wastewander Thief slain (10)
    .complete 1707,1 -- Wastewander Water Pouch (5)
    .mob Wastewander Bandit
    .mob Wastewander Thief
step
    .goto Tanaris,66.560,22.265
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haughty Modiste|r
    .accept 8365 >> Accept Pirate Hats Ahoy!
    .target Haughty Modiste
step
    .goto Tanaris,66.989,22.354
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
    .accept 3520 >> Accept Screecher Spirits
    .target Yeh'kinya
step
    #label PortQ
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r and |cRXP_FRIENDLY_Stoley|r
    .accept 8366 >> Accept Southsea Shakedown
    .goto Tanaris,67.058,23.891
    .turnin 2872 >> Turn in Stoley's Debt
    .accept 2873 >> Accept Stoley's Shipment
    .goto Tanaris,67.109,23.978
    .target Security Chief Bilgewhizzle
    .target Stoley
step
    #label WastewanderEnd
    .goto Tanaris,60.14,23.42,0
    .goto Tanaris,63.85,29.26,50,0
    .goto Tanaris,63.63,31.66,50,0
    .goto Tanaris,63.27,33.57,50,0
    .goto Tanaris,62.77,30.20,50,0
    .goto Tanaris,63.93,31.60
	>>Kill |cRXP_ENEMY_Wastewander Bandits|r and |cRXP_ENEMY_Wastewander Thieves|r. Loot them for their |cRXP_LOOT_Wastewander Water Pouches|r
    .complete 1690,1 -- Wastewander Bandit slain (10)
    .complete 1690,2 -- Wastewander Thief slain (10)
    .complete 1707,1 -- Wastewander Water Pouch (5)
    .mob Wastewander Bandit
    .mob Wastewander Thief
step << Priest
    #season2
    .goto Tanaris,60.14,23.42,0
    .goto Tanaris,63.85,29.26,50,0
    .goto Tanaris,63.63,31.66,50,0
    .goto Tanaris,63.27,33.57,50,0
    .goto Tanaris,62.77,30.20,50,0
    .goto Tanaris,63.93,31.60
    >>Kill |cRXP_ENEMY_Wastewander Thieves|r untill you get a |T134329:0|t[|cRXP_LOOT_Wastewander Cipher|r]. You will need it for a rune later
    .collect 221549,1 --Wastewander Cipher (1)
    .train 413251,1
step << Hunter
    .goto Tanaris,52.707,45.923
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
    .accept 3161 >> Accept Gahz'ridian
    .target Marvon Rivetseeker
step << Hunter
    #completewith next
    .itemStat 1,QUALITY,>1
    .cast 11992 >> Equip the |T133151:0|t[Gahz'ridian Detector]
    .use 9978
    .isOnQuest 3161
step << Hunter
    .goto Tanaris,41.04,71.69,50,0
    .goto Tanaris,39.66,73.51,70,0
    .goto Tanaris,46.01,65.13,70,0
    .goto Tanaris,47.81,64.83,70,0
    .goto Tanaris,41.04,71.69,50,0
    .goto Tanaris,39.66,73.51,70,0
    .goto Tanaris,46.01,65.13,70,0
    .goto Tanaris,47.81,64.83
    >>Loot the |cRXP_LOOT_Gahz'ridian|r on the ground around the Ruins
    >>|cRXP_WARN_The |cRXP_LOOT_Gahz'ridian|r will show up on your minimap with the|r |T133151:0|t[Gahz'ridian Detector] |cRXP_WARN_equiped|r
    .complete 3161,1 -- Gahz'ridian Ornament (30)
    .use 9978
step << Hunter
    #completewith next
    .itemStat 1,QUALITY,1
    .cast 11992 >> Equip your normal |T133127:0|t[Helmet]
    .isOnQuest 3161
step << Hunter
    .goto Tanaris,52.707,45.923
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
    .turnin 3161 >> Turn in Gahz'ridian
    .target Marvon Rivetseeker
step
    #season 0
    #label Tanaris1end
    .goto Tanaris,52.297,28.915
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
    .bankdeposit 5807,6257 >> Deposit the following items into your bank:
    >>|T133471:0|t[Fool's Stout Report] -- 5807
    >>|T133707:0|t[Roc Gizzard] (If you have any) -- 6257
    .target Gimblethorn
step
    #label end
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r and |cRXP_FRIENDLY_Spigot Operator Luglunket|r
    .turnin 1690 >> Turn in Wastewander Justice
    .goto Tanaris,52.462,28.514
    .turnin 1707 >> Turn in Water Pouch Bounty
    .goto Tanaris,52.486,28.445
    .target Chief Engineer Bilgewhizzle
    .target Spigot Operator Luglunket
step
.dungeon ZF
    .goto Tanaris,51.413,28.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trenton Lighthammer|r
    .accept 3042 >> Accept Troll Temper
    .target Trenton Lighthammer
step
.dungeon ZF
    .goto Tanaris,52.462,28.514
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
    .accept 2768 >> Accept Divino-matic Rod
    .target Chief Engineer Bilgewhizzle
step
.dungeon ZF
    .goto Tanaris,51.566,26.759
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
    .accept 2865 >> Accept Scarab Shells
    .target Tran'rek
step
.dungeon ZF
    .goto Tanaris,73.37,47.14
    .goto Tanaris,38.731,19.839
    .subzone 978 >> You will now run Zul'Farrak. Grind on |cRXP_ENEMY_Pirates|r while looking for a ZF group
step
.dungeon ZF
    .goto Tanaris,38.91,20.78,40,0
    .goto Tanaris,38.731,19.839
    .subzone 978,2 >> Enter Zul'Farrak
step
.dungeon ZF
    #completewith Gahzrilla
    >>Kill |cRXP_ENEMY_Trolls|r. Loot them for their |cRXP_LOOT_Troll Temper|r
    .complete 3042,1 -- Troll Temper (20)
    .isOnQuest 3042
step
.dungeon ZF
    #completewith next
    >>Kill |cRXP_ENEMY_Scarabs|r. Loot them for their |cRXP_LOOT_Uncracked Scarab Shell|r
    .complete 2865,1 -- Uncracked Scarab Shell (5)
    .isOnQuest 2865
step -- won't have this quest
.dungeon ZF
    >>Kill |cRXP_ENEMY_Theka the Martyr|r. Loot him for the |cRXP_LOOT_First Mosh'aru Tablet|r
    .complete 3527,1 -- First Mosh'aru Tablet (1)
    .mob Theka the Martyr
    .isOnQuest 3527
step
.dungeon ZF
    >>Kill |cRXP_ENEMY_Scarabs|r. Loot them for their |cRXP_LOOT_Uncracked Scarab Shell|r
    .complete 2865,1 -- Uncracked Scarab Shell (5)
    .isOnQuest 2865
step
.dungeon ZF
    #completewith NekrumMedallion
    +Ascend the Pyramid
    >>Kill the |cRXP_ENEMY_Sandfury Executioner|r. Loot him for the |cRXP_LOOT_Executioner's Key|r
    >>|cRXP_WARN_Anyone in the party may loot the|r |cRXP_LOOT_Key|r
    >>|cRXP_WARN_Use the|r |cRXP_LOOT_Executioner's Key|r |cRXP_WARN_on one of the |cRXP_PICK_Troll Cages|r to free |cRXP_FRIENDLY_Sergeant Bly|r and his band|r
    .collect 8444,1 -- Executioner's Key (1)
    .disablecheckbox
    .isOnQuest 2991,2768
    .mob Sandfury Executioner
step
.dungeon ZF
    >>Defend |cRXP_FRIENDLY_Sergeant Bly|r and his band, then move down with them after a short period of time
    >>Kill |cRXP_ENEMY_Nekrum Gutchewer|r. Loot him for |cRXP_LOOT_Nekrum's Medallion|r
    >>After you kill |cRXP_ENEMY_Nekrum Gutchewer|r, eat and drink then talk to |cRXP_FRIENDLY_Sergeant Bly|r to fight him
    >>Kill |cRXP_ENEMY_Sergeant Bly|r. Loot him for the |cRXP_LOOT_Divino-matic Rod|r
    .complete 2991,1 -- Nekrum's Medallion (1)  -- won't have this quest
    .complete 2768,1 -- Divino-matic Rod (1)
    .isOnQuest 2991
    .isOnQuest 2768
    .skipgossip
step -- won't have this quest
.dungeon ZF
    >>Defend |cRXP_FRIENDLY_Sergeant Bly|r and his band, then move down with them after a short period of time
    >>Kill |cRXP_ENEMY_Nekrum Gutchewer|r. Loot him for |cRXP_LOOT_Nekrum's Medallion|r
    .complete 2991,1 -- Nekrum's Medallion (1)
    .isOnQuest 2991
    .skipgossip
step
.dungeon ZF
    #label NekrumMedallion
    >>Defend |cRXP_FRIENDLY_Sergeant Bly|r and his band, then move down with them after a short period of time
    >>Kill |cRXP_ENEMY_Nekrum Gutchewer|r. Eat and drink then talk to |cRXP_FRIENDLY_Sergeant Bly|r to fight him
    >>Kill |cRXP_ENEMY_Sergeant Bly|r. Loot him for the |cRXP_LOOT_Divino-matic Rod|r
    .complete 2768,1 -- Divino-matic Rod (1)
    .isOnQuest 2768
    .skipgossip
step -- won't have this quest
.dungeon ZF
    >>Kill |cRXP_ENEMY_Hydromancer Velratha|r. Loot her for the |cRXP_LOOT_Tiara of the Deep|r and the |cRXP_LOOT_Second Mosh'aru Tablet|r
    .complete 2846,1 -- Tiara of the Deep (1)
    .complete 3527,2 -- Second Mosh'aru Tablet (1)
    .mob Hydromancer Velratha
    .isOnQuest 2846
    .isOnQuest 3527
step -- won't have this quest
.dungeon ZF
    >>Kill |cRXP_ENEMY_Hydromancer Velratha|r. Loot her for the |cRXP_LOOT_Tiara of the Deep|r
    .complete 2846,1 -- Tiara of the Deep (1)
    .mob Hydromancer Velratha
    .isOnQuest 2846
step -- won't have this quest
.dungeon ZF
    >>Kill |cRXP_ENEMY_Hydromancer Velratha|r. Loot her for the |cRXP_LOOT_Second Mosh'aru Tablet|r
    .complete 3527,2 -- Second Mosh'aru Tablet (1)
    .mob Hydromancer Velratha
    .isOnQuest 3527
step
.dungeon ZF
    #label Gahzrilla
    >>|cRXP_WARN_Use the|r |T133056:0|t[Mallet of Zul'Farrak] |cRXP_WARN_on the |cRXP_PICK_Gong of Zul'Farrak|r to summon|r |cRXP_ENEMY_Gahz'rilla|r
    >>Kill |cRXP_ENEMY_Gahz'rilla|r. Loot him for |cRXP_LOOT_Gahz'rilla's Electrified Scale|r
    >>|cRXP_WARN_If no one in your party has the|r |T133056:0|t[Mallet of Zul'Farrak] |cRXP_WARN_you will not be able to summon|r |cRXP_ENEMY_Gahz'rilla|r
    .complete 2770,1 -- Gahz'rilla's Electrified Scale (1)
    .mob Gahz'rilla
    .isOnQuest 2770
step
.dungeon ZF
    >>Kill |cRXP_ENEMY_Trolls|r. Loot them for their |cRXP_LOOT_Troll Temper|r
    .complete 3042,1 -- Troll Temper (20)
    .isOnQuest 3042
step
.dungeon ZF
    #completewith ZFTurnIn
    .subzone 976 >> Travel to Gadgetzan
step
.dungeon ZF
    .isQuestComplete 3042
    .goto Tanaris,51.413,28.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trenton Lighthammer|r
    .turnin 3042 >> Turn in Troll Temper
    .target Trenton Lighthammer
step
.dungeon ZF
    .isQuestComplete 2768
    .goto Tanaris,52.462,28.514
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
    .turnin 2768 >> Turn in Divino-matic Rod
    .target Chief Engineer Bilgewhizzle
step
.dungeon ZF
    .isQuestComplete 2865
    .goto Tanaris,51.566,26.759
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
    .turnin 2865 >> Turn in Scarab Shells
    .target Tran'rek
step
    .goto Tanaris,52.358,26.904
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
    .accept 3022 >> Accept Handle With Care
    .target Curgle Cranklehop
    .dungeon ZF
--XX Pickup now due to qlog space due to gahz'rilla
step -- won't have this quest
.dungeon ZF
    .isQuestComplete 3527
    .goto Tanaris,66.989,22.354
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
    .turnin 3527 >> Turn in The Prophecy of Mosh'aru
    --.accept 4787 >> Accept The Ancient Egg -- i assume we're not bothering going to jintha'alor
    .target Yeh'kinya
step
.dungeon ZF
    #completewith ZFTurnIn
    .goto Thousand Needles,77.782,77.263
    .subzone 2240 >> Travel to the Mirage Raceway
step -- won't have this quest
.dungeon ZF
    .isQuestComplete 2770
    .goto Thousand Needles,78.143,77.120
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
    .turnin 2770 >> Turn in Gahz'rilla
    .target Wizzle Brassbolts
step
.dungeon ZF
    #optional
    .abandon 2770 >> Abandon Gahz'rilla
]])

RXPGuides.RegisterGuide([[
#version 20
#season 2
#group RXP SOD TEST
#classic
<< Alliance Warlock

#name 43-44 Tanaris/Dustwallow SoD
#next 44-48 Feralas SoD

step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r
    .goto The Barrens,63.084,37.163
    .fly Theramore>> Fly to Theramore
    .target Bragok
step
    .goto Dustwallow Marsh,68.836,53.225,40,0
    .goto Dustwallow Marsh,67.716,51.708
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Privateer Groy|r
    >>|cRXP_FRIENDLY_Privateer Groy|r |cRXP_WARN_patrols through Theramore Isle|r
    .turnin 623 >> Turn in Akiris by the Bundle
    .target Privateer Groy
step << Warrior
    .goto Dustwallow Marsh,67.875,48.409
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Evencane|r up stairs in the Keep
    .trainer >> Train your class spells
    .target Captain Evencane
step << Paladin
    .goto Dustwallow Marsh,67.396,47.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Karman|r
    .trainer >> Train your class spells
    .target Brother Karman
step
    .skill firstaid,<225,1
    .goto Dustwallow Marsh,67.756,48.968
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Gustaf VanHowzen|r
    .accept 6624 >> Accept Triage   
    .target Doctor Gustaf VanHowzen
step
    .isOnQuest 6624
    .goto Dustwallow Marsh,67.756,48.968
    .use 16991 >> |cRXP_WARN_Channel the|r |T133682:0|t[Triage Bandage] |cRXP_WARN_on the |cRXP_FRIENDLY_Alliance Soldiers|r. Prioritize |cRXP_FRIENDLY_Critically Injured Soldiers|r first|r
    .complete 6624,1 -- 15 Patients Saved!
    .target Critically Injured Alliance Soldier
    .target Badly Injured Alliance Soldier
    .target Injured Alliance Soldier
step
    .isQuestComplete 6624
    .goto Dustwallow Marsh,67.756,48.968
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doctor Gustaf VanHowzen|r
    .turnin 6624 >> Turn in Triage
    .target Doctor Gustaf VanHowzen
step
    .isQuestComplete 1258
    .goto Dustwallow Marsh,66.336,45.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan Stern|r
    .turnin 1258 >> Turn in ... and Bugs
    .target Morgan Stern
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Janene|r
    .goto Dustwallow Marsh,66.587,45.223
    .home >> Set your Hearthstone to Theramore
    .target Innkeeper Janene
step
    .goto Dustwallow Marsh,67.476,51.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
    .fly Tanaris>> Fly to Tanaris
    .target Baldruc
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r and |cRXP_FRIENDLY_Spigot Operator Luglunket|r
    .accept 1690 >> Accept Wastewander Justice
    .goto Tanaris,52.462,28.514
    .accept 1707 >> Accept Water Pouch Bounty
    .goto Tanaris,52.486,28.445
    .target Chief Engineer Bilgewhizzle
    .target Spigot Operator Luglunket
step
    .goto Tanaris,52.358,26.904
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
    .accept 3022 >> Accept Handle With Care
    .target Curgle Cranklehop
step
    .goto Tanaris,51.566,26.759
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
    .turnin 2864 >> Turn in Tran'rek
    .target Tran'rek
step
    .goto Tanaris,50.960,27.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shreev|r
    .turnin 1188 >> Turn in Safety First
    .accept 1189 >> Accept Safety First
    .target Shreev 
step
	#completewith PortQ
	>>Kill |cRXP_ENEMY_Wastewander Bandits|r and |cRXP_ENEMY_Wastewander Thieves|r. Loot them for their |cRXP_LOOT_Wastewander Water Pouches|r
    >>|cRXP_WARN_Kill them en-route to Steamwheedle Port. Don't complete this immediately|r
    .goto Tanaris,60.4,24.6,0
    .goto Tanaris,63.6,31.0,0
    .complete 1690,1 -- Wastewander Bandit slain (10)
    .complete 1690,2 -- Wastewander Thief slain (10)
    .complete 1707,1 -- Wastewander Water Pouch (5)
    .mob Wastewander Bandit
    .mob Wastewander Thief
step
    .goto Tanaris,66.560,22.265
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haughty Modiste|r
    .accept 8365 >> Accept Pirate Hats Ahoy!
    .target Haughty Modiste
step
    .goto Tanaris,66.989,22.354
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
    .accept 3520 >> Accept Screecher Spirits
    .target Yeh'kinya
step
    #label PortQ
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r and |cRXP_FRIENDLY_Stoley|r
    .accept 8366 >> Accept Southsea Shakedown
    .goto Tanaris,67.058,23.891
    .turnin 2872 >> Turn in Stoley's Debt
    .accept 2873 >> Accept Stoley's Shipment
    .goto Tanaris,67.109,23.978
    .target Security Chief Bilgewhizzle
    .target Stoley
step
    .goto Tanaris,60.14,23.42,0
    .goto Tanaris,63.85,29.26,50,0
    .goto Tanaris,63.63,31.66,50,0
    .goto Tanaris,63.27,33.57,50,0
    .goto Tanaris,62.77,30.20,50,0
    .goto Tanaris,63.93,31.60
	>>Kill |cRXP_ENEMY_Wastewander Bandits|r and |cRXP_ENEMY_Wastewander Thieves|r. Loot them for their |cRXP_LOOT_Wastewander Water Pouches|r
    .complete 1690,1 -- Wastewander Bandit slain (10)
    .complete 1690,2 -- Wastewander Thief slain (10)
    .complete 1707,1 -- Wastewander Water Pouch (5)
    .mob Wastewander Bandit
    .mob Wastewander Thief
step
    #label tend
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r and |cRXP_FRIENDLY_Spigot Operator Luglunket|r
    .turnin 1690 >> Turn in Wastewander Justice
    .goto Tanaris,52.462,28.514
    .turnin 1707 >> Turn in Water Pouch Bounty
    .goto Tanaris,52.486,28.445
    .target Chief Engineer Bilgewhizzle
    .target Spigot Operator Luglunket
step
    #completewith NFF
    .goto Thousand Needles,78.064,77.126
    .zone Thousand Needles >> Travel to The Shimmering Flats
step
    .goto Thousand Needles,78.064,77.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fizzle Brassbolts|r
    .turnin 1137 >> Turn in News for Fizzle
    .target Fizzle Brassbolts
step
    .goto Thousand Needles,77.782,77.263
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
    .turnin 1119 >> Turn in Zanzil's Mixture and a Fool's Stout
    .timer 13,Kravel Koalbeard RP
    .accept 1120 >> Accept Get the Gnomes Drunk
	.isQuestTurnedIn 1118
    .target Kravel Koalbeard
step
    .goto Thousand Needles,77.563,76.941
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnome Pit Boss|r
    .turnin 1120 >> Turn in Get the Gnomes Drunk
	.isQuestTurnedIn 1118
    .target Gnome Pit Boss
step
    .goto Thousand Needles,77.782,77.263
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kravel Koalbeard|r
    .accept 1122 >> Accept Report Back to Fizzlebub
	.isQuestTurnedIn 1118
    .target Kravel Koalbeard
step
    .goto Thousand Needles,80.326,76.096
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Razzeric|r
    .turnin 1189 >> Turn in Safety First
    .target Razzeric
step
    #label NFF
    .goto Thousand Needles,80.178,75.882
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
    .accept 1190 >> Accept Keeping Pace
    .target Pozzik
step
    #completewith next
    .goto Thousand Needles,79.809,77.028
    .target Zamek
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamek|r create a diversion
    .turnin 1191 >> Turn in Zamek's Distraction
    .timer 30,Zamek's Distraction RP
step
    .goto Thousand Needles,77.208,77.386
    >>Click |cRXP_PICK_Rizzle's Unguarded Plans|r on the ground
    .turnin 1190 >> Turn in Keeping Pace
    .accept 1194 >> Accept Rizzle's Schematics
step
    .goto Thousand Needles,80.178,75.882
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pozzik|r
    .turnin 1194 >> Turn in Rizzle's Schematics
    .target Pozzik
step
    .destroy 5866 >> Delete the |T134575:0|t[Sample of Indurium Ore] you do not need it
step
.dungeon ZF
    .goto Thousand Needles,78.143,77.120
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
    .accept 2770 >> Accept Gahz'rilla
    .target Wizzle Brassbolts
step
.dungeon ZF
    .goto Tanaris,51.413,28.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trenton Lighthammer|r
    .accept 3042 >> Accept Troll Temper
    .target Trenton Lighthammer
step
.dungeon ZF
    .goto Tanaris,52.462,28.514
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
    .accept 2768 >> Accept Divino-matic Rod
    .target Chief Engineer Bilgewhizzle
step
.dungeon ZF
    .goto Tanaris,51.566,26.759
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
    .accept 2865 >> Accept Scarab Shells
    .target Tran'rek
step
.dungeon ZF
    .goto Tanaris,73.37,47.14
    .goto Tanaris,38.731,19.839
    .subzone 978 >> You will now run Zul'Farrak. Grind on |cRXP_ENEMY_Pirates|r while looking for a ZF group
step
.dungeon ZF
    .goto Tanaris,38.91,20.78,40,0
    .goto Tanaris,38.731,19.839
    .subzone 978,2 >> Enter Zul'Farrak
step
.dungeon ZF
    #completewith Gahzrilla
    >>Kill |cRXP_ENEMY_Trolls|r. Loot them for their |cRXP_LOOT_Troll Temper|r
    .complete 3042,1 -- Troll Temper (20)
    .isOnQuest 3042
step
.dungeon ZF
    #completewith next
    >>Kill |cRXP_ENEMY_Scarabs|r. Loot them for their |cRXP_LOOT_Uncracked Scarab Shell|r
    .complete 2865,1 -- Uncracked Scarab Shell (5)
    .isOnQuest 2865
step -- won't have this quest
.dungeon ZF
    >>Kill |cRXP_ENEMY_Theka the Martyr|r. Loot him for the |cRXP_LOOT_First Mosh'aru Tablet|r
    .complete 3527,1 -- First Mosh'aru Tablet (1)
    .mob Theka the Martyr
    .isOnQuest 3527
step
.dungeon ZF
    >>Kill |cRXP_ENEMY_Scarabs|r. Loot them for their |cRXP_LOOT_Uncracked Scarab Shell|r
    .complete 2865,1 -- Uncracked Scarab Shell (5)
    .isOnQuest 2865
step
.dungeon ZF
    #completewith NekrumMedallion
    +Ascend the Pyramid
    >>Kill the |cRXP_ENEMY_Sandfury Executioner|r. Loot him for the |cRXP_LOOT_Executioner's Key|r
    >>|cRXP_WARN_Anyone in the party may loot the|r |cRXP_LOOT_Key|r
    >>|cRXP_WARN_Use the|r |cRXP_LOOT_Executioner's Key|r |cRXP_WARN_on one of the |cRXP_PICK_Troll Cages|r to free |cRXP_FRIENDLY_Sergeant Bly|r and his band|r
    .collect 8444,1 -- Executioner's Key (1)
    .disablecheckbox
    .isOnQuest 2991,2768
    .mob Sandfury Executioner
step
.dungeon ZF
    >>Defend |cRXP_FRIENDLY_Sergeant Bly|r and his band, then move down with them after a short period of time
    >>Kill |cRXP_ENEMY_Nekrum Gutchewer|r. Loot him for |cRXP_LOOT_Nekrum's Medallion|r
    >>After you kill |cRXP_ENEMY_Nekrum Gutchewer|r, eat and drink then talk to |cRXP_FRIENDLY_Sergeant Bly|r to fight him
    >>Kill |cRXP_ENEMY_Sergeant Bly|r. Loot him for the |cRXP_LOOT_Divino-matic Rod|r
    .complete 2991,1 -- Nekrum's Medallion (1)  -- won't have this quest
    .complete 2768,1 -- Divino-matic Rod (1)
    .isOnQuest 2991
    .isOnQuest 2768
    .skipgossip
step -- won't have this quest
.dungeon ZF
    >>Defend |cRXP_FRIENDLY_Sergeant Bly|r and his band, then move down with them after a short period of time
    >>Kill |cRXP_ENEMY_Nekrum Gutchewer|r. Loot him for |cRXP_LOOT_Nekrum's Medallion|r
    .complete 2991,1 -- Nekrum's Medallion (1)
    .isOnQuest 2991
    .skipgossip
step
.dungeon ZF
    #label NekrumMedallion
    >>Defend |cRXP_FRIENDLY_Sergeant Bly|r and his band, then move down with them after a short period of time
    >>Kill |cRXP_ENEMY_Nekrum Gutchewer|r. Eat and drink then talk to |cRXP_FRIENDLY_Sergeant Bly|r to fight him
    >>Kill |cRXP_ENEMY_Sergeant Bly|r. Loot him for the |cRXP_LOOT_Divino-matic Rod|r
    .complete 2768,1 -- Divino-matic Rod (1)
    .isOnQuest 2768
    .skipgossip
step -- won't have this quest
.dungeon ZF
    >>Kill |cRXP_ENEMY_Hydromancer Velratha|r. Loot her for the |cRXP_LOOT_Tiara of the Deep|r and the |cRXP_LOOT_Second Mosh'aru Tablet|r
    .complete 2846,1 -- Tiara of the Deep (1)
    .complete 3527,2 -- Second Mosh'aru Tablet (1)
    .mob Hydromancer Velratha
    .isOnQuest 2846
    .isOnQuest 3527
step -- won't have this quest
.dungeon ZF
    >>Kill |cRXP_ENEMY_Hydromancer Velratha|r. Loot her for the |cRXP_LOOT_Tiara of the Deep|r
    .complete 2846,1 -- Tiara of the Deep (1)
    .mob Hydromancer Velratha
    .isOnQuest 2846
step -- won't have this quest
.dungeon ZF
    >>Kill |cRXP_ENEMY_Hydromancer Velratha|r. Loot her for the |cRXP_LOOT_Second Mosh'aru Tablet|r
    .complete 3527,2 -- Second Mosh'aru Tablet (1)
    .mob Hydromancer Velratha
    .isOnQuest 3527
step
.dungeon ZF
    #label Gahzrilla
    >>|cRXP_WARN_Use the|r |T133056:0|t[Mallet of Zul'Farrak] |cRXP_WARN_on the |cRXP_PICK_Gong of Zul'Farrak|r to summon|r |cRXP_ENEMY_Gahz'rilla|r
    >>Kill |cRXP_ENEMY_Gahz'rilla|r. Loot him for |cRXP_LOOT_Gahz'rilla's Electrified Scale|r
    >>|cRXP_WARN_If no one in your party has the|r |T133056:0|t[Mallet of Zul'Farrak] |cRXP_WARN_you will not be able to summon|r |cRXP_ENEMY_Gahz'rilla|r
    .complete 2770,1 -- Gahz'rilla's Electrified Scale (1)
    .mob Gahz'rilla
    .isOnQuest 2770
step
.dungeon ZF
    >>Kill |cRXP_ENEMY_Trolls|r. Loot them for their |cRXP_LOOT_Troll Temper|r
    .complete 3042,1 -- Troll Temper (20)
    .isOnQuest 3042
step
.dungeon ZF
    #completewith ZFTurnIn
    .subzone 976 >> Travel to Gadgetzan
step
.dungeon ZF
    .isQuestComplete 3042
    .goto Tanaris,51.413,28.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Trenton Lighthammer|r
    .turnin 3042 >> Turn in Troll Temper
    .target Trenton Lighthammer
step
.dungeon ZF
    .isQuestComplete 2768
    .goto Tanaris,52.462,28.514
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
    .turnin 2768 >> Turn in Divino-matic Rod
    .target Chief Engineer Bilgewhizzle
step
.dungeon ZF
    .isQuestComplete 2865
    .goto Tanaris,51.566,26.759
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
    .turnin 2865 >> Turn in Scarab Shells
    .target Tran'rek
step -- won't have this quest
.dungeon ZF
    .isQuestComplete 3527
    .goto Tanaris,66.989,22.354
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
    .turnin 3527 >> Turn in The Prophecy of Mosh'aru
    --.accept 4787 >> Accept The Ancient Egg -- i assume we're not bothering going to jintha'alor
    .target Yeh'kinya
step
.dungeon ZF
    #completewith ZFTurnIn
    .goto Thousand Needles,77.782,77.263
    .subzone 2240 >> Travel to the Mirage Raceway
step -- won't have this quest
.dungeon ZF
    .isQuestComplete 2770
    .goto Thousand Needles,78.143,77.120
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizzle Brassbolts|r
    .turnin 2770 >> Turn in Gahz'rilla
    .target Wizzle Brassbolts
step
.dungeon ZF
    #optional
    .abandon 2770 >> Abandon Gahz'rilla
step
    .hs >> Hearth back to Theramore
	>>|cRXP_BUY_Buy food/water if needed|r
step << Warlock
    #completewith next
    .goto Dustwallow Marsh,55.26,50.54,45 >> Swim west towards |cRXP_FRIENDLY_Tabetha|r
step << Warlock
    #completewith next
    +|cRXP_WARN_The follow up quest will have |cRXP_FRIENDLY_Tabetha|r summon |cRXP_ENEMY_Demon of the Orb|r which is a level 40 Elite that you need to kill. This quest is simple so long as you don't agro additional mobs|r
    >>|cRXP_WARN_Kill any mobs around |cRXP_FRIENDLY_Tabetha's|r farm before accepting the next quest|r
step << Warlock
    .goto Dustwallow Marsh,46.021,57.096
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 1799 >> Turn in Fragments of the Orb of Orahil
    .accept 4961 >> Accept Cleansing of the Orb of Orahil
    .target Tabetha
step << Warlock
    .goto Dustwallow Marsh,45.87,56.74
    >>Kill |cRXP_ENEMY_Demon of the Orb|r
    >>|cRXP_WARN_Cast|r |T136183:0|t[Fear] |cRXP_WARN_continously on |cRXP_ENEMY_Demon of the Orb|r until your DoTs kill it|r
    .complete 4961,1 --1/1 Demon of the Orb slain
    .mob Demon of the Orb
step << Warlock
    .goto Dustwallow Marsh,46.021,57.096
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tabetha|r
    .turnin 4961 >> Turn in Cleansing of the Orb of Orahil
    .accept 4976 >> Accept Returning the Cleansed Orb
    .target Tabetha
step
	#softcore
    #completewith next
    .deathskip >> Die and respawn at the Spirit Healer in Theramore
    .target Spirit Healer
step
    #hardcore
    .isOnQuest 626
    #completewith next
    .goto Dustwallow Marsh,30.970,65.965,-1
    .goto 1414,53.26,71.18,-1
    +|cRXP_WARN_Logout skip on the Mushroom to teleport to the RFD entrance, then zone into RFD|r 
    .link /run InviteUnit("a");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_Click here to Copy + Paste this macro once you're inside RFD to ghetto Hearth to Theramore Isle|r
    .link https://youtu.be/WClMOzjgOgc >> |cRXP_WARN_Click here for video reference|r
    >>If you are unable to do this, run back to Theramore Isle
step
    .goto Dustwallow Marsh,67.476,51.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baldruc|r
    .fly Ratchet>> Fly to Ratchet
    .target Baldruc
step << Warlock
    .goto The Barrens,62.509,35.449
    .target Menara Voidrender
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Menara Voidrender|r
    .turnin -4962 >> Turn in Shard of a Felhound
    .turnin -4976 >> Turn in Returning the Cleansed Orb
step << Warlock
    .goto The Barrens,62.509,35.449
    .target Menara Voidrender
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Menara Voidrender|r
    >>|cRXP_WARN_Wait out the RP|r
    .accept 4964 >> Accept The Completed Orb of Dar'Orahil
    .turnin 4964 >> Turn in The Completed Orb of Dar'Orahil
    .isQuestTurnedIn 4962
    .isQuestTurnedIn 4976
step
    .goto The Barrens,62.639,37.421,-1
    .goto The Barrens,62.680,37.395,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fuzruckle|r or |cRXP_FRIENDLY_Zikkel|r
    .bankdeposit 5807,6257 >> Deposit the following items into your bank:
    >>|T133471:0|t[Fool's Stout Report] -- 5807
    >>|T133707:0|t[Roc Gizzard] (If you have any) -- 6257
    .target Fuzruckle
    .target Zikkel
]])

RXPGuides.RegisterGuide([[
#version 20
#season 2
#group RXP SOD TEST
#classic
<< Alliance

#name 44-48 Feralas SoD
#next 48-49 Tanaris SoD


step
    #hardcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r << !Warlock
    .goto The Barrens,63.084,37.163 << Warlock
    .goto Tanaris,51.006,29.345 << !Warlock
    .fly Thalanaar >> Fly to Thalanaar
    .target Bragok << Warlock
    .target Bera Stonehammer << !Warlock
step
    #season 2
    #softcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bragok|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r << !Warlock
    .goto The Barrens,63.084,37.163 << Warlock
    .goto Tanaris,51.006,29.345 << !Warlock
    .fly Thalanaar>> Fly to Thalanaar
    .target Bragok << Warlock
    .target Bera Stonehammer << !Warlock
step << Warlock
    #season 2
    #sticky
    #completewith FeralasEnd
    #label ExplorerImp
    >>As you're questing cast |T136163:0|t|cRXP_FRIENDLY_[Drain Soul]|r on mobs untill you receive an |T133257:0|t|cRXP_LOOT_Explorer's Soul|r. |cRXP_WARN_Use it to learn how to summon an|r |T236294:0|t|cRXP_FRIENDLY_[Explorer Imp]|r
    .train 445459 >>|cRXP_WARN_Use|r |T133257:0|t|cRXP_LOOT_Explorer's Soul|r |cRXP_WARN_to learn how to summon an|r |T236294:0|t[|cRXP_FRIENDLY_Explorer Imp|r]
    .train 445459,1 --Skips if you already have Explorer Imp
    .train 1120,3 --Skips if you don't have drain soul
    .use 221978
step << Warlock/Mage
    #season 2
    #requires ExplorerImp << Warlock
    #sticky
    #completewith FeralasEnd
    #label FelPortalRune
    >>You are in a zone with |cRXP_FRIENDLY_Fel Portals|r present. If you find one summon your |T236294:0|t[|cRXP_FRIENDLY_Explorer Imp|r] and talk to it while next to a portal to send it on an expedition. After 10-20 minutes it will return with loot and a chance to award you with |T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r] << Warlock
    >>You are in a zone with |cRXP_FRIENDLY_Fel Portals|r present. If you find one close it using a |T134945:0|t[|cRXP_LOOT_Scroll of Spatial Mending|r]. This will award you with |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r] << Mage
    >>|cRXP_WARN_Be on the lookout for the portals untill you get the rune|r
    .collect 221499,1 << Warlock --rune of the felguard
    .collect 223147,1 << Mage --Spell Notes: Balefire Bolt
    .itemcount 220792,1 << Mage --Scroll of Spatial Mending
    .use 223148 << Warlock --Otherworldy Treasure
    .use 220792 << Mage
    .train 429311,1 << Mage
    .train 431756,1 << Warlock
    .train 1120,3 << Warlock --Skips if you don't have drain soul
    .unitscan Fel Sliver
    .unitscan Fel Crack
    .unitscan Fel Tear
    .unitscan Fel Scar
    .unitscan Fel Rift
step << Warlock/Mage
    #season 2
    #requires FelPortalRune
    #sticky
    #completewith FeralasEnd
    .itemcount 221499,1 << Warlock --Rune of the Felguard
    .itemcount 223147,1 << Mage --Spell Notes: Balefire Bolt
    .train 431756 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r] |cRXP_WARN_to learn|r |T136216:0|t[Summon Felguard] << Warlock
    .train 429311 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r |cRXP_WARN_to train|r |T135809:0|t[Balefire Bolt] << Mage
    .use 221499 << Warlock
    .use 223147 << Mage
step
    #hardcore
    #completewith next
    .goto Feralas,30.239,43.251
    .subzone 1116 >> |cRXP_WARN_Run to Feathermoon Stronghold. Be careful of the |cRXP_ENEMY_Horde Guards|r in Camp Mojache en route|r
    >>|cRXP_WARN_It is always faster to swim across the water than waiting for the boat|r
step
    #season 2
    #completewith next
    .goto Feralas,30.239,43.251
    .subzone 1116 >> |cRXP_WARN_Run to Feathermoon Stronghold. Be careful of the |cRXP_ENEMY_Horde Guards|r in Camp Mojache en route|r
    >>|cRXP_WARN_It is always faster to swim across the water than waiting for the boat|r
step
    .goto Feralas,30.632,42.706
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
    .accept 2821 >> Accept The Mark of Quality
    .target Pratt McGrubben
step << Hunter
    #completewith next
    .goto Feralas,31.466,43.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Antarius|r
    .stable >> Stable your pet. You will tame a |cRXP_ENEMY_Longtooth Runner|r shortly
    .target Antarius
step << Hunter
    .goto Feralas,29.80,49.19
    >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Longtooth Runner|r to tame it|r -- .tame 5286 
    .train 17266 >>|cRXP_WARN_Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 6)]
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
    .mob Longtooth Runner
step
    #completewith start
    .goto Feralas,31.043,43.116
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mardrack Greenwell|r
    >>|cRXP_WARN_Restock on Food/Water. There is a long grind section ahead|r << !sod
    .vendor 7941 >>|cRXP_BUY_Buy 5 stacks of food/water|r << !sod
    .vendor 7941 >>|cRXP_BUY_Restock on food/water|r << sod
    .collect 4601,5 >>|cRXP_WARN_Buy some|r |T133951:0|t|cRXP_PICK_Soft Banana Bread|r|cRXP_WARN_. You will need at least one for a rune later|r << Hunter sod
    .target Mardrack Greenwell
step << Hunter
    #completewith start
    .goto Feralas,30.645,43.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faralorn|r
    .vendor 7942 >>|cRXP_BUY_Buy 25 stacks of Ammo|r << !sod
    .vendor 7942 >>|cRXP_BUY_Restock on Ammo|r << sod
    .target Faralorn
step
    .goto Feralas,30.966,43.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Shyria|r
    .home >> Set your Hearthstone to Feralas
    .target Innkeeper Shyria
step << Hunter
    .goto Feralas,31.466,43.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Antarius|r
    .stable >> Withdraw your pet from the Stable
    .target Antarius
    .zoneskip Feralas,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Latronicus Moonspear|r and |cRXP_FRIENDLY_Shandris Feathermoon|r
    .accept 4124 >> Accept The Missing Courier
    .goto Feralas,30.379,46.170
    .accept 2866 >> Accept The Ruins of Solarsal 
    .goto Feralas,30.276,46.168
    .target Latronicus Moonspear
    .target Shandris Feathermoon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Troyas Moonbreeze|r and |cRXP_FRIENDLY_Angelas Moonbreeze|r
    .accept 2939 >> Accept In Search of Knowledge
    .goto Feralas,31.777,45.498
    .accept 2982 >> Accept The High Wilderness
    .goto Feralas,31.828,45.611
    .target Troyas Moonbreeze
    .target Angelas Moonbreeze
step
    #label start
    .goto Feralas,32.14,45.46,10,0
    .goto Feralas,31.860,45.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginro Hearthkindle|r up stairs
    .turnin 4124 >> Turn in The Missing Courier
    .accept 4125 >> Accept The Missing Courier
    .target Ginro Hearthkindle
step
    .goto Feralas,26.316,52.343
    >>Click the |cRXP_PICK_Solarsal Gazebo|r
    .turnin 2866 >> Turn in The Ruins of Solarsal
    .accept 2867 >> Accept Return to Feathermoon Stronghold
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r and |cRXP_FRIENDLY_Latronicus Moonspear|r
    .turnin 2867 >> Turn in Return to Feathermoon Stronghold
    .accept 3130 >> Accept Against the Hatecrest
    .goto Feralas,30.276,46.168
    .turnin 3130 >> Turn in Against the Hatecrest
    .accept 2869 >> Accept Against the Hatecrest
    .goto Feralas,30.379,46.170
    .target Latronicus Moonspear
    .target Shandris Feathermoon
step
    .goto Feralas,26.6,52.0,70,0
    .goto Feralas,26.2,55.2,70,0
    .goto Feralas,29.6,53.6,70,0
    .goto Feralas,29.0,50.4,70,0
    .goto Feralas,26.6,53.4
    >>Kill |cRXP_ENEMY_Hatecrest Screamers|r, |cRXP_ENEMY_Hatecrest Wave Riders|r, |cRXP_ENEMY_Hatecrest Warriors|r and |cRXP_ENEMY_Hatecrest Sirens|r. Loot them for their |cRXP_LOOT_Naga Scales|r
    .complete 2869,1 -- Hatecrest Naga Scale (10)
    .mob Hatecrest Screamer
    .mob Hatecrest Wave Rider
    .mob Hatecrest Warrior
    .mob Hatecrest Siren
step
    .goto Feralas,30.379,46.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Latronicus Moonspear|r
    .turnin 2869 >> Turn in Against the Hatecrest
    .accept 2870 >> Accept Against Lord Shalzaru
    .target Latronicus Moonspear
step
    #completewith next
    .goto Feralas,25.49,64.92,40,0
    .goto Feralas,26.13,67.41,30 >> Travel to the Isle of Dread. Enter Shalzaru's Lair
step
    .goto Feralas,28.51,70.59
    >>Kill |cRXP_ENEMY_Lord Shalzaru|r. Loot him for the |cRXP_LOOT_Mysterious Relic|r
    .complete 2870,1 -- Mysterious Relic (1)
    .mob Lord Shalzaru
step
    #completewith next
    .goto Feralas,38.72,75.07,40 >> Exit the naga cave and head southeast towards the ocean
    .goto Feralas,41.24,74.54,40 >> Swim to the mainland
step
    .goto Feralas,45.44,64.96
    >>Click on the |cRXP_PICK_Wrecked Row Boat|r in the water
    .turnin 4125 >> Turn in The Missing Courier
    .accept 4127 >> Accept Boat Wreckage
step << Druid
	#completewith next
	.cast 18960 >> Cast Teleport: Moonglade
	.zoneskip Moonglade
step << Druid
	>>Teleport to Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
	.goto Moonglade,52.53,40.56
    .trainer >> Train your class spells
    .target Loganaar
step << Mage
    #completewith next
	.zone Stormwind City >> Teleport to Stormwind City
step << Mage
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
    .trainer >> Train your class spells
    .target Elsharin
	.target Jennea Cannon
step
    #completewith next
    .hs >> Hearth to Feathermoon Stronghold
	>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
    .goto Feralas,32.14,45.46,10,0
    .goto Feralas,31.860,45.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginro Hearthkindle|r up stairs
    .turnin 4127 >> Turn in Boat Wreckage
    .accept 4129 >> Accept The Knife Revealed
    .target Ginro Hearthkindle
step
    .goto Feralas,32.447,43.788
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quintis Jonespyre|r atop the tree house
    .turnin 4129 >> Turn in The Knife Revealed
    .timer 12,The Knife Revealed RP
    .accept 4130 >> Accept Psychometric Reading
    .target Quintis Jonespyre
step
    .goto Feralas,32.14,45.46,10,0
    .goto Feralas,31.860,45.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginro Hearthkindle|r up stairs
    .turnin 4130 >> Turn in Psychometric Reading
    .accept 4131 >> Accept The Woodpaw Gnolls
    .target Ginro Hearthkindle
step
    .goto Feralas,30.379,46.170
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Latronicus Moonspear|r
    .turnin 2870 >> Turn in Against Lord Shalzaru
    .accept 2871 >> Accept Delivering the Relic
    .target Latronicus Moonspear
step
    .goto Feralas,30.077,45.060
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vestia Moonspear|r
    .turnin 2871 >> Turn in Delivering the Relic
    .target Vestia Moonspear
step
    #completewith next
    .goto Feralas,45.07,44.89,150 >> Swim to the mainland
step
    #completewith spirits
    .goto Feralas,52.05,48.88,0
    .goto Feralas,46.6,39.4,0
    .goto Feralas,57.8,50.8,0
    >>Kill |cRXP_ENEMY_Vale Screechers|r and |cRXP_ENEMY_Rogue Vale Screechers|r
    .use 10699 >> |cRXP_WARN_Use|r |T135474:0|t[Yeh'kinya's Bramble] |cRXP_WARN_on their corpses to summon a|r |cRXP_FRIENDLY_Screecher Spirit|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Screecher Spirit|r
    .complete 3520,1 -- Screecher Spirits Collected (3)
    .skipgossip
    .mob Vale Screecher
    .mob Rogue Vale Screecher
    .target Screecher Spirit
step
    .goto Feralas,55.41,45.54
    .zone 1414 >> |cRXP_WARN_You must explore the Dire Maul zone as a pre-requisite to unlock a quest later on. Get close to the Dire Maul zone border until your General Chat changes to Dire Maul|r  
    .link https://youtu.be/ayEKuXSUU2A >> |cRXP_WARN_Click here for video reference|r
step
    .goto Feralas,55.63,56.44,50,0
    .goto Feralas,53.50,55.47
    >>Kill |cRXP_ENEMY_Feral Scar Yetis|r, |cRXP_ENEMY_Enraged Feral Scars|r and |cRXP_ENEMY_Hulking Feral Scars|r. Loot them for their |cRXP_LOOT_Thick Yeti Hides|r
    .complete 2821,1 -- Thick Yeti Hide (10)
    .mob Feral Scar Yeti
    .mob Enraged Feral Scar
    .mob Hulking Feral Scar
    .train 415428,3 << Hunter sod
step << Hunter
    #season 2
    #sticky
    #completewith CatlikeReflexes
    .goto Feralas,55.63,56.44,50,0
    .goto Feralas,53.50,55.47
    >>Kill |cRXP_ENEMY_Feral Scar Yetis|r, |cRXP_ENEMY_Enraged Feral Scars|r and |cRXP_ENEMY_Hulking Feral Scars|r. Loot them for their |cRXP_LOOT_Thick Yeti Hides|r
    .complete 2821,1 -- Thick Yeti Hide (10)
    .mob Feral Scar Yeti
    .mob Enraged Feral Scar
    .mob Hulking Feral Scar
    .train 415428,1 << Hunter sod
step
    .use 8705 >> |cRXP_WARN_Use the |T132836:0|t[|cRXP_LOOT_OOX-22/FE Distress Beacon|r] to start the quest|r
    .collect 8705,1,2766 -- OOX-22/FE Distress Beacon (1)
    .accept 2766 >> Accept Find OOX-22/FE!
    .itemcount 8705,1 -- OOX-22/FE Distress Beacon (1)
step
    .isOnQuest 2766
    .goto Feralas,53.353,55.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homing Robot OOX-22/FE|r
    .turnin 2766 >> Turn in Find OOX-22/FE!
    .target Homing Robot OOX-22/FE
step
    .isQuestTurnedIn 2766
    .goto Feralas,53.353,55.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homing Robot OOX-22/FE|r
    .accept 2767,1 >> Accept Rescue OOX-22/FE!
    .target Homing Robot OOX-22/FE
step
    .isOnQuest 2767
    .goto Feralas,45.67,43.38
    >>Escort the |cRXP_FRIENDLY_Homing Robot OOX-22/FE|r to safety
    >>|cRXP_WARN_This quest can be hard. You have to fight waves of 3/4 mobs along the way. Skip this step if its too difficult|r
    .complete 2767,1
    .target Homing Robot OOX-22/FE
step << Hunter
    #season 2
    >>Go back to the Yeti cave in The High Wilderness
    .goto 1444/1,1599.300,-4977.800,10
    .train 415428,1 << Hunter sod
    .isQuestComplete 2761
step << Hunter
    #season 2
    #label CatlikeReflexes
    .goto 1444/1,1778.900,-5179.100,
    >>Take the middle path at the crossroads after you enter the second cave. At the back of it you'll find a |cRXP_FRIENDLY_Groddoc Infant|r
    .gossip 222376,1 >>Complete the monkeys dialogue to feed it the |T133951:0|t|cRXP_PICK_Soft Banana Bread|r or |T133980:0|t|cRXP_PICK_Tel'Abim Banana|r. It will spawn a version of it that follows you around.
    .target Groddoc Infant
    .train 415428,1 << Hunter sod
step << Hunter
    #season 2
    .goto Feralas,55.63,56.44,50,0
    .goto Feralas,53.50,55.47
    >>Finish off killing |cRXP_ENEMY_Yetis|r for their Hides
    >>|cRXP_WARN_Be careful as the|r |cRXP_FRIENDLY_Groddoc Infant|r |cRXP_WARN_following you is aggresive and will attack nearby enemies including opposing faction players|r
    .complete 2821,1 -- Thick Yeti Hide (10)
    .mob Feral Scar Yeti
    .mob Enraged Feral Scar
    .mob Hulking Feral Scar
    .train 415428,1 << Hunter sod
step << Hunter
    #season 2
    .goto 1444/1,1330.900,-5078.100
    >>Escort the |cRXP_FRIENDLY_Groddoc Infant|r to a |cRXP_FRIENDLY_Groddoc Matriarch|r marked on your map. |cRXP_WARN_Be careful, the infant is agressive and will attack nearby enemies including opposing faction players|r
    .gossip 222406,1 >>Once you're there talk to the Matriarch and complete her dialogue to receive |T134419:0|t[|cRXP_FRIENDLY_Rune of the Jungle Cat|r]
    .collect 220791,1 -- Rune of the Jungle Cat
    .train 415428,1 << Hunter sod
step << Hunter
    #season 2
    .train 415428 >>Use |T134419:0|t[|cRXP_FRIENDLY_Rune of the Jungle Cat|r] |cRXP_WARN_to train|r |T132167:0|t[Catlike Reflexes]
    .use 220791
    .train 415428,1 << Hunter sod
step << Hunter
    #optional
    #completewith next
    #season 2
    .engrave 1 >> Open your character sheet and engrave your helmet with |T132167:0|t[Catlike Reflexes]
    .train 415428,3
step
    #label Egg
    .goto Feralas,53.657,74.365,0
    .goto Feralas,56.653,75.892,0
    .goto Feralas,56.708,76.724,0
    .goto Feralas,55.906,76.035,0
    .goto Feralas,53.657,74.365,10,0
    .goto Feralas,56.653,75.892,10,0
    .goto Feralas,56.708,76.724,10,0
    .goto Feralas,55.906,76.035,0
    >>Loot a |cRXP_LOOT_Hippogryph Egg|r from a nest
    .collect 8564,1,2741,1 -- Hippogryph Egg (1)
step
    #label spirits
    >>Kill |cRXP_ENEMY_Gordunni Shamans|r, |cRXP_ENEMY_Gordunni Warlocks|r and |cRXP_ENEMY_Gordunni Brutes|r
    >>|cRXP_WARN_Prioritize killing |cRXP_ENEMY_Gordunni Shamans|r. You may need to kill other |cRXP_ENEMY_Gordunni Ogres|r to force |cRXP_ENEMY_Gordunni Shamans|r to spawn|r
    .complete 2982,2 -- Gordunni Shaman slain (8)
    .goto Feralas,59.54,63.13,60,0
    .goto Feralas,58.42,67.08,60,0
    .goto Feralas,59.97,66.14,60,0
    .goto Feralas,60.91,68.55,60,0
    .goto Feralas,59.48,66.77
    .goto Feralas,61.70,73.09,0
    .goto Feralas,59.11,69.93,0
    .complete 2982,1 -- Gordunni Warlock slain (8)
    .goto Feralas,59.54,63.13,60,0
    .goto Feralas,58.42,67.08,60,0
    .goto Feralas,59.97,66.14,60,0
    .goto Feralas,60.91,68.55,60,0
    .goto Feralas,59.09,64.45,60,0
    .goto Feralas,61.02,56.10,60,0
    .goto Feralas,61.43,54.30,60,0
    .goto Feralas,59.54,63.13
    .goto Feralas,61.70,73.09,0
    .goto Feralas,59.11,69.93,0
    .complete 2982,3 -- Gordunni Brute slain (8)
    .goto Feralas,59.09,64.45,60,0
    .goto Feralas,61.02,56.10,60,0
    .goto Feralas,61.43,54.30,60,0
    .goto Feralas,61.02,56.10
    .mob Gordunni Shaman
    .mob Gordunni Warlock
    .mob Gordunni Brute
step
    .goto Feralas,53.2,47.2,60,0
    .goto Feralas,58.0,47.8,60,0
    .goto Feralas,60.8,50.8,60,0
    .goto Feralas,55.8,54.0,60,0
    .goto Feralas,58.6,58.8,60,0
    .goto Feralas,60.6,62.2
    .goto Feralas,53.2,47.2,0
    .goto Feralas,58.0,47.8,0
    .goto Feralas,60.8,50.8,0
    .goto Feralas,55.8,54.0,0
    .goto Feralas,58.6,58.8,0
    >>Kill |cRXP_ENEMY_Vale Screechers|r and |cRXP_ENEMY_Rogue Vale Screechers|r
    .use 10699 >> |cRXP_WARN_Use|r |T135474:0|t[Yeh'kinya's Bramble] |cRXP_WARN_on their corpses to summon a|r |cRXP_FRIENDLY_Screecher Spirit|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Screecher Spirit|r
    .complete 3520,1 -- Screecher Spirits Collected (3)
    .skipgossip
    .mob Vale Screecher
    .mob Rogue Vale Screecher
    .target Screecher Spirit
step
    .goto Feralas,66.56,46.87,0
    .goto Feralas,66.56,46.87,30,0
    .goto Feralas,65.945,45.651
    >>|cRXP_WARN_Kill some of the |cRXP_ENEMY_Grimtotem|r around the giant cage containing |cRXP_FRIENDLY_Captured Sprite Darters|r before accepting this escort quest|r
    >>|cRXP_ENEMY_Grimtotem Raiders|r |cRXP_WARN_cast|r |T132149:0|t[Net] |cRXP_WARN_which immobilizes movement for 10 seconds|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kindal Moonweaver|r
    .accept 2969 >> Accept Freedom for All Creatures
    .target Kindal Moonweaver
    .mob Grimtotem Naturalist
    .mob Grimtotem Raider
    .mob Grimtotem Shaman
step
    .goto Feralas,66.666,46.754
    >>Click the |cRXP_PICK_Cage Door|r to release the |cRXP_FRIENDLY_Captured Sprite Darters|r
    >>Kill any |cRXP_ENEMY_Grimtotem|r that are attacking the |cRXP_FRIENDLY_Captured Sprite Darters|r
    >>|cRXP_ENEMY_Grimtotem Raiders|r |cRXP_WARN_cast|r |T132149:0|t[Net] |cRXP_WARN_which immobilizes movement for 10 seconds|r
    .complete 2969,1
    .mob Grimtotem Naturalist
    .mob Grimtotem Raider
    .mob Grimtotem Shaman
    .target Captured Sprite Darter
step   
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kindal Moonweaver|r and |cRXP_FRIENDLY_Jer'kai Moonweaver|r
    .turnin 2969 >> Turn in Freedom for All Creatures
    .goto Feralas,65.945,45.651
    .accept 2970 >> Accept Doling Justice
    .goto Feralas,65.946,45.607
    .target Kindal Moonweaver
    .target Jer'kai Moonweaver
step << Warlock
    #sticky
    #completewith Grimtotems
    #season 2
    .goto Feralas,69.6,43.3,0
    >>Head to the marked location west of Camp Mojache. Look for a |cRXP_ENEMY_Dead Diseased Grimtotem Shaman|r laying next to a tree. Next to the corpse you will find a |cRXP_PICK_Grimtotem Chest|r, loot it for |T133291:0|t|cRXP_LOOT_Grimtotem Necklace|r
    .collect 221974,1 --Grimtotem Necklace 1/1
    .unitscan Dead Diseased Grimtotem Shaman
    .train 431743,1
step << Druid
    #season 2
    #optional
    #label GaleWinds
    #completewith DolingJustice
    .train 431451,1
    >>You can go a bit out of your way to find and kill |cRXP_ENEMY_Namida Grimtotem|r (marked on your map). This awards |T134419:0|t[|cRXP_FRIENDLY_Rune of the Windstorm|r], useless for leveling so feel free to skip this step if you don't care about collecting it
    .goto Feralas,66.8,38.6
    .collect 220754,1 
    .mob Namida Grimtotem
step << Druid
    #season 2
    #optional
    #requires GaleWinds
    #completewith DolingJustice
    .itemcount 220754,1
    .use 220754
    .train 431451 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Windstorm|r] |cRXP_WARN_to train|r |T236154:0|t[Gale Winds]
step
    #label Grimtotems
    .goto Feralas,66.65,46.58,60,0
    .goto Feralas,68.70,46.91,60,0
    .goto Feralas,69.14,39.10,60,0
    .goto Feralas,66.85,38.80,60,0
    .goto Feralas,69.14,39.10
    .goto Feralas,66.85,38.80,0
    >>Kill |cRXP_ENEMY_Grimtotem Naturalists|r, |cRXP_ENEMY_Grimtotem Raiders|r and |cRXP_ENEMY_Grimtotem Shamans|r
    >>|cRXP_ENEMY_Grimtotem Raiders|r |cRXP_WARN_cast|r |T132149:0|t[Net] |cRXP_WARN_which immobilizes movement for 10 seconds|r
    .complete 2970,1 -- Grimtotem Naturalist slain (12)
    .complete 2970,2 -- Grimtotem Raider slain (10)
    .complete 2970,3 -- Grimtotem Shaman slain (6)
    .mob Grimtotem Naturalist
    .mob Grimtotem Raider
    .mob Grimtotem Shaman
step << Warlock
    #season 2
    .goto Feralas,69.6,43.3,
    >>Head to the marked location west of Camp Mojache. Look for a |cRXP_ENEMY_Dead Diseased Grimtotem Shaman|r laying next to a tree. Next to the corpse you will find a |cRXP_PICK_Grimtotem Chest|r, loot it for |T133291:0|t|cRXP_LOOT_Grimtotem Necklace|r
    .collect 221974,1 --Grimtotem Necklace 1/1
    .unitscan Dead Diseased Grimtotem Shaman
    .train 431743,1
step
    #label DolingJustice
    .goto Feralas,65.946,45.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jer'kai Moonweaver|r
    .turnin 2970 >> Turn in Doling Justice
    .accept 2972 >> Accept Doling Justice
    .target Jer'kai Moonweaver
step << Warlock
    #season 2
    .goto 1444/1,695.400,-4920.300,20 >>Go to the path leading up the hill towards the Woodpaw Den
    .train 431743,1
step << Warlock
    #season 2
    .goto 1444/1,831.200,-4851.000,20 >>Go up the path marked by torches
    .train 431743,1
step << Warlock
    #season 2
    .goto 1444/1,826.500,-4725.100
    >>Stick to the right edge of the camp and go to the |cRXP_ENEMY_Dead Diseased Woodpaw Mystic|r. Next to him you will find a |cRXP_PICK_Woodpaw Bag|r, loot it for a |T135139:0|t|cRXP_LOOT_Broken Woodpaw Staff|r
    .collect 221975,1 --Broken Woodpaw Staff
    .unitscan Dead Diseased Woodpaw Mystic
    .train 431743,1
step << Warlock
    #season 2
    >>Use the |T135139:0|t|cRXP_LOOT_Broken Woodpaw Staff|r to combine it with the |T133291:0|t|cRXP_LOOT_Grimtotem Necklace|r and create a |T135153:0|t|cRXP_LOOT_Diseased Nature Staff|r
    .collect 221976,1 --Diseased Nature Staff
    .use 221975
    .train 431743,1
step << Warlock
    #season 2
    .goto Feralas,72.6,50.8
    >>Look for a sleeping |cRXP_ENEMY_Diseased Forest Walker|r, use your |T135153:0|t|cRXP_LOOT_Diseased Nature Staff|r to awaken him. Defeat him and loot for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Pandemic|r]
    .collect 220617,1 --Rune of Pandemic
    .use 221976
    .train 431743,1
step << Warlock
    #season 2
    .train 431743 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Pandemic|r] |cRXP_WARN_to learn|r |T136227:0|t[Pandemic]
    .use 220617
    .train 431743,1
    .itemcount 220617,1
step << Warlock
    #optional
    #completewith next
    #season 2
    .engrave 1 >> Open your character sheet and engrave your helmet with |T136227:0|t[Pandemic]
    .train 431743,3
step
    .goto Feralas,73.314,56.311
    >>Click the |cRXP_PICK_Large Leather Backpacks|r on the tree
    .turnin 4131 >> Turn in The Woodpaw Gnolls
    .accept 4135 >> Accept The Writhing Deep
step
    .goto Feralas,73.31,56.30
    .use 11463 >>|cRXP_WARN_Use the |T133628:0|t[|cRXP_LOOT_Undelivered Parcel|r] to start the quest|r
    .collect 11463,1,4281
    .accept 4281 >> Accept Thalanaar Delivery
step << Warrior
    #season 2
    #sticky
    #completewith Raschal
    #label RuneOfTheWatchman
    >>While you're in the Hive be on the lokout for |cRXP_ENEMY_Tyrant of the Hive|r, you can try to kill him and loot for the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Watchman|r]
    >>|cRXP_WARN_Watch out as he's a lvl 46 elite mob, you might need help to be able to kill him. Skip this step if there's no one around and you can't solo it|r
    .collect 221473,1 --Rune of the watchman
    .unitscan Tyrant of the Hive
    .train 427081,1
step << Warrior
    #season 2
    #sticky
    #completewith Raschal
    #requires RuneOfTheWatchman
    .train 427081 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Watchman|r] |cRXP_WARN_to learn|r |T236318:0|t[Vigilance]
    .use 221473
step
    #completewith next
    .goto Feralas,73.57,63.13,100,0
    .goto Feralas,72.78,64.48,15 >> Enter The Writhering Deep Hive from the lower southwest entrance
step
    .goto Feralas,72.080,63.713
    >>Click the |cRXP_PICK_Zukk'ash Pod|r
    .turnin 4135 >> Turn in The Writhing Deep
    .accept 4265 >> Accept Freed from the Hive
    .timer 19,Freed from the Hive RP
step
    #label Raschal
    .goto Feralas,72.080,63.713
    >>|cRXP_WARN_Wait out the RP|r
    .complete 4265,1
step << Warrior
    #season 2
    >>|cRXP_WARN_The following steps will unlock the|r |T132352:0|t[Rampage] |cRXP_WARN_rune. You will need to kill a level 43 elite ogre. You can skip these steps if you're not interested in getting this rune|r
    .goto Feralas,75,35.2,20 >>Head towards the Gordunni Outpost cave north of Camp Mojache
    .train 427081,1
step << Warrior
    #season 2
    .goto Feralas,74.8,24.9
    >>Enter the cave, look for Ohk'zi a lvl 43 elite Ogre. Kill him for |T134419:0|t[|cRXP_FRIENDLY_Rune of the Unbridled|r]
    .collect 220682,1 -- Rune of Unbridled 1/1
    .unitscan Ohk'zi
    .train 427081,1
step << Warrior
    #season 2
    .train 426940 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Unbridled|r] |cRXP_WARN_to learn|r |T132352:0|t[Rampage]
    .use 220682
    .train 427081,1
step
    #season 0
    +Grind until your Hearthstone is off cooldown
    .cooldown item,6948,<0
step
    #season 0
    .goto Feralas,66.65,46.58
    .hs >>Hearth to Feathermoon Stronghold
	>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
    #season 2
    #requires parcel
    .goto Feralas,89.63,46.56
    .target Falfindel Waywarder
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
    .turnin 4281 >> Turn in Thalanaar Delivery
step
    #map Feralas
    #season 2
    #completewith next
    .goto The Barrens,33.57,90.34
    .fly Feathermoon>>Fly to Feathermoon
step
    .goto Feralas,30.632,42.706
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pratt McGrubben|r
    .turnin 2821 >> Turn in The Mark of Quality
    .target Pratt McGrubben
step
    .goto Feralas,32.14,45.46,10,0
    .goto Feralas,31.860,45.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginro Hearthkindle|r up stairs
    .turnin 4265 >> Turn in Freed from the Hive
    .accept 4266 >> Accept A Hero's Welcome
    .target Ginro Hearthkindle
step
    .goto Feralas,30.276,46.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shandris Feathermoon|r
    .turnin 4266 >> Turn in A Hero's Welcome
    .accept 4267 >> Accept Rise of the Silithid
    .target Shandris Feathermoon
step << Hunter
    .goto Feralas,30.645,43.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faralorn|r
    .vendor >>|cRXP_BUY_Buy Ammo if needed|r
    .target Faralorn
step
    #era
    #completewith next
    .goto Feralas,26.19,67.51
    +Grind |cRXP_ENEMY_Nagas|r until your Hearthstone cooldown is less than 10min, don't head out to Teldrassil without having your hearthstone ready to go back
    >>Grind a little bit more if you need money for a mount (100g) << !Paladin !Warlock
step << !Mage !Druid
    .goto Feralas,30.239,43.251
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fyldren Moonfeather|r
    .fly Teldrassil >> Fly to Teldrassil
    .target Fyldren Moonfeather
step << Druid
	.cast 18960 >> Cast Teleport: Moonglade
	.zoneskip Feralas,1
step << Druid
	>>Teleport to Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    >>|cRXP_WARN_Skip this step if you trained earlier|r
	.goto Moonglade,52.53,40.56
    .trainer >> Train your class spells
    .target Loganaar
    .zoneskip Moonglade,1
step << Druid
    .goto Moonglade,44.148,45.229
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silva Fil'naveth|r
    .fly Teldrassil >> Fly to Darnassus
    .skipgossip
    .timer 153,Flight to Darnassus
    .target Silva Fil'naveth
    .zoneskip Moonglade,1
step << Mage
    #label FeralasEnd
    .goto Feralas,30.239,43.251
	.zone Darnassus >>Teleport to Darnassus
    >>If you don't have |T135755:0|t[Teleport: Darnassus] trained then fly there 
    .zoneskip Feralas,1
step << Mage
    .goto Darnassus,39.26,92.84,10,0
    .goto Darnassus,41.833,85.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gracina Spiritmight|r up stairs
    .turnin 4267 >> Turn in Rise of the Silithid
    .target Gracina Spiritmight
    .zoneskip Darnassus,1
step << Mage
    .goto Darnassus,39.094,81.583
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
    .turnin 2972 >> Turn in Doling Justice
    .target Tyrande Whisperwind
    .zoneskip Darnassus,1
step << Mage
    #completewith next
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Take the purple portal to Rut'theran Village
    .zoneskip Darnassus,1
step
    .goto Teldrassil,55.497,92.045
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Erelas Ambersky|r
    .turnin 3022 >> Turn in Handle With Care
    .accept 3661 >> Accept Favored of Elune?
    .target Erelas Ambersky
step
    .goto Teldrassil,55.09,91.67,10,0
    .goto Teldrassil,55.414,92.230
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryn Lightwind|r up stairs
    .turnin 2939 >> Turn in In Search of Knowledge
    .target Daryn Lightwind
step
    .goto Teldrassil,55.219,91.454
    >>Click the |cRXP_PICK_Feralas: A History|r book on the ground
    .accept 2940 >> Accept Feralas: A History
step
    .goto Teldrassil,55.414,92.230
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daryn Lightwind|r
    .turnin 2940 >> Turn in Feralas: A History
    .accept 2941 >> Accept The Borrower
    .target Daryn Lightwind
step
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Take the purple portal into Darnassus
step << Mage
    .goto Darnassus,40.599,82.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elissa Dumas|r
    .train 3565 >> Train Teleport: Darnassus
    .target Elissa Dumas
step << Priest
    .goto Darnassus,37.90,82.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jandria|r
    .trainer >> Train your class spells
    .target Jandria
    .zoneskip Darnassus,1
step
    .goto Darnassus,39.26,92.84,10,0
    .goto Darnassus,41.833,85.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gracina Spiritmight|r up stairs
    .turnin 4267 >> Turn in Rise of the Silithid
    .target Gracina Spiritmight
step
    .goto Darnassus,39.094,81.583
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrande Whisperwind|r
    .turnin 2972 >> Turn in Doling Justice
    .target Tyrande Whisperwind
step
    #ah
    .goto Darnassus,56.245,54.039,-1
    .goto Darnassus,56.374,51.820,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to a |cRXP_FRIENDLY_Darnassus Auctioneer|r
    >>Buy the following items for a faster turn ins at shortly. Skip this step if you wish to not buy any
    >>|cRXP_WARN_Remember to check your bank for|r |T134298:0|t[Gorilla Fangs] |cRXP_WARN_before you buy any as you may have found some earlier|r
    >>|T133296:0|t[Troll Tribal Necklace]
    >>|T134298:0|t[Gorilla Fang]
    >>|T134130:0|t[Red Power Crystal]
    >>|T134105:0|t[Green Power Crystal]
    >>|T134133:0|t[Blue Power Crystal]
    >>|T134136:0|t[Yellow Power Crystal]
    .collect 9259,5,2880,1 -- Troll Tribal Necklace (5)
    .collect 2799,10,348,1 -- Gorilla Fang (10)
    .collect 11186,7,4284,1 -- Red Power Crystal
    .collect 11185,7,4284,1 -- Green Power Crystal
    .collect 11184,7,4284,1 -- Blue Power Crystal
    .collect 11188,7,4284,1 -- Yellow Power Crystal
    .target Auctioneer Tolon
    .target Auctioneer Golothas
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
    .goto Darnassus,58.72,34.92
    .trainer >> Train your class spells
    .target Arias'ta Bladesinger
    .zoneskip Darnassus,1
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r
    .goto Darnassus,31.84,16.69,30,0
    .goto Darnassus,37.00,21.92
    .trainer >> Train your class spells
    .target Syurna
    .zoneskip Darnassus,1
step << Hunter
    .goto Darnassus,40.377,8.545
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Train your class spells
    .target Jocaste
    .zoneskip Darnassus,1
step << NightElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jartsam|r and |cRXP_FRIENDLY_Lelanai|r
    .train 828 >>Train |T132242:0|t[Tiger Riding]
    .goto Darnassus,38.694,15.857
    .vendor >>|cRXP_BUY_Buy a|r |T132267:0|t[|cFF0070FFFrostsaber|r] |cRXP_BUY_or|r |T132225:0|t[|cFF0070FFNightsaber|r]
    .goto Darnassus,38.283,15.365
    .xp <40,1
    .zoneskip Darnassus,1
    .target Jartsam
    .target Lelanai
step << Human !Warlock !Paladin
    #era
    #completewith next
    .goto Elwynn Forest,84.0,65.4
    +If you still haven't bought your mount and you have 100g, take the boat to Wetlands, fly to Stormwind, head to the Eastvale Logging Camp in Elwynn Forest and buy a mount
step << Dwarf !Paladin
    #era
    #completewith next
    .goto Dun Morogh,63.4,50.6
    +If you still haven't bought your mount and you have 100g, take the boat to Wetlands, fly to Ironforge, head to the Amberstill Ranch in Dun Morogh and buy a mount
step << Gnome !Warlock
    #era
    #completewith next
    .goto Dun Morogh,49.2,48.0
    +If you still haven't bought your mount and you have 100g, take the boat to Wetlands, fly to Ironforge, head to Kharanos in Dun Morogh and buy a mount
step << Human !Warlock !Paladin
    #som
    #completewith next
    .goto Elwynn Forest,84.0,65.4
    +If you still haven't bought your mount and you have 55g, take the boat to Wetlands, fly to Stormwind, head to the Eastvale Logging Camp in Elwynn Forest and buy a mount
step << Dwarf !Paladin
    #som
    #completewith next
    .goto Dun Morogh,63.4,50.6
    +If you still haven't bought your mount and you have 55g, take the boat to Wetlands, fly to Ironforge, head to the Amberstill Ranch in Dun Morogh and buy a mount
step << Gnome !Warlock
    #som
    #completewith next
    .goto Dun Morogh,49.2,48.0
    +If you still haven't bought your mount and you have 55g, take the boat to Wetlands, fly to Ironforge, head to Kharanos in Dun Morogh and buy a mount


step
    #completewith IFUldaAccept
.dungeon Ulda
    .zone Ironforge >> Make your way to Ironforge to accept the 2 Uldaman quests there, then head to Loch Modan
step
.dungeon Ulda
    .goto Ironforge,74.645,11.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r
    .accept 2398 >> Accept The Lost Dwarves
    .target Prospector Stormpike
step
.dungeon Ulda
    #label IFUldaAccept
    .goto Ironforge,74.179,9.371
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krom Stoutarm|r
    .accept 1360 >> Accept Reclaimed Treasures
    .target Krom Stoutarm
step
.dungeon Ulda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .goto Ironforge,55.501,47.742
    .fly Loch Modan >> Fly to Loch Modan
    .target Gryth Thurden
step
.dungeon Ulda
    .isQuestTurnedIn 2500 -- Badlands Reagent Run
    .goto Loch Modan,36.50,48.35,15,0
    .goto Loch Modan,37.067,49.379
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghak Healtouch|r
    .accept 17 >> Accept Uldaman Reagent Run
    .target Ghak Healtouch
step
.dungeon Ulda
    .isQuestTurnedIn 739 -- Murdaloc
    .goto Loch Modan,65.93,65.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
    .accept 704 >> Accept Agmond's Fate
    .target Prospector Ironband
step
.dungeon Ulda
    #completewith RockEle
    .goto Loch Modan,47.04,79.27,0
    .goto Loch Modan,46.71,76.90,65,0
    .goto Badlands,49.23,7.80
    .zone Badlands >> Travel to Badlands
step -- should have done this in normal route
.dungeon Ulda
    .goto Badlands,53.027,33.944
    >>Click the |cRXP_PICK_Crumpled Map|r on the ground
    .accept 720 >> Accept A Sign of Hope
step
.dungeon Ulda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ryedol|r
    .turnin 720 >> Turn in A Sign of Hope
    .accept 721 >> Accept A Sign of Hope
    .goto Badlands,53.421,43.393
    .target Prospector Ryedol
step
.dungeon Ulda
    .goto Badlands,51.386,76.874
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theldurin the Lost|r
    .accept 709 >> Accept Solution to Doom
    .target Theldurin the Lost
step
.dungeon Ulda
    .goto Badlands,4.0,80.6
    .goto Badlands,15.4,88.6
    .goto Badlands,11.0,88.0
    .goto Badlands,44.70,12.09
    .zone 1415 >> Grind |cRXP_ENEMY_Ogres|r and |cRXP_ENEMY_Greater Rock Elementals|r while looking for a group for Uldaman

--Completing OUTSIDE Uldaman 4-5 quests
step
.dungeon Ulda
    #completewith HammertoeGrez
    .goto 1415,54.46,57.78
    .zone 1415 >> Travel to Uldaman
step
.dungeon Ulda
    #completewith HammertoeGrez
    >>Loot the |cRXP_LOOT_Carved Stone Urns|r on the ground
    >>|cRXP_WARN_This can be only be completed OUTSIDE of Uldaman|r
    .complete 704,1 -- Carved Stone Urn (4)
    .isOnQuest 704
step
.dungeon Ulda
    #completewith HammertoeGrez
    >>Loot the |cRXP_LOOT_Magenta Fungus Caps|r on the ground
    >>|cRXP_WARN_This can be completed INSIDE and OUTSIDE of Uldaman|r
    .complete 17,1 -- Magenta Fungus Cap (12)
    .isOnQuest 17
step
.dungeon Ulda
    .goto 1415,54.040,57.665
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hammertoe Grez|r
    .turnin 721 >> Turn in A Sign of Hope
    .accept 722 >> Accept Amulet of Secrets
    .target Hammertoe Grez
step
.dungeon Ulda
    .goto 1415,54.12,58.05,30,0
    .goto 1415,54.09,58.21
    >>Kill |cRXP_ENEMY_Magregan Deepshadow|r. Loot him for |cRXP_LOOT_Hammertoe's Amulet|r
    >>|cRXP_WARN_This is completed OUTSIDE of Uldaman|r
    .complete 722,1 -- Hammertoe's Amulet (1)
    .mob Magregan Deepshadow
    .isOnQuest 722
step
.dungeon Ulda
    .goto 1415,54.140,58.246
    >>Open the |cRXP_PICK_Ancient Chest|r. Loot it for the |cRXP_LOOT_Tablet of Ryun'eh|r
    >>|cRXP_WARN_This is completed OUTSIDE of Uldaman|r
    .complete 709,1 -- Tablet of Ryun'eh (1)
    .isOnQuest 709
step
.dungeon Ulda
    .goto 1415,53.874,58.577
    >>Loot |cRXP_LOOT_Krom Stoutarm's Treasure|r on the ground
    >>|cRXP_WARN_This is completed OUTSIDE of Uldaman|r
    .complete 1360,1 -- Krom Stoutarm's Treasure (1)
    .isOnQuest 1360
step
.dungeon Ulda
    #label HammertoeGrez
    .goto 1415,54.040,57.665
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hammertoe Grez|r
    .turnin 722 >> Turn in Amulet of Secrets
    .accept 723 >> Accept Prospect of Faith
    .target Hammertoe Grez
    .isQuestTurnedIn 721
step
.dungeon Ulda
    .goto 1415,53.85,57.81,55,0
    .goto 1415,53.63,58.01,55,0
    .goto 1415,54.09,58.03,55,0
    .goto 1415,53.85,57.81
    >>Loot the |cRXP_LOOT_Carved Stone Urns|r and |cRXP_LOOT_Magenta Fungus Caps|r on the ground
    >>|cRXP_WARN_Prioritize the |cRXP_LOOT_Carved Stone Urns|r. This can only be completed OUTSIDE of Uldaman. You can finish the |cRXP_LOOT_Magenta Fungus Caps|r once inside|r
    .complete 704,1 -- Carved Stone Urn (4)
    .complete 17,1 -- Magenta Fungus Cap (12)
    .disablecheckbox
    .isOnQuest 704
    .isOnQuest 17
step
.dungeon Ulda
    .goto 1415,53.85,57.81,55,0
    .goto 1415,53.63,58.01,55,0
    .goto 1415,54.09,58.03,55,0
    .goto 1415,53.85,57.81
    >>Loot the |cRXP_LOOT_Carved Stone Urns|r on the ground
    >>|cRXP_WARN_This can be only be completed OUTSIDE of Uldaman|r
    .complete 704,1 -- Carved Stone Urn (4)
    .isOnQuest 704

--Completing INSIDE Uldaman 2-3 quests
step
.dungeon Ulda
    .goto 1415,53.850,57.641
    .subzone 1337,2 >> Zone into Uldaman
step
.dungeon Ulda
    #completewith HiddenChamber
    >>Loot the |cRXP_LOOT_Magenta Fungus Caps|r on the ground
    .complete 17,1 -- Magenta Fungus Cap (12)
    .isOnQuest 17
step
.dungeon Ulda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baelog|r
    .turnin 2398 >> Turn in The Lost Dwarves
    .accept 2240 >> Accept The Hidden Chamber
    .target Baelog
    .isOnQuest 2398
step
.dungeon Ulda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baelog|r
    .accept 2240 >> Accept The Hidden Chamber
    .target Baelog
step
.dungeon Ulda
    #completewith next
    >>Open |cRXP_PICK_Baelog's Chest|r. Loot it for the |T133276:0|t[|cRXP_LOOT_Gni'kiv Medallion|r]
    >>Kill |cRXP_ENEMY_Revelosh|r. Loot him for |T135225:0|t[|cRXP_LOOT_The Shaft of Tsol|r]
    >>|cRXP_WARN_Note other party members can loot these items, and then combine them to create the|r |T135138:0|t[Staff of Prehistoria]|cRXP_WARN_. Only one person in the group needs to do this|r
    .collect 7740,1,2240,1 -- Gni'kiv Medallion
    .collect 7741,1,2240,1 -- The Shaft of Tsol
    .use 7740 -- Gni'kiv Medallion
    .use 7741 -- The Shaft of Tsol
    .mob Revelosh
    .isOnQuest 2240
step
.dungeon Ulda
    #label HiddenChamber
    >>|cRXP_WARN_Use the|r |T133276:0|t[|cRXP_LOOT_Gni'kiv Medallion|r] |cRXP_WARN_and|r |T135225:0|t[|cRXP_LOOT_The Shaft of Tsol|r] |cRXP_WARN_to combine them into the|r |T135138:0|t[Staff of Prehistoria]
    >>|cRXP_WARN_Use the|r |T135138:0|t[Staff of Prehistoria] |cRXP_WARN_on the |cRXP_PICK_Keystone|r to summon|r |cRXP_ENEMY_Ironaya|r
    >>Kill |cRXP_ENEMY_Ironaya|r. |cRXP_WARN_Run into the Hidden Chamber she came from after|r
    .use 7740 -- Gni'kiv Medallion
    .use 7741 -- The Shaft of Tsol
    .use 7733 -- Staff of Prehistoria
    .complete 2240,1 -- Explore the Hidden Chamber
    .isOnQuest 2240
step
.dungeon Ulda
    >>Loot the |cRXP_LOOT_Magenta Fungus Caps|r on the ground
    .complete 17,1 -- Magenta Fungus Cap (12)
    .isOnQuest 17
step
.dungeon Ulda
    >>Kill |cRXP_ENEMY_Archaedas|r
    >>Click |cRXP_PICK_The Discs of Norgannon|r
    .accept 2278 >> Accept The Platinum Discs
step
.dungeon Ulda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lore Keeper of Norgannon|r
    .complete 2278,1 -- Learn what lore that the stone watcher has to offer
    .skipgossip
    .target Lore Keeper of Norgannon
step
.dungeon Ulda
    >>Click |cRXP_PICK_The Discs of Norgannon|r
    .turnin 2278 >> Turn in The Platinum Discs
    .accept 2279 >> Accept The Platinum Discs
step
.dungeon Ulda
    +Zone out of Uldaman together as a group to turn in quests in Badlands. The closest exit is the Uldaman backdoor
    .zoneskip Badlands
step
.dungeon Ulda
    .goto Badlands,51.386,76.874
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theldurin the Lost|r
    .turnin 709 >> Turn in Solution to Doom
    .target Theldurin the Lost
    .isQuestComplete 709
step
.dungeon Ulda
    #label HammertoeGrez
    .goto Badlands,53.421,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ryedol|r
    .turnin 723 >> Turn in Prospect of Faith
    .accept 724 >> Accept Prospect of Faith
    .target Prospector Ryedol
    .isQuestTurnedIn 721
step
.dungeon Ulda
    #completewith UldaLoch
    .goto Badlands,49.52,9.83,0
    .goto Loch Modan,46.78,78.09
    .zone Loch Modan >> Travel to Loch Modan
step
.dungeon Ulda
    .goto Loch Modan,65.93,65.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Ironband|r
    .turnin 704 >> Turn in Agmond's Fate
    .target Prospector Ironband
    .isQuestComplete 704
step
.dungeon Ulda
    .goto Loch Modan,36.50,48.35,15,0
    .goto Loch Modan,37.067,49.379
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ghak Healtouch|r
    .turnin 17 >> Turn in Uldaman Reagent Run
    .target Ghak Healtouch
    .isQuestComplete 17
step
.dungeon Ulda
    #label UldaLoch
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Fly to Ironforge
    .target Thorgrum Borrelson
step
.dungeon Ulda
    .goto Ironforge,69.930,18.548
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Explorer Magellas|r
    .turnin 2279 >> Turn in The Platinum Discs
    .accept 2439 >> Accept The Platinum Discs
    .target High Explorer Magellas
    .isQuestTurnedIn 2278
step
.dungeon Ulda
    .goto Ironforge,74.645,11.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Stormpike|r
    .turnin 2240 >> Turn in The Hidden Chamber
    .target Prospector Stormpike
    .isQuestComplete 2240
step
.dungeon Ulda
    .goto Ironforge,74.179,9.371
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krom Stoutarm|r
    .turnin 1360 >> Turn in Reclaimed Treasures
    .target Krom Stoutarm
    .isQuestComplete 1360
step
.dungeon Ulda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Historian Karnik|r and |cRXP_FRIENDLY_Advisor Belgrum|r
    .turnin 724 >> Turn in Prospect of Faith
    .accept 725 >> Accept Passing Word of a Threat
    .goto Ironforge,77.539,11.834
    .turnin 725 >> Turn in Passing Word of a Threat
    .accept 726 >> Accept Passing Word of a Threat
    .goto Ironforge,77.343,9.714
    .turnin 726 >> Turn in Passing Word of a Threat
  --.accept 762 >> Accept An Ambassador of Evil
    .goto Ironforge,77.539,11.834
    .target Historian Karnik
    .target Advisor Belgrum
    .isQuestTurnedIn 721
step
.dungeon Ulda
    .goto Ironforge,33.874,59.136
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dinita Stonemantle|r
    .turnin 2439 >> Turn in The Platinum Discs
    .target Dinita Stonemantle
    .isQuestTurnedIn 2278
step
.dungeon Ulda
    >>|cRXP_WARN_Use the |T133289:0|t[|cRXP_LOOT_Shattered Necklace|r] to start the quest|r
    .accept 2198 >> Accept The Shattered Necklace
    .use 7666 -- Shattered Necklace
    .itemcount 7666,1 -- Shattered Necklace
step
.dungeon Ulda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talvash del Kissel|r
    .goto Ironforge,36.377,3.614
    .turnin 2198 >> Turn in The Shattered Necklace
    .target Talvash del Kissel
    .isOnQuest 2198
step
.dungeon Ulda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talvash del Kissel|r
    .goto Ironforge,36.377,3.614
    .accept 2199 >> Accept Lore for a Price
    .target Talvash del Kissel
    .isQuestTurnedIn 2198
step
.dungeon Ulda
    .goto Ironforge,36.377,3.614
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talvash del Kissel|r
    >>Bring 5 |T133215:0|t[Silver Bars] to |cRXP_FRIENDLY_Talvash del Kissel|r
    >>|cRXP_WARN_If you are unable to acquire them, abandon this quest|r
    .complete 2199,1 -- Silver Bar (5)
    .turnin 2199 >> Turn in Lore for a Price
    .target Talvash del Kissel
    .isOnQuest 2199
step
    .hs >> Hearth back to Feralas
	>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
    #completewith FlyTan
    .hs >> Hearth back to Feathermoon if your Hearthstone is off cooldown
	>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
    .goto Feralas,31.828,45.611
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Angelas Moonbreeze|r
    .turnin 2982 >> Turn in The High Wilderness
    .accept 3445 >> Accept The Sunken Temple
    .target Angelas Moonbreeze
step << Hunter
    .goto Feralas,30.645,43.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Faralorn|r
    .vendor >>|cRXP_BUY_Buy Ammo for the next segment|r
    .target Faralorn
step
    #completewith next
    .goto Feralas,30.239,43.251
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fyldren Moonfeather|r
    .fly Thalanaar>> Fly to Thalanaar
    .target Fyldren Moonfeather
step
    .goto Feralas,89.634,46.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfindel Waywarder|r
    .turnin 4281 >> Turn in Thalanaar Delivery
    .use 11463 -- Undelivered Parcel (1)
    .target Falfindel Waywarder
step
    #label FlyTan
    .goto Feralas,89.497,45.853
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thyssiana|r
    .fly Tanaris>> Fly to Tanaris
    .target Thyssiana
]])

RXPGuides.RegisterGuide([[
#version 20
#season 2
#group RXP SOD TEST
#classic
<< Alliance

#name 48-49 Tanaris SoD
#next 49-50 Tanaris/Un'Goro/Hinterlands SoD


step
    #season 0
    .goto Tanaris,52.297,28.915
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
    .bankwithdraw 6257 >> Withdraw the following items from your bank:
    >>|T133707:0|t[Roc Gizzard] (If you have any) -- 6257
    .target Gimblethorn
step << skip
    .goto Tanaris,51.80,28.66
    .target Marin Noggenfogger
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
    .accept 2605 >> Accept The Thirsty Goblin
step
    .goto Tanaris,52.51,27.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Fizzgrimble|r
    .home >> Set your Hearthstone to Gadgetzan
    .target Innkeeper Fizzgrimble
step
    .goto Tanaris,52.387,26.968
    >>Click the |cRXP_PICK_Egg-O-Matic|r on the ground
    .turnin 2741 >> Turn in The Super Egg-O-Matic
    .itemcount 8564,1 -- Hippogryph Egg (1)
--XX no accept needed, just turnin
step
    +Open your |T132594:0|t[Egg Crate]
    .itemcount 8647,1 -- Egg Crate (1)
    .use 8647
step
    .goto Tanaris,52.358,26.904
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
    .turnin 2941 >> Turn in The Borrower
    .accept 2944 >> Accept The Super Snapper FX
    .target Curgle Cranklehop
step
    .goto Tanaris,52.358,26.904
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
    .accept 2750 >> Accept A Bad Egg
    .turnin 2750 >> Turn in A Bad Egg
    .target Curgle Cranklehop
    .itemcount 8646,1 -- Bad Egg (1)
step
    .goto Tanaris,52.358,26.904
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
    .accept 2749 >> Accept An Ordinary Egg
    .turnin 2749 >> Turn in An Ordinary Egg
    .target Curgle Cranklehop
    .itemcount 8645,1 -- An Ordinary Egg (1)
step
    .goto Tanaris,52.358,26.904
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
    .accept 2748 >> Accept A Fine Egg
    .turnin 2748 >> Turn in A Fine Egg
    .target Curgle Cranklehop
    .itemcount 8644,1 -- Fine Egg (1)
step
    .goto Tanaris,52.358,26.904
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Curgle Cranklehop|r
    .accept 2747 >> Accept An Extraordinary Egg
    .turnin 2747 >> Turn in An Extraordinary Egg
    .target Curgle Cranklehop
    .itemcount 8643,1 -- Extraordinary Egg (1)
step
    +Open your |T132594:0|t[Box of Rations]
    .itemcount 9539,1 -- Box of Rations (1)
    .use 9539
step
    +Open your |T132595:0|t[Box of Spells]
    .itemcount 9540,1 -- Box of Rations (1)
    .use 9540
step
    +Open your |T132597:0|t[Box of Goodies]
    .itemcount 9541,1 -- Box of Rations (1)
    .use 9541
step << skip
    .goto Tanaris,51.56,26.75
    .target Tran'rek
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
    .accept 3362 >> Accept Thistleshrub Valley
step
    #label start
    .goto Tanaris,50.210,27.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
    .accept 992 >> Accept Gadgetzan Water Survey
    .target Senior Surveyor Fizzledowser
step << Hunter
    #season 2
    #label Zopilote
    #optional
    #completewith vultures
    .goto 1446/1,-3973.700,-7372.900,0
    .goto 1446/1,-3777.100,-7358.200,0
    .goto 1446/1,-3290.200,-7330.700,0
    .goto 1446/1,-3563.000,-7352.400,0
    .goto 1446/1,-3386.400,-7337.400,0
    .goto 1446/1,-3290.200,-7330.700,0
    >>As you're questing you might run across |cRXP_ENEMY_Zopilote|r. A large white carrion bird. If you find it kill him and Loot for the |T134419:0|t[|cRXP_FRIENDLY_Rune of The Raptor|r].
    >>|cRXP_ENEMY_Zopilote|r |cRXP_WARN_is a carrion bird that patrols east to west in a large area spanning from south of Sandsorrow Watch to Gadgetzan|r 
    >>|cRXP_WARN_Don't go out of your way to look for him. The rune is weak for leveling and you can find him later|r
    .collect 220687,1
    .unitscan Zopilote
    .train 416093,1
step << Hunter
    #season 2
    #optional
    #requires Zopilote
    #completewith vultures
    .train 416093 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Raptor|r] |cRXP_WARN_to train|r |T132253:0|t[Raptor Fury]
    .use 2220687
    .itemcount 220687,1
    .train 416093,1
step
    .goto Tanaris,39.016,29.244
    .use 8584 >> |cRXP_WARN_Use the|r |T134867:0|t[Untapped Dowsing Widget] |cRXP_WARN_at the Sandsorrow Watch pond. Avoid the Elite |cRXP_ENEMY_Sandfury Trolls|r en-route|r
    >>|cRXP_WARN_Two level 47/48 |cRXP_ENEMY_Centipaar Tunnelers|r will spawn once you fill the|r |T134867:0|t[Untapped Dowsing Widget]|cRXP_WARN_. You may kill them or run away to reset them|r
    .complete 992,1 -- Tapped Dowsing Widget (1)
    .mob Centipaar Tunneler
step
    .goto Tanaris,50.210,27.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
    .turnin 992 >> Turn in Gadgetzan Water Survey
    .accept 82 >> Accept Noxious Lair Investigation
    .target Senior Surveyor Fizzledowser
step
    #label vultures
    .goto Tanaris,35.68,39.78,70,0
    .goto Tanaris,36.55,41.98,70,0
    .goto Tanaris,35.59,44.08,70,0
    .goto Tanaris,35.60,48.79,70,0
    .goto Tanaris,31.70,49.12,70,0
    .goto Tanaris,30.83,46.10,70,0
    .goto Tanaris,35.68,39.78
    >>AoE |cRXP_ENEMY_Centipaar Sandreavers|r, |cRXP_ENEMY_Centipaar Swarmers|r, |cRXP_ENEMY_Centipaar Stingers|r, |cRXP_ENEMY_Centipaar Tunnelers|r, and |cRXP_ENEMY_Centipaar Wasps|r. Loot them for |cRXP_LOOT_Centipaar Insect Parts|r
    >>|cRXP_WARN_Be careful as all |cRXP_ENEMY_Centipaar|r cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds), |cRXP_ENEMY_Centipaar Sandreavers|r cast|r |T132338:0|t[Arcing Smash] |cRXP_WARN_(Deals an extra melee attack), |cRXP_ENEMY_Centipaar Swarmers|r cast|r |T136122:0|t[Silithid Swarm] |cRXP_WARN_(Summons a 1 health mob every 10 seconds that deals current-level attack damage, instantly dies to AoE), |cRXP_ENEMY_Centipaar Stingers|r cast|r |T132274:0|t[Venom Sting] |cRXP_WARN_(deals 11-12 damage every 5 seconds for 45 seconds), |cRXP_ENEMY_Centipaar Tunnelers|r cast|r |T136231:0|t[Pierce Armor] |cRXP_WARN_(Reduces armor by 50% for 20 seconds), and |cRXP_ENEMY_Centipaar Wasps|r cast|r |T136016:0|t[Poison] |cRXP_WARN_(deals 33-34 damage every 3 seconds for 30 seconds)|r
    .complete 82,1 --Centipaar Insect Parts (5)
    .mob Centipaar Sandreaver
    .mob Centipaar Swarmer
    .mob Centipaar Stinger
    .mob Centipaar Tunneler
    .mob Centipaar Wasp
    .mob Silithid Swarm
step << Hunter
    #season 2
    .goto 1446/1,-3973.700,-7372.900,0
    .goto 1446/1,-3777.100,-7358.200,0
    .goto 1446/1,-3290.200,-7330.700,0
    .goto 1446/1,-3563.000,-7352.400,0
    .goto 1446/1,-3386.400,-7337.400,0
    .goto 1446/1,-3290.200,-7330.700,0
    >>Use |T132172:0|t[|cRXP_FRIENDLY_Eagle Eye|r] to find |cRXP_ENEMY_Zopilote|r.
    >>|cRXP_ENEMY_Zopilote|r |cRXP_WARN_is a carrion bird that patrols east to west in a large area spanning from south of Sandsorrow Watch to Gadgetzan|r 
    >>|cRXP_WARN_Skip this step if you don't care about collecting the rune. It's very weak for leveling and you will get a better one soon|r
    .collect 220687,1
    .unitscan Zopilote
    .train 416093,1
step << Hunter
    #season 2
    .train 416093 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Raptor|r] |cRXP_WARN_to train|r |T132253:0|t[Raptor Fury]
    .use 2220687
    .itemcount 220687,1
    .train 416093,1
step << Hunter
    #optional
    #completewith next
    #season 2
    .engrave 9 >> Open your character sheet and engrave your bracers with |T132253:0|t[Raptor Fury]
    .train 415428,3
step << skip
    #completewith next
    >>Don't go out of your way to kill |cRXP_LOOT_Thistleshrub|r mobs for this quest, you'll have another opportunity to do it later, focus on killing |cRXP_LOOT_Dew Collectors|r
    .complete 3362,1
    .complete 3362,2
step << skip
    .goto Tanaris,28.70,64.06
    >> Kill |cRXP_LOOT_Dew Collectors|r. Loot them for the |cRXP_LOOT_Dew Gland|r
    .complete 2605,1
step << skip
    .goto Tanaris,51.80,28.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
    .turnin 2605 >> Turn in The Thirsty Goblin
    .target Marin Noggenfogger
    .accept 2606 >> Accept In Good Taste  
step << skip
    .goto Tanaris,51.05,26.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sprinkle|r
    .turnin 2606 >> Turn in In Good Taste
    .target Sprinkle
    .accept 2641 >> Accept Sprinkle's Secret Ingredient
step
    .goto Tanaris,50.886,26.963
    .target Alchemist Pestlezugg
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
    .turnin 82 >> Turn in Noxious Lair Investigation
step << skip -- accepting later
    .goto Tanaris,50.210,27.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
    .accept 10 >> Accept The Scrimshank Redemption
    .target Senior Surveyor Fizzledowser

]])

RXPGuides.RegisterGuide([[
#version 20
#season 2
#group RXP SOD TEST
#classic
<< Alliance

#name 49-50 Tanaris/Un'Goro/Hinterlands SoD
#next RestedXP Alliance 50-60\50-50 Stranglethorn Vale


step
    .goto Tanaris,52.462,28.514
    .target Chief Engineer Bilgewhizzle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
    .accept 1691 >> Accept More Wastewander Justice
step
    .goto Tanaris,52.819,27.401
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andi Lynn|r
    .accept 5863 >> Accept The Dunemaul Compound
    .target Andi Lynn
step
    .goto Tanaris,51.835,27.038
    >>Click the |cRXP_PICK_Wanted Poster|r
    .accept 2781 >> Accept WANTED: Caliph Scorpidsting
    .accept 2875 >> Accept WANTED: Andre Firebeard
step << skip    
    .goto Tanaris,51.56,26.75
    .target Tran'rek
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
    .accept 3362 >> Accept Thistleshrub Valley
step
    .goto Tanaris,50.21,27.48
    .target Senior Surveyor Fizzledowser
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
    .accept 10 >> Accept The Scrimshank Redemption
step << skip
    .goto Tanaris,51.80,28.66
    .target Marin Noggenfogger
    >>Talk to |cRXP_FRIENDLY_Marin Noggenfogger|r
    .accept 2605 >> Accept The Thirsty Goblin
step << skip
    .goto Tanaris,51.05,26.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sprinkle|r
    .turnin 2641 >> Turn in Sprinkle's Secret Ingredient
    .target Sprinkle
    .accept 2661 >> Accept Delivery for Marin
step << skip
    .goto Tanaris,51.80,28.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
    .turnin 2661 >> Turn in Delivery for Marin
.target Marin Noggenfogger
    .accept 2662 >> Accept Noggenfogger Elixir
    .turnin 2662 >> Turn in Noggenfogger Elixir
step << skip
    #completewith tStart
    + Make sure you carry 1 stack of noggenfogger with you at all times, buy 2 extra stacks and bank it
step << skip
    .goto Tanaris,51.56,26.75
    .target Tran'rek
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
    .turnin 3362 >> Turn in Thistleshrub Valley
    .isQuestComplete 3362
step
    #label tStart
    .goto Tanaris,52.707,45.923
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
    .turnin 3445 >> Turn in The Sunken Temple
    .accept 3444 >> Accept The Stone Circle << Hunter
    .accept 3161 >> Accept Gahz'ridian << !Hunter
    .target Marvon Rivetseeker
step << Priest
    #season2
    #sticky
    #completewith Wastewanders
    >>Be on the lookout for |T134939:0|t[|cRXP_LOOT_Coded Warlock Notes|r] that can drop from |cRXP_ENEMY_Wastewander Shadow Mages|r. You will need it for a rune later
    .collect 221547,1 --Coded Warlock Notes
    .train 413251,1
step
    #completewith next
    .goto Tanaris,58.75,39.34,0
    .goto Tanaris,58.72,36.54,0
    .goto Tanaris,60.07,37.31,0
    .goto Tanaris,60.76,32.67,0
    .goto Tanaris,63.57,37.80,0
    .goto Tanaris,63.89,39.86,0
    .goto Tanaris,65.03,39.49,0
    .goto Tanaris,65.41,36.62,0
    >>Kill |cRXP_ENEMY_Wastewander Rogues|r, |cRXP_ENEMY_Wastewander Assassins|r and |cRXP_ENEMY_Wastewander Shadow Mages|r
    >>|cRXP_ENEMY_Wastewander Rogues|r |cRXP_WARN_are in|r |T132320:0|t[Stealth]
    .complete 1691,1 -- Wastewander Rogue slain (8)
    .complete 1691,2 -- Wastewander Assassin slain (6)
    .complete 1691,3 -- Wastewander Shadow Mage slain (10)
    .mob Wastewander Rogue
    .mob Wastewander Assassin
    .mob Wastewander Shadow Mage
step
    .goto Tanaris,59.4,41.1,60,0
    .goto Tanaris,61.8,38.2,60,0
    .goto Tanaris,63.6,32.0,60,0
    .goto Tanaris,61.0,35.9,60,0
    .goto Tanaris,58.9,39.0,60,0
    .goto Tanaris,63.6,32.0,60,0
    .goto Tanaris,58.9,39.0,60,0
    .goto Tanaris,60.85,37.82
    >>Kill |cRXP_ENEMY_Caliph Scorpidsting|r. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_ENEMY_Caliph Scorpidsting|r |cRXP_WARN_patrols through Waterspring Field and is accompanied by 2|r |cRXP_ENEMY_Wastewander Rogues|r  
    .complete 2781,1 -- Caliph Scorpidsting's Head (1)
    .unitscan Caliph Scorpidsting
step
    #label Wastewanders
    .goto Tanaris,58.75,39.34,60,0
    .goto Tanaris,58.72,36.54,60,0
    .goto Tanaris,60.07,37.31,60,0
    .goto Tanaris,60.76,32.67,60,0
    .goto Tanaris,63.57,37.80,60,0
    .goto Tanaris,63.89,39.86,60,0
    .goto Tanaris,65.03,39.49,60,0
    .goto Tanaris,65.41,36.62
    >>Kill |cRXP_ENEMY_Wastewander Rogues|r, |cRXP_ENEMY_Wastewander Assassins|r and |cRXP_ENEMY_Wastewander Shadow Mages|r
    .complete 1691,1 -- Wastewander Rogue slain (8)
    .complete 1691,2 -- Wastewander Assassin slain (6)
    .complete 1691,3 -- Wastewander Shadow Mage slain (10)
    .mob Wastewander Rogue
    .mob Wastewander Assassin
    .mob Wastewander Shadow Mage
step << Priest
    #season2
    .goto Tanaris,58.75,39.34,60,0
    .goto Tanaris,58.72,36.54,60,0
    .goto Tanaris,60.07,37.31,60,0
    .goto Tanaris,60.76,32.67,60,0
    .goto Tanaris,63.57,37.80,60,0
    .goto Tanaris,63.89,39.86,60,0
    .goto Tanaris,65.03,39.49,60,0
    .goto Tanaris,65.41,36.62
    >>Kill |cRXP_ENEMY_Wastewander Shadow Mages|r untill you loot |T134939:0|t[|cRXP_LOOT_Coded Warlock Notes|r] from them
    .collect 221547,1 --Coded Warlock Notes
    .train 413251,1
step << Priest
    #season 2
    .itemcount 221547,1
    .itemcount 221549,1
    .train 413251,1
    >>Combine the |T134939:0|t[|cRXP_LOOT_Coded Warlock Notes|r] with the |T134329:0|t[|cRXP_LOOT_Wastewander Cipher|r] to receive |T237018:0|t[|cRXP_LOOT_Deciphered Warlock Notes|r]
    .collect 221545,1
    .use 221547
    .use 221549
step << Priest
    #season 2
    .goto Tanaris,58.0,36.0
    >>Look for a |cRXP_PICK_Cryptic Scroll of Summoning|r on the ground. Walk on top of it and use the |T237018:0|t[|cRXP_LOOT_Deciphered Warlock Notes|r]. This will spawn an |cRXP_ENEMY_Enraged Voidwalker|r a level 43 elite. Kill it and loot it for the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of Verdant Winter|r]
    .collect 221979,1 
    .mob Enraged Voidwalker
    .use 221545
    .train 413251,1
    .itemcount 221545,1
step << Priest
    #season 2
    >>Use |T135975:0|t[|cRXP_FRIENDLY_Prophecy of Verdant Winter|r] to learn |T237567:0|t[|cRXP_FRIENDLY_Pain and Suffering|r]
    .train 413251
    .train 413251,1
    .use 221979
step
    #completewith next
    .goto Tanaris,68.98,41.63
    .subzone 1336 >> Travel to Lost Rigger Cove
step << Rogue
    #season 2
    #sticky
    #completewith TanarisPirates
    #label CoinPurse
    >>Try to cast |r |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Southsea Pirates|r or |cRXP_ENEMY_Southsea Freebooters|r, untill you receive a |T133639:0|t|cRXP_LOOT_Kidnapper's Coin Purse|r
    .collect 221371,1 - Kidnapper's Coin Purse 1/1
    .mob Southsea Pirate
    .mob Southsea Freebooter
    .train 432273,1
step << Rogue
    #season 2
    #sticky
    #completewith TanarisPirates
    #requires CoinPurse
    >>Open the |T133639:0|t|cRXP_LOOT_Kidnapper's Coin Purse|r and loot it for a |T133302:0|t|cRXP_LOOT_Precious Medalion|r
    .collect 221370,1 -- Precious Medalion 1/1
    .use 221371
    .train 432273,1
step
    #completewith StoleyShip
    >>Kill |cRXP_ENEMY_Southsea Pirates|r, |cRXP_ENEMY_Southsea Freebooters|r, |cRXP_ENEMY_Southsea Dock Workers|r and |cRXP_ENEMY_Southsea Swashbucklers|r. Loot them for their |cRXP_LOOT_Pirate Hats|r and |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r]
    >>|cRXP_WARN_Open the|r |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r] |cRXP_WARN_until you find the|r |T134939:0|t[|cRXP_LOOT_Ship Schedule|r]
    >>|cRXP_WARN_Don't start the quest for the |T134939:0|t[|cRXP_LOOT_Ship Schedule|r] yet|r
    .complete 8366,1 --Southsea Pirate (10)
    .complete 8366,2 --Southsea Freebooter (10)
    .complete 8366,3 --Southsea Dock Worker (10)
    .complete 8366,4 --Southsea Swashbuckler (10)
    .complete 8365,1 --Southsea Pirate Hat (20)
    .collect 9250,1,2876,1 -- Ship Schedule (1)
    --.accept 2876 >> Accept Ship Schedules
    .use 9276 -- Pirate's Footlocker (1)
    --.use 9250 -- Ship Schedule (1)
    .mob Southsea Pirate
    .mob Southsea Freebooter
    .mob Southsea Dock Worker
    .mob Southsea Swashbuckler
step
    #completewith StoleyShip
    .goto Tanaris,73.37,47.14,0
    >>Kill |cRXP_ENEMY_Andre Firebeard|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 2875,1 -- Firebeard's Head (1)
    .mob Andre Firebeard
step
    #label StoleyShip
    .goto Tanaris,72.15,46.76
    >>Travel upstairs in the house
    >>Open the |cRXP_PICK_Stolen Cargo|r. Loot it for |cRXP_LOOT_Stoley's Shipment|r
    .complete 2873,1 -- Stoley's Shipment (1)
step
    #completewith next
    >>Kill |cRXP_ENEMY_Southsea Pirates|r, |cRXP_ENEMY_Southsea Freebooters|r, |cRXP_ENEMY_Southsea Dock Workers|r and |cRXP_ENEMY_Southsea Swashbucklers|r. Loot them for their |cRXP_LOOT_Pirate Hats|r and |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r]
    >>|cRXP_WARN_Open the|r |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r] |cRXP_WARN_until you find the|r |T134939:0|t[|cRXP_LOOT_Ship Schedule|r]
    >>|cRXP_WARN_Don't start the quest for the |T134939:0|t[|cRXP_LOOT_Ship Schedule|r] yet|r
    .complete 8366,1 --Southsea Pirate (10)
    .complete 8366,2 --Southsea Freebooter (10)
    .complete 8366,3 --Southsea Dock Worker (10)
    .complete 8366,4 --Southsea Swashbuckler (10)
    .complete 8365,1 --Southsea Pirate Hat (20)
    .collect 9250,1,2876,1 -- Ship Schedule (1)
    --.accept 2876 >> Accept Ship Schedules
    .use 9276 -- Pirate's Footlocker (1)
    --.use 9250 -- Ship Schedule (1)
    .mob Southsea Pirate
    .mob Southsea Freebooter
    .mob Southsea Dock Worker
    .mob Southsea Swashbuckler
step
    .goto Tanaris,73.37,47.14
    >>Kill |cRXP_ENEMY_Andre Firebeard|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 2875,1 -- Firebeard's Head (1)
    .mob Andre Firebeard
step
    #label TanarisPirates
    >>Kill |cRXP_ENEMY_Southsea Pirates|r, |cRXP_ENEMY_Southsea Freebooters|r, |cRXP_ENEMY_Southsea Dock Workers|r and |cRXP_ENEMY_Southsea Swashbucklers|r. Loot them for their |cRXP_LOOT_Pirate Hats|r and |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r]
    >>|cRXP_WARN_Open the|r |T132596:0|t[|cRXP_LOOT_Pirate's Footlocker|r] |cRXP_WARN_until you find the|r |T134939:0|t[|cRXP_LOOT_Ship Schedule|r]
    >>|cRXP_WARN_Don't start the quest for the |T134939:0|t[|cRXP_LOOT_Ship Schedule|r] yet|r
    .complete 8366,1 --Southsea Pirate (10)
    .goto Tanaris,71.10,42.86,70,0
    .goto Tanaris,71.33,46.05,70,0
    .goto Tanaris,73.09,45.30,70,0
    .goto Tanaris,74.17,46.28,70,0
    .goto Tanaris,71.90,44.92
    .complete 8366,2 --Southsea Freebooter (10)
    .goto Tanaris,71.10,42.86,70,0
    .goto Tanaris,71.33,46.05,70,0
    .goto Tanaris,73.09,45.30,70,0
    .goto Tanaris,74.17,46.28,70,0
    .goto Tanaris,71.90,44.92
    .complete 8366,3 --Southsea Dock Worker (10)
    .goto Tanaris,73.76,47.79,65,0
    .goto Tanaris,74.46,46.85,50,0
    .goto Tanaris,74.62,47.73
    .complete 8366,4 --Southsea Swashbuckler (10)
    .goto Tanaris,75.17,45.84
    .complete 8365,1 --Southsea Pirate Hat (20)
    .goto Tanaris,71.10,42.86,70,0
    .goto Tanaris,71.33,46.05,70,0
    .goto Tanaris,73.09,45.30,70,0
    .goto Tanaris,74.17,46.28,70,0
    .goto Tanaris,71.90,44.92,70,0
    .goto Tanaris,73.76,47.79,65,0
    .goto Tanaris,74.46,46.85,50,0
    .goto Tanaris,74.62,47.73,50,0
    .goto Tanaris,75.17,45.84,60,0
    .goto Tanaris,72.15,46.76
    .collect 9250,1,2876,1 -- Ship Schedule (1)
    --.accept 2876 >> Accept Ship Schedules
    .goto Tanaris,71.10,42.86,70,0
    .goto Tanaris,71.33,46.05,70,0
    .goto Tanaris,73.09,45.30,70,0
    .goto Tanaris,74.17,46.28,70,0
    .goto Tanaris,71.90,44.92,70,0
    .goto Tanaris,73.76,47.79,65,0
    .goto Tanaris,74.46,46.85,50,0
    .goto Tanaris,74.62,47.73,50,0
    .goto Tanaris,75.17,45.84,60,0
    .goto Tanaris,72.15,46.76
    .use 9276 -- Pirate's Footlocker (1)
    --.use 9250 -- Ship Schedule (1)
    .mob Southsea Pirate
    .mob Southsea Freebooter
    .mob Southsea Dock Worker
    .mob Southsea Swashbuckler
step << Rogue
    #season 2
    >>Try to cast |r |T133644:0|t[Pick Pocket] on |cRXP_ENEMY_Southsea Pirates|r or |cRXP_ENEMY_Southsea Freebooters|r, untill you receive a |T133639:0|t|cRXP_LOOT_Kidnapper's Coin Purse|r
    .collect 221371,1 - Kidnapper's Coin Purse 1/1
    .itemcount 221370,<1 --Precious Medalion (0)
    .mob Southsea Pirate
    .mob Southsea Freebooter
    .train 432273,1
step << Rogue
    #season 2
    >>Open the |T133639:0|t|cRXP_LOOT_Kidnapper's Coin Purse|r and loot it for a |T133302:0|t|cRXP_LOOT_Precious Medalion|r
    .collect 221370,1 -- Precious Medalion 1/1
    .use 221371
    .train 432273,1
step
	#completewith console
    >>|cRXP_WARN_Use the |T132836:0|t[|cRXP_LOOT_OOX-17/TN Distress Beacon|r] to start the quest|r
    .collect 8623,1,351,1 -- OOX-17/TN Distress Beacon
    .use 8623
    .accept 351 >> Accept Find OOX-17/TN!
    .itemcount 8623,1
step << !Hunter
    #completewith Ridian
    .itemStat 1,QUALITY,>1
    .cast 11992 >> Equip the |T133151:0|t[Gahz'ridian Detector]
    .use 9978
    .isOnQuest 3161
step << !Hunter
    #completewith next
    >>Kill |cRXP_ENEMY_Dunemaul Brutes|r and |cRXP_ENEMY_Dunemaul Enforcers|r
    >>|cRXP_WARN_You will complete this later, you don't need to finish it right now|r
    .complete 5863,1 -- Dunemaul Brute slain (10)
    .complete 5863,2 -- Dunemaul Enforcer slain (10)
    .mob Dunemaul Brute
    .mob Dunemaul Enforcer
step << !Hunter
    #label Ridian
    .goto Tanaris,46.01,65.13,70,0
    .goto Tanaris,47.81,64.83,70,0
    .goto Tanaris,41.04,71.69,50,0
    .goto Tanaris,39.66,73.51,70,0
    .goto Tanaris,46.01,65.13,70,0
    .goto Tanaris,47.81,64.83
    >>Loot the |cRXP_LOOT_Gahz'ridian|r on the ground around the Ruins
    >>|cRXP_WARN_The |cRXP_LOOT_Gahz'ridian|r will show up on your minimap with the|r |T133151:0|t[Gahz'ridian Detector] |cRXP_WARN_equiped|r
    .complete 3161,1 -- Gahz'ridian Ornament (30)
    .use 9978
step << !Hunter
    #completewith next
    .itemStat 1,QUALITY,1
    .cast 11992 >> Equip your normal |T133127:0|t[Helmet]
    .isOnQuest 3161
step
    #completewith next
    .goto Tanaris,54.63,70.75,20 >> Enter The Gaping Chasm Hive
step 
    #label console
    .goto Tanaris,55.956,71.164
    >>Loot the |cRXP_LOOT_Scrimshank's Surveying Gear|r on the ground
    >>|cRXP_WARN_The |cRXP_LOOT_Scrimshank's Surveying Gear|r is inside of the Hive|r
    .complete 10,1 -- Scrimshank's Surveying Gear (1)
step << Warlock
    #completewith next
    .abandon 1122 >> |cRXP_WARN_If you're out of quest log space for the Distress Beacon quest, abandon|r Report Back to Fizzlebub
step
    .goto Tanaris,60.235,64.714
    .use 8623 >>|cRXP_WARN_Use the |T132836:0|t[|cRXP_LOOT_OOX-17/TN Distress Beacon|r] to start the quest|r
    >>|cRXP_WARN_Skip this step if you do not have it|r
    .collect 8623,1,351,1 -- OOX-17/TN Distress Beacon
    .accept 351 >> Accept Find OOX-17/TN
    .itemcount 8623,1
step
    .goto Tanaris,60.235,64.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homing Robot OOX-17/TN|r
    .turnin 351 >> Turn in Find OOX-17/TN!
    .isOnQuest 351
    .target Homing Robot OOX-17/TN
step
    .isQuestTurnedIn 351
    .goto Tanaris,60.235,64.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homing Robot OOX-17/TN|r
    .accept 648,1 >> Accept Rescue OOX-17/TN!
    .target Homing Robot OOX-17/TN
step
    .isOnQuest 648
    .goto Tanaris,66.99,23.14
    >>Escort the |cRXP_FRIENDLY_Homing Robot OOX-17/TN|r to safety
    >>|cRXP_WARN_This quest can be hard. You have to fight waves of 3/4 mobs along the way. Skip this step if its too difficult|r
    .complete 648,1 -- 	Escort OOX-17/TN to Steamwheedle Port
    .target Homing Robot OOX-17/TN
step
    #sticky
    #label ScheduleEnd
    >>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Ship Schedule|r] to start the quest|r
    >>|cRXP_WARN_You may need to accept this after turning in to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r and|r |cRXP_FRIENDLY_Stoley|r
    .accept 2876 >> Accept Ship Schedules
    .itemcount 9250,1 -- Ship Schedule (1)
    .use 9250 -- Ship Schedule (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r and |cRXP_FRIENDLY_Stoley|r
    .turnin 8366 >> Turn in Southsea Shakedown
    .turnin 2875 >> Turn in WANTED: Andre Firebeard
    .turnin 2876 >> Turn in Ship Schedules
    .goto Tanaris,67.058,23.891
    .turnin 2873 >> Turn in Stoley's Shipment
    .accept 2874 >> Accept Deliver to MacKinley
    .goto Tanaris,67.109,23.978
    .target Security Chief Bilgewhizzle
    .target Stoley
    .itemcount 9250,1 -- Ship Schedule (1)
    .use 9250 -- Ship Schedule (1)
step
    #label SWP
    #optional
    #requires ScheduleEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Security Chief Bilgewhizzle|r and |cRXP_FRIENDLY_Stoley|r
    .turnin 8366 >> Turn in Southsea Shakedown
    .turnin 2875 >> Turn in WANTED: Andre Firebeard
    .goto Tanaris,67.058,23.891
    .turnin 2873 >> Turn in Stoley's Shipment
    .accept 2874 >> Accept Deliver to MacKinley
    .goto Tanaris,67.109,23.978
    .target Security Chief Bilgewhizzle
    .target Stoley
step
    .goto Tanaris,66.560,22.265
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Haughty Modiste|r
    .turnin 8365 >> Turn in Pirate Hats Ahoy!
    .target Haughty Modiste
step
    .goto Tanaris,66.989,22.354
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yeh'kinya|r
    .turnin 3520 >> Turn in Screecher Spirits
    .target Yeh'kinya
step << Rogue
    #season 2
    .goto Tanaris,67,22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jabbey|r the Goblin in one of the northmost huts. Complete the dialogue with him to receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Foul Play|r]
    .collect 221428,1 -- Rune of Foul Play
    .target Jabbey
    .train 432273,1
    .itemcount 221370,1
step << Rogue
    #season 2
    .use 221428
    .train 432273 >>|cRXP_WARN_Use the|T134419:0|t[|cRXP_FRIENDLY_Rune of Foul Play|r] |cRXP_WARN_to train|r |T236285:0|t[Unfair Advantage]
    .train 432273,1
step << Rogue
    #optional
    #completewith next
    #season 2
    .engrave 9 >> Open your character sheet and engrave your bracers with |T236285:0|t[Unfair Advantage]
    .train 432273,3
step << Hunter
    .goto Tanaris,67.01,21.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jabbey|r
    .vendor 8139 >> |cRXP_BUY_Buy|r |T135661:0|t[Jagged Arrows] |cRXP_BUY_before leaving the port|r
	.target Jabbey
step << Druid
	#completewith next
	.cast 18960 >> Cast Teleport: Moonglade
	.zoneskip Moonglade
step << Druid
	>>Teleport to Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
	.goto Moonglade,52.53,40.56
    .trainer >> Train your class spells
    .target Loganaar
step << Mage
    #completewith next
    .zone Ironforge >>Teleport to Ironforge
step << Mage
    .goto Ironforge,27.169,8.579
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
    .trainer >> Train your class spells
    .target Dink
step
    .hs >> Hearth back to Gadgetzan
	>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
    .goto Tanaris,52.462,28.514
    .target Chief Engineer Bilgewhizzle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Bilgewhizzle|r
    .turnin 1691 >> Turn in More Wastewander Justice
    .turnin 2781 >> Turn in WANTED: Caliph Scorpidsting
step
    #optional -- accepted earlier, but incase they abandoned
    .goto Tanaris,52.819,27.401
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andi Lynn|r
    .accept 5863 >> Accept The Dunemaul Compound
    .target Andi Lynn
step
    .goto Tanaris,51.808,28.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
    .accept 2605 >> Accept The Thirsty Goblin
    .target Marin Noggenfogger
step
    .goto Tanaris,50.210,27.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
    .turnin 10 >> Turn in The Scrimshank Redemption
    .accept 110 >> Accept Insect Part Analysis
    .target Senior Surveyor Fizzledowser
step
    .goto Tanaris,50.887,26.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alchemist Pestlezugg|r
    .turnin 110 >> Turn in Insect Part Analysis
    .accept 113 >> Accept Insect Part Analysis
    .target Alchemist Pestlezugg
step
    .goto Tanaris,51.566,26.759
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
    .accept 3362 >> Accept Thistleshrub Valley
    .target Tran'rek
step
    .goto Tanaris,50.210,27.483
    .target Senior Surveyor Fizzledowser
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
    .turnin 113 >> Turn in Insect Part Analysis
step << !Hunter
    .goto Tanaris,52.707,45.923
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marvon Rivetseeker|r
    .turnin 3161 >> Turn in Gahz'ridian
    .accept 3444 >> Accept The Stone Circle
    .target Marvon Rivetseeker
step
    #completewith Ravager
    .goto Tanaris,41.50,57.81
    .subzone 983 >> Travel to the Dunemaul Compound
step
    #completewith next
    >>Kill |cRXP_ENEMY_Dunemaul Brutes|r and |cRXP_ENEMY_Dunemaul Enforcers|r
    .complete 5863,1 -- Dunemaul Brute slain (10)
    .complete 5863,2 -- Dunemaul Enforcer slain (10)
    .mob Dunemaul Brute
    .mob Dunemaul Enforcer
step
    #label Ravager
    .goto Tanaris,41.50,57.81
    >>Kill |cRXP_ENEMY_Gor'marok the Ravager|r
    >>|cRXP_WARN_Be cautious as|r |cRXP_ENEMY_Gor'marok the Ravager|r |cRXP_WARN_can|r |T136224:0|t[Enrage] |cRXP_WARN_and deal significant damage very quickly|r
    .complete 5863,3 -- Gor'marok the Ravager slain
    .mob Gor'marok the Ravager
step
    .goto Tanaris,37.83,56.94,70,0
    .goto Tanaris,38.64,51.83,70,0
    .goto Tanaris,41.04,51.18,70,0
    .goto Tanaris,42.63,55.10,70,0
    .goto Tanaris,37.83,56.94,70,0
    .goto Tanaris,38.64,51.83,70,0
    .goto Tanaris,41.04,51.18,70,0
    .goto Tanaris,42.63,55.10
    >>Kill |cRXP_ENEMY_Dunemaul Brutes|r and |cRXP_ENEMY_Dunemaul Enforcers|r
    .complete 5863,1 -- Dunemaul Brute slain (10)
    .complete 5863,2 -- Dunemaul Enforcer slain (10)
    .mob Dunemaul Brute
    .mob Dunemaul Enforcer
step << Druid
    #season 2
    #sticky
    #completewith Thistleshrubs
    #label RagingShamblerIdol
    .goto Tanaris,28.2,63.0,40,0
    .goto Tanaris,28.2,68.6,40,0
    .goto Tanaris,30.8,63.4,40,0
    >>Kill |cRXP_ENEMY_Thistleshrub Dew Collector|r and |cRXP_ENEMY_Thistleshrub Rootshaper|r. Loot them for the |T136061:0|t[|cRXP_LOOT_Idol of the Raging Shambler|r] you will need it to unlock a rune
    .collect 220915,1
    .mob Thistleshrub Dew Collector
    .mob Thistleshrub Rootshaper
    .train 431449,1
    .train 22812,3
step << Druid
    #season 2
    #optional
    #requires RagingShamblerIdol
    #completewith Thistleshrubs
    .equip 18,220915 >>|cRXP_WARN_Equip the|r |T136061:0|t[|cRXP_FRIENDLY_Idol of the Raging Shambler|r]
    +|cRXP_WARN_In order to receive|r |T136097:0|t[Improved Barkskin] |cRXP_WARN_you will need to kill five enemies with nature spells (eg. Wrath) while under the effects of|r |T136097:0|t[Barkskin]. |cRXP_WARN_Try to do this whenever convinient, the rune is not very strong so it's not a high priority|r
    .train 22812,3
    .train 431449,1
step
    .isOnQuest 2605
    .isOnQuest 3362
    .goto Tanaris,28.57,66.42,70,0
    .goto Tanaris,28.51,63.22,70,0
    .goto Tanaris,30.21,63.85,70,0
    .goto Tanaris,30.45,66.15,70,0
    .goto Tanaris,28.57,66.42,70,0
    .goto Tanaris,28.51,63.22,70,0
    .goto Tanaris,30.21,63.85,70,0
    .goto Tanaris,30.45,66.15,70,0
    .goto Tanaris,28.57,66.42,70,0
    .goto Tanaris,28.51,63.22,70,0
    .goto Tanaris,30.21,63.85,70,0
    .goto Tanaris,30.45,66.15
    >>Kill |cRXP_ENEMY_Gnarled Thistleshrubs|r and |cRXP_ENEMY_Thistleshrub Rootshapers|r
    >>Kill |cRXP_ENEMY_Thistleshrub Dew Collectors|r. Loot them for the |cRXP_LOOT_Laden Dew Gland|r
    >>|cRXP_WARN_Prioritize killing |cRXP_ENEMY_Thistleshrub Dew Collectors|r as the |cRXP_LOOT_Laden Dew Gland|r has a low drop chance|r
    .complete 3362,1 -- Gnarled Thistleshrub
    .complete 3362,2 -- Thistleshrub Rootshaper
    .complete 2605,1 -- Laden Dew Gland
    .mob Gnarled Thistleshrub
    .mob Thistleshrub Rootshaper
    .mob Thistleshrub Dew Collector
step
    .isOnQuest 2605
    .goto Tanaris,28.57,66.42,70,0
    .goto Tanaris,28.51,63.22,70,0
    .goto Tanaris,30.21,63.85,70,0
    .goto Tanaris,30.45,66.15,70,0
    .goto Tanaris,28.57,66.42,70,0
    .goto Tanaris,28.51,63.22,70,0
    .goto Tanaris,30.21,63.85,70,0
    .goto Tanaris,30.45,66.15,70,0
    .goto Tanaris,28.57,66.42,70,0
    .goto Tanaris,28.51,63.22,70,0
    .goto Tanaris,30.21,63.85,70,0
    .goto Tanaris,30.45,66.15
    >>Kill |cRXP_ENEMY_Thistleshrub Dew Collectors|r. Loot them for the |cRXP_LOOT_Laden Dew Gland|r
    .complete 2605,1 -- Laden Dew Gland
    .mob Thistleshrub Dew Collector
step
    #label Thistleshrubs
    .isOnQuest 3362
    .goto Tanaris,28.57,66.42,70,0
    .goto Tanaris,28.51,63.22,70,0
    .goto Tanaris,30.21,63.85,70,0
    .goto Tanaris,30.45,66.15,70,0
    .goto Tanaris,28.57,66.42,70,0
    .goto Tanaris,28.51,63.22,70,0
    .goto Tanaris,30.21,63.85,70,0
    .goto Tanaris,30.45,66.15,70,0
    .goto Tanaris,28.57,66.42,70,0
    .goto Tanaris,28.51,63.22,70,0
    .goto Tanaris,30.21,63.85,70,0
    .goto Tanaris,30.45,66.15
    >>Kill |cRXP_ENEMY_Gnarled Thistleshrubs|r and |cRXP_ENEMY_Thistleshrub Rootshapers|r
    .complete 3362,1 -- Gnarled Thistleshrub
    .complete 3362,2 -- Thistleshrub Rootshaper
    .mob Gnarled Thistleshrub
    .mob Thistleshrub Rootshaper
step
    #completewith next
    .goto Tanaris,26.98,56.09,0
    .goto Tanaris,26.98,56.09,125,0
    .goto Un'Goro Crater,71.63,75.95
    .zone 1449 >> Travel to Un'goro Crater
step
.dungeon !ST
    .goto Un'Goro Crater,71.639,75.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .accept 4289 >> Accept The Apes of Un'Goro
    .accept 4290 >> Accept The Fare of Lar'korwi
    .target Torwa Pathfinder
step
.dungeon ST
    #phase 4-6
    .goto Un'Goro Crater,71.639,75.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .accept 4289 >> Accept The Apes of Un'Goro
    .accept 4290 >> Accept The Fare of Lar'korwi
    .accept 9052 >> Accept Bloodpetal Poison << Druid
    .target Torwa Pathfinder
step << Druid
.dungeon ST
    #phase 4-6
    .isOnQuest 9052
    #completewith AMangledJournal
    >>Open the |cRXP_PICK_Bloodpetal Sprouts|r on the ground. Loot them for |cRXP_LOOT_Bloodcaps|r
    .complete 9052,2 -- Bloodcap (8)
step
    #completewith LeaveUngoro
    >>Loot |cRXP_LOOT_Power Crystals|r on the ground as you quest through Un'Goro Crater
    >>|cRXP_WARN_Try to complete this now as you work your way up to Marshal's Refuge later|r
    .collect 11186,7,4284,1 -- Red Power Crystal
    .collect 11185,7,4284,1 -- Green Power Crystal
    .collect 11184,7,4284,1 -- Blue Power Crystal
    .collect 11188,7,4284,1 -- Yellow Power Crystal
step
    #completewith LeaveUngoro
    >>Loot |cRXP_LOOT_Un'Goro Soil|r on the ground as you quest through Un'Goro Crater
    .collect 11018,25 -- Un'Goro Soil (25)
step
    .goto Un'Goro Crater,63.02,68.60
    >>Click on the |cRXP_PICK_Wrecked Raft|r
    .accept 3844 >> Accept It's a Secret to Everybody
step
    .goto Un'Goro Crater,63.107,69.057
    >>Click the |cRXP_PICK_Small Pack|r underwater
    .turnin 3844 >> Turn in It's a Secret to Everybody
    .accept 3845 >> Accept It's a Secret to Everybody
step
    .goto Un'Goro Crater,68.73,56.70
    >>Loot the |cRXP_LOOT_Piece of Threshadon Carcass|r
    .complete 4290,1 -- Piece of Threshadon Carcass (1)
step << !Warrior !Rogue !Paladin !Druid
    #completewith MuiginLarion
    .subzone 541 >> Travel to Marshal's Refuge
step << !Warrior !Rogue !Paladin !Druid
    .goto Un'Goro Crater,44.658,8.098
    .use 11107 >> |cRXP_WARN_Open the|r |T133653:0|t[Small Pack]
    .complete 3845,1 -- Large Compass (1)
    .complete 3845,2 -- Curled Map Parchment (1)
    .complete 3845,3 -- Lion-headed Key (1)
    .isOnQuest 3845
step << !Warrior !Rogue !Paladin !Druid
    .goto Un'Goro Crater,44.658,8.098
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
    .turnin 3845 >> Turn in It's a Secret to Everybody
    .accept 3908 >> Accept It's a Secret to Everybody
    .target Linken
step << !Warrior !Rogue !Paladin !Druid
    .destroy 11108 >> Destroy the |T134944:0|t[Faded Photograph]
    .destroy 3108 >> Destroy the |T135427:0|t[Heavy Throwing Daggers] << !Rogue
    >>|cRXP_WARN_You no longer need these|r
step << !Warrior !Rogue !Paladin !Druid
    .goto Un'Goro Crater,43.947,7.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Williden Marshal|r
    >>|cRXP_WARN_Use |T133743:0|t[A Mangled Journal] to start the quest|r
    .collect 11116,1,3884,1 -- A Mangled Journal (1)
    .accept 3884 >> Accept Williden's Journal
    .turnin 3884 >> Turn in Williden's Journal
    .use 11116
    .itemcount 11116,1
    .target Williden Marshal
step << !Warrior !Rogue !Paladin !Druid
    .goto Un'Goro Crater,41.918,2.703
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
    >>|cRXP_WARN_Skip this step if you don't have all 7 Power Crystals, you will finish it later|r
    .accept 4284 >> Accept Crystals of Power
    .turnin 4284 >> Turn in Crystals of Power
    .itemcount 11186,7 -- Red Power Crystal
    .itemcount 11185,7 -- Green Power Crystal
    .itemcount 11184,7 -- Blue Power Crystal
    .itemcount 11188,7 -- Yellow Power Crystal
    .target J.D. Collie
step << !Warrior !Rogue !Paladin !Druid
    #label MuiginLarion
    .goto Un'Goro Crater,45.234,5.831
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryfe|r
    .fp Un'Goro >> Get the Un'Goro Crater Flight Path
    .target Gryfe
step
    .goto Un'Goro Crater,71.639,75.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .turnin 4290 >> Turn in The Fare of Lar'korwi
    .accept 4291 >> Accept The Scent of Lar'korwi
    .target Torwa Pathfinder
step
    .goto Un'Goro Crater,67.324,73.041,8,0
    .goto Un'Goro Crater,66.601,66.727,8,0
    .goto Un'Goro Crater,60.926,72.234,8,0
    .goto Un'Goro Crater,62.285,65.985,8,0
    .goto Un'Goro Crater,63.240,77.350,8,0
    .goto Un'Goro Crater,67.324,73.041,8,0
    .goto Un'Goro Crater,66.601,66.727
    .goto Un'Goro Crater,67.324,73.041,0
    .goto Un'Goro Crater,60.926,72.234,0
    .goto Un'Goro Crater,62.285,65.985,0
    .goto Un'Goro Crater,63.240,77.350,0
    >>Kill |cRXP_ENEMY_Lar'korwi Mates|r. Loot them for their |cRXP_LOOT_Ravasaur Pheromone Glands|r
    >>|cRXP_WARN_Walking over |cRXP_PICK_Raptor Nests|r on the ground will trigger a |cRXP_ENEMY_Lar'korwi Mate|r to spawn|r
    .complete 4291,1 -- Ravasaur Pheromone Gland (2)
    .mob Lar'korwi Mate
step
    .goto Un'Goro Crater,71.639,75.960
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Torwa Pathfinder|r
    .turnin 4291 >> Turn in The Scent of Lar'korwi
    .accept 4292 >> Accept The Bait for Lar'korwi
    .target Torwa Pathfinder
step
    #label AMangledJournal
    .goto Un'Goro Crater,67.324,73.041,70,0
    .goto Un'Goro Crater,66.601,66.727,70,0
    .goto Un'Goro Crater,60.926,72.234,70,0
    .goto Un'Goro Crater,62.285,65.985,70,0
    .goto Un'Goro Crater,63.240,77.350,70,0
    .goto Un'Goro Crater,67.324,73.041,70,0
    .goto Un'Goro Crater,66.601,66.727
    >>Kill |cRXP_ENEMY_Ravasaurs|r. Loot them for |T133743:0|t[A Mangled Journal]
    >>|cRXP_WARN_Any mob in Un'Goro Crater may drop it|r
    >>|cRXP_WARN_Use |T133743:0|t[A Mangled Journal] to start the quest|r
    .collect 11116,1,3884,1 -- A Mangled Journal (1)
    .accept 3884 >> Accept Williden's Journal
    .use 11116
step << Druid
.dungeon ST
    #phase 4-6
    #completewith next
    .isOnQuest 9052
    >>Open the |cRXP_PICK_Bloodpetal Sprouts|r on the ground. Loot them for |cRXP_LOOT_Bloodcaps|r
    >>|cRXP_WARN_You don't need to complete this now. You can finish it when you come to Un'goro again later|r
    .complete 9052,2 -- Bloodcap (8)


step << skip
    >> Run north to Marshal's Refuge
    .goto Un'Goro Crater,44.23,11.58
    .target Shizzle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shizzle|r
    .accept 4503 >> Accept Shizzle's Flyer
    >>Skip this step if you're not yet level 49
step << skip
    .goto Un'Goro Crater,43.49,7.42
    .target Spark Nilminer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spark Nilminer|r
    .accept 3882 >> Accept Roll the Bones
    >>Skip this step if you're not yet level 49


step << Warrior/Rogue/Paladin/Druid
    #completewith LeaveUngoro
    .subzone 541 >> Travel to Marshal's Refuge
step << Warrior/Rogue/Paladin/Druid
    .goto Un'Goro Crater,44.658,8.098
    .use 11107 >> |cRXP_WARN_Open the|r |T133653:0|t[Small Pack]
    .complete 3845,1 -- Large Compass (1)
    .complete 3845,2 -- Curled Map Parchment (1)
    .complete 3845,3 -- Lion-headed Key (1)
    .isOnQuest 3845
step << Warrior/Rogue/Paladin/Druid
    .goto Un'Goro Crater,44.658,8.098
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Linken|r
    .turnin 3845 >> Turn in It's a Secret to Everybody
    .accept 3908 >> Accept It's a Secret to Everybody
    .target Linken
step << Warrior/Rogue/Paladin/Druid
    .destroy 11108 >> Destroy the |T134944:0|t[Faded Photograph]
    .destroy 3108 >> Destroy the |T135427:0|t[Heavy Throwing Daggers] << !Rogue
    >>|cRXP_WARN_You no longer need these|r
step << Warrior/Rogue/Paladin/Druid
    .goto Un'Goro Crater,43.947,7.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Williden Marshal|r
    .collect 11116,1,3884,1 -- A Mangled Journal (1)
    .accept 3884 >> Accept Williden's Journal
    .turnin 3884 >> Turn in Williden's Journal
    .use 11116
    .itemcount 11116,1
    .target Williden Marshal
step << Warrior/Rogue/Paladin/Druid
    .goto Un'Goro Crater,41.918,2.703
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_J.D. Collie|r
    >>|cRXP_WARN_Skip this step if you don't have all 7 Power Crystals, you will finish it later|r
    .accept 4284 >> Accept Crystals of Power
    .turnin 4284 >> Turn in Crystals of Power
    .itemcount 11186,7 -- Red Power Crystal
    .itemcount 11185,7 -- Green Power Crystal
    .itemcount 11184,7 -- Blue Power Crystal
    .itemcount 11188,7 -- Yellow Power Crystal
    .target J.D. Collie


step << skip
    #completewith Uend
    >> Kill dinos as you quest - This step is going to be finished later, don't go out of your way to complete this
    .complete 4503,1
    .complete 4503,2
    .complete 3882,1
    .isOnQuest 4503
    .isOnQuest 3882
step << skip
    #sticky
    #completewith lashers
    .goto Un'Goro Crater,67.0,28.0,0
    >> Kill level 48-50 Lashers in northeastern Un'goro
    .complete 4141,1
step << skip
    .goto Un'Goro Crater,69.52,31.02
    >> Finish off Muigin and Larion
    .complete 4141,1


step << Warrior/Rogue/Paladin/Druid
    #label LeaveUngoro
    .goto Un'Goro Crater,45.234,5.831
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryfe|r
    .fp Un'Goro >> Get the Un'Goro Crater Flight Path
    >>Fly or Hearth to Gadgetzan. Make sure you have the Flight Path before you Hearth
    .zoneskip Tanaris
    .target Gryfe
step << !Warrior !Rogue !Paladin !Druid
    #label LeaveUngoro
	#softcore
    .hs >> Hearth to Tanaris 
    >>Alternatively you can run to Tanaris, die on purpose and respawn at Gadgetzan
    .zoneskip Tanaris
step << !Warrior !Rogue !Paladin !Druid
    #label LeaveUngoro
	#hardcore
    .hs >> Hearth to Tanaris 
	>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
    .zoneskip Tanaris
step
    .goto Tanaris,52.297,28.915
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
    .bankwithdraw 2799,4098,5807,3900,6287 >> Withdraw the following items from your bank:
    >>|T133469:0|t[Carefully Folded Note] (If you have it) -- 4098
    >>|T134298:0|t[Gorilla Fangs] (If you have any) -- 2799
    >>|T133471:0|t[Fool's Stout Report] -- 5807
    >>|T132796:0|t[Pupellyverbos Port] -- 3900
    >>|T134572:0|t[Atal'ai Tablet Fragment] -- 6287
    .target Gimblethorn
step
    .goto Tanaris,52.297,28.915
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gimblethorn|r
    .bankdeposit 11568,11569,11570,11830,11018,11133,11114,11831 >> Deposit the following items in your bank: 
    >>|T133635:0|t[Torwa's Pouch] -- 11568
    -->>|T134318:0|t[Webbed Diemetradon Scale] -- 11830
    -->>|T134314:0|t[Webbed Pterrordax Scale] -- 11831
    -->>|T133718:0|t[Dinosaur Bone] -- 11114
    >>|T133849:0|t[Un'Goro Soil] -- 11018
    >>|T135357:0|t[Linken's Training Sword] -- 11133
    .target Gimblethorn
step
    .goto Tanaris,51.808,28.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marin Noggenfogger|r
    .turnin 2605 >> Turn in The Thirsty Goblin
    .accept 2606 >> Accept In Good Taste
    .target Marin Noggenfogger
step
    .goto Tanaris,52.819,27.401
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Andi Lynn|r
    .turnin 5863 >> Turn in The Dunemaul Compound
    .target Andi Lynn
step
    .goto Tanaris,51.566,26.759
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tran'rek|r
    .turnin 3362 >> Turn in Thistleshrub Valley
    .target Tran'rek
step
    .goto Tanaris,51.059,26.873
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sprinkle|r
    .turnin 2606 >> Turn in In Good Taste
    .accept 2641 >> Accept Sprinkle's Secret Ingredient
    .target Sprinkle
step
    .goto Tanaris,50.210,27.483
    .target Senior Surveyor Fizzledowser
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Senior Surveyor Fizzledowser|r
    .accept 162 >> Accept Rise of the Silithid


----Start of Hinterlands Segment----

step << Mage
    #completewith next
    .zone Ironforge >>Teleport to Ironforge
step << Mage
    .goto Ironforge,27.169,8.579
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
    .trainer >> Train your class spells
    .target Dink
step << !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r
    .goto Tanaris,51.006,29.345
    .fly Theramore >> Fly to Theramore
    .target Bera Stonehammer
step << !Mage
    .goto Dustwallow Marsh,71.4,56.1
    .zone Wetlands >> Take the boat to Menethil Harbor
    .zoneskip The Hinterlands
step
    #completewith next
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
    .fly Hinterlands >> Fly to Hinterlands
    .target Shellei Brondir
step
    .goto The Hinterlands,9.752,44.473
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .accept 2988 >> Accept Witherbark Cages
    .target Gryphon Master Talonaxe
step << skip --You don't need the quest to loot the necklaces, skip this part
    .goto The Hinterlands,14.83,44.56
    .target Fraggar Thundermantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fraggar Thundermantle|r
    .accept 2880 >> Accept Troll Necklace Bounty
step
    .goto The Hinterlands,13.4,41.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bera Stonehammer|r on the upper floor of the bunker
    .home >> Set your hearthstone to The Hinterlands
    .target Innkeeper Thulfram
step
    #sticky
    #label FinishFeathers
    >>Loot the |cRXP_LOOT_Wildkin Feathers|r on the ground
    .complete 3661,1 -- Wildkin Feather (15)
step << Paladin
    #season 2
    .train 429139,1 -- Skips if you already have the rune
    .train 5502,3 -- Skips if you don't have Sense Undead
    .goto The Hinterlands,33.0,44.0
    >>|cRXP_WARN_This step can only be completed if the SERVER TIME is between 9pm and 3am. The mob won't be there otherwise|r
    >>Cast |T135974:0|t[|cRXP_FRIENDLY_Sense Undead|r] and go to the Quel'Danil Lodge. Look for a |cRXP_PICK_Vengeful Spirit|r there, a level 45 undead. Kill it and loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Wrath|r]
    *The |cRXP_ENEMY_Vengeful Spirit|r walks around the lake
    .collect 220165,1
    .mob Vengeful Spirit
step << Paladin
    #season 2
    .itemcount 220165,1
    .use 220165
    .train 429249 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Wrath|r] |cRXP_WARN_to train|r |T236260:0|t[|cRXP_FRIENDLY_Wrath|r]
step << Warrior
    #season 2
    #sticky
    #label GeodeHammer
    #completewith TrollNecklaces
    >>|cRXP_WARN_Look for a|r |T133054:0|t|cRXP_LOOT_Geode Hammer|r |cRXP_WARN_which can drop from any of the|r |cRXP_ENEMY_Witherbark Trolls|r. |cRXP_WARN_You will need it to unlock|r |T132364:0|t[Wrecking Crew]
    .collect 220912,1 --Geode Hammer 1/1
    .mob Witherbark Sadist
    .mob Witherbark Scalper
    .mob Witherbark Zealot
    .mob Witherbark Hideskinner
    .mob Witherbark Venomblood
    .train 427084,1
step << Warrior
    #season 2
    #sticky
    #requires GeodeHammer
    #label BrokenGeodeHammer
    #completewith TrollNecklaces
    .equip 16,220912 >>Equip the |T133054:0|t|cRXP_LOOT_Geode Hammer|r as your mainhand weapon. Continue fighting mobs untill the hammer breaks and turns into a |T133054:0|t|cRXP_LOOT_Broken Geode Hammer|r
    .collect 220914,1 --Broken Geode Hammer
    .train 427084,1
step << Warrior
    #season 2
    #sticky
    #requires BrokenGeodeHammer
    #label RuneOfTheDemolition
    #completewith TrollNecklaces
    >>Right click on the |T133054:0|t|cRXP_LOOT_Broken Geode Hammer|r to loot it for |T134419:0|t[|cRXP_FRIENDLY_Rune of the Demolition|r]
    .collect 220913,1 --Rune of the Demolition
    .train 427084,1
step << Warrior
    #season 2
    #sticky
    #requires RuneOfTheDemolition
    #completewith TrollNecklaces
    .train 427084 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Demolition|r] |cRXP_WARN_to learn|r |T132364:0|t[Wrecking Crew]
    .use 220913
    .train 427084,1
step
    #completewith FinalCages
    >>Kill |cRXP_ENEMY_Witherbark Trolls|r. Loot them for their |cRXP_LOOT_Tribal Necklaces|r
    .collect 9259,5,2880,1 -- Troll Tribal Necklace (5)
    .mob Witherbark Venomblood
    .mob Witherbark Hideskinner
    .mob Witherbark Zealot
    .mob Witherbark Scalper
step
    .goto The Hinterlands,31.98,57.31
    >>Click the |cRXP_PICK_Third Witherbark Cage|r
    .complete 2988,3 -- Check Third Cage
step
    #label FinalCages
    >>Click the |cRXP_PICK_First Witherbark Cage|r and |cRXP_PICK_Second Witherbark Cage|r
    .complete 2988,1 -- Check First Cage
    .goto The Hinterlands,23.28,58.81
    .complete 2988,2 -- Check Second Cage
    .goto The Hinterlands,23.12,58.82
step
    #label TrollNecklaces
    .goto The Hinterlands,21.92,56.04,70,0
    .goto The Hinterlands,25.09,59.20,70,0
    .goto The Hinterlands,32.23,58.21
    >>Kill |cRXP_ENEMY_Witherbark Trolls|r. Loot them for their |cRXP_LOOT_Tribal Necklaces|r
    .collect 9259,5,2880,1 -- Troll Tribal Necklace (5)
    .mob Witherbark Venomblood
    .mob Witherbark Hideskinner
    .mob Witherbark Zealot
    .mob Witherbark Scalper
step << Warrior
    #season 2
    >>|cRXP_WARN_Look for a|r |T133054:0|t|cRXP_LOOT_Geode Hammer|r |cRXP_WARN_which can drop from any of the|r |cRXP_ENEMY_Witherbark Trolls|r. |cRXP_WARN_You will need it to unlock|r |T132364:0|t[Wrecking Crew]
    .collect 220912,1 --Geode Hammer 1/1
    .mob Witherbark Sadist
    .mob Witherbark Scalper
    .mob Witherbark Zealot
    .mob Witherbark Hideskinner
    .mob Witherbark Venomblood
    .train 427084,1
step << Warrior
    #season 2
    #sticky
    #label BrokenGeodeHammerTwo
    #completewith HinterlandsEnd
    .equip 16,220912 >>Equip the |T133054:0|t|cRXP_LOOT_Geode Hammer|r as your mainhand weapon. Kepp on questing untill it breaks and turns into a |T133054:0|t|cRXP_LOOT_Broken Geode Hammer|r
    .collect 220914,1 --Broken Geode Hammer
    .train 427084,1
step << Warrior
    #season 2
    #sticky
    #requires BrokenGeodeHammerTwo
    #label RuneOfTheDemolitionTwo
    #completewith HinterlandsEnd
    >>Right click on the |T133054:0|t|cRXP_LOOT_Broken Geode Hammer|r to loot it for |T134419:0|t[|cRXP_FRIENDLY_Rune of the Demolition|r]
    .collect 220913,1 --Rune of the Demolition
    .train 427084,1
step << Warrior
    #season 2
    #sticky
    #requires RuneOfTheDemolitionTwo
    #completewith HinterlandsEnd
    .train 427084 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Demolition|r] |cRXP_WARN_to learn|r |T132364:0|t[Wrecking Crew]
    .use 220913
    .train 427084,1
step
    .goto The Hinterlands,14.17,45.33,25,0
    .goto The Hinterlands,14.834,44.567
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fraggar Thundermantle|r
    .accept 2880 >> Accept Troll Necklace Bounty
    .turnin 2880 >> Turn in Troll Necklace Bounty
    .accept 2877 >> Accept Skulk Rock Clean-up
    .target Fraggar Thundermantle
step
    .goto The Hinterlands,9.752,44.473
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .turnin 2988 >> Turn in Witherbark Cages
    .accept 2989 >> Accept The Altar of Zul
    .target Gryphon Master Talonaxe
step
    .goto The Hinterlands,40.63,59.65
    >> Loot a |cRXP_PICK_purple mushroom|r underwater
    .complete 2641,1
step
    .goto The Hinterlands,48.814,68.387
    >>|cRXP_WARN_Clear your way to the top of The Altar of Zul. Ensure you are on full HP before you reach the top!|r
    >>|cRXP_WARN_Run to the exploration location, then jump off to the side to evade the Elites at the top. Wait on the ledge until you have dropped Combat. Watch the video below for an example|r
    .complete 2989,1 -- Search the Altar of Zul
    .link https://www.youtube.com/watch?v=FtTS3K7T7Tw >> |cRXP_WARN_Click here for video reference|r
step
    #label FinishFeathers
    .goto The Hinterlands,46.56,40.60,60,0
    .goto The Hinterlands,46.24,39.85,60,0
    .goto The Hinterlands,57.65,42.83
    >>Kill |cRXP_ENEMY_Green Sludges|r and |cRXP_ENEMY_Jade Oozes|r
    .complete 2877,1 -- Green Sludge 10
    .complete 2877,2 -- Jade Ooze 10
    .mob Green Sludge
    .mob Jade Ooze
step
    .goto The Hinterlands,42.5,54.5,70,0
    .goto The Hinterlands,33.5,58.1,70,0
    .goto The Hinterlands,29.6,62.0,70,0
    .goto The Hinterlands,27.7,54.5,70,0
    .goto The Hinterlands,21.0,56.1,70,0
    .goto The Hinterlands,20.0,48.2,70,0
    .goto The Hinterlands,15.7,52.5,70,0
    .goto The Hinterlands,28.1,58.1
    >>Loot the |cRXP_LOOT_Wildkin Feathers|r on the ground
    >>|cRXP_WARN_These are scattered on the ground throughout all of The Hinterlands|r
    .complete 3661,1 -- Wildkin Feather (15)
step
    .use 8704 >>|cRXP_WARN_Use the |T132836:0|t[|cRXP_LOOT_OOX-09/HL Distress Beacon|r] to start the quest|r
    >>|cRXP_WARN_If you are unlucky and have not found it yet, skip this step|r
    .collect 8704,1,485,1 -- OOX-09/HL Distress Beacon (1)
    .accept 485 >> Accept Find OOX-09/HL!
    .itemcount 8704,1 -- OOX-09/HL Distress Beacon (1)
step
    .isOnQuest 485
    .goto The Hinterlands,49.352,37.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homing Robot OOX-09/HL|r
    .turnin 485 >> Turn in Find OOX-09/HL!
    .target Homing Robot OOX-09/HL
step
    .isQuestTurnedIn 485
    .goto The Hinterlands,49.352,37.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Homing Robot OOX-09/HL|r
    .accept 836,1 >> Accept Rescue OOX-09/HL!
    .target Homing Robot OOX-09/HL
step
    .isOnQuest 836
    .goto The Hinterlands,72.46,66.16,40,0
    .goto The Hinterlands,76.22,61.81,45,0
    .goto The Hinterlands,79.33,61.26
    >>Escort the |cRXP_FRIENDLY_Homing Robot OOX-09/HL|r to safety
    >>|cRXP_WARN_This quest can be hard. You have to fight waves of 3/4 mobs along the way. Skip this step if its too difficult|r
    .complete 836,1 -- Escort OOX-09/HL to the shoreline beyond Overlook Cliff
    .target Homing Robot OOX-22/FE
step
    #completewith GammeritaSnapshot
    +Grind until your Hearthstone cooldown is <6min
    .cooldown item,6948,<360
step << Rogue
    #season 2
    .goto The Hinterlands,72,53
    >>Look for a small chest in front of an altar in the ruins. It's guarded by a |cRXP_ENEMY_Vilebranch Mask|r use |T136175:0|t[Blind] on it and loot the chest for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Focus|r]
    .collect 221433,1 -- rune of focus
    .mob Vilebranch Mask
    .train 400093,1
step << Rogue
    #season 2
    .itemcount 221433,1
    .use 221433
    .train 400093 >>|cRXP_WARN_Use the|T134419:0|t[|cRXP_FRIENDLY_Rune of Focus|r] |cRXP_WARN_to train|r |T236274:0|t[Focused Attacks]
    .train 400093,1
step
    #completewith next
    >>Loot the |cRXP_LOOT_Pupellyverbos Ports|r on the ground
    .complete 580,1 -- Pupellyverbos Port (12)
step
    #label GammeritaSnapshot
    .line The Hinterlands,81.95,49.41,81.21,52.91,81.98,54.30,81.97,56.42,80.77,58.37,80.34,59.40,79.45,60.76,78.69,61.39,76.86,62.73,75.91,63.81,75.29,65.60,76.72,66.85,78.53,67.51,78.60,68.97,77.90,70.97,76.71,71.26,76.52,72.95,77.07,74.64
    .goto The Hinterlands,81.95,49.41,70,0
    .goto The Hinterlands,81.21,52.91,70,0
    .goto The Hinterlands,81.98,54.30,70,0
    .goto The Hinterlands,81.97,56.42,70,0
    .goto The Hinterlands,80.77,58.37,70,0
    .goto The Hinterlands,80.34,59.40,70,0
    .goto The Hinterlands,79.45,60.76,70,0
    .goto The Hinterlands,78.69,61.39,70,0
    .goto The Hinterlands,76.86,62.73,70,0
    .goto The Hinterlands,75.91,63.81,70,0
    .goto The Hinterlands,75.29,65.60,70,0
    .goto The Hinterlands,76.72,66.85,70,0
    .goto The Hinterlands,78.53,67.51,70,0
    .goto The Hinterlands,78.60,68.97,70,0
    .goto The Hinterlands,77.90,70.97,70,0
    .goto The Hinterlands,76.71,71.26,70,0
    .goto The Hinterlands,76.52,72.95,70,0
    .goto The Hinterlands,77.07,74.64,70,0
    .goto The Hinterlands,81.21,52.91,70,0
    .goto The Hinterlands,75.91,63.81
    .use 9328 >> |cRXP_WARN_Use the|r |T134442:0|t[Super Snapper FX] |cRXP_WARN_on|r |cRXP_ENEMY_Gammerita|r
    >>|cRXP_WARN_This will cause |cRXP_ENEMY_Gammerita|r to agro you. Be ready to run away after using it|r
    .complete 2944,1 -- Snapshot of Gammerita
    .unitscan Gammerita
step
    .goto The Hinterlands,81.7,49.3,70,0
    .goto The Hinterlands,79.3,60.5,70,0
    .goto The Hinterlands,77.5,70.3,70,0
    .goto The Hinterlands,75.7,64.5,70,0
    .goto The Hinterlands,81.9,52.9,70,0
    .goto The Hinterlands,77.9,65.5
    >>Loot the |cRXP_LOOT_Pupellyverbos Ports|r on the ground
    .complete 580,1 -- Pupellyverbos Port (12)
step
    .goto The Hinterlands,47.20,65.95
    +Grind until your Hearthstone is off cooldown
    .cooldown item,6948,<0
step
    #label HinterlandsEnd
    .hs >> Hearth to The Hinterlands
    .cooldown item,6948,>0,1
step
    .goto The Hinterlands,14.834,44.567
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fraggar Thundermantle|r
    .target Fraggar Thundermantle
    .turnin 2877 >> Turn in Skulk Rock Clean-up
step
    .goto The Hinterlands,9.752,44.473
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryphon Master Talonaxe|r
    .turnin 2989 >> Turn in The Altar of Zul
    .target Gryphon Master Talonaxe
step << Mage
    #completewith next
	.zone Stormwind City >> Teleport to Stormwind City
step << Mage
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
    .trainer >> Train your class spells
    .target Elsharin
	.target Jennea Cannon
step << Mage
    .goto Stormwind City,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Booty Bay>> Fly to Booty Bay
    .target Dungar Longdrink
step << !Mage
    #ssf
    .goto The Hinterlands,11.0,46.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guthrum Thunderfist|r
    .fly Ironforge >> Fly to Ironforge
    .target Guthrum Thunderfist
step << !Mage
    #ah
    .goto The Hinterlands,11.0,46.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guthrum Thunderfist|r
    .fly Stormwind >> Fly to Stormwind City
    .target Guthrum Thunderfist
step
    >>Go to the bank
    .bankdeposit 9328,9330,10819 >> Deposit the following items into your bank:
    >>|T134442:0|t[Super Snapper FX] -- 9328
    >>|T134300:0|t[Snapshot of Gammerita] -- 9330
    >>|T132927:0|t[Wildkin Feather] -- 10819
    .target Gimblethorn
step << !Mage
    #ssf
    .goto Ironforge,18.6,51.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Allison|r
    .home >> Set your Hearthstone to Ironforge
    .target Innkeeper Allison
step << !Mage
    #ah
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Firebrew|r
    .home >> Set your Hearthstone to Stormwind City
    .target Innkeeper Firebrew
step << !Mage
    #ssf
    .goto Ironforge,55.6,48.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Booty Bay>> Fly to Booty Bay
    .target Gryth Thurden
step << !Mage
    #ah
    .goto Stormwind City,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Booty Bay>> Fly to Booty Bay
    .target Dungar Longdrink
]])