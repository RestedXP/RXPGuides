local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#name 14-16 Darkshore
#displayname 11-16 Darkshore << NightElf
#displayname 13-16 Darkshore << Dwarf Hunter/!NightElf sod
#displayname 15-16 Darkshore << !NightElf !Hunter
#version 1
#group RestedXP Alliance 1-20
#next 16-19 Darkshore

step << NightElf
    .goto Teldrassil,56.25,92.44
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6344 >> Turn in Nessa Shadowsong
    .accept 6341 >> Accept The Bounty of Teldrassil
    .target Nessa Shadowsong
step << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
	.goto Teldrassil,58.39,94.01
    .turnin 6341 >> Turn in The Bounty of Teldrassil
    .accept 6342 >> Accept Flight to Auberdine
    .target Vesprystus
step << NightElf
    #completewith WashedA
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .fly Auberdine >> Fly to Darkshore
    .target Vesprystus
step << NightElf
#map Darkshore
    #label WashedA
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Accept Washed Ashore
    .target Gwennyth Bly'Leggonde
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .goto Darkshore,36.096,44.931
    .accept 1141 >> Accept The Family and the Fishing Pole
    .turnin 1141 >> Turn in The Family and the Fishing Pole
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step << NightElf
#map Darkshore
    .goto Felwood,19.27,19.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laird|r
    .turnin 6342 >> Turn in Flight to Auberdine
    .target Laird
step
    #completewith BigThreat
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
    .maxlevel 15
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
step << !NightElf
#map Darkshore
    #label WashedA
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Accept Washed Ashore
    .target Gwennyth Bly'Leggonde
step << !NightElf
#map Darkshore
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fp Auberdine >> Get the Auberdine flight path
    .target Caylais Moonfeather
step << Dwarf Hunter
    #sticky
    .goto Darkshore,40.75,70.49,40,0
    .goto Darkshore,40.77,78.56,40,0
    .goto Darkshore,38.21,73.32,40 >>Send your pet to attack a |cRXP_ENEMY_Thistle Bear|r. Once your pet is stunned by the |cRXP_ENEMY_Thistle Bear|r, abandon your pet and start taming it
    .tame 2163 >>|cRXP_WARN_Cast |T132164:0|t[Tame Beast] on a |cRXP_ENEMY_Thistle Bear|r to tame it|r
    .target Thistle Bear
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
    .isOnQuest 983
    .maxlevel 15
step
#map Darkshore
    .goto Felwood,18.81,26.69
    >>Loot the |cRXP_PICK_Beached Sea Creature|r for the |cRXP_LOOT_Sea Creature Bones|r
    .complete 3524,1
step << Druid
    #completewith end
    >>|cRXP_WARN_Level |T136065:0|t[Herbalism] to 15. Collect 5 |T134187:0|t[Earthroot] for a future quest|r
    .collect 2449,5
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
    #xprate <1.5 << !NightElf/!Hunter
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
    .isOnQuest 983
    .maxlevel 15
step << NightElf
#map Darkshore
    .goto Felwood,18.81,26.69,40,0
    .goto Felwood,22.39,29.45
    .xp 12-1500 >> Grind until you are 1500xp off level 12
step
#map Darkshore
    #xprate <1.5
    .goto Felwood,19.13,21.39
    >>Click the |cRXP_PICK_Buzzbox 827|r on the ground
    .turnin 983 >> Turn in Buzzbox 827
    .accept 1001 >> Accept Buzzbox 411
step
    #xprate >1.49
#map Darkshore
	.goto Felwood,19.13,21.39
    >>Click the |cRXP_PICK_Buzzbox 827|r on the ground
    .turnin 983 >> Turn in Buzzbox 827
    .isQuestComplete 983
step
#map Darkshore
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Turn in Washed Ashore
    .accept 4681 >> Accept Washed Ashore
    .target Gwennyth Bly'Leggonde
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
    #season 0,1 << Rogue
    #optional
    #completewith SeaT1
    .goto Darkshore,32.75,42.21,35 >> Travel to the end of the dock then jump into the water
step << Rogue
    #season 2
    #optional
    #completewith SeaT1
    .goto Darkshore,32.75,42.21,35 >> Travel to the end of the dock then jump into the water
    .train 424785,3
step
    #xprate <1.5
    #completewith washed1
    .goto Darkshore,33.59,40.36,0
    .goto Darkshore,30.94,45.79,0
    .goto Darkshore,33.03,48.13,0
    >>Kill |cRXP_ENEMY_Darkshore Threshers|r. Loot them for their |cRXP_LOOT_Eyes|r
    .complete 1001,1
    .mob Darkshore Thresher
step << Rogue
    #season 2
    #optional << !NightElf
    #completewith next
    .goto Darkshore,32.80,37.72,20 >> Swim to the small island with the Lighthouse
    .train 424785,1
step << Rogue
    #season 2
    #optional << !NightElf
    .goto Darkshore,32.729,37.093
    >>Open the |cRXP_PICK_Lighthouse Stash|r inside the tree trunk. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]
    .collect 208772,1 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    #optional << !NightElf
    .cast 402265 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Saber Slash|r]
    .use 208772 -- Rune of Saber Slash (1)
    .train 424785,1
step
#map Darkshore
    #label SeaT1
    .goto Felwood,13.63,21.44
    >>Loot the |cRXP_PICK_Skeletal Sea Turtle|r for the |cRXP_LOOT_Sea Turtle Remains|r
    .complete 4681,1
step << Priest
    #season 2
    .goto Darkshore,30.5,47.5
    >>Click the |cRXP_PICK_Remnant|r on the small island. Loot it for the |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Demise|r]
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .train 402849,1
step << Priest
    #season 2
    >>You must now obtain two |T135934:0|t|T136057:0|t[Meditation] buffs
    >>You must /kneel inside one of the following places: A moonwell, Northshire Abbey, Stormwind Cathedral, the Altars of Light in Anvilmar, Loch Modan or the Mystic Ward in Ironforge
    >>In order to receive your second |T135934:0|t|T136057:0|t[Meditation] buff this requires you to /kneel infront of a Priest who has a different |T135934:0|t|T136057:0|t[Meditation] to yours, and they must /pray while targeting you
    .train 402849 >> |cRXP_WARN_Once you have both|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buffs use the|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Demise]|r |cRXP_WARN_to learn|r |T136149:0|t[Shadow Word: Death]
    >>|cRXP_WARN_If you are unable to do this now, skip this step and complete it later|r
    .use 205932
    .itemcount 205932,1
step
#map Darkshore
    #label washed1
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Turn in Washed Ashore
    .target Gwennyth Bly'Leggonde
step
#map Darkshore
    .goto Felwood,19.90,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 947 >> Accept Cave Mushrooms
    .target Barithras Moonshade
step
#map Darkshore
    .goto Felwood,20.34,18.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .accept 4811 >> Accept The Red Crystal
    .target Sentinel Glynda Nal'Shea
step
#map Darkshore
    .goto Felwood,21.63,18.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2118 >> Turn in Plagued Lands
    .accept 2138 >> Accept Cleansing of the Infected
    .target Tharnariun Treetender
step
#map Darkshore
    .goto Felwood,22.24,18.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Turn in How Big a Threat?
    .accept 985 >> Accept How Big a Threat?
    .accept 4761 >> Accept Thundris Windweaver
    .target Terenthis
step << NightElf Warrior/NightElf Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kurdram Stonehammer|r and |cRXP_FRIENDLY_Delfrum Flintbeard|r
    .train 2575 >> Train |T134708:0|t[Mining]
    .goto Darkshore,38.249,41.008
    .train 2018 >> Train |T136241:0|t[Blacksmithing]
    .goto Darkshore,38.191,40.935
    >>|cRXP_WARN_This will allow you to make |T135248:0|t[Rough Sharpening Stones] which increase melee hits by +2 Damage. This is very significant early on|r
    .target Kurdram Stonehammer
    .target Delfrum Flintbeard
step << NightElf Warrior/NightElf Rogue
    .goto Darkshore,38.142,41.108
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elisa Steelhand|r
    >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick]
    .target Elisa Steelhand
    .collect 2901,1 -- Mining Pick (1)
    .skill mining,<1,1
step << NightElf Warrior/NightElf Rogue
    #completewith Bashal1
    .cast 2580 >> |cRXP_WARN_Cast|r |T136025:0|t[Find Minerals]
    .skill mining,<1,1
step << Dwarf/Gnome/Human
#xprate <1.5
#map Darkshore
    .goto Felwood,20.80,15.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Accept Deep Ocean, Vast Sea
    .target Gorbold Steelhand
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Accept Easy Strider Living
    .turnin 2178 >> Turn in Easy Strider Living
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher than x
    .itemcount 5469,5 -- Strider Meat (5)
    .target Alanndarian Nightsong
step
    #completewith next
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalmond|r
    .vendor >> |cRXP_WARN_Buy as many|r |T133634:0|t[Small Brown Pouches] |cRXP_WARN_as you need|r
    >>|cRXP_WARN_Buy|r |T132382:0|t[Sharp Arrows] |cRXP_WARN_or|r |T132384:0|t[Heavy Shots]|cRXP_WARN_. You have a long grinding session ahead|r << Hunter
    .target Dalmond

step << NightElf Rogue
    .goto Darkshore,37.574,40.344
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naram Longclaw|r
    >>|cRXP_BUY_Buy a|r |T135640:0|t[Jambiya]
    .collect 2207,1 -- Jambiya (1)
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.10
    .money <0.2390
    .target Naram Longclaw
step
#xprate <1.5 << !NightElf
#map Darkshore
    .goto Felwood,19.98,14.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4761 >> Turn in Thundris Windweaver
    .accept 4762 >> Accept The Cliffspring River
    .accept 958 >> Accept Tools of the Highborne
    .accept 954 >> Accept Bashal'Aran
    .target Thundris Windweaver
step << !NightElf
#map Darkshore
#xprate >1.49
    .goto Felwood,19.98,14.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4761 >> Turn in Thundris Windweaver
    .accept 4762 >> Accept The Cliffspring River
    .accept 958 >> Accept Tools of the Highborne
step << !NightElf
    #xprate <1.5
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
step << !NightElf
#xprate <1.5
    #completewith next
    .goto Darkshore,38.95,29.36,30 >> Swim to the wrecked Silver Dawning ship
step << !NightElf
#xprate <1.5
#map Darkshore
    .goto Darkshore,38.95,29.36,10,0
    .goto Felwood,20.94,1.49
    >>|cRXP_WARN_Enter the wrecked Silver Dawning ship through the broken hull on the bottom. Make sure you have a full breath bar before diving down and entering|r
    >>Loot the |cRXP_LOOT_Silver Dawning's Lockbox|r on the ground
    .complete 982,1
step << !NightElf
#xprate <1.5
    #completewith next
    .goto Darkshore,40.30,27.56,30 >> Swim to the wrecked Mist Veil ship
step << !NightElf
#xprate <1.5
    #label MistVeil
    .goto Darkshore,40.30,27.56,10,0
    .goto Darkshore,39.63,27.45
    >>|cRXP_WARN_Enter the wrecked Mist Veil ship through the broken hull on the bottom. Make sure you have a full breath bar before diving down and entering|r
    >>Loot the |cRXP_LOOT_Mist Veil's Lockbox|r on the ground
    .complete 982,2
step
    #xprate <1.5
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
    #xprate <1.5
    .goto Felwood,25.19,1.29
    >>Click the |cRXP_PICK_Buzzbox 411|r on the ground
    .turnin 1001 >> Turn in Buzzbox 411
    .accept 1002 >> Accept Buzzbox 323
step
#xprate <1.5
#map Darkshore
    .goto Felwood,25.15,4.61
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4723 >> Accept Beached Sea Creature
step
#xprate <1.5 << !NightElf
#map Darkshore
    #completewith Bashal1
    .goto Felwood,27.70,10.03,60 >> Travel to Bashal'Aran
step
    #completewith MeatFangEgg1 << !Druid
    #completewith MeatFangEgg1Druid << Druid
    >>Kill |cRXP_ENEMY_Foreststriders|r and |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #xprate <1.5
    #completewith MeatFangEgg1 << !Druid
    #completewith MeatFangEgg1Druid << Druid
    >>Kill |cRXP_ENEMY_Moonstalkers|r and |cRXP_ENEMY_Moonstalker Runts|r. Loot them for their |cRXP_LOOT_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
#xprate <1.5 << !NightElf
#map Darkshore
    #label Bashal1
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Avoid killing |cRXP_ENEMY_Wild Grells|r and |cRXP_ENEMY_Vile Sprites|r en-route|r
    .turnin 954 >> Turn in Bashal'Aran
    .accept 955 >> Accept Bashal'Aran
    .target Asterion
step
#xprate <1.5 << !NightElf
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
#xprate <1.5 << !NightElf
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Turn in Bashal'Aran
    .accept 956 >> Accept Bashal'Aran
    .target Asterion
step
#xprate <1.5 << !NightElf
    .goto Darkshore,45.88,38.56,40,0
    .goto Darkshore,46.76,39.13,40,0
    .goto Darkshore,47.69,36.73,40,0
    .goto Darkshore,45.07,36.76
    >>Kill |cRXP_ENEMY_Deth'ryll Satyr|r. Loot them for the |cRXP_LOOT_Moonstone Seal|r
    .complete 956,1
    .mob Deth'ryll Satyr
step
#xprate <1.5 << !NightElf
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Turn in Bashal'Aran
    .accept 957 >> Accept Bashal'Aran
    .target Asterion
step << NightElf/Dwarf Hunter
#xprate <1.5
    .goto Darkshore,47.79,39.46,40,0
    .goto Darkshore,45.36,43.64,40,0
    .goto Darkshore,43.24,41.46,40,0
    .goto Darkshore,46.04,45.40
    .xp 13 >> Grind to level 13
step
    #completewith MeatFangEgg1
    >>Kill |cRXP_ENEMY_Moonkin|r. Loot them for their |T132832:0|t[|cRXP_LOOT_Small Eggs|r]
    >>|cRXP_WARN_You will level|r |T133971:0|t[Cooking] |cRXP_WARN_to 10 later using|r |T132832:0|t[|cRXP_LOOT_Small Eggs|r]
    .collect 6889,10,2178,1,0x21,cooking -- Small Egg
    .skill cooking,10,1 -- step displays if cooking skill is less than 10
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
step
#map Darkshore
    #label MeatFangEgg1
    .goto Felwood,31.29,24.14
    >> Travel to |cRXP_PICK_The Red Crystal|r
    .complete 4811,1
step << Druid
    .goto Darkshore,42.97,45.47,15,0
    .goto Darkshore,43.50,45.97
    >>|cRXP_WARN_Enter the Moonkin Cave|r
    .use 15208 >>|cRXP_WARN_Use the|r |T132857:0|t[Cenarion Moondust] |cRXP_WARN_at the |cRXP_PICK_Moonkin Stone|r inside the cave to summon |cRXP_ENEMY_Lunaclaw|r|r
    >>Kill |cRXP_ENEMY_Lunaclaw|r
    .complete 6001,1 --Defeat Lunaclaw (x1)
step << Hunter/NightElf !Druid
    #xprate <1.5
    #completewith next
    .hs >> Hearth to Auberdine
    .cooldown item,6948,>0,1
step
#map Darkshore
    #label MeatFangEgg1Druid
    #completewith next
    .subzone 442 >> Travel to Auberdine
step
#map Darkshore
    .goto Felwood,20.34,18.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4811 >> Turn in The Red Crystal
    .accept 4812 >> Accept As Water Cascades
    .target Sentinel Glynda Nal'Shea
step << NightElf !Hunter
    #sticky
    .goto Darkshore,36.77,44.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Buy up to 40|r |T133918:0|t[Longjaw Mud Snappers]
    .collect 4592,40 --Longjaw Mud Snapper (40)
    .target Laird
    .subzoneskip 442,1
step
    .goto Darkshore,37.78,44.06
    .use 14338 >>|cRXP_WARN_Use the|r |T134865:0|t[Empty Water Tube] |cRXP_WARN_at the|r |cRXP_PICK_Auberdine Moonwell|r
    .complete 4812,1
step << Hunter/Druid
    #completewith MeatFangEggHuntDru
    >>Kill |cRXP_ENEMY_Foreststriders|r and |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    >>Kill |cRXP_ENEMY_Moonkin|r. Loot them for their |T132832:0|t[|cRXP_LOOT_Small Eggs|r]
    .skill cooking,10,1 -- step only displays if cooking skill is less than 10
    .collect 6889,10,2178,1,0x21,cooking -- Small Egg
    .collect 5469,5,2178,1 -- Strider Meat
    .mob +Foreststrider Fledgling
    .mob +Foreststrider
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
step << Hunter/Druid
    #completewith MeatFangEggHuntDru
    >>Kill |cRXP_ENEMY_Foreststriders|r and |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher than x
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step << Hunter/Druid
    #xprate <1.5
    #completewith MeatFangEggHuntDru
    >>Kill |cRXP_ENEMY_Moonstalkers|r and |cRXP_ENEMY_Moonstalker Runts|r. Loot them for their |cRXP_LOOT_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step << Hunter/Druid
#map Darkshore
    #completewith next
    .goto Felwood,31.29,24.14,15 >> Travel to The Red Crystal again
step << Hunter/Druid
#map Darkshore
    .goto Felwood,31.29,24.14
    >>Click the |cRXP_PICK_Mysterious Red Crystal|r
    .turnin 4812 >> Turn in As Water Cascades
    .accept 4813 >> Accept The Fragments Within
step << Hunter/Druid
#map Darkshore
    #label MeatFangEggHuntDru
    #completewith next
    .goto Felwood,20.34,18.12,100 >> Travel to Auberdine
step << Hunter/Druid
    .goto Darkshore,37.70,43.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4813 >> Turn in The Fragments Within
    .target Sentinel Glynda Nal'Shea
step << Druid
#map Darkshore
    .goto Felwood,19.27,19.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laird|r
    .accept 6343 >> Accept Return to Nessa
    .target Laird
step << Druid
#map Darkshore
    #xprate <1.5
    .goto Felwood,22.39,29.45
    .xp 14-1890
step << Druid
#map Darkshore
    #xprate >1.49
    .goto Felwood,22.39,29.45
    .xp 14-1260
step << Druid
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Fly to Teldrassil
    .target Caylais Moonfeather
step << Druid
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6343 >> Turn in Return to Nessa
    .target Nessa Shadowsong
step << Druid
    #completewith next
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Take the purple portal into Darnassus
step << Druid
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .turnin 6001 >> Turn in Body and Heart
    .accept 6121 >> Accept Lessons Anew
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
    .target Dendrite Starblaze
step << Druid
    #completewith Tysha
    .hs >> Hearth to Darkshore
step
    #completewith Tysha
    >>Kill |cRXP_ENEMY_Foreststriders|r and |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #xprate <1.5
    #completewith Tysha
    >>Kill |cRXP_ENEMY_Moonstalkers|r and |cRXP_ENEMY_Moonstalker Runts|r. Loot them for their |cRXP_LOOT_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step << Druid/Hunter
    #season 2
    #sticky
    #label treats1
    .goto Darkshore,39.84,53.82,50,0
    .goto Darkshore,40.03,56.24,50,0
    .goto Darkshore,39.34,56.58,50,0
    .goto Darkshore,39.84,53.82
    >>Kill |cRXP_ENEMY_Blackwood Pathfinders|r and |cRXP_ENEMY_Blackwood Windtalkers|r. Loot them for their |T237270:0|t[|cRXP_LOOT_Crab Treats|r]
    .collect 209027,1 -- Crab Treats (1)
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .train 416049,1 << Druid
    .train 410110,1 << Hunter
step
    >>Kill |cRXP_ENEMY_Blackwood Pathfinders|r and |cRXP_ENEMY_Blackwood Windtalkers|r
    .goto Darkshore,39.84,53.82,50,0
    .goto Darkshore,40.03,56.24,50,0
    .goto Darkshore,39.34,56.58,50,0
    .goto Darkshore,39.84,53.82
    .complete 985,1 -- Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
step << Druid/Hunter
    #season 2
    #requires treats1
    .goto Darkshore,35.8,55.6
    .use 209027 >> |cRXP_WARN_Use the|r |T237270:0|t[|cRXP_LOOT_Crab Treats|r] |cRXP_WARN_on a |cRXP_ENEMY_Young Reef Crawler|r to receive the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Lacerate|r] << Druid
    .use 209027 >> |cRXP_WARN_Use the|r |T237270:0|t[|cRXP_LOOT_Crab Treats|r] |cRXP_WARN_on a |cRXP_ENEMY_Young Reef Crawler|r to receive the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Beast Mastery|r] << Hunter
    .collect 208687,1 << Druid -- Rune of Lacerate (1)
    .collect 208701,1 << Hunter -- Beast Mastery (1)
    .target Young Reef Crawler
    .train 416049,1 << Druid
    .train 410110,1 << Hunter
step << Druid/Hunter
    #season 2
    .train 416049 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Lacerate|r] |cRXP_WARN_to train|r |T132131:0|t[Lacerate] << Druid
    .use 208687 << Druid
    .itemcount 208687,1 << Druid
    .train 410110 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Beast Mastery|r] |cRXP_WARN_to train|r |T132270:0|t[Beast Mastery] << Hunter
    .use 208701 << Hunter
    .itemcount 208701,1 << Hunter
step
    #completewith Tysha
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
#map Darkshore
    .goto Felwood,19.64,39.52
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4722 >> Accept Beached Sea Turtle
step
    #label Tysha
    .goto Darkshore,40.30,59.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .accept 953 >> Accept The Fall of Ameth'Aran
    .target Sentinel Tysha Moonblade
step
#optional
    #completewith TheLay
    >>Kill |cRXP_ENEMY_Anaya Dawnrunner|r. Loot her for her |cRXP_LOOT_Pendant|r
    >>|cRXP_ENEMY_Anaya Dawnrunner|r |cRXP_WARN_patrols Ameth'Aran|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
#optional
    #completewith TheLay
    >>Kill |cRXP_ENEMY_Cursed Highbornes|r, |cRXP_ENEMY_Writhing Highbornes|r and |cRXP_ENEMY_Wailing Highbornes|r. Loot them for their |cRXP_LOOT_Relics|r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
    .isOnQuest 958
step
#map Darkshore
    .goto Felwood,25.98,40.62
    >>Click the |cRXP_PICK_The Fall of Ameth'Aran|r
    .complete 953,2 -- The Fall of Ameth'Aran
step
#xprate <1.5 << !NightElf
#map Darkshore
    .goto Felwood,25.66,39.11
    >>Click the |cRXP_PICK_Ancient Flame|r
    .complete 957,1
    .isOnQuest 957
step
    #label TheLay
    .goto Darkshore,43.30,58.70
    >>Click the |cRXP_PICK_The Lay of Ameth'Aran|r
    .complete 953,1 -- The Lay of Ameth'Aran
step
#optional
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
    .isOnQuest 958
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
    >>|cRXP_ENEMY_Anaya Dawnrunner|r |cRXP_WARN_patrols Ameth'Aran|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
#map Darkshore
    .goto Felwood,23.29,36.73
    .target Sentinel Tysha Moonblade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Tysha Moonblade|r
    .turnin 953 >> Turn in The Fall of Ameth'Aran
step
    #xprate <1.5
    #completewith ALostMaster
    >>Kill |cRXP_ENEMY_Moonstalkers|r and |cRXP_ENEMY_Moonstalker Runts|r. Loot them for their |cRXP_LOOT_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
    #completewith ALostMaster
    >>Kill |cRXP_ENEMY_Foreststriders|r and |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher than x
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #completewith next
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67,60,0
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67
    >>Kill |cRXP_ENEMY_Moonkin|r. Loot them for their |T132832:0|t[|cRXP_LOOT_Small Eggs|r]
    .skill cooking,10,1 -- step only displays if cooking skill is less than 10
    .collect 6889,10,2178,1,0x21,cooking -- Small Egg
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
step
#optional
    #completewith next
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r
    >>|cRXP_WARN_Prioritize grinding the hyperspawn |cRXP_ENEMY_Furbolgs|r for better xp/hr rather than running around and looking for |cRXP_ENEMY_Bears|r. You will kill them later|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
#map Darkshore
    #xprate <1.5
    #label xp15
    #requires ghosts
    .goto Felwood,22.39,29.45
    .xp 15.75 >> Grind to level 15 + 75%
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
step
#map Darkshore
    #label xp15
    #xprate >1.49
    .goto Felwood,22.39,29.45
    .xp 15-3245 >> Grind until you are 3245xp away from level 15
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
step
#optional
    #completewith ALostMaster
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << !Hunter !Druid
#map Darkshore
    #completewith next
    .goto Felwood,31.29,24.14,15 >> Travel to The Red Crystal again
step << !Hunter !Druid
#map Darkshore
    .goto Felwood,31.29,24.14
    >>Click the |cRXP_PICK_Mysterious Red Crystal|r
    .turnin 4812 >> Turn in As Water Cascades
    .accept 4813 >> Accept The Fragments Within
step
    #label ALostMaster
    #completewith TOTH
    .subzone 442 >> Travel to Auberdine
step
#map Darkshore
    #optional
    .isQuestComplete 2138
    .goto Felwood,21.63,18.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Turn in Cleansing of the Infected
    .accept 2139 >> Accept Tharnariun's Hope
    .target Tharnariun Treetender
step
#map Darkshore
    #optional
    .isQuestTurnedIn 2138
    .goto Felwood,21.63,18.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2139 >> Accept Tharnariun's Hope
    .target Tharnariun Treetender
step
#map Darkshore
    .goto Felwood,22.24,18.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >> Turn in How Big a Threat?
    .accept 986 >> Accept A Lost Master
    .target Terenthis
step
#map Darkshore
    .goto Darkshore,39.26,43.04,5,0
    .goto Felwood,21.86,18.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Elissa Starbreeze|r up stairs
    .accept 965 >> Accept The Tower of Althalaxx
    .target Sentinel Elissa Starbreeze
step << !Druid !Hunter
    .goto Darkshore,37.70,43.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4813 >> Turn in The Fragments Within
    .target Sentinel Glynda Nal'Shea
step
#map Darkshore
    .isQuestComplete 963
    .goto Felwood,18.10,18.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cerellean Whiteclaw|r
    .turnin 963 >> Turn in For Love Eternal
    .target Cerellean Whiteclaw
step
#map Darkshore
    .goto Felwood,18.50,19.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Accept Fruit of the Sea
    .target Gubber Blump
step
#map Darkshore
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >> Turn in Beached Sea Turtle
    .turnin -4723 >> Turn in Beached Sea Creature
    .target Gwennyth Bly'Leggonde
