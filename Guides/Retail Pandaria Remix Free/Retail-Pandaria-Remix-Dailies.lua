----------------------------
---x DAILIES
----------------------------

-- Cloud Serpent Dailies
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Panda Remix
#name X) Cloud Serpent Dailies
#internal

step
    +|cRXP_WARN_Pick up the 3 available dailies in The Arboretum|r
    .goto 371,57.69,44.93
    .questcount <3,31706,31711,31708,31194,30155,30156,30158

-- DAILIES DAY A
step
    .isOnQuest 31706
    .goto 374,42.00,32.18
    >>Kill |cRXP_ENEMY_Weeping Widow|r
    .complete 31706,1 --7/7 Weeping Widow slain
    .mob Weeping Widow
step
    .isOnQuest 31708
    .goto 374,50.41,37.38
    .complete 31708,1 --25/25 Serpent's Scale
step
    .isOnQuest 31711
    .goto 374,33.23,38.52
    >>Kill |cRXP_ENEMY_Seed of Doubt|r
    .complete 31711,1 --1/1 Seed of Doubt slain
    .mob Seed of Doubt
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

-- DAILIES DAY B
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
    .goto 371,68.27,32.88,25,0
    .goto 371,66.74,25.68,25,0
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
    >>Kill |cRXP_ENEMY_Saltback Turtles|r and |cRXP_ENEMY_Saltback Yearlings|r. Loot them for the |T237339:0|t[Saltback Meat Scrap] or |T237338:0|t[Saltback Meat]
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
    >>Click on the |cRXP_PICK_Slitherscale Weapons|r
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
]])

-- Vale Dailies
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Panda Remix
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
    .cast 3365 >>Click on the Spirit Orb
step
    .isOnQuest 30277
    #completewith DeactivateSpiritWall
    #requires SpiritWallA
    #label SpiritWallB
    >>Click on the Spirit Orb
    .goto 395,23.16,28.83
    .cast 3365 >>Click on the Spirit Orb
step
    .isOnQuest 30277
    #requires SpiritWallB
    >>|cRXP_WARN_Loot at the first rune on the floor. This one is the safe on which won't kill you. Follow this rune to the spirit orb|r
    >>Click on the Spirit Orb
    .goto 395,49.10,22.67
    .complete 30277,1 --1/1 Deactivate Spirit Wall
step
    .isOnQuest 30277
    >>Click on the |cRXP_PICK_Ancient Guo-Lai Artifact|r
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
#df
#version 1
#group RestedXP Panda Remix
#name X) Niuzao Daillies
#internal


]])

-- Dreadwastes Dailies
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Panda Remix
#name X) Dreadwastes Daillies
#internal


step
    .goto 422,54.25,35.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
    .accept 31268 >>Accept A Little Brain Work
    .target Kaz'tik the Manipulator
    .accept 31024 >>Accept Kunchong Treats
step
    .goto 422,54.36,35.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rik'kal the Dissector|r
    .accept 31271 >>Accept Bad Genes
    .target Rik'kal the Dissector
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
    .accept 31270 >>Accept The Fight Against Fear
    .target Korven the Prime
    .accept 31269 >>Accept The Scale-Lord
step
    .goto 422,59.13,53.27
    >>Kill |cRXP_ENEMY_Horrorscale Scorpid|r
    .complete 31270,1 --15/15 Horrorscale Scorpid slain
    .mob Horrorscale Scorpid
step
    .goto 422,61.74,54.07
    .complete 31024,1 --4/4 Meaty Turtle Haunch
step
    .goto 422,62.55,66.55
    >>Kill |cRXP_ENEMY_Ik'thik Genemancer|r
    .complete 31271,1 --3/3 Ik'thik Genemancer slain
    .mob Ik'thik Genemancer
step
    .goto 422,61.67,70.77
    .complete 31268,1 --3/3 Amber-Encrusted Brain
step
    .goto 422,60.90,71.95
    >>Kill |cRXP_ENEMY_Ik'thik Egg-Drone|r
    .complete 31271,2 --6/6 Ik'thik Egg-Drone slain
    .mob Ik'thik Egg-Drone
step
    .goto 422,66.40,66.21
    >>Kill |cRXP_ENEMY_Mistblade Scale-Lord|r
    .complete 31269,1 --1/1 Mistblade Scale-Lord slain
    .mob Mistblade Scale-Lord
