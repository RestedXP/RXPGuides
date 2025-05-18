----------------------------
---x DAILIES
----------------------------

--SEPERATOR
RXPGuides.RegisterGuide([[
#retail
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(10-70)|r Pandaria Remix 
#name 9ha
#displayname |cFFFCDC00DAILIES|r
#disabled



]])

--Cloud Serpent Dailies
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(10-70)|r Pandaria Remix 
#name a) Cloud Serpent Dailies
#displayname |cFF1EFF001|r - Cloud Serpent
#next ab) The Klaxxi Daillies

step
    #loop
    .goto 371,57.51,45.36,15,0
    .goto 371,57.75,44.94,10,0
    .goto 371,58.28,45.04,15,0
    .goto 371,58.61,43.65,15,0
    .goto 371,57.29,43.46,15,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r, |cRXP_FRIENDLY_Your Hatchling|r, |cRXP_FRIENDLY_Ningna Darkwheel|r, |cRXP_FRIENDLY_Qua-Ro Whitebrow|r, and |cRXP_FRIENDLY_Instructor Windblade|r
    .questcount <3,31706,31711,31708,31194,30155,30156,30158,31700,31701,30154,31719,31721,31699,31702,31710,31703,31698,31712,31715,31714 >> |cRXP_WARN_Pick up the 3 available dailies in The Arboretum|r
    .target Elder Anli
    .target Your Hatchling
    .target Ningna Darkwheel
    .target Qua-Ro Whitebrow
    .target Instructor Windblade
step
    .isOnQuest 31719
    .goto 371,58.26,45.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ningna Darkwheel|r, |cRXP_WARN_defeat her|r
    .complete 31719,1 --1/1 Ningna Darkwheel defeated
    .target Ningna Darkwheel
    .skipgossipid 41480
step
    .isOnQuest 31721
    .goto 371,57.29,43.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Qua-Ro Whitebrow|r, |cRXP_WARN_defeat him|r
    .complete 31721,1 --1/1 Qua-Ro Whitebrow defeated
    .target Qua-Ro Whitebrow
    .mob Qua-Ro Whitebrow
    .skipgossipid 40479
step
    .isOnQuest 30152
    #completewith next
    #label TheSkyRace
    .complete 30152,1 --10/10 Checkpoints passed
    .complete 30152,2 --1/1 Pass underneath the Finish Line
step
    .isOnQuest 30152
    #completewith TheSkyRace
    .goto 371,58.61,43.65
    .gossipoption 40400 >>Talk to |cRXP_FRIENDLY_Instructor Windblade|r
    .target Instructor Windblade
step
    .isOnQuest 30152
    #title Checkpoint (1/10)
    #requires TheSkyRace
    .goto 371,60.60,39.34
    >>|cRXP_WARN_Fly through the baloons with the flag|r
    *Try to fly through the cloud rings to gain a speed buff
    .complete 30152,1,1 --1/10 Checkpoints passed
    .target Instructor Windblade
    .skipgossipid 40400
step
    .isOnQuest 30152
    #title Checkpoint (2/10)
    .goto 371,59.67,31.51
    >>|cRXP_WARN_Fly through the baloons with the flag|r
    *Try to fly through the cloud rings to gain a speed buff
    .complete 30152,1,2 --2/10 Checkpoints passed
    .target Instructor Windblade
    .skipgossipid 40400
step
    .isOnQuest 30152
    #title Checkpoint (3/10)
    .goto 371,61.29,25.20
    >>|cRXP_WARN_Fly through the baloons with the flag|r
    *Try to fly through the cloud rings to gain a speed buff
    .complete 30152,1,3 --3/10 Checkpoints passed
    .target Instructor Windblade
    .skipgossipid 40400
step
    .isOnQuest 30152
    #title Checkpoint (4/10)
    .goto 371,66.30,35.91
    >>|cRXP_WARN_Fly through the baloons with the flag|r
    *Try to fly through the cloud rings to gain a speed buff
    .complete 30152,1,4 --4/10 Checkpoints passed
    .target Instructor Windblade
    .skipgossipid 40400
step
    .isOnQuest 30152
    #title Checkpoint (5/10)
    .goto 371,66.11,42.49
    >>|cRXP_WARN_Fly through the baloons with the flag|r
    *Try to fly through the cloud rings to gain a speed buff
    .complete 30152,1,5 --5/10 Checkpoints passed
    .target Instructor Windblade
    .skipgossipid 40400
step
    .isOnQuest 30152
    #title Checkpoint (6/10)
    .goto 371,66.73,51.47
    >>|cRXP_WARN_Fly through the baloons with the flag|r
    *Try to fly through the cloud rings to gain a speed buff
    .complete 30152,1,6 --6/10 Checkpoints passed
    .target Instructor Windblade
    .skipgossipid 40400
step
    .isOnQuest 30152
    #title Checkpoint (7/10)
    .goto 371,64.05,51.04
    >>|cRXP_WARN_Fly through the baloons with the flag|r
    *Try to fly through the cloud rings to gain a speed buff
    .complete 30152,1,7 --7/10 Checkpoints passed
    .target Instructor Windblade
    .skipgossipid 40400
step
    .isOnQuest 30152
    #title Checkpoint (8/10)
    .goto 371,61.82,54.54
    >>|cRXP_WARN_Fly through the baloons with the flag|r
    *Try to fly through the cloud rings to gain a speed buff
    .complete 30152,1,8 --8/10 Checkpoints passed
    .target Instructor Windblade
    .skipgossipid 40400
step
    .isOnQuest 30152
    #title Checkpoint (9/10)
    .goto 371,60.40,52.88
    >>|cRXP_WARN_Fly through the baloons with the flag|r
    *Try to fly through the cloud rings to gain a speed buff
    .complete 30152,1,9 --9/10 Checkpoints passed
    .target Instructor Windblade
    .skipgossipid 40400
step
    .isOnQuest 30152
    #title Checkpoint (10/10)
    .goto 371,58.76,46.83
    >>|cRXP_WARN_Fly through the baloons with the flag|r
    *Try to fly through the cloud rings to gain a speed buff
    .complete 30152,1 --10/10 Checkpoints passed
    .target Instructor Windblade
    .skipgossipid 40400
step
    .isOnQuest 30152
    #title Finish Line
    .goto 371,58.38,46.35
    >>|cRXP_WARN_Fly through the Finish Line|r
    .complete 30152,2 --1/1 Pass underneath the Finish Line
    .skipgossipid 40400
step
    .isOnQuest 31712
    #completewith LordOonaSlainB
    >>Kill |cRXP_ENEMY_Oona Hozen|r
    .complete 31712,1 --13/13 Oona Hozen slain
    .mob Oona Goon
    .mob Oona Brewchugger
    .mob Oona Tuna-Catcher
step
    .isOnQuest 31714
    #completewith LordOonaSlainB
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_FRIENDLY_Misguided Serpents|r.
    *|cRXP_WARN_Be careful as you're able to kill them accidentally.|r
    .complete 31714,1 --10/10 Rescued Serpent
    .target Misguided Serpent
step
    .isOnQuest 31715
    #completewith next
    #label LordOonaSlainA
    >>Kill |cRXP_ENEMY_Load Oona|r
    .complete 31715,1 --1/1 Lord Oona slain
    .mob Lord Oona
step
    #title Enter Cave
    #completewith LordOonaSlainA
    .goto 371,57.50,27.72,10 >>Enter the cave
step
    #requires LordOonaSlainA
    #label LordOonaSlainB
    .goto 375,47.51,28.36,20,0
    .goto 375,24.43,44.19,20,0
    .goto 375,46.44,81.04
    >>Kill |cRXP_ENEMY_Load Oona|r
    .complete 31715,1 --1/1 Lord Oona slain
    .mob Lord Oona
step
    #completewith OonaHozenSlain
    #hidewindow
    #loop
    .goto 375,37.18,41.68,8,0
    .goto 375,57.06,30.82,15,0
    .goto 375,76.14,52.98,18,0
    .goto 375,79.01,35.69,18,0
    .goto 375,57.06,30.82,15,0
    .goto 375,24.43,44.19,20,0
    .goto 375,46.44,81.04,20,0
    +1
step
    .isOnQuest 31712
    #completewith next
    >>Kill |cRXP_ENEMY_Oona Hozen|r
    .complete 31712,1 --13/13 Oona Hozen slain
    .mob Oona Goon
    .mob Oona Brewchugger
    .mob Oona Tuna-Catcher
step
    .isOnQuest 31714
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_FRIENDLY_Misguided Serpents|r.
    *|cRXP_WARN_Be careful as you're able to kill them accidentally|r.
    .complete 31714,1 --10/10 Rescued Serpent
    .target Misguided Serpent
step
    .isOnQuest 31712
    #label OonaHozenSlain
    >>Kill |cRXP_ENEMY_Oona Hozen|r
    .complete 31712,1 --13/13 Oona Hozen slain
    .mob Oona Goon
    .mob Oona Brewchugger
    .mob Oona Tuna-Catcher
step
    .isOnQuest 31710
    #completewith SeedofDoubtSlainB
    >>Kill |cRXP_ENEMY_Widowspawns|r. Loot them for the |T463856:0|t[|cRXP_LOOT_Tiny Spider Eye|r].
    .complete 31710,1 --100/100 Tiny Spider Eye
    .mob Widowspawn
step
    .isOnQuest 31706
    #completewith SeedofDoubtSlainB
    >>Kill |cRXP_ENEMY_Weeping Widows|r
    .complete 31706,1 --7/7 Weeping Widow slain
    .mob Weeping Widow
step
    .isOnQuest 31708
    #completewith SeedofDoubtSlainB
    .complete 31708,1 --25/25 Serpent's Scale
step
    .isOnQuest 31711
    #completewith next
    #label SeedofDoubtSlainA
    #hidewindow
    >>Kill |cRXP_ENEMY_Seed of Doubt|r
    .complete 31711,1 --1/1 Seed of Doubt slain
    .mob Seed of Doubt
step
    #title Enter Cave
    #completewith SeedofDoubtSlainA
    .goto 371,57.69,31.72,10 >>Enter the cave
step
    .isOnQuest 31711
    #requires SeedofDoubtSlainA
    #label SeedofDoubtSlainB
    .goto 374,47.73,20.00,20,0
    .goto 374,33.23,38.52
    >>Kill |cRXP_ENEMY_Seed of Doubt|r
    .complete 31711,1 --1/1 Seed of Doubt slain
    .mob Seed of Doubt
step
    #completewith WeepingWidowSlain
    #hidewindow
    #loop
    .goto 374,30.30,72.86,18,0
    .goto 374,46.61,85.36,18,0
    .goto 374,73.39,49.73,18,0
    .goto 374,41.79,15.36,25,0
    +1
step
    .isOnQuest 31706
    #completewith TinySpiderEyes
    >>Kill |cRXP_ENEMY_Weeping Widows|r
    .complete 31706,1 --7/7 Weeping Widow slain
    .mob Weeping Widow
step
    .isOnQuest 31708
    #completewith TinySpiderEyes
    .complete 31708,1 --25/25 Serpent's Scale
step
    .isOnQuest 31710
    #label TinySpiderEyes
    >>Kill |cRXP_ENEMY_Widowspawns|r. Loot them for the |T463856:0|t[|cRXP_LOOT_Tiny Spider Eye|r].
    .complete 31710,1 --100/100 Tiny Spider Eye
    .mob Widowspawn
step
    .isOnQuest 31706
    #completewith next
    >>Kill |cRXP_ENEMY_Weeping Widows|r
    .complete 31706,1 --7/7 Weeping Widow slain
    .mob Weeping Widow
step
    .isOnQuest 31708
    #completewith TinySpiderEyes
    .complete 31708,1 --25/25 Serpent's Scale
step
    .isOnQuest 31706
    #label WeepingWidowSlain
    >>Kill |cRXP_ENEMY_Weeping Widows|r
    .complete 31706,1 --7/7 Weeping Widow slain
    .mob Weeping Widow
step
    .isOnQuest 31711,31706,31710
    .zoneskip 374,1
    #title Leave Cave
    .goto 371,57.94,31.72
    .zone 371 >>Leave the cave
step
    .isOnQuest 31710
    .goto 371,57.54,45.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Azure Hatchling|r
    .dailyturnin 31710 >>Turn in Tiny Treats
    .target Azure Hatchling
step
    .isOnQuest 31708
    .goto 371,57.54,45.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Your Cloud Serpent|r
    .dailyturnin 31708 >>Turn in Serpent's Scale
    .target Your Cloud Serpent
step
    .isOnQuest 31706
    .goto 371,57.71,45.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
    .dailyturnin 31706 >>Turn in Weeping Widows
    .target Elder Anli
step
    .isOnQuest 31711
    .goto 371,57.71,45.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
    .dailyturnin 31711 >>Turn in The Seed of Doubt
    .target Elder Anli
step
    .isOnQuest 31194
    .goto 371,69.68,31.28
    >>Kill |cRXP_ENEMY_Slitherscale Lizard-Lord|r
    .complete 31194,1 --1/1 Slitherscale Lizard-Lord slain
    .mob Slitherscale Lizard-Lord
step
    #completewith SlitherscaleSaurokSlainB
    #hidewindow
    #loop
    .goto 371,68.27,32.88,40,0
    .goto 371,66.74,25.68,40,0
    .goto 371,69.51,25.81,35,0
    +1
step
    .isOnQuest 30155
    #completewith next
    >>Kill |cRXP_ENEMY_Slitherscale saurok|r
    .complete 30155,1 --8/8 Slitherscale saurok slain
    .mob Slitherscale saurok
step
    .isOnQuest 30156
    >>Kill |cRXP_ENEMY_Saltback Turtles|r and |cRXP_ENEMY_Saltback Yearlings|r. Loot them for the |T237339:0|t[Saltback Meat Scrap] or |T237338:0|t[Saltback Meat].
    >>Combine 5 |T237339:0|t[Saltback Meat Scrap] to get |T237338:0|t[Saltback Meat]
    >>|cRXP_WARN_Click on the |cRXP_FRIENDLY_Cloud Serpent|r next to you|r
    .use 79028
    .use 79027
    .complete 30156,1 --3/3 Hatchling fed
    .mob Saltback Turtle
    .mob Saltback Yearling
step
    .isOnQuest 30155
    #completewith next
    >>Kill |cRXP_ENEMY_Slitherscale saurok|r
    .complete 30155,1 --8/8 Slitherscale saurok slain
    .mob Slitherscale saurok
step
    .isOnQuest 30158
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Slitherscale Weapons|r
    .complete 30158,1 --5/5 Slitherscale Harpoon
step
    .isOnQuest 30155
    #label SlitherscaleSaurokSlainA
    >>Kill |cRXP_ENEMY_Slitherscale saurok|r
    .complete 30155,1 --8/8 Slitherscale saurok slain
    .mob Slitherscale saurok
step
    #requies SlitherscaleSaurokSlainA
    #label SlitherscaleSaurokSlainB
    #optional
step
    .isOnQuest 31699
    #completewith WindwardHuntressSlain
    >>Kill |cRXP_FRIENDLY_ShadowfaeTrickster|r
    .complete 31699,1 --7/7 Shadowfae Trickster slain
    .mob Shadowfae Trickster
step
    .isOnQuest 31698
    #completewith WindwardHuntressSlain
    >>Kill |cRXP_ENEMY_Shadowfae Trickster|r
    .complete 31698,1 --7/7 Windward Tiger slain
    .mob Windward Tiger
step
    .isOnQuest 31700
    #completewith WindwardHuntressSlain
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stolen Boots|r
    .complete 31700,1 --14/14 Stolen Boots
    .mob Shadowfae Trickster
step
    .isOnQuest 30154
    #completewith WindwardHuntressSlain
    >>Kill |cRXP_ENEMY_Windward Tigers|r. Loot them for the |T237347:0|t[|cRXP_LOOT_Tiger Flanks|r].
    .complete 30154,1 --5/5 Tiger Flank
    .mob Windward Tiger
step
    .isOnQuest 31702
    .goto 371,63.86,22.36
    >>Kill |cRXP_ENEMY_Windward Saber|r
    .complete 31702,1 --1/1 Windward Saber slain
    .mob Windward Saber
step
    .isOnQuest 31701
    #completewith next
    #label WindwardHuntressSlain
    >>Kill the |cRXP_ENEMY_Windward Huntress|r
    .complete 31701,1 --1/1 Windward Huntress slain
    .mob Windward Huntress
step
    #title Enter Cave
    #completewith WindwardHuntressSlain
    .goto 371,64.40,25.86,10 >>Enter the cave
step
    .isOnQuest 31701
    #requires WindwardHuntressSlain
    .goto 371,64.92,25.54
    >>Kill the |cRXP_ENEMY_Windward Huntress|r
    .complete 31701,1 --1/1 Windward Huntress slain
    .mob Windward Huntress

step
    .isOnQuest 31699
    #completewith ShadowfaeMadcapSlain
    >>Kill |cRXP_FRIENDLY_ShadowfaeTrickster|r
    .complete 31699,1 --7/7 Shadowfae Trickster slain
    .mob Shadowfae Trickster
step
    .isOnQuest 31698
    #completewith ShadowfaeMadcapSlain
    >>Kill |cRXP_ENEMY_Shadowfae Trickster|r
    .complete 31698,1 --7/7 Windward Tiger slain
    .mob Windward Tiger
step
    .isOnQuest 31700
    #completewith ShadowfaeMadcapSlain
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stolen Boots|r
    .complete 31700,1 --14/14 Stolen Boots
    .mob Shadowfae Trickster
step
    .isOnQuest 30154
    #completewith ShadowfaeMadcapSlain
    >>Kill |cRXP_ENEMY_Windward Tigers|r. Loot them for the |T237347:0|t[|cRXP_LOOT_Tiger Flanks|r].
    .complete 30154,1 --5/5 Tiger Flank
    .mob Windward Tiger
step
    .isOnQuest 31703
    #completewith next
    #label ShadowfaeMadcapSlain
    >>Kill the |cRXP_ENEMY_Shadowfae Madcap|r
    .complete 31703,1 --1/1 Shadowfae Madcap slain
    .mob Shadowfae Madcap
step
    #title Enter Cave
    #completewith ShadowfaeMadcapSlain
    .goto 371,62.68,26.79,10 >>Enter the cave
step
    .isOnQuest 31703
    #requires ShadowfaeMadcapSlain
    .goto 371,62.65,27.45
    >>Kill the |cRXP_ENEMY_Shadowfae Madcap|r
    .complete 31703,1 --1/1 Shadowfae Madcap slain
    .mob Shadowfae Madcap

step
    #completewith StolenBoots
    #hidewindow
    #loop
    .goto 371,61.10,26.14,35,0
    .goto 371,62.38,20.81,35,0
    .goto 371,63.56,23.84,35,0
    .goto 371,64.08,27.32,35,0
    +1
step
    .isOnQuest 31699
    #completewith TigerFlank
    >>Kill |cRXP_ENEMY_Shadowfae Trickster|r
    .complete 31699,1 --7/7 Shadowfae Trickster slain
    .mob Shadowfae Trickster
step
    .isOnQuest 31698
    #completewith TigerFlank
    >>Kill |cRXP_ENEMY_Shadowfae Trickster|r
    .complete 31698,1 --7/7 Windward Tiger slain
    .mob Windward Tiger
step
    .isOnQuest 31700
    #completewith TigerFlank
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stolen Boots|r
    .complete 31700,1 --14/14 Stolen Boots
    .mob Shadowfae Trickster