step << NightElf
#xprate <1.5
#map Darkshore
    .goto Felwood,20.80,15.58
    .target Gorbold Steelhand
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .accept 982 >> Accept Deep Ocean, Vast Sea
step << !NightElf
#xprate <1.5
#map Darkshore
    .goto Felwood,20.80,15.58
    .target Gorbold Steelhand
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >> Turn in Deep Ocean, Vast Sea
step
#xprate <1.5
#map Darkshore
    #completewith next
    .goto Felwood,20.80,15.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .vendor 6301 >> |cRXP_BUY_Buy|r |T134059:0|t[Mild Spices]
    >>|cRXP_WARN_Use the|r |T134059:0|t[Mild Spices] |cRXP_WARN_and your|r |T132832:0|t[Small Eggs] |cRXP_WARN_to make|r |T132834:0|t[Herb Baked Eggs]|cRXP_WARN_. Do this until your|r |T133971:0|t[Cooking] |cRXP_WARN_has reached level 10|r
    >>|cRXP_WARN_Continue leveling your|r |T133971:0|t[Cooking] |cRXP_WARN_passed 10. There is a quest in Duskwood which requires your|r |T133971:0|t[Cooking] |cRXP_WARN_to be 50. You can also do this while you are on the boat soon|r
    .skill cooking,50,1
    .target Gorbold Steelhand
    .itemcount 6889,>4 -- Small Egg
step
#xprate <1.5
    .goto Darkshore,37.514,41.671
    +|cRXP_WARN_Use your|r |T133971:0|t[Cooking] |cRXP_WARN_profession to make|r |T132834:0|t[Herb Baked Eggs]|cRXP_WARN_. Do this until your|r |T133971:0|t[Cooking] |cRXP_WARN_has reached level 10|r
    >>|cRXP_WARN_Continue leveling your|r |T133971:0|t[Cooking] |cRXP_WARN_passed 10. There is a quest in Duskwood which requires your|r |T133971:0|t[Cooking] |cRXP_WARN_to be 50. You can also do this while you are on the boat soon|r
    .skill cooking,50,1
    .target Gorbold Steelhand
    .itemcount 6889,>4 -- Small Egg
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Accept Easy Strider Living
    .turnin 2178 >> Turn in Easy Strider Living
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher than x
    .itemcount 5469,5 -- Strider Meat (5)
    .target Alanndarian Nightsong
step
#map Darkshore
    #label TOTH
    .goto Felwood,19.98,14.40
    .target Thundris Windweaver
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 958 >> Turn in Tools of the Highborne
step
    #completewith next << !NightElf
    #completewith NEShip << NightElf
    >>Kill |cRXP_ENEMY_Foreststriders|r and |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step << NightElf
#xprate <1.5
    #completewith NEShip
    >>Kill |cRXP_ENEMY_Moonstalkers|r and |cRXP_ENEMY_Moonstalker Runts|r. Loot them for their |cRXP_LOOT_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step << NightElf
#xprate <1.5
    #label NEShip
    #completewith next
    .goto Darkshore,38.95,29.36,30 >> Swim to the wrecked Silver Dawning ship
step << NightElf
#xprate <1.5
#map Darkshore
    .goto Darkshore,38.95,29.36,10,0
    .goto Felwood,20.94,1.49
    >>|cRXP_WARN_Enter the wrecked Silver Dawning ship through the broken hull on the bottom. Make sure you have a full breath bar before diving down and entering|r
    >>Loot the |cRXP_LOOT_Silver Dawning's Lockbox|r on the ground
    .complete 982,1
step << NightElf
#xprate <1.5
    #completewith next
    .goto Darkshore,40.30,27.56,30 >> Swim to the wrecked Mist Veil ship
step << NightElf
#xprate <1.5
    #label MistVeil
    .goto Darkshore,40.30,27.56,10,0
    .goto Darkshore,39.63,27.45
    >>|cRXP_WARN_Enter the wrecked Mist Veil ship through the broken hull on the bottom. Make sure you have a full breath bar before diving down and entering|r
    >>Loot the |cRXP_LOOT_Mist Veil's Lockbox|r on the ground
    .complete 982,2
step
#xprate >1.49
#map Darkshore
    .goto Felwood,25.15,4.61
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4723 >> Accept Beached Sea Creature
step
    #completewith StalkerFangs
    >>Kill |cRXP_ENEMY_Foreststriders|r and |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #xprate <1.5
    #completewith end1
    >>Kill |cRXP_ENEMY_Moonstalkers|r and |cRXP_ENEMY_Moonstalker Runts|r. Loot them for their |cRXP_LOOT_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
    .isOnQuest 1002
step << !Druid !Hunter
#map Darkshore
    .goto Felwood,27.70,10.03
    .target Asterion
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >> Turn in Bashal'Aran
    .isOnQuest 957
step
    #sticky
    #completewith end1
    #completewith Tower1 << NightElf Hunter/Druid
    #label bears
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    .goto Darkshore,44.18,20.60
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4725 >> Accept Beached Sea Turtle
step
    #completewith next
    >>Kill |cRXP_ENEMY_Reef Crawlers|r. Loot them for their |cRXP_LOOT_Crab Chunks|r
    >>|cRXP_WARN_Do not go out of your way to complete this now|r
    .complete 1138,1
    .mob Reef Crawler
step
    .goto Darkshore,50.81,25.50
    .use 12350 >>|cRXP_WARN_Use the|r |T134865:0|t[Empty Sampling Tube] |cRXP_WARN_at the base of the Cliffspring River|r
    .complete 4762,1
step
#map Darkshore
    #softcore
	#xprate <1.5
    #label StalkerFangs
    .goto Winterspring,1.42,26.89
    >>Click the |cRXP_PICK_Buzzbox 323|r on the ground
    .turnin 1002 >> Turn in Buzzbox 323
    .accept 1003 >> Accept Buzzbox 525
    .itemcount 5413,6 -- skips step if they don't have 6 fangs
step
#map Darkshore
    #hardcore
    #xprate <1.5
    #label StalkerFangs
    .goto Winterspring,1.42,26.89
    >>Click the |cRXP_PICK_Buzzbox 323|r on the ground
    .turnin 1002 >> Turn in Buzzbox 323
    .accept 1003 >> Accept Buzzbox 525
step << NightElf Hunter/Druid
    #completewith next
    >>Kill |cRXP_ENEMY_Foreststriders|r and |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step << NightElf Hunter/Druid
#map Darkshore
#xprate <1.5 << Druid
    #label Tower1
    .goto Winterspring,4.82,27.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 965 >> Turn in The Tower of Althalaxx
    .accept 966 >> Accept The Tower of Althalaxx
    .target Balthule Shadowstrike
step << NightElf Hunter/Druid
#xprate <1.5 << Druid
    .goto Darkshore,55.27,27.74,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,57.54,25.99,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,55.27,27.74
    >>Kill |cRXP_ENEMY_Dark Strand Fanatics|r. Loot them for their |cRXP_LOOT_Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step << NightElf Hunter/Druid
#xprate <1.5 << Druid
#map Darkshore
    .goto Winterspring,4.82,27.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 966 >> Turn in The Tower of Althalaxx
    .accept 967 >> Accept The Tower of Althalaxx
    .target Balthule Shadowstrike
step
    .goto Darkshore,49.24,27.47,60,0
    .goto Darkshore,48.70,31.82,60,0
    .goto Darkshore,50.72,30.35
    >>Kill |cRXP_ENEMY_Foreststriders|r and |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
#map Darkshore
    #completewith next
    #label end1
    .goto Darkshore,54.99,32.94,30,0
    .goto Darkshore,54.99,33.41,15 >> Travel to the Cliffspring River Cave
step << Druid
    >>|cRXP_WARN_Use the|r |T134776:0|t[Empty Cliffspring Falls Sampler] |cRXP_WARN_in the water at the entrance of the Cliffspring River Cave|r
    .goto Darkshore,54.99,33.41
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
step << Warrior
    #season 2
    #completewith next
    .goto Darkshore,55.40,36.05
    >>Kill |cRXP_ENEMY_Lady Sedorax|r. Loot her for the |T132347:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r]
    >>|cRXP_ENEMY_Lady Sedorax|r |cRXP_WARN_is a level 18 elite which also has other mobs around it. You may instead opt to get it from Westfall which is much easier|r
    .collect 208741,1 -- Rune of Endless Rage (1)
    .unitscan Lady Sedorax
    .train 403489,1
step
    .goto Darkshore,55.66,34.89
    >>Loot the |cRXP_LOOT_Scaber Stalks|r and |cRXP_LOOT_Death Cap|r on the ground
    >>|cRXP_WARN_Stay on the upper section. If the |cRXP_LOOT_Death Cap|r is not at the end of the top side, drop down and get one from below|r
    >>|cRXP_WARN_Don't face your back to the center! |cRXP_ENEMY_Stormscale Wave Rider's|r can knock you back!|r
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
step << Warrior
    #season 2
    .goto Darkshore,55.40,36.05
    >>Kill |cRXP_ENEMY_Lady Sedorax|r. Loot her for the |T132347:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r]
    >>|cRXP_ENEMY_Lady Sedorax|r |cRXP_WARN_is a level 18 elite which also has other mobs around it. You may instead opt to get it from Westfall which is much easier|r
    .collect 208741,1 -- Rune of Endless Rage (1)
    .unitscan Lady Sedorax
    .train 403489,1
step << Warrior
    #season 2
    .train 403489 >>|cRXP_WARN_Use the|r |T132347:0|t[|cRXP_FRIENDLY_Rune of Endless Rage|r] |cRXP_WARN_to train|r |T132347:0|t[Endless Rage]
    .use 208741
    .itemcount 208741,1
step << NightElf !Druid
    #softcore
    #completewith next
    +Grind until your HS cooldown is <6 minutes
    .cooldown item,6948,<360
step << NightElf !Druid
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << Druid
    #softcore
    #completewith next
    +Grind until your HS cooldown is <9 minutes
    .cooldown item,6948,<540
step << NightElf
    #hardcore
    #completewith next
    +Grind until your HS cooldown is <9 minutes
    .cooldown item,6948,<540
step
    #xprate <1.5
    #completewith CavetoAuber
    >>Kill |cRXP_ENEMY_Moonstalkers|r and |cRXP_ENEMY_Moonstalker Runts|r. Loot them for their |cRXP_LOOT_Fangs|r
    >>|cRXP_WARN_Don't go out of your way to finish this now. Just kill what you see along the way to Auberdine|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
    .isOnQuest 1002
step
    #completewith CavetoAuber
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r
    >>|cRXP_WARN_Don't go out of your way to finish this now. Just kill what you see along the way to Auberdine|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
    .isOnQuest 2138
step
    #label CavetoAuber
    #completewith darkshoret1n
    .subzone 442 >> Travel to Auberdine
step
#map Darkshore
    .isQuestComplete 2138
    .goto Felwood,21.63,18.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Turn in Cleansing of the Infected
    .accept 2139 >> Accept Tharnariun's Hope
    .target Tharnariun Treetender
step
#map Darkshore
    .isQuestTurnedIn 2138
    .goto Felwood,21.63,18.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .accept 2139 >> Accept Tharnariun's Hope
    .target Tharnariun Treetender
step
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 2178 >> Accept Easy Strider Living
    .turnin 2178 >> Turn in Easy Strider Living
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher than x
    .target Alanndarian Nightsong
step
#label darkshoret1n
#map Darkshore
    .goto Felwood,19.98,14.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4762 >> Turn in The Cliffspring River
    .target Thundris Windweaver
    .accept 4763 >> Accept The Blackwood Corrupted
step << Druid
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 6122 >> Turn in The Principal Source
    .target Alanndarian Nightsong
    .accept 6123 >> Accept Gathering the Cure
step
#xprate <1.5
#map Darkshore
    .goto Felwood,20.80,15.58
    .target Gorbold Steelhand
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .turnin 982 >> Turn in Deep Ocean, Vast Sea
step
    .goto Darkshore,37.70,43.39
    .target Sentinel Glynda Nal'Shea
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4813 >> Turn in The Fragments Within
step << !NightElf
#map Darkshore
    .goto Felwood,20.04,16.35
    .target Archaeologist Hollee
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >> Accept The Absent Minded Prospector
step
    .goto Darkshore,37.78,44.06
    .use 12346 >>|cRXP_WARN_Use the|r |T133748:0|t[Empty Cleansing Bowl] |cRXP_WARN_at the|r |cRXP_PICK_Auberdine Moonwell|r
    .collect 12347,1,4763,1
    .isOnQuest 4763
step
#map Darkshore
    .goto Felwood,19.90,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barithras Moonshade|r
    .turnin 947 >> Turn in Cave Mushrooms
    .target Barithras Moonshade
    .accept 948 >> Accept Onu
step
    .goto Darkshore,37.21,44.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick on |cRXP_FRIENDLY_The Wanted Poster|r
    .accept 4740 >> Accept WANTED: Murkdeep!
step << NightElf !Druid
    .goto Felwood,19.27,19.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laird|r
    .accept 6343 >> Accept Return to Nessa
    .target Laird
step
#map Darkshore
    .goto Felwood,18.50,19.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Turn in Fruit of the Sea
    .isQuestComplete 1138
    .target Gubber Blump
step
#map Darkshore
    #label end
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4723 >> Turn in Beached Sea Creature
    .turnin 4725 >> Turn in Beached Sea Turtle
    .target Gwennyth Bly'Leggonde
step << Druid
#map Darkshore
    .goto Felwood,22.39,29.45
    .xp 16 >> Grind to level 16
step << Druid
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Fly to Teldrassil
    .target Caylais Moonfeather
step << Druid
    #completewith next
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Take the purple portal into Darnassus
step << Druid
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mathrengyl Bearwalker|r
    .accept 26 >> Accept A Lesson to Learn
    .trainer >> Train your class spells
    .target Mathrengyl Bearwalker
step << Druid
    .goto Darnassus,66.0,60.6
    >>|cRXP_WARN_Buy and equip a|r |T135147:0|t[Gnarled Staff]
    .collect 2030,1
    .money <0.56
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Druid
    #completewith next
    +|cRXP_WARN_Equip the|r |T135147:0|t[Gnarled Staff]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.89
step << Druid
    #optional
    #completewith next
    .abandon 729 >> Abandon The Absent Minded Prospector to accept the quest Trouble In Darkshore?
step << Druid
    .goto Teldrassil,23.70,64.51
    .target Chief Archaeologist Greywhisker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
    .accept 730 >> Accept Trouble In Darkshore?
step << Druid
    #season 2
    #completewith next
    +You will now go to Teldrassil to get |T133816:0|t[Engrave Gloves - Mangle]
    .train 410025,1
step << Druid
    #season 2
    .goto 1438,40.411,54.076
    .subzone 141 >> Travel to Teldrassil
    .subzoneskip 262
    .train 410025,1
step << Druid
    #season 2
    #label Banethil1
    #completewith Rune
    .goto 1438,40.411,54.076,40,0
    .goto 1438,42.225,54.161,40,0
    .goto 1438,44.474,56.354,40,0
    .goto 1438,44.197,58.040
    .subzone 262 >> Enter the Ban'ethil Barrow Den
    .train 410025,1
step << Druid
    #season 2
    #optional
    #requires Banethil1
    #label Banethil2
    #completewith Rune
    .goto 1438,44.197,58.040
    .subzone 262 >> Enter the Ban'ethil Barrow Den
    .train 410025,1
step << Druid
    #season 2
    #optional
    #requires Banethil2
    #completewith Rune
    .goto 1438,44.064,58.196,15,0
    .goto 1438,43.975,58.537,15,0
    .goto 1438,44.196,58.597,15,0
    .goto 1438,44.167,58.204,15,0
    .goto 1438,43.073,59.123,15,0
    .goto 1438,43.399,59.885,15,0
    .goto 1438,43.602,59.799,15,0
    .goto 1438,44.254,59.083,15,0
    .goto 1438,44.292,58.555,15,0
    .goto 1438,43.944,57.918,15,0
    .goto 1438,43.947,57.297,15,0
    .goto 1438,44.731,57.355,15,0
    .goto 1438,45.118,57.701,20 >> Travel towards |cRXP_ENEMY_Rageclaw|r inside
    .train 410025,1
step << Druid
    #season 2
    #loop
    .line 1438,45.055,57.739,45.008,58.055,45.091,58.386,45.256,58.538,45.492,58.609,45.668,58.356,45.702,57.980,45.604,57.699,45.370,57.566,45.161,57.638,45.118,57.701
    .goto 1438,45.055,57.739,12,0
    .goto 1438,45.008,58.055,12,0
    .goto 1438,45.091,58.386,12,0
    .goto 1438,45.256,58.538,12,0
    .goto 1438,45.492,58.609,12,0
    .goto 1438,45.668,58.356,12,0
    .goto 1438,45.702,57.980,12,0
    .goto 1438,45.604,57.699,12,0
    .goto 1438,45.370,57.566,12,0
    .goto 1438,45.161,57.638,12,0
    .goto 1438,45.118,57.701,12,0
    >>Kill |cRXP_ENEMY_Rageclaw|r on the bottom floor inside. Loot him for the |T136061:0|t|cRXP_LOOT_[Idol of Ursine Rage]|r
    .collect 206954,1 -- Idol of Ursine Rage (1)
    .mob Rageclaw
    .train 410025,1
step << Druid
    #season 2
    .equip 18,206954 >> |cRXP_WARN_Equip the|r |T136061:0|t|cRXP_LOOT_[Idol of Ursine Rage]|r
    .use 206954
    .itemcount 206954,1
    .train 410025,1
step << Druid
    #season 2
    .goto 1438,44.731,57.355,0
    .goto 1438,44.254,59.083,0
    .goto 1438,44.064,58.196,0
    .goto 1438,44.731,57.355,15,0
    .goto 1438,43.947,57.297,15,0
    .goto 1438,43.944,57.918,15,0
    .goto 1438,44.292,58.555,15,0
    .goto 1438,44.254,59.083,15,0
    .goto 1438,43.602,59.799,15,0
    .goto 1438,43.399,59.885,15,0
    .goto 1438,43.073,59.123,15,0
    .goto 1438,44.167,58.204,15,0
    .goto 1438,44.196,58.597,15,0
    .goto 1438,43.975,58.537,15,0
    .goto 1438,44.064,58.196,15,0
    .aura 414824 >>|cRXP_WARN_While in|r |T132276:0|t[Bear Form]|cRXP_WARN_, maintain 50 or more Rage for 60 seconds|r
    .itemStat 18,QUALITY,2
    .train 410025,1
step << Druid
    #season 2
    .train 410025 >>|cRXP_WARN_Use the|r |T136061:0|t|cRXP_LOOT_[Idol of Ursine Rage]|r |cRXP_WARN_to learn|r |T132135:0|t[Mangle]
    .use 206954
    .aura -414824
step << Druid
	#completewith TotL
	.cast 18960 >> Cast Teleport: Moonglade
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.1,30.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze|r
    .turnin 26 >> Turn in A Lesson to Learn
    .target Dendrite Starblaze
    .accept 29 >> Accept Trial of the Lake
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
    #label TotL
    .goto Moonglade,36.517,40.104
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tajarri|r
    .turnin 29 >> Turn in Trial of the Lake
    .target Tajarri
    .accept 272 >> Accept Trial of the Sea Lion
step << Druid
    .hs >> Hearth to Darkshore
]])

RXPGuides.RegisterGuide([[
#classic
#xprate <1.5
<< Alliance
#name 13-15 Westfall
#displayname 14-15 Westfall << Dwarf/Gnome
#version 1
#group RestedXP Alliance 1-20
#defaultfor !NightElf !Hunter
#next 14-16 Darkshore

step
    #sticky
    .goto Elwynn Forest,19.00,81.00
    .zone Westfall >> Travel to Westfall
step
    .goto Westfall,59.95,19.35
    .target Farmer Furlbrow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r
    .accept 64 >> Accept The Forgotten Heirloom
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
step << Gnome/Dwarf
    #completewith next
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
    #xprate <1.2
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
    >>|cRXP_BUY_Buy food/water if needed|r
    .vendor >>|T133918:0|t[Longjaw Mud Snapper] |cRXP_WARN_is very cheap|r
	.target Innkeeper Heather
step << Human Paladin
    #season 2
    #completewith next
    #label Island
    .goto Duskwood,4.33,28.26,50 >>Travel toward |cRXP_FRIENDLY_Ada Gelhardt|r on the island
    .train 410015,1
    .itemcount 205864,1 --Charred Note (1)
step << Human Paladin
    #season 2
    #completewith next
    .goto Duskwood,4.33,28.26
    .gossipoption 109610 >>Talk to |cRXP_FRIENDLY_Ada Gelhardt|r to start a fight
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
    .itemcount 205864,1 --Charred Note (1)
--XX 109612 "As one candle is snuffed out, another is lit"
--XX 109611 "I've been sent by brother Romulus. Please, Ada, return with me to the Cathedral of Light"
--XX 109610 "I see. I'm sorry it has come to this, sister. (Fight Ada)"
step << Human Paladin
    #season 2
    #requires Island
    .goto Duskwood,4.33,28.26
    >>Defeat |cRXP_ENEMY_Ada Gelhardt|r
    >>|cRXP_WARN_Remember to pre-cast|r |T135924:0|t[Seal of the Crusader] |cRXP_WARN_on her|r
    >>|cRXP_WARN_Be careful as she casts|r |T136197:0|t[Shadow Shock] |cRXP_WARN_(instantly deals 45 shadow damage. Costs her 75 mana. You should kill her quick enough for her to only cast it 3 times)|r
    >>|cRXP_WARN_After defeating |cRXP_ENEMY_Ada Gelhardt|r:|r
    >>Talk to |cRXP_FRIENDLY_Ada Gelhardt|r again to receive the |T134419:0|t[Rune of Martyrdom]
    .collect 205897,1 --Rune of Martyrdom (1)
    .target Ada Gelhardt
    .skipgossip 205153,1
    .train 410015,1
    .itemcount 205864,1 --Charred Note (1)
--XX Must have had the Charred Note to unlock the dialogue
step << Human Paladin
    #season 2
    #sticky
    .destroy 205864 >> Delete the |T134939:0|t[Charred Note] from your bags, as it's no longer needed
step << Human Paladin
    #season 2
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[Rune of Martyrdom] |cRXP_WARN_to learn|r |T133815:0|t[Engrave Chest - Seal of Martyrdom]
    .use 205897
    .itemcount 205897,1 --Rune of Martyrdom (1)
    .train 410015,1
step << Human Paladin
    #season 2
    .goto Westfall,36.24,54.52
    .engrave 5 >>|cRXP_WARN_Engrave your|r |T134596:0|t|cRXP_LOOT_[Chest]|r with|r |T133815:0|t[Engrave Chest - Seal of Martyrdom]
    >>|cRXP_WARN_Remember to put|r |T135961:0|t[Seal of Martyrdom] |cRXP_WARN_onto your action bars. It is better than both|r |T132325:0|t[Seal of Righteousness] |cRXP_WARN_and|r |T132347:0|t[Seal of Command] |cRXP_WARN_(until you get|r |T133815:0|t[Engrave Chest - Divine Storm]|cRXP_WARN_)|r
    .train 410015,3
step
	#completewith GnollPaws
    >>Open the |cRXP_PICK_Sacks of Oats|r on the ground. Loot them for the |cRXP_LOOT_Handful of Oats|r
    >>|cRXP_WARN_You can usually find them near Farm Fences or Buildings|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith HarvestW
    >>Kill |cRXP_ENEMY_Young Goretusks|r and |cRXP_ENEMY_Young Fleshrippers|r. Loot them for their |cRXP_LOOT_Vulture Meat|r, |cRXP_LOOT_Snouts|r and |cRXP_LOOT_Livers|r
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .collect 731,3,38,1 --Goretusk Snout (3)
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob Young Goretusk
    .mob Goretusk
    .mob Young Fleshripper
    .mob Fleshripper
step
    #completewith bennytime
    >>Kill |cRXP_ENEMY_Defias Trappers|r and |cRXP_ENEMY_Defias Smugglers|r. Loot them for their |cRXP_LOOT_Red Leather Bandanas|r
    .complete 12,1 -- Defias Trapper slain (15)
    .complete 12,2 -- Defias Smuggler slain (15)
    .complete 153,1 -- Red Leather Bandana (15)
    .mob Defias Trapper
    .mob Defias Smuggler
step << Mage
    #season 2
    #completewith next
    >>Kill |cRXP_ENEMY_Defias Pillagers|r. Loot them for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: TENGI RONEERA|r]
    .collect 208754,1
    .mob Defias Pillager
    .train 401767,1
step
    .goto Westfall,36.24,54.52
    >>Open |cRXP_PICK_Alexston's Chest|r. Loot it for |cRXP_LOOT_A Simple Compass|r
    .complete 399,1 --A Simple Compass (1)
    .isOnQuest 399
step << Mage
    #season 2
    .goto Westfall,36.0,55.4,50,0
    .goto Westfall,38.0,57.2,50,0
    .goto Westfall,36.0,55.4
    >>Kill |cRXP_ENEMY_Defias Pillagers|r. Loot them for the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: TENGI RONEERA|r]
    .collect 208754,1
    .mob Defias Pillager
    .train 401767,1
step << Mage
    #season 2
    #completewith GnollPaws
    .collect 211779,1 >>You need a |T135933:0|t[Comprehension Charm] from a |cRXP_FRIENDLY_Reagent Vendor|r to use the |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: TENGI RONEERA|r]
    .train 401767 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: TENGI RONEERA|r] |cRXP_WARN_to train|r |T132871:0|t[Regeneration]
    .use 208754
step
	#label bennytime
    .goto Westfall,49.34,19.27
    >>Open |cRXP_PICK_Furlbrow's Wardrobe|r. Loot it for |cRXP_LOOT_Furlbrow's Pocket Watch|r
    >>|cRXP_WARN_You can loot |cRXP_PICK_Furlbrow's Wardrobe|r from outside if you angle your camera correctly|r
	>>|cRXP_WARN_Be aware of |cRXP_ENEMY_Benny Blanco|r. He hits hard|r
    .complete 64,1 --Furlbrow's Pocket Watch
step
    #completewith FurlbrowFarm
    >>Kill |cRXP_ENEMY_Harvest Watchers|r. Loot them for their |cRXP_LOOT_Okra|r and |cRXP_LOOT_Flasks of Oil|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
    .isQuestAvailable 38
    .mob Harvest Watcher
step
    #completewith FurlbrowFarm
    .isQuestTurnedIn 38
    >>Kill |cRXP_ENEMY_Harvest Watchers|r. Loot them for their |cRXP_LOOT_Flasks of Oil|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5,103,1 --Flask of Oil (5)
    .mob Harvest Watcher
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
    #xprate <1.2
    #completewith next
    >>Kill |cRXP_ENEMY_Riverpaw Gnolls|r and |cRXP_ENEMY_Riverpaw Scouts|r. Loot them for their |cRXP_LOOT_Gnoll Paws|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
step
    .goto Westfall,52.13,10.36,60,0
    .goto Westfall,56.40,9.40,60,0
    .goto Westfall,52.13,10.36,60,0
    .goto Westfall,56.40,9.40,60,0
    .goto Westfall,52.13,10.36
    .goto Westfall,56.40,9.40,0
    >>Kill |cRXP_ENEMY_Murloc Raiders|r and |cRXP_ENEMY_Murloc Coastrunners|r. Loot them for their |cRXP_LOOT_Eyes|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .mob Murloc Raider
    .mob Murloc Coastrunner