step
    .goto 422,54.26,35.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
    .turnin 31024 >>Turn in Kunchong Treats
    .target Kaz'tik the Manipulator
    .turnin 31268 >>Turn in A Little Brain Work

step
    .goto 422,54.36,35.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rik'kal the Dissector|r
    .turnin 31271 >>Turn in Bad Genes
    .target Rik'kal the Dissector
step
    .goto 422,54.30,36.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
    .turnin 31269 >>Turn in The Fight Against Fear
    .target Korven the Prime
    .turnin 31270 >>Turn in The Fight Against Fear

set 2

step
    .goto 422,54.26,35.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
    .accept 31506 >>Accept Shackles of Manipulation
    .target Kaz'tik the Manipulator
step
    .goto 422,54.36,35.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rik'kal the Dissector|r
    .accept 31509 >>Accept Fear Takes Root
    .target Rik'kal the Dissector
    .accept 31508 >>Accept Specimen Request
step
    .goto 422,54.30,36.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
    .accept 31507 >>Accept Meltdown
    .target Korven the Prime
step
    .goto 422,29.99,73.05
    .complete 31508,1 --6/6 Kyparite Shards
step
    .goto 422,22.20,75.78
    >>Kill |cRXP_ENEMY_Zan'thik Amberhusk|r
    .complete 31507,1 --6/6 Zan'thik Amberhusk slain
    .mob Zan'thik Amberhusk
step
    .goto 422,28.46,71.80
    .complete 31509,1 --15/15 Dreadspore Bulbs destroyed
step
    .goto 422,32.34,78.35
    .complete 31506,1 --6/6 Zan'thik Shackles
step
    .goto 422,54.32,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
    .turnin 31507 >>Turn in Meltdown
    .target Korven the Prime
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rik'kal the Dissector|r
    .turnin 31509 >>Turn in Specimen Request
    .target Rik'kal the Dissector
    .turnin 31508 >>Turn in Specimen Request

    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
    .turnin 31506 >>Turn in Shackles of Manipulation
    .target Kaz'tik the Manipulator
    .accept 31808 >>Accept Rampage Against the Machine
step
    .goto 422,50.82,41.26
    .complete 31808,1 --1/1 Locate Kovok near the Clutches of Shek'zeer
step
    .goto 422,45.09,29.26
    >>Kill |cRXP_ENEMY_Mantid|r
    .complete 31808,2 --200/200 Mantid slain
    .mob Mantid
step
    .goto 422,54.25,35.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
    .turnin 31808 >>Turn in Rampage Against the Machine
    .target Kaz'tik the Manipulator

]])

-- August Celestial Dailies: Jade Forest
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Panda Remix
#name X) August Celestial Daillies
#internal


step
    .goto 371,53.90,61.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Tai-Feng|r
    .accept 30066 >>Accept Hidden Power
    .target Elder Sage Tai-Feng
    .accept 30065 >>Accept Arrows of Fortune
    .accept 30006 >>Accept The Darkness Around Us
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Storm-Sing|r
    .turnin 80429 >>Turn in Aid the August Celestials
    .target Elder Sage Storm-Sing
step
    .goto 371,52.63,55.65
    .complete 30065,1 --8/8 Defender's Arrow
step
    .goto 371,53.73,56.63
    .complete 30066,1 --6/6 Ancient Mantras delivered
step
    .goto 371,55.08,57.07
    >>Kill |cRXP_ENEMY_Sha invaders|r
    .complete 30006,1 --15/15 Sha invaders slain
    .mob Sha invaders
step
    .goto 371,53.90,61.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Tai-Feng|r
    .turnin 30006 >>Turn in Arrows of Fortune
    .target Elder Sage Tai-Feng
    .turnin 30066 >>Turn in Arrows of Fortune

    .turnin 30065 >>Turn in Arrows of Fortune

    .accept 30067 >>Accept The Shadow of Doubt
step
    .goto 371,57.53,62.36
    >>Kill |cRXP_ENEMY_Shadow of Doubt|r
    .complete 30067,1 --1/1 Shadow of Doubt slain
    .mob Shadow of Doubt
step
    .goto 371,53.91,61.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Tai-Feng|r
    .turnin 30067 >>Turn in The Shadow of Doubt
    .target Elder Sage Tai-Feng


    SET2
    step
    .goto 371,53.92,61.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Tai-Feng|r
    .accept 30066 >>Accept Hidden Power
    .target Elder Sage Tai-Feng
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Storm-Sing|r
    .accept 30064 >>Accept Saving the Sutras
    .target Elder Sage Storm-Sing
    .accept 30063 >>Accept Behind the Masks
