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
    .useitem 264908
    .target Elatrell Featherlight
step
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
    .goto 2521,43.44,24.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elatrell Featherlight|r.
    *|cRXP_WARN_Don't use as we |T132845:0|t[Walk on Air] need it soon|r.
    .turnin 92462 >>Turn in Infestation Investigation
    .accept 92463 >>Accept The Cirrusfly Queen
    .target Elatrell Featherlight
    .macro Cancel Walk on Air,132745 >>/cancelaura Walk on Air
step << Warrior
    .goto 2521,43.66,24.13
    .trainer >> Train your class spells
    .skipgossipid 136813,1
    .target Blademaster Ren
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
    #title Move to cancel the channel
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
step << Hunter
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
    .goto 2521,43.41,23.51
    .vendor >>|cRXP_WARN_Vendor trash|r
step
    #requires Harvesting Windstones
    .goto 2521,43.37,23.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dalia the Collector|r.
    .accept 93552 >>Accept Harvesting Windstones
    .target Dalia the Collector
step << Horde
    .goto 2521,42.60,24.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ventaari Brightwish|r.
    .accept 92598 >>Accept The Gift of Skysight
    .target Ventaari Brightwish
step << Alliance
    .goto 2521,43.33,24.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falorne Fallwind|r.
    .accept 92597 >>Accept Reading the Ley Lines
    .target Falorne Fallwind
step << Hunter
    >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_from her|r << Hunter

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
    #arrowtext Don't use |T236219:0|t[Read Ley Line] we need it soon
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
    .macro Read Ley Line,236219 >>/use Read Ley Line
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
step << Alliance
    .goto 2521,43.33,24.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falorne Fallwind|r.
    .turnin 92597 >>Turn in Reading the Ley Lines
    .target Falorne Fallwind
    .useitem 247840
    .useitem 247846
    .useitem 247841
step
    .goto 2521,43.44,24.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elatrell Featherlight|r.
    .turnin 92463 >>Turn in The Cirrusfly Queen
    .target Elatrell Featherlight
step << Rogue
    .goto 2521,43.74,24.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Akeri Duskblade|r.
    .turnin 92483 >>Turn in At Home in the Shadows
    .target Akeri Duskblade
    .trainer >> Train your class spells
    .skipgossipid 136810,1
step << Warrior
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blademaster Ren|r.
    .turnin 92532 >>Turn in The Warrior's Path
    .target Blademaster Ren
    .trainer >> Train your class spells
    .skipgossipid 136813,1
step << Horde
    .goto 2521,42.607,24.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ventaari Brightwish::251487|r
    .target Ventaari Brightwish::251487
    .turnin 92598 >>Turn in The Gift of Skysight
step
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rorian the Dayseeker|r.
    .turnin 92469 >>Turn in Return to Rorian
    .accept 92471 >>Accept Aetheen of the Gales -- Unlocks at 4
    .target Rorian the Dayseeker
