RXPGuides.RegisterGuide([[
#version 20
#season 2
#group RXP SOD TEST
#classic
<< Alliance
#name 24-28 Duskwood/Redridge SoD
#next 28-32 Duskwood SoD


step << Hunter
    #xprate >1.59
    #sticky
    #label PetTrain
    .goto 1453,61.576,15.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Karrina Mekenda|r inside
    .train 4198 >> Train your pet spells
    .target Karrina Mekenda
step << Hunter
    #xprate >1.59
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r inside
    .trainer >> Train your class spells
    .target Einris Brightspear
step
    #xprate >1.59
    #sticky
    #requires PetTrain << Hunter
    #label UnsentLetter
    >>|cRXP_WARN_Use |T133471:0|t[|cRXP_LOOT_An Unsent Letter|r] to start the quest|r
    .accept 373 >> Accept The Unsent Letter
    .use 2874 -- An Unsent Letter
    .dungeon DM
step
    .goto Stormwind City,55.21,7.04
    #requires PetTrain << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billibub Cogspinner|r
    .vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him if its up|r
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Billibub Cogspinner|r doesn't have one|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step << Paladin
    #season 2
    .goto Stormwind City,64.201,60.575
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Gump|r
    >>|cRXP_BUY_Buy|r |T133849:0|t[Stormwind Seasoning Herbs]
    .collect 2665,1,90,1 --Stormwind Seasoning Herbs (1)
    .target Felicia Gump
step
    #xprate >1.59 << !Hunter
    #requires UnsentLetter
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 373 >> Turn in The Unsent Letter
    .accept 389 >> Accept Bazil Thredd
    .target Baros Alexston
    .dungeon DM
step << Warrior
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >> Travel toward |cRXP_FRIENDLY_Wu Shen|r inside the Command Center
step << Warrior
    #xprate >1.59
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu Shen|r inside upstairs
    .trainer >> Train your class spells
    .target Wu Shen
step << Rogue
    #xprate >1.59
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne the Night Man|r
    .trainer >> Train your class spells
    .target Osborne the Night Man
step
    #season 0,1 << Paladin
    .goto Stormwind City,64.201,60.575
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Gump|r
    >>|cRXP_BUY_Buy|r |T133849:0|t[Stormwind Seasoning Herbs]
    .collect 2665,1,90,1 --Stormwind Seasoning Herbs (1)
    .target Felicia Gump
step << Paladin
    #season 2
    #completewith KatherineStart
    .goto StormwindClassic,42.77,34.32,10,0
    .goto StormwindClassic,41.37,31.53,10,0
    .goto StormwindClassic,39.19,31.03,10,0
    .goto StormwindClassic,37.23,31.87,12 >>Travel toward |cRXP_FRIENDLY_Katherine the Pure|r inside the Cathedral
    .train 410014,1
    .isQuestTurnedIn 1649
step << Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >> Travel to |cRXP_FRIENDLY_Duthorian Rall|r inside the Stormwind Cathedral
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r. He will give you the |T133739:0|t[|cRXP_LOOT_Tome of Valor|r]
    .use 6776 >>|cRXP_WARN_Use the |T133739:0|t[|cRXP_LOOT_Tome of Valor|r] to start the quest|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Accept The Tome of Valor
    .target Duthorian Rall
    .dungeon !DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1649 >>Turn in The Tome of Valor
    .accept 1650 >>Accept The Tome of Valor
    .target Duthorian Rall
    .dungeon !DM
step << Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1649 >>Turn in The Tome of Valor
    .accept 1650 >>Accept The Tome of Valor
    .target Duthorian Rall
    .dungeon DM
step << Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r. He will give you the |T133739:0|t[|cRXP_LOOT_Tome of Valor|r]
    .use 6776 >>|cRXP_WARN_Use the |T133739:0|t[|cRXP_LOOT_Tome of Valor|r] to start the quest|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Accept The Tome of Valor
    .target Duthorian Rall
    .dungeon DM
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1652 >>Turn in The Tome of Valor
--  .accept 1653 >>Accept The Test of Righteousness
    .target Duthorian Rall
    .dungeon DM
step << Paladin
    #season 2
    #label KatherineStart
    .goto StormwindClassic,37.23,31.87
    >>Talk to |cRXP_FRIENDLY_Katherine the Pure|r
    .turnin 78089 >> Turn in Advice From Stormwind
    .accept 78090 >> Accept A Second Opinion
    .target Katherine the Pure
    .train 410014,1
    .isOnQuest 78089
step << Paladin
    #season 2
    .goto StormwindClassic,37.23,31.87
    >>Talk to |cRXP_FRIENDLY_Katherine the Pure|r
    .accept 78090 >> Accept A Second Opinion
    .target Katherine the Pure
    .train 410014,1
    .isQuestTurnedIn 78089
step << Paladin
    #xprate >1.59
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .trainer >> Train your class spells
    .target Arthur the Faithful
step << Paladin
    #season 2
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    >>|cRXP_WARN_You need this to acquire|r |T134596:0|t[Engrave Pants - Exorcist] |cRXP_WARN_shortly|r
    .train 2878 >> Train |T135983:0|t[Turn Undead]
    .train 5502 >> Train |T135974:0|t[Sense Undead]
    .target Arthur the Faithful
    .train 416037,1
    .xp <24,1
step << Paladin
    #season 2
    #completewith next
    .goto StormwindClassic,29.04,74.28,10,0
    .goto StormwindClassic,27.40,76.48,10,0
    .goto StormwindClassic,27.14,77.83,5,0
    .goto StormwindClassic,26.12,77.23,8 >>Travel toward |cRXP_FRIENDLY_Ursula Deline|r inside The Slaughtered Lamb
    .train 410014,1
    .isOnQuest 78090
step << Paladin
    #season 2
    .goto StormwindClassic,26.12,77.23
    >>Talk to |cRXP_FRIENDLY_Ursula Deline|r
    .turnin 78090 >> Turn in A Second Opinion
    .accept 78091 >> Accept Earning Your Salt
    .target Ursula Deline
    .train 410014,1
    .isOnQuest 78090
step << Paladin
    #season 2
    .goto StormwindClassic,26.12,77.23
    >>Talk to |cRXP_FRIENDLY_Ursula Deline|r
    .accept 78091 >> Accept Earning Your Salt
    .target Ursula Deline
    .train 410014,1
    .isQuestTurnedIn 78090
step << Warlock
    #sticky
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >> Go into The Slaughtered Lamb. Go downstairs
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Spackle Thornberry|r
    .vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your|r |T136220:0|t[Succubus]|cRXP_BUY_ which you will have in a second. If you have extra gold also buy them for your|r |T136221:0|t[Voidwalker]   
    .target Spackle Thornberry
step << Warlock
    .goto Stormwind City,25.25,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1738 >> Turn in Heartswood
    .turnin 65602 >> Turn in What Is Love?
    .accept 1739 >> Accept The Binding
    .accept 65603 >> Accept The Binding
    .target Gakin the Darkbinder
    .isOnQuest 65602
step << Warlock
    #optional
    .goto Stormwind City,25.25,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1738 >> Turn in Heartswood
    .accept 1739 >> Accept The Binding
    .accept 65603 >> Accept The Binding
    .target Gakin the Darkbinder
    .isQuestTurnedIn 65602
step << Warlock
    #optional
    .goto Stormwind City,25.25,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1738 >> Turn in Heartswood
    .accept 1739 >> Accept The Binding
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_Travel to the bottom of The Slaughtered Lamb|r
    .cast 8674 >> |cRXP_WARN_Use the|r |T136065:0|t[Heartswood Core] |cRXP_WARN_to call forth a|r |cRXP_ENEMY_Summoned Succubus|r
    .use 6913
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6913 >> Kill the |cRXP_ENEMY_Summoned Succubus|r
    .complete 1739,1 --Kill Summoned Succubus (x1)
    .mob Summoned Succubus
step << Warlock
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_Travel to the bottom of The Slaughtered Lamb|r
    .use 190186 >> |cRXP_WARN_Use the|r |T136065:0|t[Wooden Figurine] |cRXP_WARN_to call forth a|r |cRXP_ENEMY_Summoned Incubus|r
    .complete 1739,1 --Kill Summoned Succubus (x1)
    .mob Summoned Incubus
    .isQuestTurnedIn 65602
step << Warlock
    #completewith next
    +|cRXP_WARN_You may now use either the|r |T136220:0|t[Succubus] |cRXP_WARN_or|r |T136221:0|t[Voidwalker] |cRXP_WARN_as your pet|r
    >>|cRXP_WARN_The|r |T136220:0|t[Succubus] |cRXP_WARN_deals significant damage whereas the|r |T136221:0|t[Voidwalker] |cRXP_WARN_provides more survivability|r
step << Warlock
    .goto Stormwind City,25.25,78.55
    .target Gakin the Darkbinder
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .turnin 1739 >> Turn in The Binding
    .turnin -65603 >> Turn in The Binding
step << Druid
    #xprate >1.49
    #season 2
    .goto Stormwind City,43.088,80.391
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
    .turnin 1075 >> Turn in A Scroll from Mauren
    .target Collin Mauren
    .isOnQuest 1075
step
    #xprate <1.5
    .goto Stormwind City,43.088,80.391
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
    .turnin 1075 >> Turn in A Scroll from Mauren
    .accept 1076 >> Accept Devils in Westfall
    .target Collin Mauren
    .isOnQuest 1075
step
    #xprate <1.5
    #optional
    .goto Stormwind City,43.088,80.391
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
    .accept 1076 >> Accept Devils in Westfall
    .target Collin Mauren
    .isQuestTurnedIn 1075
step
    #xprate <1.59
    .goto Stormwind City,43.088,80.391
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
    .turnin 1075 >> Turn in A Scroll from Mauren
    .target Collin Mauren
    .isOnQuest 1075
step << Druid
    #season 2
    .goto Stormwind City,43.088,80.391
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
    .turnin 1075 >> Turn in A Scroll from Mauren
    .target Collin Mauren
    .isOnQuest 1075
step << Druid
    #xprate >1.59
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .train 1075 >> Train your class spells
    .target Loganaar
    .xp <24,1
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
    .turnin 389 >> Turn in Bazil Thredd
    .target Warden Thelwater
    .dungeon DM
    .dungeon !Stockades
step << Hunter
#xprate <1.99
    .goto Stormwind City,57.06,73.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
    .bankdeposit 3618,3347,3397,5233,5234,5996 >> Deposit the following items into your bank:
    >>|T134299:0|t[Gobbler's Head] -- 3618
    >>|T134305:0|t[Bundle of Crocolisk Skins] -- 3347
    >>|T134304:0|t[Young Crocolisk Skins] -- 3397
    >>|T134458:0|t[Stone of Relu] << Hunter -- 5233
    >>|T134434:0|t[Flagongut's Fossil] << Hunter -- 5234
    >>|T134797:0|t[Elixir of Water Breathing] (If you have them) -- 5996
    .target Newton Burnside
step << Rogue
    .isQuestAvailable 2359 -- only setting HS if need to complete poison quest still
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Allison|r
    .home >> Set your Hearthstone to Stormwind City
    .target Innkeeper Allison
step 
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Train 1h Swords << Mage/Rogue/Warlock
    .train 1180 >> Train Daggers << Mage/Druid/Priest
    .train 202 >> Train 2h Swords << Warrior/Paladin/Hunter
    .target Woo Ping
step << Mage
    #completewith next
    .goto Stormwind City,56.135,65.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kyra Boucher|r
    .vendor >> |cRXP_BUY_Buy a|r |T134419:0|t[Rune of Teleportation] |cRXP_BUY_from her|r
    .collect 17031,1 --Rune of Teleportation (1)
    .target Kyra Boucher
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Buy the following items for faster turn ins at Duskwood shortly
    >>This will save you time as you won't need to run around looking for mobs to kill. Skip this step if you wish to not buy any
    >>|cRXP_WARN_Note: You should also level your|r |T133971:0|t[Cooking] |cRXP_WARN_to 50 for an easy 2,000XP quest in Duskwood. Buy as many|r |T133970:0|t[Chunk of Boar Meat] |cRXP_WARN_or|r |T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_WARN_as you need to level it to 50. You can cook them once you get to the Inn at Duskwood|r
    >>|T133024:0|t[Bronze Tube]
    >>|T133970:0|t[Lean Wolf Flank]
    >>|T134321:0|t[Gooey Spider Leg]
    >>|T132794:0|t[Flask of Oil]
    .collect 4371,1,174,1 -- Bronze Tube (1)
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .collect 814,5,103,1 -- Flask of Oil (5)
    .bronzetube
    .skill cooking,50,1 -- step only displays if skill is less than 50
    .target Auctioneer Jaxon
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Buy the following items for faster turn ins at Duskwood shortly
    >>This will save you time as you won't need to run around looking for mobs to kill. Skip this step if you wish to not buy any
    >>|T133024:0|t[Bronze Tube]
    >>|T133970:0|t[Lean Wolf Flank]
    >>|T134321:0|t[Gooey Spider Leg]
    >>|T132794:0|t[Flask of Oil]
    .collect 4371,1,174,1 -- Bronze Tube (1)
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .collect 814,5,103,1 -- Flask of Oil (5)
    .bronzetube
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .target Auctioneer Jaxon
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Buy the following items for faster turn ins at Duskwood shortly
    >>This will save you time as you won't need to run around looking for mobs to kill. Skip this step if you wish to not buy any
    >>|cRXP_WARN_Note: You should also level your|r |T133971:0|t[Cooking] |cRXP_WARN_to 50 for an easy 2,000XP quest in Duskwood. Buy as many|r |T133970:0|t[Chunk of Boar Meat] |cRXP_WARN_or|r |T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_WARN_as you need to level it to 50. You can cook them once you get to the Inn at Duskwood|r
    >>|T133970:0|t[Lean Wolf Flank]
    >>|T134321:0|t[Gooey Spider Leg]
    >>|T132794:0|t[Flask of Oil]
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .collect 814,5,103,1 -- Flask of Oil (5)
    .skill cooking,50,1 -- step only displays if skill is less than 50
    .target Auctioneer Jaxon
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Buy the following items for faster turn ins at Duskwood shortly
    >>This will save you time as you won't need to run around looking for mobs to kill. Skip this step if you wish to not buy any
    >>|T133970:0|t[Lean Wolf Flank]
    >>|T134321:0|t[Gooey Spider Leg]
    >>|T132794:0|t[Flask of Oil]
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .collect 814,5,103,1 -- Flask of Oil (5)
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .target Auctioneer Jaxon


-- redridge/duskwood start travel routing:
-- 1x route (.maxlevel 24) : fly westfall/travel to sven to get wolves quest, then travel darkshire
-- 1x route (.xp <25,1) : fly redridge if have fp, then travel to darkshire 
-- 2x route : fly/travel to redridge, complete entry quests, then travel darkshire


step << NightElf
#xprate <1.99
    .dungeon DM
    #completewith next
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge >> Fly to Redridge Mountains
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
    .xp <25,1
step << !NightElf
#xprate <1.99
    #completewith next
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge >> Fly to Redridge Mountains
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
    .xp <25,1
step
#xprate <1.99
    #completewith next
    .subzone 42 >> Travel to Darkshire
    .xp <25,1
step << !Human
#xprate <1.99
    .maxlevel 24
    .dungeon !DM
    #completewith next
	.goto Stormwind City,71.19,89.10
    .zone Elwynn Forest >> Head to Elwynn Forest
step << !Human
#xprate <1.99
    .maxlevel 24
    .dungeon DM
    #completewith next
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Westfall >> Fly to Westfall
    .target Dungar Longdrink
step << Human
#xprate <1.99
    .maxlevel 24
    #completewith next
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Westfall >> Fly to Westfall
    .target Dungar Longdrink
step
#xprate <1.99
    .maxlevel 24
    .goto Duskwood,7.723,33.301
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lars|r
    >>|cRXP_WARN_Do NOT accept the quest Sven's Revenge from|r |cRXP_FRIENDLY_Sven Yorgen|r
    .accept 226 >> Accept Wolves at Our Heels
    .target Lars
step << !Human !Warlock
#xprate >1.99
    .dungeon !DM
    #completewith next
	.goto Stormwind City,71.19,89.10
    .zone Elwynn Forest >> Head to Elwynn Forest
step << !Human !Warlock
#xprate >1.99
    .dungeon !DM
    #completewith next
    .goto Elwynn Forest,65.20,69.80,50 >> Travel to the Tower of Azora. Ascend the tower
step << !Human !Warlock
#xprate >1.99
    .dungeon !DM
    .goto Elwynn Forest,65.22,69.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theocritus|r at the top
    .accept 94 >> Accept A Watchful Eye
    .target Theocritus
step << !Human !Warlock
#xprate >1.99
    .dungeon !DM
    #optional
    #completewith next
    .zone Redridge Mountains >> Travel to Redridge Mountains
    .zoneskip Elwynn Forest,1
step << !Human !Warlock
#xprate >1.99
    .dungeon !DM
    #optional
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
    .target Ariena Stormfeather
step << !Human !Warlock
#xprate >1.99
    #completewith next
    .dungeon DM
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge >> Fly to Redridge Mountains
    .target Dungar Longdrink
step << Human/Gnome Warlock
#xprate >1.99
    #completewith next
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge >> Fly to Redridge Mountains
    .target Dungar Longdrink
step << Warlock
    #season 2
    #sticky
    #completewith RedridgeEnd
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
    #completewith RedridgeEnd
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
    #completewith RedridgeEnd
    .itemcount 221499,1 << Warlock --Rune of the Felguard
    .itemcount 223147,1 << Mage --Spell Notes: Balefire Bolt
    .train 431756 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r] |cRXP_WARN_to learn|r |T136216:0|t[Summon Felguard] << Warlock
    .train 429311 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r |cRXP_WARN_to train|r |T135809:0|t[Balefire Bolt] << Mage
    .use 221499 << Warlock
    .use 223147 << Mage
step
#xprate >1.99
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .accept 20 >> Accept Blackrock Menace
    .maxlevel 25
step
#xprate >1.99
.dungeon Stockades
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Berton|r
    .accept 386 >> Accept What Comes Around...
    .target Guard Berton
step
#xprate >1.99
    #label HunterArrive
    .goto Redridge Mountains,21.85,46.32
    .target Martie Jainrose
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
    .accept 34 >> Accept An Unwelcome Guest
    .maxlevel 25
step
#xprate >1.99
    .goto Redridge Mountains,15.68,49.30
    >>Kill |cRXP_ENEMY_Bellygrub|r. Loot him for his |cRXP_LOOT_Tusk|r
    .complete 34,1
    .mob Bellygrub
    .isOnQuest 34
step 
#xprate >1.99
    .goto Redridge Mountains,21.85,46.32
    .target Martie Jainrose
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >> Turn in An Unwelcome Guest
    .isQuestComplete 34
step
#xprate >1.99
    .goto Redridge Mountains,27.724,47.377
    .target Dockmaster Baren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
    .accept 127 >> Accept Selling Fish
    .accept 150 >> Accept Murloc Poachers
    .maxlevel 25
step
#xprate >1.99
    #completewith next
    .goto Redridge Mountains,56.4,51.8,0
    >>Kill |cRXP_ENEMY_Murloc Scouts|r and |cRXP_ENEMY_Murloc Tidecallers|r. Loot them for their |cRXP_LOOT_Fins|r and |cRXP_LOOT_Sunfish|r
    .collect 1468,8,150,1 -- Murloc Fin (8)
    .complete 127,1 -- Spotted Sunfish (10)
    .mob Murloc Scout
    .mob Murloc Tidecaller
    .isOnQuest 150
	.isOnQuest 127
step
#xprate >1.99
    #label orcs
    >>Kill |cRXP_ENEMY_Blackrock Grunts|r and |cRXP_ENEMY_Blackrock Outrunners|r. Loot them for their |cRXP_LOOT_Axes|r
	>>|cRXP_WARN_Be aware the |cRXP_ENEMY_Blackrock Outrunners|r will cast|r |T132149:0|t[Net] |cRXP_WARN_on you|r
    >>|cRXP_WARN_Alternate between killing |cRXP_ENEMY_Orcs|r and the |cRXP_ENEMY_Murlocs|r marked on the map southwest|r
    .goto Redridge Mountains,61.76,43.51
    .complete 20,1 --Battleworn Axe (10)
    .isOnQuest 20
    .mob Blackrock Grunt
	.mob Blackrock Outrunner
step
#xprate >1.99
    .goto Redridge Mountains,56.4,51.8
    >>Kill |cRXP_ENEMY_Murloc Scouts|r and |cRXP_ENEMY_Murloc Tidecallers|r. Loot them for their |cRXP_LOOT_Fins|r and |cRXP_LOOT_Sunfish|r
    .collect 1468,8,150,1 -- Murloc Fin (8)
    .complete 127,1 -- Spotted Sunfish (10)
    .mob Murloc Scout
    .mob Murloc Tidecaller
    .isOnQuest 150
	.isOnQuest 127
step
#xprate >1.99
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 20 >> Turn in Blackrock Menace
	.isQuestComplete 20
step
#xprate >1.99
    .goto Redridge Mountains,27.724,47.377
    .target Dockmaster Baren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
    .turnin 127 >> Turn in Selling Fish
	.isQuestComplete 127
step
#xprate >1.99
    .goto Redridge Mountains,27.724,47.377
    .target Dockmaster Baren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
    .turnin 150 >> Turn in Murloc Poachers
	.isQuestComplete 150
step
#xprate >1.99
    #label RedridgeEnd
    #completewith MadEva
    .zone Duskwood >> Head to Duskwood
    .goto Redridge Mountains,5.5,91.9
step
#xprate >1.99
    #completewith MadEva
    .subzone 42 >> Head to Darkshire
    .goto Duskwood,73.48,24.84,40,0
    .goto Duskwood,75.81,45.29
step
#xprate <1.99
    #completewith MadEva
    .goto Duskwood,48.0,17.2,0
    .goto Duskwood,28.1,28.7,0
    .goto Duskwood,48.0,17.2,85,0
    .goto Duskwood,75.81,45.29,50 >> Travel to Darkshire
    .isOnQuest 226
step
#xprate <1.99
    #completewith MadEva
    #label Wolves 
    >>Kill |cRXP_ENEMY_Starving Dire Wolves|r and |cRXP_ENEMY_Rabid Dire Wolves|r en route. Loot them for their |cRXP_LOOT_Lean Wolf Flanks|r
    >>|cRXP_WARN_You don't have to kill all |cRXP_ENEMY_Wolves|r now. Save the |cRXP_LOOT_Lean Wolf Flanks|r for a later quest|r
    .complete 226,1 -- Starving Dire Wolf (12)
    .complete 226,2 -- Rabid Dire Wolf (8)
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .isOnQuest 226
    .subzoneskip 42
step
#xprate <1.99
    #completewith MadEva
    #label Wolves 
    >>Kill |cRXP_ENEMY_Starving Dire Wolves|r and |cRXP_ENEMY_Rabid Dire Wolves|r en route
    >>|cRXP_WARN_You don't have to kill all |cRXP_ENEMY_Wolves|r now|r
    .complete 226,1 -- Starving Dire Wolf (12)
    .complete 226,2 -- Rabid Dire Wolf (8)
    .skill cooking,50,1 -- step only displays if skill is less than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .isOnQuest 226
    .subzoneskip 42
step
    .abandon 148 >> Abandon Supplies from Darkshire. You will miss out on free XP if you turn this in now. It will be completed soon
step
    #label MadEva
    .goto Duskwood,75.81,45.29
    .target Madame Eva
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
    .accept 66 >> Accept The Legend of Stalvan
    .accept 101 >> Accept The Totem of Infliction
step
    .isQuestTurnedIn 2359 << Rogue -- Rogue setting HS if already completed poison quest
    .goto Duskwood,73.872,44.406
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Trelayne|r
    .home >> Set your Hearthstone to Duskwood
    .target Innkeeper Trelayne
step
    .goto Duskwood,73.83,44.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r
	>>|cRXP_WARN_You need 50 skill in cooking to accept this quest|r
    .accept 90 >> Accept Seasoned Wolf Kabobs
    .turnin 90 >> Turn in Seasoned Wolf Kabobs
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .itemcount 1015,10 -- Lean Wolf Flank (10)
    .target Chef Grual
step
    .goto Duskwood,73.59,46.89
    .target Commander Althea Ebonlocke
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .accept 56 >> Accept The Night Watch
step
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
    .turnin 66 >> Turn in The Legend of Stalvan
    .target Clerk Daltry
    .accept 67 >> Accept The Legend of Stalvan
step
    .goto Duskwood,75.33,48.69
    .target Elaine Carevin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaine Carevin|r
    .accept 163 >> Accept Raven Hill
    .accept 165 >> Accept The Hermit
step
    .abandon 95 >> Abandon Sven's Revenge
step
    .goto Duskwood,75.33,48.69
    .target Elaine Carevin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaine Carevin|r
    .accept 164 >> Accept Deliveries to Sven
    >>|cRXP_WARN_If you can't pick up this quest you need to abandon Sven's Revenge from your quest log|r
step
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
    .fp Duskwood>> Get the Duskwood Flight Path
    .target Felicia Maline
step
    .goto Duskwood,77.992,48.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herble Baubbletump|r
    .vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Herble Baubbletump|r doesn't have one|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube--skips the step if you have a bronze tube
    .target Herble Baubbletump
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 174 >> Accept Look To The Stars
    .turnin 174 >> Turn in Look To The Stars
    .itemcount 4371,1 -- Bronze Tube (1)
    .target Viktori Prism'Antras
step
    .goto Duskwood,79.80,48.02
    .target Viktori Prism'Antras
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 175 >> Accept Look To The Stars
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.46,59.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blind Mary|r
    .turnin 175 >> Turn in Look To The Stars
    .accept 177 >> Accept Look To The Stars
    .target Blind Mary
    .isQuestTurnedIn 174
step
	#completewith HistoryBook1
    >>|cRXP_WARN_Keep at eye out for |T133741:0|t[|cRXP_LOOT_An Old History Book|r]. This is a zone-wide drop in Duskwood|r
    >>|cRXP_WARN_Don't start the quest for it yet|r
	.collect 2794,1,337,1 --An Old History Book (1)
	--.accept 337 >> Accept An Old History Book
    --.use 2794 --An Old History Book
step
	#completewith next
    >>Kill |cRXP_ENEMY_Skeletal Warriors|r and |cRXP_ENEMY_Skeletal Mages|r
    >>|cRXP_ENEMY_Skeletal Warriors|r |cRXP_WARN_apply|r |T132316:0|t[Hamstring]
    >>|cRXP_ENEMY_Skeletal Mages|r |cRXP_WARN_cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_and also snare with|r |T135843:0|t[Frost Armor]
    .complete 56,1 -- Skeletal Warrior slain (8)
    .complete 56,2 -- Skeletal Mage slain (6)
    .mob Skeletal Warrior
    .mob Skeletal Mage
step
    .goto Duskwood,79.73,70.64,30,0
    .goto Duskwood,80.98,71.65
    >>Kill the |cRXP_ENEMY_Insane Ghoul|r. Loot him for |cRXP_LOOT_Mary's Looking Glass|r
    >>|cRXP_WARN_The |cRXP_ENEMY_Insane Ghoul|r may be inside of the chapel or walking around outside|r
    .complete 177,1
    .mob Insane Ghoul
    .isQuestTurnedIn 174
step
    .goto Duskwood,80.35,69.31,50,0
    .goto Duskwood,77.49,71.30,50,0
    .goto Duskwood,79.38,73.70,50,0
    .goto Duskwood,79.38,70.28
	#label HistoryBook1
    >>Kill |cRXP_ENEMY_Skeletal Warriors|r and |cRXP_ENEMY_Skeletal Mages|r
    >>|cRXP_ENEMY_Skeletal Warriors|r |cRXP_WARN_apply|r |T132316:0|t[Hamstring]
    >>|cRXP_ENEMY_Skeletal Mages|r |cRXP_WARN_cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_and also snare with|r |T135843:0|t[Frost Armor]
    .complete 56,1 -- Skeletal Warrior slain (8)
    .complete 56,2 -- Skeletal Mage slain (6)
    .mob Skeletal Warrior
    .mob Skeletal Mage
step
    #xprate <1.2
    .goto Duskwood,45.12,67.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Dodds|r
    >>|cRXP_WARN_If |cRXP_FRIENDLY_Watcher Dodds|r has been killed due to |cRXP_ENEMY_Stiches|r, skip this step|r
    .accept 245 >> Accept Eight-Legged Menaces
    .target Watcher Dodds
    .maxlevel 23
step
    .goto Duskwood,18.203,56.215
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jitters|r
    .turnin 163 >> Turn in Raven Hill
    .accept 5 >> Accept Jitters' Growling Gut
    .target Jitters
step
    #label Wolves
    #completewith BliztikCheck
    .goto Duskwood,18.040,54.350
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bliztik|r upstairs
    .vendor >> |cRXP_BUY_Buy as many|r |T134831:0|t[Healing Potions] |cRXP_BUY_that are available|r
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Bliztik|r doesn't have any|r
    .target Bliztik
step
    #xprate <1.2
    #sticky
    --.goto Duskwood,11.9,68.9
    --.goto Duskwood,7.9,40.8
    >>Kill |cRXP_ENEMY_Pygmy Venom Web Spiders|r
    >>|cRXP_WARN_Don't go out of your way to do this quest, skip it if necessary|r
    .complete 245,1 --Pygmy Venom Web Spider (15)
    .mob Pygmy Venom Web Spider
    .isOnQuest 245
step
#xprate <1.99
    .goto Duskwood,9.98,59.57,80,0
    .goto Duskwood,10.94,47.07,70,0
    .goto Duskwood,9.20,39.04,70,0
    .goto Duskwood,13.36,29.08,70,0
    .goto Duskwood,22.78,28.18,70,0
    .goto Duskwood,36.19,24.67
    >>Kill |cRXP_ENEMY_Starving Dire Wolves|r and |cRXP_ENEMY_Rabid Dire Wolves|r. Loot them for their |cRXP_LOOT_Lean Wolf Flanks|r
    .complete 226,1 -- Starving Dire Wolf (12)
    .complete 226,2 -- Rabid Dire Wolf (8)
    .collect 1015,10,90,1,1 -- Lean Wolf Flank (10)
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .isOnQuest 226
step
    .goto Duskwood,9.98,59.57,80,0
    .goto Duskwood,10.94,47.07,70,0
    .goto Duskwood,9.20,39.04,70,0
    .goto Duskwood,13.36,29.08,70,0
    .goto Duskwood,22.78,28.18,70,0
    .goto Duskwood,36.19,24.67
    >>Kill |cRXP_ENEMY_Starving Dire Wolves|r and |cRXP_ENEMY_Rabid Dire Wolves|r
    .complete 226,1 -- Starving Dire Wolf (12)
    .complete 226,2 -- Rabid Dire Wolf (8)
    .skill cooking,50,1,1 -- step only displays if skill is less than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .isOnQuest 226
step
    #completewith Flanks
    .isQuestAvailable 90
    >>Kill |cRXP_ENEMY_Wolves|r throughout Duskwood. Loot them for their |cRXP_LOOT_Lean Wolf Flanks|r
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .mob Young Black Ravager
    .mob Black Ravager
    .mob Black Ravager Mastiff
step
    #label BliztikCheck
	.goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 164 >> Turn in Deliveries to Sven
    .target Sven Yorgen
    .accept 95 >> Accept Sven's Revenge
step
#xprate <1.99
    .goto Duskwood,7.723,33.301
    .target Lars
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lars|r
    .turnin -226 >> Turn in Wolves at Our Heels
step
#xprate >1.99
    .goto Duskwood,7.723,33.301
    .target Lars
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lars|r
    >>|cRXP_WARN_Do NOT accept the quest Sven's Revenge from|r |cRXP_FRIENDLY_Sven Yorgen|r
    .accept 226 >> Accept Wolves at Our Heels
    .maxlevel 25
step
#loop
#xprate >1.99
#sticky
#label wolves199
    .waypoint Duskwood,9.98,59.57,80,0
    .waypoint Duskwood,10.94,47.07,70,0
    .waypoint Duskwood,9.20,39.04,70,0
    .waypoint Duskwood,13.36,29.08,70,0
    .waypoint Duskwood,22.78,28.18,70,0
    .waypoint Duskwood,36.19,24.67,70,0
    .goto Duskwood,9.98,59.57,0
    .goto Duskwood,9.20,39.04,0
    .goto Duskwood,13.36,29.08,0
    .goto Duskwood,22.78,28.18,0
    .goto Duskwood,36.19,24.67,0
    >>Kill |cRXP_ENEMY_Starving Dire Wolves|r and |cRXP_ENEMY_Rabid Dire Wolves|r. Loot them for their |cRXP_LOOT_Lean Wolf Flanks|r
    .complete 226,1 -- Starving Dire Wolf (12)
    .complete 226,2 -- Rabid Dire Wolf (8)
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .isOnQuest 226
step
    #label TheHermit
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 165 >> Turn in The Hermit
    .target Abercrombie
    .accept 148 >> Accept Supplies from Darkshire
step
#requires wolves199
#xprate >1.99
    .goto Duskwood,7.723,33.301
    .target Lars
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lars|r
    .turnin -226 >> Turn in Wolves at Our Heels
step
    #xprate <1.59
    #label Flanks
    .goto Duskwood,33.6,60.4,100,0
    .goto Duskwood,12.2,69.8,100,0
    .goto Duskwood,10.6,37.0,100,0
    .goto Duskwood,12.8,55.6
    >>Kill |cRXP_ENEMY_Spiders|r in Duskwood. Loot them for their |cRXP_LOOT_Gooey Spider Legs|r
    >>|cRXP_WARN_You will also need 1 |cRXP_LOOT_Small Venom Sac|r for your upcoming Rogue quest|r << Rogue !Dwarf
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .collect 1475,1,2359,1 << Rogue !Dwarf -- Small Venom Sac
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .mob Green Recluse
    .mob Black Widow Hatchling
step
    #xprate >1.59
    #label Flanks
    .goto Duskwood,33.6,60.4,100,0
    .goto Duskwood,12.2,69.8,100,0
    .goto Duskwood,10.6,37.0,100,0
    .goto Duskwood,12.8,55.6
    >>Kill |cRXP_ENEMY_Spiders|r in Duskwood. Loot them for their |cRXP_LOOT_Gooey Spider Legs|r
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .mob Green Recluse
    .mob Black Widow Hatchling
step << skip
	#som
	#phase 3-6
    .goto Duskwood,33.6,60.4,100,0
    .goto Duskwood,12.2,69.8,100,0
    .goto Duskwood,10.6,37.0,100,0
    .goto Duskwood,12.8,55.6
    >>Kill |cRXP_ENEMY_Spiders|r in Duskwood. Loot them for their |cRXP_LOOT_Gooey Spider Legs|r
    >>|cRXP_WARN_You will also need 1 |cRXP_LOOT_Small Venom Sac|r for your upcoming Rogue quest|r << Rogue !Dwarf
    >>|cRXP_WARN_Grind until your Hearthstone cooldown is <5min|r
    .collect 2251,6,93,1 -- Gooey Spider Leg
    .collect 1475,1,2359,1 << Rogue !Dwarf -- Small Venom Sac
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .mob Green Recluse
    .mob Black Widow Hatchling
step
    #completewith MoonbrookSt
    .goto Duskwood,33.6,60.4,100,0
    .goto Duskwood,12.2,69.8,100,0
    .goto Duskwood,10.6,37.0,100,0
    .goto Duskwood,12.8,55.6
    +|cRXP_WARN_Grind until your Hearthstone cooldown is <5min|r
    .cooldown item,6948,<300
step
    #completewith MoonbrookSt
    .zone Westfall >> Travel to Westfall
step
    #xprate <1.5
    #completewith RogueQuest << Rogue
    .goto Westfall,63.6,51.4,60,0
    .goto Westfall,60.6,34.0,60,0
    .goto Westfall,45.4,49.6
    .goto Westfall,63.8,52.0,0
    .goto Westfall,61.8,34.4,0
    .goto Westfall,54.6,41.0,0
    .goto Westfall,46.8,48.6,0
    .goto Westfall,43.6,42.0,0
    .goto Westfall,41.0,21.0,0
    .goto Westfall,35.8,34.4,0
    .goto Westfall,33.8,50.6,0
    .goto Westfall,42.6,60.2,0
    .goto Westfall,38.8,61.4,0
    .goto Westfall,34.8,67.4,0
    >>Kill |cRXP_ENEMY_Dust Devils|r. Loot them for their |cRXP_LOOT_Debris|r
    >>|cRXP_ENEMY_Dust Devils|r |cRXP_WARN_can spawn throughout all of Westfall. Their spawn locations are marked on the map|r
    >>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find them|r << Hunter
    .complete 1076,1
    .unitscan Dust Devil
    .isOnQuest 1076
step
	#som
    #completewith MoonbrookSt
    .goto Westfall,63.6,51.4,60,0
    .goto Westfall,60.6,34.0,60,0
    .goto Westfall,45.4,49.6
    .goto Westfall,63.8,52.0,0
    .goto Westfall,61.8,34.4,0
    .goto Westfall,54.6,41.0,0
    .goto Westfall,46.8,48.6,0
    .goto Westfall,43.6,42.0,0
    .goto Westfall,41.0,21.0,0
    .goto Westfall,35.8,34.4,0
    .goto Westfall,33.8,50.6,0
    .goto Westfall,42.6,60.2,0
    .goto Westfall,38.8,61.4,0
    .goto Westfall,34.8,67.4,0
    >>Kill |cRXP_ENEMY_Dust Devils|r. Loot them for their |cRXP_LOOT_Debris|r
    >>|cRXP_ENEMY_Dust Devils|r |cRXP_WARN_can spawn throughout all of Westfall. Their spawn locations are marked on the map|r
    >>|cRXP_WARN_Cast|r |T132172:0|t[Eagle Eye] |cRXP_WARN_to try and find them|r << Hunter
    >>|cRXP_WARN_Don't go out of your way to complete this quest|r
    .complete 1076,1
    .unitscan Dust Devil
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fp Westfall >> Get the Westfall flight path
    .target Thor
step << Rogue
    #xprate <1.59
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==PAY ATTENTION TO THE UPCOMING SECTION==|r
    >>|cRXP_WARN_Press Escape, then go into -> Options -> Controls|r
    >>|cRXP_WARN_Check "Enable Interact Key" and bind the "Interact with Target" option to a key|r
    >>|cRXP_WARN_Additionally, it's recommended you enable Enemy Nameplates (Default Key: V) as it allows you to see enemies behind some of the corners inside the tower|r
step << Rogue
    #xprate <1.59
    #label RogueQuest
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Kearnen|r
    >>|cRXP_WARN_You MUST do this quest your|r |T132290:0|t[Poisons]
    .turnin 2360 >> Turn in Mathias and the Defias
    .accept 2359 >> Accept Klaven's Tower
    .target Agent Kearnen
step << Rogue
    #xprate <1.59
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    >>|T133644:0|t[Pick Pocket] the |cRXP_ENEMY_Malformed Defias Drone|r. Loot it for the |cRXP_LOOT_Defias Tower Key|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    >>|cRXP_WARN_The |cRXP_ENEMY_Malformed Defias Drone|r spawns at the entrance to the tower, then patrols around the outside of it|r
    >>|cRXP_WARN_Be careful as he deals a LOT of damage. If your|r |T132320:0|t[Stealth] |cRXP_WARN_breaks, quickly use|r |T132307:0|t[Sprint] |cRXP_WARN_and run away|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
--   .link >> Click HERE for a video guide
    .mob Malformed Defias Drone
step << Rogue
    #xprate <1.59
    #optional
    #completewith Mortwake
    +|cRXP_WARN_Equip the|r |T135641:0|t[Curvewood Dagger] |cRXP_WARN_for this quest if you don't already have a|r |T135641:0|t[Dagger] |cRXP_WARN_equipped|r
    .use 15396
    .itemcount 15396,1
step << Rogue
    #xprate <1.59
    .goto 1436,70.421,74.031
    #label Mortwake
    >>|cRXP_WARN_Travel up to 2nd top floor of the tower. Whilst in|r |T132320:0|t[Stealth] |cRXP_WARN_and the |cRXP_ENEMY_Defias Tower Sentries|r aren't next to you, Jump onto the chair, then onto the lamp, then onto the bookshelf on top of the waypoint location|r
    >>|cRXP_WARN_Manually|r |T132320:0|t[Unstealth]|cRXP_WARN_, then press your "Interact with Target" keybind to open the |cRXP_PICK_Duskwood Chest|r. Loot it for|r |cRXP_LOOT_Klaven Mortwake's Journal|r
    >>|cRXP_WARN_NOTE: Your|r |T132320:0|t[Stealth] |cRXP_WARN_will temporarily stop working after looting|r |cRXP_LOOT_Klaven Mortwake's Journal|r 
    >>|cRXP_WARN_Be prepared to run if you don't kill the |cRXP_ENEMY_Defias Tower Sentries|r on the 2nd floor. They will most likely aggro you permanently (but not attack you) when you are on top of the bookshelf as it is an evade spot|r
    >>|cRXP_WARN_If you have a|r |T135641:0|t[Dagger] |cRXP_WARN_in your bags or equipped, you can cast|r |T132282:0|t[Ambush] |cRXP_WARN_on the |cRXP_ENEMY_Defias Tower Patrollers|r and |cRXP_ENEMY_Defias Tower Sentries|r inside to kill them instantly. Be prepared to run after you kill the first |cRXP_ENEMY_Defias Tower Sentry|r and remember you can be hit from above. This is slower, but a LOT safer|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Malformed Defias Drone|r and |cRXP_ENEMY_Defias Drones|r can be at the entrance of the tower if you have to run out of it|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
--   .link >> Click HERE for a video guide
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
step << !Dwarf Rogue
    #xprate <1.59
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >> Craft an |T134437:0|t[Anti-Venom]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #xprate <1.59
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>|cRXP_WARN_Use the |T134437:0|t[Anti-Venom] in your bags to remove the |T136230:0|t[Touch of Zanzil] debuff|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Dwarf Rogue
    #xprate <1.59
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>|cRXP_WARN_Cast |T136225:0|t[Stoneform] to remove the |T136230:0|t[Touch of Zanzil] debuff|r
    .aura -9991
step << Rogue
    #xprate <1.2
    .goto Westfall,63.6,51.4,60,0
    .goto Westfall,60.6,34.0,60,0
    .goto Westfall,45.4,49.6
    .goto Westfall,63.8,52.0,0
    .goto Westfall,61.8,34.4,0
    .goto Westfall,54.6,41.0,0
    .goto Westfall,46.8,48.6,0
    .goto Westfall,43.6,42.0,0
    .goto Westfall,41.0,21.0,0
    .goto Westfall,35.8,34.4,0
    .goto Westfall,33.8,50.6,0
    .goto Westfall,42.6,60.2,0
    .goto Westfall,38.8,61.4,0
    .goto Westfall,34.8,67.4,0
    >>Kill |cRXP_ENEMY_Dust Devils|r. Loot them for their |cRXP_LOOT_Debris|r
    >>|cRXP_ENEMY_Dust Devils|r |cRXP_WARN_can spawn throughout all of Westfall. Their spawn locations are marked on the map|r
    .complete 1076,1
    .unitscan Dust Devil
step
    #label MoonbrookSt
    .goto Westfall,41.51,66.72
    >>Click the |cRXP_PICK_Old Footlocker|r on the ground
    .turnin 67 >> Turn in The Legend of Stalvan
    .accept 68 >> Accept The Legend of Stalvan
step << Warrior
    #season 2
    #completewith next
    +Look for |cRXP_ENEMY_Old Murk-Eye|r along the coast and kite him toward |cRXP_FRIENDLY_Captain Grayson|r if you see him
    .unitscan Old Murk-Eye
    .train 403489,1
step << Warrior
    #season 2
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .accept 104 >> Accept The Coastal Menace
    .target Captain Grayson
    .train 403489,1
step << Warrior
    #season 2
    .goto Westfall,34.43,83.93,55,0
    .goto Westfall,29.55,79.90,60,0
    .goto Westfall,28.29,71.07,60,0
    .goto Westfall,26.42,65.88,60,0
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Kill |cRXP_ENEMY_Old Murk-Eye|r. Loot him for the |T132347:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r]
    >>|cRXP_ENEMY_Old Murk-Eye|r |cRXP_WARN_patrols up and down the Longshore. If you don't see him along the Longshore, wait for him to spawn in the most southern |cRXP_ENEMY_Murloc|r camp|r
    .collect 208741,1 -- Rune of Endless Rage (1)
    .unitscan Old Murk-Eye
    .train 403489,1
step << Warrior
    #season 2
    .train 403489 >>|cRXP_WARN_Use the|r |T132347:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r] |cRXP_WARN_to train|r |T132347:0|t[Endless Rage]
    .use 208741
    .itemcount 208741,1
step -- Only want to do Old Murk-Eye if also have 5 x Flask of Oil
    #completewith next
    +Look for |cRXP_ENEMY_Old Murk-Eye|r along the coast and kite him toward |cRXP_FRIENDLY_Captain Grayson|r if you see him
    .itemcount 814,5 -- Flask of Oil (5)
    .unitscan Old Murk-Eye
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r
    .accept 104 >> Accept The Coastal Menace
    .accept 103 >> Accept Keeper of the Flame
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
step
    .goto Westfall,34.43,83.93,55,0
    .goto Westfall,29.55,79.90,60,0
    .goto Westfall,28.29,71.07,60,0
    .goto Westfall,26.42,65.88,60,0
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Kill |cRXP_ENEMY_Old Murk-Eye|r. Loot him for his |cRXP_LOOT_Scale|r
    >>|cRXP_ENEMY_Old Murk-Eye|r |cRXP_WARN_patrols up and down the Longshore. If you don't see him along the Longshore, wait for him to spawn in the most southern |cRXP_ENEMY_Murloc|r camp|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
    .isOnQuest 104
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r 
    .turnin 104 >> Turn in The Coastal Menace
    .turnin 103 >> Turn in Keeper of the Flame
    .target Captain Grayson
    .isQuestComplete 104
    .itemcount 814,5 -- Flask of Oil (5)
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r 
    .turnin 103 >> Turn in Keeper of the Flame
    .itemcount 814,5 -- Flask of Oil (5)
    .target Captain Grayson
    .addquestitem 814,103
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Grayson|r 
    .turnin 104 >> Turn in The Coastal Menace
    .target Captain Grayson
    .isQuestComplete 104
step << Druid
    #completewith next
    .goto Westfall,17.928,33.099,50 >> Swim out to sea
step << Druid
    .goto Westfall,17.928,33.099
    >>Open the |cRXP_PICK_Strange Lockbox|r. Loot it for the |cRXP_LOOT_Half Pendant of Aquatic Endurance|r
    .collect 15882,1,272,1 --Collect Half Pendant of Aquatic Endurance (x1)
step << Druid
    #completewith next
	.cast 18960 >> Cast Teleport: Moonglade
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,36.0,41.4
    .use 15883 >>|cRXP_WARN_Use the|r |T133443:0|t[Half Pendant of Aquatic Agility] |cRXP_WARN_to combine it with the|r |T133442:0|t[Half Pendant of Aquatic Endurance] |cRXP_WARN_at the Shrine of Remulos|r
    .complete 272,1 --Collect Pendant of the Sea Lion (x1)
step << Druid
    #completewith next
	.cast 18960 >> Cast Teleport: Moonglade
    >>|cRXP_WARN_This will save you time from running back|r
step << Druid
    .goto Moonglade,56.209,30.636
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 272 >> Turn in Trial of the Sea Lion
    .accept 5061 >> Accept Aquatic Form
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Train your class spells
    .target Loganaar
step << Druid
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Silva Fil'naveth|r
    .goto Moonglade,44.147,45.225
    .fly Teldrassil>> Fly to Teldrassil
    .target Silva Fil'naveth
step << Druid
    .goto Darnassus,35.375,8.405
    .target Mathrengyl Bearwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .turnin 5061 >> Turn in Aquatic Form
step << Rogue -- going straight to duskwood if already completed poison quest earlier
    .isQuestTurnedIn 2359
	.hs >> Hearth to Darkshire
    >>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
	.cooldown item,6948,>0,1
step << Rogue -- going straight to duskwood if already completed poison quest earlier
    .isQuestTurnedIn 2359
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Duskwood >> Fly to Duskwood
    .target Thor
    .zoneskip Duskwood
step << Rogue
    #optional
    #completewith KlavenEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind
    .target Thor
    .zoneskip Stormwind City
    .cooldown item,6948,<0
    .isOnQuest 2359
step << Rogue
    #optional
    #completewith KlavenEnd
	.hs >> Hearth to Stormwind
    >>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
	.cooldown item,6948,>0,1
    .isOnQuest 2359
step << !Dwarf Rogue
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >> Travel toward |cRXP_FRIENDLY_Shaina Fuller|r
    .aura -9991
step << !Dwarf Rogue
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_If you have a|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_or|r |T625999:0|t|cFFFF7C0ADruid|r |cRXP_WARN_friend, ask them to remove the|r |T136230:0|t[Touch of Zanzil] |cRXP_WARN_for you instead|r
    .skill firstaid,80 >> |cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_to 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaina Fuller|r
    >>|cRXP_WARN_If you have a|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_or|r |T625999:0|t|cFFFF7C0ADruid|r |cRXP_WARN_friend, ask them to remove the|r |T136230:0|t[Touch of Zanzil] |cRXP_WARN_for you instead|r
    .train 7934 >> |cRXP_WARN_Train|r |T134437:0|t[Anti-Venom]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >> Craft an |T134437:0|t[Anti-Venom]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>|cRXP_WARN_Use the |T134437:0|t[Anti-Venom] in your bags to remove the |T136230:0|t[Touch of Zanzil] debuff|r
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Rogue
    #optional
    #requires AntiVenomEnd2
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
step << Rogue
    #label KlavenEnd
    #requires AntiVenomEnd2
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    >>|cRXP_WARN_Remember to re-equip your main weapon if you switched to a|r |T135641:0|t[Dagger] |cRXP_WARN_earlier|r << Rogue
    .turnin 2359 >> Turn in Klaven's Tower
    .target Master Mathias Shaw
step << fRogue -- ??
    .goto Stormwind City,78.1,59.0
    >>Type /lay on the chat and wait until the quest complete itself
    .complete 2608,1 --Diagnosis Complete
step << fRogue -- ??
    .goto Stormwind City,78.0,58.8
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doc Mixilpixil|r
    .turnin 2608 >> Turn in The Touch of Zanzil
.target Doc Mixilpixil
    .accept 2609 >> Accept The Touch of Zanzil
step << fRogue -- ??
    .goto Stormwind City,78.2,59.0
    >>Buy a Leaded Vial from the Shady Dealer
    .complete 2609,2 --Collect Leaded Vial (x1)
step << fRogue -- ??
    >>Head to the flower vendor
    .complete 2609,1 --Collect Simple Wildflowers (x1)
    .goto Stormwind City,64.3,60.8
step << fRogue -- ??
    >>Buy a Bronze Tube at the Auction House
    .complete 2609,3 --Collect Bronze Tube (x1)
    .goto Stormwind City,53.6,59.3
    >>Head to the shop next to the bridge between the Cathedral Square and the Park
    .complete 2609,4 --Collect Spool of Light Chartreuse Silk Thread (x1)
    .goto Stormwind City,39.8,46.5
    >>If you can't find a bronze tube, you will have to skip this quest, train First Aid to 80, farm a small venom sac from spiders in Duskwood, craft an Anti-Venom and remove the Zanzil poison.
step << fRogue -- ??
    .goto Stormwind City,78.0,58.9
.target Doc Mixilpixil
>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doc Mixilpixil|r
    .turnin 2609 >> Turn in The Touch of Zanzil




step << Rogue !Dwarf
    #label ZanzilEnd
    .zoneskip Stormwind City,1
    .goto Stormwind City,42.8,26.6
    .train 7934 >> |cRXP_WARN_Level|r |T135966:0|t[First Aid] |cRXP_WARN_to 80|r
    >>|cRXP_WARN_Make an|r |T134437:0|t[Anti-Venom] |cRXP_WARN_to remove the|r |T136230:0|t[Touch of Zanzil] |cRXP_WARN_debuff|r
    >>|cRXP_WARN_If you have a|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_or|r |T625999:0|t|cFFFF7C0ADruid|r |cRXP_WARN_friend you can skip this step and ask them to remove it for you|r
step << Rogue
    #label ZanzilEnd << Dwarf
    .zoneskip Stormwind City,1
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Duskwood>> Fly to Duskwood
    .target Dungar Longdrink
step << Paladin
    .goto Westfall,42.5,88.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daphne Stilwell|r
    .turnin 1650 >>Turn in The Tome of Valor
    .target Daphne Stilwell
    .accept 1651 >>Accept The Tome of Valor
step << Paladin
    .goto Westfall,42.5,88.6
    .complete 1651,1 --Protect Daphne Stilwell (1)
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daphne Stilwell|r
    .turnin 1651 >>Turn in The Tome of Valor
    .target Daphne Stilwell
    .accept 1652 >>Accept The Tome of Valor
step << !Rogue
	.hs >> Hearth to Darkshire
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
	.cooldown item,6948,>0,1
step << !Rogue
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Darkshire >> Fly to Darkshire
    .target Thor
    .zoneskip Duskwood
step << Rogue
    .goto Duskwood,73.87,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Trelayne|r
    >>If you just completed your Poison quest now set your Hearthstone to Darkshire
    >>If your Hearthstone was already set to Darkshire, skip this step
    .home >> Set your hearthstone to Darkshire
    .target Innkeeper Trelayne
step
    .goto Duskwood,73.83,44.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r
	>>|cRXP_WARN_You need 50 skill in cooking to accept this quest|r
    .accept 90 >> Accept Seasoned Wolf Kabobs
    .turnin 90 >> Turn in Seasoned Wolf Kabobs
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .itemcount 1015,10 -- Lean Wolf Flank (10)
    .target Chef Grual
step
	.goto Duskwood,73.88,43.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r
    .turnin 5 >> Turn in Jitters' Growling Gut
    .target Chef Grual
    .accept 93 >> Accept Dusky Crab Cakes
step
    .goto Duskwood,73.88,43.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r
    .target Chef Grual
    .turnin 93 >> Turn in Dusky Crab Cakes
    .isQuestComplete 93
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 56 >> Turn in The Night Watch
    .target Commander Althea Ebonlocke
    .accept 57 >> Accept The Night Watch
step
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
    .turnin 68 >> Turn in The Legend of Stalvan
    .target Clerk Daltry
    .accept 69 >> Accept The Legend of Stalvan
step
.dungeon Stockades
    .goto Duskwood,71.938,47.778
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Councilman Millstipe|r
    .accept 377 >> Accept Crime and Punishment
    .target Councilman Millstipe
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 148 >> Turn in Supplies from Darkshire
    .target Madame Eva
    .accept 149 >> Accept Ghost Hair Thread
step
	.isQuestComplete 177
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 177 >> Turn in Look To The Stars
    .target Viktori Prism'Antras
step << Hunter
#xprate <1.99
    #completewith FlyBackDuskwood
    .goto Duskwood,81.83,19.77,60,0
    .goto Duskwood,93.93,10.67,60,0
    .goto Duskwood,93.93,10.67,0
    .zone Redridge Mountains >> Travel to Redridge Mountains
step << Hunter
#xprate <1.99
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
    .target Ariena Stormfeather
step << Hunter
    #xprate <1.2
    .goto Redridge Mountains,31.53,57.85
    .target Guard Howe
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Howe|r
    .accept 128 >> Accept Blackrock Bounty
step << !Hunter
#xprate <1.99
    #completewith FlyBackDuskwood
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
    .fly Redridge >> Fly to Redridge Mountains
    .target Felicia Maline
    .maxlevel 25
step << !Hunter
#xprate <1.99
.dungeon Stockades
    #completewith next
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
    .fly Redridge >> Fly to Redridge Mountains
    .target Felicia Maline
step
#xprate <1.99
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .accept 20 >> Accept Blackrock Menace
    .maxlevel 25
step
#xprate <1.99
.dungeon Stockades
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Berton|r
    .accept 386 >> Accept What Comes Around...
    .target Guard Berton
step << Hunter
#xprate <1.99
    #label HunterArrive
    .goto Redridge Mountains,21.85,46.32
    .target Martie Jainrose
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
    .accept 34 >> Accept An Unwelcome Guest
    .maxlevel 25
step << Hunter
#xprate <1.99
    .goto Redridge Mountains,15.68,49.30
    >>Kill |cRXP_ENEMY_Bellygrub|r. Loot him for his |cRXP_LOOT_Tusk|r
    .complete 34,1
    .mob Bellygrub
    .isOnQuest 34
step << Hunter
#xprate <1.99
    .goto Redridge Mountains,21.85,46.32
    .target Martie Jainrose
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >> Turn in An Unwelcome Guest
    .isQuestComplete 34
step
#xprate <1.99
    .goto Redridge Mountains,27.724,47.377
    .target Dockmaster Baren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
    .accept 127 >> Accept Selling Fish
    .accept 150 >> Accept Murloc Poachers
    .maxlevel 25
step
#xprate <1.99
    #completewith next
    .goto Redridge Mountains,56.4,51.8,0
    >>Kill |cRXP_ENEMY_Murloc Scouts|r and |cRXP_ENEMY_Murloc Tidecallers|r. Loot them for their |cRXP_LOOT_Fins|r and |cRXP_LOOT_Sunfish|r
    .collect 1468,8,150,1 -- Murloc Fin (8)
    .complete 127,1 -- Spotted Sunfish (10)
    .mob Murloc Scout
    .mob Murloc Tidecaller
    .isOnQuest 150
	.isOnQuest 127
step
#xprate <1.99
    #label orcs
    >>Kill |cRXP_ENEMY_Blackrock Grunts|r and |cRXP_ENEMY_Blackrock Outrunners|r. Loot them for their |cRXP_LOOT_Axes|r
	>>|cRXP_WARN_Be aware the |cRXP_ENEMY_Blackrock Outrunners|r will cast|r |T132149:0|t[Net] |cRXP_WARN_on you|r
    >>|cRXP_WARN_Alternate between killing |cRXP_ENEMY_Orcs|r and the |cRXP_ENEMY_Murlocs|r marked on the map southwest|r
    .goto Redridge Mountains,61.76,43.51
    .complete 20,1 --Battleworn Axe (10)
    .isOnQuest 20
    .mob Blackrock Grunt
	.mob Blackrock Outrunner
step
#xprate <1.99
    .goto Redridge Mountains,56.4,51.8
    >>Kill |cRXP_ENEMY_Murloc Scouts|r and |cRXP_ENEMY_Murloc Tidecallers|r. Loot them for their |cRXP_LOOT_Fins|r and |cRXP_LOOT_Sunfish|r
    .collect 1468,8,150,1 -- Murloc Fin (8)
    .complete 127,1 -- Spotted Sunfish (10)
    .mob Murloc Scout
    .mob Murloc Tidecaller
    .isOnQuest 150
	.isOnQuest 127
step
#xprate <1.99
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 20 >> Turn in Blackrock Menace
	.isQuestComplete 20
step
#xprate <1.99
    .goto Redridge Mountains,27.724,47.377
    .target Dockmaster Baren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
    .turnin 127 >> Turn in Selling Fish
	.isQuestComplete 127
step
#xprate <1.99
    .goto Redridge Mountains,27.724,47.377
    .target Dockmaster Baren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
    .turnin 150 >> Turn in Murloc Poachers
	.isQuestComplete 150
step << Hunter
#xprate <1.99
    .goto Redridge Mountains,29.71,44.26
    .target Bailiff Conacher
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailiff Conacher|r
    .accept 91 >> Accept Solomon's Law
    .maxlevel 25
step
#xprate <1.99
    #completewith FlyBackDuskwood
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Duskwood >> Fly to Duskwood
    .target Ariena Stormfeather
	.zoneskip Duskwood
step
    #completewith Flanks2
    .isQuestAvailable 90
    >>Kill |cRXP_ENEMY_Wolves|r throughout Duskwood. Loot them for their |cRXP_LOOT_Lean Wolf Flanks|r
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .mob Young Black Ravager
    .mob Black Ravager
    .mob Black Ravager Mastiff
step
    .goto Duskwood,81.98,59.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blind Mary|r
    .turnin 149 >> Turn in Ghost Hair Thread
    .target Blind Mary
    .accept 154 >> Accept Return the Comb
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 154 >> Turn in Return the Comb
    .target Madame Eva
    .accept 157 >> Accept Deliver the Thread
step << Paladin
    #season 2
    #completewith next
    >>Kill |cRXP_ENEMY_Defias Night Runners|r, |cRXP_ENEMY_Defias Night Blades|r, and |cRXP_ENEMY_Defias Enchanters|r. Loot them for the |T134916:0|t|cRXP_LOOT_[Libram of Banishment]|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Defias Night Runners|r and |cRXP_ENEMY_Defias Night Blades|r cast|r |T136093:0|t[Slowing Poison] |cRXP_WARN_(Reduces movespeed by 35% for 25 seconds),|r |T132090:0|t[Backstab] |cRXP_WARN_(deals double damage from behind. |cRXP_ENEMY_Defias Night Runners|r are|r |T132320:0|t[Stealthed]|cRXP_WARN_, and |cRXP_ENEMY_Defias Enchanters|r cast|r |T135812:0|t[Fireball] |cRXP_WARN_(deals about 150 fire damage) and have|r |T135843:0|t[Frost Armor] |cRXP_WARN_(slows attack and movespeed on hit)|r
    .collect 211472,1 -- Libram of Banishment (1)
    .mob Defias Night Runner
    .mob Defias Night Blade
    .mob Defias Enchanter
    .train 416037,1
    .xp <24,1
step
    #label FlyBackDuskwood
    .goto Duskwood,49.85,77.71
    >>Click the |cRXP_PICK_Mound of loose dirt|r on the ground
    .turnin 95 >> Turn in Sven's Revenge
    .accept 230 >> Accept Sven's Camp
step << Paladin
    #season 2
    #loop
    .goto Duskwood,49.60,75.40,50,0
    .goto Duskwood,50.80,70.40,50,0
    .goto Duskwood,47.60,75.40,50,0
    .goto Duskwood,49.20,71.60,50,0
    >>Kill |cRXP_ENEMY_Defias Night Runners|r, |cRXP_ENEMY_Defias Night Blades|r, and |cRXP_ENEMY_Defias Enchanters|r. Loot them for the |T134916:0|t|cRXP_LOOT_[Libram of Banishment]|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Defias Night Runners|r and |cRXP_ENEMY_Defias Night Blades|r cast|r |T136093:0|t[Slowing Poison] |cRXP_WARN_(Reduces movespeed by 35% for 25 seconds),|r |T132090:0|t[Backstab] |cRXP_WARN_(deals double damage from behind. |cRXP_ENEMY_Defias Night Runners|r are|r |T132320:0|t[Stealthed]|cRXP_WARN_, and |cRXP_ENEMY_Defias Enchanters|r cast|r |T135812:0|t[Fireball] |cRXP_WARN_(deals about 150 fire damage) and have|r |T135843:0|t[Frost Armor] |cRXP_WARN_(slows attack and movespeed on hit)|r
    .collect 211472,1 -- Libram of Banishment (1)
    .mob Defias Night Runner
    .mob Defias Night Blade
    .mob Defias Enchanter
    .train 416037,1
    .xp <24,1
step << Paladin
    #season 2
    .equip 18,211472 >> |cRXP_WARN_Equip the|r |T134916:0|t|cRXP_LOOT_[Libram of Banishment]|r
    .use 211472
    .itemcount 211472,1 -- Libram of Banishment (1)
    .train 416037,1
    .xp <24,1
step
    #xprate <1.2
    .goto Duskwood,45.12,67.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Dodds|r
    .turnin 245 >> Turn in Eight-Legged Menaces
    .isQuestComplete 245
    .target Watcher Dodds
step
    #xprate <1.2
    .abandon 245 >> Abandon Eight-Legged Menaces if you haven't killed all 15 spiders
step << Paladin
    #season 2
    #loop
    .goto Duskwood,22.49,47.91,40,0
    .goto Duskwood,20.41,47.56,40,0
    .goto Duskwood,14.65,47.37,40,0
    .goto Duskwood,16.31,44.96,40,0
    .goto Duskwood,22.95,40.55,40,0
    >>Kill |cRXP_ENEMY_Skeletal Fiends|r and |cRXP_ENEMY_Skeletal Horrors|r
    .aura 408828 >>|cRXP_WARN_Cast|r |T135983:0|t[Turn Undead] |cRXP_WARN_and then kill them with|r |T135903:0|t[Exorcism] |cRXP_WARN_5 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    .mob Skeletal Fiend
    .mob Skeletal Horror
    .itemStat 18,QUALITY,2
    .train 416037,1
    .xp <24,1
step << Paladin
    #season 2
    .cast 421508 >>|cRXP_WARN_Use the|r |T134916:0|t|cRXP_LOOT_[Libram of Banishment]|r |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants - Exorcist]
    .use 211472
    .aura -408828
    .train 416037,1
    .xp <24,1
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 157 >> Turn in Deliver the Thread
    .target Abercrombie
    .accept 158 >> Accept Zombie Juice
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 230 >> Turn in Sven's Camp
    .target Sven Yorgen
    .accept 262 >> Accept The Shadowy Figure
step
    #xprate <1.2
    #label Flanks2
    .goto Duskwood,21.35,46.80
    .xp 25+29845 >> Grind to 29845+/34000xp
step
#completewith RunStocks
.dungeon Stockades
    +You are about to head to Stormwind soon, try to find a group for The Stockades
step
    #completewith next
    .subzone 87 >> Travel to Goldshire
    .isOnQuest 69
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
step
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Farley|r
    .turnin 69 >> Turn in The Legend of Stalvan
    .accept 70 >> Accept The Legend of Stalvan
    .target Innkeeper Farley
step
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Go upstairs
step << Mage
    .goto Elwynn Forest,43.25,66.19
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .trainer >> Train your class spells
    .target Zaldimar Wefhellt
step << Priest
    .goto Elwynn Forest,43.283,65.721
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Priestess Josetta|r
	.trainer >> Train your class spells
    .target Priestess Josetta
step << Rogue
    .goto Elwynn Forest,43.872,65.937
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Keryn Sylvius|r
    .trainer >> Train your class spells
    .target Keryn Sylvius
step
    .goto Elwynn Forest,44.302,65.823
    >>Open the |cRXP_PICK_Storage Chest|r. Loot it for |cRXP_LOOT_An Undelivered Letter|r
    .complete 70,1
step << !Mage
    #label RunStocks
    #completewith next
    .zone Stormwind City >> Travel to Stormwind City
step << Mage
    #label RunStocks
    #completewith next
    .goto Stormwind City,43.08,80.39
    .zone Stormwind City >> Teleport to Stormwind
step << Mage
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
    .trainer >> Train your class spells
    .target Elsharin
	.target Jennea Cannon
step
    #xprate <1.2
    .goto Stormwind City,43.08,80.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
    .turnin 1076 >> Turn in Devils in Westfall
    .accept 1078 >> Accept Retrieval for Mauren << !Hunter
    .target Collin Mauren
step
    #som
    .goto Stormwind City,43.08,80.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
    .turnin 1076 >> Turn in Devils in Westfall
    .isQuestComplete 1076
    .target Collin Mauren
step
	#som
	.abandon 1076 >> Abandon Devils in Westfall
step
.dungeon Stockades
    .goto StormwindClassic,69.25,39.63,40,0
    .goto StormwindClassic,71.28,41.37,40,0
    .goto StormwindClassic,73.33,45.65,40,0
    .goto StormwindClassic,72.44,47.70,40,0
    .goto StormwindClassic,69.25,39.63,40,0
    .goto StormwindClassic,71.28,41.37,40,0
    .goto StormwindClassic,73.33,45.65,40,0
    .goto StormwindClassic,72.44,47.70
    .line StormwindClassic,69.25,39.63,71.28,41.37,73.33,45.65,72.44,47.70,73.33,45.65,71.28,41.37,69.25,39.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nikova Raskol|r
    >>|cRXP_FRIENDLY_Nikova Raskol|r |cRXP_WARN_patrols in Old Town|r
    .accept 388 >> Accept The Color of Blood
    .unitscan Nikova Raskol
step
    #xprate >1.59 << !Hunter
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
    .accept 387 >> Accept Quell The Uprising
    .turnin 389 >> Turn in Bazil Thredd
    .accept 391 >> Accept The Stockade Riots
    .target Warden Thelwater
    .dungeon DM
    .dungeon Stockades
--XX needs to be polished in the future
step
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
    .accept 391 >> Accept The Stockade Riots
    .accept 387 >> Accept Quell The Uprising
    .target Warden Thelwater
    .isQuestTurnedIn 389
    .dungeon Stockades
step
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
    .accept 387 >> Accept Quell The Uprising
    .target Warden Thelwater
    .dungeon Stockades
step
.dungeon Stockades
    .goto StormwindClassic,39.834,54.360
    +Find a group to The Stockades
    .zoneskip Stormwind City,1 --skips the step upon entering stockades, for some reason this dungeon has no subzone ID
step
.dungeon Stockades
    #label stock1
    #sticky
    >>Kill the |cRXP_ENEMY_Defias|r. Loot them for their |cRXP_LOOT_Bandanas|r
    .complete 387,1 -- Defias Prisoner slain (10)
    .complete 387,2 -- Defias Convict slain (8)
    .complete 387,3 -- Defias Insurgent slain (8)
    .complete 388,1 -- Red Wool Bandana (10)
step
.dungeon Stockades
    #label stock2
    #sticky
    >>Kill |cRXP_ENEMY_Targorr the Dread|r. Loot him for his |cRXP_LOOT_Head|r. |cRXP_ENEMY_Targorr|r has a random spawn location
    >>Kill |cRXP_ENEMY_Dextren Ward|r on the west prison wing. Loot him for his |cRXP_LOOT_Hand|r
    .complete -386,1 -- Head of Targorr
    .complete -377,1 -- Hand of Dextren Ward
    .mob Targorr the Dread
    .mob Dextren Ward
step
.dungeon Stockades
    #label Bazil
    >>Kill |cRXP_ENEMY_Bazil Thredd|r on the east prison wing. Loot him for his |cRXP_LOOT_Head|r
    >>|cRXP_WARN_Ensure you have 3|r |T132905:0|t[Silk Cloth] |cRXP_WARN_for the follow up of this quest chain|r
    .complete 391,1 -- Head of Bazil Thredd
    .collect 4306,3,2746,1 -- Silk Cloth (3)
    .isOnQuest 391
    .mob Bazil Thredd
step
.dungeon Stockades
    #requires stock1
step
.dungeon Stockades
    #requires stock2
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
    .turnin 387 >> Turn in Quell The Uprising
    .turnin 391 >> Turn in The Stockade Riots
    .accept 392 >> Accept The Curious Visitor
    .target Warden Thelwater
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
    .turnin 387 >> Turn in Quell The Uprising
    .target Warden Thelwater
step
.dungeon Stockades
    .goto StormwindClassic,49.194,30.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 392 >> Turn in The Curious Visitor
    .accept 393 >> Accept Shadow of the Past
    .target Baros Alexston
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,69.25,39.63,40,0
    .goto StormwindClassic,71.28,41.37,40,0
    .goto StormwindClassic,73.33,45.65,40,0
    .goto StormwindClassic,72.44,47.70,40,0
    .goto StormwindClassic,69.25,39.63,40,0
    .goto StormwindClassic,71.28,41.37,40,0
    .goto StormwindClassic,73.33,45.65,40,0
    .goto StormwindClassic,72.44,47.70
    .line StormwindClassic,69.25,39.63,71.28,41.37,73.33,45.65,72.44,47.70,73.33,45.65,71.28,41.37,69.25,39.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nikova Raskol|r
    >>|cRXP_FRIENDLY_Nikova Raskol|r |cRXP_WARN_patrols in Old Town|r
    .turnin 388 >> Turn in The Color of Blood
    .unitscan Nikova Raskol
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 393 >> Turn in Shadow of the Past
    .accept 350 >> Accept Look to an Old Friend
    .target Master Mathias Shaw
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,61.166,64.051,8,0
    .goto StormwindClassic,59.908,64.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r up stairs
    .turnin 350 >> Turn in Look to an Old Friend
    .accept 2745 >> Accept Infiltrating the Castle
    .target Elling Trias
    .isQuestTurnedIn 389
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,70.347,27.208,15,0
    .goto StormwindClassic,72.005,21.542,20 >> Travel to the Stormwind Keep
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,69.205,14.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrion|r
    .turnin 2745 >> Turn in Infiltrating the Castle
    .accept 2746 >> Accept Items of Some Consequence
    .target Tyrion
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto Elwynn Forest,32.384,49.866,50 >> Exit Stormwind. Travel to Clara's Farm House in Elwynn Forest
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #ah
    >>Loot |cRXP_LOOT_Clara's Fresh Apples|r on the table
    >>|cRXP_WARN_If you still need|r |T132905:0|t[Silk Cloth] |cRXP_WARN_buy some from the Auction House|r
    .complete 2746,2 -- Clara's Fresh Apple (2)
    .goto Elwynn Forest,33.952,57.162
    .complete 2746,1 -- Silk Cloth (3)
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #ssf
    >>Loot |cRXP_LOOT_Clara's Fresh Apples|r on the table
    .complete 2746,2 -- Clara's Fresh Apple (2)
    .goto Elwynn Forest,33.952,57.162
    .complete 2746,1 -- Silk Cloth (3)
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,70.347,27.208,15,0
    .goto StormwindClassic,72.005,21.542,20 >> Travel to the Stormwind Keep
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,69.205,14.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tyrion|r
    >>|cRXP_WARN_Ensure your party has all turned in Items of Some Consequence before you accept The Attack!|r
    >>|cRXP_WARN_Automatic quest accept has been turned off for this step. Note you may not be able to accept the quest if someone else is in the process of doing it|r
    .turnin 2746 >> Turn in Items of Some Consequence
    .accept 434,1 >> Accept The Attack!
    .timer 124,The Attack! RP
    .target Tyrion
    .isQuestTurnedIn 391
step -- Note both of these guys are level 30 and 31
.dungeon Stockades
    .goto StormwindClassic,68.024,14.075
    >>|cRXP_WARN_Wait in the center of the courtyard for |cRXP_ENEMY_Lord Gregor Lescovar|r and |cRXP_ENEMY_Marzon the Silent Blade|r to arrive. This takes roughly 2 minutes|r
    >>Kill |cRXP_ENEMY_Lord Gregor Lescovar|r and |cRXP_ENEMY_Marzon the Silent Blade|r
    .complete 434,1 -- Lord Gregor Lescovar slain
    .complete 434,2 -- Marzon the Silent Blade slain
    .complete 434,3 -- Overhear Lescovar and Marzon's Conversation
    .mob Lord Gregor Lescovar
    .mob Marzon the Silent Blade
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,61.166,64.051,8,0
    .goto StormwindClassic,59.908,64.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r up stairs
    .turnin 434 >> Turn in The Attack!
    .accept 394 >> Accept The Head of the Beast
    .target Elling Trias
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 394 >> Turn in The Head of the Beast
    .accept 395 >> Accept Brotherhood's End
    .target Master Mathias Shaw
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,49.194,30.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 395 >> Turn in Brotherhood's End
    .accept 396 >> Accept An Audience with the King
    .target Baros Alexston
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,70.347,27.208,20 >> Travel to the Stormwind Keep
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,78.105,17.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lady Katrana Prestor|r
    .turnin 396 >> Turn in An Audience with the King
    .target Lady Katrana Prestor
    .isQuestTurnedIn 391
step
#xprate <1.99 << !Warlock
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >> Head to the Slaughtered Lamb and go downstairs
step
#xprate <1.99
    .goto Stormwind City,26.44,78.66
    .target Zardeth of the Black Claw
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zardeth of the Black Claw|r
    .accept 335 >> Accept A Noble Brew
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells
    .target Ursula Deline
step
    .goto Stormwind City,29.528,61.924
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caretaker Folsom|r
    .turnin 70 >> Turn in The Legend of Stalvan
    .target Caretaker Folsom
    .accept 72 >> Accept The Legend of Stalvan
step
    .goto Stormwind City,29.44,61.52
    >>Click the |cRXP_PICK_Sealed Crate|r on the ground
    .turnin 72 >> Turn in The Legend of Stalvan
    .accept 74 >> Accept The Legend of Stalvan
step << Druid
    .goto StormwindClassic,20.898,55.491
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheldras Moontree|r
    .trainer >> Train your class spells
    .target Sheldras Moontree
step << Priest/Paladin
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
    .goto Stormwind City,39.81,29.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
    .target Duthorian Rall
    .turnin 1652 >>Turn in The Tome of Valor
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >> Train your class spells
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r 
    .goto StormwindClassic,38.54,26.86
    .trainer >> Train your class spells
    .target Brother Joshua
step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Train your class spells
    .target Einris Brightspear
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Train your class spells
    .target Wu Shen
    .target Ilsa Corbin
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
    .trainer >> Train your class spells
    .target Osborne the Night Man
step << Mage
    #completewith next
    .goto Stormwind City,56.135,65.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kyra Boucher|r
    .vendor >> |cRXP_BUY_Buy 2|r |T134419:0|t[Rune of Teleportation] |cRXP_BUY_from her|r
    .collect 17031,2 --Rune of Teleportation (2)
    .target Kyra Boucher
step
    #completewith ShadowyRot
    .goto Stormwind City,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Darkshire >> Fly to Duskwood
    .target Dungar Longdrink
step
    .goto Duskwood,77.992,48.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herble Baubbletump|r
    .vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Herble Baubbletump|r doesn't have one|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube--skips the step if you have a bronze tube
    .target Herble Baubbletump
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 174 >> Accept Look To The Stars
    .turnin 174 >> Turn in Look To The Stars
    .itemcount 4371,1 -- Bronze Tube (1)
    .target Viktori Prism'Antras
step
    .goto Duskwood,79.80,48.02
    .target Viktori Prism'Antras
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 175 >> Accept Look To The Stars
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.46,59.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blind Mary|r
    .turnin 175 >> Turn in Look To The Stars
    .accept 177 >> Accept Look To The Stars
    .target Blind Mary
    .isQuestTurnedIn 174
step
	#completewith next
    >>|cRXP_WARN_Keep at eye out for |T133741:0|t[|cRXP_LOOT_An Old History Book|r]. This is a zone-wide drop in Duskwood|r
    >>|cRXP_WARN_Don't start the quest for it yet|r
	.collect 2794,1,337,1 --An Old History Book (1)
	--.accept 337 >> Accept An Old History Book
    --.use 2794 --An Old History Book
step
    .goto Duskwood,79.73,70.64,30,0
    .goto Duskwood,80.98,71.65
    >>Kill the |cRXP_ENEMY_Insane Ghoul|r. Loot him for |cRXP_LOOT_Mary's Looking Glass|r
    >>|cRXP_WARN_The |cRXP_ENEMY_Insane Ghoul|r may be inside of the chapel or walking around outside|r
    .complete 177,1
    .mob Insane Ghoul
    .isQuestTurnedIn 174
step
	.isQuestComplete 177
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 177 >> Turn in Look To The Stars
    .target Viktori Prism'Antras
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
    .accept 173 >> Accept Worgen in the Woods
    .target Calor
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 262 >> Turn in The Shadowy Figure
    .target Madame Eva
    .accept 265 >> Accept The Shadowy Search Continues
step
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
    .turnin 265 >> Turn in The Shadowy Search Continues
    .target Clerk Daltry
    .accept 266 >> Accept Inquire at the Inn
step
.dungeon Stockades
    .goto Duskwood,71.938,47.778
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Councilman Millstipe|r
    .turnin 377 >> Turn in Crime and Punishment
    .target Councilman Millstipe
step
    #label ShadowyRot
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 158 >> Turn in Zombie Juice
    .target Tavernkeep Smitts
    .accept 156 >> Accept Gather Rot Blossoms
    .turnin 266 >> Turn in Inquire at the Inn
    .accept 453 >> Accept Finding the Shadowy Figure
step
    .goto Duskwood,73.83,44.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r
	>>|cRXP_WARN_You need 50 skill in cooking to accept this quest|r
    .accept 90 >> Accept Seasoned Wolf Kabobs
    .turnin 90 >> Turn in Seasoned Wolf Kabobs
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .itemcount 1015,10 -- Lean Wolf Flank (10)
    .target Chef Grual
step
    .goto Duskwood,73.88,43.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r
    .target Chef Grual
    .turnin 93 >> Turn in Dusky Crab Cakes
    .accept 240 >> Accept Return to Jitters
step
	#completewith HistoryBook
    >>|cRXP_WARN_Keep at eye out for |T133741:0|t[|cRXP_LOOT_An Old History Book|r]. This is a zone-wide drop in Duskwood|r
    >>|cRXP_WARN_Don't start the quest for it yet|r
	.collect 2794,1,337,1 --An Old History Book (1)
	--.accept 337 >> Accept An Old History Book
    --.use 2794 --An Old History Book
step
    #completewith Flanks3
    .isQuestAvailable 90
    >>Kill |cRXP_ENEMY_Wolves|r throughout Duskwood. Loot them for their |cRXP_LOOT_Lean Wolf Flanks|r
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .mob Young Black Ravager
    .mob Black Ravager
    .mob Black Ravager Mastiff
step
    #completewith next
    .goto Duskwood,22.95,44.75,150 >> Travel to Raven Hill Cemetery
step
    .goto Duskwood,22.95,44.75,80,0
    .goto Duskwood,20.39,47.02,70,0
    .goto Duskwood,15.07,46.91,70,0
    .goto Duskwood,15.65,42.81,70,0
    .goto Duskwood,18.30,47.75,70,0
    .goto Duskwood,22.11,46.93,70,0
    .goto Duskwood,23.68,42.13,70,0
    .goto Duskwood,21.21,47.07
    >>Kill |cRXP_ENEMY_Skeletal Fiends|r and |cRXP_ENEMY_Skeletal Horrors|r. Loot them for their |cRXP_LOOT_Rot Blossoms|r
    .complete 57,1 -- Skeletal Fiend slain (15)
    .complete 57,2 -- Skeletal Horror slain (15)
    .complete 156,1 -- Rot Blossom (8)
    .mob Skeletal Fiend
    .mob Skeletal Horror
step
    .goto Duskwood,18.37,56.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jitters|r
    .turnin 453 >> Turn in Finding the Shadowy Figure
    .target Jitters
    .accept 268 >> Accept Return to Sven
    .turnin 240 >> Turn in Return to Jitters
step
    #label Flanks3
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 268 >> Turn in Return to Sven
    .accept 323 >> Accept Proving Your Worth
    .target Sven Yorgen
step
    .goto Duskwood,16.01,38.79
    >>Kill |cRXP_ENEMY_Skeletal Raiders|r, |cRXP_ENEMY_Skeletal Healers|r and |cRXP_ENEMY_Skeletal Warders|r
    >>|cRXP_WARN_Enter the Dawning Wood Catacombs for the|r |cRXP_ENEMY_Skeletal Warders|r
    >>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_a level 35 Elite patrols around the cemetery. Be cautious of him|r
    .complete 323,1 -- Skeletal Raider slain (15)
    .complete 323,2 -- Skeletal Healer slain (3)
    .complete 323,3 -- Skeletal Warder slain (3)
    .mob Skeletal Raider
    .mob Skeletal Healer
    .mob Skeletal Warder
	.unitscan Mor'Ladim
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 323 >> Turn in Proving Your Worth
    .target Sven Yorgen
    .accept 269 >> Accept Seeking Wisdom
step
	#era/som
    #completewith dusk2
    .hs >> Grind mobs until your Hearthstone is off cooldown, then hearth to Darkshire
	>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
	#som
	#phase 3-6
	#completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Darkshire >> Fly to Darkshire
    .target Thor
step
	#som
	#phase 3-6
    #completewith dusk2
    .hs >> Hearth to Darkshire if its up, otherwise run to Westfall and fly to Darkshire
    >>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
    #softcore
    #completewith next
    .fly Duskwood >> If you haven't found a |T133024:0|t[Bronze Tube], save your Hearthstone cooldown and fly from Westfall to Duskwood
    .bronzetube
step
    #label dusk2
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 156 >> Turn in Gather Rot Blossoms
    .accept 159 >> Accept Juice Delivery
    .target Tavernkeep Smitts
step
    .goto Duskwood,73.83,44.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Grual|r
	>>|cRXP_WARN_You need 50 skill in cooking to accept this quest|r
    .accept 90 >> Accept Seasoned Wolf Kabobs
    .turnin 90 >> Turn in Seasoned Wolf Kabobs
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .itemcount 1015,10 -- Lean Wolf Flank (10)
    .target Chef Grual
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 57 >> Turn in The Night Watch
    .accept 58 >> Accept The Night Watch
    .target Commander Althea Ebonlocke
step
.dungeon Stockades
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
    .fly Redridge >> Fly to Redridge Mountains
    .target Felicia Maline
	.zoneskip Redridge Mountains
step
.dungeon Stockades
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Berton|r
    .turnin 386 >> Turn in What Comes Around...
    .target Guard Berton
step
    #season 0,1
	#label HistoryBook
    #completewith RRstart2
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
    >>Run along the road north to Redridge if you don't have the Redridge Flight Path yet
    .fly Redridge >> Fly to Redridge Mountains
    .target Felicia Maline
	.zoneskip Redridge Mountains
    .maxlevel 27
step << !Paladin
    #season 2
	#label HistoryBook
    #completewith RRstart2
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
    >>Run along the road north to Redridge if you don't have the Redridge Flight Path yet
    .fly Redridge >> Fly to Redridge Mountains
    .target Felicia Maline
	.zoneskip Redridge Mountains
    .maxlevel 27
step << Warlock
    #season 2
    #sticky
    #completewith RedridgeEndTwo
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
    #completewith RedridgeEndTwo
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
    #completewith RedridgeEndTwo
    .itemcount 221499,1 << Warlock --Rune of the Felguard
    .itemcount 223147,1 << Mage --Spell Notes: Balefire Bolt
    .train 431756 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Felguard|r] |cRXP_WARN_to learn|r |T136216:0|t[Summon Felguard] << Warlock
    .train 429311 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Balefire Bolt|r |cRXP_WARN_to train|r |T135809:0|t[Balefire Bolt] << Mage
    .use 221499 << Warlock
    .use 223147 << Mage
step << Paladin
    #season 2
	#label HistoryBook
    #completewith RRstart2
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
    >>Run along the road north to Redridge if you don't have the Redridge Flight Path yet
    .fly Redridge >> Fly to Redridge Mountains
    .target Felicia Maline
	.zoneskip Redridge Mountains
step
    #sticky
    #softcore
    .home >> Set your Hearthstone to Redridge if you haven't found a |T133024:0|t[Bronze Tube]
    >>Skip this step if you purchased it already
    .bronzetube
	.maxlevel 27
step << Warlock
    #season 2
    #optional
    #completewith next
    .zone Redridge Mountains >>Travel to Redridge Mountains
    .train 416015,1
step << Warlock
    #season 2
    .goto Redridge Mountains,74.0,82.2,60,0
    .goto Redridge Mountains,77.6,86.6,50,0
    .goto Redridge Mountains,76.8,82.2
    >>Kill |cRXP_ENEMY_Incinerator Gar'im|r |cRXP_WARN_(lvl 23 elite)|r. Loot him for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Incinerate|r]
    .collect 211477,1
    .unitscan Incinerator Gar'im
    .train 416015,1
step << Warlock
    #season 2
    .use 211477
    .itemcount 211477,1
    .train 416015 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Incinerate|r] |cRXP_WARN_to train|r |T135789:0|t[Incinerate]
step
    #xprate >1.99
    .goto Redridge Mountains,31.53,57.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Howe|r
    .accept 128 >> Accept Blackrock Bounty
    .target Guard Howe
    .maxlevel 27
step
    #xprate <1.2
    .goto Redridge Mountains,31.53,57.85
    .target Guard Howe
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Howe|r
    .accept 128 >> Accept Blackrock Bounty
    .maxlevel 27
step << Hunter/Warlock
    .solo
    #label RRstart2
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .accept 19 >> Accept Tharil'zun
	.isQuestTurnedIn 20
	.maxlevel 27
step
    .group
    #label RRstart2
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .accept 19 >> Accept Tharil'zun
    .accept 115 >> Accept Shadow Magic
	.isQuestTurnedIn 20
	.maxlevel 27
step << !Hunter
    .goto Redridge Mountains,31.00,47.30
    .target Verner Osgood
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
    .accept 126 >> Accept Howling in the Hills
    .isQuestTurnedIn 124
    .maxlevel 27
step
    .group
    .goto Redridge Mountains,29.622,46.172
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick on |cRXP_FRIENDLY_The Wanted Poster|r
    .accept 169 >> Accept Wanted: Gath'Ilzogg
    .maxlevel 27
step
    .goto Redridge Mountains,29.71,44.26
    .target Bailiff Conacher
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailiff Conacher|r
    .accept 91 >> Accept Solomon's Law
    .maxlevel 27
step
    .goto Redridge Mountains,26.75,46.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick on |cRXP_FRIENDLY_The Wanted Poster|r
    .accept 180 >> Accept Wanted: Lieutenant Fangore
    .maxlevel 27
step
    .goto Redridge Mountains,21.85,46.32
    .target Martie Jainrose
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
    .accept 34 >> Accept An Unwelcome Guest
    .maxlevel 27
step
    .goto Redridge Mountains,15.68,49.30
    >>Kill |cRXP_ENEMY_Bellygrub|r. Loot him for his |cRXP_LOOT_Tusk|r
    .complete 34,1
    .mob Bellygrub
    .isOnQuest 34
step
    #label RRstart2 << !Hunter !Warlock
    .goto Redridge Mountains,21.85,46.32
    .target Martie Jainrose
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >> Turn in An Unwelcome Guest
    .isQuestComplete 34
step
    .goto Redridge Mountains,23.77,30.48,80,0
    .goto Redridge Mountains,27.58,21.78
    >>Kill |cRXP_ENEMY_Yowler|r. Loot him for his |cRXP_LOOT_Paw|r
    >>|cRXP_WARN_Split pull him using|r |T135857:0|t[Blizzard] |cRXP_WARN_or|r |T135826:0|t[Flamestrike] << Mage
    .complete 126,1 --Yowler's Paw (1)
    .mob Yowler
    .isOnQuest 126
step
    #completewith Pendants
    .goto Redridge Mountains,80.17,37.05
    >>Kill |cRXP_ENEMY_Lieutenant Fangore|r. Loot him for his |cRXP_LOOT_Paw|r
    >>|cRXP_ENEMY_Lieutenant Fangore|r |cRXP_WARN_will engage with 2 additional|r |cRXP_ENEMY_Gnolls|r
    >>|cRXP_ENEMY_Lieutenant Fangore|r |cRXP_WARN_is immune to Shadow damage. Ensure you have party members that can help, otherwise you may skip this step|r << Warlock/Priest
    .complete 180,1 -- Fangore's Paw (1)
    .isOnQuest 180
    .mob Lieutenant Fangore
step << !Human !Warlock
    #xprate >1.59
    #sticky
    #label Eye
    .goto Redridge Mountains,84.50,46.80
    >>Click the |cRXP_PICK_Old Lion Statue|r
    .turnin 94 >> Turn in A Watchful Eye
    .isOnQuest 94
    .zoneskip Redridge Mountains,1
step
    #xprate <1.59
    #sticky
    #label Eye
    .goto Redridge Mountains,84.50,46.80
    >>Click the |cRXP_PICK_Old Lion Statue|r
    .turnin 94 >> Turn in A Watchful Eye
    .isOnQuest 94
    .zoneskip Redridge Mountains,1
step
    .group
    .goto Redridge Mountains,84.50,46.80
    >>Click the |cRXP_PICK_Old Lion Statue|r
    .accept 248 >> Accept Looking Further
    .isQuestTurnedIn 94
step
    #sticky
    #optional
    .abandon 94 >> Abandon A Watchful Eye. You won't be heading to Redridge again as you've overleveled it
step
    #label Pendants
    .goto Redridge Mountains,75.49,41.57,60,0
    .goto Redridge Mountains,80.09,36.68,60,0
    .goto Redridge Mountains,80.69,46.28,60,0
    .goto Redridge Mountains,77.62,42.28,60,0
    .goto Redridge Mountains,77.52,36.31
    >>Kill the |cRXP_ENEMY_Shadowhides|r. Loot them for their |cRXP_LOOT_Pendants|r
    .complete 91,1 -- Shadowhide Pendant (10)
    .mob Rabid Shadowhide Gnoll
    .mob Shadowhide Gnoll
    .mob Shadowhide Assassin
    .mob Shadowhide Warrior
    .mob Shadowhide Darkweaver
    .mob Shadowhide Slayer
	.isOnQuest 91
step
    #label fangore
    .goto Redridge Mountains,80.17,37.05
    >>Kill |cRXP_ENEMY_Lieutenant Fangore|r. Loot him for his |cRXP_LOOT_Paw|r
    >>|cRXP_ENEMY_Lieutenant Fangore|r |cRXP_WARN_will engage with 2 additional|r |cRXP_ENEMY_Gnolls|r
    >>|cRXP_ENEMY_Lieutenant Fangore|r |cRXP_WARN_is immune to Shadow damage. Ensure you have party members that can help, otherwise you may skip this step|r << Warlock/Priest
    .complete 180,1 -- Fangore's Paw (1)
    .isOnQuest 180
    .mob Lieutenant Fangore
step
    #xprate >1.99
    .goto Redridge Mountains,75.49,41.57,60,0
    .goto Redridge Mountains,80.09,36.68,60,0
    .goto Redridge Mountains,80.69,46.28,60,0
    .goto Redridge Mountains,77.62,42.28,60,0
    .goto Redridge Mountains,77.52,36.31
    .xp 28-8910
step << Warlock
    #season 2
    #optional
    #completewith next
    .zone Redridge Mountains >>Travel to Redridge Mountains
    .train 403938,1
    .isQuestAvailable 78680
step << Warlock
    #season 2
    #label WarlockRuneMetamorphosisA
    .goto Redridge Mountains,80.2,49.5
    >>Loot the |cRXP_PICK_Demonic Reliquary|r at the top of the tower to get the |T134337:0|t[Orb of Des]
    >>|cRXP_WARN_This is for your|r |T237558:0|t[Metamorphosis] |cRXP_WARN_rune later. If you don't want to do this, skip this step|r
    *|cRXP_WARN_Be careful as it's guarded by an elite. Loot the chest whilst your Voidwalker tanks the mobs|r
    .collect 210765,1
    .train 403938,1
    .dungeon SFK
    .isQuestAvailable 78680
step
    .group 3
    #completewith Gath
    >>Kill |cRXP_ENEMY_Blackrock Shadowcasters|r. Loot them for their |cRXP_LOOT_Orbs|r
    .complete 115,1 -- Midnight Orb (3)
    .mob Blackrock Shadowcaster
    .isOnQuest 115
step
    .group 3
    #completewith next
    .goto Redridge Mountains,71.40,55.07
    >>Kill |cRXP_ENEMY_Tharil'zun|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 19,1 -- Tharil'zun's Head
    .mob Tharil'zun
	.isOnQuest 19
step
    #label Gath
    .group 5
    .goto Redridge Mountains,69.599,55.797
    >>Enter Stonewatch Keep
    >>Kill |cRXP_ENEMY_Gath'Ilzogg|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 169,1 -- Head of Gath'Ilzogg
    .mob Gath'Ilzogg
    .isOnQuest 169
step
    #completewith next
    >>Kill |cRXP_ENEMY_Blackrock Shadowcasters|r. Loot them for their |cRXP_LOOT_Orbs|r
    .complete 115,1 -- Midnight Orb (3)
    .mob Blackrock Shadowcaster
    .isOnQuest 115
step
    .group 3
    .goto Redridge Mountains,71.40,55.07
    >>Kill |cRXP_ENEMY_Tharil'zun|r. Loot him for his |cRXP_LOOT_Head|r
    .complete 19,1 -- Tharil'zun's Head
    .mob Tharil'zun
	.isOnQuest 19
step
    .group 3
    .goto Redridge Mountains,66.68,56.26    
    >>Kill |cRXP_ENEMY_Blackrock Shadowcasters|r. Loot them for their |cRXP_LOOT_Orbs|r
    .complete 115,1 -- Midnight Orb (3)
    .mob Blackrock Shadowcaster
    .isOnQuest 115
step << Hunter/Warlock
    .solo
    #requires Eye
    .goto Redridge Mountains,71.40,55.07
    >>Kill |cRXP_ENEMY_Tharil'zun|r. Loot him for his |cRXP_LOOT_Head|r
    >>Kite |cRXP_ENEMY_Tharil'zun|r towards Burning Steppes if needed. You can pull him from down below with your pet
    >>This quest can be very hard, skip this step if you have to
    .link https://www.twitch.tv/videos/669042013?t=04h12m27s >> |cRXP_WARN_Click here for video reference|r << Warlock
    .link https://www.twitch.tv/videos/781037891?t=02h04m41s >> |cRXP_WARN_Click here for video reference|r << Hunter
    .complete 19,1
    .mob Tharil'zun
	.isOnQuest 19
step
    .group 3
    .goto Redridge Mountains,63.246,49.840
    >>Click |cRXP_PICK_An Empty Jar|r on the barrel at the top of Stonewatch Tower
    >>|cRXP_WARN_Don't accept the follow up|r
    .turnin 248 >> Turn in Looking Further
    .isOnQuest 248
step
    #requires Eye
    .goto Redridge Mountains,28.89,13.20
    >>Kill |cRXP_ENEMY_Blackrock Champions|r
    .complete 128,1 -- Blackrock Champion slain (15)
	.isOnQuest 128
step << Paladin
    #season 2
    #label theairissalt
    #loop
    .goto Redridge Mountains,43.59,18.99,30,0
    .goto Redridge Mountains,38.84,14.25,30,0
    .goto Redridge Mountains,35.18,7.91,30,0
    .goto Redridge Mountains,32.58,6.79,15,0
    .goto Redridge Mountains,31.18,6.95,15,0
    .goto Redridge Mountains,30.09,8.63,15,0
    .goto Redridge Mountains,27.10,8.48,15,0
    .goto Redridge Mountains,27.24,11.93,15,0
    .goto Redridge Mountains,25.89,13.45,15,0
    .goto Redridge Mountains,26.30,15.22,15,0
    .goto Redridge Mountains,27.46,15.93,15,0
    .goto Redridge Mountains,31.06,14.99,15,0
    .goto Redridge Mountains,31.29,12.90,15,0
    .goto Redridge Mountains,29.17,11.37,25,0
    >>Kill |cRXP_ENEMY_Blackrock Summoners|r, |cRXP_ENEMY_Blackrock Champions|r, and |cRXP_ENEMY_Blackrock Trackers|r. Loot them for |cRXP_LOOT_Summoner's Salt|r
    >>|cRXP_WARN_|cRXP_LOOT_Summoner's Salt|r is distributed on an individual basis (each mob has a chance to drop Salts for each person in your group), so you CAN easily group with others for this quest|r
    .complete 78091,1 --Summoner's Salt (14)
    .complete 128,1 -- Blackrock Champion slain (15)
    .mob Blackrock Summoner
    .mob Blackrock Champion
    .mob Blackrock Tracker
    .train 410014,1
    .isOnQuest 78091
step
	#xprate <1.2
    #sticky
    #softcore
    .goto Burning Steppes,78.12,75.48,90,0
    .goto Burning Steppes,66.06,21.96
	.maxlevel 27
	.vendor >> If you haven't found a |T133024:0|t[Bronze Tube], skip the escort quest, run north to Burning Steppes, die on purpose, buy a |T133024:0|t[Bronze Tube] from |cRXP_FRIENDLY_Yuka|r in the cave at Flame's Crest and Hearth back to Redridge
    .bronzetube
    .target Yuka Screwspigot
step
	#som
    #sticky
    #softcore
    .goto Burning Steppes,78.12,75.48,90,0
    .goto Burning Steppes,66.06,21.96
	.maxlevel 27
	.vendor >> If you haven't found a |T133024:0|t[Bronze Tube], skip the escort quest, run north to Burning Steppes, die on purpose, buy a |T133024:0|t[Bronze Tube] from |cRXP_FRIENDLY_Yuka|r in the cave at Flame's Crest and Hearth back to Redridge
    .bronzetube
    .target Yuka Screwspigot
step
    .goto Redridge Mountains,28.388,12.562
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corporal Keeshan|r in the back of Render's Rock
    .accept 219 >> Accept Missing In Action
    .target Corporal Keeshan
    .maxlevel 27
step
    .goto Redridge Mountains,33.414,48.499
    >>Escort |cRXP_FRIENDLY_Corporal Keeshan|r back to Lakeshire
    >>|cRXP_WARN_Be careful to not pull too many mobs right after you leave the cave|r
    .complete 219,1
	.isOnQuest 219
    .target Corporal Keeshan
step
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 19 >> Turn in Tharil'zun
	.isQuestComplete 19
step
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 115 >> Turn in Shadow Magic
	.isQuestComplete 115
step
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 169 >> Turn in Wanted: Gath'Ilzogg
    .target Magistrate Solomon
    .isQuestComplete 169
step
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
    .turnin 219 >> Turn in Missing In Action
	.isQuestComplete 219
step
    .goto Redridge Mountains,29.71,44.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailiff Conacher|r
    .turnin 91 >> Turn in Solomon's Law
    .isQuestComplete 91
    .target Bailiff Conacher
step
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
    .turnin 180 >> Turn in Wanted: Lieutenant Fangore
    .isQuestComplete 180
    .target Magistrate Solomon
step
    .goto Redridge Mountains,30.97,47.27
    .target Verner Osgood
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
    .turnin 126 >> Turn in Howling in the Hills
	.isQuestComplete 126
step
    #label RedridgeEndTwo
    .goto Redridge Mountains,31.53,57.85
    .target Guard Howe
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Howe|r
    .turnin 128 >> Turn in Blackrock Bounty
	.isQuestComplete 128
step << Mage
    .zone Stormwind City >> Teleport to Stormwind City
    .itemcount 17031,1 -- Rune of Teleportation
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Stormwind >> Fly to Stormwind
    .target Ariena Stormfeather
    .zoneskip Stormwind City
]])
RXPGuides.RegisterGuide([[
#version 20
#group RXP SOD TEST
#season 2
#classic
<< Alliance
#name 28-32 Duskwood SoD
#next 32-33 Wetlands/Hillsbrad SoD
step
#hidewindow
#completewith next
.abandon 277 >> Abandon Fire Taboo
step
#xprate >1.99
	#sticky
    .abandon 94 >> Abandon A Watchful Eye
step << Mage
#xprate >1.99
    .xp <28,1
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Train your class spells
    .target Elsharin
step << Paladin
#xprate >1.99
    #season 2
    #completewith next
    .goto StormwindClassic,29.04,74.28,10,0
    .goto StormwindClassic,27.40,76.48,10,0
    .goto StormwindClassic,27.14,77.83,5,0
    .goto StormwindClassic,26.12,77.23,8 >>Travel toward |cRXP_FRIENDLY_Ursula Deline|r inside The Slaughtered Lamb
    .train 410014,1
step << Paladin
#xprate >1.99
    #season 2
    .goto StormwindClassic,26.12,77.23
    >>Talk to |cRXP_FRIENDLY_Ursula Deline|r
    .turnin 78091 >> Turn in Earning Your Salt
    .accept 78092 >> Accept It Must Be Destroyed
    .target Ursula Deline
    .train 410014,1
    .isQuestComplete 78091
step << Paladin
#xprate >1.99
    #season 2
    .goto StormwindClassic,26.12,77.23
    >>Talk to |cRXP_FRIENDLY_Ursula Deline|r
    .accept 78092 >> Accept It Must Be Destroyed
    .target Ursula Deline
    .train 410014,1
    .isQuestTurnedIn 78091
step << Warlock
#xprate >1.99
    .xp <28,1
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >> Head to the Slaughtered Lamb and go downstairs
step << Warlock
#xprate >1.99
    .xp <28,1
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells
    .target Ursula Deline
step << Priest/Paladin
#xprate >1.99
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
#xprate >1.99
    .xp <28,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >> Train your class spells
    .target Arthur the Faithful
step << Priest
#xprate >1.99
    .xp <28,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r 
    .goto StormwindClassic,38.54,26.86
    .trainer >> Train your class spells
    .target Brother Joshua    
step << Warrior
#xprate >1.99
    .xp <28,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Train your class spells
    .target Wu Shen
    .target Ilsa Corbin
step << Rogue
#xprate >1.99
    .xp <28,1
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
    .trainer >> Train your class spells
    .target Osborne the Night Man
step << Druid
#xprate >1.99
    .xp <28,1
    .goto StormwindClassic,20.898,55.491
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheldras Moontree|r
    .trainer >> Train your class spells
    .target Sheldras Moontree
step << !Priest !Paladin
#xprate >1.99
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step
#xprate >1.99
    .isQuestTurnedIn 323
    .goto Stormwind City,39.108,27.861
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bishop Farthing|r
    .turnin 269 >> Turn in Seeking Wisdom
    .accept 270 >> Accept The Doomed Fleet
    .target Bishop Farthing
step
#xprate >1.99
    .goto Stormwind City,38.72,25.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas|r
    >>|cRXP_FRIENDLY_Thomas|r |cRXP_WARN_walks around through the Cathedral|r
    .accept 1274 >> Accept The Missing Diplomat
    .target Thomas
step
#xprate >1.99
    #season 0,1
    .goto Stormwind City,40.551,30.959
    .target Brother Sarno
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Sarno|r
    .accept 2923 >> Accept Tinkmaster Overspark
step << Hunter
#xprate >1.99
    .xp <28,1
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Train your class spells
    .target Einris Brightspear
step
#xprate >1.99
    #completewith next
    .goto StormwindClassic,70.347,27.208,15,0
    .goto StormwindClassic,72.005,21.542,20 >> Travel to the Stormwind Keep


step
    #season 0,1
	#xprate <1.2
    #completewith start
    + This segment has a long grinding session, you can substitute that for a Gnomeregan run
step << !Mage !Hunter
#xprate <1.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
    .goto Wetlands,9.49,59.69
    .fly Ironforge>> Fly to Ironforge
    .target Shellei Brondir
step << Mage
#xprate <1.99
    #completewith next
    .zone Ironforge >> Teleport to Ironforge
step << Mage
#xprate <1.99
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dink|r
    .trainer >> Train your class spells
    .target Dink
step << Mage
#xprate <1.99
    .goto Ironforge,31.33,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ginny Longberry|r
    .vendor >> |cRXP_BUY_Buy 3|r |T134419:0|t[Rune of Teleportation] |cRXP_BUY_from her|r
    .collect 17031,3 --Rune of Teleportation (3)
    .target Ginny Longberry
step << !Druid !Warrior !Hunter !Mage !Priest !Rogue
#xprate <1.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r << Paladin
    .goto Ironforge,51.1,8.7,15,0 << Warlock
    .goto Ironforge,50.343,5.657 << Warlock
    .goto Ironforge,23.141,6.149 << Paladin
    .trainer >> Train your class spells
    .target Briarthorn << Warlock
    .target Brandur Ironhammer << Paladin
step << Warlock
#xprate <1.99
    .goto Ironforge,53.2,7.8,15,0
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jubahl Corpseseeker|r
    .vendor >> |cRXP_BUY_Buy|r |T133738:0|t[Grimoires] |cRXP_BUY_for your|r |T136220:0|t[Succubus] |cRXP_BUY_or your|r |T136221:0|t[Voidwalker]   
    .target Jubahl Corpseseeker
step << Priest
#xprate <1.99
	#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harick Boulderdrum|r downstairs
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|cRXP_BUY_Buy a|r |T135466:0|t[Pestilent Wand] |cRXP_BUY_if it's better than your current wand|r
	.collect 5347,1 --Pestilent Wand (1)
    .target Harick Boulderdrum
step
#xprate <1.99
    .goto Ironforge,63.50,67.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara Balloo|r
    .turnin 637 >> Turn in Sully Balloo's Letter
    .timer 17,Sully Balloo's Letter RP
    .accept 683 >> Accept Sara Balloo's Plea
    .target Sara Balloo
step
#xprate <1.99
    .goto Ironforge,72.74,94.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Longbeard|r
    .accept 1179 >>Accept The Brassbolts Brothers
    .target Pilot Longbeard
step << Hunter
#xprate <1.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Regnus Thundergranite|r
    .goto Ironforge,69.872,82.890
    .trainer >> Train your class spells
    .target Regnus Thundergranite
step << Hunter
#xprate <1.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belia Thundergranite|r
    .goto Ironforge,70.856,85.839
    .trainer >> Train your pet skills
    >>|cRXP_WARN_Make sure you have Frost/Nature resistance maxed out on your pet|r
    .target Belia Thundergranite
step << Hunter
#xprate <1.99
    .goto Ironforge,61.442,88.232,15,0
	.goto Ironforge,61.549,89.432
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thalgus Thunderfist|r downstairs
    >>|cRXP_BUY_Buy a|r |T134402:0|t[|cRXP_FRIENDLY_Heavy Quiver|r]
	.collect 7371,1
    .target Thalgus Thunderfist
step
#xprate <1.99
    .goto Ironforge,39.09,56.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_King Magni Bronzebeard|r
    .turnin 683 >> Turn in Sara Balloo's Plea
    .accept 686 >> Accept A King's Tribute
    .target King Magni Bronzebeard
step
#xprate <1.99
    .goto Ironforge,35.87,60.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bailey Stonemantle|r
    .bankwithdraw 916,1451,2378,1130,2794 >> Withdraw the following items from your bank:
    >>|T133688:0|t[A Torn Journal Page]
    >>|T134776:0|t[Bottle of Zombie Juice]
    >>|T133718:0|t[Skeleton Finger]
    >>|T134799:0|t[Vial of Spider Venom]
    >>|T133741:0|t[An Old History Book] (if you have it)
    .target Bailey Stonemantle
step
#xprate <1.99
    #era/som
    .goto Ironforge,39.03,88.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Mason Marblesten|r
    .turnin 686 >> Turn in A King's Tribute
    .accept 689 >> Accept A King's Tribute
    .target Grand Mason Marblesten
step
#xprate <1.99
	#som
	#phase 3-6
    .goto Ironforge,39.03,88.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grand Mason Marblesten|r
    .turnin 686 >> Turn in A King's Tribute
    .target Grand Mason Marblesten
step << !Mage
#xprate <1.99
    #completewith Eye
    .goto Ironforge,78.00,52.00,5,0
    .zone Stormwind City >> Enter the Deeprun Tram. Take the tram to Stormwind
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_if needed while waiting for the tram|r
step << Mage
#xprate <1.99
    #completewith Eye
    .goto Ironforge,78.00,52.00,5,0
    .zone Stormwind City>> Teleport to Stormwind
step
#xprate <1.99
    #label BlessedArm
    .goto Stormwind City,51.75,12.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 322 >> Turn in Blessed Arm
    .accept 325 >> Accept Armed and Ready
    .target Grimand Elmore
    .isQuestTurnedIn 324
step << Hunter
#xprate <1.99
    #completewith start
    .goto StormwindClassic,61.609,15.269,0
    .trainer >> |cRXP_WARN_If you hit level 30 turning in the next few quests in Stormwind, remember to train class/pet skills|r
    .target Einris Brightspear
step
#xprate <1.99
    #sticky
	#label Eye
    .goto Stormwind City,39.60,27.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archbishop Benedictus|r
    .turnin 293 >> Turn in Cleansing the Eye
    .target Archbishop Benedictus
step
#xprate <1.99
    .goto Stormwind City,38.72,25.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas|r
    >>|cRXP_FRIENDLY_Thomas|r |cRXP_WARN_walks around through the Cathedral|r
    .accept 1274 >> Accept The Missing Diplomat
    .target Thomas
step << Paladin
#xprate <1.99
    #season 2
    #completewith next
    .goto StormwindClassic,39.19,31.03,15,0
    .goto StormwindClassic,37.23,31.87,12 >>Travel toward |cRXP_FRIENDLY_Katherine the Pure|r inside the Cathedral
    .train 410014,1
step << Paladin
#xprate <1.99
    #season 2
    .goto StormwindClassic,37.23,31.87
    >>Talk to |cRXP_FRIENDLY_Katherine the Pure|r
    .turnin 78089 >> Turn in Advice From Stormwind
    .accept 78090 >> Accept A Second Opinion
    .target Katherine the Pure
    .train 410014,1
    .isOnQuest 78089
step << Paladin
#xprate <1.99
    #season 2
    .goto StormwindClassic,37.23,31.87
    >>Talk to |cRXP_FRIENDLY_Katherine the Pure|r
    .accept 78090 >> Accept A Second Opinion
    .target Katherine the Pure
    .train 410014,1
    .isQuestTurnedIn 78089
step << Paladin
#xprate <1.99
    #season 2
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    >>|cRXP_WARN_You need this to acquire|r |T134596:0|t[Engrave Pants - Exorcist] |cRXP_WARN_shortly|r
    .train 2878 >> Train |T135983:0|t[Turn Undead]
    .target Arthur the Faithful
    .train 416037,1
    .xp <24,1  
step << Paladin
#xprate <1.99
    #season 2
    #completewith next
    .goto StormwindClassic,29.04,74.28,10,0
    .goto StormwindClassic,27.40,76.48,10,0
    .goto StormwindClassic,27.14,77.83,5,0
    .goto StormwindClassic,26.12,77.23,8 >>Travel toward |cRXP_FRIENDLY_Ursula Deline|r inside The Slaughtered Lamb
    .train 410014,1
    .isOnQuest 78090
step << Paladin
#xprate <1.99
    #season 2
    .goto StormwindClassic,26.12,77.23
    >>Talk to |cRXP_FRIENDLY_Ursula Deline|r
    .turnin 78090 >> Turn in A Second Opinion
    .accept 78091 >> Accept Earning Your Salt
    .target Ursula Deline
    .train 410014,1
    .isOnQuest 78090
step << Paladin
#xprate <1.99
    #season 2
    .goto StormwindClassic,26.12,77.23
    >>Talk to |cRXP_FRIENDLY_Ursula Deline|r
    .accept 78091 >> Accept Earning Your Salt
    .target Ursula Deline
    .train 410014,1
    .isQuestTurnedIn 78090
step
	#requires Eye
    .goto Stormwind City,78.30,25.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bishop DeLavey|r
    .turnin 1274 >> Turn in The Missing Diplomat
    .accept 1241 >> Accept The Missing Diplomat
    .target Bishop DeLavey
step
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
    >>|cRXP_WARN_If you found |T133741:0|t[|cRXP_LOOT_An Old History Book|r] you may turn it in|r
    .turnin 337 >> Turn in An Old History Book
    .use 2794 -- An Old History Book
    .itemcount 2794,1 -- An Old History Book (1)
    .target Milton Sheaf
step
    .goto Stormwind City,73.17,78.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jorgen|r
    .turnin 1241 >> Turn in The Missing Diplomat
    .accept 1242 >> Accept The Missing Diplomat
    .target Jorgen
step
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1242 >> Turn in The Missing Diplomat
    .accept 1243 >> Accept The Missing Diplomat
    .target Elling Trias
step
#xprate <1.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
    .goto Stormwind City,57.00,72.88
    .bankdeposit 2784,5849,3712 >>  Deposit the following items into your bank:
    >>|T134187:0|t[Musquash Root]
    >>|T132765:0|t[Crate of Crash Helmets]
    >>|T134026:0|t[Turtle Meat]
    .target Newton Burnside    
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Buy the following items for faster turn ins at Duskwood shortly
    >>|T133024:0|t[Bronze Tube]
    .collect 4371,1,174,1 -- Bronze Tube (1)
    .bronzetube
    .target Auctioneer Jaxon
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>|cRXP_BUY_Buy 7|r |T134743:0|t[Jungle Remedy] |cRXP_BUY_from the Auction House for a quest later in Stranglethorn Vale|r
    >>|cRXP_WARN_This is optional, you may also farm them from the mobs later|r
    >>|cRXP_WARN_You may want to buy extra for yourself to use as it cures diseases and removes poisons|r << !Paladin
    .collect 2633,7,204,1 -- Jungle Remedy (7)
    .target Auctioneer Jaxon
step << Paladin
    #season 2
    #completewith theairissalt
    .goto StormwindClassic,66.28,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge >> Fly to Redridge Mountains
    .zoneskip Redridge Mountains
    .target Dungar Longdrink
    .train 410014,1
    .isOnQuest 78091
step << Paladin
    #season 2
    .goto Redridge Mountains,31.53,57.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Howe|r
    .accept 128 >> Accept Blackrock Bounty
    .target Guard Howe
    .isOnQuest 78091
step << Paladin
    #season 2
    #loop
    .goto Redridge Mountains,43.59,18.99,30,0
    .goto Redridge Mountains,38.84,14.25,30,0
    .goto Redridge Mountains,35.18,7.91,30,0
    .goto Redridge Mountains,32.58,6.79,15,0
    .goto Redridge Mountains,31.18,6.95,15,0
    .goto Redridge Mountains,30.09,8.63,15,0
    .goto Redridge Mountains,27.10,8.48,15,0
    .goto Redridge Mountains,27.24,11.93,15,0
    .goto Redridge Mountains,25.89,13.45,15,0
    .goto Redridge Mountains,26.30,15.22,15,0
    .goto Redridge Mountains,27.46,15.93,15,0
    .goto Redridge Mountains,31.06,14.99,15,0
    .goto Redridge Mountains,31.29,12.90,15,0
    .goto Redridge Mountains,29.17,11.37,25,0
    >>Kill |cRXP_ENEMY_Blackrock Summoners|r, |cRXP_ENEMY_Blackrock Champions|r, and |cRXP_ENEMY_Blackrock Trackers|r. Loot them for |cRXP_LOOT_Summoner's Salt|r
    >>|cRXP_WARN_|cRXP_LOOT_Summoner's Salt|r is distributed on an individual basis (each mob has a chance to drop Salts for each person in your group), so you CAN easily group with others for this quest|r
    .complete 78091,1 --Summoner's Salt (14)
    .complete 128,1 -- Blackrock Champion slain (15)
    .mob Blackrock Summoner
    .mob Blackrock Champion
    .mob Blackrock Tracker
    .train 410014,1
    .isOnQuest 128
    .isOnQuest 78091
step << Paladin
    #season 2
    #label theairissalt
    #loop
    .goto Redridge Mountains,43.59,18.99,30,0
    .goto Redridge Mountains,38.84,14.25,30,0
    .goto Redridge Mountains,35.18,7.91,30,0
    .goto Redridge Mountains,32.58,6.79,15,0
    .goto Redridge Mountains,31.18,6.95,15,0
    .goto Redridge Mountains,30.09,8.63,15,0
    .goto Redridge Mountains,27.10,8.48,15,0
    .goto Redridge Mountains,27.24,11.93,15,0
    .goto Redridge Mountains,25.89,13.45,15,0
    .goto Redridge Mountains,26.30,15.22,15,0
    .goto Redridge Mountains,27.46,15.93,15,0
    .goto Redridge Mountains,31.06,14.99,15,0
    .goto Redridge Mountains,31.29,12.90,15,0
    .goto Redridge Mountains,29.17,11.37,25,0
    >>Kill |cRXP_ENEMY_Blackrock Summoners|r, |cRXP_ENEMY_Blackrock Champions|r, and |cRXP_ENEMY_Blackrock Trackers|r. Loot them for |cRXP_LOOT_Summoner's Salt|r
    >>|cRXP_WARN_|cRXP_LOOT_Summoner's Salt|r is distributed on an individual basis (each mob has a chance to drop Salts for each person in your group), so you CAN easily group with others for this quest|r
    .complete 78091,1 --Summoner's Salt (14)
    .mob Blackrock Summoner
    .mob Blackrock Champion
    .mob Blackrock Tracker
    .train 410014,1
    .isOnQuest 78091
step << Paladin
    #season 2
    .goto Redridge Mountains,31.53,57.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Howe|r
    .turnin 128 >> Turn in Blackrock Bounty
    .target Guard Howe
    .isQuestComplete 128
step
    #label start
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .goto Stormwind City,66.27,62.12
    .fly Duskwood>> Fly to Duskwood
    .target Dungar Longdrink
step
    .goto Duskwood,77.992,48.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Herble Baubbletump|r
    .vendor >> |cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Herble Baubbletump|r doesn't have one|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Herble Baubbletump
    .isQuestAvailable 174
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    >>|cRXP_WARN_Skip this step if you haven't found a bronze tube|r
    .accept 174 >> Accept Look To The Stars
    .turnin 174 >> Turn in Look To The Stars
    .target Viktori Prism'Antras
    .itemcount 4371,1
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 175 >> Accept Look To The Stars
    .isQuestTurnedIn 174
    .target Viktori Prism'Antras
step
    .goto Duskwood,81.46,59.02
    >> Head south towards the chapel
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blind Mary|r
    .turnin 175 >> Turn in Look To The Stars
    .accept 177 >> Accept Look To The Stars
    .isQuestTurnedIn 174
    .target Blind Mary 
step
    .goto Duskwood,79.73,70.64,30,0
    .goto Duskwood,80.98,71.65
    >>Kill the |cRXP_ENEMY_Insane Ghoul|r. Loot him for |cRXP_LOOT_Mary's Looking Glass|r
    >>|cRXP_WARN_The |cRXP_ENEMY_Insane Ghoul|r may be inside of the chapel or walking around outside|r
    .complete 177,1 --1/1 Mary's Looking Glass
    .mob Insane Ghoul
    .isQuestTurnedIn 174
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 177 >> Turn in Look To The Stars
    .isQuestTurnedIn 174
    .target Viktori Prism'Antras
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .accept 181 >> Accept Look To The Stars
    .isQuestTurnedIn 174
    .target Viktori Prism'Antras   
step
    .goto Duskwood,75.75,47.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
    .accept 173 >> Accept Worgen in the Woods
    .target Calor
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .accept 58 >> Accept The Night Watch
    .target Commander Althea Ebonlocke
step
#xprate <1.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Trelayne|r
    .goto Duskwood,73.87,44.40
    .home >> Set your Hearthstone to Darkshire
    .target Innkeeper Trelayne
step
    .goto Duskwood,72.55,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Backus|r
    .turnin 1243 >> Turn in The Missing Diplomat
    .accept 1244 >> Accept The Missing Diplomat
    .target Watcher Backus
step
    .goto Duskwood,66.0,44.6,60,0
    .goto Duskwood,64.2,38.8,60,0
    .goto Duskwood,60.8,37.4,60,0
    .goto Duskwood,61.2,46.0,60,0
    .goto Duskwood,67.6,46.6,60,0
    .goto Duskwood,63.6,41.2
	>>Kill |cRXP_ENEMY_Nightbane Shadow Weavers|r
    .complete 173,1 --6/6 Nightbane Shadow Weaver slain
	.mob Nightbane Shadow Weaver
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
    .turnin 173 >> Turn in Worgen in the Woods
    .accept 221 >> Accept Worgen in the Woods
    .target Calor
step    
    .goto Duskwood,63.8,51.8,60,0
    .goto Duskwood,61.2,40.2,60,0
    .goto Duskwood,65.2,51.6,60,0
    .goto Duskwood,61.4,41.2
	>>Kill |cRXP_ENEMY_Nightbane Dark Runners|r
    >>|cRXP_ENEMY_Nightbane Dark Runners|r |cRXP_WARN_move very fast and have a larger than normal agro radius|r
    .complete 221,1 --12/12 Nightbane Dark Runner slain
    .mob Nightbane Dark Runner
step
    #completewith next 
    .goto Elwynn Forest,84.60,69.37,100 >> Travel to the Eastvale Logging Camp 
step
    .goto Elwynn Forest,84.60,69.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Haggard|r
    .turnin 74 >> Turn in The Legend of Stalvan
    .accept 75 >> Accept The Legend of Stalvan
    .target Marshal Haggard
step
    .goto Elwynn Forest,85.70,69.53
    >>Head upstairs in the House
    >>Open |cRXP_PICK_Marshal Haggard's Chest|r. Loot it for |cRXP_LOOT_A Faded Journal Page|r
    .complete 75,1 --1/1 A Faded Journal Page
step
    .goto Elwynn Forest,84.60,69.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Haggard|r
    .turnin 75 >> Turn in The Legend of Stalvan
    .accept 78 >> Accept The Legend of Stalvan
    .target Marshal Haggard
step
    #completewith next
    .goto Duskwood,28.10,31.46,100 >> Travel towards |cRXP_FRIENDLY_Abercrombie|r in Duskwood
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 159 >> Turn in Juice Delivery
    .accept 133 >> Accept Ghoulish Effigy
    .target Abercrombie
step << Warrior/Mage
    #season 2
    #completewith next
    .goto Duskwood,23.630,34.888,15 >> Enter the north eastern crypt
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior/Mage
    #season 2
    #completewith next
    .goto Duskwood,26.115,30.863
    >>Open the |cRXP_PICK_Dusty Coffer|r. Loot it for the |T252996:0|t[|cRXP_LOOT_Decrepit Phylactery|r]
    .collect 210568,1 -- Decrepit Phylactery (1)
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step
    .goto Duskwood,24.26,32.90
    >>Kill |cRXP_ENEMY_Plague Spreaders|r. Loot them for their |cRXP_LOOT_Ribs|r and |cRXP_LOOT_Fangs|r
    >>|cRXP_WARN_Other |cRXP_ENEMY_Ghouls|r may also drop |cRXP_LOOT_Ribs|r and |cRXP_LOOT_Fangs|r but focus on|r |cRXP_ENEMY_Plague Spreaders|r
    .complete 58,1 --20/20 Plague Spreader slain
    .complete 133,1 --7/7 Ghoul Rib
    .complete 101,1 --10/10 Ghoul Fang
    .mob Plague Spreader
    .mob Flesh Eater
    .mob Rotted One
    .mob Bone Chewer
step << Warrior/Mage
    #season 2
    .goto Duskwood,26.115,30.863
    >>Open the |cRXP_PICK_Dusty Coffer|r. Loot it for the |T252996:0|t[|cRXP_LOOT_Decrepit Phylactery|r]
    .collect 210568,1 -- Decrepit Phylactery (1)
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior/Mage
    #season 2
    #completewith next
    .goto Duskwood,15.602,38.621,15 >> Enter the western crypt
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior/Mage
    #season 2
    #completewith next
    .goto Duskwood,18.140,37.940
    .cast 426182 >> Click the |cRXP_PICK_Slumbering Bones|r on the small throne|r
    >>|cRXP_WARN_This will summon a level 25 elite|r |cRXP_ENEMY_Awakened Lich|r
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior/Mage
    #season 2
    .goto Duskwood,18.140,37.940
    >>Kill the |cRXP_ENEMY_Awakened Lich|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Flagellation|r] << Warrior
    >>Kill the |cRXP_ENEMY_Awakened Lich|r. Loot it for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Mass Regeneration|r] << Mage
    >>|cRXP_WARN_If someone else is there killing the |cRXP_ENEMY_Awakened Lich|r you can also help them and you will still be able to loot it|r
    .collect 210569,1 << Warrior -- Rune of Flagellation (1)
    .collect 211514,1 << Mage -- Spell Notes: Mass Regeneration (1)
    .mob Awakened Lich
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior
    #season 2
    .train 416050 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Flagellation|r] |cRXP_WARN_to train|r |T133495:0|t[Flagellation]
    .use 210569
    .itemcount 210569,1
    .train 403480,1