step
    .goto 371,53.89,54.57
    .complete 30063,1 --8/8 Mask of Doubt
    .complete 30066,1 --6/6 Ancient Mantras delivered
step
    .goto 371,54.93,51.21
    .complete 30064,1 --6/6 Ancient Sutra
step
    .goto 371,53.89,61.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Storm-Sing|r
    .turnin 30063 >>Turn in Behind the Masks
    .target Elder Sage Storm-Sing
    .turnin 30064 >>Turn in Saving the Sutras

    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Tai-Feng|r
    .turnin 30066 >>Turn in Hidden Power
    .target Elder Sage Tai-Feng
    .accept 30068 >>Accept Flames of the Void
step
    .goto 371,55.57,54.36
    .complete 30068,1 --6/6 Void Flames doused
step
    .goto 371,53.91,61.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Sage Tai-Feng|r
    .turnin 30068 >>Turn in Flames of the Void
    .target Elder Sage Tai-Feng
]])

-- August Celestial Dailies: Kunlai
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Panda Remix
#name X) August Celestial Daillies
#internal


step
    .goto 379,67.24,55.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xuen|r
    .turnin 80431 >>Turn in Aid the August Celestials
    .target Xuen
    .accept 31517 >>Accept Contending With Bullies
    .accept 30879 >>Accept Round 1: Brewmaster Chani
step
    .goto 379,71.09,55.93
    >>Kill |cRXP_ENEMY_Shonuf|r
    .complete 31517,1 --1/1 Shonuf slain
    .mob Shonuf
step
    .goto 379,70.96,51.82
    .complete 30879,1 --1/1 Defeat Brewmaster Chani
step
    .goto 379,70.28,51.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xuen|r
    .turnin 30879 >>Turn in Round 1: Brewmaster Chani
    .target Xuen
    .accept 30881 >>Accept Round 2: Clever Ashyo & Ken-Ken
    .turnin 31517 >>Turn in Contending With Bullies

step
    .goto 379,71.67,45.35
    .complete 30881,2 --1/1 Defeat Ken-Ken
    .complete 30881,1 --1/1 Defeat Clever Ashyo
step
    .goto 379,71.76,44.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xuen|r
    .turnin 30881 >>Turn in Round 2: Clever Ashyo & Ken-Ken
    .target Xuen
    .accept 30883 >>Accept Round 3: The Wrestler
step
    .goto 379,66.74,46.53
    .complete 30883,1 --1/1 Defeat The Wrestler
step
    .goto 379,66.39,46.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xuen|r
    .turnin 30883 >>Turn in Round 3: The Wrestler
    .target Xuen
    .accept 30907 >>Accept Round 4: The P.U.G.
step
    .goto 379,69.02,43.76
    .complete 30907,3 --1/1 Defeat Tankiss
    .complete 30907,1 --1/1 Defeat Hackiss
    .complete 30907,2 --1/1 Defeat Healiss
step
    .goto 379,68.49,44.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xuen|r
    .turnin 30907 >>Turn in Round 4: The P.U.G.
    .target Xuen
    .turnin 80431 >>Turn in Aid the August Celestials



]])

-- August Celestial Dailies: Townlong
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Panda Remix
#name X) August Celestial Daillies
#internal

step
    .goto 388,38.90,62.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Adept Paosha|r
    .accept 30955 >>Accept Paying Tribute
    .target High Adept Paosha
step
    .goto 388,39.33,62.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogo the Younger|r
    .accept 30954 >>Accept A Blade is a Blade
    .target Ogo the Younger
step
    .goto 388,39.14,62.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yak-Keeper Kyana|r
    .accept 30953 >>Accept Fallen Sentinels
    .target Yak-Keeper Kyana
step
    .goto 388,39.35,62.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogo the Elder|r
    .turnin 31383 >>Turn in Defense At Niuzao Temple
    .target Ogo the Elder
    .accept 30952 >>Accept The Unending Siege
step
    .goto 388,41.36,58.39
    >>Kill |cRXP_ENEMY_Sra'thik attacker|r
    .complete 30952,1 --12/12 Sra'thik attacker slain
    .mob Sra'thik attacker