step
    #xprate <1.2
    #label GnollPaws
    .goto Westfall,56.40,13.50,60,0
    .goto Westfall,42.82,14.70,60,0
    .goto Westfall,45.83,13.75,60,0
    .goto Westfall,52.36,14.82,60,0
    .goto Westfall,56.86,13.53,60,0
    .goto Westfall,56.86,13.53,60,0
    .goto Westfall,42.82,14.70,60,0
    .goto Westfall,52.36,14.82,60,0
    .goto Westfall,45.83,13.75
    .goto Westfall,42.82,14.70,0
    .goto Westfall,52.36,14.82,0
    .goto Westfall,56.81,13.30,0
    >>Kill |cRXP_ENEMY_Riverpaw Gnolls|r and |cRXP_ENEMY_Riverpaw Scouts|r. Loot them for their |cRXP_LOOT_Gnoll Paws|r
    .complete 102,1 --Gnoll Paw (8)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
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
    #xprate <1.2
    #label FurlbrowFarm
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r and |cRXP_FRIENDLY_Verna Furlbrow|r
    .turnin 64 >> Turn in The Forgotten Heirloom
    .goto Westfall,59.95,19.35
    .turnin 151 >> Turn in Poor Old Blanchy
    .goto Westfall,59.92,19.42
    .target Farmer Furlbrow
	.target Verna Furlbrow
step
    #xprate >1.1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r and |cRXP_FRIENDLY_Verna Furlbrow|r
    .turnin 64 >> Turn in The Forgotten Heirloom
    .goto Westfall,59.95,19.35
    .turnin 151 >> Turn in Poor Old Blanchy
    .goto Westfall,59.92,19.42
    .target Farmer Furlbrow
	.target Verna Furlbrow
step
    #completewith SaldeanVendor
	.goto Westfall,56.04,31.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    >>|cRXP_WARN_Do NOT sell |T133884:0|t[Murloc Eyes], |T135997:0|t[Goretusk Snouts], |T134341:0|t[Goretusk Livers] or |T133972:0|t[Stringy Vulture Meat]|r
	.target Farmer Saldean
step
    #optional
    .isQuestComplete 9
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
	.target Farmer Saldean
    .goto Westfall,56.04,31.23
    .turnin 9 >> Turn in The Killing Fields
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .goto Westfall,56.40,30.50
    .turnin 22 >> Turn in Goretusk Liver Pie
    .turnin 38 >> Turn in Westfall Stew
    .isQuestComplete 22
    .isQuestComplete 38
    .target Salma Saldean
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .goto Westfall,56.40,30.50
    .turnin 22 >> Turn in Goretusk Liver Pie
    .isQuestComplete 22
    .target Salma Saldean
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
    .goto Westfall,56.40,30.50
    .turnin 38 >> Turn in Westfall Stew
    .isQuestComplete 38
    .target Salma Saldean
  step
    .isQuestAvailable 38
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,80,0
    .goto Westfall,50.80,21.76,80,0
    .goto Westfall,44.47,35.35,80,0
    .goto Westfall,53.84,32.00,60,0
    .goto Westfall,44.47,35.35,60,0
    .goto Westfall,50.80,21.76
    >>Kill |cRXP_ENEMY_Harvest Watchers|r. Loot them for their |cRXP_LOOT_Okra|r and |cRXP_LOOT_Flasks of Oil|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 732,3,38,1 --Okra (3)
    .collect 814,5,103,1 --Flask of Oil (5)
    .mob Harvest Watcher
step
    .isQuestTurnedIn 38
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
    >>Kill |cRXP_ENEMY_Harvest Watchers|r. Loot them for their |cRXP_LOOT_Flasks of Oil|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5,103,1 --Flask of Oil (5)
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
    .collect 731,3,38,1 --Goretusk Snout (3)
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob Young Goretusk
    .mob Goretusk
    .mob Young Fleshripper
    .mob Fleshripper
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r
	.target Farmer Saldean
    .goto Westfall,56.04,31.23
    .turnin 9 >> Turn in The Killing Fields
step
    #label SaldeanVendor
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Salma Saldean|r
	.target Salma Saldean
    .goto Westfall,56.40,30.50
    .turnin 38 >> Turn in Westfall Stew
    .turnin 22 >> Turn in Goretusk Liver Pie
step << Priest
    #season 2
    .goto Westfall,32.6,43.2,60,0
    .goto Westfall,29.8,46.6,60,0
    .goto Westfall,45.0,26.0,60,0
    .goto Westfall,45.6,21.2
    >>Kill the |cRXP_ENEMY_Undying Laborer|r. Loot it for the |T136222:0|t[|cRXP_FRIENDLY_Memory of a Devout Champion|r]
    >>|cRXP_WARN_You must use a Holy spell in order to finish off the|r |cRXP_ENEMY_Undying Laborer|r
    >>|cRXP_WARN_The |cRXP_ENEMY_Undying Laborer|r can spawn at the Gold Coast Quarry and Jangolode Mine|r
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .unitscan Undying Laborer
    .train 425215,1
step << Priest
    #season 2
    .train 425215 >> |cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Devout Champion|r] |cRXP_WARN_to train|r |T237566:0|t[Twisted Faith]
    >>|cRXP_WARN_You must have a|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buff by typing /kneel in a holy area such as, Northshire Abbey, Stormwind Cathedral, the Altars of Light in Anvilmar, Loch Modan or the Mystic Ward in Ironforge|r
    .use 205905
    .itemcount 205905,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
	.target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 12 >> Turn in The People's Militia
step
	.xp <14,1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
	.target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .accept 65 >> Accept The Defias Brotherhood
step
    #xprate <1.2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Captain Danuvin|r
	.target Captain Danuvin
    .goto Westfall,56.42,47.62
    .turnin 102 >> Turn in Patrolling Westfall
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Scout Galiaan|r
	.target Scout Galiaan
    .goto Westfall,54.00,53.00
    .turnin 153 >> Turn in Red Leather Bandanas
step << Gnome Rogue/Dwarf Rogue
    #completewith next
    .goto Westfall,56.55,52.64
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind
    .target Thor
    .money <0.3815
step << Gnome Rogue/Dwarf Rogue
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
    .vendor 1287 >>|cRXP_BUY_Buy a|r |T135343:0|t[Scimitar] |cRXP_BUY_or something better from the Auction House and equip it your off-hand|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Gnome Rogue/Dwarf Rogue
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
    .vendor 1287 >>|cRXP_BUY_Buy a|r |T135343:0|t[Scimitar] |cRXP_BUY_and equip it your off-hand|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Gnome Rogue/Dwarf Rogue
    .isQuestComplete 399
    .goto StormwindClassic,49.194,30.284
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 399 >> Turn in Humble Beginnings
    .target Baros Alexston
    .zoneskip Stormwind City,1
step << Dwarf !Paladin/Gnome
    #label end
    #completewith DarkshoreBoat
    .hs >> Hearth to Thelsamar
step << Dwarf !Paladin/Gnome
    #softcore
    #completewith DarkshoreBoat
    .goto Loch Modan,33.94,50.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Wetlands >> Fly to Wetlands
    .target Thorgrum Borrelson
step << Dwarf !Paladin/Gnome
    #hardcore
    #completewith next
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
step << Human Mage/Human Rogue/Human Warrior/Human Warlock/Human Paladin/Human Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bilban Tosslespanner|r << Human Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenthwick|r << Human Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toldren Deepiron|r << Human Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Juli Stormkettle|r << Human Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brandur Ironhammer|r << Human Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Briarthorn|r << Human Warlock
    .goto Ironforge,51.1,8.7,15,0 << Human Warlock
    .goto Ironforge,50.343,5.657 << Human Warlock
    .goto Ironforge,65.905,88.405 << Human Warrior
    .goto Ironforge,51.495,15.330 << Human Rogue
    .goto Ironforge,25.207,10.756 << Human Priest
    .goto Ironforge,26.295,6.752 << Human Mage
    .goto Ironforge,23.141,6.149 << Human Paladin
    .trainer >> Train your class spells
    .target Bilban Tosslespanner << Human Warrior
    .target Fenthwick << Human Rogue
    .target Toldren Deepiron << Human Priest
    .target Juli Stormkettle << Human Mage
    .target Brandur Ironhammer << Human Paladin
    .target Briarthorn << Human Warlock
step << Human Warrior
    .goto Ironforge,62.0,89.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bixi Wobblebonk|r
    .train 2567 >>Train Thrown
    .target Bixi Wobblebonk
step << Human Rogue
    #ah
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brenwyn Wintersteel|r down stairs
    +|cRXP_BUY_Buy and equip a|r |T135343:0|t[Scimitar] |cRXP_BUY_in your off-hand if you can afford it or buy something better from the Auction House|r
    .target Brenwyn Wintersteel
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Human Rogue
    #ssf
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brenwyn Wintersteel|r down stairs
    +|cRXP_BUY_Buy and equip a|r |T135343:0|t[Scimitar] |cRXP_BUY_in your off-hand if you can afford it|r
    .money <0.3815
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Brenwyn Wintersteel
step << Human Rogue
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brenwyn Wintersteel|r down stairs
    >>|cRXP_BUY_Buy a|r |T135425:0|t[Keen Throwing Dagger]
    .collect 3107,100 -- Keen Throwing Dagger
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.30
step << Human Rogue
    #completewith next
    +|cRXP_WARN_Equip the|r |T135425:0|t[Keen Throwing Dagger]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.29
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
step << Dwarf Paladin
    #softcore
    #completewith DarkshoreBoat
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Wetlands>> Fly to Wetlands
    .target Gryth Thurden
step
    #hardcore << !Human
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Exit Ironforge
step
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >> Travel to the Dun Morogh -> Wetlands skip spot
step
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
step << Human
    #softcore
    #completewith next
    .goto Dun Morogh,30.9,33.1,20 >> Travel to the Dun Morogh -> Wetlands deathskip spot
step << Human
    #softcore
    .goto Dun Morogh,32.4,29.1,20 >> Continue following through the mountain to the deathskip location
step << Human
    #softcore
    .goto Dun Morogh,33.0,27.2,20,0
    .goto Dun Morogh,33.0,25.2,20,0
    .goto Wetlands,11.727,43.306
    .deathskip >> Run straight off the edge to the north and drop down. Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << Human
    #softcore
    .goto Wetlands,12.7,46.7,80 >> Swim to Menethil Harbor
step
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto Wetlands,10.7,56.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neal Allen|r
    .vendor 1448 >> |cRXP_WARN_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Neal Allen|r doesn't have one|r
	.target Neal Allen
    .bronzetube
step << Human/Dwarf Paladin
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
    .fp Wetlands>> Get the Wetlands flight path
    .target Shellei Brondir
step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dewin Shimmerdawn|r
    .vendor 1453 >> |cRXP_WARN_Buy as many|r |T134831:0|t[Healing Potions] |cRXP_WARN_that are available|r
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Dewin Shimmerdawn|r doesn't have any|r
    .target Dewin Shimmerdawn
step
    #completewith next
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Travel to the Menethil Harbor docks. Wait for the boat to Darkshore
step
    #label DarkshoreBoat
    .zone Darkshore >> Take the boat to Darkshore
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_and|r |T133971:0|t[Cooking] |cRXP_WARN_while waiting for the boat to Darkshore|r
    >>|cRXP_WARN_Level up your|r |T133971:0|t[Cooking] |cRXP_WARN_using the|r |T133970:0|t[Chunks of Boar Meat] |cRXP_WARN_you farmed earlier. Level it to 10 ideally|r
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#name 16-19 Darkshore
#version 1
#group RestedXP Alliance 1-20
#next 19-20 Redridge << !Hunter
#next 19-21 Darkshore/Ashenvale << Hunter
--?

step << NightElf !Druid
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Fly to Teldrassil
    .target Caylais Moonfeather
step << NightElf !Druid
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nessa Shadowsong|r
    .turnin 6343 >> Turn in Return to Nessa
    .target Nessa Shadowsong
step << NightElf !Druid
    #completewith next
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Take the purple portal into Darnassus
step << NightElf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arias'ta Bladesinger|r
    .goto Darnassus,58.72,34.92
    .trainer >> Train your class spells
    .target Arias'ta Bladesinger
step << NightElf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .goto Darnassus,57.56,46.72
    .train 2567 >> Train Thrown
    .target Ilyenia Moonfire
step << NightElf Hunter
    #completewith start
    .goto Darnassus,40.38,8.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Train your class spells
    .target Jocaste
step << NightElf Hunter
    #completewith start
    #label RecruveReinforced
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Landria|r
    >>|cRXP_WARN_Buy a|r |T135489:0|t[Heavy Recurve Bow] |cRXP_WARN_if you can afford it. If not then buy a|r |T135490:0|t[Reinforced Bow]
    >>|cRXP_WARN_Stock up on|r |T132382:0|t[Sharp Arrows]
    .collect 3027,1
    .target Landria
    .money <0.3812
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.50
step << Hunter
    #requires RecruveReinforced
    #completewith next
    +|cRXP_WARN_Equip the|r |T135489:0|t[Heavy Recurve Bow]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
step << Hunter
    #requires RecruveReinforced
    #completewith next
    +|cRXP_WARN_Equip the|r |T135490:0|t[Reinforced Bow]
    .use 3026
    .itemcount 3026,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.49
step << NightElf Rogue
    >>Enter the Cenarion Enclave
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syurna|r
    .goto Darnassus,31.84,16.69,15,0
    .goto Darnassus,37.00,21.92
    .trainer >> Train your class spells
    .target Syurna
step << NightElf !Druid
    #optional
    #completewith next
    .abandon 729 >> Abandon The Absent Minded Prospector to accept the quest Trouble In Darkshore?
step << NightElf !Druid
    .goto Teldrassil,23.70,64.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
    .accept 730 >> Accept Trouble In Darkshore?
    .target Chief Archaeologist Greywhisker
step << NightElf Priest
    .goto Darnassus,37.90,82.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jandria|r
    .trainer >> Train your class spells
    .target Jandria
step << NightElf !Druid
    #label start
    .hs >> Hearth to Auberdine
step
    .goto Darkshore,37.21,44.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick on |cRXP_FRIENDLY_The Wanted Poster|r
    .accept 4740 >> Accept WANTED: Murkdeep!
step << NightElf
#map Darkshore
    .isOnQuest 730
    .goto Felwood,20.04,16.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .turnin 730 >> Turn in Trouble In Darkshore?
    .accept 729 >> Accept The Absent Minded Prospector
    .target Archaeologist Hollee
step
#map Darkshore
    .goto Felwood,20.04,16.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >> Accept The Absent Minded Prospector
    .target Archaeologist Hollee
step
#map Darkshore
    .goto Felwood,19.98,14.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4762 >> Turn in The Cliffspring River
    .target Thundris Windweaver
    .accept 4763 >> Accept The Blackwood Corrupted
step
    .goto Darkshore,37.78,44.06
    .use 12346 >>|cRXP_WARN_Use the|r |T133748:0|t[Empty Cleansing Bowl] |cRXP_WARN_at the|r |cRXP_PICK_Auberdine Moonwell|r
    .collect 12347,1,4763,1
    .isOnQuest 4763
step
#map Darkshore
    .goto Felwood,18.50,19.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >> Accept Fruit of the Sea
    .target Gubber Blump
step
    #xprate <1.5
    #completewith CompleteFangs
    >>Kill |cRXP_ENEMY_Moonstalkers|r and |cRXP_ENEMY_Moonstalker Runts|r. Loot them for their |cRXP_LOOT_Fangs|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
    #completewith CompleteThistleBears
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r in southern Darkshore
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << Druid
#xprate <1.5
    #sticky
    #label earthroot
    >>Collect 5 |T134187:0|t[Earthroot] as you quest|r
    .complete 6123,1
    .isOnQuest 6123
step << Druid
#xprate <1.5
    .goto Darkshore,43.4,45.9,90,0
    .goto Darkshore,43.3,49.1,90,0
    .goto Darkshore,42.4,52.6,90,0
    .goto Darkshore,45.7,50.3,90,0
    .goto Darkshore,45.3,53.3
    .goto Darkshore,43.4,45.9,0
    .goto Darkshore,43.3,49.1,0
    .goto Darkshore,42.4,52.6,0
    .goto Darkshore,45.7,50.3,0
    >>Loot |cRXP_LOOT_Lunar Fungi|r on the ground throughout caves
    .complete 6123,2
    .isOnQuest 6123
step << Druid
#xprate >1.49
    .goto Darkshore,43.4,45.9,90,0
    .goto Darkshore,43.3,49.1,90,0
    .goto Darkshore,42.4,52.6,90,0
    .goto Darkshore,45.7,50.3,90,0
    .goto Darkshore,45.3,53.3
    .goto Darkshore,43.4,45.9,0
    .goto Darkshore,43.3,49.1,0
    .goto Darkshore,42.4,52.6,0
    .goto Darkshore,45.7,50.3,0
    >>Loot |cRXP_LOOT_Lunar Fungi|r on the ground throughout caves
    >>|cRXP_WARN_If you haven't found 5 |cRXP_LOOT_Earthroot|r by this point, just abandon this quest|r
    .complete 6123,1
    .complete 6123,2
    .isOnQuest 6123
step
#map Darkshore
    #label CompleteThistleBears
    .goto Felwood,18.41,49.43
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4728 >> Accept Beached Sea Creature
step
    #completewith MasterG
    >>Kill |cRXP_ENEMY_Moonstalker Sires|r. Loot them for their |cRXP_LOOT_Pelts|r
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire
step
	#xprate <1.5
    #completewith MasterG
    .goto Darkshore,38.60,80.50,0
    >>Kill |cRXP_ENEMY_Grizzled Thistle Bears|r. Loot them for their |cRXP_LOOT_Scalps|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    .goto Darkshore,39.03,67.32,70,0
    .goto Darkshore,42.54,67.76,70,0
    .goto Darkshore,39.99,78.46
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r in southern Darkshore
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
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
#map Darkshore
    #xprate <1.5
    #optional
    .isQuestComplete 1003
    .goto Felwood,24.53,60.46
    >>Click the |cRXP_PICK_Buzzbox 525|r on the ground
    .turnin 1003 >> Turn in Buzzbox 525
step
    #label MasterG
    .goto Darkshore,38.54,86.05,60 >> Travel to The Master's Glaive
    .subzoneskip 449
    .isOnQuest 944
step
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
#map Darkshore
    .goto Ashenvale,22.24,2.52
    >>Click the |cRXP_PICK_Twilight Tome|r
    .turnin 949 >> Turn in The Twilight Camp
    .accept 950 >> Accept Return to Onu
    >>|cRXP_ENEMY_Twilight Thugs|r |cRXP_WARN_can|r |T132343:0|t[Disarm] |cRXP_WARN_you for 6 seconds|r << Rogue/Paladin/Warrior
    >>|cRXP_ENEMY_Twilight Disciples|r |cRXP_WARN_cast|r |T135953:0|t[Renew] |cRXP_WARN_and a 3 second|r |T135915:0|t[Heal]
step
#map Darkshore
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
    #optional
    #sticky
    .isQuestTurnedIn 949
    .destroy 5251 >> Destroy the |T134715:0|t[Phial of Scrying] you no longer need it
step
#optional
    #completewith Murk
    #completewith prospector << Hunter
    >>Kill |cRXP_ENEMY_Moonstalker Sires|r. Loot them for their |cRXP_LOOT_Pelts|r
    *Don't go out of your way to do this quest, you'll have another chance to finish it later
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire
step
	#xprate <1.5
    .goto Darkshore,41.44,86.06,50,0
    .goto Darkshore,41.77,84.60,50,0
    .goto Darkshore,42.94,82.25,50,0
    .goto Darkshore,43.59,80.02,50,0
    .goto Darkshore,39.74,80.43,50,0
    .goto Darkshore,38.00,83.55
    >>Kill |cRXP_ENEMY_Grizzled Thistle Bears|r. Loot them for their |cRXP_LOOT_Scalps|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
#map Darkshore
    #xprate <1.5
    #label LastBuzz
    .goto Felwood,24.53,60.46
    >>Click the |cRXP_PICK_Buzzbox 525|r on the ground
    .turnin 1003 >> Turn in Buzzbox 525
    .isQuestComplete 1003
step
#map Darkshore
    .goto Felwood,27.00,55.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Turn in Return to Onu
    .timer 14,Return to Onu RP
    .accept 951 >> Accept Mathystra Relics
    .target Onu
step
    #completewith Southcrabs
--  .goto Darkshore,33.85,80.92,45,0
--  .goto Darkshore,32.17,82.92,45,0
--  .goto Darkshore,35.41,78.96,45,0
--  .goto Darkshore,35.68,75.23,45,0
--  .goto Darkshore,35.03,72.19,45,0
--  .goto Darkshore,35.68,75.23,45,0
--  .goto Darkshore,35.41,78.96,45,0
--  .goto Darkshore,32.17,82.92,45,0
--  .goto Darkshore,33.85,80.92,45,0
--  .goto Darkshore,35.03,72.19
    >>Kill |cRXP_ENEMY_Encrusted Tide Crawlers|r and |cRXP_ENEMY_Reef Crawlers|r. Loot them for their |cRXP_LOOT_Crab Chunks|r
    >>|cRXP_WARN_You don't have to complete this now|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Reef Crawler
    .mob Encrusted Tide Crawler
step
    #label Murk
    .goto Darkshore,36.64,76.53
    >>Kill |cRXP_ENEMY_Greymist Warriors|r and |cRXP_ENEMY_Greymist Hunters|r at the camp
    >>|cRXP_WARN_Move to the Bonfire in the center of the camp to summon|r |cRXP_ENEMY_Murkdeep|r
    >>Kill |cRXP_ENEMY_Murkdeep|r. He will run in from the water
    .complete 4740,1
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step << Hunter
    .goto Darkshore,38.54,86.05
    .xp 17 >> Grind to level 17
step << Hunter
#map Darkshore
    #sticky
    #label prospector
    .goto Felwood,18.08,64.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Remtravel|r
    .turnin 729 >> Turn in The Absent Minded Prospector
    .target Prospector Remtravel
step << Hunter
    .goto Darkshore,35.72,83.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Remtravel|r. This will start an escort
    .accept 731,1 >> Accept The Absent Minded Prospector
    >>|cRXP_WARN_This quest is VERY difficult. You can skip this step and come back at level 19|r
    .link https://www.twitch.tv/videos/1182180918 >> |cRXP_WARN_Click here for a video guide|r
    .target Prospector Remtravel
step << Hunter
    #requires prospector
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_Prospector Remtravel|r through the Excavation|r
    >>|cRXP_WARN_This quest is VERY difficult. You can skip this step and come back at level 19|r
    .link https://www.twitch.tv/videos/1182180918 >> |cRXP_WARN_Click here for a video guide|r
    .complete 731,1
    .isOnQuest 731
step << Hunter
#map Darkshore
    #xprate <1.5
    .goto Ashenvale,13.97,4.10
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4733 >> Accept Beached Sea Creature
    >>|cRXP_WARN_This quest can be VERY difficult. Engage the |cRXP_ENEMY_Murlocs|r 1 by 1, otherwise you may agro multiple at the same time|r
    .link https://www.twitch.tv/videos/992307825?t=05h48m36s >> |cRXP_WARN_Click here for a video guide|r
step << Hunter
#map Darkshore
	#xprate <1.5
    .goto Ashenvale,13.93,2.01
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4732 >> Accept Beached Sea Turtle
step << !Hunter
	#xprate <1.5
#map Darkshore
    .goto Felwood,14.62,60.72
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4730 >> Accept Beached Sea Creature
step
	#xprate <1.5
#map Darkshore
    .goto Felwood,13.47,64.01
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4731 >> Accept Beached Sea Turtle
step << Hunter
	#xprate <1.5
#map Darkshore
    #label Southcrabs
    .goto Felwood,14.62,60.72
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4730 >> Accept Beached Sea Creature
step << !NightElf !Hunter !Druid
    #label Southcrabs
    #completewith next
    .hs >> Hearth to Auberdine
step << Druid
    #label Southcrabs
    #requires earthroot
	#completewith FlyDarkshore
	.cast 18960 >> Cast Teleport: Moonglade
	.zoneskip Moonglade
step << Druid
    #requires earthroot
    .goto Moonglade,52.53,40.57
	>>Go to Moonglade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Train your class spells
    .target Loganaar
    .xp <18,1
step << Druid
    #label FlyDarkshore
    .goto Moonglade,48.11,67.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sindrayl|r
    .fly Auberdine >> Fly to Darkshore
    .target Sindrayl
step << NightElf !Druid/Dwarf Hunter
#map Darkshore
    #label Southcrabs
    #completewith CleansingTharnariun
    .subzone 442 >> Travel to Auberdine
step
#map Darkshore
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4728 >> Turn in Beached Sea Creature
    .target Gwennyth Bly'Leggonde
step
#map Darkshore
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin -4730 >> Turn in Beached Sea Creature
    .turnin -4731 >> Turn in Beached Sea Turtle
    .turnin -4732 >> Turn in Beached Sea Turtle << Hunter
    .turnin -4733 >> Turn in Beached Sea Creature << Hunter
    .target Gwennyth Bly'Leggonde
step
#optional
#map Darkshore
    .goto Felwood,18.50,19.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Turn in Fruit of the Sea
    .isQuestComplete 1138
    .target Gubber Blump
step
#map Darkshore
    .goto Felwood,20.34,18.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
    .turnin 4740 >> Turn in WANTED: Murkdeep!
    .target Sentinel Glynda Nal'Shea
step
#map Darkshore
    #label CleansingTharnariun
    .goto Felwood,21.63,18.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2138 >> Turn in Cleansing of the Infected
    .accept 2139 >> Accept Tharnariun's Hope
    .target Tharnariun Treetender
step << Hunter
#map Darkshore
    .goto Felwood,20.04,16.35
    .target Archaeologist Hollee
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .turnin 731 >> Turn in The Absent Minded Prospector
    .isQuestComplete 731
step << Hunter
#map Darkshore
    .goto Felwood,20.04,16.35
    .target Archaeologist Hollee
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 741 >> Accept The Absent Minded Prospector
    .isQuestTurnedIn 731
step << Druid
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .turnin 6123 >> Turn in Gathering the Cure
    .isQuestComplete 6123
step
#xprate <1.5
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alanndarian Nightsong|r
    .accept 6124 >> Accept Curing the Sick
    .target Alanndarian Nightsong
    .isQuestTurnedIn 6123
step << Druid
#xprate <1.5
    #label deers
    #sticky
    #loop
    .goto Darkshore,49.7,33.2,0
    .goto Darkshore,43.4,25.1,0
    .goto Darkshore,39.6,34.8,0
    .waypoint Darkshore,49.7,33.2,40,0
    .waypoint Darkshore,43.4,25.1,40,0
    .waypoint Darkshore,39.6,34.8,40,0
    >>|cRXP_WARN_Use the|r |T132801:0|t[Curative Animal Salve] |cRXP_WARN_on|r |cRXP_ENEMY_Sickly Deer|r
    .complete 6124,1 -- Sickly Deer cured (10)
    .mob Sickly Deer
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .turnin 957 >> Turn in Bashal'Aran
    .target Asterion
    .isOnQuest 957