step << Mage
    #season 2
    .train 416050 >> |cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Mass Regeneration|r] |cRXP_WARN_to train|r |T132870:0|t[Mass Regeneration]
    .use 211514
    .itemcount 211514,1
    .train 415939,1
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 133 >> Turn in Ghoulish Effigy
    .accept 134 >> Accept Ogre Thieves
    .target Abercrombie
step << Paladin
    #season 2
    #completewith next
    >>Kill |cRXP_ENEMY_Defias Night Runners|r, |cRXP_ENEMY_Defias Night Blades|r, and |cRXP_ENEMY_Defias Enchanters|r. Loot them for the |T134916:0|t|cRXP_LOOT_[Libram of Banishment]|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Defias Night Runners|r and |cRXP_ENEMY_Defias Night Blades|r cast|r |T136093:0|t[Slowing Poison] |cRXP_WARN_(Reduces movespeed by 35% for 25 seconds),|r |T132090:0|t[Backstab] |cRXP_WARN_(deals double damage from behind. |cRXP_ENEMY_Defias Night Runners|r are|r |T132320:0|t[Stealthed]|cRXP_WARN_, and |cRXP_ENEMY_Defias Enchanters|r cast|r |T135812:0|t[Fireball] |cRXP_WARN_(deals about 150 fire damage) and have|r |T135843:0|t[Frost Armor] |cRXP_WARN_(slows attack and movespeed on hit)|r
    .collect 211472,1 -- Libram of Banishment (1)
    .mob Defias Night Runner
    .mob Defias Night Blade
    .mob Defias Enchanter
    .train 416037,1
    .xp <24,1
step
    .goto Duskwood,23.926,72.075
    >>Open the |cRXP_PICK_Defias Strongbox|r. Loot it for the |cRXP_LOOT_Defias Docket|r
    .complete 1244,1 --1/1 Defias Docket
step << Paladin
    #season 2
    #loop
    .goto Duskwood,20.84,63.75,40,0
    .goto Duskwood,20.00,71.10,40,0
    .goto Duskwood,21.58,72.00,40,0
    .goto Duskwood,24.26,71.82,40,0
    .goto Duskwood,22.91,66.62,40,0
    >>Kill |cRXP_ENEMY_Defias Night Runners|r, |cRXP_ENEMY_Defias Night Blades|r, and |cRXP_ENEMY_Defias Enchanters|r. Loot them for the |T134916:0|t|cRXP_LOOT_[Libram of Banishment]|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Defias Night Runners|r and |cRXP_ENEMY_Defias Night Blades|r cast|r |T136093:0|t[Slowing Poison] |cRXP_WARN_(Reduces movespeed by 35% for 25 seconds),|r |T132090:0|t[Backstab] |cRXP_WARN_(deals double damage from behind. |cRXP_ENEMY_Defias Night Runners|r are|r |T132320:0|t[Stealthed]|cRXP_WARN_, and |cRXP_ENEMY_Defias Enchanters|r cast|r |T135812:0|t[Fireball] |cRXP_WARN_(deals about 150 fire damage) and have|r |T135843:0|t[Frost Armor] |cRXP_WARN_(slows attack and movespeed on hit)|r
    .collect 211472,1 -- Libram of Banishment (1)
    .mob Defias Night Runner
    .mob Defias Night Blade
    .mob Defias Enchanter
    .train 416037,1
    .xp <24,1
step << Paladin
    #season 2
    .equip 18,211472 >> |cRXP_WARN_Equip the|r |T134916:0|t|cRXP_LOOT_[Libram of Banishment]|r
    .use 211472
    .itemcount 211472,1 -- Libram of Banishment (1)
    .train 416037,1
    .xp <24,1
step << Paladin
    #season 2
    #loop
    .goto Duskwood,22.49,47.91,40,0
    .goto Duskwood,20.41,47.56,40,0
    .goto Duskwood,14.65,47.37,40,0
    .goto Duskwood,16.31,44.96,40,0
    .goto Duskwood,22.95,40.55,40,0
    >>Kill |cRXP_ENEMY_Skeletal Fiends|r and |cRXP_ENEMY_Skeletal Horrors|r
    .aura 408828 >>|cRXP_WARN_Cast|r |T135983:0|t[Turn Undead] |cRXP_WARN_and then kill them with|r |T135903:0|t[Exorcism] |cRXP_WARN_5 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    .mob Skeletal Fiend
    .mob Skeletal Horror
    .itemStat 18,QUALITY,2
    .train 416037,1
    .xp <24,1
step << Paladin
    #season 2
    .cast 421508 >>|cRXP_WARN_Use the|r |T134916:0|t|cRXP_LOOT_[Libram of Banishment]|r |cRXP_WARN_to learn|r |T134596:0|t[Engrave Pants - Exorcist]
    .use 211472
    .aura -408828
    .train 416037,1
    .xp <24,1
step
    .goto Duskwood,33.419,76.356
    >>Loot |cRXP_LOOT_Abercrombie's Crate|r on the ground
    .complete 134,1 --1/1 Abercrombie's Crate
step
    #completewith next
    .goto Duskwood,34.63,77.87,20 >> Enter the Vul'Gol Ogre Cave
    .isOnQuest 181
step
    .goto Duskwood,37.98,79.90,30,0
    .goto Duskwood,36.81,83.78
    >>Kill |cRXP_ENEMY_Zzarc' Vul|r. Loot him for his |cRXP_LOOT_Monocle|r
    >>|cRXP_ENEMY_Zzarc' Vul|r |cRXP_WARN_has 2 spawn points inside the Cave|r
    .complete 181,1 --1/1 Ogre's Monocle
    .mob Zzarc' Vul
    .isOnQuest 181
step
    #som
    #completewith next
    .goto Duskwood,44.598,87.565,0
    .goto Stranglethorn Vale,40.635,3.514
    .zone Stranglethorn Vale >> Travel to Stranglethorn Vale
step
    #som
    #completewith stvEnd2
    .goto Stranglethorn Vale,40.339,8.434,0
    >>|cRXP_WARN_Keep an eye out for the special |cRXP_FRIENDLY_Private Thorsen|r event. He will patrol down the road from the Rebel camp every 30 minutes|r
    >>|cRXP_FRIENDLY_Private Thorsen|r |cRXP_WARN_will be attacked by 2 of |cRXP_ENEMY_Kurzen's Agents|r. If you don't see this event, ignore this step|r
    >>Kill both of |cRXP_ENEMY_Kurzen's Agents|r and then accept |cRXP_FRIENDLY_Private Thorsen's|r quest which becomes available after saving him
    .accept 215 >> Accept Jungle Secrets
    .unitscan Private Thorsen
    .mob Kurzen's Agent
step
    #som
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r and |cRXP_FRIENDLY_Hemet Nesingwary|r
    .accept 583 >> Accept Welcome to the Jungle
    .goto Stranglethorn Vale,35.662,10.529
    .turnin 583 >> Turn in Welcome to the Jungle
    .goto Stranglethorn Vale,35.658,10.808
    .target Barnil Stonepot
    .target Hemet Nesingwary
step
    #som
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .accept 185 >> Accept Tiger Mastery
    .goto Stranglethorn Vale,35.616,10.619
    .accept 190 >> Accept Panther Mastery
    .goto Stranglethorn Vale,35.556,10.546
    .target Ajeck Rouack
    .target Sir S. J. Erlgadin
step
    #som
    #completewith next
	>>Kill |cRXP_ENEMY_Young Panthers|r
    .complete 190,1 --10/10 Young Panther slain
    .mob Young Panther
step
    #som
    .goto Stranglethorn Vale,35.40,12.50,50,0
    .goto Stranglethorn Vale,33.30,11.90,50,0
    .goto Stranglethorn Vale,31.76,9.00,50,0
    .goto Stranglethorn Vale,35.40,12.50
	>>Kill |cRXP_ENEMY_Young Stranglethorn Tigers|r
    .complete 185,1 --10/10 Young Stranglethorn Tiger slain
    .mob Young Stranglethorn Tiger
step
    #som
    .goto Stranglethorn Vale,41.50,12.00,50,0
    .goto Stranglethorn Vale,42.74,12.40,50,0
    .goto Stranglethorn Vale,41.43,9.77,50,0
    .goto Stranglethorn Vale,40.67,11.65,50,0
    .goto Stranglethorn Vale,41.50,12.00
	>>Kill |cRXP_ENEMY_Young Panthers|r
    .complete 190,1 --10/10 Young Panther slain
    .mob Young Panther
step
    #som
    #label stvEnd2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    >>|cRXP_WARN_Don't accept the follow ups yet|r
    .turnin 185 >> Turn in Tiger Mastery
    .accept 186 >> Accept Tiger Mastery
    .goto Stranglethorn Vale,35.616,10.619
    .turnin 190 >> Turn in Panther Mastery
    .goto Stranglethorn Vale,35.556,10.546
    .target Ajeck Rouack
    .target Sir S. J. Erlgadin
step
    #som
    .goto Stranglethorn Vale,38.042,3.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    >>|cRXP_WARN_Don't accept the follow up yet|r
    .turnin 215 >> Turn in Jungle Secrets
    .isOnQuest 215
    .target Lieutenant Doren
step
    #som
    #completewith note
    .goto Duskwood,44.7,85.6
    .zone Duskwood >> Travel back to Duskwood
step
    #completewith next
    .goto Duskwood,31.6,59.4,0
    .goto Duskwood,34.4,54.6,0
    .goto Duskwood,28.6,49.4,0
    .goto Duskwood,32.8,35.2,0
    .goto Duskwood,23.6,36.6,0
    >>Kill |cRXP_ENEMY_Black Widow Hatchlings|r and |cRXP_ENEMY_Carrion Recluses|r. Loot them for their |cRXP_LOOT_Spider Venom|r
    .complete 101,2 --5/5 Vial of Spider Venom
    .mob Black Widow Hatchling
    .mob Carrion Recluse
step
    .goto Duskwood,22.95,44.75,80,0
    .goto Duskwood,20.39,47.02,70,0
    .goto Duskwood,15.07,46.91,70,0
    .goto Duskwood,15.65,42.81,70,0
    .goto Duskwood,18.30,47.75,70,0
    .goto Duskwood,22.11,46.93,70,0
    .goto Duskwood,23.68,42.13,70,0
    .goto Duskwood,21.21,47.07
    >>Kill |cRXP_ENEMY_Skeletal Fiends|r and |cRXP_ENEMY_Skeletal Horrors|r. Loot them for their |cRXP_LOOT_Fingers|r
    .complete 101,3 --10/10 Skeleton Finger
    .mob Skeletal Fiend
    .mob Skeletal Horror
step
    .goto Duskwood,31.6,59.4,0
    .goto Duskwood,34.4,54.6,0
    .goto Duskwood,28.6,49.4,0
    .goto Duskwood,32.8,35.2,0
    .goto Duskwood,31.6,59.4,50,0
    .goto Duskwood,34.4,54.6,50,0
    .goto Duskwood,28.6,49.4,50,0
    .goto Duskwood,32.8,35.2,50,0
    .goto Duskwood,23.6,36.6
    >>Kill |cRXP_ENEMY_Black Widow Hatchlings|r and |cRXP_ENEMY_Carrion Recluses|r. Loot them for their |cRXP_LOOT_Spider Venom|r
    .complete 101,2 --5/5 Vial of Spider Venom
    .mob Black Widow Hatchling
    .mob Carrion Recluse
step
    #label note
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Abercrombie|r
    .turnin 134 >> Turn in Ogre Thieves
    .accept 160 >> Accept Note to the Mayor
    .target Abercrombie
step
    >>Click |cRXP_PICK_A Weathered Grave|r
    .goto Duskwood,17.72,29.07
    .accept 225 >> Accept The Weathered Grave
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 325 >> Turn in Armed and Ready
    .accept 55 >> Accept Morbent Fel
    .target Sven Yorgen
    .isQuestTurnedIn 322
step << Druid
#xprate <1.99
	#completewith next
	.cast 18960 >> Cast Teleport: Moonglade
	.zoneskip Moonglade
	.xp <30,1 -- might have already done this training 
step << Druid
#xprate <1.99
	>>Teleport to Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
	.goto Moonglade,52.53,40.56
    .trainer >> Train your class spells
    .target Loganaar
    .xp <30,1 -- might have already done this training 
step
#xprate <1.99
    .hs >> Hearth back to Darkshire
	>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
step
#xprate >1.99
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Darkshire >> Fly to Duskwood
    .target Thor
step
    #xprate <1.2
    #completewith next
    .goto Duskwood,73.872,44.406
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Trelayne|r
	.vendor >>|cRXP_BUY_Buy food/water. You'll need at least 2 1/2 stacks for the upcoming segment|r
    .target Innkeeper Trelayne
step << Hunter
    #xprate <1.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Avette Fellwood|r
    .goto Duskwood,73.28,44.76
    .vendor 228 >>|cRXP_BUY_Stock up on|r |T132382:0|t[Razor Arrows]
    .target Avette Fellwood
step
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tavernkeep Smitts|r
    .turnin 78 >> Turn in The Legend of Stalvan
    .accept 79 >> Accept The Legend of Stalvan
    .target Tavernkeep Smitts
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 58 >> Turn in The Night Watch
    .turnin 79 >> Turn in The Legend of Stalvan
    .accept 80 >> Accept The Legend of Stalvan
    .target Commander Althea Ebonlocke
step
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clerk Daltry|r
    .turnin 80 >> Turn in The Legend of Stalvan
    .accept 97 >> Accept The Legend of Stalvan
    .target Clerk Daltry
step
    .goto Duskwood,72.64,47.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 225 >> Turn in The Weathered Grave
    .accept 227 >> Accept Morgan Ladimore
    .target Sirra Von'Indi
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .turnin 160 >> Turn in Note to the Mayor
    .accept 251 >> Accept Translate Abercrombie's Note
    .target Lord Ello Ebonlocke
step
    .goto Duskwood,72.64,47.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 251 >> Turn in Translate Abercrombie's Note
    .target Sirra Von'Indi
    .accept 401 >> Accept Wait for Sirra to Finish
    .turnin 401 >> Turn in Wait for Sirra to Finish
    .accept 252 >> Accept Translation to Ello
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .turnin 252 >> Turn in Translation to Ello
    .target Lord Ello Ebonlocke
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .accept 253 >> Accept Bride of the Embalmer
    .target Lord Ello Ebonlocke
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 97 >> Turn in The Legend of Stalvan
    .accept 98 >> Accept The Legend of Stalvan
    .turnin 227 >> Turn in Morgan Ladimore
    .accept 228 >> Accept Mor'Ladim
    .target Commander Althea Ebonlocke
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
    .turnin 221 >> Turn in Worgen in the Woods
    .accept 222 >> Accept Worgen in the Woods
    .target Calor
step
    #label exit1
    .goto Duskwood,72.55,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Backus|r
    .turnin 1244 >> Turn in The Missing Diplomat
    .accept 1245 >> Accept The Missing Diplomat
    .target Watcher Backus
step
	#sticky
	#label FlowerX
    .goto Duskwood,78.348,35.952
    >>Loot the |cRXP_LOOT_Tear of Tilloa|r on the ground
    .complete 335,1 --1/1 Tear of Tilloa
    .isOnQuest 335
step
    .goto Duskwood,77.30,36.20
    >> Kill |cRXP_ENEMY_Stalvan Mistmantle|r. Loot him for his |cRXP_LOOT_Family Ring|r
	>>|cRXP_ENEMY_Stalvan Mistmantle|r |cRXP_WARN_can hit quite hard. Kite him back to town and get help from the |cRXP_FRIENDLY_Watchers|r if needed|r
    .complete 98,1 --1/1 Mistmantle Family Ring
    .mob Stalvan Mistmantle
step
	#requires FlowerX
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madame Eva|r
    .turnin 98 >> Turn in The Legend of Stalvan
    .turnin 101 >> Turn in The Totem of Infliction
    .target Madame Eva
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Viktori Prism'Antras|r
    .turnin 181 >> Turn in Look To The Stars
    .isQuestTurnedIn 174
    .target Viktori Prism'Antras
step
    .goto Duskwood,62.33,81.77
    >> Kill |cRXP_ENEMY_Nightbane Vile Fangs|r and |cRXP_ENEMY_Nightbane Tainted Ones|r
	>>|cRXP_WARN_Be careful as all the mobs in the area respawn at once after a few minutes|r
    .complete 222,1 --8/8 Nightbane Vile Fang slain
    .complete 222,2 --8/8 Nightbane Tainted One slain
    .mob Nightbane Vile Fang
    .mob Nightbane Tainted One
step
    #xprate <1.2
    .goto Duskwood,62.33,81.77
    .goto Duskwood,61.30,74.36,0
    .goto Duskwood,65.10,73.91,0
    .goto Duskwood,64.14,68.49,0
    >>Kill |cRXP_ENEMY_Nightbane Worgens|r. Loot them for |T133741:0|t[|cRXP_LOOT_An Old History Book|r]
    >>|cRXP_WARN_Don't start the quest for it yet|r
    .collect 2794,1,337
    --.use 2794
    --.accept 337 >> Accept An Old History Book
    .mob Nightbane Shadow Weaver
    .mob Nightbane Dark Runner
    .mob Nightbane Tainted One
    .mob Nightbane Worgen
step
    #xprate <1.2
    .goto Duskwood,62.33,81.77
    .xp 32 >> Grind until you are anywhere between level 31 & 75% and level 32 << !Druid
	.xp 32 >> Grind until you are anywhere between 31 & 85% and 32 << Druid
    >>Kill |cRXP_ENEMY_Nightbane Worgens|r until your Hearthstone cooldown is <25 minutes
    .mob Nightbane Shadow Weaver
    .mob Nightbane Dark Runner
    .mob Nightbane Tainted One
    .mob Nightbane Worgen
step
    #xprate <1.2
    #completewith next
    .goto Duskwood,62.33,81.77
    +Kill |cRXP_ENEMY_Nightbane Worgens|r until your Hearthstone cooldown is <25 minutes
    .mob Nightbane Shadow Weaver
    .mob Nightbane Dark Runner
    .mob Nightbane Tainted One
    .mob Nightbane Worgen
step
    .goto Duskwood,28.864,30.765
    >>Click |cRXP_PICK_Eliza's Grave Dirt|r to summon |cRXP_ENEMY_Eliza|r
    >>Kill |cRXP_ENEMY_Eliza|r. Loot her for the |cRXP_LOOT_Embalmer's Heart|r
    >>|cRXP_ENEMY_Eliza|r |cRXP_WARN_will cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_and|r |T135848:0|t[Frost Nova] |cRXP_WARN_along with summoning multiple|r |cRXP_ENEMY_Guards|r
    >>|cRXP_WARN_You can avoid dealing with |cRXP_ENEMY_Eliza's Guards|r by using the Wagon to jump on top of |cRXP_FRIENDLY_Abercrombie's|r Hut|r << Hunter/Mage/Warlock/Priest
    >>|cRXP_WARN_You can evade |cRXP_ENEMY_Eliza's Guards|r by using the Wagon to jump on top of Abercrombie's Hut. |cRXP_ENEMY_Eliza|r will continue to cast|r |T135846:0|t[Frostbolt] |cRXP_WARN_at you if you do this while she's alive|r << Warrior/Rogue/Druid/Paladin
    .complete 253,1 --1/1 The Embalmer's Heart
    .mob Eliza
step
    #completewith next
    >>Clear your way to the 2nd floor of the house
    .cast 8913 >>|cRXP_WARN_Equip|r |T135142:0|t[Morbent's Bane] |cRXP_WARN_in your off-hand|r
    >>|cRXP_WARN_Use|r |T135142:0|t[Morbent's Bane] |cRXP_WARN_on|r |cRXP_ENEMY_Morbent Fel|r |cRXP_WARN_to weaken him|r
    >>|cRXP_WARN_Remember to equip your weapon/off-hand slot after weakening him|r
    .use 7297
step
    .goto Duskwood,16.90,33.40
    >>Kill |cRXP_ENEMY_Morbent Fel|r
    >>|cRXP_WARN_This quest can be difficult. You may skip this step and come back at a higher level if you wish|r
    .complete 55,1 --1/1 Morbent Fel slain
    .use 7297
    .mob Morbent Fel
    .isOnQuest 55
step
    .goto Duskwood,19.59,37.28
    >>Kill |cRXP_ENEMY_Mor'Ladim|r. Loot him for his |cRXP_LOOT_Skull|r
    >>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_hits very hard but moves quite slow. Try to kite him around any large trees if required|r
    >>|cRXP_WARN_This quest can be difficult. You may skip this step and come back at a higher level if you wish|r
    .complete 228,1 --1/1 Mor'ladim's Skull
    .unitscan Mor'Ladim
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 55 >> Turn in Morbent Fel
    .isQuestComplete 55
    .target Sven Yorgen
step
    .goto Duskwood,19.59,37.28
    >>Kill |cRXP_ENEMY_Mor'Ladim|r. Loot him for his |cRXP_LOOT_Skull|r
    >>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_hits very hard but moves quite slow. Try to kite him around any large trees if required|r
    >>|cRXP_WARN_This quest can be difficult. You may skip this step and come back at a higher level if you wish|r
    .complete 228,1 --1/1 Mor'ladim's Skull
    .unitscan Mor'Ladim

step
    #completewith next
    .goto Duskwood,44.598,87.565,0
    .goto Stranglethorn Vale,40.635,3.514
    .zone Stranglethorn Vale >> Travel to Stranglethorn Vale
step
    #completewith stvEnd2
    .goto Stranglethorn Vale,40.339,8.434,0
    >>|cRXP_WARN_Keep an eye out for the special |cRXP_FRIENDLY_Private Thorsen|r event. He will patrol down the road from the Rebel camp every 30 minutes|r
    >>|cRXP_FRIENDLY_Private Thorsen|r |cRXP_WARN_will be attacked by 2 of |cRXP_ENEMY_Kurzen's Agents|r. If you don't see this event, ignore this step|r
    >>Kill both of |cRXP_ENEMY_Kurzen's Agents|r and then accept |cRXP_FRIENDLY_Private Thorsen's|r quest which becomes available after saving him
    .accept 215 >> Accept Jungle Secrets
    .unitscan Private Thorsen
    .mob Kurzen's Agent
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barnil Stonepot|r and |cRXP_FRIENDLY_Hemet Nesingwary|r
    .accept 583 >> Accept Welcome to the Jungle
    .goto Stranglethorn Vale,35.662,10.529
    .turnin 583 >> Turn in Welcome to the Jungle
    .goto Stranglethorn Vale,35.658,10.808
    .target Barnil Stonepot
    .target Hemet Nesingwary
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .accept 185 >> Accept Tiger Mastery
    .goto Stranglethorn Vale,35.616,10.619
    .accept 190 >> Accept Panther Mastery
    .goto Stranglethorn Vale,35.556,10.546
    .target Ajeck Rouack
    .target Sir S. J. Erlgadin
step
    #completewith next
	>>Kill |cRXP_ENEMY_Young Panthers|r
    .complete 190,1 --10/10 Young Panther slain
    .mob Young Panther
step
    .goto Stranglethorn Vale,35.40,12.50,50,0
    .goto Stranglethorn Vale,33.30,11.90,50,0
    .goto Stranglethorn Vale,31.76,9.00,50,0
    .goto Stranglethorn Vale,35.40,12.50
	>>Kill |cRXP_ENEMY_Young Stranglethorn Tigers|r
    .complete 185,1 --10/10 Young Stranglethorn Tiger slain
    .mob Young Stranglethorn Tiger
step
    .goto Stranglethorn Vale,41.50,12.00,50,0
    .goto Stranglethorn Vale,42.74,12.40,50,0
    .goto Stranglethorn Vale,41.43,9.77,50,0
    .goto Stranglethorn Vale,40.67,11.65,50,0
    .goto Stranglethorn Vale,41.50,12.00
	>>Kill |cRXP_ENEMY_Young Panthers|r
    .complete 190,1 --10/10 Young Panther slain
    .mob Young Panther
step
    #label stvEnd2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ajeck Rouack|r and |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    >>|cRXP_WARN_Don't accept the follow ups yet|r
    .turnin 185 >> Turn in Tiger Mastery
    .goto Stranglethorn Vale,35.616,10.619
    .turnin 190 >> Turn in Panther Mastery
    .goto Stranglethorn Vale,35.556,10.546
    .target Ajeck Rouack
    .target Sir S. J. Erlgadin
step
    .goto Stranglethorn Vale,38.042,3.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lieutenant Doren|r
    >>|cRXP_WARN_Don't accept the follow up yet|r
    .turnin 215 >> Turn in Jungle Secrets
    .isOnQuest 215
    .target Lieutenant Doren
step << Druid
    #xprate <1.2
    .goto Stranglethorn Vale,33.43,11.85
	.xp 32 >> Grind to 32
step << Druid
    #xprate <1.2
	#completewith next
	.cast 18960 >> Cast Teleport: Moonglade
	.zoneskip Moonglade
	.xp <32,1
step << Druid
    #xprate <1.2
	>>Teleport to Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
	.goto Moonglade,52.53,40.56
    .trainer >> Train your class spells
    .target Loganaar
    .xp <32,1
step << Druid
#xprate >1.99
	#completewith next
	.cast 18960 >> Cast Teleport: Moonglade
	.zoneskip Moonglade
	.xp <30,1 -- might have already done this training 
step << Druid
#xprate >1.99
	>>Teleport to Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
	.goto Moonglade,52.53,40.56
    .trainer >> Train your class spells
    .target Loganaar
    .xp <30,1 -- might have already done this training 
step
    #completewith next
    .hs >> Hearth to Darkshire
	>>|cRXP_BUY_Buy food/water if needed|r << !Warrior !Rogue
	>>|cRXP_BUY_Buy food if needed|r << Warrior/Rogue
    .cooldown item,6948,>0,1
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .turnin 228 >> Turn in Mor'Ladim
    .isQuestComplete 228
    .target Commander Althea Ebonlocke
step
    .goto Duskwood,73.59,46.89
    .isQuestTurnedIn 228
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Commander Althea Ebonlocke|r
    .accept 229 >> Accept The Daughter Who Lived
    .target Commander Althea Ebonlocke
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Ello Ebonlocke|r
    .turnin 253 >> Turn in Bride of the Embalmer
    .isQuestComplete 253
    .target Lord Ello Ebonlocke
step
    .destroy 3248 >>Throw away the |T134939:0|t[Translated Letter from The Embalmer] you no longer need it
step
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watcher Ladimore|r
    >>|cRXP_FRIENDLY_Watcher Ladimore|r |cRXP_WARN_patrols around in Darkshire|r
    .turnin 229 >> Turn in The Daughter Who Lived
    .accept 231 >> Accept A Daughter's Love
    .isQuestTurnedIn 228
    .target Watcher Ladimore
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Calor|r
    .turnin 222 >> Turn in Worgen in the Woods
    .accept 223 >> Accept Worgen in the Woods
    .target Calor
step
    .goto Duskwood,75.32,49.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jonathan Carevin|r
    .turnin 223 >> Turn in Worgen in the Woods
    .target Jonathan Carevin
step << !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Felicia Maline|r
    .goto Duskwood,77.49,44.28
    .fly Stormwind>> Fly to Stormwind
    .target Felicia Maline
step << Mage
    #xprate <1.2
    #completewith next
    .goto Stormwind City,43.08,80.39
	.zone Stormwind City >> Teleport to Stormwind City
step << Mage
    #xprate <1.2/#som
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
    .trainer >> Train your class spells
    .target Elsharin
	.target Jennea Cannon
step << Mage
    .goto Stormwind City,39.843,81.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Malin|r
    .accept 690 >> Accept Malin's Request
    .target Archmage Malin
step << Mage
	.goto Stormwind City,40.633,91.867
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Connor Rivers|r
    .accept 1301 >> Accept James Hyal
    .target Connor Rivers
step << Mage
    #xprate <1.2
    .isOnQuest 1078
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
    .goto Stormwind City,43.088,80.391
    .turnin 1078 >> Turn in Retrieval for Mauren
    .target Collin Mauren
step << Mage
#xprate <1.99
    .goto Stormwind City,57.00,72.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
    .bankwithdraw 2784,5849,3712,2794 >> Withdraw the following items:
    >>|T132765:0|t[Crate of Crash Helmets]
    >>|T134026:0|t[Turtle Meat]
    >>|T134187:0|t[Musquash Root]
    >>|T133741:0|t[An Old History Book]
    .target Newton Burnside
step
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1245 >> Turn in The Missing Diplomat
    .accept 1246 >> Accept The Missing Diplomat
    .target Elling Trias
step << !Mage
#xprate <1.99
    .goto Stormwind City,57.00,72.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Newton Burnside|r
    .bankwithdraw 2784,5849,3712,2794 >> Withdraw the following items:
    >>|T132765:0|t[Crate of Crash Helmets]
    >>|T134026:0|t[Turtle Meat]
    >>|T134187:0|t[Musquash Root]
    >>|T133741:0|t[An Old History Book]
    .target Newton Burnside
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Train your class spells
    .target Wu Shen
    .target Ilsa Corbin
step << Warrior
    .goto Stormwind City,78.680,45.802
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu Shen|r
    .accept 1718 >> Accept The Islander
    .target Wu Shen
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
    .trainer >> Train your class spells
    .target Osborne the Night Man
step
    #completewith next
	.goto Stormwind City,70.549,44.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dashel Stonefist|r
    >>|cRXP_ENEMY_Dashel Stonefist|r |cRXP_WARN_will become hostile after accepting the follow up quest. Defeat him|r
    .turnin 1246 >> Turn in The Missing Diplomat
    .accept 1447,1 >> Accept The Missing Diplomat
    .target Dashel Stonefist
step
    .goto Stormwind City,70.549,44.887
    >>Defeat |cRXP_ENEMY_Dashel Stonefist|r
    >>|cRXP_ENEMY_Dashel Stonefist|r |cRXP_WARN_will also attack with 2 |cRXP_ENEMY_Old Town Thugs|r. Ignore them and focus on|r |cRXP_ENEMY_Dashel Stonefist|r
    .complete 1447,1 --1/1 Defeat Dashel Stonefist
    .mob Dashel Stonefist
step
    .goto Stormwind City,70.549,44.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dashel Stonefist|r
    .turnin 1447 >> Turn in The Missing Diplomat
    .accept 1247 >> Accept The Missing Diplomat
    .target Dashel Stonefist
step
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1247 >> Turn in The Missing Diplomat
    .accept 1248 >> Accept The Missing Diplomat
    .target Elling Trias
step << !Mage
    #xprate <1.2
    .goto Stormwind City,43.088,80.391
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Collin Mauren|r
    .turnin 1078 >> Turn in Retrieval for Mauren
    .isOnQuest 1078
    .target Collin Mauren
step << !Mage
    .goto Stormwind City,39.843,81.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Malin|r
    .accept 690 >> Accept Malin's Request
    .target Archmage Malin
step << !Mage
	.goto Stormwind City,40.633,91.867
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Connor Rivers|r
    .accept 1301 >> Accept James Hyal
    .target Connor Rivers
step << Paladin
    #season 2
    #completewith next
    .goto StormwindClassic,29.04,74.28,10,0
    .goto StormwindClassic,27.40,76.48,10,0
    .goto StormwindClassic,27.14,77.83,5,0
    .goto StormwindClassic,26.12,77.23,8 >>Travel toward |cRXP_FRIENDLY_Ursula Deline|r inside The Slaughtered Lamb
    .train 410014,1
step << Paladin
    #season 2
    .goto StormwindClassic,26.12,77.23
    >>Talk to |cRXP_FRIENDLY_Ursula Deline|r
    .turnin 78091 >> Turn in Earning Your Salt
    .accept 78092 >> Accept It Must Be Destroyed
    .target Ursula Deline
    .train 410014,1
    .isQuestComplete 78091
step << Paladin
    #season 2
    .goto StormwindClassic,26.12,77.23
    >>Talk to |cRXP_FRIENDLY_Ursula Deline|r
    .accept 78092 >> Accept It Must Be Destroyed
    .target Ursula Deline
    .train 410014,1
    .isQuestTurnedIn 78091
step
    #season 0,1
    #xprate <1.99 << !Warlock
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
step
    #season 2
    #xprate <1.99 << !Paladin !Warlock
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
    .isQuestTurnedIn 78092 << Paladin
step
#xprate <1.99
    .goto Stormwind City,26.439,78.629
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zardeth of the Black Claw|r
    .turnin 335 >> Turn in A Noble Brew
    .accept 336 >> Accept A Noble Brew
    .target Zardeth of the Black Claw
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells
    .target Ursula Deline
step << Warlock
    .goto Stormwind City,25.255,78.591
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1798 >> Accept Seeking Strahad
    .target Gakin the Darkbinder
step << Warlock
#xprate <1.99
    .goto Stormwind City,25.283,78.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Demisette Cloyce|r
    >>|cRXP_WARN_Skip this step if you picked up the same quest from Ironforge earlier|r
    .accept 4738 >> Accept In Search of Menara Voidrender
    .target Demisette Cloyce
step << Priest/Paladin
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >> Train your class spells
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r 
    .goto StormwindClassic,38.54,26.86
    .trainer >> Train your class spells
    .target Brother Joshua    
step
#xprate <1.99
    .goto Stormwind City,75.226,31.670
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Baurles K. Wishock|r
    .turnin 336 >> Turn in A Noble Brew
    .target Lord Baurles K. Wishock
step
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
    >>|cRXP_WARN_If you found |T133741:0|t[|cRXP_LOOT_An Old History Book|r] you may turn it in|r
    .accept 337 >> Accept An Old History Book
    .turnin 337 >> Turn in An Old History Book
    .use 2794 -- An Old History Book
    .itemcount 2794,1 -- An Old History Book (1)
    .target Milton Sheaf
step
    .isQuestTurnedIn 337
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milton Sheaf|r
    .accept 538 >> Accept Southshore
    .target Milton Sheaf
step << Mage
    #som
    #level 34
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jennea|r
    >>Teleport back to the Stormwind Trainer and Train your level 34 class spells if you didn't earlier
    .trainer >> Train your class spells
    .target Elsharin
	.target Jennea Cannon
step << Warlock
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >> Go into The Slaughtered Lamb and go downstairs
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zardeth of the Black Claw|r and |cRXP_FRIENDLY_Zggi|r
    .accept 397 >> Accept You Have Served Us Well
    .goto Stormwind City,26.439,78.629
    .turnin 397 >> Turn in You Have Served Us Well
    .goto Stormwind City,26.537,78.660
    .target Zardeth of the Black Claw
    .target Zggi
step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Train your class spells
    .target Einris Brightspear
step
.dungeon Gnomer
#season 0,1
    .goto StormwindClassic,55.511,12.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoni the Shilent|r
    .accept 2928 >> Accept Gyrodrillmatic Excavationators
    .target Shoni the Shilent
step << !Mage
    #completewith FlytoSouthshoreA
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Enter the Deeprun Tram. Take the Tram to Ironforge
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_if needed while waiting for the Tram|r
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >> |cRXP_WARN_Do a logout skip inside the Tram. Click here for video reference|r
step << Mage
    #completewith next
    .goto Stormwind City,63.73,8.43,30,0
    .zone Ironforge >> Teleport to Ironforge
step
    #season 0,1
    .goto Ironforge,69.540,50.325
    .target Tinkmaster Overspark
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkmaster Overspark|r
    .turnin -2923 >> Turn in Tinkmaster Overspark
step
#xprate >1.99
    .goto Ironforge,72.74,94.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pilot Longbeard|r
    .accept 1179 >>Accept The Brassbolts Brothers
    .target Pilot Longbeard
step << Hunter
#xprate >1.99
    .goto Ironforge,61.442,88.232,15,0
	.goto Ironforge,61.549,89.432
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thalgus Thunderfist|r downstairs
    >>|cRXP_BUY_Buy a|r |T134402:0|t[|cRXP_FRIENDLY_Heavy Quiver|r]
	.collect 7371,1
    .target Thalgus Thunderfist
step << !Mage
#xprate >1.99
    .goto Ironforge,18.14,51.45
    >>Talk to |cRXP_FRIENDLY_Innkeeper Firebrew|r inside
    .home >> Set your Hearthstone to Ironforge
    .target Innkeeper Firebrew
step
.dungeon Gnomer
#season 0,1
    #completewith next
    .goto Dun Morogh,24.2,39.1,0
    +Start Looking for a Gnomeregan group
step
.dungeon Gnomer
#season 0,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
    .goto Wetlands,9.49,59.70
    .fly Ironforge >>Fly to Ironforge
    .target Shellei Brondir
    .zoneskip Ironforge
step
.dungeon Gnomer
#season 0,1
    #completewith StartGnomer
    .goto Dun Morogh,24.2,39.1,0
    +Start Looking for a Gnomeregan group
    .subzoneskip 133--outside gnomer
    .subzoneskip 721,2--inside the instance
step
.dungeon Gnomer
#season 0,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gnoarn|r, |cRXP_FRIENDLY_Tinkmaster Overspark|r, |cRXP_FRIENDLY_High Tinker Mekkatorque|r, |cRXP_FRIENDLY_Master Mechanic Castpipe|r and |cRXP_FRIENDLY_Klockmort Spannerspan|r
    .accept 2927 >> Accept The Day After
    .goto Ironforge,69.182,50.556
    .turnin -2923 >> Turn in Tinkmaster Overspark
    .accept 2922 >> Accept Save Techbot's Brain!
    .goto Ironforge,69.540,50.325
    .accept 2929 >> Accept The Grand Betrayal
    .goto Ironforge,68.743,48.969
    .accept 2930 >> Accept Data Rescue
    .goto Ironforge,69.823,48.101
    .accept 2924 >> Accept Essential Artificials
    .goto Ironforge,67.925,46.101
    .target Gnoarn
    .target Tinkmaster Overspark
    .target High Tinker Mekkatorque
    .target Master Mechanic Castpipe
    .target Klockmort Spannerspan
step
.dungeon Gnomer
#season 0,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Firebrew|r
    .goto Ironforge,18.10,51.60
    .home >> Set your Hearthstone to Ironforge
    .target Innkeeper Firebrew
step
.dungeon Gnomer
#season 0,1
    #completewith next
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Exit Ironforge
step
.dungeon Gnomer
#season 0,1
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .turnin 2927 >> Turn in The Day After
    .accept 2926 >> Accept Gnogaine
    .target Ozzie Togglevolt

-- Quests outside Gnomeregan:

step
.dungeon Gnomer
#season 0,1
    #label StartGnomer
    #completewith next
    .goto Dun Morogh,24.35,39.78,0
    .goto Dun Morogh,24.35,39.78,30,0
    .goto 1415,43.42,53.81,45 >> Travel to Gnomeregan
step
.dungeon Gnomer
#season 0,1
    .goto 1415,43.40,53.41,50,0
    .goto 1415,43.13,53.36,50,0
    .goto 1415,43.38,52.94,50,0
    .goto 1415,43.40,53.41
    .use 9283 >>|cRXP_WARN_Use the|r |T132788:0|t[Empty Leaden Collection Phial] |cRXP_WARN_on a |cRXP_ENEMY_Irradiated Invader|r or|r |cRXP_ENEMY_Irradiated Pillager|r
    >>|cRXP_WARN_The |cRXP_ENEMY_Irradiated Invader|r or |cRXP_ENEMY_Irradiated Pillager|r must be ALIVE when you use it|r
    >>|cRXP_WARN_This quest is completed while OUTSIDE of the dungeon|r
    .complete 2926,1 -- Full Leaden Collection Phial (1)
    .mob Irradiated Invader
    .mob Irradiated Pillager
    .isOnQuest 2926
step
.dungeon Gnomer
#season 0,1
    #completewith next
    .goto Dun Morogh,46.005,48.637,40 >> Travel to |cRXP_FRIENDLY_Ozzie Togglevolt|r in Kharanos
    >>|cRXP_WARN_You will get a follow up for when you go inside the dungeon|r
    .isOnQuest 2926
step
.dungeon Gnomer
#season 0,1
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .turnin 2926 >> Turn in Gnogaine
    .target Ozzie Togglevolt
    .isQuestComplete 2926
step
.dungeon Gnomer
#season 0,1
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .accept 2962 >> Accept The Only Cure is More Green Glow
    .target Ozzie Togglevolt
    .isQuestTurnedIn 2926
step
.dungeon Gnomer
#season 0,1
    #completewith next
    .goto Dun Morogh,24.35,39.78,0
    .goto Dun Morogh,24.35,39.78,30,0
    .goto 1415,43.42,53.81,45 >> Travel to Gnomeregan
    .isOnQuest 2962
step
.dungeon Gnomer
#season 0,1
    .goto 1415,43.37,53.11,70,0
    .goto 1415,43.10,52.81
    >>Kill |cRXP_ENEMY_Troggs|r and |cRXP_ENEMY_Gnomes|r. Loot them for a |T133215:0|t[|cRXP_LOOT_White Punch Card|r]
    .collect 9279,1,2930,1,1 -- White Punch Card (1)
    >>Kill |cRXP_ENEMY_Techbot|r. Loot him for his |cRXP_LOOT_Memory Core|r
    >>|cRXP_WARN_This quest is completed while OUTSIDE of the dungeon|r
    .complete 2922,1 -- Techbot's Memory Core (1)
    .mob Techbot
    .isOnQuest 2922
step
.dungeon Gnomer
#season 0,1
    .goto 1415,43.40,53.41,50,0
    .goto 1415,43.13,53.36,50,0
    .goto 1415,43.38,52.94,50,0
    .goto 1415,43.40,53.41
    >>Kill |cRXP_ENEMY_Troggs|r and |cRXP_ENEMY_Gnomes|r. Loot them for a |T133215:0|t[|cRXP_LOOT_White Punch Card|r]
    .collect 9279,1 -- White Punch Card (1)
    >>|cRXP_WARN_This quest is completed while OUTSIDE of the dungeon|r
    .isOnQuest 2930
step
.dungeon Gnomer
#season 0,1
    .goto 1415,43.364,52.892,-1
    .goto 1415,43.411,52.898,-1
    .goto 1415,43.402,52.672,-1
    .goto 1415,43.430,52.675,-1
    >>|cRXP_WARN_Use the|r |T133215:0|t[|cRXP_LOOT_White Punch Card|r] |cRXP_WARN_at the|r |cRXP_PICK_Matrix Punchograph 3005-A|r
    >>|cRXP_WARN_This quest is completed while OUTSIDE of the dungeon|r
    .collect 9280,1,2930,1 -- Yellow Punch Card (1)
    .itemcount 9279,1 -- White Punch Card (1)
    .skipgossip
    .isOnQuest 2930

--Inside quests now

step
.dungeon Gnomer
#season 0,1
    .goto 1415,43.17,53.36,40,0
    .goto 1415,42.78,53.81
    .subzone 721,2 >> Enter the Gnomeregan instance portal
step
.dungeon Gnomer
#season 0,1
    #completewith Thermaplugg
    >>Kill all |cRXP_ENEMY_Gnomeregan Mobs|r. Loot them for their |cRXP_LOOT_Robo-mechanical Guts|r
    .complete 2928,1 -- Robo-mechanical Guts (24)
    .isOnQuest 2928
step
.dungeon Gnomer
#season 0,1
    >>|cRXP_WARN_Use the|r |T133215:0|t[|cRXP_LOOT_Yellow Punch Card|r] |cRXP_WARN_at the|r |cRXP_PICK_Matrix Punchograph 3005-B|r
    >>The console looking machine is located at the gnomish safe zone at the bottom floor, next to the big circular room where the slimes are located
    .collect 9282,1,2930,1 -- Blue Punch Card (1)
    .itemcount 9280,1 -- Yellow Punch Card (1)
    .skipgossip
    .isOnQuest 2930
step
.dungeon Gnomer
#season 0,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kernobee|r
    >>|cRXP_WARN_This will start an escort quest. |cRXP_FRIENDLY_Kernobee|r spawns randomly in The Dormitory, right outside of the gnomish safe zone|r
    .accept 2904 >> Accept A Fine Mess
    .unitscan Kernobee
step
.dungeon Gnomer
#season 0,1
    >>Escort |cRXP_FRIENDLY_Kernobee|r back to the start of the dungeon
    .complete 2904,1 -- Kernobee Rescue
    .isOnQuest 2904
step
.dungeon Gnomer
#season 0,1
    .use 9364 >>|cRXP_WARN_Use the|r |T132788:0|t[Heavy Leaden Collection Phial] |cRXP_WARN_on a |cRXP_ENEMY_Irradiated Slime|r, |cRXP_ENEMY_Irradiated Lurker|r or|r |cRXP_ENEMY_Irradiated Horror|r
    >>|cRXP_WARN_The |cRXP_ENEMY_Irradiated Slime|r, |cRXP_ENEMY_Irradiated Lurker|r or |cRXP_ENEMY_Irradiated Horror|r must be ALIVE when you use it|r
    >>|cRXP_WARN_Note: You must turn this quest in within 2 hours of acquiring the|r |T136006:0|t[High Potency Radioactive Fallout]
    .complete 2962,1 -- High Potency Radioactive Fallout (1)
    .mob Irradiated Slime
    .mob Irradiated Lurker
    .mob Irradiated Horror
    .isOnQuest 2962
step
.dungeon Gnomer
#season 0,1
    #completewith Thermaplugg
    >>Open the |cRXP_PICK_Artificial Extrapolators|r. Loot them for |cRXP_LOOT_Essential Artificials|r
    .complete 2924,1 -- Essential Artificial (12)
    .isOnQuest 2924
step
.dungeon Gnomer
#season 0,1
    >>|cRXP_WARN_Use the|r |T133215:0|t[|cRXP_LOOT_Blue Punch Card|r] |cRXP_WARN_at the|r |cRXP_PICK_Matrix Punchograph 3005-C|r
    >>The Punchograph is located on the suspended platform right next to the |cRXP_ENEMY_Electrocutioner 6000|r
    .collect 9281,1,2930,1 -- Red Punch Card (1)
    .itemcount 9282,1 -- Blue Punch Card (1)
    .skipgossip
    .isOnQuest 2930
    .unitscan Electrocutioner 6000
step
.dungeon Gnomer
#season 0,1
    >>|cRXP_WARN_Use the|r |T133215:0|t[|cRXP_LOOT_Red Punch Card|r] |cRXP_WARN_at the|r |cRXP_PICK_Matrix Punchograph 3005-D|r
    .complete 2930,1 -- Prismatic Punch Card (1)
    .itemcount 9281,1 -- Red Punch Card (1)
    .skipgossip
    .isOnQuest 2930
step
.dungeon Gnomer
#season 0,1
    #label Thermaplugg
    >>Kill |cRXP_ENEMY_Mekgineer Thermaplugg|r
    .complete 2929,1 -- Mekgineer Thermaplugg slain
    .isOnQuest 2929
step
.dungeon Gnomer
#season 0,1
    #completewith Finished
    >>Open the |cRXP_PICK_Artificial Extrapolators|r. Loot them for |cRXP_LOOT_Essential Artificials|r
    >>If you still haven't finished this quest, go back to places where you looted them before, since they respawn after a few minutes
    .complete 2924,1 -- Essential Artificial (12)
    .isOnQuest 2924
step
.dungeon Gnomer
#season 0,1
    #completewith Finished
    >>Kill all |cRXP_ENEMY_Gnomeregan Mobs|r. Loot them for their |cRXP_LOOT_Robo-mechanical Guts|r
    .complete 2928,1 -- Robo-mechanical Guts (24)
    .isOnQuest 2928
step
.dungeon Gnomer
#season 0,1
    >>|cRXP_WARN_Use the|r |T135230:0|t[|cRXP_LOOT_Grime-Encrusted Ring|r] |cRXP_WARN_to start the quest|r
    .accept 2945 >> Accept Grime-Encrusted Ring
    .collect 9326,1,2945 -- Grime-Encrusted Ring (1)
    .itemcount 9326,1
    .use 9326
step
.dungeon Gnomer
#season 0,1
    >>|cRXP_WARN_Take the|r |T135230:0|t[|cRXP_LOOT_Grime-Encrusted Ring|r] |cRXP_WARN_to |cRXP_PICK_The Sparklematic 5200|r in The Clean Zone|r
    *You will have to back track to The Clean Zone near the instance entrance, make sure your teamates are there to help you on your trip back
    .turnin 2945 >> Turn in Grime-Encrusted Ring
    .itemcount 9326,1 -- Grime-Encrusted Ring (1)
step
.dungeon Gnomer
#season 0,1
    >>Click the |cRXP_PICK_The Sparklematic 5200|r one more time
    .accept 2947 >> Accept Return of the Ring
    .isQuestTurnedIn 2945

-- Turn ins:
step
.dungeon Gnomer
#season 0,1
    .hs >> Hearth to Ironforge
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step
.dungeon Gnomer
#season 0,1
    #completewith next
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Exit Ironforge
step -- needs to be turned in asap because 2hr time limit
.dungeon Gnomer
#season 0,1
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ozzie Togglevolt|r
    .turnin 2962 >> Turn in The Only Cure is More Green Glow
    .target Ozzie Togglevolt
    .isQuestComplete 2962
step
.dungeon Gnomer
#season 0,1
    #completewith next
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40,0
    .zone Ironforge >> Travel to Ironforge
step
.dungeon Gnomer
#season 0,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talvash del Kissel|r
    .turnin 2947 >> Turn in Return of the Ring
    .accept 2948 >> Accept Gnome Improvement
    .target Talvash del Kissel
    .isOnQuest 2947
step
.dungeon Gnomer
#season 0,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talvash del Kissel|r
    >>|cRXP_WARN_If you are able to obtain a|r |T133215:0|t[Silver Bar] |cRXP_WARN_and a|r |T134105:0|t[Moss Agate] |cRXP_WARN_finish this quest. If not, abandon it|r
    .collect 2842,1,2948,1 -- Silver Bar (1)
    .collect 1206,1 -- Moss Agate (1)
    .turnin 2948,2948,1 >> Turn in Gnome Improvement
    .target Talvash del Kissel
    .isOnQuest 2948
step
.dungeon Gnomer
#season 0,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkmaster Overspark|r, |cRXP_FRIENDLY_High Tinker Mekkatorque|r, |cRXP_FRIENDLY_Master Mechanic Castpipe|r and |cRXP_FRIENDLY_Klockmort Spannerspan|r
    .turnin -2922,1 >> Turn in Save Techbot's Brain!
    .goto Ironforge,69.540,50.325
    .turnin -2929,1 >> Turn in The Grand Betrayal
    .goto Ironforge,68.743,48.969
    .turnin -2930,1 >> Turn in Data Rescue
    .goto Ironforge,69.823,48.101
    .turnin -2924,1 >> Turn in Essential Artificials
    .goto Ironforge,67.925,46.101
    .target Tinkmaster Overspark
    .target High Tinker Mekkatorque
    .target Master Mechanic Castpipe
    .target Klockmort Spannerspan
step
.dungeon Gnomer
#season 0,1
    .abandon 2948 >> Abandon Gnome Improvement
step << !Hunter
.dungeon Gnomer
#season 0,1
    .goto Ironforge,55.51,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Wetlands>> Fly to Wetlands
    .target Gryth Thurden
    .zoneskip Wetlands
step
    #era/som
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_BUY_Buy a|r |T133759:0|t[Hillman's Cloak] |cRXP_WARN_and a|r |T132913:0|t[Bolt of Woolen Cloth] |cRXP_BUY_to complete an optional quest coming up in Hillsbrad Foothills|r
    >>|cRXP_BUY_Buy 4|r |T134577:0|t[Lesser Bloodstone Ore] |cRXP_BUY_to complete an optional quest coming up in Stranglethorn Vale|r
    >>|cRXP_WARN_You may also craft the|r |T133759:0|t[Hillman's Cloak] |cRXP_WARN_with Leatherworking|r
    >>|cRXP_WARN_Skip this step if you cannot aquire them|r
    .collect 3719,1,565,1 -- Hillman's Cloak (1)
    .collect 2997,1,565,1 -- Bolt of Woolen Cloth (1)
    .collect 4278,4,627,1 -- Lesser Bloodstone Ore (4)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .skill leatherworking,<150,1
step
    #era/som
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to an |cRXP_FRIENDLY_Ironforge Auctioneer|r
    >>|cRXP_BUY_Buy a|r |T133759:0|t[Hillman's Cloak] |cRXP_WARN_and a|r |T132913:0|t[Bolt of Woolen Cloth] |cRXP_BUY_to complete an optional quest coming up in Hillsbrad Foothills|r
    >>|cRXP_BUY_Buy 4|r |T134577:0|t[Lesser Bloodstone Ore] |cRXP_BUY_to complete an optional quest coming up in Stranglethorn Vale|r
    >>|cRXP_WARN_Skip this step if you cannot aquire them|r
    .collect 3719,1,565,1 -- Hillman's Cloak (1)
    .collect 2997,1,565,1 -- Bolt of Woolen Cloth (1)
    .collect 4278,4,627,1 -- Lesser Bloodstone Ore (4)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .skill leatherworking,150,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .goto Ironforge,55.50,47.70
    .fly Wetlands>> Fly to Wetlands
    .target Gryth Thurden
    .zoneskip Wetlands
]])