step << Mage
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dorii Brightwhisper|r.
    .turnin 92481 >>Turn in A Student of the Arcane
    .trainer >> Train your class spells
    .skipgossipid 136807,1
    .target Dorii Brightwhisper
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
    .train 2366,3
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uualia Suncrest::251537|r
    .collect 277113,1 >>Buy an |T133637:0|t[Apprentice's Herb Pouch]
    .target Uualia Suncrest::251537
step
    #completewith Aggressive Encroachment
    .train 2575,3
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uualia Suncrest::251537|r
    .collect 2901,1 >>Buy a |T134708:0|t[Mining Pick]
    .collect 277115,1 >>Buy an |T133635:0|t[Apprentice's Mining Pack]
    .target Uualia Suncrest::251537
step
    #completewith Aggressive Encroachment
    .train 8613,3
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uualia Suncrest::251537|r
    .collect 7005,1 >>Buy a |T135637:0|t[Skinning Knife]
    .collect 277114,1 >>Buy an |T133634:0|t[Apprentice's Skinning Satchel]
    .target Uualia Suncrest::251537
step
    #label AggressiveVendor
    #completewith Aggressive Encroachment
    .goto 2521,42.76,24.5
    .vendor >>|cRXP_WARN_Optional: Buy Reagent Bag, Profession tools and Vendor trash|r
step
    #requires Aggressive Encroachment
    .goto 2521,42.41,25.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valreaa Valewind|r.
    .accept 92473 >>Accept Aggressive Encroachment
    .target Valreaa Valewind
step
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
    .goto 2521,35.88,23.31,30,0
    .goto 2521,35.82,25.57
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
    .deathskip >>Die to mobs and ressurect at the graveyard
    .subzoneskip Thendal Grove
step
    #requires Turn in Foul Matriarch
    .goto 2521,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aetheen of the Gales|r.
    .turnin 92470 >>Turn in Foul Matriarch
    .target Aetheen of the Gales
    .accept 92472 >>Accept The Next Step
    .accept 96638 >>Accept The Adventurer
step
    #completewith next
    #label Aggressive Encroachment2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valreaa Valewind|r.
    .turnin 92473 >>Turn in Aggressive Encroachment
    .target Valreaa Valewind
step
    #completewith Aggressive Encroachment2
    .goto 2521,42.76,24.52
    .vendor >>|cRXP_WARN_Optional: Buy Reagent Bag, Profession tools and Vendor trash|r
step
    #requires Aggressive Encroachment2
    .goto 2521,42.41,25.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valreaa Valewind|r.
    .turnin 92473 >>Turn in Aggressive Encroachment
    .target Valreaa Valewind


step
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
    .goto 2521,36.032,33.545
    >>Kill |cRXP_ENEMY_Malduko Cloudcrush|r.
    .complete 92544,3 --|1/1 Malduko Cloudcrush slain
    .mob Malduko Cloudcrush::256935
step
    #loop
    .goto 2521,35.75,31.93,40,0
    .goto 2521,37.3,32.89,40,0
    .goto 2521,37.16,34.72,40,0
    .goto 2521,38.08,35.01,40,0
    >>Kill |cRXP_ENEMY_Al'Aketh Brute|r and |cRXP_ENEMY_Al'Aketh Neophyte|r.
    .complete 92544,1 --|6/6 Al'Aketh Brute slain
    .complete 92544,2 --|4/4 Al'Aketh Neophyte slain
    .mob Al'Aketh Brute::251145
    .mob Al'Aketh Neophyte::251448
step
    .goto 2521,38.32,30.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hanaa Nightwind|r.
    .turnin 92544 >>Turn in Al'Aketh Thugs
    .target Hanaa Nightwind


step
    #completewith
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Windstones|r for an item that restores health and mana on use 
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
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 96101,2 --Gain the Boosted Rest buff
step
    .goto 2521,41.67,44.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind|r.
    .turnin 96101 >>Turn in The Great Outdoors
    .target Raan Wildwind
step
    .train 2575,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97970 >>Accept Camping 101: Mining
    .target Raan Wildwind::263664
step
    .train 8613,3
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97971 >>Accept Camping 101: Skinning
    .target Raan Wildwind::263664
step
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 96646 >>Accept Camping 101: Cooking
    .target Raan Wildwind::263664
step << Shaman
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aarnor Galestrike::254082|r
    .trainer >> Train your class spells
    .target Aarnor Galestrike::254082
step
    .goto 2521,45.67,45.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda|r.
    .turnin 92472 >>Turn in The Next Step
    .accept 93461 >>Accept Welcome to Shen'dar Village << Alliance
    .accept 92514 >>Accept Welcome to Shen'dar Village << Horde
    .target Constable Aonda
step << Alliance
    .goto 2521,45.04,46.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rathiril Sunlance|r.
    .complete 93461,1 --1/1 Speak with Rathiril Sunlance
    .accept 92596 >>Accept The High Order
    .target Rathiril Sunlance
step << Alliance
    .complete 92596,1 --1/1 Listen to Rathiril Sunlance
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
    >>Wait for the roleplay.
    .complete 92595,1 --1/1 Listen to Illaya
step << Horde
    .goto 2521,43.52,44.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illaya Amberwind|r.
    .turnin 92595 >>Turn in The Windshapers
    .accept 94411 >>Accept Meddlesome Mages
    .target Illaya Amberwind
step << Mage
    --mage training
step
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_the Innkeeper|r.
    .complete 93461,2 << Alliance --1/1 Speak with the Innkeeper
    .complete 92514,2 << Horde --1/1 Speak with the Innkeeper
    .target the Innkeeper
step
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_the Innkeeper|r.
    .home >>Set your Hearthstone to Shen'dar Village
    .target the Innkeeper
step
    .train 8613,3
    .isOnQuest 97971
    .isQuestComplete 97971
    .goto 2521,43.289,43.369
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mendalass Tattermend::257024|r
    .turnin 97971 >>Turn in Camping 101: Skinning
    .target Mendalass Tattermend::257024
step
    .goto 2521,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda|r.
    .turnin 93461 >>Turn in Welcome to Shen'dar Village << Alliance
    .turnin 92514 >>Turn in Welcome to Shen'dar Village << Horde
    .accept 92517 >>Accept The Criminal Element
    .target Constable Aonda
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
step
    .isOnQuest 96646
    .goto 2521,43.850,43.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .complete 96646,1 --|Learn cooking from Zerril Softbreeze in Shen'dar Village
    .target Zerril Softbreeze
step
    .goto 2521,43.850,43.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .turnin 96646 >>Turn in Camping 101: Cooking
    .target Zerril Softbreeze::251905
step
    .goto 2521,43.85,43.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze|r.
    .accept 92553 >>Accept Restocking the Larders
    .target Zerril Softbreeze
step
    --cooking


step
    .goto 2521,43.37,45.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bounty Available: Vulgara the Insatiable!|r.
    .accept 93318 >>Accept WANTED: Vulgara the Insatiable
    .target Bounty Available: Vulgara the Insatiable!
step
    .goto 2521,43.073,46.306
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naleeia Tattermend::257018|r.
    .train 3273 >> Train First Aid
    .target Naleeia Tattermend::257018
step
    >>Kill |cRXP_ENEMY_Prideclaws|r. Loot them for the |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    >>Kill |cRXP_ENEMY_Galestrider|r. Loot them for |T133972:0|t[|cRXP_LOOT_Strider Meat|r] and |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob Galestrider::251661
step << Horde
    .goto 2521,46.411,38.562
    >>Kill the |cRXP_ENEMY_High Order Apprentices::257521|r.
    .complete 94411,1 --|6/6 High Order Apprentice defeated
    .mob High Order Apprentice::257521
step << Alliance
    .goto 2521,39.15,47.74
    .complete 94413,1 --6/6 Windshaper Novice Seer defeated
    .mob Windshaper Novice Seer
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
    .complete 92517,2 --|1/1 "Badwind" Bennic slain
    .mob "Badwind" Bennic::255534
step
    #loop
    .goto 2521,49.537,34.325,35,0 -- Cave Entrance
    .goto 2521,47.645,36.289,35,0
    .goto 2521,49.751,38.962,35,0
    .goto 2521,49.537,34.325,35,0 -- Cave Entrance
    .goto 2521,50.680,34.214,35,0 -- Badwind Bennic Location
    >>Kill |cRXP_ENEMY_Highlands Bandits|r. Loot them for the |T5172975:0|t[|cRXP_LOOT_Pilfered Windstone|r].
    .complete 92517,1 --|10/10 Highlands Bandit slain
    .complete 93319,1 --|10/10 Pilfered Windstone
    .mob Highlands Bandit::251918
step
    #completewith HippogryphHarrassmentA
    #hidewindow
    #loop
    .goto 2521,33.852,55.527,35,0
    .goto 2521,34.208,58.154,35,0
    .goto 2521,37.619,58.316,35,0
    .goto 2521,38.605,56.936,35,0
    .goto 2521,38.264,55.126,35,0
    .goto 2521,37.749,53.055,35,0
    .goto 2521,36.449,50.724,35,0
    .goto 2521,34.211,51.432,35,0
    .goto 2521,36.641,52.578,35,0
    .goto 2521,33.179,54.345,35,0
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
    .goto 2521,42.75,52.68
    >>Kill |cRXP_ENEMY_Vulgara|r. Loot it for |T1:0|t[|cRXP_LOOT_Vulgar's Head|r].
    .complete 93318,1 --1/1 Vulgara's Head
    .mob Vulgara
step
    .goto 2521,43.513,44.782
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Illaya Amberwind::251902|r
    .target Illaya Amberwind::251902
    .turnin 94411 >>Turn in Meddlesome Mages
step
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .target Zerril Softbreeze::251905
    .turnin 92553 >>Turn in Restocking the Larders
step
    .goto 2521,44.873,44.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taleen Shimmerthread::251991|r
    .target Taleen Shimmerthread::251991
    .turnin 93951 >>Turn in A Little Beauty
step
    .goto 2521,44.686,44.518
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Indari Sunseam::251993|r
    .target Indari Sunseam::251993
    .turnin 92515 >>Turn in The Problem With Prideclaws
step
    .goto 2521,44.465,44.966
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Teeri Wellwind::251906|r
    .target Teeri Wellwind::251906
    .turnin 92516 >>Turn in Hippogryph Harrassment
    .turnin 93319 >>Turn in Pilfered Windstones
step
    .goto 2521,45.234,45.186
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danarii Bellowveil::252172|r
    .target Danarii Bellowveil::252172
    .turnin 93318 >>Turn in WANTED: Vulgara the Insatiable
step
    .goto 2521,45.667,45.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda::251523|r
    .target Constable Aonda::251523
    .turnin 92517 >>Turn in The Criminal Element
    .accept 93036 >>Accept Infiltrating the Cult
step
    .goto 2521,44.831,45.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sania Silverstream::251904|r
    .target Sania Silverstream::251904
    .turnin 93036 >>Turn in Infiltrating the Cult
    .accept 92529 >>Accept Falaath Village
step
    .goto 2521,46.89,56.24
    .turnin 92529 >>Turn in Falaath Village
step
    .goto 2521,46.89,56.24
    .accept 92528 >>Accept Among the Faithful
step
    .goto 2521,48.87,53.88
    .complete 92528,1 --1/1 Learn about the cultists' plans
    .skipgossipid 136768

step
    .goto 2521,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda|r.
    .turnin 92528 >>Turn in Among the Faithful
    .target Constable Aonda
step
    .goto 2521,45.67,45.50
    .accept 92550 >>Accept Havoc in the Highlands
step
    .goto 2521,45.67,45.50
    .accept 93926 >>Accept The Western Watch

step
    .goto 2521,45.25,45.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danarii Bellowveil|r.
    .accept 92551 >>Accept Stolen Supplies
    .target Danarii Bellowveil


step
    .goto 2521,44.79,44.46
    .complete 97970,1 --Raise your mining skill to 20
step
    .goto 2521,44.77,44.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Messana Crestwind|r.
    .turnin 97970 >>Turn in Camping 101: Mining
    .target Messana Crestwind
step
    .goto 2521,48.12,56.27
    >>Kill |cRXP_ENEMY_Al'Aketh Stormcaller|r.
    .complete 92550,1 --6/6 Al'Aketh Stormcaller slain
    .mob Al'Aketh Stormcaller
step
    .goto 2521,49.24,57.58
    >>Kill |cRXP_ENEMY_Living Lightning|r.
    .complete 92550,2 --4/4 Living Lightning slain
    .mob Living Lightning
step
    .goto 2521,50.29,56.95
    .complete 92550,3 --1/1 Commander Cyclas's Head
step
    .goto 2521,49.55,54.23
    .complete 92551,1 --10/10 Stolen Shen'dar Supplies
step
    .goto 2521,42.32,62.03

    .complete 93926,1 --1/1 Check in on the Western Watchtower in the Shen'dar Highlands
step
    .goto 2521,42.33,62.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Peacekeeper Vaaniel|r.
    .turnin 93926 >>Turn in The Western Watch
    .target Peacekeeper Vaaniel
step
    .goto 2521,42.33,62.01
    .accept 93927 >>Accept A Last Request
step
    .goto 2521,42.38,62.07
    .complete 93927,1 --1/1 Collect and read the note


step
    .goto 2521,41.12,64.09
    .complete 93927,3 --1/1 Raani's Favorite Feather
step
    .goto 2521,40.99,64.09
    .complete 93927,4 --1/1 Shadowsong Family Signet
    >>Kill |cRXP_ENEMY_Skypriest Aanders|r.
    .complete 93927,2 --1/1 Skypriest Aanders slain
    .mob Skypriest Aanders


step
    .goto 2521,45.24,45.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danarii Bellowveil|r.
    .turnin 92551 >>Turn in Stolen Supplies
    .target Danarii Bellowveil
step
    .goto 2521,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Constable Aonda|r.
    .turnin 92550 >>Turn in Havoc in the Highlands
    .target Constable Aonda
step
    .goto 2521,45.67,45.50
    .turnin 93927 >>Turn in A Last Request

step
    .goto 2521,45.67,45.50
    .accept 92701 >>Accept To Valanaar
step
    .goto 2521,45.67,45.50
    .accept 93948 >>Accept Deliver the Signet
step
    .goto 2521,41.66,44.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind|r.
    .accept 97971 >>Accept Camping 101: Skinning
    .target Raan Wildwind
step
    .goto 2521,41.67,44.79
    .accept 98286 >>Accept Camping 101: Enchanting
step
    .goto 2521,41.67,44.79
    .accept 97968 >>Accept Camping 101: Herbalism
step
    .goto 2521,41.67,44.79
    .accept 97963 >>Accept Camping 101: Alchemy
step
    .goto 2521,41.67,44.80
    .accept 97973 >>Accept Camping 101: Tailoring
step
    .goto 2521,41.69,44.82
    .accept 97964 >>Accept Camping 101: Blacksmithing
step
    .goto 2521,41.67,44.80
    .accept 97965 >>Accept Camping 101: First Aid
step
    .goto 2521,43.07,46.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naleeia Tattermend|r.
    .turnin 97965 >>Turn in Camping 101: First Aid
    .target Naleeia Tattermend
step
    .goto 2521,41.66,44.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raan Wildwind|r.
    .accept 97967 >>Accept Camping 101: Fishing
    .target Raan Wildwind

step
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .turnin 92701 >>Turn in To Valanaar
    .target Valennia Stormfist
step
    .goto 2521,66.17,76.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .accept 93949 >>Accept Bugged
    .target Valennia Stormfist
step
    .goto 2521,66.18,76.65
    .accept 92699 >>Accept The Supreme Magister
step
    .goto 2521,66.17,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .turnin 93948 >>Turn in Deliver the Signet
    .target Talaanis Shadowsong
step
    .goto 2521,66.63,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .turnin 92699 >>Turn in The Supreme Magister
    .target Elaadrin Evengale
step
    .goto 2521,66.63,79.94
    .accept 92709 >>Accept A Grand Adventure
step
    .goto 2521,66.26,79.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dondallion Whisperwind|r.
    .accept 92727 >>Accept The Missing Scholar
    .target Dondallion Whisperwind
step
    .goto 2521,66.35,79.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iaadaria Bitterwind|r.
    .accept 92741 >>Accept Unwelcome Visitors
    .target Iaadaria Bitterwind

step
    .goto 2521,64.17,79.43

    .complete 92709,1 --1/1 Listen to Elaadrin
step
    .goto 2521,66.63,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .turnin 92709 >>Turn in A Grand Adventure
    .target Elaadrin Evengale

step
    .goto 2521,65.96,74.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ealaane Nimbuswalker|r.
    .accept 94896 >>Accept Aid For The Refugees
    .target Ealaane Nimbuswalker
step
    .goto 2521,65.96,74.30
    .accept 94897 >>Accept The Fate of a Loved One
step
    .goto 2521,63.98,75.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotheluum Starbreeze|r.
    .accept 94484 >>Accept Unnerving Silence
    .target Lotheluum Starbreeze

step
    .goto 2521,59.65,74.68

    .complete 93949,1 --8/8 Enchanted Skyhopper Exterminated
step
    .goto 2521,60.64,72.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyalah Brightfire|r.
    .accept 93317 >>Accept Crab Season
    .target Nyalah Brightfire
step
    .goto 2521,62.10,73.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alvarion Windfield|r.
    .accept 92679 >>Accept Blood Tithe
    .target Alvarion Windfield

step
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .turnin 93949 >>Turn in Bugged
    .target Valennia Stormfist
step
    .goto 2521,53.33,72.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bloodstained Satchel|r.
    .turnin 92727 >>Turn in The Missing Scholar
    .target Bloodstained Satchel
step
    .goto 2521,53.33,72.15
    .accept 92849 >>Accept The Missing Scholar
step
    .goto 2521,50.67,65.38

    .complete 92849,1 --1/1 Find Fillion Flamebreeze


    .skipgossipid 136430



step
    .goto 2521,52.05,69.40

    .complete 92849,2 --1/1 Carry Fillion Flamebreeze to safety while avoiding enemies
step
    .goto 2521,52.07,69.40
    .turnin 92849 >>Turn in The Missing Scholar

step
    .goto 2521,52.07,69.40
    .accept 92850 >>Accept The Missing Scholar
step
    .goto 2521,52.02,65.51
    .complete 92850,1 --1/1 Shriekling Matriarch's Head
step
    .goto 2521,46.71,81.95

    .complete 92679,1 --1/1 Find Aamelia Windfield
step
    .goto 2521,46.71,81.94
    .turnin 92679 >>Turn in Blood Tithe

step
    .goto 2521,46.71,81.94
    .accept 92682 >>Accept Make Yourself Useful
step
    .goto 2521,46.71,81.94
    .accept 92684 >>Accept Ornery Ornery Galestriders
step
    .goto 2521,46.71,81.94
    .accept 92683 >>Accept Flutterfly Dust


step
    .goto 2521,46.71,78.42
    >>Kill |cRXP_ENEMY_Hungry Bandit|r.
    .complete 92682,2 --5/5 Hungry Bandit slain
    .mob Hungry Bandit
step
    .goto 2521,46.31,79.63
    .complete 92682,1 --10/10 Ripe Stormapple
step
    .goto 2521,48.56,78.74
    .accept 92698 >>Accept What Is My Purpose?
step
    .goto 2521,51.74,82.68
    .complete 92683,1 --5/5 Flutterfly Dust
step
    .goto 2521,50.31,83.18
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin


step
    .goto 2521,46.71,81.94
    .turnin 92682 >>Turn in Make Yourself Useful

step
    .goto 2521,46.71,81.94
    .turnin 92684 >>Turn in Ornery Ornery Galestriders

step
    .goto 2521,46.70,81.94
    .turnin 92698 >>Turn in What Is My Purpose?

step
    .goto 2521,46.70,81.94
    .turnin 92683 >>Turn in Flutterfly Dust

step
    .goto 2521,46.70,81.94
    .accept 92685 >>Accept The Hills Have Eyes

step
    .goto 2521,44.84,75.09
    .complete 92685,1 --7/7 Blood-Stained Bandit Mask
step
    .goto 2521,46.70,81.94
    .turnin 92685 >>Turn in The Hills Have Eyes

step
    .goto 2521,46.70,81.94
    .accept 92693 >>Accept Standing Our Ground
step

    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aamelia Windfield|r.
    .complete 92693,1 --1/1 Speak with Aamelia Windfield
    .target Aamelia Windfield
    .skipgossipid 136302


step
    .goto 2521,47.51,78.44

    .complete 92693,2 --1/1 Follow Aamelia and make your final stand
step
    .goto 2521,47.51,78.49
    .turnin 92693 >>Turn in Standing Our Ground

step
    .goto 2521,47.51,78.49
    .accept 92703 >>Accept Deliver the News

step
    .goto 2521,62.11,73.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Alvarion Windfield|r.
    .turnin 92703 >>Turn in Deliver the News
    .target Alvarion Windfield
step
    .goto 2521,62.90,77.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belann Windwood|r.
    .accept 93791 >>Accept Speak with Belann
    .target Belann Windwood
step
    .goto 2521,62.90,77.45
    .turnin 93791 >>Turn in *undefined*

step << Mage
    .goto 2521,62.90,77.45
    .accept 93797 >>Accept Boughs in the Wind


step
    .goto 2521,66.26,79.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dondallion Whisperwind|r.
    .turnin 92850 >>Turn in The Missing Scholar
    .target Dondallion Whisperwind
step
    .goto 2521,66.63,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .accept 92840 >>Accept Catching Wind
    .target Elaadrin Evengale
step
    .goto 2521,47.93,69.05

    .complete 92840,1 --1/1 Protect the Index
step << Magic
    .goto 2521,48.49,67.81
    .complete 93797,1 --1/1 Wind-Infused Bough
step
    .goto 2521,52.58,60.50
    .complete 93317,1 --6/6 Windsong Crawler Meat
step
    .goto 2521,60.64,72.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nyalah Brightfire|r.
    .turnin 93317 >>Turn in Crab Season
    .target Nyalah Brightfire
step << Magic
    .goto 2521,62.89,77.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Belann Windwood|r.
    .turnin 93797 >>Turn in Boughs in the Wind
    .target Belann Windwood


step
    .goto 2521,66.63,79.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .turnin 92840 >>Turn in Catching Wind
    .target Elaadrin Evengale
step
    .goto 2521,66.63,79.93
    .accept 92834 >>Accept Avenged Tenfold
step
    .goto 2521,66.63,79.93
    .accept 92860 >>Accept In Service of Zephras
step
    .goto 2521,66.18,76.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .turnin 92860 >>Turn in In Service of Zephras
    .target Valennia Stormfist
step
    .goto 2521,66.18,76.66
    .accept 93320 >>Accept Tower Defense


step
    .goto 2521,69.64,67.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yorana Windyreed|r.
    .turnin 93320 >>Turn in Tower Defense
    .target Yorana Windyreed
step
    .goto 2521,69.64,67.07
    .accept 92642 >>Accept Disrupting Logistics
step
    .goto 2521,69.64,67.07
    .accept 92645 >>Accept Breaking the Breaker
step
    .goto 2521,65.67,65.58
    >>Kill |cRXP_ENEMY_Commander Belguilos|r.
    .complete 92645,1 --1/1 Commander Belguilos slain
    .mob Commander Belguilos
step
    .goto 2521,66.09,67.72
    >>Kill |cRXP_ENEMY_Al'Aketh Healer|r.
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob Al'Aketh Healer
step
    .goto 2521,65.42,67.27
    >>Kill |cRXP_ENEMY_Al'Aketh Brawler|r.
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob Al'Aketh Brawler
step
    .goto 2521,65.43,67.44
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
step
    .goto 2521,69.61,67.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yorana Windyreed|r.
    .turnin 92645 >>Turn in Breaking the Breaker
    .target Yorana Windyreed
step
    .goto 2521,69.61,67.10
    .turnin 92642 >>Turn in Disrupting Logistics

step
    .goto 2521,69.64,67.07
    .accept 92880 >>Accept Return to Valanaar
step
    .goto 2521,66.20,76.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .turnin 92880 >>Turn in Return to Valanaar
    .target Valennia Stormfist
step
    .goto 2521,66.23,76.66
    .accept 92881 >>Accept The High Elder's Request
step
    .goto 2521,66.17,76.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .turnin 92881 >>Turn in The High Elder's Request
    .target Talaanis Shadowsong
step
    .goto 2521,66.17,76.50
    .accept 92643 >>Accept The Turncoat


step
    .goto 2521,66.63,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .turnin 92834 >>Turn in Avenged Tenfold
    .target Elaadrin Evengale
step
    .goto 2521,56.81,61.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fendaal Windstone|r.
    .accept 98512 >>Accept Al'Aketh Assassins
    .target Fendaal Windstone
step
    .goto 2521,56.06,60.85

    .complete 92643,1 --1/1 Find the secluded house in Shen'dar Highlands
step
    .goto 2521,55.66,59.87
    >>Kill |cRXP_ENEMY_Al'Aketh Assassin|r.
    .complete 98512,1 --10/10 Al'Aketh Assassin slain
    .mob Al'Aketh Assassin
step
    .goto 2521,56.80,61.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fendaal Windstone|r.
    .turnin 98512 >>Turn in Al'Aketh Assassins
    .target Fendaal Windstone
step
    .goto 2521,56.49,60.86

    .complete 92643,2 --1/1 Find the Al'Aketh Turncoat
step
    .goto 2521,56.03,58.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dead Cultist|r.
    .turnin 92643 >>Turn in The Turncoat
    .target Dead Cultist
step
    .goto 2521,56.03,58.80
    .accept 92644 >>Accept Unfortunate News
step
    .goto 2521,66.17,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .turnin 92644 >>Turn in Unfortunate News
    .target Talaanis Shadowsong
step
    .goto 2521,66.17,76.52
    .accept 94568 >>Accept The Cult's True Plans
step
    .skipgossipid 140111



    .complete 94568,1 --1/1 Learn what you can from the crystal
step
    .goto 2521,66.17,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .turnin 94568 >>Turn in The Cult's True Plans
    .target Talaanis Shadowsong
step
    .goto 2521,66.17,76.51
    .accept 92640 >>Accept Desperate Times
step
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .complete 92640,1 --1/1 Speak with Valennia Stormfist
    .target Valennia Stormfist
    .skipgossipid 137096
    .skipgossipid 137095
step
    .goto 2521,59.15,79.79

    .complete 92640,2 --1/1 Recruit the Windshapers
    .skipgossipid 136542
    .skipgossipid 136541

step
    .goto 2521,66.54,79.89

    .complete 92640,3 --1/1 Recruit the High Order
    .skipgossipid 136547
    .skipgossipid 136546

step
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .turnin 92640 >>Turn in Desperate Times
    .target Valennia Stormfist
step
    .goto 2521,66.18,76.65
    .accept 93065 >>Accept Prepare for Battle


step
    .goto 2521,61.15,70.91

    .complete 93065,1 --1/1 Find Valennia on the Road
step
    .goto 2521,61.15,70.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
    .turnin 93065 >>Turn in Prepare for Battle
    .target Valennia Stormfist
step
    .goto 2521,61.15,70.93
    .accept 92947 >>Accept Making Our Move


step
    .goto 2521,61.29,49.50
    >>Kill |cRXP_ENEMY_Al'Aketh Guardian|r.
    .complete 92947,1 --8/8 Al'Aketh Guardian slain
    .complete 92947,2 --8/8 Al'Aketh Spiritcaller slain
    .complete 92947,3 --8/8 Al'Aketh Blademaster slain
    .mob Al'Aketh Guardian

step
    .goto 2521,61.29,49.50
    >>Kill |cRXP_ENEMY_Al'Aketh Guardian|r.
    .complete 92947,1 --8/8 Al'Aketh Guardian slain
    .mob Al'Aketh Guardian
step
    .goto 2521,63.79,50.55

    .complete 92947,4 --1/1 Report to Hyusaa Quickbreeze
step
    .goto 2521,63.79,50.55
    .turnin 92947 >>Turn in Making Our Move

step
    .goto 2521,63.79,50.55
    .accept 93958 >>Accept The Inner Sanctum
step
    .goto 2521,65.19,50.37
    .turnin 93958 >>Turn in The Inner Sanctum

step
    .goto 2521,65.19,50.37
    .accept 93835 >>Accept Confront Lorthuna
step

    .goto 2521,75.34,53.32

    .complete 93835,1 --1/1 Confront Lorthuna
    .skipgossipid 137230


step
    .goto 2521,66.63,79.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .turnin 93835 >>Turn in Confront Lorthuna
    .target Elaadrin Evengale
step
    .goto 2521,66.63,79.93
    .accept 94369 >>Accept The Fate of Zephras
step
    .goto 2521,66.17,76.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .complete 94369,1 --1/1 Speak with Talaanis Shadowsong
    .target Talaanis Shadowsong
step
    .goto 2521,66.18,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
    .turnin 94369 >>Turn in The Fate of Zephras
    .target Talaanis Shadowsong
step
    .goto 2521,66.18,76.51
    .accept 93089 >>Accept What Comes Next


step
    .goto 2521,66.63,79.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
    .turnin 93089 >>Turn in What Comes Next
    .target Elaadrin Evengale
step
    .goto 2521,66.63,79.95
    .accept 94946 >>Accept The Magical City of Dalaran
step
    .goto 2521,53.95,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strange Hermit|r.
    .accept 93159 >>Accept The Strange Hermit
    .target Strange Hermit

    .complete 93159,1 --1/1 Learn more about the Strange Hermit
    .skipgossipid 135787
    .skipgossipid 135786
    .skipgossipid 135785 -- engineering
    .skipgossipid 135784 -- no


step
    .goto 2521,53.96,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strange Hermit|r.
    .turnin 93159 >>Turn in The Strange Hermit
    .target Strange Hermit
step
    .goto 2521,53.96,38.90
    .accept 93160 >>Accept The Forest's Bounty
step
    .goto 2521,53.96,38.90
    .accept 98285 >>Accept Camping 101: Engineering
step
    .goto 2521,53.96,38.90
    .accept 93172 >>Accept Free the Hollows


    .complete 98285,1 --Raise your engineering skill to 20
step
    .goto 2521,53.97,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strange Hermit|r.
    .turnin 98285 >>Turn in Camping 101: Engineering
    .target Strange Hermit


step
    .goto 2521,56.84,38.03
    .complete 93160,1 --8/8 Zephyrseed
step
    .goto 2521,61.76,39.14
    .turnin 94484 >>Turn in Unnerving Silence

step
    .goto 2521,61.76,39.14
    .accept 94485 >>Accept Tears of the Lady
step
    .goto 2521,61.76,39.14
    .accept 94486 >>Accept Feathers for Binding
step
    .goto 2521,61.76,39.14
    .accept 94487 >>Accept Unwanted and Unworthy

step
    .goto 2521,56.84,38.03
    .complete 93160,1 --8/8 Zephyrseed
step
    .goto 2521,61.76,39.14
    .turnin 94484 >>Turn in Unnerving Silence

step
    .goto 2521,61.76,39.14
    .accept 94485 >>Accept Tears of the Lady
step
    .goto 2521,61.76,39.14
    .accept 94486 >>Accept Feathers for Binding
step
    .goto 2521,61.76,39.14
    .accept 94487 >>Accept Unwanted and Unworthy
step
    .goto 2521,63.80,36.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vayn Moongaze|r.
    .accept 93165 >>Accept Mercy Falls on Deaf Ears
    .target Vayn Moongaze
step
    .goto 2521,59.36,40.07
    .complete 92741,1 --8/8 Shriekling Talons
step
    .goto 2521,59.80,40.38
    .complete 94485,1 --8/8 Lady's Tear Moss
step
    .goto 2521,55.93,38.96
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
step
    .goto 2521,53.97,38.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strange Hermit|r.
    .turnin 93160 >>Turn in The Forest's Bounty
    .target Strange Hermit

step
    .goto 2521,62.69,36.46
    .complete 94487,1 --10/10 Bloody Heirloom
step
    .goto 2521,63.85,37.16
    .complete 93165,1 --10/10 Al'Alketh Cultist's Ear

step
    .goto 2521,61.76,39.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elegael Thornpaw|r.
    .turnin 94485 >>Turn in Tears of the Lady
    .target Elegael Thornpaw
step
    .goto 2521,61.76,39.13
    .turnin 94487 >>Turn in Unwanted and Unworthy

step
    .goto 2521,61.76,39.13
    .turnin 94486 >>Turn in Feathers for Binding

step
    .goto 2521,61.76,39.13
    .accept 94488 >>Accept The Ties That Bind
step
    .goto 2521,61.76,39.13
    .accept 94489 >>Accept The Wounds of Betrayal
step
    .goto 2521,65.05,36.66
    .complete 94488,1 --1/1 Commander Haalien's Severed Head
step
    .goto 2521,64.77,37.11
    .accept 94490 >>Accept Ripped Missive

step
    .goto 2521,61.76,39.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elegael Thornpaw|r.
    .turnin 94490 >>Turn in Ripped Missive
    .target Elegael Thornpaw
step
    .goto 2521,61.76,39.13
    .turnin 94488 >>Turn in The Ties That Bind

step
    .goto 2521,61.76,39.13
    .accept 94491 >>Accept The Fate of the Den

step
    .goto 2521,63.80,36.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vayn Moongaze|r.
    .turnin 93165 >>Turn in Mercy Falls on Deaf Ears
    .target Vayn Moongaze
step
    .goto 2521,64.49,34.74

    .complete 94489,2 --1/1 Find Jorel Windsinger
    .skipgossipid 137859


step
    .goto 2521,65.91,33.54

    .complete 94489,1 --7/7 Injured Druids healed
step
    .goto 2521,61.77,39.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elegael Thornpaw|r.
    .turnin 94489 >>Turn in The Wounds of Betrayal
    .target Elegael Thornpaw
step
    .goto 2521,63.80,35.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vayn Moongaze|r.
    .turnin 93459 >>Turn in More Al'Aketh Ears
    .target Vayn Moongaze


step
    .goto 2521,56.65,29.37
    .complete 94896,1 --8/8 Abandoned Belongings
step
    .goto 2521,58.59,31.08

    .complete 93172,1 --10/10 Wind Hollow freed
step
    .goto 2521,57.04,29.36
    .complete 94897,1 --1/1 Resaan's Heirloom
    .skipgossipid 138670

step
    .goto 2521,53.97,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Strange Hermit|r.
    .turnin 93172 >>Turn in Free the Hollows
    .target Strange Hermit


step
    .goto 2521,63.98,75.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotheluum Starbreeze|r.
    .turnin 94491 >>Turn in The Fate of the Den
    .target Lotheluum Starbreeze
step
    .goto 2521,65.95,74.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ealaane Nimbuswalker|r.
    .turnin 94896 >>Turn in Aid For The Refugees
    .target Ealaane Nimbuswalker
step
    .goto 2521,65.95,74.31
    .turnin 94897 >>Turn in The Fate of a Loved One

step
    .goto 2521,66.34,79.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Iaadaria Bitterwind|r.
    .turnin 92741 >>Turn in Unwelcome Visitors
    .target Iaadaria Bitterwind


step
    .goto 1416/0,438.93,448.88
    .turnin 94946 >>Turn in The Magical City of Dalaran

step
    .goto 1416/0,438.93,448.88
    .accept 94947 >>Accept Welcome to Azeroth
step
    .goto 1416/0,445.93,450.00
    .complete 94947,1 --Take the Skyborne Portal to Stormwind
step
    .goto 1453/0,303.00,-8622.69
    .turnin 94947 >>Turn in Welcome to Azeroth

step
    .goto 1453/0,303.00,-8622.69
    .accept 93963 >>Accept Exploring the Alliance
step
    .goto 1453/0,319.27,-8682.03

    .complete 93963,1 --1/1 Recieve Instructions from Randal Emerson
    .skipgossipid 142485
]])

RXPGuides.RegisterGuide([[
#classic
#version 1
#name 1-10 2521
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
#name 1-10 2521
#displayname 1-10 Skyborne22222
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
#name 1-10 2521
#displayname 1-10 Skyborne2224334
#group RestedXP Alliance 1-20
#internal

--Tornado
    .goto 2521,64.58,46.38
]])
RXPGuides.RegisterGuide([[
#classic
#version 1
#name 1-10 2521
#displayname 1-10 Skyborne22223423
#group RestedXP Alliance 1-20
#internal

--Trainers
        .goto 2521,53.97,38.9 -- engineering
]])
RXPGuides.RegisterGuide([[
#classic
#version 1
#name 1-10 2521
#displayname 1-10 Skyborne22223423
#group RestedXP Alliance 1-20
#internal

--Treasure
 .goto 2521,48.53,20.6
]])