step
    .isOnQuest 30154
    #label TigerFlank
    >>Kill |cRXP_ENEMY_Windward Tigers|r and |cRXP_ENEMY_Windward Alphas|r. Loot them for the |T237347:0|t[|cRXP_LOOT_Tiger Flanks|r].
    .complete 30154,1 --5/5 Tiger Flank
    .mob Windward Tiger
    .mob Windward Alpha
step
    .isOnQuest 31700
    #completewith ShadowfaeTricksterSlain
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stolen Boots|r
    .complete 31700,1 --14/14 Stolen Boots
    .mob Shadowfae Trickster
step
    .isOnQuest 31698
    #completewith ShadowfaeTricksterSlain
    >>Kill |cRXP_ENEMY_Shadowfae Trickster|r
    .complete 31698,1 --7/7 Windward Tiger slain
    .mob Windward Tiger
step
    .isOnQuest 31699
    #label ShadowfaeTricksterSlain
    >>Kill |cRXP_FRIENDLY_ShadowfaeTrickster|r
    .complete 31699,1 --7/7 Shadowfae Trickster slain
    .mob Shadowfae Trickster
step
    .isOnQuest 31700
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stolen Boots|r
    .complete 31700,1 --14/14 Stolen Boots
    .mob Shadowfae Trickster
step
    .isOnQuest 31698
    >>Kill |cRXP_ENEMY_Shadowfae Trickster|r
    .complete 31698,1 --7/7 Windward Tiger slain
    .mob Windward Tiger
step
    .isOnQuest 31700
    #label StolenBoots
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Stolen Boots|r
    .complete 31700,1 --14/14 Stolen Boots
    .mob Shadowfae Trickster
step
    .isOnQuest 30155
    .goto 371,57.63,44.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
    .dailyturnin 30155 >>Turn in Restoring the Balance
    .target Elder Anli
step
    .isOnQuest 30156
    .goto 371,57.63,44.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
    .dailyturnin 30156 >>Turn in Feeding Time
    .target Elder Anli
step
    .isOnQuest 31194
    .goto 371,57.63,44.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
    .dailyturnin 31194 >>Turn in Slitherscale Suppression
    .target Elder Anli
step
    .isOnQuest 30158
    .goto 371,57.63,44.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
    .dailyturnin 30158 >>Turn in Disarming the Enemy
    .target Elder Anli
step
    .isOnQuest 31702
    .goto 371,57.63,44.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
    .dailyturnin 31702 >>Turn in On The Prowl
    .target Elder Anli
step
    .isOnQuest 31703
    .goto 371,57.63,44.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
    .dailyturnin 31703 >>Turn Madcap Mayhem
    .target Elder Anli
step
    .isOnQuest 31700
    .goto 371,57.63,44.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
    .dailyturnin 31700 >>Turn in The Shoe Is On The Other Foot
    .target Elder Anli
step
    .isOnQuest 31701
    .goto 371,57.63,44.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
    .dailyturnin 31701 >>Turn in Dark Huntress
    .target Elder Anli
step
    .isOnQuest 31699
    .goto 371,57.63,44.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
    .dailyturnin 31699 >>Turn in Sprite Fright
    .target Elder Anli
step
    .isOnQuest 31698
    .goto 371,57.63,44.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
    .dailyturnin 31698 >>Turn in Thinning The Pack
    .target Elder Anli
step
    .isOnQuest 30154
    .goto 371,57.63,44.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
    .dailyturnin 30154 >>Turn in The Easiest Way To A Serpent's Heart
    .target Elder Anli
step
    .isOnQuest 31719
    .goto 371,57.63,44.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
    .dailyturnin 31719 >>Turn in The Trainer's Challenge: Ningna Darkwheel
    .target Elder Anli
step
    .isOnQuest 31721
    .goto 371,57.63,44.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
    .dailyturnin 31721 >>Turn in The Trainer's Challenge: Qua-Ro Whitebrow
    .target Elder Anli
step
    .isOnQuest 30152
    .goto 371,57.63,44.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
    .dailyturnin 30152 >>Turn in The Sky Race
    .target Elder Anli
step
    .isOnQuest 31712
    .goto 371,57.72,44.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
    .dailyturnin 31712 >>Turn in Monkey Mischief
    .target Elder Anli
step
    .isOnQuest 31715
    .goto 371,57.72,44.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
    .dailyturnin 31715 >>Turn in The Big Kah-Oona
    .target Elder Anli
step
    .isOnQuest 31714
    .goto 371,57.72,44.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
    .dailyturnin 31714 >>Turn in Saving the Serpents
    .target Elder Anli
]])

--The Klaxxi Dailies
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(10-70)|r Pandaria Remix 
#name ab) The Klaxxi Daillies
#displayname |cFF1EFF002|r - The Klaxxi 
#title The Klaxxi Dailies
#next ac) August Celestial Daillies

step
    #loop
    .goto 422,54.29,35.93,15,0
    .goto 422,55.06,35.85,10,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r, |cRXP_FRIENDLY_Rik'kal the Dissector|r, |cRXP_FRIENDLY_Korven the Prime|r or |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
    .questcount <6,31232,31238,31231,31235,31234,31233,31109,31487,31494,31502,31503,31496,31808 >>|cRXP_WARN_Get all the Shado-Pan Dailies, skip this step if it doesn't complete|r
    .target Kaz'tik the Manipulator
    .target Rik'kal the Dissector
    .target Korven the Prime
    .target Kil'ruk the Wind-Reaver
step
    .isOnQuest 31808
    .goto 422,50.82,41.37
    #title |cFFFCDC00Follow the Arrow|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_FRIENDLY_Kovok|r
    .complete 31808,1 --1/1 Locate Kovok near the Clutches of Shek'zeer
    .target Kovok
step
    .isOnQuest 31808
    #loop
    .goto 422,50.65,45.84,40,0
    .goto 422,41.68,41.22,50,0
    .goto 422,40.63,34.35,45,0
    .goto 422,41.76,27.94,40,0
    .goto 422,68.01,12.87,50,0
    .goto 422,41.76,27.94,40,0
    .goto 422,40.63,34.35,45,0
    .goto 422,41.68,41.22,50,0
    >>Spam |T132104:0|t[Poison Blast] (1) to kill the |cRXP_ENEMY_Mantid|r
    .complete 31808,2 --200/200 Mantid slain
    .mob Ik'thik Warrior
    .mob Ik'thik Slayer
    .mob Krik'thik Battletank
    .mob Krik'thik Wingguard
    .mob Krik'thik Wingleader
step
    .isOnQuest 31109
    #completewith KunchongHatchlingReleased
    >>Kill |cRXP_ENEMY_Shek'zeer Mantid|r
    .complete 31109,1 --40/40 Shek'zeer Mantid Slain
    .mob Shek'zeer Bladesworn
    .mob Shek'zeer Manipulator
step
    .isOnQuest 31487
    #completewith KunchongHatchlingReleased
    >>Kill |cRXP_ENEMY_Dread Kunchong|r and |cRXP_ENEMY_Shek'zeer Manipulator|r
    *|cRXP_WARN_Use the|r |T458772:0|t[Sonic Disruption Tool] |cRXP_WARN_near |cRXP_ENEMY_Dread Kunchong|r to weaken them and make them attack the |cRXP_ENEMY_Shek'zeer Manipulator|r|r
    .complete 31487,1 --4/4 Dread Kunchong slain
    .complete 31487,2 --6/6 Shek'zeer Manipulator slain
    .mob Dread Kunchong
    .mob Shek'zeer Manipulator
step
    .isOnQuest 31494
    #label KunchongHatchlingReleased
    #loop
    .goto 422,47.78,36.52,30,0
    .goto 422,49.71,33.25,30,0
    .goto 422,46.05,30.11,30,0
    .goto 422,44.73,34.43,27,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Kunchong Cages|r
    .complete 31494,1 --8/8 Kunchong Hatchling released
step
    .isOnQuest 31109
    #completewith DreadKunchongShekzeerManipulator
    >>Kill |cRXP_ENEMY_Shek'zeer Mantid|r
    .complete 31109,1 --40/40 Shek'zeer Mantid Slain
    .mob Shek'zeer Bladesworn
    .mob Shek'zeer Manipulator
    .mob Shek'zeer Needler
step
    .isOnQuest 31487
    #completewith VessGuardNakalSlain
    >>Kill |cRXP_ENEMY_Dread Kunchong|r and |cRXP_ENEMY_Shek'zeer Manipulator|r
    *|cRXP_WARN_Use the|r |T458772:0|t[Sonic Disruption Tool] |cRXP_WARN_near |cRXP_ENEMY_Dread Kunchong|r to weaken them and make them attack the |cRXP_ENEMY_Shek'zeer Manipulator|r|r
    .complete 31487,1 --4/4 Dread Kunchong slain
    .complete 31487,2 --6/6 Shek'zeer Manipulator slain
    .mob Dread Kunchong
    .mob Shek'zeer Manipulator
step
    .isOnQuest 31503
    #label VessGuardNakalSlain
    .goto 422,39.24,31.37
    >>Kill |cRXP_ENEMY_Vess-Guard Na'kal|r
    .complete 31503,1 --1/1 Vess-Guard Na'kal slain
    .mob Vess-Guard Na'kal
step
    .isOnQuest 31502
    #completewith FeederA
    >>Kill |cRXP_ENEMY_Shek'zeer Needler|r. Loot them for the |T237143:0|t[|cRXP_LOOT_Needler Wing|r].
    .complete 31502,1 --24/24 Needler Wing
    .mob Shek'zeer Needler
step
    .isOnQuest 31496
    #hidewindow
    #label FeederB
    .complete 31496,2 --1/1 East Feeder
    .complete 31496,3 --1/1 North Feeder
    .complete 31496,1 --1/1 Central Feeder
    .complete 31496,4 --1/1 Northeast Feeder
step
    .isOnQuest 31496
    #completewith next
    #label EastFeeder
    #hidewindow
    .complete 31496,2 --1/1 East Feeder
step
    #title Enter House
    #completewith EastFeeder
    .goto 422,38.29,31.95,6 >>Enter the house
step
    .isOnQuest 31496
    #requires EastFeeder
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_East Feeder|r or use the |T134772:0|t[Sap Jar]
    .goto 422,37.85,33.06
    .use 87400
    .complete 31496,2 --1/1 East Feeder
step
    --PRMK: Is there no better way?
    .isOnQuest 31496
    #title Leave House
    .goto 422,38.29,31.95,6 >>Leave the house
step
    .isOnQuest 31496
    #completewith next
    #label NorthFeeder
    #hidewindow
    .complete 31496,3 --1/1 North Feeder
step
    #title Enter House
    #completewith NorthFeeder
    .goto 422,36.25,32.26,6 >>Enter the house
step
    .isOnQuest 31496
    #requires NorthFeeder
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_North Feeder|r or use the |T134772:0|t[Sap Jar]
    .goto 422,37.03,32.83
    .use 87400
    .complete 31496,3 --1/1 North Feeder
step
    .isOnQuest 31496
    #title Leave House
    .goto 422,36.25,32.26,6 >>Leave the house
step
    .isOnQuest 31496
    #completewith next
    #label CentralFeeder
    #hidewindow
    .complete 31496,1 --1/1 Central Feeder
step
    #title Enter House
    #completewith CentralFeeder
    .goto 422,37.03,28.07,6 >>Enter the house
step
    .isOnQuest 31496
    #requires CentralFeeder
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Central Feeder|r or use the |T134772:0|t[Sap Jar]
    .goto 422,37.40,29.24
    .use 87400
    .complete 31496,1 --1/1 Central Feeder
step
    .isOnQuest 31496
    #title Leave House
    .goto 422,37.03,28.07,6 >>Leave the house
step
    .isOnQuest 31496
    #completewith next
    #label NortheastFeeder
    #hidewindow
    .complete 31496,4 --1/1 Northeast Feeder
step
    #title Enter House
    #completewith NortheastFeeder
    .goto 422,39.35,29.24,6 >>Enter the house
step
    .isOnQuest 31496
    #requires NortheastFeeder
    #label FeederA
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Northeast Feeder|r or use the |T134772:0|t[Sap Jar]
    .goto 422,39.04,30.47
    .use 87400
    .complete 31496,4 --1/1 Northeast Feeder
step
    .isOnQuest 31502
    #loop
    .goto 422,40.10,31.25,35,0
    .goto 422,33.92,30.95,35,0
    .goto 422,38.50,28.84,35,0
    >>Kill |cRXP_ENEMY_Shek'zeer Needler|r. Loot them for the |T237143:0|t[|cRXP_LOOT_Needler Wing|r].
    .complete 31502,1 --24/24 Needler Wing
    .mob Shek'zeer Needler
step
    .isOnQuest 31487
    #label DreadKunchongShekzeerManipulator
    #loop
    .goto 422,43.38,31.81,50,0
    .goto 422,49.86,25.29,50,0
    .goto 422,48.41,36.73,50,0
    >>Kill |cRXP_ENEMY_Dread Kunchong|r and |cRXP_ENEMY_Shek'zeer Manipulator|r
    *|cRXP_WARN_Use the|r |T458772:0|t[Sonic Disruption Tool] |cRXP_WARN_near |cRXP_ENEMY_Dread Kunchong|r to weaken them and make them attack the |cRXP_ENEMY_Shek'zeer Manipulator|r|r
    .complete 31487,1 --4/4 Dread Kunchong slain
    .complete 31487,2 --6/6 Shek'zeer Manipulator slain
    .mob Dread Kunchong
    .mob Shek'zeer Manipulator
step
    .isOnQuest 31109
    #loop
    .goto 422,34.59,30.45,40,0
    .goto 422,50.40,23.56,50,0
    .goto 422,48.40,36.80,45,0
    >>Kill |cRXP_ENEMY_Shek'zeer Mantid|r
    .complete 31109,1 --40/40 Shek'zeer Mantid Slain
    .mob Shek'zeer Bladesworn
    .mob Shek'zeer Manipulator
    .mob Shek'zeer Needler
step
    .isOnQuest 31233
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Amber Taps|r |cRXP_WARN_found on trees|r. Afterwards |TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Amber Pot|r below the tap.
    .complete 31233,1 --6/6 Amber Sap
step
    .isOnQuest 31234
    >>Kill |cRXP_ENEMY_Mire Beasts|r. Loot them for the |T237299:0|t[|cRXP_LOOT_Pristine Mire Beast Eye|r].
    .complete 31234,1 --1/1 Pristine Mire Beast Eye
    .goto 422,67.35,36.63
    .mob Mire Beast
step
    #completewith DreadspinnerTenderSlain
    #hidewindow
    #loop
    .goto 422,66.22,29.08,40,0
    .goto 422,72.50,29.17,35,0
    .goto 422,71.46,22.47,40,0
    .goto 422,74.72,20.60,40,0
    +1
step
    .isOnQuest 31231
    #completewith GurhtaniTablets
    >>Kill |cRXP_ENEMY_Dreadspinner Tender|r
    .complete 31231,1 --8/8 Dreadspinner Tender slain
    .mob Dreadspinner Tender
step
    .isOnQuest 31235
    #completewith GurhtaniTablets
    >>Use the |T133837:0|t[Shado-Pan Dragon Gun] to destroy |cRXP_PICK_Dreadspinner Eggs|r
    .complete 31235,1 --20/20 Dreadspinner Egg slain
    .use 82807
    .mob Dreadspinner Egg
step
    .isOnQuest 31232
    #label GurhtaniTablets
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Gurthani Tablets|r
    .complete 31232,1 --8/8 Gurthani Tablet
step
    .isOnQuest 31231
    #completewith next
    >>Kill |cRXP_ENEMY_Dreadspinner Tender|r
    .complete 31231,1 --8/8 Dreadspinner Tender slain
    .mob Dreadspinner Tender
step
    .isOnQuest 31235
    >>Use the |T133837:0|t[Shado-Pan Dragon Gun] to destroy |cRXP_PICK_Dreadspinner Eggs|r
    .complete 31235,1 --20/20 Dreadspinner Egg slain
    .use 82807
    .mob Dreadspinner Egg
step
    .isOnQuest 31231
    #label DreadspinnerTenderSlain
    >>Kill |cRXP_ENEMY_Dreadspinner Tender|r
    .complete 31231,1 --8/8 Dreadspinner Tender slain
    .mob Dreadspinner Tender
step
    .isOnQuest 31238
    #completewith AmberSapA
    >>Kill |cRXP_ENEMY_Greatback Mushans|r and |cRXP_ENEMY_Greatback Calfs|r. Loot them for the |T350575:0|t[|cRXP_LOOT_Mushan Tongues|r].
    .complete 31238,1 --4/4 Mushan Tongue
    .mob Greatback Mushan
    .mob Greatback Calf
step
    #completewith next
    #hidewindow
    --.goto 422,69.71,17.14,0
    --.goto 422,68.07,17.10,0
    --.goto 422,67.51,20.31,0
    --.goto 422,67.24,19.92,0
    --.goto 422,66.24,17.56,0
    --.goto 422,65.61,17.81,0
    --.goto 422,65.53,21.69,0
    --.goto 422,66.23,24.31,0
    --.goto 422,63.92,19.48,0
    --.goto 422,66.13,26.99,0
    --.goto 422,71.14,30.27,0
    --.goto 422,73.36,31.55,0
    --.goto 422,71.16,24.12,0
    --.goto 422,65.06,32.14,0
    --.goto 422,65.82,34.00,0
    --.goto 422,68.33,33.99,0
    --.goto 422,69.65,34.20,0
    --.goto 422,69.37,32.31,0
    --.goto 422,66.53,39.27,0
    --.goto 422,65.62,38.33,0
    --.goto 422,64.76,41.82,0
    --.goto 422,64.38,42.00,0
    --.goto 422,65.88,44.49,0
    --.goto 422,66.13,44.80,0
    --.goto 422,66.58,43.75,0
    --.goto 422,67.49,43.83,0
    --.goto 422,67.38,42.65,0
    +1
step
    #label AmberSapA
    .isOnQuest 31233
    #loop
    .goto 422,69.70,17.03,15,0
    .goto 422,68.12,17.09,15,0
    .goto 422,65.82,17.69,15,0
    .goto 422,63.89,19.55,15,0
    .goto 422,65.52,21.68,15,0
    .goto 422,66.26,24.31,15,0
    .goto 422,66.14,26.92,15,0
    .goto 422,65.06,32.36,15,0
    .goto 422,65.81,34.08,15,0
    .goto 422,65.61,38.37,15,0
    .goto 422,64.56,41.99,15,0
    .goto 422,66.28,43.33,15,0
    .goto 422,65.99,44.77,15,0
    .goto 422,67.49,43.81,15,0
    .goto 422,68.09,40.08,15,0
    .goto 422,66.51,39.17,15,0
    .goto 422,70.31,37.98,15,0
    .goto 422,69.65,34.21,15,0
    .goto 422,71.13,30.23,15,0
    .goto 422,72.21,30.65,15,0
    .goto 422,73.35,31.56,15,0
    .goto 422,73.83,28.74,15,0
    .goto 422,71.13,24.09,15,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Amber Taps|r |cRXP_WARN_found on trees|r. Afterwards |TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Amber Pot|r below the tap.
    .complete 31233,1 --6/6 Amber Sap
step
    .isOnQuest 31238
    #loop
    .goto 422,59.88,22.23,55,0
    .goto 422,63.44,20.32,55,0
    .goto 422,67.03,20.71,45,0
    .goto 422,62.41,25.75,45,0
    .goto 422,50.10,29.42,45,0
    >>Kill |cRXP_ENEMY_Greatback Mushans|r and |cRXP_ENEMY_Greatback Calfs|r. Loot them for the |T350575:0|t[|cRXP_LOOT_Mushan Tongues|r].
    .complete 31238,1 --4/4 Mushan Tongue
    .mob Greatback Mushan
    .mob Greatback Calf
