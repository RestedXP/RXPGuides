----------------------------
---x SIDEQUESTS
----------------------------

-- Jade Forest Tian Monastery
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Pandaria Remix
#name 1) Jade Forest Side Quests Tian Monastery
#internal

step
    #completewith next
    .cast 441154 >> Use |T134491:0|t[Nostwin's Voucher] to teleport to Infinite Bazaar.
    .use 217930
    .itemcount 217930,1
step
    .goto 371,42.96,27.44 --x left
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Arturos|r.
    .accept 80446 >>Accept Looking for Group
    .target Arturos
-- step
--     #completewith next
--     .goto 371,43.01,27.58,10,0
--     .vendor >>Talk to |cRXP_FRIENDLY_Lidamorrutu|r and buy additional gems |cRXP_WARN_It's recommended for faster leveling but uses bronze, a cosmetic currency|r.
--     .skipgossip
--     .target Lidamorrutu
step
    #hidewindow
    #completewith All
    #label all2
    .achievement 20005,0
    .achievement 19881,0
    .achievement 20006,0
    .achievement 20004,0
    .achievement 40223,0
step
    #completewith all2
    .goto 371,43.01,27.58
    .achievementComplete 40223,1
    .collect 208555,1 >>Talk to |cRXP_FRIENDLY_Lidamorrutu|r and buy |T634012:0|t[Timerunner's Idol.]
    .skipgossip
    .buy 208555,1
    .target Lidamorrutu
step
    #completewith all2
    .goto 371,43.01,27.58
    .achievementComplete 20004,1
    .collect 208487,1 >>Talk to |cRXP_FRIENDLY_Lidamorrutu|r and buy |T629696:0|t[Timerunner's Ring.]
    .skipgossip
    .buy 208487,1
    .target Lidamorrutu
step
    #completewith all2
    .goto 371,43.01,27.58
    .achievementComplete 20005,1
    .collect 208491,1 >>Talk to |cRXP_FRIENDLY_Lidamorrutu|r and buy |T645143:0|t[Timerunner's Seal.]
    .skipgossip
    .buy 208491,1
    .target Lidamorrutu
step
    #completewith all2
    .goto 371,43.01,27.58
    .achievementComplete 20006,1
    .collect 210523,1 >>Talk to |cRXP_FRIENDLY_Lidamorrutu|r and buy |T632849:0|t[Timerunner's Amulet.]
    .skipgossip
    .buy 210523,1
    .target Lidamorrutu
step
    #completewith all2
    #label All
    .goto 371,43.01,27.58
    .achievementComplete 19881,0
    .collect 208554,1 >>Talk to |cRXP_FRIENDLY_Lidamorrutu|r and buy |T971287:0|t[Timerunner's Beacon.]
    .skipgossip
    .buy 208554,1
    .target Lidamorrutu
step
    .achievementComplete 20005,0
    .achievementComplete 19881,0
    .achievementComplete 20006,0
    .achievementComplete 20004,0
    .achievementComplete 40223,0
    .goto 371,43.01,27.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lidamorrutu|r and buy the jewellery.
    .collect 208491,1
    .collect 210523,1
    .collect 208554,1
    .collect 208555,1
    .collect 208487,1
    .buy 208487,1
    .buy 208555,1
    .buy 208555,1
    .buy 208554,1
    .buy 208491,1
    .buy 210523,1
    .skipgossip
    .target Lidamorrutu
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pythagorus|r and |cRXP_FRIENDLY_Larah Treebender|r.
    .accept 80447 >>Accept Looking for More
    .goto 371,42.95,27.73 --x middle
    .target +Pythagorus
    .accept 80448 >>Accept A Fresh Scene
    .goto 371,42.81,27.62 --x left
    .target +Larah Treebender
-- step
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Momentus|r.
--     .goto 371,42.5,27.32
--     .accept 78894 >>Accept Infinite Growth
--     .target Momentus
step
    #completewith next
    .goto 371,42.5,27.32,10,0
    .vendor >>Talk to |cRXP_FRIENDLY_Momentus|r and upgrade your gear |cRXP_WARN_It's recommended for faster leveling but uses bronze, a cosmetic currency|r.
    .skipgossip
    .target Momentus
step
    .goto 371,44.99,24.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Tenderpaw|r.
    .target Lin Tenderpaw
    .accept 29618 >>Accept The High Elder
step
    .goto 371,45.22,25.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Elder Cloudfall|r |cRXP_WARN_on the balcony|r.
    .turnin 29618 >>Turn in The High Elder
    .target High Elder Cloudfall
step
    .goto 371,44.99,24.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Tenderpaw|r.
    .accept 29619 >>Accept A Courteous Guest
    .target Lin Tenderpaw
step
    #loop
    .goto 371,45.67,26.91,10,0
    .goto 371,45.96,27.19,10,0
    .goto 371,45.92,27.68,10,0
    .goto 371,45.63,27.50,10,0
    .goto 371,45.67,26.91,0
    .goto 371,45.96,27.19,0
    .goto 371,45.92,27.68,0
    .goto 371,45.63,27.50,0
    >>Kill |cRXP_ENEMY_Greenwood Thieves|r. Loot them for [|cRXP_LOOT_Ripe Orange|r].
    .complete 29619,1 --8/8 Ripe Orange
    .mob Greenwood Thief
step
    .goto 371,44.99,24.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Tenderpaw|r.
    .turnin 29619 >>Turn in A Courteous Guest
    .target Lin Tenderpaw
    .accept 29620 >>Accept The Great Banquet
step
    #hidewindow
    #completewith next
    #label SkipElderCloudfall
    .gossipoption 39493 >>Talk to |cRXP_FRIENDLY_High Elder Cloudfall|r. (for the skip)
    .gossipoption 40364 >>Talk to |cRXP_FRIENDLY_High Elder Cloudfall|r. (for the skip)
    .goto 371,42.75,23.17
step
    .isOnQuest 29620
    #completewith next
    .gossipoption 39491 >>Talk to |cRXP_FRIENDLY_High Elder Cloudfall|r.
    --.skipgossip 54914,1
    .timer 162, RP
    .target High Elder Cloudfall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Elder Cloudfall|r.
    .goto 371,42.75,23.17
    .complete 29620,1 --1/1 Speak with High Elder Cloudfall
    .target High Elder Cloudfall
step
    .goto 371,42.74,23.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Elder Cloudfall|r.
    .turnin 29620 >>Turn in The Great Banquet
    .timer 8, RP
    .target High Elder Cloudfall
step
    .goto 371,43.13,23.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Xiao|r.
    .accept 29622 >>Accept Your Training Starts Now
    .accept 29626 >>Accept Groundskeeper Wu
    .target Xiao
step
    .goto 371,43.24,24.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Stone Fist|r.
    .accept 29632 >>Accept Becoming Battle-Ready
    .target Master Stone Fist
step
    #loop
    .goto 371,43.26,25.12,15,0
    .goto 371,43.47,25.42,15,0
    .goto 371,43.81,25.36,15,0
    .goto 371,44.13,25.03,15,0
    .goto 371,43.81,24.71,15,0
    .goto 371,43.26,25.12,0
    .goto 371,43.47,25.42,0
    .goto 371,43.81,25.36,0
    .goto 371,44.13,25.03,0
    .goto 371,43.81,24.71,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tian Pupil|r to challenge them to duel. |cRXP_WARN_You can fight multiple at once if you dare|r.
    .complete 29632,1 --8/8 Tian Pupil defeated
    .skipgossip
    .target Tian Pupil
step
    .goto 371,43.24,24.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Stone Fist|r.
    .turnin 29632 >>Turn in Becoming Battle-Ready
    .target Master Stone Fist
    .accept 29633 >>Accept Zhi-Zhi, the Dextrous
    .accept 29634 >>Accept Husshun, the Wizened
step
    #completewith next
    .goto 371,43.06,26.01
    .gossipoption 40594 >> Talk to |cRXP_FRIENDLY_Zhi-Zhi|r.
    .target Zhi-Zhi
step
    >>Kill |cRXP_ENEMY_Zhi-Zhi|r.
    .goto 371,43.06,26.01
    .complete 29633,1 --1/1 Zhi-Zhi defeated
    .mob Zhi-Zhi
step
    #completewith next
    .goto 371,44.57,24.06
    .gossipoption 40595 >> Talk to |cRXP_FRIENDLY_Husshun|r.
    .target Husshun
step
    .goto 371,44.57,24.06
    >>Kill |cRXP_ENEMY_Husshun|r.
    .complete 29634,1 --1/1 Husshun defeated
    .mob Husshun
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Stone Fist|r.
    .turnin 29633 >>Turn in Zhi-Zhi, the Dextrous
    .turnin 29634 >>Turn in Husshun, the Wizened
    .accept 29635 >>Accept Xiao, the Eater
    .goto 371,43.24,24.76
    .target Master Stone Fist
step
    .isOnQuest 29633
    .goto 371,43.06,26.01
    .gossipoption 40594 >> Talk to |cRXP_FRIENDLY_Zhi-Zhi|r.
    .target Zhi-Zhi
step
    #completewith next
    .goto 371,43.13,23.65
    .gossipoption 40337 >> Talk to |cRXP_FRIENDLY_Xiao|r.
    .target Xiao
step
    .goto 371,43.13,23.65
    >>Kill |cRXP_ENEMY_Xiao|r.
    .complete 29635,1 --1/1 Xiao defeated
    .mob Xiao
step
    .goto 371,43.23,24.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Master Stone Fist|r.
    .turnin 29635 >>Turn in Xiao, the Eater
    .target Master Stone Fist
    .accept 29636 >>Accept A Test of Endurance
step
    .solo
    .goto 371,41.61,28.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Xann|r.
    .turnin 29622 >>Turn in Your Training Starts Now
    .target Instructor Xann
step
    .group
    .goto 371,41.61,28.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Xann|r.
    .turnin 29622 >>Turn in Your Training Starts Now
    .accept 29623 >>Accept Perfection
    .target Instructor Xann
step
    .group
    .goto 371,41.61,28.34
    >>|cRXP_WARN_Face your |cFFFF0000character|r away from the training grounds and aim your |cFFFF0000camera|r towards it|r.
    *After the |cRXP_FRIENDLY_Tian Students|r copy the |cFFFF0000master's action|r,use |T135906:0|t[Punch(1)] for a punch, |T132219:0|t[Kick(2)] for a stomp, and |T236169:0|t[Growl(3)] for a growl.
    .complete 29623,1 --12/12 Practice Strikes completed
    .target Tian Student
step
    .group
    .goto 371,41.61,28.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Xann|r.
    .turnin 29623 >>Turn in Perfection
    .target Instructor Xann
    .accept 29624 >>Accept Attention
step
    .group
    .goto 371,41.15,27.98
    >>Kill |cRXP_ENEMY_Training Bags|r.
    .complete 29624,1 --2/2 Training Bag slain
    .mob training bag
step
    .group
    .goto 371,41.61,28.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Xann|r.
    .turnin 29624 >>Turn in Attention
    .target Instructor Xann
step
    .goto 371,41.61,23.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Groundskeeper Wu|r.
    .turnin 29626 >>Turn in Groundskeeper Wu
    .target Groundskeeper Wu
    .accept 29627 >>Accept A Proper Weapon
step
    #completewith --3/3 Triple-Bittered Ale
    >>Click on the |cRXP_PICK_Bambus|r.
    .complete 29627,1 --6/6 Rattan Switch
step
    .goto 371,41.40,24.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_June Whiteblossom|r.
    .buy 72954,1
    .complete 29627,2 --1/1 Black Walnut Extract
    .target June Whiteblossom
step
    #label --3/3 Triple-Bittered Ale
    .goto 371,41.77,24.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brewmaster Lei Kanglei|r.
    .buy 72979,3
    .complete 29627,3 --3/3 Triple-Bittered Ale
    .target Brewmaster Lei Kanglei
step
    #loop
    .goto 371,41.86,24.87,20,0
    .goto 371,42.28,24.64,20,0
    .goto 371,41.87,23.99,20,0
    .goto 371,41.35,23.17,20,0
    .goto 371,41.10,23.07,20,0
    .goto 371,40.89,23.72,20,0
    .goto 371,41.01,24.14,20,0
    .goto 371,41.86,24.87,0
    .goto 371,42.28,24.64,0
    .goto 371,41.87,23.99,0
    .goto 371,41.35,23.17,0
    .goto 371,41.10,23.07,0
    .goto 371,40.89,23.72,0
    .goto 371,41.01,24.14,0
    >>Click on the |cRXP_PICK_Bambus|r.
    .complete 29627,1 --6/6 Rattan Switch
step
    .goto 371,41.62,23.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Groundskeeper Wu|r.
    .turnin 29627 >>Turn in A Proper Weapon
    .accept 29629 >>Accept A Steady Hand
    .accept 29630 >>Accept And a Heavy Fist
    .target Groundskeeper Wu
step
    .goto 371,38.97,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Myang|r.
    .turnin 29636 >>Turn in A Test of Endurance
    .target Instructor Myang
step
    .goto 371,38.02,23.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Shan Long|r.
    .accept 29631 >>Accept Burning Bright
    .target Guard Shan Long
step
    #hidewindow
    #completewith Waxwood Hunter
    #loop
    .goto 371,37.18,20.65,25,0
    .goto 371,36.41,22.21,25,0
    .goto 371,35.36,23.41,25,0
    .goto 371,34.62,23.61,25,0
    .goto 371,34.31,22.87,25,0
    .goto 371,33.93,21.73,25,0
    .goto 371,33.59,21.70,25,0
    .goto 371,33.67,21.05,25,0
    .goto 371,33.29,19.95,25,0
    .goto 371,33.79,20.01,25,0
    .goto 371,34.99,20.93,25,0
    .goto 371,36.05,21.92,25,0
    -- .goto 371,37.18,20.65,25,0 << Alliance
    -- .goto 371,38.31,21.43,25,0 << Alliance
    -- .goto 371,36.41,22.21,25,0 << Alliance
    -- .goto 371,35.36,23.41,25,0 << Alliance
    -- .goto 371,34.62,23.61,25,0 << Alliance
    -- .goto 371,34.32,23.72,25,0 << Alliance
    -- .goto 371,34.31,22.87,25,0 << Alliance
    +1
step
    #completewith Blushleaf Extract
    >>Kill |cRXP_ENEMY_Greenwood Trickster|r.
    .complete 29630,1 --10/10 Greenwood Trickster slain
    .mob greenwood trickster
step
    #completewith Blushleaf Extract
    >>Kill |cRXP_ENEMY_Waxwood Hunter|r.
    .complete 29631,1 --6/6 Waxwood Hunter slain
    .mob waxwood hunter
step
    #label Blushleaf Extract
    .goto 371,37.18,20.65,0
    .goto 371,38.31,21.43,0
    .goto 371,36.41,22.21,0
    .goto 371,35.36,23.41,0
    .goto 371,34.62,23.61,0
    .goto 371,34.32,23.72,0
    .goto 371,34.31,22.87,0
    .goto 371,33.93,21.73,0
    .goto 371,33.59,21.70,0
    .goto 371,33.67,21.05,0
    .goto 371,33.29,19.95,0
    .goto 371,33.79,20.01,0
    .goto 371,34.99,20.93,0
    .goto 371,36.05,21.92,0
    -- .goto 371,37.18,20.65,0 << Alliance
    -- .goto 371,38.31,21.43,0 << Alliance
    -- .goto 371,36.41,22.21,0 << Alliance
    -- .goto 371,35.36,23.41,0 << Alliance
    -- .goto 371,34.62,23.61,0 << Alliance
    -- .goto 371,34.32,23.72,0 << Alliance
    -- .goto 371,34.31,22.87,0 << Alliance
    >>Click on |cRXP_PICK_Bushleaf Cluster|r |cRXP_WARN_and wait until the channel is over (you're not allowed to move or turn or your character)|r.
    .complete 29629,1 --80/80 Blushleaf Extract
step
    #completewith next
    >>Kill |cRXP_ENEMY_Greenwood Trickster|r.
    .complete 29630,1 --10/10 Greenwood Trickster slain
    .mob greenwood trickster
step
    .goto 371,37.18,20.65,0
    .goto 371,38.31,21.43,0
    .goto 371,36.41,22.21,0
    .goto 371,35.36,23.41,0
    .goto 371,34.62,23.61,0
    .goto 371,34.32,23.72,0
    .goto 371,34.31,22.87,0
    .goto 371,33.93,21.73,0
    .goto 371,33.59,21.70,0
    .goto 371,33.67,21.05,0
    .goto 371,33.29,19.95,0
    .goto 371,33.79,20.01,0
    .goto 371,34.99,20.93,0
    .goto 371,36.05,21.92,0
    -- .goto 371,37.18,20.65,0 << Alliance
    -- .goto 371,38.31,21.43,0 << Alliance
    -- .goto 371,36.41,22.21,0 << Alliance
    -- .goto 371,35.36,23.41,0 << Alliance
    -- .goto 371,34.62,23.61,0 << Alliance
    -- .goto 371,34.32,23.72,0 << Alliance
    -- .goto 371,34.31,22.87,0 << Alliance
    #label Waxwood Hunter
    >>Kill |cRXP_ENEMY_Waxwood Hunter|r.
    .complete 29631,1 --6/6 Waxwood Hunter slain
    .mob waxwood hunter
step
    #loop
    .goto 371,37.83,18.34,20,0
    .goto 371,37.70,20.48,20,0
    .goto 371,37.75,22.54,20,0
    .goto 371,36.65,21.73,20,0
    .goto 371,38.31,17.65,20,0
    .goto 371,37.83,18.34,0
    .goto 371,37.70,20.48,0
    .goto 371,37.75,22.54,0
    .goto 371,36.65,21.73,0
    .goto 371,38.31,17.65,0
    >>Kill |cRXP_ENEMY_Greenwood Trickster|r.
    .complete 29630,1 --10/10 Greenwood Trickster slain
    .mob greenwood trickster
--step
--    #completewith next
--    >>Kill |cRXP_ENEMY_Greenwood Trickster|r.
--    .complete 29630,1 --10/10 Greenwood Trickster slain
--    .mob greenwood trickster
--step
--    .goto 371,37.74,17.57
--    >>Click on |cRXP_PICK_Boiling Cauldron|r.
--    .complete 29628,1 --1/1 Boiling Cauldron obtained
--step
--    #completewith Burning Bright
--    >>be careful not to stretch the rope |cRXP_WARN_beyond 100 yards to avoid disconnecting|r.
--    .complete 29628,2 --1/1 Boiling Cauldron returned
step
    #label Burning Bright
    .goto 371,38.02,23.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Guard Shan Long|r.
    .turnin 29631 >>Turn in Burning Bright
    .target Guard Shan Long
--step
--    .goto 371,41.60,23.69
--    >>|cRXP_WARN_Return the Cauldron|r but be careful not to stretch the rope |cRXP_WARN_beyond 100 yards to avoid disconnecting|r.
--    .complete 29628,2 --1/1 Boiling Cauldron returned
step
    .convertquest 29646,29646 << Horde
    .goto 371,41.60,23.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Groundskeeper Wu|r.
    --.turnin 29628 >>Turn in A Strong Back
    .turnin 29629 >>Turn in A Steady Hand
    .turnin 29630 >>Turn in And a Heavy Fist
    --.accept 29646 >>Accept Flying Colors
    .target Groundskeeper Wu
--step
--    .goto 371,42.73,23.16
--    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_High Elder Cloudfall|r.
--    .turnin 29646 >>Turn in Flying Colors
--    .timer 15,RP
--    .target High Elder Cloudfall
]])

-- Jade Forest Sprites Plight
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Pandaria Remix
#name 1) Jade Forest Side Quests Sprites Plight
#internal

step
    .goto 371,48.67,24.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Outcast Sprite|r.
    .accept 29745 >>Accept The Sprites' Plight
    .target Outcast Sprite
step
    #completewith next
    .goto 371,49.22,22.72,20,0
    .goto 371,48.71,21.13,20,0
    >>Kill |cRXP_ENEMY_Stonebound Destroyer|r.
    .complete 29745,1 --10/10 Stonebound Destroyer slain
    .mob stonebound destroyer
step
    .goto 371,48.58,20.63
    >>|cRXP_WARN_Follow the Arrow|r.
    .complete 29745,2 --1/1 Source of the destroyers found
step
    #loop
    .goto 371,47.55,20.83,20,0
    .goto 371,49.90,19.47,20,0
    .goto 371,49.22,22.72,20,0
    .goto 371,48.71,21.13,20,0
    .goto 371,47.55,20.83,0
    .goto 371,49.90,19.47,0
    .goto 371,49.22,22.72,0
    .goto 371,48.71,21.13,0
    >>Kill |cRXP_ENEMY_Stonebound Destroyer|r.
    .complete 29745,1 --10/10 Stonebound Destroyer slain
    .mob stonebound destroyer
step
    .goto 371,49.04,20.86
    >>Click on the popup to turn in the quest.
    .turnin 29745 >>Turn in The Sprites' Plight
    .accept 29747 >>Accept Break the Cycle
step
    .goto 371,48.57,20.63
    >>Click on the |cRXP_PICK_Mogu Head|r.
    .accept 29748 >>Accept Simulacrumble
    .target Shattered Destroyer
step
    #completewith Vacant Destroyer
    #hidewindow
    #loop
    .goto 371,48.44,20.61,20,0
    .goto 371,48.33,18.78,20,0
    .goto 371,47.79,18.20,20,0
    .goto 371,47.18,16.91,20,0
    .goto 371,46.95,16.13,20,0
    .goto 371,46.32,15.78,20,0
    .goto 371,48.44,20.61,0
    .goto 371,48.33,18.78,0
    .goto 371,47.79,18.20,0
    .goto 371,47.18,16.91,0
    .goto 371,46.95,16.13,0
    .goto 371,46.32,15.78,0
    +1
step
    #completewith next
    >>Click on the |cRXP_PICK_Statues|r.
    .complete 29748,1 --6/6 Vacant Destroyer Kicked
step
    >>Kill |cRXP_ENEMY_Shan'ze Spiritbinder|r.
    .complete 29747,1 --8/8 Shan'ze Spiritbinder slain
    .mob shan'ze spiritbinder
step
    #label Vacant Destroyer
    >>Click on the |cRXP_PICK_Statues|r.
    .complete 29748,1 --6/6 Vacant Destroyer Kicked
step
    .goto 371,47.99,18.74
    >>Click on the popup to turn in the quest.
    .turnin 29747 >>Turn in Break the Cycle
    .turnin 29748 >>Turn in Simulacrumble
    .accept 29749 >>Accept An Urgent Plea
step
    .goto 371,44.23,14.95
    >>Click on the |cRXP_PICK_Staff|r.
    .complete 29749,1 --1/1 Staff of Pei-Zhi
    -- .timer 100,RP
step
    .goto 371,44.363,15.629
    >>Kill |cRXP_ENEMY_Ancient Spirits|r until quest completion (you have to kill 20 mobs to fill the bar).
    .complete 29749,2 --1/1 Interrupt the Ritual of Spiritbinding
    .mob Ancient Spirit
step
    #completewith next
    .logout >> |cRXP_WARN_Press Escape and select Logout|r wait until you can log back in to skip roleplay.
step
    .goto 371,44.23,15.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r.
    .turnin 29749 >>Turn in An Urgent Plea
    .accept 29750 >>Accept Vessels of the Spirit
    .accept 29751 >>Accept Ritual Artifacts
    .accept 29752 >>Accept The Wayward Dead
    .target Pei-Zhi
--x step add treasure
step
    #completewith Chipped Ritual Bowl
    >>Kill |cRXP_ENEMY_Shan'ze Spiritclaws|r. Loot them for the |T461804:0|t[|cRXP_LOOT_Spirit Bottles|r].
    .complete 29750,1 --8/8 Spirit Bottle
    .mob Shan'ze Spiritclaw
step
    #completewith Chipped Ritual Bowl
    >>Click on |cRXP_ENEMY_Wayward Ancestor|r. |cRXP_WARN_You can walk during the cast|r.
    .complete 29752,1 --10/10 Wayward Ancestors Recovered
    .use 74771
    .mob Wayward Ancestor
step
    .goto 371,42.69,15.75
    >>Click on |cRXP_PICK_Jade Cong|r.
    .complete 29751,1 --1/1 Jade Cong
step
    .goto 371,42.28,17.1
    >>Click on the |cRXP_PICK_Candle|r.
    .complete 29751,3 --1/1 Pungent Ritual Candle
step
    .goto 371,41.64,14.3
    #label Chipped Ritual Bowl
    >>Click on the |cRXP_PICK_Bowl|r.
    .complete 29751,2 --1/1 Chipped Ritual Bowl
step
    #completewith Spirit Bottle
    #hidewindow
    #loop
    .goto 371,40.29,15.13,20,0
    .goto 371,40.35,13.82,20,0
    .goto 371,41.10,14.15,20,0
    .goto 371,41.61,17.42,20,0
    .goto 371,40.29,15.13,0
    .goto 371,40.35,13.82,0
    .goto 371,41.10,14.15,0
    .goto 371,41.61,17.42,0
    +1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Shan'ze Spiritclaws|r. Loot them for the |T461804:0|t[|cRXP_LOOT_Spirit Bottles|r].
    .complete 29750,1 --8/8 Spirit Bottle
    .mob Shan'ze Spiritclaw
step
    >>Click on |cRXP_ENEMY_Wayward Ancestor|r. |cRXP_WARN_You can walk during the cast|r.
    .complete 29752,1 --10/10 Wayward Ancestors Recovered
    .use 74771
    .mob Wayward Ancestor
step
    #label Spirit Bottle
    >>Kill |cRXP_ENEMY_Shan'ze Spiritclaws|r. Loot them for [|cRXP_LOOT_Spirit Bottles|r].
    .complete 29750,1 --8/8 Spirit Bottle
    .mob Shan'ze Spiritclaw
step
    .goto 371,44.24,15.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r.
    .turnin 29750 >>Turn in Vessels of the Spirit
    .turnin 29751 >>Turn in Ritual Artifacts
    .turnin 29752 >>Turn in The Wayward Dead
    .accept 29753 >>Accept Back to Nature
    .accept 29756 >>Accept A Humble Offering
    .target Pei-Zhi
step
    #xprate <2
    #completewith Tidemist Cap
    #hidewindow
    #loop
    .goto 371,40.15,11.19,40,0
    .goto 371,38.81,09.96,40,0
    .goto 371,38.11,10.50,40,0
    .goto 371,37.69,12.00,40,0
    .goto 371,38.29,12.58,40,0
    .goto 371,39.19,12.60,40,0
    .goto 371,40.15,11.76,40,0
    .goto 371,40.15,11.19,0
    .goto 371,38.81,09.96,0
    .goto 371,38.11,10.50,0
    .goto 371,37.69,12.00,0
    .goto 371,38.29,12.58,0
    .goto 371,39.19,12.60,0
    .goto 371,40.15,11.76,0
    +1
--x step add treasure
step
    #xprate <2
    #completewith next
    >>Click on the |cRXP_PICK_Tidemist Caps|r.
    .complete 29756,1 --10/10 Tidemist Cap
step
    #xprate <2
    >>Use |T461804:0|t[Spirit Bottles] on the ground |cRXP_WARN_on cooldown|r. Kill emerging |cRXP_ENEMY_Raging Beast Spirit|r.
    .complete 29753,1 --8/8 Beast Spirits Returned to Nature
    .use 74808
    .mob Raging Beast Spirit
step
    #xprate <2
    #label Tidemist Cap
    >>Click on the |cRXP_PICK_Tidemist Caps|r.
    .complete 29756,1 --10/10 Tidemist Cap
step
    #xprate <2
    .goto 371,44.24,15.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r.
    .turnin 29753 >>Turn in Back to Nature
    .turnin 29756 >>Turn in A Humble Offering
    --.accept 29754 >>Accept To Bridge Earth and Sky
    .timer 147,RP
    .target Pei-Zhi
--step
--    .goto 371,43.84,12.52
--    >>do xyz
--    .complete 29754,1 --1/1 Protect Pei-Zhi during his ritual.
--step
--    >>Click on the popup to turn in the quest.
--    .turnin 29754 >>Turn in To Bridge Earth and Sky
--    .accept 29755 >>Accept Pei-Back
--step
--    .goto 371,42.51,10.62
--    >>Defeat the |cRXP_ENEMY_Stonebound Colossus|r. |cRXP_WARN_Return to your bodies soul when |cRXP_ENEMY_Shan Jitong|r rips you from it.
--    >>Kill |cRXP_ENEMY_Shan Jitong|r at the end
--    .complete 29755,1 --1/1 Shan Jitong slain
--    .mob shan jitong
--    .mob Stonebound Colossus
--    .target your body
--step
--    .goto 371,43.84,12.53
--    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pei-Zhi|r.
--    .turnin 29755 >>Turn in Pei-Back
--    .target Pei-Zhi
]])

-- Jade Forest Defiance
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Pandaria Remix
#name 1) Jade Forest Defiance Side Quests
#internal

-- step << Alliance
--     #completewith next
--     .goto 371,46.31,80.67,40 >>Look for the Treasure on the shrine.
step << Horde
    .goto 371,48.32,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Man Misteye|r.
    .accept 29576 >>Accept An Air of Worry
    .target Old Man Misteye
step
    .goto 371,43.49,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shao the Defiant|r.
    .turnin 29576 >>Turn in An Air of Worry << Horde
    .accept 29578 >>Accept Defiance
    .accept 29579 >>Accept Rally the Survivors
    .target Shao the Defiant
step
    #loop
    .goto 371,43.25,76.02,10,0
    .goto 371,43.28,75.68,10,0
    .goto 371,43.25,76.02,0
    .goto 371,43.28,75.68,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gentle Mother Hanae|r.
    .accept 29580 >>Accept Orchard-Supplied Hardware
    .accept 29585 >>Accept Spitfire
    .target Gentle Mother Hanae
step
    .isOnQuest 29585
    .goto 371,43.49,75.92,10 >> Leave the House
step
    #completewith Turn in Defiance
    #hidewindow
    #loop
    .goto 371,43.40,75.36,20,0
    .goto 371,43.06,74.88,20,0
    .goto 371,43.21,73.76,20,0
    .goto 371,43.72,72.16,20,0
    .goto 371,43.72,71.14,20,0
    .goto 371,44.27,71.18,20,0
    .goto 371,44.42,71.82,20,0
    .goto 371,44.34,72.51,20,0
    .goto 371,44.64,73.35,20,0
    .goto 371,44.49,74.45,20,0
    .goto 371,43.91,75.07,20,0
    .goto 371,44.66,75.61,20,0
    .goto 371,43.98,76.54,20,0
    .goto 371,43.40,75.36,0
    .goto 371,43.06,74.88,0
    .goto 371,43.21,73.76,0
    .goto 371,43.72,72.16,0
    .goto 371,43.72,71.14,0
    .goto 371,44.27,71.18,0
    .goto 371,44.42,71.82,0
    .goto 371,44.34,72.51,0
    .goto 371,44.64,73.35,0
    .goto 371,44.49,74.45,0
    .goto 371,43.91,75.07,0
    .goto 371,44.66,75.61,0
    .goto 371,43.98,76.54,0
    +1
step
    #completewith Orchard Fires
    >>Kill |cRXP_ENEMY_Gormali Raider|r and |cRXP_ENEMY_Gormali Incinerator|r. |cRXP_WARN_Prioritize those fighting the |cRXP_FRIENDLY_Nectarbreeze Farmers|r.
    .complete 29578,1 --8/8 Gormali Raider slain
    .complete 29578,2 --8/8 Gormali Incinerator slain
    .skipgossip
    .mob gormali incinerator
step
    #completewith Orchard Fires
    >>Click on the |cRXP_PICK_Gardening Tools|r.
    .complete 29580,1 --6/6 Orchard Tool
step
    #completewith Orchard Fires
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nectarbreeze Farmer|r.
    .complete 29579,1 --5/5 Survivors Rescued
    .target Nectarbreeze Farmer
step
    #label Orchard Fires
    >>Use |T463863:0|t[Nectarbreeze Cider] |cRXP_WARN_on nearby fire|r.
    .complete 29585,1 --12/12 Orchard Fires Put Out
    .use 72578
step
    #completewith Survivors
    >>Kill |cRXP_ENEMY_Gormali Raider|r and |cRXP_ENEMY_Gormali Incinerator|r. |cRXP_WARN_Prioritize those fighting the |cRXP_FRIENDLY_Nectarbreeze Farmers|r.
    .complete 29578,1 --8/8 Gormali Raider slain
    .complete 29578,2 --8/8 Gormali Incinerator slain
    .skipgossip
    .mob gormali incinerator
step
    #completewith Survivors
    >>Click on the |cRXP_PICK_Gardening Tools|r.
    .complete 29580,1 --6/6 Orchard Tool
step
    #label Survivors
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nectarbreeze Farmer|r.
    .complete 29579,1 --5/5 Survivors Rescued
    .target Nectarbreeze Farmer
step
    #completewith next
    >>Kill |cRXP_ENEMY_Gormali Raider|r and |cRXP_ENEMY_Gormali Incinerator|r. |cRXP_WARN_Prioritize those fighting the |cRXP_FRIENDLY_Nectarbreeze Farmers|r.
    .complete 29578,1 --8/8 Gormali Raider slain
    .complete 29578,2 --8/8 Gormali Incinerator slain
    .skipgossip
    .mob gormali incinerator
step
    >>Click on the |cRXP_PICK_Gardening Tools|r.
    .complete 29580,1 --6/6 Orchard Tool
step
    #label Turn in Defiance
    >>Kill |cRXP_ENEMY_Gormali Raider|r and |cRXP_ENEMY_Gormali Incinerator|r. |cRXP_WARN_Prioritize those fighting the |cRXP_FRIENDLY_Nectarbreeze Farmers|r.
    .complete 29578,1 --8/8 Gormali Raider slain
    .complete 29578,2 --8/8 Gormali Incinerator slain
    .skipgossip
    .mob gormali incinerator
step
    .goto 371,43.49,75.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shao the Defiant|r.
    .turnin 29578 >>Turn in Defiance
    .turnin 29579 >>Turn in Rally the Survivors
    .target Shao the Defiant
step
    #loop
    .goto 371,43.28,75.77,10,0
    .goto 371,43.28,75.72,10,0
    .goto 371,43.28,75.77,0
    .goto 371,43.28,75.72,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gentle Mother Hanae|r |cRXP_WARN_inside the house|r.
    .turnin 29580 >>Turn in Orchard-Supplied Hardware
    .turnin 29585 >>Turn in Spitfire
    .target Gentle Mother Hanae
step
    .goto 371,43.21,75.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Traumatized Nectarbreeze Farmer|r.
    .accept 29586 >>Accept The Splintered Path
    .target Traumatized Nectarbreeze Farmer
step
    #completewith next
    .goto 371,43.49,75.92,10 >> Leave the House
step
    .goto 371,41.01,73.97
    >>|cRXP_WARN_Follow the Arrow|r.
    .complete 29586,1 --1/1 Mogu Camp Discovered
step
    .goto 371,41.00,73.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shao the Defiant|r.
    .turnin 29586 >>Turn in The Splintered Path
    .accept 29587 >>Accept Unbound
    .accept 29670 >>Accept Maul Gormal
    .target Shao the Defiant
step
    #completewith FarmersSetFree
    #hidewindow
    .goto 371,40.3,74.49,22,0
    .goto 371,39.8,75.48,22,0
    .goto 371,39.58,74.39,22,0
    .goto 371,39.27,74.82,22 >> 1
step
    #label FarmersSetFree
    #completewith next
    >>Free the |cRXP_FRIENDLY_Captured Nectarbreeze Farmer|r by interacting with their |cRXP_PICK_Net|r and killing |cRXP_ENEMY_Gormali Slavers|r chained to them.
    .complete 29587,1 --10/10 Farmers Set Free
    .mob Gormali Slaver
    .target Captured Nectarbreeze Farmer
step
    .goto 371,37.8,76.19
    >>Kill |cRXP_ENEMY_Subjugator Gormal|r.
    .complete 29670,1 --1/1 Subjugator Gormal slain
    .mob subjugator gormal
step
    #loop
    .goto 371,37.79,76.91,15,0
    .goto 371,38.63,77.40,15,0
    .goto 371,38.94,76.28,15,0
    .goto 371,39.79,75.53,15,0
    .goto 371,39.46,74.75,15,0
    .goto 371,39.70,74.32,15,0
    .goto 371,40.18,74.77,15,0
    .goto 371,37.79,76.91,0
    .goto 371,38.63,77.40,0
    .goto 371,38.94,76.28,0
    .goto 371,39.79,75.53,0
    .goto 371,39.46,74.75,0
    .goto 371,39.70,74.32,0
    .goto 371,40.18,74.77,0
    >>Free the |cRXP_FRIENDLY_Captured Nectarbreeze Farmer|r by interacting with their |cRXP_PICK_Net|r and killing |cRXP_ENEMY_Gormali Slavers|r chained to them.
    .complete 29587,1 --10/10 Farmers Set Free
    .mob Gormali Slaver
    .target Captured Nectarbreeze Farmer
step
    .goto 371,40.99,73.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shao the Defiant|r.
    .turnin 29587 >>Turn in Unbound
    .turnin 29670 >>Turn in Maul Gormal
    .target Shao the Defiant
]])

