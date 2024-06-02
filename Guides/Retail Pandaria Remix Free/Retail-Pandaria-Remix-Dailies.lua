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

--     .accept 30155 >>Accept Restoring the Balance
--     -- .daily 31707 30158 31712 30155 31698 31706
--     .target Instructor Skythorn
-- -- step
-- --     .goto 371,57.50,45.29
-- --     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Your Hatchling|r
-- --     .accept 30156 >>Accept Feeding Time
-- --     -- .daily 30150 30151 30154 30156 31704 31708 31710
-- --     .target Your Hatchling
-- -- step
--     -- .goto 371,57.5,44.7
--     -- >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jenova Longeye|r
--     -- .accept 30146 >>Accept Snack Time --x shiek : fishing quest
--     -- .accept 30147 >>Accept Fragments of the Past --x shiek : archaeology quest
--     -- .accept 30148 >>Accept Just a Flesh Wound --x shiek : first aid
--     -- .accept 30149 >>Accept A Feast for the Senses --x shiek : cooking quest
--     -- .target Jenova Longeye
-- step
--     .goto 371,57.74,44.85
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
--     .accept 31194 >>Accept Slitherscale Suppression
--     -- .daily 31194,31701,31702,31703,31705,31711,31715
--     .target Elder Anli
-- step
--     .goto 371,58.46,44.70
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Suchi the Sweet|r
--     .accept 30157 >>Accept Emptier Nests
--     .daily 30157,30159
--     .target Suchi the Sweet
-- step
--     #completewith next
--     .isOnQuest 80013
--     .goto 371,65.25,37.20
--     >>Use |T134376:0|t[Bronze Timepiece]
--     .itemcount 216712,1
--     .use 216712
-- -- step
-- --     #completewith next
-- --     >>Kill |cRXP_ENEMY_Slitherscale Saurok|r
-- --     .complete 30155,1 --8/8 Slitherscale saurok slain
-- --     .mob Slitherscale Eggdrinker
-- step
--     .goto 371,69.73,31.28
--     >>Kill |cRXP_ENEMY_Slitherscale Lizard-Lord|r
--     .complete 31194,1 --1/1 Slitherscale Lizard-Lord slain
--     .mob slitherscale lizard-lord
-- step
--     #completewith next
--     .isOnQuest 80013
--     .goto 371,65.25,37.20
--     >>Use |T134376:0|t[Bronze Timepiece]
--     .itemcount 216712,1
--     .use 216712
-- step
--     #completewith Slitherscale Saurok 2
--     #hidewindow
--     #loop
--     .goto 371,65.49,33.79,20,0
--     .goto 371,65.19,33.09,20,0
--     .goto 371,64.55,32.55,20,0
--     .goto 371,64.68,32.01,20,0
--     .goto 371,64.59,31.15,20,0
--     .goto 371,64.51,29.51,20,0
--     .goto 371,65.37,29.39,20,0
--     .goto 371,65.31,28.41,20,0
--     .goto 371,64.72,27.94,20,0
--     .goto 371,64.08,28.5,20,0
--     .goto 371,63.85,30.86,20,0
--     .goto 371,63.66,32.7,20,0
--     +1
-- step
--     #completewith Interact with Windward Hatchlings 2
--     >>Kill |cRXP_ENEMY_Slitherscale Saurok|r
--     .complete 30155,1 --8/8 Slitherscale saurok slain
--     .mob Slitherscale Eggdrinker
-- step
--     .isOnQuest 30157
--     .cast 110171 >>Interact with a |cRXP_FRIENDLY_Windward Hatchling|r
--     .use 78947
--     .target Windward Hatchlings
-- step
--     .isOnQuest 30157
--     .cast 110171 >>Interact with a |cRXP_FRIENDLY_Windward Hatchling|r
--     .use 78947
--     .target Windward Hatchlings
-- step
--     .isOnQuest 30157
--     .cast 110171 >>Interact with a |cRXP_FRIENDLY_Windward Hatchling|r
--     .use 78947
--     .target Windward Hatchlings
-- step
--     .isOnQuest 30157
--     .cast 110171 >>Interact with a |cRXP_FRIENDLY_Windward Hatchling|r
--     .use 78947
--     .target Windward Hatchlings
-- step
--     .isOnQuest 30157
--     .cast 110171 >>Interact with a |cRXP_FRIENDLY_Windward Hatchling|r
--     .use 78947
--     .target Windward Hatchlings
-- step
--     #label Interact with Windward Hatchlings 2
--     .isOnQuest 30157
--     .cast 110171 >>Interact with a |cRXP_FRIENDLY_Windward Hatchling|
--     .use 78947
--     .target Windward Hatchlings
-- step
--     #label Slitherscale Saurok 2
--     >>Kill |cRXP_ENEMY_Slitherscale Saurok|r
--     .complete 30155,1 --8/8 Slitherscale saurok slain
--     .mob Slitherscale Eggdrinker
-- step
--     .goto 371,65.18,30.07,-1
--     .goto 371,65.64,30.22,-1
--     .goto 371,65.71,30.69,-1
--     .goto 371,65.8,31.25,-1
--     >>|cRXP_WARN_Follow the Arrow|r
--     .complete 30157,1 --6/6 Windward Hatchlings returned to their nests
-- step
--     #completewith HatchlingFedCloud
--     .goto 371,65.25,37.20
--     >>Use |T134376:0|t[Bronze Timepiece]
--     .itemcount 216712,1
--     .use 216712
-- step
--     .isOnQuest 30156
--     >>Kill |cRXP_ENEMY_Saltback Yearling|r and |cRXP_ENEMY_Saaltback Turtle.|r Loot them for |cRXP_LOOT_|T237339:0|tSaltback Meat Scrap.|r
--     .collect 79028,15
--     .mob Saltback Turtle
-- step
--     .isOnQuest 30156
--     .cast 110456 >> Use |T237339:0|t[Saltback Meat Scrap] to create |T237338:0|t[Saltback Meat]
--     .use 79028
-- step
--     .isOnQuest 30156
--     .cast 110456 >> Use |T237339:0|t[Saltback Meat Scrap] to create |T237338:0|t[Saltback Meat]
--     .use 79028
-- step
--     .isOnQuest 30156
--     .cast 110456 >> Use |T237339:0|t[Saltback Meat Scrap] to create |T237338:0|t[Saltback Meat]
--     .use 79028
-- step
--     #label HatchlingFedCloud
--     >>Click on your |cRXP_FRIENDLY_Hatchling|r to feed him.
--     .complete 30156,1 --3/3 Hatchling fed
--     .use 79027
--     .target Azure Hatchling
--     -- insert other hatchling x2
-- step
--     .goto 371,57.73,44.83
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r
--     .turnin 30155 >>Turn in Restoring the Balance
--     -- .turnin 30156 >>Turn in Feeding Time
--     .turnin 30157 >>Turn in Emptier Nests
--     .turnin 31194 >>Turn in Slitherscale Suppression
--     .target Elder Anli
-- step
--     .goto 371,61.70,26.59
--     >>Kill |cRXP_ENEMY_shadowfae trickster|r
--     .complete 31699,1 --7/7 Shadowfae Trickster slain
--     .mob shadowfae trickster
-- step
--     .goto 371,62.10,24.48
--     >>Kill |cRXP_ENEMY_windward tiger|r
--     .complete 31698,1 --8/8 Windward Tiger slain
--     .mob windward tiger
-- step
--     .goto 371,62.69,26.71
--     >>Kill |cRXP_ENEMY_shadowfae madcap|r
--     .complete 31703,1 --1/1 Shadowfae Madcap slain
--     .mob shadowfae madcap
-- step
--     .goto 371,61.59,26.61
--     >>Kill |cRXP_ENEMY_shadowfae trickster|r
--     .complete 31699,1 --7/7 Shadowfae Trickster slain
--     .mob shadowfae trickster
-- step
--     .goto 371,62.02,23.76
--     .complete 30154,1 --5/5 Tiger Flank
-- step
--     .goto 371,64.87,25.59
--     >>Kill |cRXP_ENEMY_windward huntress|r
--     .complete 31701,1 --1/1 Windward Huntress slain
--     .mob windward huntress

]])