step
    .isOnQuest 31231
    .goto 422,55.06,35.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
    .dailyturnin 31231 >>Turn in Dreadspinner Extermination
    .target Kil'ruk the Wind-Reaver
step
    .isOnQuest 31235
    .goto 422,55.06,35.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
    .dailyturnin 31235 >>Turn in Nope Nope Nope
    .target Kil'ruk the Wind-Reaver
step
    .isOnQuest 31234
    .goto 422,54.37,35.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rik'kal the Dissector|r
    .dailyturnin 31234 >>Turn in Putting An Eye Out
    .target Rik'kal the Dissector
step
    .isOnQuest 31233
    .goto 422,54.31,36.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
    .dailyturnin 31233 >>Turn in Sap Tapping
    .target Korven the Prime
step
    .isOnQuest 31232
    .goto 422,54.31,36.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
    .dailyturnin 31232 >>Turn in An Ancient Empire
    .target Korven the Prime
step
    .isOnQuest 31238
    .goto 422,54.25,35.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
    .dailyturnin 31238 >>Turn in Brain Food
    .target Kaz'tik the Manipulator
step
    .isOnQuest 31487
    .goto 422,54.26,35.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
    .dailyturnin 31487 >>Turn in Sonic Disruption
    .target Kaz'tik the Manipulator
step
    .isOnQuest 31494
    .goto 422,54.26,35.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
    .dailyturnin 31494 >>Turn in Free From Her Clutches
    .target Kaz'tik the Manipulator
step
    .isOnQuest 31808
    .goto 422,54.25,35.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
    .dailyturnin 31808 >>Turn in Rampage Against the Machine
    .target Kaz'tik the Manipulator
step
    .isOnQuest 31502
    .goto 422,54.37,35.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rik'kal the Dissector|r
    .dailyturnin 31502 >>Turn in Wing Clip
    .target Rik'kal the Dissector
step
    .isOnQuest 31503
    .goto 422,54.37,35.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rik'kal the Dissector|r
    .dailyturnin 31503 >>Turn in Shortcut to Ruin
    .target Rik'kal the Dissector
step
    .isOnQuest 31496
    .goto 422,54.30,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
    .dailyturnin 31496 >>Turn in Sampling the Empire's Finest
    .target Korven the Prime
step
    .isOnQuest 31109
    .goto 422,55.06,35.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kil'ruk the Wind-Reaver|r
    .dailyturnin 31109 >>Turn in Culling the Swarm
    .target Kil'ruk the Wind-Reaver
]])

--August Celestial Dailies
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(10-70)|r Pandaria Remix 
#name ac) August Celestial Daillies
#displayname |cFF1EFF003|r - August Celestial
#title August Celestial Daillies
#next ad) Domination Point Dailies


--Jade Forest
-- step
--     .accept 30066 >>Accept Hidden Power
--     .accept 30065 >>Accept Arrows of Fortune
--     .target +Elder Sage Tai-Feng
--     .accept 30063 >>Accept Behind the Masks
--     .accept 30064 >>Accept Saving the Sutras
--     .target +Elder Sage Storm-Sing
step
    .areapoiexists 371,7734,7735,7736,7737
    #loop
    .goto 371,53.90,61.96,10,0
    .goto 371,53.8,61.8,10,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Tai-Feng|r and |cRXP_FRIENDLY_Elder Sage Storm-Sing|r
    .questcount <4,30066,30065,30063,30064  >>|cRXP_WARN_Get all the Daillies|r
step
    .goto 371,53.8,61.8
    .reputation 1269,revered,<0,1
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Tai-Feng|r
    .accept 30006 >>Accept The Darkness Around Us
step
    #hidewindow
    #completewith AugustLoop1
    #label startaugustjade
    #loop
    .goto 371,53.6,54.06,40,0
    .goto 371,56.3,51.04,40,0
    .goto 371,56.1,53.41,40,0
    .goto 371,55.16,57.24,40,0
    +1
step
    #completewith Ancient Mantras
    .isOnQuest 30006
    >>Kill |cRXP_ENEMY_Lingering Doubt|r and |cRXP_ENEMY_Final Doubt|r
    .complete 30006,1 --15/15 Sha invaders slain
    .mob Lingering Doubt
    .mob Final Doubt
step
    #completewith Ancient Mantras
    .isOnQuest 30063
    >>Kill |cRXP_ENEMY_Lingering Doubt|r and |cRXP_ENEMY_Final Doubt.|r Loot them for [|cRXP_LOOT_Mask of Doubt|r].
    .complete 30063,1 --8/8 Mask of Doubt
    .mob Lingering Doubt
    .mob Final Doubt
step
    #completewith Ancient Mantras
    .isOnQuest 30065
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Arrows|r
    .complete 30065,1 --8/8 Defender's Arrow
step
    #completewith Ancient Mantras
    .isOnQuest 30064
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Books|r
    .complete 30064,1 --6/6 Ancient Sutra
step
    .isOnQuest 30066
    #label Ancient Mantras
    >>Interact with |cRXP_FRIENDLY_Yu'lon Adept|r and |cRXP_FRIENDLY_Yu'lon Guardian|r to deliver mantras
    .complete 30066,1 --6/6 Ancient Mantras delivered
    .use 77475
    .target Yu'lon Adept
    .target Yu'lon Guardian
step
    #completewith Defender's Arrow
    .isOnQuest 30006
    >>Kill |cRXP_ENEMY_Lingering Doubts|r and |cRXP_ENEMY_Final Doubts.|r
    .complete 30006,1 --15/15 Sha invaders slain
    .mob Lingering Doubt
    .mob Final Doubt
step
    #completewith Defender's Arrow
    .isOnQuest 30063
    >>Kill |cRXP_ENEMY_Lingering Doubt|r and |cRXP_ENEMY_Final Doubt.|r Loot them for [|cRXP_LOOT_Mask of Doubt|r].
    .complete 30063,1 --8/8 Mask of Doubt
    .mob Lingering Doubt
    .mob Final Doubt
step
    #label Defender's Arrow
    .isOnQuest 30065
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Arrows|r
    .complete 30065,1 --8/8 Defender's Arrow
step
    #completewith Ancient Sutra
    .isOnQuest 30006
    >>Kill |cRXP_ENEMY_Lingering Doubt|r and |cRXP_ENEMY_Final Doubt|r
    .complete 30006,1 --15/15 Sha invaders slain
    .mob Lingering Doubt
    .mob Final Doubt
step
    #completewith Ancient Sutra
    .isOnQuest 30063
    >>Kill |cRXP_ENEMY_Lingering Doubt|r and |cRXP_ENEMY_Final Doubt.|r Loot them for [|cRXP_LOOT_Mask of Doubt|r].
    .complete 30063,1 --8/8 Mask of Doubt
    .mob Lingering Doubt
    .mob Final Doubt
step
    #label Ancient Sutra
    .isOnQuest 30064
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Books|r
    .complete 30064,1 --6/6 Ancient Sutra
step
    #completewith next
    .isOnQuest 30063
    >>Kill |cRXP_ENEMY_Lingering Doubt|r and |cRXP_ENEMY_Final Doubt.|r Loot them for [|cRXP_LOOT_Mask of Doubt|r].
    .complete 30063,1 --8/8 Mask of Doubt
    .mob Lingering Doubt
    .mob Final Doubt
step
    .isOnQuest 30006
    >>Kill |cRXP_ENEMY_Lingering Doubt|r and |cRXP_ENEMY_Final Doubt|r
    .complete 30006,1 --15/15 Sha invaders slain
    .mob Lingering Doubt
    .mob Final Doubt
step
    #label AugustLoop1
    .isOnQuest 30063
    >>Kill |cRXP_ENEMY_Lingering Doubt|r and |cRXP_ENEMY_Final Doubt.|r Loot them for [|cRXP_LOOT_Mask of Doubt|r].
    .complete 30063,1 --8/8 Mask of Doubt
    .mob Lingering Doubt
    .mob Final Doubt
step
    .reputation 1269,revered,<0,1
    .goto 371,53.90,61.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Tai-Feng|r
    .dailyturnin 30006 >>Turn in The Darkness Around Us
    .target Elder Sage Tai-Feng
step
    .isOnQuest 30066
    .goto 371,53.90,61.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Tai-Feng|r
    .dailyturnin 30066 >>Turn in Hidden Power
    .target Elder Sage Tai-Feng
step
    .isOnQuest 30065
    .goto 371,53.90,61.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Tai-Feng|r
    .dailyturnin 30065 >>Turn in Arrows of Fortune
    .target Elder Sage Tai-Feng
step
    .isOnQuest 30064
    .goto 371,53.8,61.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Storm-Sing|r
    .dailyturnin 30064 >>Turn in Saving the Sutras
    .target Elder Sage Storm-Sing
step
    .areapoiexists 371,7734,7735,7736,7737
    .goto 371,53.90,61.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Tai-Feng|r
    .accept 30067 >>Accept The Shadow of Doubt
    .accept 30068 >>Accept Flames of the Void
    .target Elder Sage Tai-Feng
step
    .isOnQuest 30067
    .goto 371,57.53,62.26
    >>Kill |cRXP_ENEMY_Shadow of Doubt|r
    .complete 30067,1 --1/1 Shadow of Doubt slain
    .mob Shadow of Doubt
step
    .isOnQuest 30068
    #completewith next
    .goto 371,54.13,60.87
    .vehicle >>Interact with the |cRXP_FRIENDLY_War Serpent|r
    .target War Serpent
step
    .isOnQuest 30068
    #loop
    .goto 371,52.32,57.21,30,0
    .goto 371,53.95,57.25,30,0
    .goto 371,52.87,55.57,30,0
    .goto 371,54.45,55.66,30,0
    .goto 371,54.27,53.43,30,0
    .goto 371,54.62,52.25,30,0
    .goto 371,55.75,52.3,30,0
    .goto 371,55.07,53.91,30,0
    >>Fly close to water pools to pick up water, then use the |cRXP_WARN_(1)|r|T135975:0|t[Water Cannon] on smoky void fissures. repeat.
    .complete 30068,1 --6/6 Void Flames doused
step
    .isOnQuest 30067
    .goto 371,53.91,61.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Tai-Feng|r
    .dailyturnin 30067 >>Turn in The Shadow of Doubt
    .target Elder Sage Tai-Feng
step
    .isOnQuest 30068
    #label endaugustjade
    .goto 371,53.91,61.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Tai-Feng|r
    .dailyturnin 30068 >>Turn in Flames of the Void
    .target Elder Sage Tai-Feng
--Kun-Lai
step << Alliance
    #label startaugustkunlai
    .isQuestAvailable 31394
    .goto 379,68.78,43.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r
    .accept 31394 >>Accept A Celestial Experience
    .target Anduin Wrynn
step << Horde
    .isQuestAvailable 31395
    .goto 379,68.73,43.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunwalker Dezco|r
    .accept 31395 >>Accept A Celestial Experience
    .target Sunwalker Dezco
step << Alliance
    .isOnQuest 31394
    .goto 379,68.87,42.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xuen|r
    .complete 31394,1 --1/1 Speak to Xuen
    .timer 55,RP
    .target Xuen
step << Alliance
    .isOnQuest 31394
    .goto 379,68.79,43.99
    -- #loop
    -- .goto 379,68.79,43.99,5,0
    -- .goto 379,68.81,43.69,5,0
    >>Kill |cRXP_ENEMY_Spirit of Violence|r |cRXP_WARN_after the roleplay.|r
    .complete 31394,2 --1/1 Pass the First Test
    .mob Spirit of Violence
step << Alliance
    .isOnQuest 31394
    .goto 379,68.79,43.99
    -- #loop
    -- .goto 379,68.79,43.99,5,0
    -- .goto 379,68.81,43.69,5,0
    >>Kill |cRXP_ENEMY_Spirit of Anger|r |cRXP_WARN_after the roleplay|r
    .complete 31394,3 --1/1 Pass the Second Test
    .mob Spirit of Anger
step
    .convertquest 31394,31395 <<Horde
    .isOnQuest 31394,31395
    .goto 379,68.79,43.99
    -- #loop
    -- .goto 379,68.79,43.99,5,0
    -- .goto 379,68.81,43.69,5,0
    >>Kill |cRXP_ENEMY_Spirit of Hatred|r |cRXP_WARN_after the roleplay|r
    .complete 31394,4 --1/1 Pass the Third Test
    .mob Spirit of Hatred
step << Alliance
    .goto 379,68.78,43.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r
    .turnin 31394 >>Turn in A Celestial Experience
    .target Anduin Wrynn
step << Horde
    .goto 379,68.73,43.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunwalker Dezco|r
    .turnin 31395 >>Turn in A Celestial Experience
    .target Sunwalker Dezco
step << Alliance
    .isQuestTurnedIn 31394
    .goto 379,68.78,43.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin Wrynn|r
    .target Anduin Wrynn
    .accept 31512 >>Accept A Witness to History
step << Horde
    .isQuestTurnedIn 31395
    .goto 379,68.73,43.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sunwalker Dezco|r
    .target Sunwalker Dezco
    .accept 31511 >>Accept A Witness to History
step << Alliance
    .isOnQuest 31512
    .goto 379,55.10,91.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anduin at the Gate of the August Celestials|r
    .complete 31512,1 --1/1 Speak to Anduin at the Gate of the August Celestials
    .skipgossip
    .target Anduin
step << Horde
    .goto 379,56.18,91.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dezco at the Gate of the August Celestials|r
    .complete 31511,1 --1/1 Speak with Dezco at the Gate of the August Celestials
    .skipgossip
    .target Dezco at the Gate of the August Celestials
step << Alliance
    .isOnQuest 31512
    .goto 393,36.20,66.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Matron Vi Vinh|r
    .turnin 31512 >>Turn in A Witness to History
    .target Matron Vi Vinh
step << Horde
    #completewith next
    .goto 391,77.48,71.91,10 >> Enter Shrine of Two Moons
step << Horde
    .goto 391,68.38,47.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Madam Vee Luo|r
    .turnin 31511 >>Turn in A Witness to History
    .target Madam Vee Luo
step
    .areapoiexists 379,7734,7735,7736,7737
    .goto 379,67.24,55.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xuen|r
    .target Xuen
    -- .daily 31517,31492 >>Accept Contending With Bullies or The Torch of Strength
    .daily 31517 >>Accept Contending With Bullies
    .daily 30879,30880 >>Accept Round 1: Brewmaster Chani or Round 1: The Streetfighter
step
    .isOnQuest 31517
    .goto 379,71.09,55.93
    >>Kill |cRXP_ENEMY_Shonuf|r
    .complete 31517,1 --1/1 Shonuf slain
    .mob Shonuf
step
    .isOnQuest 30879
    .goto 379,70.96,51.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brewmaster Chani|r
    .complete 30879,1 --1/1 Defeat Brewmaster Chani
    .skipgossip
    .target Brewmaster Chani
    .mob Brewmaster Chani
step
    .isOnQuest 30880
    .goto 379,70.81,51.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lun-Chi|r
    .complete 30880,1 --1/1 Defeat Lun-Chi
    .skipgossip
    .target Lun-Chi
    .mob Lun-Chi
step
    .isOnQuest 30879
    .goto 379,70.3,51.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xuen|r
    .dailyturnin 30879 >>Turn in Round 1: Brewmaster Chani
    .target Xuen
step
    .isOnQuest 31517
    .goto 379,70.3,51.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xuen|r
    .dailyturnin 31517 >>Turn in Contending With Bullies
    .target Xuen
step
    .isOnQuest 30880
    .goto 379,70.41,51.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xuen|r
    .dailyturnin 30880 >>Turn in Round 1: The Streetfighter
    .target Xuen
step
    .goto 379,70.28,51.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xuen|r
    .daily 30881,30882 >>Accept Round 2: Clever Ashyo & Ken-Ken or Round 2: Kang Bramblestaff
    .target Xuen
step
    .isOnQuest 30881
    .goto 379,71.67,45.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Clever Ashyo|r and then defeat them.
    .complete 30881,2 --1/1 Defeat Ken-Ken
    .complete 30881,1 --1/1 Defeat Clever Ashyo
    .skipgossip
    .target Clever Ashyo
    .mob Clever Ashyo
    .mob Ken-Ken
step
    .isOnQuest 30882
    .goto 379,71.61,45.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kang Bramblestaff|r and then defeat them.
    .complete 30882,1 --1/1 Defeat Kang Bramblestaff
    .target Kang Bramblestaff
    .mob Kang Bramblestaff
step
    .isOnQuest 30881
    .goto 379,71.76,44.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xuen|r
    .dailyturnin 30881,30882 >>Turn in Round 2: Clever Ashyo & Ken-Ken or Round 2: Kang Bramblestaff
    .target Xuen
 step
    .goto 379,71.76,44.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xuen|r
    .target Xuen
    .daily 30883,30885 >>Accept Round 3: The Wrestler or Round 3: Master Boom Boom
step
    .isOnQuest 30883
    .goto 379,71.53,45.95,10,0
    .goto 379,66.74,46.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_The Wrestler|r and defeat him.
    .complete 30883,1 --1/1 Defeat The Wrestler
    .skipgossip
    .target The Wrestler
    .mob The Wrestler
step
    .isOnQuest 30885
    .goto 379,66.61,46.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Boom Boom|r and defeat him.
    .complete 30885,1 --1/1 Defeat Master Boom Boom
    .target Master Boom Boom
    .mob Master Boom Boom
step
    .isOnQuest 30883
    .goto 379,66.39,46.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xuen|r
    .dailyturnin 30883,30885 >>Turn in Round 3: The Wrestler or Round 3: Master Boom Boom
    .target Xuen
step
    .goto 379,66.39,46.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xuen|r
    .target Xuen
    .daily 30907,30902 >>Accept Round 4: The P.U.G. or Round 4: Master Windfur
step
    .isOnQuest 30907
    .goto 379,67.15,46.79,10,0
    .goto 379,68.66,45.71,10,0
    .goto 379,69.02,43.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Healiss|r and then defeat them.
    .complete 30907,3 --1/1 Defeat Tankiss
    .complete 30907,1 --1/1 Defeat Hackiss
    .complete 30907,2 --1/1 Defeat Healiss
    .skipgossip
    .target Healiss
    .mob Hackiss
    .mob Healiss
    .mob Tankiss
step
    .isOnQuest 30902
    .goto 379,68.81,43.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Windfur|r and then defeat them.
    .complete 30902,1 --1/1 Defeat Master Windfur
    .target Master Windfur
    .mob Master Windfur
step
    #label endaugustkunlai
    .isOnQuest 30907
    .goto 379,68.49,44.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xuen|r
    .dailyturnin 30907,30902 >>Turn in Round 4: The P.U.G. or Round 4: Master Windfur
    .target Xuen
--Townlong
step
    #label startaugusttownlong
    .areapoiexists 388,7734,7735,7736,7737
    #loop
    .goto 388,38.90,62.75,10,0
    .goto 388,39.33,62.22,10,0
    .goto 388,39.14,62.05,10,0
    .goto 388,39.40,61.98,10,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Adept Paosha|r, |cRXP_FRIENDLY_Ogo the Younger|r, |cRXP_FRIENDLY_Yak-Keeper Kyana|r, |cRXP_FRIENDLY_Sentinel Commander Qipan|r and |cRXP_FRIENDLY_Ogo the Elder|r
    .questcount <4,30955,30954,30953,30957,30956,30952,30959,30958  >>|cRXP_WARN_Get all the Daillies|r
    .target High Adept Paosha
    .target Ogo the Younger
    .target Yak-Keeper Kyana
    .target Sentinel Commander Qipan
    .target Ogo the Elder