-- Jade Forest Cloud Serpent
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Pandaria Remix
#name 1) Jade Forest Cloud Serpent Side Quests
#internal

step
    #completewith next
    .goto 371,65.25,37.20,20,0
    .cast 437035 >>Use |T134376:0|t[Bronze Timepiece] to teleport to the dragonriding quests.
    .itemcount 216712,1
    .use 216712
-- step
--     #loop
--     .goto 371,49.21,46.01,8,0
--     .goto 371,49.01,46.13,8,0
--     .goto 371,48.97,45.89,8,0
--     .goto 371,49.16,45.75,8,0
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Toortle Wider|r.
--     .accept 80311 >>Accept Order of the Cloud Serpent
--     .target Toortle Wider
step
    .goto 371,57.64,44.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Anli|r.
    -- .turnin 80311 >>Turn in Order of the Cloud Serpent
    .accept 30134 >>Accept Wild Things
    .target Elder Anli
-- step << Alliance
--     .goto 371,47.17,47.19
--    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jade Forest Flame Guardian|r.
--    .accept 32498 >>Accept Honor the Flame
--    .target Jade Forest Flame Guardian
-- step << Alliance
--     .goto 371,47.17,47.13
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Midsummer Bonfire|r.
--     .turnin 32498 >>Turn in Honor the Flame
--     .target Midsummer Bonfire
step
    #completewith next
    .goto 371,65.25,37.20,20,0
    .cast 437035 >>Use |T134376:0|t[Bronze Timepiece] to teleport to the dragonriding quests.
    .itemcount 216712,1
    .use 216712
