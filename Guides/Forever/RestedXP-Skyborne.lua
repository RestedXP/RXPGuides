local L = GetLocale() if L and RXP.enabledLocale[L] then return end
--Main 1-14 Skyborne leveling guide
RXPGuides.RegisterGuide([[
#forever
#version 1
#name 1-14 Zephras Isle
#displayname 1-13 Skyborne << Alliance
#displayname 1-12 Skyborne << Horde
#group RestedXP Forever Guide (A) << Alliance
#group RestedXP Forever Guide (H) << Horde
#subgroup Speedrun Guide 1-20 << Alliance
#subgroup Speedrun Guide 1-22 << Horde
#defaultfor Skyborne
#next 13-15 Westfall << Alliance !Hunter
#next 14-16 Darkshore << Alliance Hunter
#next 12-14 Silverpine Forest << Horde !Hunter
#next 12-17 The Barrens << Horde Hunter

step
    .goto 2521,42.82,23.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ailee Farheart::251362|r.
    .accept 92460 >>Accept Coming of Age
    .target Ailee Farheart::251362
step
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r.
    .turnin 92460 >>Turn in Coming of Age
    .target Rorian the Dayseeker::251361
    .accept 92461 >>Accept Harmony in Balance
-- step
--     .goto 2521,42.07,23.49
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r.
--     .accept 92464 >>Accept Elemental Unrest
--     .target Rorian the Dayseeker::251361
--     .xp <2,1
step
    .goto 2521,43.44,24.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elatrell Featherlight::251368|r.
    .accept 92462 >>Accept Infestation Investigation
    .target Elatrell Featherlight::251368
step << Alliance/!Shaman
    #hidewindow
    #completewith Juvenile Vuldren
    #loop
    .goto 2521,44.23,26,40,0
    .goto 2521,45.24,25.9,40,0
    .goto 2521,46.06,25.33,40,0
    .goto 2521,46.77,27.83,40,0
    .goto 2521,45.27,28.36,40,0
    .goto 2521,43.84,28.39,40,0
    .goto 2521,42.88,27.52,40,0
    +1
step << Horde Shaman
    #hidewindow
    #completewith Juvenile Vuldren Grind
    #loop
    .goto 2521,44.23,26,40,0
    .goto 2521,45.24,25.9,40,0
    .goto 2521,46.06,25.33,40,0
    .goto 2521,46.77,27.83,40,0
    .goto 2521,45.27,28.36,40,0
    .goto 2521,43.84,28.39,40,0
    .goto 2521,42.88,27.52,40,0
    +1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Juvenile Vuldren::250873|r.
    .complete 92461,1 --8/8 Juvenile Vuldren slain
    .mob Juvenile Vuldren::250873
step
    >>Kill |cRXP_ENEMY_Pesky Cirrusfly::251169|r.
    *|cRXP_WARN_Priotize them|r
    .complete 92462,1 --8/8 Pesky Cirrusfly slain
    .mob Pesky Cirrusfly::251169
step
    #label Juvenile Vuldren
    >>Kill |cRXP_ENEMY_Juvenile Vuldren::250873|r.
    .complete 92461,1 --8/8 Juvenile Vuldren slain
    .mob Juvenile Vuldren::250873
step << Horde Shaman
    #label Juvenile Vuldren Grind
    .xp 2+480 >>Grind to 480+/900xp to reach level 3 after turn ins for the totem quest.
step
    .goto 2521,43.44,24.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elatrell Featherlight::251368|r.
    *|cRXP_WARN_Don't use |r|T132845:0|t[Walk on Air] |cRXP_WARN_as we need it soon|r.
    .turnin 92462 >>Turn in Infestation Investigation
    .accept 92463 >>Accept The Cirrusfly Queen
    .target Elatrell Featherlight::251368
step << Warrior
    .goto 2521,43.66,24.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blademaster Ren::251964|r.
    .train 6673 >>Train |T132333:0|t[Battle Shout]
    .skipgossipid 136813,1
    .target Blademaster Ren::251964
    .money <0.0010
    .xp <1,1
    .train 5242,1 -- Battle Shout (Rank 2) Not Trained
--Quest Bugged readd next week
-- step
--     .goto 2521,43.53,24.34,20,0
--     .goto 2521,43.83,24.13,10,0
--     .goto 2521,43.78,24.38,5,0
--     .goto 2521,43.66,24.25,5,0
--     .goto 2521,43.75,24.09,5,0
--     .goto 2521,43.84,24.3,5,0
--     .goto 2521,43.66,24.23,5,0
--     .goto 2521,43.83,24.18,5,0
--     .goto 2521,43.83,24.32,8,0
--     .goto 2521,43.80,24.05
--     >>Climb the spiral staircase, then |Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halaan Hawk-Eye::257554|r at the top of the tower.
--     .accept 94414 >>Accept The Anchors of Zephras
--     .target Halaan Hawk-Eye::257554
-- step
--     .goto 2521,43.80,24.05
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halaan Hawk-Eye::257554|r.
--     *Move or press ESC to cancel.
--     .complete 94414,1 --View the Anchor Pylon
--     .skipgossipid 137720,1
--     .target Halaan Hawk-Eye::257554
-- step
--     .goto 2521,43.80,24.05
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halaan Hawk-Eye::257554|r.
--     *Move or press ESC to cancel.
--     .turnin 94414 >>Turn in The Anchors of Zephras
--     .target Halaan Hawk-Eye::257554
step << Skyborne
    .goto 2521,43.53,24.34,20,0
    .goto 2521,43.83,24.13,10,0
    .goto 2521,43.78,24.38,5,0
    .goto 2521,43.66,24.25,5,0
    .goto 2521,43.75,24.09,5,0
    .goto 2521,43.84,24.3,5,0
    .goto 2521,43.66,24.23,5,0
    .goto 2521,43.83,24.18,5,0
    .goto 2521,43.83,24.32,8,0
    .goto 2521,43.64,24.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myriaal Mistwake::263113|r.
    .accept 92474 >>Accept Falling With Style
    .target Myriaal Mistwake::263113
step << Skyborne
    #completewith next
    #label Harmony in Balance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r.
    .turnin 92461,1 >>Turn in Harmony in Balance
    .target Rorian the Dayseeker::251361
step << Skyborne
    #completewith Harmony in Balance
    .goto 2521,42.06,23.48
    >>While falling from the tower, use |T132845:0|t[Walk on Air] and aim for the quest giver.
    *You can also just jump and spam the button on the ground.
    .complete 92474,1 --Use Walk on Air
    .macro Walk on Air, 132845 >>/use Walk on Air
    -- .macro Cancel Walk on Air,132745 >>/cancelaura Walk on Air
step << Skyborne
    #requires Harmony in Balance
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r.
    .turnin 92461,1 >>Turn in Harmony in Balance
    .target Rorian the Dayseeker::251361
    .turnin 92474 >>Turn in Falling With Style
    .accept 92464 >>Accept Elemental Unrest
    .accept 92481 >>Accept A Student of the Arcane << Mage
    .accept 92483 >>Accept At Home in the Shadows << Rogue
    .accept 92482 >>Accept The Way of the Hunter << Hunter
    .accept 92484 >>Accept Embracing the Elements << Shaman
    .accept 92532 >>Accept The Warrior's Path << Warrior
    .accept 92485 >>Accept A Student of Nature << Druid
step << !Skyborne
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r.
    .turnin 92461,1 >>Turn in Harmony in Balance
    .target Rorian the Dayseeker::251361
    .accept 92464 >>Accept Elemental Unrest
    .accept 92481 >>Accept A Student of the Arcane << Alliance Mage
    .accept 92483 >>Accept At Home in the Shadows << Rogue
    .accept 92482 >>Accept The Way of the Hunter << Hunter
    .accept 92484 >>Accept Embracing the Elements << Horde Shaman
    .accept 92532 >>Accept The Warrior's Path << Warrior
    .accept 92485 >>Accept A Student of Nature << Druid
step << Druid
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xyton Silverwind::251373|r.
    .turnin 92485 >>Turn in A Student of Nature
    .target Xyton Silverwind::251373
step << Druid
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xyton Silverwind::251373|r.
    .train 1126 >>Train |T136078:0|t[Mark of the Wild]
    .skipgossipid 136805
    .target Xyton Silverwind::251373
    .money <0.0010
    .xp <1,1
step << Alliance Mage
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorii Brightwhisper::251379|r.
    .turnin 92481 >>Turn in A Student of the Arcane
    .target Dorii Brightwhisper::251379
step << Alliance Mage
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorii Brightwhisper::251379|r.
    .train 1459 >>Train |T135932:0|t[Arcane Intellect]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
    .money <0.0010
    .xp <1,1
step << Horde Shaman
    .goto 2521,42.790,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windshaper Boro::251374|r
    .target Windshaper Boro::251374
    .turnin 92484 >>Turn in Embracing the Elements
    .accept 92466 >>Accept Call of Earth
step << Horde Shaman
    .goto 2521,42.79,23.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windshaper Boro::251374|r.
    .train 8017 >>Train |T136086:0|t[Rockbiter Weapon]
    .target Windshaper Boro::251374
    .money <0.0010
    .skipgossipid 136811
    .xp <1,1
step << Hunter
    .goto 2521,42.47,23.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai'ree Farsight::251376|r.
    .turnin 92482 >>Turn in The Way of the Hunter
    .target Tai'ree Farsight::251376
step << Horde
    .goto 2521,42.60,24.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ventaari Brightwish::251487|r.
    .accept 92598 >>Accept The Gift of Skysight
    .target Ventaari Brightwish::251487
step << !Warrior !Rogue 
    .itemcount 159,<20 << Mage/Shaman/Priest/Warlock/Paladin -- Refreshing Spring Water
    .itemcount 2512,<1000 << Hunter -- Rough Arrow
    .goto 2521,42.749,24.496
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uualia Suncrest::251537|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r << !Hunter !Shaman
    >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_from her|r << Hunter
    .vendor 251537 >>|cRXP_WARN_Vendor trash|r
    *Don't sell |T133970:0|t[Stringy Meat] << Alliance
    .collect 159,20 << !Hunter !Shaman --Refreshing Spring Water (20)
    .collect 2512,1000 << Hunter --Rough Arrow (1000)
    .target Uualia Suncrest::251537
    -- .money <0.0050 << !Hunter !Shaman
    -- .money <0.0040 << Hunter
    .subzoneskip 16635,1 -- Thendal Village
    .isNotOnQuest 93552 -- Harvesting Windstones
    .isQuestAvailable 93552 -- Harvesting Windstones
step << Horde
    .goto 2521,43.37,23.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalia the Collector::251363|r.
    .accept 93552 >>Accept Harvesting Windstones
    .target Dalia the Collector::251363
step << Horde
    #completewith next
    .goto 2521,43.53,23.83,7,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystals|r
    .complete 93552,1 --15/15 Windstone Cluster
step << Horde Rogue/Horde Warrior
    .subzoneskip 16635,1 -- Thendal Village
    .isOnQuest 92463 -- The Cirrusfly Queen
    .isQuestNotComplete 92463 -- The Cirrusfly Queen
    .goto 2521,43.41,23.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalia the Collector::251363|r.
    *|cRXP_WARN_Skip if you can't afford it|r
    .collect 2131,1 >>Buy and equip a |T135274:0|t[Shortsword] << Rogue
    .collect 1194,1 >>Buy and equip a |T135276:0|t[Bastard Sword] << Warrior
    .target Dalia the Collector::251363
    -- .money <0.0054 << Rogue
    -- .money <0.0104 << Warrior
step << Alliance !Hunter !Mage !Druid
    #completewith next
    #label Harvesting Windstones
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalia the Collector::251363|r.
    .accept 93552 >>Accept Harvesting Windstones
    .target Dalia the Collector::251363
step << Alliance Rogue/Alliance Warrior
    .goto 2521,43.41,23.51
    #completewith Harvesting Windstones
    .collect 2131,1 >>Buy and equip a |T135274:0|t[Shortsword] << Rogue
    .collect 1194,1 >>Buy and equip a |T135276:0|t[Bastard Sword] << Warrior
    -- .money <0.0054 << Rogue
    -- .money <0.0104 << Warrior
step << Alliance !Hunter !Mage !Druid
    #completewith Harvesting Windstones
    .goto 2521,43.41,23.51
    .vendor 251364 >>|cRXP_WARN_Vendor trash|r
    *Don't sell |T133970:0|t[Stringy Meat]. << Alliance
    .target Destin Thriceforged::251364
step << Alliance !Hunter !Mage !Druid
    #requires Harvesting Windstones
    .goto 2521,43.37,23.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalia the Collector::251363|r.
    .accept 93552 >>Accept Harvesting Windstones
    .target Dalia the Collector::251363
step << Alliance Hunter/Alliance Mage/Alliance Druid
    .goto 2521,43.37,23.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalia the Collector::251363|r.
    .accept 93552 >>Accept Harvesting Windstones
    .target Dalia the Collector::251363
step << Alliance
    #completewith next
    .goto 2521,43.53,23.83,7,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystals|r
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance
    .goto 2521,43.33,24.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falorne Fallwind::251371|r.
    .accept 92597 >>Accept Reading the Ley Lines
    .target Falorne Fallwind::251371
step << Horde Shaman
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystals|r
    .complete 93552,1 --15/15 Windstone Cluster
step << Horde Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yala Windwatcher::249363|r.
    .turnin 92464 >>Turn in Elemental Unrest
    .accept 92465 >>Accept Agitators
    .target Yala Windwatcher::249363
step << Horde Shaman
    #completewith next
    >>Kill |cRXP_ENEMY_Al'Aketh Convert::251160|r and |cRXP_ENEMY_Roiling Winds::251143|r.
    *|cRXP_WARN_Prioritize |cRXP_ENEMY_Roiling Winds::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
step << Horde Shaman
    .goto 2521,48.4,20.4
    >>Use |T1029587:0|t[Skysight] near the |cRXP_PICK_Elemental Convergence|r.
    *|cRXP_WARN_Found throughout the zone. Use |T1029587:0|t[Skysight] near one to gain 10% movement speed for 15 min instead of 15 sec.|r
    .complete 92598,1 --Use your Skysight ability near the Elemental Convergence
    .macro Skysight,1029587 >>/use spell:1259686
step << Horde Shaman
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystals|r
    *|cRXP_WARN_Expect to break about 10 stones, but you may need up to 15|r.
    *|cRXP_WARN_If the area is abnormally crowded, camp one spawn point or rotate between nearby stones|r.
    .complete 93552,1 --15/15 Windstone Cluster
step << Horde Shaman
    #loop
    .goto 2521,46.85,17.68,30,0
    .goto 2521,47.22,19,30,0
    .goto 2521,48.3,19.06,50,0
    .goto 2521,47.55,21.06,35,0
    .goto 2521,46.74,20.49,35,0
    .goto 2521,48.97,20.86,40,0
    .goto 2521,47.41,21.14,30,0
    .goto 2521,45.82,19.09,40,0
    .goto 2521,47.19,23.55,30,0
    .goto 2521,46.6,24.62,30,0
    >>Kill |cRXP_ENEMY_Al'Aketh Convert::251160|r and |cRXP_ENEMY_Roiling Winds::251143|r.
    *Loot them for the |T1020384:0|t[Signet of Akir] << Shaman
    *|cRXP_WARN_Prioritize |cRXP_ENEMY_Roiling Winds::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
    .complete 92466,1 --|1/1 Signet of Akir
step << Horde Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yala Windwatcher::249363|r.
    .turnin 92465 >>Turn in Agitators
    .accept 92469 >>Accept Return to Rorian
    .target Yala Windwatcher::249363
step << Horde Shaman
    #completewith next
    .subzoneskip 16622,1 -- Thendal Grove
    .hs >>Hearth to Thendal Village
step << Horde Shaman
    .goto 2521,42.788,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windshaper Boro::251374|r
    .turnin 92466 >>Turn in Call of Earth
    .accept 92467 >>Accept Call of Earth
    .target Windshaper Boro::251374
step
    #completewith next
    .goto 2521,43.82,25.41,20,0
    .goto 2521,44.23,24.96,20,0
    .goto 2521,44.28,27.32,25,0
    .goto 2521,45.33,29.15,30,0
    .goto 2521,46.77,27.96,30,0
    .goto 2521,48.14,29.31,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystals|r
    *|cRXP_WARN_Expect to break about 10 stones, but you may need up to 15|r.
    *|cRXP_WARN_If the area is abnormally crowded, camp one spawn point or rotate between nearby stones|r.
    .complete 93552,1 --15/15 Windstone Cluster
step
    .goto 2521,48.41,28.37
    >>Kill |cRXP_ENEMY_Cirrusfly Queen::251404|r.
    .complete 92463,1 --1/1 Cirrusfly Queen slain
    .mob Cirrusfly Queen::251404
step << Alliance/!Shaman
    #completewith next
    .goto 2521,47.41,26.43,30,0
    .goto 2521,46.62,24.61,30,0
    .goto 2521,48.3,25.67,30,0
    .goto 2521,47.19,23.57,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystals|r
    *|cRXP_WARN_Expect to break about 10 stones, but you may need up to 15|r.
    *|cRXP_WARN_If the area is abnormally crowded, camp one spawn point or rotate between nearby stones|r.
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yala Windwatcher::249363|r.
    .turnin 92464 >>Turn in Elemental Unrest
    .accept 92465 >>Accept Agitators
    .target Yala Windwatcher::249363
step << Alliance/!Shaman
    #completewith UseRacialAbility
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystals|r
    *|cRXP_WARN_Expect to break about 10 stones, but you may need up to 15|r.
    *|cRXP_WARN_If the area is abnormally crowded, camp one spawn point or rotate between nearby stones|r.
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    #completewith UseRacialAbility
    >>Kill |cRXP_ENEMY_Al'Aketh Convert::251160|r and |cRXP_ENEMY_Roiling Winds::251143|r.
    *|cRXP_WARN_Prioritize |cRXP_ENEMY_Roiling Winds::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
step << Alliance
    #label UseRacialAbility
    .goto 2521,47.8,21.02,30,0
    .goto 2521,46.9,20.82,30,0
    .goto 2521,46.41,18.21
    >>Use |T236219:0|t[Read Ley Line] near the |cRXP_WARN_Blue Rift|r on the ground
    *|cRXP_WARN_Found throughout the zone|r |cRXP_WARN_Use|r |T236219:0|t[Read Ley Line] |cRXP_WARN_near one to gain 100% Mana and Food Regen for 15 min instead of 15 sec|r.
    .complete 92597,1 --Use your Read Ley Line ability near the Thendal Grove Ley Line
    .usespell 1259705 << Alliance
step << Horde !Shaman
    #label UseRacialAbility
    .goto 2521,48.4,20.4
    >>Use |T1029587:0|t[Skysight] near the |cRXP_PICK_Elemental Convergence|r.
    *|cRXP_WARN_Found throughout the zone. Use |T1029587:0|t[Skysight] near one to gain 10% movement speed for 15 min instead of 15 sec.|r
    .complete 92598,1 --Use your Skysight ability near the Elemental Convergence
    .macro Skysight,1029587 >>/use spell:1259686
step << Horde Shaman
    .goto 2521,47.241,25.244,25,0
    .goto 2521,48.802,25.869,30,0
    .goto 2521,49.677,23.806
    >>Use the |T134743:0|t[Earth Sapta].
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Minor Manifestation of Earth::251166|r
    .turnin 92467 >>Turn in Call of Earth
    .accept 92468 >>Accept Call of Earth
    .target Minor Manifestation of Earth::251166
    .use 6635
step << Horde Shaman
    .isQuestComplete 93552 -- Harvesting Windstones
    .goto 2521,49.32,23.18,15,0
    .goto 2521,48.88,21.52
    .subzone 16635 >>Jump down the mountain and respawn at the Graveyard.
step << Horde Shaman
    #ignorecorpse
    .isQuestComplete 93552 -- Harvesting Windstones
    .subzoneskip 16635,1 -- Thendal Village
    .showwhiledead
    .goto 2521,41.06,22.32
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Spirit Healer::6491|r.
    .target Spirit Healer::6491
step << Horde Shaman
    #loop
    .goto 2521,48.290,25.694,20,0
    .goto 2521,47.173,23.545,20,0
    .goto 2521,46.945,20.927,20,0
    .goto 2521,44.186,22.288,20,0
    .goto 2521,42.832,22.274,20,0
    .goto 2521,43.473,23.845,20,0
    .goto 2521,43.809,25.423,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystals|r
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    #hidewindow
    #completewith Windstone Cluster
    #loop
    .goto 2521,46.85,17.68,30,0
    .goto 2521,47.22,19,30,0
    .goto 2521,48.3,19.06,50,0
    .goto 2521,47.55,21.06,35,0
    .goto 2521,46.74,20.49,35,0
    .goto 2521,48.97,20.86,40,0
    .goto 2521,47.41,21.14,30,0
    .goto 2521,45.82,19.09,40,0
    .goto 2521,47.19,23.55,30,0
    .goto 2521,46.6,24.62,30,0
    +1
step << Alliance/!Shaman
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystals|r
    *|cRXP_WARN_Expect to break about 10 stones, but you may need up to 15|r.
    *|cRXP_WARN_If the area is abnormally crowded, camp one spawn point or rotate between nearby stones|r.
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    >>Kill |cRXP_ENEMY_Al'Aketh Convert::251160|r and |cRXP_ENEMY_Roiling Winds::251143|r.
    *Loot them for the |T1020384:0|t[Signet of Akir] << Shaman
    *|cRXP_WARN_Prioritize |cRXP_ENEMY_Roiling Winds::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
    .complete 92466,1 << Shaman --|1/1 Signet of Akir
step << Alliance/!Shaman
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystals|r
    *|cRXP_WARN_Expect to break about 10 stones, but you may need up to 15|r.
    *|cRXP_WARN_If the area is abnormally crowded, camp one spawn point or rotate between nearby stones|r.
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    #label Windstone Cluster
    .xp 3+300 >>Grind to 300+/1400xp
step << Alliance/!Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yala Windwatcher::249363|r.
    .turnin 92465 >>Turn in Agitators
    .accept 92469 >>Accept Return to Rorian
    .target Yala Windwatcher::249363
step << Alliance/!Shaman
    #completewith next
    .hs >>Hearth to Thendal Village
    .cooldown item,6948,>0
step
    #completewith next
    #label Harvesting Windstones2
    .goto 2521,43.89,22.27,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalia the Collector::251363|r.
    *|cRXP_WARN_Choose between Mining, Herbalism, or Skinning.|r
    .turnin 93552 >>Turn in Harvesting Windstones
    .target Dalia the Collector::251363
step
    #completewith Harvesting Windstones2
    #hidewindow
    .goto 2521,43.37,23.98,60 >>1
step
    #requires Harvesting Windstones2
    .goto 2521,43.37,23.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalia the Collector::251363|r.
    *|cRXP_WARN_Choose between Mining, Herbalism, or Skinning.|r
    .turnin 93552 >>Turn in Harvesting Windstones
    .target Dalia the Collector::251363
step
    .goto 2521,43.44,24.80
    .itemcount 247840,1 -- Mining for Dummies
    .train 2575 >>Use |T4625105:0|t[Mining for Dummies] |cRXP_WARN_while walking towards the questgiver|r.
    .use 247840
step
    .goto 2521,43.44,24.80
    .itemcount 247841,1 -- Wild Harvest
    .train 2366 >>Use |T4624731:0|t[Wild Harvest] |cRXP_WARN_while walking towards the questgiver|r.
    .use 247841
step
    .goto 2521,43.44,24.80
    .itemcount 247846,1 -- Pelt Collecting for Beginners
    .train 8613 >>Use |T4624731:0|t[Pelt Collecting for Beginners] |cRXP_WARN_while walking towards the questgiver|r.
    .use 247846
step << Rogue
    .goto 2521,43.74,24.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akeri Duskblade::251389|r.
    .turnin 92483 >>Turn in At Home in the Shadows
    .target Akeri Duskblade::251389
step << Warrior
    .train 6546,1 -- Rend (Rank 2) Not Trained
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blademaster Ren::251964|r.
    .train 100 >>Train |T132337:0|t[Charge]
    .train 6178,1 -- Charge (Rank 2) Not Trained
    .train 772 >>Train |T132155:0|t[Rend]
    .skipgossipid 136813,1
    .target Blademaster Ren::251964
    .money <0.02
    .xp <4,1
    .isOnQuest 92469 -- Return to Rorian
step << Warrior
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blademaster Ren::251964|r.
    .turnin 92532 >>Turn in The Warrior's Path
    .xp <4,1
    .target Blademaster Ren::251964
step
    .goto 2521,43.44,24.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elatrell Featherlight::251368|r.
    .turnin 92463,3 >>Turn in The Cirrusfly Queen
    .target Elatrell Featherlight::251368
step << Alliance
    #arrowtext Talk to\n|cRXP_FRIENDLY_Falorne Fallwind::251371|r
    .goto 2521,43.33,24.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falorne Fallwind::251371|r.
    .turnin 92597 >>Turn in Reading the Ley Lines
    .target Falorne Fallwind::251371
-- These steps are duplicated because lag can prevent the first batch from appearing.
step
    #arrowtext Use\n|T4625105:0|t[Mining for Dummies]
    .itemcount 247840,1 -- Mining for Dummies
    .train 2575 >>Use |T4625105:0|t[Mining for Dummies].
    .use 247840
step
    #arrowtext Use\n|T4624731:0|t[Wild Harvest]
    .itemcount 247841,1 -- Wild Harvest
    .train 2366 >>Use |T4624731:0|t[Wild Harvest].
    .use 247841
step
    #arrowtext Use\n|T4624731:0|t[Pelt Collecting for Beginners]
    .itemcount 247846,1 -- Pelt Collecting for Beginners
    .train 8613 >>Use |T4624731:0|t[Pelt Collecting for Beginners].
    .use 247846
step << Warrior
    .train 6546,1 -- Rend (Rank 2) Not Trained
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blademaster Ren::251964|r.
    .train 100 >>Train |T132337:0|t[Charge]
    .train 6178,1 -- Charge (Rank 2) Not Trained
    .train 772 >>Train |T132155:0|t[Rend]
    .skipgossipid 136813,1
    .target Blademaster Ren::251964
    .money <0.02
    .xp <4,1
    .isOnQuest 92469 -- Return to Rorian
step << Warrior
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blademaster Ren::251964|r.
    .turnin 92532 >>Turn in The Warrior's Path
    .target Blademaster Ren::251964
step << Hunter Horde
    .goto 2521,42.467,23.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai'ree Farsight::251376|r
    .train 13163 >>Train |T132159:0|t[Aspect of the Monkey]
    .train 1978 >>Train |T132204:0|t[Serpent Sting]
    .skipgossipid 136808
    .xp <4,1
    .money <0.02
    .target Tai'ree Farsight::251376
step << Horde
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r.
    .turnin 92469,1 >>Turn in Return to Rorian
    .accept 92471 >>Accept Aetheen of the Gales -- Unlocks at 4
    .target Rorian the Dayseeker::251361
step << Druid Horde
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xyton Silverwind::251373|r.
    .train 8921 >>Train |T136096:0|t[Moonfire]
    .train 774 >>Train |T136081:0|t[Rejuvenation]
    .skipgossipid 136805
    .xp <4,1
    .money <0.02
    .target Xyton Silverwind::251373
step << Horde
    .goto 2521,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aetheen of the Gales::251366|r.
    .turnin 92471 >>Turn in Aetheen of the Gales
    .accept 92470 >>Accept Foul Matriarch
    .target Aetheen of the Gales::251366
step << Horde Shaman
    .goto 2521,42.788,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windshaper Boro::251374|r.
    .train 8042 >>Train |T136026:0|t[Earth Shock]
    .target Windshaper Boro::251374
    .money <0.01
    .xp <4,1
    .skipgossipid 136811
step << Horde
    .goto 2521,42.607,24.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ventaari Brightwish::251487|r
    .turnin 92598 >>Turn in The Gift of Skysight
    .target Ventaari Brightwish::251487
step << Hunter Alliance
    .goto 2521,42.467,23.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai'ree Farsight::251376|r
    .train 13163 >>Train |T132159:0|t[Aspect of the Monkey]
    .train 1978 >>Train |T132204:0|t[Serpent Sting]
    .skipgossipid 136808
    .xp <4,1
    .money <0.02
    .target Tai'ree Farsight::251376
step << Alliance
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r.
    .turnin 92469,1 >>Turn in Return to Rorian
    .accept 92471 >>Accept Aetheen of the Gales -- Unlocks at 4
    .target Rorian the Dayseeker::251361
step << Druid Alliance
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xyton Silverwind::251373|r.
    .train 8921 >>Train |T136096:0|t[Moonfire]
    .train 774 >>Train |T136081:0|t[Rejuvenation]
    .skipgossipid 136805
    .xp <4,1
    .money <0.02
    .target Xyton Silverwind::251373
step << Alliance Mage
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorii Brightwhisper::251379|r.
    .train 116 >>Train |T135846:0|t[Frostbolt]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
    .money <0.01
    .xp <4,1
step << Alliance
    .goto 2521,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aetheen of the Gales::251366|r.
    .turnin 92471 >>Turn in Aetheen of the Gales
    .accept 92470 >>Accept Foul Matriarch
    .target Aetheen of the Gales::251366
step
    #completewith AggressiveVendor
    #label Aggressive Encroachment
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valreaa Valewind::257551|r.
    .accept 92473 >>Accept Aggressive Encroachment
    .target Valreaa Valewind::257551
step
    #completewith Aggressive Encroachment
    .train 2366,3 -- Herbalism Trained
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uualia Suncrest::251537|r
    .collect 277113,1 >>Buy an |T133637:0|t[Apprentice's Herb Pouch]
    .target Uualia Suncrest::251537
step
    #completewith Aggressive Encroachment
    .train 2575,3 -- Mining Trained
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uualia Suncrest::251537|r
    .collect 2901,1 >>Buy a |T134708:0|t[Mining Pick]
    .collect 277115,1 >>Buy an |T133635:0|t[Apprentice's Mining Pack]
    .target Uualia Suncrest::251537
step
    #completewith Aggressive Encroachment
    .train 8613,3 -- Skinning Trained
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uualia Suncrest::251537|r
    .collect 7005,1 >>Buy a |T135637:0|t[Skinning Knife]
    .collect 277114,1 >>Buy an |T133634:0|t[Apprentice's Skinning Satchel]
    .target Uualia Suncrest::251537
step
    #label AggressiveVendor
    #completewith Aggressive Encroachment
    .goto 2521,42.76,24.5
    .vendor 251537 >>|cRXP_WARN_Vendor trash|r
    *Don't sell |T133970:0|t[Stringy Meat] << Alliance
    .collect 159,20 >>Buy |T132794:0|t[Refreshing Spring Water] << Druid/Mage/Priest/Warlock/Paladin
step
    #requires Aggressive Encroachment
    .goto 2521,42.41,25.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valreaa Valewind::257551|r.
    .accept 92473 >>Accept Aggressive Encroachment
    .target Valreaa Valewind::257551
step
    #completewith Scrawny Usera
    +Manually drag the reagent bag into the reagent bag slot. Right-clicking it will place it in an empty general bag slot instead
step
    #completewith Scrawny Usera
    .train 2366,3 -- Herbalism Trained
    .cast 2383 >>Cast |T133939:0|t[Find Herbs] to track nearby herbs
    *|cRXP_WARN_You can gather herbs along the way to start working toward 20 Herbalism for a later quest. This is optional, especially at launch, so do it at your own risk|r
    .usespell 2383
step
    #completewith Scrawny Usera
    .train 2656,3 -- Smelting Trained
    .cast 2580 >>Cast |T136025:0|t[Find Minerals] to track nearby ore deposits
    *|cRXP_WARN_You can mine ore along the way to start working toward 20 Mining for a later quest. This is optional, especially at launch, so do it at your own risk|r
    .usespell 2580
step
    #completewith Scrawny Usera
    .train 8613,3 -- Skinning Trained
    +|cRXP_WARN_You can skin along the way to start working toward 20 Skinning for a later quest. This is optional, especially at launch, so do it at your own risk|r
step
    #label Scrawny Usera
    #loop
    .goto 2521,41.05,25.7,30,0
    .goto 2521,40.4,26.9,30,0
    .goto 2521,39.7,27.03,30,0
    .goto 2521,37.25,29.72,40,0
    .goto 2521,38.17,27.84,30,0
    .goto 2521,37.67,26.31,30,0
    .goto 2521,38.44,27.35,30,0
    >>Kill |cRXP_ENEMY_Bears::250926|r. Loot them for |T132136:0|t[|cRXP_LOOT_Scrawny Ursera Claw|r].
    .complete 92473,1 --6/6 Scrawny Ursera Claw
    .mob Scrawny Ursera::250926
step
    #completewith next
    >>Kill |cRXP_ENEMY_Ursera Scavenger::250937|r.
    .complete 92470,1 --8/8 Ursera Scavenger slain
    .mob Ursera Scavenger::250937
step
    .goto 2521,37.52,25.6,30,0
    .goto 2521,37.36,24.63,30,0
    .goto 2521,35.88,23.31,10,0
    .goto 2521,35.65,26.06
    >>Kill |cRXP_ENEMY_Urs'anah::251115|r. Loot him for |T5840609:0|t[|cRXP_LOOT_Head of Urs'anah|r].
    .complete 92470,2 --1/1 Head of Urs'anah
    .mob Urs'anah::251115
step
    #loop
    .goto 2521,36.2,25,30,0
    .goto 2521,36.39,23.79,30,0
    .goto 2521,37.33,24.26,30,0
    .goto 2521,36.9,24.54,30,0
    .goto 2521,37.34,25.13,30,0
    .goto 2521,38.12,27.71,30,0
    .goto 2521,37.7,29.46,30,0
    .goto 2521,40.79,26.64,30,0
    >>Kill |cRXP_ENEMY_Ursera Scavenger::250937|r.
    .complete 92470,1 --8/8 Ursera Scavenger slain
    .mob Ursera Scavenger::250937
step
    .isQuestComplete 92470 -- Foul Matriarch
    .subzoneskip 16673,1 -- Thendal Cave
    #loop
    .goto 2521,36.47,23.67,30,0
    .goto 2521,35.88,23.79,30,0
    .goto 2521,35.71,25.7,30,0
    .subzone 16635 >>Die and respawn at the Graveyard.
    *|cRXP_WARN_Use the sit macro in combat to die faster|r.
    .macro Sit, >>/sit
    .target Spirit Healer::6491
step
    #completewith next
    #label Turn in Foul Matriarch
    .subzoneskip 16635,1 -- Thendal Village
    .isQuestComplete 92470 -- Foul Matriarch
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aetheen of the Gales::251366|r.
    .turnin 92470,1 >>Turn in Foul Matriarch << Warrior/Paladin
    .turnin 92470,2 >>Turn in Foul Matriarch << Druid/Shaman/Priest/Warlock
    .turnin 92470,3 >>Turn in Foul Matriarch << Mage
    .turnin 92470,4 >>Turn in Foul Matriarch << Rogue
    .turnin 92470,5 >>Turn in Foul Matriarch << Hunter
step
    #completewith Turn in Foul Matriarch
    #ignorecorpse
    .subzoneskip 16635,1 -- Thendal Village
    .isQuestComplete 92470 -- Foul Matriarch
    .goto 2521,41.06,22.31
    .showwhiledead
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Spirit Healer::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step
    #requires Turn in Foul Matriarch
    .goto 2521,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aetheen of the Gales::251366|r.
    .turnin 92470,1 >>Turn in Foul Matriarch << Warrior/Paladin
    .turnin 92470,2 >>Turn in Foul Matriarch << Druid/Shaman/Priest/Warlock
    .turnin 92470,3 >>Turn in Foul Matriarch << Mage
    .turnin 92470,4 >>Turn in Foul Matriarch << Rogue
    .turnin 92470,5 >>Turn in Foul Matriarch << Hunter
    .accept 92472 >>Accept The Next Step
    .accept 96638 >>Accept The Adventurer
    .target Aetheen of the Gales::251366
step
    #completewith next
    #label Aggressive Encroachment2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valreaa Valewind::257551|r.
    .turnin 92473,1 >>Turn in Aggressive Encroachment
    .target Valreaa Valewind::257551
step
    #completewith Aggressive Encroachment2
    .goto 2521,42.76,24.52
    .vendor 251537 >>|cRXP_WARN_Vendor trash|r
    *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs]. << Alliance
    *Don't sell |T132832:0|t[Small Eggs]. << Horde
    *|cRXP_WARN_We need them for Cooking later.|r
step
    #requires Aggressive Encroachment2
    .goto 2521,42.41,25.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valreaa Valewind::257551|r.
    .turnin 92473,1 >>Turn in Aggressive Encroachment
    .target Valreaa Valewind::257551
step
    #completewith next
    #label Al'Aketh Thugs
    *|cRXP_WARN_Equip the|r |T135335:0|t[Worn Greatsword] << Warrior/Paladin
    *|cRXP_WARN_Equip the|r |T135145:0|t[Novice's Quarterstaff] << Druid/Shaman/Priest/Warlock
    *|cRXP_WARN_Equip the|r |T135650:0|t[Scout Ranger's Dagger] << Mage
    *|cRXP_WARN_Equip the|r |T133057:0|t[Peacekeeper's Pickhammer] << Rogue
    *|cRXP_WARN_Equip the|r |T135503:0|t[Refined Shortbow] << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanaa Nightwind::252095|r.
    .accept 92544 >>Accept Al'Aketh Thugs
    .target Hanaa Nightwind::252095
step
    #completewith Al'Aketh Thugs
    .goto 2521,38.31,30.17,100 >>Kill mobs along the way if you can do so without losing time.
step
    #requires Al'Aketh Thugs
    .goto 2521,38.31,30.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanaa Nightwind::252095|r.
    .accept 92544 >>Accept Al'Aketh Thugs
    .target Hanaa Nightwind::252095
step
    #completewith next
    >>Kill |cRXP_ENEMY_Al'Aketh Brute::251145|r and |cRXP_ENEMY_Al'Aketh Neophyte::251448|r.
    .complete 92544,1 --|6/6 Al'Aketh Brute slain
    .mob +Al'Aketh Brute::251145
    .complete 92544,2 --|4/4 Al'Aketh Neophyte slain
    .mob +Al'Aketh Neophyte::251448
step
    #completewith next
    #label Malduko Cloudcrush
    .goto 2521,37.04,32.93,20,0
    >>Kill |cRXP_ENEMY_Malduko Cloudcrush::256935|r.
    .complete 92544,3 --|1/1 Malduko Cloudcrush slain
    .mob Malduko Cloudcrush::256935
step
    #completewith Malduko Cloudcrush
    .goto 2521,36.032,33.545,50 >>Head to the upper level of the temple
step
    #requires Malduko Cloudcrush
    .goto 2521,36.032,33.545
    >>Kill |cRXP_ENEMY_Malduko Cloudcrush::256935|r atop the temple.
    .complete 92544,3 --|1/1 Malduko Cloudcrush slain
    .mob Malduko Cloudcrush::256935
step << Horde
    .isOnQuest 92544 -- Al'Aketh Thugs
    .goto 2521,35.910,33.605
    .cast 1259686 >>Use |T1029587:0|t[Skysight] for the 10% movement speed buff.
    .cooldown spell,1259686,>0,1
step << Alliance
    .isOnQuest 92544 -- Al'Aketh Thugs
    .goto 2521,35.57,33.84
    .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step
    #hidewindow
    #completewith Grind6
    #loop
    .goto 2521,35.33,34.19,30,0
    .goto 2521,36.34,31.56,40,0
    .goto 2521,37.3,32.89,40,0
    .goto 2521,37.16,34.72,40,0
    .goto 2521,38.08,35.01,40,0
    +1
step
    #loop
    .goto 2521,35.33,34.19,30,0
    .goto 2521,36.34,31.56,40,0
    .goto 2521,37.3,32.89,40,0
    .goto 2521,37.16,34.72,40,0
    .goto 2521,38.08,35.01,40,0
    >>Kill |cRXP_ENEMY_Al'Aketh Brute::251145|r and |cRXP_ENEMY_Al'Aketh Neophyte::251448|r.
    *|cRXP_WARN_Refresh|r |T236219:0|t[Read Ley Line] |cRXP_WARN_near the Leyline|r << Alliance
    .usespell 1259705
    .complete 92544,1 --|6/6 Al'Aketh Brute slain
    .mob +Al'Aketh Brute::251145
    .complete 92544,2 --|4/4 Al'Aketh Neophyte slain
    .mob +Al'Aketh Neophyte::251448
    .mob +Al'Aketh Ambusher::251451
step
    #label Grind6
    .xp 5+1740 >>Grind to level 5 1740+/2800xp to reach level 6 after turn ins in the next village to be able to train new spells.
    -- Maybe only grind here if little XP is needed; otherwise, train abilities after the cave.
step
    .goto 2521,38.32,30.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanaa Nightwind::252095|r.
    .turnin 92544 >>Turn in Al'Aketh Thugs
    .target Hanaa Nightwind::252095
step << !Mage
    #completewith next
    +|TInterface/cursor/crosshair/interact.blp:20|tClick |cRXP_PICK_Windstone crystals|r along the way for health and mana restoratives
    *Touch Tornadoes for 40% movement speed. Dealing damage removes the effect
step
    .isOnQuest 92472 -- The Next Step
    #completewith VendorStep
    #label The Next Step
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda::251523|r.
    .turnin 92472 >>Turn in The Next Step
    .target Constable Aonda::251523
step
    #completewith The Next Step
    >>Kill |cRXP_ENEMY_Galestriders::251661|r along the way. Loot them for |T133972:0|t[|cRXP_LOOT_Strider Meat|r] and |T132832:0|t[|cRXP_LOOT_Small Eggs|r]
    .collect 5469,8 -- Strider Meat
    .collect 6889,3 -- Small Egg
    -- .complete 92553,2 --8/8 Strider Meat
    -- .complete 92553,1 --3/3 Small Egg
    .mob Galestrider::251661
step << !Rogue !Warrior
    #completewith The Next Step
    #label VendorStep
    .goto 2521,44.72,45.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veena Vericloud::254358|r.
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from her|r << Shaman/Druid/Priest/Warlock/Paladin
    >>|cRXP_WARN_Save 2 silver for your class spells!|r << Shaman/Druid
    >>|cRXP_WARN_Save 3 silver for your class spells!|r << Mage
    .vendor 254358 >>|cRXP_WARN_Vendor trash|r.
    *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
    *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
    *|cRXP_WARN_We need them for Cooking later.|r
step << Rogue/Warrior
    #completewith The Next Step
    #label VendorStep
    .goto 2521,44.67,45.19,10,0
    .goto 2521,44.78,45.05
    .vendor 254360 >>|cRXP_WARN_Vendor trash|r.
    *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
    *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
    *|cRXP_WARN_We need them for Cooking later.|r
    .target Belandiel Farflight::254360
step
    #requires The Next Step
    .isOnQuest 92472 -- The Next Step
    .goto 2521,45.67,45.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda::251523|r.
    .turnin 92472 >>Turn in The Next Step
    .target Constable Aonda::251523
step
    .goto 2521,45.67,45.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda::251523|r.
    .accept 93461 >>Accept Welcome to Shen'dar Village << Alliance
    .accept 92514 >>Accept Welcome to Shen'dar Village << Horde
    .target Constable Aonda::251523
-- Level 6 class training is intentionally repeated during later Shen'dar Village visits for players who reach level 6 later.
step << Mage
    .goto 2521,45.1,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorii Brightwhisper::251379|r.
    .train 143 >>Train |T135812:0|t[Fireball (Rank 2)]
    .train 2136 >>Train |T135807:0|t[Fire Blast]
    .train 1296017 >>Train |T8188276:0|t[Comprehend Scroll]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
    .money <0.03
    .xp <6,1
step << Mage
    .goto 2521,45.1,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorii Brightwhisper::251379|r.
    .train 143 >>Train |T135812:0|t[Fireball (Rank 2)]
    .train 2136 >>Train |T135807:0|t[Fire Blast]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
    .money <0.02
    .xp <6,1
step << Alliance
    .goto 2521,45.04,46.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rathiril Sunlance::251903|r.
    .complete 93461,1 --1/1 Speak with Rathiril Sunlance
    .accept 92596 >>Accept The High Order
    .target Rathiril Sunlance::251903
step << Alliance
    .goto 2521,45.04,46.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rathiril Sunlance::251903|r.
    .complete 92596,1 --1/1 Listen to Rathiril Sunlance
    .skipgossipid 136139 -- Can you tell me what is happening on Zephras Isle?
    .skipgossipid 136138 -- Do we know why..?
    .skipgossipid 136137 -- How do we solve this?
    .skipgossipid 136136 -- What about the Al'Aketh? Can they help?
    .skipgossipid 136135 -- What of this "Windlord"? Is Al'Akir real, or a creation of the cult?
    .skipgossipid 136134 -- How can you be so sure? If we've never dealt with the windlord directly, surely it's worth a try?
    .skipgossipid 136133 -- <Remain Silent>
step << Alliance
    .goto 2521,44.98,46.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rathiril Sunlance::251903|r.
    .turnin 92596 >>Turn in The High Order
    .accept 94413 >>Accept A Magical Affront
    .target Rathiril Sunlance::251903
step << Horde
    .goto 2521,43.52,44.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illaya Amberwind::251902|r.
    .complete 92514,1 --1/1 Speak with Illaya Amberwind
    .accept 92595 >>Accept The Windshapers
    .target Illaya Amberwind::251902
step << Horde
    .goto 2521,43.52,44.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illaya Amberwind::251902|r.
    .complete 92595,1 --1/1 Listen to Illaya
    .target Illaya Amberwind::251902
    .skipgossipid 135864
    .skipgossipid 135863
    .skipgossipid 135862
    .skipgossipid 135861
    .skipgossipid 135860
    .skipgossipid 135859
    .skipgossipid 135858
step << Horde
    .goto 2521,43.52,44.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illaya Amberwind::251902|r.
    .turnin 92595 >>Turn in The Windshapers
    .accept 94411 >>Accept Meddlesome Mages
    .target Illaya Amberwind::251902
step << Horde Shaman
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aarnor Galestrike::254082|r
    .trainer >>Train your class spells
    .target Aarnor Galestrike::254082
    .money <0.01
    .xp <6,1
    .skipgossipid 136811
step
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coriella Calmbreeze::254089|r.
    .complete 92514,2 << Horde --1/1 Speak with the Innkeeper
    .target Coriella Calmbreeze::254089
step << Horde
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coriella Calmbreeze::254089|r.
    .home >>Set your Hearthstone to Shen'dar Village
    .bindlocation 16624
    .target Coriella Calmbreeze::254089
step << Horde Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade::254087|r
    .train 1757 >>Train |T136189:0|t[Sinister Strike (Rank 2)]
    .train 1776 >>Train |T132155:0|t[Gouge]
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.02
    .xp <6,1
step << Horde Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade::254087|r
    .train 1757 >> Train |T136189:0|t[Sinister Strike (Rank 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.01
    .xp <6,1
step << Alliance Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade::254087|r
    .train 1757 >>Train |T136189:0|t[Sinister Strike (Rank 2)]
    .train 1776 >>Train |T132155:0|t[Gouge]
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.02
    .xp <6,1
step << Alliance Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade::254087|r
    .train 1757 >> Train |T136189:0|t[Sinister Strike (Rank 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.01
    .xp <6,1
step << Mage
    .isOnQuest 93461 << Alliance -- Welcome to Shen'dar Village
    .isOnQuest 92514 << Horde -- Welcome to Shen'dar Village
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.24,43.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nasalanna Windsinger::257020|r and buy any missing materials: |T133942:0|t[Copper Rod], |T132841:0|t[Mote of Magic] and |T135435:0|t[Simple Wood].
    .collect 6217,1 -- Copper Rod
    .collect 247786,3 -- Mote of Magic
    .collect 4470,1 -- Simple Wood
    .skipgossipid 137558
    .target Nasalanna Windsinger::257020
    .money <0.0172
step << Mage
    .isOnQuest 93461 << Alliance -- Welcome to Shen'dar Village
    .isOnQuest 92514 << Horde -- Welcome to Shen'dar Village
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.24,43.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nasalanna Windsinger::257020|r
    .train 7411 >>Train |T136189:0|t[Enchanting] |cRXP_WARN_for immediate wand|r
    .skipgossipid 137559
    .target Nasalanna Windsinger::257020
step << Mage
    .isOnQuest 93461 << Alliance -- Welcome to Shen'dar Village
    .isOnQuest 92514 << Horde -- Welcome to Shen'dar Village
    .train 7411,3 -- Enchanting Trained
    >>Use the |T135225:0|t[Runed Copper Rod] macro below, then use the |T135645:0|t[Novice's Practice Wand] macro
    *|cRXP_WARN_Afterward, enchant your bracers with Stamina if you have a pair equipped|r
    .collect 6218,1 -- Runed Copper Rod
    .collect 247789,1 -- Novice's Practice Wand
    .macro Runed Copper Rod,135225 >>/cast Enchanting\n/run C_TradeSkillUI.CraftRecipe(7421,1)
    .macro Novice's Practice Wand,135645 >>/run C_TradeSkillUI.CraftRecipe(1245321,1)
step << Mage
    #completewith MageEnchanting
    .train 7411,3 -- Enchanting Trained
    +Abandon Enchanting or continue with it.
step << Alliance
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coriella Calmbreeze::254089|r.
    .complete 93461,2 << Alliance --1/1 Speak with the Innkeeper
    .target Coriella Calmbreeze::254089
step << Alliance
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Coriella Calmbreeze::254089|r.
    .home >>Set your Hearthstone to Shen'dar Village
    .bindlocation 16624
    .target Coriella Calmbreeze::254089
step << Warrior
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corsan Earthrazer::254088|r
    .train 3127 >>Train |T132269:0|t[Parry]
    .skipgossipid 136813
    .target Corsan Earthrazer::254088
    .money <0.01
    .xp <6,1
step << Hunter
    .goto 2521,45.07,45.27,25,0
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elayaa Easewind::254084|r inside the house.
    .train 3044 >>Train |T132218:0|t[Arcane Shot]
    .train 1130 >>Train |T132212:0|t[Hunter's Mark]
    .skipgossipid 136808
    .target Elayaa Easewind::254084
    .money <0.02
    .xp <6,1
step << Druid
    .goto 2521,45.07,45.27,25,0
    .goto 2521,45.154,44.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naeluna Swiftmend::254081|r inside the house.
    .train 467 >>Train |T136104:0|t[Thorns]
    .train 5177 >>Train |T136006:0|t[Wrath (Rank 2)]
    .skipgossipid 136805
    .xp <6,1
    .money <0.02
    .target Naeluna Swiftmend::254081
step
    #label MageEnchanting
    .goto 2521,45.67,45.50
    *|cRXP_WARN_Equip the|r |T135645:0|t[Novice's Practice Wand] << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda::251523|r.
    .turnin 93461 >>Turn in Welcome to Shen'dar Village << Alliance
    .turnin 92514 >>Turn in Welcome to Shen'dar Village << Horde
    .accept 92517 >>Accept The Criminal Element
    .target Constable Aonda::251523
-- Intentional repeat of level 6 class training for players who reached level 6 after the earlier trainer visit.
step << Hunter
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elayaa Easewind::254084|r.
    .train 3044 >>Train |T132218:0|t[Arcane Shot]
    .train 1130 >>Train |T132212:0|t[Hunter's Mark]
    .skipgossipid 136808
    .target Elayaa Easewind::254084
    .money <0.02
    .xp <6,1
step << Druid
    .goto 2521,45.154,44.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naeluna Swiftmend::254081|r
    .train 467 >>Train |T136104:0|t[Thorns]
    .train 5177 >>Train |T136006:0|t[Wrath (Rank 2)]
    .skipgossipid 136805
    .xp <6,1
    .money <0.02
    .target Naeluna Swiftmend::254081
step
    .isNotOnQuest 93319,92516 -- Pilfered Windstones / Hippogryph Harassment
    .isQuestAvailable 93319 -- Pilfered Windstones
    .isQuestAvailable 92516 -- Hippogryph Harassment
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.72,45.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veena Vericloud::254358|r.
    .collect 1179,5 >>|cRXP_BUY_Buy 5|r |T132815:0|t[Ice Cold Milk], |cRXP_BUY_or 10 if you can afford them|r << Druid/Priest/Warlock
    *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
    *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
    *|cRXP_WARN_We need them for Cooking later.|r
    .money <0.0125
step
    .goto 2521,44.47,44.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teeri Wellwind::251906|r.
    .accept 93319 >>Accept Pilfered Windstones
    .accept 92516 >>Accept Hippogryph Harassment
    .target Teeri Wellwind::251906
step
    .goto 2521,44.68,44.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Indari Sunseam::251993|r.
    .accept 92515 >>Accept The Problem With Prideclaws
    .target Indari Sunseam::251993
step
    .goto 2521,44.88,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taleen Shimmerthread::251991|r.
    .accept 93951 >>Accept A Little Beauty
    .target Taleen Shimmerthread::251991
step << Shaman
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tephri Thriceforged::257421|r
    >>|cRXP_BUY_Buy and equip a|r |T135145:0|t[Walking Stick]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Hunter
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tephri Thriceforged::257421|r
    >>|cRXP_BUY_Buy and equip a|r |T135499:0|t[Hornwood Recurve Bow]
    >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_until your Quiver is full|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Tephri Thriceforged::257421
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Warrior/Paladin
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.8,44.18
    #arrowtext Talk to\n|cRXP_FRIENDLY_Tephri Thriceforged::257421|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tephri Thriceforged::257421|r and buy and equip a |T133053:0|t[Wooden Mallet].
    .collect 2493,1 -- Wooden Mallet
    .money <0.0701
    .target Tephri Thriceforged::257421
step << Rogue
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.8,44.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tephri Thriceforged::257421|r and buy and equip a |T135321:0|t[Gladius].
    .collect 2488,1 -- Gladius
    .target Tephri Thriceforged::257421
    .money <0.0536
step
    .goto 2521,43.850,43.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .accept 92553 >>Accept Restocking the Larders
    .addquestitem 6889,92553
    .addquestitem 5469,92553
    .target Zerril Softbreeze::251905
step -- for people who send the items over
    .isQuestComplete 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .turnin 92553 >>Turn in Restocking the Larders
    .target Zerril Softbreeze::251905
step
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,1 -- Small Egg
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.86,43.85
    +Use the |T132834:0|t[Herb Baked Egg] macro below to craft as many as possible.
    *|cRXP_WARN_Most buff food grants 5% increased experience from kills for 15 minutes. Try to maintain a high uptime on this buff while leveling.|r
    .collect 2678,5 >>buy 5 |T134059:0|t[Mild Spices].
    .disablecheckbox
    .macro Herb Baked Egg,132834 >>/cast Cooking\n/run local count=C_Item.GetItemCount(6889);if count and count > 0 then C_TradeSkillUI.CraftRecipe(8604,count) end
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestNotComplete 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .train 2550,3 -- Cooking Trained
    .itemcount 6888,<1 -- Herb Baked Egg
    .itemcount 6889,1 -- Small Egg
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.86,43.85
    +Use the |T132834:0|t[Herb Baked Egg] macro below to craft 1 for the experience buff.
    *|cRXP_WARN_Most buff food grants 5% increased experience from kills for 15 minutes. Try to maintain a high uptime on this buff while leveling.|r
    .collect 2678,5 >>buy 5 |T134059:0|t[Mild Spices].
    .disablecheckbox
    .macro Herb Baked Egg,132834 >>/cast Cooking\n/run C_TradeSkillUI.CraftRecipe(8604,1)
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestNotComplete 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .itemcount 6889,>3 -- Small Egg
    .train 2550,3 -- Cooking Trained
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.86,43.85
    +Use the |T132834:0|t[Herb Baked Egg] macro below to craft every Small Egg beyond the 3 reserved for Restocking the Larders.
    *|cRXP_WARN_Keep at least 3 Small Eggs for a later quest|r
    *|cRXP_WARN_Most buff food grants 5% increased experience from kills for 15 minutes. Try to maintain a high uptime on this buff while leveling.|r
    .collect 2678,5 >>buy 5 |T134059:0|t[Mild Spices].
    .disablecheckbox
    .macro Herb Baked Egg,132834 >>/cast Cooking\n/run local count=C_Item.GetItemCount(6889);if count and count > 3 then C_TradeSkillUI.CraftRecipe(8604, min(5, count - 3)) end
-- Intentional repeat of level 6 Rogue training for players who reached level 6 after the earlier trainer visit.
step << Horde Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade::254087|r
    .train 1757 >>Train |T136189:0|t[Sinister Strike (Rank 2)]
    .train 1776 >>Train |T132155:0|t[Gouge]
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.02
    .xp <6,1
step << Horde Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade::254087|r
    .train 1757 >>Train |T136189:0|t[Sinister Strike (Rank 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.01
    .xp <6,1
step << Alliance Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade::254087|r
    .train 1757 >>Train |T136189:0|t[Sinister Strike (Rank 2)]
    .train 1776 >>Train |T132155:0|t[Gouge]
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.02
    .xp <6,1
step << Alliance Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade::254087|r
    .train 1757 >>Train |T136189:0|t[Sinister Strike (Rank 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.01
    .xp <6,1
step
    #completewith BadwindBennicA
    >>Kill |cRXP_ENEMY_Prideclaws::251245|r. Loot them for the |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    *|cRXP_WARN_Prioritize them|r
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #completewith BadwindBennicA
    >>Kill |cRXP_ENEMY_Galestrider::251661|r. Loot them for |T133972:0|t[|cRXP_LOOT_Strider Meat|r] and |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    *|cRXP_WARN_Prioritize them|r
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Horde
    #loop
    .goto 2521,46.13,39.79,25,0
    .goto 2521,46.9,38.84,25,0
    .goto 2521,46.37,37.85,25,0
    .goto 2521,45.76,39.31,25,0
    >>Kill |cRXP_ENEMY_High Order Apprentices::257521|r.
    .complete 94411,1 --|6/6 High Order Apprentice defeated
    .mob High Order Apprentice::257521
step << Horde
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .goto 2521,46.597,38.121
    .cast 1259686 >>Use |T1029587:0|t[Skysight] for the 10% movement speed buff.
    .cooldown spell,1259686,>0,1
step
    #completewith BadwindBennicB
    >>Kill |cRXP_ENEMY_Highlands Bandits::251918|r. Loot them for the |T5172975:0|t[|cRXP_LOOT_Pilfered Windstone|r].
    .complete 92517,1 --|10/10 Highlands Bandit slain
    .complete 93319,1 --|10/10 Pilfered Windstone
    .mob +Highlands Bandit::251918
step
    #completewith next
    #label BadwindBennicA
    >>Kill |cRXP_ENEMY_"Badwind" Bennic::255534|r.
    .complete 92517,2 --|1/1 "Badwind" Bennic slain
    .mob "Badwind" Bennic::255534
step
    #completewith BadwindBennicA
    .goto 2521,48.813,36.434,10,0
    .goto 2521,49.355,35.793,15,0
    .goto 2521,49.537,34.325,70 >>Enter the cave
step
    #requires BadwindBennicA
    #label BadwindBennicB
    .goto 2521,49.8,36.03,20,0
    .goto 2521,49.97,35.19,20,0
    .goto 2521,49.59,34.3,20,0
    .goto 2521,50.4,33.49,30,0
    .goto 2521,50.680,34.214
    >>Kill |cRXP_ENEMY_"Badwind" Bennic::255534|r.
    .usespell 1259705
    .complete 92517,2 --|1/1 "Badwind" Bennic slain
    .mob "Badwind" Bennic::255534
step << Alliance
    .isOnQuest 92517 -- The Criminal Element
    .subzoneskip 16674,1 -- Bandit Hideout
    #arrowtext Use |T236219:0|t[Read Ley Line]\nnear the Ley Line
    .goto 2521,50.59,33.51
    .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step
    #completewith OutCave
    >>Kill |cRXP_ENEMY_Galestrider::251661|r. Loot them for |T133972:0|t[|cRXP_LOOT_Strider Meat|r] and |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #completewith OutCave
    >>Kill |cRXP_ENEMY_Prideclaws::251245|r. Loot them for the |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label OutCave
    #loop
    .goto 2521,50.27,33.41,25,0
    .goto 2521,49.69,34.05,25,0
    .goto 2521,49.64,34.66,25,0
    .goto 2521,49.93,35.22,25,0
    .goto 2521,49.79,35.97,25,0
    .goto 2521,49.26,35.91,25,0
    .goto 2521,48.82,36.47,25,0
    .goto 2521,49.43,38.66,40,0
    .goto 2521,48.02,38.41,40,0
    .goto 2521,47.75,36.19,40,0
    .goto 2521,48.93,36.38,40,0
    >>Kill |cRXP_ENEMY_Highlands Bandits::251918|r. Loot them for |T5172975:0|t[|cRXP_LOOT_Pilfered Windstone|r].
    .complete 92517,1 --|10/10 Highlands Bandit slain
    .complete 93319,1 --|10/10 Pilfered Windstone
    .mob +Highlands Bandit::251918
step
    #completewith To Shendalar
    >>Kill |cRXP_ENEMY_Galestrider::251661|r |cRXP_WARN_along the way|r.
    *Loot them for |T133972:0|t[|cRXP_LOOT_Strider Meat|r] and |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #completewith To Shendalar
    >>Kill |cRXP_ENEMY_Prideclaws::251245|r |cRXP_WARN_along the way|r.
    *Loot them for |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label To Shendalar
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .isOnQuest 94413 << Alliance -- A Magical Affront
    .isQuestNotComplete 94413 << Alliance -- A Magical Affront
    .goto 2521,43.86,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Zerril Softbreeze::251905|r and buy 5 |T134059:0|t[Mild Spices].
    .vendor 251905 >>Vendor Trash
    .collect 2678,5 -- Mild Spices
    *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
    *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
    *|cRXP_WARN_We need them for Cooking later|r.
    .target Zerril Softbreeze::251905
    .skipgossipid 137550
step
    .goto 2521,43.850,43.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r 
    .train 2550 >>Train |T133971:0|t[Apprentice Cook]
    .skipgossipid 137551
    .target Zerril Softbreeze::251905
step -- for people who send the items over
    .isQuestComplete 92553 -- Restocking the Larders
    .isOnQuest 94413 << Alliance -- A Magical Affront
    .isQuestNotComplete 94413 << Alliance -- A Magical Affront
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .turnin 92553 >>Turn in Restocking the Larders
    .target Zerril Softbreeze::251905
step
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isOnQuest 94413 << Alliance -- A Magical Affront
    .isQuestNotComplete 94413 << Alliance -- A Magical Affront
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,1 -- Small Egg
    .goto 2521,43.86,43.85
    +Use the |T132834:0|t[Herb Baked Egg] macro below to craft as many as possible.
    *|cRXP_WARN_Most buff food grants 5% increased experience from kills for 15 minutes. Try to maintain a high uptime on this buff while leveling.|r
    .collect 2678,10 >>buy 10 |T134059:0|t[Mild Spices].
    .disablecheckbox
    .macro Herb Baked Egg,132834 >>/cast Cooking\n/run local count=C_Item.GetItemCount(6889);if count and count > 0 then C_TradeSkillUI.CraftRecipe(8604,count) end
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestNotComplete 92553 -- Restocking the Larders
    .isOnQuest 94413 << Alliance -- A Magical Affront
    .isQuestNotComplete 94413 << Alliance -- A Magical Affront
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .train 2550,3 -- Cooking Trained
    .itemcount 6888,<1 -- Herb Baked Egg
    .itemcount 6889,1 -- Small Egg
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.86,43.85
    +Use the |T132834:0|t[Herb Baked Egg] macro below to craft 1 for the experience buff.
    *|cRXP_WARN_Most buff food grants 5% increased experience from kills for 15 minutes. Try to maintain a high uptime on this buff while leveling.|r
    .collect 2678,10 >>buy 10 |T134059:0|t[Mild Spices].
    .disablecheckbox
    .macro Herb Baked Egg,132834 >>/cast Cooking\n/run C_TradeSkillUI.CraftRecipe(8604,1)
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestNotComplete 92553 -- Restocking the Larders
    .isOnQuest 94413 << Alliance -- A Magical Affront
    .isQuestNotComplete 94413 << Alliance -- A Magical Affront
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .itemcount 6889,>3 -- Small Egg
    .train 2550,3 -- Cooking Trained
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.86,43.85
    +Use the |T132834:0|t[Herb Baked Egg] macro below to craft every Small Egg beyond the 3 reserved for Restocking the Larders.
    *|cRXP_WARN_Keep at least 3 Small Eggs for a later quest|r
    *|cRXP_WARN_Most buff food grants 5% increased experience from kills for 15 minutes. Try to maintain a high uptime on this buff while leveling.|r
    .collect 2678,10 >>buy 10 |T134059:0|t[Mild Spices].
    .disablecheckbox
    .macro Herb Baked Egg,132834 >>/cast Cooking\n/run local count=C_Item.GetItemCount(6889);if count and count > 3 then C_TradeSkillUI.CraftRecipe(8604, min(5, count - 3)) end
-- Intentional repeat of level 6 class training for players who reached level 6 after the earlier trainer visit.
step << Mage
    .goto 2521,45.1,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorii Brightwhisper::251379|r.
    .train 143 >>Train |T135812:0|t[Fireball (Rank 2)]
    .train 2136 >>Train |T135807:0|t[Fire Blast]
    .train 1296017 >>Train |T8188276:0|t[Comprehend Scroll]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
    .money <0.03
    .xp <6,1
step << Horde Shaman
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aarnor Galestrike::254082|r
    .trainer >>Train your class spells
    .target Aarnor Galestrike::254082
    .money <0.01
    .xp <6,1
step << Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade::254087|r
    .train 1757 >>Train |T136189:0|t[Sinister Strike (Rank 2)]
    .train 1776 >>Train |T132155:0|t[Gouge]
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.02
    .xp <6,1
step << Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade::254087|r
    .train 1757 >> Train |T136189:0|t[Sinister Strike (Rank 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.01
    .xp <6,1
step << Warrior
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corsan Earthrazer::254088|r
    .train 3127 >> Train |T132269:0|t[Parry]
    .skipgossipid 136813
    .target Corsan Earthrazer::254088
    .money <0.01
    .xp <6,1
step << Hunter
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elayaa Easewind::254084|r.
    .train 3044 >>Train |T132218:0|t[Arcane Shot]
    .train 1130 >>Train |T132212:0|t[Hunter's Mark]
    .skipgossipid 136808
    .target Elayaa Easewind::254084
    .money <0.02
    .xp <6,1
step << Druid
    .goto 2521,45.154,44.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naeluna Swiftmend::254081|r
    .train 467 >>Train |T136104:0|t[Thorns]
    .train 5177 >>Train |T136006:0|t[Wrath (Rank 2)]
    .skipgossipid 136805
    .xp <6,1
    .money <0.02
    .target Naeluna Swiftmend::254081
step << Mage/Druid/Shaman/Priest/Warlock/Paladin
    .goto 2521,44.465,44.966
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teeri Wellwind::251906|r
    .target Teeri Wellwind::251906
    .turnin 93319 >>Turn in Pilfered Windstones
step << Shaman
    .isQuestComplete 94411 -- Meddlesome Mages
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tephri Thriceforged::257421|r
    >>|cRXP_BUY_Buy and equip a|r |T135145:0|t[Walking Stick]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Mage/Druid/Shaman/Priest/Warlock/Paladin
    .subzoneskip 16624,1 -- Shen'dar Village
    .isQuestAvailable 96638 -- The Adventurer
    .goto 2521,44.71,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veena Vericloud::254358|r
    .vendor 254358 >>|cRXP_BUY_Buy a|r |T133634:0|t[Small Brown Pouch].
    *|cRXP_BUY_Buy at most 10|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    *|cRXP_WARN_When equipping bags, make sure your Reagent Bag is in the dedicated Reagent Bag slot.|r
    *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
    *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
    .target Veena Vericloud::254358
step << Horde
    .goto 2521,43.518,44.783
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illaya Amberwind::251902|r.
    .turnin 94411 >>Turn in Meddlesome Mages
    .target Illaya Amberwind::251902
step
    .goto 2521,43.37,45.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bounty Available: Vulgara the Insatiable!|r
    .accept 93318 >>Accept WANTED: Vulgara the Insatiable
    .target Bounty Available: Vulgara the Insatiable!
step << Warrior/Rogue
    .goto 2521,43.073,46.306
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naleeia Tattermend::257018|r.
    .train 3273 >>Train First Aid
    .skipgossipid 137555
    .target Naleeia Tattermend::257018
step
    .goto 2521,41.67,44.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r.
    .turnin 96638 >>Turn in The Adventurer
    .target Raan Wildwind::263664
    .accept 96101 >>Accept The Great Outdoors
step
    .goto 2521,41.67,44.79
    >>Click the macro in the Active Items frame to sit.
    .complete 96101,1 --1/1 Use the /sit emote near the campfire
    -- .emote SIT,263664 -- Feels like this is breaking the quest completion 50% of the time
    .macro Sit,134400 >>/sit
    .timer 59, RP
    .target Raan Wildwind::263664
step
    >>|cRXP_WARN_Remain seated until you gain the Boosted Rest buff|r.
    *|cRXP_WARN_You can craft while you wait without interrupting the process|r.
    *|cRXP_WARN_Craft|r |T133974:0|t[Charred Wolf Meat] |cRXP_WARN_to increase your Cooking skill. Don't use|r |T132832:0|t[Small Eggs] << Alliance
    *If you don't receive the buff, log out and back in, then try again.
    .complete 96101,2 --Gain the Boosted Rest buff
step
    .goto 2521,41.67,44.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r.
    .turnin 96101 >>Turn in The Great Outdoors
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 2575,3 -- Mining Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97970 >>Accept Camping 101: Mining
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 8613,3 -- Skinning Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97971 >>Accept Camping 101: Skinning
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 96646 >>Accept Camping 101: Cooking
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 2366,3 -- Herbalism Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97968 >>Accept Camping 101: Herbalism
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 3273,3 -- First Aid Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97965 >>Accept Camping 101: First Aid
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 7620,3 -- Fishing Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97967 >>Accept Camping 101: Fishing
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 2259,3 -- Alchemy Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97963 >>Accept Camping 101: Alchemy
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 2018,3 -- Blacksmithing Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97964 >>Accept Camping 101: Blacksmithing
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 3908,3 -- Tailoring Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97973 >>Accept Camping 101: Tailoring
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 7411,3 -- Enchanting Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 98286 >>Accept Camping 101: Enchanting
    .target Raan Wildwind::263664
step
    .train 2108,3 -- Leatherworking Trained
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97969 >>Accept Camping 101: Leatherworking
    .target Raan Wildwind::263664
step << Horde
    #completewith HippogryphHarassmentA
    #hidewindow
    #loop
    .goto 2521,36.44,50.93,40,0
    .goto 2521,35.16,51.07,35,0
    .goto 2521,34.12,51.6,37,0
    .goto 2521,34.52,52.76,40,0
    .goto 2521,35.12,54.08,38,0
    .goto 2521,35.86,53.01,40,0
    .goto 2521,36.02,54.28,40,0
    .goto 2521,35.71,55.57,40,0
    .goto 2521,35.63,57.34,30,0
    .goto 2521,34.6,57.11,35,0
    .goto 2521,35.51,58.08,40,0
    .goto 2521,36.61,58.64,40,0
    .goto 2521,37.13,56.6,40,0
    .goto 2521,38.61,56.89,40,0
    .goto 2521,39.88,57.56,40,0
    .goto 2521,39.1,55.85,40,0
    .goto 2521,33.1,54.67,40,0
    .goto 2521,34.7,52.68,40,0
    .goto 2521,34.25,51.19,40,0
    +1
step
    #completewith HippogryphHarassmentA
    >>Kill |cRXP_ENEMY_Prideclaws::251245|r. Loot them for the |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    *|cRXP_WARN_Touch a nearby Tornado to gain 40% increased movement speed for 5 minutes. Dealing damage removes the effect|r.
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #completewith HippogryphHarassmentA
    >>Kill |cRXP_ENEMY_Galestrider::251661|r. Loot them for |T133972:0|t[|cRXP_LOOT_Strider Meat|r] and |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Alliance
    #completewith next
    >>Kill |cRXP_ENEMY_Windshaper Novice Seer::257532|r.
    .usespell 1259705
    .complete 94413,1 --6/6 Windshaper Novice Seer defeated
    .mob Windshaper Novice Seer::257532
step << Alliance
    .isOnQuest 94413 -- A Magical Affront
    .isQuestNotComplete 94413 -- A Magical Affront
    .goto 2521,39,47.37
    .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step << Alliance
    #loop
    .goto 2521,37.96,46.86,40,0
    .goto 2521,38.75,48.72,40,0
    .goto 2521,38.99,47.24,40,0
    >>Kill |cRXP_ENEMY_Windshaper Novice Seer::257532|r.
    *|cRXP_WARN_Refresh|r |T236219:0|t[Read Ley Line] |cRXP_WARN_near the Leyline|r << Alliance
    .usespell 1259705
    .complete 94413,1 --6/6 Windshaper Novice Seer defeated
    .mob Windshaper Novice Seer::257532
step
    .isOnQuest 92516 -- Hippogryph Harassment
    .isQuestNotComplete 92516 -- Hippogryph Harassment
    .subzoneskip 16623,1 -- Shen'dar Highlands
    #arrowtext Jump off the mountain\nUse |T132845:0|t[Walk on Air]
    .goto 2521,36.44,50.93
    .cast 1259416 >>Jump off the mountain and use |T132845:0|t[Walk on Air] to fly towards the waypoint.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance
    #completewith HippogryphHarassmentA
    #hidewindow
    #loop
    .goto 2521,36.44,50.93,40,0
    .goto 2521,35.16,51.07,35,0
    .goto 2521,34.12,51.6,37,0
    .goto 2521,34.52,52.76,40,0
    .goto 2521,35.12,54.08,38,0
    .goto 2521,35.86,53.01,40,0
    .goto 2521,36.02,54.28,40,0
    .goto 2521,35.71,55.57,40,0
    .goto 2521,35.63,57.34,30,0
    .goto 2521,34.6,57.11,35,0
    .goto 2521,35.51,58.08,40,0
    .goto 2521,36.61,58.64,40,0
    .goto 2521,37.13,56.6,40,0
    .goto 2521,38.61,56.89,40,0
    .goto 2521,39.88,57.56,40,0
    .goto 2521,39.1,55.85,40,0
    .goto 2521,33.1,54.67,40,0
    .goto 2521,34.7,52.68,40,0
    .goto 2521,34.25,51.19,40,0
    +1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Hippogryph Youth::251291|r, |cRXP_ENEMY_Hippogryph Protector::251284|r and the |cRXP_ENEMY_Hippogryph Matriarch::251261|r.
    *|cRXP_WARN_Keep an eye out for Windstones to recover and Tornadoes for a movement speed boost|r
    *|cRXP_WARN_Prioritize the |cRXP_ENEMY_Matriarch::251261|r|r
    .complete 92516,1 --|8/8 Hippogryph Youth slain
    .mob +Hippogryph Youth::251291
    .complete 92516,2 --|6/6 Hippogryph Protector slain
    .mob +Hippogryph Protector::251284
    .complete 92516,3 --|1/1 Hippogryph Matriarch slain
    .mob +Hippogryph Matriarch::251261
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Hippogryph Downs|r.
    .complete 93951,1 --|8/8 Hippogryph Down
step
    #label HippogryphHarassmentA
    >>Kill |cRXP_ENEMY_Hippogryph Youth::251291|r, |cRXP_ENEMY_Hippogryph Protector::251284|r and the |cRXP_ENEMY_Hippogryph Matriarch::251261|r.
    *|cRXP_WARN_Prioritize the |cRXP_ENEMY_Matriarch::251261|r|r
    .complete 92516,1 --|8/8 Hippogryph Youth slain
    .mob +Hippogryph Youth::251291
    .complete 92516,2 --|6/6 Hippogryph Protector slain
    .mob +Hippogryph Protector::251284
    .complete 92516,3 --|1/1 Hippogryph Matriarch slain
    .mob +Hippogryph Matriarch::251261
step
    #completewith VulgarasHeadA
    >>Kill |cRXP_ENEMY_Galestrider::251661|r. Loot them for |T133972:0|t[|cRXP_LOOT_Strider Meat|r] and |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #completewith VulgarasHeadA
    >>Kill |cRXP_ENEMY_Prideclaws::251245|r. Loot them for the |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label VulgarasHeadA
    .goto 2521,43.079,51.028,15,0
    .goto 2521,42.978,51.803,15,0
    .goto 2521,42.75,52.68
    >>Kill |cRXP_ENEMY_Vulgara::254589|r |cRXP_WARN_(level 8 elite)|r on the mountain. Loot it for |T4218759:0|t[|cRXP_LOOT_Vulgara's Head|r].
    *|cRXP_WARN_Look for a group to kill it or skip the quest; respawns are lengthy|r.
    .complete 93318,1 --1/1 Vulgara's Head
    .mob Vulgara::254589
step
    #completewith A Little Beauty
    >>Kill |cRXP_ENEMY_Galestrider::251661|r. Loot them for |T133972:0|t[|cRXP_LOOT_Strider Meat|r] and |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
-- step -- if you want to force finish here
--     #loop
--     .goto 2521,43.07,48.51,40,0
--     .goto 2521,37.56,43.24,40,0
--     .goto 2521,40.04,41.38,40,0
--     >>Kill |cRXP_ENEMY_Prideclaws::251245|r. Loot them for the |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
--     .complete 92515,1 --10/10 Prideclaw Pelt
--     .mob Prideclaw::251245
step
    #completewith A Little Beauty
    >>Kill |cRXP_ENEMY_Prideclaws::251245|r. Loot them for the |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    .train 3273,3 -- First Aid Trained
    .isQuestComplete 97965 -- Camping 101: First Aid
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.08,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naleeia Tattermend::257018|r
    .turnin 97965 >>Turn in Camping 101: First Aid
    .target Naleeia Tattermend::257018
step
    .train 7411,3 -- Enchanting Trained
    .isQuestComplete 98286 -- Camping 101: Enchanting
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.25,43.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nasalanna Windsinger::257020|r
    .turnin 98286 >>Turn in Camping 101: Enchanting
    .target Nasalanna Windsinger::257020
step
    .train 8613,3 -- Skinning Trained
    .isQuestComplete 97971 -- Camping 101: Skinning
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.3,43.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mendalass Tattermend::257024|r
    .turnin 97971 >>Turn in Camping 101: Skinning
    .target Mendalass Tattermend::257024
step
    .isQuestComplete 92516 -- Hippogryph Harassment
    .isQuestComplete 92553 -- Restocking the Larders
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r and buy 5 |T134059:0|t[Mild Spices]
    .vendor 251905 >>Vendor Trash
    *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
    *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
    *|cRXP_WARN_We need them for Cooking later.|r
    .collect 2678,5 -- Mild Spices
    .skipgossipid 137550
    .target Zerril Softbreeze::251905
step
    .isQuestComplete 92516 -- Hippogryph Harassment
    .isQuestComplete 92553 -- Restocking the Larders
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .turnin 92553 >>Turn in Restocking the Larders
    .target Zerril Softbreeze::251905
step
    .train 2550,3 -- Cooking Trained
    .isQuestComplete 96646 -- Camping 101: Cooking
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .turnin 96646 >>Turn in Camping 101: Cooking
    .target Zerril Softbreeze::251905
step
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isQuestComplete 92516 -- Hippogryph Harassment
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,1 -- Small Egg
    .goto 2521,43.86,43.85
    +Use the |T132834:0|t[Herb Baked Egg] macro below to craft as many as possible.
    *|cRXP_WARN_Most buff food grants 5% increased experience from kills for 15 minutes. Try to maintain a high uptime on this buff while leveling.|r
    .collect 2678,20 >>buy 20 |T134059:0|t[Mild Spices].
    .disablecheckbox
    .macro Herb Baked Egg,132834 >>/cast Cooking\n/run local count=C_Item.GetItemCount(6889);if count and count > 0 then C_TradeSkillUI.CraftRecipe(8604,count) end
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestNotComplete 92553 -- Restocking the Larders
    .isQuestComplete 92516 -- Hippogryph Harassment
    .train 2550,3 -- Cooking Trained
    .itemcount 6888,<1 -- Herb Baked Egg
    .itemcount 6889,1 -- Small Egg
    .goto 2521,43.86,43.85
    +Use the |T132834:0|t[Herb Baked Egg] macro below to craft 1 for the experience buff.
    *|cRXP_WARN_Most buff food grants 5% increased experience from kills for 15 minutes. Try to maintain a high uptime on this buff while leveling.|r
    .collect 2678,20 >>buy 20 |T134059:0|t[Mild Spices].
    .disablecheckbox
    .macro Herb Baked Egg,132834 >>/cast Cooking\n/run C_TradeSkillUI.CraftRecipe(8604,1)
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestComplete 92516 -- Hippogryph Harassment
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,>3 -- Small Egg
    .goto 2521,43.86,43.85
    +Use the |T132834:0|t[Herb Baked Egg] macro below to craft every Small Egg beyond the 3 reserved for Restocking the Larders.
    *|cRXP_WARN_Keep at least 3 Small Eggs for a later quest|r
    *|cRXP_WARN_Most buff food grants 5% increased experience from kills for 15 minutes. Try to maintain a high uptime on this buff while leveling.|r
    .collect 2678,20 >>buy 20 |T134059:0|t[Mild Spices].
    .disablecheckbox
    .macro Herb Baked Egg,132834 >>/cast Cooking\n/run local count=C_Item.GetItemCount(6889);if count and count > 3 then C_TradeSkillUI.CraftRecipe(8604, min(5, count - 3)) end
step
    .train 2259,3 -- Alchemy Trained
    .isQuestComplete 97963 -- Camping 101: Alchemy
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.7,43.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyassa Swiftdraught::257019|r
    .turnin 97963 >>Turn in Camping 101: Alchemy
    .target Nyassa Swiftdraught::257019
step
    #label A Little Beauty
    .goto 2521,44.873,44.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taleen Shimmerthread::251991|r
    .target Taleen Shimmerthread::251991
    .turnin 93951 >>Turn in A Little Beauty
step
    .train 3908,3 -- Tailoring Trained
    .isQuestComplete 97973 -- Camping 101: Tailoring
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,44.88,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taleen Shimmerthread::251991|r
    .turnin 97973 >>Turn in Camping 101: Tailoring
    .target Taleen Shimmerthread::251991
step
    .train 2018,3 -- Blacksmithing Trained
    .isQuestComplete 97964 -- Camping 101: Blacksmithing
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,44.89,44.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aedi Thriceforged::251913|r
    .turnin 97964 >>Turn in Camping 101: Blacksmithing
    .target Aedi Thriceforged::251913
step
    .train 2575,3 -- Mining Trained
    .isQuestComplete 97970 -- Camping 101: Mining
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,44.77,44.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messana Crestwind::257022|r
    .turnin 97970 >>Turn in Camping 101: Mining
    .target Messana Crestwind::257022
step
    .isQuestComplete 92515 -- The Problem With Prideclaws
    .isQuestAvailable 92516
    .isQuestAvailable 93319
    .goto 2521,44.686,44.518
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Indari Sunseam::251993|r
    .target Indari Sunseam::251993
    .turnin 92515 >>Turn in The Problem With Prideclaws
step
    .train 2108,3 -- Leatherworking Trained
    .isQuestComplete 97969 -- Camping 101: Leatherworking
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,44.69,44.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Indari Sunseam::251993|r
    .turnin 97969 >>Turn in Camping 101: Leatherworking
    .target Indari Sunseam::251993
step
    .goto 2521,44.465,44.966
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teeri Wellwind::251906|r
    .target Teeri Wellwind::251906
    .turnin 92516 >>Turn in Hippogryph Harassment
    .turnin 93319 >>Turn in Pilfered Windstones
step << Shaman/Druid
    .isQuestTurnedIn 92516
    .isQuestTurnedIn 93319
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tephri Thriceforged::257421|r
    >>|cRXP_BUY_Buy and equip a|r |T135145:0|t[Walking Stick]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corsan Earthrazer::254088|r
    .train 284 >> Train |T132282:0|t[Heroic Strike (Rank 2)]
    .train 1715 >> Train |T132316:0|t[Hamstring]
    .train 7372,1 -- Hamstring (Rank 2) Not Trained
    .train 6343 >> Train |T136105:0|t[Thunder Clap]
    .train 8198,1 -- Thunder Clap (Rank 2) Not Trained
    .skipgossipid 136813
    .target Corsan Earthrazer::254088
    .money <0.05
    .xp <8,1
step
    .isQuestComplete 93318 -- WANTED: Vulgara the Insatiable
    .goto 2521,45.234,45.186
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danarii Bellowveil::252172|r
    .target Danarii Bellowveil::252172
    .turnin 93318 >>Turn in WANTED: Vulgara the Insatiable
step << Druid
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,45.153,44.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naeluna Swiftmend::254081|r.
    .train 339 >>Train |T136100:0|t[Entangling Roots]
    .train 5186 >>Train |T136041:0|t[Healing Touch (Rank 2)]
    .skipgossipid 136805
    .xp <8,1
    .money <0.04
    .target Naeluna Swiftmend::254081
step << Hunter
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elayaa Easewind::254084|r.
    .train 5116 >>Train |T135860:0|t[Concussive Shot]
    .train 3127 >>Train |T132269:0|t[Parry]
    .train 14260 >>Train |T132223:0|t[Raptor Strike (Rank 2)]
    .skipgossipid 136808
    .target Elayaa Easewind::254084
    .money <0.04
    .xp <8,1
step
    .goto 2521,45.667,45.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda::251523|r
    .target Constable Aonda::251523
    .turnin 92517,3 >>Turn in The Criminal Element
    .accept 93036 >>Accept Infiltrating the Cult
-- step << Hunter
--     .subzoneskip 16624,1 -- Shen'dar Village
--     .goto 2521,45.263,44.236
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elayaa Easewind::254084|r.
--     .train 5116 >>Train |T135860:0|t[Concussive Shot]
--     .train 3127 >>Train |T132269:0|t[Parry]
--     .train 14260 >>Train |T132223:0|t[Raptor Strike (Rank 2)]
--     .skipgossipid 136808
--     .target Elayaa Easewind::254084
--     .money <0.06
--     .xp <8,1
-- step << Horde Druid Testing something 
--     .subzoneskip 16624,1 -- Shen'dar Village
--     .goto 2521,45.153,44.225
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naeluna Swiftmend::254081|r.
--     .trainer >>Train your spells
--     .target Naeluna Swiftmend::254081
--     .money <0.04
--     .xp <8,1
step
    .goto 2521,44.831,45.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sania Silverstream::251904|r
    .target Sania Silverstream::251904
    .turnin 93036 >>Turn in Infiltrating the Cult
    .accept 92529 >>Accept Falaath Village
step << Alliance/Horde !Shaman
    .subzoneskip 16624,1 -- Shen'dar Village
    .isOnQuest 94413 << Alliance -- Magical Affront
    .isQuestAvailable 92529 << Horde -- Falaath Village
    .goto 2521,44.71,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veena Vericloud::254358|r
    .vendor 254358 >>|cRXP_BUY_Buy up to three|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_as needed|r.
    >>|cRXP_BUY_Buy up to 10|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r << Druid/Mage/Priest/Warlock/Paladin
    *|cRXP_WARN_When equipping bags, make sure your Reagent Bag is in the dedicated Reagent Bag slot.|r
    *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
    *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
    .target Veena Vericloud::254358
step
    .isOnQuest 92529 -- Falaath Village
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.831,45.515
    .target Sania Silverstream::251904
    .aura 1254832 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sania Silverstream::251904|r
    .skipgossipid 135874
step << Horde Shaman
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aarnor Galestrike::254082|r
    .trainer >>Train your class spells
    .target Aarnor Galestrike::254082
    .money <0.10
    .xp <8,1
step << Shaman/Druid
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tephri Thriceforged::257421|r
    >>|cRXP_BUY_Buy and equip a|r |T135145:0|t[Walking Stick]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Horde Shaman
    .subzoneskip 16624,1 -- Shen'dar Village
    .isQuestAvailable 92529 << Horde -- Falaath Village
    .goto 2521,44.71,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veena Vericloud::254358|r
    .vendor 254358 >>|cRXP_BUY_Buy up to three|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_as needed|r.
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r << Druid/Mage/Priest/Warlock/Paladin
    *|cRXP_WARN_When equipping bags, make sure your Reagent Bag is in the dedicated Reagent Bag slot.|r
    *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
    .target Veena Vericloud::254358
step << Mage
    .goto 2521,45.1,45.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenaan Spellwind::254086|r
    .train 5143 >> Train |T136096:0|t[Arcane Missiles]
    .train 205 >> Train |T135846:0|t[Frostbolt (Rank 2)]
    .train 118 >> Train |T136071:0|t[Polymorph]
    .skipgossipid 136807
    .target Shenaan Spellwind::254086
    .money <0.06
    .xp <8,1
step << Mage
    .goto 2521,45.1,45.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenaan Spellwind::254086|r
    .train 5143 >> Train |T136096:0|t[Arcane Missiles]
    -- .train 205 >> Train |T135846:0|t[Frostbolt (Rank 2)]
    -- .train 118 >> Train |T136071:0|t[Polymorph]
    .skipgossipid 136807
    .target Shenaan Spellwind::254086
    .money <0.02
    .xp <8,1
step << Alliance
    .goto 2521,44.979,46.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rathiril Sunlance::251903|r.
    .turnin 94413 >>Turn in A Magical Affront
    .target Rathiril Sunlance::251903
step
    .train 7620,3 -- Fishing Trained
    .isQuestComplete 97967 -- Camping 101: Fishing
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,45.03,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenn Fairweather::251992|r
    .turnin 97967 >>Turn in Camping 101: Fishing
    .target Fenn Fairweather::251992
step
    #completewith LivingLightningA
    >>Kill |cRXP_ENEMY_Galestrider::251661|r. Loot them for |T133972:0|t[|cRXP_LOOT_Strider Meat|r] and |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Horde
    #completewith LivingLightningA
    >>Kill |cRXP_ENEMY_Prideclaws::251245|r. Loot them for the |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step << Alliance
    #completewith Skypriest Aanders
    >>Kill |cRXP_ENEMY_Prideclaws::251245|r. Loot them for the |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    .isOnQuest 92529 -- Falaath Village
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,45.374,53.512,25,0
    .goto 2521,46.880,56.242
    .cast 1259416 >>Jump off the mountain and use |T132845:0|t[Walk on Air] to fly towards the questgiver.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step
    .goto 2521,45.412,53.485,20,0
    .goto 2521,46.880,56.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Missionary Jasaan::257065|r
    .target Missionary Jasaan::257065
    .turnin 92529 >>Turn in Falaath Village
    .accept 92528 >>Accept Among the Faithful
    .use 2454 << Warrior/Rogue
step
    .isOnQuest 92528 -- Among the Faithful
    .subzoneskip 16636,1 -- Falaath Village
    .goto 2521,46.89,56.24
    .target Sania Silverstream::251904
    .aura 1254832 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sania Silverstream::251904|r
    .skipgossipid 137586 -- I seem to have lost my mark of Akir. Would you please bestow it upon me once more?
step << Horde
    .isOnQuest 92528 -- Among the Faithful
    .goto 2521,48.497,55.827
    .cast 1259686 >>Use |T1029587:0|t[Skysight] for the 10% movement speed buff.
    .cooldown spell,1259686,>0,1
step
    #completewith next
    #label plans
    .goto 2521,48.74,53.89,10,0
    .goto 2521,49.06,53.48,10,0
    .goto 2521,48.76,53.68,10,0
    >>After clicking on the Wardrobe, return to the city.
    .complete 92528,1 --1/1 Learn about the cultists' plans
step
    #completewith plans
    .goto 2521,48.85,53.91
    .gossipoption 136768 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Wardrobe|r on the second floor.
    *|cRXP_WARN_If someone already did, it will finish anyway|r
    .timer 14,RP
    .skipgossipid 136768
step
    #requires plans
    .goto 2521,48.6,54.69,30,0
    .goto 2521,46.44,51.34,30,0
    >>Return to the city and wait for the roleplay.
    .complete 92528,1 --1/1 Learn about the cultists' plans
step
    .isOnQuest 92528 -- Among the Faithful
    .subzoneskip 16624 -- Shen'dar Village
    .goto 2521,46.86,51.54,25,0
    .goto 2521,44.37,46.69
    .cast 1259416 >>Jump off the mountain and use |T132845:0|t[Walk on Air] to fly towards the waypoint location.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Rogue
    .isQuestAvailable 92528 -- Among the Faithful
    .goto 2521,44.37,46.69,30,0
    .goto 2521,43.15,43.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade::254087|r
    .train 5277 >>Train |T136205:0|t[Evasion]
    .train 6760 >>Train |T132292:0|t[Eviscerate (Rank 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.04
    .xp <8,1
step
    .goto 2521,44.37,46.69,30,0 << !Rogue
    .goto 2521,44.49,45.95,30,0 << !Rogue
    .goto 2521,44.93,46.85,30,0 << !Rogue
    .goto 2521,45.21,46.63,30,0 << !Rogue
    .goto 2521,45.04,46.23,15,0 << !Rogue
    .goto 2521,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda::251523|r.
    .turnin 92528,1 >>Turn in Among the Faithful << Mage/Druid/Shaman/Priest/Warlock
    .turnin 92528,2 >>Turn in Among the Faithful << Warrior/Rogue/Paladin
    .turnin 92528,3 >>Turn in Among the Faithful << Hunter
    .accept 92550 >>Accept Havoc in the Highlands
    .accept 93926 >>Accept The Western Watch
    .target Constable Aonda::251523
step
    .goto 2521,45.25,45.18
    *|cRXP_WARN_Equip the|r |T454058:0|t[Stained Ritual Dagger] << Mage/Druid/Shaman/Priest/Warlock
    *|cRXP_WARN_Equip the|r |T7789512:0|t[Curved Scimitar] << Warrior/Rogue/Paladin
    *|cRXP_WARN_Equip the|r |T135493:0|t[Windswept Shortbow] << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danarii Bellowveil::252172|r.
    .accept 92551 >>Accept Stolen Supplies
    .target Danarii Bellowveil::252172
step
	.isOnQuest 93926 -- The Western Watch
    .isQuestNotComplete 93926 -- The Western Watch
    -- .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,45.35,46.79,20,0
    .goto 2521,44.05,49.98,30,0
    .goto 2521,43.02,49.86
    .subzone 17674 >>Die southwest of Shen'dar Village and respawn at the |cRXP_FRIENDLY_Spirit Healer::6491|r
    .macro Sit,134400 >>/sit
step
    #completewith next
    #label Western Watchtower
    .isOnQuest 93926
    .isQuestNotComplete 93926
    .subzoneskip 17674,1 -- West Pylon Watchtower
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Peacekeeper Vaniel::252155|r.
    .complete 93926,1 --1/1 Check in on the Western Watchtower in the Shen'dar Highlands
step
    #completewith Western Watchtower
    #ignorecorpse
    .isOnQuest 93926
    .isQuestNotComplete 93926
    .subzoneskip 17674,1 -- West Pylon Watchtower
    .showwhiledead
    .goto 2521,40.23,63.83
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Spirit Healer::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step
    #requires Western Watchtower
    .goto 2521,42.32,62.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Peacekeeper Vaaniel::252155|r.
    .complete 93926,1 --1/1 Check in on the Western Watchtower in the Shen'dar Highlands
    .target Peacekeeper Vaaniel::252155
step
    .goto 2521,42.33,62.01
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Peacekeeper Vaaniel::252155|r
    .turnin 93926 >>Turn in The Western Watch
    .accept 93927 >>Accept A Last Request
    .target Peacekeeper Vaaniel::252155
step
    .goto 2521,42.38,62.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bloody Note|r.
    *|cRXP_WARN_Keep one bag slot free|r.
    .complete 93927,1 --1/1 Collect and read the note
step
    .goto 2521,40.988,64.088
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Arvensus Shadowsong|r\n from afar.
    *|cRXP_WARN_Keep one bag slot free|r.
    .complete 93927,4 --1/1 Shadowsong Family Signet
step
    .goto 2521,41.12,64.09
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Raani Windgazer|r\n from afar.
    *|cRXP_WARN_Keep one bag slot free|r.
    .complete 93927,3 --1/1 Raani's Favorite Feather
step
    #label Skypriest Aanders
    .goto 2521,40.94,64.15,4,0
    .goto 2521,41.11,64.03,4,0
    .goto 2521,41.09,64.29,4,0
    .goto 2521,40.95,64.25,4,0
    .goto 2521,41.05,64.02,4,0
    .goto 2521,41.08,64.27,4,0
    .goto 2521,40.94,64.2,4,0
    .goto 2521,41.08,64.39
    >>Ascend the spiral staircase, then kill |cRXP_ENEMY_Skypriest Aanders::256966|r atop the tower.
    .complete 93927,2 --1/1 Skypriest Aanders slain
    .mob Skypriest Aanders::256966
step
    .subzoneskip 17674,1 -- West Pylon Watchtower
    .isOnQuest 92551 -- Stolen Supplies
    .isQuestNotComplete 92551 -- Stolen Supplies
    .goto 2521,50.29,56.95
    .cast 1259416 >>Jump off the tower and use |T132845:0|t[Walk on Air] to fly towards the waypoint location.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step  << Alliance
    #completewith NearCommander
    >>Kill |cRXP_ENEMY_Al'Aketh Stormcaller::252068|r. Loot them for the |T133647:0|t[|cRXP_LOOT_Stolen Shen'dar Supplies|r].
    >>|TInterface/cursor/crosshair/interact.blp:16|tClick on the |cRXP_PICK_Supply Caches|r (small bags).
    .complete 92550,1 --6/6 Al'Aketh Stormcaller slain
    .complete 92551,1 --10/10 Stolen Shen'dar Supplies
    .mob +Al'Aketh Stormcaller::252068
step << Alliance
    #completewith NearCommander
    >>Kill |cRXP_ENEMY_Galestrider::251661|r. Loot them for |T133972:0|t[|cRXP_LOOT_Strider Meat|r] and |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Alliance
    #completewith NearCommander
    >>Kill |cRXP_ENEMY_Prideclaws::251245|r. Loot them for the |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step << Alliance
    #label NearCommander
    .isQuestNotComplete 92550 -- Havoc in the Highlands
    .isOnQuest 92550 -- Havoc in the Highlands
    .goto 2521,45.48,58.73,30,0
    .goto 2521,48.36,58.49
    .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step << Alliance
    #completewith CommanderCyclasHeadA
    >>Kill |cRXP_ENEMY_Galestrider::251661|r. Loot them for |T133972:0|t[|cRXP_LOOT_Strider Meat|r] and |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Alliance
    #completewith CommanderCyclasHeadA
    >>Kill |cRXP_ENEMY_Prideclaws::251245|r. Loot them for the |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #completewith CommanderCyclasHeadA
    >>Kill |cRXP_ENEMY_Living Lightning::251662|r.
    .complete 92550,2 --4/4 Living Lightning slain
    .mob Living Lightning::251662
step
    #completewith CommanderCyclasHeadA
    >>Kill |cRXP_ENEMY_Al'Aketh Stormcaller::252068|r. Loot them for the |T133647:0|t[|cRXP_LOOT_Stolen Shen'dar Supplies|r].
    >>|TInterface/cursor/crosshair/interact.blp:16|tClick on the |cRXP_PICK_Supply Caches|r.
    .complete 92550,1 --6/6 Al'Aketh Stormcaller slain
    .complete 92551,1 --10/10 Stolen Shen'dar Supplies
    .mob +Al'Aketh Stormcaller::252068
step
    #label CommanderCyclasHeadA
    .goto 2521,49.779,57.330,15,0
    .goto 2521,49.886,56.504,20,0
    .goto 2521,50.38,56.93
    >>Kill |cRXP_ENEMY_Commander Cyclas::251966|r. Loot him for |T134161:0|t[|cRXP_LOOT_Commander Cyclas's Head|r].
    .complete 92550,3 --1/1 Commander Cyclas's Head
    .mob Commander Cyclas::251966
step
    #completewith LivingLightningA
    #hidewindow
    #loop
    .goto 2521,49.877,56.539,25,0
    .goto 2521,49.629,54.728,25,0
    --.goto 2521,48.823,54.315,15,0
    .goto 2521,49.058,53.545,15,0
    .goto 2521,47.641,54.140,30,0
    .goto 2521,49.765,57.237,25,0
    .goto 2521,49.5,56.22,35,0
    .goto 2521,49.86,56.95,35,0
    .goto 2521,50.4,56.93,25,0
    +1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Living Lightning::251662|r.
    .complete 92550,2 --4/4 Living Lightning slain
    .mob Living Lightning::251662
step
    >>Kill |cRXP_ENEMY_Al'Aketh Stormcaller::252068|r. Loot them for the |T133647:0|t[|cRXP_LOOT_Stolen Shen'dar Supplies|r].
    >>|TInterface/cursor/crosshair/interact.blp:16|tClick on the |cRXP_PICK_Supply Caches|r.
    .complete 92550,1 --6/6 Al'Aketh Stormcaller slain
    .complete 92551,1 --10/10 Stolen Shen'dar Supplies
    .mob +Al'Aketh Stormcaller::252068
step
    #label LivingLightningA
    >>Kill |cRXP_ENEMY_Living Lightning::251662|r.
    .complete 92550,2 --4/4 Living Lightning slain
    .mob Living Lightning::251662
step << Horde
    .isOnQuest 92550 -- Havoc in the Highlands
    .goto 2521,48.497,55.827
    .cast 1259686 >>Use |T1029587:0|t[Skysight] for the 10% movement speed buff.
    .cooldown spell,1259686,>0,1
step
    #completewith RestockingTheLaddersA
    #hidewindow
    #loop
    .goto 2521,47.34,51.69,35,0
    .goto 2521,45.9,53.93,35,0
    .goto 2521,42.65,49.07,35,0
    .goto 2521,41.44,53.14,35,0
    .goto 2521,39.77,56.4,35,0
    .goto 2521,40.9,50.64,35,0
    .goto 2521,37.56,43.24,40,0
    .goto 2521,40.04,41.38,40,0
    -- .goto 2521,45.95,53.76,35,0
    -- .goto 2521,42.885,63.422,35,0
    -- .goto 2521,42.97,49.81,35,0
    -- .goto 2521,44.12,50.46,35,0
    -- .goto 2521,38.283,42.288,35,0
    -- .goto 2521,42.055,40.938,35,0
    +1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Galestrider::251661|r. Loot them for |T133972:0|t[|cRXP_LOOT_Strider Meat|r] and |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    >>Kill |cRXP_ENEMY_Prideclaws::251245|r. Loot them for the |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label RestockingTheLaddersA
    >>Kill |cRXP_ENEMY_Galestrider::251661|r. Loot them for |T133972:0|t[|cRXP_LOOT_Strider Meat|r] and |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    .train 7620,3 -- Fishing Trained
    .isQuestComplete 97967 -- Camping 101: Fishing
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,45.03,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenn Fairweather::251992|r
    .turnin 97967 >>Turn in Camping 101: Fishing
    .target Fenn Fairweather::251992
-- step
--     --might cause issues when really unlucky with the pelt or strider quest
--     .isQuestAvailable 92551 -- Stolen Supplies
--     .isQuestNotComplete 97967 -- Camping 101: Fishing
--     .isQuestNotComplete 97965 -- Camping 101: First Aid
--     .isQuestNotComplete 97968 -- Camping 101: Herbalism
--     .isQuestNotComplete 98286 -- Camping 101: Enchanting
--     .isQuestNotComplete 97971 -- Camping 101: Skinning
--     .isQuestNotComplete 97963 -- Camping 101: Alchemy
--     .isQuestNotComplete 97973 -- Camping 101: Tailoring
--     .isQuestNotComplete 97964 -- Camping 101: Blacksmithing
--     .isQuestNotComplete 97970 -- Camping 101: Mining
--     .isQuestNotComplete 97969 -- Camping 101: Leatherworking
--     .goto 2521,44.111,45.843,40 >>Follow the way up the mountain.
step
    .train 3273,3 -- First Aid Trained
    .isQuestComplete 97965 -- Camping 101: First Aid
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.08,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naleeia Tattermend::257018|r
    .turnin 97965 >>Turn in Camping 101: First Aid
    .target Naleeia Tattermend::257018
step
    .train 7411,3 -- Enchanting Trained
    .isQuestComplete 98286 -- Camping 101: Enchanting
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.25,43.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nasalanna Windsinger::257020|r
    .turnin 98286 >>Turn in Camping 101: Enchanting
    .target Nasalanna Windsinger::257020
step
    .train 8613,3 -- Skinning Trained
    .isQuestComplete 97971 -- Camping 101: Skinning
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.3,43.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mendalass Tattermend::257024|r
    .turnin 97971 >>Turn in Camping 101: Skinning
    .target Mendalass Tattermend::257024
step
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.86,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r and buy |T135237:0|t[Flint and Tinder].
    *|cRXP_WARN_You will use it with Simple Wood to create Basic Campfires for Cooking later.|r
    .collect 4471,1 -- Flint and Tinder
    .itemcount 4471,<1 -- Flint and Tinder
    .vendor 251905 >>Vendor Trash
    *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
    *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
    *|cRXP_WARN_We need them for Cooking later.|r
    .skipgossipid 137550 -- I would like to buy from you.
    .target Zerril Softbreeze::251905
step
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.86,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r and buy 5 |T135435:0|t[Simple Wood].
    .collect 4470,5 -- Simple Wood
    .itemcount 4470,<5 -- Simple Wood
    .vendor 251905 >>Vendor Trash
    *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
    *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
    *|cRXP_WARN_We need them for Cooking later.|r
    .skipgossipid 137550 -- I would like to buy from you.
    .target Zerril Softbreeze::251905
step
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.86,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r and buy 5 |T134059:0|t[Mild Spices].
    .vendor 251905 >>Vendor Trash
    *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
    *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
    *|cRXP_WARN_We need them for Cooking later.|r
    .collect 2678,5 -- Mild Spices
    .itemcount 2678,<5 -- Mild Spices
    .skipgossipid 137550 -- I would like to buy from you.
    .target Zerril Softbreeze::251905
step
    .isQuestComplete 92553 -- Restocking the Larders
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .turnin 92553 >>Turn in Restocking the Larders
    .target Zerril Softbreeze::251905
step
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isQuestComplete 92550 -- Havoc in the Highlands
    .itemcount 6889,1 -- Small Egg
    .train 2550,3 -- Cooking Trained
    .goto 2521,43.86,43.85
    +Use the |T132834:0|t[Herb Baked Egg] macro below to craft as many as possible.
    *|cRXP_WARN_Most buff food grants 5% increased experience from kills for 15 minutes. Try to maintain a high uptime on this buff while leveling.|r
    .macro Herb Baked Egg,132834 >>/cast Cooking\n/run local count=C_Item.GetItemCount(6889);if count and count > 0 then C_TradeSkillUI.CraftRecipe(8604,count) end
step
    .train 2550,3 -- Cooking Trained
    .isQuestComplete 96646 -- Camping 101: Cooking
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .turnin 96646 >>Turn in Camping 101: Cooking
    .target Zerril Softbreeze::251905
step
    .train 2259,3 -- Alchemy Trained
    .isQuestComplete 97963 -- Camping 101: Alchemy
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.7,43.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyassa Swiftdraught::257019|r
    .turnin 97963 >>Turn in Camping 101: Alchemy
    .target Nyassa Swiftdraught::257019
step
    .train 3908,3 -- Tailoring Trained
    .isQuestComplete 97973 -- Camping 101: Tailoring
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,44.88,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taleen Shimmerthread::251991|r
    .turnin 97973 >>Turn in Camping 101: Tailoring
    .target Taleen Shimmerthread::251991
step
    .train 2018,3 -- Blacksmithing Trained
    .isQuestComplete 97964 -- Camping 101: Blacksmithing
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,44.89,44.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aedi Thriceforged::251913|r
    .turnin 97964 >>Turn in Camping 101: Blacksmithing
    .target Aedi Thriceforged::251913
step
    .train 2575,3 -- Mining Trained
    .isQuestComplete 97970 -- Camping 101: Mining
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,44.77,44.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messana Crestwind::257022|r
    .turnin 97970 >>Turn in Camping 101: Mining
    .target Messana Crestwind::257022
step
    .isQuestComplete 92515 -- The Problem With Prideclaws
    .goto 2521,44.686,44.518
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Indari Sunseam::251993|r
    .target Indari Sunseam::251993
    .turnin 92515 >>Turn in The Problem With Prideclaws
step
    .train 2108,3 -- Leatherworking Trained
    .isQuestComplete 97969 -- Camping 101: Leatherworking
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,44.69,44.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Indari Sunseam::251993|r
    .turnin 97969 >>Turn in Camping 101: Leatherworking
    .target Indari Sunseam::251993
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,44.71,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veena Vericloud::254358|r
    .vendor 254358 >>Vendor Trash. |cRXP_BUY_Buy up to three|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_as needed|r.
    -- *|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r << Druid/Mage/Priest/Warlock/Paladin
    *|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] and |T132382:0|t[Sharp Arrows] << Hunter
    *|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows] << Rogue
    *|cRXP_WARN_When equipping bags, make sure your Reagent Bag is in the dedicated Reagent Bag slot.|r
    *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
    *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
    .collect 2512,600 << Hunter --Rough Arrow (600)
    .collect 2515,1000 << Hunter --Sharp Arrow (1000)
    .collect 2515,600 << Rogue --Sharp Arrow (600)
    .target Veena Vericloud::254358
step
    .goto 2521,45.24,45.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danarii Bellowveil::252172|r.
    .turnin 92551 >>Turn in Stolen Supplies
    .target Danarii Bellowveil::252172
step
    .goto 2521,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda::251523|r.
    .turnin 92550,3 >>Turn in Havoc in the Highlands
    .turnin 93927 >>Turn in A Last Request
    .accept 92701 >>Accept To Valanaar << Alliance
    .accept 92579 >>Accept To Valanaar << Horde
    .accept 93948 >>Accept Deliver the Signet
    .target Constable Aonda::251523
--maybe duplicate trainer steps for low silver cases

step
    .isQuestAvailable 93948 -- Deliver the Signet
    .isNotOnQuest 93317 -- Crab Season
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,49.4,58.76
    .cast 1259416 >>Jump off the mountain and use |T132845:0|t[Walk on Air] to fly towards the waypoint location.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step
	.isOnQuest 93948 -- Deliver the Signet
    .isNotOnQuest 93317 -- Crab Season
    .subzoneskip 16638 -- Valanaar
    .goto 2521,49.4,58.76
    .subzone 16626 >>Die at the exact waypoint location
    *|cRXP_WARN_Otherwise, you may be sent to a different graveyard|r
    .macro Sit,134400 >>/sit
step
    #ignorecorpse
    .subzoneskip 16626,1 -- Gustberry Lowlands
	.isOnQuest 93948 -- Deliver the Signet
    .isNotOnQuest 93317 -- Crab Season
    .showwhiledead
    .goto 2521,54.99,68.14
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Spirit Healer::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step << Hunter
    .isNotOnQuest 92679 -- Blood Tithe
    .isQuestAvailable 92679 -- Blood Tithe
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfaan Halfwind::271465|r inside the house.
    >>|cRXP_BUY_Buy and equip a|r |T7810733:0|t[Zephrali Bow]
    .collect 277110,1 --Collect Zephrali Bow
    .vendor 271465 >>Vendor trash and repair if you need
    *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
    *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
    *|cRXP_WARN_We need them for Cooking later.|r
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
    .money <0.1345
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.82
step << Alliance
    .goto 2521,60.6,73.16,10,0
    .goto 2521,60.640,72.664
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyalah Brightfire::257006|r.
    *|cRXP_WARN_If you spot a Tornado, approach it to gain 40% increased movement speed for 5 minutes. The effect ends if you deal damage|r.
    .target Nyalah Brightfire::257006
    .accept 93317 >>Accept Crab Season
    .skipgossipid 96031
    .skipgossipid 98031
step
    .isOnQuest 93948 -- Deliver the Signet
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,1 -- Small Egg
    .itemcount 2678,1 -- Mild Spices
    .goto 2521,60.640,72.664
    +Use the |T132834:0|t[Herb Baked Egg] macro below to craft as many as possible.
    *|cRXP_WARN_Most buff food grants 5% increased experience from kills for 15 minutes. Try to maintain a high uptime on this buff while leveling.|r
    .macro Herb Baked Egg,132834 >>/cast Cooking\n/run local count=C_Item.GetItemCount(6889);if count and count > 0 then C_TradeSkillUI.CraftRecipe(8604,count) end
step
    .subzoneskip 16638,1 -- Valanaar
    .isOnQuest 93948 -- Deliver the Signet
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donaal Downbreeze::255940|r.
    .target Donaal Downbreeze::255940
    .bindlocation 16638
    .home >>Set your Hearthstone to Valanaar
    .goto 2521,62.180,72.616
step
    .isNotOnQuest 92679 -- Blood Tithe
    .subzoneskip 16638,1 -- Valanaar
    .isOnQuest 93948 -- Deliver the Signet
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donaal Downbreeze::255940|r.
    .vendor 255940 >>Vendor trash
    *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
    *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
    *|cRXP_WARN_We need them for Cooking later.|r
    .target Donaal Downbreeze::255940
    .goto 2521,62.180,72.616
    .skipgossipid 137078
    .collect 1179,20 << Mage/Druid/Shaman/Priest/Warlock/Paladin -- Ice Cold Milk
step
    #completewith next
    #label Accept Blood Tithe
    .goto 2521,61.95,72.84,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alvarion Windfield::252448|r on the second floor.
    .target Alvarion Windfield::252448
    .accept 92679 >>Accept Blood Tithe
step
    #completewith Accept Blood Tithe
    .goto 2521,62.096,73.339,20 >>Go upstairs
step
    #requires Accept Blood Tithe
    .goto 2521,62.096,73.339
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alvarion Windfield::252448|r on the second floor.
    .target Alvarion Windfield::252448
    .accept 92679 >>Accept Blood Tithe
-- TODO: Add Walk on Air
step
    .isNotOnQuest 94484
    .subzoneskip 16638,1 -- Valanaar
    .isQuestAvailable 93948 -- Deliver the Signet
    .goto 2521,63.33,73.65,15,0
    .goto 2521,63.973,75.095,25 >>Go over the mountain
step
    .goto 2521,63.973,75.095
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
    .accept 94484 >>Accept Unnerving Silence
    .target Lotheluum Starbreeze::252359
step << Horde
    .goto 2521,65.956,74.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ealaane Nimbuswalker::259012|r.
    .accept 94896 >>Accept Aid For The Refugees
    .accept 94897 >>Accept The Fate of a Loved One
    .target Ealaane Nimbuswalker::259012
step
    #completewith next
    #label DeliverTheSignetA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r.
    .turnin 93948 >>Turn in Deliver the Signet
    .target Talaanis Shadowsong::252476
step
    #completewith DeliverTheSignetA
    .goto 2521,65.93,76.37,5,0
    .goto 2521,66.46,76.8,5,0
    .goto 2521,66.43,76.58,5,0
    .goto 2521,66.43,76.83,5,0
    .goto 2521,66.31,77.08,5,0
    .goto 2521,66,76.57,8,0
    .goto 2521,66.19,76.22,8,0
    .goto 2521,66.44,76.4,5 >>Climb the tower
step
    #requires DeliverTheSignetA
    .goto 2521,66.17,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r.
    .turnin 93948 >>Turn in Deliver the Signet
    .target Talaanis Shadowsong::252476
step
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92701 >>Turn in To Valanaar << Alliance
    .turnin 92579,3 >>Turn in To Valanaar << Horde
    .accept 92699 >>Accept The Supreme Magister << Alliance
    .accept 92700 >>Accept The Grand Skyseer << Horde
    .accept 93949 >>Accept Bugged << Alliance
    .target Valennia Stormfist::252383
-- step << Horde
--     #completewith LeavingValanaarA
--     >>Kill |cRXP_ENEMY_Skyhopper::251314|r.
--     .complete 93949,1 --8/8 Enchanted Skyhopper Exterminated
--     .mob Skyhopper::251314
step << Horde
    .isOnQuest 92700 -- The Grand Skyseer
    .goto 2521,66.488,76.498,6,0
    .goto 2521,63.027,77.807 << Hunter
    .goto 2521,61.491,76.893 << !Hunter
    .cast 1259416 >>Jump off the tower and use |T132845:0|t[Walk on Air] to fly towards the questgiver.
    *|cRXP_WARN_If you time it correctly, you can cancel it midair to land in the building|r
    .cooldown spell,1259416,>0,1
    .usespell 1259416
    .macro Cancel Walk on Air,132845 >>/cancelaura Walk on Air
step << Alliance
    .isOnQuest 92699 -- The Supreme Magister
    .goto 2521,66.47,76.68,10,0
    .goto 2521,66.63,79.94
    .cast 1259416 >>Jump off the mountain and use |T132845:0|t[Walk on Air] to fly towards the questgiver.
    *|cRXP_WARN_If you time it correctly, you can cancel it midair to land in the building|r
    .cooldown spell,1259416,>0,1
    .usespell 1259416
    .macro Cancel Walk on Air,132845 >>/cancelaura Walk on Air
step << Alliance
    #completewith Unwelcome Visitors
    >>Kill |cRXP_ENEMY_Skyhopper::251314|r.
    .complete 93949,1 --8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance
    .goto 2521,66.63,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale::252475|r.
    .turnin 92699 >>Turn in The Supreme Magister
    .target Elaadrin Evengale::252475
step << Alliance
    .goto 2521,66.26,79.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dondallion Whisperwind::253204|r.
    .accept 92727 >>Accept The Missing Scholar
    .target Dondallion Whisperwind::253204
step << Alliance
    #label Unwelcome Visitors
    .goto 2521,66.35,79.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iaadaria Bitterwind::253004|r.
    .accept 92741 >>Accept Unwelcome Visitors
    .target Iaadaria Bitterwind::253004
step << Alliance
    .isOnQuest 92727 -- The Missing Scholar
    .goto 2521,67.41,80.46
    .subzoneskip 16638,1 -- Valanaar
    .subzone 16626 >>Jump off the cliff
step << Alliance
    #ignorecorpse
    .subzoneskip 16626,1 -- Gustberry Lowlands
    .isOnQuest 92727 -- The Missing Scholar
    .showwhiledead
    .goto 2521,54.99,68.14
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Spirit Healer::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step << Horde Hunter
    .goto 2521,63.027,77.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Antelariaa Cloudgaze::252390|r.
    >>|cRXP_BUY_Buy|r 600 |T132382:0|t[Rough Arrows]
    .collect 2512,600 << Hunter --Rough Arrow (600)
    .target Antelariaa Cloudgaze::252390
step << Horde
    .goto 2521,61.491,76.893,15,0
    .goto 2521,59.349,77.930,35,0
    .goto 2521,59.154,79.783
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ayessa Dawnsinger::251968|r.
    .turnin 92700 >>Turn in The Grand Skyseer
    .accept 92708 >>Accept A Grand Adventure
    .timer 75,Roleplay Duration
    .accept 93735 >>Accept The Broken Construct
    .target Ayessa Dawnsinger::251968
step << Horde
    .isOnQuest 92708 -- A Grand Adventure
    .goto 2521,59.154,79.783
    .cast 1259686 >>Use |T1029587:0|t[Skysight] for the 10% movement speed buff.
    .cooldown spell,1259686,>0,1
-- step << Horde
--     .goto 2521,58.128,78.307
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Endaria Mistgaze::254344|r.
--     .accept 93736 >>Accept Unwelcome Spirits
--     .target Endaria Mistgaze::254344
step << Horde
    .train 2366,3 -- Herbalism Trained
    .isQuestComplete 97968 -- Camping 101: Herbalism
    .goto 2521,57.890,75.514
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syriel Nightrain::254345|r.
    .target Syriel Nightrain::254345
    .turnin 97968 >>Turn in Camping 101: Herbalism
step << Horde
    #label LeavingValanaarA
    .goto 2521,59.064,72.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Riaani Nightwind::256083|r.
    .target Riaani Nightwind::256083
    .turnin 93735 >>Turn in The Broken Construct
--     .accept 93737 >>Accept The Broken Construct
--     .complete 93737,1 --|1/1 Listen to what Riaani Nightwind has to say
-- step << Horde
--     .goto 2521,59.265,79.977
--     >>Wait for the roleplay. -- Probably skipping this quest.
--     .complete 92708,1 --|1/1 Listen to Ayessa
-- step << Horde
--     #label LeavingValanaarA
--     .goto 2521,59.150,79.790
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ayessa Dawnsinger::251968|r.
--     .target Ayessa Dawnsinger::251968
--     .turnin 92708 >>Turn in A Grand Adventure
-- step << Horde
--     --@THIDDI: Not sure if worth it.
--     #completewith next
--     #label BrokenConstructA
--     #hidewindow
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Construct Parts|r |cRXP_WARN_inside the cave on the bottom floor|r.
--     .complete 93737,2 --|1/1 Obtain Crystallized lightning from the Shriekling Cave
-- step << Horde
--     #completewith BrokenConstructA
--     .goto 2521,51.397,68.644,15 >>Enter the cave
-- step << Horde
--     --@THIDDI: Not sure if worth it.
--     #requires BrokenConstructA
--     #loop
--     .goto 2521,51.434,67.603,15,0
--     .goto 2521,51.874,67.221,15,0
--     .goto 2521,52.933,66.084,15,0
--     .goto 2521,53.201,65.424,15,0
--     .goto 2521,52.752,64.732,15,0
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Construct Parts|r |cRXP_WARN_inside the cave on the bottom floor|r.
--     .complete 93737,2 --|1/1 Obtain Crystallized lightning from the Shriekling Cave
step << Alliance
    .goto 2521,53.33,72.15
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bloodstained Satchel|r
    .turnin 92727 >>Turn in The Missing Scholar
    .accept 92849 >>Accept The Missing Scholar
    .target Bloodstained Satchel
step << Alliance
    #label LeavingValanaarA
    .goto 2521,51.11,67.06,30,0
    .goto 2521,51.24,66.63,30,0
    .goto 2521,49.9,66.42,30,0
    .goto 2521,49.75,65.9,30,0
    .goto 2521,50.7,65.36
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_FRIENDLY_Fillion Flamebreeze::253002|r inside the cave.
    *|cRXP_WARN_These birds have a smaller aggro radius than most enemies|r.
    .complete 92849,1 --1/1 Find Fillion Flamebreeze
step << Alliance
    .subzoneskip 16672,1 -- Shriekling Den
    .isOnQuest 92849 -- The Missing Scholar
    .isQuestNotComplete 92849 -- The Missing Scholar
    .goto 2521,50.7,65.36
    .aura 1258429 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_FRIENDLY_Fillion Flamebreeze::253002|r inside the cave.
    *|cRXP_WARN_These birds have a smaller aggro radius than most enemies|r.
    .skipgossipid 136430
    .target Fillion Flamebreeze::253002
step << Alliance
    .goto 2521,50.71,66.38,20,0
    .goto 2521,52.04,66.66,15,0
    .goto 2521,51.44,66.25,15,0
    .goto 2521,51.03,67.15,15,0
    .goto 2521,51.55,69.2,35,0
    .goto 2521,52.08,69.41
    >>Carry |cRXP_FRIENDLY_Fillion Flamebreeze::253281|r to safety. Avoid enemies along the way.
    *|cRXP_WARN_These birds have a smaller aggro radius than most enemies|r.
    .complete 92849,2 --1/1 Carry Fillion Flamebreeze to safety while avoiding enemies
    .skipgossipid 136430
    .mob Shriekling Fledgling::253282
    .target Fillion Flamebreeze::253281
step << Alliance
    .goto 2521,52.064,69.396
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fillion Flamebreeze::253284|r.
    .target Fillion Flamebreeze::253284
    .turnin 92849 >>Turn in The Missing Scholar
    .accept 92850 >>Accept The Missing Scholar
-- step << Alliance
--     #completewith next
--     #label Shriekling Matriarch
--     .goto 2521,51.39,68.2,20,0
--     >>Kill |cRXP_ENEMY_Shriekling Matriarch::253283|r. Loot it for |T6119035:0|t[|cRXP_LOOT_Shriekling Matriarch's Head|r].
--     .complete 92850,1 --1/1 Shriekling Matriarch's Head
--     .mob Shriekling Matriarch::253283
step << Alliance
    -- #completewith Shriekling Matriarch
    .isOnQuest 92850 -- The Missing Scholar 2
    .isQuestNotComplete 92850 -- The Missing Scholar 2
    .goto 2521,52.02,65.51,130 >>Enter the cave
step << Alliance
    .goto 2521,52.49,65.97
    .isOnQuest 92850 -- The Missing Scholar 2
    .isQuestNotComplete 92850 -- The Missing Scholar 2
    .subzoneskip 16672,1 -- Shriekling Den
    .goto 2521,45.73,80.86
    .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step << Alliance
    .goto 2521,52.02,65.51
    >>Kill |cRXP_ENEMY_Shriekling Matriarch::253283|r. Loot it for |T6119035:0|t[|cRXP_LOOT_Shriekling Matriarch's Head|r].
    .complete 92850,1 --1/1 Shriekling Matriarch's Head
    .mob Shriekling Matriarch::253283
step << Alliance
    .subzoneskip 16672,1 -- Shriekling Den
    .goto 2521,52.37,66.5,15,0
    .goto 2521,51.75,66.33,15,0
    .goto 2521,51.05,66.66,15,0
    .goto 2521,51.16,67.53,15,0
    .goto 2521,51.5,69.11,25 >>Leave the Cave
step << Alliance
    #completewith FindAameliaWindfieldA
    >>Kill |cRXP_ENEMY_Windsong Crawlers::254588|r. Loot them for |T133972:0|t[|cRXP_LOOT_Windsong Crawler Meat|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
    .skipgossipid 98031
    .skipgossipid 96031
-- step << Horde
--     #completewith next
--     #label BrokenConstructB
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
--     *|cRXP_WARN_She may be moving between locations during a roleplay sequence. Wait at the waypoint location.|r
--     .complete 92679,1 --1/1 Find Aamelia Windfield
--     .target Aamelia Windfield::252800
-- step << Horde
--     #completewith BrokenConstructB
--     .goto 2521,51.397,68.644,15 >>Leave the cave
step
    #requires BrokenConstructB << Horde
    #label FindAameliaWindfieldA
    .goto 2521,46.71,81.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    *|cRXP_WARN_She may be moving between locations during a roleplay sequence. Wait at the waypoint location.|r
    .complete 92679,1 --1/1 Find Aamelia Windfield
    .target Aamelia Windfield::252800
step
    #loop
    .goto 2521,46.71,81.94,10,0
    .goto 2521,47.511,78.490,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    *|cRXP_WARN_She may be moving between locations during a roleplay sequence. Wait at the waypoint location.|r
    .turnin 92679 >>Turn in Blood Tithe
    .accept 92682 >>Accept Make Yourself Useful
    .accept 92684 >>Accept Ornery Ornery Galestriders
    .accept 92683 >>Accept Flutterfly Dust
    .target Aamelia Windfield::252800
-- step
--     #completewith RipBanditsA
--     >>Spam use the |T537768:0|t[Flutterfly Swatter] on the |cRXP_ENEMY_Flutterflies::251622|r
--     >>|TInterface/cursor/crosshair/interact.blp:16|tClick on the |cRXP_PICK_Flutterfly Dust|r.
--     *|cRXP_WARN_If a Flutterfly doesn't fly away, use the swatter on it again|r
--     .complete 92683,1 --5/5 Flutterfly Dust
--     .mob Flutterfly::251622
--     .use 253666
-- step
--     #completewith RipBanditsA
--     >>Kill |cRXP_ENEMY_Ornery Galestrider::251707|r. Loot them for |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r].
--     .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
--     .mob Ornery Galestrider::251707

step << Alliance
    .isOnQuest 92682 -- Make Yourself Useful
    .isQuestNotComplete 92682 -- Make Yourself Useful
    .subzoneskip 16663,1 -- Windfield Orchard
    .goto 2521,45.73,80.86
    .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step
    -- #label RipBanditsA
    #loop
    .goto 2521,46.164,78.043,30,0
    .goto 2521,48.920,84.441,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_LOOT_Ripe Stormapples|r
    >>Kill |cRXP_ENEMY_Hungry Bandits::252802|r |cRXP_WARN_(stealthed)|r.
    *Hunter tips: Spam tab to target them early, use Hunter's Mark on them so you can run away and hit them from farther away. << Hunter
    .complete 92682,1 --10/10 Ripe Stormapple
    .complete 92682,2 --5/5 Hungry Bandit slain
    .mob +Hungry Bandit::252802
step << Horde
    .isOnQuest 92684 -- Ornery Ornery Galestriders
    .goto 2521,48.416,80.537
    .cast 1259686 >>Use |T1029587:0|t[Skysight] for the 10% movement speed buff.
    .cooldown spell,1259686,>0,1
step
    #completewith WhatIsMyPurposeA
    >>Kill |cRXP_ENEMY_Ornery Galestrider::251707|r. Loot them for |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step
    #completewith WhatIsMyPurposeA
    >>Spam use the |T537768:0|t[Flutterfly Swatter] on the |cRXP_ENEMY_Flutterflies::251622|r
    >>|TInterface/cursor/crosshair/interact.blp:16|tClick on the |cRXP_PICK_Flutterfly Dust|r.
    *|cRXP_WARN_If a Flutterfly doesn't fly away, use the swatter on it again|r <<!Mage
    *|cRXP_WARN_You can repeatedly cast|r |T136071:0|t[Polymorph] |cRXP_WARN_on the same Flutterfly and use the swatter to collect multiple piles of dust from it.|r << Mage
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666
step
    #label WhatIsMyPurposeA
    #loop
    .goto 2521,49.085,78.358,12,0
    .goto 2521,48.621,78.385,12,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfunctioning Cyclone Construct::250929|r.
    .accept 92698 >>Accept What Is My Purpose?
    .target Malfunctioning Cyclone Construct::250929
step << Horde Shaman
    #completewith ShamanLevel10
    #hidewindow
    #loop
    .goto 2521,50.017,77.659,40,0
    .goto 2521,51.3,80.59,40,0
    .goto 2521,50.868,83.289,40,0
    +1
step << Horde Shaman
    #completewith next
    >>Kill |cRXP_ENEMY_Ornery Galestrider::251707|r. Loot them for |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step << Horde Shaman
    #completewith ShamanLevel10
    #label ShamanFluterflyDustA
    >>Spam use the |T537768:0|t[Flutterfly Swatter] on the |cRXP_ENEMY_Flutterflies::251622|r
    >>|TInterface/cursor/crosshair/interact.blp:16|tClick on the |cRXP_PICK_Flutterfly Dust|r.
    *|cRXP_WARN_If a Flutterfly doesn't fly away, use the swatter on it again|r
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666
step << Horde Shaman
    #requires ShamanFluterflyDustA
    #completewith ShamanLevel10
    >>Kill |cRXP_ENEMY_Ornery Galestrider::251707|r. Loot them for |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step << Horde Shaman
    #label ShamanLevel10
    .xp 10 >>1
step << Horde Shaman
    #completewith next
    .hs >>Hearth to Valanaar
step << Horde Shaman
    .goto 2521,58.313,78.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sessaria Skystride::252382|r.
    .accept 97243 >>Accept Call of Fire
    .target Sessaria Skystride::252382
step << Horde Shaman
    .goto 2521,58.313,78.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sessaria Skystride::252382|r.
    .trainer >>Train your class spells
    .target Sessaria Skystride::252382
    .money <0.12
    .xp <10,1
step << Horde Shaman
    #completewith CallOfFireA
    >>Spam use the |T537768:0|t[Flutterfly Swatter] on the |cRXP_ENEMY_Flutterflies::251622|r
    >>|TInterface/cursor/crosshair/interact.blp:16|tClick on the |cRXP_PICK_Flutterfly Dust|r.
    *|cRXP_WARN_If a Flutterfly doesn't fly away, use the swatter on it again|r
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666
step << Horde Shaman
    #completewith CallOfFireA
    >>Kill |cRXP_ENEMY_Ornery Galestrider::251707|r. Loot them for |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step << Horde Shaman
    #label CallOfFireA
    .goto 2521,54.402,77.329,30,0
    .goto 2521,51.240,86.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olariaan Swiftburn::268592|r.
    .turnin 97243 >>Turn in Call of Fire
    .accept 97244 >>Accept Call of Fire
    .target Olariaan Swiftburn::268592
-- step << Shaman
--     .isOnQuest 97244
--     .isQuestNotComplete 97244
--     .goto 2521,50.8,89.6
-- -- #ignorecorpse
--     .deathskip >>|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r Jump down to die and respawn at the |cRXP_FRIENDLY_Spirit Healer::6491|r.
--     .skipgossipid 96031
--     .skipgossipid 98031
--     .target Spirit Healer::6491
step << Horde Shaman
    .goto 2521,64.380,63.586
    >>Kill |cRXP_ENEMY_Skypriest Faladiel::268602|r. Loot him for |T839910:0|t[|cRXP_LOOT_Faladiel's Heart|r].
    .complete 97244,1 --|1/1 Faladiel's Heart
    .mob Skypriest Faladiel::268602
-- step << Shaman
--     .isOnQuest 97244
--     .goto 2521,62.384,64.393
-- -- #ignorecorpse
--     .deathskip >>|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r Jump down to die and respawn at the |cRXP_FRIENDLY_Spirit Healer::6491|r.
--     .skipgossipid 96031
--     .skipgossipid 98031
--     .target Spirit Healer::6491
step << Horde Shaman
    #completewith CallOfFireB
    >>Spam use the |T537768:0|t[Flutterfly Swatter] on the |cRXP_ENEMY_Flutterflies::251622|r
    >>|TInterface/cursor/crosshair/interact.blp:16|tClick on the |cRXP_PICK_Flutterfly Dust|r.
    *|cRXP_WARN_If a Flutterfly doesn't fly away, use the swatter on it again|r
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666
step << Horde Shaman
    #completewith CallOfFireB
    >>Kill |cRXP_ENEMY_Ornery Galestrider::251707|r. Loot them for |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step << Horde Shaman
    #label CallOfFireB
    .goto 2521,51.241,86.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olariaan Swiftburn::268592|r.
    .target Olariaan Swiftburn::268592
    .turnin 97244 >>Turn in Call of Fire
    .accept 97245 >>Accept Call of Fire
step
    #completewith GalestriderTenderloinA
    #hidewindow
    #loop
    .goto 2521,50.017,77.659,40,0
    .goto 2521,51.3,80.59,40,0
    .goto 2521,50.868,83.289,40,0
    .goto 2521,50.42,83.74,40,0
    .goto 2521,49.24,81.79,40,0
    +1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Ornery Galestrider::251707|r. Loot them for |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step
    >>Spam use the |T537768:0|t[Flutterfly Swatter] on the |cRXP_ENEMY_Flutterflies::251622|r
    >>|TInterface/cursor/crosshair/interact.blp:16|tClick on the |cRXP_PICK_Flutterfly Dust|r.
    *|cRXP_WARN_If a Flutterfly doesn't fly away, use the swatter on it again|r
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666
step
    #label GalestriderTenderloinA
    >>Kill |cRXP_ENEMY_Ornery Galestrider::251707|r. Loot them for |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step
    #loop
    .goto 2521,46.71,81.94,40,0
    .goto 2521,47.511,78.490,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    *|cRXP_WARN_She may be moving between locations during a roleplay sequence.|r
    *|cRXP_WARN_Look for her from a distance or follow her dialogue; the arrow marks only an approximate location|r.
    .turnin 92682 >>Turn in Make Yourself Useful
    .turnin 92684,3 >>Turn in Ornery Ornery Galestriders
    .turnin 92698 >>Turn in What Is My Purpose?
    .turnin 92683 >>Turn in Flutterfly Dust
    .accept 92685 >>Accept The Hills Have Eyes << Alliance/Shaman
    .target Aamelia Windfield::252800
step << Alliance
    .isOnQuest 92685 -- Blood-Stained Bandit Mask
    .isQuestNotComplete 92685 -- Blood-Stained Bandit Mask
    .subzoneskip 16663,1 -- Windfield Orchard
    .goto 2521,45.73,80.86
    .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step << Alliance/Shaman
    #completewith next
    #label Bandit Highwaymen
    *|cRXP_WARN_Equip the|r |T7791298:0|t[Flutterfly Swatter] << Rogue
    >>Kill |cRXP_ENEMY_Bandit Highwaymen::252820|r. Loot them for the |T133693:0|t[|cRXP_LOOT_Blood-Stained Bandit Masks|r].
    *|cRXP_WARN_Watch for stealthed enemies in the apple orchard|r.
    .complete 92685,1 --7/7 Blood-Stained Bandit Mask
    .mob Bandit Highwaymen::252820
step << Alliance/Shaman
    #completewith Bandit Highwaymen
    .goto 2521,44.81,74.4,30 >>Make your way up the mountain
step << Alliance/Shaman
    #requires Bandit Highwaymen
    #loop
    .goto 2521,45.615,72.361,35,0
    .goto 2521,43.551,74.999,35,0
    -- .goto 2521,45.760,78.419,35,0
    >>Kill |cRXP_ENEMY_Bandit Highwaymen::252820|r. Loot them for the |T133693:0|t[|cRXP_LOOT_Blood-Stained Bandit Masks|r].
    .complete 92685,1 --7/7 Blood-Stained Bandit Mask
    .mob Bandit Highwaymen::252820
-- step << Horde
--     #requires Bandit Highwaymen
--     #completewith BrokenConstructC
--     #hidewindow
--     #loop
--     .goto 2521,45.615,72.361,35,0
--     .goto 2521,43.551,74.999,35,0
--     .goto 2521,45.760,78.419,35,0
--     +1
-- step << Horde
--     --@THIDDI: Not sure if worth it.
--     #requires Bandit Highwaymen
--     #completewith next
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Construct Parts|r.
--     .complete 93737,4 --|1/1 Obtain Air Construct Core from the Bandit Camp
-- step << Horde
--     #requires Bandit Highwaymen
--     >>Kill |cRXP_ENEMY_Bandit Highwaymen::252820|r. Loot them for the |T133693:0|t[|cRXP_LOOT_Blood-Stained Bandit Masks|r].
--     .complete 92685,1 --7/7 Blood-Stained Bandit Mask
--     .mob Bandit Highwaymen::252820
-- step << Horde
--     --@THIDDI: Not sure if worth it.
--     #label BrokenConstructC
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Construct Parts|r.
--     .complete 93737,4 --|1/1 Obtain Air Construct Core from the Bandit Camp
step << Horde Shaman
    .goto 2521,42.393,68.887
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Kuramaa's Stump|r.
    >>Kill |cRXP_ENEMY_Kuramaa::268605|r. Loot it for |T3549050:0|t[|cRXP_LOOT_Kuramaa's Mask|r].
    *|cRXP_WARN_He knocks you back and receives additional fire damage.|r
    .complete 97245,1 --|1/1 Kuramaa's Mask
    .mob Kuramaa::268605
    .usespell 8024
step << Alliance
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    *|cRXP_WARN_She may be moving between locations during a roleplay sequence. Check both spots|r.
    .turnin 92685 >>Turn in The Hills Have Eyes
    .accept 92693 >>Accept Standing Our Ground
    .target Aamelia Windfield::252800
step << Alliance
    .isOnQuest 92685 -- The Hills Have Eyes
    -- .subzoneskip 16626,1 -- Gustberry Lowlands
    .goto 2521,43.84,75.53,30,0
    .goto 2521,44.06,76.19,15,0
    .goto 2521,47.511,78.490
    .cast 1259416 >>Jump off the mountain and use |T132845:0|t[Walk on Air] |cRXP_WARN_in midair|r to fly towards the waypoint location.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance/Shaman
    #loop
    .goto 2521,47.511,78.490,30,0
    .goto 2521,46.71,81.94,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    *|cRXP_WARN_She may be moving between locations during a roleplay sequence. Check both spots|r.
    *You can jump of the mountain and use |T132845:0|t[Walk on Air] |cRXP_WARN_in midair|r to fly towards the waypoint location.
    .turnin 92685 >>Turn in The Hills Have Eyes
    .accept 92693 >>Accept Standing Our Ground
    .target Aamelia Windfield::252800
step << Alliance/Shaman
    .goto 2521,46.71,81.94
    >>Return to |cRXP_FRIENDLY_Aamelia Windfield's::252800|r main location and talk to her.
    .complete 92693,1 --1/1 Speak with Aamelia Windfield
    .timer 75,Roleplay Duration
    .target Aamelia Windfield::252800
    .skipgossipid 136302
step << Alliance/Shaman
    .goto 2521,47.51,78.44
    >>Follow |cRXP_FRIENDLY_Aamelia Windfield::252800|r. Wait for the roleplay.
    *When Aamelia stops, place a Campfire if you have one and none is nearby. Start cooking for skillups.
    .complete 92693,2 --1/1 Follow Aamelia and make your final stand
    .use 279981
step << Alliance/Shaman
    .goto 2521,47.51,78.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    .turnin 92693 >>Turn in Standing Our Ground
    .accept 92703 >>Accept Deliver the News
    .target Aamelia Windfield::252800
step << Horde
    .isOnQuest 92703 -- Deliver the News
    .goto 2521,48.445,80.591
    .cast 1259686 >>Use |T1029587:0|t[Skysight] for the 10% movement speed buff.
    .cooldown spell,1259686,>0,1
step << Alliance/!Shaman
    .isQuestAvailable 92703 -- Deliver the News
    .subzoneskip 16638 -- Valanaar
    .hs >>Hearth to Valanaar
step << Alliance/!Shaman
    .isQuestAvailable 92703 -- Deliver the News
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donaal Downbreeze::255940|r.
    .vendor 255940 >>Vendor trash
    .collect 1179,20 >>Buy |T132815:0|t[Ice Cold Milk] << Mage/Druid/Priest/Warlock/Paladin
    *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
    *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
    *|cRXP_WARN_We need them for Cooking later.|r
    .target Donaal Downbreeze::255940
    .goto 2521,62.180,72.616
    .skipgossipid 137078
step << Horde Shaman
    .goto 2521,51.240,86.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olariaan Swiftburn::268592|r.
    .target Olariaan Swiftburn::268592
    .turnin 97245 >>Turn in Call of Fire
    .accept 97257 >>Accept Call of Fire
    .timer 35,Roleplay Duration
step << Horde Shaman
    .goto 2521,51.265,85.927
    >>Wait for the roleplay. Use the |T135432:0|t[Torch of Eternal Flame] on the burning |cRXP_PICK_Brazier of Offering|r.
    .complete 97257,1 --|1/1 Complete the Ritual with Olariaan
    .use 277329
step << Horde Shaman
    .goto 2521,52.400,81.309,25,0
    .goto 2521,54.907,76.598,15,0
    .goto 2521,58.312,78.827
    >>You have roughly 5 minutes to run back.
    .complete 97257,2 --|1/1 Light the Brazier of Eternal Flame
    .skipgossipid 140778
step << Horde Shaman
    .goto 2521,58.315,78.512
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sessaria Skystride::252382|r.
    .target Sessaria Skystride::252382
    .turnin 97257 >>Turn in Call of Fire
-- step << Horde Shaman
--     #completewith next
--     >>Kill |cRXP_ENEMY_Skyhopper::251314|r.
--     *|cRXP_WARN_This quest is optional. You can skip it if there are too many other players doing it at the same time.|r
--     .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
--     .mob Skyhopper::251314
step << Horde Shaman
    .isQuestAvailable 92703 -- Deliver the News
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donaal Downbreeze::255940|r.
    .vendor 255940 >>Vendor trash
    *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
    *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
    *|cRXP_WARN_We need them for Cooking later.|r
    .target Donaal Downbreeze::255940
    .goto 2521,62.180,72.616
    .skipgossipid 137078
step << Hunter
    .subzoneskip 16638,1 -- Valanaar
    .isQuestAvailable 92703 -- Deliver the News
    .goto 2521,62.180,72.616
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donaal Downbreeze::255940|r.
    >>|cRXP_BUY_Buy|r |T134534:0|t[Forest Mushroom Cap] |cRXP_BUY_from him|r. |cRXP_BUY_You will use this to feed your pet later|r
    .collect 4604,5 -- Forest Mushroom
    .target Donaal Downbreeze::255940
    .goto 2521,62.180,72.616
step
    .isQuestComplete 92703 -- Deliver the News
    .goto 2521,61.94,72.8,10,0
    .goto 2521,62.05,73.09,8,0
    .goto 2521,62.11,73.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alvarion Windfield::252448|r on the second floor.
    .turnin 92703,1 >>Turn in Deliver the News << Warrior/Shaman/Paladin
    .turnin 92703,2 >>Turn in Deliver the News << Druid/Priest
    .turnin 92703,3 >>Turn in Deliver the News << Rogue
    .turnin 92703 >>Turn in Deliver the News << Hunter/Mage/Warlock
    .target Alvarion Windfield::252448
step
    #completewith next
    *|cRXP_WARN_Equip the|r |T134435:0|t[Planting Shovel] << Warrior/Shaman/Paladin
    *|cRXP_WARN_Equip the|r |T133057:0|t[Roofing Hammer] << Druid/Priest
    *|cRXP_WARN_Equip the|r |T134520:0|t[Trusty Wrench] << Rogue
step << Alliance
    #completewith Turn in The Missing Scholar
    >>Kill |cRXP_ENEMY_Skyhopper::251314|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Mage
    .goto 2521,62.887,77.324
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belann Windwood::256507|r.
    .target Belann Windwood::256507
    .accept 93791 >>Accept Speak with Belann
    .turnin 93791 >>Turn in Speak with Belann
    .accept 93797 >>Accept Boughs in the Wind
step << Warrior
    .goto 2521,59.889,72.869
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .target Seena Skybreaker::252377
    .accept 94003 >>Accept The Skybreaker Bulwark
step << Warrior
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .train 6546 >>Train |T132155:0|t[Rend (Rank 2)]
    .train 2687 >>Train |T132277:0|t[Bloodrage]
    .skipgossipid 136813
    .target Seena Skybreaker::252377
    .money <0.12
    .xp <10,1
-- step << Alliance Druid
--     .isQuestAvailable 92850 -- The Missing Scholar
--     #completewith next
--     .goto 2521,63.33,73.65,15,0
--     .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
--     .cooldown spell,1259705,>0,1
--     .usespell 1259705
-- step << Alliance Druid
--     .subzoneskip 16638,1 -- Valanaar
--     .isQuestAvailable 92850 -- The Missing Scholar
--     #completewith next
--     .goto 2521,63.33,73.65,15,0
--     .goto 2521,63.973,75.095,25 >>Go over the mountain
--     .cooldown spell,1259705,<0,1
step << Druid
    .subzoneskip 16638,1 -- Valanaar
    .isNotOnQuest 94006 -- The Great Ursera Spirit
    .isQuestAvailable 94006 -- The Great Ursera Spirit
    #completewith next
    .goto 2521,63.33,73.65,15,0
    .goto 2521,63.973,75.095,25 >>Go over the mountain
step << Druid
    .goto 2521,63.983,75.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
    .accept 94006 >>Accept The Great Ursera Spirit
    .target Lotheluum Starbreeze::252359
step << Druid
    .goto 2521,63.983,75.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
    .train 16689 >>Train |T136063:0|t[Nature's Grasp]
    -- .train 99 >>Train |TInterface/Icons/Ability_Druid_DemoralizingRoar:0|t[Demoralizing Roar]
    .train 1058 >>Train |T136081:0|t[Rejuvenation (Rank 2)]
    .train 5232 >>Train |T136078:0|t[Mark of the Wild (Rank 2)]
    .train 8924 >>Train |T136096:0|t[Moonfire (Rank 2)]
    .skipgossipid 140781
    .target Lotheluum Starbreeze::252359
    .money <0.12
    .xp <10,1
step << Rogue
    .goto 2521,59.9,72.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eltheen Nightbreeze::252379|r.
    .train 674 >>Train |T132147:0|t[Dual Wield]
    .train 6770 >>Train |T132310:0|t[Sap]
    .train 2070,1 -- Sap (Rank 2) Not Trained
    .train 5171 >>Train |T132306:0|t[Slice and Dice]
    .train 6774,1 -- Slice and Dice (Rank 2) Not Trained
    .train 2983 >>Train |T132307:0|t[Sprint]
    .train 8696,1 -- Sprint (Rank 2) Not Trained
    .skipgossipid 136810
    .target Eltheen Nightbreeze::252379
    .money <0.09
    .xp <10,1
step << Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .train 13165 >>Train |T136076:0|t[Aspect of the Hawk]
    .train 13549 >>Train |T132204:0|t[Serpent Sting (Rank 2)]
    .skipgossipid 136808
    .target Quel'ana Quickgale::252389
    .money <0.08
    .xp <10,1
step << Hunter
    .goto 2521,59.572,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .accept 94978 >>Accept Taming the Beast
    .target Quel'ana Quickgale::252389
step << Hunter Alliance
    .goto 2521,63.023,77.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Antelariaa Cloudgaze::252390|r.
    >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrow]
    .vendor 252390 >>Vendor trash
    *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
    *|cRXP_WARN_We need them for Cooking later.|r
    .collect 2515,1000 -- Sharp Arrow
    .target Antelariaa Cloudgaze::252390
step << Mage
    .goto 2521,65.91,80.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anathamaas Aetherwind::252373|r
    .train 168 >>Train |T135843:0|t[Frost Armor]
    .train 122 >>Train |T135848:0|t[Frost Nova]
    .train 5504 >>Train |T132794:0|t[Conjure Water]
    .train 587 >>Train |T133952:0|t[Conjure Food]
    .train 5505 >>Train |T132794:0|t[Conjure Water (Rank 2)]
    .skipgossipid 136807
    .money <0.08
    .xp <10,1
    .target Anathamaas Aetherwind::252373
step << Alliance
    #label Turn in The Missing Scholar
    *|cRXP_WARN_Dual Wield the|r |T134520:0|t[Trusty Wrench] |cRXP_WARN_and|r |T7791298:0|t[Flutterfly Swatter] << Rogue
    .goto 2521,66.26,79.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fillion Flamebreeze::253284|r.
    .turnin 92850 >>Turn in The Missing Scholar
    .accept 99260 >>Accept Fillion's Mission
    .target Fillion Flamebreeze::253284
step << Alliance
    .goto 2521,66.627,79.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale::252475|r.
    .target Elaadrin Evengale::252475
    .turnin 99260 >>Turn in Fillion's Mission
    .accept 92840 >>Accept Catching Wind
-- Deathskip past 10; might need later
-- step << Alliance
--     .isOnQuest 92840
--     .isQuestNotComplete 92840
--     .goto 2521,67.41,80.46
-- -- #ignorecorpse
--     .deathskip >>Jump off the cliff
--     *|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r
--     .skipgossipid 96031
--     .skipgossipid 98031
--     -- .subzoneskip 16638,1 -- Valanaar
--     .target Spirit Healer::6491
step << Horde Hunter
    #loop
    .goto 2521,54.460,78.811,48,0
    .goto 2521,51.968,73.084,35,0
    .goto 2521,53.126,73.502,20,0
    .goto 2521,51.268,69.758,35,0
    .use 267272 >>|cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Windsong Crawler::254588|r |cRXP_WARN_at max range|r.
    .complete 94978,1 --Tame a Windsong Crawler
    .mob Windsong Crawler::254588
step << Horde Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .turnin 94978 >>Turn in Taming the Beast
    .accept 94979 >>Accept Taming the Beast
    .target Quel'ana Quickgale::252389
step << Horde Hunter
    #completewith next
    +|cRXP_WARN_Dismiss your |cRXP_ENEMY_Windsong Crawler::254588|r by right clicking its unit frame and clicking dismiss, otherwise you'll be unable to tame an|r |cRXP_ENEMY_Armored Scorpid::3126|r
step << Horde Hunter
    #loop
    .goto 2521,60.905,69.414,35,0
    .goto 2521,58.339,68.476,35,0
    .goto 2521,53.799,72.161,35,0
    .use 267298 >> |cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on an|r |cRXP_ENEMY_Ornery Galestrider::251707|r |cRXP_WARN_at max range|r.
    .complete 94979,1 --Tame an Ornery Galestrider
    .mob Ornery Galestrider::251707
step << Horde Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .turnin 94979 >>Turn in Taming the Beast
    .accept 94013 >>Accept Taming the Beast
    .target Quel'ana Quickgale::252389
step << Horde Hunter
    #loop
    .goto 2521,56.946,67.887,35,0
    .goto 2521,54.080,74.719,35,0
    .goto 2521,52.625,77.864,25,0
    .goto 2521,53.021,81.568,25,0
    .goto 2521,51.647,80.140,25,0
    .goto 2521,48.981,82.669,35,0

    -- .goto 2521,54.23,75,40,0
    -- .goto 2521,53.45,80.93,40,0
    -- .goto 2521,52.56,77.82,40,0
    -- .goto 2521,61.944,68.828,35,0
    -- .goto 2521,59.516,64.846,35,0
    -- .goto 2521,57.041,67.729,35,0
    -- .goto 2521,54.322,75.080,35,0
    -- .goto 2521,51.925,80.458,35,0
    -- .goto 2521,52.920,81.509,35,0
    .use 264163 >> |cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Vuldren::250874|r |cRXP_WARN_at max range|r.
    .complete 94013,1 --Tame a Vuldren
    .mob Vuldren::250874
step << Horde Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .turnin 94013 >>Turn in Taming the Beast
    .accept 94050 >>Accept Training the Beast
    .target Quel'ana Quickgale::252389
step << Horde Hunter
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quel'dora Quickgale::254411|r.
    .turnin 94050 >>Turn in Training the Beast
    .target Quel'dora Quickgale::254411
step << Horde Hunter
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quel'dora Quickgale::254411|r.
    .train 4195 >>Train |T136112:0|t[Great Stamina]
    .train 24547 >>Train |T136094:0|t[Natural Armor]
    .skipgossipid 97876
    .target Quel'dora Quickgale::254411
    .xp <10,1
step << Horde Hunter
    #sticky
    .goto 2521,60.905,69.414,35,0
    .goto 2521,58.339,68.476,35,0
    .goto 2521,53.799,72.161,35,0
    >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Windsong Crawler::254588|r to tame it|r -- .tame 1997
    *|cRXP_WARN_NOTE:|r If all crabs are dead then you can also train a |cRXP_ENEMY_Ornery Galestrider::251707|r until you find a crab.
    .train 2981 >> |cRXP_WARN_Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 2)]
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
	.mob Windsong Crawler::254588
step << Alliance Hunter
    #completewith next
    .goto 2521,51.56,71.28,40,0
    .goto 2521,50.94,69.46,40,0
    .use 267272 >> |cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Windsong Crawler::254588|r |cRXP_WARN_at max range|r.
    .complete 94978,1 --Tame a Windsong Crawler
    .mob Windsong Crawler::254588
step << Alliance !Hunter
    #completewith next
    >>Kill |cRXP_ENEMY_Windsong Crawlers::254588|r. Loot them for |T133972:0|t[|cRXP_LOOT_Windsong Crawler Meat|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
    .skipgossipid 98031
    .skipgossipid 96031
step << Alliance
    #completewith next
    #label Protect the Index
    .goto 2521,50.06,72.96,30,0
    .goto 2521,48.83,73.54,30,0
    .goto 2521,47.16,72.34,30,0
    .goto 2521,46.55,71.7,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystals|r
    .complete 92840,1 --|6/6 Gather Data on Elemental Currents
    .use 254584
    .mob Windshaper Elementalist
    .mob Windshaper Guardian
step << Alliance
    #completewith Protect the Index
    .goto 2521,46.52,70.33,30 >>Go around the Mountain.
    *|cRXP_WARN_Touch a nearby Tornado to gain 40% increased movement speed for 5 minutes. Dealing damage removes the effect|r.
step << Alliance
    #requires Protect the Index
    #loop
    .goto 2521,47.77,70.04,20,0
    .goto 2521,47.32,68.68,30,0
    .goto 2521,48.25,69,20,0
    .goto 2521,48.68,69.06,20,0
    .goto 2521,48.13,70.15,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystals|r
    .complete 92840,1 --|6/6 Gather Data on Elemental Currents
    .use 254584
    .mob Windshaper Elementalist
    .mob Windshaper Guardian
step << Mage
    .goto 2521,48.59,67.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Branch|r.
    .complete 93797,1 --1/1 Wind-Infused Bough
step << Alliance Hunter
    .isOnQuest 94013 -- Taming the Beast
    .isQuestNotComplete 94013 -- Taming the Beast
    .goto 2521,49.47,65.13,40,0
    .goto 2521,50.07,67.39,40,0
    .goto 2521,50.98,69.45,40,0
    .goto 2521,52.05,71.71,40,0
    .goto 2521,51.82,72.95,40,0
    .goto 2521,52.81,75.82,40,0
    .use 267272 >>|cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Windsong Crawler::254588|r |cRXP_WARN_at max range|r.
    .complete 94978,1 --Tame a Windsong Crawler
    .mob Windsong Crawler::254588
step << Alliance Hunter
    .subzone 16626,1
    .isQuestComplete 94013 -- Taming the Beast
    .isQuestComplete 92840 -- Catching Wind
    .subzoneskip 16638 -- Valanaar
    .goto 2521,50.57,68.18,30,0
    .goto 2521,52.73,71.12
    .cast 1259416 >>Jump off the mountain and use |T132845:0|t[Walk on Air] to fly towards the questgiver.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance !Hunter
    .isQuestComplete 92840 -- Catching Wind
    .subzoneskip 16638 -- Valanaar
    .goto 2521,49.46,70.12,30,0
    .goto 2521,65.577,76.650
    .cast 1259416 >>Jump off the mountain and use |T132845:0|t[Walk on Air] to fly towards the questgiver.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
-- Deathskip past 10; might need later
-- step << Alliance --The correct step; the beta issue still needs to be fixed.
--     .subzoneskip 16638 -- Valanaar
--     .isOnQuest 92840
--     .isQuestComplete 92840
--     .goto 2521,48.37,70.01
-- -- #ignorecorpse
--     .deathskip >>Die to the monsters or jump off the cliff
--     *|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r
--     .skipgossipid 96031
--     .skipgossipid 98031
--     .subzoneskip 16638,1 -- Valanaar
--     .target Spirit Healer
step << Alliance
    .train 2366,3 -- Herbalism Trained
    #completewith next
    >>Kill |cRXP_ENEMY_Skyhopper::251314|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance
    .train 2366,3 -- Herbalism Trained
    .isQuestComplete 97968 -- Camping 101: Herbalism
    .goto 2521,57.890,75.514
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Syriel Nightrain::254345|r.
    .turnin 97968 >>Turn in Camping 101: Herbalism
    .target Syriel Nightrain::254345
step << Mage
    #completewith next
    >>Kill |cRXP_ENEMY_Skyhopper::251314|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Mage
    .goto 2521,62.89,77.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belann Windwood::256507|r.
    .turnin 93797 >>Turn in Boughs in the Wind
    .target Belann Windwood::256507
step << Alliance Hunter
    #completewith next
    >>Kill |cRXP_ENEMY_Skyhopper::251314|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .turnin 94978 >>Turn in Taming the Beast
    .accept 94979 >>Accept Taming the Beast
    .target Quel'ana Quickgale::252389
step << Alliance Hunter
    #completewith next
    +|cRXP_WARN_Dismiss your |cRXP_ENEMY_Windsong Crawler::254588|r by right clicking its unit frame and clicking dismiss, otherwise you'll be unable to tame an|r |cRXP_ENEMY_Armored Scorpid::3126|r
step << Alliance Hunter
    #loop
    .goto 2521,60.905,69.414,35,0
    .goto 2521,58.339,68.476,35,0
    .goto 2521,53.799,72.161,35,0
    .use 267298 >> |cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on an|r |cRXP_ENEMY_Ornery Galestrider::251707|r |cRXP_WARN_at max range|r.
    .complete 94979,1 --Tame an Ornery Galestrider
    .mob Ornery Galestrider::251707
step << Alliance Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .turnin 94979 >>Turn in Taming the Beast
    .accept 94013 >>Accept Taming the Beast
    .target Quel'ana Quickgale::252389
step << Alliance Hunter
    #completewith next
    >>Kill |cRXP_ENEMY_Skyhopper::251314|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance Hunter
    #loop
    .goto 2521,54.23,75,40,0
    .goto 2521,53.45,80.93,40,0
    .goto 2521,52.56,77.82,40,0
    .goto 2521,61.944,68.828,35,0
    .goto 2521,59.516,64.846,35,0
    .goto 2521,57.041,67.729,35,0
    .goto 2521,54.322,75.080,35,0
    .goto 2521,51.925,80.458,35,0
    .goto 2521,52.920,81.509,35,0
    .use 264163 >>|cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Vuldren::250874|r |cRXP_WARN_at max range|r.
    .complete 94013,1 --Tame a Vuldren
    .mob Vuldren::250874
    .mob Vuldren Alpha::250874
step << Alliance Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .turnin 94013 >>Turn in Taming the Beast
    .accept 94050 >>Accept Training the Beast
    .target Quel'ana Quickgale::252389
step << Alliance Hunter
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quel'dora Quickgale::254411|r.
    .turnin 94050 >>Turn in Training the Beast
    .target Quel'dora Quickgale::254411
step << Alliance Hunter
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quel'dora Quickgale::254411|r.
    .train 4195 >>Train |T136112:0|t[Great Stamina]
    .train 24547 >>Train |T136094:0|t[Natural Armor]
    .skipgossipid 97876
    .target Quel'dora Quickgale::254411
    .xp <10,1
step << Alliance
    #loop
    .goto 2521,58.85,75.49,30,0
    .goto 2521,59.05,76.35,30,0
    .goto 2521,59.8,75.68,30,0
    .goto 2521,61.4,74.76,40,0
    .goto 2521,62.61,76.14,40,0
    .goto 2521,63.1,77.59,20,0
    .goto 2521,62.67,77.77,15,0
    .goto 2521,63.13,77.32,15,0
    .goto 2521,62.97,76.91,15,0
    .goto 2521,63.8,78.01,30,0
    .goto 2521,63.16,78.97,30,0
    .goto 2521,65.37,78.53,40,0
    >>Kill |cRXP_ENEMY_Skyhopper::251314|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
-- step << Horde
--     #loop
--     .goto 2521,63.1,77.59,20,0
--     .goto 2521,62.67,77.77,15,0
--     .goto 2521,63.13,77.32,15,0
--     .goto 2521,62.97,76.91,15,0
--     .goto 2521,63.8,78.01,30,0
--     .goto 2521,63.16,78.97,30,0
--     .goto 2521,65.37,78.53,40,0
--     .goto 2521,58.85,75.49,30,0
--     .goto 2521,59.05,76.35,30,0
--     .goto 2521,59.8,75.68,30,0
--     .goto 2521,61.4,74.76,40,0
--     .goto 2521,62.61,76.14,40,0
--     >>Kill |cRXP_ENEMY_Skyhopper::251314|r.
--     *|cRXP_WARN_This quest is optional. You can skip it if there are too many other players doing it at the same time.|r
--     .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
--     .mob Skyhopper::251314
step << Alliance
    .goto 2521,66.63,79.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale::252475|r.
    .turnin 92840 >>Turn in Catching Wind
    .accept 92834 >>Accept Avenged Tenfold
    .accept 92860 >>Accept In Service of Zephras
    .target Elaadrin Evengale::252475
step << Alliance
    #completewith next
    #label Service of Zephras
    *|cRXP_WARN_Equip the|r |T7810733:0|t[Bow of Hours] << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92860 >>Turn in In Service of Zephras << Alliance
    .turnin 93949 >>Turn in Bugged
    .accept 93320 >>Accept Tower Defense  << Alliance
    .disablecheckbox
    .target Valennia Stormfist::252383
step << Alliance
    #completewith Service of Zephras
    .goto 2521,65.65,79.27,30,0 << Alliance
    .goto 2521,64.98,77.12,30,0 << Alliance
    .goto 2521,65.93,76.37,8,0
    .goto 2521,66.46,76.8,5,0
    .goto 2521,66.43,76.58,5,0
    .goto 2521,66.43,76.83,5,0
    .goto 2521,66.31,77.08,5,0
    .goto 2521,66,76.57,8,0
    .goto 2521,66.19,76.22,8,0
    .goto 2521,66.44,76.4,5 >>Climb the tower
step << Alliance
    #requires Service of Zephras
    .goto 2521,66.18,76.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92860 >>Turn in In Service of Zephras  << Alliance
    .turnin 93949 >>Turn in Bugged
    .accept 93320 >>Accept Tower Defense << Alliance
    .target Valennia Stormfist::252383
step << Alliance
    .goto 2521,65.956,74.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ealaane Nimbuswalker::259012|r.
    .accept 94896 >>Accept Aid For The Refugees
    .accept 94897 >>Accept The Fate of a Loved One
    .target Ealaane Nimbuswalker::259012
step << Alliance !Druid
    .isOnQuest 93320 -- Tower Defense
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,66.47,76.64,10,0
    .goto 2521,65.36,71.79
    .cast 1259416 >>Jump off the mountain and use |T132845:0|t[Walk on Air] to fly towards the waypoint location.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance
    .goto 2521,65.956,74.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ealaane Nimbuswalker::259012|r.
    .accept 94896 >>Accept Aid For The Refugees
    .accept 94897 >>Accept The Fate of a Loved One
    .target Ealaane Nimbuswalker::259012
step << Alliance
    #completewith next
    >>Kill |cRXP_ENEMY_Al'Aketh Brawler::270201|r.
    *Loot them for |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Healer::254596
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance
    .goto 2521,65.36,71.79,30,0
    .goto 2521,65.76,68.4,30,0
    .goto 2521,69.64,67.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yorana Windyreed::252378|r.
    .turnin 93320 >>Turn in Tower Defense
    .accept 92642 >>Accept Disrupting Logistics
    .accept 92645 >>Accept Breaking the Breaker
    .target Yorana Windyreed::252378
step << Alliance !Druid
    #completewith Commander Belguilos2
    >>Kill |cRXP_ENEMY_Al'Aketh Brawlers::270201|r, |cRXP_ENEMY_Al'Aketh Preachers::253195|r, and |cRXP_ENEMY_Al'Aketh Pillagers::253511|r.
    *Loot them for |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance !Druid
    #completewith Commander Belguilos2
    >>Kill |cRXP_ENEMY_Al'Aketh Healers|r and |cRXP_ENEMY_Al'Aketh Brawlers|r.
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
step << Alliance !Druid
    #label Commander Belguilos2
    .goto 2521,65.71,65.59,30,0
    .goto 2521,65.84,65.02,15,0
    .goto 2521,65.58,65.63
    >>Kill |cRXP_ENEMY_Commander Belguilos::252666|r on the second floor inside the house.
    .complete 92645,1 --1/1 Commander Belguilos slain
    .mob Commander Belguilos::252666
step << Alliance !Druid
    #completewith next
    >>Kill |cRXP_ENEMY_Al'Aketh Brawlers::270201|r, |cRXP_ENEMY_Al'Aketh Preachers::253195|r, and |cRXP_ENEMY_Al'Aketh Pillagers::253511|r.
    *Loot them for |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance !Druid
    #loop
    .goto 2521,65.34,65.79,40,0
    .goto 2521,65.43,64.53,40,0
    .goto 2521,64.46,66.11,40,0
    .goto 2521,64.71,67.65,40,0
    .goto 2521,66.59,67.5,40,0
    >>Kill |cRXP_ENEMY_Al'Aketh Brawler::270201|r and |cRXP_ENEMY_Al'Aketh Healer::254596|r.
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
    .mob +Al'Aketh Preacher::253195
    .mob +Al'Aketh Pillager::253511
step << Alliance Druid
    .isOnQuest 92834 -- Avenged Tenfold
    .subzoneskip 17675,1 -- East Pylon Watchtower
    -- .subzone 16593
    .goto 2521,69.01,65.86,20,0
    .goto 2521,69.84,61.73
    .cast 1259416 >>Jump off the mountain and use |T132845:0|t[Walk on Air] to fly towards the questgiver.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance Druid
    .goto 2521,69.782,61.609
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urs'endris::255853|r.
    .target Urs'endris::255853
    .turnin 94006 >>Turn in The Great Ursera Spirit
    .accept 94638 >>Accept Strength and Mercy
step << Alliance Druid
    #completewith Commander Belguilos Druid
    >>Kill |cRXP_ENEMY_Al'Aketh Brawlers::270201|r, |cRXP_ENEMY_Al'Aketh Preachers::253195|r, and |cRXP_ENEMY_Al'Aketh Pillagers::253511|r.
    *Loot them for |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance Druid
    #completewith Commander Belguilos Druid
    >>Kill |cRXP_ENEMY_Al'Akeths|r.
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
    .mob +Al'Aketh Preacher::253195
    .mob +Al'Aketh Pillager::253511
step << Alliance Druid
    #completewith next
    #label Commander Belguilos Druid
    >>Kill |cRXP_ENEMY_Commander Belguilos::252666|r on the second floor inside the house.
    .complete 92645,1 --1/1 Commander Belguilos slain
    .mob Commander Belguilos::252666
step << Alliance Druid
    #completewith Commander Belguilos Druid
    .goto 2521,67.39,63.3,15 >>Go over the mountain
step << Alliance Druid
    #requires Commander Belguilos Druid
    .goto 2521,65.31,65.33,20,0
    .goto 2521,65.58,65.63
    >>Kill |cRXP_ENEMY_Commander Belguilos::252666|r on the second floor inside the house.
    .complete 92645,1 --1/1 Commander Belguilos slain
    .mob Commander Belguilos::252666
step << Alliance Druid
    #completewith next
    >>Kill |cRXP_ENEMY_Al'Aketh Brawlers::270201|r, |cRXP_ENEMY_Al'Aketh Preachers::253195|r, and |cRXP_ENEMY_Al'Aketh Pillagers::253511|r.
    *Loot them for |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance Druid
    #loop
    .goto 2521,65.34,65.79,40,0
    .goto 2521,65.43,64.53,40,0
    .goto 2521,64.46,66.11,40,0
    .goto 2521,64.71,67.65,40,0
    .goto 2521,66.59,67.5,40,0
    >>Kill |cRXP_ENEMY_Al'Aketh Brawler::270201|r and |cRXP_ENEMY_Al'Aketh Healer::254596|r.
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
    .mob +Al'Aketh Preacher::253195
    .mob +Al'Aketh Pillager::253511
step << Alliance
    .goto 2521,69.61,67.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yorana Windyreed::252378|r.
    .turnin 92645 >>Turn in Breaking the Breaker
    .turnin 92642 >>Turn in Disrupting Logistics
    .accept 92880 >>Accept Return to Valanaar
    .target Yorana Windyreed::252378
step << Alliance
    #completewith next
    #label Return to Valanaar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92880,1 >>Turn in Return to Valanaar << Alliance Warrior/Alliance Paladin
    .turnin 92880,2 >>Turn in Return to Valanaar << Alliance Rogue
    .turnin 92880,3 >>Turn in Return to Valanaar << Alliance Hunter/Alliance Mage/Alliance Druid/Alliance Priest/Alliance Warlock
    .accept 92881 >>Accept The High Elder's Request
    .target Valennia Stormfist::252383
step << Alliance
    #completewith Return to Valanaar
    .goto 2521,65.58,68.58,30,0
    .goto 2521,65.93,76.37,5,0
    .goto 2521,66.46,76.8,5,0
    .goto 2521,66.43,76.58,5,0
    .goto 2521,66.43,76.83,5,0
    .goto 2521,66.31,77.08,5,0
    .goto 2521,66,76.57,8,0
    .goto 2521,66.19,76.22,8,0
    .goto 2521,66.44,76.4,5 >>Go around the mountain then climb the tower
step << Alliance
    #requires Return to Valanaar
    .goto 2521,66.20,76.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92880,1 >>Turn in Return to Valanaar << Alliance Warrior/Alliance Paladin
    .turnin 92880,2 >>Turn in Return to Valanaar << Alliance Rogue
    .turnin 92880,3 >>Turn in Return to Valanaar << Alliance Hunter/Alliance Mage/Alliance Druid/Alliance Priest/Alliance Warlock
    .accept 92881 >>Accept The High Elder's Request
    .target Valennia Stormfist::252383
step << Alliance Paladin/Alliance Priest/Alliance Warlock
    #completewith next
    *|cRXP_WARN_Equip the|r |T7792097:0|t[Honed Greathammer] << Paladin
    *|cRXP_WARN_Equip the|r |T7798447:0|t[Balanced Quarterstaff] << Priest/Warlock
step << Alliance
    .goto 2521,66.17,76.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r.
    .turnin 92881 >>Turn in The High Elder's Request
    .accept 92643 >>Accept The Turncoat
    .target Talaanis::252476
step << Alliance
    .subzoneskip 16638,1 -- Valanaar
    .isQuestAvailable 98512 -- Al'Aketh Assassins
    .isNotOnQuest 98512 -- Al'Aketh Assassins
    .goto 2521,66.47,76.61,8,0
    .goto 2521,66.31,76.18,15,0
    .goto 2521,63.14,76.9
    .cast 1259416 >>Jump off the mountain and use |T132845:0|t[Walk on Air] to fly towards the questgiver.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance
    .subzoneskip 16638,1 -- Valanaar
    .isQuestAvailable 98512 -- Al'Aketh Assassins
    .isNotOnQuest 98512 -- Al'Aketh Assassins
    .goto 2521,63.14,76.9,20,0
    .goto 2521,62.9,77.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belann Windwood::256507|r inside the house.
    .vendor 256507 >>Vendor trash and repair if needed
    *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
    *|cRXP_WARN_We need them for Cooking later.|r
    .target Belann Windwood::256507
    .skipgossipid 137530
step << Alliance
    .subzoneskip 16638,1 -- Valanaar
    .isQuestAvailable 98512 -- Al'Aketh Assassins
    .isNotOnQuest 98512 -- Al'Aketh Assassins
    .goto 2521,63.96,74.15
    .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
    .cooldown spell,1259705,>0,1
    .usespell 1259705
-- Deathskip past 10; might need later
-- step << Alliance
--     .subzoneskip 16638,1 -- Valanaar
--     .isQuestAvailable 98512
--     .isNotOnQuest 98512
--     -- *|cRXP_WARN_Equip the|r |T7792097:0|t[Honed Greathammer] << Alliance Warrior
--     -- *|cRXP_WARN_Equip the|r |T7798447:0|t[Balanced Quarterstaff] << Alliance Hunter/Alliance Mage/Alliance Druid
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daeann Steelwind::252479|r outside the house.
--     .vendor 252479 >>Vendor trash and repair if needed
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *|cRXP_WARN_We need them for Cooking later.|r
--     .target Daeann Steelwind::252479
--     .goto 2521,65.4,80.22
--     .skipgossipid 137530
-- step << Alliance
--     -- .subzoneskip 16638,1 -- Valanaar
--     .isQuestAvailable 98512
--     .isNotOnQuest 98512
--     .goto 2521,66.42,83.48
-- -- #ignorecorpse
--     .deathskip >>Jump off the cliff
--     .skipgossipid 96031
--     .skipgossipid 98031
--     .target Spirit Healer::6491
-- step << Horde
--     #completewith next
--     #label BuggedHordeA
--     #optional
--     .isOnQuest 93949
--     .isQuestComplete 93949
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
--     .turnin 93949 >>Turn in Bugged
--     .target Valennia Stormfist::252383
-- step << Horde
--     #optional
--     #completewith BuggedHordeA
--     .goto 2521,65.93,76.37,8,0
--     .goto 2521,66.46,76.8,5,0
--     .goto 2521,66.43,76.58,5,0
--     .goto 2521,66.43,76.83,5,0
--     .goto 2521,66.31,77.08,5,0
--     .goto 2521,66,76.57,8,0
--     .goto 2521,66.19,76.22,8,0
--     .goto 2521,66.44,76.4,5 >>Climb the tower
-- step << Horde
--     #requires BuggedHordeA
--     #optional
--     .isOnQuest 93949
--     .isQuestComplete 93949
--     .goto 2521,66.18,76.66
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
--     .turnin 93949 >>Turn in Bugged
--     .target Valennia Stormfist::252383
-- step << Horde
--     .abandon 93949 >>Abandon Bugged
step << Horde Druid
    .isOnQuest 94006 -- The Great Ursera Spirit
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,65.424,71.472,35,0
    .goto 2521,65.905,68.024
    .subzone 16626 >>Follow the way out of Valanaar
step << Horde Druid
    .isOnQuest 94006 -- The Great Ursera Spirit
    .goto 2521,69.01,65.86,20,0
    .goto 2521,69.84,61.73
    .cast 1259416 >>Jump off the mountain and use |T132845:0|t[Walk on Air] to fly towards the questgiver.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Horde Druid
    .goto 2521,69.782,61.609
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urs'endris::255853|r.
    .turnin 94006 >>Turn in The Great Ursera Spirit
    .accept 94638 >>Accept Strength and Mercy
    .target Urs'endris::255853
-- step << Horde !Druid
--      -- Not sure yet if I want to do this. This saves "only" ~15 seconds
--     .isQuestAvailable 98512
--     .goto 2521,61.221,78.472
--     .deathskip >>|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r.
-- step << Horde Druid
--     .isOnQuest 94638
--     .goto 2521,62.384,64.393
--     .deathskip >>|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r Die and respawn at the |cRXP_FRIENDLY_Spirit Healer::6491|r.
step << Alliance
    .goto 2521,59.719,67.016,35,0 << Druid --Remove if we add deathskips again
    .goto 2521,56.81,61.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fendaal Windstone::273017|r.
    *|cRXP_WARN_Touch a nearby Tornado to gain 40% increased movement speed for 5 minutes. Dealing damage removes the effect|r.
    .accept 98512 >>Accept Al'Aketh Assassins
    .target Fendaal Windstone::273017
step << Alliance
    #completewith Fendaal Windstone
    >>Kill |cRXP_ENEMY_Al'Aketh Assassin::254626|r.
    .complete 98512,1 --10/10 Al'Aketh Assassin slain
    .mob Al'Aketh Assassin::254626
step << Alliance
    .goto 2521,56.13,60.26
    >>Follow the Arrow
    .complete 92643,1 --1/1 Find the secluded house in Shen'dar Highlands
step << Alliance
    .goto 2521,56.05,58.79
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dead Cultist|r.
    .complete 92643,2 --1/1 Find the Al'Aketh Turncoat
    .target Dead Cultist::253372
step << Alliance
    #label Fendaal Windstone
    .goto 2521,56.043,58.785
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dead Cultist::253372|r.
    .target Dead Cultist::253372
    .turnin 92643 >>Turn in The Turncoat
    .accept 92644 >>Accept Unfortunate News
step << Alliance
    #loop
    .goto 2521,55.27,59.58,35,0
    .goto 2521,54.58,60.52,35,0
    .goto 2521,55.93,60.3,35,0
    .goto 2521,56.04,59.08,35,0
    >>Kill |cRXP_ENEMY_Al'Aketh Assassin::254626|r.
    .complete 98512,1 --10/10 Al'Aketh Assassin slain
    .mob Al'Aketh Assassin::254626
step << Alliance
    .goto 2521,56.80,61.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fendaal Windstone::273017|r.
    .turnin 98512 >>Turn in Al'Aketh Assassins
    .target Fendaal Windstone::273017
step << Druid
    .goto 2521,54.284,65.803
    >>Kill |cRXP_ENEMY_Ur'endra::258443|r.
    .complete 94638,1 --|1/1 Ur'endra slain
    .mob Ur'endra::258443
step << Horde Druid
    .isOnQuest 94638 -- Strength and Mercy
    .goto 2521,56.830,63.121,15,0
    .goto 2521,57.299,63.465,15,0
    .goto 2521,60.250,62.742,20,0
    .goto 2521,69.803,61.660
    .cast 1259416 >>Jump off the |cRXP_WARN_lower (not the one you're on)|r mountain and use |T132845:0|t[Walk on Air] to fly towards the questgiver.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Druid
    .goto 2521,69.803,61.660
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urs'endris::255853|r.
    .target Urs'endris::255853
    .turnin 94638 >>Turn in Strength and Mercy
step << Alliance Druid
    #completewith next
    #label Windsong Crawler Meat Druid
    .goto 2521,59.59,66.7,30,0
    >>Kill |cRXP_ENEMY_Windsong Crawlers::254588|r. Loot them for |T133972:0|t[|cRXP_LOOT_Windsong Crawler Meat|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
step << Alliance Druid
    #completewith Windsong Crawler Meat Druid
    .goto 2521,57.25,60.92,50 >>Go around the mountains
step << Alliance Druid
    #requires Windsong Crawler Meat Druid
    #loop
    .goto 2521,53.56,59.17,35,0
    .goto 2521,52.91,58.56,35,0
    .goto 2521,52.08,59.23,35,0
    .goto 2521,52.49,57.3,35,0
    .goto 2521,53.55,55.55,35,0
    .goto 2521,54.3,57.94,35,0
    >>Kill |cRXP_ENEMY_Windsong Crawlers::254588|r. Loot them for |T133972:0|t[|cRXP_LOOT_Windsong Crawler Meat|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
-- step << Horde Druid
--     #completewith next
--     #label CrawlerMeatDruidA
--     .goto 2521,59.59,66.7,30,0
--     >>Kill |cRXP_ENEMY_Windsong Crawlers::254588|r. Loot them for |T133972:0|t[|cRXP_LOOT_Windsong Crawler Meat|r].
--     .complete 93317,1 --6/6 Windsong Crawler Meat
-- step << Horde Druid
--     #completewith CrawlerMeatDruidA
--     .goto 2521,57.25,60.92,50 >>Go around the mountains
-- step << Horde
--     #requires CrawlerMeatDruidA << Druid
--     #loop
--     .goto 2521,53.56,59.17,35,0
--     .goto 2521,52.91,58.56,35,0
--     .goto 2521,52.08,59.23,35,0
--     .goto 2521,52.49,57.3,35,0
--     .goto 2521,53.55,55.55,35,0
--     .goto 2521,54.3,57.94,35,0
--     >>Kill |cRXP_ENEMY_Windsong Crawlers::254588|r. Loot them for |T133972:0|t[|cRXP_LOOT_Windsong Crawler Meat|r].
--     .complete 93317,1 --6/6 Windsong Crawler Meat
--     .mob Windsong Crawler::254588
step << Alliance
    #loop
    .goto 2521,53.56,59.17,35,0
    .goto 2521,52.91,58.56,35,0
    .goto 2521,52.08,59.23,35,0
    .goto 2521,52.49,57.3,35,0
    .goto 2521,53.55,55.55,35,0
    .goto 2521,54.3,57.94,35,0
    >>Kill |cRXP_ENEMY_Windsong Crawlers::254588|r. Loot them for |T133972:0|t[|cRXP_LOOT_Windsong Crawler Meat|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
step << Horde
    .isQuestAvailable 93159 -- The Strange Hermit
    .goto 2521,52.790,57.628
    .cast 1259686 >>Use |T1029587:0|t[Skysight] for the 10% movement speed buff.
    .cooldown spell,1259686,>0,1
-- step << Horde
--     --@THIDDI: Not sure if worth it.
--     #loop
--     .goto 2521,53.029,51.423,35,0
--     .goto 2521,53.621,50.493,35,0
--     .goto 2521,52.878,49.641,35,0
--     .goto 2521,53.129,47.738,35,0
--     .goto 2521,52.528,45.922,35,0
--     .goto 2521,51.574,46.567,35,0
--     .goto 2521,49.511,45.931,35,0
--     .goto 2521,49.917,44.806,35,0
--     .goto 2521,50.642,44.296,35,0
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Construct Parts|r.
--     .complete 93737,3 --|1/1 Obtain Enchanted Gyrozephyr from Windsong Lake
step << Alliance
    #completewith next
    .isQuestAvailable 93159 -- The Strange Hermit
    .goto 2521,55.89,56.12,40,0
    .goto 2521,57.17,55.26,40,0
    .goto 2521,57.86,54.69,40,0
    .goto 2521,58.61,52.77,30 >>Go past the waterfall and around the mountain.
step << Horde
    .isQuestAvailable 93159 -- The Strange Hermit
    #completewith next
    .goto 2521,59.444,67.060,45,0
    .goto 2521,58.72,52.77,30 >>Go around the mountains and cross the bridge.
step
    .isQuestAvailable 93159 -- The Strange Hermit
    .subzoneskip 16631 -- Shadowgale Forest
    .goto 2521,58.24,51.21,20,0
    .goto 2521,57.77,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Zendraas::272045|r.
    .vendor 272045 >>Vendor trash
    *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
    *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
    .skipgossip 272045,1,1,1,2
    .skipgossipid 141672
    .target Brother Zendraas::272045
    --1: I haven't met too many cultists that haven't immediately tried to kill me. What's your story?
    --1: What trade would that be?
    --1: I'll think about it. (This option returns no gossip ID and unlocks the vendor.)
    --2: Show me what you have available for trade.
step << Warrior
    .goto 2521,56.56,50.36
    >>Kill |cRXP_ENEMY_Zaal Stormshield::257196|r. Loot him for the |T134959:0|t[|cRXP_LOOT_Skybreaker Bulwark|r].
    .complete 94003,1 --|1/1 Skybreaker Bulwark
    .mob Zaal Stormshield::257196
-- step << Alliance
--     .isQuestAvailable 92850
--     .subzoneskip -- Shadowgale Forest (subzone ID missing)
--     .goto 2521,55.12,50.55
--     .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
--     .cooldown spell,1259705,>0,1
--     .usespell 1259705
step
    #completewith Learn
    >>Kill |cRXP_ENEMY_Shadowgale Shrieklings::256092|r.
    *Loot them for |T1508517:0|t[|cRXP_LOOT_Shriekling Talons|r].
    .complete 92741,1 --8/8 Shriekling Talons
    .mob Shadowgale Shriekling::256092
step
    #completewith next
    .goto 2521,58.81,46.74,30,0
    .goto 2521,58.81,43.57,40,>>Cross the bridge.
step
    #label Learn
    .goto 2521,53.95,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strange Hermit::251684|r.
    .accept 93159 >>Accept The Strange Hermit
    .complete 93159,1 --1/1 Learn more about the Strange Hermit
    .turnin 93159 >>Turn in The Strange Hermit
    .accept 93160 >>Accept The Forest's Bounty
    .accept 93172 >>Accept Free the Hollows
    .target Strange Hermit::251684
    .skipgossipid 135787
    .skipgossipid 135786
    .skipgossipid 135785 -- engineering
    .skipgossipid 135784 -- no
step
    .train 4036,3 -- Engineering Trained
    .goto 2521,53.95,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strange Hermit::251684|r.
    .accept 98285 >>Accept Camping 101: Engineering
    .target Strange Hermit::251684
    .skipgossipid 135787
    .skipgossipid 135786
    .skipgossipid 135785 -- engineering
    .skipgossipid 135784 -- no
step
    #completewith Abandoned Belongings1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Seeds|r
    .complete 93160,1 --8/8 Zephyrseed
step << Alliance
    #completewith Abandoned Belongings1
    >>Kill |cRXP_ENEMY_Shadowgale Shrieklings::256092|r.
    *Loot them for |T1508517:0|t[|cRXP_LOOT_Shriekling Talons|r].
    .complete 92741,1 --8/8 Shriekling Talons
    .mob Shadowgale Shriekling::256092
step
    #completewith next
    #hidewindow
    #label Abandoned Belongings1
    .complete 94896,1,1 --8/8 Abandoned Belongings
step
    --@THIDDI: Not sure if worth it (Wind Hollow Essence).
    #completewith Resaan's Heirloom
    -- >>Kill |cRXP_ENEMY_Wind Hollows::251676|r. Loot them for |T2576094:0|t[|cRXP_LOOT_Wind Hollow Essence|r]. << Horde
    >>Kill |cRXP_ENEMY_Wind Hollows::251676|r.
    .complete 93172,1 --10/10 Wind Hollow freed
    -- .complete 93736,1 << Horde --10/10 Wind Hollow Essence
    .mob +Wind Hollow::251676
step
    #completewith Resaan's Heirloom
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crates|r
    .complete 94896,1 --8/8 Abandoned Belongings
step
    #label Resaan's Heirloom
    .goto 2521,57.45,33.8,40,0
    .goto 2521,56.83,33.99,30,0
    .goto 2521,57.25,33.37,25,0
    .goto 2521,57.04,29.36
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Resaan Nimbuswalker|r
    .complete 94897,1 --1/1 Resaan's Heirloom
    .skipgossipid 138670
    .target Resaan Nimbuswalker::259013
step << Alliance
    #completewith Abandoned BelongingsZ
    >>Kill |cRXP_ENEMY_Wind Hollows::251676|r.
    .complete 93172,1 --10/10 Wind Hollow freed
    .mob Wind Hollow::251676
step << Alliance
    #completewith Abandoned BelongingsZ
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crates|r
    .complete 94896,1 --8/8 Abandoned Belongings
step << Alliance
    #label Abandoned BelongingsZ
    .subzoneskip 16833,1 -- Ruins of Ban'aethal
    .goto 2521,56.61,29.26,20,0
    .goto 2521,58.06,28.2,30,0
    .goto 2521,57.91,26.83,30,0
    .goto 2521,58.14,30.47,10,0
    .goto 2521,57.81,31.07,20,0
    .goto 2521,57.55,31.01,20,0
    .goto 2521,57.55,32.06,30,0
    .goto 2521,58.47,32.63,30,0
    .goto 2521,58.33,31.61,30,0
    .goto 2521,58.82,31.1,20,0
    .goto 2521,59.06,31.69,30,0
    .goto 2521,59.15,32.25,30,0
    .goto 2521,59.1,33.38
    .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step
    #completewith Wind Hollow
    #hidewindow
    #loop
    .goto 2521,59.08,34.75,30,0
    .goto 2521,57.26,33.48,30,0
    .goto 2521,59.15,32.25,30,0
    .goto 2521,59.06,31.69,30,0
    .goto 2521,58.82,31.1,20,0
    .goto 2521,58.33,31.61,30,0
    .goto 2521,58.47,32.63,30,0
    .goto 2521,57.55,32.06,30,0
    .goto 2521,57.55,31.01,20,0
    .goto 2521,57.81,31.07,20,0
    .goto 2521,58.14,30.47,20,0
    .goto 2521,57.91,26.83,30,0
    .goto 2521,58.06,28.2,30,0
    .goto 2521,56.61,29.26,20,0
    +1
step
    --@THIDDI: Not sure if worth it (Wind Hollow Essence).
    #completewith next
    -- >>Kill |cRXP_ENEMY_Wind Hollows::251676|r. Loot them for |T2576094:0|t[|cRXP_LOOT_Wind Hollow Essence|r]. << Horde
    >>Kill |cRXP_ENEMY_Wind Hollows::251676|r.
    .complete 93172,1 --10/10 Wind Hollow freed
    -- .complete 93736,1 << Horde--10/10 Wind Hollow Essence
    .mob +Wind Hollow::251676
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crates|r
    .complete 94896,1 --8/8 Abandoned Belongings
step
    --@THIDDI: Not sure if worth it (Wind Hollow Essence).
    #label Wind Hollow
    -- >>Kill |cRXP_ENEMY_Wind Hollows::251676|r. Loot them for |T2576094:0|t[|cRXP_LOOT_Wind Hollow Essence|r]. << Horde
    >>Kill |cRXP_ENEMY_Wind Hollows::251676|r.
    .complete 93172,1 --10/10 Wind Hollow freed
    -- .complete 93736,1 << Horde --10/10 Wind Hollow Essence
    .mob +Wind Hollow::251676
step << Alliance
    #completewith Unnerving Silence
    >>Kill |cRXP_ENEMY_Shadowgale Shrieklings::256092|r.
    *Loot them for |T1508517:0|t[|cRXP_LOOT_Shriekling Talons|r].
    .complete 92741,1 --8/8 Shriekling Talons
    .mob Shadowgale Shriekling::256092
step
    #completewith Unnerving Silence
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Seeds|r |cRXP_WARN_especially around trees|r.
    .complete 93160,1 --8/8 Zephyrseed
step
    .goto 2521,61.76,39.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elegael Thornpaw::257944|r.
    .target Elegael Thornpaw::257944
    .turnin 94484 >>Turn in Unnerving Silence
    .accept 94485 >>Accept Tears of the Lady
    .accept 94486 >>Accept Feathers for Binding << Alliance
    .accept 94487 >>Accept Unwanted and Unworthy
step << Alliance
    #completewith Unnerving Silence
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Tear Moss|r |cRXP_WARN_on trees|r.
    .complete 94485,1 --8/8 Lady's Tear Moss
step << Alliance
    #completewith next
    >>Kill |cRXP_ENEMY_Al'Aketh Footsoldiers::252665|r and |cRXP_ENEMY_Al'Aketh Stormchasers::252664|r.
    *Loot them for |T4622283:0|t[|cRXP_LOOT_Bloody Heirlooms|r] and |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
    .complete 94487,1 --10/10 Bloody Heirloom
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Footsoldier::252665
    .mob Al'Aketh Stormchaser::252664
step << Alliance
    .goto 2521,63.80,36.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vayn Moongaze|r.
    .accept 93165 >>Accept Mercy Falls on Deaf Ears
    .target Vayn Moongaze
step
    #label Unnerving Silence
    #loop
    .goto 2521,63.04,37.12,40,0
    .goto 2521,61.99,35.62,30,0
    .goto 2521,61.97,36.71,30,0
    .goto 2521,62.47,37.3,40,0
    .goto 2521,62.96,39.3,40,0
    .goto 2521,63.33,38.01,35,0
    .goto 2521,64.14,39.18,40,0
    .goto 2521,65.7,36.82,40,0
    .goto 2521,65.63,35.57,40,0
    >>Kill |cRXP_ENEMY_Al'Aketh Footsoldiers|r and |cRXP_ENEMY_Al'Aketh Stormchaser|r.
    *Loot them for |T4622283:0|t[|cRXP_LOOT_Bloody Heirlooms|r], |T133856:0|t[|cRXP_LOOT_Al'Alketh Cultist's Ears|r] and |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r]. << Alliance
    *Loot them for |T4622283:0|t[|cRXP_LOOT_Bloody Heirlooms|r]. << Horde
    .complete 94487,1 --10/10 Bloody Heirloom
    .complete 92834,1 << Alliance --10/10 Al'Aketh Windstone Charm
    .complete 93165,1 << Alliance --10/10 Al'Alketh Cultist's Ear
    .mob Al'Aketh Footsoldier::252665
    .mob Al'Aketh Stormchaser::252664
step
    #hidewindow
    #completewith ToHermit << Alliance
    #completewith ForestHollowsA << Horde
    .goto 2521,62.83,38.25,35,0
    .goto 2521,62.08,36.7,35,0
    .goto 2521,61.17,35.44,35,0
    .goto 2521,60.82,37.23,35,0
    .goto 2521,60.33,37.46,35,0
    .goto 2521,60.9,38.88,35,0
    .goto 2521,59.79,38.95,35,0
    .goto 2521,59.9,40.38,35,0
    .goto 2521,58.53,39.85,35,0
    .goto 2521,57.94,39.99,35,0
    .goto 2521,57.36,40.86,35,0
    .goto 2521,57.24,42.8,35,0
    .goto 2521,55.38,42.17,35,0
    .goto 2521,54.55,42.17,35,0
    .goto 2521,55.59,39.23,35,0
    +1
step
    --@THIDDI: Not sure if worth it (Pristine Shriekling Feathers).
    #completewith ToHermit << Alliance
    #completewith ForestHollowsB << Horde
    >>Kill |cRXP_ENEMY_Shadowgale Shrieklings::256092|r.
    *Loot them for |T1508517:0|t[|cRXP_LOOT_Shriekling Talons|r] and |T132927:0|t[Pristine Shriekling Feathers]. << Alliance
    *Loot them for the |T132927:0|t[Pristine Shriekling Feathers]. << Horde
    .complete 92741,1 << Alliance --8/8 Shriekling Talons
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob +Shadowgale Shriekling::256092
step << Alliance
    #completewith ToHermit
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Seeds|r |cRXP_WARN_especially around trees|r.
    .complete 93160,1 --8/8 Zephyrseed
step << Alliance
    #completewith ToHermit
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Tear Moss|r |cRXP_WARN_on trees|r.
    .complete 94485,1 --8/8 Lady's Tear Moss
step << Horde
    #completewith ForestHollowsB
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Tear Moss|r |cRXP_WARN_on trees|r.
    .complete 94485,1 --8/8 Lady's Tear Moss
step << Horde
    #label ForestHollowsA
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Seeds|r |cRXP_WARN_especially around trees|r.
    .complete 93160,1 --8/8 Zephyrseed
step << Horde
    #label ForestHollowsB
    .goto 2521,53.97,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strange Hermit::251684|r.
    .turnin 93160 >>Turn in The Forest's Bounty
    .turnin 93172 >>Turn in Free the Hollows
    .target Strange Hermit::251684
-- step << Alliance
--     --@THIDDI: Not sure if worth it (Pristine Shriekling Feathers).
--     #label Shadowgale Shrieklings
--     >>Kill |cRXP_ENEMY_Shadowgale Shrieklings::256092|r.
--     *Loot them for |T1508517:0|t[|cRXP_LOOT_Shriekling Talons|r] and |T132927:0|t[Pristine Shriekling Feathers].
--     .complete 92741,1 --8/8 Shriekling Talons
--     .complete 94486,1 --20/20 Pristine Shriekling Feathers
--     .mob +Shadowgale Shriekling::256092
step << Alliance
    #label ToHermit
    .goto 2521,53.97,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strange Hermit::251684|r.
    .turnin 93160 >>Turn in The Forest's Bounty
    .turnin 93172 >>Turn in Free the Hollows
    .target Strange Hermit::251684
step
    .train 4036,3 -- Engineering Trained
    .isQuestComplete 98285 -- Camping 101: Engineering
    .goto 2521,53.97,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strange Hermit::251684|r.
    .turnin 98285 >>Turn in Camping 101: Engineering
    .target Strange Hermit::251684
step
    #hidewindow
    #completewith Pristine Shriekling Feathers
    #loop
    .goto 2521,54.93,38.11,40,0
    .goto 2521,55.92,36.83,40,0
    .goto 2521,57.49,37.79,40,0
    .goto 2521,58.93,37.91,40,0
    .goto 2521,60.27,38.12,40,0
    .goto 2521,61.61,36.4,40,0
    .goto 2521,61.41,39.14,40,0
    .goto 2521,59.67,40.26,40,0
    +1
step
    --@THIDDI: Not sure if worth it (Pristine Shriekling Feathers).
    #completewith next
    >>Kill |cRXP_ENEMY_Shadowgale Shrieklings::256092|r. Loot them for |T1508517:0|t[|cRXP_LOOT_Shriekling Talons|r] and |T132927:0|t[Pristine Shriekling Feathers]. << Alliance
    >>Kill |cRXP_ENEMY_Shadowgale Shrieklings::256092|r. Loot them for the |T132927:0|t[Pristine Shriekling Feathers]. << Horde
    .complete 92741,1 << Alliance --8/8 Shriekling Talons
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob +Shadowgale Shriekling::256092
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Tear Moss|r
    .complete 94485,1 --8/8 Lady's Tear Moss
step
    --@THIDDI: Not sure if worth it (Pristine Shriekling Feathers).
    #label Pristine Shriekling Feathers
    >>Kill |cRXP_ENEMY_Shadowgale Shrieklings::256092|r. Loot them for |T1508517:0|t[|cRXP_LOOT_Shriekling Talons|r] and |T132927:0|t[Pristine Shriekling Feathers]. << Alliance
    >>Kill |cRXP_ENEMY_Shadowgale Shrieklings::256092|r. Loot them for the |T132927:0|t[Pristine Shriekling Feathers]. << Horde
    .complete 92741,1 << Alliance --8/8 Shriekling Talons
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob +Shadowgale Shriekling::256092
step
    .goto 2521,61.76,39.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elegael Thornpaw::257944|r.
    .turnin 94485 >>Turn in Tears of the Lady
    .turnin 94487 >>Turn in Unwanted and Unworthy
    .turnin 94486 >>Turn in Feathers for Binding << Alliance
    .accept 94488 >>Accept The Ties That Bind
    .accept 94489 >>Accept The Wounds of Betrayal
    .target Elegael Thornpaw::257944
step
    .isQuestAvailable 94490 -- Ripped Missive
    .goto 2521,65.54,36.3
    >>Kill |cRXP_ENEMY_Commander Haalien::253622|r. Loot him for |T134161:0|t[|cRXP_LOOT_Severed Head|r] and |T135332:0|t[Ripped Missive].
    .complete 94488,1 --1/1 Commander Haalien's Severed Head
    .mob Commander Haalien::253622
    .collect 265476,1 -- Ripped Missive
step
    #completewith next
    >>Use the |T134332:0|t[Ripped Missive] in your bags to begin the quest.
    .accept 94490 >>Accept Ripped Missive
    .use 265476
step << Alliance
    .goto 2521,63.75,36.44,30,0
    .goto 2521,63.80,36.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vayn Moongaze|r at the entrance of the cave.
    .turnin 93165 >>Turn in Mercy Falls on Deaf Ears
    .target Vayn Moongaze
step
    .goto 2521,64.29,34.23,30,0
    .goto 2521,64.49,34.74
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Jorel Windsinger|r inside the cave.
    .complete 94489,2 --1/1 Find Jorel Windsinger
    .skipgossipid 137859
    .target Jorel Windsinger::258130
step
    #loop
    .goto 2521,64.51,34.89,10,0
    .goto 2521,64.98,34.96,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Druids|r
    -- >>|cRXP_WARN_Do not move while clicking them or it can bug.|r
    .complete 94489,1,3 --7/7 Injured Druids healed
    .target Nayeela Snarlfang::258138
    .target Telenos Leafwhisper::258137
    .target Naaleos Leafwhisper::258134
step
    #loop
    .goto 2521,63.93,33.76,20,0
    .goto 2521,63.69,32.49,20,0
    .goto 2521,64,31.97,25,0
    .goto 2521,64.52,31.88,25,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Druids|r
    -- >>|cRXP_WARN_Do not move while clicking them or it can bug.|r
    .complete 94489,1,5 --7/7 Injured Druids healed
    .target Neyasteel Mossmender::258275
    .target Bryaes Galechaser::258277
step
    #completewith next
    #hidewindow
    .goto 2521,64.703,30.067,20 >>1
step
    #loop
    .goto 2521,65.55,31.9,15,0
    .goto 2521,66.13,32.18,15,0
    .goto 2521,65.79,33,15,0
    .goto 2521,65.93,33.55,15,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Druids|r, do not move while clicking them or it can bug.
    .complete 94489,1,7 --7/7 Injured Druids healed
    .target Mithraless Sterngale::258288
    .target Baeo Sharpstrike::258289
step
    #completewith next
    #label Wounds of Betrayal
    .goto 2521,65.23,34.53,30,0
    .goto 2521,63.93,34.5,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elegael Thornpaw::257944|r.
    .turnin 94489 >>Turn in The Wounds of Betrayal
    .target Elegael Thornpaw::257944
step
    #completewith Wounds of Betrayal
    .goto 2521,61.77,39.14,150 >>Leave the cave
step
    #requires Wounds of Betrayal
    .goto 2521,61.77,39.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elegael Thornpaw::257944|r.
    .turnin 94489 >>Turn in The Wounds of Betrayal
    .turnin 94490 >>Turn in Ripped Missive
    .turnin 94488 >>Turn in The Ties That Bind
    .accept 94491 >>Accept The Fate of the Den
    .target Elegael Thornpaw::257944
step
    .isOnQuest 94491 << Alliance -- The Fate of the Den
    .isOnQuest 94896 << Horde -- Aid For The Refugees
    .subzoneskip 16631,1 -- Shadowgale Forest
    .hs >>Hearth to Shen'dar Village
    .use 6948
step << Warrior Alliance
    .goto 2521,59.886,72.863
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .target Seena Skybreaker::252377
    .turnin 94003 >>Turn in The Skybreaker Bulwark
step << Warrior Alliance
    .isQuestAvailable 94491 -- The Fate of the Den
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .train 1160 >>Train |Tinterface/icons/ability_warrior_warcry.blp:0|t[Demoralizing Shout]
    .train 6190,1 -- Demoralizing Shout (Rank 2) Not Trained
    .train 6572 >>Train |Tinterface/icons/ability_warrior_revenge.blp:0|t[Revenge]
    .train 6574,1 -- Revenge (Rank 2) Not Trained
    .train 1310185 >>Train |T136031:0|t[Tactical Mastery]
    .skipgossipid 136813
    .target Seena Skybreaker::252377
    .money <0.45
    .xp <14,1
step << Alliance
    .goto 2521,60.64,72.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyalah Brightfire::257006|r inside the house.
    .turnin 93317 >>Turn in Crab Season
    .target Nyalah Brightfire::257006
-- step << Alliance Rogue
--     .goto 2521,59.9,72.48
--     *|cRXP_WARN_Use the Interact Key through the Wall|r
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eltheen Nightbreeze::252379|r.
--     .train 1766 >>Train |T132219:0|t[Kick]
--     .train 3127 >>Train |T132269:0|t[Parry]
--     .skipgossipid 136810
--     .target Eltheen Nightbreeze::252379
--     .money <0.16
--     .xp <12,1
step << Alliance Rogue
    .goto 2521,59.55,73.3,30,0
    .goto 2521,59.91,72.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eltheen Nightbreeze::252379|r.
    .train 1766 >>Train |T132219:0|t[Kick]
    .train 3127 >>Train |T132269:0|t[Parry]
    .skipgossipid 136810
    .target Eltheen Nightbreeze::252379
    .money <0.16
    .xp <12,1
step << Alliance Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .train 14281 >>Train |T132218:0|t[Arcane Shot (Rank 2)]
    .target Quel'ana Quickgale::252389
    .money <0.08
    .xp <12,1
step << Alliance Warrior
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .train 5242 >>Train |T132333:0|t[Battle Shout (Rank 2)]
    .train 7384 >>Train |T132223:0|t[Overpower]
    .train 7887,1 -- Overpower (Rank 2) Not Trained
    .train 72 >>Train |T132357:0|t[Shield Bash]
    .train 1671,1 -- Shield Bash (Rank 2) Not Trained
    .skipgossipid 136813
    .target Seena Skybreaker::252377
    .money <0.3
    .xp <12,1
step << Alliance
    .goto 2521,63.55,73.45,25,0
    .goto 2521,63.99,75.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
    .turnin 94491 >>Turn in The Fate of the Den
    .target Lotheluum Starbreeze::252359
step << Alliance Druid
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,45.153,44.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naeluna Swiftmend::254081|r.
    .train 5229 >>Train |T132126:0|t[Enrage]
    .train 8936 >>Train |T136085:0|t[Regrowth]
    .target Naeluna Swiftmend::254081
    .money <0.16
    .xp <12,1
step
    .goto 2521,65.95,74.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ealaane Nimbuswalker::259012|r.
    .turnin 94896 >>Turn in Aid For The Refugees
    .turnin 94897 >>Turn in The Fate of a Loved One
    .target Ealaane Nimbuswalker::259012
step << Alliance
    #completewith next
    #label Unfortunate News
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r.
    .turnin 92644 >>Turn in Unfortunate News
    .accept 94568 >>Accept The Cult's True Plans
    .disablecheckbox
    .target Talaanis Shadowsong::252476
step << Alliance
    #completewith Unfortunate News
    .goto 2521,65.93,76.37,5,0
    .goto 2521,66.46,76.8,5,0
    .goto 2521,66.43,76.58,5,0
    .goto 2521,66.43,76.83,5,0
    .goto 2521,66.31,77.08,5,0
    .goto 2521,66,76.57,8,0
    .goto 2521,66.19,76.22,8,0
    .goto 2521,66.44,76.4,5 >>Climb the tower
step << Alliance
    #requires Unfortunate News
    .goto 2521,66.17,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r.
    .turnin 92644 >>Turn in Unfortunate News
    .accept 94568 >>Accept The Cult's True Plans
    .target Talaanis Shadowsong::252476
step << Alliance
    #completewith next
    #label Talaanis Shadowsong
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 94568,1 --1/1 Learn what you can from the crystal
    .target Talaanis Shadowsong::252476
step << Alliance
    #completewith Talaanis Shadowsong
    .goto 2521,66.18,76.51
    .gossipoption 140111 >>Talk to |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r.
    .timer 50,RP
step << Alliance
    #requires Talaanis Shadowsong
    .goto 2521,66.17,76.52
    >>|cRXP_WARN_Wait for the Roleplay|r.
    *Cook |T132834:0|t[Herb Baked Eggs] and |T133974:0|t[Charred Wolf Meat] if you have the required materials.
    *Otherwise, craft any items you can using your other professions.
    .complete 94568,1 --1/1 Learn what you can from the crystal
    .target Talaanis Shadowsong::252476
step << Alliance
    .goto 2521,66.17,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r |cRXP_WARN_next to you|r.
    .turnin 94568 >>Turn in The Cult's True Plans
    .accept 92640 >>Accept Desperate Times
    .target Talaanis Shadowsong::252476
step << Alliance
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .complete 92640,1 --1/1 Speak with Valennia Stormfist
    .target Valennia Stormfist::252383
    .skipgossipid 137096
    .skipgossipid 137095
step << Alliance
    .isOnQuest 92640 -- Desperate Times
    .isQuestNotComplete 92640 -- Desperate Times
    .goto 2521,66.49,76.64,8,0
    .goto 2521,63.33,78.16
    .cast 1259416 >>Jump off the mountain and use |T132845:0|t[Walk on Air] to fly towards the waypoint location.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance
    .goto 2521,63.33,78.16,30,0
    .goto 2521,63.04,77.53,30,0
    .goto 2521,62.31,78.27,30,0
    .goto 2521,62.13,79.02,30,0
    .goto 2521,60.68,80.11,30,0
    .goto 2521,59.15,79.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ayessa Dawnsinger::251968|r.
    .complete 92640,2 --1/1 Recruit the Windshapers
    .skipgossipid 136542
    .skipgossipid 136541
    .mob Ayessa Dawnsinger::251968
step << Alliance
    .goto 2521,59.94,77.92,30,0
    .goto 2521,61.45,77.15,30,0
    .goto 2521,62.13,76.85,30,0
    .goto 2521,63.35,78.58,30,0
    .goto 2521,66.54,79.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale::252475|r.
    .complete 92640,3 --1/1 Recruit the High Order
    .skipgossipid 136547
    .skipgossipid 136546
    .target Elaadrin Evengale::252475
step << Alliance
    .goto 2521,66.628,79.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale::252475|r.
    .turnin 92834 >>Turn in Avenged Tenfold
    .target Elaadrin Evengale::252475
step << Alliance
    .goto 2521,66.34,79.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iaadaria Bitterwind::253004|r.
    .turnin 92741 >>Turn in Unwelcome Visitors
    .target Iaadaria Bitterwind::253004
step << Alliance
    #completewith next
    #label Prepare for Battle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92640 >>Turn in Desperate Times
    .accept 93065 >>Accept Prepare for Battle
    .disablecheckbox
    .target Valennia Stormfist::252383
step << Alliance
    #completewith Prepare for Battle
    .goto 2521,65.65,79.27,30,0
    .goto 2521,64.98,77.12,30,0
    .goto 2521,65.93,76.37,5,0
    .goto 2521,66.46,76.8,5,0
    .goto 2521,66.43,76.58,5,0
    .goto 2521,66.43,76.83,5,0
    .goto 2521,66.31,77.08,5,0
    .goto 2521,66,76.57,8,0
    .goto 2521,66.19,76.22,8,0
    .goto 2521,66.44,76.4,5 >>Climb the tower
step << Alliance
    #requires Prepare for Battle
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92640 >>Turn in Desperate Times
    .accept 93065 >>Accept Prepare for Battle
    .target Valennia Stormfist::252383
step << Alliance
    .subzoneskip 16638,1 -- Valanaar
    .isOnQuest 93065 -- Prepare for Battle
    .goto 2521,63.9,74.16
    .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step << Alliance
    .goto 2521,63.99,74.1,40,0
    .goto 2521,61.15,70.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist::253844|r.
    .complete 93065,1 --|1/1 Find Valennia on the Road
    .turnin 93065 >>Turn in Prepare for Battle
    .target Valennia Stormfist::253844
step << Horde
    >>Abandon any remaining "Camping 101" quest.
    *Click the macro in the Active Items frame to abandon them all at once.
    .abandon 97970 >>Abandon Camping 101: Mining
    .abandon 97971 >>Abandon Camping 101: Skinning
    .abandon 96646 >>Abandon Camping 101: Cooking
    .abandon 97968 >>Abandon Camping 101: Herbalism
    .abandon 97965 >>Abandon Camping 101: First Aid
    .abandon 97967 >>Abandon Camping 101: Fishing
    .abandon 97963 >>Abandon Camping 101: Alchemy
    .abandon 97964 >>Abandon Camping 101: Blacksmithing
    .abandon 97973 >>Abandon Camping 101: Tailoring
    .abandon 98286 >>Abandon Camping 101: Enchanting
    .abandon 97969 >>Abandon Camping 101: Leatherworking
    .abandon 98285 >>Abandon Camping 101: Engineering
    .abandon 93318 >>Abandon WANTED: Vulgara the Insatiable
    .macro Abandon 101,130722 >>/run for _,q in ipairs({97970,97971,96646,97968,97965,97967,97963,97964,97973,98286,97969,98285,93318})do if C_QuestLog.IsOnQuest(q)then C_QuestLog.SetSelectedQuest(q) C_QuestLog.SetAbandonQuest() C_QuestLog.AbandonQuest() ConfirmAbandonQuest()end end
step << Alliance
    #completewith Magical City of Dalaran
    >>Abandon any remaining "Camping 101" quest.
    *Click the macro in the Active Items frame to abandon them all at once.
    .abandon 97970 >>Abandon Camping 101: Mining
    .abandon 97971 >>Abandon Camping 101: Skinning
    .abandon 96646 >>Abandon Camping 101: Cooking
    .abandon 97968 >>Abandon Camping 101: Herbalism
    .abandon 97965 >>Abandon Camping 101: First Aid
    .abandon 97967 >>Abandon Camping 101: Fishing
    .abandon 97963 >>Abandon Camping 101: Alchemy
    .abandon 97964 >>Abandon Camping 101: Blacksmithing
    .abandon 97973 >>Abandon Camping 101: Tailoring
    .abandon 98286 >>Abandon Camping 101: Enchanting
    .abandon 97969 >>Abandon Camping 101: Leatherworking
    .abandon 98285 >>Abandon Camping 101: Engineering
    .abandon 93318 >>Abandon WANTED: Vulgara the Insatiable
    .macro Abandon 101,130722 >>/run for _,q in ipairs({97970,97971,96646,97968,97965,97967,97963,97964,97973,98286,97969,98285,93318})do if C_QuestLog.IsOnQuest(q)then C_QuestLog.SetSelectedQuest(q) C_QuestLog.SetAbandonQuest() C_QuestLog.AbandonQuest() ConfirmAbandonQuest()end end
step << Alliance Mage
    .goto 2521,65.4,80.22,10,0
    .goto 2521,65.91,80.58
    >>Enter the large stone hall beside the blacksmith, continue into the upper chamber, then turn right.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anathamaas Aetherwind::252373|r.
    .train 145 >>Train |T135812:0|t[Fireball (Rank 3)]
    .train 604 >>Train |T136006:0|t[Dampen Magic]
    .train 597 >>Train |T133952:0|t[Conjure Food (Rank 2)]
    .train 130 >>Train |T135992:0|t[Slow Fall]
    .skipgossipid 136807
    .target Anathamaas Aetherwind::252373
    .money <0.24
    .xp <12,1
step << Alliance
    #completewith next
    +|cRXP_WARN_The zeppelin can arrive at any time during its 6-minute cycle. While you wait, complete the following:|r
    *Vendor trash and repair your gear.
    *Cook food and gain campfire buffs for later.
    *Equip upgrades and select talents.
step << Alliance
    #completewith next
    #label Magical City of Dalaran
    .goto 2521,65.82,81.18,15,0
    .goto 2521,65.44,80.46,15,0
    .goto 2521,65.25,81.64,25,0
    *|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denaaris Stargale::259084|r.
    -- .turnin 94946 >>Turn in The Magical City of Dalaran
    .accept 94947 >>Accept Welcome to Azeroth
    .skipgossipid 137530
    .target Halavuul Cragwind::252388
step << Alliance
    #completewith Magical City of Dalaran
    .goto 2521,65.81,83.44
    .zone 1424 >>Take the Zeppelin to Dalaran City
step << Alliance
    #requires Magical City of Dalaran
    .goto 1416/0,438.93,448.88
    >>|cRXP_WARN_Do not jump off the zeppelin early you may be pushed off the platform|r.
    *|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denaaris Stargale::259084|r.
    .target Denaaris Stargale::259084
    -- .turnin 94946 >>Turn in The Magical City of Dalaran
    .accept 94947 >>Accept Welcome to Azeroth
step << Alliance Druid
    .goto 1416/0,385.700,385.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Ansirem Runeweaver::2543|r.
    .accept 94912 >>Accept Child of Nature
    .target Archmage Ansirem Runeweaver::2543
step << Alliance
    .goto 1416/0,445.93,450.00
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 94947,1 --Take the Skyborne Portal to Stormwind
-- step << Alliance Druid
--     .goto 1453/0,1099.900,-8776.700
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheldras Moontree::5504|r.
--     .turnin 94912 >>Turn in Child of Nature
--     .accept 94914 >>Accept Moonglade
--     .target Sheldras Moontree::5504
-- step << Alliance Druid
--     .goto 1450/1,-2678.600,8020.000
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze::11802|r.
--     .target Dendrite Starblaze::11802
--     .turnin 94914 >>Turn in Moonglade
step << Alliance Hunter
    .goto 1453/0,765.700,-8804.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Catherine Leland|r
    >>|cRXP_BUY_Buy one|r |T134335:0|t[Shiny Bauble] |cRXP_BUY_and three|r |T134324:0|t[Nightcrawlers] |cRXP_BUY_from her. This is for a 900xp quest|r
    .collect 6529,1,95065,1 --|1/1 Shiny Bauble
    .collect 6530,3,95065,1 --|3/3 Nightcrawlers
    .target Catherine Leland
step << Alliance Hunter
    .goto 1453/0,596.400,-8831.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thurman Mullby|r
    >>|cRXP_BUY_Buy a|r |T135435:0|t[Simple Wood] |cRXP_BUY_and a|r |T135237:0|t[Flint and Tinder] |cRXP_BUY_from him|r
    >>|cRXP_WARN_This is used to make|r |T135805:0|t[Basic Campfires] |cRXP_WARN_on Boats to level your|r |T133971:0|t[Cooking] |cRXP_WARN_skill without losing time|r
    >>|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Duskwood later|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Thurman Mullby
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << Alliance Hunter
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>|cRXP_BUY_Buy|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_BUY_and/or|r |T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_BUY_to level your|r |T133971:0|t[Cooking] |cRXP_BUY_with later|r
    >>|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Darkshire later|r
    >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
    >>|cRXP_BUY_Buy the following items for faster turn ins at Westfall and Darkshore shortly:|r
    >>|T133972:0|t[Strider Meat]
    >>|T133912:0|t[Darkshore Grouper]
    >>|T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Jaxon
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Alliance Hunter
    #ah
    #optional
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Jaxon|r
    >>|cRXP_WARN_If you don't want to or can't do this, skip this step|r
    >>|cRXP_BUY_Buy the following items for faster turn ins at Westfall and Darkshore shortly:|r
    >>|T133972:0|t[Strider Meat]
    >>|T133912:0|t[Darkshore Grouper]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step << Alliance
    .goto 1453,48.1,88.35,10,0
    .goto 1453,49.36,87.37,10,0
    .goto 1453,48.85,86.94,10,0
    .goto 1453,48.76,87.71,10,0
    .goto 1453,54.8,83.65,25,0
    .goto 1453,53.78,78.72,25,0
    .goto 1453,55.67,75.99,25,0
    .goto 1453,59.9,71.41,25,0
    .goto 1453/0,332.000,-8443.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon::1748|r inside the Keep.
    .target Highlord Bolvar Fordragon::1748
    .turnin 94947 >>Turn in Welcome to Azeroth
    .accept 93963 >>Accept Exploring the Alliance
    .accept 98021 >>Accept Journey to Sentinel Hill << !Hunter
--step << Alliance
--    .goto 1453/0,350.200,-8516.200
--    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Randal Emerson::275491|r inside the Keep.
--    .complete 93963,1 --1/1 Receive Instructions from Randal Emerson
--    .skipgossipid 142485
--    .target Randal Emerson::275491
step << Alliance Hunter
    .goto 1453/0,1269.100,-8540.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gilbert Gray::267118|r
    .target Gilbert Gray::267118
    .accept 95065 >>Accept Fishin' Time
    .turnin 95065 >>Turn in Fishin' Time
step << Alliance Hunter
    #optional
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>|cRXP_WARN_On the Boat if it just arrived or on the dock if the boat just left:|r
    .cast 818 >>|cRXP_WARN_Create a|r |T135805:0|t[Basic Campfire] |cRXP_WARN_(in your Profession Book)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Alliance Hunter
    #optional
    #requires DarkshoreCook1
    #label DarkshoreCook2
    #completewith DarkshoreBoat
    >>|cRXP_WARN_On the Boat if it just arrived or on the dock if the boat just left:|r
    .cast 818 >>|cRXP_WARN_Create a|r |T135805:0|t[Basic Campfire] |cRXP_WARN_(in your Profession Book)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Alliance Hunter
    #optional
    #requires DarkshoreCook2
    #label DarkshoreCook3
    #completewith DarkshoreBoat
    >>|cRXP_WARN_On the Boat if it just arrived or on the dock if the boat just left:|r
    .cast 818 >>|cRXP_WARN_Create a|r |T135805:0|t[Basic Campfire] |cRXP_WARN_(in your Profession Book)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Alliance Hunter
    #optional
    #requires DarkshoreCook3
    #label DarkshoreCook4
    #completewith DarkshoreBoat
    >>|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Duskwood later|r
    >>|T133971:0|t[Cook] |cRXP_WARN_the following items:|r
    >>|T133971:0|t[Cook] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_into|r |T133974:0|t[Roasted Boar Meat]
    >>|T133971:0|t[Cook] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_WARN_into|r |T133974:0|t[Charred Wolf Meat]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Alliance Hunter
    #optional
    #requires DarkshoreCook4
    #label DarkshoreCook5
    #completewith DarkshoreBoat
    >>|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Duskwood later|r
    >>|T133971:0|t[Cook] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[Stringy Wolf Meat]|r |cRXP_WARN_into|r |T133974:0|t[Charred Wolf Meat]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Alliance Hunter
    #optional
    #requires DarkshoreCook5
    #label DarkshoreCook6
    #completewith DarkshoreBoat
    >>|cRXP_WARN_You need 50|r |T133971:0|t[Cooking] |cRXP_WARN_for a quest in Duskwood later|r
    >>|T133971:0|t[Cook] |cRXP_WARN_the|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_into|r |T133974:0|t[Roasted Boar Meat]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Alliance Hunter
    #optional
    .goto 1453/0,1330.100,-8645.400
    >>|cRXP_WARN_Level your|r |T135966:0|t[First Aid] |cRXP_WARN_while waiting for the boat to Darkshore if needed|r
    .zone Darkshore >> Take the boat to Darkshore
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << Alliance Hunter
    #label DarkshoreBoat
    .goto 1453/0,1330.100,-8645.400
    .zone Darkshore >> Take the boat to Darkshore
step << Horde
    .goto 2521,63.989,75.090
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
    .target Lotheluum Starbreeze::252359
    .turnin 94491 >>Turn in The Fate of the Den
step << Horde
    .isQuestComplete 93317 -- Crab Season
    .goto 2521,60.64,72.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyalah Brightfire::257006|r inside the house.
    .turnin 93317 >>Turn in Crab Season
    .target Nyalah Brightfire::257006
step << Warrior Horde
    .goto 2521,59.886,72.863
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .turnin 94003 >>Turn in The Skybreaker Bulwark
    .target Seena Skybreaker::252377
step << Warrior Horde
    .isQuestAvailable 93736 -- Unwelcome Spirits
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .train 5242 >>Train |T132333:0|t[Battle Shout (Rank 2)]
    .train 7384 >>Train |T132223:0|t[Overpower]
    .train 7887,1 -- Overpower (Rank 2) Not Trained
    .train 72 >>Train |T132357:0|t[Shield Bash]
    .train 1671,1 -- Shield Bash (Rank 2) Not Trained
    .skipgossipid 136813
    .target Seena Skybreaker::252377
    .money <0.3
    .xp <12,1
step << Warrior Horde
    .isQuestAvailable 93736 -- Unwelcome Spirits
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .train 1160 >>Train |Tinterface/icons/ability_warrior_warcry.blp:0|t[Demoralizing Shout]
    .train 6190,1 -- Demoralizing Shout (Rank 2) Not Trained
    .train 6572 >>Train |Tinterface/icons/ability_warrior_revenge.blp:0|t[Revenge]
    .train 6574,1 -- Revenge (Rank 2) Not Trained
    .train 1310185 >>Train |T136031:0|t[Tactical Mastery]
    .skipgossipid 136813
    .target Seena Skybreaker::252377
    .money <0.45
    .xp <14,1
step << Horde Rogue
    .goto 2521,59.9,72.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eltheen Nightbreeze::252379|r.
    .train 1766 >>Train |T132219:0|t[Kick]
    .train 3127 >>Train |T132269:0|t[Parry]
    .skipgossipid 136810
    .target Eltheen Nightbreeze::252379
    .money <0.16
    .xp <12,1
step << Horde
    .isQuestComplete 93737 -- The Broken Construct
    .goto 2521,59.066,72.987
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Riaani Nightwind::256083|r.
    .turnin 93737 >>Turn in The Broken Construct
    .target Riaani Nightwind::256083
step << Horde
    .goto 2521,58.986,75.460
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Railee Thriceforged::257422|r.
    .vendor 257422 >>Vendor trash.
    *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
    *|cRXP_WARN_We need them for Cooking later.|r
    .target Railee Thriceforged::257422
step << Horde
    .isQuestComplete 93736 -- Unwelcome Spirits
    .goto 2521,58.128,78.307
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Endaria Mistgaze::254344|r.
    .turnin 93736 >>Turn in Unwelcome Spirits
    .target Endaria Mistgaze::254344
step << Horde
    .isQuestComplete 92708 -- A Grand Adventure
    .goto 2521,59.154,79.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ayessa Dawnsinger::251968|r.
    .turnin 92708 >>Turn in A Grand Adventure
    .target Ayessa Dawnsinger::251968
step << Horde
    .abandon 92708 >>Abandon A Grand Adventure
step << Horde
    .zoneskip 2521,1
    .isQuestAvailable 95350 -- Welcome to Azeroth
    .goto 2521,57.921,80.781
    .zone 1412 >>Take the airship to |cRXP_PICK_Mulgore|r.
step << Horde Druid Skyborne
    .goto 1412/1,423.400,-659.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Muln Earthfury::259118|r.
    .target Muln Earthfury::259118
    .accept 94911 >>Accept Child of Nature
step << Horde
    .goto 1412/1,426.100,-658.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alaana Stormwalker::259119|r.
    .accept 95350 >>Accept Welcome to Azeroth
    .target Alaana Stormwalker::259119
-- step << Horde
--     .isOnQuest 95350
--     -- .subzoneskip 17045,1 -- Skywatcher Plateau
--     .goto 1412/1,323.300,-731.200
--     .deathskip >>Jump to die and ress at the |cRXP_PICK_Spirit Healer|r.
--     .skipgossipid 96031
--     .skipgossipid 98031
--     .target Spirit Healer::6491
step << Horde Druid Skyborne
    #completewith ChildOfNatureC
    #label ChildOfNatureA
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak Runetotem::3033|r.
    .turnin 94911 >>Turn in Child of Nature
    .accept 94913 >>Accept Moonglade
    .target Turak Runetotem::3033
step << Horde Druid Skyborne
    #completewith ChildOfNatureA
    #label ChildOfNatureB
    .goto 1456/1,-110.500,-970.700,15,0
    .goto 1456/1,-76.900,-1026.000,15,0
    .goto 1456/1,-48.800,-1037.300,8,0
    .goto 1456/1,-7.300,-1089.600,25 >>Enter Thunder Bluff
step << Horde Druid Skyborne
    #requires ChildOfNatureB
    #completewith ChildOfNatureA
    #label ChildOfNatureC
    .goto 1456/1,-13.300,-1108.300,12,0
    .goto 1456/1,-46.900,-1092.900,12,0
    .goto 1456/1,-61.200,-1097.400,8,0
    .goto 1456/1,-198.000,-1046.500,12 >>Cross the bridge.
step << Horde Druid Skyborne
    #requires ChildOfNatureC
    .goto 1456/1,-281.500,-1039.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak Runetotem::3033|r.
    .turnin 94911 >>Turn in Child of Nature
    .accept 94913 >>Accept Moonglade
    .target Turak Runetotem::3033
step << Horde Druid Skyborne
    #optional
    #requires ChildOfNatureA
    .goto 1456/1,-281.500,-1039.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak Runetotem::3033|r.
    .train 8936 >>Train your class spells
    .target Turak Runetotem::3033
    .xp <12,1
    .xp >14,1
step << Horde Druid Skyborne
    #requires ChildOfNatureA
    .goto 1456/1,-281.500,-1039.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak Runetotem::3033|r.
    .train 5178 >>Train your class spells
    .target Turak Runetotem::3033
    .xp <14,1
step << Horde !Druid
    #completewith next
    #label WelcomeToAzerothA
    #hidewindow
    .isOnQuest 95350 -- Welcome to Azeroth
    .zoneskip 1454
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal::2995|r.
    .fly Orgrimmar >>Fly to Orgrimmar
    .target Tal::2995
step << Horde !Druid
    #completewith WelcomeToAzerothA
    .goto 1456/1,-110.500,-970.700,15,0
    .goto 1456/1,-76.900,-1026.000,15,0
    .goto 1456/1,-48.800,-1037.300,8,0
    .goto 1456/1,-7.300,-1089.600,25 >>Enter Thunder Bluff
step << Horde
    #requires WelcomeToAzerothA << !Druid
    .isOnQuest 95350 -- Welcome to Azeroth
    .zoneskip 1454
    .goto 1456/1,26.500,-1196.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal::2995|r.
    .fly Orgrimmar >>Fly to Orgrimmar
    .target Tal::2995
step << Horde
    .goto Orgrimmar,54.10,68.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Gryshka::6929|r
    .home >> Set your Hearthstone to Orgrimmar
	.target Innkeeper Gryshka::6929
    .bindlocation 1637
step << Horde
    .goto 1454/1,-4460.600,1584.300,10,0
    .goto 1454/1,-4460.000,1598.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thatog::268701|r
    >>|cRXP_WARN_He is upstairs in the building|r
    .accept 97246 >>Accept Meal Appeal
    .target Thatog::268701
step << Horde
    .goto 1454/1,-4482.600,1775.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Borstan::3368|r
    .turnin 97246 >>Turn in Meal Appeal
    .accept 97249 >>Accept Favorite Food
    .target Borstan::3368
step << Horde
    .goto 1454/1,-4466.800,1954.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'geld::3348|r
    .accept 97242 >>Accept Yelmak's Medley
    .target Kor'geld::3348
step << Horde
    #completewith next
    .goto 1454/1,-4560.000,1908.500,15,0
    .goto 1454/1,-4587.000,1918.300,15,0
    .goto 1454/1,-4608.000,1897.400,15,0
    .goto 1454/1,-4632.300,1911.600,15 >>Travel to the Valley of Honor
step << Horde
    #loop
    .goto 1454/1,-4653.900,1950.300,0
    .goto 1454/1,-4653.900,1950.300,20,0
    .goto 1454/1,-4677.700,1971.600,20,0
    .goto 1454/1,-4667.400,1997.000,20,0
    .goto 1454/1,-4609.800,2013.500,20,0
    .goto 1454/1,-4630.600,1968.100,20,0
    >>Loot the |cRXP_PICK_Handful of Cattails|r and |cRXP_PICK_Speargrass Cuttings|r in the water
    .complete 97242,1 --|2/2 Handful of Cattails
    .complete 97242,2 --|4/4 Speargrass Cuttings
step << Horde Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormak Grimshot::3352|r
    .train 13795 >> Train your class spells
    .target Ormak Grimshot::3352
    .xp <12,1
step << Horde Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xao'tsu::10088|r
    .train 24556 >> Train your pet spells
    .target Xao'tsu::10088
step << Horde Warrior
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz Ragefist::3353|r
    .train 7384 >> Train your class spells
    .target Grezz Ragefist::3353
    .xp <12,1
    .xp >14,1
step << Horde Warrior
    #optional
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grezz Ragefist::3353|r
    .train 1160 >> Train your class spells
    .target Grezz Ragefist::3353
    .xp <14,1
step << Horde
    .goto 1454/1,-4466.900,1954.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kor'geld::3348|r
    .turnin 97242 >>Turn in Yelmak's Medley
    .target Kor'geld::3348
step << Horde
    .goto 1454/1,-4477.900,1964.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yelmak::3347|r
    >>|cRXP_WARN_You may have to wait about 10 seconds before you can accept this quest|r
    .accept 97275 >>Accept Whuut's the Rush
    .target Yelmak::3347
step << Horde
    .goto 1454/1,-4463.000,1966.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Whuut::11046|r
    .turnin 97275 >>Turn in Whuut's the Rush
    .target Whuut::11046
step << Horde
    .goto 1454/1,-4193.400,2001.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Migi::268682|r
    .turnin 97249 >>Turn in Favorite Food
    .target Migi::268682
step << Horde
    .goto 1454/1,-4205.800,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thra::268684|r
    .accept 97326 >>Accept Rocks to Rests
    .target Thra::268684
step << Horde
    .goto 1454/1,-4293.600,1949.900
    >>Loot the orange |cRXP_PICK_Rocks|r on the ground
    >>|cRXP_WARN_Skip this quest if there is a lot of competition! There aren't that many |cRXP_PICK_Rocks|r and they do not respawn quickly|r
    .complete 97326,1 --|8/8 Smooth Boulder
    .isOnQuest 97326 -- Rocks to Rests
step << Horde
    .goto 1454/1,-4205.900,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thra::268684|r
    .turnin 97326 >>Turn in Rocks to Rests
    .target Thra::268684
    .isQuestComplete 97326 -- Rocks to Rests
step << Horde
    .goto 1454/1,-4126.300,1920.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall::4949|r.
    .turnin 95350 >>Turn in Welcome to Azeroth
    .accept 98024 >>Accept Journey to the Crossroads
    --.accept 93739 >>Accept Exploring the Horde
    --.accept 5726 >>Accept Hidden Enemies
    .target Thrall::4949
    --93739 will take too long, won't be able to fully complete and turnin until lvl 22/23 and at that point you get no xp
step << skip --Horde
    .goto 1454/1,-4133.400,1938.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nazgrel::3230|r.
    .complete 93739,1 --|1/1 Obtain Instructions from Nazgrel
    .target Nazgrel::3230
    .skipgossipid 142489
step << skip --Horde
    .goto 1454/1,-4162.200,1933.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vol'jin::10540|r.
    .complete 93739,2 --|1/1 Speak with Vol'jin
    .target Vol'jin::10540
step << Horde
    .goto 1454/1,-4226.78,1914.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zor Lonetree::4047|r
    .accept 1061 >>Accept The Spirits of Stonetalon
    .target Zor Lonetree::4047
    .xp <13,1
step << Horde Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris Dreamseeker::3344|r
    .train 408341 >> Train your class spells
    .target Kardris Dreamseeker::3344
    .xp <12,1
    .xp >14,1
step << Horde Shaman
    #optional
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kardris Dreamseeker::3344|r
    .train 8045 >> Train your class spells
    .target Kardris Dreamseeker::3344
    .xp <14,1
step << Horde Rogue
    .goto 1454/1,-4296.34,1762.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormok::3328|r
    .train 1766 >> Train your class spells
    .target Ormok::3328
    .xp <12,1
    .xp >14,1
step << Horde Rogue
    #optional
    .goto 1454/1,-4296.34,1762.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ormok::3328|r
    .train 1758 >> Train your class spells
    .target Ormok::3328
    .xp <14,1
step << Horde Mage
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pephredo::5882|r
    .train 145 >> Train your class spells
    .target Pephredo::5882
    .xp <12,1
    .xp >14,1
step << Horde Mage
    #optional
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pephredo::5882|r
    .train 1449 >> Train your class spells
    .target Pephredo::5882
    .xp <14,1
step << !Hunter
    #optional
    .maxlevel 13,Silverpineskip
step << Horde
    #completewith next
    .zone Durotar >> Leave Orgrimmar
    .zoneskip Durotar
    .zoneskip Tirisfal Glades
    .zoneskip Undercity
    .zoneskip Silverpine Forest
step << Horde Hunter
    #completewith next
    .subzone 362 >> Travel to Razor Hill
step << Horde Hunter
    #label Conscript
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Accept Conscript of the Horde
    .target Takrin Pathseeker
step << Horde Hunter
    #completewith next
    .subzone 379 >> Travel to Far Watch Post
step << Horde Hunter
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Turn in Conscript of the Horde
    .accept 842 >>Accept Crossroads Conscription
    .target Kargal Battlescar
step << Horde !Hunter
    .goto 1411/1,-4648.55,1321.88,40 >>Go up the Zeppelin Tower
    .zone Tirisfal Glades >>Take the Zeppelin to Tirisfal Glades
    >>|cRXP_WARN_Conjure water while waiting|r << Mage
    .zoneskip Tirisfal Glades
step << Horde !Hunter
    #completewith DeliverytoSPF
    .goto 1420/0,253.4,2234.85,80 >> Travel to Brill
step << Horde !Hunter
    .goto 1420/0,254.600,2225.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Deathguard Terrence::1738|r
    .accept 96895 >>Accept The Argent Emissary
    .target Deathguard Terrence::1738
    .xp >13,1
step << Horde !Hunter
    #label DeliverytoSPF
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Apothecary Johaan::1518|r
    .accept 445 >>Accept Delivery to Silverpine Forest
    .target Apothecary Johaan::1518
    .xp >13,1
step << Horde !Hunter
    .goto 1420/0,54.600,1996.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadric Harlson::267009|r
    .turnin 96895 >>Turn in The Argent Emissary
    .accept 96897 >>Accept The Cult of the Damned
    .accept 96898 >>Accept Remnants of War
    .target Hadric Harlson::267009
    .xp >13,1
step << Horde !Hunter
    .goto 1420/0,-130.500,1907.800
    >>Kill |cRXP_ENEMY_Dark Enforcers|r and |cRXP_ENEMY_Dark Neophytes|r. Loot them for |cRXP_LOOT_Necrotic Crystal Fragments|r
    >>|cRXP_LOOT_Necrotic Crystal Fragments|r |cRXP_WARN_can also be looted on the ground|r
    >>|cRXP_WARN_Be careful! These mobs hit hard. |cRXP_ENEMY_Dark Enforcers|r also have an instant cast 50-70 damage ability|r
    .complete 96897,2 --|8/8 Dark Enforcer slain
    .mob +Dark Enforcer
    .complete 96897,1 --|8/8 Dark Neophyte slain
    .mob +Dark Neophyte
    .complete 96898,1 --|12/12 Necrotic Crystal Fragment
    .isOnQuest 96897,96898 -- The Cult of the Damned / Remnants of War
step << Horde !Hunter
    .goto 1420/0,54.500,1996.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hadric Harlson::267009|r
    .turnin 96897 >>Turn in The Cult of the Damned
    .turnin 96898 >>Turn in Remnants of War
    --.accept 96899 >>Accept Bandarion Keep
    .target Hadric Harlson::267009
    .isQuestComplete 96897 -- The Cult of the Damned
    .isQuestComplete 96898 -- Remnants of War
step << Horde !Hunter
    #completewith UCflightpath1
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >> Take the lift down to the Undercity
step << Horde !Hunter
    #label UCflightpath1
    .goto 1458/0,266.39,1567.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Michael Garrett::4551|r
    .fp Undercity >> Get the Undercity flight path
    .target Michael Garrett::4551
step << Horde !Hunter
    #ah
    .goto 1458/0,224.300,1648.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Cain::15682|r
    >>|cRXP_BUY_Buy Three|r |T133884:0|t[Murloc Eyes] |cRXP_BUY_from the Auction House|r
    >>|cRXP_WARN_Skip this if you want, it's only a small time saver|r
    .collect 730,3,91920,1 --Collect Murloc Eyes (x3)
    .target Auctioneer Cain::15682
    .zoneskip Undercity,1
step << Horde !Hunter
    .goto 1458/0,419.89,1627.54,50,0
    .goto 1458/0,428.52,1597.20,10,0
    .goto 1458/0,439.17,1626.06,10,0
    .goto 1458/0,476.78,1632.150,10,0
    .goto 1458/0,482.34,1660.63,10,0
    .goto 1458/0,539.33,1665.49,15,0
    .goto 1458/0,610.42,1684.44,35,0
    .goto 1458/0,663.19,1600.46,35,0
    .goto 1420/0,724.25,1682.66,50,0
    .zone Tirisfal Glades >> Leave Undercity through the Sewers
    .zoneskip Silverpine Forest
step << Horde !Hunter
    #label Entersilverpine
    .goto 1420/0,629.36,1553.42
    .zone Silverpine Forest >> Travel to Silverpine Forest
    .zoneskip Silverpine Forest
step << !Hunter
    #optional
    #label Silverpineskip

]])

RXPGuides.RegisterGuide([[
#forever
#version 1
#name Random Stuff
#group RestedXP Forever Guide (A) << Alliance
#group RestedXP Forever Guide (H) << Horde
#internal

    .goto 2521,41.07,22.33 -- spirit healer thendal village
    .goto 2521,40.23,63.82 --watchtower
    .goto 2521,55.01,68.16 --gustberry highlands
-- step
--     .goto 2521,53.96,38.90
--     .accept 98285 >>Accept Camping 101: Engineering
-- step
--     .goto 2521,53.96,38.90
--     .complete 98285,1 --Raise your engineering skill to 20
-- step -- repeatable
--     .goto 2521,63.80,35.99
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vayn Moongaze|r.
--     .turnin 93459 >>Turn in More Al'Aketh Ears
--     .target Vayn Moongaze
step
    .goto 2521,59.151,79.778
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ayessa Dawnsinger::251968|r.
    .target Ayessa Dawnsinger::251968
    .turnin 93738 >>Turn in The Broken Construct
    .accept 93746 >>Accept A Firm Response
step
    .goto 2521,59.953,57.182
    .complete 93746,1 --|1/1 Confront Belathaan Brightwish
step
    .goto 2521,59.942,56.938
    >>137326
step
    .goto 2521,59.155,79.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ayessa Dawnsinger::251968|r.
    .target Ayessa Dawnsinger::251968
    .turnin 93746 >>Turn in A Firm Response
    .accept 92871 >>Accept In Service of Zephras
    .accept 93740 >>Accept Blood for Blood

step
    .goto 2521,63.983,75.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
    .train 5232 >>Train |T1:0|t[Mark of the Wild (Rank 2)]
    .train 8924 >>Train |T1:0|t[Moonfire (Rank 2)]
    .target Lotheluum Starbreeze::252359

step
    .goto 2521,51.241,86.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olariaan Swiftburn::268592|r.
    .target Olariaan Swiftburn::268592
    .turnin 97244 >>Turn in Call of Fire
    .accept 97245 >>Accept Call of Fire
step
    .goto 2521,42.418,69.117
    .complete 97245,1 --|1/1 Kuramaa's Mask
step
    .goto 2521,51.240,86.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olariaan Swiftburn::268592|r.
    .target Olariaan Swiftburn::268592
    .turnin 97245 >>Turn in Call of Fire
    .accept 97257 >>Accept Call of Fire
step
    .goto 2521,51.265,85.927
    .complete 97257,1 --|1/1 Complete the Ritual with Olariaan
step
    .goto 2521,58.312,78.827
    .complete 97257,2 --|1/1 Light the Brazier of Eternal Flame
step
    .goto 2521,58.315,78.512
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sessaria Skystride::252382|r.
    .target Sessaria Skystride::252382
    .turnin 97257 >>Turn in Call of Fire
]])