step
    #hidewindow
    #completewith Pot of Fire
    #loop
    +1
    .goto 388,42.55,61.38,30,0
    .goto 388,43.2,62.23,30,0
    .goto 388,41.81,60.47,30,0
    .goto 388,41.98,57.45,30,0
    .goto 388,41.08,59,30,0
    .goto 388,39.81,57.03,30,0
    .goto 388,38.5,59.78,30,0
    .goto 388,40.04,60.15,30,0
    .goto 388,40.58,62.05,30,0
step
    #completewith 1
    .isOnQuest 30952
    >>Kill |cRXP_ENEMY_Sra'thik Warcaller|r and |cRXP_ENEMY_Sra'thik Swiftclaw.|r
    .complete 30952,1 --12/12 Sra'thik attacker slain
    .mob Sra'thik Warcaller
    .mob Sra'thik Swiftclaw
step
    #completewith 1
    .isOnQuest 30956
    >>Kill |cRXP_ENEMY_Sra'thik Warcaller|r and |cRXP_ENEMY_Sra'thik Swiftclaw.|r
    .complete 30956,1 --25/25 Sra'thik attacker slain
    .mob Sra'thik Warcaller
    .mob Sra'thik Swiftclaw
step
    #completewith 1
    .isOnQuest 30954
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Weapons|r
    .complete 30954,1 --10/10 Sra'thik Weapon
step
    #completewith 1
    .isOnQuest 30955
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Niuzao Food Supplies|r
    .complete 30955,1 --6/6 Gather Food for Niuzao
step
    #completewith 1
    .isOnQuest 30957
    >>Kill |cRXP_ENEMY_Sra'thik Kunchongs|r
    .complete 30957,1 --4/4 Sra'thik Kunchong slain
    .mob Sra'thik Kunchong
step
    #completewith 1
    .isOnQuest 30953
    >>Use |T135975:0|t[Yak's Milk Flask] on |cRXP_FRIENDLY_Wounded Niuzao Sentinels.|r
    .complete 30953,1 --8/8 Niuzao Sentinel healed
    .target Wounded Niuzao Sentinel
    .use 82381
step
    #completewith 1
    .isOnQuest 30958
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Bricks|r
    .complete 30958,1 --10/10 Loose Brick
step
    #label 1
    .isOnQuest 30959
    >>Use |T135975:0|t[Pot of Fire] on |cRXP_ENEMY_Sra'thik War Wagons|r
    .complete 30959,1 --3/3 Sra'thik War Wagon exploded
    .mob Sra'thik War Wagon
    .use 82346
step
    #completewith 2
    .isOnQuest 30952
    >>Kill |cRXP_ENEMY_Sra'thik Warcaller|r and |cRXP_ENEMY_Sra'thik Swiftclaw.|r
    .complete 30952,1 --12/12 Sra'thik attacker slain
    .mob Sra'thik Warcaller
    .mob Sra'thik Swiftclaw
step
    #completewith 2
    .isOnQuest 30956
    >>Kill |cRXP_ENEMY_Sra'thik Warcaller|r and |cRXP_ENEMY_Sra'thik Swiftclaw.|r
    .complete 30956,1 --25/25 Sra'thik attacker slain
    .mob Sra'thik Warcaller
    .mob Sra'thik Swiftclaw
step
    #completewith 2
    .isOnQuest 30954
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Weapons|r
    .complete 30954,1 --10/10 Sra'thik Weapon
step
    #completewith 2
    .isOnQuest 30955
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Niuzao Food Supplies|r
    .complete 30955,1 --6/6 Gather Food for Niuzao
step
    #completewith 2
    .isOnQuest 30957
    >>Kill |cRXP_ENEMY_Sra'thik Kunchongs|r
    .complete 30957,1 --4/4 Sra'thik Kunchong slain
    .mob Sra'thik Kunchong
step
    #completewith 2
    .isOnQuest 30953
    >>Use |T135975:0|t[Yak's Milk Flask] on |cRXP_FRIENDLY_Wounded Niuzao Sentinels.|r
    .complete 30953,1 --8/8 Niuzao Sentinel healed
    .target Wounded Niuzao Sentinel
    .use 82381
step
    #label 2
    .isOnQuest 30958
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Bricks|r
    .complete 30958,1 --10/10 Loose Brick
step
    #completewith 3
    .isOnQuest 30956
    >>Kill |cRXP_ENEMY_Sra'thik Warcaller|r and |cRXP_ENEMY_Sra'thik Swiftclaw.|r
    .complete 30956,1 --25/25 Sra'thik attacker slain
    .mob Sra'thik Warcaller
    .mob Sra'thik Swiftclaw
step
    #completewith 3
    .isOnQuest 30954
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Weapons|r
    .complete 30954,1 --10/10 Sra'thik Weapon
step
    #completewith 3
    .isOnQuest 30955
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Niuzao Food Supplies|r
    .complete 30955,1 --6/6 Gather Food for Niuzao
step
    #completewith 3
    .isOnQuest 30957
    >>Kill |cRXP_ENEMY_Sra'thik Kunchongs|r
    .complete 30957,1 --4/4 Sra'thik Kunchong slain
    .mob Sra'thik Kunchong
step
    #label 3
    .isOnQuest 30953
    >>Use |T135975:0|t[Yak's Milk Flask] on |cRXP_FRIENDLY_Wounded Niuzao Sentinels.|r
    .complete 30953,1 --8/8 Niuzao Sentinel healed
    .target Wounded Niuzao Sentinel
    .use 82381
step
    #completewith 4
    .isOnQuest 30956
    >>Kill |cRXP_ENEMY_Sra'thik Warcaller|r and |cRXP_ENEMY_Sra'thik Swiftclaw.|r
    .complete 30956,1 --25/25 Sra'thik attacker slain
    .mob Sra'thik Warcaller
    .mob Sra'thik Swiftclaw
step
    #completewith 4
    .isOnQuest 30954
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Weapons|r
    .complete 30954,1 --10/10 Sra'thik Weapon
step
    #completewith 4
    .isOnQuest 30955
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Niuzao Food Supplies|r
    .complete 30955,1 --6/6 Gather Food for Niuzao
step
    #label 4
    .isOnQuest 30957
    >>Kill |cRXP_ENEMY_Sra'thik Kunchongs|r
    .complete 30957,1 --4/4 Sra'thik Kunchong slain
    .mob Sra'thik Kunchong
step
    #completewith 5
    .isOnQuest 30956
    >>Kill |cRXP_ENEMY_Sra'thik Warcaller|r and |cRXP_ENEMY_Sra'thik Swiftclaw.|r
    .complete 30956,1 --25/25 Sra'thik attacker slain
    .mob Sra'thik Warcaller
    .mob Sra'thik Swiftclaw
step
    #completewith 5
    .isOnQuest 30954
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Weapons|r
    .complete 30954,1 --10/10 Sra'thik Weapon
step
    #label 5
    .isOnQuest 30955
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Niuzao Food Supplies|r
    .complete 30955,1 --6/6 Gather Food for Niuzao
step
    #completewith next
    .isOnQuest 30956
    >>Kill |cRXP_ENEMY_Sra'thik Warcaller|r and |cRXP_ENEMY_Sra'thik Swiftclaw.|r
    .complete 30956,1 --25/25 Sra'thik attacker slain
    .mob Sra'thik Warcaller
    .mob Sra'thik Swiftclaw
step
    .isOnQuest 30954
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Weapons|r
    .complete 30954,1 --10/10 Sra'thik Weapon
step
    #label Pot of Fire
    .isOnQuest 30956
    >>Kill |cRXP_ENEMY_Sra'thik Warcaller|r and |cRXP_ENEMY_Sra'thik Swiftclaw.|r
    .complete 30956,1 --25/25 Sra'thik attacker slain
    .mob Sra'thik Warcaller
    .mob Sra'thik Swiftclaw
step
    .isOnQuest 30953
    .goto 388,39.16,62.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yak-Keeper Kyana|r
    .dailyturnin 30953 >>Turn in Fallen Sentinels
    .target Yak-Keeper Kyana
step
    .isOnQuest 30958
    .goto 388,39.16,62.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yak-Keeper Kyana|r
    .dailyturnin 30958 >>Turn in In Battle's Shadow
    .target Yak-Keeper Kyana
step
    .isOnQuest 30955
    .goto 388,38.91,62.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Adept Paosha|r
    .dailyturnin 30955 >>Turn in Paying Tribute
    .target High Adept Paosha
step
    .isOnQuest 30954
    .goto 388,39.33,62.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogo the Younger|r
    .dailyturnin 30954 >>Turn in A Blade is a Blade
    .target Ogo the Younger
step
    .isOnQuest 30959
    .goto 388,39.33,62.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogo the Younger|r
    .dailyturnin 30959 >>Turn in The Big Guns
    .target Ogo the Younger
step
    .isOnQuest 30952
    .goto 388,39.2,62.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogo the Elder|r
    .dailyturnin 30952 >>Turn in The Unending Siege
    .target Ogo the Elder
step
    .isOnQuest 30956
    .goto 388,39.2,62.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogo the Elder|r
    .dailyturnin 30956 >>Turn in The Siege Swells
    .target Ogo the Elder
step
    #label endaugusttownlong
    .isOnQuest 30957
    .goto 388,39.41,61.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Commander Qipan|r
    .dailyturnin 30957 >>Turn in The Overwhelming Swarm
    .target Sentinel Commander Qipan
--Krasarang
step
    #label startaugustkrasa
    .areapoiexists 418,7734,7735,7736,7737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelonius,|r |cRXP_FRIENDLY_Kuo-Na Quillpaw|r and |cRXP_FRIENDLY_Yan Quillpaw|r
    .daily 30718 >>Accept Students of Chi-Ji
    .goto 418,31.35,63.44
    .target +Thelonius
    .daily 30716 >>Accept Chasing Hope
    .goto 418,31.14,63.56
    .target +Kuo-Na Quillpaw
    .daily 30717 >>Accept Gifts of the Great Crane
    .goto 418,31.52,63.75
    .target +Yan Quillpaw
step
    #hidewindow
    #completewith Gift of the Great Crane
    #loop
    .goto 418,30.61,66.15,40,0
    .goto 418,30.4,68.7,40,0
    .goto 418,30.12,71.67,40,0
    .goto 418,30.79,76.26,40,0
    .goto 418,32.65,76.13,40,0
    .goto 418,33.65,79.76,40,0
    .goto 418,35.98,78.81,40,0
    .goto 418,36.35,73.26,40,0
    .goto 418,33.87,69.19,40,0
    +1
step
    .isOnQuest 30717
    #completewith Spirit of the Crane found
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Feathers|r
    .complete 30717,1 --10/10 Gift of the Great Crane
step
    .isOnQuest 30718
    #completewith Spirit of the Crane found
    >>Kill |cRXP_ENEMY_Student of Chi-Ji|r
    .complete 30718,1 --10/10 Student of Chi-Ji dueled
    .mob Student of Chi-Ji
step
    .isOnQuest 30716
    #label Spirit of the Crane found
    >>There are ghost cranes roaming this area; run into them.
    .complete 30716,1 --3/3 Spirit of the Crane found
step
    .isOnQuest 30717
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Feathers|r
    .complete 30717,1 --10/10 Gift of the Great Crane
step
    .isOnQuest 30718
    >>Kill |cRXP_ENEMY_Student of Chi-Ji|r
    .complete 30718,1 --10/10 Student of Chi-Ji dueled
    .mob Student of Chi-Ji
step
    .isOnQuest 30717
    #label Gift of the Great Crane
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Feathers|r
    .complete 30717,1 --10/10 Gift of the Great Crane
step
    .isOnQuest 30718,30716,30717
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelonius,|r |cRXP_FRIENDLY_Kuo-Na Quillpaw|r and |cRXP_FRIENDLY_Yan Quillpaw|r
    .dailyturnin 30718 >>Turn in Students of Chi-Ji
    .target +Thelonius
    .dailyturnin 30716 >>Turn in Chasing Hope
    .target +Kuo-Na Quillpaw
    .dailyturnin 30717 >>Turn in Gifts of the Great Crane
    .target +Yan Quillpaw
step
    .areapoiexists 418,7734,7735,7736,7737
    .goto 418,31.34,63.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelonius|r
    .daily 30725,30725,30728,30729,30730,30731,30732,30733,30734,30735,30736,30737,30738,30739
    -- .accept 30725 >>Accept Ellia Ravenmane
    -- .accept 30728 >>Accept Fat Long-Fat
    -- .accept 30729 >>Accept Julia Bates
    -- .accept 30730 >>Accept Dextrous Izissha
    -- .accept 30731 >>Accept Kuo-Na Quillpaw
    -- .accept 30732 >>Accept Ellia Ravenmane: Revenge
    -- .accept 30733 >>Accept Tukka-Tuk
    -- .accept 30734 >>Accept Huck Wheelbarrow
    -- .accept 30735 >>Accept Mindel Sunspeaker
    -- .accept 30736 >>Accept Yan Quillpaw
    -- .accept 30737 >>Accept Fat Long-Fat: Rematch
    -- .accept 30738 >>Accept Thelonius
    -- .accept 30739 >>Accept Ellia Ravenmane: Redemption
    .target Thelonius
step
    .isOnQuest 30725
    .goto 418,31.8,71.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ellia Ravenmane|r and kill |cRXP_ENEMY_Ellia Ravenmane|r
    .complete 30725,1 --1/1 Ellia Ravenmane defeated
    .skipgossip
    .target Ellia Ravenmane
    .mob Ellia Ravenmane
step
    .isOnQuest 30728
    .goto 418,32.0,70.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fat Long-Fat|r and kill |cRXP_ENEMY_Fat Long-Fat|r
    .complete 30728,1 --1/1 Fat Long-Fat defeated
    .skipgossip
    .target Fat Long-Fat
    .mob Fat Long-Fat
step
    .isOnQuest 30729
    .goto 418,28.8,75.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Julia Bates|r and kill |cRXP_ENEMY_Julia Bates|r
    .complete 30729,1 --1/1 Julia Bates defeated
    .skipgossip
    .target Julia Bates
    .mob Julia Bates
step
    .isOnQuest 30730
    .goto 418,31.6,80.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dextrous Izissha|r and kill |cRXP_ENEMY_Dextrous Izissha|r
    .complete 30730,1 --1/1 Dextrous Izissha defeated
    .skipgossip
    .target Dextrous Izissha
    .mob Dextrous Izissha
step
    .isOnQuest 30731
    .goto 418,36.6,74.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kuo-Na Quillpaw|r and kill |cRXP_ENEMY_Kuo-Na Quillpaw|r
    .complete 30731,1 --1/1 Kuo-Na Quillpaw defeated
    .skipgossip
    .target Kuo-Na Quillpaw
    .mob Kuo-Na Quillpaw
step
    .isOnQuest 30732
    .goto 418,34.6,83.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ellia Ravenmane|r and kill |cRXP_ENEMY_Ellia Ravenmane|r
    .complete 30732,1 --1/1 Ellia Ravenmane defeated
    .skipgossip
    .target Ellia Ravenmane
    .mob Ellia Ravenmane
step
    .isOnQuest 30733
    .goto 418,34.0,75.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tukka-Tuk|r and kill |cRXP_ENEMY_Tukka-Tuk|r
    .complete 30733,1 --1/1 Tukka-Tuk defeated
    .skipgossip
    .target Tukka-Tuk
    .mob Tukka-Tuk
step
    .isOnQuest 30734
    .goto 418,27.8,70.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Huck Wheelbarrow|r and kill |cRXP_ENEMY_Huck Wheelbarrow|r
    .complete 30734,1 --1/1 Huck Wheelbarrow defeated
    .skipgossip
    .target Huck Wheelbarrow
    .mob Huck Wheelbarrow
step
    .isOnQuest 30735
    .goto 418,32.0,70.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mindel Sunspeaker|r and kill |cRXP_ENEMY_Mindel Sunspeaker|r
    .complete 30735,1 --1/1 Mindel Sunspeaker defeated
    .skipgossip
    .target Mindel Sunspeaker
    .mob Mindel Sunspeaker
step
    .isOnQuest 30736
    .goto 418,36.6,76.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yan Quillpaw|r and kill |cRXP_ENEMY_Yan Quillpaw|r
    .complete 30736,1 --1/1 Yan Quillpaw defeated
    .skipgossip
    .target Yan Quillpaw
    .mob Yan Quillpaw
step
    .isOnQuest 30737
    .goto 418,34.8,82.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fat Long-Fat|r and kill |cRXP_ENEMY_Fat Long-Fat|r
    .complete 30737,1 --1/1 Fat Long-Fat defeated
    .skipgossip
    .target Fat Long-Fat
    .mob Fat Long-Fat
step
    .isOnQuest 30738
    .goto 418,28.8,72.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelonius|r and kill |cRXP_ENEMY_Thelonius|r
    .complete 30738,1 --1/1 Thelonius defeated
    .skipgossip
    .target Thelonius
    .mob Thelonius
step
    .isOnQuest 30739
    .goto 418,36.2,75.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ellia Ravenmane|r and kill |cRXP_ENEMY_Ellia Ravenmane|r
    .complete 30739,1 --1/1 Ellia Ravenmane defeated
    .skipgossip
    .target Ellia Ravenmane
    .mob Ellia Ravenmane
step
    .isOnQuest 30725
    .goto 418,31.34,63.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelonius|r
    .dailyturnin 30725 >>Turn in Ellia Ravenmane
    .target Thelonius
step
    .isOnQuest 30728
    .goto 418,31.34,63.44
    .target Thelonius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelonius|r
    .dailyturnin 30728 >>Turn in Fat Long-Fat
step
    .isOnQuest 30729
    .goto 418,31.34,63.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelonius|r
    .dailyturnin 30729 >>Turn in Julia Bates
    .target Thelonius
step
    .isOnQuest 30730
    .goto 418,31.34,63.44
    .target Thelonius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelonius|r
    .dailyturnin 30730 >>Turn in Dextrous Izissha
step
    .isOnQuest 30731
    .goto 418,31.34,63.44
    .target Thelonius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelonius|r
    .dailyturnin 30731 >>Turn in Kuo-Na Quillpaw
step
    .isOnQuest 30732
    .goto 418,31.34,63.44
    .target Thelonius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelonius|r
    .dailyturnin 30732 >>Turn in Ellia Ravenmane: Revenge
step
    .isOnQuest 30733
    .goto 418,31.34,63.44
    .target Thelonius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelonius|r
    .dailyturnin 30733 >>Turn in Tukka-Tuk
step
    .isOnQuest 30734
    .goto 418,31.34,63.44
    .target Thelonius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelonius|r
    .dailyturnin 30734 >>Turn in Huck Wheelbarrow
step
    .isOnQuest 30735
    .goto 418,31.34,63.44
    .target Thelonius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelonius|r
    .dailyturnin 30735 >>Turn in Mindel Sunspeaker
step
    .isOnQuest 30736
    .goto 418,31.34,63.44
    .target Thelonius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelonius|r
    .dailyturnin 30736 >>Turn in Yan Quillpaw
step
    .isOnQuest 30737
    .goto 418,31.34,63.44
    .target Thelonius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelonius|r
    .dailyturnin 30737 >>Turn in Fat Long-Fat: Rematch
step
    .isOnQuest 30738
    .goto 418,31.34,63.44
    .target Thelonius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelonius|r
    .dailyturnin 30738 >>Turn in Thelonius
step
    #label endaugustkrasa
    .isOnQuest 30739
    .goto 418,31.34,63.44
    .target Thelonius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelonius|r
    .dailyturnin 30739 >>Turn in Ellia Ravenmane: Redemption
]])

--Domination Point Dailies Horde
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(10-70)|r Pandaria Remix 
#name ad) Domination Point Dailies
#displayname |cFF1EFF004|r - Domination Point
#next ae) Landfall Daillies Alliance