-- Vale Dailies
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Panda Remix
#name X) Vale Dailies 1
#internal

step
    .goto 390,21.48,71.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
    --.turnin 31385 >>Turn in The Golden Lotus
    .accept 30277 >>Accept The Crumbling Hall
    .target +Anji Autumnlight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kun Autumnlight|r
    .accept 30266 >>Accept Bloodied Skies
    .accept 30243 >>Accept Mantid Under Fire
    .target +Kun Autumnlight
step
    .goto 390,19.61,75.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hai-Me Heavyhands|r
    .accept 30306 >>Accept The Battle Ring
    .target Hai-Me Heavyhands
step
    .goto 390,19.81,74.28
    .complete 30306,1 --20/20 Shado-Pan Trainees defeated
step
    .goto 390,19.61,75.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hai-Me Heavyhands|r
    .turnin 30306 >>Turn in The Battle Ring
    .target Hai-Me Heavyhands
step
    .goto 390,18.48,71.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yumi Goldenpaw|r
    .accept 30242 >>Accept Survival Ring: Blades
    .target Yumi Goldenpaw
step
    >>Stand exactly on top of the waypoint
    .goto 390,19.72,67.97
    .complete 30242,1 --1/1 Live through the Survival Ring for 60 seconds
step
    .goto 390,18.50,71.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yumi Goldenpaw|r
    .turnin 30242 >>Turn in Survival Ring: Blades
    .target Yumi Goldenpaw