step
    .goto Darkshore,50.66,34.94
    >>Open the |cRXP_PICK_Blackwood Grain Stores|r. Loot it for the |cRXP_LOOT_Blackwood Grain Sample|r
    >>|cRXP_WARN_Looting this will spawn 2 |cRXP_ENEMY_Blackwood Furbolgs|r that will agro and run at you. Be ready to fight them or reset them|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
step << Druid
    #season 2
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Kill |cRXP_ENEMY_Den Mother|r. Loot her for the |T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r]
    >>|cRXP_WARN_Be aware of the |cRXP_ENEMY_Thistle Cubs|r which can stun you for 2 seconds|r
    .collect 208689,1 -- Ferocious Idol (1)
    .mob Den Mother
    .train 407988,1
step
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Kill |cRXP_ENEMY_Den Mother|r
    >>|cRXP_WARN_Be aware of the |cRXP_ENEMY_Thistle Cubs|r which can stun you for 2 seconds|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
step
    .goto Darkshore,51.83,33.50
    >>Open the |cRXP_PICK_Blackwood Nut Stores|r. Loot it for the |cRXP_LOOT_Blackwood Nut Sample|r
    >>|cRXP_WARN_Looting this will spawn 2 |cRXP_ENEMY_Blackwood Furbolgs|r that will agro and run at you. Be ready to fight them or reset them|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
step
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
step << !Hunter
#xprate <1.5
    #label CompleteFangs
    .goto Darkshore,52.6,33.6
    .xp 18 >> Grind to level 18
step << Hunter
    #label CompleteFangs
    .goto Darkshore,52.6,33.6
    .xp 18.75 >> Grind to 18 + 75%
    >>Make sure your HS cooldown is <10 min
    >>Skip this step if the area is too crowded
step
    #requires deers << Druid
#map Darkshore
    #xprate <1.5
    .goto Winterspring,1.42,26.89
    >>Click the |cRXP_PICK_Buzzbox 323|r on the ground
    .turnin 1002 >> Turn in Buzzbox 323
    .accept 1003 >> Accept Buzzbox 525
step
    #requires deers << Druid
#map Darkshore
    .goto Winterspring,4.82,27.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 965 >> Turn in The Tower of Althalaxx
    .accept 966 >> Accept The Tower of Althalaxx
    .target Balthule Shadowstrike
step << Paladin
    #season 2
    #completewith next
    .goto Darkshore,56.20,26.46
    >>|cRXP_WARN_Keep an eye out for groups going into the Tower of Althalaxx. If you see anyone, follow behind them slowly inside so you can loot the |cRXP_PICK_Strange Orb|r at the top
    >>|cRXP_WARN_Be careful as the mobs in this tower are impossible for you to kill (Level 28-31)|r
    >>Open the |cRXP_PICK_Strange Orb|r on the table atop the Tower of Althalaxx. Loot it for the |cRXP_LOOT_Althalaxx Orb|r
    .collect 209836,1,78089,1 --Athalaxx Orb (1)
    .train 410014,1
step << Warlock
    #season 2
    >>Kill |cRXP_ENEMY_Dark Strand Fanatics|r. Loot them for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Channeling|r]
    .collect 208750,1 -- Rune of Channeling (1)
    .mob Dark Strand Fanatic
    .train 403932,1
step
    .goto Darkshore,55.27,27.74,55,0
    .goto Darkshore,56.92,27.27,55,0
    .goto Darkshore,57.54,25.99,55,0
    .goto Darkshore,56.92,27.27,55,0
    .goto Darkshore,55.27,27.74
    >>Kill |cRXP_ENEMY_Dark Strand Fanatics|r. Loot them for their |cRXP_LOOT_Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step << Warlock
    #season 2
    .goto Darkshore,55.27,27.74,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,57.54,25.99,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,55.27,27.74
    >>Kill |cRXP_ENEMY_Dark Strand Fanatics|r. Loot them for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Channeling|r]
    .collect 208750,1 -- Rune of Channeling (1)
    .mob Dark Strand Fanatic
    .train 403932,1
step << Warlock
    #season 2
    .train 403932 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Channeling|r] |cRXP_WARN_to train|r |T136168:0|t[Master Channeler]
    .use 208750
    .itemcount 208750,1
step
    #map Darkshore
    .goto Winterspring,4.82,27.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
    .turnin 966 >> Turn in The Tower of Althalaxx
    .accept 967 >> Accept The Tower of Althalaxx
    .target Balthule Shadowstrike
step << Priest
    #season 2
    #completewith next
    >>Kill |cRXP_ENEMY_Stormscale Myrmidons|r, |cRXP_ENEMY_Stormscale Warriors|r and |cRXP_ENEMY_Stormscale Sorceresses|r. Loot them for a |T236364:0|t[|cRXP_LOOT_Shatterspear Offering|r]
    .collect 211482,1 -- Shatterspear Offering (1)
    .mob Stormscale Myrmidon
    .mob Stormscale Warrior
    .mob Stormscale Sorceress
    .train 425215,1
step
    .goto Darkshore,57.13,22.04,55,0
    .goto Darkshore,57.97,20.23,55,0
    .goto Darkshore,58.36,23.61,55,0
    .goto Darkshore,59.42,24.62,55,0
    .goto Darkshore,60.26,21.75
    >>Loot the |cRXP_LOOT_Mathystra Relics|r on the ground
    .complete 951,1 -- Mathystra Relics (6)
step << Priest
    #season 2
    .goto Darkshore,59.2,23.4,60,0
    .goto Darkshore,60.0,15.4
    >>Kill |cRXP_ENEMY_Stormscale Myrmidons|r, |cRXP_ENEMY_Stormscale Warriors|r and |cRXP_ENEMY_Stormscale Sorceresses|r. Loot them for a |T236364:0|t[|cRXP_LOOT_Shatterspear Offering|r]
    .collect 211482,1 -- Shatterspear Offering (1)
    .mob Stormscale Myrmidon
    .mob Stormscale Warrior
    .mob Stormscale Sorceress
    .train 425215,1
step << Priest
    #season 2
    .goto Darkshore,59.2,22.6
    .use 211482 >> |cRXP_WARN_Use the|r |T236364:0|t[|cRXP_LOOT_Shatterspear Offering|r] |cRXP_WARN_at the Shatterspear Idol underwater to receive the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Devout Champion|r]
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .train 425215,1
step << Priest
    #season 2
    .train 425215 >> |cRXP_WARN_Use the|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Devout Champion|r] |cRXP_WARN_to train|r |T237566:0|t[Twisted Faith]
    >>|cRXP_WARN_You must have a|r |T135934:0|t|T136057:0|t[Meditation] |cRXP_WARN_buff by typing /kneel in a holy area such as, Northshire Abbey, Stormwind Cathedral, the Altars of Light in Anvilmar, Loch Modan or the Mystic Ward in Ironforge|r
    .use 205905
    .itemcount 205905,1
step
#map Darkshore
    #completewith next
    .goto Winterspring,6.37,16.66,50 >> Travel to Mist's Edge
step
#map Darkshore
    .goto Winterspring,6.37,16.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .accept 2098 >> Accept Gyromast's Retrieval
    .target Gelkak Gyromast
step
    #completewith next
    .goto Darkshore,56.10,16.88,0
    >>Kill |cRXP_ENEMY_Raging Reef Crawlers|r and |cRXP_ENEMY_Encrusted Tide Crawlers|r. Loot them for the |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Raging Reef Crawlers|r |T132152:0|t[Thrash] ability. You can take 200 damage instantly from their melee hits|r
    .complete 2098,3 -- Bottom of Gelkak's Key
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .goto Darkshore,54.93,12.19
    >>Kill |cRXP_ENEMY_Greymist Oracles|r and |cRXP_ENEMY_Greymist Tidehunter|r. Loot them for the |cRXP_LOOT_Middle of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Greymist Oracles|r |T136048:0|t[Lightning Bolt] damage and they can also heal with |T136052:0|t[Healing Wave]|r
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Oracle
    .mob Greymist Tidehunter
step
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
    .goto Darkshore,61.40,9.40,45,0
    .goto Darkshore,62.42,7.67
    >>Kill |cRXP_ENEMY_Moonstalker Sires|r and |cRXP_ENEMY_Moonstalker Matriarchs|r. Loot them for their |cRXP_LOOT_Pelts|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Moonstalker Matriarchs|r. They always attack with a |cRXP_ENEMY_Moonstalker Runt|r by their side|r
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step
#map Darkshore
    #requires foreststriders
    .goto Winterspring,6.37,16.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2098 >> Turn in Gyromast's Retrieval
    .accept 2078 >> Accept Gyromast's Revenge << !Warrior !Paladin !Rogue
    .target Gelkak Gyromast
step << !Warrior !Paladin !Rogue
#map Darkshore
    #completewith next
    .goto Winterspring,5.59,21.09
    .gossipoption 87696 >> Talk to |cRXP_FRIENDLY_The Threshwackonator 4100|r to start the escort
    >>|cRXP_WARN_This quest is VERY difficult|r
    .target The Threshwackonator 4100
step << !Warrior !Paladin !Rogue
#map Darkshore
    .goto Winterspring,6.37,16.66
    >>Escort |cRXP_FRIENDLY_The Threshwackonator 4100|r to |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>Kill |cRXP_ENEMY_The Threshwackonator 4100|r once it turns hostile
    >>|cRXP_WARN_This quest is VERY difficult|r
    *Only use ranged attacks while running from it, avoid being at melee range << Druid
    .complete 2078,1
    .link https://clips.twitch.tv/VainAmorphousMacaroniPRChase-iGvhTnz0ked6LO0A >> |cRXP_WARN_Click here for a video guide|r
    .mob The Threshwackonator 4100
step << !Warrior !Paladin !Rogue
#map Darkshore
    .goto Winterspring,6.37,16.66
    .target Gelkak Gyromast
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2078 >> Turn in Gyromast's Revenge
    .isQuestComplete 2078
step
    #completewith Turtle4727
    >>Kill |cRXP_ENEMY_Encrusted Tide Crawlers|r and |cRXP_ENEMY_Reef Crawlers|r. Loot them for their |cRXP_LOOT_Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    #sticky
    #optional
    .destroy 7442 >> Delete Gyromast's Key from your inventory
step << Warrior
    #season 2
    .goto Darkshore,48.2,15.6,70,0
    .goto Darkshore,50.2,12.6
    >>Kill |cRXP_ENEMY_Paxnozz|r. Loot it for the |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Strike|r]
    >>|cRXP_ENEMY_Paxnozz|r |cRXP_WARN_is a level 20 elite found patrolling in the water. Look for help before attemping to kill it|r
    .collect 208778,1 -- Rune of Quick Strike (1)
    .unitscan Paxnozz
    .train 425443,1
step << Warrior
    #season 2
    .train 425443 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Quick Strike|r] |cRXP_WARN_to train|r |T132394:0|t[Quick Strike]
    .use 208778
    .itemcount 208778,1
step
#map Darkshore
    #label Turtle4727
    .goto Winterspring,3.10,20.90
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4727 >> Accept Beached Sea Turtle
step << Druid
#requires deers
    .goto Darkshore,48.87,11.32
    >>|cRXP_WARN_Swim out in the water|r
    >>Open the |cRXP_PICK_Strange Lockbox|r. Loot it for the |cRXP_LOOT_Half Pendant of Aquatic Agility|r
    .collect 15883,1,272,1 --Collect Half Pendant of Aquatic Agility (x1)
step << Dwarf Hunter
    #softcore
    #completewith next
    .deathskip >> Grind until your HS cooldown is <6 minutes. Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << Dwarf Hunter
    #hardcore
    #completewith next
    +Grind until your HS cooldown is <9 minutes then run back to Auberdine
step << !NightElf !Hunter
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the graveyard
step << !NightElf
#map Darkshore
    .goto Felwood,19.98,14.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4763 >> Turn in The Blackwood Corrupted
    .target Thundris Windweaver
step << !NightElf
#map Darkshore
    .goto Felwood,21.63,18.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2139 >> Turn in Tharnariun's Hope
    .target Tharnariun Treetender
step << !NightElf
    .goto Darkshore,39.37,43.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >> Turn in A Lost Master
    .target Terenthis
    .accept 993 >> Accept A Lost Master << Hunter
step << !NightElf
    #optional
    .isQuestTurnedIn 986
    .goto Darkshore,39.37,43.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .accept 993 >> Accept A Lost Master
    .target Terenthis
step << Dwarf Hunter
    .goto Darkshore,33.17,40.17,40,0
    .goto Darkshore,33.17,40.17,0
    .zone Teldrassil >> Take the boat to Darnassus
    .zoneskip Darnassus
step << Dwarf Hunter
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .fp Teldrassil >> Get the Teldrassil Flight Path
    .target Vesprystus
step << Dwarf Hunter
    #completewith next
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >> Take the purple portal into Darnassus
step << Dwarf Hunter
    #completewith next
    .goto Darnassus,40.38,8.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jocaste|r
    .trainer >> Train your class spells
    .target Jocaste
step << Dwarf Hunter
    #sticky
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilyenia Moonfire|r
    .goto Darnassus,57.56,46.72
    .train 264 >> Train Bows
    .train 227 >> Train Staves
    .target Ilyenia Moonfire
step << Dwarf Hunter
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Landria|r
    >>|cRXP_WARN_Buy a|r |T135489:0|t[Heavy Recurve Bow] |cRXP_WARN_and a|r |T134410:0|t[Medium Quiver]
    .collect 3027,1 -- Heavy Recurve Bow
    .collect 11362,1 -- Medium Quiver
    .target Landria
    .money <0.7349
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << Hunter
    #completewith next
    +|cRXP_WARN_Equip the|r |T135489:0|t[Heavy Recurve Bow]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
step << Dwarf Hunter
    .goto Teldrassil,23.70,64.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
    .turnin 741 >> Turn in The Absent Minded Prospector
    .accept 942 >> Accept The Absent Minded Prospector
    .target Chief Archaeologist Greywhisker
step << Druid
	#completewith next
	.cast 18960 >> Cast Teleport: Moonglade
	.zoneskip Moonglade
step << Druid
#xprate <1.5
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
step << NightElf/Dwarf Hunter
    #completewith next
    .hs >> Hearth to Auberdine
step
#map Darkshore
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >> Turn in Beached Sea Turtle
    .target Gwennyth Bly'Leggonde
step
#map Darkshore
    .isQuestComplete 1138
    .goto Felwood,18.50,19.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >> Turn in Fruit of the Sea
    .target Gubber Blump
step << NightElf
#map Darkshore
    .goto Felwood,19.98,14.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
    .turnin 4763 >> Turn in The Blackwood Corrupted
    .target Thundris Windweaver
step << NightElf Hunter
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalmond|r
    .vendor >> Stock up on |T132382:0|t[Sharp Arrows]
    .target Dalmond
step << NightElf
#map Darkshore
    .goto Felwood,21.63,18.15
    .target Tharnariun Treetender
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tharnariun Treetender|r
    .turnin 2139 >> Turn in Tharnariun's Hope
step << NightElf
    .goto Darkshore,39.37,43.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >> Turn in A Lost Master
    .target Terenthis
    .accept 993 >> Accept A Lost Master
step << Hunter
.dungeon DM
    #completewith next
    .goto Darkshore,32.75,42.21,35 >> Travel to the Auberdine Docks. Wait for the Menethil Harbor boat
step << Hunter
.dungeon DM
    .goto Darkshore,32.44,43.71
    .zone Wetlands >> Take the boat to Menethil Harbor. You will be heading to Deadmines now
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << Hunter
.dungeon DM
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Menethil Harbor >> Get the Menethil Harbor flight path
    .target Shellei Brondir
step << Hunter
.dungeon DM
    #completewith next
    .goto Wetlands,5.485,64.156,40 >> Jump off the end of the dock and swim to the waypoint
step << Hunter
.dungeon DM
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>Use the character unstuck self service feature to skip to Ironforge. You will have to log off at the spot and navigate to the help menu on another character, then scroll down to self service. Click on your character and move. If you can't unstuck then tick this step and swim along the mountains to Westfall
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >> Click here for video reference
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
step << Hunter
.dungeon DM
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Get the Ironforge flight path
    .target Gryth Thurden
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
step << Hunter
.dungeon DM
    .goto Ironforge,78.00,52.00,5,0
    .zone Stormwind City >> Enter the Deeprun Tram. Take the tram to Stormwind
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
step << Hunter
.dungeon DM
    .goto 1415,44.720,49.200,60,0 -- Wetlands to Westfall Swim
    .goto 1415,43.162,49.946,60,0
    .goto 1415,42.564,50.884,20,0
    .goto 1415,42.363,50.812,20,0
    .goto 1415,41.682,50.232,20,0
    .goto 1415,40.959,50.142,20,0
    .goto 1415,39.818,51.078,20,0
    .goto 1415,39.778,51.615,30,0
    .goto 1415,39.505,52.636,30,0
    .goto 1415,40.160,54.451,20,0
    .goto 1415,40.505,54.507,20,0
    .goto 1415,41.370,57.126,40,0
    .goto 1415,41.988,59.434,30,0
    .goto 1415,41.342,61.214,30,0
    .goto 1415,41.309,61.938,20,0
    .goto 1415,40.545,64.111,30,0
    .goto 1415,41.066,65.878,20,0
    .goto 1415,41.349,66.265,30,0
    .goto 1415,41.363,66.995,30,0
    .goto 1415,41.625,67.689,30,0
    .goto StormwindClassic,4.493,29.157,20,0
    .goto StormwindClassic,10.336,40.166,10,0
    .goto StormwindClassic,7,45.471,10,0
    .goto StormwindClassic,5.560,50.125,10,0
    .goto StormwindClassic,13.669,74.499,20,0
    .goto Westfall,42.024,70.980
    .zone Westfall >> If the website unstuck is not available, swim to Westfall
    .zoneskip Ironforge
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
    .zoneskip Stormwind City
step << Hunter
.dungeon DM
    #completewith next
    .goto Westfall,54.28,9.26,100,0
    .goto Westfall,56.55,52.64,100 >> Run up the shore and make your way to Sentinel Hill
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step << Hunter
.dungeon DM
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Get the Sentinel Hill flight path
    .target Thor
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step << Hunter
.dungeon DM
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
	.target Gryan Stoutmantle
    .accept 65 >> Accept The Defias Brotherhood
    .zoneskip Westfall,1
step << Hunter
.dungeon DM
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >> Run to Stormwind
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step << Hunter
.dungeon DM
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einris Brightspear|r
    .trainer >> Train your class spells
    .target Einris Brightspear
    .zoneskip Stormwind City,1
step << Hunter
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoni the Shilent|r and |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .accept 2040 >> Accept Underground Assault
    .goto StormwindClassic,55.510,12.504
    .accept 167 >> Accept Oh Brother. . .
    .accept 168 >> Accept Collecting Memories
    .goto StormwindClassic,65.438,21.175
    .target Wilder Thistlenettle
    .target Shoni the Shilent
step << Hunter
.dungeon DM
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fp Stormwind >> Get the Stormwind City flight path
    .target Dungar Longdrink
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step << Hunter
.dungeon DM
    #completewith next
    .zone Westfall >> Travel to Westfall
step << Hunter
.dungeon DM
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
	.target Gryan Stoutmantle
    .accept 65 >> Accept The Defias Brotherhood
step << Hunter
.dungeon DM
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Get the Sentinel Hill flight path
    .target Thor
    .zoneskip Westfall,1
step << Hunter
.dungeon DM
    #completewith next
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >> Run to Redridge Mountains
step << Hunter
.dungeon DM
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wiley the Black|r up stairs
    .turnin 65 >> Turn in The Defias Brotherhood
    .accept 132 >> Accept The Defias Brotherhood
	.target Wiley the Black
step << Hunter
.dungeon DM
    #completewith next
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Westfall >> Fly to Westfall
    .target Ariena Stormfeather
step << Hunter
.dungeon DM
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 132 >> Turn in The Defias Brotherhood
    .accept 135 >> Accept The Defias Brotherhood
    .target Gryan Stoutmantle
step << Hunter
.dungeon DM
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind
    .target Thor
step << Hunter
.dungeon DM
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 135 >> Turn in The Defias Brotherhood
    .accept 141 >> Accept The Defias Brotherhood
    .target Master Mathias Shaw
step << Hunter
.dungeon DM
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Westfall >> Fly to Westfall
    .target Dungar Longdrink
step << Hunter
.dungeon DM
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 141 >> Turn in The Defias Brotherhood
    .accept 142 >> Accept The Defias Brotherhood
    .target Gryan Stoutmantle
step << Hunter
.dungeon DM
    #completewith next
    .goto Westfall,44.50,69.62,55 >> Travel to Moonbrook
step << Hunter
.dungeon DM
    .goto Westfall,44.50,69.62
    .line Westfall,44.50,69.62,44.50,69.62,45.08,69.40,45.21,69.35,45.63,68.69,45.85,67.73,45.62,66.99,45.52,65.71,45.61,64.95,44.28,63.88,44.26,62.80,43.60,59.89,43.37,58.42,43.26,57.01,43.12,54.24,42.15,52.74,41.74,51.42,41.48,49.89,40.91,48.71,38.93,46.05,38.51,45.46,37.85,45.54,36.60,44.21,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.26,43.77,36.87,42.87,36.95,40.85,37.04,39.79,37.91,36.98,39.06,35.58,40.48,34.31,41.27,32.87,41.76,31.27,42.26,30.26,43.20,28.99,44.29,28.19,44.64,26.85,44.57,24.94,44.64,26.85,44.29,28.19,43.20,28.99,42.26,30.26,41.76,31.27,41.27,32.87,40.48,34.31,39.06,35.58,37.91,36.98,37.04,39.79,36.95,40.85,36.87,42.87,36.26,43.77,36.06,43.86,35.12,43.49,33.92,43.21,32.56,43.05,31.34,44.54,32.56,43.05,33.92,43.21,35.12,43.49,36.06,43.86,36.60,44.21,37.85,45.54,38.51,45.46,38.93,46.05,40.91,48.71,41.48,49.89,41.74,51.42,42.15,52.74,43.12,54.24,43.26,57.01,43.37,58.42,43.60,59.89,44.26,62.80,44.28,63.88,45.61,64.95,45.52,65.71,45.62,66.99,45.85,67.73,45.63,68.69,45.21,69.35,45.08,69.40,44.50,69.62
    >>Kill the |cRXP_ENEMY_Defias Messenger|r. Loot him for his |cRXP_LOOT_Mysterious Message|r
    >>|cRXP_WARN_The |cRXP_ENEMY_Defias Messenger|r spawns in Moonbrook. He walks along the road north of Moonbrook, to the Gold Coast Quarry and Jangolode Mine. If you don't see him along the road, wait for him to spawn in Moonbrook|r
    >>|cRXP_WARN_He has a 4-5 minute respawn timer|r
    .complete 142,1 -- A Mysterious Message (1)
    .unitscan Defias Messenger
step << Hunter
.dungeon DM
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 142 >> Turn in The Defias Brotherhood
    .target Gryan Stoutmantle
step << Hunter
.dungeon DM
    .goto Westfall,55.68,47.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Defias Traitor|r
    >>|cRXP_WARN_You may need to wait for |cRXP_FRIENDLY_The Defias Traitor|r to spawn if he's not there|r
    .accept 155 >> Accept The Defias Brotherhood
    .target The Defias Traitor
step << Hunter
.dungeon DM
    .goto Westfall,42.56,71.71
    >>Escort the |cRXP_FRIENDLY_The Defias Traitor|r to The Deadmines
    >>|cRXP_WARN_Stay beside |cRXP_FRIENDLY_The Defias Traitor|r at all times! Be ready to fight |cRXP_ENEMY_The Defias|r upon reaching Moonbrook|r
    .complete 155,1 -- Escort The Defias Traitor to discover where VanCleef is hiding (1)
    .target The Defias Traitor
step << Hunter
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r and |cRXP_FRIENDLY_Scout Riell|r atop the Tower
    .turnin 155 >> Turn in The Defias Brotherhood
    .accept 166 >> Accept The Defias Brotherhood
    .goto Westfall,56.33,47.52
    .accept 214 >> Accept Red Silk Bandanas
    .goto Westfall,56.67,47.35
    .target Gryan Stoutmantle
    .target Scout Riell
step << Hunter
.dungeon DM
    .goto Westfall,60.4,72.2
    .goto Westfall,40.4,71.6
    .subzone 1581 >> Now you should be looking for a group to The Deadmines
    >>Grind gnolls while assembling a Deadmines group
step << Hunter
.dungeon DM
    .goto Westfall,42.55,71.69
    .subzone 1581 >> Travel to The Deadmines
step << Hunter
.dungeon DM
    #completewith EnterDM
    >>Kill the |cRXP_ENEMY_Defias|r. Loot them for their |cRXP_LOOT_Bandanas|r
    >>|cRXP_WARN_You may complete this after you enter the Dungeon|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step << Hunter
.dungeon DM
    #completewith next
    >>Kill |cRXP_ENEMY_Skeletal Miners|r, |cRXP_ENEMY_Undead Dynamiters|r and |cRXP_ENEMY_Undead Excavators|r. Loot them for their |cRXP_LOOT_Cards|r
    >>|cRXP_WARN_This is completed OUTSIDE of the Dungeon|r
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step << Hunter
.dungeon DM
    .goto 1415,41.18,79.80,25,0
    .goto 1415,41.03,79.96,25,0
    .goto 1415,40.92,80.05,25,0
    .goto 1415,41.08,80.11
    >>Kill |cRXP_ENEMY_Foreman Thistlenettle|r. Loot him for his |cRXP_LOOT_Badge|r
    >>|cRXP_WARN_This is completed OUTSIDE of the Dungeon|r
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step << Hunter
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
step << Hunter
.dungeon DM
    #label EnterDM
    .goto 1415,40.94,79.76,25,0
    .goto 1415,40.86,79.62,20,0
    .goto 1415,40.678,79.578
    .subzone 1581,2 >> Enter The Deadmines Dungeon
step << Hunter
.dungeon DM
    #completewith DMend
    >>Kill the |cRXP_ENEMY_Defias|r inside The Deadmines. Loot them for their |cRXP_LOOT_Bandanas|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step << Hunter
.dungeon DM
    >>Kill |cRXP_ENEMY_Sneed|r. Loot him for the |cRXP_LOOT_Gnoam Sprecklesprocket|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step << Hunter
.dungeon DM
    >>Kill |cRXP_ENEMY_Edwin VanCleef|r. Loot him for his |cRXP_LOOT_Head|r and |T133471:0|t[|cRXP_LOOT_An Unsent Letter|r]
    >>|cRXP_WARN_Use |T133471:0|t[|cRXP_LOOT_An Unsent Letter|r] to start the quest|r
    .collect 2874,1,373 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .accept 373 >> Accept The Unsent Letter
    .use 2874 -- An Unsent Letter