step
    #loop
    .goto 418,10.07,53.86,15,0
    .goto 418,10.51,52.99,20,0
    .goto 418,10.33,55.68,15,0
    .goto 418,12.74,56.74,15,0
    .goto 418,12.91,56.13,15,0
    .goto 418,13.79,55.78,15,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Gro'tash|r, |cRXP_FRIENDLY_Brolic|r, |cRXP_FRIENDLY_Shokia|r, |cRXP_FRIENDLY_Rivett Clutchpop|r, |cRXP_FRIENDLY_Bounty Board|r, |cRXP_FRIENDLY_Boss-Lady Trixel|r, |cRXP_FRIENDLY_Duke|r
    .questcount <3,32235,32126,32123,32214,32199,32222,32136,32223,32221,32318 >>|cRXP_WARN_Accept all the Domination Point Dailies|r
    .target Master Snowdrift
    .target Ling of the Six Pools
    .target Rivett Clutchpop
    .target Bounty Board
    .target Boss-Lady Trixel
    .target Shokia
    .target Brolic
    .target Duke
    .target Blood Guard Gro'tash
step
    .xp >69,1
    .abandon 32214 >>Abandon Bildgewater Infiltrators
step
    .isOnQuest 32235
    >>Fly into the air. Use the |T135815:0|t[The Bilgewater Molotov] while flying on the |cRXP_ENEMY_Skyfire Gyrocopter X2|r
    .goto 418,10.87,56.80
    .complete 32235,1 --6/6 Skyfire Gyrocopter X2 slain
    .mob Skyfire Gyrocopter X2
step
    #completewith AllianceTwoLegs
    #hidewindow
    #loop
    .goto 418,8.22,59.15,35,0
    .goto 418,8.75,69.49,35,0
    .goto 418,13.94,68.86,35,0
    +1
step
    .isOnQuest 32123
    #completewith next
    >>Kill |cRXP_ENEMY_Alliance|r
    .complete 32123,1 --10/10 Alliance slain
    .mob Alliance
step
    .isOnQuest 32126
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Alliance Supply Drop|r
    .complete 32126,1 --8/8 Alliance Supply Drops destroyed
step
    .isOnQuest 32123
    #label AllianceTwoLegs
    >>Kill |cRXP_ENEMY_Alliance|r
    .complete 32123,1 --10/10 Alliance slain
    .mob Alliance
step
    .isOnQuest 32123
    .goto 418,10.33,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shokia|r
    .dailyturnin 32123 >>Turn in Death on Two Legs
    .target Shokia
step
    .isOnQuest 32235
    .goto 418,10.08,53.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Gro'tash|r
    .dailyturnin 32235 >>Turn in Flash! Aaaaaahhhh!
    .target Blood Guard Gro'tash
step
    .isOnQuest 32126
    .goto 418,10.47,53.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brolic|r
    .dailyturnin 32126 >>Turn in Tear It Up
    .target Brolic
step
    .isOnQuest 32199
    .goto 418,13.79,55.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boss-Lady Trixel|r
    .daily 32136,32138 >>Accept Work Order
    .target Boss-Lady Trixel
step
    .isOnQuest 32221
    #completewith next
    >>Kill |cRXP_ENEMY_Shieldwall forces|r
    .complete 32221,1 --10/10 Shieldwall forces slain
    .mob Shieldwall forces
step
    .isOnQuest 32199
    #label PollutedViseclawMeatA
    .goto 418,18.01,55.41
    >>Kill |cRXP_ENEMY_Polluted Visceclaws|r and |cRXP_ENEMY_Polluted Visceclaw Scuttlers|r. Loot them for the |T645112:0|t[Polluted Visceclaw Meat].
    .complete 32199,1,3 --3/5 Polluted Viseclaw Meat
    .mob Polluted Visceclaw
    .mob Polluted Visceclaw Scuttler
step
    .isOnQuest 32199
    #completewith next
    >>Kill |cRXP_ENEMY_Polluted Visceclaws|r and |cRXP_ENEMY_Polluted Visceclaw Scuttlers|r. Loot them for the |T645112:0|t[Polluted Visceclaw Meat].
    .complete 32199,1 --5/5 Polluted Viseclaw Meat
    .mob Polluted Visceclaw
    .mob Polluted Visceclaw Scuttler
step
    .isOnQuest 32222
    .goto 418,21.68,51.16
    >>Kill |cRXP_ENEMY_Chief Engineer Cogwrench|r
    .complete 32222,1 --1/1 Chief Engineer Cogwrench slain
    .mob Chief Engineer Cogwrench
step
    .isOnQuest 32221
    #completewith WorkOrderFuel
    >>Kill |cRXP_ENEMY_Shieldwall forces|r
    .complete 32221,1 --10/10 Shieldwall forces slain
    .mob Shieldwall forces
step
    .isOnQuest 32214
    #completewith WorkOrderFuel
    >>Kill the |cRXP_ENEMY_SI:7 Saboteurs|r
    *Use the |T644269:0|t["New" and "Improved" Infrared Heat Focals]
    .complete 32214,1 --10/10 SI:/ Saboteur slain
    .use 92475
    .mob SI:7 Saboteur
step
    .isOnQuest 32199
    #completewith WorkOrderFuel
    >>Kill |cRXP_ENEMY_Polluted Visceclaws|r and |cRXP_ENEMY_Polluted Visceclaw Scuttlers|r. Loot them for the |T645112:0|t[Polluted Visceclaw Meat].
    .complete 32199,1 --5/5 Polluted Viseclaw Meat
    .mob Polluted Visceclaw
    .mob Polluted Visceclaw Scuttler
step
    #label WorkOrderFuel
    .isOnQuest 32136
    .goto 418,25.54,60.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grizzle Gearslip|r
    .turnin 32136 >>Turn in Work Order: Fuel
    .target Grizzle Gearslip
step
    .isOnQuest 32221
    #completewith WorkOrderLumber
    >>Kill |cRXP_ENEMY_Shieldwall forces|r
    .complete 32221,1 --10/10 Shieldwall forces slain
    .mob Shieldwall forces
step
    .isOnQuest 32214
    #completewith WorkOrderLumber
    >>Kill the |cRXP_ENEMY_SI:7 Saboteurs|r
    *Use the |T644269:0|t["New" and "Improved" Infrared Heat Focals]
    .complete 32214,1 --10/10 SI:/ Saboteur slain
    .use 92475
    .mob SI:7 Saboteur
step
    .isOnQuest 32199
    #completewith WorkOrderLumber
    >>Kill |cRXP_ENEMY_Polluted Visceclaws|r and |cRXP_ENEMY_Polluted Visceclaw Scuttlers|r. Loot them for the |T645112:0|t[Polluted Visceclaw Meat].
    .complete 32199,1 --5/5 Polluted Viseclaw Meat
    .mob Polluted Visceclaw
    .mob Polluted Visceclaw Scuttler
step
    #label WorkOrderLumber
    .isOnQuest 32138
    .goto 418,20.48,60.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zino "The Shredder" Quickchop|r
    .turnin 32138 >>Turn in Work Order: Lumber
    .target Zino "The Shredder" Quickchop
step
    .isQuestTurnedIn 32138
    .goto 418,20.48,60.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zino "The Shredder" Quickchop|r
    .daily 32139 >>Accept Stacked!
    .target Zino "The Shredder" Quickchop
step
    .isQuestTurnedIn 32138
    .goto 418,20.61,58.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bixy Buzzsaw|r
    .daily 32238 >>Accept Universal Remote-Explode
    .target Bixy Buzzsaw
step
    #completewith ShieldwallMechaPounderExploded
    #hidewindow
    #loop
    .goto 418,18.66,62.38,25,0
    .goto 418,21.46,63.05,25,0
    .goto 418,20.57,58.35,35,0
    +1
step
    .isOnQuest 32221
    #completewith ShieldwallMechaPounderExploded
    >>Kill |cRXP_ENEMY_Shieldwall forces|r
    .complete 32221,1 --10/10 Shieldwall forces slain
    .mob Shieldwall Engineer
    .mob SI:7 Saboteur
    .mob 7th Legion Paratrooper
step
    .isOnQuest 32214
    #completewith ShieldwallMechaPounderExploded
    >>Kill the |cRXP_ENEMY_SI:7 Saboteurs|r
    *Use the |T644269:0|t["New" and "Improved" Infrared Heat Focals]
    .complete 32214,1 --10/10 SI:/ Saboteur slain
    .use 92475
    .mob SI:7 Saboteur
step
    .isOnQuest 32238
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_ENEMY_Shieldwall Mecha Pounder|r to weaken them with the |T133015:0|t[Universal Remote]. Kill the |cRXP_ENEMY_Shieldwall Mecha Pounder|r
    .complete 32238,1 --9/9 Shieldwall Mecha Pounder exploded
    .use 91902
    .mob Shieldwall Mecha Pounder
step
    .isOnQuest 32139
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Domination Point Lumber|r
    .complete 32139,1 --9/9 Domination Point Lumber collected
step
    .isOnQuest 32238
    #label ShieldwallMechaPounderExploded
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_ENEMY_Shieldwall Mecha Pounder|r to weaken them with the |T133015:0|t[Universal Remote]. Kill the |cRXP_ENEMY_Shieldwall Mecha Pounder|r
    .complete 32238,1 --9/9 Shieldwall Mecha Pounder exploded
    .use 91902
    .mob Shieldwall Mecha Pounder
step
    .isOnQuest 32238
    .goto 418,20.61,58.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bixy Buzzsaw|r
    .dailyturnin 32238 >>Turn in Universal Remote-Explode
    .target Bixy Buzzsaw
step
    .isOnQuest 32139
    .goto 418,20.54,60.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zino "The Shredder" Quickchop|r
    .dailyturnin 32139 >>Turn in Stacked!
    .target Zino "The Shredder" Quickchop
step
    .isOnQuest 32221
    #completewith LieutenantEthanJacobsonSlain
    >>Kill |cRXP_ENEMY_Shieldwall forces|r
    .complete 32221,1 --10/10 Shieldwall forces slain
    .mob Shieldwall Engineer
    .mob SI:7 Saboteur
    .mob 7th Legion Paratrooper
step
    .isOnQuest 32214
    #completewith LieutenantEthanJacobsonSlain
    >>Kill the |cRXP_ENEMY_SI:7 Saboteurs|r
    *Use the |T644269:0|t["New" and "Improved" Infrared Heat Focals]
    .complete 32214,1 --10/10 SI:/ Saboteur slain
    .use 92475
    .mob SI:7 Saboteur
step
    .isOnQuest 32199
    #completewith LieutenantEthanJacobsonSlain
    >>Kill |cRXP_ENEMY_Polluted Visceclaws|r and |cRXP_ENEMY_Polluted Visceclaw Scuttlers|r. Loot them for |T645112:0|t[Polluted Visceclaw Meat].
    .complete 32199,1 --5/5 Polluted Viseclaw Meat
    .mob Polluted Visceclaw
    .mob Polluted Visceclaw Scuttler
step
    .isOnQuest 32223
    #label LieutenantEthanJacobsonSlain
    .goto 418,19.05,70.96
    .complete 32223,1 --1/1 Lieutenant Ethan Jacobson slain
    .mob Lieutenant Ethan Jacobson
step
    #completewith ShieldwallForcesSlain
    #hidewindow
    #loop
    .goto 418,16.10,71.22,35,0
    .goto 418,21.56,67.09,35,0
    .goto 418,24.58,56.15,35,0
    .goto 418,19.44,58.99,35,0
    +1
step
    .isOnQuest 32221
    #completewith next
    >>Kill |cRXP_ENEMY_Shieldwall forces|r
    .complete 32221,1 --10/10 Shieldwall forces slain
    .mob Shieldwall Engineer
    .mob SI:7 Saboteur
    .mob 7th Legion Paratrooper
step
    .isOnQuest 32199
    >>Kill |cRXP_ENEMY_Polluted Visceclaws|r and |cRXP_ENEMY_Polluted Visceclaw Scuttlers|r. Loot them for |T645112:0|t[Polluted Visceclaw Meat].
    .complete 32199,1 --5/5 Polluted Viseclaw Meat
    .mob Polluted Visceclaw
    .mob Polluted Visceclaw Scuttler
step
    .isOnQuest 32221
    #label ShieldwallForcesSlain
    >>Kill |cRXP_ENEMY_Shieldwall forces|r
    .complete 32221,1 --10/10 Shieldwall forces slain
    .mob Shieldwall Engineer
    .mob SI:7 Saboteur
    .mob 7th Legion Paratrooper
step
    .isOnQuest 32214
    #completewith next
    >>Kill the |cRXP_ENEMY_SI:7 Saboteurs|r
    *Use the |T644269:0|t["New" and "Improved" Infrared Heat Focals]
    .complete 32214,1 --10/10 SI:/ Saboteur slain
    .use 92475
    .mob SI:7 Saboteur
step
    .isOnQuest 32199
    #loop
    .goto 418,28.07,58.22,22,0
    .goto 418,21.86,63.93,35,0
    .goto 418,16.16,58.46,35,0
    .goto 418,19.49,53.54,35,0
    >>Kill |cRXP_ENEMY_Polluted Visceclaws|r and |cRXP_ENEMY_Polluted Visceclaw Scuttlers|r. Loot them for |T645112:0|t[Polluted Visceclaw Meat].
    .complete 32199,1 --5/5 Polluted Viseclaw Meat
    .mob Polluted Visceclaw
    .mob Polluted Visceclaw Scuttler
step
    .isOnQuest 32199
    .goto 418,26.06,58.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sezik Steampot|r
    .dailyturnin 32199 >>Turn in Krasarang Steampot
    .target Sezik Steampot
step
    .isOnQuest 32214
    #loop
    .goto 418,21.88,53.96,22,0
    .goto 418,23.58,56.29,25,0
    .goto 418,26.40,62.04,25,0
    .goto 418,19.65,61.74,40,0
    >>Kill the |cRXP_ENEMY_SI:7 Saboteurs|r |cRXP_WARN_mostly near the pipes and valves|r
    *Use the |T644269:0|t["New" and "Improved" Infrared Heat Focals] which will allow you to see them from 10 yards :)
    .complete 32214,1 --10/10 SI:/ Saboteur slain
    .use 92475
    .mob SI:7 Saboteur
step
    .isOnQuest 32221
    .goto 418,12.91,56.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
    .dailyturnin 32221 >>Turn in Storming the Beach
    .target Rivett Clutchpop
step
    .isOnQuest 32214
    .goto 418,12.91,56.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
    .dailyturnin 32214 >>Turn in Bilgewater Infiltrators
    .target Rivett Clutchpop
step
    .isOnQuest 32222
    .goto 418,10.07,53.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Gro'tash|r
    .turnin 32222 >>Turn in WANTED: Chief Engineer Cogwrench
    .target Blood Guard Gro'tash
step
    .isOnQuest 32223
    .goto 418,10.06,53.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Gro'tash|r
    .dailyturnin 32223 >>Turn in WANTED: Lieutenant Ethan Jacobson
    .target Blood Guard Gro'tash
--step
--    .xp >69,1
--    .isQuestTurnedIn 32449
--    .goto 418,10.07,53.87
--    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Gro'tash|r
--    .target Blood Guard Gro'tash
--    .accept 32449 >>Accept The Ruins of Ogudei
step
    .isQuestTurnedIn 32235
    .isQuestTurnedIn 32126
    .isQuestTurnedIn 32123
    .goto 418,10.08,53.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Gro'tash|r
    .accept 32128 >>Accept Another One Bites the Dust
    .target Blood Guard Gro'tash
step
    .isQuestTurnedIn 32235
    .isQuestTurnedIn 32126
    .isQuestTurnedIn 32123
    .goto 418,10.47,53.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brolic|r
    .accept 32127 >>Accept All Dead, All Dead
    .target Brolic
step
    .isOnQuest 32127
    .goto 418,12.80,75.80
    >>Kill |cRXP_ENEMY_Captain Brent the Black|r
    .complete 32127,1 --1/1 Captain Brent the Black slain
    .mob Captain Brent the Black
step
    .isOnQuest 32128
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Powder|r
    .goto 418,11.56,75.15,10,0
    .goto 418,12.33,75.59
    .complete 32128,2 --1/1 The Defiant ammunition destroyed
step
    .isOnQuest 32127
    .goto 418,15.31,76.35
    >>Kill |cRXP_ENEMY_Captain Mulkey|r
    .complete 32127,2 --1/1 Captain Mulkey slain
    .mob Captain Mulkey
step
    .isOnQuest 32128
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Powder|r
    .goto 418,14.09,77.07,10,0
    .goto 418,15.09,76.61
    .complete 32128,1 --1/1 Valor's Edge ammunition destroyed
step
    .isOnQuest 32128
    .goto 418,10.08,53.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Gro'tash|r
    .dailyturnin 32128 >>Turn in Another One Bites the Dust
    .target Blood Guard Gro'tash
step
    .isOnQuest 32127
    .goto 418,10.47,53.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brolic|r
    .dailyturnin 32127 >>Turn in All Dead, All Dead
    .target Brolic

]])

--Landfall Daillies Alliance
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(10-70)|r Pandaria Remix 
#name ae) Landfall Daillies Alliance
#displayname |cFF1EFF005|r - Landfall
#next af) Shado-Pan Daillies

--Ruins of Ogudei
-- step
--     .goto 418,89.70,33.09
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Troteman|r
--     .accept 32116 >>Accept Priorities, People!
--     .target Marshal Troteman
step
    #loop
    #label startlandfall1
    .goto 418,89.70,33.09,10,0
    .goto 418,89.79,32.43,10,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Troteman|r and |cRXP_FRIENDLY_Amber Kearnen.|r
    .questcount <1,32116,32451,32452 >>|cRXP_WARN_Get the Landfall Starting Daily|r
step
    .isOnQuest 32116
    .goto 419,30.20,27.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hilda Hornswaggle|r
    .dailyturnin 32116 >>Turn in Priorities, People!
    .target Hilda Hornswaggle
step
    .isQuestTurnedIn 32116
    .goto 419,30.20,27.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hilda Hornswaggle|r
    .target Hilda Hornswaggle
    .daily 32347 >>Accept Eviction Notice
    .daily 32346 >>Accept Oi Ain't Afraid o' No Ghosts!
    .daily 32122 >>Accept Ogudei's Lieutenants
    .daily 32121 >>Accept The Spirit Trap
    .daily 32115,32119 >>Accept Shackles of the Past or It Is A Mystery
step
    .isOnQuest 32347
    .goto 419,39.81,16.62,15,0
    .goto 419,57.57,37.52,20 >> Enter the Mine
step
    .isOnQuest 32346,32121
    #completewith Reliquary Area
    >>Kill |cRXP_ENEMY_Spiritbound Mogu's|r and |cRXP_ENEMY_Spirit Traps.|r
    .complete 32346,1 --12/12 Spiritbound Mogu slain
    .complete 32121,1 --3/3 Spirit Trap destroyed
    .mob Spiritbound Mogu
    .mob Spiritbound Arcanist
    .mob Spiritbound Brutalizer
    .mob Spirit Trap
step
    .isOnQuest 32115
    #completewith Reliquary Area
    >>Kill |cRXP_ENEMY_Troubled Slave Spirits|r to free them.
    .complete 32115,1 --14/14 Troubled Slave Spirits released
    .mob Troubled Slave Spirit
step
    .isOnQuest 32119
    .goto 421,74.86,14.23
    >>|cRXP_WARN_Follow the Arrow|r
    .complete 32119,1 --1/1 Anomaly dispersed
