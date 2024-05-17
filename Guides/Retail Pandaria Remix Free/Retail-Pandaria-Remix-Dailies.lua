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


]])

-- August Celestial Dailies: Krasarang
RXPGuides.RegisterGuide([[
#df
#version 1
#group RestedXP Panda Remix
#name X) August Celestial Daillies
#internal


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
#name X) Landfall Daillies
#internal


]])