step << Hunter
.dungeon DM
    #label DMend
    #completewith next
    .goto Westfall,56.33,47.52,100 >> Travel to Sentinel Hill
step << Hunter
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r and |cRXP_FRIENDLY_Scout Riell|r atop the Tower
    .turnin 166 >> Turn in The Defias Brotherhood
    .goto Westfall,56.33,47.52
    .turnin -214 >> Turn in Red Silk Bandanas
    .goto Westfall,56.67,47.35
    .target Gryan Stoutmantle
    .target Scout Riell
step << Hunter
.dungeon DM
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind
    .target Thor
step << Hunter
.dungeon DM
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 373 >> Turn in The Unsent Letter
    .accept 389 >> Accept Bazil Thredd
    .target Baros Alexston
step << Hunter
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wilder Thistlenettle|r and |cRXP_FRIENDLY_Shoni the Shilent|r
    .turnin 167 >> Turn in Oh Brother. . .
    .turnin 168 >> Turn in Collecting Memories
    .goto StormwindClassic,65.438,21.175
    .turnin 2040 >> Turn in Underground Assault
    .goto StormwindClassic,55.510,12.504
    .target Wilder Thistlenettle
    .target Shoni the Shilent
step << Hunter
.dungeon DM
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
    .turnin 389 >> Turn in Bazil Thredd
--  .accept 391 >> Accept The Stockade Riots -- Accept later when going to do Stockades
    .target Warden Thelwater
step << Hunter
.dungeon DM
    .hs >> Hearth to Darkshore
step << !Hunter
    #completewith next
    .goto Darkshore,32.75,42.21,35 >> Travel to the Auberdine Docks. Wait for the Menethil Harbor boat
    .zoneskip Wetlands
step << !Hunter NightElf
#xprate <1.5
    .goto Darkshore,37.45,40.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalmond|r
    >>|cRXP_BUY_Buy|r |T135237:0|t[Flint and Tinder] |cRXP_BUY_and|r |T135435:0|t[Simple Wood]
    >>|cRXP_WARN_This is for leveling up your|r |T133971:0|t[Cooking] |cRXP_WARN_while on the boat soon as there is a quest in Duskwood which requires your|r |T133971:0|t[Cooking] |cRXP_WARN_to be 50|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .itemcount 6889,1 -- Small Egg
    .skill cooking,50,1
    .target Dalmond
step << !Hunter NightElf
#xprate <1.5
#map Darkshore
    #completewith next
    .goto Felwood,20.80,15.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .vendor 6301 >> |cRXP_BUY_Buy|r |T134059:0|t[Mild Spices]
    >>|cRXP_WARN_Use the|r |T134059:0|t[Mild Spices] |cRXP_WARN_and your|r |T132832:0|t[Small Eggs] |cRXP_WARN_to make|r |T132834:0|t[Herb Baked Eggs]
    >>|cRXP_WARN_This is for leveling up your|r |T133971:0|t[Cooking] |cRXP_WARN_while on the boat soon as there is a quest in Duskwood which requires your|r |T133971:0|t[Cooking] |cRXP_WARN_to be 50|r
    .itemcount 6889,1 -- Small Egg
    .skill cooking,50,1
    .target Gorbold Steelhand
step << !Hunter
    .goto Darkshore,32.44,43.71
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_and|r |T133971:0|t[Cooking] |cRXP_WARN_while waiting for the Menethil Harbor boat|r
    .zone Wetlands >> Take the boat to Menethil Harbor
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step << !Hunter NightElf
    .goto Wetlands,8.509,55.697
    .target James Halloran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_James Halloran|r
    .accept 484 >> Accept Young Crocolisk Skins
step << !Hunter NightElf
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
    .fp Wetlands>> Get the Wetlands flight path
    .target Shellei Brondir
step << !Hunter NightElf
    #completewith crocs
    >>Kill |cRXP_ENEMY_Young Wetlands Crocolisks|r. Loot them for their |cRXP_LOOT_Young Crocolisk Skin|r
    .complete 484,1
    .mob Young Wetlands Crocolisk
step << !Hunter NightElf
    #completewith next
    .goto Wetlands,49.91,39.36,50 >> Travel east toward |cRXP_FRIENDLY_Einar Stonegrip|r
step << !Hunter NightElf
#label crocs
    .goto Wetlands,49.91,39.36
    .target Einar Stonegrip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Einar Stonegrip|r
    .accept 469 >> Accept Daily Delivery
step << !Hunter NightElf
#xprate >1.49
    .goto Wetlands,53.2,41.3,55,0
    .goto Wetlands,58.5,50.8,55,0
    .goto Wetlands,62.1,61.4,55,0
    .goto Wetlands,64.0,72.2
    >>Kill |cRXP_ENEMY_Young Wetlands Crocolisks|r. Loot them for their |cRXP_LOOT_Young Crocolisk Skin|r
    .complete 484,1
    .mob Young Wetlands Crocolisk
step << !Hunter NightElf
#xprate >1.49
	#completewith next
	.goto Wetlands,63.9,78.6
    >>Head to the cave at the base of the dam in eastern Wetlands
	.zone Loch Modan >> Logout on top of the mushrooms at the back of the cave.
    >>When you log back in, this will teleport you to Thelsamar
	.link https://www.youtube.com/watch?v=21CuGto26Mk >> |cRXP_WARN_CLICK HERE for a reference|r
step << !Hunter NightElf
#xprate <1.5
    #completewith next
    .goto Wetlands,53.14,70.38,30,0
    .goto Wetlands,48.32,67.07,35,0
    .goto Wetlands,50.14,72.10,30,0
    .goto Loch Modan,25.4,10.6,30 >> Travel to Loch Modan
    .zone Loch Modan >> |cRXP_WARN_Stay on the main road to avoid mobs|r
step << !Hunter NightElf
#xprate <1.5
    .goto Loch Modan,46.05,13.61
    .target Chief Engineer Hinderweir VII
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Hinderweir VII|r
    .accept 250 >> Accept A Dark Threat Looms
step << !Hunter NightElf
#xprate <1.5
    .goto Loch Modan,56.05,13.24
    >>Click the |cRXP_PICK_Suspicious Barrel|r
    .turnin 250 >> Turn in A Dark Threat Looms
    .accept 199 >> Accept A Dark Threat Looms
step << !Hunter NightElf
#xprate <1.5
    .goto Loch Modan,46.05,13.61
    .target Chief Engineer Hinderweir VII
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Engineer Hinderweir VII|r
    .turnin 199 >> Turn in A Dark Threat Looms
step << !Hunter NightElf
#xprate <1.5
    #softcore
    #completewith next
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << !Hunter NightElf
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thorgrum|r
    .fp Thelsamar >> Get the Thelsamar flight path
    .target Thorgrum Borrelson
step << !Hunter NightElf
    .goto Loch Modan,21.30,68.60,40,0
    .goto Loch Modan,19.11,62.11,25,0
    .goto Dun Morogh,86.04,51.05,20 >> Travel to Dun Morogh
    .zoneskip Ironforge
    .zoneskip Dun Morogh
step  << !Hunter NightElf
#xprate >1.49
    .goto Dun Morogh,70.66,56.70,40,0
    .goto Dun Morogh,70.60,54.87
    .zone Ironforge >>Head to the trogg cave west and log out on top of the drilling machine near the entrance to perform a logout skip, that will teleport you to Ironforge
    .link https://www.youtube.com/watch?v=kbUSo62CfAM >> CLICK HERE for reference
step << !Hunter NightElf
    .goto Ironforge,55.51,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryth|r
    .fp Ironforge >> Get the Ironforge flight path
    .target Gryth Thurden
step << !Hunter NightElf
    #completewith next
    .goto Ironforge,67.84,42.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gearcutter Cogspinner|r
    .vendor >> |cRXP_WARN_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Gearcutter Cogspinner|r doesn't have one|r
--  >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Gearcutter Cogspinner
step << !Hunter NightElf
    .goto Ironforge,78.00,52.00,5,0
    .zone Stormwind City >> Enter the Deeprun Tram. Take the tram to Stormwind
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_and|r |T133971:0|t[Cooking] |cRXP_WARN_if needed while waiting for the tram|r
    >>|cRXP_WARN_You will need your|r |T135966:0|t[First Aid] |cRXP_WARN_to be 80 for a quest at level 24 << Rogue !Dwarf
step << !NightElf !Hunter
    .money <0.08
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto Wetlands,10.7,56.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_WARN_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Neal Allen|r doesn't have one|r
	.target Neal Allen
    .bronzetube
step << !NightElf !Hunter
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
    .fly Ironforge >> Fly to Ironforge
    .target Shellei Brondir
step << !NightElf !Hunter
    #completewith next
    .goto Ironforge,56.23,46.83,0
    .goto Ironforge,78.00,52.00,20 >> |cRXP_WARN_Perform a Logout skip by jumping on top of one of the Gryphon's heads, and logging out, then back in|r
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> |cRXP_WARN_Click here for a video guide|r
step << !NightElf !Hunter
    .goto Ironforge,78.00,52.00,5,0
    .zone Stormwind City >> Enter the Deeprun Tram. Take the tram to Stormwind
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_and|r |T133971:0|t[Cooking] |cRXP_WARN_if needed while waiting for the tram|r
    >>You will need your |T135966:0|t[First Aid] to be 80 for a quest at level 24 << Rogue !Dwarf
]])