step
    .goto 388,41.80,57.85
    .complete 30954,1 --10/10 Sra'thik Weapon
step
    .goto 388,40.43,58.80
    .complete 30955,1 --6/6 Gather Food for Niuzao
step
    .goto 388,41.86,59.42
    .complete 30953,1 --8/8 Niuzao Sentinel healed
step
    .goto 388,39.33,62.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogo the Younger|r
    .turnin 30954 >>Turn in A Blade is a Blade
    .target Ogo the Younger
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogo the Elder|r
    .turnin 30952 >>Turn in The Unending Siege
    .target Ogo the Elder
step
    .goto 388,39.16,62.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yak-Keeper Kyana|r
    .turnin 30953 >>Turn in Fallen Sentinels
    .target Yak-Keeper Kyana
step
    .goto 388,38.91,62.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Adept Paosha|r
    .turnin 30955 >>Turn in Paying Tribute
    .target High Adept Paosha
--- SET 2 ---


step
    .goto 422,54.26,35.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
    .accept 31506 >>Accept Shackles of Manipulation
    .target Kaz'tik the Manipulator
step
    .goto 422,54.36,35.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rik'kal the Dissector|r
    .accept 31509 >>Accept Fear Takes Root
    .target Rik'kal the Dissector
    .accept 31508 >>Accept Specimen Request
step
    .goto 422,54.30,36.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
    .accept 31507 >>Accept Meltdown
    .target Korven the Prime
step
    .goto 422,29.99,73.05
    .complete 31508,1 --6/6 Kyparite Shards
step
    .goto 422,22.20,75.78
    >>Kill |cRXP_ENEMY_Zan'thik Amberhusk|r
    .complete 31507,1 --6/6 Zan'thik Amberhusk slain
    .mob Zan'thik Amberhusk
step
    .goto 422,28.46,71.80
    .complete 31509,1 --15/15 Dreadspore Bulbs destroyed
step
    .goto 422,32.34,78.35
    .complete 31506,1 --6/6 Zan'thik Shackles
step
    .goto 422,54.32,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Korven the Prime|r
    .turnin 31507 >>Turn in Meltdown
    .target Korven the Prime
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rik'kal the Dissector|r
    .turnin 31509 >>Turn in Specimen Request
    .target Rik'kal the Dissector
    .turnin 31508 >>Turn in Specimen Request

    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
    .turnin 31506 >>Turn in Shackles of Manipulation
    .target Kaz'tik the Manipulator
    .accept 31808 >>Accept Rampage Against the Machine
step
    .goto 422,50.82,41.26
    .complete 31808,1 --1/1 Locate Kovok near the Clutches of Shek'zeer
step
    .goto 422,45.09,29.26
    >>Kill |cRXP_ENEMY_Mantid|r
    .complete 31808,2 --200/200 Mantid slain
    .mob Mantid
step
    .goto 422,54.25,35.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaz'tik the Manipulator|r
    .turnin 31808 >>Turn in Rampage Against the Machine
    .target Kaz'tik the Manipulator
step
    .goto 388,39.40,61.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Commander Qipan|r
    .turnin 80430 >>Turn in Aid the August Celestials
    .target Sentinel Commander Qipan
    .accept 30957 >>Accept The Overwhelming Swarm
step
    .goto 388,39.32,62.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogo the Younger|r
    .accept 30959 >>Accept The Big Guns
    .target Ogo the Younger
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogo the Elder|r
    .accept 30956 >>Accept The Siege Swells
    .target Ogo the Elder
step
    .goto 388,38.81,62.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Adept Paosha|r
    .accept 30958 >>Accept In Battle's Shadow
    .target High Adept Paosha
step
    .goto 388,41.46,59.83
    >>Kill |cRXP_ENEMY_Sra'thik attacker|r
    .complete 30956,1 --25/25 Sra'thik attacker slain
    .mob Sra'thik attacker
step
    .goto 388,40.26,60.67
    >>Kill |cRXP_ENEMY_Sra'thik Kunchong|r
    .complete 30957,1 --4/4 Sra'thik Kunchong slain
    .mob Sra'thik Kunchong
step
    .goto 388,42.51,61.70
    .complete 30958,1 --10/10 Loose Brick
step
    .goto 388,42.82,63.15
    .complete 30959,1 --3/3 Sra'thik War Wagon exploded