step
    .isOnQuest 32122
    #completewith next
    .goto 421,74.86,14.23,20,0
    .goto 421,95.99,47.12,10,0
    .goto 420,78.86,52.69,10,0
    .goto 420,76.78,63.49,10  >> Enter the Boss Domain
step
    .isOnQuest 32122
    .goto 420,68.66,78.64
    >>Kill |cRXP_ENEMY_Gen-li, Twister of Words|r and |cRXP_ENEMY_Meng-do, Strength of Mountains|r
    .complete 32122,1 --1/1 Gen-li, Twister of Words slain
    .complete 32122,2 --1/1 Meng-do, Strength of Mountains slain
    .mob Meng-do, Strength of Mountains
    .mob Gen-li, Twister of Words
step
    .isOnQuest 32122
    .goto 420,76.78,63.49,10,0
    .goto 420,78.86,52.69,10,0
    .goto 421,95.99,47.12,10 >> Leave the Boss Domain
step
    .isOnQuest 32347
    #completewith next
    #label Reliquary Area
    .goto 421,80.8,83.47
    .goto 421,58.81,84.44
    .goto 421,68.68,45.48,10 >> Enter the Reliquary Area
step
    .isOnQuest 32347
    #loop
    .goto 421,80.56,52.81,20,0
    .goto 421,51.78,48.62,20,0
    .goto 421,33.68,37.72,20,0
    .goto 421,42.83,74.62,20,0
    >>Kill |cRXP_ENEMY_Reliquary Blood Knights|r |cRXP_ENEMY_Knights|r and |cRXP_ENEMY_Scouts.|r
    .complete 32347,1 --10/10 Reliquary slain
    .mob Reliquary Blood Knight
    .mob Reliquary Scout
    .mob Reliquary Mage
step
    .isOnQuest 32347
    #completewith next
    .goto 421,80.13,44.45,20,0
    .goto 421,75.28,23.51,20,0
    .goto 421,68.68,45.48,10 >> Leave the Reliquary Area
step
    .isOnQuest 32346,32121
    #hidewindow
    #completewith Spirit Trap destroyed
    #loop
    .goto 421,40.73,29.01,20,0
    .goto 420,48.61,15.97,20,0
    .goto 421,59.56,1.41,20,0
    .goto 420,73.16,16.77,20,0
    .goto 421,90,48.12,20,0
    .goto 421,86.81,78.17,20,0
    .goto 421,70.78,86.37,20,0
    .goto 421,57.26,91.21,20,0
    +1
step
    .isOnQuest 32346,32121
    #completewith next
    >>Kill |cRXP_ENEMY_Spiritbound Mogu's|r and |cRXP_ENEMY_Spirit Traps.|r
    .complete 32346,1 --12/12 Spiritbound Mogu slain
    .complete 32121,1 --3/3 Spirit Trap destroyed
    .mob Spiritbound Mogu
    .mob Spiritbound Arcanist
    .mob Spiritbound Brutalizer
    .mob Spirit Trap
step
    .isOnQuest 32115
    >>Kill |cRXP_ENEMY_Troubled Slave Spirits|r to free them.
    .complete 32115,1 --14/14 Troubled Slave Spirits released
    .mob Troubled Slave Spirit
step
    .isOnQuest 32346,32121
    #label Spirit Trap destroyed
    >>Kill |cRXP_ENEMY_Spiritbound Mogu's|r and |cRXP_ENEMY_Spirit Traps.|r
    .complete 32346,1 --12/12 Spiritbound Mogu slain
    .complete 32121,1 --3/3 Spirit Trap destroyed
    .mob Spiritbound Mogu
    .mob Spiritbound Arcanist
    .mob Spiritbound Brutalizer
    .mob Spirit Trap
step
    #completewith next
    .goto 421,63.56,37.09,15,0
    .goto 421,61.18,24.34,15,0
    .goto 419,63.72,46.52,15,0
    .goto 419,56.43,29.72,15,0
    .goto 419,36.07,17.57,20 >> Go back to the entrance of the mine.
step
    .isQuestTurnedIn 32116
    .goto 419,30.07,27.46
    #label endlandfall1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hilda Hornswaggle|r
    .dailyturnin 32115 >>Turn in Shackles of the Past
    .dailyturnin 32119,32115 >>Turn in It Is A Mystery or Shackles of the Past
    .dailyturnin 32121 >>Turn in The Spirit Trap
    .dailyturnin 32122 >>Turn in Ogudei's Lieutenants
    .dailyturnin 32346 >>Turn in Oi Ain't Afraid o' No Ghosts!
    .dailyturnin 32347 >>Turn in Eviction Notice
    .target Hilda Hornswaggle
--Domination Point
-- step
--     .goto 418,89.82,32.41
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amber Kearnen|r
--     .accept 32451 >>Accept Send A Message
--     .target Amber Kearnen
step
    .isOnQuest 32451
    #label startlandfallfinal
    .goto 418,16.46,79.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky Admiral Rogers|r
    .dailyturnin 32451 >>Turn in Send A Message
    .target +Sky Admiral Rogers
step
    .isQuestTurnedIn 32451
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky Admiral Rogers|r
    .daily 32142 >>Accept We Will Rock You
    .daily 32146 >>Accept Hammer to Fall
    .goto 418,16.48,79.2
    .target +Sky Admiral Rogers
step
    .isQuestTurnedIn 32451
    #loop
    .goto 418,16.45,79.27,20,0
    .goto 418,16.74,79.69,20,0
    .goto 418,16.26,79.21,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkmaster Overspark|r
    .daily 32143 >>Accept A Kind of Magic
    .target +Tinkmaster Overspark
step
    .isQuestTurnedIn 32451
    .goto 418,16.66,78.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishka|r
    .daily 32144 >>Accept Under Pressure
    .target Mishka
step
    .isOnQuest 32142,32146
    #completewith Scout-o-Meter Mk III
    >>Kill |cRXP_ENEMY_Domination Orcs|r and |cRXP_ENEMY_Heavy Mook|r
    .complete 32142,1 --10/10 Domination Orc slain
    .complete 32146,1 --5/5 Heavy Mook slain
    .mob Domination Orc
    .mob Dominance Grunt
    .mob Heavy Mook
    .mob Bloodhilt Honor Guard
    .mob Dominance Raider
step
    .isOnQuest 32144
    #completewith Scout-o-Meter Mk III
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Crates|r
    .complete 32144,1 --8/8 Horde Supply Crates Destroyed
step
    .isOnQuest 32143
    .goto 418,11.66,67.84
    >>Interact with |cRXP_FRIENDLY_Scout-o-Meter Mk I|r
    .complete 32143,1 --1/1 Eliminate the Beachhead Demolishers
    .target Scout-o-Meter Mk I
step
    .isOnQuest 32143
    .goto 418,10.89,60.91
    >>Interact with |cRXP_FRIENDLY_Scout-o-Meter Mk II|r
    .complete 32143,2 --1/1 Eliminate the Horde Wolves
    .target Scout-o-Meter Mk II
step
    .isOnQuest 32143
    .goto 418,12.64,56.60
    >>Interact with |cRXP_FRIENDLY_Scout-o-Meter Mk III|r
    .complete 32143,3 --1/1 Destroy the Horde Bomb Stockpile
    .target Scout-o-Meter Mk III
step
    .isOnQuest 32143
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the Quest PoP-UP to turn in the quest
    .turnin 32143 >>Turn in A Kind of Magic
step
    .isQuestTurnedIn 32145
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the Quest PoP-UP to accept the new quest
    .accept 32145 >>Accept Don't Lose Your Head
step
    .isOnQuest 32145
    .goto 418,13.29,56.25
    >>Kill |cRXP_ENEMY_Chief Bombgineer Snicklefritz|r
    .complete 32145,3 --1/1 Chief Bombgineer Snicklefritz slain
    .mob Chief Bombgineer Snicklefritz
step
    .isOnQuest 32145
    .goto 418,13.40,57.85
    >>Kill |cRXP_ENEMY_Stone Guard Ruk'Ra|r
    .complete 32145,2 --1/1 Stone Guard Ruk'Ra slain
    .mob Stone Guard Ruk'Ra
step
    .isOnQuest 32145
    #label Scout-o-Meter Mk III
    .goto 418,10.38,58.00
    >>Kill |cRXP_ENEMY_Or'Dac|r
    .complete 32145,1 --1/1 Or'Dac slain
    .mob Or'Dac
step
    .isOnQuest 32142,32146
    #hidewindow
    #completewith Domination Orcs
    #loop
    .goto 418,8.21,61.03,30,0
    .goto 418,9.56,64.58,30,0
    .goto 418,12.73,65.31,30,0
    .goto 418,11.3,60.34,30,0
    .goto 418,13.45,59.88,30,0
    .goto 418,14.07,56.99,30,0
    +1
step
    .isOnQuest 32142,32146
    #completewith next
    >>Kill |cRXP_ENEMY_Domination Orcs|r and |cRXP_ENEMY_Heavy Mook|r
    .complete 32142,1 --10/10 Domination Orc slain
    .complete 32146,1 --5/5 Heavy Mook slain
    .mob Domination Orc
    .mob Dominance Grunt
    .mob Heavy Mook
    .mob Bloodhilt Honor Guard
    .mob Dominance Raider
step
    .isOnQuest 32144
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Crates|r
    .complete 32144,1 --8/8 Horde Supply Crates Destroyed
step
    .isOnQuest 32142,32146
    #label Domination Orcs
    >>Kill |cRXP_ENEMY_Domination Orcs|r and |cRXP_ENEMY_Heavy Mook|r
    .complete 32142,1 --10/10 Domination Orc slain
    .complete 32146,1 --5/5 Heavy Mook slain
    .mob Domination Orc
    .mob Dominance Grunt
    .mob Heavy Mook
    .mob Bloodhilt Honor Guard
    .mob Dominance Raider
step
    .isOnQuest 32144
    .goto 418,16.68,78.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishka|r
    .dailyturnin 32144 >>Turn in Under Pressure
    .target Mishka
step
    .isOnQuest 32142,32146
    .goto 418,16.47,79.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky Admiral Rogers|r
    .dailyturnin 32142 >>Turn in We Will Rock You
    .dailyturnin 32146 >>Turn in Hammer to Fall
    .target Sky Admiral Rogers
step
    .isOnQuest 32145
    #loop
    .goto 418,16.45,79.27,20,0
    .goto 418,16.74,79.69,20,0
    .goto 418,16.26,79.21,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkmaster Overspark|r
    .dailyturnin 32145 >>Turn in Don't Lose Your Head
    .target Tinkmaster Overspark
--Domination Point 2
-- step
--     .goto 418,89.79,32.43
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amber Kearnen|r
--     .accept 32452 >>Accept And Then There Were Goblins
--     .target Amber Kearnen
step
    .isOnQuest 32452
    .goto 418,16.47,79.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky Admiral Rogers|r
    .dailyturnin 32452 >>Turn in And Then There Were Goblins
    .target Sky Admiral Rogers
step
    .isQuestTurnedIn 32157
    .goto 418,16.47,79.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky Admiral Rogers|r
    .target Sky Admiral Rogers
    .daily 32157 >>Accept The Only Good Goblin...
step
    .isQuestTurnedIn 32156,32158
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishka|r and |cRXP_FRIENDLY_Seraphine of the Winter|r
    .daily 32156 >>Accept It's Only Right
    .goto 418,16.66,78.52
    .target +Mishka
    .daily 32158 >>Accept Two Step Program
    .goto 418,16.71,78.52
    .target +Seraphine of the Winter
step
    .isQuestTurnedIn 32154,32446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sully "The Pickle" McLeary|r
    .daily 32154 >>Accept Burn Out!
    .daily 32446 >>Accept Dis-Assembly Required
    #loop
    .goto 418,17.36,78.68,10,0
    .goto 418,16.73,78.6,10,0
    .target +Sully "The Pickle" McLeary
step
    .isOnQuest 32157
    #completewith Northwestern
    >>Kill |cRXP_ENEMY_Bilgewater Goblins|r
    .complete 32157,1 --10/10 Bilgewater Goblins slain
    .mob Off-Duty Logger
    .mob Grease Worker
step
    .isOnQuest 32156
    #completewith Northwestern
    >>Interact with |cRXP_FRIENDLY_Fallen Shieldwall Soldier|r
    .complete 32156,1 --7/7 Shieldwall Soldier Dog Tag
    .target Fallen Shieldwall Soldier
step
    .isOnQuest 32446
    #completewith Northwestern
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_ENEMY_Jungle Shredders|r then kill and loot them [|cRXP_LOOT_Scrap Metals|r]
    .complete 32446,1 --6/6 Scrap Metal
    .mob Jungle Shredder
step
    .isOnQuest 32158
    .goto 418,19.49,62.11
    >>Kill |cRXP_ENEMY_Shredmaster Packle|r
    .complete 32158,1 --1/1 Shredmaster Packle slain
    .mob Shredmaster Packle
step
    .isOnQuest 32154
   .goto 418,25.48,59.44
    >>Use |T133717:0|t[Unstable Explosive] near the |cRXP_WARN_Goblin Explosixe Crate|r
    .complete 32154,1 --1/1 Northeastern Fuel Tank destroyed
    .use 93187
step
    .isOnQuest 32154
    .goto 418,23.92,54.63
    >>Use |T133717:0|t[Unstable Explosive] near the |cRXP_WARN_Goblin Explosixe Crate|r
    .complete 32154,2 --1/1 Northern Fuel Tank destroyed
    .use 93187
step
    .isOnQuest 32154
    #label Northwestern
    .goto 418,15.28,59
    >>Use |T133717:0|t[Unstable Explosive] near the |cRXP_WARN_Goblin Explosixe Crate|r
    .complete 32154,3 --1/1 Northwestern Fuel Tank destroyed
    .use 93187
step
    .isOnQuest 32157,32156
    #hidewindow
    #completewith Bilgewater Goblins
    #loop
    .goto 418,19.49,62.11,40,0
    .goto 418,25.48,59.44,40,0
    .goto 418,23.92,54.63 ,40,0
    .goto 418,15.28,59,40,0
    +1
step
    .isOnQuest 32157
    #completewith Scrap Metal
    >>Kill |cRXP_ENEMY_Bilgewater Goblins|r
    .complete 32157,1 --10/10 Bilgewater Goblins slain
    .mob Off-Duty Logger
    .mob Grease Worker
step
    .isOnQuest 32156
    #completewith Scrap Metal
    >>Interact with |cRXP_FRIENDLY_Fallen Shieldwall Soldier|r
    .complete 32156,1 --7/7 Shieldwall Soldier Dog Tag
    .target Fallen Shieldwall Soldier
step
    .isOnQuest 32446
    #label Scrap Metal
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_ENEMY_Jungle Shredders|r then kill and loot them [|cRXP_LOOT_Scrap Metals|r]
    .complete 32446,1 --6/6 Scrap Metal
    .mob Jungle Shredder
step
    .isOnQuest 32157
    #completewith next
    >>Kill |cRXP_ENEMY_Bilgewater Goblins|r
    .complete 32157,1 --10/10 Bilgewater Goblins slain
    .mob Off-Duty Logger
    .mob Grease Worker
step
    .isOnQuest 32156
    >>Interact with |cRXP_FRIENDLY_Fallen Shieldwall Soldier|r
    .complete 32156,1 --7/7 Shieldwall Soldier Dog Tag
    .target Fallen Shieldwall Soldier
step
    .isOnQuest 32157
    #label Bilgewater Goblins
    >>Kill |cRXP_ENEMY_Bilgewater Goblins|r
    .complete 32157,1 --10/10 Bilgewater Goblins slain
    .mob Off-Duty Logger
    .mob Grease Worker
    .mob Refining Specialist
step
    .isOnQuest 32154,32446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sully "The Pickle" McLeary|r
    .dailyturnin 32154 >>Turn in Burn Out!
    .dailyturnin 32446 >>Turn in Dis-Assembly Required
    #loop
    .goto 418,17.36,78.68,10,0
    .goto 418,16.73,78.6,10,0
    .target +Sully "The Pickle" McLeary
step
    .isOnQuest 32156,32158
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishka|r and |cRXP_FRIENDLY_Seraphine of the Winter|r
    .dailyturnin 32156 >>Turn in It's Only Right
    .goto 418,16.66,78.52
    .target +Mishka
    .dailyturnin 32158 >>Turn in Two Step Program
    .goto 418,16.71,78.52
    .target +Seraphine of the Winter
step
    #label endlandfallfinal
    .isOnQuest 32157
    .goto 418,16.47,79.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky Admiral Rogers|r
    .target Sky Admiral Rogers
    .dailyturnin 32157 >>Turn in The Only Good Goblin...
]])

--Shado-Pan Dailies
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(10-70)|r Pandaria Remix 
#name af) Shado-Pan Daillies
#displayname |cFF1EFF006|r - Shado-Pan
#title Shado-Pan Dailies
#next a) Cloud Serpent Dailies

step
    #loop
    .goto 388,49.61,70.50,10,0
    .goto 388,49.01,71.33,10,0
    .goto 388,49.02,70.45,10,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Snowdrift|r, |cRXP_FRIENDLY_Ling of the Six Pools|r or |cRXP_FRIENDLY_Ban Bearheart|r
    .questcount <4,31039,31040,31041,31046,31042,31043,31047,31105,31113,31114,31116,31118,31119,31196,31197,31199,31200,31201,31203,31198,31044,31045,31048,31106 >>|cRXP_WARN_Get all the Shado-Pan Dailies|r
    .target Master Snowdrift
    .target Ling of the Six Pools
    .target Ban Bearheart
step
    #completewith DeadTalkerAssault
    #hidewindow
    #loop
    .goto 388,51.36,53.11,45,0
    .goto 388,50.37,48.88,45,0
    .goto 388,53.27,49.36,40,0
    +1
step
    #completewith CipheredScroll
    .isOnQuest 31114
    >>Kill |cRXP_ENEMY_Deadtalker Corpsedefiler|r and one |cRXP_ENEMY_Deadtalker Crusher|r
    .complete 31114,1 --8/8 Deadtalker Corpsedefiler slain
    .complete 31114,2 --1/1 Deadtalker Crusher slain
    .mob Deadtalker Corpsedefiler
    .mob Deadtalker Crusher
step
    #completewith CipheredScroll
    .isOnQuest 31116
    >>Kill |cRXP_ENEMY_Defiled Spirits|r. Loot them for the |T132859:0|t[|cRXP_LOOT_Ancient Spirit Dust|r].
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Defiled Yaungol Remains|r (you need 4 dust per remains)
    .complete 31116,1 --8/8 Spirits Returned to Their Remnants
    .mob Defiled Spirit
step
    #label CipheredScroll
    .isOnQuest 31118
    >>Kill |cRXP_ENEMY_Deadtalkers|r and |cRXP_ENEMY_Uruk|r. Loot them for the |T1:0|t[Ciphered Scroll].
    .complete 31118,1 --1/1 Ciphered Scroll
    .mob Deadtalker Crusher
    .mob Deadtalker Corpsedefiler
    .mob Uruk
step
    #completewith next
    .isOnQuest 31114
    >>Kill |cRXP_ENEMY_Deadtalker Corpsedefiler|r and one |cRXP_ENEMY_Deadtalker Crusher|r
    .complete 31114,1 --8/8 Deadtalker Corpsedefiler slain
    .complete 31114,2 --1/1 Deadtalker Crusher slain
    .mob Deadtalker Corpsedefiler
    .mob Deadtalker Crusher
step
    .isOnQuest 31116
    >>Kill |cRXP_ENEMY_Defiled Spirits|r. Loot them for the |T132859:0|t[|cRXP_LOOT_Ancient Spirit Dust|r].
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Defiled Yaungol Remains|r (you need 4 dust per remains)
    .complete 31116,1 --8/8 Spirits Returned to Their Remnants
    .mob Defiled Spirit