RXPGuides.RegisterGuide([[
#classic
--??
<< Alliance !Hunter !NightElf
#name 14-19 Darkshore
#version 1
#group RestedXP Alliance 1-20
#defaultfor None
#next 19-20 Redridge

step << NightElf
#map Darkshore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Laird|r
    .goto Felwood,19.27,19.14
    .turnin 6342 >> Turn in Flight to Auberdine
    .accept 6343 >> Accept Return to Nessa
    .target Laird
step
    #completewith next
    .goto Darkshore,36.70,43.78,5 >> Travel up stairs toward |cRXP_FRIENDLY_Wizbang Cranktoggle|r
step
#map Darkshore
    .goto Felwood,19.51,18.97
    .accept 983 >> Accept Buzzbox 827
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wizbang Cranktoggle|r
    .target Wizbang Cranktoggle
    .maxlevel 15
step
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shaussiy|r
    .home >> Set your Hearthstone to Auberdine
    .target Innkeeper Shaussiy
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
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
	.target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    .accept 3524 >> Accept Washed Ashore
step << !NightElf
#map Darkshore
    .goto Darkshore,36.336,45.574
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fp Auberdine >> Get the Auberdine flight path
    .target Caylais Moonfeather
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
    .isOnQuest 983
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
#xprate <1.5
	.goto Felwood,19.13,21.39
    >>Click the |cRXP_PICK_Buzzbox 827|r on the ground
    .accept 1001 >> Accept Buzzbox 411
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
	.target Gwennyth Bly'Leggonde
    .goto Darkshore,36.71,44.98,5,0
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
    .goto Darkshore,32.75,42.21,35 >> Travel to the end of the dock then jump into the water
step
    #xprate <1.5
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
    .goto Darkshore,36.71,44.98,5,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >> Turn in Washed Ashore
    .target Gwennyth Bly'Leggonde
step
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
#xprate <1.5
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
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .accept 954 >> Accept Bashal'Aran
    .maxlevel 15
step
	#xprate <1.5
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
#xprate <1.5
    #completewith next
    .goto Darkshore,38.95,29.36,30 >> Swim to the wrecked Silver Dawning ship
step
#xprate <1.5
#map Darkshore
    .goto Darkshore,38.95,29.36,10,0
    .goto Felwood,20.94,1.49
    >>|cRXP_WARN_Enter the wrecked Silver Dawning ship through the broken hull on the bottom. Make sure you have a full breath bar before diving down and entering|r
    >>Loot the |cRXP_LOOT_Silver Dawning's Lockbox|r on the ground
    .complete 982,1
step
#xprate <1.5
    #completewith next
    .goto Darkshore,40.30,27.56,30 >> Swim to the wrecked Mist Veil ship
step
#xprate <1.5
    #label MistVeil
    .goto Darkshore,40.30,27.56,10,0
    .goto Darkshore,39.63,27.45
    >>|cRXP_WARN_Enter the wrecked Mist Veil ship through the broken hull on the bottom. Make sure you have a full breath bar before diving down and entering|r
    >>Loot the |cRXP_LOOT_Mist Veil's Lockbox|r on the ground
    .complete 982,2
step
	#xprate <1.5
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
	#xprate <1.5
    .goto Felwood,25.19,1.29
    >>Click the |cRXP_PICK_Buzzbox 411|r on the ground
    .turnin 1001 >> Turn in Buzzbox 411
    .accept 1002 >> Accept Buzzbox 323
step
#map Darkshore
    .goto Felwood,25.15,4.61
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4723 >> Accept Beached Sea Creature
step
    #completewith Ameth
    >>Kill |cRXP_ENEMY_Foreststriders|r and |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
step
    #xprate <1.5
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
    .isOnQuest 954
    .maxlevel 15
step
#optional
#map Darkshore
    #label bears1
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    >>|cRXP_WARN_Avoid killing |cRXP_ENEMY_Wild Grells|r and |cRXP_ENEMY_Vile Sprites|r en-route|r
    .turnin 954 >> Turn in Bashal'Aran
    .accept 955 >> Accept Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 954
    .maxlevel 15
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
    .maxlevel 15
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Turn in Bashal'Aran
    .accept 956 >> Accept Bashal'Aran
    .target Asterion
    .isOnQuest 955
step
#optional
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Asterion|r
    .accept 956 >> Accept Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 955
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
step
    #completewith next
    >>Kill |cRXP_ENEMY_Moonkin|r. Loot them for their |T132832:0|t[|cRXP_LOOT_Small Eggs|r]
    >>|cRXP_WARN_You will level|r |T133971:0|t[Cooking] |cRXP_WARN_to 10 later using|r |T132832:0|t[|cRXP_LOOT_Small Eggs|r]
    .collect 6889,10,2178,1,0x21,cooking -- Small Egg
    .skill cooking,10,1 -- step displays if cooking skill is less than 10
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
step
#map Darkshore
    .goto Felwood,31.29,24.14
>> Travel to |cRXP_PICK_The Red Crystal|r
    .complete 4811,1
step
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67,60,0
    .goto Darkshore,45.34,49.70,60,0
    .goto Darkshore,45.48,45.24,60,0
    .goto Darkshore,42.73,45.67
    >>Kill |cRXP_ENEMY_Moonkin|r. Loot them for their |T132832:0|t[|cRXP_LOOT_Small Eggs|r]
    .skill cooking,10,1 -- step only displays if cooking skill is less than 10
    .collect 6889,10,2178,1,0x21,cooking -- Small Egg
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
    #xprate <1.5
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
    .complete 985,2 -- Blackwood Windtalker
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
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
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
	.target Archaeologist Hollee
    .goto Felwood,20.04,16.35
    .accept 729 >> Accept The Absent Minded Prospector
step
#xprate <1.5
#map Darkshore
    #completewith next
    .goto Felwood,20.80,15.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
    .vendor 6301 >> |cRXP_BUY_Buy|r |T134059:0|t[Mild Spices]
    >>|cRXP_WARN_Use the|r |T134059:0|t[Mild Spices] |cRXP_WARN_and your|r |T132832:0|t[Small Eggs] |cRXP_WARN_to make|r |T132834:0|t[Herb Baked Eggs]|cRXP_WARN_. Do this until your|r |T133971:0|t[Cooking] |cRXP_WARN_has reached level 10|r
    >>|cRXP_WARN_Continue leveling your|r |T133971:0|t[Cooking] |cRXP_WARN_passed 10. There is a quest in Duskwood which requires your|r |T133971:0|t[Cooking] |cRXP_WARN_to be 50. You can also do this while you are on the boat soon|r
    .skill cooking,50,1
    .target Gorbold Steelhand
    .itemcount 6889,>4 -- Small Egg
step
#xprate <1.5
    .goto Darkshore,37.514,41.671
    +|cRXP_WARN_Use your|r |T133971:0|t[Cooking] |cRXP_WARN_profession to make|r |T132834:0|t[Herb Baked Eggs]|cRXP_WARN_. Do this until your|r |T133971:0|t[Cooking] |cRXP_WARN_has reached level 10|r
    >>|cRXP_WARN_Continue leveling your|r |T133971:0|t[Cooking] |cRXP_WARN_passed 10. There is a quest in Duskwood which requires your|r |T133971:0|t[Cooking] |cRXP_WARN_to be 50. You can also do this while you are on the boat soon|r
    .skill cooking,50,1
    .target Gorbold Steelhand
    .itemcount 6889,>4 -- Small Egg
step
#xprate <1.5
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gorbold Steelhand|r
	.target Gorbold Steelhand
    .goto Felwood,20.80,15.58
    .turnin 982 >> Turn in Deep Ocean, Vast Sea
step
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
    .goto Darkshore,37.78,44.06
    .use 14338 >>|cRXP_WARN_Use the|r |T134865:0|t[Empty Water Tube] |cRXP_WARN_at the|r |cRXP_PICK_Auberdine Moonwell|r
    .complete 4812,1
step
    .goto Darkshore,37.78,44.06
    .use 12346 >>|cRXP_WARN_Use the|r |T133748:0|t[Empty Cleansing Bowl] |cRXP_WARN_at the|r |cRXP_PICK_Auberdine Moonwell|r
    .collect 12347,1,4763,1 -- Filled Cleansing Bowl (1)
    .isOnQuest 4763
step
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
    .accept 986 >> Accept A Lost Master
step
#map Darkshore
    .goto Darkshore,39.26,43.04,5,0
    .goto Felwood,21.86,18.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Elissa Starbreeze|r up stairs
    .accept 965 >> Accept The Tower of Althalaxx
    .target Sentinel Elissa Starbreeze
step
    #xprate <1.5
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
    >>Click the |cRXP_PICK_Mysterious Red Crystal|r
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
	#completewith next
    .goto Darkshore,50.74,34.68,0
	>>Kill |cRXP_ENEMY_Blackwood Warriors|r and |cRXP_ENEMY_Blackwood Totemics|r. Loot them for their |T132889:0|t[Linen Cloth]
    >>|cRXP_WARN_You need to save 10|r |T132889:0|t[Linen Cloth] |cRXP_WARN_for your|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_class quest later|r
    .collect 2589,10,1644,1 << Human --Linen Cloth (10)
    .collect 2589,10,1648,1 << Dwarf --Linen Cloth (10)
    .mob Blackwood Warrior
    .mob Blackwood Totemic
step
    .goto Darkshore,50.66,34.94
    >>Open the |cRXP_PICK_Blackwood Grain Stores|r. Loot it for the |cRXP_LOOT_Blackwood Grain Sample|r
    >>|cRXP_WARN_Looting this will spawn 2 |cRXP_ENEMY_Blackwood Furbolgs|r that will agro and run at you. Be ready to fight them or reset them|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
step << Druid
    #season 2
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Kill |cRXP_ENEMY_Den Mother|r. Loot her for the |T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r]
    >>|cRXP_WARN_Be aware of the |cRXP_ENEMY_Thistle Cubs|r which can stun you for 2 seconds|r
    .collect 208689,1 -- Ferocious Idol (1)
    .mob Den Mother
    .train 407988,1
step
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Kill |cRXP_ENEMY_Den Mother|r
    >>|cRXP_WARN_Be aware of the |cRXP_ENEMY_Thistle Cubs|r which can stun you for 2 seconds|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .mob Thistle Cub
step << Paladin
	#completewith Fruit
    .goto Darkshore,50.74,34.68,0
	>>Kill |cRXP_ENEMY_Blackwood Warriors|r and |cRXP_ENEMY_Blackwood Totemics|r. Loot them for their |T132889:0|t[Linen Cloth]
    >>|cRXP_WARN_You need to save 10|r |T132889:0|t[Linen Cloth] |cRXP_WARN_for your|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_class quest later|r
    .collect 2589,10,1644,1 << Human --Linen Cloth (10)
    .collect 2589,10,1648,1 << Dwarf --Linen Cloth (10)
    .mob Blackwood Warrior
    .mob Blackwood Totemic
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
#map Darkshore
    #label CliffCave
    #completewith next
    .goto Darkshore,54.99,32.04,30,0
    .goto Winterspring,5.49,36.64,35 >> Travel to the Cliffspring River Cave
step
    .goto Darkshore,55.66,34.89
    >>Loot the |cRXP_LOOT_Scaber Stalks|r and |cRXP_LOOT_Death Cap|r on the ground
    >>|cRXP_WARN_Stay on the upper section. If the |cRXP_LOOT_Death Cap|r is not at the end of the top side, drop down and get one from below|r
    >>|cRXP_WARN_Don't face your back to the center! |cRXP_ENEMY_Stormscale Wave Rider's|r can knock you back!|r
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
step
    .isQuestComplete 947
    .goto Darkshore,54.81,32.92,30 >> Exit the Cliffspring River Cave
step
    #xprate <1.5
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
    .isQuestAvailable 1644 << Human
    .isQuestAvailable 1648 << Dwarf
    .goto Darkshore,55.27,27.74,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,57.54,25.99,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,55.27,27.74
    >>Kill |cRXP_ENEMY_Dark Strand Fanatics|r. Loot them for their |cRXP_LOOT_Parchments|r and |T132889:0|t[Linen Cloth]
    >>|cRXP_WARN_You need to save 10|r |T132889:0|t[Linen Cloth] |cRXP_WARN_for your|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_class quest later|r
    .complete 966,1 --Worn Parchment (4)
    .collect 2589,10,1644,1 << Human --Linen Cloth (10)
    .collect 2589,10,1648,1 << Dwarf --Linen Cloth (10)
    .mob Dark Strand Fanatic
step << Paladin
    .isQuestTurnedIn 1644 << Human
    .isQuestTurnedIn 1648 << Dwarf
    .goto Darkshore,55.27,27.74,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,57.54,25.99,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,55.27,27.74
    >>Kill |cRXP_ENEMY_Dark Strand Fanatics|r. Loot them for their |cRXP_LOOT_Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Balthule Shadowstrike|r
	.target Balthule Shadowstrike
    .goto Winterspring,4.82,27.18
    .turnin 966 >> Turn in The Tower of Althalaxx
    .accept 967 >> Accept The Tower of Althalaxx
step << !Warrior !Paladin !Rogue !Druid
    .solo
#map Darkshore
    #completewith next
    .goto Winterspring,6.37,16.66,50 >> Travel to Mist's Edge
step << !Warrior !Paladin !Rogue !Druid
    .solo
#map Darkshore
    .goto Winterspring,6.37,16.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .accept 2098 >> Accept Gyromast's Retrieval
    .target Gelkak Gyromast
step << !Warrior !Paladin !Rogue !Druid
    .solo
    #completewith next
    .goto Darkshore,56.10,16.88,0
    >>Kill |cRXP_ENEMY_Raging Reef Crawlers|r and |cRXP_ENEMY_Encrusted Tide Crawlers|r. Loot them for the |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Raging Reef Crawlers|r |T132152:0|t[Thrash] ability. You can take 200 damage instantly from their melee hits|r
    .complete 2098,3 -- Bottom of Gelkak's Key
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step << !Warrior !Paladin !Rogue !Druid
    .solo
    .goto Darkshore,54.93,12.19
    >>Kill |cRXP_ENEMY_Greymist Oracles|r and |cRXP_ENEMY_Greymist Tidehunter|r. Loot them for the |cRXP_LOOT_Middle of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Greymist Oracles|r |T136048:0|t[Lightning Bolt] damage and they can also heal with |T136052:0|t[Healing Wave]|r
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Oracle
    .mob Greymist Tidehunter
step << !Warrior !Paladin !Rogue !Druid
    .solo
    .goto Darkshore,55.59,16.98,45,0
    .goto Darkshore,53.76,18.96,45,0
    .goto Darkshore,51.34,22.00,45,0
    .goto Darkshore,56.63,12.08
    >>Kill |cRXP_ENEMY_Raging Reef Crawlers|r and |cRXP_ENEMY_Encrusted Tide Crawlers|r. Loot them for the |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Raging Reef Crawlers|r |T132152:0|t[Thrash] ability. You can take 200 damage instantly from their melee hits|r
    .complete 2098,3 -- Bottom of Gelkak's Key
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step << !Warrior !Paladin !Rogue !Druid
    .solo
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
#map Darkshore
    #completewith next
    .goto Winterspring,6.37,16.66,50 >> Travel to Mist's Edge
step
#map Darkshore
    .goto Winterspring,6.37,16.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .accept 2098 >> Accept Gyromast's Retrieval
    .target Gelkak Gyromast
step
    #completewith next
    .goto Darkshore,56.10,16.88,0
    >>Kill |cRXP_ENEMY_Raging Reef Crawlers|r and |cRXP_ENEMY_Encrusted Tide Crawlers|r. Loot them for the |cRXP_LOOT_Bottom of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Raging Reef Crawlers|r |T132152:0|t[Thrash] ability. You can take 200 damage instantly from their melee hits|r
    >>|cRXP_WARN_Look for the level 18 |cRXP_ENEMY_Encrusted Tide Crawlers|r if the higher level ones are too difficult to kill|r
    .complete 2098,3 -- Bottom of Gelkak's Key
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .goto Darkshore,54.93,12.19
    >>Kill |cRXP_ENEMY_Greymist Oracles|r and |cRXP_ENEMY_Greymist Tidehunter|r. Loot them for the |cRXP_LOOT_Middle of Gelkak's Key|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Greymist Oracles|r |T136048:0|t[Lightning Bolt] damage and they can also heal with |T136052:0|t[Healing Wave]|r
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Oracle
    .mob Greymist Tidehunter
step
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
    #xprate <1.5
    .goto Darkshore,61.40,9.40,45,0
    .goto Darkshore,62.42,7.67
    >>Kill |cRXP_ENEMY_Moonstalker Sires|r and |cRXP_ENEMY_Moonstalker Matriarchs|r. Loot them for their |cRXP_LOOT_Pelts|r and |cRXP_LOOT_Fangs|r
    >>|cRXP_WARN_Be aware of |cRXP_ENEMY_Moonstalker Matriarchs|r. They always attack with a |cRXP_ENEMY_Moonstalker Runt|r by their side|r
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
    .isOnQuest 986,1002
step << !Warrior !Paladin !Rogue !Druid
    .solo
#map Darkshore
    #requires foreststriders
    .goto Winterspring,6.37,16.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2098 >> Turn in Gyromast's Retrieval
    .accept 2078 >> Accept Gyromast's Revenge
    .target Gelkak Gyromast
step
    .solo
#map Darkshore
    #requires foreststriders
    .goto Winterspring,6.37,16.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2098 >> Turn in Gyromast's Retrieval
    .target Gelkak Gyromast
step << !Warrior !Paladin !Rogue !Druid
    .solo
#map Darkshore
    #completewith next
    .goto Winterspring,5.59,21.09
    .gossipoption 87696 >> Talk to |cRXP_FRIENDLY_The Threshwackonator 4100|r to start the escort
    >>|cRXP_WARN_This quest is VERY difficult|r
    .target The Threshwackonator 4100
step << !Warrior !Paladin !Rogue !Druid
    .solo
#map Darkshore
    .goto Winterspring,6.37,16.66
    >>Escort |cRXP_FRIENDLY_The Threshwackonator 4100|r to |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>Kill |cRXP_ENEMY_The Threshwackonator 4100|r once it turns hostile
    >>|cRXP_WARN_This quest is VERY difficult|r
    .complete 2078,1
    .link https://clips.twitch.tv/VainAmorphousMacaroniPRChase-iGvhTnz0ked6LO0A >> |cRXP_WARN_Click here for a video guide|r
    .mob The Threshwackonator 4100
step << !Warrior !Paladin !Rogue !Druid
    .solo
#map Darkshore
    .goto Winterspring,6.37,16.66
    .target Gelkak Gyromast
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2078 >> Turn in Gyromast's Revenge
    .isQuestComplete 2078
step
    .solo
    #optional
    #sticky
    .destroy 7442 >> Delete Gyromast's Key from your inventory
step
    .group
#map Darkshore
    #requires foreststriders
    .goto Winterspring,6.37,16.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gelkak Gyromast|r
    .turnin 2098 >> Turn in Gyromast's Retrieval
    .accept 2078 >> Accept Gyromast's Revenge
    .target Gelkak Gyromast
step
    .group
#map Darkshore
    #completewith next
    .goto Winterspring,5.59,21.09
    .gossipoption 87696 >> Talk to |cRXP_FRIENDLY_The Threshwackonator 4100|r to start the escort
    >>|cRXP_WARN_This quest is VERY difficult|r
    .target The Threshwackonator 4100
step
    .group
#map Darkshore
    .goto Winterspring,6.37,16.66
    >>Escort |cRXP_FRIENDLY_The Threshwackonator 4100|r to |cRXP_FRIENDLY_Gelkak Gyromast|r
    >>Kill |cRXP_ENEMY_The Threshwackonator 4100|r once it turns hostile
    >>|cRXP_WARN_This quest is VERY difficult|r
    .complete 2078,1
    .link https://clips.twitch.tv/VainAmorphousMacaroniPRChase-iGvhTnz0ked6LO0A >> |cRXP_WARN_Click here for a video guide|r
    .mob The Threshwackonator 4100
step
    .group
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
step
    #xprate <1.5
    #completewith next
    >>Kill |cRXP_ENEMY_Encrusted Tide Crawlers|r and |cRXP_ENEMY_Reef Crawlers|r. Loot them for their |cRXP_LOOT_Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
#map Darkshore
    #xprate <1.5
    .goto Winterspring,1.42,26.89
    >>Click the |cRXP_PICK_Buzzbox 323|r on the ground
    .turnin 1002 >> Turn in Buzzbox 323
    .accept 1003 >> Accept Buzzbox 525
step
    #xprate <1.5
    #completewith next
    .goto Darkshore,51.50,22.26,50,0
    .goto Darkshore,49.66,21.39
    >>Kill |cRXP_ENEMY_Encrusted Tide Crawlers|r and |cRXP_ENEMY_Reef Crawlers|r. Loot them for their |cRXP_LOOT_Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step << NightElf
    #softcore
    #completewith next
    .deathskip >> Grind until your HS cooldown is <6 minutes. Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << NightElf
    #hardcore
    #completewith next
    +Grind until your HS cooldown is <9 minutes. Travel to Auberdine
step
    #completewith next
    .hs >> Hearth to Auberdine
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
    .goto Darkshore,37.21,44.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick on |cRXP_FRIENDLY_The Wanted Poster|r
    .accept 4740 >> Accept WANTED: Murkdeep!
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barithras Moonshade|r
	.target Barithras Moonshade
    .goto Felwood,19.90,18.40
    .turnin 947 >> Turn in Cave Mushrooms
    .accept 948 >> Accept Onu
step
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Glynda Nal'Shea|r
	.target Sentinel Glynda Nal'Shea
    .goto Darkshore,37.70,43.39
    .turnin 4813 >> Turn in The Fragments Within
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
#map Darkshore
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thundris Windweaver|r
	.target Thundris Windweaver
    .goto Felwood,19.98,14.40
    .turnin 4763 >> Turn in The Blackwood Corrupted
step
    #completewith next
    .goto Darkshore,32.75,42.21,35 >> Travel to the Auberdine Docks. Wait for the Menethil Harbor boat
step
    .goto Darkshore,32.44,43.71
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_and|r |T133971:0|t[Cooking] |cRXP_WARN_while waiting for the Menethil Harbor boat|r
    .zone Wetlands >> Take the boat to Menethil Harbor
    .zoneskip Loch Modan
    .zoneskip Dun Morogh
    .zoneskip Ironforge
step
    .money <0.08
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto Wetlands,10.7,56.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neal Allen|r
    .vendor >> |cRXP_WARN_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Neal Allen|r doesn't have one|r
	.target Neal Allen
    .bronzetube
step
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shellei|r
    .fly Ironforge >> Fly to Ironforge
    .target Shellei Brondir
step
    #completewith next
    .goto Ironforge,56.23,46.83,0
    .goto Ironforge,78.00,52.00,20 >> |cRXP_WARN_Perform a Logout skip by jumping on top of one of the Gryphon's heads, and logging out, then back in|r
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> |cRXP_WARN_Click here for a video guide|r
step
    .goto Ironforge,78.00,52.00,5,0
    .zone Stormwind City >> Enter the Deeprun Tram. Take the tram to Stormwind
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_and|r |T133971:0|t[Cooking] |cRXP_WARN_if needed while waiting for the tram|r
    >>You will need your |T135966:0|t[First Aid] to be 80 for a quest at level 24 << Rogue !Dwarf
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter
#name 19-21 Darkshore/Ashenvale
#version 1
#group RestedXP Alliance 1-20
#next RestedXP Alliance 20-30\21-23 Ashenvale/Stonetalon

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
    .complete 945,1 -- Escort Therylune
    .isOnQuest 945
step
    #xprate <1.5
    .goto Ashenvale,13.97,4.10
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4733 >> Accept Beached Sea Creature
    >>|cRXP_WARN_This quest can be VERY difficult. Engage the |cRXP_ENEMY_Murlocs|r 1 by 1, otherwise you may agro multiple at the same time|r
    .link https://www.twitch.tv/videos/992307825?t=05h48m36s >> |cRXP_WARN_Click here for a video guide|r
step
    #xprate <1.5
    .goto Ashenvale,13.93,2.01
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4732 >> Accept Beached Sea Turtle
step
#map Darkshore
    #xprate <1.5
    .goto Felwood,13.47,64.01
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4731 >> Accept Beached Sea Turtle
step
#map Darkshore
    #xprate <1.5
    .goto Felwood,14.62,60.72
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4730 >> Accept Beached Sea Creature
step
	#xprate <1.5
    .goto Darkshore,41.44,86.06,50,0
    .goto Darkshore,41.77,84.60,50,0
    .goto Darkshore,42.94,82.25,50,0
    .goto Darkshore,43.59,80.02,50,0
    .goto Darkshore,39.74,80.43,50,0
    .goto Darkshore,38.00,83.55
    >>Kill |cRXP_ENEMY_Grizzled Thistle Bears|r. Loot them for their |cRXP_LOOT_Scalps|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #xprate <1.5
    .goto Darkshore,41.389,80.565
    >>Click the |cRXP_PICK_Buzzbox 525|r on the ground
    .turnin 1003 >> Turn in Buzzbox 525
    .isOnQuest 1003
step
    #label lostmaster1
    #completewith lostmaster2
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Volcor|r
    .turnin 993 >> Turn in A Lost Master
    .target Volcor
    .isQuestTurnedIn 986
step
	#xprate <1.5
    .target Volcor
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Volcor|r
    >>Clear the furbolgs near the cave before accepting this quest
    .accept 994 >> Accept Escape Through Force
step
	#xprate >1.49
    .target Volcor
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Volcor|r
    .accept 995 >> Accept Escape Through Stealth
    .timer 20,Escape Through Stealth RP
step
	#xprate <1.5
    #requires lostmaster1
    #label lostmaster2
    >>Escort |cRXP_FRIENDLY_Volcor|r
    .complete 994,1
step
	#xprate >1.49
    #requires lostmaster1
    #label lostmaster2
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
	#xprate <1.5
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
    #xprate <1.5
    .goto Ashenvale,31.25,30.70
    >>Kill |cRXP_ENEMY_Dark Strand Cultists|r, |cRXP_ENEMY_Dark Strand Adepts|r, |cRXP_ENEMY_Dark Strand Enforcers|r and |cRXP_ENEMY_Dark Strand Excavators|r. Loot them for the |cRXP_LOOT_Glowing Soul Gem|r
    .complete 970,1
    .xp 20
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
	#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 970 >> Turn in The Tower of Althalaxx
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
	#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 970 >> Turn in The Tower of Althalaxx
    .accept 973 >> Accept The Tower of Althalaxx
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Therysil|r
	.target Therysil
    .goto Ashenvale,22.64,51.91
    .turnin 945 >> Turn in Therylune's Escape
    .isQuestComplete 945
step
    #completewith end
    >>Save up to 6 |cRXP_LOOT_Gooey Spider Legs|r looted from the |cRXP_ENEMY_Spiders|r in the zone for later
    .collect 2251,6,93,1 -- Gooey Spider Legs
step << Hunter
    .goto Ashenvale,18.010,59.832
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alenndaar Lapidaar|r
    .trainer >> Train your class skills
    .train 5118 >> Train |T132242:0|t[Aspect of the Cheetah]
    .target Alenndaar Lapidaar
step << Hunter
    .goto Ashenvale,17.976,60.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bolyun|r
    .trainer >> Train your pet skills
    .target Bolyun
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
    .accept 1054 >> Accept Culling the Threat
step << !Dwarf/!Hunter
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kimlya|r
    .home >> Set your Hearthstone to Astranaar
    .target Innkeeper Kimlya
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Turn in Orendil's Cure
    .timer 26,Orendil's Cure RP
    .accept 1033 >> Accept Elune's Tear
step
    .goto Ashenvale,46.37,46.38
    >>Loot |cRXP_LOOT_Elune's Tear|r on the ground
    .complete 1033,1
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .turnin 1033 >> Turn in Elune's Tear
    .timer 17,Elune's Tear RP
    .accept 1034 >> Accept The Ruins of Stardust
step
    .goto Ashenvale,33.30,67.79
    >>Loot the |cRXP_PICK_Stardust Covered Bushes|r for the |cRXP_LOOT_Handful of Stardust|r
    >>|cRXP_WARN_Their spawn locations are scattered throughout the island|r
    .complete 1034,1
step
    #completewith next
    .goto Ashenvale,31.67,64.24,15 >> Head to the base of the mountain
    .goto Ashenvale,31.21,61.60,15 >>Run straight north while climbing the mountain
step
    #completewith next
    .goto Ashenvale,27.50,60.76,8 >> Climb the hill next to the big tree to the right of the Fire Scar Shrine entrance
    >>Jump over the tree root and hug the right to avoid aggroing mobs
step
    #xprate <1.5
    .goto Ashenvale,25.27,60.68
    >>Kill |cRXP_ENEMY_Ilkrud Magthrull|r. Loot him for his |cRXP_LOOT_Tome|r
    >>|cRXP_ENEMY_Ilkrud Magthrull|r |cRXP_WARN_will cast|r |T136221:0|t[Ilkrud's Guardians] |cRXP_WARN_which is a 5 second long cast and will summon 2 Voidwalkers. Stop this cast if you're able to|r
    >>|cRXP_WARN_Clear an exit path if needed so you can reset them along with the |cRXP_ENEMY_Succubus|r if needed. You may skip this and do it at level 23 if you wish|r
    .complete 973,1
    .link https://www.twitch.tv/videos/1182187763 >> |cRXP_WARN_Click here for video reference|r
	.isOnQuest 973
    .mob Ilkrud Magthrull
step
    #xprate <1.5
    .isQuestComplete 973
    .goto Ashenvale,26.19,38.69
    .target Delgren the Purifier
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 973 >> Turn in The Tower of Althalaxx
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .accept 1007 >> Accept The Ancient Statuette
step
    #completewith nagas
    >>Kill |cRXP_ENEMY_Wrathtail Nagas|r. Loot them for their |cRXP_LOOT_Heads|r
    >>|cRXP_WARN_Don't go out of your way to complete this yet|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .complete 1008,1
step
    .goto Ashenvale,14.20,20.64
    >>Loot the |cRXP_LOOT_Ancient Statuette|r on the ground
    .complete 1007,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1007 >> Turn in The Ancient Statuette
    .timer 22,The Ancient Statuette RP
    .accept 1009 >> Accept Ruuzel
step
    .goto Ashenvale,6.528,13.361
    >>Kill |cRXP_ENEMY_Ruuzel|r. Loot her for the |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrols the island with a |cRXP_ENEMY_Wrathtail Myrmidon|r and |cRXP_ENEMY_Wrathtail Sea Witch|r. Kill one of them and then reset them if needed|r
    >>|cRXP_WARN_If you have any|r |T133717:0|t[Bombs]|cRXP_WARN_/|r[Grenades] |cRXP_WARN_you can also use them to split pull|r |cRXP_ENEMY_Ruuzel|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_is a rarespawn that can also drop the |cRXP_LOOT_Ring of Zoram|r if you see her|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Click here for video reference on "Split pulling"|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
    .skill engineering,<1,1
step
    #label nagas
    .goto Ashenvale,6.528,13.361
    >>Kill |cRXP_ENEMY_Ruuzel|r. Loot her for the |cRXP_LOOT_Ring of Zoram|r
    >>|cRXP_ENEMY_Ruuzel|r |cRXP_WARN_patrols the island with a |cRXP_ENEMY_Wrathtail Myrmidon|r and |cRXP_ENEMY_Wrathtail Sea Witch|r. Kill one of them and then reset them if needed|r
    >>|cRXP_ENEMY_Lady Vespia|r |cRXP_WARN_is a rarespawn that can also drop the |cRXP_LOOT_Ring of Zoram|r if you see her|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
step
    .goto Ashenvale,7.00,15.20,0
    .goto Ashenvale,14.46,17.15,0
    .goto Ashenvale,14.86,21.06,0
    .goto Ashenvale,13.13,25.03,0
    .goto Ashenvale,10.89,30.03,0
    .goto Ashenvale,7.00,15.20,70,0
    .goto Ashenvale,14.46,17.15,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,10.89,30.03,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,14.46,17.15,70,0
    >>Kill |cRXP_ENEMY_Wrathtail Nagas|r. Loot them for their |cRXP_LOOT_Heads|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .mob Wrathtail Myrmidon
    .mob Wrathtail Priestess
    .mob Wrathtail Razortail
    .mob Wrathtail Sea Witch
    .complete 1008,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1009 >> Turn in Ruuzel
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teronis' Corpse|r
	.target Teronis' Corpse
    .goto Ashenvale,20.31,42.33
    .turnin 991 >> Turn in Raene's Cleansing
    .accept 1023 >> Accept Raene's Cleansing
step
    .goto Ashenvale,20.41,43.82,50,0
    .goto Ashenvale,19.43,42.09,50,0
    .goto Ashenvale,21.01,41.61,50,0
    .goto Ashenvale,20.31,42.33
    >>Kill |cRXP_ENEMY_Saltspittle Murlocs|r. Loot them for the |cRXP_LOOT_Glowing Gem|r
    >>|cRXP_WARN_Save |cRXP_LOOT_Murloc Fins|r for later|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Oracles|r can heal, and have a 90 damage instant-cast shock spell every few seconds|r
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
    .complete 1023,1
step << Dwarf Hunter
    .hs >> Hearth to Auberdine
step << !Dwarf/!Hunter
    #softcore
    #completewith next
    .deathskip >> Die on the eastern side of the lake and spirit res at Astranaar
step << !Dwarf/!Hunter
    #hardcore
    #completewith next
    .goto Ashenvale,34.40,48.00,200 >> Travel to Astranaar
step << !Dwarf/!Hunter
    .goto Ashenvale,34.41,47.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daelyshia|r
    .fly Darkshore>> Fly to Darkshore
    .target Daelyshia
step
    .goto Darkshore,37.44,41.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .turnin 731 >> Turn in The Absent Minded Prospector
    .target Archaeologist Hollee
    .accept 741 >> Accept The Absent Minded Prospector
step
    #completewith end
    .vendor >> Restock/Resupply
step
    .isOnQuest 995
    .goto Darkshore,39.37,43.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 995 >> Turn in Escape Through Stealth
    .target Terenthis
step
    .isOnQuest 994
    .goto Darkshore,39.37,43.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 994 >> Turn in Escape Through Force
    .target Terenthis
step
    .goto Darkshore,36.62,45.59
    .target Gwennyth Bly'Leggonde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4730 >> Turn in Beached Sea Creature
    .turnin 4731 >> Turn in Beached Sea Turtle
    .turnin 4732 >> Turn in Beached Sea Turtle
    .turnin 4733 >> Turn in Beached Sea Creature
step
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Caylais Moonfeather|r
    .fly Teldrassil >> Fly to Teldrassil
	.target Caylais Moonfeather
step
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >> Take the purple portal into Darnassus
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Archaeologist Greywhisker|r
	.target Chief Archaeologist Greywhisker
    .goto Teldrassil,23.70,64.51
    .turnin 741 >> Turn in The Absent Minded Prospector
    .accept 942 >> Accept The Absent Minded Prospector
step << !Dwarf/!Hunter
    #label end
    .hs >> Hearth to Astranaar
step << Dwarf Hunter
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >> Travel through the purple portal to Rut'theran Village
    .zoneskip Ashenvale
    .zoneskip Darkshore
step << Dwarf Hunter
    #label end
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vesprystus|r
    .fly Ashenvale >> Fly to Ashenvale
    .target Vesprystus
    .zoneskip Ashenvale
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance !Hunter
#name 19-20 Redridge
#version 1
#group RestedXP Alliance 1-20
#next 20-21 Darkshore/Ashenvale
step
    #completewith BMenace
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billibub Cogspinner|r
    .vendor >> |cRXP_WARN_Buy a|r |T133024:0|t[Bronze Tube]
    >>|cRXP_WARN_This is a limited supply item. Skip this step if |cRXP_FRIENDLY_Billibub Cogspinner|r doesn't have one|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step
.dungeon DM
    .goto StormwindClassic,55.510,12.504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shoni the Shilent|r
    .accept 2040 >> Accept Underground Assault
    .target Shoni the Shilent
step << !NightElf
	.isOnQuest 1338
    .goto StormwindClassic,58.08,16.52
    .target Furen Longbeard
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Furen Longbeard|r
    .turnin 1338 >> Turn in Stormpike's Order
step
.dungeon DM
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wilder Thistlenettle|r
    .accept 167 >> Accept Oh Brother. . .
    .accept 168 >> Accept Collecting Memories
    .target Wilder Thistlenettle
step << !NightElf
    .goto StormwindClassic,49.194,30.284
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 399 >> Turn in Humble Beginnings
    .target Baros Alexston
    .isOnQuest 399
step << Mage
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >> Travel to the Mage Tower
step << Mage
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Train your class spells
    .target Elsharin
step << Paladin/Priest !NightElf
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
    #label PalTrainer
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .trainer >> Train your class spells
    .target Arthur the Faithful
step << Priest !NightElf
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
    .trainer >> Train your class spells
    .target Brother Joshua
step << Warlock/Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ardwyn Cailen|r
    >>|cRXP_WARN_Buy a|r |T135139:0|t[Burning Wand] |cRXP_WARN_if it's an upgrade|r
    >>|cRXP_WARN_It's important to buy a non-shadow damage wand. You'll have to deal with mobs resistant to shadow damage later|r
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    .collect 5210,1
    .target Ardwyn Cailen
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Travel to The Slaughtered Lamb and go downstairs
step << Warlock
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells
    .target Ursula Deline
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
step << Warrior !NightElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Train your class spells
    .target Wu Shen
    .target Ilsa Corbin
step
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >> Train 1h Swords << Mage/Rogue/Warlock
    .train 1180 >> Train Daggers << Mage/Druid
    .train 202 >> Train 2h Swords << Warrior/Paladin
    .target Woo Ping
step << Human Paladin
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >> Turn in The Tome of Divinity
    .target Stephanie Turner
    .accept 1644 >> Accept The Tome of Divinity
    .turnin 1644 >> Turn in The Tome of Divinity
    >>|cRXP_WARN_You will need 10 |T132889:0|t[Linen Cloth]|r
--  .accept 1780 >> Accept The Tome of Divinity
step << Rogue
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Buy a|r |T135342:0|t[Kris] |cRXP_BUY_or something better from the Auction House|r
    >>|cRXP_WARN_Equip it once you're level 19|r
    .collect 2209,1 --Kris
    .target Marda Weller
    .money <0.7115
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
step << Rogue
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Buy a|r |T135342:0|t[Kris]
    >>|cRXP_WARN_Equip it once you're level 19|r
    .collect 2209,1 --Kris
    .money <0.7115
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
    .target Marda Weller
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_Equip the|r |T135342:0|t[Kris]
    .use 2209
    .itemcount 2209,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.89
    .xp <19,1
step
.dungeon !DM
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Buy the following items for faster turn ins at Redridge Mountains shortly
    >>This will save you time as you won't need to run around looking for mobs to kill. Skip this step if you wish to not buy any
    >>|T134172:0|t[Great Goretusk Snout]
    >>|T134028:0|t[Tough Condor Meat]
    >>|T134321:0|t[Crisp Spider Meat]
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon

step << !Human !Warlock
    #completewith start
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .goto StormwindClassic,66.27,62.12
    .fp Stormwind >> Get the Stormwind City Flight Path
    .target Dungar Longdrink
step << NightElf
    .goto StormwindClassic,73.2,92.1
    .zone Elwynn Forest >> Exit Stormwind
step << !NightElf
#xprate <1.5 << Dwarf/Gnome
.dungeon DM
    #completewith next
    .goto StormwindClassic,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Westfall >> Fly to Westfall
    .target Dungar Longdrink
    .zoneskip Westfall
step << !NightElf
#xprate <1.5 << Dwarf/Gnome
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 65 >> Accept The Defias Brotherhood
    .goto Westfall,56.33,47.52
    .target Gryan Stoutmantle
step << !NightElf
#xprate <1.5 << Dwarf/Gnome
.dungeon DM
    .goto Westfall,56.55,52.64,-1
    .goto StormwindClassic,66.27,62.12,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r or |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge >> Fly to Redridge Mountains
    .target Thor
    .target Dungar Longdrink
step << !Human
#xprate >1.49 << Dwarf/Gnome
.dungeon DM
    #completewith WestEntry
    .goto Westfall,59.95,19.35
    .zone Westfall >> Travel to Westfall
step << !Human
#xprate >1.49 << Dwarf/Gnome
.dungeon DM
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Get the Sentinel Hill flight path
    .target Thor
step << Gnome Warlock
#xprate >1.49
.dungeon DM
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Redridge >> Fly to Redridge
    .target Thor
step << !Human
#xprate >1.49 << Dwarf/Gnome
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .accept 65 >> Accept The Defias Brotherhood
    .goto Westfall,56.33,47.52
    .target Gryan Stoutmantle
step << NightElf Warrior/NightElf Priest
    #completewith next
    .goto Elwynn Forest,41.08,65.76,25 >> Travel to Goldshire << Warrior
    .goto Elwynn Forest,43.17,65.70,15 >> Travel to Goldshire << Priest
step << NightElf Warrior
    .goto Elwynn Forest,41.08,65.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lyria|r
    .trainer >> Train your class spells
    .target Lyria Du Lac
step << NightElf Priest
    >>Travel to the Inn. Go upstairs
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Josetta|r
    .goto Elwynn Forest,43.17,65.70,12,0
    .goto Elwynn Forest,43.80,66.47,8,0
    .goto Elwynn Forest,43.28,65.72
    .trainer >> Train your class spells
    .target Priestess Josetta
step << !Human !Warlock
    #xprate >1.49 << !NightElf
    .xp <20,1
    >>Run to the Tower of Azora
    .goto Elwynn Forest,65.20,69.80
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theocritus|r
    .accept 94 >> Accept A Watchful Eye
step << !NightElf
.dungeon !DM
    #xprate <1.5 << !Human
    #completewith next
    .goto StormwindClassic,66.27,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Redridge >>Fly to Redridge Mountains
    .target Dungar Longdrink
step << !Human !Warlock
    #xprate >1.49 << Gnome/Dwarf
    #completewith next
    #label start
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >> Travel to Redridge Mountains
step << !Human !Warlock
    #xprate >1.49 << Gnome/Dwarf
    .goto Redridge Mountains,15.27,71.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >> Accept Encroaching Gnolls
    .target Guard Parker
step << !Human !Warlock
    #xprate >1.49 << Gnome/Dwarf
    .goto Redridge Mountains,30.73,59.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 244 >> Turn in Encroaching Gnolls
    .target Deputy Feldon
step << NightElf
    #xprate <1.5
    .goto Redridge Mountains,30.73,59.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Feldon|r
    .target Deputy Feldon
    .accept 246 >> Accept Assessing the Threat
step
.dungeon DM
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wiley the Black|r up stairs
    .turnin 65 >> Turn in The Defias Brotherhood
    .accept 132 >> Accept The Defias Brotherhood
	.target Wiley the Black
step
.dungeon DM
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Solomon|r
	.target Magistrate Solomon
    .accept 120 >> Accept Messenger to Stormwind
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 118 >> Accept The Price of Shoes
step
.dungeon DM
    #completewith next
    .goto Redridge Mountains,30.59,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fly Westfall >> Fly to Westfall
    .target Ariena Stormfeather
step
.dungeon DM
    .goto Westfall,56.325,47.519
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan Stoutmantle|r
    .turnin 132 >> Turn in The Defias Brotherhood
    .accept 135 >> Accept The Defias Brotherhood
    .target Gryan Stoutmantle
step
.dungeon DM
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind
    .target Thor
step
.dungeon DM
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 135 >> Turn in The Defias Brotherhood
    .accept 141 >> Accept The Defias Brotherhood
    .target Master Mathias Shaw
step
.dungeon DM
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Westfall >> Fly to Westfall
    .target Dungar Longdrink
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
step
.dungeon DM
    .goto StormwindClassic,63.982,75.338
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Marcus Jonathan|r
    .turnin 120 >> Turn in Messenger to Stormwind
    .accept 121 >> Accept Messenger to Stormwind
    .target General Marcus Jonathan
step << Mage
.dungeon DM
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >> Travel to the Mage Tower
step << Mage
.dungeon DM
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Train your class spells
    .target Elsharin
step << Mage
.dungeon DM
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larimaine|r
    .train 48464 >> Train |T135763:0|t[Teleport: Stormwind]
	.xp <20,1
    .target Larimaine Purdue
step << Warlock
.dungeon DM
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Travel to The Slaughtered Lamb and go downstairs
step << Warlock
.dungeon DM
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Train your class spells
    .target Ursula Deline
step
.dungeon DM
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argos Nightwhisper|r
	.target Argos Nightwhisper
    .goto StormwindClassic,21.40,55.80
    .accept 3765 >> Accept The Corruption Abroad
step << Druid
.dungeon DM
    #season 2
    #completewith next
    +|cRXP_WARN_You should be preparing to switch to|r |T132276:0|t[Feral] |cRXP_WARN_instead of using|r |T136096:0|t[Balance] |cRXP_WARN_abilities once you acquire the runes for|r |T132135:0|t[Mangle] |cRXP_WARN_and|r |T236167:0|t[Savage Roar]
step << Druid
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheldras Moontree|r
    .goto StormwindClassic,20.89,55.50
    .trainer >> Train your class spells
    .train 768 >> Train |T132115:0|t[Cat Form]
    .target Sheldras Moontree
step << Paladin/Priest
.dungeon DM
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
.dungeon DM
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r. He will give you the |T133739:0|t[|cRXP_LOOT_Tome of Valor|r]
    use 6776 >>|cRXP_WARN_Use the |T133739:0|t[|cRXP_LOOT_Tome of Valor|r] to start the quest|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Accept The Tome of Valor
    .target Duthorian Rall
step << Paladin
.dungeon DM
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1649 >>Turn in The Tome of Valor
    .accept 1650 >>Accept The Tome of Valor
    .target Duthorian Rall
step << Paladin
.dungeon DM
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .trainer >> Train your class spells
    .target Arthur the Faithful
step << Priest
.dungeon DM
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
    .trainer >> Train your class spells
    .target Brother Joshua
step
.dungeon DM
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baros Alexston|r
    .turnin 373 >> Turn in The Unsent Letter
    .accept 389 >> Accept Bazil Thredd
    .target Baros Alexston
step
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wilder Thistlenettle|r and |cRXP_FRIENDLY_Shoni the Shilent|r
    .turnin 167 >> Turn in Oh Brother. . .
    .turnin 168 >> Turn in Collecting Memories
    .goto StormwindClassic,65.438,21.175
    .turnin 2040 >> Turn in Underground Assault
    .goto StormwindClassic,55.510,12.504
    .target Wilder Thistlenettle
    .target Shoni the Shilent
step << Rogue
.dungeon DM
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
    .trainer >> Train your class spells
    .target Osborne the Night Man
step << Rogue
.dungeon DM
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
step << Rogue
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 2360 >> Accept Mathias and the Defias
    .goto StormwindClassic,75.78,59.84
    .target Master Mathias Shaw
step << Warrior
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Train your class spells
    .target Wu Shen
    .target Ilsa Corbin
step << Rogue
.dungeon DM
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Buy a|r |T135324:0|t[Longsword] |cRXP_WARN_and equip it at 21|r
    >>|cRXP_WARN_Buy something from the Auction House if there's something cheaper/better|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
.dungeon DM
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Buy a|r |T135324:0|t[Longsword] |cRXP_WARN_and equip it at 21|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
.dungeon DM
    #optional
    #completewith next
    +|cRXP_WARN_Equip the|r |T135324:0|t[Longsword]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
step << Warrior/Paladin
.dungeon DM
    #ah
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_WARN_Buy a|r |T135280:0|t[Dacian Falx] |cRXP_WARN_if you have enough money. Equip it at 21|r
    >>|cRXP_WARN_Buy something from the Auction House if there's something cheaper/better|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
.dungeon DM
    #ssf
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_WARN_Buy a|r |T135280:0|t[Dacian Falx] |cRXP_WARN_if you have enough money. Equip it at 21|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
.dungeon DM
    #optional
    #completewith next
    +|cRXP_WARN_Equip the|r |T135280:0|t[Dacian Falx]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.99
    .xp <21,1
step
.dungeon DM
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Warden Thelwater|r
    .turnin 389 >> Turn in Bazil Thredd
--  .accept 391 >> Accept The Stockade Riots -- Accept later when going to do Stockades
    .target Warden Thelwater
step
.dungeon DM
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>Buy the following items for faster turn ins at Redridge Mountains shortly
    >>This will save you time as you won't need to run around looking for mobs to kill. Skip this step if you wish to not buy any
    >>|T134172:0|t[Great Goretusk Snout]
    >>|T134028:0|t[Tough Condor Meat]
    >>|T134321:0|t[Crisp Spider Meat]
    .collect 2296,5,92,1 -- Great Goretusk Snout (5)
    .collect 1080,5,92,1 -- Tough Condor Meat (5)
    .collect 1081,5,92,1 -- Crisp Spider Meat (5)
    .target Auctioneer Jaxon
step
.dungeon DM
    #completewith next
    .goto Elwynn Forest,32.240,49.723,60 >> Exit Stormwind. Travel to Goldshire
    .isOnQuest 118
    .xp <20,1
step
.dungeon DM
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smith Argus|r
	.target Smith Argus
    .turnin 118 >> Turn in The Price of Shoes
    .accept 119 >> Accept Return to Verner
    .isOnQuest 118
    .xp <20,1
step
.dungeon DM
    .isQuestTurnedIn 118
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smith Argus|r
	.target Smith Argus
    .accept 119 >> Accept Return to Verner
    .xp <20,1
step
.dungeon DM
    #completewith next
    .subzone 91 >> Travel to the Tower of Azora. Ascend the tower
    .xp <20,1
step
.dungeon DM
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theocritus|r at the top
    .accept 94 >> Accept A Watchful Eye
    .xp <20,1
step
.dungeon DM
    .goto Elwynn Forest,64.880,69.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dawn Brightstar|r
    .vendor >> |cRXP_FRIENDLY_Dawn Brightstar|r |cRXP_BUY_has has limited supply items such as|r |T134938:0|t|T134937:0|t|T134943:0|t[Scrolls] |cRXP_BUY_and|r |T134850:0|t|T134830:0|t[Potions] |cRXP_BUY_as well, which you should buy if available|r << !Warrior !Rogue
    .vendor >> |cRXP_FRIENDLY_Dawn Brightstar|r |cRXP_BUY_has has limited supply items such as|r |T134938:0|t|T134937:0|t|T134943:0|t[Scrolls] |cRXP_BUY_and|r |T134830:0|t[Potions] |cRXP_BUY_as well, which you should buy if available|r << Warrior/Rogue
    .target Dawn Brightstar
    .subzoneskip 91,1
step
.dungeon DM
    #completewith FlyR
	.goto Redridge Mountains,6.7,72.4
    .zone Redridge Mountains >> Travel to Redridge Mountains

step
.dungeon DM
    #xprate <1.5
    #label GParker
    .goto Redridge Mountains,15.27,71.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Parker|r
    .accept 244 >> Accept Encroaching Gnolls
    .target Guard Parker
step
.dungeon DM
    #xprate <1.5
    .goto Redridge Mountains,30.73,59.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Feldon|r
    .turnin 244 >> Turn in Encroaching Gnolls
    .target Deputy Feldon


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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 118 >> Accept The Price of Shoes
step
.dungeon DM
#xprate >1.49
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >> Turn in Return to Verner
    .accept 124 >> Accept A Baying of Gnolls
step
.dungeon DM
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >> Turn in Return to Verner
    .accept 124 >> Accept A Baying of Gnolls
    .accept 122 >> Accept Underbelly Scales
step
.dungeon DM
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Marcus Jonathan|r
	.target General Marcus Jonathan
    .goto StormwindClassic,63.982,75.338
    .turnin 120 >> Turn in Messenger to Stormwind
    .accept 121 >> Accept Messenger to Stormwind
step
.dungeon !DM
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
#xprate <1.5
    .goto Redridge Mountains,26.80,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_walks around inside the Inn|r
	.target Darcy
    .accept 129 >> Accept A Free Lunch
step
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wiley the Black|r upstairs
	.target Wiley the Black
    .turnin 65 >> Turn in The Defias Brotherhood
    .isOnQuest 65
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
step << Warlock
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto Redridge Mountains,21.85,46.32
    .accept 34 >> Accept An Unwelcome Guest
step << Warlock
    .goto Redridge Mountains,15.68,49.30
    >>Kill |cRXP_ENEMY_Bellygrub|r. Loot him for his |cRXP_LOOT_Tusk|r
    >>|cRXP_WARN_Kite |cRXP_ENEMY_Bellygrub|r back to Lakeshire so the |cRXP_FRIENDLY_Guards|r assist you in killing|r |cRXP_ENEMY_Bellygrub|r
    >>|cRXP_WARN_This quest is VERY difficult. You can skip this step and come back later|r
    .complete 34,1 -- Bellygrub's Tusk (1)
    .link https://youtu.be/6JE967OG3CU?t=1845 >> |cRXP_WARN_Click here for a video guide|r
    .mob Bellygrub
step << Warlock
    .goto Redridge Mountains,21.85,46.32
    .target Martie Jainrose
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >> Turn in An Unwelcome Guest
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
step << Druid
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >> Turn in Hilary's Necklace
step
    #softcore
    >>Open the |cRXP_PICK_Sunken Chest|r. Loot it for |cRXP_LOOT_Oslow's Toolbox|r
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
    #xprate <1.5
    #sticky
    #completewith orcs
    >>Kill |cRXP_ENEMY_Great Goretusks|r. Loot them for their |cRXP_LOOT_Great Goretusk Snouts|r
    >>Kill |cRXP_ENEMY_Tarantulas|r. Loot them for their |cRXP_LOOT_Crisp Spider Meat|r
    >>Kill |cRXP_ENEMY_Dire Condors|r. Loot them for their |cRXP_LOOT_Tough Condor Meat|r
    >>|cRXP_WARN_Do NOT sell any of these items until you turn the Redridge Goulash quest|r
    >>|cRXP_WARN_Save any|r |T133970:0|t[Chunks of Boar Meat] |cRXP_WARN_you loot as well as you can use them to level|r |T133971:0|t[Cooking] |cRXP_WARN_to 50 which is required for Duskwood later|r
    .collect 2296,5,92,1
    .collect 1080,5,92,1
    .collect 1081,5,92,1
    .mob Great Goretusk
    .mob Tarantula
    .mob Dire Condor
step
    #xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Parker|r
	.target Guard Parker
    .goto Redridge Mountains,15.30,71.50
    .accept 244 >> Accept Encroaching Gnolls
step
    #xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Parker|r
	.target Guard Parker
    .goto Redridge Mountains,15.27,71.45
    .turnin 129 >> Turn in A Free Lunch
    .accept 130 >> Accept Visit the Herbalist
step
    #xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Feldon|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.70,60.00
    .turnin 244 >> Turn in Encroaching Gnolls
    .accept 246 >> Accept Assessing the Threat
step
    #xprate <1.5
    .goto Redridge Mountains,21.22,67.77,45,0
    .goto Redridge Mountains,17.70,73.39,45,0
    .goto Redridge Mountains,11.20,76.31,45,0
    .goto Redridge Mountains,13.37,81.48,45,0
    .goto Redridge Mountains,18.86,73.63
    >>Kill |cRXP_ENEMY_Tarantulas|r. Loot them for their |cRXP_LOOT_Crisp Spider Meat|r
    .collect 1081,5,92,1
    .mob Tarantula
step
    #xprate <1.5
    .goto Redridge Mountains,29.49,82.80,45,0
    .goto Redridge Mountains,32.52,81.78,45,0
    .goto Redridge Mountains,43.18,72.22,45,0
    .goto Redridge Mountains,31.13,82.18
	>>Kill |cRXP_ENEMY_Redridge Mongrels|r and |cRXP_ENEMY_Redridge Poachers|r
    .complete 246,1 --Redridge Mongrel (10)
    .complete 246,2 --Redridge Poacher (6)
    .mob Redridge Mongrel
	.mob Redridge Poacher
step
    .goto Redridge Mountains,49.0,70.0
    >>Kill |cRXP_ENEMY_Murloc Shorestrikers|r and |cRXP_ENEMY_Murloc Minor Tidecallers|r. Loot them for their |cRXP_LOOT_Fins|r and |cRXP_LOOT_Sunfish|r
	>>|cRXP_WARN_Be aware this area is a hyperspawn, meaning the |cRXP_ENEMY_Murlocs|r respawn quickly|r
    .complete 127,1
    .collect 1468,8,150,1
    .mob Murloc Shorestriker
    .mob Murloc Minor Tidecaller
step
    #xprate <1.5
    .goto Redridge Mountains,61.37,77.10
    >>Kill |cRXP_ENEMY_Dire Condors|r. Loot them for their |cRXP_LOOT_Tough Condor Meat|r
    >>|cRXP_WARN_Skip this step if you aren't seeing any|r |cRXP_ENEMY_Dire Condors|r
    .collect 1080,5,92,1
    .mob Dire Condor
step
    #label orcs
    >>Kill |cRXP_ENEMY_Blackrock Grunts|r and |cRXP_ENEMY_Blackrock Outrunners|r. Loot them for their |cRXP_LOOT_Axes|r
	>>|cRXP_WARN_Be aware the |cRXP_ENEMY_Blackrock Outrunners|r will cast |T132149:0|t[Net] on you|r
    .goto Redridge Mountains,74.00,79.00,60,0
    .goto Redridge Mountains,76.18,83.39,60,0
    .goto Redridge Mountains,77.80,68.50,60,0
    .goto Redridge Mountains,70.11,77.34,60,0
    .goto Redridge Mountains,74.00,79.00
    .complete 20,1 --Battleworn Axe (10)
    .mob Blackrock Grunt
	.mob Blackrock Outrunner
step
    #xprate <1.5
    .goto Redridge Mountains,61.37,77.10
    >>Kill |cRXP_ENEMY_Dire Condors|r. Loot them for their |cRXP_LOOT_Tough Condor Meat|r
    .collect 1080,5,92,1
    .mob Dire Condor
step
    #hardcore
    >>|cRXP_WARN_Jump into the Lake|r
    >>Open the |cRXP_PICK_Sunken Chest|r. Loot it for |cRXP_LOOT_Oslow's Toolbox|r
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
    .goto Redridge Mountains,49.0,70.0
    .xp 20-7687 >> Grind until you are 7687 xp away from level 20 << !Rogue
    .xp 20-10012 >> Grind until you are 10012 xp away from level 20 << Rogue
step << Rogue
    #completewith next
    .subzone 97 >> Travel to Alther's Mill
step << Rogue
    .goto Redridge Mountains,52.10,45.24
    +Open the |cRXP_PICK_Practice Lockboxes|r until you reach 80 in |T136058:0|t[Lockpicking]
    .skill lockpicking,80,1
step << Rogue
	.goto Redridge Mountains,52.05,44.69
    >>Open |cRXP_PICK_Lucius's Lockbox|r. Loot it for the |cRXP_LOOT_Token of Thievery|r
    .complete 2282,1 --Token of Thievery
    .skill lockpicking,<80,1
step
    #completewith next
    .goto Redridge Mountains,33.50,48.97,150 >> Travel to Lakeshire
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Marris|r
	.target Marshal Marris
    .goto Redridge Mountains,33.50,48.97
    .turnin 20 >> Turn in Blackrock Menace
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Oslow|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.13,48.63
    .turnin 125 >> Turn in The Lost Tools
    .accept 89 >> Accept The Everstill Bridge
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.72,47.38
    .turnin 127 >> Turn in Selling Fish
    .accept 150 >> Accept Murloc Poachers
    .turnin 150 >> Turn in Murloc Poachers
    .xp <20,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.72,47.38
    .turnin 127 >> Turn in Selling Fish
step
#optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .accept 92 >> Accept Redridge Goulash
    .turnin 92 >> Turn in Redridge Goulash
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto Redridge Mountains,21.86,46.33
    .turnin 130 >> Turn in Visit the Herbalist
    .accept 131 >> Accept Delivering Daffodils
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_walks around inside the Inn|r
	.target Darcy
    .goto Redridge Mountains,26.80,44.30
    .turnin 131 >> Turn in Delivering Daffodils
step << Rogue
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lucius|r
	.target Lucius
    .goto Redridge Mountains,28.07,52.02
    .turnin 2282 >> Turn in Alther's Mill
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >> Turn in Hilary's Necklace
step << Rogue
    #optional
	#completewith InRR
	.destroy 7907 >> Destroy the |T134328:0|t[Certificate of Thievery]. You don't need it
step
    #xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deputy Feldon|r
	.target Deputy Feldon
    .goto Redridge Mountains,30.73,59.99
    .turnin 246 >> Turn in Assessing the Threat
step
    .goto Redridge Mountains,49.0,70.0
    .xp 20 >> Grind until you are level 20
step << Rogue
.dungeon DM
    #softcore
    .isOnQuest 2360
    .goto Redridge Mountains,30.59,59.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
    .fp Redridge Mountains >> Get the Redridge Mountains flight path << !Human
    .fly Westfall >> Fly to Westfall
    .target Ariena Stormfeather
step
.dungeon !DM << Rogue
    #completewith InRR
    .goto Redridge Mountains,30.59,59.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena Stormfeather|r
	.target Ariena Stormfeather
    .fp Redridge Mountains >> Get the Redridge Mountains flight path << !Human !Warlock
    .fly Stormwind >> Fly to Stormwind City
step << Rogue
.dungeon !DM
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Buy a|r |T135324:0|t[Longsword] |cRXP_WARN_and equip it at 21|r
    >>|cRXP_WARN_Buy something from the Auction House if there's something cheaper/better|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
.dungeon !DM
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_WARN_Buy a|r |T135324:0|t[Longsword] |cRXP_WARN_and equip it at 21|r
    .collect 923,1 --Longsword (1)
    .target Marda Weller
    .money <0.8743
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
.dungeon !DM
    #optional
    #completewith next
    +|cRXP_WARN_Equip the|r |T135324:0|t[Longsword]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
step << Warrior/Paladin
.dungeon !DM
    #ah
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_WARN_Buy a|r |T135280:0|t[Dacian Falx] |cRXP_WARN_if you have enough money. Equip it at 21|r
    >>|cRXP_WARN_Buy something from the Auction House if there's something cheaper/better|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
.dungeon !DM
    #ssf
    .goto StormwindClassic,57.54,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_WARN_Buy a|r |T135280:0|t[Dacian Falx] |cRXP_WARN_if you have enough money. Equip it at 21|r
    .collect 922,1 --Dacian Falx (1)
    .target Gunther Weller
    .money <1.2038
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
.dungeon !DM
    #optional
    #completewith next
    +|cRXP_WARN_Equip the|r |T135280:0|t[Dacian Falx]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.99
    .xp <21,1
step << Warlock
.dungeon !DM
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Travel to The Slaughtered Lamb and go downstairs
step << Warlock
.dungeon !DM
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gakin the Darkbinder|r
    .accept 1716 >> Accept Devourer of Souls
    .trainer >> Train your class spells
    .target Gakin the Darkbinder
step << Mage
.dungeon !DM
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >> Travel to the Mage Tower
step << Mage
.dungeon !DM
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Train your class spells
    .target Elsharin
step << Mage
.dungeon !DM
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Larimaine|r
    .train 48464 >> Train |T135763:0|t[Teleport: Stormwind]
	.xp <20,1
    .target Larimaine Purdue
step
.dungeon !DM
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Argos Nightwhisper|r
	.target Argos Nightwhisper
    .goto StormwindClassic,21.40,55.80
    .accept 3765 >> Accept The Corruption Abroad
step << Druid
.dungeon !DM
    #season 2
    #completewith next
    +|cRXP_WARN_You should be preparing to switch to|r |T132276:0|t[Feral] |cRXP_WARN_instead of using|r |T136096:0|t[Balance] |cRXP_WARN_abilities once you acquire the runes for|r |T132135:0|t[Mangle] |cRXP_WARN_and|r |T236167:0|t[Savage Roar]
step << Druid
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheldras Moontree|r
    .goto StormwindClassic,20.89,55.50
    .trainer >> Train your class spells
    .train 768 >> Train |T132115:0|t[Cat Form]
    .target Sheldras Moontree
step << Paladin/Priest
.dungeon !DM
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Travel to the Stormwind Cathedral
step << Paladin
.dungeon !DM
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r. He will give you the |T133739:0|t[|cRXP_LOOT_Tome of Valor|r]
    use 6776 >>|cRXP_WARN_Use the |T133739:0|t[|cRXP_LOOT_Tome of Valor|r] to start the quest|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Accept The Tome of Valor
    .target Duthorian Rall
step << Paladin
.dungeon !DM
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1649 >>Turn in The Tome of Valor
    .accept 1650 >>Accept The Tome of Valor
    .target Duthorian Rall
step << Paladin
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arthur the Faithful|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >> Train your class spells
    .target Arthur the Faithful
step << Priest
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Joshua|r
    .goto StormwindClassic,38.54,26.86
    .trainer >> Train your class spells
    .target Brother Joshua
step << Rogue
.dungeon !DM
    .goto StormwindClassic,74.64,52.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Osborne|r
    .trainer >> Train your class spells
    .target Osborne the Night Man
step << Rogue
.dungeon !DM
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
step << Rogue
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 2360 >> Accept Mathias and the Defias
    .goto StormwindClassic,75.78,59.84
    .target Master Mathias Shaw
step << Warrior
.dungeon !DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Train your class spells
    .target Wu Shen
    .target Ilsa Corbin
step << NightElf Rogue
    #softcore
    .goto Westfall,56.55,52.64,5,0
    .zone Westfall >> Travel to Westfall
    >>Fly there if you already have the Westfall Flight Path
    .isOnQuest 2360
step << NightElf Rogue
    #softcore
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fp Westfall >> Get the Westfall flight path
    .target Thor
    .isOnQuest 2360
step << NightElf Rogue
    #hardcore
    .goto Westfall,56.55,52.64,5,0
    .zone Westfall >> Travel to Westfall
    >>|cRXP_WARN_Skip this step if you are not yet level 22 with Vanish|r
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << NightElf Rogue
    #hardcore
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    >>|cRXP_WARN_Skip this step if you are not yet level 22 with Vanish|r
    .fp Westfall >> Get the Westfall flight path
    .target Thor
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << !NightElf Rogue
    #softcore
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    .fly Westfall >> Fly to Westfall
    .target Dungar Longdrink
    .isOnQuest 2360
step << !NightElf Rogue
    #hardcore
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dungar Longdrink|r
    >>|cRXP_WARN_Skip this step if you are not yet level 22 with Vanish|r
    .fly Westfall >> Fly to Westfall
    .target Dungar Longdrink
    .isOnQuest 2360
    .train 1856,3 -- skips step if not 22/doesnt have Vanish
step << Rogue
    #softcore
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Kearnen|r
    .turnin 2360 >> Turn in Mathias and the Defias
    >>|cRXP_WARN_The following quest chain is for the Rogue Poison questline|r
    >>|cRXP_WARN_This quest is VERY difficult. You can skip this step and come back at level 24|r
    .target Agent Kearnen
    .link https://www.youtube.com/watch?v=t05Ux5Qis9k >>|cRXP_WARN_Click here for a video guide|r
step << Rogue
    #softcore
    .goto Westfall,68.50,70.08
    .target Agent Kearnen
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Kearnen|r
    .accept 2359 >> Accept Klaven's Tower
    .isQuestTurnedIn 2360
step << Rogue
    #softcore
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07
    >>|T133644:0|t[Pick Pocket] a |cRXP_ENEMY_Malformed Defias Drone|r. Loot it for the |cRXP_LOOT_Tower Key|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    >>|cRXP_WARN_The |cRXP_ENEMY_Malformed Defias Drone|r patrols around the outside of the Tower|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=t05Ux5Qis9k >>Click |cRXP_WARN_Click here for a video guide|r
    .isOnQuest 2359
    .mob Malformed Defias Drone
step << Rogue
    #softcore
    .goto Westfall,70.41,73.93
    >>|cRXP_WARN_Travel up to the top of the Tower|r
    >>Open the |cRXP_PICK_Duskwood Chest|r. Loot it for |cRXP_LOOT_Klaven Mortwake's Journal|r
    >>|cRXP_WARN_You can|r |T132310:0|t[Sap] |cRXP_ENEMY_Klaven Mortwake|r |cRXP_WARN_and then open the|r |cRXP_PICK_Duskwood Chest|r
    >>|cRXP_WARN_If your|r |T132310:0|t[Sap] |cRXP_WARN_resists or misses, cast|r |T132331:0|t[Vanish] |cRXP_WARN_and try again or otherwise jump down and reset him. Alternatively you can come back later to complete it|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=t05Ux5Qis9k >>|cRXP_WARN_Click here for a video guide|r
    .isOnQuest 2359
    .xp <22,1
step << Rogue
    #softcore
    .goto Westfall,70.41,73.93
    >>|cRXP_WARN_Travel up to the top of the Tower|r
    >>Open the |cRXP_PICK_Duskwood Chest|r. Loot it for |cRXP_LOOT_Klaven Mortwake's Journal|r
    >>|cRXP_WARN_You can|r |T132310:0|t[Sap] |cRXP_ENEMY_Klaven Mortwake|r |cRXP_WARN_and then open the|r |cRXP_PICK_Duskwood Chest|r
    >>|cRXP_WARN_If your|r |T132310:0|t[Sap] |cRXP_WARN_resists or misses, jump down and reset him. Alternatively you can come back later to complete it|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=t05Ux5Qis9k >>|cRXP_WARN_Click here for a video guide|r
    .isOnQuest 2359
step << Rogue !Dwarf
    #softcore
    .goto Duskwood,15.90,72.10,60,0
    .goto Duskwood,14.86,64.56,50,0
    .goto Duskwood,10.43,53.97
    >>Kill |cRXP_ENEMY_Pygmy Venom Web Spiders|r and |cRXP_ENEMY_Venom Web Spiders|r. Loot them for their |cRXP_LOOT_Small Venom Sac|r and |cRXP_LOOT_Gooey Spider Legs|r
    >>|cRXP_WARN_You need 1 |cRXP_LOOT_Small Venom Sac|r to make an|r |T134437:0|t[Anti-Venom] |cRXP_WARN_later to remove the|r |T136230:0|t[Touch of Zanzil] |cRXP_WARN_debuff|r
    >>|cRXP_WARN_Save |cRXP_LOOT_Gooey Spider Legs|r for a later quest in Duskwood|r
    >>|cRXP_WARN_If you have a|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_or|r |T625999:0|t|cFFFF7C0ADruid|r |cRXP_WARN_friend you can skip this step and ask them to remove it for you|r
    .collect 1475,1,2359,1 -- Small Venom Sac
    .collect 2251,6,93,1,1 -- Gooey Spider Legs
    .isOnQuest 2359
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
step << Rogue
    #softcore
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind
    .target Thor
step << Rogue
    #softcore
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
step << Rogue
    #softcore
    .goto StormwindClassic,75.78,59.84
    .target Master Mathias Shaw
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 2359 >> Turn in Klaven's Tower
    .isQuestComplete 2359
step << Rogue
    #softcore
    .goto StormwindClassic,75.78,59.84
    .target Master Mathias Shaw
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 2607 >> Accept The Touch of Zanzil
    .isQuestTurnedIn 2359
step << Rogue
    #softcore
    #completewith next
    .goto StormwindClassic,78.86,58.85,9 >> Travel down into the basement
    .isQuestTurnedIn 2359
step << Rogue
    #softcore
    .goto StormwindClassic,78.03,58.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doc Mixilpixil|r
    .target Doc Mixilpixil
    .turnin 2607 >> Turn in The Touch of Zanzil
    .isQuestTurnedIn 2359
	------------
step << Rogue
    #hardcore
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Kearnen|r
    .turnin 2360 >> Turn in Mathias and the Defias
    >>|cRXP_WARN_The following quest chain is for the Rogue Poison questline|r
    >>|cRXP_WARN_This quest is VERY difficult. You can skip this step and come back at level 24|r
    .target Agent Kearnen
    .link https://www.youtube.com/watch?v=t05Ux5Qis9k >>|cRXP_WARN_Click here for a video guide|r
    .train 1856,3 -- skips entire step if Vanish isn't trained. Can do Poison quest later
step << Rogue
    #hardcore
    .goto Westfall,68.50,70.08
    .target Agent Kearnen
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Agent Kearnen|r
    .accept 2359 >> Accept Klaven's Tower
    .isQuestTurnedIn 2360
    .train 1856,3 -- skips entire step if Vanish isn't trained. Can do Poison quest later
step << Rogue
    #hardcore
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07
    >>|T133644:0|t[Pick Pocket] a |cRXP_ENEMY_Malformed Defias Drone|r. Loot it for the |cRXP_LOOT_Tower Key|r
    >>|cRXP_WARN_You must be in|r |T132320:0|t[Stealth] |cRXP_WARN_to use|r |T133644:0|t[Pick Pocket]
    >>|cRXP_WARN_The |cRXP_ENEMY_Malformed Defias Drone|r patrols around the outside of the Tower|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=t05Ux5Qis9k >>Click |cRXP_WARN_Click here for a video guide|r
    .isOnQuest 2359
    .mob Malformed Defias Drone
    .train 1856,3 -- skips entire step if Vanish isn't trained. Can do Poison quest later
step << Rogue
    #hardcore
    .xp <22,1
    .goto Westfall,70.41,73.93
    >>|cRXP_WARN_Travel up to the top of the Tower|r
    >>Open the |cRXP_PICK_Duskwood Chest|r. Loot it for |cRXP_LOOT_Klaven Mortwake's Journal|r
    >>|cRXP_WARN_You can|r |T132310:0|t[Sap] |cRXP_ENEMY_Klaven Mortwake|r |cRXP_WARN_and then open the|r |cRXP_PICK_Duskwood Chest|r
    >>|cRXP_WARN_If your|r |T132310:0|t[Sap] |cRXP_WARN_resists or misses, cast|r |T132331:0|t[Vanish] |cRXP_WARN_and try again or otherwise jump down and reset him. Alternatively you can come back later to complete it|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=t05Ux5Qis9k >>|cRXP_WARN_Click here for a video guide|r
    .isOnQuest 2359
    .train 1856,3 -- skips entire step if Vanish isn't trained. Can do Poison quest later
step << Rogue !Dwarf
    #hardcore
    .goto Duskwood,15.90,72.10,60,0
    .goto Duskwood,14.86,64.56,50,0
    .goto Duskwood,10.43,53.97
    >>Kill |cRXP_ENEMY_Pygmy Venom Web Spiders|r and |cRXP_ENEMY_Venom Web Spiders|r. Loot them for their |cRXP_LOOT_Small Venom Sac|r and |cRXP_LOOT_Gooey Spider Legs|r
    >>|cRXP_WARN_You need 1 |cRXP_LOOT_Small Venom Sac|r to make an|r |T134437:0|t[Anti-Venom] |cRXP_WARN_later to remove the|r |T136230:0|t[Touch of Zanzil] |cRXP_WARN_debuff|r
    >>|cRXP_WARN_Save |cRXP_LOOT_Gooey Spider Legs|r for a later quest in Duskwood|r
    >>|cRXP_WARN_If you have a|r |T626003:0|t|cFFF48CBAPaladin|r |cRXP_WARN_or|r |T625999:0|t|cFFFF7C0ADruid|r |cRXP_WARN_friend you can skip this step and ask them to remove it for you|r
    .collect 1475,1,2359,1 -- Small Venom Sac
    .collect 2251,6,93,1,1 -- Gooey Spider Legs
    .isOnQuest 2359
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
step << Rogue
    #hardcore
    #completewith next
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind
    .isOnQuest 2359
    .target Thor
step << Rogue
    #hardcore
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >> Enter the SI:7 Headquarters. Travel up stairs toward |cRXP_FRIENDLY_Master Mathias Shaw|r
    .isOnQuest 2359
step << Rogue
    #hardcore
    .goto StormwindClassic,75.78,59.84
    .target Master Mathias Shaw
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .turnin 2359 >> Turn in Klaven's Tower
    .isQuestComplete 2359
step << Rogue
    #hardcore
    .goto StormwindClassic,75.78,59.84
    .target Master Mathias Shaw
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Mathias Shaw|r
    .accept 2607 >> Accept The Touch of Zanzil
    .isQuestTurnedIn 2359
step << Rogue
    #hardcore
    #completewith next
    .goto StormwindClassic,78.86,58.85,9 >> Travel down into the basement
    .isQuestTurnedIn 2359
step << Rogue
    #hardcore
    .goto StormwindClassic,78.03,58.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Doc Mixilpixil|r
    .target Doc Mixilpixil
    .turnin 2607 >> Turn in The Touch of Zanzil
    .isQuestTurnedIn 2359
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Marcus Jonathan|r
	.target General Marcus Jonathan
    .goto StormwindClassic,63.982,75.338
    .turnin 120 >> Turn in Messenger to Stormwind
    .accept 121 >> Accept Messenger to Stormwind
step
    #completewith next
    .goto Elwynn Forest,41.80,65.60,60 >> Travel to Goldshire
step
    .goto Elwynn Forest,41.71,65.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Smith Argus|r
	.target Smith Argus
    .turnin 118 >> Turn in The Price of Shoes
    .accept 119 >> Accept Return to Verner
step
    #completewith next
    .goto Elwynn Forest,65.20,69.80,50 >> Travel to the Tower of Azora. Ascend the tower
step
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Theocritus|r at the top
    .accept 94 >> Accept A Watchful Eye
step
    #label InRR
    #completewith FlyR
    .goto StormwindClassic,66.30,62.30,-1
	.goto Redridge Mountains,6.7,72.4,-1
    .zone Redridge Mountains >>Travel to Redridge
    .fly Redridge >> Fly to Redridge
    >>|cRXP_WARN_If you're in Goldshire it will be faster to Fly from Stormwind|r
	>>|cRXP_WARN_If you're at the Tower of Azora simply run to Redridge|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 119 >> Turn in Return to Verner
    .accept 124 >> Accept A Baying of Gnolls
step
    #xprate <1.2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .accept 122 >> Accept Underbelly Scales
step
    #label FlyR
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Magistrate Soloman|r
	.target Magistrate Solomon
    .goto Redridge Mountains,29.31,45.33,15,0
    .goto Redridge Mountains,29.98,44.45
    .turnin 121 >> Turn in Messenger to Stormwind
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hilary|r
	.target Hilary
    .goto Redridge Mountains,29.24,53.63
    .turnin 3741 >> Turn in Hilary's Necklace
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dockmaster Baren|r
	.target Dockmaster Baren
    .goto Redridge Mountains,27.72,47.38
    .turnin 127 >> Turn in Selling Fish
    .accept 150 >> Accept Murloc Poachers
    .turnin 150 >> Turn in Murloc Poachers
step
#optional
#xprate >1.49
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .accept 92 >> Accept Redridge Goulash
    .turnin 92 >> Turn in Redridge Goulash
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .accept 92 >> Accept Redridge Goulash
    .turnin 92 >> Turn in Redridge Goulash
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .goto Redridge Mountains,21.86,46.33
    .turnin 130 >> Turn in Visit the Herbalist
    .accept 131 >> Accept Delivering Daffodils
step
    #xprate <1.2
	#completewith next
	>>Kill |cRXP_ENEMY_Black Dragon Whelps|r. Loot them for their |cRXP_LOOT_Scales|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    #xprate <1.5
    >>Kill |cRXP_ENEMY_Great Goretusks|r. Loot them for their |cRXP_LOOT_Great Goretusk Snouts|r
    >>|cRXP_WARN_Save any|r |T133970:0|t[Chunks of Boar Meat] |cRXP_WARN_you loot as well as you can use them to level|r |T133971:0|t[Cooking] |cRXP_WARN_to 50 which is required for Duskwood later|r
    .goto Redridge Mountains,15.73,52.83,60,0
    .goto Redridge Mountains,32.25,70.20,60,0
    .goto Redridge Mountains,31.02,72.14,60,0
    .goto Redridge Mountains,15.73,52.83
    .collect 2296,5,92,1
    .mob Great Goretusk
step
#optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chef Breanna|r
	.target Chef Breanna
    .goto Redridge Mountains,22.67,43.83
    .accept 92 >> Accept Redridge Goulash
    .turnin 92 >> Turn in Redridge Goulash
    .itemcount 2296,5 -- Great Goretusk Snout (5)
    .itemcount 1080,5 -- Tough Condor Meat (5)
    .itemcount 1081,5 -- Crisp Spider Meat (5)
step
    #xprate <1.2
	#completewith next
	>>Kill |cRXP_ENEMY_Black Dragon Whelps|r. Loot them for their |cRXP_LOOT_Scales|r
    .complete 122,1 --Underbelly Whelp Scale (6)
    .mob Black Dragon Whelp
step
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,22.5,35.7,0
    >>Kill |cRXP_ENEMY_Redridge Brutes|r and |cRXP_ENEMY_Redridge Mystics|r. Loot them for their |cRXP_LOOT_Iron Pikes|r and |cRXP_LOOT_Iron Rivets|r
    .complete 124,1 --Redridge Brute (10)
    .complete 124,2 --Redridge Mystic (8)
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
	.mob Redridge Mystic
	.mob Redridge Brute
step
    #xprate <1.2
    .goto Redridge Mountains,43.47,31.68,50,0
    .goto Redridge Mountains,46.52,35.66,50,0
    .goto Redridge Mountains,34.56,65.79,50,0
    .goto Redridge Mountains,36.58,73.93
	>>Kill |cRXP_ENEMY_Black Dragon Whelps|r. Loot them for their |cRXP_LOOT_Scales|r
	.mob Black Dragon Whelp
    .complete 122,1 --Underbelly Whelp Scale (6)
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darcy|r
    >>|cRXP_FRIENDLY_Darcy|r |cRXP_WARN_walks around inside the Inn|r
	.target Darcy
    .goto Redridge Mountains,26.80,44.30
    .turnin 131 >> Turn in Delivering Daffodils
step
    #xprate <1.2
    #completewith next
    .goto Redridge Mountains,15.55,50.06,0
    .goto Redridge Mountains,19.24,41.53,0
    .goto Redridge Mountains,16.90,55.02,0
    .goto Redridge Mountains,26.52,44.95
    +|cRXP_WARN_Level up your|r |T133971:0|t[Cooking] |cRXP_WARN_using the|r |T133970:0|t[Chunks of Boar Meat] |cRXP_WARN_you farmed earlier. You need level 50|r |T133971:0|t[Cooking]
    +|cRXP_WARN_If you need more|r |T133970:0|t[Chunks of Boar Meat] |cRXP_WARN_travel to the west near|r |cRXP_ENEMY_Bellygrub|r |cRXP_WARN_and kill more|r |cRXP_ENEMY_Great Goretusks|r
    .skill cooking,50,1
    .mob Great Goretusk
step
    #xprate <1.2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
	.target Verner Osgood
    .goto Redridge Mountains,31.00,47.30
    .turnin 124 >> Turn in A Baying of Gnolls
    .turnin 122 >> Turn in Underbelly Scales
step
    #xprate >1.0
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Verner Osgood|r
	.target Verner Osgood
    .goto Redridge Mountains,30.97,47.27
    .turnin 124 >> Turn in A Baying of Gnolls
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Foreman Oslow|r
	.target Foreman Oslow
    .goto Redridge Mountains,32.10,48.70
    .turnin 89 >> Turn in The Everstill Bridge
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance !Hunter
#name 20-21 Darkshore/Ashenvale
#version 1
#group RestedXP Alliance 1-20
#next RestedXP Alliance 20-30\21-23 Stonetalon/Ashenvale

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
step << Druid
    #season 2
    #sticky
    +|cRXP_WARN_Note: You must be level 20 in order to equip the|r |T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r] |cRXP_WARN_which is required to learn|r |T236167:0|t[Savage Roar]
    .xp 20,1
    .train 407988,1
step << Druid
    #season 2
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Kill |cRXP_ENEMY_Den Mother|r. Loot her for the |T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r]
    >>|cRXP_WARN_Be aware of the |cRXP_ENEMY_Thistle Cubs|r which can stun you for 2 seconds|r
    .collect 208689,1 -- Ferocious Idol (1)
    .mob Den Mother
    .train 407988,1
step << Druid
    #season 2
    .equip 18,208689 >> |cRXP_WARN_Equip the|r |T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r]
    .use 208689
    .itemcount 208689,1
    .train 407988,1