step
    .goto 388,39.41,61.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Commander Qipan|r
    .turnin 30957 >>Turn in The Overwhelming Swarm
    .target Sentinel Commander Qipan
    .turnin 80430 >>Turn in Aid the August Celestials

step
    .goto 388,39.33,62.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogo the Younger|r
    .turnin 30959 >>Turn in The Big Guns
    .target Ogo the Younger
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ogo the Elder|r
    .turnin 30956 >>Turn in The Siege Swells
    .target Ogo the Elder
step
    .goto 388,39.16,62.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yak-Keeper Kyana|r
    .turnin 30958 >>Turn in In Battle's Shadow
    .target Yak-Keeper Kyana


step
    .goto 388,43.86,65.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ku-Mo|r
    .accept 30931 >>Accept My Father's Crossbow
    .target Ku-Mo
step
    .goto 388,38.70,65.41
    .complete 30931,1 --1/1 Father's Crossbow
step
    .goto 388,43.89,65.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ku-Mo|r
    .turnin 30931 >>Turn in My Father's Crossbow
    .target Ku-Mo

step
    .goto 388,39.42,61.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Commander Qipan|r
    .accept 30932 >>Accept Father's Footsteps
    .target Sentinel Commander Qipan
step
    .goto 388,39.24,61.19
    .complete 30932,4 --1/1 Find Sentinel Yalo
step
    .goto 388,37.56,61.35
    .complete 30932,2 --1/1 Find Father's Shield
step
    .goto 388,37.37,60.93
    .complete 30932,1 --1/1 Find Father's Bedroll
step
    .goto 388,37.64,63.89
    .complete 30932,3 --1/1 Find Ha-Cha
step
    .goto 388,39.45,61.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ku-Mo|r
    .turnin 30932 >>Turn in Father's Footsteps
    .target Ku-Mo

]])

-- August Celestial Dailies: Krasarang
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Panda Remix
#name X) August Celestial Daillies
#internal

step
    .goto 418,31.34,63.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelonius|r
    .accept 30718 >>Accept Students of Chi-Ji
    .target Thelonius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kuo-Na Quillpaw|r
    .accept 30716 >>Accept Chasing Hope
    .target Kuo-Na Quillpaw
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yan Quillpaw|r
    .accept 30717 >>Accept Gifts of the Great Crane
    .target Yan Quillpaw
step
    .goto 418,33.20,80.65
    .complete 30717,1 --10/10 Gift of the Great Crane
step
    .goto 418,33.88,79.47
    .complete 30718,1 --10/10 Student of Chi-Ji dueled
step
    .goto 418,32.50,69.62
    .complete 30716,1 --3/3 Spirit of the Crane found
step
    .goto 418,31.33,63.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelonius|r
    .turnin 30718 >>Turn in Students of Chi-Ji
    .target Thelonius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kuo-Na Quillpaw|r
    .turnin 30716 >>Turn in Chasing Hope
    .target Kuo-Na Quillpaw
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yan Quillpaw|r
    .turnin 30717 >>Turn in Gifts of the Great Crane
    .target Yan Quillpaw
step
    .goto 418,31.34,63.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelonius|r
    .turnin 80433 >>Turn in Aid the August Celestials
    .target Thelonius
    .accept 30725 >>Accept Ellia Ravenmane
step
    .goto 418,31.84,71.11
    .complete 30725,1 --1/1 Ellia Ravenmane defeated
step
    .goto 418,31.34,63.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thelonius|r
    .turnin 30725 >>Turn in Ellia Ravenmane
    .target Thelonius


]])

-- Domination Point Dailies Horde
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Panda Remix
#name X) Domination Point Dailies
#internal

step
    #loop
    .goto 418,10.07,53.86,15,0
    .goto 418,10.51,52.99,20,0
    .goto 418,10.33,55.68,15,0
    .goto 418,12.74,56.74,15,0
    .goto 418,12.91,56.13,15,0
    .goto 418,13.79,55.78,15,0
    +|cRXP_WARN_Accept all the Domination Point Dailies|r
    .questcount <3,32235,32126,32123,32214,32199,32222,32136
    .target Master Snowdrift
    .target Ling of the Six Pools
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
    >>Click on |cRXP_PICK_Alliance Supply Drop|r
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
    .goto 418,10.25,53.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brolic|r
    .dailyturnin 32126 >>Turn in Tear It Up
    .target Brolic
step
    .isOnQuest 32199
    .goto 418,13.79,55.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boss-Lady Trixel|r
    .accept 32136 >>Accept Work Order: Fuel
    .target Boss-Lady Trixel
