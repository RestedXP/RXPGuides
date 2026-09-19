RXPGuides.RegisterGuide([[
#classic
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
    #arrowtext Talk to\n|cRXP_FRIENDLY_Ailee Farheart|r
    .goto 2521,42.82,23.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ailee Farheart|r.
    .accept 92460 >>Accept Coming of Age
    .target Ailee Farheart
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Rorian the Dayseeker|r
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rorian the Dayseeker|r.
    .turnin 92460 >>Turn in Coming of Age
    .target Rorian the Dayseeker
    .accept 92461 >>Accept Harmony in Balance
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Elatrell Featherlight|r
    .goto 2521,43.44,24.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elatrell Featherlight|r.
    .accept 92462 >>Accept Infestation Investigation
    -- .useitem 264908
    .target Elatrell Featherlight
step
    #hidewindow
    #completewith Juvenile Vuldren
    #loop
    #arrowtext Kill\n|cRXP_ENEMY_Juvenile Vuldren|r and\n|cRXP_ENEMY_Pesky Cirrusfly|r
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
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Elatrell Featherlight|r
    .goto 2521,43.44,24.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elatrell Featherlight|r.
    *|cRXP_WARN_Don't use as we |T132845:0|t[Walk on Air] need it soon|r.
    .turnin 92462 >>Turn in Infestation Investigation
    .accept 92463 >>Accept The Cirrusfly Queen
    .target Elatrell Featherlight
    .macro Cancel Walk on Air,132745 >>/cancelaura Walk on Air
step << Warrior
    #arrowtext Talk to\n|cRXP_FRIENDLY_Blademaster Ren|r
    .goto 2521,43.66,24.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blademaster Ren|r.
    .train 6673 >>Train |T132333:0|t[Battle Shout]
    .skipgossipid 136813,1
    .target Blademaster Ren
    .money <0.0010
step
    #completewith next
    #label Anchors of Zephras
    #arrowtext Talk to\n|cRXP_FRIENDLY_Halaan Hawk-Eye|r
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
    #arrowtext Enter the building\nand climb the spiral staircase
    .goto 2521,43.83,23.66,15 >>Enter the building and climb the spiral staircase.
step
    #requires Anchors of Zephras
    #arrowtext Talk to\n|cRXP_FRIENDLY_Halaan Hawk-Eye|r
    .goto 2521,43.80,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halaan Hawk-Eye|r at the top of the tower.
    .accept 94414 >>Accept The Anchors of Zephras
    .target Halaan Hawk-Eye
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Halaan Hawk-Eye|r
    .goto 2521,43.80,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halaan Hawk-Eye|r.
    .complete 94414,1 --View the Anchor Pylon
    .skipgossipid 137720,1
    .target Halaan Hawk-Eye
step
    #arrowtext Move to cancel the channel
    .goto 2521,43.80,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halaan Hawk-Eye|r.
    *Move or press ESC to cancel.
    .turnin 94414 >>Turn in The Anchors of Zephras
    .target Halaan Hawk-Eye
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Myriaal Mistwake|r
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
    #arrowtext Use |T132845:0|t[Walk on Air]\nwhile falling toward the quest giver
    .goto 2521,42.06,23.48
    >>While falling from the tower, use |T132845:0|t[Walk on Air] and aim for the quest giver.
    *You can also just jump and spam the button on the ground.
    .complete 92474,1 --Use Walk on Air
    .macro Walk on Air, 132845 >>/use Walk on Air
step
    #requires Harmony in Balance
    #arrowtext Talk to\n|cRXP_FRIENDLY_Rorian the Dayseeker|r
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
step << Mage
    #arrowtext Talk to\n|cRXP_FRIENDLY_Dorii Brightwhisper|r
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorii Brightwhisper|r.
    .train 1459 >>Train |T135932:0|t[Arcane Intellect]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper
    .money <0.0010
step << Shaman
    #arrowtext Talk to\n|cRXP_FRIENDLY_Windshaper Boro|r
    .goto 2521,42.790,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windshaper Boro::251374|r
    .target Windshaper Boro::251374
    .turnin 92484 >>Turn in Embracing the Elements
    .accept 92466 >>Accept Call of Earth
step << Shaman
    #arrowtext Talk to\n|cRXP_FRIENDLY_Windshaper Boro|r
    .goto 2521,42.79,23.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windshaper Boro|r.
    .train 8017 >>Train |T136086:0|t[Rockbiter]
    .target Windshaper Boro
step << Hunter
    #arrowtext Talk to\n|cRXP_FRIENDLY_Tai'ree Farsight|r
    .goto 2521,42.47,23.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai'ree Farsight|r.
    .turnin 92482 >>Turn in The Way of the Hunter
    .target Tai'ree Farsight
step
    #completewith next
    #label Harvesting Windstones
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalia the Collector|r.
    .accept 93552 >>Accept Harvesting Windstones
    .target Dalia the Collector
step
    #completewith Harvesting Windstones
    #arrowtext Vendor trash
    .goto 2521,43.41,23.51
    .vendor >>|cRXP_WARN_Vendor trash|r
step
    #requires Harvesting Windstones
    #arrowtext Talk to\n|cRXP_FRIENDLY_Dalia the Collector|r
    .goto 2521,43.37,23.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalia the Collector|r.
    .accept 93552 >>Accept Harvesting Windstones
    .target Dalia the Collector
step << !Warrior !Rogue
    #arrowtext Talk to\n|cRXP_FRIENDLY_Uualia Suncrest|r
    .goto 2521,42.749,24.496
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uualia Suncrest::251537|r
    >>|cRXP_BUY_Buy|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from her|r << !Hunter !Shaman
    >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_from her|r << Hunter
    .collect 159,10,6394,1 << !Hunter !Shaman --Refreshing Spring Water (10)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .target Uualia Suncrest::251537
    .money <0.0050 << !Hunter
    .money <0.0040 << Hunter
step << Horde
    #arrowtext Talk to\n|cRXP_FRIENDLY_Ventaari Brightwish|r
    .goto 2521,42.60,24.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ventaari Brightwish|r.
    .accept 92598 >>Accept The Gift of Skysight
    .target Ventaari Brightwish
step << Alliance
    #arrowtext Talk to\n|cRXP_FRIENDLY_Falorne Fallwind|r
    .goto 2521,43.33,24.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falorne Fallwind|r.
    .accept 92597 >>Accept Reading the Ley Lines
    .target Falorne Fallwind
step
    #completewith next
    #arrowtext Click on\n|cRXP_PICK_Crystals|r
    .goto 2521,43.82,25.41,10,0
    .goto 2521,44.23,24.96,10,0
    .goto 2521,44.28,27.32,25,0
    .goto 2521,45.33,29.15,30,0
    .goto 2521,46.77,27.96,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystals|r
    .complete 93552,1 --15/15 Windstone Cluster
step
    #arrowtext Don't use |T236219:0|t[Read Ley Line] we need it soon << Alliance
    #arrowtext Don't use |T1029587:0|t[Skysight] we need it soon << Horde
    .goto 2521,48.41,28.37
    >>Kill |cRXP_ENEMY_Cirrusfly Queen|r.
    .complete 92463,1 --1/1 Cirrusfly Queen slain
    .mob Cirrusfly Queen
step
    #completewith next
    #arrowtext Click on\n|cRXP_PICK_Crystals|r
    .goto 2521,47.41,26.44,20,0
    .goto 2521,46.62,24.59,30,0
    .goto 2521,47.17,23.53,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Crystals|r
    .complete 93552,1 --15/15 Windstone Cluster
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Yala Windwatcher|r
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
    #arrowtext Use |T236219:0|t[Read Ley Line]\nnear the Thendal Grove Ley Line
    .goto 2521,46.34,17.91
    >>Use |T236219:0|t[Read Ley Line] near the Thendal Grove Ley Line
    *|cRXP_WARN_Found throughout the zone|r |cRXP_WARN_Use|r |T236219:0|t[Read Ley Line] |cRXP_WARN_near one to gain 100% Mana and Food Regen for 15 min instead of 15 sec|r.
    .complete 92597,1 --Use your Read Ley Line ability near the Thendal Grove Ley Line
    .macro Read Ley Line,236219 >>/use Read Ley Line
step << Horde
    #label UseRacialAbility
    #arrowtext Use |T1029587:0|t[Skysight]\nnear the |cRXP_PICK_Elemental Convergence|r
    .goto 2521,48.4,20.4
    >>Use |T1029587:0|t[Skysight] near the |cRXP_PICK_Elemental Convergence|r.
    *|cRXP_WARN_Found throughout the zone. Use |T1029587:0|t[Skysight] near one to gain 10% movement speed for 15 min instead of 15 sec.|r
    .complete 92598,1 --Use your Skysight ability near the Elemental Convergence
    .macro Skysight,1029587 >>/use spell:1259686
step
    #hidewindow
    #completewith Windstone Cluster
    #loop
    #arrowtext Kill |cRXP_ENEMY_Al'Aketh Convert|r and\n|cRXP_ENEMY_Roiling Winds|r\nClick on |cRXP_PICK_Crystals|r
    .goto 2521,46.85,17.68,15,0
    .goto 2521,47.22,19,30,0
    .goto 2521,48.3,19.06,30,0
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
    #arrowtext Talk to\n|cRXP_FRIENDLY_Yala Windwatcher|r
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yala Windwatcher|r.
    .turnin 92465 >>Turn in Agitators
    .accept 92469 >>Accept Return to Rorian
    .target Yala Windwatcher
step
    #completewith next
    #label Harvesting Windstones2
    #arrowtext Talk to\n|cRXP_FRIENDLY_Dalia the Collector|r
    .goto 2521,43.89,22.27,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalia the Collector|r.
    *|cRXP_WARN_Choose between mining,herbing or skinning profession|r
    .turnin 93552 >>Turn in Harvesting Windstones
    .target Dalia the Collector
step
    #completewith Harvesting Windstones2
    #hidewindow
    #arrowtext Go to\n|cRXP_FRIENDLY_Dalia the Collector|r
    .goto 2521,43.37,23.98,60 >>1
step
    #requires Harvesting Windstones2
    #arrowtext Talk to\n|cRXP_FRIENDLY_Dalia the Collector|r
    .goto 2521,43.37,23.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalia the Collector|r.
    *|cRXP_WARN_Choose between mining,herbing or skinning profession|r
    .turnin 93552 >>Turn in Harvesting Windstones
    .target Dalia the Collector
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
step << Alliance
    #arrowtext Talk to\n|cRXP_FRIENDLY_Falorne Fallwind|r
    .goto 2521,43.33,24.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falorne Fallwind|r.
    .turnin 92597 >>Turn in Reading the Ley Lines
    .target Falorne Fallwind
step << Rogue
    #arrowtext Talk to\n|cRXP_FRIENDLY_Akeri Duskblade|r
    .goto 2521,43.74,24.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akeri Duskblade|r.
    .turnin 92483 >>Turn in At Home in the Shadows
    .target Akeri Duskblade
step << Warrior
    #arrowtext Talk to\n|cRXP_FRIENDLY_Blademaster Ren|r
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blademaster Ren|r.
    .train 100,1 >>Train |T132333:0|t[Charge]
    .skipgossipid 136813,1
    .target Blademaster Ren
    .money <0.01
    .xp <4,1
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Elatrell Featherlight|r
    .goto 2521,43.44,24.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elatrell Featherlight|r.
    .turnin 92463 >>Turn in The Cirrusfly Queen
    .target Elatrell Featherlight
-- step << Rogue
--     .goto 2521,43.74,24.34
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akeri Duskblade|r.
--     .train
--     .skipgossipid 136810,1
--     .target Akeri Duskblade
step << Warrior
    #arrowtext Talk to\n|cRXP_FRIENDLY_Blademaster Ren|r
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blademaster Ren|r.
    .train 100,1 >>Train |T132333:0|t[Charge]
    .skipgossipid 136813,1
    .target Blademaster Ren
    .money <0.01
step << Warrior
    #arrowtext Talk to\n|cRXP_FRIENDLY_Blademaster Ren|r
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blademaster Ren|r.
    .turnin 92532 >>Turn in The Warrior's Path
    .target Blademaster Ren
step << Horde
    #arrowtext Talk to\n|cRXP_FRIENDLY_Ventaari Brightwish|r
    .goto 2521,42.607,24.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ventaari Brightwish::251487|r
    .turnin 92598 >>Turn in The Gift of Skysight
    .target Ventaari Brightwish::251487
step << Hunter
    #arrowtext Talk to\n|cRXP_FRIENDLY_Tai'ree Farsight|r
    .goto 2521,42.467,23.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tai'ree Farsight::251376|r
    .train 13163 >>Train |T132159:0|t[Aspect of the Monkey]
    .train 1978 >>Train |T132204:0|t[Serpent Sting]
    .target Tai'ree Farsight::251376
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Rorian the Dayseeker|r
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rorian the Dayseeker|r.
    .turnin 92469 >>Turn in Return to Rorian
    .accept 92471 >>Accept Aetheen of the Gales -- Unlocks at 4
    .target Rorian the Dayseeker
step << Mage
    #arrowtext Talk to\n|cRXP_FRIENDLY_Dorii Brightwhisper|r
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorii Brightwhisper|r.
    .train 116 >>Train |T135932:0|t[Frostbolt]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper
    .money <0.01
step << Mage
    #arrowtext Talk to\n|cRXP_FRIENDLY_Dorii Brightwhisper|r
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorii Brightwhisper|r.
    .turnin 92481 >>Turn in A Student of the Arcane
    .target Dorii Brightwhisper
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Aetheen of the Gales|r
    .goto 2521,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aetheen of the Gales|r.
    .turnin 92471 >>Turn in Aetheen of the Gales
    .accept 92470 >>Accept Foul Matriarch
    .target Aetheen of the Gales
step << Shaman
    #arrowtext Talk to\n|cRXP_FRIENDLY_Windshaper Boro|r
    .goto 2521,42.788,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windshaper Boro::251374|r
    .turnin 92466 >>Turn in Call of Earth
    .accept 92467 >>Accept Call of Earth
    .target Windshaper Boro::251374
step << Shaman
    #arrowtext Talk to\n|cRXP_FRIENDLY_Windshaper Boro|r
    .goto 2521,42.788,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windshaper Boro|r.
    .train 8042 >>Train |T136026:0|t[Earth Shock]
    .target Windshaper Boro
step << Shaman
    #arrowtext Use |T134743:0|t[Earth Sapta]\nTalk to |cRXP_FRIENDLY_Minor Manifestation of Earth|r
    .goto 2521,48.802,25.869,25,0
    .goto 2521,49.677,23.806
    >>Use the |T134743:0|t[Earth Sapta].
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Minor Manifestation of Earth::251166|r
    .turnin 92467 >>Turn in Call of Earth
    .accept 92468 >>Accept Call of Earth
    .target Minor Manifestation of Earth::251166
    .use 6635
step << Shaman
    #arrowtext Talk to\n|cRXP_FRIENDLY_Windshaper Boro|r
    .goto 2521,42.787,23.564
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Windshaper Boro::251374|r
    .target Windshaper Boro::251374
    .turnin 92468 >>Turn in Call of Earth
step
    #completewith AggressiveVendor
    #label Aggressive Encroachment
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valreaa Valewind|r.
    .accept 92473 >>Accept Aggressive Encroachment
    .target Valreaa Valewind
step
    #completewith Aggressive Encroachment
    #arrowtext Buy\n|T133637:0|t[Apprentice's Herb Pouch]
    .train 2366,3
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uualia Suncrest::251537|r
    .collect 277113,1 >>Buy an |T133637:0|t[Apprentice's Herb Pouch]
    .target Uualia Suncrest::251537
step
    #completewith Aggressive Encroachment
    #arrowtext Buy |T134708:0|t[Mining Pick]\nand |T133635:0|t[Apprentice's Mining Pack]
    .train 2575,3
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uualia Suncrest::251537|r
    .collect 2901,1 >>Buy a |T134708:0|t[Mining Pick]
    .collect 277115,1 >>Buy an |T133635:0|t[Apprentice's Mining Pack]
    .target Uualia Suncrest::251537
step
    #completewith Aggressive Encroachment
    #arrowtext Buy |T135637:0|t[Skinning Knife]\nand |T133634:0|t[Apprentice's Skinning Satchel]
    .train 8613,3
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uualia Suncrest::251537|r
    .collect 7005,1 >>Buy a |T135637:0|t[Skinning Knife]
    .collect 277114,1 >>Buy an |T133634:0|t[Apprentice's Skinning Satchel]
    .target Uualia Suncrest::251537
step
    #label AggressiveVendor
    #completewith Aggressive Encroachment
    #arrowtext Vendor trash\nBuy bags and profession tools if needed
    .goto 2521,42.76,24.5
    .vendor >>|cRXP_WARN_Optional: Buy Reagent Bag, Profession tools and Vendor trash|r
step
    #requires Aggressive Encroachment
    #arrowtext Talk to\n|cRXP_FRIENDLY_Valreaa Valewind|r
    .goto 2521,42.41,25.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valreaa Valewind|r.
    .accept 92473 >>Accept Aggressive Encroachment
    .target Valreaa Valewind
step
    #loop
    #arrowtext Kill\n|cRXP_ENEMY_Bears|r
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
    #arrowtext Kill\n|cRXP_ENEMY_Urs'anah|r
    .goto 2521,37.52,25.6,30,0
    .goto 2521,37.36,24.63,30,0
    .goto 2521,35.88,23.31,10,0
    .goto 2521,35.65,26.06
    >>Kill |cRXP_ENEMY_Urs'anah|r. Loot him for |T5840609:0|t[|cRXP_LOOT_Head of Urs'anah|r].
    .complete 92470,2 --1/1 Head of Urs'anah
    .mob Urs'anah
step
    #arrowtext Kill\n|cRXP_ENEMY_Ursera Scavenger|r
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
    #arrowtext Die to mobs\nand resurrect at the graveyard
    #loop
    .goto 2521,36.47,23.67,30,0
    .goto 2521,35.88,23.79,30,0
    .goto 2521,35.71,25.7,30,0
    .deathskip >>Die to mobs and ressurect at the graveyard
    .subzoneskip Thendal Grove
step
    #requires Turn in Foul Matriarch
    #arrowtext Talk to\n|cRXP_FRIENDLY_Aetheen of the Gales|r
    .goto 2521,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aetheen of the Gales|r.
    .turnin 92470 >>Turn in Foul Matriarch
    .accept 92472 >>Accept The Next Step
    .accept 96638 >>Accept The Adventurer
    .target Aetheen of the Gales
step
    #completewith next
    #label Aggressive Encroachment2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valreaa Valewind|r.
    .turnin 92473 >>Turn in Aggressive Encroachment
    .target Valreaa Valewind
step
    #completewith Aggressive Encroachment2
    #arrowtext Vendor trash
    .goto 2521,42.76,24.52
    .vendor >>|cRXP_WARN_Vendor trash|r
step
    #requires Aggressive Encroachment2
    #arrowtext Talk to\n|cRXP_FRIENDLY_Valreaa Valewind|r
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
    #arrowtext Go to |cRXP_FRIENDLY_Hanaa Nightwind|r\nKill mobs along the way
    .goto 2521,38.31,30.17,100 >>Kill mobs along the way if you can do so without losing time.
step
    #requires Al'Aketh Thugs
    #arrowtext Talk to\n|cRXP_FRIENDLY_Hanaa Nightwind|r
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
    #arrowtext Kill\n|cRXP_ENEMY_Malduko Cloudcrush|r
    .goto 2521,37.04,32.93,20,0
    >>Kill |cRXP_ENEMY_Malduko Cloudcrush|r.
    .complete 92544,3 --|1/1 Malduko Cloudcrush slain
    .mob Malduko Cloudcrush::256935
step
    #completewith Malduko Cloudcrush
    #arrowtext Climb to the\nupper level of the temple
    .goto 2521,36.032,33.545,50 >>Head to the upper level of the temple
step
    #requires Malduko Cloudcrush
    #arrowtext Kill\n|cRXP_ENEMY_Malduko Cloudcrush|r
    .goto 2521,36.032,33.545
    >>Kill |cRXP_ENEMY_Malduko Cloudcrush|r atop the temple.
    .complete 92544,3 --|1/1 Malduko Cloudcrush slain
    .mob Malduko Cloudcrush::256935
step << Horde
    .isOnQuest 92544
    .goto 2521,35.910,33.605
    .cast 1259686 >>Use |T1029587:0|t[Skysight] for the 10% movement speed buff.
    .cooldown spell,1259686,>0,1
step
    #loop
    #arrowtext Kill\n|cRXP_ENEMY_Al'Aketh Brute|r and |cRXP_ENEMY_Al'Aketh Neophyte|r
    .goto 2521,35.75,31.93,40,0
    .goto 2521,35.33,34.19,30,0
    .goto 2521,36.34,31.56,40,0
    .goto 2521,37.3,32.89,40,0
    .goto 2521,37.16,34.72,40,0
    .goto 2521,38.08,35.01,40,0
    >>Kill |cRXP_ENEMY_Al'Aketh Brute|r and |cRXP_ENEMY_Al'Aketh Neophyte|r.
    *|cRXP_WARN_Refresh|r |T236219:0|t[Read Ley Line] |cRXP_WARN_near the Leyline|r << Alliance
    .complete 92544,1 --|6/6 Al'Aketh Brute slain
    .complete 92544,2 --|4/4 Al'Aketh Neophyte slain
    .mob Al'Aketh Brute::251145
    .mob Al'Aketh Neophyte::251448
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Hanaa Nightwind|r
    .goto 2521,38.32,30.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanaa Nightwind|r.
    .turnin 92544 >>Turn in Al'Aketh Thugs
    .target Hanaa Nightwind
step
    #completewith next
    +|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Windstones|r throughout the zone to obtain an item that restores health and mana.
    *If you spot a Tornado, approach it to gain 40% increased movement speed for 5 minutes. The effect ends if you take damage
step
    .isOnQuest 92472
    #completewith next
    #label The Next Step
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda|r.
    .turnin 92472 >>Turn in The Next Step
step
    #completewith The Next Step
    #arrowtext Vendor trash
    .goto 2521,44.72,45.47
    .vendor >>|cRXP_WARN_Vendor trash|r
step
    #requires The Next Step
    .isOnQuest 92472
    #arrowtext Talk to\n|cRXP_FRIENDLY_Constable Aonda|r
    .goto 2521,45.67,45.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda|r.
    .turnin 92472 >>Turn in The Next Step
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Constable Aonda|r
    .goto 2521,45.67,45.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda|r.
    .accept 93461 >>Accept Welcome to Shen'dar Village << Alliance
    .accept 92514 >>Accept Welcome to Shen'dar Village << Horde
    .target Constable Aonda
step << Mage
    .goto 2521,45.1,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorii Brightwhisper|r.
    .train 143 >>Train |T135812:0|t[Fireball]
    .train 2136 >>Train |T135807:0|t[Fire Blast]
    .train 1296917 >>Train |T8188276:0|t[Comprehend Scroll]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper
    .money <0.03
    .xp <6,1
step << Alliance
    #arrowtext Talk to\n|cRXP_FRIENDLY_Rathiril Sunlance|r
    .goto 2521,45.04,46.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rathiril Sunlance|r.
    .complete 93461,1 --1/1 Speak with Rathiril Sunlance
    .accept 92596 >>Accept The High Order
    .target Rathiril Sunlance
step << Alliance
    #arrowtext Listen to\n|cRXP_FRIENDLY_Rathiril Sunlance|r
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
    #arrowtext Talk to\n|cRXP_FRIENDLY_Rathiril Sunlance|r
    .goto 2521,44.98,46.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rathiril Sunlance|r.
    .turnin 92596 >>Turn in The High Order
    .accept 94413 >>Accept A Magical Affront
    .target Rathiril Sunlance
step << Horde
    #arrowtext Talk to\n|cRXP_FRIENDLY_Illaya Amberwind|r
    .goto 2521,43.52,44.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illaya Amberwind|r.
    .complete 92514,1 --1/1 Speak with Illaya Amberwind
    .accept 92595 >>Accept The Windshapers
    .target Illaya Amberwind
step << Horde
    #arrowtext Listen to\n|cRXP_FRIENDLY_Illaya Amberwind|r
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
    #arrowtext Talk to\n|cRXP_FRIENDLY_Illaya Amberwind|r
    .goto 2521,43.52,44.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illaya Amberwind|r.
    .turnin 92595 >>Turn in The Windshapers
    .accept 94411 >>Accept Meddlesome Mages
    .target Illaya Amberwind
step << Shaman
    #arrowtext Talk to\n|cRXP_FRIENDLY_Aarnor Galestrike|r
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aarnor Galestrike::254082|r
    .trainer >> Train your class spells
    .target Aarnor Galestrike::254082

step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Innkeeper|r
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Innkeeper|r.
    .complete 92514,2 << Horde --1/1 Speak with the Innkeeper
    .target the Innkeeper
-- step << Horde
--     #arrowtext Set your Hearthstone\nto Shen'dar Village
--     .goto 2521,43.02,43.24
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Innkeeper|r.
--     .home >>Set your Hearthstone to Shen'dar Village
--     .target the Innkeeper
step << Horde Rogue
    #arrowtext Talk to\n|cRXP_FRIENDLY_Miriaan Mistblade|r
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade|r
    .train 1757 >> Train |T136189:0|t[Sinister Strike]
    .train 1776 >> Train |T132155:0|t[Gouge]
    .skipgossipid 136810
    .target Miriaan Mistblade
    .money <0.02
    .xp <6,1
step << Horde Rogue
    #arrowtext Talk to\n|cRXP_FRIENDLY_Miriaan Mistblade|r
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade|r
    .train 1757 >> Train |T136189:0|t[Sinister Strike]
    .skipgossipid 136810
    .target Miriaan Mistblade
    .xp <6,1
step << Horde Mage
    #completewith next
    #label immediate wand
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade|r
    .train 7411 >>Train |T136189:0|t[Enchanting] |cRXP_WARN_for immediate wand|r
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
    .goto 2521,43.24,43.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade|r
    .train 7411 >>Train |T136189:0|t[Enchanting] |cRXP_WARN_for immediate wand|r
    .skipgossipid 137559
    .target Nasalanna Windsinger
step << Horde Mage
    .isOnQuest 93461 << Alliance
    .isOnQuest 92514 << Horde
    .train 7411,3
    >>Craft |T135225:0|t[Runed Copper Rod] and |T135975:0|t[Novice's Practice Wand]
    .collect 6218,3
    .collect 247789,1
    -- craft macro
step << Alliance Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade|r
    .train 1757 >> Train |T136189:0|t[Sinister Strike]
    .train 1776 >> Train |T132155:0|t[Gouge]
    .skipgossipid 136810
    .target Miriaan Mistblade
    .money <0.02
    .xp <6,1
step << Alliance Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade|r
    .train 1757 >> Train |T136189:0|t[Sinister Strike]
    .skipgossipid 136810
    .target Miriaan Mistblade
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
    .goto 2521,43.24,43.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade|r and buy |T133942:0|t[Copper Rod], |T132841:0|t[Mote of Magic] and |T135435:0|t[Simple Wood].
    .collect 6217,1
    .collect 247786,3
    .collect 4470,1
    .skipgossipid 137558
    .target Nasalanna Windsinger
step << Alliance Mage
    #requires immediate wand
    .goto 2521,43.24,43.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade|r
    .train 7411 >>Train |T136189:0|t[Enchanting] |cRXP_WARN_for immediate wand|r
    .skipgossipid 137559
    .target Nasalanna Windsinger
step << Alliance Mage
    .isOnQuest 93461 << Alliance
    .isOnQuest 92514 << Horde
    .train 7411,3
    >>Craft |T135225:0|t[Runed Copper Rod] and |T135975:0|t[Novice's Practice Wand]
    .collect 6218,1
    .collect 247789,1
    -- craft macro
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
step << Hunter
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tephri Tinderforged::257421|r
    >>|cRXP_BUY_Buy and equip a|r |T135499:0|t[Hornwood Recurve Bow]
    >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_until your Quiver is full|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Tephri Tinderforged::257421
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Teeri Wellwind|r
    .goto 2521,44.47,44.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teeri Wellwind|r.
    .accept 93319 >>Accept Pilfered Windstones
    .accept 92516 >>Accept Hippogryph Harrassment
    .target Teeri Wellwind
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Indari Sunseam|r
    .goto 2521,44.68,44.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Indari Sunseam|r.
    .accept 92515 >>Accept The Problem With Prideclaws
    .target Indari Sunseam
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Taleen Shimmerthread|r
    .goto 2521,44.88,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taleen Shimmerthread|r.
    .accept 93951 >>Accept A Little Beauty
    .target Taleen Shimmerthread
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Zerril Softbreeze|r
    .goto 2521,43.850,43.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .accept 92553 >>Accept Restocking the Larders
    .target Zerril Softbreeze::251905
step
    #arrowtext Click on\n|cRXP_PICK_Bounty Available: Vulgara the Insatiable!|r
    .goto 2521,43.37,45.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bounty Available: Vulgara the Insatiable!|r
    .accept 93318 >>Accept WANTED: Vulgara the Insatiable
    .target Bounty Available: Vulgara the Insatiable!
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Naleeia Tattermend|r
    .goto 2521,43.073,46.306
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naleeia Tattermend::257018|r.
    .train 3273 >>Train First Aid
    .skipgossipid 137555
    .target Naleeia Tattermend::257018
step
    #completewith BadwindBennicA
    >>Kill |cRXP_ENEMY_Prideclaws|r. Loot them for the |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #completewith BadwindBennicA
    >>Kill |cRXP_ENEMY_Galestrider|r. Loot them for |T133972:0|t[|cRXP_LOOT_Strider Meat|r] and |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob Galestrider::251661
step << Horde
    #arrowtext Kill\n|cRXP_ENEMY_High Order Apprentices|r
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
    #arrowtext Enter the cave\nto reach |cRXP_ENEMY_"Badwind" Bennic|r
    .goto 2521,48.813,36.434,10,0
    .goto 2521,49.355,35.793,10,0
    .goto 2521,49.720,36.030,10,0
    .goto 2521,49.982,35.679,10,0
    .goto 2521,49.537,34.325,10 >>Enter the cave
step
    #requires BadwindBennicA
    #label BadwindBennicB
    #arrowtext Kill\n|cRXP_ENEMY_"Badwind" Bennic|r
    .goto 2521,50.680,34.214
    >>Kill |cRXP_ENEMY_"Badwind" Bennic|r.
    *|cRXP_WARN_Refresh|r |T236219:0|t[Read Ley Line] |cRXP_WARN_near the Leyline|r << Alliance
    .complete 92517,2 --|1/1 "Badwind" Bennic slain
    .mob "Badwind" Bennic::255534
step
    #loop
    #arrowtext Kill\n|cRXP_ENEMY_Highlands Bandits|r
    .goto 2521,49.537,34.325,35,0 -- Cave Entrance
    .goto 2521,47.645,36.289,35,0
    .goto 2521,49.751,38.962,35,0
    .goto 2521,49.537,34.325,35,0 -- Cave Entrance
    .goto 2521,50.680,34.214,35,0 -- Badwind Bennic Location
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
    .skipgossipid 137551
step
    #completewith To Shendalar
    #arrowtext Talk to\n|cRXP_FRIENDLY_Zerril Softbreeze|r
    .goto 2521,43.86,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Zerril Softbreeze|r.
    .vendor >>Vendor Trash
    .target Zerril Softbreeze::251905
step
    #requires To Shendalar
    .goto 2521,43.850,43.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    -- .complete 96646,1 --|Learn cooking from Zerril Softbreeze in Shen'dar Village
    .train 2550 >>Train |T133971:0|t[Apprentice Cook]
    .skipgossipid 137551
    .target Zerril Softbreeze::251905
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Raan Wildwind|r
    .goto 2521,41.67,44.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind|r.
    .turnin 96638 >>Turn in The Adventurer
    .target Raan Wildwind
    .accept 96101 >>Accept The Great Outdoors
step
    #arrowtext Use /sit\nnear the campfire
    .goto 2521,41.67,44.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind|r.
    .complete 96101,1 --1/1 Use the /sit emote near the campfire
    .emote SIT,263664
    .timer 60, RP
    .target Raan Wildwind
step
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 96101,2 --Gain the Boosted Rest buff
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Raan Wildwind|r
    .goto 2521,41.67,44.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind|r.
    .turnin 96101 >>Turn in The Great Outdoors
    .target Raan Wildwind
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Raan Wildwind|r
    .train 2575,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97970 >>Accept Camping 101: Mining
    .target Raan Wildwind::263664
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Raan Wildwind|r
    .train 8613,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97971 >>Accept Camping 101: Skinning
    .target Raan Wildwind::263664
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Raan Wildwind|r
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 96646 >>Accept Camping 101: Cooking
    .target Raan Wildwind::263664
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Raan Wildwind|r
    .train 2366,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97968 >>Accept Camping 101: Herbalism
    .target Raan Wildwind::263664
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Raan Wildwind|r
    .train 3273,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97965 >>Accept Camping 101: First Aid
    .target Raan Wildwind::263664
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Raan Wildwind|r
    .train 7620,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97967 >>Accept Camping 101: Fishing
    .target Raan Wildwind::263664
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Raan Wildwind|r
    .train 2259,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97963 >>Accept Camping 101: Alchemy
    .target Raan Wildwind::263664
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Raan Wildwind|r
    .train 2018,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97964 >>Accept Camping 101: Blacksmithing
    .target Raan Wildwind::263664
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Raan Wildwind|r
    .train 3908,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97973 >>Accept Camping 101: Tailoring
    .target Raan Wildwind::263664
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Raan Wildwind|r
    .train 7411,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 98286 >>Accept Camping 101: Enchanting
    .target Raan Wildwind::263664
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Raan Wildwind|r
    .train 2108,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97969 >>Accept Camping 101: Leatherworking
    .target Raan Wildwind::263664
step << Horde
    .goto 2521,43.518,44.788
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illaya Amberwind::251902|r
    .turnin 94411 >>Turn in Meddlesome Mages
    .target Illaya Amberwind::251902
step << Horde
    #completewith HippogryphHarrassmentA
    #hidewindow
    #arrowtext Kill |cRXP_ENEMY_Hippogryphs|r\nClick on |cRXP_PICK_Hippogryph Downs|r
    #loop
    -- .goto 2521,39.66,49.62,40,0
    -- .goto 2521,38.69,50.31,40,0
    .goto 2521,36.44,50.93,40,0
    .goto 2521,35.16,51.07,40,0
    .goto 2521,34.12,51.6,40,0
    .goto 2521,34.52,52.76,40,0
    .goto 2521,35.12,54.08,40,0
    .goto 2521,35.58,53.08,40,0
    .goto 2521,36.02,54.28,40,0
    .goto 2521,35.72,55.36,40,0
    .goto 2521,35.63,57.34,40,0
    .goto 2521,37.13,56.6,40,0
    .goto 2521,36.61,58.64,40,0
    .goto 2521,38.61,56.89,40,0
    .goto 2521,40.22,56.94,40,0
    +1
step
    #completewith VulgarasHeadA
    >>Kill |cRXP_ENEMY_Prideclaws|r. Loot them for the |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #completewith VulgarasHeadA
    >>Kill |cRXP_ENEMY_Galestrider|r. Loot them for |T133972:0|t[|cRXP_LOOT_Strider Meat|r] and |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob Galestrider::251661
step << Alliance
    #arrowtext Defeat\n|cRXP_ENEMY_Windshaper Novice Seer|r
    #loop
    .goto 2521,39.56,47.18,35,0
    .goto 2521,38.73,47.62,35,0
    .goto 2521,37.56,47.25,35,0
    .goto 2521,38.67,46.55,35,0
    >>Kill the |cRXP_ENEMY_Windshaper Novice Seer|r.
    *|cRXP_WARN_Refresh|r |T236219:0|t[Read Ley Line] |cRXP_WARN_near the Leyline|r << Alliance
    .complete 94413,1 --6/6 Windshaper Novice Seer defeated
    .mob Windshaper Novice Seer
step << Alliance
    #completewith HippogryphHarrassmentA
    #hidewindow
    #arrowtext Kill |cRXP_ENEMY_Hippogryphs|r\nClick on |cRXP_PICK_Hippogryph Downs|r
    #loop
    .goto 2521,36.44,50.93,40,0
    .goto 2521,35.16,51.07,40,0
    .goto 2521,34.12,51.6,40,0
    .goto 2521,34.52,52.76,40,0
    .goto 2521,35.12,54.08,40,0
    .goto 2521,35.58,53.08,40,0
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
    .complete 92516,1 --|8/8 Hippogryph Youth slain
    .complete 92516,2 --|6/6 Hippogryph Protector slain
    .complete 92516,3 --|1/1 Hippogryph Matriarch slain
    .mob Hippogryph Matriarch::251261
    .mob Hippogryph Protector::251284
    .mob Hippogryph Youth::251291
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
    #label VulgarasHeadA
    #arrowtext Kill\n|cRXP_ENEMY_Vulgara|r
    .goto 2521,43.079,51.028,15,0
    .goto 2521,42.978,51.803,15,0
    .goto 2521,42.75,52.68
    >>Kill |cRXP_ENEMY_Vulgara|r|cRXP_WARN_(level 8 elite)|r on the mountain. Loot it for |T4218759:0|t[|cRXP_LOOT_Vulgar's Head|r].
    *|cRXP_WARN_Look for a group to kill it or skip the quest; respawns are lengthy|r.
    .complete 93318,1 --1/1 Vulgara's Head
    .mob Vulgara
step
    .isQuestComplete 97965
    #arrowtext Talk to\n|cRXP_FRIENDLY_Naleeia Tattermend|r
    .goto 2521,43.08,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naleeia Tattermend::257018|r
    .turnin 97965 >>Turn in Camping 101: First Aid
    .target Naleeia Tattermend::257018
step
    .train 2366,3
    .isQuestComplete 97968
    #arrowtext Talk to\n|cRXP_FRIENDLY_Halassa Fernbreeze|r
    .goto 2521,42.97,43.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Halassa Fernbreeze::257021|r
    .turnin 97968 >>Turn in Camping 101: Herbalism
    .target Halassa Fernbreeze::257021
step
    .train 7411,3
    .isQuestComplete 98286
    #arrowtext Talk to\n|cRXP_FRIENDLY_Nasalanna Windsinger|r
    .goto 2521,43.25,43.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nasalanna Windsinger::257020|r
    .turnin 98286 >>Turn in Camping 101: Enchanting
    .target Nasalanna Windsinger::257020
step
    .train 8613,3
    .isQuestComplete 97971
    #arrowtext Talk to\n|cRXP_FRIENDLY_Mendalass Tattermend|r
    .goto 2521,43.3,43.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mendalass Tattermend::263664|r
    .turnin 97971 >>Turn in Camping 101: Skinning
    .target Mendalass Tattermend::257024
step
    -- .isOnQuest
    #arrowtext Talk to\n|cRXP_FRIENDLY_Zerril Softbreeze|r\n Don't sell Strider meat &eggs
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r and buy 5 |T134059:0|t[Mild Spices]
    .vendor >>Vendor Trash
    .collect 2678,5
    .skipgossipid 137550
    .target Zerril Softbreeze::251905
step
    .isQuestComplete 92553
    #arrowtext Talk to\n|cRXP_FRIENDLY_Zerril Softbreeze|r
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .turnin 92553 >>Turn in Restocking the Larders
    .target Zerril Softbreeze::251905
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Zerril Softbreeze|r
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .turnin 96646 >>Turn in Camping 101: Cooking
    .target Zerril Softbreeze::251905
step
    .isOnQuest 92553
    .itemcount 1971,<3
    #arrowtext Craft Herb Baked Egg \ Keep 3 Small Eggs 
    .goto 2521,43.86,43.85
    >>Craft |T132834:0|t[Herb Baked Egg] |cRXP_WARN_but keep at least 3 for the quest, you'll need them later|r
    *|cRXP_WARN_Any buff food grants 5% increased experience from kills for 15 minutes|r.
    .collect 6888,1
    --here insert macro
step
    .isQuestTurnedIn 92553
    .itemcount 1971,<1
    .goto 2521,43.86,43.85
    >>Craft as many |T132834:0|t[Herb Baked Eggs] as you can.
    *|cRXP_WARN_Any buff food grants 5% increased experience from kills for 15 minutes|r.
    .collect 6888,1
    --here insert macro
step
    .isQuestComplete 97963
    #arrowtext Talk to\n|cRXP_FRIENDLY_Nyassa Swiftdraught|r
    .goto 2521,43.7,43.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyassa Swiftdraught::257019|r
    .turnin 97963 >>Turn in Camping 101: Alchemy
    .target Nyassa Swiftdraught::257019
step << Hunter
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tephri Tinderforged::257421|r
    >>|cRXP_BUY_Buy and equip a|r |T135499:0|t[Hornwood Recurve Bow]
    >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_until your Quiver is full|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Tephri Tinderforged::257421
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Taleen Shimmerthread|r
    .goto 2521,44.873,44.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taleen Shimmerthread::251991|r
    .target Taleen Shimmerthread::251991
    .turnin 93951 >>Turn in A Little Beauty
step
    .isQuestComplete 97973
    #arrowtext Talk to\n|cRXP_FRIENDLY_Taleen Shimmerthread|r
    .goto 2521,44.88,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taleen Shimmerthread::251991|r
    .turnin 97973 >>Turn in Camping 101: Tailoring
    .target Taleen Shimmerthread::251991
step
    .isQuestComplete 97964
    #arrowtext Talk to\n|cRXP_FRIENDLY_Aedi Thriceforged|r
    .goto 2521,44.89,44.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aedi Thriceforged::251913|r
    .turnin 97964 >>Turn in Camping 101: Blacksmithing
    .target Aedi Thriceforged::251913
step
    .isQuestComplete 97970
    #arrowtext Talk to\n|cRXP_FRIENDLY_Messana Crestwind|r
    .goto 2521,44.77,44.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messana Crestwind::257022|r
    .turnin 97970 >>Turn in Camping 101: Mining
    .target Messana Crestwind::257022
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Indari Sunseam|r
    .goto 2521,44.686,44.518
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Indari Sunseam::251993|r
    .target Indari Sunseam::251993
    .turnin 92515 >>Turn in The Problem With Prideclaws
step
    .isQuestComplete 97969
    #arrowtext Talk to\n|cRXP_FRIENDLY_Indari Sunseam|r
    .goto 2521,44.69,44.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Indari Sunseam::251993|r
    .turnin 97969 >>Turn in Camping 101: Leatherworking
    .target Indari Sunseam::251993
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Teeri Wellwind|r
    .goto 2521,44.465,44.966
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teeri Wellwind::251906|r
    .target Teeri Wellwind::251906
    .turnin 92516 >>Turn in Hippogryph Harrassment
    .turnin 93319 >>Turn in Pilfered Windstones
-- step << Warrior
--     .goto 2521,44.95,45.1
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Corsan Earthrazer|r
--     .train 3127 >> Train |T132269:0|t[Parry]
--     .skipgossipid 136813
--     .target Corsan Earthrazer
--     .money <0.01
--     .xp <6,1
step
    .isOnQuest 93318
    .isQuestComplete 93318
    #arrowtext Talk to\n|cRXP_FRIENDLY_Danarii Bellowveil|r
    .goto 2521,45.234,45.186
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danarii Bellowveil::252172|r
    .target Danarii Bellowveil::252172
    .turnin 93318 >>Turn in WANTED: Vulgara the Insatiable
step
    .abandon 93318 >>Abandon WANTED: Vulgara the Insatiable
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Constable Aonda|r
    .goto 2521,45.667,45.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda::251523|r
    .target Constable Aonda::251523
    .turnin 92517 >>Turn in The Criminal Element
    .accept 93036 >>Accept Infiltrating the Cult
step << Hunter
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elayaa Easewind::254084|r.
    .train 5116 >>Train |T135860:0|t[Concussive Shot]
    .train 3127 >>Train |T132269:0|t[Parry]
    .target Elayaa Easewind::254084
step << Druid
    .goto 2521,45.153,44.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naeluna Swiftmend::254081|r.
    .trainer >>Train your spells
    .target Naeluna Swiftmend::254081
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Sania Silverstream|r
    .goto 2521,44.831,45.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sania Silverstream::251904|r
    .target Sania Silverstream::251904
    .turnin 93036 >>Turn in Infiltrating the Cult
    .accept 92529 >>Accept Falaath Village
step
    .goto 2521,44.831,45.515
    .target Sania Silverstream::251904
    .aura 1254832 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sania Silverstream::251904|r
    .skipgossipid 135874
step << Rogue
    .goto 2521,43.15,43.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Miriaan Mistblade|r
    .train 5277 >> Train |T136205:0|t[Evasion]
    .train 6760 >> Train |T132292:0|t[Eviscerate]
    .skipgossipid 136810
    .target Miriaan Mistblade
    .money <0.04
    .xp <6,1
step << Shaman
    #arrowtext Talk to\n|cRXP_FRIENDLY_Aarnor Galestrike|r
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aarnor Galestrike::254082|r
    .trainer >> Train your class spells
    .target Aarnor Galestrike::254082
step << Alliance
    .goto 2521,44.979,46.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rathiril Sunlance::251903|r.
    .target Rathiril Sunlance::251903
    .turnin 94413 >>Turn in A Magical Affront
step
    .isQuestComplete 97967
    #arrowtext Talk to\n|cRXP_FRIENDLY_Fenn Fairweather|r
    .goto 2521,45.03,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenn Fairweather::251992|r
    .turnin 97967 >>Turn in Camping 101: Fishing
    .target Fenn Fairweather::251992
-- step << Mage
--     .goto 2521,45.1,45.87
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorii Brightwhisper|r.
--     .train 143 >>Train |T135812:0|t[Fireball]
--     .train 2136 >>Train |T135807:0|t[Fire Blast]
--     .train 1296917 >>Train |T8188276:0|t[Comprehend Scroll]
--     .skipgossipid 136807,1
--     .target Dorii Brightwhisper
--     .money <0.03
--     .xp <8,1
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Missionary Jasaan|r
    .goto 2521,46.880,56.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Missionary Jasaan::257065|r
    .target Missionary Jasaan::257065
    .turnin 92529 >>Turn in Falaath Village
    .accept 92528 >>Accept Among the Faithful
step
    #arrowtext Click on the |cRXP_PICK_Wardrobe|r
    .goto 2521,48.87,53.88
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Wardrobe|r.
    .complete 92528,1 --1/1 Learn about the cultists' plans
    .skipgossipid 136768
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Constable Aonda|r
    .goto 2521,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda|r.
    .turnin 92528 >>Turn in Among the Faithful
    .accept 92550 >>Accept Havoc in the Highlands
    .accept 93926 >>Accept The Western Watch
    .target Constable Aonda
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Danarii Bellowveil|r
    .goto 2521,45.25,45.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danarii Bellowveil|r.
    .accept 92551 >>Accept Stolen Supplies
    .target Danarii Bellowveil
step
    #arrowtext Talk to |cRXP_FRIENDLY_Piecekeeper Vaniel|r
    .goto 2521,42.32,62.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Piecekeeper Vaniel::252155|r.
    .complete 93926,1 --1/1 Check in on the Western Watchtower in the Shen'dar Highlands
    .target Piecekeeper Vaniel::252155
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Peacekeeper Vaaniel|r
    .goto 2521,42.33,62.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Piecekeeper Vaniel::252155|r.
    .turnin 93926 >>Turn in The Western Watch
    .accept 93927 >>Accept A Last Request
    .target Piecekeeper Vaniel::252155
step
    #arrowtext Click on the |cRXP_PICK_Note|r
    .goto 2521,42.38,62.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Bloody Note|r.
    .complete 93927,1 --1/1 Collect and read the note
step
    #arrowtext Click on |cRXP_PICK_Raani Windgazer|r
    .goto 2521,41.12,64.09
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Raani Windgazer|r.
    .complete 93927,3 --1/1 Raani's Favorite Feather
step
    #arrowtext Click on |cRXP_PICK_Arvensus Shadowsong|r
    .goto 2521,40.988,64.088
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Arvensus Shadowsong|r.
    .complete 93927,4 --1/1 Shadowsong Family Signet
step
    #arrowtext Kill\n|cRXP_ENEMY_Skypriest Aanders|r
    .goto 2521,40.99,64.09
    >>Kill |cRXP_ENEMY_Skypriest Aanders|r.
    .complete 93927,2 --1/1 Skypriest Aanders slain
    .mob Skypriest Aanders
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
    #arrowtext Kill |cRXP_ENEMY_Commander Cyclas|r\nLoot |T134161:0|t[|cRXP_LOOT_Commander Cyclas's Head|r]
    .goto 2521,50.29,56.95
    >>Kill |cRXP_ENEMY_Commander Cyclas|r. Loot him for |T134161:0|t[|cRXP_LOOT_Commander Cyclas's Head|r].
    .complete 92550,3 --1/1 Commander Cyclas's Head

-- Maybe run between the two houses because of the supply caches? Drop chance seems to be pretty low sometimes
step
    #completewith LivingLightningA
    #hidewindow
    #loop
    .goto 2521,49.765,57.237,15,0
    .goto 2521,49.877,56.539,25,0
    .goto 2521,49.629,54.728,25,0
    .goto 2521,48.823,54.315,15,0
    .goto 2521,49.058,53.545,15,0
    .goto 2521,47.641,54.140,30,0
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
    #completewith next
    #label StolenSuppliesA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danarii Bellowveil|r.
    .turnin 92551 >>Turn in Stolen Supplies
    .target Danarii Bellowveil
step
    #arrowtext Follow the way\nup the mountain
    #completewith StolenSuppliesA
    .goto 2521,44.111,45.843,10 >>Follow the way up the mountain.
step
    #requires StolenSuppliesA
    #arrowtext Talk to\n|cRXP_FRIENDLY_Danarii Bellowveil|r
    .goto 2521,45.24,45.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danarii Bellowveil|r.
    .turnin 92551 >>Turn in Stolen Supplies
    .target Danarii Bellowveil
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Constable Aonda|r
    .goto 2521,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda|r.
    .turnin 92550 >>Turn in Havoc in the Highlands
    .turnin 93927 >>Turn in A Last Request
    .accept 92701 >>Accept To Valanaar << Alliance
    .accept 92579 >>Accept To Valanaar << Horde
    .accept 93948 >>Accept Deliver the Signet
    .target Constable Aonda
step
    .goto 2521,60.640,72.664
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyalah Brightfire::257006|r.
    .target Nyalah Brightfire::257006
    .accept 93317 >>Accept Crab Season
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donaal Downbreeze::255940|r.
    .target Donaal Downbreeze::255940
    .bindlocation 16638
    .goto 2521,62.180,72.616
    .home >>Set your Hearthstone to Valanaar
step
    .goto 2521,62.096,73.339
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alvarion Windfield::252448|r.
    .target Alvarion Windfield::252448
    .accept 92679 >>Accept Blood Tithe
step
    .goto 2521,63.973,75.095
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
    .target Lotheluum Starbreeze::252359
    .accept 94484 >>Accept Unnerving Silence
step
    .goto 2521,65.956,74.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ealaane Nimbuswalker::259012|r.
    .target Ealaane Nimbuswalker::259012
    .accept 94896 >>Accept Aid For The Refugees
    .accept 94897 >>Accept The Fate of a Loved One
step
    #completewith next
    #label DeliverTheSignetA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .turnin 93948 >>Turn in Deliver the Signet
    .target Talaanis Shadowsong
step
    #completewith DeliverTheSignetA
    #arrowtext Climb the tower
    .goto 2521,65.749,76.287,10,0
    .goto 2521,66.479,76.715,8,0
    .goto 2521,66.488,76.458,8,0
    .goto 2521,66.389,77.095,8,0
    .goto 2521,65.962,76.525,8,0
    .goto 2521,66.285,76.160,8,0
    .goto 2521,66.423,76.660,8 >>Climb the tower
step
    #requires DeliverTheSignetA
    #arrowtext Talk to\n|cRXP_FRIENDLY_Talaanis Shadowsong|r
    .goto 2521,66.17,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .turnin 93948 >>Turn in Deliver the Signet
    .target Talaanis Shadowsong
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Valennia Stormfist|r
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .turnin 92701 >>Turn in To Valanaar << Alliance
    .turnin 92579 >>Turn in To Valanaar << Horde

    .accept 92699 >>Accept The Supreme Magister << Alliance
    .accept 92700 >>Accept The Grand Skyseer << Horde

    .accept 93949 >>Accept Bugged
    .target Valennia Stormfist
step
    #completewith TheBrokenConstructA
    >>Kill |cRXP_ENEMY_Skyhopper|r.
    .complete 93949,1 --8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper
step << Alliance
    #arrowtext Talk to\n|cRXP_FRIENDLY_Elaadrin Evengale|r
    .goto 2521,66.63,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .turnin 92699 >>Turn in The Supreme Magister
    .accept 92709 >>Accept A Grand Adventure
    .target Elaadrin Evengale
    tep << Alliance
    #arrowtext Talk to\n|cRXP_FRIENDLY_Dondallion Whisperwind|r
    .goto 2521,66.26,79.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dondallion Whisperwind|r.
    .accept 92727 >>Accept The Missing Scholar
    .target Dondallion Whisperwind
step << Alliance
    #arrowtext Talk to\n|cRXP_FRIENDLY_Iaadaria Bitterwind|r
    .goto 2521,66.35,79.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iaadaria Bitterwind|r.
    .accept 92741 >>Accept Unwelcome Visitors
    .target Iaadaria Bitterwind
step << Alliance
    #arrowtext Listen to\n|cRXP_FRIENDLY_Elaadrin Evengale|r
    .goto 2521,64.17,79.43
    .complete 92709,1 --1/1 Listen to Elaadrin
step << Alliance
    #arrowtext Talk to\n|cRXP_FRIENDLY_Elaadrin Evengale|r
    .goto 2521,66.63,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .turnin 92709 >>Turn in A Grand Adventure
    .target Elaadrin Evengale
step << Hunter
    .goto 2521,63.027,77.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Antelariaa Cloudgaze::252390|r.
    >>|cRXP_BUY_Buy|r 600 |T132382:0|t[Rough Arrows]
    .collect 2512,600,6394,1 << Hunter --Rough Arrow (600)
    .target Antelariaa Cloudgaze::252390
step << Horde
    .goto 2521,61.491,76.893,15,0
    .goto 2521,59.349,77.930,25,0
    .goto 2521,59.154,79.783
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ayessa Dawnsinger::251968|r.
    .turnin 92700 >>Turn in The Grand Skyseer
    .accept 92708 >>Accept A Grand Adventure
    .accept 93735 >>Accept The Broken Construct
    .target Ayessa Dawnsinger::251968
step << Horde
    .goto 2521,58.128,78.307
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Endaria Mistgaze::254344|r.
    .accept 93736 >>Accept Unwelcome Spirits
    .target Endaria Mistgaze::254344
step << Horde
    .goto 2521,59.265,79.977
    >>Wait for the roleplay. -- Probably skipping this quest.
    .complete 92708,1 --|1/1 Listen to Ayessa
step << Horde
    .goto 2521,59.150,79.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ayessa Dawnsinger::251968|r.
    .target Ayessa Dawnsinger::251968
    .turnin 92708 >>Turn in A Grand Adventure
step << Horde
    #label LeavingValanaarA
    .goto 2521,59.064,72.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Riaani Nightwind::256083|r.
    .target Riaani Nightwind::256083
    .turnin 93735 >>Turn in The Broken Construct
    .accept 93737 >>Accept The Broken Construct
    .complete 93737,1 --|1/1 Listen to what Riaani Nightwind has to say
step << Alliance
    #arrowtext Click on\n|cRXP_FRIENDLY_Bloodstained Satchel|r
    .goto 2521,53.33,72.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodstained Satchel|r.
    .turnin 92727 >>Turn in The Missing Scholar
    .accept 92849 >>Accept The Missing Scholar
    .target Bloodstained Satchel
step << Alliance
    #label LeavingValanaarA
    #arrowtext Follow the arrow
    .goto 2521,50.67,65.38
    .complete 92849,1 --1/1 Find Fillion Flamebreeze
    .skipgossipid 136430
step << Alliance
    #arrowtext Carry |cRXP_FRIENDLY_Fillion Flamebreeze|r\nto safety
    .goto 2521,52.05,69.40
    .complete 92849,2 --1/1 Carry Fillion Flamebreeze to safety while avoiding enemies
step << Alliance
    #arrowtext Talk to\n|cRXP_FRIENDLY_Fillion Flamebreeze|r
    .goto 2521,52.07,69.40
    .turnin 92849 >>Turn in The Missing Scholar
    .accept 92850 >>Accept The Missing Scholar
    .target Fillion Flamebreeze
step << Alliance
    #arrowtext Kill |cRXP_ENEMY_Shriekling Matriarch|r\nLoot for |cRXP_LOOT_Shriekling Matriarch's Head|r
    .goto 2521,52.02,65.51
    .complete 92850,1 --1/1 Shriekling Matriarch's Head
step
    #loop
    .goto 2521,49.085,78.358,12,0
    .goto 2521,48.621,78.385,12,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Malfunctioning Cyclone Construct::250929|r.
    .accept 92698 >>Accept What Is My Purpose?
    .target Malfunctioning Cyclone Construct::250929
step
    #arrowtext Follow the arrow
    .goto 2521,46.71,81.95
    .complete 92679,1 --1/1 Find Aamelia Windfield
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Aamelia Windfield|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    #loop
    .goto 2521,46.71,81.94,10,0
    .goto 2521,47.511,78.490,10,0
    .turnin 92679 >>Turn in Blood Tithe
    .turnin 92698 >>Turn in What Is My Purpose?
    .accept 92682 >>Accept Make Yourself Useful
    .accept 92684 >>Accept Ornery Ornery Galestriders
    .accept 92683 >>Accept Flutterfly Dust
    .target Aamelia Windfield:252800
step
    #arrowtext Kill |cRXP_ENEMY_Bandits|r\nClick on |cRXP_LOOT_Ripe Stormapples|r
    .goto 2521,46.31,79.63
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_LOOT_Ripe Stormapples|r
    >>Kill |cRXP_ENEMY_Hungry Bandits|r.
    .complete 92682,1 --10/10 Ripe Stormapple
    .complete 92682,2 --5/5 Hungry Bandit slain
    .mob Hungry Bandit::252802
step
    .goto 2521,48.56,78.74
    .accept 92698 >>Accept What Is My Purpose?
step
    #arrowtext Collect\n|cRXP_LOOT_Flutterfly Dust|r
    .goto 2521,51.74,82.68
    .complete 92683,1 --5/5 Flutterfly Dust
step
    #arrowtext Collect\n|cRXP_LOOT_Lowlands Galestrider Tenderloin|r
    .goto 2521,50.31,83.18
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Aamelia Windfield|r
    .goto 2521,46.71,81.94
    .turnin 92682 >>Turn in Make Yourself Useful
    .turnin 92684 >>Turn in Ornery Ornery Galestriders
    .turnin 92698 >>Turn in What Is My Purpose?
    .turnin 92683 >>Turn in Flutterfly Dust
    .accept 92685 >>Accept The Hills Have Eyes
    .target Aamelia Windfield
step
    #arrowtext Collect\n|cRXP_LOOT_Blood-Stained Bandit Mask|r
    .goto 2521,44.84,75.09
    .complete 92685,1 --7/7 Blood-Stained Bandit Mask
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Aamelia Windfield|r
    .goto 2521,46.70,81.94
    .turnin 92685 >>Turn in The Hills Have Eyes
    .accept 92693 >>Accept Standing Our Ground
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aamelia Windfield|r.
    .complete 92693,1 --1/1 Speak with Aamelia Windfield
    .target Aamelia Windfield
    .skipgossipid 136302
step
    #arrowtext Follow |cRXP_FRIENDLY_Aamelia Windfield|r
    .goto 2521,47.51,78.44
    .complete 92693,2 --1/1 Follow Aamelia and make your final stand
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Aamelia Windfield|r
    .goto 2521,47.51,78.49
    .turnin 92693 >>Turn in Standing Our Ground
    .accept 92703 >>Accept Deliver the News
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Alvarion Windfield|r
    .goto 2521,62.11,73.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alvarion Windfield|r.
    .turnin 92703 >>Turn in Deliver the News
    .target Alvarion Windfield
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Belann Windwood|r
    .goto 2521,62.90,77.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belann Windwood|r.
    .accept 93791 >>Accept Speak with Belann
    .turnin 93791 >>Turn in Speak with Belann
    .target Belann Windwood
step << Mage
    #arrowtext Talk to\n|cRXP_FRIENDLY_Belann Windwood|r
    .goto 2521,62.90,77.45
    .accept 93797 >>Accept Boughs in the Wind
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Dondallion Whisperwind|r
    .goto 2521,66.26,79.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dondallion Whisperwind|r.
    .turnin 92850 >>Turn in The Missing Scholar
    .target Dondallion Whisperwind
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Elaadrin Evengale|r
    .goto 2521,66.63,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .accept 92840 >>Accept Catching Wind
    .target Elaadrin Evengale
step
    #arrowtext Protect the Index
    .goto 2521,47.93,69.05
    .complete 92840,1 --1/1 Protect the Index
step << Magic
    #arrowtext Collect\n|cRXP_LOOT_Wind-Infused Bough|r
    .goto 2521,48.49,67.81
    .complete 93797,1 --1/1 Wind-Infused Bough
step
    #arrowtext Collect\n|cRXP_LOOT_Windsong Crawler Meat|r
    .goto 2521,52.58,60.50
    .complete 93317,1 --6/6 Windsong Crawler Meat
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Nyalah Brightfire|r
    .goto 2521,60.64,72.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyalah Brightfire|r.
    .turnin 93317 >>Turn in Crab Season
    .target Nyalah Brightfire
step << Magic
    #arrowtext Talk to\n|cRXP_FRIENDLY_Belann Windwood|r
    .goto 2521,62.89,77.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belann Windwood|r.
    .turnin 93797 >>Turn in Boughs in the Wind
    .target Belann Windwood
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Elaadrin Evengale|r
    .goto 2521,66.63,79.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .turnin 92840 >>Turn in Catching Wind
    .accept 92834 >>Accept Avenged Tenfold
    .accept 92860 >>Accept In Service of Zephras
    .target Elaadrin Evengale
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Valennia Stormfist|r
    .goto 2521,66.18,76.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .turnin 92860 >>Turn in In Service of Zephras
    .accept 93320 >>Accept Tower Defense
    .target Valennia Stormfist
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Yorana Windyreed|r
    .goto 2521,69.64,67.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yorana Windyreed|r.
    .turnin 93320 >>Turn in Tower Defense
    .accept 92642 >>Accept Disrupting Logistics
    .accept 92645 >>Accept Breaking the Breaker
    .target Yorana Windyreed
step
    #arrowtext Kill\n|cRXP_ENEMY_Commander Belguilos|r
    .goto 2521,65.67,65.58
    >>Kill |cRXP_ENEMY_Commander Belguilos|r.
    .complete 92645,1 --1/1 Commander Belguilos slain
    .mob Commander Belguilos
step
    #arrowtext Kill\n|cRXP_ENEMY_Al'Aketh Healer|r
    .goto 2521,66.09,67.72
    >>Kill |cRXP_ENEMY_Al'Aketh Healer|r.
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob Al'Aketh Healer
step
    #arrowtext Kill\n|cRXP_ENEMY_Al'Aketh Brawler|r
    .goto 2521,65.42,67.27
    >>Kill |cRXP_ENEMY_Al'Aketh Brawler|r.
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob Al'Aketh Brawler
step
    #arrowtext Collect\n|cRXP_LOOT_Al'Aketh Windstone Charm|r
    .goto 2521,65.43,67.44
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Yorana Windyreed|r
    .goto 2521,69.61,67.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yorana Windyreed|r.
    .turnin 92645 >>Turn in Breaking the Breaker
    .turnin 92642 >>Turn in Disrupting Logistics
    .accept 92880 >>Accept Return to Valanaar
    .target Yorana Windyreed
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Valennia Stormfist|r
    .goto 2521,66.20,76.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .turnin 92880 >>Turn in Return to Valanaar
    .accept 92881 >>Accept The High Elder's Request
    .target Valennia Stormfist
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Talaanis Shadowsong|r
    .goto 2521,66.17,76.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .turnin 92881 >>Turn in The High Elder's Request
    .accept 92643 >>Accept The Turncoat
    .target Talaanis Shadowsong
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Elaadrin Evengale|r
    .goto 2521,66.63,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .turnin 92834 >>Turn in Avenged Tenfold
    .target Elaadrin Evengale
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Fendaal Windstone|r
    .goto 2521,56.81,61.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fendaal Windstone|r.
    .accept 98512 >>Accept Al'Aketh Assassins
    .target Fendaal Windstone
step
    #arrowtext Follow the arrow
    .goto 2521,56.06,60.85
    .complete 92643,1 --1/1 Find the secluded house in Shen'dar Highlands
step
    #arrowtext Kill\n|cRXP_ENEMY_Al'Aketh Assassin|r
    .goto 2521,55.66,59.87
    >>Kill |cRXP_ENEMY_Al'Aketh Assassin|r.
    .complete 98512,1 --10/10 Al'Aketh Assassin slain
    .mob Al'Aketh Assassin
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Fendaal Windstone|r
    .goto 2521,56.80,61.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fendaal Windstone|r.
    .turnin 98512 >>Turn in Al'Aketh Assassins
    .target Fendaal Windstone
step
    #arrowtext Follow the arrow
    .goto 2521,56.49,60.86
    .complete 92643,2 --1/1 Find the Al'Aketh Turncoat
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Dead Cultist|r
    .goto 2521,56.03,58.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dead Cultist|r.
    .turnin 92643 >>Turn in The Turncoat
    .accept 92644 >>Accept Unfortunate News
    .target Dead Cultist
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Talaanis Shadowsong|r
    .goto 2521,66.17,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .turnin 92644 >>Turn in Unfortunate News
    .accept 94568 >>Accept The Cult's True Plans
    .target Talaanis Shadowsong
step
    .skipgossipid 140111
    .complete 94568,1 --1/1 Learn what you can from the crystal
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Talaanis Shadowsong|r
    .goto 2521,66.17,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .turnin 94568 >>Turn in The Cult's True Plans
    .accept 92640 >>Accept Desperate Times
    .target Talaanis Shadowsong
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Valennia Stormfist|r
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .complete 92640,1 --1/1 Speak with Valennia Stormfist
    .target Valennia Stormfist
    .skipgossipid 137096
    .skipgossipid 137095
step
    #arrowtext Recruit the Windshapers
    .goto 2521,59.15,79.79
    .complete 92640,2 --1/1 Recruit the Windshapers
    .skipgossipid 136542
    .skipgossipid 136541
step
    #arrowtext Recruit the High Order
    .goto 2521,66.54,79.89
    .complete 92640,3 --1/1 Recruit the High Order
    .skipgossipid 136547
    .skipgossipid 136546
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Valennia Stormfist|r
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .turnin 92640 >>Turn in Desperate Times
    .accept 93065 >>Accept Prepare for Battle
    .target Valennia Stormfist
step
    #arrowtext Follow the arrow
    .goto 2521,61.15,70.91
    .complete 93065,1 --1/1 Find Valennia on the Road
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Valennia Stormfist|r
    .goto 2521,61.15,70.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .turnin 93065 >>Turn in Prepare for Battle
    .accept 92947 >>Accept Making Our Move
    .target Valennia Stormfist
step
    #arrowtext Kill |cRXP_ENEMY_Al'Aketh Guardian|r,\n|cRXP_ENEMY_Al'Aketh Spiritcaller|r and\n|cRXP_ENEMY_Al'Aketh Blademaster|r
    .goto 2521,61.29,49.50
    >>Kill |cRXP_ENEMY_Al'Aketh Guardian|r.
    .complete 92947,1 --8/8 Al'Aketh Guardian slain
    .complete 92947,2 --8/8 Al'Aketh Spiritcaller slain
    .complete 92947,3 --8/8 Al'Aketh Blademaster slain
    .mob Al'Aketh Guardian
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Hyusaa Quickbreeze|r
    .goto 2521,63.79,50.55
    .complete 92947,4 --1/1 Report to Hyusaa Quickbreeze
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Hyusaa Quickbreeze|r
    .goto 2521,63.79,50.55
    .turnin 92947 >>Turn in Making Our Move
    .accept 93958 >>Accept The Inner Sanctum
    .target Hyusaa Quickbreeze
step
    .goto 2521,65.19,50.37
    .turnin 93958 >>Turn in The Inner Sanctum
step
    .goto 2521,65.19,50.37
    .accept 93835 >>Accept Confront Lorthuna
step
    #arrowtext Confront Lorthuna
    .goto 2521,75.34,53.32
    .complete 93835,1 --1/1 Confront Lorthuna
    .skipgossipid 137230
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Elaadrin Evengale|r
    .goto 2521,66.63,79.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .turnin 93835 >>Turn in Confront Lorthuna
    .accept 94369 >>Accept The Fate of Zephras
    .target Elaadrin Evengale
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Talaanis Shadowsong|r
    .goto 2521,66.17,76.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .complete 94369,1 --1/1 Speak with Talaanis Shadowsong
    .target Talaanis Shadowsong
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Talaanis Shadowsong|r
    .goto 2521,66.18,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .turnin 94369 >>Turn in The Fate of Zephras
    .accept 93089 >>Accept What Comes Next
    .target Talaanis Shadowsong
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Elaadrin Evengale|r
    .goto 2521,66.63,79.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .turnin 93089 >>Turn in What Comes Next
    .accept 94946 >>Accept The Magical City of Dalaran
    .target Elaadrin Evengale
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Strange Hermit|r
    .goto 2521,53.95,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strange Hermit|r.
    .accept 93159 >>Accept The Strange Hermit
    .target Strange Hermit
step
    .goto 2521,53.95,38.90
    #arrowtext Talk to\n|cRXP_FRIENDLY_Strange Hermit|r
    .complete 93159,1 --1/1 Learn more about the Strange Hermit
    .target Strange Hermit
    .skipgossipid 135787
    .skipgossipid 135786
    .skipgossipid 135785 -- engineering
    .skipgossipid 135784 -- no
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Strange Hermit|r
    .goto 2521,53.96,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strange Hermit|r.
    .turnin 93159 >>Turn in The Strange Hermit
    .accept 93160 >>Accept The Forest's Bounty
    .accept 93172 >>Accept Free the Hollows
    .target Strange Hermit
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Strange Hermit|r
    .goto 2521,53.96,38.90
    .accept 98285 >>Accept Camping 101: Engineering
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Strange Hermit|r
    .goto 2521,53.96,38.90
    .complete 98285,1 --Raise your engineering skill to 20
step
    #arrowtext Collect\n|cRXP_LOOT_Zephyrseed|r
    .goto 2521,56.84,38.03
    .complete 93160,1 --8/8 Zephyrseed
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Elegael Thornpaw|r
    .goto 2521,61.76,39.14
    .turnin 94484 >>Turn in Unnerving Silence
    .accept 94485 >>Accept Tears of the Lady
    .accept 94486 >>Accept Feathers for Binding
    .accept 94487 >>Accept Unwanted and Unworthy
step
    #arrowtext Collect\n|cRXP_LOOT_Zephyrseed|r
    .goto 2521,56.84,38.03
    .complete 93160,1 --8/8 Zephyrseed
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Vayn Moongaze|r
    .goto 2521,63.80,36.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vayn Moongaze|r.
    .accept 93165 >>Accept Mercy Falls on Deaf Ears
    .target Vayn Moongaze
step
    #arrowtext Collect\n|cRXP_LOOT_Shriekling Talons|r
    .goto 2521,59.36,40.07
    .complete 92741,1 --8/8 Shriekling Talons
step
    #arrowtext Collect\n|cRXP_LOOT_Lady's Tear Moss|r
    .goto 2521,59.80,40.38
    .complete 94485,1 --8/8 Lady's Tear Moss
step
    #arrowtext Collect\n|cRXP_LOOT_Pristine Shriekling Feathers|r
    .goto 2521,55.93,38.96
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Strange Hermit|r
    .goto 2521,53.97,38.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strange Hermit|r.
    .turnin 93160 >>Turn in The Forest's Bounty
    .target Strange Hermit
step
    #arrowtext Collect\n|cRXP_LOOT_Bloody Heirloom|r
    .goto 2521,62.69,36.46
    .complete 94487,1 --10/10 Bloody Heirloom
step
    #arrowtext Collect\n|cRXP_LOOT_Al'Alketh Cultist's Ear|r
    .goto 2521,63.85,37.16
    .complete 93165,1 --10/10 Al'Alketh Cultist's Ear
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Elegael Thornpaw|r
    .goto 2521,61.76,39.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elegael Thornpaw|r.
    .turnin 94485 >>Turn in Tears of the Lady
    .turnin 94487 >>Turn in Unwanted and Unworthy
    .turnin 94486 >>Turn in Feathers for Binding
    .accept 94488 >>Accept The Ties That Bind
    .accept 94489 >>Accept The Wounds of Betrayal
    .target Elegael Thornpaw
step
    #arrowtext Kill and loot\n|cRXP_ENEMY_Commander Haalien|r
    .goto 2521,65.05,36.66
    .complete 94488,1 --1/1 Commander Haalien's Severed Head
step
    #arrowtext Find the\n|cRXP_PICK_Ripped Missive|r
    .goto 2521,64.77,37.11
    .accept 94490 >>Accept Ripped Missive
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Elegael Thornpaw|r
    .goto 2521,61.76,39.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elegael Thornpaw|r.
    .turnin 94490 >>Turn in Ripped Missive
    .turnin 94488 >>Turn in The Ties That Bind
    .accept 94491 >>Accept The Fate of the Den
    .target Elegael Thornpaw
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Vayn Moongaze|r
    .goto 2521,63.80,36.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vayn Moongaze|r.
    .turnin 93165 >>Turn in Mercy Falls on Deaf Ears
    .target Vayn Moongaze
step
    #arrowtext Find\n|cRXP_FRIENDLY_Jorel Windsinger|r
    .goto 2521,64.49,34.74
    .complete 94489,2 --1/1 Find Jorel Windsinger
    .skipgossipid 137859
step
    #arrowtext Heal\n|cRXP_FRIENDLY_Injured Druids|r
    .goto 2521,65.91,33.54
    .complete 94489,1 --7/7 Injured Druids healed
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Elegael Thornpaw|r
    .goto 2521,61.77,39.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elegael Thornpaw|r.
    .turnin 94489 >>Turn in The Wounds of Betrayal
    .target Elegael Thornpaw
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Vayn Moongaze|r
    .goto 2521,63.80,35.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vayn Moongaze|r.
    .turnin 93459 >>Turn in More Al'Aketh Ears
    .target Vayn Moongaze
step
    #arrowtext Collect\n|cRXP_LOOT_Abandoned Belongings|r
    .goto 2521,56.65,29.37
    .complete 94896,1 --8/8 Abandoned Belongings
step
    #arrowtext Free\n|cRXP_FRIENDLY_Wind Hollow|r
    .goto 2521,58.59,31.08
    .complete 93172,1 --10/10 Wind Hollow freed
step
    #arrowtext Recover\n|cRXP_LOOT_Resaan's Heirloom|r
    .goto 2521,57.04,29.36
    .complete 94897,1 --1/1 Resaan's Heirloom
    .skipgossipid 138670
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Strange Hermit|r
    .goto 2521,53.97,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strange Hermit|r.
    .turnin 93172 >>Turn in Free the Hollows
    .target Strange Hermit
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Lotheluum Starbreeze|r
    .goto 2521,63.98,75.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotheluum Starbreeze|r.
    .turnin 94491 >>Turn in The Fate of the Den
    .target Lotheluum Starbreeze
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Ealaane Nimbuswalker|r
    .goto 2521,65.95,74.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ealaane Nimbuswalker|r.
    .turnin 94896 >>Turn in Aid For The Refugees
    .turnin 94897 >>Turn in The Fate of a Loved One
    .target Ealaane Nimbuswalker
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Iaadaria Bitterwind|r
    .goto 2521,66.34,79.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iaadaria Bitterwind|r.
    .turnin 92741 >>Turn in Unwelcome Visitors
    .target Iaadaria Bitterwind
step
    #arrowtext Talk to the quest giver\nin Dalaran
    .goto 1416/0,438.93,448.88
    .turnin 94946 >>Turn in The Magical City of Dalaran
step
    #arrowtext Talk to the quest giver\nin Dalaran
    .goto 1416/0,438.93,448.88
    .accept 94947 >>Accept Welcome to Azeroth
step
    #arrowtext Take the\n|cRXP_PICK_Skyborne Portal to Stormwind|r
    .goto 1416/0,445.93,450.00
    .complete 94947,1 --Take the Skyborne Portal to Stormwind
step
    #arrowtext Talk to the quest giver\nin Stormwind
    .goto 1453/0,303.00,-8622.69
    .turnin 94947 >>Turn in Welcome to Azeroth
step
    #arrowtext Talk to the quest giver\nin Stormwind
    .goto 1453/0,303.00,-8622.69
    .accept 93963 >>Accept Exploring the Alliance
step
    #arrowtext Talk to\n|cRXP_FRIENDLY_Randal Emerson|r
    .goto 1453/0,319.27,-8682.03
    .complete 93963,1 --1/1 Recieve Instructions from Randal Emerson
    .skipgossipid 142485
]])

RXPGuides.RegisterGuide([[
#classic
#version 1
#name Leylines
#displayname 1-10 Skyborne222223
#group RestedXP Alliance 1-20
#internal

--Leyline
    .goto 2521,63.99,46.19

    .goto 2521,63.91,74.17
    .goto 2521,58.84,33.55
]])
RXPGuides.RegisterGuide([[
#classic
#version 1
#name Windstones
#group RestedXP Alliance 1-20
#internal

--Windstone
    .goto 2521,62.99,45.74
    .goto 2521,65.91,36.1
    .goto 2521,63.95,38.05
    .goto 2521,64.64,39.92
    .goto 2521,58.97,35.35
]])
RXPGuides.RegisterGuide([[
#classic
#version 1
#name Tronadoes
#group RestedXP Alliance 1-20
#internal

--Tornado
    .goto 2521,64.58,46.38
]])
RXPGuides.RegisterGuide([[
#classic
#version 1
#name Trainers
#displayname 1-10 Skyborne22223423
#group RestedXP Alliance 1-20
#internal

--Trainers
        .goto 2521,53.97,38.9 -- engineering
]])
RXPGuides.RegisterGuide([[
#classic
#version 1
#name Treasures
#displayname 1-10 Skyborne22223423
#group RestedXP Alliance 1-20
#internal

--Treasure
 .goto 2521,48.53,20.6


]])
RXPGuides.RegisterGuide([[
#classic
#version 1
#name 101
#displayname 1-10 Skyborne22223423
#group RestedXP Alliance 1-20
#internal

--Treasure
 .goto 2521,48.53,20.6

]])

-- DRUID BEAR FORM QUEST
--Breadcrumb missing: (94006) The Great Ursera Spirit
--Might be needed? you get it from the druid trainer in Valanaar
--[[
step
    .goto 2521,69.761,61.454
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urs'endris::255853|r
    .target Urs'endris::255853
    .turnin 94006 >>Turn in The Great Ursera Spirit
    .accept 94638 >>Accept Strength and Mercy
step
    .goto 2521,56.785,61.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fendaal Windstone::273017|r
    .target Fendaal Windstone::273017
    .accept 98512 >>Accept Al'Aketh Assassins
step
    .goto 2521,56.003,60.816
    .complete 98512,1 --|10/10 Al'Aketh Assassin slain
    .mob Al'Aketh Assassin::254626
step
    .goto 2521,56.785,61.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fendaal Windstone::273017|r
    .target Fendaal Windstone::273017
    .turnin 98512 >>Turn in Al'Aketh Assassins
step
    .goto 2521,54.058,65.527
    .complete 94638,1 --|1/1 Ur'endra slain
    .mob Ur'endra::258443
step
    .goto 2521,69.740,61.570
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Urs'endris::255853|r
    .target Urs'endris::255853
    .turnin 94638 >>Turn in Strength and Mercy
]]