step
    .goto 371,65.33,31.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Tong|r.
    .turnin 30134 >>Turn in Wild Things
    .accept 30135 >>Accept Beating the Odds
    .accept 30136 >>Accept Empty Nests
    .accept 30137 >>Accept Egg Collection
    .target Instructor Tong
step
    #completewith Interact with Windward Hatchlings
    #hidewindow
    #loop
    .goto 371,65.25,32.10,20,0
    .goto 371,64.75,32.28,20,0
    .goto 371,64.74,31.10,20,0
    .goto 371,64.69,30.44,20,0
    .goto 371,64.54,29.52,20,0
    .goto 371,65.25,29.19,20,0
    .goto 371,65.53,29.54,20,0
    .goto 371,65.25,32.10,0
    .goto 371,64.75,32.28,0
    .goto 371,64.74,31.10,0
    .goto 371,64.69,30.44,0
    .goto 371,64.54,29.52,0
    .goto 371,65.25,29.19,0
    .goto 371,65.53,29.54,0
    +1
step
    #completewith Interact with Windward Hatchlings
    >>Kill |cRXP_ENEMY_Slitherscale Saurok|r.
    .complete 30135,1 --8/8 Slitherscale saurok slain
    .mob Slitherscale Eggdrinker
step
    .isOnQuest 30136
    .cast 110171 >>Interact with a |cRXP_FRIENDLY_Windward Hatchling|r |cRXP_WARN_[1]|r.
    .use 78947
    .target Windward Hatchlings
step
    .isOnQuest 30136
    .cast 110171 >>Interact with a |cRXP_FRIENDLY_Windward Hatchling|r |cRXP_WARN_[2]|r.
    .use 78947
    .target Windward Hatchlings
step
    .isOnQuest 30136
    .cast 110171 >>Interact with a |cRXP_FRIENDLY_Windward Hatchling|r |cRXP_WARN_[3]|r.
    .use 78947
    .target Windward Hatchlings
step
    .isOnQuest 30136
    .cast 110171 >>Interact with a |cRXP_FRIENDLY_Windward Hatchling|r |cRXP_WARN_[4]|r.
    .use 78947
    .target Windward Hatchlings
step
    .isOnQuest 30136
    .cast 110171 >>Interact with a |cRXP_FRIENDLY_Windward Hatchling|r |cRXP_WARN_[5]|r.
    .use 78947
    .target Windward Hatchlings
step
    #label Interact with Windward Hatchlings
    .isOnQuest 30136
    .cast 110171 >>Interact with a |cRXP_FRIENDLY_Windward Hatchling|r |cRXP_WARN_[6]|r.
    .use 78947
    .target Windward Hatchlings
step
    .goto 371,65.18,30.07,-1
    .goto 371,65.64,30.22,-1
    .goto 371,65.71,30.69,-1
    .goto 371,65.8,31.25,-1
    >>|cRXP_WARN_Follow the Arrow|r.
    .complete 30136,1 --6/6 Windward Hatchlings returned to their nests
step
    #completewith Slitherscale saurok
    #hidewindow
    #loop
    .goto 371,66.85,28.05,20,0
    .goto 371,67.43,27.94,20,0
    .goto 371,67.75,28.87,20,0
    .goto 371,67.77,30.25,20,0
    .goto 371,67.73,31.90,20,0
    .goto 371,68.74,32.16,20,0
    .goto 371,69.03,29.14,20,0
    .goto 371,69.07,27.93,20,0
    .goto 371,69.06,26.11,20,0
    .goto 371,68.14,25.30,20,0
    .goto 371,66.85,28.05,0
    .goto 371,67.43,27.94,0
    .goto 371,67.75,28.87,0
    .goto 371,67.77,30.25,0
    .goto 371,67.73,31.90,0
    .goto 371,68.74,32.16,0
    .goto 371,69.03,29.14,0
    .goto 371,69.07,27.93,0
    .goto 371,69.06,26.11,0
    .goto 371,68.14,25.30,0
    +1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Slitherscale saurok|r.
    .complete 30135,1 --8/8 Slitherscale saurok slain
    .mob Slitherscale Eggdrinker
    .mob Slitherscale Ripper
step
    >>Click on |cRXP_PICK_Serpent Eggs|r.
    .complete 30137,1 --6/6 Serpent Egg
step
    #label Slitherscale saurok
    >>Kill |cRXP_ENEMY_Slitherscale saurok|r.
    .complete 30135,1 --8/8 Slitherscale saurok slain
    .mob Slitherscale Eggdrinker
    .mob Slitherscale Ripper
step
    #completewith next
    .goto 371,65.25,37.20,20,0
    .cast 437035 >>Use |T134376:0|t[Bronze Timepiece] to teleport to the dragonriding quests.
    .itemcount 216712,1
    .use 216712
step
    .goto 371,65.34,31.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Tong|r.
    .turnin 30135 >>Turn in Beating the Odds
    .turnin 30136 >>Turn in Empty Nests
    .turnin 30137 >>Turn in Egg Collection
    .accept 30138 >>Accept Choosing the One
    .turnin 30138 >>Turn in Choosing the One
step
    .goto 371,65.34,31.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Tong|r.
    .daily 30140,30141,30139 >>Accept The Rider's Journey
    .target Instructor Tong
step
    #completewith Egg hatched
    .goto 371,65.25,37.20,20,0
    .cast 437035 >>Use |T134376:0|t[Bronze Timepiece] to teleport to the dragonriding quests.
    .itemcount 216712,1
    .use 216712
step
    .goto 371,57.55,45.10
    .isOnQuest 30139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Skythorn|r.
    .turnin 30139 >>Turn in The Rider's Journey
    .target Instructor Skythorn
step
    .goto 371,57.55,45.10
    .isOnQuest 30140
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Skythorn|r.
    .turnin 30140 >>Turn in The Rider's Journey
    .target Instructor Skythorn
step
    .isOnQuest 30141
    .goto 371,57.55,45.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Skythorn|r.
    .turnin 30141 >>Turn in The Rider's Journey
    .target Instructor Skythorn
step
    #label Egg hatched
    .goto 371,57.55,45.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Skythorn|r.
    .accept 30142 >>Accept It's A...
    .complete 30142,1 --1/1 Egg hatched
    .turnin 30142 >>Turn in It's A...
    .target Instructor Skythorn
]])

---------------------------
---x MAIN QUESTS
----------------------------

--SEPERATOR
RXPGuides.RegisterGuide([[
#retail
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(10-70)|r Pandaria Remix 
#name 0
#displayname |cFFFCDC00LEVELING|r
#disabled



]])