step
    .isOnQuest 32199
    .goto 418,18.58,55.87
    >>Kill |cRXP_ENEMY_Polluted Visceclaws|r and |cRXP_ENEMY_Polluted Visceclaw Scuttlers|r. Loot them for the |T645112:0|t[Polluted Visceclaw Meat]
    .complete 32199,1,3 --3/5 Polluted Viseclaw Meat
    .mob Polluted Visceclaw
    .mob Polluted Visceclaw Scuttler
step
    .isOnQuest 32199
    #completewith next
    >>Kill |cRXP_ENEMY_Polluted Visceclaws|r and |cRXP_ENEMY_Polluted Visceclaw Scuttlers|r. Loot them for the |T645112:0|t[Polluted Visceclaw Meat]
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
    >>Kill |cRXP_ENEMY_Polluted Visceclaws|r and |cRXP_ENEMY_Polluted Visceclaw Scuttlers|r. Loot them for the |T645112:0|t[Polluted Visceclaw Meat]
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
    >>Kill |cRXP_ENEMY_Polluted Visceclaws|r and |cRXP_ENEMY_Polluted Visceclaw Scuttlers|r. Loot them for the |T645112:0|t[Polluted Visceclaw Meat]
    .complete 32199,1 --5/5 Polluted Viseclaw Meat
    .mob Polluted Visceclaw
    .mob Polluted Visceclaw Scuttler
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
    .isQuestComplete 32214
    .goto 418,12.91,56.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r
    .dailyturnin 32214 >>Turn in Bilgewater Infiltrators
    .target Rivett Clutchpop
step
    .isQuestComplete 32222
    .goto 418,10.07,53.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Gro'tash|r
    .turnin 32222 >>Turn in WANTED: Chief Engineer Cogwrench
    .target Blood Guard Gro'tash
step
    .xp >69,1
    .isQuestTurnedIn 32449
    .goto 418,10.07,53.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Blood Guard Gro'tash|r
    .target Blood Guard Gro'tash
    .accept 32449 >>Accept The Ruins of Ogudei
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
    .goto 418,10.23,53.63
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
    >>Click on the |cRXP_PICK_Powder|r
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
    >>Click on the |cRXP_PICK_Powder|r
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
    .goto 418,10.37,53.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brolic|r
    .dailyturnin 32127 >>Turn in All Dead, All Dead
    .target Brolic

]])

-- Landfall Daillies Alliance
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Panda Remix
#name X) Landfall Daillies Alliance
#internal


---SET1---
step
    .goto 418,89.66,32.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishka|r
    .accept 32150 >>Accept Supply Block
    .target Mishka
    .accept 32149 >>Accept Resource Gathering
step
    .goto 418,89.69,33.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Troteman|r
    .accept 32153 >>Accept Hero Killer
    .target Marshal Troteman
    .accept 32151 >>Accept Tower Defense
    .accept 32148 >>Accept Attack! Move!
step
    .goto 418,79.16,27.32
    >>Kill |cRXP_ENEMY_Horde Hero|r
    .complete 32153,1 --1/1 Horde Hero slain
    .mob Horde Hero
step
    .goto 418,76.90,22.55
    .complete 32149,1 --12/12 Lion's Landing Lumber
step
    .goto 418,77.22,22.10
    >>Kill |cRXP_ENEMY_Dominance Shaman or Raider|r
    .complete 32148,1 --12/12 Dominance Shaman or Raider slain
    .mob Dominance Shaman or Raider
step
    .goto 418,76.06,18.93
    .complete 32151,1 --20/20 Animatable Stone
step
    .goto 418,77.85,30.09
    .complete 32150,1 --8/8 Domination Point Supplies destroyed
step
    .goto 418,89.66,32.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishka|r
    .turnin 32150 >>Turn in Supply Block
    .target Mishka
    .turnin 32149 >>Turn in Resource Gathering

step
    .goto 418,89.67,33.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Troteman|r
    .turnin 32153 >>Turn in Hero Killer
    .target Marshal Troteman
    .turnin 32148 >>Turn in Tower Defense

    .turnin 32151 >>Turn in Tower Defense
---SET2---

step
    .goto 418,89.82,32.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Amber Kearnen|r
    .accept 32451 >>Accept Send A Message
    .target Amber Kearnen