step << Druid
    #season 2
    #sticky
    .train 407988 >>|cRXP_WARN_Deal 20 instances of bleeding damage from|r |T132152:0|t[Rip] |T132122:0|t[Rake] |cRXP_WARN_or|r |T132131:0|t[Lacerate] |cRXP_WARN_to humanoids, then use the|r |T132942:0|t[|cRXP_FRIENDLY_Ferocious Idol|r] |cRXP_WARN_again to learn|r |T236167:0|t[Savage Roar]
    .use 208689
    .itemcount 208689,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClick on |cRXP_FRIENDLY_The Wanted Poster|r
    .goto Darkshore,37.21,44.22
    .accept 4740 >> Accept WANTED: Murkdeep!
step
    .goto Darkshore,37.32,43.64
    .target Barithras Moonshade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Barithras Moonshade|r
    .accept 948 >> Accept Onu
step
    .goto Darkshore,37.44,41.83
    .target Archaeologist Hollee
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archaeologist Hollee|r
    .accept 729 >> Accept The Absent Minded Prospector
step
    #map Darkshore
    .goto Felwood,21.04,17.72
    .target Gershala Nightwhisper
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gershala Nightwhisper|r
    .turnin -3765 >> Turn in The Corruption Abroad
    .isOnQuest 3765