-- Pandaria Remix Leveling Guide: How to Use & Essential Tips
RXPGuides.RegisterGuide([[ 
#retail
#version 1
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(10-70)|r Pandaria Remix 
#name 1) Pandaria Remix Leveling Guide: How to Use & Essential Tips
#next 2) Pandaria Remix Introduction
#displayname |cFF00CCFF0|r - How to Use & Essential Tips |cRXP_ENEMY_(Optional)|r

step
    #completewith test
    +|cFFFF0000Important:|r |cRXP_WARN_Read each section carefully and click through the guide for detailed tips and strategies|r.
step
    #label test
    +The |T623705:0|t[Cloak of Infinite Potential] is a crucial item for this event. Here’s how it works and how you can maximize its potential:
step
    +|cRXP_WARN_Acquisition:|r Obtain the |T623705:0|t[Cloak of Infinite Potential] from the initial questline.
step
    +|cRXP_WARN_Stat Gains:|r The cloak gains stats through various activities:
    *|cRXP_WARN_Looting Enemies:|r Defeat normal enemies, elites, rares, and bosses.
    *|cRXP_WARN_Opening Pandaria Treasures:|r Find and open Treasures of Pandaria scattered throughout Pandaria.
    *|cRXP_WARN_Completing Content:|r Participate in dungeons, scenarios, and raids.
    *|cRXP_WARN_Completing Quests:|r Finish quests to receive |cRXP_FRIENDLY_|T1542852:0|tCaches of Infinite Treasures|r open them to enhance your cloak stats further.
step
    +|cRXP_WARN_Stat Increase Mechanism:|r Each stat increase gained from the various activities is random. While you may get lucky and receive a lot of your desired stats early on, rest assured that by continuously participating in these activities, you will eventually fully upgrade your cloak.
    *|cRXP_WARN_Stats that can be Enhanced:|r.
    *Main Stat(Intellect,Agility,Strength)
    *Stamina
    *Critical Strike
    *Haste
    *Leech
    *Mastery
    *Speed
    *Versatility
    *Experience Gain %
step
    +|cRXP_WARN_Experience Gain %:|r This is the most important stat to level up quickly. Increasing your Experience Gain % will significantly boost your leveling speed.
    *|cRXP_WARN_Additionally, some of the Experience Gain will carry over to each new toon you create during the event. This is true for every other stat as well|r.
step
    +|cRXP_WARN_Gems in WoW Remix: Mists of Pandaria|r.
step
    +|cRXP_WARN_In the WoW Remix: Mists of Pandaria event,|r gems play a crucial role in enhancing your character's abilities and customizing your gameplay experience.
step
    +Players can obtain four types of gems by |cRXP_WARN_looting enemies|r and opening |cRXP_FRIENDLY_|T1542852:0|tCaches of Infinite Treasures|r.
step
    +|cRXP_WARN_Meta Gems:|r These fit into the helm equipment slot and provide unique, powerful on-use abilities with great destructive power.
step
    +|cRXP_WARN_Cogwheel Gems:|r These fit into the feet equipment slot and enhance iconic movement speed abilities, such as Sprint for rogues or Roll for monks.
step
    +|cRXP_WARN_Tinker Gems:|r These fit into the shoulder, belt, wrist, and gloves equipment slots, offering unique, powerful passive abilities.
step
    +|cRXP_WARN_Prismatic Gems:|r These fit into the chest, legs, necklaces, rings, and trinkets equipment slots.
    *|cRXP_WARN_Prismatic Gems provide a range of stats from main stat to secondary stats|r.
step
    +Especially useful gems during leveling are |T839974:0|t[Thundering Orb], |T236172:0|t[Trailblazer] and |T236209:0|t[Brittle].
step
    +|cRXP_WARN_|T4638724:0|t[Bronze] in WoW Remix: Mists of Pandaria|r.
step
    +|cRXP_WARN_In WoW Remix: Mists of Pandaria|r |T4638724:0|t[Bronze] is a special currency used to upgrade items and purchase cosmetics.
    *Here's a detailed explanation of how Bronze works and its role in the event:
step
    +|cRXP_WARN_Acquisition of |T4638724:0|t[Bronze]|r.
    *|cRXP_WARN_Scrapping Unwanted Items:|r Players can scrap unwanted or outleveled items |cRXP_WARN_including prismatic gems|r by using the |T4643984:0|t[Unraveling Sands] Abilty to obtain Bronze. This process helps players clear their inventory of items they no longer need while gaining a valuable resource.
    *|cRXP_WARN_Gem extraction:|r.  Players can remove gems from items by using the |T1379201:0|t[Gem Extraction] Ability or by scrapping obsolete gear with gems inside, allowing them to reuse or replace the gems with better ones. This ensures that players can continually optimize their gear without losing valuable gems.
    *|cRXP_WARN_Loot and Rewards:|r |T4638724:0|t[Bronze] can also be obtained from various event activities, such as dragonriding, looting enemies and completing quests.
step
    +|cFFFF0000TLDR: Always loot each enemy and never forget to wear your cloak|r.
step
    +The guide will instruct you to buy gems and upgrade your gear.
    *|cRXP_WARN_However, if you prefer to spend your |T4638724:0|t[Bronze] on cosmetics, you will need to manually skip those steps|r.
step
    +During downtime, commonly referred to as roleplay or RP, the guide will instruct you to scrap, extract gems, open |cRXP_FRIENDLY_|T1542852:0|tCaches of Infinite Treasures|r and equip new gear and gems.
    *|cRXP_WARN_This may occasionally be required outside of downtime as well|r.
step
    +|cRXP_WARN_Useful Macros:|r
    .link https://pastebin.com/DU8YgCAf >> |cRXP_WARN_Click Here|r.
step
    +|cRXP_WARN_Useful Weakaura:|r
    .link https://wago.io/DSKFme0-p >> |cRXP_WARN_Click Here|r.
step
    +If you spot any Rares or Treasures along the route, be sure to collect and kill them.
]])

-- Introduction
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(10-70)|r Pandaria Remix 
#name 2) Pandaria Remix Introduction
#displayname |cFF00CCFF1|r - Timeless Isle Introduction
#title Timeless Isle Introduction
#next 3) Jade Forest Horde << Horde
#next 3) Jade Forest Alliance << Alliance

step
    .goto 554,24.54,52.21
    .achievementComplete 19871,1
    .gossipoption 120607 >>Talk to |cRXP_FRIENDLY_Eternus|r.
    .target Eternus
step
    .goto 554,24.54,52.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eternus|r.
    .accept 79432 >>Accept It's About Time
    .target Eternus
step
    #completewith next
    .goto 554,25.72,46.29
    >>Click on the |cRXP_PICK_Unstable Rift|r.
    .complete 79432,1 --1/1 Investigate the Unstable Rift (Optional)
step
    .goto 554,25.72,46.29
    >>Kill |cRXP_ENEMY_Archaios the Artificer|r.
    .complete 79432,1 --1/1 Investigate the Unstable Rift (Optional)
    .complete 79432,2 --1/1 Archaios the Artificer slain
step
    .goto 554,25.72,46.29
    >>Loot him for his [|cRXP_LOOT_Artifact|r].
    .complete 79432,3 --1/1 Archaios's artifact taken
    .mob archaios the artificer
step
    .goto 554,24.51,52.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eternus|r.
    .turnin 79432 >>Turn in It's About Time
    .accept 79433 >>Accept Seeking Expert Advice
    .target Eternus
step
    .goto 554,25.68,51.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r.
    .turnin 79433 >>Turn in Seeking Expert Advice
    .accept 79434 >>Accept Weave It To Me
    .accept 79437 >>Accept Knot My Problem
    .target Moratari
step
    #completewith Time Rift
    >>Kill |cRXP_ENEMY_Infinite Ravagers|r. Loot them for [|cRXP_LOOT_Threads of Time|r].
    .complete 79434,1 --3/3 Thread of Time
    .mob Infinite Ravager
step
    .goto 554,22.95,55.54
    >>Click on the |cRXP_PICK_Time Rift|r.
    .complete 79437,1,1 --3/3 Time Rift closed
step
    .goto 554,22.47,50.32
    >>Click on the |cRXP_PICK_Time Rift|r.
    .complete 79437,1,2 --3/3 Time Rift closed
step
    #label Time Rift
    .goto 554,20.95,45.15
    >>Click on the |cRXP_PICK_Time Rift|r.
    .complete 79437,1,3 --3/3 Time Rift closed
step
    #loop
    .goto 554,24.0,55.4,40,0
    .goto 554,22.4,43.4,40,0
    .goto 554,24.0,55.4,0
    .goto 554,22.4,43.4,0
    >>Kill |cRXP_ENEMY_Infinite Ravagers|r. Loot them for [|cRXP_LOOT_Threads of Time|r].
    .complete 79434,1 --3/3 Thread of Time
    .mob Infinite Ravager
step
    .goto 554,25.69,51.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r.
    .turnin 79437 >>Turn in Weave It To Me
    .accept 79435 >>Accept What's Hours Is Yours
    .target Moratari
step
    .goto 554,25.46,53.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Horos|r.
    .complete 79435,1 --1/1 Chronobadge purchased
    .skipgossip 217051,1
    .buy 215438,1
    .target Horos
step
    #completewith next
    .goto 554,24.97,52.87
    .gossipoption 120769>>Talk to |cRXP_FRIENDLY_Momentus|r.
    .timer 9,RP
    .target Momentus
step
    .goto 554,25.67,51.61
    >>|cRXP_WARN_Wait for the Roleplay|r.
    .complete 79435,2 --1/1 Ask Momentus to forge your artifact
    .skipgossip
    .target Momentus
step
    .goto 554,25.67,51.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r.
    .turnin 79435 >>Turn in What's Hours Is Yours
    .accept 80380 >>Accept Cloak and Needle
    .target Moratari
step
    .goto 554,24.0,55.4,40,0
    .goto 554,22.4,43.4,40,0
    .goto 554,24.0,55.4,0
    .goto 554,22.4,43.4,0
    >>Equip the |T622728:0|t[Cloak of Infinite Potential]
    .complete 80380,1 --1/1 Cloak of Infinite Potential equipped
    .use 210333
step
    #loop
    .goto 554,24.0,55.4,40,0
    .goto 554,22.4,43.4,40,0
    .goto 554,24.0,55.4,0
    .goto 554,22.4,43.4,0
    >>Kill |cRXP_ENEMY_Infinite Ravagers|r. Loot them for [|cRXP_LOOT_Thread of Power|r].
    .complete 80380,2 --1/1 Thread of Power collected from Infinite Ravager
    .mob Infinite Ravager
step
    .goto 554,25.67,51.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r.
    .turnin 80380 >>Turn in Cloak and Needle
    .target Moratari
    .accept 79438 >>Accept Goodbyes Are Hard When You Live Forever
step
    .goto 554,25.71,58.11
    >>Kill |cRXP_ENEMY_Eratus, the Unwoven Paradox|r.
    .complete 79438,1 --1/1 Eratus, the Unwoven Paradox defeated
    .mob Eratus, the Unwoven Paradox
step
    .goto 554,26.44,54.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r.
    .turnin 79438 >>Turn in Goodbyes Are Hard When You Live Forever
    .target Moratari
    .accept 79440 >>Accept Recalling the War
step
    .goto 554,26.04,53.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eternus|r.
    .complete 79440,1 --1/1 Speak to Eternus about recent events
    .skipgossip 217538,3
    .target Eternus
step << Horde
    .goto 371,30.84,10.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eternus|r.
    .turnin 79440 >>Turn in Recalling the War
    .target Eternus
step << Alliance
    .goto 371,41.98,92.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eternus|r.
    .turnin 79440 >>Turn in Recalling the War
    .target Eternus
]])

-- Jade Forest Horde
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(10-70)|r Pandaria Remix 

#title Jade Forest
#name 3) Jade Forest Horde
#displayname |cFF00CCFF2|r - Jade Forest
#next 4) Valley of the Four Winds 1

<< Horde

step
    .goto 371,30.85,10.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eternus|r.
    .turnin 79440 >>Turn in Recalling the War
    .target Eternus
step
    .goto 12,61.22,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r.
    .accept 29690 >>Accept Into the Mists
    .target General Nazgrim
step
    .goto 371,31.12,11.03
    .complete 29690,1 --1/1 Discovered Pandaria
step
    .goto 371,30.78,10.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r.
    .turnin 29690 >>Turn in Into the Mists
    .target General Nazgrim
    .accept 31765 >>Accept Paint it Red!
step
    #completewith next
    .goto 371,31.36,11.05,8,0
    .goto 371,31.37,11.51,8,0
    .goto 371,31.07,11.37,8,0
    .goto 371,31.12,11.57,8 >>Follow the way down
step
    .isOnQuest 31765
    .goto 371,31.53,11.01
    .vehicle 66183 >>Enter the Gunship Turret
step
    >>Kill |cRXP_ENEMY_Thunder Hold Cannons|r and |cRXP_ENEMY_Thunder Hold Soldiers|r.
    >>Spam |T132385:0|t[Shredder Round] (2), use |T249177:0|t[Full Autofire] (1) on cooldown
    *|cRXP_WARN_Focus the barrels, because they kill everything around them|r.
    .goto 371,31.53,11.01
    .complete 31765,2 --9/9 Thunder Hold cannons destroyed
    .complete 31765,1 --80/80 Thunder Hold troops slain
step
    .goto 371,31.01,11.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r.
    .turnin 31765 >>Turn in Paint it Red!
    .target Rivett Clutchpop
    .accept 31766 >>Accept Touching Ground
step
    >>Click on the |cRXP_PICK_Rappeling Rope|r.
    .goto 371,31.51,11.10
    .complete 31766,1 --1/1 Rappel into Honeydew Glade
step
    #loop
    .goto 371,31.55,11.29,5,0
    .goto 371,31.69,11.48,5,0
    .goto 371,31.55,11.29,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r.
    .turnin 31766 >>Turn in Touching Ground
    .accept 31767 >>Accept Finish Them!
    .accept 31768 >>Accept Fire Is Always the Answer
    .target General Nazgrim
step
    #completewith ThunderHoldTroops
    #hidewindow
    #loop
    .goto 371,33.77,13.27,15,0
    .goto 371,34.38,13.12,20,0
    .goto 371,34.81,12.25,18,0
    .goto 371,34.41,11.72,15,0
    .goto 371,33.14,11.39,18,0
    .goto 371,33.24,9.70,25,0
    .goto 371,35.12,9.31,25,0
    .goto 371,35.39,7.30,25,0
    .goto 371,33.91,8.81,25,0
    .goto 371,32.15,6.25,30,0
    .goto 371,33.77,13.27,0
    .goto 371,34.38,13.12,0
    .goto 371,34.81,12.25,0
    .goto 371,34.41,11.72,0
    .goto 371,33.14,11.39,0
    .goto 371,33.24,9.70,0
    .goto 371,35.12,9.31,0
    .goto 371,35.39,7.30,0
    .goto 371,33.91,8.81,0
    .goto 371,32.15,6.25,0
    +1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Thunder Hold Menders|r, |cRXP_ENEMY_Thunder Hold Cannoneers|r, and |cRXP_ENEMY_Thunder Hold Armsmen|r.
    .complete 31767,1 --15/15 Thunder Hold troops slain
    .mob Thunder Hold Mender
    .mob Thunder Hold Cannoneer
    .mob Thunder Hold Armsman