step
    .goto 418,16.46,79.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky Admiral Rogers|r
    .turnin 32451 >>Turn in Send A Message
    .target Sky Admiral Rogers
    .accept 32142 >>Accept We Will Rock You
    .accept 32146 >>Accept Hammer to Fall
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkmaster Overspark|r
    .accept 32143 >>Accept A Kind of Magic
    .target Tinkmaster Overspark
step
    .goto 418,16.66,78.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishka|r
    .accept 32144 >>Accept Under Pressure
    .target Mishka
step
    .goto 418,11.66,67.84
    .complete 32143,1 --1/1 Eliminate the Beachhead Demolishers
step
    .goto 418,8.38,65.87
    .complete 32144,1 --8/8 Horde Supply Crates Destroyed
step
    .goto 418,8.65,61.42
    >>Kill |cRXP_ENEMY_Domination Orc|r
    .complete 32142,1 --10/10 Domination Orc slain
    .mob Domination Orc
step
    .goto 418,8.78,60.67
    >>Kill |cRXP_ENEMY_Heavy Mook|r
    .complete 32146,1 --5/5 Heavy Mook slain
    .mob Heavy Mook
step
    .goto 418,10.89,60.91
    .complete 32143,2 --1/1 Eliminate the Horde Wolves
step
    .goto 418,12.64,56.60
    .complete 32143,3 --1/1 Destroy the Horde Bomb Stockpile
step
    .goto 418,12.64,56.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shiekrunners|r
    .turnin 32143 >>Turn in A Kind of Magic
    .target Shiekrunners
    .accept 32145 >>Accept Don't Lose Your Head
step
    .goto 418,13.29,56.25
    >>Kill |cRXP_ENEMY_Chief Bombgineer Snicklefritz|r
    .complete 32145,3 --1/1 Chief Bombgineer Snicklefritz slain
    .mob Chief Bombgineer Snicklefritz
step
    .goto 418,13.40,57.85
    >>Kill |cRXP_ENEMY_Stone Guard Ruk'Ra|r
    .complete 32145,2 --1/1 Stone Guard Ruk'Ra slain
    .mob Stone Guard Ruk'Ra
step
    .goto 418,10.38,58.00
    >>Kill |cRXP_ENEMY_Or'Dac|r
    .complete 32145,1 --1/1 Or'Dac slain
    .mob Or'Dac
step
    .goto 418,16.68,78.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishka|r
    .turnin 32144 >>Turn in Under Pressure
    .target Mishka
step
    .goto 418,16.47,79.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky Admiral Rogers|r
    .turnin 32142 >>Turn in We Will Rock You
    .target Sky Admiral Rogers
    .turnin 32146 >>Turn in Hammer to Fall

step
    .goto 418,16.52,79.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tinkmaster Overspark|r
    .turnin 32145 >>Turn in Don't Lose Your Head
    .target Tinkmaster Overspark

    ---SET1---

step
    .goto 418,68.31,43.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John "Big Hook" Marsock|r
    .accept 30753 >>Accept Jumping the Shark
    .target John "Big Hook" Marsock
step
    .goto 418,67.94,45.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fisherman Haito|r
    .accept 30586 >>Accept Jagged Abalone
    .target Fisherman Haito
step
    .goto 418,68.91,37.96
    .complete 30586,1 --9/9 Jagged Abalone Meat
step
    .goto 418,68.33,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_John "Big Hook" Marsock|r
    .turnin 30753 >>Turn in Jumping the Shark
    .target John "Big Hook" Marsock
step
    .goto 418,67.93,45.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fisherman Haito|r
    .turnin 30586 >>Turn in Jagged Abalone
    .target Fisherman Haito
---SET2---

step
    .goto 418,89.70,33.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marshal Troteman|r
    .accept 32116 >>Accept Priorities, People!
    .target Marshal Troteman
step
    .goto 419,30.20,27.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hilda Hornswaggle|r
    .turnin 32116 >>Turn in Priorities, People!
    .target Hilda Hornswaggle
    .accept 32347 >>Accept Eviction Notice
    .accept 32346 >>Accept Oi Ain't Afraid o' No Ghosts!
    .accept 32122 >>Accept Ogudei's Lieutenants
    .accept 32121 >>Accept The Spirit Trap
    .accept 32115 >>Accept Shackles of the Past
step
    .goto 421,57.97,3.19
    .complete 32115,1 --14/14 Troubled Slave Spirits released