step
    .goto Darkshore,39.37,43.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Terenthis|r
    .accept 993 >> Accept A Lost Master
	.target Terenthis
    .isQuestTurnedIn 986
step
	#xprate <1.5
    #completewith Murkdeep
    .goto Darkshore,40.23,81.28,0
    >>Kill |cRXP_ENEMY_Grizzled Thistle Bears|r. Loot them for their |cRXP_LOOT_Scalps|r
    .complete 1003,1
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
#map Darkshore
    #completewith OnuGrove
    .goto Felwood,27.00,55.59,80 >> Travel to the Grove of the Ancients
step
#xprate >1.49
#map Darkshore
    .goto Felwood,27.00,55.59
    .target Onu
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    .turnin 951 >> Turn in Mathystra Relics
    .isQuestComplete 951
step
#xprate >1.49
#map Darkshore
    #optional
    .goto Felwood,27.00,55.59
    .target Onu
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    .turnin 948 >> Turn in Onu
    .isOnQuest 948
step
#xprate >1.49
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Volcor|r
    .turnin 993 >> Turn in A Lost Master
    .accept 995 >> Accept Escape Through Stealth
    .timer 20,Escape Through Stealth RP
    .target Volcor
step
#xprate >1.49
    .goto Darkshore,44.44,84.69
    >>|cRXP_WARN_Wait out the RP|r
    .complete 995,1
step
#xprate <1.5
#map Darkshore
    #label OnuGrove
    .goto Felwood,27.00,55.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    .turnin 952 >> Turn in Grove of the Ancients << NightElf
    .turnin 948 >> Turn in Onu
    .accept 944 >> Accept The Master's Glaive
    .target Onu
step
#xprate <1.5
    #completewith next
    #label MasterG
    .goto Darkshore,38.54,86.05,60 >> Travel to The Master's Glaive
step
#xprate <1.5
    .goto Darkshore,38.54,86.05
    >>Discover The Master's Glaive
    >>|cRXP_ENEMY_Twilight Thugs|r |cRXP_WARN_can|r |T132343:0|t[Disarm] |cRXP_WARN_you for 6 seconds|r << Rogue/Paladin/Warrior
    >>|cRXP_ENEMY_Twilight Disciples|r |cRXP_WARN_cast|r |T135953:0|t[Renew] |cRXP_WARN_and a 3 second|r |T135915:0|t[Heal]
    .complete 944,1
step
#xprate <1.5
    #completewith next
    .cast 5809 >> |cRXP_WARN_Use the|r |T134715:0|t[Phial of Scrying] |cRXP_WARN_and place it on the ground|r
    .use 5251
step
#xprate <1.5
    .goto Darkshore,38.54,86.05
    .use 5251 >> Click the |cRXP_PICK_Scrying Bowl|r
    .turnin 944 >> Turn in The Master's Glaive
    .accept 949 >> Accept The Twilight Camp
    >>|cRXP_ENEMY_Twilight Thugs|r |cRXP_WARN_can|r |T132343:0|t[Disarm] |cRXP_WARN_you for 6 seconds|r << Rogue/Paladin/Warrior
    >>|cRXP_ENEMY_Twilight Disciples|r |cRXP_WARN_cast|r |T135953:0|t[Renew] |cRXP_WARN_and a 3 second|r |T135915:0|t[Heal]
step
#xprate <1.5
#map Darkshore
    .goto Ashenvale,22.24,2.52
    >>Click the |cRXP_PICK_Twilight Tome|r
    .turnin 949 >> Turn in The Twilight Camp
    .accept 950 >> Accept Return to Onu
    >>|cRXP_ENEMY_Twilight Thugs|r |cRXP_WARN_can|r |T132343:0|t[Disarm] |cRXP_WARN_you for 6 seconds|r << Rogue/Paladin/Warrior
    >>|cRXP_ENEMY_Twilight Disciples|r |cRXP_WARN_cast|r |T135953:0|t[Renew] |cRXP_WARN_and a 3 second|r |T135915:0|t[Heal]
step
#map Darkshore
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
#map Darkshore
    #sticky
    #label prospector
    .goto Felwood,18.08,64.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Remtravel|r
    .turnin 729 >> Turn in The Absent Minded Prospector
    .target Prospector Remtravel
step
    .goto Darkshore,35.72,83.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Prospector Remtravel|r. This will start an escort
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
    #xprate <1.5
    #completewith Murkdeep
    >>Kill |cRXP_ENEMY_Encrusted Tide Crawlers|r and |cRXP_ENEMY_Reef Crawlers|r. Loot them for their |cRXP_LOOT_Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
#xprate >1.49
#map Darkshore
    .goto Felwood,14.62,60.72
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4730 >> Accept Beached Sea Creature
step
#xprate >1.49
#map Darkshore
    .goto Felwood,13.47,64.01
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4731 >> Accept Beached Sea Turtle
step
#xprate >1.49
    .goto Ashenvale,13.93,2.01
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4732 >> Accept Beached Sea Turtle
step
#xprate >1.49
    .goto Ashenvale,13.97,4.10
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4733 >> Accept Beached Sea Creature
    >>|cRXP_WARN_This quest can be VERY difficult. Engage the |cRXP_ENEMY_Murlocs|r 1 by 1, otherwise you may agro multiple at the same time|r
    .link https://www.twitch.tv/videos/992307825?t=05h48m36s >> |cRXP_WARN_Click here for a video guide|r
step
#xprate <1.50
    .goto Ashenvale,13.97,4.10
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4733 >> Accept Beached Sea Creature
    >>|cRXP_WARN_This quest can be VERY difficult. Engage the |cRXP_ENEMY_Murlocs|r 1 by 1, otherwise you may agro multiple at the same time|r
    .link https://www.twitch.tv/videos/992307825?t=05h48m36s >> |cRXP_WARN_Click here for a video guide|r
step
#xprate <1.50
    .goto Ashenvale,13.93,2.01
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4732 >> Accept Beached Sea Turtle
step
#xprate <1.50
#map Darkshore
    .goto Felwood,13.47,64.01
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    .accept 4731 >> Accept Beached Sea Turtle
step
#xprate <1.50
#map Darkshore
    .goto Felwood,14.62,60.72
    >>Click the |cRXP_PICK_Beached Sea Creature|r
    .accept 4730 >> Accept Beached Sea Creature
step
#xprate <1.5
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
    #xprate <1.5
    .goto Darkshore,34.0,80.8,60,0
    .goto Darkshore,35.8,77.8,60,0
    .goto Darkshore,35.6,71.8,60,0
    .goto Darkshore,35.8,77.8
    >>Kill |cRXP_ENEMY_Encrusted Tide Crawlers|r and |cRXP_ENEMY_Reef Crawlers|r. Loot them for their |cRXP_LOOT_Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
	#xprate <1.5
    .goto Darkshore,41.44,86.06,50,0
    .goto Darkshore,41.77,84.60,50,0
    .goto Darkshore,42.94,82.25,50,0
    .goto Darkshore,43.59,80.02,50,0
    .goto Darkshore,39.74,80.43,50,0
    .goto Darkshore,38.00,83.55
    >>Kill |cRXP_ENEMY_Grizzled Thistle Bears|r. Loot them for their |cRXP_LOOT_Scalps|r
    .complete 1003,1 -- Grizzled Scalp (4)
    .isOnQuest 1003
    .mob Grizzled Thistle Bear
step
    #xprate <1.5
    .goto Darkshore,41.389,80.565
    >>Click the |cRXP_PICK_Buzzbox 525|r on the ground
    .turnin 1003 >> Turn in Buzzbox 525
    .isOnQuest 1003
step
#xprate <1.5
    #completewith next
    .goto Darkshore,45.00,85.30,30 >> Travel toward |cRXP_FRIENDLY_Volcor|r in the Cave
step
#xprate <1.5
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Volcor|r
    .turnin 993 >> Turn in A Lost Master
    .accept 995 >> Accept Escape Through Stealth
    .timer 20,Escape Through Stealth RP
    .target Volcor
step
#xprate <1.5
    .goto Darkshore,44.44,84.69
    >>|cRXP_WARN_Wait out the RP|r
    .complete 995,1
step
#xprate <1.5
#map Darkshore
    .goto Felwood,27.00,55.59
    .target Onu
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    .turnin 951 >> Turn in Mathystra Relics
    .isQuestComplete 951
step
#xprate <1.5
#map Darkshore
    .goto Felwood,27.00,55.59
    .target Onu
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Turn in Return to Onu
step
#xprate <1.5
#map Darkshore
    .goto Felwood,27.96,55.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kerlonian Evershade|r to start the escort
    >>|cRXP_WARN_Skip this step if he is not there. It can take up to 25 minutes for him to respawn|r
	.target Kerlonian Evershade
    .accept 5321 >> Accept The Sleeper Has Awakened
step
#xprate <1.5
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
    >>Open |cRXP_PICK_Kerlonian's Chest|r. Loot it for the |T134229:0|t[|cRXP_LOOT_Horn of Awakening|r]
    .complete 5321,1 -- Horn of Awakening (1)
step -- adjusted to heading there straight from southern most beached sea creature
#xprate >1.49
    #completewith tower
    .zone Ashenvale >> Travel south to Ashenvale
    .goto Ashenvale,25.77,14.55
step
#xprate <1.50
    #completewith tower
    .zone Ashenvale >> Travel south to Ashenvale
    .goto Ashenvale,29.7,13.6
step
#xprate <1.5
    .goto Ashenvale,27.26,35.58
    >>|cRXP_WARN_Escort |cRXP_FRIENDLY_Kerlonian|r to Maestra's Post in Ashenvale|r
    .use 13536 >> |cRXP_WARN_Use the|r |T134229:0|t[|cRXP_LOOT_Horn of Awakening|r] |cRXP_WARN_whenever |cRXP_FRIENDLY_Kerlonian|r falls asleep next to him|r
    >>|cRXP_WARN_Avoid running on the main road as much as possible. Enemies will only spawn if you're on the road|r
    .complete 5321,2
    .isOnQuest 5321
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Liadris Moonriver|r
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    .turnin 5321 >> Turn in The Sleeper Has Awakened
    .isQuestComplete 5321
step << Paladin
    #season 2
    .goto Ashenvale,26.19,38.69
    >>Talk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 967 >> Turn in The Tower of Althalaxx
    --.accept 970 >> Accept The Tower of Althalaxx
    .turnin 78088 >> Turn in A Strange Artifact
    .accept 78089 >> Accept Advice From Stormwind
    .target Delgren the Purifier
    .train 410014,1
    .itemcount 209836,1 --Athalaxx Orb (1)
step << Paladin
    #season 2
    .goto Ashenvale,26.19,38.69
    >>Talk to |cRXP_FRIENDLY_Delgren the Purifier|r
    .turnin 967 >> Turn in The Tower of Althalaxx
    --.accept 970 >> Accept The Tower of Althalaxx
    .accept 78089 >> Accept Advice From Stormwind
    .target Delgren the Purifier
    .train 410014,1
    .isQuestTurnedIn 78088
step
    #label tower
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Delgren the Purifier|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 967 >> Turn in The Tower of Althalaxx
step
	#xprate <1.5
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
    #xprate <1.5
    .goto Ashenvale,31.25,30.70
    >>Kill |cRXP_ENEMY_Dark Strand Cultists|r and |cRXP_ENEMY_Dark Strand Adepts|r. Loot them for the |cRXP_LOOT_Glowing Soul Gem|r
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
step
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Open the |cRXP_PICK_Plant Bundles|r on the ground. Loot them for |cRXP_LOOT_Bathran's Hairs|r
    >>|cRXP_WARN_They look like small brown sacks. They can be hard to see|r
    .complete 1010,1
    .isOnQuest 1010
step
    .isQuestComplete 1010
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .turnin 1010 >> Turn in Bathran's Hair
    .accept 1020 >> Accept Orendil's Cure
step
    .isQuestTurnedIn 1010
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1020 >> Accept Orendil's Cure
step
	#xprate <1.5
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
    #label hair
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Orendil Broadleaf|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .turnin 1010 >> Turn in Bathran's Hair
    .accept 1020 >> Accept Orendil's Cure
step
    #requires hair
    #completewith next
    .goto Ashenvale,25.49,39.59,20,0
    .goto Ashenvale,25.98,41.72,20,0
    .goto Ashenvale,26.88,44.47,30,0
    .goto Ashenvale,28.16,47.68,60,0
    .goto Ashenvale,34.40,48.00,50 >> Travel to Astranaar
step
    #requires hair
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
    .accept 1054 >> Accept Culling the Threat
step << !Warlock
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kimlya|r
    .home 415>> Set your Hearthstone to Astranaar
    .target Innkeeper Kimlya
step
    #timer Orendil's Cure RP
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pelturas Whitemoon|r
	.target Pelturas Whitemoon
    .turnin 1020 >> Turn in Orendil's Cure
    .timer 26,Orendil's Cure RP
    .accept 1033 >> Accept Elune's Tear
]])