step
    >>Use |T134538:0|t[Nazgrim's Flare Gun] to destroy the |cRXP_PICK_Thunder Hold Munitions|r.
    .use 89605
    .complete 31768,1 --10/10 Thunder Hold Munitions destroyed
step
    #label ThunderHoldTroops
    >>Kill |cRXP_ENEMY_Thunder Hold Menders|r, |cRXP_ENEMY_Thunder Hold Cannoneers|r, and |cRXP_ENEMY_Thunder Hold Armsmen|r.
    .complete 31767,1 --15/15 Thunder Hold troops slain
    .mob Thunder Hold Mender
    .mob Thunder Hold Cannoneer
    .mob Thunder Hold Armsman
step
    #completewith next
    .goto 371,33.76,10.62,10 >>Enter the Thunder Hold
step
    .goto 371,34.78,10.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r.
    .turnin 31767 >>Turn in Finish Them!
    .target General Nazgrim
    .turnin 31768 >>Turn in Fire Is Always the Answer
    .accept 31769 >>Accept The Final Blow!
step
    >>Use |T134538:0|t[Nazgrim's Flare Gun] to destroy the |cRXP_PICK_Barricade|r.
    .use 89769
    .goto 371,34.01,10.00
    .complete 31769,1 --1/1 Destroy the first barricade
step
    >>Use |T134538:0|t[Nazgrim's Flare Gun] to destroy the |cRXP_PICK_Barricade|r.
    .use 89769
    .goto 371,34.72,9.96
    .complete 31769,2 --1/1 Destroy the second barricade
step
    >>Use |T134538:0|t[Nazgrim's Flare Gun] to destroy the |cRXP_PICK_Barricade|r.
    .use 89769
    .goto 371,34.89,10.65
    .complete 31769,3 --1/1 Destroy the third barricade
step
    >>Wait for the roleplay. |cRXP_WARN_You can skip the cutscene|r.
    .goto 371,33.65,10.61
    .complete 31769,4 --1/1 Find Captain Doren
    .timer 20,Roleplay duration
    --PERMOK: Fix timer
step
    #completewith next
    +|cRXP_WARN_If nothing happens then start moving around|r.
step
    .goto 371,33.66,10.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r.
    .turnin 31769 >>Turn in The Final Blow!
    .timer 30,Roleplay duration
    .target General Nazgrim
    --PERMOK: Fix timer
step
    #completewith next
    +|cRXP_WARN_To efficiently learn dragonriding talents, use the macro found under "CLICK HERE"|r.
    .link /run GenericTraitUI_LoadUI();GenericTraitFrame:SetSystemID(1);ToggleFrame(GenericTraitFrame) >> CLICK HERE
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r and |cRXP_FRIENDLY_Taran Zhu|r.
    .accept 29694 >>Accept Regroup!
    .accept 31770 >>Accept You're Either With Us Or...
    .goto 371,33.66,10.62
    .target +General Nazgrim
    .accept 31771 >>Accept Face to Face With Consequence
    .goto 371,33.72,10.61
    .target +Taran Zhu
step
    #loop
    .goto 371,34.45,9.89,30,0
    .goto 371,34.55,11.31,30,0
    .goto 371,34.66,10.61,10,0
    .goto 371,35.00,10.62,10,0
    .goto 371,33.13,10.62,20,0
    .goto 371,34.77,10.62,20,0
    .goto 371,33.08,10.60,25,0
    .goto 371,34.27,13.17,25,0
    .goto 371,33.38,12.97,25,0
    .goto 371,32.39,6.20,25,0
    .goto 371,35.25,7.67,25,0
    .goto 371,34.45,9.89,0
    .goto 371,34.55,11.31,0
    .goto 371,34.66,10.61,0
    .goto 371,35.00,10.62,0
    .goto 371,34.63,8.83,0
    .goto 371,34.00,9.90,0
    .goto 371,34.77,10.62,0
    .goto 371,33.08,10.60,0
    .goto 371,34.27,13.17,0
    .goto 371,33.38,12.97,0
    .goto 371,32.39,6.20,0
    .goto 371,35.25,7.67,0
    >>Kill |cRXP_ENEMY_Sha Harbinger|r and |cRXP_ENEMY_Sha Haunt|r.
    .complete 31771,2 --7/7 Sha Harbinger slain
    .complete 31771,1 --20/20 Sha Haunt slain
    .mob Sha Harbinger
    .mob Sha Haunt
step
    .goto 371,31.99,13.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gi-Oh|r.
    .accept 31978 >>Accept Priorities!
    .target Gi-Oh
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r.
    .goto 371,32.06,13.35
    .skipgossip 55141,1
    .complete 29694,1 --1/1 Shademaster Kiryn Rescued
    .target Shademaster Kiryn
step
    .goto 371,32.06,13.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kai-Lin Honeydew|r.
    .accept 31773 >>Accept Prowler Problems
    .target Kai-Lin Honeydew
step
    #completewith ShokiaRescued
    >>Kill |cRXP_ENEMY_Sha-Infested Prowler|r.
    .complete 31773,1 --10/10 Sha-Infested Prowler slain
    .mob Sha-Infested Prowler
step
    #completewith next
    >>Click on the |cRXP_PICK_Barrels of Honeybrew|r.
    .complete 31978,1 --6/6 Barrel of Honeybrew
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergeant Gorrok|r.
    .goto 371,30.58,11.65
    .skipgossip 55162,1
    .complete 29694,3 --1/1 Sergeant Gorrok Rescued
    .target Sergeant Gorrok
step
    #completewith next
    .goto 371,30.91,10.03,18,0
    .goto 371,31.13,9.36,18,0
    >>Click on the |cRXP_PICK_Barrels of Honeybrew|r.
    .complete 31978,1 --6/6 Barrel of Honeybrew
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r.
    .goto 371,30.53,7.22
    .skipgossip 55146,1
    .complete 29694,2 --1/1 Rivett Clutchpop Rescued
    .target Rivett Clutchpop
step
    #label ShokiaRescued
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shokia|r.
    .goto 371,29.43,8.47
    .skipgossip 55170,1
    .complete 29694,4 --1/1 Shokia Rescued
    .target Shokia
step
    #completewith ShaInfestedProwler
    #hidewindow
    #loop
    .goto 371,28.60,8.88,25,0
    .goto 371,29.09,10.02,25,0
    .goto 371,30.78,12.52,25,0
    .goto 371,30.63,15.18,25,0
    .goto 371,31.95,13.56,25,0
    .goto 371,31.09,9.34,35,0
    .goto 371,28.60,8.88,0
    .goto 371,29.09,10.02,0
    .goto 371,30.78,12.52,0
    .goto 371,30.63,15.18,0
    .goto 371,31.95,13.56,0
    .goto 371,31.09,9.34,0
    +1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Sha-Infested Prowler|r.
    .complete 31773,1 --10/10 Sha-Infested Prowler slain
    .mob Sha-Infested Prowler
step
    >>Click on the |cRXP_PICK_Barrels of Honeybrew|r.
    .complete 31978,1 --6/6 Barrel of Honeybrew
step
    #label ShaInfestedProwler
    >>Kill |cRXP_ENEMY_Sha-Infested Prowler|r.
    .complete 31773,1 --10/10 Sha-Infested Prowler slain
    .mob Sha-Infested Prowler
step
    .goto 371,29.38,13.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ellie Honeypaw|r.
    .turnin 31978 >>Turn in Priorities!
    .target Ellie Honeypaw
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mayor Honeydew|r, |cRXP_FRIENDLY_Taran Zhu|r, and |cRXP_FRIENDLY_Sergeant Gorrok|r.
    .turnin 31770 >>Turn in You're Either With Us Or...
    .goto 371,29.18,13.79
    .target +Mayor Honeydew
    .turnin 31771 >>Turn in Face to Face With Consequence
    .turnin 31773 >>Turn in Prowler Problems
    .goto 371,29.13,13.85
    .target +Taran Zhu
    .turnin 29694 >>Turn in Regroup!
    .accept 31774 >>Accept Seeking Zin'jun
    .goto 371,29.13,13.72
    .target +Sergeant Gorrok
step
    .goto 371,28.51,13.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brewmother Kiki|r.
    .turnin 81638 >>Turn in Home Is Where the Hearthstone Is
    .target Brewmother Kiki
step
    .goto 371,28.53,14.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r.
    .target Moratari
    .accept 80012 >>Accept Dragonriding
    .timer 5,RP
step
    .isOnQuest 80012
    .xp >14,1
    .goto 371,28.6,14.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nostwin|r and buy |T134491:0|t[Nostwin's Voucher.]
    .collect 217930,10
    .buy 217930,10
    .skipgossip
    .target Nostwin
step
    .isOnQuest 80012
    .xp <14,1
    #loop
    .goto 371,28.6,14.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nostwin|r and buy |T134491:0|t[Nostwin's Voucher.]
    .collect 217930,10
    .buy 217930,10
    .skipgossip
    .accept 81976 >>Turn in Bazaar, Isn't It?
    .turnin 81976 >>Turn in Bazaar, Isn't It?
    .target Nostwin
step
    .goto 371,28.53,14.01
    >>Click on the |cRXP_PICK_Portal|r.
    .complete 80012,1 --1/1 Take Moratari's portal
    .complete 80012,3 --1/1 Learn your new dragonriding mount from your inventory
    .disablecheckbox
step
    #completewith next
    .goto 371,65.28,37.18
    .gossipoption 120916 >>Talk to |cRXP_FRIENDLY_Lord Andestrasz|r.
    .target Lord Andestrasz
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r.
    .goto 371,65.28,37.18
    .complete 80012,4 --1/1 Learn your new dragonriding mount from your inventory
    .target Lord Andestrasz
    --.complete 80012,3 --1/1 Learn your new dragonriding mount from your inventory
step
    .goto 371,65.27,37.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r.
    .turnin 80012 >>Turn in Dragonriding
    .accept 80013 >>Accept How to Glide with Your Dragon
    .target Lord Andestrasz
step
    #completewith next
    .goto 371,65.21,37.46,5,0
    .goto 371,28.58,14.04,40 >>|cRXP_WARN_We pick up this quest for a teleport item to this area|r.
    *Click on the |cRXP_PICK_Portal to Honeydew Village|r to go back.
    .itemcount 216712,1
step
    .goto 371,31.14,17.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zin'Jun|r.
    .turnin 31774 >>Turn in Seeking Zin'jun
    .accept 29765 >>Accept Cryin' My Eyes Out
    .target Zin'Jun
step
    .goto 371,30.90,17.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Ancient Statue|r.
    .accept 29743 >>Accept Monstrosity
    .target Ancient Statue
step
    #completewith Monstrosity
    >>Kill |cRXP_ENEMY_Hozen Groundpounders|r. Loot them for |T135611:0|t[Zin'Jun's Rifle], |T237297:0|t[Zin'Jun's Left Eye], |T237299:0|t[Zin'Jun's Right Eye], and |T134176:0|t[Snuff's Corpse]
    *|cRXP_WARN_Don't kill too many at the same time otherwise they will all drop the same item|r.
    .goto 371,27.81,18.27,45,0
    .complete 29765,1 --1/1 Zin'Jun's Rifle
    .complete 29765,2 --1/1 Zin'Jun's Left Eye
    .complete 29765,3 --1/1 Zin'Jun's Right Eye
    .complete 29765,4 --1/1 Snuff's Corpse
    .mob Hozen Groundpounder
step
    >>Click on the |cRXP_PICK_Ancient Statue Torso|r.
    .goto 371,29.27,18.97
    .skipgossip 1
    .complete 29743,1 --1/1 Statue Torso Sketched
step
    >>Click on the |cRXP_PICK_Ancient Statue Shoulder|r.
    .goto 371,28.47,22.24
    .skipgossip 1
    .complete 29743,3 --1/1 Statue Shoulder Sketched
step
    >>Click on the |cRXP_PICK_Ancient Statue Head|r.
    .goto 371,29.95,22.48
    .skipgossip 1
    .complete 29743,4 --1/1 Statue Head Sketched
step
    >>Click on the |cRXP_PICK_Ancient Statue Arm|r.
    .goto 371,29.93,21.21
    .skipgossip 1
    .complete 29743,2 --1/1 Statue Arm Sketched
step
    #label Monstrosity
    .goto 371,28.61,22.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mopreemixer|r.
    .turnin 29743 >>Turn in Monstrosity
    .target Mopreemixer
step
    #loop
    .goto 371,31.28,21.63,28,0
    .goto 371,30.78,23.01,28,0
    .goto 371,27.81,18.27,30,0
    .goto 371,31.28,21.63,0
    .goto 371,30.78,23.01,0
    .goto 371,27.81,18.27,0
    >>Kill |cRXP_ENEMY_Hozen Groundpounders|r. Loot them for |T135611:0|t[Zin'Jun's Rifle], |T237297:0|t[Zin'Jun's Left Eye], |T237299:0|t[Zin'Jun's Right Eye], and |T134176:0|t[Snuff's Corpse]
    *|cRXP_WARN_Don't kill too many at the same time otherwise they will all drop the same item|r.
    .complete 29765,1 --1/1 Zin'Jun's Rifle
    .complete 29765,2 --1/1 Zin'Jun's Left Eye
    .complete 29765,3 --1/1 Zin'Jun's Right Eye
    .complete 29765,4 --1/1 Snuff's Corpse
    .mob Hozen Groundpounder
step
    .goto 371,31.16,21.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zin'Jun|r.
    .turnin 29765 >>Turn in Cryin' My Eyes Out
    .accept 29804 >>Accept Seein' Red
    .target Zin'Jun
step
    .goto 371,31.95,22.22
    >>Kill |cRXP_ENEMY_Konk|r.
    .complete 29804,1 --1/1 Konk Slain
    .timer 11,Roleplay Duration
    .mob Konk
step
    .goto 371,31.66,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r.
    .turnin 29804 >>Turn in Seein' Red
    .accept 31775 >>Accept Assault on the Airstrip
    .accept 31776 >>Accept Strongarm Tactics
    .target General Nazgrim
step
    .goto 371,31.41,21.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merchant Zin|r.
    .accept 31778 >>Accept Unreliable Allies
    .target Merchant Zin
step
    .goto 371,31.13,21.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r.
    .accept 31777 >>Accept Choppertunity
    .target Rivett Clutchpop
-- PERMOK: WORK IN PROGRESS
step
    #completewith Cogswing
    #completewith Grimhatchet
    #hidewindow
    #loop
    .goto 371,29.66,23.11,15,0
    .goto 371,30.32,24.38,15,0
    .goto 371,29.66,23.11,0
    .goto 371,30.32,24.38,0
    +1
step
    #completewith MorgusGrimhatchet
    >>Kill |cRXP_ENEMY_Strongarm troop|r.
    .complete 31775,1 --15/15 Strongarm troop slain
    .mob Strongarm troop
step
    #completewith MorgusGrimhatchet
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pandaren Volunteers|r.
    .skipgossip 65974,1
    .skipgossip 67090,1
    .complete 31778,1 --12/12 Indentured Pandaren freed
    .target Pandaren Volunteer
step
    #completewith next
    #label Cogswing
    >>Kill |cRXP_ENEMY_Master Engineer Cogswing|r and |cRXP_ENEMY_Gyro-Mechanic Lavenderp|r.
    .complete 31776,1 --1/1 Master Engineer Cogswing slain
    .complete 31776,2 --1/1 Gyro-Mechanic Lavenderp slain
    .mob Master Engineer Cogswing
    .mob Gyro-Mechanic Lavenderp
step
    #completewith Cogswing
    #label Grimhatchet
    >>Kill |cRXP_ENEMY_Morgus Grimhatchet|r.
    .complete 31776,3 --1/1 Morgus Grimhatchet slain
    .mob Morgus Grimhatchet
step
    #requires Grimhatchet
    #optional
    >>Kill |cRXP_ENEMY_Master Engineer Cogswing|r and |cRXP_ENEMY_Gyro-Mechanic Lavenderp|r.
    .goto 371,30.32,24.38
    .complete 31776,1 --1/1 Master Engineer Cogswing slain
    .complete 31776,2 --1/1 Gyro-Mechanic Lavenderp slain
    .mob Master Engineer Cogswing
    .mob Gyro-Mechanic Lavenderp
step
    #optional
    #label MorgusGrimhatchet
    >>Kill |cRXP_ENEMY_Morgus Grimhatchet|r.
    .goto 371,29.66,23.11
    .complete 31776,3 --1/1 Morgus Grimhatchet slain
    .mob Morgus Grimhatchet
step
    #completewith CorporalJacksonSilver
    >>Kill |cRXP_ENEMY_Strongarm troop|r.
    .complete 31775,1 --15/15 Strongarm troop slain
    .mob Strongarm troop
step
    #completewith CorporalJacksonSilver
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pandaren Volunteers|r.
    .skipgossip 65974,1
    .skipgossip 67090,1
    .complete 31778,1 --12/12 Indentured Pandaren freed
    .target Pandaren Volunteer
step
    #label CorporalJacksonSilver
    >>Kill |cRXP_ENEMY_Corporal Jackson Silver|r.
    .goto 371,27.78,22.92
    .complete 31776,4 --1/1 Corporal Jackson Silver slain
    .mob Corporal Jackson Silver
step
    #completewith StrongarmGyrocopter
    #hidewindow
    #loop
    .goto 371,28.26,23.48,12,0
    .goto 371,28.35,24.20,12,0
    .goto 371,28.18,25.09,12,0
    .goto 371,27.34,24.76,12,0
    .goto 371,26.96,23.26,12,0
    .goto 371,28.26,23.48,0
    .goto 371,28.35,24.20,0
    .goto 371,28.18,25.09,0
    .goto 371,27.34,24.76,0
    .goto 371,26.96,23.26,0
    +1
step
    #completewith StrongarmGyrocopter
    >>Kill |cRXP_ENEMY_Strongarm troop|r.
    .complete 31775,1 --15/15 Strongarm troop slain
    .mob Strongarm troop
step
    #completewith StrongarmGyrocopter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pandaren Volunteers|r.
    .skipgossip 65974,1
    .skipgossip 67090,1
    .complete 31778,1 --12/12 Indentured Pandaren freed
    .target Pandaren Volunteer
step
    #label StrongarmGyrocopter
    >>Pick up |T133837:0|t[Requisitioned Firework Launchers]. |cRXP_WARN_You can only carry 4 at a time|r.
    >>|cRXP_WARN_Click on the |cRXP_ENEMY_Strongarm Gyrocopters|r in the air|r. (you can just Right-Click them)
    .use 89163
    .complete 31777,1 --12/12 Strongarm Gyrocopter shot down
    .mob Strongarm Gyrocopter
step
    #completewith StrongarmTroop
    #hidewindow
    #loop
    .goto 371,29.72,24.58,25,0
    .goto 371,29.67,23.17,25,0
    .goto 371,29.10,22.59,20,0
    .goto 371,28.26,23.48,12,0
    .goto 371,28.35,24.20,12,0
    .goto 371,28.18,25.09,12,0
    .goto 371,27.34,24.76,12,0
    .goto 371,26.96,23.26,12,0
    .goto 371,29.72,24.58,0
    .goto 371,29.67,23.17,0
    .goto 371,29.10,22.59,0
    .goto 371,28.26,23.48,0
    .goto 371,28.35,24.20,0
    .goto 371,28.18,25.09,0
    .goto 371,27.34,24.76,0
    .goto 371,26.96,23.26,0
    +1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Strongarm troop|r.
    .complete 31775,1 --15/15 Strongarm troop slain
    .mob Strongarm troop
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pandaren Volunteers|r.
    .skipgossip 65974,1
    .skipgossip 67090,1
    .complete 31778,1 --12/12 Indentured Pandaren freed
    .target Pandaren Volunteer
step
    #label StrongarmTroop
    >>Kill |cRXP_ENEMY_Strongarm troop|r.
    .complete 31775,1 --15/15 Strongarm troop slain
    .mob Strongarm troop
step
    #requires Grimhatchet
    .goto 371,31.14,21.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r.
    .turnin 31777 >>Turn in Choppertunity
    .target Rivett Clutchpop
step
    .goto 371,31.43,21.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Merchant Zin|r.
    .turnin 31778 >>Turn in Unreliable Allies
    .target Merchant Zin
step
    .goto 371,31.67,21.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r.
    .turnin 31775 >>Turn in Assault on the Airstrip
    .turnin 31776 >>Turn in Strongarm Tactics
    .accept 31779 >>Accept The Darkness Within
    .target General Nazgrim
step
    #completewith next
    .goto 371,26.00,24.43,10 >>Enter the cave behind the bridge
step
    .goto 371,25.76,23.64
    >>Kill |cRXP_ENEMY_Captain Doren|r.
    .complete 31779,1 --1/1 Captain Doren slain
    .mob Captain Doren
step
    .goto 371,27.57,24.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Flagpole|r.
    .turnin 31779 >>Turn in The Darkness Within
    .accept 31999 >>Accept Nazgrim's Command
    .target Flagpole
step
    .goto 371,28.43,24.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r.
    .turnin 31999 >>Turn in Nazgrim's Command
    .target General Nazgrim
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r and |cRXP_FRIENDLY_Rivett Clutchpop|r.
    .accept 29815 >>Accept Forensic Science
    .goto 371,28.19,24.83
    .target +Shademaster Kiryn
    .accept 29821 >>Accept Missed Me By... That Much!
    .goto 371,28.10,24.70
    .target +Rivett Clutchpop
step
    #completewith next
    >>Pick up |T132108:0|t[Lurching Blossoms] |cRXP_WARN_(possible while mounted)|r.
    .complete 29815,1 --8/8 Viscous Chlorophyll
    .target Lurching Blossom
step
    .goto 371,22.87,30.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Empty Package|r.
    .turnin 29821 >>Turn in Missed Me By... That Much!
    .accept 31112 >>Accept They're So Thorny!
    .target Empty Package
step
    #completewith EmergencySupplies
    #hidewindow
    #loop
    .goto 371,24.06,26.77,35,0
    .goto 371,25.61,29.03,25,0
    .goto 371,26.52,25.86,25,0
    .goto 371,24.06,26.77,0
    .goto 371,25.61,29.03,0
    .goto 371,26.52,25.86,0
    +1
step
    #completewith next
    >>Click on |cRXP_PICK_Lurching Blossoms|r |cRXP_WARN_(possible while mounted)|r.
    .complete 29815,1 --8/8 Viscous Chlorophyll
    .target Lurching Blossom
step
    #label EmergencySupplies
    >>Kill |cRXP_ENEMY_Water Sprites|r. Loot them for the |T348523:0|t[Emergency Supplies].
    .complete 31112,1 --5/5 Emergency Supplies
    .mob Water Sprite
step
    >>Pick up |T132108:0|t[Lurching Blossoms] |cRXP_WARN_(possible while mounted)|r.
    .complete 29815,1 --8/8 Viscous Chlorophyll
    .target Lurching Blossom
-- step << Horde
--     .goto 371,26.39,28.33
--     .achievement 6850,1 >>Click on the |cRXP_PICK_Scroll|r.
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rivett Clutchpop|r and |cRXP_FRIENDLY_Shademaster Kiryn|r.
    .turnin 31112 >>Turn in They're So Thorny!
    .goto 371,28.11,24.69
    .target +Rivett Clutchpop
    .turnin 29815 >>Turn in Forensic Science
    .accept 29827 >>Accept Acid Rain
    .goto 371,28.19,24.82
    .target +Shademaster Kiryn
step
    #completewith next
    .goto 371,28.07,24.79
    >>|cRXP_WARN_Don't skip the cutscene|r.
    .vehicle 55676 >>Mount the |cRXP_FRIENDLY_Recovered Gyrocopter|r.
    .target Recovered Gyrocopter
step
    .goto 371,28.07,24.79
    >>|cRXP_WARN_Use|r |T237521:0|t[Poison Blossom] (2) |cRXP_WARN_while above a large group of mobs|r. |cRXP_WARN_Use |r |T135431:0|t[Throw Star] (1) |cRXP_WARN_to kill individual mobs|r.
    >>Kill |cRXP_ENEMY_Hozen Nibstabber|r and |cRXP_ENEMY_Hozen Gutripper|r.
    .complete 29827,2 --25/25 Hozen Nibstabber slain
    .complete 29827,1 --25/25 Hozen Gutripper slain
    .mob Hozen Nibstabber
    .mob Hozen Gutripper
step
    .goto 371,26.83,26.79
    >>Kill |cRXP_ENEMY_Hozen Gutripper|r.
    .mob Hozen Gutripper
step
    .goto 371,28.18,24.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Shademaster Kiryn|r.
    .turnin 29827 >>Turn in Acid Rain
    .target Shademaster Kiryn
step
    .goto 371,28.44,24.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_General Nazgrim|r.
    .accept 29822 >>Accept Lay of the Land
    .target General Nazgrim
step
    >>Follow the arrow
    .goto 371,31.98,27.73
    .complete 29822,1 --1/1 Shrine of the Sun Visited
step
    .isOnQuest 29822
    .cast 3365 >>Pick up the |T133784:0|t[Lucky Pandaren Coin] in the well
    .goto 371,31.96,27.75
step
    .goto 371,27.80,30.28
    >>Kill |cRXP_ENEMY_Dook Ookem|r.
    .complete 29822,3 --1/1 Dook Ookem slain
    .mob Dook Ookem
step
    >>Follow the arrow
    .goto 371,26.25,32.35
    .complete 29822,2 --1/1 Shrine of the Moon Visited
step
    .isOnQuest 29822
    .cast 3365 >>Pick up the |T608949:0|t[Ancient Pandaren Tea Pot] on the table
    .goto 371,26.22,32.35
step
    .goto 371,27.59,32.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lorewalker Cho|r.
    .turnin 29822 >>Turn in Lay of the Land
    --.accept 31121 >>Accept Stay a While, and Listen
    .target Lorewalker Cho
step
    #include 1) Jade Forest Side Quests Tian Monastery
step
    #include 1) Jade Forest Side Quests Sprites Plight
step
    #include 1) Jade Forest Cloud Serpent Side Quests
step
    #include X) August Celestial Daillies@startaugustjade-endaugustjade
step
    .goto 371,48.32,46.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Old Man Misteye|r.
    .accept 29576 >>Accept An Air of Worry
    .target Old Man Misteye
-- step
--    .goto 371,47.17,47.19
--    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jade Forest Flame Guardian|r.
--    .accept 32498 >>Accept Honor the Flame
--    .target Jade Forest Flame Guardian
-- step
--     .goto 371,47.17,47.13
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Midsummer Bonfire|r.
--     .turnin 32498 >>Turn in Honor the Flame
--     .target Midsummer Bonfire
step
    #include 1) Jade Forest Defiance Side Quests
]])

-- Jade Forest Alliance
RXPGuides.RegisterGuide([[
#retail
#version 1
#group RestedXP Speed Leveling
#subgroup |cFFFCDC00(10-70)|r Pandaria Remix 

#name 3) Jade Forest Alliance
#displayname |cFF00CCFF2|r - Jade Forest
#title Jade Forest
#next 4) Valley of the Four Winds 1
<<Alliance

step
    .goto 371,42.03,92.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky Admiral Rogers|r.
    .target Sky Admiral Rogers
    .accept 31732 >>Accept Unleash Hell
step
    .goto 371,42.04,92.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky Admiral Rogers|r.
    .accept 31732 >>Accept Unleash Hell
    .target Sky Admiral Rogers
step
    .isOnQuest 31732
    .goto 371,42.02,92.53
    .vehicle >> Click on the |cRXP_PICK_Skyfire Gyrocopter|r.
    .timer 25.5, RP
    .target Skyfire Gyrocopter
step
    #completewith next
    +|cRXP_WARN_To efficiently learn dragonriding talents, use the macro found under "CLICK HERE"|r.
    .link /run GenericTraitUI_LoadUI();GenericTraitFrame:SetSystemID(1);ToggleFrame(GenericTraitFrame) >> CLICK HERE
step
    >>Use |T249177:0|t[Full Autofire(1)] then use |T249177:0|t[Torpedo Rocket(2)] on |cRXP_ENEMY_Shredders|r, |cRXP_ENEMY_Peons|r and |cRXP_ENEMY_Grunts|r. |cRXP_WARN_Ideally, target as many as possible at once and barrels if they are in close proximity|r.
    *|cFFFF0000Make sure to do this as often as possible|r.|r.
    .complete 31732,2 --8/8 Garrosh'ar Shredder slain
    .complete 31732,1 --60/60 Garrosh'ar Horde slain
    .timer 20, RP
    .mob Garrosh'ar Grunt
    .mob Garrosh'ar Peon
    .mob garrosh'ar shredder
step
    .goto 371,44.18,98.83
    >>Use |T249177:0|t[Full Autofire(1)] or |T249177:0|t[Torpedo Rocket(2)] |cRXP_WARN_on an oil barrel on the ship|r.
    .complete 31732,3 --1/1 Bladefist Reaper sunk
    .timer 10.5, RP
step
    .goto 424,65.59,74.42
    >>Use |T249177:0|t[Full Autofire(1)] or |T249177:0|t[Torpedo Rocket(2)] |cRXP_WARN_on an oil barrel on the ship|r.
    .complete 31732,4 --1/1 Stygian Scar sunk
step
    #completewith next
    .exitvehicle >> |cRXP_WARN_Dismount the Skyfire Gyrocopter by pressing the |r.[Exit] |cRXP_WARN_button on your action bars|r.
    *|cRXP_WARN_Alternatively, you can use this macro;|r.
    .macro Leave Vehicle,6656430 >>/leavevehicle
    *|cRXP_WARN_It's recommended to safe this macro for future use|r.
step
    .goto 371,42.04,92.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky Admiral Rogers|r.
    .turnin 31732 >>Turn in Unleash Hell
    .target Sky Admiral Rogers
    .accept 31733 >>Accept Touching Ground
step
    .goto 371,42.32,92.79
    >>Click on the |cRXP_PICK_Skyfire Parachute|r.
    .complete 31733,1 --1/1 Equip a Skyfire Parachute
step
    #completewith next
    .exitvehicle >> |cRXP_WARN_Dismount the Skyfire Gyrocopter by pressing the |r.[Exit] |cRXP_WARN_button on your action bars|r.
    *|cRXP_WARN_Alternatively, you can use this macro;|r.
    .macro Leave Vehicle,6656430 >>/leavevehicle
    *|cRXP_WARN_It's recommended to safe this macro for future use|r.
step
    .goto 371,43.58,90.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sully "The Pickle" McLeary|r.
    .turnin 31733 >>Turn in Touching Ground
    .target Sully "The Pickle" McLeary
    .accept 30069 >>Accept No Plan Survives Contact with the Enemy
    .accept 31734 >>Accept Welcome Wagons
step
    #completewith next
    >>Kill |cRXP_ENEMY_Grunts|r and |cRXP_ENEMY_Gear-Greasers|r.
    .complete 30069,1 --6/6 Garrosh'ar Grunt slain
    .mob garrosh'ar grunt
    .complete 30069,2 --4/4 Garrosh'ar Gear-Greaser slain
    .mob garrosh'ar gear-greaser
step
    #loop
    -- .goto 371,42.53,92.97,15,0
    -- .goto 371,44.09,93.55,15,0
    -- .goto 371,43.92,94.27,15,0
    -- .goto 371,44.41,94.61,15,0
    -- .goto 371,45.10,95.37,15,0
    -- .goto 371,45.60,94.07,15,0
    -- .goto 371,46.10,93.56,15,0
    -- .goto 371,45.14,92.68,15,0
    -- .goto 371,44.83,94.02,15,0
    -- .goto 371,43.81,95.99,15,0
    -- .goto 371,42.53,92.97,0
    -- .goto 371,44.09,93.55,0
    -- .goto 371,43.92,94.27,0
    -- .goto 371,44.41,94.61,0
    -- .goto 371,45.10,95.37,0
    -- .goto 371,45.60,94.07,0
    -- .goto 371,46.10,93.56,0
    -- .goto 371,45.14,92.68,0
    -- .goto 371,44.83,94.02,0
    -- .goto 371,43.81,95.99,0
    .goto 371,44.11,93.48,20,0
    .goto 371,43.92,94.31,20,0
    .goto 371,44.45,94.53,20,0
    .goto 371,44.85,93.98,20,0
    .goto 371,44.11,93.48,0
    .goto 371,43.92,94.31,0
    .goto 371,44.45,94.53,0
    .goto 371,44.85,93.98,0
    >>Use |T135619:0|t[Sully's Flare Gun] |cRXP_WARN_near Horde War Wagons|r.
    .complete 31734,1 --5/5 Horde War Wagon destroyed
    .use 89624
step
    #loop
    -- .goto 371,42.53,92.97,15,0
    -- .goto 371,44.09,93.55,15,0
    -- .goto 371,43.92,94.27,15,0
    -- .goto 371,44.41,94.61,15,0
    -- .goto 371,45.10,95.37,15,0
    -- .goto 371,45.60,94.07,15,0
    -- .goto 371,46.10,93.56,15,0
    -- .goto 371,45.14,92.68,15,0
    -- .goto 371,44.83,94.02,15,0
    -- .goto 371,43.81,95.99,15,0
    -- .goto 371,42.53,92.97,0
    -- .goto 371,44.09,93.55,0
    -- .goto 371,43.92,94.27,0
    -- .goto 371,44.41,94.61,0
    -- .goto 371,45.10,95.37,0
    -- .goto 371,45.60,94.07,0
    -- .goto 371,46.10,93.56,0
    -- .goto 371,45.14,92.68,0
    -- .goto 371,44.83,94.02,0
    -- .goto 371,43.81,95.99,0
    .goto 371,45.78,93.33,30,0
    .goto 371,45.4,94.35,30,0
    .goto 371,44.63,95.64,30,0
    .goto 371,44.21,95.97,30,0
    .goto 371,45.78,93.33,0
    .goto 371,45.4,94.35,0
    .goto 371,44.63,95.64,0
    .goto 371,44.21,95.97,0
    >>Kill |cRXP_ENEMY_Grunts|r and |cRXP_ENEMY_Gear-Greasers|r.
    .complete 30069,1 --6/6 Garrosh'ar Grunt slain
    .complete 30069,2 --4/4 Garrosh'ar Gear-Greaser slain
    .mob garrosh'ar grunt
    .mob garrosh'ar gear-greaser
step
    .goto 371,45.17,95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rell Nightwind|r.
    .turnin 30069 >>Turn in No Plan Survives Contact with the Enemy
    .turnin 31734 >>Turn in Welcome Wagons
    .accept 31735 >>Accept The Right Tool For The Job
    .target Rell Nightwind
step
    .goto 371,45.62,95.24
    >>Use |T135619:0|t[Sully's Flare Gun] |cRXP_WARN_near the barricade|r.
    .complete 31735,1 --1/1 First Barricade Destroyed
    .use 89624
step
    .goto 371,45.99,96.01
    >>Use |T135619:0|t[Sully's Flare Gun] |cRXP_WARN_near the barricade|r.
    .complete 31735,2 --1/1 Second Barricade Destroyed
    .use 89624
step
    .goto 371,46.21,96.34
    >>|cRXP_WARN_Follow the Arrow|r.
    .complete 31735,3 --1/1 Ga'trul Confronted
    .timer 13,RP
step
    .goto 371,46.47,96.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rell Nightwind|r.
    .turnin 31735 >>Turn in The Right Tool For The Job
    .target Rell Nightwind
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rell Nightwind|r.
    .goto 371,46.47,96.42
    .accept 31736 >>Accept Envoy of the Alliance
    .accept 31737 >>Accept The Cost of War
    .target Rell Nightwind
step
    #loop
    .goto 371,45.53,94.18,15,0
    .goto 371,45.90,93.36,15,0
    .goto 371,45.10,91.64,15,0
    .goto 371,44.52,91.27,15,0
    .goto 371,42.94,92.81,15,0
    .goto 371,44.32,94.09,15,0
    .goto 371,45.53,94.18,0
    .goto 371,45.90,93.36,0
    .goto 371,45.10,91.64,0
    .goto 371,44.52,91.27,0
    .goto 371,42.94,92.81,0
    .goto 371,44.32,94.09,0
    >>Kill |cRXP_ENEMY_Sha Haunt|r and |cRXP_ENEMY_Sha Harbinger|r.
    .complete 31737,1 --10/10 Sha Haunt slain
    .mob +sha haunt
    .complete 31737,2 --5/5 Sha Harbinger slain
    .mob +sha harbinger
step
    .goto 371,46.13,85.11
    >>|cRXP_WARN_Follow the Arrow|r.
    .complete 31736,1 --1/1 Leader of Paw'don Village found
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Taran Zhu|r, |cRXP_FRIENDLY_Sunke Khang|r, |cRXP_FRIENDLY_Teng Applebloom|r and |cRXP_FRIENDLY_Mishka|r.
    .turnin 31737 >>Turn in The Cost of War
    .goto 371,46.25,84.81
    .target +Taran Zhu
    .turnin 31736 >>Turn in Envoy of the Alliance
    .accept 31738 >>Accept Pillaging Peons
    .goto 371,46.26,84.73
    .target +Sunke Khang
    .accept 31739 >>Accept Priorities!
    .target +Teng Applebloom
    .goto 371,46.22,84.69
    .accept 29552 >>Accept Critical Condition
    .goto 371,46.14,84.57
    .target +Mishka
step
    .goto 371,45.79,84.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Moratari|r.
    .accept 80012 >>Accept Dragonriding
    .target Moratari
step
    .isOnQuest 80012
    .xp >14,1
    #loop
    .goto 371,45.89,84.63,5,0
    .goto 371,45.83,84.83,5,0
    .goto 371,45.89,84.63,0
    .goto 371,45.83,84.83,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nostwin|r and buy |T134491:0|t[Nostwin's Voucher.]
    .collect 217930,10
    .buy 217930,10
    .skipgossip
    .target Nostwin
step
    .isOnQuest 80012
    .xp <14,1
    #loop
    .goto 371,45.89,84.63,5,0
    .goto 371,45.83,84.83,5,0
    .goto 371,45.89,84.63,0
    .goto 371,45.83,84.83,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nostwin|r and buy |T134491:0|t[Nostwin's Voucher.]
    .collect 217930,10
    .buy 217930,10
    .skipgossip
    .accept 81976 >>Turn in Bazaar, Isn't It?
    .turnin 81976 >>Turn in Bazaar, Isn't It?
    .target Nostwin
step
    .goto 371,45.82,84.72
    >>Click on the |cRXP_PICK_Portal|r.
    .complete 80012,1 --1/1 Take Moratari's portal
    .complete 80012,3 --1/1 Learn your new dragonriding mount from your inventory
    .disablecheckbox
step
    #completewith next
    .goto 371,65.25,37.20
    .gossipoption 120916 >>Talk to |cRXP_FRIENDLY_Lord Andestrasz|r.
    .target Lord Andestrasz
step
    .goto 371,65.25,37.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lord Andestrasz|r.
    .accept 80013 >>Accept How to Glide with Your Dragon
    .target Lord Andestrasz
step
    #completewith next
    .goto 371,65.21,37.46,5,0
    .goto 371,45.8,84.6,40 >>|cRXP_WARN_We pick up this quest for a teleport item to this area|r.
    *Click on the |cRXP_PICK_Portal|r to go back.
    .itemcount 216712,1
step
    .goto 371,44.89,84.58,10,0
    .goto 371,44.88,84.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jiayi Applebloom|r.
    .accept 81638 >>Accept in Home Is Where the Hearthstone Is
    .turnin 81638 >>Turn in Home Is Where the Hearthstone Is
    .target Jiayi Applebloom
step
    #loop
    .goto 371,44.00,85.39,20,0
    .goto 371,43.13,85.57,20,0
    .goto 371,42.47,85.96,20,0
    .goto 371,42.27,87.33,20,0
    .goto 371,42.15,87.96,20,0
    .goto 371,42.10,88.62,20,0
    .goto 371,41.58,88.52,20,0
    .goto 371,41.20,89.88,20,0
    .goto 371,41.64,90.41,20,0
    .goto 371,42.22,89.44,20,0
    .goto 371,43.46,88.36,20,0
    .goto 371,44.00,85.39,0
    .goto 371,43.13,85.57,0
    .goto 371,42.47,85.96,0
    .goto 371,42.27,87.33,0
    .goto 371,42.15,87.96,0
    .goto 371,42.10,88.62,0
    .goto 371,41.58,88.52,0
    .goto 371,41.20,89.88,0
    .goto 371,41.64,90.41,0
    .goto 371,42.22,89.44,0
    .goto 371,43.46,88.36,0
    >>Kill |cRXP_ENEMY_Twinspire Peon|r.
    *Click on |cRXP_PICK_Barrels|r.
    *Interact with |cRXP_FRIENDLY_Wounded Pilots|r |cRXP_WARN_Ideally use your own healing abilities if possible|r.
    .complete 31738,1 --12/12 Twinspire Peon slain
    .complete 31739,1 --6/6 Applebloom Cider
    .complete 29552,1 --6/6 Wounded Pilots revived
    .mob twinspire peon
    .target Mortally Wounded Pilot
    .target Wounded Pilot
    .target Terribly Pilot
step
    .goto 371,39.56,90.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lin Applebloom|r.
    .turnin 31739 >>Turn in Priorities!
    .accept 31740 >>Accept Koukou's Rampage
    .target Lin Applebloom
step
    .goto 371,39.32,89.86
    >>Kill |cRXP_ENEMY_Koukou|r.
    .complete 31740,1 --1/1 Koukou slain
    .mob koukou
step
    #completewith Critical Condition
    .goto 371,65.25,37.20
    .cast 437035 >>Use |T134376:0|t[Bronze Timepiece] to teleport to the dragonriding quests.
    .itemcount 216712,1
    .use 216712
step
    #completewith Critical Condition
    .goto 371,65.21,37.46,5,0
    .goto 371,45.8,84.6,40 >>|cRXP_WARN_We pick up this quest for a teleport item to this area|r.
    *Click on the |cRXP_PICK_Portal|r to go back.
    .itemcount 216712,1
step
    .xp <14,1
    #loop
    .goto 371,45.89,84.63,5,0
    .goto 371,45.83,84.83,5,0
    .goto 371,45.89,84.63,0
    .goto 371,45.83,84.83,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nostwin|r.
    .accept 81976 >>Turn in Bazaar, Isn't It?
    .turnin 81976 >>Turn in Bazaar, Isn't It?
    .target Nostwin
step
    #label Critical Condition
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mishka|r, |cRXP_FRIENDLY_Sunke Khang|r and |cRXP_FRIENDLY_Rell Nightwind|r.
    .turnin 29552 >>Turn in Critical Condition
    .goto 371,46.12,84.57
    .target +Mishka
    .turnin 31738 >>Turn in Pillaging Peons
    .turnin 31740 >>Turn in Koukou's Rampage
    .accept 31741 >>Accept Twinspire Keep
    .accept 31744 >>Accept Unfair Trade
    .goto 371,46.26,84.72
    .target +Sunke Khang
    .accept 31742 >>Accept Fractured Forces
    .accept 31743 >>Accept Smoke Before Fire
    .target +Rell Nightwind
    .goto 371,46.2,84.82
step
    #completewith Dalgan and Bellandra Felstorm
    >>Kill |cRXP_ENEMY_Eye of Ga'trul|r to free |cRXP_FRIENDLY_Pandaren Cubs|r.
    .complete 31744,1 --8/8 Captive Pandaren Cub freed
    .target Captive Pandaren Cub
    .mob Eye of Ga'trul
step
    .xp <14,1
    #loop
    .goto 371,45.89,84.63,5,0
    .goto 371,45.83,84.83,5,0
    .goto 371,45.89,84.63,0
    .goto 371,45.83,84.83,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nostwin|r.
    .accept 81976 >>Turn in Bazaar, Isn't It?
    .turnin 81976 >>Turn in Bazaar, Isn't It?
    .target Nostwin
step
    #completewith Dalgan and Bellandra Felstorm
    >>Kill |cRXP_ENEMY_Horde Forces|r.
    .complete 31741,1 --15/15 Twinspire Horde slain
    .mob Felstorm Warlock
    .mob Twinspire Deathguard
    .mob Twinspire Grunt
    .mob Gatrul'lon Flamecaller
    .mob Twinspire Demolitionist
step
    .goto 371,42.98,81.26
    >>Use |T458733:0|t[Alliance Flare] on the |cRXP_WARN_green bubble|r.
    .complete 31743,4 --1/1 Wild Imps bombed
    .use 89602
step
    .goto 371,41.30,81.34
    >>Use |T458733:0|t[Alliance Flare] on a |cRXP_ENEMY_Twinspire Demolisher|r.
    .use 89602
    .complete 31743,2 --1/1 Twinspire Demolishers bombed
    .mob Twinspire Demolisher
step
    .goto 371,40.14,81.61
    >>Use |T458733:0|t[Alliance Flare] near the |cRXP_WARN_spike ball|r.
    .use 89602
    .complete 31743,1 --1/1 Twinspire munitions stockpile bombed
step
    .goto 371,40.19,81.78
    >>Use |T458733:0|t[Alliance Flare] on |cRXP_ENEMY_Xhu'daggab|r.
    .use 89602
    .complete 31743,3 --1/1 Xhu'daggab bombed
    .mob Xhu'daggab
step
    #label Dalgan and Bellandra Felstorm
    #loop
    .goto 371,41.15,80.27,10,0
    .goto 371,41.78,80.31,10,0
    .goto 371,41.15,80.27,0
    .goto 371,41.78,80.31,0
    >>Kill |cRXP_ENEMY_Dalgan|r and |cRXP_ENEMY_Bellandra Felstorm|r |cRXP_WARN_on the terrace|r.
    .complete 31742,1 --1/1 Dalgan slain
    .mob dalgan
    .complete 31742,2 --1/1 Bellandra Felstorm slain
    .mob bellandra felstorm
step
    #completewith next
    >>Kill |cRXP_ENEMY_Horde Forces|r.
    .complete 31741,1 --15/15 Twinspire Horde slain
    .mob Felstorm Warlock
    .mob Twinspire Deathguard
    .mob Twinspire Grunt
    .mob Gatrul'lon Flamecaller
    .mob Twinspire Demolitionist
step
    #loop
    .goto 371,42.93,81.27,20,0
    .goto 371,42.75,82.27,20,0
    .goto 371,42.19,82.10,20,0
    .goto 371,41.47,80.63,20,0
    .goto 371,40.34,82.23,20,0
    .goto 371,39.62,82.29,20,0
    .goto 371,39.76,81.08,20,0
    .goto 371,42.93,81.27,0
    .goto 371,42.75,82.27,0
    .goto 371,42.19,82.10,0
    .goto 371,41.47,80.63,0
    .goto 371,40.34,82.23,0
    .goto 371,39.62,82.29,0
    .goto 371,39.76,81.08,0
    >>Kill |cRXP_ENEMY_Eye of Ga'trul|r to free |cRXP_FRIENDLY_Pandaren Cubs|r.
    .complete 31744,1 --8/8 Captive Pandaren Cub freed
    .target Captive Pandaren Cub
    .mob Eye of Ga'trul
step
    #loop
    .goto 371,42.93,81.27,20,0
    .goto 371,42.75,82.27,20,0
    .goto 371,42.19,82.10,20,0
    .goto 371,41.47,80.63,20,0
    .goto 371,40.34,82.23,20,0
    .goto 371,39.62,82.29,20,0
    .goto 371,39.76,81.08,20,0
    .goto 371,42.93,81.27,0
    .goto 371,42.75,82.27,0
    .goto 371,42.19,82.10,0
    .goto 371,41.47,80.63,0
    .goto 371,40.34,82.23,0
    .goto 371,39.62,82.29,0
    .goto 371,39.76,81.08,0
    >>Kill |cRXP_ENEMY_Horde Forces|r.
    .complete 31741,1 --15/15 Twinspire Horde slain
    .mob Felstorm Warlock
    .mob Twinspire Deathguard
    .mob Twinspire Grunt
    .mob Gatrul'lon Flamecaller
    .mob Twinspire Demolitionist
step
    .goto 371,41.39,79.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sully "The Pickle" McLeary|r |cRXP_WARN_infont of the temple|r.
    .turnin 31741 >>Turn in Twinspire Keep
    .turnin 31742 >>Turn in Fractured Forces
    .turnin 31743 >>Turn in Smoke Before Fire
    .turnin 31744 >>Turn in Unfair Trade
    .accept 30070 >>Accept The Fall of Ga'trul
    .target Sully "The Pickle" McLeary
step
    .goto 371,41.38,77.82
    >>Kill |cRXP_ENEMY_Ga'trul|r.
    .complete 30070,1 --1/1 Ga'trul slain
    .mob ga'trul
step
    .goto 371,41.45,79.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rell Nightwind|r.
    .turnin 30070 >>Turn in The Fall of Ga'trul
    .accept 31745 >>Accept Onward and Inward
    .target Rell Nightwind
step
    .isOnQuest 31745
    .goto 371,41.46,79.84,10 >> Leave the Temple. |cRXP_WARN_Don't click on the Gyrocopter|r.
step
    #include 1) Jade Forest Defiance Side Quests
step
    #completewith Paw'don Village
    .goto 371,65.25,37.20
    .cast 437035 >>Use |T134376:0|t[Bronze Timepiece] to teleport to the dragonriding quests.
    .itemcount 216712,1
    .use 216712
step
    #completewith Paw'don Village
    .goto 371,65.21,37.46,5,0
    .goto 371,45.8,84.6,40 >>|cRXP_WARN_We pick up this quest for a teleport item to this area|r.
    *Click on the |cRXP_PICK_Portal|r to go back.
    .itemcount 216712,1
step
    #label Paw'don Village
    .goto 371,48.06,88.4
    >>|cRXP_WARN_Follow the Arrow|r.
    .complete 31745,1 --1/1 Return to Paw'don Village
step
    .xp <14,1
    #loop
    .goto 371,45.89,84.63,5,0
    .goto 371,45.83,84.83,5,0
    .goto 371,45.89,84.63,0
    .goto 371,45.83,84.83,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nostwin|r.
    .accept 81976 >>Turn in Bazaar, Isn't It?
    .turnin 81976 >>Turn in Bazaar, Isn't It?
    .target Nostwin
step
    .goto 371,48.05,88.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sky Admiral Rogers|r.
    .turnin 31745 >>Turn in Onward and Inward
    .accept 29555 >>Accept The White Pawn
    .accept 29556 >>Accept Hozen Aren't Your Friends, Hozen Are Your Enemies
    .target Sky Admiral Rogers
step
    #completewith Alliance Banner
    >>Kill |cRXP_ENEMY_Hozen|r.
    .complete 29556,1 --14/14 Hozen slain
    .mob hozen
step
    .goto 371,49.8,90.18
    >>Interact with the |cRXP_FRIENDLY_Alliance Bodyguard|r |cRXP_WARN_on the ship|r.
    .complete 29555,1,1 --3/3 Clues found
    .target Alliance Bodyguard
step
    .goto 371,49.79,89.96,8,0
    .goto 371,50,90.28
    >>Click on |cRXP_PICK_Fine Leather Journal|r |cRXP_WARN_inside the ship|r.
    .complete 29555,1,2 --3/3 Clues found
    .target Fine Leather Journal
step
    .goto 371,50.01,90.38,10,0
    .goto 371,50.15,90.37,5,0
    .goto 371,50.27,90.83
    >>Kill |cRXP_ENEMY_Hozen Diver|r. Loot him for [|cRXP_LOOT_Encoded Captain's Log|r].
    .complete 29555,2 --1/1 Encoded Captain's Log
    .mob Hozen Diver
step
    #label Alliance Banner
    .goto 371,50.15,90.782
    >>Click on the |cRXP_PICK_Alliance Banner|r.
    .complete 29555,1,3 --3/3 Clues found
    .target Alliance Banner
step
    .isOnQuest 29556
    .goto 371,49.98,90.89,5 >> Leave the Ship
step
    #loop
    .goto 371,49.47,90.51,20,0
    .goto 371,50.03,89.21,20,0
    .goto 371,50.58,89.99,20,0
    .goto 371,49.47,90.51,0
    .goto 371,50.03,89.21,0
    .goto 371,50.58,89.99,0
    >>Kill |cRXP_ENEMY_Hozen|r.
    .complete 29556,1 --14/14 Hozen slain
    .mob hozen
step
    .goto 371,50.42,88.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nodd Codejack|r.
    .turnin 29555 >>Turn in the White Pawn
    .turnin 29556 >>Turn in Hozen Aren't Your Friends, Hozen Are Your Enemies
    .accept 29553 >>Accept The Missing Admiral
    .target Nodd Codejack
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Admiral Taylor|r and |cRXP_FRIENDLY_Bold Karasshi|r.
    .turnin 29553 >>Turn in The Missing Admiral
    .goto 371,54.21,82.50
    .target +Admiral Taylor
    .accept 29558 >>Accept The Path of War
    .accept 29559 >>Accept Freeing Our Brothers
    .accept 29560 >>Accept Ancient Power
    .goto 371,54.19,82.41
    .target +Bold Karasshi
step
    #completewith Slingtail Hozen Camp loop
    #hidewindow
    #loop
    .goto 371,54.20,81.91,15,0
    .goto 371,53.89,81.92,15,0
    .goto 371,53.69,81.15,15,0
    .goto 371,54.15,81.01,15,0
    .goto 371,53.80,80.18,15,0
    .goto 371,53.47,79.99,15,0
    .goto 371,52.97,80.88,15,0
    .goto 371,53.33,81.66,15,0
    .goto 371,54.16,83.05,15,0
    .goto 371,54.37,81.29,15,0
    .goto 371,54.64,79.30,15,0
    .goto 371,54.20,81.91,0
    .goto 371,53.89,81.92,0
    .goto 371,53.69,81.15,0
    .goto 371,54.15,81.01,0
    .goto 371,53.80,80.18,0
    .goto 371,53.47,79.99,0
    .goto 371,52.97,80.88,0
    .goto 371,53.33,81.66,0
    .goto 371,54.16,83.05,0
    .goto 371,54.37,81.29,0
    .goto 371,54.64,79.30,0
    +1
step
    #completewith Prisoners freed
    >>Kill |cRXP_ENEMY_Slingtail Hozens|r. Loot them for |T133749:0|t[|cRXP_LOOT_Bamboo Keys|r].
    .complete 29558,1 --12/12 Slingtail hozen slain
    .mob Slingtail Treeleaper
    .mob Slingtail Mudseer
step
    #completewith Prisoners freed
    >>Click on |cRXP_PICK_Hozen Skulls|r |cRXP_WARN_on the ground|r.
    .complete 29560,1 --8/8 Ancient Hozen Skull
step
    #label Prisoners freed
    >>Click on |cRXP_PICK_Hozen Cages|r to free |cRXP_FRIENDLY_Alliance Prisoners|r |cRXP_WARN_Don't open empty cages|r.
    .complete 29559,1 --6/6 Prisoners freed
    .collect 74260,6,29559,0x1,-1
    .disablecheckbox
    .target Alliance Prisoner
step
    #completewith next
    >>Kill |cRXP_ENEMY_Slingtail Hozens|r. Loot them for [|cRXP_LOOT_|T133749:0|t Bamboo Keys|r].
    .complete 29558,1 --12/12 Slingtail hozen slain
    .disablecheckbox
    .mob Slingtail Treeleaper
    .mob Slingtail Mudseer
step
    >>Click on |cRXP_PICK_Hozen Skulls|r.
    .complete 29560,1 --8/8 Ancient Hozen Skull
step
    #label Slingtail Hozen Camp loop
    >>Kill |cRXP_ENEMY_Slingtail Hozens|r.
    .complete 29558,1 --12/12 Slingtail hozen slain
    .mob Slingtail Treeleaper
    .mob Slingtail Mudseer
step
    .goto 371,54.18,82.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bold Karasshi|r.
    .turnin 29558 >>Turn in The Path of War
    .turnin 29559 >>Turn in Freeing Our Brothers
    .turnin 29560 >>Turn in Ancient Power
    .accept 29759 >>Accept Kung Din
    .target Bold Karasshi
step
    .goto 371,54.65,80.12
    >>Kill |cRXP_ENEMY_Kung Din|r. Loot him for [|cRXP_LOOT_Slingtail Key|r].
    .complete 29759,1 --1/1 Slingtail Key
    .mob Kung Din
step
    .goto 371,54.18,82.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bold Karasshi|r.
    .turnin 29759 >>Turn in Kung Din
    .target Bold Karasshi
    .accept 29562 >>Accept Jailbreak
step
    #loop
    .goto 371,56.27,81.48,20,0
    .goto 371,55.31,83.20,20,0
    .goto 371,55.73,80.08,20,0
    .goto 371,55.75,78.17,20,0
    .goto 371,55.31,83.20,20,0
    .goto 371,53.23,78.75,20,0
    .goto 371,56.27,81.48,0
    .goto 371,55.31,83.20,0
    .goto 371,55.73,80.08,0
    .goto 371,55.75,78.17,0
    .goto 371,55.31,83.20,0
    .goto 371,53.23,78.75,0
    >>Kill |cRXP_ENEMY_Slingtail Fishripper|r.
    .complete 29562,1 --10/10 Slingtail Fishripper slain
    .mob slingtail fishripper
step
    .goto 371,58.97,81.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bold Karasshi|r.
    .turnin 29562 >>Turn in Jailbreak
    .timer 54, RP
    .target Bold Karasshi
step
    #completewith Accept The Pearlfin Situation
    +|cRXP_WARN_Wait for the roleplay, which will be completed when the timer runs out|r. |cFFFF0000tidy your bags and optimize your equipment use --x item |r.
step
    #label Accept The Pearlfin Situation
    .goto 371,58.93,81.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rell Nightwind|r.
    .accept 29883 >>Accept The Pearlfin Situation
    .accept 29885 >>Accept Road Rations
    .target Rell Nightwind
step
    .goto 371,58.75,81.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pearlkeeper Fujin|r.
    .complete 29883,1 --1/1 Speak to Pearlkeeper Fujin
    .skipgossip
    .target Pearlkeeper Fujin
step
    .goto 371,58.05,80.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elder Lusshan|r.
    .complete 29883,4 --1/1 Speak to Elder Lusshan
    .skipgossip
    .target Elder Lusshan
step
    .goto 371,58.79,84.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Instructor Sharpfin|r.
    .complete 29883,3 --1/1 Speak to Instructor Sharpfin
    .skipgossip
    .target Instructor Sharpfin
step
    .goto 371,59.91,83.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Watersmith Ot-Temmdo|r.
    .complete 29883,2 --1/1 Speak to Watersmith Ot-Temmdo
    .skipgossip 56693,2
    .target Watersmith Ot-Temmdo
step
    #loop
    .goto 371,61.31,83.65,20,0
    .goto 371,61.02,81.44,20,0
    .goto 371,60.97,79.64,20,0
    .goto 371,59.80,81.04,20,0
    .goto 371,57.01,84.36,20,0
    .goto 371,58.97,86.20,20,0
    .goto 371,60.56,84.90,20,0
    .goto 371,61.31,83.65,0
    .goto 371,61.02,81.44,0
    .goto 371,60.97,79.64,0
    .goto 371,59.80,81.04,0
    .goto 371,57.01,84.36,0
    .goto 371,58.97,86.20,0
    .goto 371,60.56,84.90,0
    >>Kill |cRXP_ENEMY_Pearly Tortoise|r. Loot them for [|cRXP_LOOT_Tortoise Flank|r].
    .complete 29885,1 --6/6 Tortoise Flank
    .mob Pearly Tortoise
step
    .goto 371,58.93,81.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rell Nightwind|r.
    .turnin 29883 >>Turn in The Pearlfin Situation
    .target Rell Nightwind
    .turnin 29885 >>Turn in Road Rations
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Pearlkeeper Fujin|r and |cRXP_FRIENDLY_Bold Karasshi|r.
    .accept 29762 >>Accept Family Heirlooms
    .goto 371,58.97,81.7
    .target +Pearlkeeper Fujin
    .accept 29887 >>Accept The Elder's Instruments
    .goto 371,58.76,81.28
    .target +Bold Karasshi
-- step
--     #completewith Watersmithing
--     >>Kill |cRXP_ENEMY_Slingtail Stickypaw|r. Loot them for [|cRXP_LOOT_Clothes|r].
--     .complete 29887,3 --1/1 Jade Crown
--     .complete 29887,4 --1/1 Rosewood Beads
--     .complete 29887,2 --1/1 Ceremonial Robes
--     .complete 29887,1 --1/1 Waterspeaker's Staff
--     .mob Slingtail Stickypaw
-- step
--     #completewith Watersmithing
--     >>Interact with |cRXP_PICK_Dead Pearlfin Villager|r to collect [|cRXP_LOOT_Glassfin Heirlooms|r].
--     .complete 29762,1 --8/8 Glassfin Heirloom
--     .target Pearlfin Villager
-- step
--     #label Watersmithing
--     .goto 371,66.03,87.55
--     .achievement 6846,1 >>Click on the |cRXP_PICK_Scroll|r.
step
    #completewith Clothes
    #hidewindow
    #loop
    .goto 371,66.03,87.55,30,0
    .goto 371,67.25,87.32,30,0
    .goto 371,66.2,88.25,30,0
    .goto 371,65.46,87.7,30,0
    .goto 371,65.25,86.94,30,0
    .goto 371,67.25,87.32,0
    .goto 371,66.2,88.25,0
    .goto 371,65.46,87.7,0
    .goto 371,65.25,86.94,0
    +1
step
    #completewith next
    >>Interact with |cRXP_PICK_Dead Pearlfin Villager|r to collect [|cRXP_LOOT_Glassfin Heirlooms|r].
    .complete 29762,1 --8/8 Glassfin Heirloom
    .target Pearlfin Villager
step
    >>Kill |cRXP_ENEMY_Slingtail Stickypaw|r. Loot them for [|cRXP_LOOT_Clothes|r].
    .complete 29887,3 --1/1 Jade Crown
    .complete 29887,4 --1/1 Rosewood Beads
    .complete 29887,2 --1/1 Ceremonial Robes
    .complete 29887,1 --1/1 Waterspeaker's Staff
    .mob Slingtail Stickypaw
step
    #label Clothes
    >>Interact with |cRXP_PICK_Dead Pearlfin Villager|r to collect [|cRXP_LOOT_Glassfin Heirlooms|r].
    .complete 29762,1 --8/8 Glassfin Heirloom
    .target Pearlfin Villager
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bold Karasshi|r and |cRXP_FRIENDLY_Pearlkeeper Fujin|r.
    .turnin 29762 >>Turn in Family Heirlooms
    .goto 371,58.97,81.69
    .target +Bold Karasshi
    .turnin 29887 >>Turn in The Elder's Instruments
    -- .accept 29894 >>Accept Spirits of the Water
    .goto 371,58.76,81.29
    .target +Pearlkeeper Fujin
step
    #include X) August Celestial Daillies@startaugustjade-endaugustjade
step
    #include 1) Jade Forest Cloud Serpent Side Quests
step
    #include 1) Jade Forest Side Quests Sprites Plight
step
    #include 1) Jade Forest Side Quests Tian Monastery
step
    #completewith next
    .goto 371,65.25,37.20,20,0
    .cast 437035 >>Use |T134376:0|t[Bronze Timepiece] to teleport to the dragonriding quests.
    .itemcount 216712,1
    .use 216712
step
    .goto 371,65.21,37.46,5,0
    .goto 371,45.8,84.6,40 >>|cRXP_WARN_We pick up this quest for a teleport item to this area|r.
    *Click on the |cRXP_PICK_Portal|r to go back.
    .itemcount 216712,1
-- step
--     .goto 371,31.96,27.76
--     .cast 3365 >>Click on the Lucky Pandaren Coin
-- step
--     .goto 371,26.22,32.35
--     .cast 3365 >>Click on the Ancient Pandaren Tea Pot
-- step
--     .goto 371,23.5,35.04
--     .cast 3365 >>Click on the Ancient Pandaren Tea Pot
]])