step
    .isOnQuest 31114
    #label DeadTalkerAssault
    >>Kill |cRXP_ENEMY_Deadtalker Corpsedefiler|r and one |cRXP_ENEMY_Deadtalker Crusher|r
    .complete 31114,1 --8/8 Deadtalker Corpsedefiler slain
    .complete 31114,2 --1/1 Deadtalker Crusher slain
    .mob Deadtalker Corpsedefiler
    .mob Deadtalker Deadtalker Crusher
step
    .isOnQuest 31119
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Highly Explosive Yaungol Oil Barrel|r
    .collect 84762,10 --10 Highly Explosive Yaungol Oil
step
    .isOnQuest 31113
    #loop
    .goto 388,61.52,43.70,35,0
    .goto 388,64.08,42.00,35,0
    .goto 388,60.89,41.58,35,0
    >>Kill the |cRXP_ENEMY_Gai-Chos|r
    .complete 31113,1 --16/16 Gai-Cho Yaungol, Earthtalkers, or Pitchthrowers Slain
    .mob Gai-Cho Pitchthrower
    .mob Gai-Cho Yaungol
    .mob Gai-Cho Earthtalker
step
    .isOnQuest 31119
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Highly Explosive Yaungol Oil Barrel|r
    .collect 84762,10 --10 Highly Explosive Yaungol Oil
    .goto 388,61.52,43.70,0
    .goto 388,60.89,41.58,0
    .goto 388,64.08,42.00,0
step
    .isOnQuest 31119
    #loop
    .goto 388,59.97,48.29,35,0
    .goto 388,62.13,47.91,35,0
    >>Use the |T252176:0|t[Highly Explosive Yaungol Oil] to kill the |cRXP_ENEMY_Kri'thik|r and |cRXP_ENEMY_Gai_Cho|r
    *|cRXP_WARN_If you need more barrels then fly back up and collect some more|r
    .complete 31119,1 --100/100 Gai-Cho Battlefield Combatants slain
    .use 84762
step
    .isOnQuest 31113
    .goto 388,49.61,70.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Snowdrift|r
    .dailyturnin 31113 >>Turn in Assault Fire Camp Gai-Cho
    .target Master Snowdrift
step
    .isOnQuest 31114
    .goto 388,49.61,70.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Snowdrift|r
    .dailyturnin 31114 >>Turn in Assault Deadtalker's Plateau
    .target Master Snowdrift
step
    .isOnQuest 31118
    .goto 388,49.61,70.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Snowdrift|r
    .dailyturnin 31118 >>Turn in The Deadtalker Cipher
    .target Master Snowdrift
step
    .isOnQuest 31119
    .goto 388,49.61,70.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Snowdrift|r
    .dailyturnin 31119 >>Turn in The Enemy of My Enemy... Is Still My Enemy!
    .target Master Snowdrift
step
    .isOnQuest 31116
    .goto 388,49.61,70.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Snowdrift|r
    .dailyturnin 31116 >>Turn in Spirit Dust
    .target Master Snowdrift

step
    .isQuestTurnedIn 31119
    .goto 388,49.61,70.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Snowdrift|r
    .daily 31117,31120 >>Accept Cheng Bo! or Uruk!
    .target Master Snowdrift
step
    .isOnQuest 31120
    .goto 388,60.76,42.03
    >>Kill |cRXP_ENEMY_Cheng Bo|r
    .complete 31120,1 --1/1 Cheng Bo slain
    .mob Cheng Bo
step
    .isOnQuest 31117
    .goto 388,50.35,48.95
    >>Kill |cRXP_ENEMY_Uruk|r
    .complete 31117,1 --1/1 Uruk slain
    .mob Uruk
step
    .isOnQuest 31120
    .goto 388,49.60,70.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Snowdrift|r
    .dailyturnin 31120 >>Turn in Cheng Bo!
    .target Master Snowdrift
step
    .isOnQuest 31117
    .goto 388,49.60,70.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Snowdrift|r
    .dailyturnin 31117 >>Turn in Uruk!
    .target Master Snowdrift
step
    .isOnQuest 31196
    #completewith ShadoPanTraineesFreed
    >>Kill the |cRXP_WARN_non-elite|r |cRXP_ENEMY_Sra'thik Mantid|r in the area
    .complete 31196,1 --15/15 Lesser Sra'thik mantid slain
    .mob Sra'thik Regenerator
    .mob Sra'thik Swiftwing
    .mob Sra'thik Drone
    .mob Sra'thik Cacophyte
    .mob Sra'thik Mutilator
step
    .isOnQuest 31199
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Sra'thik Siege Weapon|r
    .goto 388,27.44,54.78
    .complete 31199,2 --1/1 Small Southern Siege Weapon destroyed
step
    .isOnQuest 31199
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Sra'thik Siege Weapon|r
    .goto 388,25.76,53.55
    .complete 31199,1 --1/1 Large Southern Siege Weapon destroyed
step
    .isOnQuest 31197
    #completewith ShadoPanTraineesFreed
    .goto 388,16.36,40.87,0
    .line 388,17.66,41.90,17.96,44.79,17.85,46.17,17.64,49.62,18.00,50.30
    .line 388,18.41,49.86,19.65,48.38,19.71,46.84,20.18,45.97
    .line 388,20.92,42.96,20.16,42.98,19.50,43.73,19.48,44.28,19.71,44.75
    .line 388,20.52,40.24,21.59,40.26,22.25,39.77,23.33,39.91,23.55,39.88
    .line 388,27.16,40.54,26.27,40.82,27.16,39.60,26.43,38.76
    .line 388,24.00,43.82,24.35,42.97,25.19,43.10,25.37,41.57,25.16,40.64
    .line 388,26.07,40.86,25.72,43.12,26.12,45.35,26.15,45.90
    .line 388,26.01,46.35,25.38,47.65,24.81,48.07
    .line 388,23.97,49.38,23.42,50.62,23.37,51.69
    .line 388,23.21,52.69,22.45,53.35,21.70,53.59
    .line 388,24.85,55.10,24.33,54.92,23.70,54.09,23.52,52.50
    .line 388,21.66,53.58,20.31,53.99,20.03,52.51,19.39,51.33
    >>Kill the |cRXP_WARN_elite|r |cRXP_ENEMY_Sra'thik Mantid|r in the area
    .complete 31197,1 --4/4 Greater Sra'thik mantid slain
    .mob Sra'thik Deathmixer
    .mob Sra'thik Vessguard
    .mob Sra'thik Swarmlord
    .mob Sra'thik Will-Breaker
    .mob Sra'thik Swarm-Leader
step
    .isOnQuest 31198
    .goto 388,23.57,55.64
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Sra'thik Idol|r
    .complete 31198,1 --1/1 Southern idol
step
    .isOnQuest 31198
    .goto 388,21.53,49.24
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Sra'thik Idol|r
    .complete 31198,3 --1/1 Center idol
step
    .isOnQuest 31200
    >>Use the |T348523:0|t[Bag of Shado-Pan Gas Bombs] at the waypoint location
    .use 86532
    .goto 388,23.83,47.29
    .complete 31200,2 --1/1 Nutriment Cell bombed
step
    .isOnQuest 31200
    >>Use the |T348523:0|t[Bag of Shado-Pan Gas Bombs] at the waypoint location
    .use 86532
    .goto 388,23.63,44.72
    .complete 31200,3 --1/1 Egg Chamber bombed
step
    .isOnQuest 31198
    .goto 388,27.82,41.96
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Sra'thik Idol|r
    .complete 31198,4 --1/1 Eastern idol
step
    .isOnQuest 31199
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Sra'thik Siege Weapon|r
    .goto 388,27.18,41.18
    .complete 31199,3 --1/1 Large Northern Siege Weapon destroyed
step
    .isOnQuest 31199
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Sra'thik Siege Weapon|r
    .goto 388,26.06,39.94
    .complete 31199,4 --1/1 Small Northern Siege Weapon destroyed
step
    .isOnQuest 31200
    >>Use the |T348523:0|t[Bag of Shado-Pan Gas Bombs] at the waypoint location
    .use 86532
    .goto 388,22.04,41.56
    .complete 31200,4 --1/1 Torture Cell bombed
step
    .isOnQuest 31200
    >>Use the |T348523:0|t[Bag of Shado-Pan Gas Bombs] at the waypoint location
    .use 86532
    .goto 388,21.20,43.18
    .complete 31200,5 --1/1 Slaughtering Pit bombed
step
    .isOnQuest 31200
    >>Use the |T348523:0|t[Bag of Shado-Pan Gas Bombs] at the waypoint location
    .use 86532
    .goto 388,21.00,45.88
    .complete 31200,1 --1/1 Amber Vault bombed
step
    .isOnQuest 31198
    .goto 388,16.17,45.78
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Sra'thik Idol|r
    .complete 31198,2 --1/1 Western idol
step
    .isOnQuest 31201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado-Pan Trainee|r
    *|cRXP_WARN_Be careful, you may get dismounted in the area|r
    .goto 388,18.00,53.45
    .skipgossip
    .complete 31201,1 --1/1 Shado-Pan Trainee at Northern Feeding Pit freed
    .target Shado_pan Trainee
step
    .isOnQuest 31201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado-Pan Trainee|r
    *|cRXP_WARN_Be careful, you may get dismounted in the area|r
    .goto 388,17.40,56.91
    .skipgossip
    .complete 31201,2 --1/1 Shado-Pan Trainee at Central Feeding Pit freed
    .target Shado_pan Trainee
step
    .isOnQuest 31201
    #label ShadoPanTraineesFreed
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shado-Pan Trainee|r
    *|cRXP_WARN_Be careful, you may get dismounted in the area|r
    .goto 388,17.57,58.04
    .skipgossip
    .complete 31201,3 --1/1 Shado-Pan Trainee at Southern Feeding Pit freed
    .target Shado_pan Trainee
step
    #completewith LesserSrathikSlain
    #hidewindow
    #loop
    .goto 388,23.52,52.48,45,0
    .goto 388,26.02,40.53,55,0
    .goto 388,16.44,40.98,55,0
    .goto 388,19.57,45.90,55,0
    .goto 388,20.12,54.23,45,0
    +1
step
    .isOnQuest 31196
    #completewith next
    >>Kill the |cRXP_WARN_non-elite|r |cRXP_ENEMY_Sra'thik Mantid|r in the area
    .complete 31196,1 --15/15 Lesser Sra'thik mantid slain
    .mob Sra'thik Regenerator
    .mob Sra'thik Swiftwing
    .mob Sra'thik Drone
    .mob Sra'thik Cacophyte
    .mob Sra'thik Mutilator
step
    .isOnQuest 31197
    .goto 388,16.36,40.87,0
    .line 388,17.66,41.90,17.96,44.79,17.85,46.17,17.64,49.62,18.00,50.30
    .line 388,18.41,49.86,19.65,48.38,19.71,46.84,20.18,45.97
    .line 388,20.92,42.96,20.16,42.98,19.50,43.73,19.48,44.28,19.71,44.75
    .line 388,20.52,40.24,21.59,40.26,22.25,39.77,23.33,39.91,23.55,39.88
    .line 388,27.16,40.54,26.27,40.82,27.16,39.60,26.43,38.76
    .line 388,24.00,43.82,24.35,42.97,25.19,43.10,25.37,41.57,25.16,40.64
    .line 388,26.07,40.86,25.72,43.12,26.12,45.35,26.15,45.90
    .line 388,26.01,46.35,25.38,47.65,24.81,48.07
    .line 388,23.97,49.38,23.42,50.62,23.37,51.69
    .line 388,23.21,52.69,22.45,53.35,21.70,53.59
    .line 388,24.85,55.10,24.33,54.92,23.70,54.09,23.52,52.50
    .line 388,21.66,53.58,20.31,53.99,20.03,52.51,19.39,51.33
    >>Kill the |cRXP_WARN_elite|r |cRXP_ENEMY_Sra'thik Mantid|r in the area
    .complete 31197,1 --4/4 Greater Sra'thik mantid slain
    .mob Sra'thik Deathmixer
    .mob Sra'thik Vessguard
    .mob Sra'thik Swarmlord
    .mob Sra'thik Will-Breaker
    .mob Sra'thik Swarm-Leader
step
    .isOnQuest 31196
    #label LesserSrathikSlain
    >>Kill the |cRXP_WARN_non-elite|r |cRXP_ENEMY_Sra'thik Mantid|r in the area
    .complete 31196,1 --15/15 Lesser Sra'thik mantid slain
    .mob Sra'thik Regenerator
    .mob Sra'thik Swiftwing
    .mob Sra'thik Drone
    .mob Sra'thik Cacophyte
    .mob Sra'thik Mutilator
step
    .isOnQuest 31196
    .goto 388,49.01,71.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ling of the Six Pools|r
    .dailyturnin 31196 >>Turn in Sra'vess Wetwork
    .target Ling of the Six Pools
step
    .isOnQuest 31197
    .goto 388,49.01,71.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ling of the Six Pools|r
    .dailyturnin 31197 >>Turn in Friends, Not Food!
    .target Ling of the Six Pools
step
    .isOnQuest 31199
    .goto 388,49.01,71.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ling of the Six Pools|r
    .dailyturnin 31199 >>Turn in Destroy the Siege Weapons!
    .target Ling of the Six Pools
step
    .isOnQuest 31201
    .goto 388,49.01,71.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ling of the Six Pools|r
    .dailyturnin 31201 >>Turn in Friends, Not Food!
    .target Ling of the Six Pools
step
    .isOnQuest 31198
    .goto 388,49.01,71.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ling of the Six Pools|r
    .dailyturnin 31198 >>Turn in A Morale Victory
    .target Ling of the Six Pools
step
    .isOnQuest 31203
    .goto 388,49.01,71.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ling of the Six Pools|r
    .dailyturnin 31203 >>Turn in Target of Opportunity: Sra'thik Swarmlord
    .target Ling of the Six Pools
step
    .xp <70,1
    .isQuestAvailable 31204
    .isQuestTurnedIn 31201,31199,31197,31196,31200
    .goto 388,49.01,71.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ling of the Six Pools|r
    .daily 31204,31203 >>Accept Target of Opportunity
    .target Ling of the Six Pools
step
    .isOnQuest 31203
    .goto 388,16.36,40.88
    >>Kill |cRXP_ENEMY_Sra'thik Swarmlord|r
    .complete 31203,1 --1/1 Sra'thik Swarmlord slain
    .mob Sra'thik Swarmlord
step
    .isOnQuest 31203
    .goto 388,49.01,71.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ling of the Six Pools|r
    .dailyturnin 31203 >>Turn in Target of Opportunity: Sra'thik Swarmlord
    .target Ling of the Six Pools
step
    .isOnQuest 31204
    #completewith next
    #title Enter Chamber
    .goto 388,27.10,44.07,10 >>Enter Chamber
step
    .isOnQuest 31204
    .goto 388,27.10,44.07,0
    .goto 388,24.33,43.99
    >>Kill |cRXP_ENEMY_Sra'thik Hivelord|r
    .complete 31204,1 --1/1 Sra'thik Hivelord slain
    .mob Sra'thik Hivelord
step
    .isOnQuest 31204
    #completewith next
    #title Leave Chamber
    .goto 388,27.10,44.07,10 >>Leave Chamber
step
    .isOnQuest 31204
    .goto 388,49.01,71.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ling of the Six Pools|r
    .dailyturnin 31204 >>Turn in Target of Opportunity: Sra'thik Hivelord
    .target Ling of the Six Pools
step
    #completewith ShanzeAncestorsSlain
    #hidewindow
    #loop
    .goto 388,29.96,22.40,35,0
    .goto 388,28.98,17.46,35,0
    .goto 388,21.74,13.51,45,0
    +1
step
    .isOnQuest 31106
    #completewith ShanzeIllusionistsSlain
    >>Kill |cRXP_ENEMY_Shan'ze Serpentbinders|r or |cRXP_ENEMY_Shan'ze Beastmasters|r
    .complete 31106,1 --12/12 Shan'ze Serpentbinders or Beastmasters slain
    .mob Shan'ze Serpentbinder
    .mob Shan'ze BeastMaster
step
    .isOnQuest 31048
    #completewith ShanzeIllusionistsSlain
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Mogu Burial Urns|r. Kill the |cRXP_ENEMY_Shan'ze Ancestors|r
    .complete 31048,1 --24/24 Shan'ze Ancestor slain
    .mob Shan'ze Ancestor
step
    .isOnQuest 31044
    #completewith ShanzeIllusionistsSlain
    >>Kill the |cRXP_ENEMY_Bronze Quilen|r. Loot them for the |T370770:0|t[|cRXP_LOOT_Bronze Claws|r].
    .complete 31044,1 --20/20 Bronze Claw
    .mob Bronze Quilen
step
    #label ShanzeIllusionistsSlain
    .isOnQuest 31045
    >>Kill the |cRXP_ENEMY_Shan'ze Illusionists|r
    .complete 31045,1 --3/3 Shan'ze Illusionist slain
    .mob Shan'ze Illusionist
step
    .isOnQuest 31106
    #completewith BronzeClaws
    >>Kill |cRXP_ENEMY_Shan'ze Serpentbinders|r or |cRXP_ENEMY_Shan'ze Beastmasters|r
    .complete 31106,1 --12/12 Shan'ze Serpentbinders or Beastmasters slain
    .mob Shan'ze Serpentbinder
    .mob Shan'ze BeastMaster
step
    .isOnQuest 31048
    #completewith BronzeClaws
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Mogu Burial Urns|r. Kill the |cRXP_ENEMY_Shan'ze Ancestors|r
    .complete 31048,1 --24/24 Shan'ze Ancestor slain
    .mob Shan'ze Ancestor
step
    .isOnQuest 31044
    #label BronzeClaws
    >>Kill the |cRXP_ENEMY_Bronze Quilen|r. Loot them for the |T370770:0|t[|cRXP_LOOT_Bronze Claws|r].
    .complete 31044,1 --20/20 Bronze Claw
    .mob Bronze Quilen
step
    .isOnQuest 31106
    #completewith next
    >>Kill |cRXP_ENEMY_Shan'ze Serpentbinders|r or |cRXP_ENEMY_Shan'ze Beastmasters|r
    .complete 31106,1 --12/12 Shan'ze Serpentbinders or Beastmasters slain
    .mob Shan'ze Serpentbinder
    .mob Shan'ze BeastMaster
step
    .isOnQuest 31048
    #label ShanzeAncestorsSlain
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on |cRXP_PICK_Mogu Burial Urns|r. Kill the |cRXP_ENEMY_Shan'ze Ancestors|r
    .complete 31048,1 --24/24 Shan'ze Ancestor slain
    .mob Shan'ze Ancestor
step
    .isOnQuest 31106
    #loop
    .goto 388,22.75,8.46,45,0
    .goto 388,30.24,8.35,45,0
    .goto 388,25.05,19.09,50,0
    >>Kill |cRXP_ENEMY_Shan'ze Serpentbinders|r or |cRXP_ENEMY_Shan'ze Beastmasters|r
    .complete 31106,1 --12/12 Shan'ze Serpentbinders or Beastmasters slain
    .mob Shan'ze Serpentbinder
    .mob Shan'ze BeastMaster
step
    .isOnQuest 31105
    #completewith WildCloudridersFreed
    >>Kill |cRXP_ENEMY_Shan'ze Serpentbinders|r or |cRXP_ENEMY_Shan'ze Beastmasters|r
    .complete 31105,1 --12/12 Shan'ze Serpentbinders or Beastmasters slain
    .mob Shan'ze Serpentbinder
    .mob Shan'ze BeastMaster