-- step
-- .goto 390,21.38,71.45
-- >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kun Autumnlight|r
-- .accept 30266 >>Accept Bloodied Skies
-- .target Kun Autumnlight
-- .accept 30243 >>Accept Mantid Under Fire
-- step
-- .goto 390,21.51,71.62
-- >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
-- .turnin 80427 >>Turn in Aid the Golden Lotus
-- .target Anji Autumnlight
-- .accept 30280 >>Accept The Thunder Below
-- step
-- .goto 390,19.49,75.83
-- >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hai-Me Heavyhands|r
-- .accept 30306 >>Accept The Battle Ring
-- .target Hai-Me Heavyhands
-- step
-- .goto 390,18.48,71.47
-- >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yumi Goldenpaw|r
-- .accept 30240 >>Accept Survival Ring: Flame
-- .target Yumi Goldenpaw
-- step
-- .goto 390,19.35,73.47
-- .complete 30306,1 --20/20 Shado-Pan Trainees defeated
-- step
-- .goto 390,19.51,75.80
-- >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hai-Me Heavyhands|r
-- .turnin 30306 >>Turn in The Battle Ring
-- .target Hai-Me Heavyhands
-- step
-- .goto 390,18.84,67.63
-- .complete 30240,1 --1/1 Live through the Survival Ring for 60 seconds
-- step
-- .goto 390,18.09,63.55
-- >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelari Featherfoot|r
-- .accept 30261 >>Accept Roll Club: Serpent's Spine
-- .target Kelari Featherfoot
-- >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelari Featherfoot|r
-- .complete 30261,1 --1/1 Speak to Kelari Featherfoot
-- .target Kelari Featherfoot
-- step
-- .goto 424,39.06,78.02
-- .complete 30261,2 --1/1 Serpent's Spine Roll Course finished
-- step
-- .goto 390,18.10,63.58
-- >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kelari Featherfoot|r
-- .turnin 30261 >>Turn in Roll Club: Serpent's Spine
-- .target Kelari Featherfoot
-- step
-- .goto 390,18.49,71.53
-- >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yumi Goldenpaw|r
-- .turnin 30240 >>Turn in Survival Ring: Flame
-- .target Yumi Goldenpaw
-- step
-- .goto 390,2.63,54.92
-- >>Kill |cRXP_ENEMY_Krik'thik Hiveling|r
-- .complete 30243,1 --80/80 Krik'thik Hiveling slain
-- .mob Krik'thik Hiveling
-- step
-- .goto 390,7.50,46.86
-- >>Kill |cRXP_ENEMY_Krik'thik Swarmer|r
-- .complete 30266,1 --30/30 Krik'thik Swarmer slain
-- .mob Krik'thik Swarmer
-- step
-- .goto 396,55.76,59.55
-- >>Kill |cRXP_ENEMY_Milau|r
-- .complete 30280,1 --1/1 Milau slain
-- .mob Milau
-- step
-- .goto 390,21.37,71.47
-- >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kun Autumnlight|r
-- .turnin 30243 >>Turn in Mantid Under Fire
-- .target Kun Autumnlight
-- .turnin 30266 >>Turn in Bloodied Skies

-- step
-- .goto 390,21.43,71.65
-- >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
-- .turnin 30280 >>Turn in The Thunder Below
-- .target Anji Autumnlight
-- .turnin 80427 >>Turn in Aid the Golden Lotus


step
    .goto 395,42.08,27.81
    .complete 30277,1 --1/1 Deactivate Spirit Wall
step
    .goto 395,49.46,30.70
    .complete 30277,2 --1/1 Ancient Guo-Lai Artifact

    step
    .goto 390,21.52,71.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
    .accept 30277 >>Accept The Crumbling Hall
    .target Anji Autumnlight

    step
    .goto 390,21.47,71.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Anji Autumnlight|r
    .turnin 30277 >>Turn in The Crumbling Hall
    .target Anji Autumnlight
    .turnin 80427 >>Turn in Aid the Golden Lotus
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


]])

-- August Celestial Dailies: Jade Forest
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Panda Remix
#name X) August Celestial Daillies
#internal


]])

-- August Celestial Dailies: Kunlai
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Panda Remix
#name X) August Celestial Daillies
#internal


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
    .goto 388,39.41,61.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sentinel Commander Qipan|r
    .turnin 80430 >>Turn in Aid the August Celestials
    .target Sentinel Commander Qipan
    .turnin 80430 >>Turn in Aid the August Celestials

    .turnin 80430 >>Turn in Aid the August Celestials

    .turnin 80430 >>Turn in Aid the August Celestials

    .turnin 80430 >>Turn in Aid the August Celestials
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

-- Landafall Dailies
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Panda Remix
#name X) Landfall Daillies
#internal


]])

-- Anglers Dailies
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

]])
