-- Main 1-14 Skyborne leveling guide
RXPGuides.RegisterGuide([[
#forever
#version 1
#name 1-14 Zephras Isle
#displayname 1-14 Skyborne << Alliance
#displayname 1-14 Skyborne << Horde
#group RestedXP Forever Guide (A) << Alliance
#group RestedXP Forever Guide (H) << Horde
#subgroup Speedrun Guide 1-20 << Alliance
#subgroup Speedrun Guide 1-22 << Horde
#defaultfor Skyborne

step
    .goto 2521,42.82,23.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ailee Farheart|r.
    .accept 92460 >>Accept Coming of Age
    .target Ailee Farheart
step
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rorian the Dayseeker|r.
    .turnin 92460 >>Turn in Coming of Age
    .target Rorian the Dayseeker
    .accept 92461 >>Accept Harmony in Balance
step
    .goto 2521,43.44,24.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elatrell Featherlight|r.
    .accept 92462 >>Accept Infestation Investigation
    -- .useitem 264908
    .target Elatrell Featherlight
step << !Shaman
    #hidewindow
    #completewith Juvenile Vuldren
    #loop
    .goto 2521,44.23,26,35,0
    .goto 2521,45.24,25.9,35,0
    .goto 2521,46.06,25.33,35,0
    .goto 2521,46.77,27.83,35,0
    .goto 2521,45.27,28.36,35,0
    .goto 2521,43.84,28.39,35,0
    .goto 2521,42.88,27.52,35,0
    +1
step << Shaman
    #hidewindow
    #completewith Juvenile Vuldren Grind
    #loop
    .goto 2521,44.23,26,35,0
    .goto 2521,45.24,25.9,35,0
    .goto 2521,46.06,25.33,35,0
    .goto 2521,46.77,27.83,35,0
    .goto 2521,45.27,28.36,35,0
    .goto 2521,43.84,28.39,35,0
    .goto 2521,42.88,27.52,35,0
    +1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Juvenile Vuldren|r.
    .complete 92461,1 --8/8 Juvenile Vuldren slain
    .mob Juvenile Vuldren
step
    >>Kill |cRXP_ENEMY_Pesky Cirrusfly|r.
    .complete 92462,1 --8/8 Pesky Cirrusfly slain
    .mob Pesky Cirrusfly
step
    #label Juvenile Vuldren
    >>Kill |cRXP_ENEMY_Juvenile Vuldren|r.
    .complete 92461,1 --8/8 Juvenile Vuldren slain
    .mob Juvenile Vuldren
step << Shaman
    #label Juvenile Vuldren Grind
    .xp 2+480 >>Grind to 480+/900xp to reach level 3 after turn ins for the totem quest.
step
    .goto 2521,43.44,24.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elatrell Featherlight|r.
    *|cRXP_WARN_Don't use |r|T132845:0|t[Walk on Air] |cRXP_WARN_as we need it soon|r.
    .turnin 92462 >>Turn in Infestation Investigation
    .accept 92463 >>Accept The Cirrusfly Queen
    .target Elatrell Featherlight
step << Warrior
    .goto 2521,43.66,24.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blademaster Ren|r.
    .train 6673 >>Train |T132333:0|t[Battle Shout]
    .skipgossipid 136813,1
    .target Blademaster Ren
    .money <0.0010
    .xp <1,1
    .train 5242,1
step
    #completewith next
    #label Anchors of Zephras
    .goto 2521,43.53,24.34,20,0
    .goto 2521,43.83,24.13,10,0
    .goto 2521,43.78,24.38,5,0
    .goto 2521,43.66,24.25,5,0
    .goto 2521,43.75,24.09,5,0
    .goto 2521,43.84,24.3,5,0
    .goto 2521,43.66,24.23,5,0
    .goto 2521,43.83,24.18,5,0
    .goto 2521,43.83,24.32,8,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halaan Hawk-Eye|r.
    .accept 94414 >>Accept The Anchors of Zephras
    .target Halaan Hawk-Eye
step
    #completewith Anchors of Zephras
    .goto 2521,43.83,23.66,15 >>Enter the building and climb the spiral staircase.
step
    #requires Anchors of Zephras
    .goto 2521,43.80,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halaan Hawk-Eye|r at the top of the tower.
    .accept 94414 >>Accept The Anchors of Zephras
    .target Halaan Hawk-Eye
step
    .goto 2521,43.80,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halaan Hawk-Eye|r.
    .complete 94414,1 --View the Anchor Pylon
    .skipgossipid 137720,1
    .target Halaan Hawk-Eye
step
    .goto 2521,43.80,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halaan Hawk-Eye|r.
    *Move or press ESC to cancel.
    .turnin 94414 >>Turn in The Anchors of Zephras
    .target Halaan Hawk-Eye
step
    .goto 2521,43.64,24.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Myriaal Mistwake|r.
    .accept 92474 >>Accept Falling With Style
    .target Myriaal Mistwake
step
    #completewith next
    #label Harmony in Balance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rorian the Dayseeker|r.
    .turnin 92461 >>Turn in Harmony in Balance
    .target Rorian the Dayseeker
step
    #completewith Harmony in Balance
    .goto 2521,42.06,23.48
    >>While falling from the tower, use |T132845:0|t[Walk on Air] and aim for the quest giver.
    *You can also just jump and spam the button on the ground.
    .complete 92474,1 --Use Walk on Air
    .macro Walk on Air, 132845 >>/use Walk on Air
    -- .macro Cancel Walk on Air,132745 >>/cancelaura Walk on Air
step
    #requires Harmony in Balance
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rorian the Dayseeker|r.
    .turnin 92461 >>Turn in Harmony in Balance
    .target Rorian the Dayseeker
    .turnin 92474 >>Turn in Falling With Style
    .accept 92464 >>Accept Elemental Unrest
    .accept 92481 >>Accept A Student of the Arcane << Mage
    .accept 92483 >>Accept At Home in the Shadows << Rogue
    .accept 92482 >>Accept The Way of the Hunter << Hunter
    .accept 92484 >>Accept Embracing the Elements << Shaman
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
step << Mage
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorii Brightwhisper|r.
    .turnin 92481 >>Turn in A Student of the Arcane
    .target Dorii Brightwhisper
step << Mage
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorii Brightwhisper|r.
    .train 1459 >>Train |T135932:0|t[Arcane Intellect]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper
    .money <0.0010
    .xp <1,1
step << Shaman
    .goto 2521,42.790,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windshaper Boro::251374|r
    .target Windshaper Boro::251374
    .turnin 92484 >>Turn in Embracing the Elements
    .accept 92466 >>Accept Call of Earth
step << Shaman
    .goto 2521,42.79,23.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windshaper Boro|r.
    .train 8017 >>Train |T136086:0|t[Rockbiter]
    .target Windshaper Boro
    .money <0.0010
    .xp <1,1
step << Hunter
    .goto 2521,42.47,23.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai'ree Farsight|r.
    .turnin 92482 >>Turn in The Way of the Hunter
    .target Tai'ree Farsight
step << Horde
    .goto 2521,42.60,24.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ventaari Brightwish|r.
    .accept 92598 >>Accept The Gift of Skysight
    .target Ventaari Brightwish
step << !Warrior !Rogue !Mage
    --still loads in places it shouldn't no idea why
    .isNotOnQuest 93552
    .isQuestAvailable 93552
    .goto 2521,42.749,24.496
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uualia Suncrest::251537|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r << !Hunter !Shaman
    >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_from her|r << Hunter
    .collect 159,10 << !Hunter !Shaman --Refreshing Spring Water (10)
    .collect 2512,1000 << Hunter --Rough Arrow (1000)
    .target Uualia Suncrest::251537
    .subzoneskip 16635,1
    .money <0.0050 << !Hunter
    .money <0.0040 << Hunter
step << Horde
    .isNotOnQuest 93552
    .isQuestAvailable 93552
    .goto 2521,42.749,24.496
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uualia Suncrest::251537|r
    .vendor >>|cRXP_WARN_Vendor trash|r
    .target Uualia Suncrest::251537
step << Alliance
    #completewith next
    #label Harvesting Windstones
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalia the Collector|r.
    .accept 93552 >>Accept Harvesting Windstones
    .target Dalia the Collector
step << Alliance
    #completewith Harvesting Windstones
    .goto 2521,43.41,23.51
    .vendor >>|cRXP_WARN_Vendor trash|r
step
    #requires Harvesting Windstones
    .goto 2521,43.37,23.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalia the Collector|r.
    .accept 93552 >>Accept Harvesting Windstones
    .target Dalia the Collector
step << Alliance
    .goto 2521,43.33,24.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falorne Fallwind|r.
    .accept 92597 >>Accept Reading the Ley Lines
    .target Falorne Fallwind
step
    #completewith next
    .goto 2521,43.82,25.41,10,0
    .goto 2521,44.23,24.96,10,0
    .goto 2521,44.28,27.32,25,0
    .goto 2521,45.33,29.15,30,0
    .goto 2521,46.77,27.96,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystals|r
    .complete 93552,1 --15/15 Windstone Cluster
step
    .goto 2521,48.41,28.37
    >>Kill |cRXP_ENEMY_Cirrusfly Queen|r.
    .complete 92463,1 --1/1 Cirrusfly Queen slain
    .mob Cirrusfly Queen
step
    #completewith next
    .goto 2521,47.41,26.44,20,0
    .goto 2521,46.62,24.59,30,0
    .goto 2521,47.17,23.53,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystals|r
    .complete 93552,1 --15/15 Windstone Cluster
step
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yala Windwatcher|r.
    .turnin 92464 >>Turn in Elemental Unrest
    .accept 92465 >>Accept Agitators
    .target Yala Windwatcher
step
    #completewith UseRacialAbility
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystals|r
    .complete 93552,1 --15/15 Windstone Cluster
step
    #completewith UseRacialAbility
    >>Kill |cRXP_ENEMY_Al'Aketh Convert|r and |cRXP_ENEMY_Roiling Winds|r.
    *|cRXP_WARN_Priotize |cRXP_ENEMY_Roiling Winds|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob Al'Aketh Convert
    .mob Roiling Winds
step << Alliance
    #label UseRacialAbility
    .goto 2521,46.34,17.91
    >>Use |T236219:0|t[Read Ley Line] near the Thendal Grove Ley Line
    *|cRXP_WARN_Found throughout the zone|r |cRXP_WARN_Use|r |T236219:0|t[Read Ley Line] |cRXP_WARN_near one to gain 100% Mana and Food Regen for 15 min instead of 15 sec|r.
    .complete 92597,1 --Use your Read Ley Line ability near the Thendal Grove Ley Line
    .usespell 1259705 << Alliance
step << Horde
    #label UseRacialAbility
    .goto 2521,48.4,20.4
    >>Use |T1029587:0|t[Skysight] near the |cRXP_PICK_Elemental Convergence|r.
    *|cRXP_WARN_Found throughout the zone. Use |T1029587:0|t[Skysight] near one to gain 10% movement speed for 15 min instead of 15 sec.|r
    .complete 92598,1 --Use your Skysight ability near the Elemental Convergence
    .macro Skysight,1029587 >>/use spell:1259686
step
    #hidewindow
    #completewith Windstone Cluster
    #loop
    .goto 2521,46.85,17.68,15,0
    .goto 2521,47.22,19,30,0
    .goto 2521,48.3,19.06,50,0
    .goto 2521,47.55,21.06,35,0
    .goto 2521,46.74,20.49,35,0
    .goto 2521,48.97,20.86,40,0
    .goto 2521,47.41,21.14,30,0
    .goto 2521,45.82,19.09,40,0
    +1
step
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystals|r
    .complete 93552,1 --15/15 Windstone Cluster
step
    #label Al'Aketh Convert
    >>Kill |cRXP_ENEMY_Al'Aketh Convert|r and |cRXP_ENEMY_Roiling Winds|r.
    *Loot them for the |T1020384:0|t[Signet of Air] << Shaman
    *|cRXP_WARN_Priotize |cRXP_ENEMY_Roiling Winds|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .complete 92466,1 << Shaman --|1/1 Signet of Akir
    .mob Al'Aketh Convert::251160
    .mob Roiling Winds
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystals|r
    .complete 93552,1 --15/15 Windstone Cluster
step
    #label Windstone Cluster
    .xp 3+300 >>Grind to 300+/1400xp
step
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yala Windwatcher|r.
    .turnin 92465 >>Turn in Agitators
    .accept 92469 >>Accept Return to Rorian
    .target Yala Windwatcher
step
    #completewith next
    #label Harvesting Windstones2
    .goto 2521,43.89,22.27,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalia the Collector|r.
    *|cRXP_WARN_Choose between mining,herbing or skinning profession|r
    .turnin 93552 >>Turn in Harvesting Windstones
    .target Dalia the Collector
step
    #completewith Harvesting Windstones2
    #hidewindow
    .goto 2521,43.37,23.98,60 >>1
step
    #requires Harvesting Windstones2
    .goto 2521,43.37,23.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalia the Collector|r.
    *|cRXP_WARN_Choose between mining,herbing or skinning profession|r
    .turnin 93552 >>Turn in Harvesting Windstones
    .target Dalia the Collector
step
    .goto 2521,43.37,23.98
    .itemcount 247840,1
    .train 2575 >>Use |T4625105:0|t[Mining for Dummies].
    .use 247840
step
    .goto 2521,43.37,23.98
    .itemcount 247841,1
    .train 2366 >>Use |T4624731:0|t[Wild Harvest].
    .use 247841
step
    .goto 2521,43.37,23.98
    .itemcount 247846,1
    .train 8613 >>Use |T4624731:0|t[Pelt Collecting for Beginners].
    .use 247846
step << Rogue
    .goto 2521,43.74,24.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akeri Duskblade|r.
    .turnin 92483 >>Turn in At Home in the Shadows
    .target Akeri Duskblade
step << Alliance
    #arrowtext Talk to\n|cRXP_FRIENDLY_Falorne Fallwind|r
    .goto 2521,43.33,24.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falorne Fallwind|r.
    .turnin 92597 >>Turn in Reading the Ley Lines
    .target Falorne Fallwind
step
    .goto 2521,43.44,24.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elatrell Featherlight|r.
    .turnin 92463 >>Turn in The Cirrusfly Queen
    .target Elatrell Featherlight
step
    #arrowtext Use\n|T4625105:0|t[Mining for Dummies]
    .goto 2521,43.37,23.98
    .itemcount 247840,1
    .train 2575 >>Use |T4625105:0|t[Mining for Dummies].
    .use 247840
step
    #arrowtext Use\n|T4624731:0|t[Wild Harvest]
    .goto 2521,43.37,23.98
    .itemcount 247841,1
    .train 2366 >>Use |T4624731:0|t[Wild Harvest].
    .use 247841
step
    #arrowtext Use\n|T4624731:0|t[Pelt Collecting for Beginners]
    .goto 2521,43.37,23.98
    .itemcount 247846,1
    .train 8613 >>Use |T4624731:0|t[Pelt Collecting for Beginners].
    .use 247846
step << Warrior
    .train 6546,1
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blademaster Ren|r.
    .train 100 >>Train |T132333:0|t[Charge]
    .train 6178,1
    .train 772 >>Train |T132155:0|t[Rend]
    .skipgossipid 136813,1
    .target Blademaster Ren
    .money <0.02
    .xp <4,1
    .isOnQuest 92469
step << Warrior
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blademaster Ren|r.
    .turnin 92532 >>Turn in The Warrior's Path
    .target Blademaster Ren
step << Horde
    #completewith GiftOfSkysightVendorA
    #label TurnInGiftOfSkysightA
    #hidewindow
    .turnin 92598 >>Turn in The Gift of Skysight
    .target Ventaari Brightwish::251487
step << Horde
    #completewith TurnInGiftOfSkysightA
    .train 2366,3
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uualia Suncrest::251537|r
    .collect 277113,1 >>Buy an |T133637:0|t[Apprentice's Herb Pouch]
    .target Uualia Suncrest::251537
step << Horde
    #completewith TurnInGiftOfSkysightA
    .train 2575,3
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uualia Suncrest::251537|r
    .collect 2901,1 >>Buy a |T134708:0|t[Mining Pick]
    .collect 277115,1 >>Buy an |T133635:0|t[Apprentice's Mining Pack]
    .target Uualia Suncrest::251537
step << Horde
    #completewith TurnInGiftOfSkysightA
    .train 8613,3
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uualia Suncrest::251537|r
    .collect 7005,1 >>Buy a |T135637:0|t[Skinning Knife]
    .collect 277114,1 >>Buy an |T133634:0|t[Apprentice's Skinning Satchel]
    .target Uualia Suncrest::251537
step << Horde
    #completewith TurnInGiftOfSkysightA
    #label GiftOfSkysightVendorA
    .goto 2521,42.76,24.49
    .vendor >>|cRXP_WARN_Vendor trash|r
step << Horde
    #requires TurnInGiftOfSkysightA
    .goto 2521,42.607,24.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ventaari Brightwish::251487|r
    .turnin 92598 >>Turn in The Gift of Skysight
    .target Ventaari Brightwish::251487
step << Hunter
    .goto 2521,42.467,23.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai'ree Farsight::251376|r
    .train 13163 >>Train |T132159:0|t[Aspect of the Monkey]
    .train 1978 >>Train |T132204:0|t[Serpent Sting]
    .skipgossipid 136808
    .xp <4,1
    .money <0.02
    .target Tai'ree Farsight::251376
step
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rorian the Dayseeker|r.
    .turnin 92469 >>Turn in Return to Rorian
    .accept 92471 >>Accept Aetheen of the Gales -- Unlocks at 4
    .target Rorian the Dayseeker
step << Druid
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xyton Silverwind::251373|r.
    .train 8921 >>Train |T136096:0|t[Moonfire]
    .train 774 >>Train |T136081:0|t[Rejuvenation]
    .skipgossipid 136805
    .xp <4,1
    .money <0.02
    .target Xyton Silverwind::251373
step << Mage
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorii Brightwhisper|r.
    .train 116 >>Train |T135932:0|t[Frostbolt]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper
    .money <0.01
    .xp <4,1
step
    .goto 2521,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aetheen of the Gales|r.
    .turnin 92471 >>Turn in Aetheen of the Gales
    .accept 92470 >>Accept Foul Matriarch
    .target Aetheen of the Gales
step << Shaman
    .goto 2521,42.788,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windshaper Boro::251374|r
    .turnin 92466 >>Turn in Call of Earth
    .accept 92467 >>Accept Call of Earth
    .target Windshaper Boro::251374
step << Shaman
    .goto 2521,42.788,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windshaper Boro|r.
    .train 8042 >>Train |T136026:0|t[Earth Shock]
    .target Windshaper Boro
    .money <0.01
    .xp <4,1
step << Shaman
    .goto 2521,48.802,25.869,25,0
    .goto 2521,49.677,23.806
    >>Use the |T134743:0|t[Earth Sapta].
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Minor Manifestation of Earth::251166|r
    .turnin 92467 >>Turn in Call of Earth
    .accept 92468 >>Accept Call of Earth
    .target Minor Manifestation of Earth::251166
    .use 6635
step << Shaman
    #completewith next
    #label TurnInCallOfEarthA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windshaper Boro::251374|r
    .turnin 92468 >>Turn in Call of Earth
    .target Windshaper Boro::251374
step << Shaman
    #completewith TurnInCallOfEarthA
    .goto 2521,48.911,20.902
    .deathskip >> Die and respawn at the Spirit Healer
    .target Spirit Healer
step << Shaman
    #requires TurnInCallOfEarthA
    .goto 2521,42.787,23.564
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windshaper Boro::251374|r
    .turnin 92468 >>Turn in Call of Earth
    .target Windshaper Boro::251374
step << Alliance
    #completewith AggressiveVendor
    #label Aggressive Encroachment
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valreaa Valewind|r.
    .accept 92473 >>Accept Aggressive Encroachment
    .target Valreaa Valewind
step << Alliance
    #completewith Aggressive Encroachment
    .train 2366,3
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uualia Suncrest::251537|r
    .collect 277113,1 >>Buy an |T133637:0|t[Apprentice's Herb Pouch]
    .target Uualia Suncrest::251537
step << Alliance
    #completewith Aggressive Encroachment
    .train 2575,3
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uualia Suncrest::251537|r
    .collect 2901,1 >>Buy a |T134708:0|t[Mining Pick]
    .collect 277115,1 >>Buy an |T133635:0|t[Apprentice's Mining Pack]
    .target Uualia Suncrest::251537
step << Alliance
    #completewith Aggressive Encroachment
    .train 8613,3
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uualia Suncrest::251537|r
    .collect 7005,1 >>Buy a |T135637:0|t[Skinning Knife]
    .collect 277114,1 >>Buy an |T133634:0|t[Apprentice's Skinning Satchel]
    .target Uualia Suncrest::251537
step << Alliance
    #label AggressiveVendor
    #completewith Aggressive Encroachment
    .goto 2521,42.76,24.5
    .vendor >>|cRXP_WARN_Vendor trash|r
    .collect 159,10 >>Buy |T132794:0|t[Refreshing Spring Water] << Mage
step
    #requires Aggressive Encroachment
    .goto 2521,42.41,25.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valreaa Valewind|r.
    .accept 92473 >>Accept Aggressive Encroachment
    .target Valreaa Valewind
step
    #completewith Scrawny Usera
    +Manually drag the reagent bag into the reagent bag slot. Right-clicking it will place it in an empty general bag slot instead
step
    #completewith Scrawny Usera
    .train 2366,3
    .cast 2383 >>Cast |T133939:0|t[Find Herbs] to track nearby herbs
    *|cRXP_WARN_You can gather herbs along the way to start working toward 20 Herbalism for a later quest. This is optional, especially at launch, so do it at your own risk|r
    .usespell 2383
step
    #completewith Scrawny Usera
    .train 2656,3
    .cast 2580 >>Cast |T136025:0|t[Find Minerals] to track nearby ore deposits
    *|cRXP_WARN_You can mine ore along the way to start working toward 20 Mining for a later quest. This is optional, especially at launch, so do it at your own risk|r
    .usespell 2383
step
    #completewith Scrawny Usera
    .train 8613,3
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
    >>Kill |cRXP_ENEMY_Bears|r. Loot them for |T132136:0|t[|cRXP_LOOT_Scrawny Ursera Claw|r].
    .complete 92473,1 --6/6 Scrawny Ursera Claw
    .mob Scrawny Ursera
step
    #completewith next
    >>Kill |cRXP_ENEMY_Ursera Scavenger|r.
    .complete 92470,1 --8/8 Ursera Scavenger slain
    .mob Ursera Scavenger
step
    #requires Scrawny Ursera Claw2
    #label Head of Urs'anah
    .goto 2521,37.52,25.6,30,0
    .goto 2521,37.36,24.63,30,0
    .goto 2521,35.88,23.31,10,0
    .goto 2521,35.65,26.06
    >>Kill |cRXP_ENEMY_Urs'anah|r. Loot him for |T5840609:0|t[|cRXP_LOOT_Head of Urs'anah|r].
    .complete 92470,2 --1/1 Head of Urs'anah
    .mob Urs'anah
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
    >>Kill |cRXP_ENEMY_Ursera Scavenger|r.
    .complete 92470,1 --8/8 Ursera Scavenger slain
    .mob Ursera Scavenger
step
    #completewith next
    #label Turn in Foul Matriarch
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aetheen of the Gales|r.
    .turnin 92470 >>Turn in Foul Matriarch
step
    #completewith Turn in Foul Matriarch
    #loop
    .goto 2521,36.47,23.67,30,0
    .goto 2521,35.88,23.79,30,0
    .goto 2521,35.71,25.7,30,0
    .deathskip >>Die to mobs and resurrect at the graveyard
    *|cRXP_WARN_If everything is dead, consider running out|r.
    .macro Sit,134400 >>/sit
    .subzoneskip 16673,1
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer
step
    #requires Turn in Foul Matriarch
    .goto 2521,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aetheen of the Gales|r.
    .turnin 92470 >>Turn in Foul Matriarch
    .accept 92472 >>Accept The Next Step
    .accept 96638 >>Accept The Adventurer
    .target Aetheen of the Gales
    .skipgossipid 96031 --Return me to life.
step
    #completewith next
    #label Aggressive Encroachment2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valreaa Valewind|r.
    .turnin 92473 >>Turn in Aggressive Encroachment
    .target Valreaa Valewind
step
    #completewith Aggressive Encroachment2
    .goto 2521,42.76,24.52
    .vendor >>|cRXP_WARN_Vendor trash|r
step
    #requires Aggressive Encroachment2
    .goto 2521,42.41,25.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valreaa Valewind|r.
    .turnin 92473 >>Turn in Aggressive Encroachment
    .target Valreaa Valewind
step
    #completewith next
    #label Al'Aketh Thugs
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanaa Nightwind|r.
    .accept 92544 >>Accept Al'Aketh Thugs
    .target Hanaa Nightwind
step
    #completewith Al'Aketh Thugs
    .goto 2521,38.31,30.17,100 >>Kill mobs along the way if you can do so without losing time.
step
    #requires Al'Aketh Thugs
    .goto 2521,38.31,30.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanaa Nightwind|r.
    .accept 92544 >>Accept Al'Aketh Thugs
    .target Hanaa Nightwind
step
    #completewith next
    >>Kill |cRXP_ENEMY_Al'Aketh Brute|r and |cRXP_ENEMY_Al'Aketh Neophyte|r.
    .complete 92544,1 --|6/6 Al'Aketh Brute slain
    .complete 92544,2 --|4/4 Al'Aketh Neophyte slain
    .mob Al'Aketh Brute::251145
    .mob Al'Aketh Neophyte::251448
step
    #completewith next
    #label Malduko Cloudcrush
    .goto 2521,37.04,32.93,20,0
    >>Kill |cRXP_ENEMY_Malduko Cloudcrush|r.
    .complete 92544,3 --|1/1 Malduko Cloudcrush slain
    .mob Malduko Cloudcrush::256935
step
    #completewith Malduko Cloudcrush
    .goto 2521,36.032,33.545,50 >>Head to the upper level of the temple
step
    #requires Malduko Cloudcrush
    .goto 2521,36.032,33.545
    >>Kill |cRXP_ENEMY_Malduko Cloudcrush|r atop the temple.
    .complete 92544,3 --|1/1 Malduko Cloudcrush slain
    .mob Malduko Cloudcrush::256935
step << Horde
    .isOnQuest 92544
    .goto 2521,35.910,33.605
    .cast 1259686 >>Use |T1029587:0|t[Skysight] for the 10% movement speed buff.
    .cooldown spell,1259686,>0,1
step << Alliance
    .isOnQuest 92544
    .goto 2521,35.57,33.84
    .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
    .cooldown spell,1259705,>0,1
    .usespell 1259705 << Alliance
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
    >>Kill |cRXP_ENEMY_Al'Aketh Brute|r and |cRXP_ENEMY_Al'Aketh Neophyte|r.
    *|cRXP_WARN_Refresh|r |T236219:0|t[Read Ley Line] |cRXP_WARN_near the Leyline|r << Alliance
    .usespell 1259705 << Alliance
    .complete 92544,1 --|6/6 Al'Aketh Brute slain
    .complete 92544,2 --|4/4 Al'Aketh Neophyte slain
    .mob Al'Aketh Brute::251145
    .mob Al'Aketh Neophyte::251448
    .mob Al'Aketh Ambusher::251451
step
    #label Grind6
    .xp 5+1740 >>Grind to level 5 1740+/2800xp to reach level 6 after turn ins in the next village to be able to train new spells.
step
    .goto 2521,38.32,30.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanaa Nightwind|r.
    .turnin 92544 >>Turn in Al'Aketh Thugs
    .target Hanaa Nightwind
step
    #completewith next
    +|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Windstones|r throughout the zone to obtain an item that restores health and mana.
    *If you spot a Tornado, approach it to gain 40% increased movement speed for 5 minutes. The effect ends if you deal damage.
step
    .isOnQuest 92472
    #completewith VendorStep
    #label The Next Step
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda|r.
    .turnin 92472 >>Turn in The Next Step
step
    #completewith The Next Step
    >>Kill |cRXP_ENEMY_Galestrider|r. Loot them for |T133972:0|t[|cRXP_LOOT_Strider Meat|r] and |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    *|cRXP_WARN_Do not grind here; just kill them a long the way|r
    .collect 5469,8
    .collect 6889,3
    -- .complete 92553,2 --8/8 Strider Meat
    -- .complete 92553,1 --3/3 Small Egg
    .mob Galestrider::251661
step << !Rogue !Warrior
    #completewith The Next Step
    #label VendorStep
    .goto 2521,44.72,45.47
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r << Shaman/Druid
    >>|cRXP_WARN_Save 2 silver for your class spells!|r << Shaman/Druid
    .vendor >>|cRXP_WARN_Vendor trash(don't sell strider meat & eggs|r
    .collect 1179,5 >>Buy |T142815:0|t[Ice Cold Milk] << Mage
step << Rogue/Warrior
    #completewith The Next Step
    #label VendorStep
    .goto 2521,44.67,45.19,10,0
    .goto 2521,44.78,45.05
    .vendor >>|cRXP_WARN_Vendor trash(don't sell strider meat & eggs|r
    .target Belandiel Farflight
step
    #requires The Next Step
    .isOnQuest 92472
    .goto 2521,45.67,45.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda|r.
    .turnin 92472 >>Turn in The Next Step
step
    .goto 2521,45.67,45.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda|r.
    .accept 93461 >>Accept Welcome to Shen'dar Village << Alliance
    .accept 92514 >>Accept Welcome to Shen'dar Village << Horde
    .target Constable Aonda
step << Mage
    .goto 2521,45.1,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorii Brightwhisper|r.
    .train 143 >>Train |T135812:0|t[Fireball (Rank 2)]
    .train 2136 >>Train |T135807:0|t[Fire Blast]
    .train 1296017 >>Train |T8188276:0|t[Comprehend Scroll]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper
    .money <0.03
    .xp <6,1
step << Alliance
    .goto 2521,45.04,46.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rathiril Sunlance|r.
    .complete 93461,1 --1/1 Speak with Rathiril Sunlance
    .accept 92596 >>Accept The High Order
    .target Rathiril Sunlance
step << Alliance
    .goto 2521,45.04,46.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rathiril Sunlance|r.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rathiril Sunlance|r.
    .turnin 92596 >>Turn in The High Order
    .accept 94413 >>Accept A Magical Affront
    .target Rathiril Sunlance
step << Horde
    .goto 2521,43.52,44.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illaya Amberwind|r.
    .complete 92514,1 --1/1 Speak with Illaya Amberwind
    .accept 92595 >>Accept The Windshapers
    .target Illaya Amberwind
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illaya Amberwind|r.
    .turnin 92595 >>Turn in The Windshapers
    .accept 94411 >>Accept Meddlesome Mages
    .target Illaya Amberwind
step << Shaman
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aarnor Galestrike::254082|r
    .trainer >>Train your class spells
    .target Aarnor Galestrike::254082
    .money <0.01
    .xp <6,1
step
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Innkeeper|r.
    .complete 92514,2 << Horde --1/1 Speak with the Innkeeper
    .target the Innkeeper
step << Horde
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Innkeeper|r.
    .home >>Set your Hearthstone to Shen'dar Village
    .target the Innkeeper
step << Horde Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade|r
    .train 1757 >> Train |T136189:0|t[Sinister Strike (Rank 2)]
    .train 1776 >> Train |T132155:0|t[Gouge]
    .train 1777,1
    .skipgossipid 136810
    .target Miriaan Mistblade
    .money <0.02
    .xp <6,1
step << Horde Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade|r
    .train 1757 >> Train |T136189:0|t[Sinister Strike (Rank 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade
    .money <0.01
    .xp <6,1
step << Horde Mage
    #completewith next
    #label immediate wand
    #hidewindow
    .isOnQuest 92514
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade|r
    .train 7411 >>Train |T136189:0|t[Enchanting] |cRXP_WARN_for an immediate wand|r
    .target Nasalanna Windsinger
step << Horde Mage
    #completewith immediate wand
    .goto 2521,43.24,43.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade|r and buy |T133942:0|t[Copper Rod], |T132841:0|t[Mote of Magic] and |T135435:0|t[Simple Wood].
    .collect 6217,1
    .collect 247786,1
    .collect 4470,1
    .skipgossipid 137558
    .target Nasalanna Windsinger
step << Horde Mage
    #requires immediate wand
    .isOnQuest 92514
    .goto 2521,43.24,43.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade|r
    .train 7411 >>Train |T136189:0|t[Enchanting] |cRXP_WARN_for an immediate wand|r
    .skipgossipid 137559
    .target Nasalanna Windsinger
step << Horde Mage
    .isOnQuest 92514
    .train 7411,3
    >>Use the |T135225:0|t[Runed Copper Rod] macro below, then use the |T135645:0|t[Novice's Practice Wand] macro
    *Afterward, enchant your bracers with Stamina if you have a pair equipped
    .collect 6218,1
    .collect 247789,1
    .macro Runed Copper Rod,135225 >>/cast Enchanting\n/run C_TradeSkillUI.CraftRecipe(7421,1)
    .macro Novice's Practice Wand,135645 >>/run C_TradeSkillUI.CraftRecipe(1245321,1)
step
--abandon enchanting
step << Alliance Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade|r
    .train 1757 >> Train |T136189:0|t[Sinister Strike (Rank 2)]
    .train 1776 >> Train |T132155:0|t[Gouge]
    .train 1777,1
    .skipgossipid 136810
    .target Miriaan Mistblade
    .money <0.02
    .xp <6,1
step << Alliance Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade|r
    .train 1757 >> Train |T136189:0|t[Sinister Strike (Rank 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade
    .money <0.01
    .xp <6,1
step << Alliance Mage
    #completewith next
    #label immediate wand
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade|r
    .train 7411 >>Train |T136189:0|t[Enchanting] |cRXP_WARN_for immediate wand|r
    .target Nasalanna Windsinger
step << Alliance Mage
    #completewith immediate wand
    .isOnQuest 93461
    .goto 2521,43.24,43.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade|r and buy |T133942:0|t[Copper Rod], |T132841:0|t[Mote of Magic] and |T135435:0|t[Simple Wood].
    .collect 6217,1
    .collect 247786,3
    .collect 4470,1
    .skipgossipid 137558
    .target Nasalanna Windsinger
step << Alliance Mage
    #requires immediate wand
    .isOnQuest 93461
    .goto 2521,43.24,43.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade|r
    .train 7411 >>Train |T136189:0|t[Enchanting] |cRXP_WARN_for immediate wand|r
    .skipgossipid 137559
    .target Nasalanna Windsinger
step << Alliance Mage
    .isOnQuest 93461
    .train 7411,3
    >>Use the |T135225:0|t[Runed Copper Rod] macro below, then use the |T135645:0|t[Novice's Practice Wand] macro
    *Afterward, enchant your bracers with Stamina if you have a pair equipped
    .collect 6218,1
    .collect 247789,1
    .macro Runed Copper Rod,135225 >>/cast Enchanting\n/run C_TradeSkillUI.CraftRecipe(7421,1)
    .macro Novice's Practice Wand,135645 >>/run C_TradeSkillUI.CraftRecipe(1245321,1)
step
--abandon enchanting
step << Alliance
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Innkeeper|r.
    .complete 93461,2 << Alliance --1/1 Speak with the Innkeeper
    .target the Innkeeper
-- step << Alliance
--     .goto 2521,43.02,43.24
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Innkeeper|r.
--     .home >>Set your Hearthstone to Shen'dar Village
--     .target the Innkeeper
step << Warrior
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corsan Earthrazer|r
    .train 3127 >> Train |T132269:0|t[Parry]
    .skipgossipid 136813
    .target Corsan Earthrazer
    .money <0.01
    .xp <6,1
step
    .goto 2521,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda|r.
    .turnin 93461 >>Turn in Welcome to Shen'dar Village << Alliance
    .turnin 92514 >>Turn in Welcome to Shen'dar Village << Horde
    .accept 92517 >>Accept The Criminal Element
    .target Constable Aonda
step << Hunter
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elayaa Easewind::254084|r.
    .train 3044 >>Train |T132218:0|t[Arcane Shot]
    .train 1130 >>Train |T132212:0|t[Hunter's Mark]
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
    .goto 2521,44.47,44.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teeri Wellwind|r.
    .accept 93319 >>Accept Pilfered Windstones
    .accept 92516 >>Accept Hippogryph Harrassment
    .target Teeri Wellwind
step
    .goto 2521,44.68,44.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Indari Sunseam|r.
    .accept 92515 >>Accept The Problem With Prideclaws
    .target Indari Sunseam
step
    .goto 2521,44.88,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taleen Shimmerthread|r.
    .accept 93951 >>Accept A Little Beauty
    .target Taleen Shimmerthread
step << Shaman/Druid
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tephri Tinderforged::257421|r
    >>Buy a|r |T135145:0|t[Walking Stick] |cRXP_BUY_from him|r
    .collect 2495,1,761,1 --Collect Walking Stick (1)
    .target Tephri Tinderforged::257421
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Hunter
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tephri Tinderforged::257421|r
    >>|cRXP_BUY_Buy and equip a|r |T135499:0|t[Hornwood Recurve Bow]
    >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_until your Quiver is full|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Tephri Tinderforged::257421
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Warrior
    .isOnQuest 92517
    .isQuestNotComplete 92517
    .subzoneskip 16624,1
    .goto 2521,44.8,44.18
    #arrowtext Talk to\n|cRXP_FRIENDLY_Tephri Thriceforged|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tephri Thriceforged::257421|r and buy |T133053:0|t[Wooden Mallet].
    .collect 2493,1 -- Wooden Mallet
    .target Tephri Thriceforged
step << Rogue
    .isOnQuest 92517
    .isQuestNotComplete 92517
    .subzoneskip 16624,1
    .goto 2521,44.8,44.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tephri Thriceforged::257421|r and buy |T135321:0|t[Gladius].
    .collect 2488,1 -- Gladius
    .target Tephri Thriceforged
step
    .goto 2521,43.850,43.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .accept 92553 >>Accept Restocking the Larders
    .target Zerril Softbreeze::251905
-- step
--     .isQuestTurnedIn 92553
--     .isQuestAvailable 92517
--     .itemcount 1971,<1
--     .goto 2521,43.86,43.85
--     >>Use the |T132834:0|t[Herb Baked Egg] macro below to craft.
--     *|cRXP_WARN_Any buff food grants 5% increased experience from kills for 15 minutes|r.
--     .collect 6888,1
--     .macro Herb Baked Egg,132834 >>/cast cooking\n/run C_TradeSkillUI.CraftRecipe(8604,1)
step
    #completewith BadwindBennicA
    >>Kill |cRXP_ENEMY_Prideclaws|r. Loot them for the |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #completewith BadwindBennicA
    >>Kill |cRXP_ENEMY_Galestrider|r. Loot them for |T133972:0|t[|cRXP_LOOT_Strider Meat|r] and |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    *|cRXP_WARN_Priotize them|r
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob Galestrider::251661
step << Horde
    .goto 2521,46.411,38.562
    --loop maybe
    >>Kill the |cRXP_ENEMY_High Order Apprentices::257521|r.
    .complete 94411,1 --|6/6 High Order Apprentice defeated
    .mob High Order Apprentice::257521
step
    #completewith BadwindBennicB
    >>Kill |cRXP_ENEMY_Highlands Bandits|r. Loot them for the |T5172975:0|t[|cRXP_LOOT_Pilfered Windstone|r].
    .complete 92517,1 --|10/10 Highlands Bandit slain
    .complete 93319,1 --|10/10 Pilfered Windstone
    .mob Highlands Bandit::251918
step
    #completewith next
    #label BadwindBennicA
    >>Kill |cRXP_ENEMY_"Badwind" Bennic|r.
    .complete 92517,2 --|1/1 "Badwind" Bennic slain
    .mob "Badwind" Bennic::255534
step
    #completewith BadwindBennicA
    .goto 2521,48.813,36.434,10,0
    .goto 2521,49.355,35.793,10,0
    .goto 2521,49.720,36.030,10,0
    .goto 2521,49.982,35.679,10,0
    .goto 2521,49.537,34.325,10 >>Enter the cave
step
    #requires BadwindBennicA
    #label BadwindBennicB
    .goto 2521,50.680,34.214
    >>Kill |cRXP_ENEMY_"Badwind" Bennic|r.
    *|cRXP_WARN_Refresh|r |T236219:0|t[Read Ley Line] |cRXP_WARN_near the Leyline|r << Alliance
    .usespell 1259705 << Alliance
    .complete 92517,2 --|1/1 "Badwind" Bennic slain
    .mob "Badwind" Bennic::255534
step << Alliance
    .isOnQuest 92517
    #arrowtext Use |T236219:0|t[Read Ley Line]\nnear the Ley Line
    .goto 2521,50.59,33.51
    .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
    .cooldown spell,1259705,>0,1
    .usespell 1259705 << Alliance
step
    #completewith OutCave
    >>Kill |cRXP_ENEMY_Galestrider|r. Loot them for |T133972:0|t[|cRXP_LOOT_Strider Meat|r] and |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob Galestrider::251661
step
    #completewith OutCave
    >>Kill |cRXP_ENEMY_Prideclaws|r. Loot them for the |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
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
    >>Kill |cRXP_ENEMY_Highlands Bandits|r. Loot them for the |T5172975:0|t[|cRXP_LOOT_Pilfered Windstone|r].
    .complete 92517,1 --|10/10 Highlands Bandit slain
    .complete 93319,1 --|10/10 Pilfered Windstone
    .mob Highlands Bandit::251918
-- step
--     .isOnQuest 92517
--     .hs >>Hearth to Shen'dar Village
step
    #completewith To Shendalar
    >>Kill |cRXP_ENEMY_Galestrider|r. Loot them for |T133972:0|t[|cRXP_LOOT_Strider Meat|r] and |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob Galestrider::251661
step
    #completewith To Shendalar
    >>Kill |cRXP_ENEMY_Prideclaws|r. Loot them for the |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #completewith next
    #hidewindow
    #label To Shendalar
    .train 2550 >>Train |T133971:0|t[Apprentice Cook]
step
    #completewith To Shendalar
    .goto 2521,43.86,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Zerril Softbreeze|r.
    .vendor >>Vendor Trash
    .target Zerril Softbreeze::251905
    .skipgossipid 137550
step
    #requires To Shendalar
    .goto 2521,43.850,43.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    -- .complete 96646,1 --|Learn cooking from Zerril Softbreeze in Shen'dar Village
    .train 2550 >>Train |T133971:0|t[Apprentice Cook]
    .skipgossipid 137551
    .target Zerril Softbreeze::251905
-- step
--     --improvement possible?
--     .isOnQuest 92553
--     .isQuestAvailable 92517
--     .itemcount 1971,<3
--     .goto 2521,43.86,43.85
--     >>Use the |T132834:0|t[Herb Baked Egg] macro below to craft.
--     *|cRXP_WARN_Keep at least 3 Small Eggs for a later quest|r
--     *|cRXP_WARN_Any buff food grants 5% increased experience from kills for 15 minutes|r.
--     .collect 6888,1
--     .macro Herb Baked Egg,132834 >>/cast Cooking\n/run C_TradeSkillUI.CraftRecipe(8604,1)
--TODO: Maybe add more ice cold buy steps?
step << Shaman/Druid
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tephri Tinderforged::257421|r
    >>Buy a|r |T135145:0|t[Walking Stick] |cRXP_BUY_from him|r
    .collect 2495,1,761,1 --Collect Walking Stick (1)
    .target Tephri Tinderforged::257421
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind|r.
    .turnin 96638 >>Turn in The Adventurer
    .target Raan Wildwind
    .accept 96101 >>Accept The Great Outdoors
step
    .goto 2521,41.67,44.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind|r.
    .complete 96101,1 --1/1 Use the /sit emote near the campfire
    .emote SIT,263664
    .timer 60, RP
    .target Raan Wildwind
step
    >>|cRXP_WARN_Wait until you get the Boosted Rest buff|r.
    *If you don't receive the buff on the first try, log out and back in.
    .complete 96101,2 --Gain the Boosted Rest buff
step
    .goto 2521,41.67,44.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind|r.
    .turnin 96101 >>Turn in The Great Outdoors
    .target Raan Wildwind
step
    .subzoneskip 16624,1
    .train 2575,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97970 >>Accept Camping 101: Mining
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1
    .train 8613,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97971 >>Accept Camping 101: Skinning
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 96646 >>Accept Camping 101: Cooking
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1
    .train 2366,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97968 >>Accept Camping 101: Herbalism
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1
    .train 3273,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97965 >>Accept Camping 101: First Aid
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1
    .train 7620,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97967 >>Accept Camping 101: Fishing
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1
    .train 2259,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97963 >>Accept Camping 101: Alchemy
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1
    .train 2018,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97964 >>Accept Camping 101: Blacksmithing
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1
    .train 3908,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97973 >>Accept Camping 101: Tailoring
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1
    .train 7411,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 98286 >>Accept Camping 101: Enchanting
    .target Raan Wildwind::263664
step
    .train 2108,3
    .subzoneskip 16624,1
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97969 >>Accept Camping 101: Leatherworking
    .target Raan Wildwind::263664
step << Horde
    #completewith HippogryphHarrassmentA
    #hidewindow
    #loop
    -- .goto 2521,39.66,49.62,40,0
    -- .goto 2521,38.69,50.31,40,0
    .goto 2521,36.44,50.93,40,0
    .goto 2521,35.16,51.07,40,0
    .goto 2521,34.12,51.6,40,0
    .goto 2521,34.52,52.76,40,0
    .goto 2521,35.12,54.08,40,0
    .goto 2521,35.58,53.08,40,0
    .goto 2521,34.48,52.83,40,0
    .goto 2521,36.02,54.28,40,0
    .goto 2521,35.72,55.36,40,0
    .goto 2521,35.63,57.34,40,0
    .goto 2521,37.13,56.6,40,0
    .goto 2521,36.61,58.64,40,0
    .goto 2521,38.61,56.89,40,0
    .goto 2521,40.22,56.94,40,0
    +1
step
    #completewith HippogryphHarrassmentA
    >>Kill |cRXP_ENEMY_Prideclaws|r. Loot them for the |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #completewith HippogryphHarrassmentA
    >>Kill |cRXP_ENEMY_Galestrider|r. Loot them for |T133972:0|t[|cRXP_LOOT_Strider Meat|r] and |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob Galestrider::251661
step << Alliance
    .isOnQuest 94413
    .isQuestNotComplete 94413
    .goto 2521,39,47.37
    .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
    .cooldown spell,1259705,>0,1
    .usespell 1259705 << Alliance
step << Alliance
    #loop
    .goto 2521,37.96,46.86,40,0
    .goto 2521,38.75,48.72,40,0
    .goto 2521,38.99,47.24,40,0
    >>Kill the |cRXP_ENEMY_Windshaper Novice Seer|r.
    *|cRXP_WARN_Refresh|r |T236219:0|t[Read Ley Line] |cRXP_WARN_near the Leyline|r << Alliance
    .usespell 1259705 << Alliance
    .complete 94413,1 --6/6 Windshaper Novice Seer defeated
    .mob Windshaper Novice Seer
step
    .isOnQuest 92516
    .isQuestNotComplete 92516
    .subzoneskip 16623,1
    #arrowtext Jump of the mountain\n Use |T132845:0|t[Walk on Air]
    .goto 2521,36.44,50.93
    .cast 1259416 >>Jump of the mountain and use |T132845:0|t[Walk on Air] to fly towards the waypoint.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance
    #completewith HippogryphHarrassmentA
    #hidewindow
    #loop
    .goto 2521,36.44,50.93,40,0
    .goto 2521,35.16,51.07,40,0
    .goto 2521,34.12,51.6,40,0
    .goto 2521,34.52,52.76,40,0
    .goto 2521,35.12,54.08,40,0
    .goto 2521,35.58,53.08,40,0
    .goto 2521,33.22,54.53,40,0
    .goto 2521,36.02,54.28,40,0
    .goto 2521,35.72,55.36,40,0
    .goto 2521,35.63,57.34,40,0
    .goto 2521,37.13,56.6,40,0
    .goto 2521,36.61,58.64,40,0
    .goto 2521,38.61,56.89,40,0
    .goto 2521,40.22,56.94,40,0
    .goto 2521,35.22,54.05,40,0
    .goto 2521,33.1,54.67,40,0
    +1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Hippogryph Youth|r, |cRXP_ENEMY_Hippogryph Protector|r and the |cRXP_ENEMY_Hippogryph Matriarch|r.
    *|cRXP_WARN_Keep an eye out for Windstones to recover and Tornadoes for a movement speed boost|r
    *|cRXP_WARN_Priotize |cRXP_ENEMY_Matriarch|r|r
    .complete 92516,1 --|8/8 Hippogryph Youth slain
    .complete 92516,2 --|6/6 Hippogryph Protector slain
    .complete 92516,3 --|1/1 Hippogryph Matriarch slain
    .mob Hippogryph Matriarch::251261
    .mob Hippogryph Protector::251284
    .mob Hippogryph Youth::251291
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Hippogryph Downs|r.
    .complete 93951,1 --|8/8 Hippogryph Down
step
    #label HippogryphHarrassmentA
    >>Kill |cRXP_ENEMY_Hippogryph Youth|r, |cRXP_ENEMY_Hippogryph Protector|r and the |cRXP_ENEMY_Hippogryph Matriarch|r.
    *|cRXP_WARN_Priotize |cRXP_ENEMY_Matriarch|r|r
    .complete 92516,1 --|8/8 Hippogryph Youth slain
    .complete 92516,2 --|6/6 Hippogryph Protector slain
    .complete 92516,3 --|1/1 Hippogryph Matriarch slain
    .mob Hippogryph Matriarch::251261
    .mob Hippogryph Protector::251284
    .mob Hippogryph Youth::251291
step
    #completewith VulgarasHeadA
    >>Kill |cRXP_ENEMY_Galestrider|r. Loot them for |T133972:0|t[|cRXP_LOOT_Strider Meat|r] and |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob Galestrider::251661
step
    #completewith VulgarasHeadA
    >>Kill |cRXP_ENEMY_Prideclaws|r. Loot them for the |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label VulgarasHeadA
    .goto 2521,43.079,51.028,15,0
    .goto 2521,42.978,51.803,15,0
    .goto 2521,42.75,52.68
    >>Kill |cRXP_ENEMY_Vulgara|r |cRXP_WARN_(level 8 elite)|r on the mountain. Loot it for |T4218759:0|t[|cRXP_LOOT_Vulgar's Head|r].
    *|cRXP_WARN_Look for a group to kill it or skip the quest; respawns are lengthy|r.
    .complete 93318,1 --1/1 Vulgara's Head
    .mob Vulgara
step
    #completewith next
    >>Kill |cRXP_ENEMY_Galestrider|r. Loot them for |T133972:0|t[|cRXP_LOOT_Strider Meat|r] and |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob Galestrider::251661
step
    #loop
    .goto 2521,43.07,48.51,40,0
    .goto 2521,37.56,43.24,40,0
    .goto 2521,40.04,41.38,40,0
    >>Kill |cRXP_ENEMY_Prideclaws|r. Loot them for the |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    .isQuestComplete 97965
    .isQuestAvailable 92517
    .goto 2521,43.08,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naleeia Tattermend::257018|r
    .turnin 97965 >>Turn in Camping 101: First Aid
    .target Naleeia Tattermend::257018
step
    .train 2366,3
    .isQuestComplete 97968
    .isQuestAvailable 92517
    .goto 2521,42.97,43.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halassa Fernbreeze::257021|r
    .turnin 97968 >>Turn in Camping 101: Herbalism
    .target Halassa Fernbreeze::257021
step
    .train 7411,3
    .isQuestComplete 98286
    .isQuestAvailable 92517
    .goto 2521,43.25,43.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nasalanna Windsinger::257020|r
    .turnin 98286 >>Turn in Camping 101: Enchanting
    .target Nasalanna Windsinger::257020
step
    .train 8613,3
    .isQuestComplete 97971
    .isQuestAvailable 92517
    .goto 2521,43.3,43.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mendalass Tattermend::263664|r
    .turnin 97971 >>Turn in Camping 101: Skinning
    .target Mendalass Tattermend::257024
step
    .isOnQuest 92516
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r and buy 5 |T134059:0|t[Mild Spices]
    .vendor >>Vendor Trash
    .collect 2678,5
    .skipgossipid 137550
    .target Zerril Softbreeze::251905
step
    .isQuestComplete 92553
    .isQuestAvailable 92517
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .turnin 92553 >>Turn in Restocking the Larders
    .target Zerril Softbreeze::251905
step
    .isQuestComplete 96646
    .isQuestAvailable 92517
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .turnin 96646 >>Turn in Camping 101: Cooking
    .target Zerril Softbreeze::251905
step
    --improvement possible?
    .isOnQuest 92553
    .isQuestAvailable 92517
    .itemcount 1971,<3
    .goto 2521,43.86,43.85
    >>Use the |T132834:0|t[Herb Baked Egg] macro below to craft.
    *|cRXP_WARN_Keep at least 3 Small Eggs for a later quest|r
    *|cRXP_WARN_Any buff food grants 5% increased experience from kills for 15 minutes|r.
    .collect 6888,1
    .macro Herb Baked Egg,132834 >>/cast Cooking\n/run local count=C_Item.GetItemCount(6889);if count and count > 3 then C_TradeSkillUI.CraftRecipe(8604, min(5, count - 3)) end
step
    .isQuestTurnedIn 92553
    .isQuestAvailable 92517
    .itemcount 1971,<1
    .goto 2521,43.86,43.85
    >>Use the |T132834:0|t[Herb Baked Egg] macro below to craft.
    *|cRXP_WARN_Any buff food grants 5% increased experience from kills for 15 minutes|r.
    .collect 6888,1
    .macro Herb Baked Egg,132834 >>/cast Cooking\n/run local count=C_Item.GetItemCount(6889);if count then C_TradeSkillUI.CraftRecipe(8604, count) end
step
    .isQuestComplete 97963
    .isQuestAvailable 92517
    .goto 2521,43.7,43.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyassa Swiftdraught::257019|r
    .turnin 97963 >>Turn in Camping 101: Alchemy
    .target Nyassa Swiftdraught::257019
step
    .goto 2521,44.873,44.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taleen Shimmerthread::251991|r
    .target Taleen Shimmerthread::251991
    .turnin 93951 >>Turn in A Little Beauty
step
    .isQuestAvailable 92517
    .isQuestComplete 97973
    .goto 2521,44.88,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taleen Shimmerthread::251991|r
    .turnin 97973 >>Turn in Camping 101: Tailoring
    .target Taleen Shimmerthread::251991
step
    .isQuestAvailable 92517
    .isQuestComplete 97964
    .goto 2521,44.89,44.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aedi Thriceforged::251913|r
    .turnin 97964 >>Turn in Camping 101: Blacksmithing
    .target Aedi Thriceforged::251913
step
    .isQuestAvailable 92517
    .isQuestComplete 97970
    .goto 2521,44.77,44.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messana Crestwind::257022|r
    .turnin 97970 >>Turn in Camping 101: Mining
    .target Messana Crestwind::257022
step
    .isQuestAvailable 92517
    .isQuestComplete 92515
    .goto 2521,44.686,44.518
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Indari Sunseam::251993|r
    .target Indari Sunseam::251993
    .turnin 92515 >>Turn in The Problem With Prideclaws
step
    .isQuestAvailable 92517
    .isQuestComplete 97969
    .goto 2521,44.69,44.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Indari Sunseam::251993|r
    .turnin 97969 >>Turn in Camping 101: Leatherworking
    .target Indari Sunseam::251993
step
    .goto 2521,44.465,44.966
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teeri Wellwind::251906|r
    .target Teeri Wellwind::251906
    .turnin 92516 >>Turn in Hippogryph Harrassment
    .turnin 93319 >>Turn in Pilfered Windstones
step << Warrior
    .subzoneskip 16624,1
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corsan Earthrazer|r
    .train 284 >> Train |T136105:0|t[Heroic Strike (Rank 2)]
    .train 1715 >> Train |T132316:0|t[Hamstring]
    .train 7372,1
    .train 6343 >> Train |T136105:0|t[Thunder Clap]
    .train 8198,1
    .skipgossipid 136813
    .target Corsan Earthrazer
    .money <0.05
    .xp <8,1
step
    .isOnQuest 93318
    .isQuestComplete 93318
    .goto 2521,45.234,45.186
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danarii Bellowveil::252172|r
    .target Danarii Bellowveil::252172
    .turnin 93318 >>Turn in WANTED: Vulgara the Insatiable
step
    .abandon 93318 >>Abandon WANTED: Vulgara the Insatiable
step << Alliance Druid
    .subzoneskip 16624,1
    .goto 2521,45.153,44.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naeluna Swiftmend::254081|r.
    .train 339 >>Train |T136100:0|t[Entangling Roots]
    .train 5186 >>Train |T136041:0|t[Healing Touch (Rank 2)]
    .skipgossipid 136805
    .xp <8,1
    .money <0.04
    .target Naeluna Swiftmend::254081
step << Alliance Hunter
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elayaa Easewind::254084|r.
    .train 5116 >>Train |T135860:0|t[Concussive Shot]
    .train 3127 >>Train |T132269:0|t[Parry]
    .target Elayaa Easewind::254084
    .money <0.04
    .xp <8,1
step
    .goto 2521,45.667,45.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda::251523|r
    .target Constable Aonda::251523
    .turnin 92517 >>Turn in The Criminal Element
    .accept 93036 >>Accept Infiltrating the Cult
step << Hunter
    .subzoneskip 16624,1
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elayaa Easewind::254084|r.
    .train 5116 >>Train |T135860:0|t[Concussive Shot]
    .train 3127 >>Train |T132269:0|t[Parry]
    .target Elayaa Easewind::254084
    .money <0.04
    .xp <8,1
step << Horde Druid
    .subzoneskip 16624,1
    .goto 2521,45.153,44.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naeluna Swiftmend::254081|r.
    .trainer >>Train your spells
    .target Naeluna Swiftmend::254081
    .money <0.04
    .xp <8,1
step
    .goto 2521,44.831,45.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sania Silverstream::251904|r
    .target Sania Silverstream::251904
    .turnin 93036 >>Turn in Infiltrating the Cult
    .accept 92529 >>Accept Falaath Village
step
    .subzoneskip 16624,1
    .isQuestAvailable 92529
    .goto 2521,44.71,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veena Vericloud::254358|r
    .vendor 254358 >>|cRXP_BUY_Buy up to three|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_as needed.
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r << Druid
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r << Mage
    .target Veena Vericloud::254358
step << Shaman/Druid
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tephri Tinderforged::257421|r
    >>Buy a|r |T135145:0|t[Walking Stick] |cRXP_BUY_from him|r
    .collect 2495,1,761,1 --Collect Walking Stick (1)
    .target Tephri Tinderforged::257421
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step
    .isOnQuest 92529
    .subzoneskip 16624,1
    .goto 2521,44.831,45.515
    .target Sania Silverstream::251904
    .aura 1254832 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sania Silverstream::251904|r
    .skipgossipid 135874
step << Shaman
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aarnor Galestrike::254082|r
    .trainer >>Train your class spells
    .target Aarnor Galestrike::254082
    .money <0.10
    .xp <8,1
step << Mage
    .goto 2521,45.1,45.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shenaan Spellwind|r
    .train 5143 >> Train |T136096:0|t[Arcane Missiles]
    .train 205 >> Train |T135846:0|t[Frostbolt (Rank 2)]
    .train 118 >> Train |T136071:0|t[Polymorph]
    .skipgossipid 136807
    .target Shenaan Spellwind
    .money <0.06
    .xp <8,1
step << Alliance
    .goto 2521,44.979,46.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rathiril Sunlance::251903|r.
    .turnin 94413 >>Turn in A Magical Affront
    .target Rathiril Sunlance::251903
step
    .isQuestComplete 97967
    .goto 2521,45.03,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenn Fairweather::251992|r
    .turnin 97967 >>Turn in Camping 101: Fishing
    .target Fenn Fairweather::251992
step
    #completewith LivingLightningA
    >>Kill |cRXP_ENEMY_Galestrider|r. Loot them for |T133972:0|t[|cRXP_LOOT_Strider Meat|r] and |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob Galestrider::251661
step << Horde
    #completewith LivingLightningA
    >>Kill |cRXP_ENEMY_Prideclaws|r. Loot them for the |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step << Alliance
    #completewith Skypriest Aanders
    >>Kill |cRXP_ENEMY_Prideclaws|r. Loot them for the |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    .isOnQuest 92529
    .subzoneskip 16624,1
    .goto 2521,45.374,53.512,25,0
    .goto 2521,46.880,56.242
    .cast 1259416 >>Jump of the mountain and use |T132845:0|t[Walk on Air] to fly towards the questgiver.
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
    .isOnQuest 92528
    .subzoneskip 16636,1
    .goto 2521,46.89,56.24
    .target Missionary Jasaan::257065
    .aura 1254832 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sania Silverstream::257065|r
    .skipgossipid 137586 -- I seem to have lost my mark of Akir. Would you please bestow it upon me once more?
step << Horde
    .isOnQuest 92528
    .goto 2521,48.497,55.827
    .cast 1259686 >>Use |T1029587:0|t[Skysight] for the 10% movement speed buff.
    .cooldown spell,1259686,>0,1
step
    #completewith next
    #label plans
    .goto 2521,48.8,53.89,10,0
    .goto 2521,48.93,53.55,10,0
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
    .macro Leave Vehicle,6656430 >>/leavevehicle
step
    .isOnQuest 92528
    .subzoneskip 16624
    .goto 2521,46.86,51.54,25,0
    .goto 2521,44.37,46.69
    .cast 1259416 >>Jump of the mountain and use |T132845:0|t[Walk on Air] to fly towards the questgiver.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Rogue
    .isQuestAvailable 92528
    .goto 2521,44.37,46.69,30,0
    .goto 2521,43.15,43.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade|r
    .train 5277 >>Train |T136205:0|t[Evasion]
    .train 6760 >>Train |T132292:0|t[Eviscerate (Rank 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade
    .money <0.04
    .xp <8,1
step
    .goto 2521,44.37,46.69,30,0 << !Rogue
    .goto 2521,44.49,45.95,30,0 << !Rogue
    .goto 2521,44.93,46.85,30,0 << !Rogue
    .goto 2521,45.21,46.63,30,0 << !Rogue
    .goto 2521,45.04,46.23,15,0 << !Rogue
    .goto 2521,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda|r.
    .turnin 92528 >>Turn in Among the Faithful
    .accept 92550 >>Accept Havoc in the Highlands
    .accept 93926 >>Accept The Western Watch
    .target Constable Aonda
step
    .goto 2521,45.25,45.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danarii Bellowveil|r.
    .accept 92551 >>Accept Stolen Supplies
    .target Danarii Bellowveil
step
    #completewith next
    #label Western Watchtower
    #hidewindow
    .complete 93926,1 --1/1 Check in on the Western Watchtower in the Shen'dar Highlands
step
	#completewith Western Watchtower
    .goto 2521,45.35,46.79,20,0
    .goto 2521,44.05,49.98,30,0
    .goto 2521,43.02,49.86
    .deathskip >>Die to the south west of Shen'dar Village and respawn at the Spirit Healer
    .macro Sit,134400 >>/sit
    .target Spirit Healer
    .skipgossipid 96031
    .skipgossipid 98031
step
    #requires Western Watchtower
    .goto 2521,42.32,62.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Piecekeeper Vaniel::252155|r.
    .complete 93926,1 --1/1 Check in on the Western Watchtower in the Shen'dar Highlands
    .target Piecekeeper Vaniel::252155
step
    .goto 2521,42.33,62.01
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Piecekeeper Vaniel::252155|r
    .turnin 93926 >>Turn in The Western Watch
    .accept 93927 >>Accept A Last Request
    .target Piecekeeper Vaniel::252155
step
    .goto 2521,42.38,62.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bloody Note|r. 
    *|cRXP_WARN_Make sure you have an empty bag slot|r.
    .complete 93927,1 --1/1 Collect and read the note
step
    .goto 2521,40.988,64.088
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Arvensus Shadowsong|r\n from afar.
    *|cRXP_WARN_Make sure you have an empty bag slot|r.
    .complete 93927,4 --1/1 Shadowsong Family Signet
step
    .goto 2521,41.12,64.09
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Raani Windgazer|r\n from afar.
    *|cRXP_WARN_Make sure you have an empty bag slot|r.
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
    >>Ascend the spiral staircase, then kill |cRXP_ENEMY_Skypriest Aanders|r atop the tower.
    .complete 93927,2 --1/1 Skypriest Aanders slain
    .mob Skypriest Aanders
step
    .subzoneskip 17674,1
    .isOnQuest 92551
    .isQuestNotComplete 92551
    .goto 2521,50.29,56.95
    .cast 1259416 >>Jump of the tower and use |T132845:0|t[Walk on Air] to fly towards the waypoint location.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step  << Alliance
    #completewith NearCommander
    >>Kill |cRXP_ENEMY_Al'Aketh Stormcaller|r. Loot them for the |T133647:0|t[|cRXP_LOOT_Stolen Shen'dar Supplies|r].
    >>|TInterface/cursor/crosshair/interact.blp:16|tClick on the |cRXP_PICK_Supply Caches|r.
    .complete 92550,1 --6/6 Al'Aketh Stormcaller slain
    .complete 92551,1 --10/10 Stolen Shen'dar Supplies
    .mob Al'Aketh Stormcaller
step << Alliance
    #completewith NearCommander
    >>Kill |cRXP_ENEMY_Galestrider|r. Loot them for |T133972:0|t[|cRXP_LOOT_Strider Meat|r] and |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob Galestrider::251661
step << Alliance
    #completewith NearCommander
    >>Kill |cRXP_ENEMY_Prideclaws|r. Loot them for the |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step << Alliance
    #label NearCommander
    .isQuestNotComplete 92550
    .isOnQuest 92550
    .goto 2521,45.48,58.73,30,0
    .goto 2521,48.36,58.49
    .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
    .cooldown spell,1259705,>0,1
    .usespell 1259705 << Alliance
step
    #completewith CommanderCyclasHeadA
    >>Kill |cRXP_ENEMY_Galestrider|r. Loot them for |T133972:0|t[|cRXP_LOOT_Strider Meat|r] and |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob Galestrider::251661
step
    #completewith CommanderCyclasHeadA
    >>Kill |cRXP_ENEMY_Prideclaws|r. Loot them for the |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #completewith CommanderCyclasHeadA
    >>Kill |cRXP_ENEMY_Living Lightning|r.
    .complete 92550,2 --4/4 Living Lightning slain
    .mob Living Lightning
step
    #completewith CommanderCyclasHeadA
    >>Kill |cRXP_ENEMY_Al'Aketh Stormcaller|r. Loot them for the |T133647:0|t[|cRXP_LOOT_Stolen Shen'dar Supplies|r].
    >>|TInterface/cursor/crosshair/interact.blp:16|tClick on the |cRXP_PICK_Supply Caches|r.
    .complete 92550,1 --6/6 Al'Aketh Stormcaller slain
    .complete 92551,1 --10/10 Stolen Shen'dar Supplies
    .mob Al'Aketh Stormcaller
step
    #label CommanderCyclasHeadA
    .goto 2521,49.44,57.12,20,0
    .goto 2521,49.52,56.28,20,0
    .goto 2521,49.87,55.95,20,0
    .goto 2521,49.97,56.59,20,0
    .goto 2521,50.38,56.93
    >>Kill |cRXP_ENEMY_Commander Cyclas|r. Loot him for |T134161:0|t[|cRXP_LOOT_Commander Cyclas's Head|r].
    .complete 92550,3 --1/1 Commander Cyclas's Head
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
    >>Kill |cRXP_ENEMY_Living Lightning|r.
    .complete 92550,2 --4/4 Living Lightning slain
    .mob Living Lightning
step
    >>Kill |cRXP_ENEMY_Al'Aketh Stormcaller|r. Loot them for the |T133647:0|t[|cRXP_LOOT_Stolen Shen'dar Supplies|r].
    >>|TInterface/cursor/crosshair/interact.blp:16|tClick on the |cRXP_PICK_Supply Caches|r.
    .complete 92550,1 --6/6 Al'Aketh Stormcaller slain
    .complete 92551,1 --10/10 Stolen Shen'dar Supplies
    .mob Al'Aketh Stormcaller
step
    #label LivingLightningA
    >>Kill |cRXP_ENEMY_Living Lightning|r.
    .complete 92550,2 --4/4 Living Lightning slain
    .mob Living Lightning
step
    #completewith RestockingTheLaddersA
    #hidewindow
    #loop
    .goto 2521,42.885,63.422,35,0
    .goto 2521,42.97,49.81,35,0
    .goto 2521,44.12,50.46,35,0
    .goto 2521,38.283,42.288,35,0
    .goto 2521,42.055,40.938,35,0
    +1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Galestrider|r. Loot them for |T133972:0|t[|cRXP_LOOT_Strider Meat|r] and |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob Galestrider::251661
step
    >>Kill |cRXP_ENEMY_Prideclaws|r. Loot them for the |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label RestockingTheLaddersA
    >>Kill |cRXP_ENEMY_Galestrider|r. Loot them for |T133972:0|t[|cRXP_LOOT_Strider Meat|r] and |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob Galestrider::251661
step
    .isQuestComplete 97967
    .isQuestAvailable 92550
    .goto 2521,45.03,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenn Fairweather::251992|r
    .turnin 97967 >>Turn in Camping 101: Fishing
    .target Fenn Fairweather::251992
step
    --might cause issues when really unlucky with the pelt or strider quest
    .isQuestAvailable 92551
    .isQuestNotComplete 97967
    .isQuestNotComplete 97965
    .isQuestNotComplete 97968
    .isQuestNotComplete 98286
    .isQuestNotComplete 97971
    .isQuestNotComplete 97963
    .isQuestNotComplete 97973
    .isQuestNotComplete 97964
    .isQuestNotComplete 97970
    .isQuestNotComplete 97969
    .goto 2521,44.111,45.843,40 >>Follow the way up the mountain.
step
    .isQuestComplete 97965
    .isQuestAvailable 92550
    .goto 2521,43.08,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naleeia Tattermend::257018|r
    .turnin 97965 >>Turn in Camping 101: First Aid
    .target Naleeia Tattermend::257018
step
    .train 2366,3
    .isQuestComplete 97968
    .isQuestAvailable 92550
    .goto 2521,42.97,43.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halassa Fernbreeze::257021|r
    .turnin 97968 >>Turn in Camping 101: Herbalism
    .target Halassa Fernbreeze::257021
step
    .train 7411,3
    .isQuestComplete 98286
    .isQuestAvailable 92550
    .goto 2521,43.25,43.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nasalanna Windsinger::257020|r
    .turnin 98286 >>Turn in Camping 101: Enchanting
    .target Nasalanna Windsinger::257020
step
    .train 8613,3
    .isQuestComplete 97971
    .isQuestAvailable 92550
    .goto 2521,43.3,43.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mendalass Tattermend::263664|r
    .turnin 97971 >>Turn in Camping 101: Skinning
    .target Mendalass Tattermend::257024
step
    .isQuestComplete 92553
    .isOnQuest 92550
    .goto 2521,43.86,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r and buy |T135237:0|t[Flint and Tinder].
    .collect 4471,1
    .itemcount 4471,<1
    .skipgossipid 137550 -- I would like to buy from you.
    .target Zerril Softbreeze::251905
step
    .isQuestComplete 92553
    .isOnQuest 92550
    .goto 2521,43.86,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r and buy 5 |T135435:0|t[Simple Wood].
    .collect 4470,5
    .itemcount 4470,<5
    .target Zerril Softbreeze::251905
step
    .isQuestComplete 92553
    .isQuestAvailable 92550
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .turnin 92553 >>Turn in Restocking the Larders
    .target Zerril Softbreeze::251905
step
    .isQuestTurnedIn 92553
    .isQuestAvailable 92550
    .itemcount 1971,<1
    .goto 2521,43.86,43.85
    >>Craft as many |T132834:0|t[Herb Baked Eggs] as you can.
    *|cRXP_WARN_Any buff food grants 5% increased experience from kills for 15 minutes|r.
    --.collect 6888,1
    .macro Herb Baked Egg,132834 >>/cast cooking\n/run C_TradeSkillUI.CraftRecipe(8604,1)
step
    .isQuestComplete 96646
    .isQuestAvailable 92550
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .turnin 96646 >>Turn in Camping 101: Cooking
    .target Zerril Softbreeze::251905
step
    .isQuestComplete 97963
    .isQuestAvailable 92550
    .goto 2521,43.7,43.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyassa Swiftdraught::257019|r
    .turnin 97963 >>Turn in Camping 101: Alchemy
    .target Nyassa Swiftdraught::257019
step
    .isQuestComplete 97973
    .isQuestAvailable 92550
    .goto 2521,44.88,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taleen Shimmerthread::251991|r
    .turnin 97973 >>Turn in Camping 101: Tailoring
    .target Taleen Shimmerthread::251991
step
    .isQuestComplete 97964
    .isQuestAvailable 92550
    .goto 2521,44.89,44.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aedi Thriceforged::251913|r
    .turnin 97964 >>Turn in Camping 101: Blacksmithing
    .target Aedi Thriceforged::251913
step
    .isQuestComplete 97970
    .isQuestAvailable 92550
    .goto 2521,44.77,44.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messana Crestwind::257022|r
    .turnin 97970 >>Turn in Camping 101: Mining
    .target Messana Crestwind::257022
step
    .isQuestComplete 92515
    .isQuestAvailable 92550
    .goto 2521,44.686,44.518
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Indari Sunseam::251993|r
    .target Indari Sunseam::251993
    .turnin 92515 >>Turn in The Problem With Prideclaws
step
    .isQuestComplete 97969
    .isQuestAvailable 92550
    .goto 2521,44.69,44.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Indari Sunseam::251993|r
    .turnin 97969 >>Turn in Camping 101: Leatherworking
    .target Indari Sunseam::251993
step
    .subzoneskip 16624,1
    .isQuestAvailable 92551
    .goto 2521,44.71,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veena Vericloud::254358|r
    .vendor 254358 >>Vendor Trash. If you need bags, |cRXP_BUY_buy up to three|r |T133634:0|t[Small Brown Pouches]
    *|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r << Druid/Mage
    *|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] << Rogue/Hunter
    .collect 2512,600 << Hunter --Rough Arrow (600)
    .collect 2515,200 << Hunter --Sharp Arrow (200)
    .target Veena Vericloud::254358
step
    .goto 2521,45.24,45.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danarii Bellowveil|r.
    .turnin 92551 >>Turn in Stolen Supplies
    .target Danarii Bellowveil
step
    .goto 2521,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda|r.
    .turnin 92550 >>Turn in Havoc in the Highlands
    .turnin 93927 >>Turn in A Last Request
    .accept 92701 >>Accept To Valanaar << Alliance
    .accept 92579 >>Accept To Valanaar << Horde
    .accept 93948 >>Accept Deliver the Signet
    .target Constable Aonda
step
    .subzoneskip 16624,1
    .goto 2521,49.4,58.76
    .cast 1259416 >>Jump of the mountain and use |T132845:0|t[Walk on Air] to fly towards the waypoint location.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step
    .isQuestAvailable 93948
    .subzoneskip 16638
    .goto 2521,49.4,58.76
    .deathskip >>Die at the exact waypoint location and respawn at the Spirit Healer
    .macro Sit,134400 >>/sit
    *|cRXP_WARN_The location is important as there are three possible spiritwalkers on that island.|r
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer
step << Hunter
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfaan Halfwind::271465|r
    >>|cRXP_BUY_Buy and equip a|r |T7810733:0|t[Zephrali Bow]
    .collect 277110,1 --Collect Zephrali Bow
    .target Falfaan Halfwind::271465
    .money <0.1345
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.82
step
    .goto 2521,60.6,73.16,10,0
    .goto 2521,60.640,72.664
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyalah Brightfire::257006|r.
    *|cRXP_WARN_If you spot a Tornado, approach it to gain 40% increased movement speed for 5 minutes. The effect ends if you deal damage|r.
    .target Nyalah Brightfire::257006
    .accept 93317 >>Accept Crab Season
    .skipgossipid 96031
    .skipgossipid 98031
step
    .isOnQuest 93317
    .itemcount 1971,<1
    .goto 2521,60.640,72.664
    >>Craft as many |T132834:0|t[Herb Baked Eggs] as you can.
    *|cRXP_WARN_Any buff food grants 5% increased experience from kills for 15 minutes|r.
    .macro Herb Baked Egg,132834 >>/cast cooking\n/run C_TradeSkillUI.CraftRecipe(8604,1)
    --maybe recipes buy
step
    .subzoneskip 16638,1
    .isQuestAvailable 93948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donaal Downbreeze::255940|r.
    .target Donaal Downbreeze::255940
    .bindlocation 16638
    .goto 2521,62.180,72.616
    .home >>Set your Hearthstone to Valanaar
step
    .subzoneskip 16638,1
    .isQuestAvailable 93948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donaal Downbreeze::255940|r.
    .vendor
    .target Donaal Downbreeze::255940
    .goto 2521,62.180,72.616
    .skipgossipid 137078
    .collect 1179,20 << Mage 
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
step << Alliance
    .isQuestAvailable 93948
    #completewith next
    .goto 2521,63.33,73.65,15,0
    .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
    .cooldown spell,1259705,>0,1
    .usespell 1259705 << Alliance
step << Alliance
    .subzoneskip 16638,1
    .isQuestAvailable 93948
    #completewith next
    .goto 2521,63.33,73.65,15,0
    .goto 2521,63.973,75.095,25 >>Go over the mountain
    .cooldown spell,1259705,<0,1
step << Horde
    .subzoneskip 16638,1
    .isQuestAvailable 93948
    #completewith next
    .goto 2521,63.33,73.65,15,0
    .goto 2521,63.973,75.095,25 >>Go over the mountain
step
    .goto 2521,63.973,75.095
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
    .accept 94484 >>Accept Unnerving Silence
    .target Lotheluum Starbreeze::252359
step
    .goto 2521,65.956,74.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ealaane Nimbuswalker::259012|r.
    .accept 94896 >>Accept Aid For The Refugees
    .accept 94897 >>Accept The Fate of a Loved One
    .target Ealaane Nimbuswalker::259012
step
    #completewith next
    #label DeliverTheSignetA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .turnin 93948 >>Turn in Deliver the Signet
    .target Talaanis Shadowsong
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .turnin 93948 >>Turn in Deliver the Signet
    .target Talaanis Shadowsong
step
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .turnin 92701 >>Turn in To Valanaar << Alliance
    .turnin 92579 >>Turn in To Valanaar << Horde
    .accept 92699 >>Accept The Supreme Magister << Alliance
    .accept 92700 >>Accept The Grand Skyseer << Horde
    .accept 93949 >>Accept Bugged
    .target Valennia Stormfist
step << Horde
    #completewith LeavingValanaarA
    >>Kill |cRXP_ENEMY_Skyhopper|r.
    .complete 93949,1 --8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper
step << Horde
    .isOnQuest 92700 
    .goto 2521,66.488,76.498,6,0
    .goto 2521,63.027,77.807 << Hunter
    .goto 2521,61.491,76.893 << !Hunter
    .cast 1259416 >>Walk of the mountain and use |T132845:0|t[Walk on Air] to fly towards the questgiver.
    *|cRXP_WARN_If you time it correctly you can canel it midair to land in the building|r
    .cooldown spell,1259416,>0,1
    .usespell 1259416
    .macro Cancel Walk on Air,132845 >>/cancelaura Walk on Air
step << Alliance
    .isOnQuest 92699 
    .goto 2521,66.47,76.68,10,0
    .goto 2521,66.63,79.94
    .cast 1259416 >>Walk of the mountain and use |T132845:0|t[Walk on Air] to fly towards the questgiver.
    *|cRXP_WARN_If you time it correctly you can canel it midair to land in the building|r
    .cooldown spell,1259416,>0,1
    .usespell 1259416
    .macro Cancel Walk on Air,132845 >>/cancelaura Walk on Air
step << Alliance
    #completewith Unwelcome Visitors
    >>Kill |cRXP_ENEMY_Skyhopper|r.
    .complete 93949,1 --8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper
step << Alliance
    .goto 2521,66.63,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .turnin 92699 >>Turn in The Supreme Magister
    .accept 92709 >>Accept A Grand Adventure
    .timer 70, Talk RP
    .target Elaadrin Evengale
step << Alliance
    .goto 2521,66.26,79.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dondallion Whisperwind|r.
    .accept 92727 >>Accept The Missing Scholar
    .target Dondallion Whisperwind
step << Alliance
    #label Unwelcome Visitors
    .goto 2521,66.35,79.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iaadaria Bitterwind|r.
    .accept 92741 >>Accept Unwelcome Visitors
    .target Iaadaria Bitterwind
step << Alliance
    #completewith next
    >>Kill |cRXP_ENEMY_Skyhopper|r and/or vendor along the route.
    .complete 93949,1 --8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper
step << Alliance
    #loop
    .goto 2521,65.56,79.24,50,0
    .goto 2521,63.93,78.76,50,0
    .goto 2521,64.07,80.63,50,0
    .goto 2521,65.3,80.53,50,0
    >>Follow the waypoints loosely, but don't stray too far from the route or you may not receive credit.
    *Return |cRXP_FRIENDLY_Elaadrin Evengale|r early enough to reach her before the timer ends.
    .complete 92709,1 --1/1 Listen to Elaadrin
    .mob skyhopper
step << Alliance
    .goto 2521,66.63,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .turnin 92709 >>Turn in A Grand Adventure
    .target Elaadrin Evengale
step << Alliance
    .isOnQuest 92727
    .goto 2521,67.41,80.46
    .deathskip >>Jump of the cliff
    .macro Sit,134400 >>/sit
    .subzoneskip 16638,1
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer
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
    .isOnQuest 92708
    .goto 2521,59.154,79.783
    .cast 1259686 >>Use |T1029587:0|t[Skysight] for the 10% movement speed buff.
    .cooldown spell,1259686,>0,1
step << Horde
    .goto 2521,58.128,78.307
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Endaria Mistgaze::254344|r.
    .accept 93736 >>Accept Unwelcome Spirits
    .target Endaria Mistgaze::254344
step << Horde
    .goto 2521,59.064,72.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Riaani Nightwind::256083|r.
    .target Riaani Nightwind::256083
    .turnin 93735 >>Turn in The Broken Construct
--    .accept 93737 >>Accept The Broken Construct
--    .complete 93737,1 --|1/1 Listen to what Riaani Nightwind has to say
step << Horde
    .goto 2521,59.265,79.977
    >>Wait for the roleplay. -- Probably skipping this quest.
    .complete 92708,1 --|1/1 Listen to Ayessa
step << Horde
    #label LeavingValanaarA
    .goto 2521,59.150,79.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ayessa Dawnsinger::251968|r.
    .target Ayessa Dawnsinger::251968
    .turnin 92708 >>Turn in A Grand Adventure
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
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_FRIENDLY_Fillion Flamebreeze|r inside the cave.
    .complete 92849,1 --1/1 Find Fillion Flamebreeze
step << Alliance
    .subzoneskip 16672,1
    .isOnQuest 92849
    .isQuestNotComplete 92849
    .goto 2521,50.7,65.36
    .aura 1258429 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_FRIENDLY_Fillion Flamebreeze|r inside the cave.
    .skipgossipid 136430
    .target Fillion Flamebreeze
step << Alliance
    .goto 2521,50.71,66.38,20,0
    .goto 2521,52.04,66.66,15,0
    .goto 2521,51.44,66.25,15,0
    .goto 2521,51.03,67.15,15,0
    .goto 2521,51.55,69.2,35,0
    .goto 2521,52.08,69.41
    >>Carry |cRXP_FRIENDLY_Fillion Flamebreeze|r to safety. Avoid enemies along the way.
    .complete 92849,2 --1/1 Carry Fillion Flamebreeze to safety while avoiding enemies
    .skipgossipid 136430
.mob Shriekling Fledgling
    .target Fillion Flamebreeze
step << Alliance
    .goto 2521,52.064,69.396
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fillion Flamebreeze::253284|r.
    .target Fillion Flamebreeze::253284
    .turnin 92849 >>Turn in The Missing Scholar
    .accept 92850 >>Accept The Missing Scholar
step << Alliance
    #completewith next
    #label Shriekling Matriarch
    .goto 2521,51.39,68.2,20,0
    >>Kill |cRXP_ENEMY_Shriekling Matriarch|r. Loot it for |cRXP_LOOT_Shriekling Matriarch's Head|r.
    .complete 92850,1 --1/1 Shriekling Matriarch's Head
    .mob Shriekling Matriarch
step << Alliance
    #completewith Shriekling Matriarch
    .goto 2521,52.02,65.51,130 >>Enter the cave
step << Alliance
    #requires Shriekling Matriarch
    .goto 2521,52.02,65.51
    >>Kill |cRXP_ENEMY_Shriekling Matriarch|r. Loot it for |cRXP_LOOT_Shriekling Matriarch's Head|r.
    .complete 92850,1 --1/1 Shriekling Matriarch's Head
    .mob Shriekling Matriarch
step << Alliance
    .subzoneskip 16672,1
    .goto 2521,52.35,66.57,30,0
    .goto 2521,51.49,66.29,30,0
    .goto 2521,51.04,66.65,30,0
    .goto 2521,51.5,69.11,25 >>Leave the Cave
step
    .goto 2521,46.71,81.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    *|cRXP_WARN_She may be moving between locations during a roleplay sequence. Wait at the waypoint location.|r
    .complete 92679,1 --1/1 Find Aamelia Windfield
    .target Aamelia Windfield:252800
step
    #loop
    .goto 2521,46.71,81.94,10,0
    .goto 2521,47.511,78.490,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    *|cRXP_WARN_She may be moving between locations during a roleplay sequence. You have to wait at the |r.
    .turnin 92679 >>Turn in Blood Tithe
    .accept 92682 >>Accept Make Yourself Useful
    .accept 92684 >>Accept Ornery Ornery Galestriders
    .accept 92683 >>Accept Flutterfly Dust
    .target Aamelia Windfield:252800
step
    #completewith RipBanditsA
    >>Use the |T537768:0|t[Flutterfly Swatter] on the |cRXP_ENEMY_Flutterflies|r
    >>|TInterface/cursor/crosshair/interact.blp:16|tClick on the |cRXP_PICK_Flutterfly Dust|r.
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666
step
    #completewith RipBanditsA
    >>Kill |cRXP_ENEMY_Ornery Galestrider|r. Loot them for |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step
    #label RipBanditsA
    #loop
    .goto 2521,46.164,78.043,30,0
    .goto 2521,48.920,84.441,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_LOOT_Ripe Stormapples|r
    >>Kill |cRXP_ENEMY_Hungry Bandits|r |cRXP_WARN_(stealthed)|r.
    *Hunter tips: Spam tab to target them early, use Hunter's Mark on them so you can run away an hit them from farther away. << Hunter
    .complete 92682,1 --10/10 Ripe Stormapple
    .complete 92682,2 --5/5 Hungry Bandit slain
    .mob Hungry Bandit::252802
step
    #completewith next
    >>Kill |cRXP_ENEMY_Ornery Galestrider|r. Loot them for |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step
    #loop
    .goto 2521,51.686,83.417,45,0
    .goto 2521,50.017,77.659,35,0
    .goto 2521,46.692,76.947,35,0
    >>Spam use the |T537768:0|t[Flutterfly Swatter] on the |cRXP_ENEMY_Flutterflies|r
    >>|TInterface/cursor/crosshair/interact.blp:16|tClick on the |cRXP_PICK_Flutterfly Dust|r.
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666
step
    #completewith next
    >>Kill |cRXP_ENEMY_Ornery Galestrider|r. Loot them for |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step
    #loop
    .goto 2521,49.085,78.358,12,0
    .goto 2521,48.621,78.385,12,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfunctioning Cyclone Construct::250929|r.
    .accept 92698 >>Accept What Is My Purpose?
    .target Malfunctioning Cyclone Construct::250929
step
    #loop
    .goto 2521,49.085,78.358,40,0
    .goto 2521,51.3,80.59,40,0
    .goto 2521,50.05,83.16,40,0
    >>Kill |cRXP_ENEMY_Ornery Galestrider|r. Loot them for |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step
    #loop
    .goto 2521,47.511,78.490,30,0
    .goto 2521,46.71,81.94,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    *|cRXP_WARN_She may be moving between locations during a roleplay sequence. Check both spots|r.
    .turnin 92682 >>Turn in Make Yourself Useful
    .turnin 92684 >>Turn in Ornery Ornery Galestriders
    .turnin 92698 >>Turn in What Is My Purpose?
    .turnin 92683 >>Turn in Flutterfly Dust
    .accept 92685 >>Accept The Hills Have Eyes
    .target Aamelia Windfield:252800
step << Shaman
    #completewith next
    .hs >>Hearth to Valanaar
step << Shaman
    .goto 2521,58.313,78.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sessaria Skystride::252382|r.
    .accept 97243 >>Accept Call of Fire
    .target Sessaria Skystride::252382
step << Shaman
    .goto 2521,58.313,78.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sessaria Skystride::252382|r.
    .trainer >>Train your class spells
    .target Sessaria Skystride::252382
    .money <0.12
    .xp <10,1
step << Shaman
    .goto 2521,54.402,77.329,30,0
    .goto 2521,51.240,86.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olariaan Swiftburn::268592|r.
    .turnin 97243 >>Turn in Call of Fire
    .accept 97244 >>Accept Call to Fire
    .target Olariaan Swiftburn::268592
step << Shaman
    .isOnQuest 97244
    .isQuestNotComplete 97244
    .goto 2521,50.8,89.6
    .deathskip >>Jump down to die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r.
step << Shaman
    .goto 2521,64.380,63.586
    >>Kill the |cRXP_ENEMY_Skypriest Faladiel::268602|r. Loot him for |T1:0|t[|cRXP_LOOT_Faladiel's Heart|r].
    .complete 97244,1 --|1/1 Faladiel's Heart
    .mob Skypriest Faladiel::268602
step << Shaman
    .isOnQuest 97244
    .goto 2521,62.384,64.393
    .deathskip >>Jump down to die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r.
step << Shaman
    .goto 2521,51.241,86.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olariaan Swiftburn::268592|r.
    .target Olariaan Swiftburn::268592
    .turnin 97244 >>Turn in Call of Fire
    .accept 97245 >>Accept Call of Fire
step
    #loop
    .goto 2521,45.615,72.361,35,0
    .goto 2521,43.551,74.999,35,0
    .goto 2521,45.760,78.419,35,0
    >>Kill |cRXP_ENEMY_Bandit Highwaymen|r. Loot them for the |T133693:0|t[|cRXP_LOOT_Blood-Stained Bandit Masks|r].
    .complete 92685,1 --7/7 Blood-Stained Bandit Mask
step << Shaman
    .goto 2521,42.393,68.887
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Kuramaa's Stump|r.
    >>Kill |cRXP_ENEMY_Kuramaa::268605|r. Loot it for |T3549050:0|t[|cRXP_LOOT_Kuramaa's Mask|r].
    *|cRXP_WARN_He knocks you back and receives additional fire damage.|r
    .complete 97245,1 --|1/1 Kuramaa's Mask
    .mob Kuramaa::268605
-- step
--     .isOnQuest 92685
-- --     .goto 2521,44.08,76.21,30,0
--     .goto 2521,47.511,78.490
--     .cast 1259416 >>Jump of the mountain and use |T132845:0|t[Walk on Air] to fly towards the waypoint location.
--     *|cRXP_WARN_Make sure you are at 100% health before jumping|r
--     .cooldown spell,1259416,>0,1
--     .usespell 1259416
step
    #loop
    .goto 2521,47.511,78.490,10,0
    .goto 2521,46.71,81.94,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    *|cRXP_WARN_She may be moving between locations during a roleplay sequence. Check both spots|r.
    .turnin 92685 >>Turn in The Hills Have Eyes
    .accept 92693 >>Accept Standing Our Ground
    .target Aamelia Windfield:252800
step
    .goto 2521,46.71,81.94
    >>Return to |cRXP_FRIENDLY_Aamelia Windfield|r's main location and talk to her.
    .complete 92693,1 --1/1 Speak with Aamelia Windfield
    .timer 75,Roleplay Duration
    .target Aamelia Windfield
    .skipgossipid 136302
step
    .goto 2521,47.51,78.44
    >>Follow |cRXP_FRIENDLY_Aamelia Windfield|r. Wait for the roleplay.
    .complete 92693,2 --1/1 Follow Aamelia and make your final stand
step
    #loop
    .goto 2521,47.511,78.490,10,0
    .goto 2521,46.71,81.94,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    .turnin 92693 >>Turn in Standing Our Ground
    .accept 92703 >>Accept Deliver the News
    .target Aamelia Windfield:252800
step << Shaman
    .goto 2521,51.240,86.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Olariaan Swiftburn::268592|r.
    .target Olariaan Swiftburn::268592
    .turnin 97245 >>Turn in Call of Fire
    .accept 97257 >>Accept Call of Fire
    .timer 35,Roleplay Duration
step << Shaman
    .goto 2521,51.265,85.927
    >>Wait for the roleplay. Use the |T135432:0|t[Torch of Eternal Flame] on the burning |cRXP_PICK_Brazier of Offering|r.
    .complete 97257,1 --|1/1 Complete the Ritual with Olariaan
step << Shaman
    .goto 2521,52.400,81.309,25,0
    .goto 2521,54.907,76.598,15,0
    .goto 2521,58.312,78.827
    >>You have roughly 5 minutes to run back.
    .complete 97257,2 --|1/1 Light the Brazier of Eternal Flame
    .skipgossipid 140778
step << Shaman
    .goto 2521,58.315,78.512
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sessaria Skystride::252382|r.
    .target Sessaria Skystride::252382
    .turnin 97257 >>Turn in Call of Fire
step << !Shaman
    .isQuestAvailable 92703
    .subzoneskip 16638
    .hs >>Hearth to Valanaar
step << Alliance !Hunter
    .subzoneskip 16638,1
    .isQuestAvailable 92703
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donaal Downbreeze::255940|r.
    .target Donaal Downbreeze::255940
    .goto 2521,62.180,72.616
    .vendor >>Sell trash
    .collect 1179,15 >>Buy |T132815:0|t[Ice Cold Milk] << Mage/Druid/Shaman
step << Hunter
    .subzoneskip 16638,1
    .isQuestAvailable 92703
    .goto 2521,62.180,72.616
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donaal Downbreeze::255940|r.
    >>|cRXP_BUY_Buy|r |T134534:0|t[Forest Mushroom Cap] |cRXP_BUY_from him|r. |cRXP_BUY_You will use this to feed your pet later|r
    .collect 4604,5
    .target Donaal Downbreeze::255940
step
    .goto 2521,61.94,72.8,10,0
    .goto 2521,62.05,73.09,8,0
    .goto 2521,62.11,73.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alvarion Windfield|r on the second floor.
    .turnin 92703 >>Turn in Deliver the News
    .target Alvarion Windfield
step << Alliance
    #completewith Turn in The Missing Scholar
    >>Kill |cRXP_ENEMY_Skyhopper|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper
step << Warrior
    .goto 2521,59.889,72.869
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .target Seena Skybreaker::252377
    .accept 94003 >>Accept The Skybreaker Bulwark
step << Warrior
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seena Skybreaker|r.
    .train 6546 >>Train |T132155:0|t[Rend (Rank 2)]
    .train 2687 >>Train |T132277:0|t[Bloodrage]
    .skipgossipid 136813
    .target Seena Skybreaker
    .money <0.12
    .xp <10,1
step << Druid
    .goto 2521,63.983,75.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
    .accept 94006 >>Accept The Great Ursera Spirit
    .target Lotheluum Starbreeze::252359
step << Druid
    .goto 2521,63.983,75.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
    .trainer >>Train your spells.
    .target Lotheluum Starbreeze::252359
    .money <0.16
    .xp <10,1
step << Rogue
    .goto 2521,59.9,72.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eltheen Nightbreeze|r.
    .train 674 >>Train |T132147:0|t[Dual Wield]
    .train 6770 >>Train |T132310:0|t[Sap]
    .train 2070,1
    .train 5171 >>Train |T132306:0|t[Slice and Dice]
    .train 6774,1
    .train 2983 >>Train |T132307:0|t[Sprint]
    .train 8696,1
    .skipgossipid 136810
    .target Eltheen Nightbreeze
    .money <0.09
    .xp <10,1
step << Hunter
    .goto 2521,63.023,77.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anteleriaa Cloudgaze::252390|r.
    >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrow] |cRXP_BUY_until your Quiver is full|r
    .vendor >>Sell trash
    .target Anteleriaa Cloudgaze::252390
step << Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .train 13165 >>Train |T136076:0|t[Aspect of the Hawk]
    .train 13549 >>Train |T132204:0|t[Serpent Sting (Rank 2)]
    .target Quel'ana Quickgale::252389
    .money <0.08
    .xp <10,1
step << Hunter
    #include Skyborne Hunter Class Quests
step << Mage
    .goto 2521,62.887,77.324
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belann Windwood::256507|r.
    .target Belann Windwood::256507
    .accept 93791 >>Accept Speak with Belann
    .turnin 93791 >>Turn in Speak with Belann
    .accept 93797 >>Accept Boughs in the Wind
step << Mage
    .goto 2521,65.91,80.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anathamaas Aetherwind|r
    .train 168 >>Train |T135843:0|t[Frost Armor]
    .train 122 >>Train |T135848:0|t[Frost Nova]
    .train 5504 >>Train |T132794:0|t[Conjure Water]
    .train 587 >>Train |T133952:0|t[Conjure Food]
    .train 5505 >>Train |T132794:0|t[Conjure Water (Rank 2)]
    .skipgossipid 136807
    .target Shenaan Spellwind
    .money <0.08
    .xp <10,1
    .target Anathamaas Aetherwind
step << Alliance
    #label Turn in The Missing Scholar
    .goto 2521,66.26,79.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dondallion Whisperwind|r.
    .turnin 92850 >>Turn in The Missing Scholar
    .target Dondallion Whisperwind
step << Alliance
    .goto 2521,66.63,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .accept 92840 >>Accept Catching Wind
    .target Elaadrin Evengale
step << Alliance
    .isOnQuest 92840
    .isQuestNotComplete 92840
    .goto 2521,67.41,80.46
    .deathskip >>Jump of the cliff
    .skipgossipid 96031
    .skipgossipid 98031
    .macro Sit,134400 >>/sit
    .subzoneskip 16638,1
    .target Spirit Healer
step << Alliance
    #completewith next
    >>Kill |cRXP_ENEMY_Windsong Crawlers|r. Loot them for |T133972:0|t[|cRXP_LOOT_Windsong Crawler Meat|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .skipgossipid 98031
    .skipgossipid 96031
    .mob Windsong Crawler
-- step
--     #completewith next
--     .goto 2521,50.92,69.35,30,0
--     .goto 2521,51.44,71.09,30,0
--     .goto 2521,49.59,73.49,30,0
--     .goto 2521,48.99,73.6,30,0
--     .goto 2521,46.78,72.07,30,0
--     .goto 2521,46.57,71.16,30,0
--     .goto 2521,46.55,69.98,30,0
--     >>Kill |cRXP_ENEMY_Windsong Crawlers|r. Loot them for |T133972:0|t[|cRXP_LOOT_Windsong Crawler Meat|r].
--     .complete 93317,1 --6/6 Windsong Crawler Meat
--     .mob Windsong Crawler
step << !Mage Alliance
    .goto 2521,50.06,72.96,30,0
    .goto 2521,48.83,73.54,30,0
    .goto 2521,47.16,72.34,30,0
    .goto 2521,46.55,71.7,30,0
    .goto 2521,46.52,70.33,30,0
    .goto 2521,47.99,69.09
    >>Use |T4094821:0|t[Index Esoteria] if another player has not already done so, then kill the incoming |cRXP_ENEMY_Windshaper Shamans|r.
    *If another player completes within 100 yard radius you still get completion
    .complete 92840,1 --1/1 Protect the Index
    .use 254584
    .mob Windshaper Shaman
step << Mage
    #completewith next
    #label Protect the Index Mage
    .goto 2521,50.06,72.96,30,0
    .goto 2521,48.83,73.54,30,0
    .goto 2521,47.16,72.34,30,0
    .goto 2521,46.55,71.7,30,0
    .goto 2521,46.52,70.33,30,0
    >>Use |T4094821:0|t[Index Esoteria] if another player has not already done so, then kill the incoming |cRXP_ENEMY_Windshaper Shamans|r.
    .complete 92840,1 --1/1 Protect the Index
    .mob Windshaper Shaman
step << Mage
    #completewith Protect the Index Mage
    .goto 2521,47.99,69.09,40 >>Go Around the mountain
step << Mage
    #requires Protect the Index Mage
    #hidewindow
    #completewith Protect the Index Mage 2
    #loop
    .goto 2521,47.99,69.09,30,0
    .goto 2521,48.5,68.2,30,0
    +1
step << Mage
    #requires Protect the Index Mage
    #completewith next
    >>Use |T4094821:0|t[Index Esoteria] if another player has not already done so, then kill the incoming |cRXP_ENEMY_Windshaper Shamans|r.
    *If another player completes within 100 yard radius you still get completion
    .complete 92840,1 --1/1 Protect the Index
    .mob Windshaper Shaman
step << Mage
    #requires Protect the Index Mage
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Branch|r.
    *|cRXP_WARN_You can do this in between Shamans spawning|r
    .complete 93797,1 --1/1 Wind-Infused Bough
step << Mage
    #label Protect the Index Mage 2
    >>Use |T4094821:0|t[Index Esoteria] if another player has not already done so, then kill the incoming |cRXP_ENEMY_Windshaper Shamans|r.
    *If another player completes within 100 yard radius you still get completion
    .complete 92840,1 --1/1 Protect the Index
    .mob Windshaper Shaman
-- step
--     #loop
--     .goto 2521,49.8,66.94,35,0
--     .goto 2521,49.41,65.09,35,0
--     .goto 2521,48.94,64.4,35,0
--     .goto 2521,50.4,61.61,35,0
--     .goto 2521,51.84,60.75,35,0
--     .goto 2521,54.44,57.58,35,0
--     .goto 2521,53.27,55.62,35,0
--     .goto 2521,51.94,59.23,35,0
--     .goto 2521,51.06,59.23,30,0
--     >>Kill |cRXP_ENEMY_Windsong Crawlers|r. Loot them for 6 |T133972:0|t[|cRXP_LOOT_Windsong Crawler Meat|r].
--     .complete 93317,1 --6/6 Windsong Crawler Meat
--     .mob Windsong Crawler
-- step
--     .isOnQuest 92840
--     .goto 2521,49.4,58.76
--     .deathskip >>Die and respawn at the Spirit Healer
--     .macro Sit,134400 >>/sit
--     .skipgossipid 96031
--     .target Spirit Healer
-- step
--     .goto 2521,60.64,72.66
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyalah Brightfire|r.
--     .turnin 93317 >>Turn in Crab Season
--     .target Nyalah Brightfire
step << Mage
    .goto 2521,62.89,77.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belann Windwood|r.
    .turnin 93797 >>Turn in Boughs in the Wind
    .target Belann Windwood
step << Alliance
    .isOnQuest 92840
    .subzoneskip 16638
    .goto 2521,49.46,70.12,30,0
    .goto 2521,65.577,76.650
    .cast 1259416 >>Jump of the mountain and use |T132845:0|t[Walk on Air] to fly towards the questgiver.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step  << Alliance
    #loop
    .goto 2521,61.4,74.76,40,0
    .goto 2521,62.61,76.14,40,0
    .goto 2521,63.1,77.59,20,0
    .goto 2521,62.67,77.77,15,0
    .goto 2521,63.13,77.32,15,0
    .goto 2521,62.97,76.91,15,0
    .goto 2521,63.8,78.01,30,0
    .goto 2521,63.16,78.97,30,0
    .goto 2521,65.37,78.53,40,0
    >>Kill |cRXP_ENEMY_Skyhopper|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper
step << Alliance
    .goto 2521,66.63,79.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .turnin 92840 >>Turn in Catching Wind
    .accept 92834 >>Accept Avenged Tenfold
    .accept 92860 >>Accept In Service of Zephras
    .target Elaadrin Evengale
step << Alliance
    #completewith next
    #label Service of Zephras
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .turnin 92860 >>Turn in In Service of Zephras << Alliance
    .turnin 93949 >>Turn in Bugged
    .accept 93320 >>Accept Tower Defense  << Alliance
    .disablecheckbox
    .target Valennia Stormfist
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .turnin 92860 >>Turn in In Service of Zephras  << Alliance
    .turnin 93949 >>Turn in Bugged
    .accept 93320 >>Accept Tower Defense << Alliance
    .target Valennia Stormfist
step << Alliance
    #completewith next
    .isOnQuest 93320
    .goto 2521,66.47,76.64,10,0
    .cast 1259416 >>Jump of the mountain and use |T132845:0|t[Walk on Air] to fly towards the questgiver.
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
    >>Kill |cRXP_ENEMY_Al'Akeths|r.
    *Loot them for |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Healer
    .mob Al'Aketh Brawler
    .mob Al'Aketh Preacher
    .mob Al'Aketh Pillager
step << Alliance
    .goto 2521,65.36,71.79,30,0
    .goto 2521,65.76,68.4,30,0
    .goto 2521,69.64,67.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yorana Windyreed|r.
    .turnin 93320 >>Turn in Tower Defense
    .accept 92642 >>Accept Disrupting Logistics
    .accept 92645 >>Accept Breaking the Breaker
    .target Yorana Windyreed
step << Alliance
    #completewith next
    >>Kill |cRXP_ENEMY_Al'Akeths|r.
    *Loot them for |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob Al'Aketh Healer
    .mob Al'Aketh Brawler
    .mob Al'Aketh Preacher
    .mob Al'Aketh Pillager
step << Alliance
    .goto 2521,65.71,65.59,30,0
    .goto 2521,65.84,65.02,15,0
    .goto 2521,65.58,65.63
    >>Kill |cRXP_ENEMY_Commander Belguilos|r on the second floor inside the house.
    .complete 92645,1 --1/1 Commander Belguilos slain
    .mob Commander Belguilos
step << Alliance
    #completewith next
    >>Kill |cRXP_ENEMY_Al'Akeths|r.
    *Loot them for |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
step << Alliance
    #loop
    .goto 2521,65.34,65.79,40,0
    .goto 2521,65.43,64.53,40,0
    .goto 2521,64.46,66.11,40,0
    .goto 2521,64.71,67.65,40,0
    .goto 2521,66.59,67.5,40,0
    >>Kill |cRXP_ENEMY_Al'Akeths|r.
    *Loot them for |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob Al'Aketh Healer
    .mob Al'Aketh Brawler
    .mob Al'Aketh Preacher
    .mob Al'Aketh Pillager
step << Alliance
    #loop
    .goto 2521,64.15,64.09,45,0
    .goto 2521,63.43,62.4,45,0
    .goto 2521,62.04,65.1,45,0
    .goto 2521,63.4,66.78,45,0
    .goto 2521,64.66,65.84,45,0
    .goto 2521,65.22,67.8,45,0
    >>Kill |cRXP_ENEMY_Al'Aketh Brawlers|r and |cRXP_ENEMY_Al'Aketh Pillagers|r.
    *Loot them for |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
    *Do not kill |cRXP_ENEMY_Al'Aketh Healers|r
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler
    .mob Al'Aketh Pillager
step << Alliance
    .goto 2521,69.61,67.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yorana Windyreed|r.
    .turnin 92645 >>Turn in Breaking the Breaker
    .turnin 92642 >>Turn in Disrupting Logistics
    .accept 92880 >>Accept Return to Valanaar
    .target Yorana Windyreed
step << Alliance
    #completewith next
    #label Return to Valanaar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .turnin 92880 >>Turn in Return to Valanaar
    .accept 92881 >>Accept The High Elder's Request
    .target Valennia Stormfist
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .turnin 92880 >>Turn in Return to Valanaar
    .accept 92881 >>Accept The High Elder's Request
    .target Valennia Stormfist
step << Alliance
    .goto 2521,66.17,76.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .turnin 92881 >>Turn in The High Elder's Request
    .accept 92643 >>Accept The Turncoat
    .target Talaanis Shadowsong
step << Alliance
    .isOnQuest 92834
    .goto 2521,66.46,76.67,8,0
    .goto 2521,66.63,79.94
    .cast 1259416 >>Walk of the mountain and use |T132845:0|t[Walk on Air] to fly towards the questgiver.
    *|cRXP_WARN_If you time it correctly you can canel it midair to land in the building|r
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance
    #requires Avenged Tenfold
    .goto 2521,66.63,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .turnin 92834 >>Turn in Avenged Tenfold
    .target Elaadrin Evengale
step << Alliance
    .subzoneskip 16638,1
    .isQuestAvailable 98512
    .goto 2521,63.9,74.16
    .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
    .cooldown spell,1259705,>0,1
    .usespell 1259705 << Alliance
step << Alliance
    .subzoneskip 16638,1
    .isQuestAvailable 98512
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daeann Steelwind::252479|r.
    .target Daeann Steelwind::252479
    .goto 2521,65.45,80.15
    .vendor >>Sell trash
    .skipgossipid 137531
step
    .goto 2521,56.81,61.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fendaal Windstone|r.
    .accept 98512 >>Accept Al'Aketh Assassins
    .target Fendaal Windstone
step << Alliance
    #completewith Fendaal Windstone
    >>Kill |cRXP_ENEMY_Al'Aketh Assassin|r.
    .complete 98512,1 --10/10 Al'Aketh Assassin slain
    .mob Al'Aketh Assassin
step << Alliance
    .goto 2521,56.13,60.26
    >>Follow the Arrow
    .complete 92643,1 --1/1 Find the secluded house in Shen'dar Highlands
step << Alliance
    .goto 2521,56.05,58.79
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Dead Cultist|r.
    .complete 92643,2 --1/1 Find the Al'Aketh Turncoat
    .target Dead Cultist
step << Aliance
    #label Fendaal Windstone
    .goto 2521,56.03,58.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dead Cultist|r.
    .turnin 92643 >>Turn in The Turncoat
    .accept 92644 >>Accept Unfortunate News
    .target Dead Cultist
step
    #loop
    .goto 2521,55.73,59.73,30,0
    .goto 2521,56.07,61.19,30,0
    .goto 2521,54.46,59.57,30,0
    >>Kill |cRXP_ENEMY_Al'Aketh Assassin|r.
    .complete 98512,1 --10/10 Al'Aketh Assassin slain
    .mob Al'Aketh Assassin
step << Horde
    .goto 2521,56.80,61.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fendaal Windstone|r.
    .turnin 98512 >>Turn in Al'Aketh Assassins
    .target Fendaal Windstone
step
    #loop
    .goto 2521,53.56,59.17,35,0
    .goto 2521,52.91,58.56,35,0
    .goto 2521,52.08,59.23,35,0
    .goto 2521,52.49,57.3,35,0
    .goto 2521,53.55,55.55,35,0
    .goto 2521,54.3,57.94,35,0
    >>Kill |cRXP_ENEMY_Windsong Crawlers|r. Loot them for |T133972:0|t[|cRXP_LOOT_Windsong Crawler Meat|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler
step << Alliance
    .goto 2521,56.80,61.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fendaal Windstone|r.
    .turnin 98512 >>Turn in Al'Aketh Assassins
    .target Fendaal Windstone
step << Alliance
    .isQuestAvailable 93317
    .goto 2521,60.64,72.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyalah Brightfire|r.
    .vendor >>Sell Trash
    .skipgossipid 137535
    .target Nyalah Brightfire
step << Alliance
    .isQuestAvailable 93317
    .goto 2521,60.64,72.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyalah Brightfire|r.
    .vendor >>Sell Trash
    .skipgossipid 137535
    .target Nyalah Brightfire
step << Alliance
    .goto 2521,60.64,72.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyalah Brightfire|r.
    .turnin 93317 >>Turn in Crab Season
    .target Nyalah Brightfire
step << Alliance
    #completewith next
    #label Unfortunate News
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .turnin 92644 >>Turn in Unfortunate News
    .accept 94568 >>Accept The Cult's True Plans
    .disablecheckbox
    .target Talaanis Shadowsong
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .turnin 92644 >>Turn in Unfortunate News
    .accept 94568 >>Accept The Cult's True Plans
    .target Talaanis Shadowsong
step << Alliance
    #completewith next
    #label Talaanis Shadowsong
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 94568,1 --1/1 Learn what you can from the crystal
    .target Talaanis Shadowsong
step << Alliance
    #completewith Talaanis Shadowsong
    .goto 2521,66.18,76.51
    .gossipoption 140111 >>Talk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .timer 50,RP
step << Alliance
    #requires Talaanis Shadowsong
    .goto 2521,66.17,76.52
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 94568,1 --1/1 Learn what you can from the crystal
    .target Talaanis Shadowsong
step << Alliance
    .goto 2521,66.17,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .turnin 94568 >>Turn in The Cult's True Plans
    .accept 92640 >>Accept Desperate Times
    .target Talaanis Shadowsong
step << Alliance
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .complete 92640,1 --1/1 Speak with Valennia Stormfist
    .target Valennia Stormfist
    .skipgossipid 137096
    .skipgossipid 137095
step << Alliance
    .isOnQuest 92640
    .goto 2521,66.49,76.64,8,0
    .goto 2521,63.33,78.16
    .cast 1259416 >>Jump of the mountain and use |T132845:0|t[Walk on Air] to fly towards the questgiver.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance
    .goto 2521,63.33,78.16,30,0
    .goto 2521,63.04,77.53,30,0
    .goto 2521,62.31,78.27,30,0
    .goto 2521,62.13,79.02,30,0
    .goto 2521,60.68,80.11,30,0
    .goto 2521,59.15,79.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ayessa Dawnsinger|r.
    .complete 92640,2 --1/1 Recruit the Windshapers
    .skipgossipid 136542
    .skipgossipid 136541
    .mob Ayessa Dawnsinger
step << Alliance
    .goto 2521,59.94,77.92,30,0
    .goto 2521,61.45,77.15,30,0
    .goto 2521,62.13,76.85,30,0
    .goto 2521,63.35,78.58,30,0
    .goto 2521,66.54,79.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .complete 92640,3 --1/1 Recruit the High Order
    .skipgossipid 136547
    .skipgossipid 136546
    .target Elaadrin Evengale
step << Alliance
    #completewith next
    #label Prepare for Battle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .turnin 92640 >>Turn in Desperate Times
    .accept 93065 >>Accept Prepare for Battle
    .disablecheckbox
    .target Valennia Stormfist
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .turnin 92640 >>Turn in Desperate Times
    .accept 93065 >>Accept Prepare for Battle
    .target Valennia Stormfist
-- step 
--     .subzoneskip 16638,1
--     .goto 2521,63.9,74.16
--     .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
--     .cooldown spell,1259705,>0,1
--     .usespell 1259705 << Alliance
step << Alliance
    .goto 2521,65.03,74.35,45,0
    .goto 2521,63.99,74.1,40,0
    .goto 2521,61.15,70.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist::253844|r.
    .target Valennia Stormfist::253844
    .turnin 93065 >>Turn in Prepare for Battle
    .accept 92947 >>Accept Making Our Move
step << Alliance
    .goto 2521,61.15,70.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .turnin 93065 >>Turn in Prepare for Battle
    .accept 92947 >>Accept Making Our Move
    .target Valennia Stormfist
step << Warrior
    #completewith next
    #label Al'Aketh Guardian
    .goto 2521,59.58,66.41,30,0
    .goto 2521,58.98,60.8,30,0
    >>Kill |cRXP_ENEMY_Zaal Stormshield|r. Loot him for the |T134959:0|t[|cRXP_LOOT_Skybreaker Bulwark|r].
    .complete 94003,1 --|1/1 Skybreaker Bulwark
    .mob Zaal Stormshield::257196
step << Warrior
    #completewith Al'Aketh Guardian
    .goto 2521,58.69,52.86,80 >>Cross the bridge
step << Warrior
    .goto 2521,56.56,50.36
    >>Kill |cRXP_ENEMY_Zaal Stormshield|r. Loot him for the |T134959:0|t[|cRXP_LOOT_Skybreaker Bulwark|r].
    .complete 94003,1 --|1/1 Skybreaker Bulwark
    .mob Zaal Stormshield::257196
step << Warrior  Alliance
    #loop
    .goto 2521,60.4,49.44
    .goto 2521,61.56,49.4
    .goto 2521,62.98,48.53
    .goto 2521,63.37,47.38
    .goto 2521,64,46.55
    .goto 2521,64.6,45.79
    .goto 2521,64.87,47.82
    .goto 2521,64.04,48.81
    .goto 2521,63.12,48.86
    .goto 2521,62.37,51.03
    .goto 2521,63.24,52.58
    .goto 2521,64.41,54.87
    .goto 2521,64.28,51.92
    .goto 2521,63.05,52.57
    .goto 2521,61.33,53.02
    >>Kill |cRXP_ENEMY_Al'Akeths|r.
    *|cRXP_WARN_Priotize |cRXP_ENEMY_Guardians|r|r
    .complete 92947,1 --8/8 Al'Aketh Guardian slain
    .complete 92947,2 --8/8 Al'Aketh Spiritcaller slain
    .complete 92947,3 --8/8 Al'Aketh Blademaster slain
    .mob Al'Aketh Guardian
    .mob Al'Aketh Blademaster
    .mob Al'Aketh Spiritcaller
step << !Warrior Alliance
    #completewith next
    #label Al'Aketh Guardian
    .goto 2521,59.58,66.41,30,0
    .goto 2521,58.98,60.8,30,0
    >>Kill |cRXP_ENEMY_Al'Aketh Guardian|r.
    .complete 92947,1 --8/8 Al'Aketh Guardian slain
    .complete 92947,2 --8/8 Al'Aketh Spiritcaller slain
    .complete 92947,3 --8/8 Al'Aketh Blademaster slain
    .mob Al'Aketh Guardian
step << !Warrior Alliance
    #completewith Al'Aketh Guardian
    .goto 2521,59.1,52.83,80 >>Cross the bridge
step << !Warrior Alliance
    #requires Al'Aketh Guardian
    #loop
    .goto 2521,59.78,52.23,40,0
    .goto 2521,60.08,51.67,40,0
    .goto 2521,61.05,52.26,40,0
    .goto 2521,62.75,52.56,40,0
    .goto 2521,62.25,49.01,40,0
    .goto 2521,63.14,48.55,40,0
    .goto 2521,64.03,46.25,40,0
    .goto 2521,59.91,49.6,40,0
    >>Kill |cRXP_ENEMY_Al'Akeths|r.
    *|cRXP_WARN_Priotize |cRXP_ENEMY_Guardians|r|r
    .complete 92947,1 --8/8 Al'Aketh Guardian slain
    .complete 92947,2 --8/8 Al'Aketh Spiritcaller slain
    .complete 92947,3 --8/8 Al'Aketh Blademaster slain
    .mob Al'Aketh Guardian
    .mob Al'Aketh Blademaster
    .mob Al'Aketh Spiritcaller
step << Alliance
    #completewith next
    #label Hyusaa Quickbreeze
    .goto 2521,61.98,50.42,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hyusaa Quickbreeze|r.
    .complete 92947,4 --1/1 Report to Hyusaa Quickbreeze
    .target Hyusaa Quickbreeze
step << Alliance
    #completewith Hyusaa Quickbreeze
    .goto 2521,63.79,50.55,80 >>Take the stairs to |cRXP_FRIENDLY_Hyusaa Quickbreeze|r
step << Alliance
    #requires Hyusaa Quickbreeze
    .goto 2521,63.79,50.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hyusaa Quickbreeze|r.
    .complete 92947,4 --1/1 Report to Hyusaa Quickbreeze
    .turnin 92947 >>Turn in Making Our Move
    .accept 93958 >>Accept The Inner Sanctum
    .target Hyusaa Quickbreeze
step << Alliance
    #completewith next
    #label The Inner Sanctum
    .goto 2521,65.35,50.33,30,0
    .goto 2521,66.91,50.05,30,0
    .goto 2521,66.85,50.56,10,0
    .goto 2521,66.83,49.89,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist::253590|r.
    .target Valennia Stormfist::253590
    .turnin 93958 >>Turn in The Inner Sanctum
    .accept 93835 >>Accept Confront Lorthuna
    .disablecheckbox
step << Alliance
    #completewith The Inner Sanctum
    .goto 2521,66.14,49.15,30 >>Take the spiral staircase
step << Alliance
    #requires The Inner Sanctum
    .goto 2521,65.191,50.352
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist::253590|r.
    .target Valennia Stormfist::253590
    .turnin 93958 >>Turn in The Inner Sanctum
    .accept 93835 >>Accept Confront Lorthuna
step << Alliance
    .subzoneskip 16679,1
    .goto 2521,65.55,50.35
    .subzone 16630 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
step << Alliance
    .subzoneskip 16630,1
    .goto 2521,69.11,51.19,10,0
    .goto 2521,69.6,51.64,10,0
    .goto 2521,70.04,51.63,10,0
    .goto 2521,71.24,51.04,10,0
    .goto 2521,74.17,52.57,290 >>Go around the plateau and take the windstream to |cRXP_FRIENDLY_Elaadrin Evengale|r
    *|cRXP_WARN_If the windstream is not active, wait for it to appear|r
step << Alliance
    .subzoneskip 16630,1
    #completewith next
    .gossipoption 137230 >>Talk to |cRXP_FRIENDLY_Elaadrin Evengale|r to begin the event.
    .timer 117,RP
    *|cRXP_WARN_Another player may have already started it|r
    .target Elaadrin Evengale
step << Alliance
    .goto 2521,74.16,52.54,25,0
    .goto 2521,74.48,53.92,25,0
    .goto 2521,75.07,53.15
    >>Follow |cRXP_FRIENDLY_Elaadrin Evengale|r. Kill |cRXP_ENEMY_Baron Anvillaxx|r and the |cRXP_ENEMY_Malevolent Storms|r that attack.
    .complete 93835,1 --1/1 Confront Lorthuna
    .skipgossipid 137230
    .mob Baron Anvillaxx
    .mob Malevolent Storm
step << Alliance
    .goto 2521,75.09,53.25
    .subzoneskip 16630,1
    .subzone 16638 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
step
    .goto 2521,66.63,79.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .turnin 93835 >>Turn in Confront Lorthuna
    .accept 94369 >>Accept The Fate of Zephras
    .target Elaadrin Evengale
step << Alliance
    #completewith next
    #label Fate of Zephras
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .complete 94369,1 --1/1 Speak with Talaanis Shadowsong
    .turnin 94369 >>Turn in The Fate of Zephras
    .accept 93089 >>Accept What Comes Next
    .target Talaanis Shadowsong
step << Alliance
    #completewith Fate of Zephras
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
    #requires Fate of Zephras
    .goto 2521,66.18,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .complete 94369,1 --|1/1 Speak with Talaanis Shadowsong
    .turnin 94369 >>Turn in The Fate of Zephras
    .accept 93089 >>Accept What Comes Next
    .target Talaanis Shadowsong
step << Alliance
    .isOnQuest 93089
    .goto 2521,66.47,76.66,8,0
    .goto 2521,66.63,79.95
    .cast 1259416 >>Jump of the mountain and use |T132845:0|t[Walk on Air] to fly towards the questgiver.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance
    .goto 2521,66.63,79.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .turnin 93089 >>Turn in What Comes Next
    .accept 94946 >>Accept The Magical City of Dalaran
    .target Elaadrin Evengale
step << Alliance
    .subzoneskip 16638,1
    .isQuestAvailable 93159
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daeann Steelwind::252479|r.
    .target Daeann Steelwind::252479
    .goto 2521,65.45,80.15
    .vendor >>Sell trash
    .skipgossipid 137531
step << Warrior Alliance
    .isQuestAvailable 94003
    .subzoneskip 16638,1
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seena Skybreaker|r.
    .train 5242 >>Train |T132333:0|t[Battle Shout (Rank 2)]
    .train 7384 >>Train |T132223:0|t[Overpower]
    .train 7887,1
    .train 72 >>Train |T132357:0|t[Shield Bash]
    .train 1671,1
    .skipgossipid 136813
    .target Seena Skybreaker
    .money <0.3
    .xp <12,1
step << Warrior Alliance
    .goto 2521,59.886,72.863
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .target Seena Skybreaker::252377
    .turnin 94003 >>Turn in The Skybreaker Bulwark
step << Alliance
    #completewith The Strange Hermit 2
    >>Kill |cRXP_ENEMY_Shadowgale Shrieklings|r.
    *Loot them for |T1508517:0|t[|cRXP_LOOT_Shriekling Talons|r].
    .complete 92741,1 --8/8 Shriekling Talons
    .mob Shadowgale Shriekling::256092
step << Alliance
    #completewith next
    #label The Strange Hermit
    .goto 2521,58.73,44.12,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strange Hermit|r.
    .accept 93159 >>Accept The Strange Hermit
    .target Strange Hermit
step << Alliance
    #completewith The Strange Hermit
    .goto 2521,53.95,38.90,328 >>Cross the bridge
step << Alliance
    #requires The Strange Hermit
    #label The Strange Hermit 2
    .goto 2521,53.95,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strange Hermit|r.
    .accept 93159 >>Accept The Strange Hermit
    .complete 93159,1 --1/1 Learn more about the Strange Hermit
    .turnin 93159 >>Turn in The Strange Hermit
    .accept 93160 >>Accept The Forest's Bounty
    .accept 93172 >>Accept Free the Hollows
    .target Strange Hermit
    .skipgossipid 135787
    .skipgossipid 135786
    .skipgossipid 135785 -- engineering
    .skipgossipid 135784 -- no
step << Alliance
    #completewith Abandoned Belongings1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Seeds|r
    .complete 93160,1 --8/8 Zephyrseed
step << Alliance
    #completewith Abandoned Belongings1
    >>Kill |cRXP_ENEMY_Shadowgale Shrieklings|r. 
    *Loot them for |T1508517:0|t[|cRXP_LOOT_Shriekling Talons|r].
    .complete 92741,1 --8/8 Shriekling Talons
    .mob Shadowgale Shriekling::256092
step << Alliance
    #completewith next
    #hidewindow
    #label Abandoned Belongings1
    .complete 94896,1,1 --8/8 Abandoned Belongings
step << Alliance
    #completewith Resaan's Heirloom
    >>Kill |cRXP_ENEMY_Wind Hollows|r.
    .complete 93172,1 --10/10 Wind Hollow freed
    .mob Wind Hollow::251676
step << Alliance
    #completewith Resaan's Heirloom
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crates|r
    .complete 94896,1 --8/8 Abandoned Belongings
step << Alliance
    #label Resaan's Heirloom
    .goto 2521,57.45,33.8,40,0
    .goto 2521,56.69,33.71,40,0
    .goto 2521,57.04,29.36
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Resaan Nimbuswalker|r
    .complete 94897,1 --1/1 Resaan's Heirloom
    .skipgossipid 138670
    .target Resaan Nimbuswalker
step << Alliance
    #hidewindow
    #completewith Wind Hollow
    #loop
    .goto 2521,58.06,28.2,30,0
    .goto 2521,57.91,26.83,30,0
    .goto 2521,58.69,31.17,30,0
    .goto 2521,58.13,30.74,30,0
    .goto 2521,57.6,31.05,30,0
    .goto 2521,58.32,31.69,30,0
    .goto 2521,58.44,32.84,30,0
    .goto 2521,59.09,31.85,30,0
    .goto 2521,59.11,33.86,30,0
    .goto 2521,59.02,34.84,30,0
    +1
step << Alliance
    #completewith next
    >>Kill |cRXP_ENEMY_Wind Hollows|r.
    .complete 93172,1 --10/10 Wind Hollow freed
    .mob Wind Hollow::251676
step << Alliance
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crates|r
    .complete 94896,1 --8/8 Abandoned Belongings
step << Alliance
    #label Wind Hollow
    >>Kill |cRXP_ENEMY_Wind Hollows|r.
    .complete 93172,1 --10/10 Wind Hollow freed
    .mob Wind Hollow::251676
step << Alliance
    #completewith Unnerving Silence
    >>Kill |cRXP_ENEMY_Shadowgale Shrieklings|r. 
    *Loot them for |T1508517:0|t[|cRXP_LOOT_Shriekling Talons|r].
    .complete 92741,1 --8/8 Shriekling Talons
    .mob Shadowgale Shriekling::256092
step << Alliance
    #completewith Unnerving Silence
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Seeds|r
    .complete 93160,1 --8/8 Zephyrseed
step
    .goto 2521,61.76,39.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elegael Thornpaw::257944|r.
    .target Elegael Thornpaw::257944
    .turnin 94484 >>Turn in Unnerving Silence
    .accept 94485 >>Accept Tears of the Lady
    .accept 94486 >>Accept Feathers for Binding
    .accept 94487 >>Accept Unwanted and Unworthy
step
    #completewith next
    >>Kill |cRXP_ENEMY_Al'Aketh Footsoldiers|r and |cRXP_ENEMY_Al'Aketh Stormcallers|r. 
    *Loot them for |T4622283:0|t[|cRXP_LOOT_Bloody Heirlooms|r] and |T133856:0|t[|cRXP_LOOT_Al'Alketh Cultist's Ears|r].
    .complete 94487,1 --10/10 Bloody Heirloom
    .complete 93165,1 --10/10 Al'Alketh Cultist's Ear
    .mob Al'Aketh Footsoldier::252665
    .mob Al'Aketh Stormcaller::252068
step
    .goto 2521,63.80,36.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vayn Moongaze|r.
    .accept 93165 >>Accept Mercy Falls on Deaf Ears
    .target Vayn Moongaze
step
    #loop
    .goto 2521,62.36,35.89,40,0
    .goto 2521,62.78,37.75,30,0
    .goto 2521,63.98,37.75,40,0
    .goto 2521,65.01,38.9,40,0
    .goto 2521,65.66,36.13,40,0
    >>Kill |cRXP_ENEMY_Al'Aketh Footsoldiers|r and |cRXP_ENEMY_Al'Aketh Stormcallers|r. 
    *Loot them for |T4622283:0|t[|cRXP_LOOT_Bloody Heirlooms|r] and |T133856:0|t[|cRXP_LOOT_Al'Alketh Cultist's Ears|r].
    .complete 94487,1 --10/10 Bloody Heirloom
    .complete 93165,1 --10/10 Al'Alketh Cultist's Ear
    .mob Al'Aketh Footsoldier::252665
    .mob Al'Aketh Stormcaller::252068
step
    #completewith next
    >>Kill |cRXP_ENEMY_Shadowgale Shrieklings|r. Loot them for |T1508517:0|t[|cRXP_LOOT_Shriekling Talons|r] and |T132927:0|t[Pristine Shriekling Feathers].
    .complete 92741,1 --8/8 Shriekling Talons
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob Shadowgale Shriekling::256092
step
    #loop
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
    .goto 2521,55.59,39.23,35,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Tear Moss & Seeds|r
    .complete 93160,1 --8/8 Zephyrseed
    .complete 94485,1 --8/8 Lady's Tear Moss
step
    #label Unnerving Silence
    .goto 2521,53.97,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strange Hermit|r.
    .turnin 93160 >>Turn in The Forest's Bounty
    .turnin 93172 >>Turn in Free the Hollows
    .target Strange Hermit
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
    #completewith next
    >>Kill |cRXP_ENEMY_Shadowgale Shrieklings|r. Loot them for |T1508517:0|t[|cRXP_LOOT_Shriekling Talons|r] and |T132927:0|t[Pristine Shriekling Feathers].
    .complete 92741,1 --8/8 Shriekling Talons
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob Shadowgale Shriekling::256092
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Tear Moss|r
    .complete 94485,1 --8/8 Lady's Tear Moss
step
    #label Pristine Shriekling Feathers
    >>Kill |cRXP_ENEMY_Shadowgale Shrieklings|r. Loot them for |T1508517:0|t[|cRXP_LOOT_Shriekling Talons|r] and |T132927:0|t[Pristine Shriekling Feathers].
    .complete 92741,1 --8/8 Shriekling Talons
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob Shadowgale Shriekling::256092
step
    .goto 2521,61.76,39.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elegael Thornpaw|r.
    .turnin 94485 >>Turn in Tears of the Lady
    .turnin 94487 >>Turn in Unwanted and Unworthy
    .turnin 94486 >>Turn in Feathers for Binding
    .accept 94488 >>Accept The Ties That Bind
    .accept 94489 >>Accept The Wounds of Betrayal
    .target Elegael Thornpaw
step
    .isQuestAvailable 94490
    .goto 2521,65.54,36.3
    >>Kill |cRXP_ENEMY_Commander Haalien|r. Loot him for |T134161:0|t[|cRXP_LOOT_Severed Head|r] and |T135332:0|t[Ripped Missive].
    .complete 94488,1 --1/1 Commander Haalien's Severed Head
    .collect 265476,1
    .mob Commander Haalien
step
    #completewith next
    >>Use the |T134332:0|t[Ripped Missive] in your bags to begin the quest.
    .accept 94490 >>Accept Ripped Missive
    .use 265476
step
    .goto 2521,63.80,36.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vayn Moongaze|r.
    .turnin 93165 >>Turn in Mercy Falls on Deaf Ears
    .target Vayn Moongaze
step
    .goto 2521,64.29,34.23,30,0
    .goto 2521,64.49,34.74
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Jorel Windsinger|r
    .complete 94489,2 --1/1 Find Jorel Windsinger
    .skipgossipid 137859
    .target Jorel Windsinger
step
    #loop
    .goto 2521,64.51,34.89,10,0
    .goto 2521,64.98,34.96,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Druids|r, do not move while clicking them or it can bug.
    .complete 94489,1,3 --7/7 Injured Druids healed
    .target Nayeela Snarlfang
    .target Telenos Leafwhisper
    .target Naaleos Leafwhisper
step
    #loop
    .goto 2521,63.93,33.76,20,0
    .goto 2521,63.69,32.49,20,0
    .goto 2521,64,31.97,25,0
    .goto 2521,64.52,31.88,25,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Druids|r, do not move while clicking them or it can bug.
    .complete 94489,1,5 --7/7 Injured Druids healed
    .target Neyasteel Mossmender
    .target Bryaes Galechaser
step
    #loop
    .goto 2521,65.55,31.9,,25,0
    .goto 2521,66.13,32.18,,25,0
    .goto 2521,65.79,33,,25,0
    .goto 2521,65.93,33.55,,25,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Druids|r, do not move while clicking them or it can bug.
    .complete 94489,1,7 --7/7 Injured Druids healed
    .target Mithraless Sterngale
    .target Baeo Sharpstrike
step
    #completewith next
    #label Wounds of Betrayal
    .goto 2521,65.23,34.53,30,0
    .goto 2521,64.2,34.32,30,0
    .goto 2521,63.57,36.3,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elegael Thornpaw|r.
    .turnin 94489 >>Turn in The Wounds of Betrayal
    .target Elegael Thornpaw
step
    #completewith Wounds of Betrayal
    .goto 2521,61.77,39.14,150 >>Leave the cave
step
    #requires Wounds of Betrayal
    .goto 2521,61.77,39.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elegael Thornpaw|r.
    .turnin 94489 >>Turn in The Wounds of Betrayal
    .turnin 94490 >>Turn in Ripped Missive
    .turnin 94488 >>Turn in The Ties That Bind
    .accept 94491 >>Accept The Fate of the Den
    .target Elegael Thornpaw
step << Horde
    #completewith next
    #hidewindow
    #label Abandoned Belongings1
    .complete 94896,1,1 --8/8 Abandoned Belongings
step << Horde
    #completewith Resaan's Heirloom
    >>Kill |cRXP_ENEMY_Wind Hollows|r.
    .complete 93172,1 --10/10 Wind Hollow freed
    .mob Wind Hollow::251676
step << Horde
    #completewith Resaan's Heirloom
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crates|r
    .complete 94896,1 --8/8 Abandoned Belongings
step << Horde
    #label Resaan's Heirloom
    .goto 2521,57.45,33.8,40,0
    .goto 2521,56.69,33.71,40,0
    .goto 2521,57.04,29.36
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Resaan Nimbuswalker|r
    .complete 94897,1 --1/1 Resaan's Heirloom
    .skipgossipid 138670
    .target Resaan Nimbuswalker
step << Horde
    #hidewindow
    #completewith Wind Hollow
    #loop
    .goto 2521,58.06,28.2,30,0
    .goto 2521,57.91,26.83,30,0
    .goto 2521,58.69,31.17,30,0
    .goto 2521,58.13,30.74,30,0
    .goto 2521,57.6,31.05,30,0
    .goto 2521,58.32,31.69,30,0
    .goto 2521,58.44,32.84,30,0
    .goto 2521,59.09,31.85,30,0
    .goto 2521,59.11,33.86,30,0
    .goto 2521,59.02,34.84,30,0
    +1
step << Horde
    #completewith next
    >>Kill |cRXP_ENEMY_Wind Hollows|r. Loot them for |T1:0|t[|cRXP_LOOT_Wind Hollow Essence|r].
    .complete 93736,1 --10/10 Wind Hollow Essence
    .mob Wind Hollow::251676
step << Horde
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crates|r
    .complete 94896,1 --8/8 Abandoned Belongings
step << Horde
    #label Wind Hollow
    >>Kill |cRXP_ENEMY_Wind Hollows|r. Loot them for |T1:0|t[|cRXP_LOOT_Wind Hollow Essence|r].
    .complete 93736,1 --10/10 Wind Hollow Essence
    .mob Wind Hollow::251676
-- step -- repeatable
--     .goto 2521,63.80,35.99
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vayn Moongaze|r.
--     .turnin 93459 >>Turn in More Al'Aketh Ears
--     .target Vayn Moongaze
step
    .isOnQuest 94491 << Alliance
    .isOnQuest 93736 << Horde
    .subzoneskip 16631,1
    .hs >>Hearth to Shen'dar Village
    .use 6948
step << Warrior
    .isQuestAvailable 94491 << Alliance
    .isQuestAvailable 93736 << Horde
    .subzoneskip 16638,1
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seena Skybreaker|r.
    .train 1160 >>Train |Tinterface/icons/ability_warrior_warcry.blp:0|t[Demoralizing Shout]
    .train 6190,1
    .train 6572 >>Train |Tinterface/icons/ability_warrior_revenge.blp:0|t[Revenge]
    .train 6574,1
    .train 1310185 >>Train |T136031:0|t[Tactical Mastery]
    .skipgossipid 136813
    .target Seena Skybreaker
    .money <0.45
    .xp <14,1
step << Alliance
    .goto 2521,63.55,73.45,25,0
    .goto 2521,63.99,75.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotheluum Starbreeze|r.
    .turnin 94491 >>Turn in The Fate of the Den
    .target Lotheluum Starbreeze
step
    .goto 2521,65.95,74.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ealaane Nimbuswalker|r.
    .turnin 94896 >>Turn in Aid For The Refugees
    .turnin 94897 >>Turn in The Fate of a Loved One
    .target Ealaane Nimbuswalker
step << Alliance
    .goto 2521,66.34,79.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iaadaria Bitterwind|r.
    .turnin 92741 >>Turn in Unwelcome Visitors
    .target Iaadaria Bitterwind
step  << Alliance
    #completewith next
    #label Magical City of Dalaran
    .goto 2521,66.09,80.96,25,0
    .goto 2521,65.42,81.01,25,0
    .goto 2521,65.1,81.52,25,0
    >>Wait for the Zepplinn to arrive.
    *|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denaaris Stargale::259084|r.
    .turnin 94946 >>Turn in The Magical City of Dalaran
step << Alliance
    #completewith Magical City of Dalaran
    .goto 2521,65.81,83.44
    .zone 1056 >> Take the Zepplin to Dalaran
step  << Alliance
    #requires Magical City of Dalaran
    .goto 1416/0,438.93,448.88
    >>Wait for the Zepplinn to arrive
    *|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Denaaris Stargale::259084|r.
    .target Denaaris Stargale::259084
    .turnin 94946 >>Turn in The Magical City of Dalaran
    .accept 94947 >>Accept Welcome to Azeroth
step << Alliance
    .goto 1416/0,445.93,450.00
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
    .complete 94947,1 --Take the Skyborne Portal to Stormwind
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Highlord Bolvar Fordragon::1748|r inside the castle.
    .target Highlord Bolvar Fordragon::1748
    .turnin 94947 >>Turn in Welcome to Azeroth
    .accept 93963 >>Accept Exploring the Alliance
    .accept 98021 >>Accept Journey to Sentinel Hill
step  << Alliance
    .goto 1453/0,350.200,-8516.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Randal Emerson::1748|r inside the castle.
    .complete 93963,1 --1/1 Recieve Instructions from Randal Emerson
    .skipgossipid 142485
    .target Randal Emerson
step << Horde
    .goto 2521,58.128,78.307
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Endaria Mistgaze::254344|r.
    .turnin 93736 >>Turn in Unwelcome Spirits
    .target Endaria Mistgaze::254344
step << Horde
    .goto 1412/1,426.100,-658.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alaana Stormwalker::259119|r.
    .accept 95350 >>Accept Welcome to Azeroth
    .target Alaana Stormwalker::259119
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal::2995|r.
    .goto 1456/1,26.500,-1196.700
    .fly Orgrimmar >>Fly to Orgrimmar
    .target Tal::2995
step << Horde
    .goto 1454/1,-4126.300,1920.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thrall::4949|r.
    .turnin 95350 >>Turn in Welcome to Azeroth
    .target Thrall::4949
]])

-- Warrior introductory class quests
RXPGuides.RegisterGuide([[
#forever
#version 1
#name Skyborne Warrior Class Quests
#displayname Skyborne Warrior Class Quests
#group RestedXP Forever Guide (A) << Alliance
#group RestedXP Forever Guide (H) << Horde
#defaultfor Skyborne Warrior
#internal

step
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rorian the Dayseeker|r.
    .accept 92532 >>Accept The Warrior's Path
    .target Rorian the Dayseeker
step
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blademaster Ren|r.
    .turnin 92532 >>Turn in The Warrior's Path
    .target Blademaster Ren
]])
-- Hunter class quest chain
RXPGuides.RegisterGuide([[
#forever
#version 1
#name Skyborne Hunter Class Quests

step
    .goto 2521,59.572,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .accept 94978 >>Accept Taming the Beast
    .target Quel'ana Quickgale::252389
step
    #loop
    .goto 2521,54.460,78.811,48,0
    .goto 2521,51.968,73.084,35,0
    .goto 2521,53.126,73.502,20,0
    .goto 2521,51.268,69.758,35,0
    .use 267272 >> |cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Windsong Crawler|r |cRXP_WARN_at max range|r.
    .complete 94978,1 --Tame a Windsong Crawler
    .mob Windsong Crawler
step
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .turnin 94978 >>Turn in Taming the Beast
    .accept 94979 >>Accept Taming the Beast
    .target Quel'ana Quickgale::252389
step
    #completewith next
    +|cRXP_WARN_Dismiss your |cRXP_ENEMY_Windsong Crawler|r by right clicking its unit frame and clicking dismiss, otherwise you'll be unable to tame an|r |cRXP_ENEMY_Armored Scorpid|r
step
    #loop
    .goto 2521,60.905,69.414,35,0
    .goto 2521,58.339,68.476,35,0
    .goto 2521,53.799,72.161,35,0
    .use 267298 >> |cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on an|r |cRXP_ENEMY_Ornery Galestrider|r |cRXP_WARN_at max range|r.
    .complete 94979,1 --Tame an Ornery Galestrider
    .mob Ornery Galestrider
step
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .turnin 94979 >>Turn in Taming the Beast
    .accept 94013 >>Accept Taming the Beast
    .target Quel'ana Quickgale::252389
step
    #loop
    .goto 2521,61.944,68.828,35,0
    .goto 2521,59.516,64.846,35,0
    .goto 2521,57.041,67.729,35,0
    .goto 2521,54.322,75.080,35,0
    .goto 2521,51.925,80.458,35,0
    .goto 2521,52.920,81.509,35,0
    .use 264163 >> |cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Vuldren|r |cRXP_WARN_at max range|r.
    .complete 94013,1 --Tame a Vuldren
    .mob Vuldren::250874
step
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .turnin 94013 >>Turn in Taming the Beast
    .accept 94050 >>Accept Training the Beast
    .target Quel'ana Quickgale::252389
step
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quel'dora Quickgale::254411|r.
    .turnin 94050 >>Turn in Training the Beast
    .target Quel'dora Quickgale::254411
]])
-- Rogue introductory class quests
RXPGuides.RegisterGuide([[
#forever
#version 1
#name Skyborne Rogue Class Quests
#displayname Skyborne Rogue Class Quests
#group RestedXP Forever Guide (A) << Alliance
#group RestedXP Forever Guide (H) << Horde
#defaultfor Skyborne Rogue
#internal

step
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rorian the Dayseeker|r.
    .accept 92483 >>Accept At Home in the Shadows
    .target Rorian the Dayseeker
step
    .goto 2521,43.74,24.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akeri Duskblade|r.
    .turnin 92483 >>Turn in At Home in the Shadows
    .target Akeri Duskblade
]])
-- Rogue Engineering quest draft
RXPGuides.RegisterGuide([[
#forever
#version 1
#name Skyborne Rogue Class Quests222
#displayname Skyborne Rogue Class Quests
#group RestedXP Forever Guide (A) << Alliance
#group RestedXP Forever Guide (H) << Horde
#defaultfor Skyborne Rogue
#internal

-- step
--     .goto 2521,53.96,38.90
--     .accept 98285 >>Accept Camping 101: Engineering
-- step
--     .goto 2521,53.96,38.90
--     .complete 98285,1 --Raise your engineering skill to 20
]])
-- Mage class quests
RXPGuides.RegisterGuide([[
#forever
#version 1
#name Skyborne Mage Class Quests
#displayname Skyborne Mage Class Quests
#group RestedXP Forever Guide (A) << Alliance
#group RestedXP Forever Guide (H) << Horde
#defaultfor Skyborne Mage
#internal

step
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rorian the Dayseeker|r.
    .accept 92481 >>Accept A Student of the Arcane
    .target Rorian the Dayseeker
step
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorii Brightwhisper|r.
    .turnin 92481 >>Turn in A Student of the Arcane
    .target Dorii Brightwhisper
step
    .goto 2521,62.90,77.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belann Windwood|r.
    .accept 93797 >>Accept Boughs in the Wind
    .target Belann Windwood
step
    .goto 2521,48.49,67.81
    .complete 93797,1 --1/1 Wind-Infused Bough
step
    .goto 2521,62.89,77.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belann Windwood|r.
    .turnin 93797 >>Turn in Boughs in the Wind
    .target Belann Windwood
]])
-- Shaman class quest chain
RXPGuides.RegisterGuide([[
#forever
#version 1
#name Skyborne Shaman Class Quests
#displayname Skyborne Shaman Class Quests
#group RestedXP Forever Guide (A) << Alliance
#group RestedXP Forever Guide (H) << Horde
#defaultfor Skyborne Shaman
#internal

step
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rorian the Dayseeker|r.
    .accept 92484 >>Accept Embracing the Elements
    .target Rorian the Dayseeker
step
    .goto 2521,42.790,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windshaper Boro::251374|r.
    .turnin 92484 >>Turn in Embracing the Elements
    .accept 92466 >>Accept Call of Earth
    .target Windshaper Boro::251374
step
    .goto 2521,42.788,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windshaper Boro::251374|r.
    .turnin 92466 >>Turn in Call of Earth
    .accept 92467 >>Accept Call of Earth
    .target Windshaper Boro::251374
step
    .goto 2521,48.802,25.869,25,0
    .goto 2521,49.677,23.806
    >>Use the |T134743:0|t[Earth Sapta].
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Minor Manifestation of Earth::251166|r.
    .turnin 92467 >>Turn in Call of Earth
    .accept 92468 >>Accept Call of Earth
    .target Minor Manifestation of Earth::251166
    .use 6635
step
    .goto 2521,42.787,23.564
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windshaper Boro::251374|r.
    .turnin 92468 >>Turn in Call of Earth
    .target Windshaper Boro::251374
]])
-- Druid class quest chain
RXPGuides.RegisterGuide([[
#forever
#version 1
#name Skyborne Druid Class Quests
#displayname Skyborne Druid Class Quests
#group RestedXP Forever Guide (A) << Alliance
#group RestedXP Forever Guide (H) << Horde
#defaultfor Skyborne Druid
#internal

-- The Great Ursera Spirit (94006) is accepted from the Druid trainer in Valanaar.
step
    .goto 2521,63.983,75.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
    .accept 94006 >>Accept The Great Ursera Spirit
    .target Lotheluum Starbreeze::252359
step
    .goto 2521,69.761,61.454
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urs'endris::255853|r.
    .turnin 94006 >>Turn in The Great Ursera Spirit
    .accept 94638 >>Accept Strength and Mercy
    .target Urs'endris::255853
step
    .goto 2521,54.284,65.803
    >>Kill |cRXP_ENEMY_Ur'endra|r.
    .complete 94638,1 --|1/1 Ur'endra slain
    .mob Ur'endra::258443
step
    .goto 2521,69.740,61.570
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urs'endris::255853|r.
    .turnin 94638 >>Turn in Strength and Mercy
    .target Urs'endris::255853
step << Alliance
    .goto 1416/0,385.700,385.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Archmage Ansirem Runeweaver::2543|r.
    .accept 94912 >>Accept Child of Nature
    .target Archmage Ansirem Runeweaver::2543
step << Alliance
    .goto 1453/0,1099.900,-8776.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheldras Moontree::5504|r.
    .turnin 94912 >>Turn in Child of Nature
    .accept 94914 >>Accept Moonglade
    .target Sheldras Moontree::5504
]])
-- Warrior route reference waypoints
RXPGuides.RegisterGuide([[
#forever
#version 1
#name Skyborne Warrior Class Quests22
#displayname Skyborne Warrior Class Quests
#group RestedXP Forever Guide (A) << Alliance
#group RestedXP Forever Guide (H) << Horde
#defaultfor Skyborne Warrior
#internal

    .goto 2521,41.07,22.33 -- spirit healer thendal village
    .goto 2521,40.23,63.82 --watchtower
    .goto 2521,55.01,68.16 --gustberry highlands
]])
-- Horde quest route draft
RXPGuides.RegisterGuide([[
#forever
#version 1
#name Random Stuff
#internal

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