step
    .isOnQuest 31042
    #completewith WildCloudridersFreed
    >>Kill the |cRXP_ENEMY_Onyx Stormclaws|r. Loot them for the |T399041:0|t[|cRXP_LOOT_Onyx Hearts|r].
    .complete 31042,1 --4/4 Onyx Heart
    .mob Onyx Stormclaw
step
    .isOnQuest 31043
    #completewith WildCloudridersFreed
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shan'ze Tablets|r
    .complete 31043,1 --8/8 Shan'ze Tablet
step
    .isOnQuest 31047
    #label WildCloudridersFreed
    #loop
    .goto 388,30.26,26.06,35,0
    .goto 388,33.48,27.21,35,0
    .goto 388,34.97,20.17,35,0
    .goto 388,31.75,21.86,35,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ball and Chain|r
    .complete 31047,1 --6/6 Wild Cloudriders freed
step
    #completewith ShanzeeSerpenbindersBeastmastersSlain
    #hidewindow
    #loop
    .goto 388,25.71,19.64,35,0
    .goto 388,21.84,11.62,35,0
    .goto 388,24.39,8.36,35,0
    .goto 388,30.12,9.33,35,0
    .goto 388,25.71,19.64,35,0
    .goto 388,30.26,26.06,35,0
    .goto 388,33.48,27.21,35,0
    .goto 388,34.97,20.17,35,0
    .goto 388,31.75,21.86,35,0
    +1
step
    .isOnQuest 31105
    #completewith OnyxHeart
    >>Kill |cRXP_ENEMY_Shan'ze Serpentbinders|r or |cRXP_ENEMY_Shan'ze Beastmasters|r
    .complete 31105,1 --12/12 Shan'ze Serpentbinders or Beastmasters slain
    .mob Shan'ze Serpentbinder
    .mob Shan'ze BeastMaster
step
    .isOnQuest 31043
    #completewith OnyxHeart
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shan'ze Tablets|r
    .complete 31043,1 --8/8 Shan'ze Tablet
step
    .isOnQuest 31042
    #label OnyxHeart
    >>Kill the |cRXP_ENEMY_Onyx Stormclaws|r. Loot them for the |T399041:0|t[|cRXP_LOOT_Onyx Hearts|r].
    .complete 31042,1 --4/4 Onyx Heart
    .mob Onyx Stormclaw
step
    .isOnQuest 31105
    #completewith next
    >>Kill |cRXP_ENEMY_Shan'ze Serpentbinders|r or |cRXP_ENEMY_Shan'ze Beastmasters|r
    .complete 31105,1 --12/12 Shan'ze Serpentbinders or Beastmasters slain
    .mob Shan'ze Serpentbinder
    .mob Shan'ze BeastMaster
step
    .isOnQuest 31043
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shan'ze Tablets|r
    .complete 31043,1 --8/8 Shan'ze Tablet
step
    .isOnQuest 31105
    #label ShanzeeSerpenbindersBeastmastersSlain
    >>Kill |cRXP_ENEMY_Shan'ze Serpentbinders|r or |cRXP_ENEMY_Shan'ze Beastmasters|r
    .complete 31105,1 --12/12 Shan'ze Serpentbinders or Beastmasters slain
    .mob Shan'ze Serpentbinder
    .mob Shan'ze BeastMaster
step
    .isOnQuest 31039
    #completewith CloudrunnerHatchlingsFreed
    >>Kill |cRXP_ENEMY_Shan'ze Serpentbinders|r or |cRXP_ENEMY_Shan'ze Beastmasters|r
    .complete 31039,1 --12/12 Shan'ze Serpentbinders or Beastmasters slain
    .mob Shan'ze Serpentbinder
    .mob Shan'ze BeastMaster
step
    .isOnQuest 31041
    #completewith CloudrunnerHatchlingsFreed
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shiny Eggs|r
    .complete 31041,1 --8/8 Cloudrunner Egg
step
    #label CloudrunnerHatchlingsFreed
    .isOnQuest 31046
    #loop
    .goto 388,33.48,27.21,35,0
    .goto 388,34.97,20.17,35,0
    .goto 388,31.75,21.86,35,0
    .goto 388,30.26,26.06,35,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Shan'ze Cages|r
    .complete 31046,1 --20/20 Cloudrunner Hatchlings freed
    .target Cloudrunner Hatchling
step
    #completewith DarkwoodPixieCharmer
    #hidewindow
    #loop
    .goto 388,27.39,24.52,40,0
    .goto 388,25.16,24.07,35,0
    .goto 388,22.07,18.62,35,0
    .goto 388,19.33,16.52,35,0
    .goto 388,22.21,10.14,35,0
    .goto 388,23.38,17.98,40,0
    +1
step
    .isOnQuest 31040
    #completewith CloudrunnerEggs
    >>Kill |cRXP_ENEMY_Darkwoods Pixies|r or |cRXP_ENEMY_Darkwoods Charmers|r
    .complete 31040,1 --30/30 Darkwoods Pixies or Darkwoods Charmers slain
    .mob Darkwoods Pixie
    .mob Darkwoods Charmer
step
    .isOnQuest 31039
    #completewith CloudrunnerEggs
    >>Kill |cRXP_ENEMY_Shan'ze Serpentbinders|r or |cRXP_ENEMY_Shan'ze Beastmasters|r
    .complete 31039,1 --12/12 Shan'ze Serpentbinders or Beastmasters slain
    .mob Shan'ze Serpentbinder
    .mob Shan'ze BeastMaster
step
    .isOnQuest 31041
    #label CloudrunnerEggs
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Cloudrunner Eggs|r
    .complete 31041,1 --8/8 Cloudrunner Egg
step
    .isOnQuest 31040
    #completewith next
    >>Kill |cRXP_ENEMY_Darkwoods Pixies|r or |cRXP_ENEMY_Darkwoods Charmers|r
    .complete 31040,1 --30/30 Darkwoods Pixies or Darkwoods Charmers slain
    .mob Darkwoods Pixie
    .mob Darkwoods Charmer
step
    .isOnQuest 31039
    #completewith CloudrunnerEggs
    >>Kill |cRXP_ENEMY_Shan'ze Serpentbinders|r or |cRXP_ENEMY_Shan'ze Beastmasters|r
    .complete 31039,1 --12/12 Shan'ze Serpentbinders or Beastmasters slain
    .mob Shan'ze Serpentbinder
    .mob Shan'ze BeastMaster
step
    .isOnQuest 31040
    #label DarkwoodPixieCharmer
    >>Kill |cRXP_ENEMY_Darkwoods Pixies|r or |cRXP_ENEMY_Darkwoods Charmers|r
    .complete 31040,1 --30/30 Darkwoods Pixies or Darkwoods Charmers slain
    .mob Darkwoods Pixie
    .mob Darkwoods Charmer
step
    .isOnQuest 31044
    .goto 388,49.02,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
    .dailyturnin 31044 >>Turn in Bronze Claws
    .target Ban Bearheart
step
    .isOnQuest 31045
    .goto 388,49.02,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
    .dailyturnin 31045 >>Turn in Illusions Of The Past
    .target Ban Bearheart
step
    .isOnQuest 31048
    .goto 388,49.02,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
    .dailyturnin 31048 >>Turn in Grave Consequences
    .target Ban Bearheart
step
    .isOnQuest 31106
    .goto 388,49.02,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
    .dailyturnin 31106 >>Turn in The Mogu Menace
    .target Ban Bearheart
step
    .isQuestTurnedIn 31106
    .goto 388,49.02,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
    .daily 31062 >>Accept When The Dead Speak
    .target Ban Bearheart
step
    .isOnQuest 31040
    .goto 388,49.02,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
    .dailyturnin 31040 >>Turn in Spiteful Sprites
    .target Ban Bearheart
step
    .isOnQuest 31041
    .goto 388,49.02,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
    .dailyturnin 31041 >>Turn in Egg Rescue!
    .target Ban Bearheart
step
    .isOnQuest 31046
    .goto 388,49.02,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
    .dailyturnin 31046 >>Turn in Little Hatchlings
    .target Ban Bearheart
step
    .isOnQuest 31039
    .goto 388,49.02,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
    .dailyturnin 31039 >>Turn in The Mogu Menace
    .target Ban Bearheart
step
    .isNotOnQuest 31062
    .isQuestTurnedIn 31039
    .goto 388,49.02,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
    .daily 31049 >>Accept In Sprite of Everything
    .target Ban Bearheart
step
    .isOnQuest 31042
    .goto 388,49.02,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
    .dailyturnin 31042 >>Turn in Onyx Hearts
    .target Ban Bearheart
step
    .isOnQuest 31043
    .goto 388,49.02,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
    .dailyturnin 31043 >>Turn in Dark Arts
    .target Ban Bearheart
step
    .isOnQuest 31047
    .goto 388,49.02,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
    .dailyturnin 31047 >>Turn in Born Free
    .target Ban Bearheart
step
    .isOnQuest 31105
    .goto 388,49.02,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
    .dailyturnin 31105 >>Turn in The Mogu Menace
    .target Ban Bearheart
step
    .isNotOnQuest 31062,31049
    .isQuestTurnedIn 31105
    .goto 388,49.02,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
    .daily 31061 >>Accept Riding the Storm
    .target Ban Bearheart
step
    .isOnQuest 31062
    .goto 388,32.35,9.56
    >>Kill |cRXP_ENEMY_Shan'ze Deathspeaker|r
    .complete 31062,1 --1/1 Shan'ze Deathspeaker slain
    .mob Shan'ze Deathspeaker
step
    .isOnQuest 31049
    #completewith next
    #label DarkwoodsFaerieSlain
    >>Kill the |cRXP_ENEMY_Darkwoods Faerie|r
    .complete 31049,1 --1/1 Darkwoods Faerie slain
    .mob Darkwoods Faerie
step
    .isOnQuest 31049
    #title Enter Cave
    #completewith DarkwoodsFaerieSlain
    .goto 388,20.23,15.70,6 >>Enter the cave
step
    .isOnQuest 31049
    #requires DarkwoodsFaerieSlain
    .goto 388,20.23,15.70,0
    .goto 388,19.53,13.87
    >>Kill the |cRXP_ENEMY_Darkwoods Faerie|r
    .complete 31049,1 --1/1 Darkwoods Faerie slain
    .mob Darkwoods Faerie
step
    .isOnQuest 31061
    .goto 388,33.47,15.63
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on a |cRXP_ENEMY_Shan'ze Cloudrunner|r or use |T134226:0|t[Bronze Claws]. Kill the |cRXP_ENEMY_Shan'ze Cloudrunner|r you're sitting on
    .complete 31061,1 --8/8 Shan'ze Cloudrider saved
    .use 83134
    .mob Shan'ze Cloudrunner
step
    .isOnQuest 31062
    .goto 388,49.01,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
    .dailyturnin 31062 >>Turn in When The Dead Speak
    .target Ban Bearheart
step
    .isOnQuest 31049
    .goto 388,49.01,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
    .dailyturnin 31049 >>Turn in In Sprite of Everything
    .target Ban Bearheart
step
    .isOnQuest 31061
    .goto 388,49.01,70.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ban Bearheart|r
    .dailyturnin 31061 >>Turn in Riding the Storm
    .target Ban Bearheart
]])


----------------------------
---x UNUSED
----------------------------

-- Vale Dailies
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(10-70)|r Pandaria Remix 
#name X) Vale Dailies 1
#internal

step
    .goto 390,21.40,71.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kun Autumnlight|r
    .accept 30266 >>Accept Bloodied Skies
    .accept 30243 >>Accept Mantid Under Fire
    .target Kun Autumnlight
step
    .goto 390,21.46,71.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
    .turnin 80427,1 >>Don't turn in Aid the Golden Lotus
    .daily 30277,30280 >>Accept the daily
    .target Anji Autumnlight
step
    #loop
    .goto 390,19.96,72.97,10,0
    .goto 390,20.49,75.10,10,0
    .goto 390,19.14,75.72,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hai-Me Heavyhands|r
    .accept 30306 >>Accept The Battle Ring
    .target Hai-Me Heavyhands
step
    >>Defeat the |cRXP_ENEMY_Shado-Pan Trainees|r
    .goto 390,19.60,74.41
    .complete 30306,1 --20/20 Shado-Pan Trainees defeated
    .mob Shado-Pan Trainee
step
    .isOnQuest 30306
    #loop
    .goto 390,19.96,72.97,10,0
    .goto 390,20.49,75.10,10,0
    .goto 390,19.14,75.72,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hai-Me Heavyhands|r
    .dailyturnin 30306 >>Turn in The Battle Ring
    .target Hai-Me Heavyhands
step
    .goto 390,18.49,71.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yumi Goldenpaw|r
    .daily 30240,30242 >>Accept Survival Ring
    .target Yumi Goldenpaw
step
    .isOnQuest 30242
    >>Stand exactly on top of the waypoint
    .goto 390,19.72,67.97
    .complete 30242,1 --1/1 Live through the Survival Ring for 60 seconds
step
    .isOnQuest 30240
    >>Dodge the smoke circles on the ground
    .goto 390,18.67,68.24
    .complete 30240,1 --1/1 Live through the Survival Ring for 60 seconds
step
    .isOnQuest 30240
    .goto 390,18.48,71.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yumi Goldenpaw|r
    .dailyturnin 30240 >>Turn in Survival Ring: Flame
    .target Yumi Goldenpaw
step
    .goto 390,18.10,63.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelari Featherfoot|r
    .accept 30261 >>Accept Roll Club: Serpent's Spine
    .target Kelari Featherfoot
step
    .isOnQuest 30261
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelari Featherfoot|r
    .goto 390,18.10,63.55
    .complete 30261,1 --1/1 Speak to Kelari Featherfoot
    .skipgossipid 40305
    .target Kelari Featherfoot
step
    .isOnQuest 30261
    .goto 390,18.10,63.55,0
    .goto 390,12.46,92.44,22,0
    .goto 390,12.27,96.11,22,0
    .goto 390,11.62,99.60,22,0
    .goto 376,12.14,34.25,22,0
    .goto 376,10.28,40.08,22,0
    .goto 376,8.89,42.71,22,0
    .goto 376,8.17,44.47,22,0
    .goto 376,6.18,53.54,22,0
    .goto 376,7.19,59.14,22,0
    .goto 376,7.28,65.28,22,0
    .goto 376,7.14,69.16,22,0
    .goto 376,5.65,76.76,22,0
    .goto 376,3.75,82.85,22,0
    .goto 376,1.07,89.73,22,0
    >>Roll through the speed buffs, |cRXP_WARN_avoid the oil pools unless you want to slow down intentionally|r
    .skipgossipid 40305
    .goto 424,39.08,78.06
    .complete 30261,2 --1/1 Serpent's Spine Roll Course finished
    .target Kelari Featherfoot
step
    .isOnQuest 30261
    .goto 390,18.10,63.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelari Featherfoot|r
    .dailyturnin 30261 >>Turn in Roll Club: Serpent's Spine
    .target Kelari Featherfoot
step
    .isOnQuest 30266
    #hidewindow
    #label KrikthikSwarmerSlain
    #completewith next
    .complete 30266,1 --30/30 Krik'thik Swarmer slain
step
    .isOnQuest 30266
    #completewith KrikthikSwarmerSlain
    #label SettingSunTurret
    .goto 390,6.63,70.26
    .vehicle 64336 >>Enter the |cRXP_FRIENDLY_Setting Sun Turret|r
step
    .isOnQuest 30266
    #requires SettingSunTurret
    >>|cRXP_WARN_Use|r |T236469:0|t[Dragon Cannon] (1) |cRXP_WARN_to kill|r |cRXP_ENEMY_Krik'thik Swarmer|r
    .goto 390,6.63,70.26
    .complete 30266,1 --30/30 Krik'thik Swarmer slain
    .mob Krik'thik Swarmer
step
    .isOnQuest 30243
    #hidewindow
    #label KrikthikHivelingSlain
    #completewith next
    .complete 30243,1 --30/30 Krik'thik Swarmer slain
step
    .isOnQuest 30243
    #completewith KrikthikHivelingSlain
    #label HotOilCauldron
    .goto 390,2.64,62.32
    .vehicle 64369 >>Enter the |cRXP_FRIENDLY_Hot Oil Cauldron|r
step
    .isOnQuest 30243
    #requires HotOilCauldron
    >>You can also go to different |cRXP_FRIENDLY_Hot Oil Cauldrons|r
    >>|cRXP_WARN_Use|r |T252176:0|t[Ignitable Oil Bucket] (1) |cRXP_WARN_to place oil on the ground
    >>|cRXP_WARN_Use|r |T135433:0|t[Shado-Pan Torch] (2) |cRXP_WARN_on the oil to ignite it and kill|r |cRXP_ENEMY_Krik'thik Hivelings|r
    .goto 390,2.64,62.32
    .complete 30243,1 --30/30 Krik'thik Hiveling slain
    .mob Krik'thik Hiveling
step
    .isOnQuest 30277
    #hidewindow
    #label DeactivateSpiritWall
    .complete 30277,1 --1/1 Deactivate Spirit Wall
step
    #completewith next
    .isOnQuest 30277
    .goto 395,55.60,92.17,10 >>Enter the Guo-Lai Halls
step
    .isOnQuest 30277
    #completewith DeactivateSpiritWall
    #label SpiritWallA
    .goto 395,47.67,80.90,15,0
    .goto 395,46.25,56.38,15,0
    .goto 395,26.83,47.25,15,0
    .goto 395,36.48,36.55
    .cast 3365 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the Spirit Orb
step
    .isOnQuest 30277
    #completewith DeactivateSpiritWall
    #requires SpiritWallA
    #label SpiritWallB
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the Spirit Orb
    .goto 395,23.16,28.83
    .cast 3365 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the Spirit Orb
step
    .isOnQuest 30277
    #requires SpiritWallB
    >>|cRXP_WARN_Loot at the first rune on the floor. This one is the safe on which won't kill you. Follow this rune to the spirit orb|r
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the Spirit Orb
    .goto 395,49.10,22.67
    .complete 30277,1 --1/1 Deactivate Spirit Wall
step
    .isOnQuest 30277
    >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Ancient Guo-Lai Artifact|r
    .goto 395,49.63,30.67
    .complete 30277,2 --1/1 Ancient Guo-Lau Artifact
step
    #completewith next
    .isOnQuest 30280
    .goto 395,55.60,92.17,10 >>Enter the Guo-Lai Halls
step
    .goto 395,47.79,80.48,15,0
    .goto 395,65.24,14.12,17,0
    .goto 395,54.75,63.21
    >>|cRXP_WARN_Follow the arrow down. The first center rune at the beginning of each rune puzzle is the safe one. Follow these to avoid dying|r
    >>|cRXP_WARN_Move out of the lightning zones as they will one-shot you|r
    >>Kill |cRXP_ENEMY_Milau|r
    .complete 30280,1 --1/1 Milau slain
    .mob Milau
step
    .isOnQuest 30277
    .goto 390,21.47,71.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
    .dailyturnin 30277 >>Turn in The Crumbling Hall
    .target Anji Autumnlight
step
    .isOnQuest 30280
    .goto 390,21.47,71.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
    .dailyturnin 30280 >>Turn in The Thunder Below
    .target Anji Autumnlight
step
    .isOnQuest 30243
    .goto 390,21.38,71.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kun Autumnlight|r
    .dailyturnin 30243 >>Turn in Mantid Under Fire
    .target Kun Autumnlight
step
    .isOnQuest 30266
    .goto 390,21.38,71.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kun Autumnlight|r
    .dailyturnin 30266 >>Turn in Bloodied Skies
    .target Kun Autumnlight
]])

-- Niuzao Dailies
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#name X) Niuzao Daillies
#internal


]])