step
    .goto 421,62.17,1.69
    >>Kill |cRXP_ENEMY_Spiritbound Mogu|r
    .complete 32346,1 --12/12 Spiritbound Mogu slain
    .mob Spiritbound Mogu
step
    .goto 421,81.92,96.31
    .complete 32121,1 --3/3 Spirit Trap destroyed
step
    .goto 420,68.66,78.64
    >>Kill |cRXP_ENEMY_Gen-li, Twister of Words|r
    .complete 32122,1 --1/1 Gen-li, Twister of Words slain
    .mob Gen-li, Twister of Words
    >>Kill |cRXP_ENEMY_Meng-do, Strength of Mountains|r
    .complete 32122,2 --1/1 Meng-do, Strength of Mountains slain
    .mob Meng-do, Strength of Mountains
step
    .goto 421,60.11,52.81
    >>Kill |cRXP_ENEMY_Reliquary|r
    .complete 32347,1 --10/10 Reliquary slain
    .mob Reliquary
step
    .goto 419,30.07,27.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hilda Hornswaggle|r
    .turnin 32347 >>Turn in Eviction Notice
    .target Hilda Hornswaggle
    .turnin 32115 >>Turn in Shackles of the Past

    .turnin 32346 >>Turn in Oi Ain't Afraid o' No Ghosts!

    .turnin 32121 >>Turn in The Spirit Trap

    .turnin 32122 >>Turn in Ogudei's Lieutenants
]])

-- Shado-Pan Dailies
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Panda Remix
#name X) Shado-Pan Daillies
#internal

step
    #loop
    .goto 388,49.61,70.50,10,0
    .goto 388,49.01,71.33,10,0
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Snowdrift|r or |cRXP_FRIENDLY_Ling of the Six Pools|r
    .questcount <4,31113,31114,31116,31118,31119,31196,31197,31199,31200,31201,31203,31198 >>|cRXP_WARN_Get all the Shado-Pan Dailies|r
    .target Master Snowdrift
    .target Ling of the Six Pools
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
    >>Kill |cRXP_ENEMY_Defiled Spirits|r. Loot them for the |T132859:0|t[|cRXP_LOOT_Ancient Spirit Dust|r]
    >>Click on the |cRXP_PICK_Defiled Yaungol Remains|r (you need 4 dust per remains)
    .complete 31116,1 --8/8 Spirits Returned to Their Remnants
    .mob Defiled Spirit
step
    #label CipheredScroll
    .isOnQuest 31118
    >>Kill |cRXP_ENEMY_Deadtalkers|r and |cRXP_ENEMY_Uruk|r. Loot them for the |T1:0|t[Ciphered Scroll]
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
    >>Kill |cRXP_ENEMY_Defiled Spirits|r. Loot them for the |T132859:0|t[|cRXP_LOOT_Ancient Spirit Dust|r]
    >>Click on the |cRXP_PICK_Defiled Yaungol Remains|r (you need 4 dust per remains)
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
    >>Click on |cRXP_PICK_Highly Explosive Yaungol Oil Barrel|r
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
    >>Click on |cRXP_PICK_Highly Explosive Yaungol Oil Barrel|r
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
    >>Click on the |cRXP_PICK_Sra'thik Siege Weapon|r
    .goto 388,27.44,54.78
    .complete 31199,2 --1/1 Small Southern Siege Weapon destroyed
step
    .isOnQuest 31199
    >>Click on the |cRXP_PICK_Sra'thik Siege Weapon|r
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
    .goto 388,23.69,55.50
    >>Click on the |cRXP_PICK_Sra'thik Idol|r
    .complete 31198,1 --1/1 Southern idol
step
    .isOnQuest 31198
    .goto 388,21.53,49.24
    >>Click on the |cRXP_PICK_Sra'thik Idol|r
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
    >>Click on the |cRXP_PICK_Sra'thik Idol|r
    .complete 31198,4 --1/1 Eastern idol
step
    .isOnQuest 31199
    >>Click on the |cRXP_PICK_Sra'thik Siege Weapon|r
    .goto 388,27.18,41.18
    .complete 31199,3 --1/1 Large Northern Siege Weapon destroyed
step
    .isOnQuest 31199
    >>Click on the |cRXP_PICK_Sra'thik Siege Weapon|r
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
    >>Click on the |cRXP_PICK_Sra'thik Idol|r
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
]])
