local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end


local L = GetLocale() if L and RXP.enabledLocale[L] then return end
RXPGuides.RegisterGuide([[
#forever
#xprate <1.99
#era/som--h
<< Horde
#name 1-6 Mulgore
#version 11
#group RestedXP Forever Guide (H)
#subgroup Speedrun Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 6-12 Mulgore;6-13 Mulgore


step << !Tauren
    #completewith next
    .goto 1412/1,-259.85,-2914.28
    +|cRXP_WARN_You have selected a guide meant for Tauren. This zone will NOT work well for you due to missing one of the main questlines that are gated for Tauren only. It is recommended you choose the same starter zone that you start in|r
step
    .goto 1412/1,-259.85,-2914.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull|r
    .accept 747 >>Accept The Hunt Begins
    .target Grull Hawkwind
step
    .goto 1412/1,-221.83,-2878.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Hawkwind|r
    .accept 752 >>Accept A Humble Task
    .target Chief Hawkwind
step << Warrior/Shaman
    #completewith next
    .goto 1412/1,-317.9,-2852.63,30,0
    +|cRXP_WARN_Kill |cRXP_ENEMY_Plainstriders|r. Loot them until you have 10 copper worth of vendor items (including your armor)|r << Warrior/Shaman
    .mob Plainstrider
    .money >0.01
step << Warrior/Shaman
    .goto 1412/1,-279.37,-2893.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kawnie|r
    .vendor >> Vendor Trash
    .target Kawnie Softbreeze
    .money >0.01
step << Warrior
    .goto 1412/1,-213.61,-2880.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt|r
    .train 6673 >>Train |T132333:0|t[Battle Shout]
    .target Harutt Thunderhorn
step << Shaman
    .goto 1412/1,-264.47,-2874.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meela|r
    .train 8017 >>Train |T136086:0|t[Rockbiter Weapon]
    .target Meela Dawnstrider
step
    #completewith next
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Meat|r and |cRXP_LOOT_Feathers|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob Plainstrider
step
    .goto 1412/1,-522.37,-3052.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greatmother Hawkwind|r
    .turnin 752 >>Turn in A Humble Task
    .accept 753 >>Accept A Humble Task
    .target Greatmother Hawkwind
step
    .goto 1412/1,-532.14,-3059.84
    >>Loot the |cRXP_LOOT_Water Pitcher|r on the well behind |cRXP_FRIENDLY_Hawkwind|r
    .complete 753,1 --Water Pitcher (1)
step
    #loop
    .goto 1412/1,-385.2,-3117.38,0
    .goto 1412/1,-532.65,-2991.68,50,0
    .goto 1412/1,-573.24,-2967.71,50,0
    .goto 1412/1,-564.5,-2864.96,50,0
    .goto 1412/1,-440.17,-2916.33,50,0
    .goto 1412/1,-371.85,-2894.41,50,0
    .goto 1412/1,-303.52,-3026.27,50,0
    .goto 1412/1,-292.73,-3094.77,50,0
    .goto 1412/1,-385.2,-3117.38,50,0
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Meat|r and |cRXP_LOOT_Feathers|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob Plainstrider
step
    .goto 1412/1,-259.85,-2914.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull|r
    .turnin 747,1 >>Turn in The Hunt Begins << Druid
    .turnin 747 >>Turn in The Hunt Begins << !Druid
    .accept 3091 >>Accept Simple Note << Warrior
    .accept 3092 >>Accept Etched Note << Hunter
    .accept 3093 >>Accept Rune-Inscribed Note << Shaman
    .accept 3094 >>Accept Verdant Note << Druid
    .accept 750 >>Accept The Hunt Continues
    .target Grull Hawkwind
step
    .goto 1412/1,-279.37,-2893.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kawnie|r
    >>|cRXP_BUY_Buy|r |T132384:0|t[Light Shots] |cRXP_BUY_from her|r << Hunter
    .collect 2516,1000,750,1 << Hunter --Light Shot (1000)
    .vendor >> Vendor Trash
    .target Kawnie Softbreeze
step
    .goto 1412/1,-221.83,-2878.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Hawkwind|r
    .turnin 753 >>Turn in A Humble Task
    .accept 755 >>Accept Rites of the Earthmother
    .target Chief Hawkwind
step << Shaman
    .goto 1412/1,-216.18,-2926.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Marjak|r|cRXP_BUY_. Buy a|r |T135139:0|t[Short Staff] |cRXP_BUY_from him|r
    .collect 2132,1,750,1 --Collect Short Staff (1)
    .money <0.0102
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
    .target Marjak Keenblade
step << Shaman
    #optional
    #completewith RitesoftheEarthmother
    +|cRXP_WARN_Equip the|r |T135139:0|t[Short Staff]
    .use 2132
    .itemcount 2132,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
step
    #completewith next
    >>Kill |cRXP_ENEMY_Mountain Cougars|r. Loot them for their |cRXP_LOOT_Pelts|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob Mountain Cougar
step
    #label RitesoftheEarthmother
    .goto 1412/1,-139.63,-3430.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seer Graytongue|r
    >>|cRXP_WARN_Grind mobs on the way|r
    .turnin 755 >>Turn in Rites of the Earthmother
    .accept 757 >>Accept Rite of Strength
    .target Seer Graytongue
step
    #loop
    .goto 1412/1,-243.41,-3384.87,0
    .goto 1412/1,-172.0,-3330.07,50,0
    .goto 1412/1,-245.46,-3409.53,50,0
    .goto 1412/1,-306.09,-3373.23,50,0
    .goto 1412/1,-333.31,-3405.08,50,0
    .goto 1412/1,-420.65,-3418.09,50,0
    .goto 1412/1,-482.3,-3379.05,50,0
    .goto 1412/1,-571.18,-3368.09,50,0
    .goto 1412/1,-474.6,-3338.29,50,0
    .goto 1412/1,-369.79,-3308.84,50,0
    .goto 1412/1,-267.04,-3351.65,50,0
    .goto 1412/1,-243.41,-3384.87,50,0
    >>Kill |cRXP_ENEMY_Mountain Cougars|r. Loot them for their |cRXP_LOOT_Pelts|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob Mountain Cougar
step
    #xprate <1.5
    #loop
	.goto 1412/1,-292.73,-3285.2,40,0
	.goto 1412/1,-362.6,-3281.44,40,0
	.goto 1412/1,-452.5,-3246.84,40,0
	.goto 1412/1,-554.23,-3213.96,40,0
	.goto 1412/1,-572.72,-3139.98,40,0
	.goto 1412/1,-626.67,-3065.32,40,0
	.goto 1412/1,-616.9,-2998.53,40,0
	.goto 1412/1,-606.63,-2923.52,40,0
	.goto 1412/1,-621.01,-2847.15,40,0
	.goto 1412/1,-537.27,-2887.22,40,0
	.goto 1412/1,-461.75,-2869.75,40,0
	.goto 1412/1,-387.77,-2851.94,40,0
	.goto 1412/1,-356.43,-2951.61,40,0
	.goto 1412/1,-307.11,-3026.96,40,0
	.goto 1412/1,-265.5,-3086.55,40,0
	.goto 1412/1,-217.21,-3146.15,40,0
	.goto 1412/1,-207.45,-3221.16,40,0
    .xp 3+1150 >> Grind to 1150+/1400xp
    .mob Plainstrider
step
    #xprate >1.49
    #loop
	.goto 1412/1,-292.73,-3285.2,40,0
	.goto 1412/1,-362.6,-3281.44,40,0
	.goto 1412/1,-452.5,-3246.84,40,0
	.goto 1412/1,-554.23,-3213.96,40,0
	.goto 1412/1,-572.72,-3139.98,40,0
	.goto 1412/1,-626.67,-3065.32,40,0
	.goto 1412/1,-616.9,-2998.53,40,0
	.goto 1412/1,-606.63,-2923.52,40,0
	.goto 1412/1,-621.01,-2847.15,40,0
	.goto 1412/1,-537.27,-2887.22,40,0
	.goto 1412/1,-461.75,-2869.75,40,0
	.goto 1412/1,-387.77,-2851.94,40,0
	.goto 1412/1,-356.43,-2951.61,40,0
	.goto 1412/1,-307.11,-3026.96,40,0
	.goto 1412/1,-265.5,-3086.55,40,0
	.goto 1412/1,-217.21,-3146.15,40,0
	.goto 1412/1,-207.45,-3221.16,40,0
    .xp 3+1025 >> Grind to 1025+/1400xp
    .mob Plainstrider
step << Warrior/Druid
    #completewith GrullTurnin2
    +|cRXP_WARN_Grind |cRXP_ENEMY_Plainstriders|r. Loot them until you have 2 silver worth of vendor items|r
    .mob Plainstrider
	.money >0.02
step << !Warrior !Druid
    #completewith next
    +|cRXP_WARN_Grind |cRXP_ENEMY_Plainstriders|r. Loot them until you have 1 silver worth of vendor items|r
    .mob Plainstrider
    .money >0.01
step
    #label GrullTurnin2
    .goto 1412/1,-259.85,-2914.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull|r
    .turnin 750 >>Turn in The Hunt Continues
    .accept 780 >>Accept The Battleboars
    .target Grull Hawkwind
step
    .goto 1412/1,-279.37,-2893.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kawnie|r
    .vendor >> Vendor Trash
    .target Kawnie Softbreeze
step
    .goto 1412/1,-247.0,-2899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brave|r
    .accept 3376 >>Accept Break Sharptusk!
    .target Brave Windfeather
step << Warrior
    #season 2
    .goto 1412/1,-213.61,-2880.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Turn in Simple Note
    .accept 77651 >>Accept Into the Brambles
    .train 100 >> Train |T132337:0|t[Charge]
    .train 772 >> Train |T132155:0|t[Rend]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 2
    .goto 1412/1,-213.61,-2880.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Turn in Simple Note
    .accept 77651 >>Accept Into the Brambles
    .train 772 >> Train |T132155:0|t[Rend]
    .target Harutt Thunderhorn
step << Warrior
    #season 0
    .goto 1412/1,-213.61,-2880.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Turn in Simple Note
    .train 100 >> Train |T132337:0|t[Charge]
    .train 772 >> Train |T132155:0|t[Rend]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 0
    .goto 1412/1,-213.61,-2880.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Turn in Simple Note
    .train 772 >> Train |T132155:0|t[Rend]
    .target Harutt Thunderhorn
step << Hunter
    #season 2
    .goto 1412/1,-225.94,-2865.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanka|r
    .turnin 3092 >>Turn in Etched Note
    .accept 77649 >>Accept A Hunter's Strength
    .train 1978 >> Train |T132204:0|t[Serpent Sting]
    .target Lanka Farshot
step << Hunter
    #season 0
    .goto 1412/1,-225.94,-2865.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanka|r
    .turnin 3092 >>Turn in Etched Note
    .train 1978 >> Train |T132204:0|t[Serpent Sting]
    .target Lanka Farshot
step << Druid
    #season 2
    .goto 1412/1,-268.58,-2873.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .turnin 3094 >>Turn in Verdant Note
    .accept 77648 >>Accept Relics of the Tauren
    .train 8921 >> Train |T136096:0|t[Moonfire]
    .target Gart Mistrunner
step << Druid
    #season 0
    .goto 1412/1,-268.58,-2873.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .turnin 3094 >>Turn in Verdant Note
    .train 8921 >> Train |T136096:0|t[Moonfire]
    .target Gart Mistrunner
step << Shaman
    .goto 1412/1,-250.09,-2882.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ravenfeather|r
    .accept 1519 >>Accept Call of Earth
    .target Seer Ravenfeather
step << Shaman
    #season 2
    .goto 1412/1,-264.47,-2874.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meela|r
    .turnin 3093 >>Turn in Rune-Inscribed Note
    .train 8042 >>Train |T136026:0|t[Earth Shock]
    .target Meela Dawnstrider
step << Shaman
    #season 0
    .goto 1412/1,-264.47,-2874.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meela|r
    .turnin 3093 >>Turn in Rune-Inscribed Note
    .train 8042 >>Train |T136026:0|t[Earth Shock]
    .target Meela Dawnstrider
step
    #loop
    .goto 1412/1,-828.57,-3199.92,0
    .goto 1412/1,-659.55,-2989.63,50,0
    .goto 1412/1,-736.09,-3007.09,50,0
    .goto 1412/1,-815.21,-3022.51,50,0
    .goto 1412/1,-853.74,-3070.11,50,0
    .goto 1412/1,-810.07,-3145.12,50,0
    .goto 1412/1,-830.62,-3202.32,50,0
    .goto 1412/1,-818.81,-3276.98,50,0
    .goto 1412/1,-866.07,-3330.41,50,0
    .goto 1412/1,-927.72,-3330.41,50,0
    .goto 1412/1,-915.91,-3244.79,50,0
    .goto 1412/1,-896.38,-3197.52,50,0
    .goto 1412/1,-828.57,-3199.92,50,0
    >>Kill |cRXP_ENEMY_Battleboars|r. Loot them for their |cRXP_LOOT_Flanks|r and |cRXP_LOOT_Snouts|r
    .complete 780,2 --Battleboar Flank (8)
    .complete 780,1 --Battleboar Snout (8)
    .mob Battleboar
step
    #completewith BristlebackBelts
    .goto 1412/1,-1017.63,-3126.97,30 >>Travel through the cave
step
    #completewith DirtyMap
    >>Kill |cRXP_ENEMY_Bristleback Quilboars|r. Loot them for their |cRXP_LOOT_Belts|r
    .complete 757,1 --Bristleback Belt (12)
    .mob Bristleback Quilboar
step << Shaman
    #completewith DirtyMap
    >>Kill |cRXP_ENEMY_Bristleback Shamans|r. Loot them for their |cRXP_LOOT_Salves|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    .goto 1412/1,-1062.33,-3048.54,35,0
    .goto 1412/1,-1155.31,-3056.41,35,0
    .goto 1412/1,-1162.51,-2971.13,35,0
    .goto 1412/1,-1276.56,-2933.11
    >>Kill |cRXP_ENEMY_Chief Sharptusk Thornmantle|r inside the big hut. Loot him for his |cRXP_LOOT_Head|r
    .complete 3376,1 --Chief Sharptusk Thornmantle's Head (1)
    .mob Chief Sharptusk Thornmantle
step
    #completewith next
    .goto 1412/1,-1201.04,-3105.39,40 >>Enter the Cave
step
    #label DirtyMap
    .goto 1412/1,-1201.04,-3105.390
    >>Loot the |T134269:0|t[|cRXP_LOOT_Dirt-stained Map|r] on the ground. Use it to start the quest
    .collect 4851,1,781 --Collect Dirt-Stained Map
    .accept 781 >>Accept Attack on Camp Narache
    .use 4851
step << Shaman
    #completewith next
    >>Kill |cRXP_ENEMY_Bristleback Shamans|r. Loot them for their |cRXP_LOOT_Salves|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    #label BristlebackBelts
    #loop
    .goto 1412/1,-1236.49,-2956.06,0
    .goto 1412/1,-1230.32,-2898.18,40,0
    .goto 1412/1,-1184.60,-2907.08,40,0
    .goto 1412/1,-1101.88,-2917.70,40,0
    .goto 1412/1,-1115.76,-2974.90,40,0
    .goto 1412/1,-1164.56,-2996.48,40,0
    .goto 1412/1,-1250.36,-2979.01,40,0
    .goto 1412/1,-1333.59,-2948.87,40,0
    .goto 1412/1,-1236.49,-2956.06,40,0
    >>Kill |cRXP_ENEMY_Bristleback Quilboars|r. Loot them for their |cRXP_LOOT_Belts|r
    .complete 757,1 --Bristleback Belt (12)
    .mob Bristleback Quilboar
step << Shaman
    #loop
    .goto 1412/1,-1232.89,-3017.71,0
    .goto 1412/1,-1226.73,-3053.33,40,0
    .goto 1412/1,-1232.89,-3011.89,40,0
    .goto 1412/1,-1291.46,-2964.97,40,0
    .goto 1412/1,-1345.40,-2938.59,40,0
    .goto 1412/1,-1339.24,-2913.590,40,0
    .goto 1412/1,-1217.99,-2884.48,40,0
    .goto 1412/1,-1232.89,-3017.71,40,0
    >>Kill |cRXP_ENEMY_Bristleback Shamans|r. Loot them for their |cRXP_LOOT_Salves|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    #xprate <1.5
    #loop
    .goto 1412/1,-1239.06,-3015.66,40,0
    .goto 1412/1,-1256.01,-2954.35,40,0
    .goto 1412/1,-1223.13,-2882.08,40,0
    .goto 1412/1,-1171.75,-2879.34,40,0
    .goto 1412/1,-1103.43,-2914.62,40,0
    .goto 1412/1,-1122.95,-2977.98,40,0
    .goto 1412/1,-1152.23,-3065.32,40,0
    .goto 1412/1,-1076.71,-3040.66,40,0
    .goto 1412/1,-1038.69,-3079.02,40,0
    .goto 1412/1,-1087.5,-3092.38,40,0
    .goto 1412/1,-1151.2,-3082.44,40,0
    .xp 5+880 >> Grind to 880+/2800xp << !Shaman
    .xp 5 >> Grind to level 5 << Shaman
step
    #xprate >1.49
    #loop
    .goto 1412/1,-1239.06,-3015.66,40,0
    .goto 1412/1,-1256.01,-2954.35,40,0
    .goto 1412/1,-1223.13,-2882.08,40,0
    .goto 1412/1,-1171.75,-2879.34,40,0
    .goto 1412/1,-1103.43,-2914.62,40,0
    .goto 1412/1,-1122.95,-2977.98,40,0
    .goto 1412/1,-1152.23,-3065.32,40,0
    .goto 1412/1,-1076.71,-3040.66,40,0
    .goto 1412/1,-1038.69,-3079.02,40,0
    .goto 1412/1,-1087.5,-3092.38,40,0
    .goto 1412/1,-1151.2,-3082.44,40,0
    .xp 5 >> Grind to level 5 << !Shaman
    .xp 4+700 >> Grind to 700/2100xp << Shaman
step
    #completewith next
    .hs >> Hearth to Camp Narache
    .use 6948
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull|r, |cRXP_FRIENDLY_Brave|r and |cRXP_FRIENDLY_Hawkwind|r << !Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull|r, |cRXP_FRIENDLY_Brave|r, |cRXP_FRIENDLY_Seer|r and |cRXP_FRIENDLY_Hawkwind|r << Shaman
    .turnin 780 >>Turn in The Battleboars
    .target +Grull Hawkwind
    .goto 1412/1,-259.85,-2914.28
    .turnin 3376 >>Turn in Break Sharptusk!
    .target +Brave Windfeather
    .goto 1412/1,-247.0,-2899.21
    .turnin 1519 >>Turn in Call of Earth << Shaman
    .accept 1520 >>Accept Call of Earth << Shaman
    .target +Seer Ravenfeather << Shaman
    .goto 1412/1,-250.09,-2882.08 << Shaman
    .turnin 781 >>Turn in Attack on Camp Narache
    .turnin 757 >>Turn in Rite of Strength
    .accept 763 >>Accept Rites of the Earthmother
    .target +Chief Hawkwind
    .goto 1412/1,-221.83,-2878.31
step << Shaman
    #completewith CallofEarth
    #label Rock
    .goto 1412/1,-712.98,-3018.05,30 >> Travel toward the rock
step << Shaman
    #completewith next
    #requires Rock
    .cast 8202 >>|cRXP_WARN_Use the|r |T134743:0|t[Earth Sapta]
    .use 6635
step << Shaman
    .goto 1412/1,-712.98,-3018.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Manifestation|r
    .turnin 1520 >>Turn in Call of Earth
    .accept 1521 >>Accept Call of Earth
    .target Minor Manifestation of Earth
step << Shaman
    .goto 1412/1,-250.09,-2882.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ravenfeather|r
    .turnin 1521 >>Turn in Call of Earth
    .target Seer Ravenfeather
step << Shaman
    #season 2
    .goto 1412/1,-264.47,-2874.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meela|r
    .turnin 77652 >>Turn in Icons of Power
    .train 332 >>Train |T136052:0|t[Healing Wave]
    .target Shikrik
    .target Meela Dawnstrider
step << Shaman
    #season 0
    .goto 1412/1,-264.47,-2874.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meela|r
    .train 332 >>Train |T136052:0|t[Healing Wave]
    .target Shikrik
    .target Meela Dawnstrider
step << Hunter
    #season 2
    .goto 1412/1,-225.94,-2865.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanka|r
    .train 1130 >>Train |T132212:0|t[Hunter's Mark]
    .train 3044 >>Train |T132218:0|t[Arcane Shot]
    .turnin 77649 >>Turn in A Hunter's Strength
    .target Lanka Farshot
    .money <0.02
step << Hunter
    #season 2
    .goto 1412/1,-225.94,-2865.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanka|r
    .train 3044 >>Train |T132218:0|t[Arcane Shot]
    .turnin 77649 >>Turn in A Hunter's Strength
    .target Lanka Farshot
step << Hunter
    #season 0
    .goto 1412/1,-225.94,-2865.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanka|r
    .train 1130 >>Train |T132212:0|t[Hunter's Mark]
    .train 3044 >>Train |T132218:0|t[Arcane Shot]
    .target Lanka Farshot
    .money <0.02
step << Hunter
    #season 0
    .goto 1412/1,-225.94,-2865.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanka|r
    .train 3044 >>Train |T132218:0|t[Arcane Shot]
    .target Lanka Farshot
step << Druid
    #season 2
    .goto 1412/1,-268.58,-2873.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .train 467 >>Train |T136104:0|t[Thorns]
    .train 5177 >>Train |T136006:0|t[Wrath]
    .turnin 77648 >>Turn in Relics of the Tauren
    .target Gart Mistrunner
    .money <0.02
step << Druid
    #season 2
    .goto 1412/1,-268.58,-2873.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .train 5177 >>Train |T136006:0|t[Wrath]
    .turnin 77648 >>Turn in Relics of the Tauren
    .target Gart Mistrunner
step << Druid
    #season 0
    .goto 1412/1,-268.58,-2873.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .train 467 >>Train |T136104:0|t[Thorns]
    .train 5177 >>Train |T136006:0|t[Wrath]
    .target Gart Mistrunner
    .money <0.02
step << Druid
    #season 0
    .goto 1412/1,-268.58,-2873.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .train 5177 >>Train |T136006:0|t[Wrath]
    .target Gart Mistrunner
step << Warrior
    #season 2
    .goto 1412/1,-213.61,-2880.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Train |T132269:0|t[Parry]
    .train 6343 >>Train |T136105:0|t[Thunder Clap]
    .turnin 77651 >>Turn in Into the Brambles
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 2
    .goto 1412/1,-213.61,-2880.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Train |T132269:0|t[Parry]
    .turnin 77651 >>Turn in Into the Brambles
    .target Harutt Thunderhorn
step << Warrior
    #season 0
    .goto 1412/1,-213.61,-2880.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Train |T132269:0|t[Parry]
    .train 6343 >>Train |T136105:0|t[Thunder Clap]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 0
    .goto 1412/1,-213.61,-2880.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Train |T132269:0|t[Parry]
    .target Harutt Thunderhorn
step
    .goto 1412/1,69.47,-3065.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Antur|r
    .accept 1656 >>Accept A Task Unfinished
    .target Antur Fallow
]])


RXPGuides.RegisterGuide([[
#forever
#xprate <1.99
<< Horde
#name 6-12 Mulgore
#version 11
#group RestedXP Forever Guide (H)
#subgroup Speedrun Guide 1-22
--#groupid RXP-SRGCE-H1
#defaultfor Tauren
#next 12-17 The Barrens


step << Druid
    #season 2
    .goto 1412/1,212.80,-2655.69
    >>|cRXP_WARN_Cast|r |T136096:0|t[Moonfire] |cRXP_WARN_on the three|r |cRXP_ENEMY_Lunar Stones|r|cRXP_WARN_. A chest will appear in between the stones|r
    >>Open the |cRXP_PICK_Lunar Chest|r for |T134419:0|t[|cRXP_FRIENDLY_Rune of the Sun|r]
    .collect 206989,1 --Rune of the Sun (1)
    .mob Lunar Stone
    .train 416044,1
step << Druid
    #season 2
    .train 416044 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Sun|r] |cRXP_WARN_to train|r |T236216:0|t[Sunfire]
    .use 206989
    .itemcount 206989,1
step
	#completewith BloodhoofHome
	#softcore
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
	#hardcore
	#completewith BloodhoofHome
    .goto 1412/1,-384.69,-2351.89,120 >> Run to Bloodhoof Village
    .subzoneskip 222
step
    #softcore
    .goto 1412/1,-365.17,-2227.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .accept 766 >>Accept Mazzranache
    .target Maur Raincaller
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruul|r and |cRXP_FRIENDLY_Baine|r
    .accept 743 >>Accept Dangers of the Windfury
    .target +Ruul Eagletalon
    .goto 1412/1,-385.2,-2396.76
    .turnin 763 >>Turn in Rites of the Earthmother
    .accept 745 >>Accept Sharing the Land
    .accept 767 >>Accept Rite of Vision
    .accept 746 >>Accept Dwarven Digging
    .target +Baine Bloodhoof
    .goto 1412/1,-392.91,-2333.40
step
    #label BloodhoofHome
    .goto 1412/1,-347.7,-2365.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kauth|r
    .turnin 1656 >>Turn in A Task Unfinished
    .home >>Set your Hearthstone to Bloodhoof Village
    .target Innkeeper Kauth
    .bindlocation 222
    .subzoneskip 222,1
step << Shaman/Druid
    .goto 1412/1,-297.87,-2279.970
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135145:0|t[Walking Stick] (5s 04c). You'll come back later if you don't have enough yet
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto 1412/1,-297.87,-2279.970
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Buy a|r |T135145:0|t[Walking Stick] |cRXP_BUY_from him|r
    .collect 2495,1,761,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto 1412/1,-297.87,-2279.970
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T133053:0|t[Wooden Mallet] (7s 1c). You'll come back later if you don't have enough yet
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto 1412/1,-297.87,-2279.970
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Buy a|r |T133053:0|t[Wooden Mallet] |cRXP_BUY_from him|r
    .collect 2493,1,761,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 1412/1,-289.65,-2275.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kennah|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135611:0|t[Ornate Blunderbuss] (4s 14c). You'll come back later if you don't have enough yet
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto 1412/1,-289.65,-2275.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Buy a|r |T135611:0|t[Ornate Blunderbuss] |cRXP_BUY_from him|r
    .collect 2509,1,761,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto 1412/1,-289.65,-2275.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kennah|r
    >>|cRXP_BUY_Buy|r |T132384:0|t[Light Shots] |cRXP_BUY_from him|r << Hunter
    .collect 2516,1000,750,1 << Hunter --Light Shot (1000)
    .target Kennah Hawkseye
step << Shaman/Druid
    #optional
    #completewith Well
    +|cRXP_WARN_Equip the|r |T135145:0|t[Walking Stick]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #optional
    #completewith Well
    +|cRXP_WARN_Equip the|r |T133053:0|t[Wooden Mallet]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #optional
    #completewith Well
    +|cRXP_WARN_Equip the|r |T135611:0|t[Ornate Blunderbuss]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r, |cRXP_FRIENDLY_Zarlman|r, |cRXP_FRIENDLY_Harken|r and |cRXP_FRIENDLY_Mull|r
    .accept 766 >>Accept Mazzranache
    .target +Maur Raincaller
    .goto 1412/1,-365.17,-2227.56
    .turnin 767 >>Turn in Rite of Vision
    .accept 771 >>Accept Rite of Vision
    .target +Zarlman Two-Moons
    .goto 1412/1,-405.75,-2243.32
    .accept 761 >>Accept Swoop Hunting
    .target +Harken Windtotem
    .goto 1412/1,-454.56,-2304.63
    .accept 748 >>Accept Poison Water
    .target +Mull Thunderhorn
    .goto 1412/1,-445.31,-2341.620
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r, |cRXP_FRIENDLY_Zarlman|r and |cRXP_FRIENDLY_Harken|r
    .accept 766 >>Accept Mazzranache
    .target +Maur Raincaller
    .goto 1412/1,-365.17,-2227.56
    .turnin 767 >>Turn in Rite of Vision
    .accept 771 >>Accept Rite of Vision
    .target +Zarlman Two-Moons
    .goto 1412/1,-405.75,-2243.32
    .accept 761 >>Accept Swoop Hunting
    .target +Harken Windtotem
    .goto 1412/1,-454.56,-2304.63
step
    #sticky
    #completewith Well
    >>|cRXP_WARN_Get the items for Mazzranache as you quest throughout the zone|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Tauren
    #completewith Ambercorns
    >>Kill |cRXP_ENEMY_Prairie Wolves|r and |cRXP_ENEMY_Adult Plainstriders|r. Loot them for their |cRXP_LOOT_Paws|r and |cRXP_LOOT_Talons|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob +Prairie Wolf
    .complete 748,2 --Plainstrider Talon (4)
    .mob +Adult Plainstrider
step << Hunter
    #season 2
    .goto 1412/1,-984.24,-2134.75
    >>Cast |T132212:0|t[Hunter's Mark] on the |cRXP_ENEMY_Rustling Bush|r
    >>Kill the |cRXP_ENEMY_Venture Co. Poacher|r that spawns. Loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Venture Co. Poacher
    .train 410113,1
step << Hunter
    #season 2
    .train 410113 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .use 206155
    .itemcount 206155,1
step
    #label Ambercorns
    #loop
    .goto 1412/1,-539.33,-2550.2,0
    .goto 1412/1,-454.56,-2479.99,15,0
    .goto 1412/1,-539.33,-2550.2,15,0
    .goto 1412/1,-619.47,-2459.78,15,0
    .goto 1412/1,-578.89,-2706.72,15,0
    .goto 1412/1,-539.33,-2550.2,15,0
    >>Collect the |cRXP_PICK_Ambercorns|r. They can be found under the trees on the ground
    .complete 771,2 --Ambercorn (2)
step
	#completewith next
	>>Kill |cRXP_ENEMY_Swoops|r throughout Mulgore. Loot them for their |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step << Tauren
    #loop
	.goto 1412/1,-562.96,-2556.02,0
	.goto 1412/1,-562.96,-2556.02,50,0
	.goto 1412/1,-575.29,-2452.24,50,0
	.goto 1412/1,-664.17,-2398.47,50,0
	.goto 1412/1,-725.31,-2385.46,50,0
	.goto 1412/1,-812.13,-2422.79,50,0
	.goto 1412/1,-852.72,-2496.77,50,0
	.goto 1412/1,-830.11,-2594.38,50,0
	.goto 1412/1,-778.74,-2658.43,50,0
	.goto 1412/1,-640.54,-2672.81,50,0
	.goto 1412/1,-541.38,-2678.64,50,0
	.goto 1412/1,-448.91,-2650.89,50,0
	.goto 1412/1,-314.31,-2660.14,50,0
	.goto 1412/1,-447.88,-2580.34,50,0
    >>Kill |cRXP_ENEMY_Prairie Wolves|r and |cRXP_ENEMY_Adult Plainstriders|r. Loot them for their |cRXP_LOOT_Paws|r and |cRXP_LOOT_Talons|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob +Prairie Wolf
    .complete 748,2 --Plainstrider Talon (4)
    .mob +Adult Plainstrider
step << Tauren
    .goto 1412/1,-445.31,-2341.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull|r
    .turnin 748 >>Turn in Poison Water
    .timer 8,Poison Water RP
    .accept 754 >>Accept Winterhoof Cleansing
    .target Mull Thunderhorn
step << Tauren
    #completewith next
    >>Collect the |cRXP_PICK_Well Stones|r around the Well
    .complete 771,1 --Well Stone (2)
step << Tauren
    #label Well
    .goto 1412/1,-709.89,-2543.01
    >>|cRXP_WARN_Use the|r |T135139:0|t[Winterhoof Cleansing Totem] |cRXP_WARN_at the Well|r
    .complete 754,1 --Cleanse the Winterhoof Water Well (1)
step
    #label Stones
    #loop
    .goto 1412/1,-729.42,-2547.12,0
    .goto 1412/1,-692.94,-2525.88,10,0
    .goto 1412/1,-710.92,-2519.37,10,0
    .goto 1412/1,-725.31,-2531.36,10,0
    .goto 1412/1,-729.42,-2547.12,10,0
    >>Collect the |cRXP_PICK_Well Stones|r around the Well
    .complete 771,1 --Well Stone (2)
step
    #completewith Gnolls
    >>|cRXP_WARN_Get the items for Mazzranache as you quest throughout the zone|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Warrior
    #season 2
    #loop
    .goto 1412/1,-700.65,-2773.17,0
    .goto 1412/1,-433.50,-2738.92,0
    .goto 1412/1,-700.65,-2773.17,90,0
    .goto 1412/1,-433.50,-2738.92,90,0
    >>Go back and forth between the two camps. Kill |cRXP_ENEMY_Palemane Tanners|r, |cRXP_ENEMY_Palemane Skinners|r and |cRXP_ENEMY_Palemane Poachers|r. Loot them for a |cRXP_LOOT_Severed Gnoll Head|r
    >>|cRXP_WARN_Be careful of|r |cRXP_ENEMY_Snagglespear|r |cRXP_WARN_(Level 9 rare). He's too difficult to kill.|r
    .complete 745,1 --Palemane Tanner (10)
    .mob +Palemane Tanner
    .complete 745,2 --Palemane Skinner (8)
    .mob +Palemane Skinner
    .complete 745,3 --Palemane Poacher (5)
    .mob +Palemane Poacher
    .collect 204478,1 --Severed Gnoll Head (1)
    .unitscan Snagglespear
    .train 403475,1
step
    #label Gnolls
    #loop
    .goto 1412/1,-700.65,-2773.17,0
    .goto 1412/1,-433.50,-2738.92,0
    .goto 1412/1,-700.65,-2773.17,90,0
    .goto 1412/1,-433.50,-2738.92,90,0
    >>Go back and forth between the two camps. Kill |cRXP_ENEMY_Palemane Tanners|r, |cRXP_ENEMY_Palemane Skinners|r and |cRXP_ENEMY_Palemane Poachers|r
    >>|cRXP_WARN_Be careful of|r |cRXP_ENEMY_Snagglespear|r |cRXP_WARN_(Level 9 rare). He's too difficult to kill.|r
    .complete 745,1 --Palemane Tanner (10)
    .mob +Palemane Tanner
    .complete 745,2 --Palemane Skinner (8)
    .mob +Palemane Skinner
    .complete 745,3 --Palemane Poacher (5)
    .mob +Palemane Poacher
    .unitscan Snagglespear
step
    .goto 1412/1,-399.07,-2378.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jhawna|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from her|r << Shaman/Druid
    >>|cRXP_BUY_Buy|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_from her|r << Warrior
    .vendor >> Vendor trash
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Jhawna Oatwind
    .money <0.025
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull|r and |cRXP_FRIENDLY_Baine|r
    .turnin 754 >>Turn in Winterhoof Cleansing
    .accept 756 >>Accept Thunderhorn Totem
    .target +Mull Thunderhorn
    .goto 1412/1,-445.31,-2341.620
    .turnin 745 >>Turn in Sharing the Land
    .target +Baine Bloodhoof
    .goto 1412/1,-392.91,-2333.40
step << !Tauren
    .goto 1412/1,-392.91,-2333.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull|r and |cRXP_FRIENDLY_Baine|r
    .turnin 745 >>Turn in Sharing the Land
    .target Baine Bloodhoof
step << Warrior
    .goto 1412/1,-356.43,-2357.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vira|r
    .train 3273 >>Train |T135966:0|t[First Aid]
    .money <0.01
    .target Vira Younghoof
step << Shaman/Druid
    .goto 1412/1,-297.87,-2279.970
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135145:0|t[Walking Stick] (5s 04c). You'll come back later if you don't have enough yet
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto 1412/1,-297.87,-2279.970
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Buy a|r |T135145:0|t[Walking Stick] |cRXP_BUY_from him|r
    .collect 2495,1,749,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto 1412/1,-297.87,-2279.970
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T133053:0|t[Wooden Mallet] (7s 1c). You'll come back later if you don't have enough yet
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto 1412/1,-297.87,-2279.970
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Buy a|r |T133053:0|t[Wooden Mallet] |cRXP_BUY_from him|r
    .collect 2493,1,749,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 1412/1,-289.65,-2275.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kennah|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135611:0|t[Ornate Blunderbuss] (4s 14c). You'll come back later if you don't have enough yet
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto 1412/1,-289.65,-2275.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Buy a|r |T135611:0|t[Ornate Blunderbuss] |cRXP_BUY_from him|r
    .collect 2509,1,749,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Shaman/Druid
    #optional
    #completewith Clawsx
    +|cRXP_WARN_Equip the|r |T135145:0|t[Walking Stick]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #optional
    #completewith Clawsx
    +|cRXP_WARN_Equip the|r |T133053:0|t[Wooden Mallet]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #optional
    #completewith Clawsx
    +|cRXP_WARN_Equip the|r |T135611:0|t[Ornate Blunderbuss]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #label Vision
    .goto 1412/1,-405.75,-2243.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zarlman|r
    >>|cRXP_WARN_Do not follow the wolf that spawns|r
    .turnin 771 >>Turn in Rite of Vision
    .accept 772 >>Accept Rite of Vision
    .target Zarlman Two-Moons
step << Hunter
    .goto 1412/1,-408.32,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Train your class spells
    .target Yaw Sharpmane
    .xp <8,1
step << Druid
    .goto 1412/1,-442.74,-2315.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gennia|r
    .train 5186 >>Train your class spells
    .target Gennia Runetotem
    .xp <8,1
step << Warrior
    .goto 1412/1,-496.17,-2347.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krang|r
    .train 284 >> Train your class spells
    .target Krang Stonehoof
    .xp <8,1
step << Shaman
    .goto 1412/1,-437.61,-2298.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm|r
    .train 8044 >> Train your class spells
    .target Narm Skychaser
    .xp <8,1
step
    #loop
    .goto 1412/1,-784.9,-2350.18,0
    .goto 1412/1,-597.9,-2301.54,50,0
    .goto 1412/1,-674.96,-2336.14,50,0
    .goto 1412/1,-784.9,-2350.18,50,0
    .goto 1412/1,-904.6,-2371.07,50,0
    .goto 1412/1,-1016.6,-2410.12,50,0
    .goto 1412/1,-784.9,-2350.18,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_He patrols along the eastern road|r
    .accept 749 >>Accept The Ravaged Caravan
	.unitscan Morin Cloudstalker
step
    #completewith Clawsx
    >>|cRXP_WARN_Get the items for Mazzranache as you quest throughout the zone|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Tauren
    #completewith RavagedCaravan1
    >>Kill |cRXP_ENEMY_Stalkers|r and |cRXP_ENEMY_Cougars|r. Loot them for their |cRXP_LOOT_Claws|r
    .complete 756,1 --Stalker Claws (6)
    .mob +Prairie Stalker
    .complete 756,2 --Cougar Claws (6)
    .mob +Flatland Cougar
step
	#completewith Clawsx
	>>Kill |cRXP_ENEMY_Swoops|r throughout Mulgore. Loot them for their |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step
    #label RavagedCaravan1
    .goto 1412/1,-712.98,-1922.74
    >>Click the |cRXP_PICK_Sealed Supply Crate|r
    .turnin 749 >>Turn in The Ravaged Caravan
    .accept 751 >>Accept The Ravaged Caravan
step << Tauren
    #loop
    .goto 1412/1,-936.97,-1937.47,0
    .goto 1412/1,-936.97,-1937.47,60,0
    .goto 1412/1,-752.02,-1646.34,60,0
    .goto 1412/1,-335.88,-2009.39,60,0
    >>Kill |cRXP_ENEMY_Stalkers|r and |cRXP_ENEMY_Cougars|r. Loot them for their |cRXP_LOOT_Claws|r
    .complete 756,1 --Stalker Claws (6)
    .mob +Prairie Stalker
    .complete 756,2 --Cougar Claws (6)
    .mob +Flatland Cougar
step
    #optional
    #label Clawsx
step
    #softcore
	#completewith Thunderhorn
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    #hardcore
    #completewith Thunderhorn
    .goto 1412/1,-341.02,-2173.79,150 >> Travel back to Bloodhoof Village
    .subzoneskip 222
step << Hunter
    .goto 1412/1,-408.32,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Train your class spells
    .target Yaw Sharpmane
    .xp <8,1
step
    #label Mazzturnin
    .goto 1412/1,-365.17,-2227.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Turn in Mazzranache
    .target Maur Raincaller
    .isQuestComplete 766
step << Shaman/Druid
    .goto 1412/1,-297.87,-2279.970
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135145:0|t[Walking Stick] (5s 04c). You'll come back later if you don't have enough yet
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto 1412/1,-297.87,-2279.970
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Buy a|r |T135145:0|t[Walking Stick] |cRXP_BUY_from him|r
    .collect 2495,1,743,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto 1412/1,-297.87,-2279.970
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T133053:0|t[Wooden Mallet] (7s 1c). You'll come back later if you don't have enough yet
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto 1412/1,-297.87,-2279.970
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Buy a|r |T133053:0|t[Wooden Mallet] |cRXP_BUY_from him|r
    .collect 2493,1,743,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 1412/1,-289.65,-2275.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kennah|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135611:0|t[Ornate Blunderbuss] (4s 14c). You'll come back later if you don't have enough yet
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto 1412/1,-289.65,-2275.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Buy a|r |T135611:0|t[Ornate Blunderbuss] |cRXP_BUY_from him|r
    .collect 2509,1,743,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto 1412/1,-308.14,-2248.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Moorat|r
    .collect 2516,1000,743,1 << Hunter --Light Shot (1000)
    .target Moorat Longstride
    .itemcount 2512,<800 << Hunter
step << Shaman/Druid
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_Equip the|r |T135145:0|t[Walking Stick]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_Equip the|r |T133053:0|t[Wooden Mallet]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_Equip the|r |T135611:0|t[Ornate Blunderbuss]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #completewith Thunderhorn
    .goto 1412/1,-310.2,-2284.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harant|r
    .vendor >> Vendor trash and repair
    .target Harant Ironbrace
step
    .goto 1412/1,-454.56,-2304.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harken|r
    .turnin 761 >>Turn in Swoop Hunting
    .target Harken Windtotem
    .isQuestComplete 761
step << Tauren
    .goto 1412/1,-445.31,-2341.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull|r
    .turnin 756 >>Turn in Thunderhorn Totem
    .timer 8,Thunderhorn Totem RP
    .accept 758 >>Accept Thunderhorn Cleansing
    .target Mull Thunderhorn
step
    #optional
    #label Thunderhorn
step << Shaman
    .goto 1412/1,-437.61,-2298.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm|r
    .train 8044 >> Train your class spells
    .target Narm Skychaser
    .xp <8,1
step << Druid
    .goto 1412/1,-442.74,-2315.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gennia|r
    .train 5186 >>Train your class spells
    .target Gennia Runetotem
    .xp <8,1
step << Warrior
    .goto 1412/1,-496.17,-2347.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krang|r
    .train 284 >> Train your class spells
    .target Krang Stonehoof
    .xp <8,1
step << Hunter
    .goto 1412/1,-408.32,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Train your class spells
    .target Yaw Sharpmane
    .xp <8,1
step
    .goto 1412/1,-347.7,-2364.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kauth|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r << Shaman/Druid
    >>|cRXP_BUY_Buy|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_from him|r << Warrior
    .vendor >> Vendor Trash << !Hunter
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Innkeeper Kauth
    .money <0.025
step
    #completewith Burial
    >>|cRXP_WARN_Finish getting the items for Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
	#completewith Burial
	>>Kill |cRXP_ENEMY_Swoops|r throughout Mulgore. Loot them for their |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step << Tauren
    #era/som
    #label ThunderhornCleanse
    .goto 1412/1,-237.76,-1826.50
    >>|cRXP_WARN_Use the|r |T135139:0|t[Thunderhorn Cleansing Totem] |cRXP_WARN_at the Well|r
    .complete 758,1 --Cleanse the Thunderhorn Water Well (1)
step << Shaman
    #season 2
    #completewith next
    >>Kill |cRXP_ENEMY_Bael'dun Diggers|r and |cRXP_ENEMY_Bael'dun Appraisers|r. Loot them for the |cRXP_LOOT_Artifact Storage Key|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
step
    .goto 1412/1,441.42,-1980.96
    >>Kill |cRXP_ENEMY_Bael'dun Diggers|r and |cRXP_ENEMY_Bael'dun Appraisers|r. Loot them for their |cRXP_LOOT_Prospector's Picks|r
    .use 4702 >> |cRXP_WARN_Smash the|r |T134707:0|t[Picks] |cRXP_WARN_at the Forge|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Bael'dun Appraisers|r cast|r |T135929:0|t[Lesser Heal] |cRXP_WARN_(Ranged Cast: Heals themselves or a nearby mob below 50% health for about 75 health)|r
    .complete 746,1 --Broken Tools (5)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
step << Shaman
    #season 2
    #loop
    .goto 1412/1,284.21,-1901.16,0
    .goto 1412/1,284.21,-1901.16,40,0
    .goto 1412/1,320.69,-1972.06,40,0
    .goto 1412/1,374.12,-1949.80,40,0
    .goto 1412/1,410.08,-1991.24,40,0
    .goto 1412/1,448.10,-1988.16,40,0
    .goto 1412/1,456.32,-1925.14,40,0
    .goto 1412/1,424.98,-1923.42,40,0
    .goto 1412/1,347.4,-1906.3,40,0
    >>Kill |cRXP_ENEMY_Bael'dun Diggers|r and |cRXP_ENEMY_Bael'dun Appraisers|r. Loot them for the |cRXP_LOOT_Artifact Storage Key|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Bael'dun Appraisers|r cast|r |T135929:0|t[Lesser Heal] |cRXP_WARN_(Ranged Cast: Heals themselves or a nearby mob below 50% health for about 75 health)|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
step << Shaman
    #season 2
    .goto 1412/1,426.52,-1969.66
    >>Open the |cRXP_PICK_Artifact Storage|r chest. Loot it for the |T134918:0|t|cRXP_LOOT_[Sulfurous Icon]|r
    .collect 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step << Shaman
    #season 2
    .equip 18,206388 >> |cRXP_WARN_Equip the|r |T134918:0|t|cRXP_LOOT_[Sulfurous Icon]|r
    .use 206388
    .itemcount 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step << Shaman
    #season 2
    #label MoltenBlast
    #completewith Burial
    .aura 408828 >>|cRXP_WARN_Kill enemies having dealt damage using|r |T136026:0|t[Earth Shock] |cRXP_WARN_on them at least once. Do this 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
    .xp >13,1
step << Warrior
    #season 2
    #loop
	.goto 1412/1,417.27,-1653.53,0
	.goto 1412/1,297.06,-1769.98,50,0
	.goto 1412/1,353.57,-1744.30,50,0
	.goto 1412/1,418.30,-1748.41,50,0
	.goto 1412/1,451.18,-1714.50,50,0
	.goto 1412/1,449.13,-1672.71,50,0
	.goto 1412/1,417.27,-1653.53,50,0
	.goto 1412/1,381.31,-1682.99,50,0
	.goto 1412/1,323.26,-1687.440,50,0
	.goto 1412/1,310.41,-1651.82,50,0
	.goto 1412/1,276.51,-1684.36,50,0
	.goto 1412/1,275.48,-1721.35,50,0
    >>Kill |cRXP_ENEMY_Windfury Wind Witches|r and |cRXP_ENEMY_Windfury Harpies|r. Loot them for their |cRXP_LOOT_Talons|r and a |cRXP_LOOT_Severed Harpy Head|r
    .complete 743,1 --Windfury Talon (8)
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
    .train 403475,1
step
    #loop
	.goto 1412/1,417.27,-1653.53,0
	.goto 1412/1,297.06,-1769.98,50,0
	.goto 1412/1,353.57,-1744.30,50,0
	.goto 1412/1,418.30,-1748.41,50,0
	.goto 1412/1,451.18,-1714.50,50,0
	.goto 1412/1,449.13,-1672.71,50,0
	.goto 1412/1,417.27,-1653.53,50,0
	.goto 1412/1,381.31,-1682.99,50,0
	.goto 1412/1,323.26,-1687.440,50,0
	.goto 1412/1,310.41,-1651.82,50,0
	.goto 1412/1,276.51,-1684.36,50,0
	.goto 1412/1,275.48,-1721.35,50,0
    >>Kill |cRXP_ENEMY_Windfury Wind Witches|r and |cRXP_ENEMY_Windfury Harpies|r. Loot them for their |cRXP_LOOT_Talons|r
    .complete 743,1 --Windfury Talon (8)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
step
    #completewith next
    .goto 1412/1,333.53,-1523.73,50 >> Enter the cave just north of the Windfury Harpies
step
	#label Burial
    .goto 1412/1,366.93,-1509.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wiserunner|r
    .turnin 772 >>Turn in Rite of Vision
    .accept 773 >>Accept Rite of Wisdom
    .target Seer Wiserunner
step << Shaman
    #season 2
    #requires MoltenBlast
    .cast 402265 >>|cRXP_WARN_Use the|r |T134918:0|t|cRXP_LOOT_[Sulfurous Icon]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves: Molten Blast]
    .use 206388
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <3,1
step
    #completewith SacredBurial
    .destroy 4823 >> |cRXP_WARN_You can delete|r |T134712:0|t[Water of the Seers] |cRXP_WARN_from your bags, as it's no longer needed|r
step
    #completewith SacredBurial
    >>|cRXP_WARN_Finish getting the items for Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #completewith SacredBurial
    >>Keep an eye out for |cRXP_ENEMY_Ghost Howl|r. Loot him for his |T134358:0|t[|cRXP_LOOT_Demon Scarred Cloak|r]. Use it to start the quest
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Ghost Howl|r is difficult due to being level 12|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .accept 770 >>Accept The Demon Scarred Cloak
    .use 4854
    .unitscan Ghost Howl
step
	#completewith next
	>>Kill |cRXP_ENEMY_Swoops|r throughout Mulgore. Loot them for their |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    #label SacredBurial
    .goto 1412/1,-1026.88,-1150.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raintotem|r
    .accept 833 >>Accept A Sacred Burial
    .target Lorekeeper Raintotem
step << Warrior
    #season 2
    #completewith RiteofWisdom
    >>Kill |cRXP_ENEMY_Bristleback Interlopers|r. Loot them for a |cRXP_LOOT_Severed Quilboar Head|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob Bristleback Interloper
    .train 403475,1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Bristleback Interlopers|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    #label RiteofWisdom
    .goto 1412/1,-1109.08,-992.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Ancestral Spirit|r
    .turnin 773 >>Turn in Rite of Wisdom
    .accept 775 >>Accept Journey into Thunder Bluff
    .target Ancestral Spirit
step << Warrior
    #season 2
    #loop
	.goto 1412/1,-1026.88,-1150.40,0
	.goto 1412/1,-1026.88,-1150.40,25,0
	.goto 1412/1,-1093.15,-1058.27,25,0
	.goto 1412/1,-1125.52,-1043.20,25,0
	.goto 1412/1,-1146.58,-1028.13,25,0
	.goto 1412/1,-1153.77,-988.40,25,0
	.goto 1412/1,-1117.81,-940.790,25,0
	.goto 1412/1,-1057.19,-940.790,25,0
	.goto 1412/1,-1042.80,-994.22,25,0
	.goto 1412/1,-1055.65,-1025.05,25,0
	.goto 1412/1,-1092.12,-1056.56,25,0
    >>Kill |cRXP_ENEMY_Bristleback Interlopers|r. Loot them for a |cRXP_LOOT_Severed Quilboar Head|r
    .complete 833,1 --Bristleback Interloper (8)
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob Bristleback Interloper
    .train 403475,1
step
    #loop
	.goto 1412/1,-1026.88,-1150.40,0
	.goto 1412/1,-1026.88,-1150.40,25,0
	.goto 1412/1,-1093.15,-1058.27,25,0
	.goto 1412/1,-1125.52,-1043.20,25,0
	.goto 1412/1,-1146.58,-1028.13,25,0
	.goto 1412/1,-1153.77,-988.40,25,0
	.goto 1412/1,-1117.81,-940.790,25,0
	.goto 1412/1,-1057.19,-940.790,25,0
	.goto 1412/1,-1042.80,-994.22,25,0
	.goto 1412/1,-1055.65,-1025.05,25,0
	.goto 1412/1,-1092.12,-1056.56,25,0
    >>Kill |cRXP_ENEMY_Bristleback Interlopers|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    .goto 1412/1,-1026.88,-1150.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raintotem|r
    .turnin 833 >>Turn in A Sacred Burial
    .target Lorekeeper Raintotem
step
    #completewith next
    >>|cRXP_WARN_Finish getting the items for Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #loop
	.goto 1412/1,-572.21,-903.12,0
	.goto 1412/1,-1009.92,-1073.0,60,0
	.goto 1412/1,-906.66,-926.41,60,0
	.goto 1412/1,-788.5,-912.36,60,0
	.goto 1412/1,-674.44,-866.81,60,0
	.goto 1412/1,-572.21,-903.12,60,0
	.goto 1412/1,-512.61,-983.26,60,0
	.goto 1412/1,-511.59,-1084.3,60,0
	.goto 1412/1,-496.17,-1166.84,60,0
	.goto 1412/1,-506.45,-1236.71,60,0
	.goto 1412/1,-561.42,-1278.84,60,0
	.goto 1412/1,-635.91,-1302.81,60,0
	.goto 1412/1,-737.12,-1315.14,60,0
	.goto 1412/1,-836.79,-1312.4,60,0
	.goto 1412/1,-920.02,-1316.86,60,0
	.goto 1412/1,-972.42,-1249.73,60,0
	.goto 1412/1,-1063.35,-1159.31,60,0
	.goto 1412/1,-1009.92,-1073.0,60,0
	>>Kill |cRXP_ENEMY_Swoops|r. Loot them for their |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    #loop
    .goto 1412/1,-780.79,-1385.36,0
    .goto 1412/1,-780.79,-1385.36,60,0
    .goto 1412/1,-718.11,-1670.32,60,0
    .goto 1412/1,-684.72,-1819.65,60,0
    .goto 1412/1,-903.58,-1946.37,60,0
    .goto 1412/1,-985.26,-2080.97,60,0
    .goto 1412/1,-989.37,-2262.5,60,0
    .goto 1412/1,-452.5,-1808.69,60,0
    >>|cRXP_WARN_Finish getting the items for Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .mob +Prairie Wolf Alpha
    .mob +Prairie Stalker
    .mob +Prairie Wolf Alpha
    .complete 766,2 --Flatland Cougar Femur (1)
    .mob +Flatland Cougar
    .complete 766,3 --Plainstrider Scale (1)
    .mob +Elder Plainstrider
    .mob +Adult Plainstrider
    .complete 766,4 --Swoop Gizzard (1)
    .mob +Taloned Swoop
    .mob +Swoop
    .mob +Wiry Swoop
step
    #xprate <1.5
    #optional
    #loop
	.goto 1412/1,-1009.92,-1073.0,60,0
	.goto 1412/1,-906.66,-926.41,60,0
	.goto 1412/1,-788.5,-912.36,60,0
	.goto 1412/1,-674.44,-866.81,60,0
	.goto 1412/1,-572.21,-903.12,60,0
	.goto 1412/1,-512.61,-983.26,60,0
	.goto 1412/1,-511.59,-1084.3,60,0
	.goto 1412/1,-496.17,-1166.84,60,0
	.goto 1412/1,-506.45,-1236.71,60,0
	.goto 1412/1,-561.42,-1278.84,60,0
	.goto 1412/1,-635.91,-1302.81,60,0
	.goto 1412/1,-737.12,-1315.14,60,0
	.goto 1412/1,-836.79,-1312.4,60,0
	.goto 1412/1,-920.02,-1316.86,60,0
	.goto 1412/1,-972.42,-1249.73,60,0
	.goto 1412/1,-1063.35,-1159.31,60,0
	.goto 1412/1,-1009.92,-1073.0,60,0
    .xp 9+3020 >> Grind to 3020+/6500xp
    .isQuestComplete 761
    .isQuestComplete 766
step
    #xprate <1.5
    #optional
    #loop
	.goto 1412/1,-1009.92,-1073.0,60,0
	.goto 1412/1,-906.66,-926.41,60,0
	.goto 1412/1,-788.5,-912.36,60,0
	.goto 1412/1,-674.44,-866.81,60,0
	.goto 1412/1,-572.21,-903.12,60,0
	.goto 1412/1,-512.61,-983.26,60,0
	.goto 1412/1,-511.59,-1084.3,60,0
	.goto 1412/1,-496.17,-1166.84,60,0
	.goto 1412/1,-506.45,-1236.71,60,0
	.goto 1412/1,-561.42,-1278.84,60,0
	.goto 1412/1,-635.91,-1302.81,60,0
	.goto 1412/1,-737.12,-1315.14,60,0
	.goto 1412/1,-836.79,-1312.4,60,0
	.goto 1412/1,-920.02,-1316.86,60,0
	.goto 1412/1,-972.42,-1249.73,60,0
	.goto 1412/1,-1063.35,-1159.31,60,0
	.goto 1412/1,-1009.92,-1073.0,60,0
    .xp 9+3720 >> Grind to 3720+/6500xp
    .isQuestComplete 761
step
    #xprate <1.5
    #optional
    #loop
	.goto 1412/1,-1009.92,-1073.0,60,0
	.goto 1412/1,-906.66,-926.41,60,0
	.goto 1412/1,-788.5,-912.36,60,0
	.goto 1412/1,-674.44,-866.81,60,0
	.goto 1412/1,-572.21,-903.12,60,0
	.goto 1412/1,-512.61,-983.26,60,0
	.goto 1412/1,-511.59,-1084.3,60,0
	.goto 1412/1,-496.17,-1166.84,60,0
	.goto 1412/1,-506.45,-1236.71,60,0
	.goto 1412/1,-561.42,-1278.84,60,0
	.goto 1412/1,-635.91,-1302.81,60,0
	.goto 1412/1,-737.12,-1315.14,60,0
	.goto 1412/1,-836.79,-1312.4,60,0
	.goto 1412/1,-920.02,-1316.86,60,0
	.goto 1412/1,-972.42,-1249.73,60,0
	.goto 1412/1,-1063.35,-1159.31,60,0
	.goto 1412/1,-1009.92,-1073.0,60,0
    .xp 9+3700 >> Grind to 3700+/6500xp
    .isQuestComplete 766
step
    #xprate <1.5
    #optional
    #loop
	.goto 1412/1,-1009.92,-1073.0,60,0
	.goto 1412/1,-906.66,-926.41,60,0
	.goto 1412/1,-788.5,-912.36,60,0
	.goto 1412/1,-674.44,-866.81,60,0
	.goto 1412/1,-572.21,-903.12,60,0
	.goto 1412/1,-512.61,-983.26,60,0
	.goto 1412/1,-511.59,-1084.3,60,0
	.goto 1412/1,-496.17,-1166.84,60,0
	.goto 1412/1,-506.45,-1236.71,60,0
	.goto 1412/1,-561.42,-1278.84,60,0
	.goto 1412/1,-635.91,-1302.81,60,0
	.goto 1412/1,-737.12,-1315.14,60,0
	.goto 1412/1,-836.79,-1312.4,60,0
	.goto 1412/1,-920.02,-1316.86,60,0
	.goto 1412/1,-972.42,-1249.73,60,0
	.goto 1412/1,-1063.35,-1159.31,60,0
	.goto 1412/1,-1009.92,-1073.0,60,0
    .xp 9+4400 >> Grind to 4400+/6500xp
step
    #xprate >1.49
    #optional
    #loop
	.goto 1412/1,-1009.92,-1073.0,60,0
	.goto 1412/1,-906.66,-926.41,60,0
	.goto 1412/1,-788.5,-912.36,60,0
	.goto 1412/1,-674.44,-866.81,60,0
	.goto 1412/1,-572.21,-903.12,60,0
	.goto 1412/1,-512.61,-983.26,60,0
	.goto 1412/1,-511.59,-1084.3,60,0
	.goto 1412/1,-496.17,-1166.84,60,0
	.goto 1412/1,-506.45,-1236.71,60,0
	.goto 1412/1,-561.42,-1278.84,60,0
	.goto 1412/1,-635.91,-1302.81,60,0
	.goto 1412/1,-737.12,-1315.14,60,0
	.goto 1412/1,-836.79,-1312.4,60,0
	.goto 1412/1,-920.02,-1316.86,60,0
	.goto 1412/1,-972.42,-1249.73,60,0
	.goto 1412/1,-1063.35,-1159.31,60,0
	.goto 1412/1,-1009.92,-1073.0,60,0
    .xp 9+1280 >> Grind to 1280+/6500xp
    .isQuestComplete 761
    .isQuestComplete 766
step
    #xprate >1.49
    #optional
    #loop
	.goto 1412/1,-1009.92,-1073.0,60,0
	.goto 1412/1,-906.66,-926.41,60,0
	.goto 1412/1,-788.5,-912.36,60,0
	.goto 1412/1,-674.44,-866.81,60,0
	.goto 1412/1,-572.21,-903.12,60,0
	.goto 1412/1,-512.61,-983.26,60,0
	.goto 1412/1,-511.59,-1084.3,60,0
	.goto 1412/1,-496.17,-1166.84,60,0
	.goto 1412/1,-506.45,-1236.71,60,0
	.goto 1412/1,-561.42,-1278.84,60,0
	.goto 1412/1,-635.91,-1302.81,60,0
	.goto 1412/1,-737.12,-1315.14,60,0
	.goto 1412/1,-836.79,-1312.4,60,0
	.goto 1412/1,-920.02,-1316.86,60,0
	.goto 1412/1,-972.42,-1249.73,60,0
	.goto 1412/1,-1063.35,-1159.31,60,0
	.goto 1412/1,-1009.92,-1073.0,60,0
    .xp 9+2330 >> Grind to 2330+/6500xp
    .isQuestComplete 761
step
    #xprate >1.49
    #optional
    #loop
	.goto 1412/1,-1009.92,-1073.0,60,0
	.goto 1412/1,-906.66,-926.41,60,0
	.goto 1412/1,-788.5,-912.36,60,0
	.goto 1412/1,-674.44,-866.81,60,0
	.goto 1412/1,-572.21,-903.12,60,0
	.goto 1412/1,-512.61,-983.26,60,0
	.goto 1412/1,-511.59,-1084.3,60,0
	.goto 1412/1,-496.17,-1166.84,60,0
	.goto 1412/1,-506.45,-1236.71,60,0
	.goto 1412/1,-561.42,-1278.84,60,0
	.goto 1412/1,-635.91,-1302.81,60,0
	.goto 1412/1,-737.12,-1315.14,60,0
	.goto 1412/1,-836.79,-1312.4,60,0
	.goto 1412/1,-920.02,-1316.86,60,0
	.goto 1412/1,-972.42,-1249.73,60,0
	.goto 1412/1,-1063.35,-1159.31,60,0
	.goto 1412/1,-1009.92,-1073.0,60,0
    .xp 9+2300 >> Grind to 2300+/6500xp
    .isQuestComplete 766
step
    #xprate >1.49
    #optional
    #loop
	.goto 1412/1,-1009.92,-1073.0,60,0
	.goto 1412/1,-906.66,-926.41,60,0
	.goto 1412/1,-788.5,-912.36,60,0
	.goto 1412/1,-674.44,-866.81,60,0
	.goto 1412/1,-572.21,-903.12,60,0
	.goto 1412/1,-512.61,-983.26,60,0
	.goto 1412/1,-511.59,-1084.3,60,0
	.goto 1412/1,-496.17,-1166.84,60,0
	.goto 1412/1,-506.45,-1236.71,60,0
	.goto 1412/1,-561.42,-1278.84,60,0
	.goto 1412/1,-635.91,-1302.81,60,0
	.goto 1412/1,-737.12,-1315.14,60,0
	.goto 1412/1,-836.79,-1312.4,60,0
	.goto 1412/1,-920.02,-1316.86,60,0
	.goto 1412/1,-972.42,-1249.73,60,0
	.goto 1412/1,-1063.35,-1159.31,60,0
	.goto 1412/1,-1009.92,-1073.0,60,0
    .xp 9+3350 >> Grind to 3350+/6500xp
step << !Druid
    #completewith Bloodhoofturnins1
    .hs >>Hearth to Bloodhoof Village
    .use 6948
    .bindlocation 222,1
    .subzoneskip 222
step << Druid
    #sofcore
    #completewith Bloodhoofturnins1
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << Druid
    #hardcore
    #completewith Bloodhoofturnins1
    .goto 1412/1,-383.66,-2230.99,120 >> Travel back to Bloodhoof Village
    .subzoneskip 222
step
    .goto 1412/1,-347.19,-2364.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kauth|r
    .vendor >> Vendor trash
    .target Innkeeper Kauth
    .isQuestAvailable 870
step
    .goto 1412/1,-353.86,-2336.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skorn|r
    .turnin 770 >>Turn in The Demon Scarred Cloak
    .target Skorn Whitecloud
    .isOnQuest 770
step << Warrior
    #season 2
    .goto 1412/1,-330.23,-2388.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vateya|r in Bloodhoof Village
    >>Turn in the |cRXP_LOOT_Heads|r you've collected in exchange for |T134455:0|t[Rune Fragments]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vateya Timberhoof
    .train 403475,1
step << Warrior
    #season 2
    .use 204688 >>Use the |T134455:0|t[Rune Fragments] to create |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step << Warrior
    #season 2
    .train 403475 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .use 204703
    .itemcount 204703,1
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r, |cRXP_FRIENDLY_Mull|r and |cRXP_FRIENDLY_Harken|r
    .turnin 746 >>Turn in Dwarven Digging
    .target +Baine Bloodhoof
    .goto 1412/1,-392.91,-2333.40
    .turnin 743 >>Turn in Dangers of the Windfury
    .target +Ruul Eagletalon
    .goto 1412/1,-384.69,-2397.10
    .turnin 758 >>Turn in Thunderhorn Cleansing
    .timer 8,Thunderhorn Cleansing RP
    .accept 759 >>Accept Wildmane Totem
    .target +Mull Thunderhorn
    .goto 1412/1,-445.83,-2340.93
    .turnin 761 >>Turn in Swoop Hunting
    .target +Harken Windtotem
    .goto 1412/1,-454.56,-2304.63
    .isQuestComplete 761
step << Tauren
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r, and |cRXP_FRIENDLY_Mull|r
    .turnin 746 >>Turn in Dwarven Digging
    .target +Baine Bloodhoof
    .goto 1412/1,-392.91,-2333.40
    .turnin 743 >>Turn in Dangers of the Windfury
    .target +Ruul Eagletalon
    .goto 1412/1,-384.69,-2397.10
    .turnin 758 >>Turn in Thunderhorn Cleansing
    .timer 8,Thunderhorn Cleansing RP
    .accept 759 >>Accept Wildmane Totem
    .target +Mull Thunderhorn
    .goto 1412/1,-445.83,-2340.93
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r and |cRXP_FRIENDLY_Harken|r
    .turnin 746 >>Turn in Dwarven Digging
    .target +Baine Bloodhoof
    .goto 1412/1,-392.91,-2333.40
    .turnin 743 >>Turn in Dangers of the Windfury
    .target +Ruul Eagletalon
    .goto 1412/1,-384.69,-2397.10
    .turnin 761 >>Turn in Swoop Hunting
    .target +Harken Windtotem
    .goto 1412/1,-454.56,-2304.63
    .isQuestComplete 761
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine|r and |cRXP_FRIENDLY_Ruul|r
    .turnin 746 >>Turn in Dwarven Digging
    .target +Baine Bloodhoof
    .goto 1412/1,-392.91,-2333.40
    .turnin 743 >>Turn in Dangers of the Windfury
    .target +Ruul Eagletalon
    .goto 1412/1,-384.69,-2397.10
step
    #optional
    #label Bloodhoofturnins1
step
    #completewith AlphaTeeth
    .destroy 4702 >> |cRXP_WARN_You can delete|r |T134707:0|t[Prospector's Picks] |cRXP_WARN_from your bags, as they're no longer needed|r
step << Hunter
    .goto 1412/1,-289.65,-2275.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kennah|r
    >>|cRXP_BUY_Buy|r |T132384:0|t[Heavy Shots] |cRXP_BUY_from him|r << Hunter
    .collect 2519,1000,6061,1 << Hunter --Heavy Shot (1000)
    .target Kennah Hawkseye
step
    .goto 1412/1,-365.17,-2227.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Turn in Mazzranache
    .target Maur Raincaller
    .isQuestComplete 766
step << Warrior
    .goto 1412/1,-496.17,-2347.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krang|r
    .trainer >> Train your class spells
    .accept 1505 >>Accept Veteran Uzzek
    .target Krang Stonehoof
step << Shaman
    .goto 1412/1,-437.61,-2298.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm|r
    .accept 2984 >>Accept Call of Fire
    .trainer >> Train your class spells
    .target Narm Skychaser
step << Hunter
    .goto 1412/1,-408.32,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .accept 6061 >>Accept Taming the Beast
    .trainer >> Train your class spells
    .target Yaw Sharpmane
step << Druid
    .goto 1412/1,-442.74,-2315.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gennia|r
    .trainer >> Train your class spells
    .accept 5928 >> Accept Heeding the Call
    .target Gennia Runetotem
    .isQuestAvailable 5928
step << Druid
    .goto 1412/1,-442.74,-2315.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gennia|r
    .train 8924 >> Train your class spells
    .target Gennia Runetotem
step << Hunter
    #loop
    .goto 1412/1,24.77,-2239.89,0
    .goto 1412/1,-154.53,-2152.56,50,0
    .goto 1412/1,-44.59,-2177.22,50,0
    .goto 1412/1,24.77,-2239.89,50,0
    .use 15914 >> |cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on an|r |cRXP_ENEMY_Adult Plainstrider|r |cRXP_WARN_at max range|r
    .complete 6061,1 --Tame an Adult Plainstrider (1)
    .mob Adult Plainstrider
step << Hunter
    .goto 1412/1,-408.32,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .turnin 6061 >>Turn in Taming the Beast
    .accept 6087 >>Accept Taming the Beast
    .target Yaw Sharpmane
step << Hunter
    #loop
    .goto 1412/1,-494.63,-1720.66,0
    .goto 1412/1,-375.96,-1990.55,50,0
    .goto 1412/1,-348.73,-1890.2,50,0
    .goto 1412/1,-427.33,-1823.41,50,0
    .goto 1412/1,-494.63,-1720.66,50,0
    .use 15915 >> |cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Prairie Stalker|r |cRXP_WARN_at max range|r
    .complete 6087,1 --Tame a Prairie Stalker (1)
    .mob Prairie Stalker
step << Hunter
    .goto 1412/1,-408.32,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .turnin 6087 >>Turn in Taming the Beast
    .accept 6088 >>Accept Taming the Beast
    .target Yaw Sharpmane
step << Hunter
    #loop
    .goto 1412/1,-379.55,-1688.47,0
    .goto 1412/1,-379.55,-1688.47,80,0
    .goto 1412/1,-285.02,-1652.85,80,0
    .goto 1412/1,-601.49,-1793.62,80,0
    .use 15916 >> |cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Swoop|r |cRXP_WARN_at max range and re-cast it immediately if they knock you down|r
    >>|cRXP_WARN_If you fail and run out of Taming Rod Charges, abandon the quest, then pick it up again and come back|r
    .complete 6088,1 --Tame a Swoop (1)
    .mob Swoop
step << Hunter
    .goto 1412/1,-408.32,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .turnin 6088 >>Turn in Taming the Beast
    .accept 6089 >>Accept Training the Beast
    .target Yaw Sharpmane
step
    .goto 1412/1,-399.07,-2378.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jhawna|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from her|r << Shaman/Druid
    >>|cRXP_BUY_Buy|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_from her|r << Warrior
    .collect 1179,20,818,1 << Shaman/Druid --Ice Cold Milk (20)
    .collect 4541,20,818,1 << Warrior --Freshly Baked Bread (20)
    .target Innkeeper Grosk
    .money <0.05
    .target Jhawna Oatwind
step
    .goto 1412/1,-353.86,-2336.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skorn|r
    .accept 861 >>Accept The Hunter's Way
    .target Skorn Whitecloud
step
    #loop
    .goto 1412/1,-784.9,-2350.18,0
    .goto 1412/1,-597.9,-2301.54,50,0
    .goto 1412/1,-674.96,-2336.14,50,0
    .goto 1412/1,-784.9,-2350.18,50,0
    .goto 1412/1,-904.6,-2371.07,50,0
    .goto 1412/1,-1016.6,-2410.12,50,0
    .goto 1412/1,-784.9,-2350.18,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_He patrols along the eastern road|r
    .turnin 751 >> Turn in The Ravaged Caravan
    .accept 764 >> Accept The Venture Co
    .accept 765 >> Accept Supervisor Fizsprocket
	.unitscan Morin Cloudstalker
step
    #completewith AlphaTeeth
    >>Kill |cRXP_ENEMY_Flatland Prowlers|r. Loot them for their |cRXP_LOOT_Claws|r
    .complete 861,1 --Flatland Prowler Claw (4)
    .mob Flatland Prowler
step << Hunter
    #completewith next
    .cast 1515 >>Tame a |cRXP_ENEMY_Prairie Wolf Alpha|r
    >>|cRXP_WARN_This will allow you to train|r |T132278:0|t[Bite Rank 2]
    .mob Prairie Wolf Alpha
step << Tauren
    #label AlphaTeeth
    #loop
    .goto 1412/1,-1360.3,-2568.01,0
    .goto 1412/1,-1403.97,-2457.38,50,0
    .goto 1412/1,-1360.3,-2568.01,50,0
    .goto 1412/1,-1232.89,-2544.03,50,0
    .goto 1412/1,-1127.57,-2516.98,50,0
    .goto 1412/1,-1117.3,-2373.13,50,0
    .goto 1412/1,-1218.51,-2345.38,50,0
    .goto 1412/1,-1320.23,-2306.34,50,0
    .goto 1412/1,-1426.06,-2295.72,50,0
    >>Kill |cRXP_ENEMY_Prairie Wolf Alphas|r in the area. Loot them for their |cRXP_LOOT_Teeth|r
    .complete 759,1 --Prairie Alpha Tooth (8)
    .mob Prairie Wolf Alpha
step << Tauren
    #softcore
	#completewith Thunderhorn2
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << Tauren
    #hardcore
    #completewith Thunderhorn2
    .goto 1412/1,-341.02,-2173.79,150 >> Travel back to Bloodhoof Village
    .subzoneskip 222
step << Tauren
    #label Thunderhorn2
    .goto 1412/1,-445.31,-2341.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull|r
    .turnin 759 >>Turn in Wildmane Totem
    .accept 760 >>Accept Wildmane Cleansing
    .target Mull Thunderhorn
step
    #completewith CampTFP
    .goto 1412/1,-1527.78,-2341.62,100,0
    .zone The Barrens >> Travel to The Barrens
step << !Druid
    .goto 1413/1,-1881.35,-2383.82
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Get the Camp Taurajo flight path
	.target Omusa Thunderhorn
    .isQuestAvailable 848
step << Druid
    .goto 1413/1,-1881.35,-2383.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Get the Camp Taurajo flight path
    .fly Thunder Bluff >>Fly to Thunder Bluff
    .target Omusa Thunderhorn
    .isQuestAvailable 848
step
    #optional
    #label CampTFP
step << Druid
    .goto 1456/1,38.32,-1300.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Pala|r
    .home >>Set your Hearthstone to Thunder Bluff
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 5932
step << Druid
    .goto 1456/1,-298.5,-1049.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hamuul Runetotem|r
    .accept 886 >>Accept The Barrens Oases
    .target Arch Druid Hamuul Runetotem
step << Druid
    #completewith next
    .goto 1456/1,-230.66,-1059.79,80 >>Travel to the Elder Rise
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
    .goto 1456/1,-283.89,-1039.96
    .turnin 5928 >>Turn in Heeding the Call
    .accept 5922 >>Accept Moonglade
    .target Arch Druid Hamuul Runetotem
    .target Turak Runetotem
    .isOnQuest 5928
step << Druid
    .goto 1456/1,-283.89,-1039.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
    .accept 5922 >>Accept Moonglade
    .target Arch Druid Hamuul Runetotem
    .target Turak Runetotem
step << Druid
    #completewith next
    .cast 18960 >>|cRXP_WARN_Cast |r|T135758:0|t[Teleport: Moonglade]
    .zoneskip Moonglade
step << Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite|r
    .turnin 5922 >>Turn in Moonglade
    .accept 5930 >>Accept Great Bear Spirit
    .target Dendrite Starblaze
step << Druid
    .goto 1450/1,-2286.12,8068.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Great Bear Spirit|r
    .complete 5930,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear. (1)
    .target Great Bear Spirit
    .skipgossip
step << Druid
    #completewith next
    .cast 18960 >>|cRXP_WARN_Cast|r |T135758:0|t[Teleport: Moonglade]
step << Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite|r
    .turnin 5930 >>Turn in Great Bear Spirit
    .accept 5932 >>Accept Back to Thunder Bluff
    .target Dendrite Starblaze
step << Druid
    #completewith DruidBearForm
    .hs >> Hearth to Thunder Bluff
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .cooldown item,6948,>0
    .use 6948
step << Druid
    #completewith next
    .goto 1450/1,-2403.61,7785.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >> Fly to Thunder Bluff
    .target Bunthen Plainswind
    .zoneskip Thunder Bluff
    .cooldown item,6948,<0
step << Druid
    #label DruidBearForm
    .goto 1456/1,-283.89,-1039.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
    .turnin 5932 >>Turn in Back to Thunder Bluff
    .accept 6002 >>Accept Body and Heart
    .target Turak Runetotem
step << Druid
    #completewith next
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Fly to Camp Taurajo
    .target Tal
    .zoneskip The Barrens
step << Druid
    .goto 1413/1,-1633.08,-2499.35
    .use 15710 >>|cRXP_WARN_Use|r |T132857:0|t[Cenarion Lunardust] |cRXP_WARN_at the|r |cRXP_PICK_Moonkin Stone|r
    >>Kill |cRXP_ENEMY_Lunaclaw|r as he spawns. Talk to the |cRXP_FRIENDLY_Lunaclaw Spirit|r afterwards
    >>|cRXP_WARN_Be careful! |cRXP_ENEMY_Lunaclaw|r casts|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
    >>|cRXP_WARN_Steer clear of the|r |cRXP_ENEMY_Thunderheads|r |cRXP_WARN_in the area|r
    .complete 6002,1 --Face Lunaclaw and earn the strength of body and heart it possesses. (1)
    .mob Lunaclaw
    .target Lunaclaw Spirit
    .skipgossip
step << Tauren
    .goto 1413/1,-1926.95,-2346.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirge Sternhorn|r
    .accept 854 >>Accept Journey to the Crossroads
    .target Kirge Sternhorn
step
    #completewith next
    .subzone 380 >>Travel north toward The Crossroads
step
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .turnin 886 >>Turn in The Barrens Oases << Druid
    .accept 870 >>Accept The Forgotten Pools
    .target Tonga Runetotem
step << Tauren
    .goto 1413/1,-2595.75,-468.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r
    .turnin 854 >>Turn in Journey to the Crossroads
    .target Thork
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    .accept 848 >>Accept Fungal Spores
    .target Apothecary Helbrim
step
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fp The Crossroads >> Get the The Crossroads flight path
    .target Devrak
    .isQuestAvailable 848
step
    .goto 1413/1,-2566.36,-350.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jahan|r
    .accept 6361 >>Accept A Bundle of Hides
    .target Jahan Hawkwing
step
    #completewith next
    >>Collect |cRXP_LOOT_Laden Mushrooms|r around The Forgotten Pools
    >>|cRXP_WARN_Keep maximum distance from |cRXP_ENEMY_Kolkar|r |cRXP_WARN_as you loot the mushrooms. They are level 12-14|r
    >>|cRXP_WARN_The follow-up of this quest has the powerful |cRXP_FRIENDLY_Cauldron Stirrer|r |cRXP_WARN_as a reward. You can skip this quest for now if you do not intend to use it|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    .goto 1413/1,-1943.16,89.64
    >>Dive underwater to the |cRXP_PICK_Bubbling Fissure|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #loop
    .goto 1413/1,-1957.35,38.29,0
    .goto 1413/1,-1957.35,38.29,40,0
    .goto 1413/1,-1957.35,126.12,40,0
    .goto 1413/1,-1896.55,92.34,40,0
    .goto 1413/1,-1825.62,-36.03,40,0
    >>Collect |cRXP_LOOT_Laden Mushrooms|r around The Forgotten Pools
    >>|cRXP_WARN_Keep maximum distance from |cRXP_ENEMY_Kolkar|r |cRXP_WARN_in the area. They are level 12-14|r
    >>|cRXP_WARN_The follow-up of this quest has the powerful |cRXP_FRIENDLY_Cauldron Stirrer|r |cRXP_WARN_as a reward. You can skip this quest for now if you do not intend to use it|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #softcore
	#completewith ZamahPickup
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    #hardcore
    #completewith ZamahPickup
    .subzone 380 >> Travel back to the Crossroads
step
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>Turn in The Forgotten Pools
    .accept 877 >>Accept The Stagnant Oasis
    .target Tonga Runetotem
    .isQuestComplete 870
step
    #optional
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .accept 877 >>Accept The Stagnant Oasis
    .target Tonga Runetotem
    .isQuestTurnedIn 877
step
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Boorand|r
    .home >>Set your Hearthstone to Crossroads
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .isQuestAvailable 853
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_WARN_Wait for the RP to finish|r
    >>|cRXP_WARN_This starts a 45-minute timed quest|r
    .turnin 848 >>Turn in Fungal Spores
    .timer 7,Fungal Spores RP
    .accept 853 >>Accept Apothecary Zamah
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #optional
    #label ZamahPickup
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_WARN_This starts a 45-minute timed quest|r
    .accept 853 >>Accept Apothecary Zamah
    .target Apothecary Helbrim
    .isQuestTurnedIn 848
step
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .turnin 6361 >>Turn in A Bundle of Hides
    .accept 6362 >>Accept Ride to Thunder Bluff
    .target Devrak
step
    #completewith RideToTB
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >>Fly to Thunder Bluff
    .target Devrak
    .zoneskip Thunder Bluff
step
    #sticky
    #completewith CauldronStirrer
    +|cRXP_WARN_You are on a timed quest, don't go afk. It will get turned in around 5-10 minutes after pick-up|r
    .isOnQuest 853
step
    #label RideToTB
    .goto 1456/1,40.72,-1238.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Turn in Ride to Thunder Bluff
    .accept 6363 >>Accept Tal the Wind Rider Master
    .target Ahanu
step << Hunter
    .goto 1456/1,-123.15,-1412.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor|r
    .turnin 861 >>Turn in The Hunter's Way
    .accept 860 >>Accept Sergra Darkthorn
    .target Melor Stonehoof
    .isQuestComplete 861
step << Hunter
    .goto 1456/1,-123.15,-1412.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor|r
    .accept 860 >>Accept Sergra Darkthorn
    .target Melor Stonehoof
    .isQuestTurnedIn 861
step << Hunter
	.goto 1456/1,-82.45,-1472.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holt|r
	.turnin 6089 >> Turn in Training the Beast
    .target Holt Thunderhorn
step << Hunter
    .goto 1456/1,-47.79,-1434.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hesuwa|r
    .train 24547 >>Train your pet spells
    .target Hesuwa Thunderhorn
step << Hunter
    #completewith CauldronStirrer
    +|cRXP_WARN_Drag|r |T132162:0|t[Beast Training] |cRXP_WARN_onto your Action Bars. Teach skills to your pet|r
step << Druid
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Train Two-Handed Maces
    .target Ansekhwa
    .money <0.1154
step << Warrior/Hunter
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Train Staves
    .target Ansekhwa
step
    .goto 1456/1,122.13,-1263.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eyahn|r
    .accept 744 >>Accept Preparation for Ceremony
    .target Eyahn Eagletalon
step << Shaman
    #season 2
    .goto 1456/1,104.91,-1308.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    >>|cRXP_WARN_He is|r |T132320:0|t[Stealthed]
    .accept 76156 >>Accept Stalk With The Earthmother
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    #completewith next
    .goto 1456/1,222.96,-1079.42,40,0
    .goto 1456/1,219.09,-1051.44,10 >> Travel to the Spirit Rise and enter the pools of vision
step
    #label CauldronStirrer
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >>Turn in Apothecary Zamah
    .target Apothecary Zamah
    .isOnQuest 853
step
    #optional
    #completewith ReturntoJahan
    +|cRXP_WARN_Equip the|r |T135145:0|t[Cauldron Stirrer]
    .use 5340
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
    .itemcount 5340,1
step << Warrior
    #season 2
    #completewith next
    .goto 1456/1,216.80,-975.25,-1
    .goto 1456/1,243.31,-979.77,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Netali|r and |cRXP_FRIENDLY_Mooart|r on the Spirit Rise
    +Kill |cRXP_FRIENDLY_Mooart|r when he becomes hostile
    .target Netali Proudwind
    .target Mooart
    .skipgossip
    --Gossipoption
step << Warrior
    #season 2
    .goto 1456/1,216.80,-975.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Netali|r
    >>Receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r] from her
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r]
    .use 204716
    .itemcount 204716,1
step
    #label ReturntoJahan
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Turn in Tal the Wind Rider Master
    .accept 6364 >>Accept Return to Jahan
    .target Tal
step
    .goto 1456/1,-109.58,-1209.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cairne|r
    .turnin 775 >>Turn in Journey into Thunder Bluff
    .accept 776 >>Accept Rites of the Earthmother
    .target Cairne Bloodhoof
step << Druid
    #completewith next
    .goto 1456/1,-230.66,-1059.79,80 >>Travel to the Elder Rise
step << Druid
    .goto 1456/1,-281.56,-1039.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
    .turnin 6002 >>Turn in Body and Heart
    .target Turak Runetotem
step
    #ah
    .goto 1456/1,52.93,-1150.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mooranta|r
    >>|cRXP_WARN_This will unlock an easy quest. If you already have 2 professions, skip this step|r
    .train 8613 >>Train |T134366:0|t[Skinning]
    .target Mooranta
step
    #ah
    .goto 1456/1,53.35,-1161.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veren|r
    .accept 768 >> Accept Gathering Leather
    .target Veren Tallstrider
    .skill skinning,<1,1
step
    #ah
    .goto 1456/1,95.1,-1210.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Stampi|r
    >>|cRXP_BUY_Buy Twelve|r |T134252:0|t[Light Leather] |cRXP_BUY_from the Auction House|r
    .collect 2318,12,768,1 --Light Leather (12)
    .target Auctioneer Stampi
    .skill skinning,<1,1
step
    #ah
    .goto 1456/1,53.35,-1161.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veren|r
    .turnin 768 >> Turn in Gathering Leather
    .target Veren Tallstrider
    .skill skinning,<1,1
step << Hunter
    .goto 1456/1,-29.42,-1182.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaga|r
    >>|cRXP_BUY_Buy|r |T133972:0|t[Tough Jerky] |cRXP_BUY_from her to feed your pet|r
    .collect 117,5,744,1 --Tough Jerky (5)
    .target Kaga Mistrunner
step << Shaman
    #season 2
    #loop
    #completewith VentureCoKills
    >>Open the |cRXP_PICK_Blasting Supplies|r inside the mine and outside on the other side. Loot them for the |cRXP_LOOT_Seaforium Mining Charges|r
    >>|cRXP_WARN_Stay on the upper levels of the cave if possible|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
	#era/som
    #completewith Fizsprocket1
    .goto 1412/1,-1112.16,-1892.6,20 >> Travel to The Venture Co. Mine
step << Shaman
    #season 2
    #completewith next
    >>Kill |cRXP_ENEMY_Venture Co. Workers|r and |cRXP_ENEMY_Venture Co. Supervisors|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step << Shaman
    #season 2
    #label Fizsprocket1
    .goto 1412/1,-1288.89,-1756.97
    >>Kill |cRXP_ENEMY_Supervisor Fizsprocket|r. Loot him for his |cRXP_LOOT_Clipboard|r
    >>|cRXP_WARN_Run into the mine and hug the right/east side to reach him|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Supervisor Fizsprocket
step << Shaman
    #season 2
    #label VentureCoKills
    #loop
	.goto 1412/1,-1103.94,-1901.5,0
	.goto 1412/1,-1103.94,-1901.5,25,0
	.goto 1412/1,-1039.72,-1911.44,25,0
	.goto 1412/1,-1008.9,-1924.11,25,0
	.goto 1412/1,-1018.14,-1946.03,25,0
	.goto 1412/1,-1041.78,-1955.96,25,0
	.goto 1412/1,-1137.85,-1942.26,25,0
	.goto 1412/1,-1131.68,-1911.44,25,0
    >>Kill |cRXP_ENEMY_Venture Co. Workers|r and |cRXP_ENEMY_Venture Co. Supervisors|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step << Shaman
    #season 2
    #loop
    .goto 1412/1,-1228.27,-1778.89,15,0
    .goto 1412/1,-1178.95,-1739.16,15,0
    .goto 1412/1,-1054.11,-1738.13,15,0
    .goto 1412/1,-1118.84,-1688.47,15,0
    .goto 1412/1,-1214.91,-1618.60,15,0
    .goto 1412/1,-1208.74,-1670.320,15,0
--  .goto Mulgore,66.53,39.47,15,0 --Very deep inside the top of the mine, skipping
    .goto 1412/1,-1085.44,-1540.17,15,0
    .goto 1412/1,-1016.09,-1507.63,15,0 --Outside
    .goto 1412/1,-1122.95,-1476.80,15,0 --Outside
    >>Open the |cRXP_PICK_Blasting Supplies|r inside the mine and outside on the other side. Loot them for the |cRXP_LOOT_Seaforium Mining Charges|r
    >>|cRXP_WARN_Stay on the upper levels of the cave if possible|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #completewith next
    .zone Thunder Bluff >> Travel to Thunder Bluff
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto 1456/1,104.91,-1308.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    >>|cRXP_WARN_He is|r |T132320:0|t[Stealthed]
    .turnin 76156 >>Turn in Stalk With The Earthmother
    .accept 76160 >>Accept Stalk With The Earthmother
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    #sticky
    #completewith ThunderBluff
    >>Keep an eye out for |cRXP_ENEMY_Ghost Howl|r. Loot him for his |T134358:0|t[|cRXP_LOOT_Demon Scarred Cloak|r]. Use it to start the quest
    >>|cRXP_WARN_Skip this step if you're unable to find him|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .accept 770 >>Accept The Demon Scarred Cloak
    .use 4854
    .unitscan Ghost Howl
step << Druid
    #season 2
    #completewith ProwlerClaws
    >>Kill |cRXP_ENEMY_Flatland Prowlers|r and |cRXP_ENEMY_Prairie Wolf Alphas|r. Loot them for |T134903:0|t[|cRXP_FRIENDLY_Idol of Ursine Rage|r]
    .collect 206954,1 --Idol of Ursine Rage (1)
    .mob Flatland Prowler
    .mob Prairie Wolf Alpha
    .train 410025,1
step
    #completewith Arrachea
    >>Kill |cRXP_ENEMY_Flatland Prowlers|r. Loot them for their |cRXP_LOOT_Claws|r
    .complete 861,1 --Flatland Prowler Claw (4)
    .mob Flatland Prowler
step << Shaman
    #season 2
    #completewith next
    >>Kill |cRXP_ENEMY_Windfury Sorceresses|r. Loot them for their |cRXP_LOOT_Azure Feathers|r
    >>Kill |cRXP_ENEMY_Windfury Matriarchs|r. Loot them for their |cRXP_LOOT_Bronze Feathers|r
    .complete 744,1 --Azure Feather (6)
    .mob +Windfury Sorceress
    .complete 744,2 --Bronze Feather (6)
    .mob +Windfury Matriarch
    .train 410104,1
step << Shaman
    #season 2
    #loop
    .goto 1412/1,137.79,-696.25,0
    .goto 1412/1,54.57,-821.94,10,0
    .goto 1412/1,106.46,-644.87,10,0
    .goto 1412/1,95.15,-622.61,10,0
    .goto 1412/1,67.41,-550.340,10,0
    .goto 1412/1,92.58,-528.76,10,0
    .goto 1412/1,128.55,-615.07,10,0
    .goto 1412/1,131.12,-629.46,10,0
    .goto 1412/1,208.69,-656.86,10,0
    .goto 1412/1,188.14,-663.71,10,0
    .goto 1412/1,187.63,-704.470,10,0
    .goto 1412/1,170.16,-712.69,10,0
    .goto 1412/1,165.02,-727.07,10,0
    .goto 1412/1,137.79,-696.25,10,0
    >>Loot |cRXP_LOOT_Windfury Cones|r on the ground
    .collect 206170,8,76160,1 --Windfury Cone (8)
    .train 410104,1
step
    #loop
    .goto 1412/1,419.33,-1238.77,0
    .goto 1412/1,496.39,-940.79,0
    .goto 1412/1,419.33,-1238.77,40,0
    .goto 1412/1,496.39,-940.79,40,0
    >>Kill |cRXP_ENEMY_Windfury Sorceresses|r. Loot them for their |cRXP_LOOT_Azure Feathers|r
    >>Kill |cRXP_ENEMY_Windfury Matriarchs|r. Loot them for their |cRXP_LOOT_Bronze Feathers|r
    .complete 744,1 --Azure Feather (6)
    .mob +Windfury Sorceress
    .complete 744,2 --Bronze Feather (6)
    .mob +Windfury Matriarch
step << Tauren
    .goto 1412/1,-135.52,-745.57
    .use 5416 >>|cRXP_WARN_Use the|r |T135139:0|t[Wildmane Cleansing Totem] |cRXP_WARN_at the Well|r
    .complete 760,1 --Cleanse the Wildmane Well (1)
step << Warrior/Hunter
    #season 2
    #loop
    .goto 1412/1,-654.41,-690.77,0
    .goto 1412/1,-654.41,-690.77,90,0
    .goto 1412/1,-448.91,-824.34,90,0
    .goto 1412/1,-613.31,-1430.57,90,0
    .goto 1412/1,-839.36,-1399.74,90,0
    >>Kill |cRXP_ENEMY_Arra'Chea|r (Big black kodo). Kill and loot him for his |cRXP_LOOT_Horn|r << !Warrior !Hunter
    >>Kill |cRXP_ENEMY_Arra'Chea|r (Big black kodo). Kill and loot him for his |cRXP_LOOT_Horn|r and |T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r] << Warrior
    >>Kill |cRXP_ENEMY_Arra'Chea|r (Big black kodo). Kill and loot him for his |cRXP_LOOT_Horn|r and |T134419:0|t[|cRXP_FRIENDLY_Rune of Explosive Shot|r] << Hunter
    >>|cRXP_WARN_He patrols clockwise around Northern Mulgore|r
    .complete 776,1 --Horn of Arra'chea (1)
    .collect 204809,1 << Warrior --Rune of Furious Thunder(1)
    .collect 206169,1 << Hunter --Rune of Explosive Shot (1)
    .unitscan Arra'chea
    .train 403476,1 << Warrior
    .train 410123,1 << Hunter
    --VV .line
step << Warrior
    #season 2
    .train 403476 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Furious Thunder|r]
    .use 204809
    .itemcount 204809,1
step << Hunter
    #season 2
    .train 410123 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Explosive Shot|r]
    .use 206169
    .itemcount 206169,1
step
    #label Arrachea
    #loop
    .goto 1412/1,-654.41,-690.77,0
    .goto 1412/1,-654.41,-690.77,90,0
    .goto 1412/1,-448.91,-824.34,90,0
    .goto 1412/1,-613.31,-1430.57,90,0
    .goto 1412/1,-839.36,-1399.74,90,0
    >>Kill |cRXP_ENEMY_Arra'Chea|r (Big black kodo). Kill and loot him for his |cRXP_LOOT_Horn|r
    >>|cRXP_WARN_He patrols clockwise around Northern Mulgore|r
    .complete 776,1 --Horn of Arra'chea (1)
    .unitscan Arra'chea
    --VV .line
step
    #label ProwlerClaws
    #loop
    .goto 1412/1,-201.28,-648.30,0
    .goto 1412/1,-201.28,-648.30,90,0
    .goto 1412/1,12.44,-730.15,90,0
    .goto 1412/1,140.88,-849.69,90,0
    .goto 1412/1,-241.87,-868.52,90,0
    .goto 1412/1,-454.05,-987.03,90,0
    >>Kill |cRXP_ENEMY_Flatland Prowlers|r. Loot them for their |cRXP_LOOT_Claws|r
    .complete 861,1 --Flatland Prowler Claw (4)
    .mob Flatland Prowler
step << Druid
    #season 2
    #loop
    .goto 1412/1,-201.28,-648.30,0
    .goto 1412/1,-201.28,-648.30,90,0
    .goto 1412/1,12.44,-730.15,90,0
    .goto 1412/1,140.88,-849.69,90,0
    .goto 1412/1,-241.87,-868.52,90,0
    .goto 1412/1,-454.05,-987.03,90,0
    >>Kill |cRXP_ENEMY_Flatland Prowlers|r and |cRXP_ENEMY_Prairie Wolf Alphas|r. Loot them for |T134903:0|t[|cRXP_FRIENDLY_Idol of Ursine Rage|r]
    .collect 206954,1 --Idol of Ursine Rage (1)
    .mob Flatland Prowler
    .mob Prairie Wolf Alpha
    .train 410025,1
step << Druid
    #season 2
    .equip 18,206954 >> |cRXP_WARN_Equip the|r |T134903:0|t[|cRXP_FRIENDLY_Idol of Ursine Rage|r]
    .use 206954
    .train 410025,1
step << Druid
    #season 2
    #completewith next
    +|cRXP_WARN_Maintain 50+ rage for at least 60 seconds to be able to learn|r |T132135:0|t[Mangle]
step << Druid
    #season 2
    .train 410025 >> |cRXP_WARN_Use the|r |T134903:0|t[|cRXP_FRIENDLY_Idol of Ursine Rage|r] |cRXP_WARN_to train|r |T132135:0|t[Mangle]
    .use 206954
    .itemcount 206954,1
step
    #completewith next
    .zone Thunder Bluff >> Travel back to Thunder Bluff
step
    #label RFCPickups1
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rahauro|r
    .accept 5722 >> Accept Searching for the Lost Satchel
    .accept 5723 >> Accept Testing an Enemy's Strength
    .target Rahauro
    .dungeon RFC
step
    .goto 1456/1,-109.58,-1209.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cairne|r
    .turnin 776 >>Turn in Rites of the Earthmother
    .target Cairne Bloodhoof
    .isQuestComplete 776
step
    .goto 1456/1,122.13,-1263.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eyahn|r
    .turnin 744 >>Turn in Preparation for Ceremony
    .target Eyahn Eagletalon
step << Shaman
    #season 2
    .goto 1456/1,104.91,-1308.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    >>|cRXP_WARN_He is|r |T132320:0|t[Stealthed]
    .turnin 76160 >>Turn in Stalk With The Earthmother
    .accept 76240 >>Accept Stalk With The Earthmother
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ah
    .goto 1456/1,44.58,-1263.320,0
    .goto 1456/1,94.89,-1210.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Stampi|r
    >>|cRXP_BUY_Buy a|r |T133894:0|t[Raw Brilliant Smallfish] |cRXP_BUY_from the Auction House|r
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .target Auctioneer Stampi
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #completewith Sewa
    .goto 1456/1,35.18,-1208.98,12,0
    .goto 1456/1,25.16,-1198.40,4,0
    .goto 1456/1,31.43,-1192.07,4,0
    .goto 1456/1,36.02,-1196.11,4,0
    .goto 1456/1,32.99,-1201.400,4,0
    .goto 1456/1,-65.54,-1177.18,15 >>Travel toward |cRXP_FRIENDLY_Sewa Mistrunner|r
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #sticky
    #label Kah
    .goto 1456/1,-69.19,-1172.80,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kah Mistrunner|r
    .train 7734 >>Train |T136245:0|t[Fishing]
    .target Kah Mistrunner
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #label Sewa
    .goto 1456/1,-65.54,-1177.18,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sewa Mistrunner|r
    >>|cRXP_BUY_Buy a|r |T132932:0|t[Fishing Pole] |cRXP_BUY_and|r |T134335:0|t[Shiny Bauble] |cRXP_BUY_from her|r
    .collect 6256,1 --Fishing Pole (1)
    .collect 6529,1 --Shiny Bauble (1)
    .target Sewa Mistrunner
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #completewith Fish
    #requires Kah
    #label Pole
    .equip 16,6256 >> |cRXP_WARN_Equip the|r |T132932:0|t[Fishing Pole]
    .use 6256
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #completewith Fish
    #requires Pole
    .aura 8087 >> |cRXP_WARN_Attach the|r |T134335:0|t[Shiny Bauble] |cRXP_WARN_to your|r |T132932:0|t[Fishing Pole]
    .use 6529
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #label Fish
    #requires Kah
    .goto 1456/1,94.78,-1257.41
    >>Fish in the pond until you get a |T133894:0|t[|cRXP_LOOT_Raw Brilliant Smallfish|r]
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    >>Use the |T132147:0|t[Knife Set] to create |T134007:0|t[Fish Chunks]
    .complete 76240,1 --Fish Chunks (1)
    .use 206344
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto 1456/1,104.91,-1308.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    >>|cRXP_WARN_He is|r |T132320:0|t[Stealthed]
    .turnin 76240 >>Turn in Stalk With The Earthmother
-- .train 410104 >>|cRXP_WARN_You will train|r |T236289:0|t[Lava Lash] |cRXP_WARN_and|r |T132147:0|t[Dual Wield] |cRXP_WARN_upon turnin|r
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step
    .goto 1456/1,-123.15,-1412.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor|r
    .turnin 861 >>Turn in The Hunter's Way
    .accept 860 >>Accept Sergra Darkthorn
    .target Melor Stonehoof
step
    #completewith WildManeTurnIn
    .subzone 222 >>Travel to Bloodhoof Village
step
    .goto 1412/1,-353.86,-2336.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skorn|r
    .turnin 770 >>Turn in The Demon Scarred Cloak
    .target Skorn Whitecloud
    .isOnQuest 770
step << Tauren
    .goto 1412/1,-445.31,-2341.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull|r
    .turnin 760 >>Turn in Wildmane Cleansing
    .target Mull Thunderhorn
step << Shaman
    .goto 1412/1,-437.61,-2298.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm|r
    .train 547 >> Train your class spells
    .target Narm Skychaser
    .xp <12,1
step << Druid
    .goto 1412/1,-442.74,-2315.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gennia|r
    .train 8936 >>Train your class spells
    .target Gennia Runetotem
    .xp <12,1
step << Warrior
    .goto 1412/1,-496.17,-2347.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krang|r
    .train 7384 >> Train your class spells
    .target Krang Stonehoof
    .xp <12,1
step << Hunter
    .goto 1412/1,-408.32,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .train 14281 >> Train your class spells
    .target Yaw Sharpmane
    .xp <12,1
step
    #optional
    #label WildManeTurnIn
step
    #completewith Fizsprocket
    .goto 1412/1,-1112.16,-1892.6,20 >> Travel to The Venture Co. Mine
step
    #completewith next
    >>Kill |cRXP_ENEMY_Venture Co. Workers|r and |cRXP_ENEMY_Venture Co. Supervisors|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step
    #label Fizsprocket
    .goto 1412/1,-1288.89,-1756.97
    >>Kill |cRXP_ENEMY_Supervisor Fizsprocket|r. Loot him for his |cRXP_LOOT_Clipboard|r
    >>|cRXP_WARN_Run into the mine and hug the right/east side to reach him|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Supervisor Fizsprocket
step
    #loop
	.goto 1412/1,-1103.94,-1901.5,0
	.goto 1412/1,-1103.94,-1901.5,25,0
	.goto 1412/1,-1039.72,-1911.44,25,0
	.goto 1412/1,-1008.9,-1924.11,25,0
	.goto 1412/1,-1018.14,-1946.03,25,0
	.goto 1412/1,-1041.78,-1955.96,25,0
	.goto 1412/1,-1137.85,-1942.26,25,0
	.goto 1412/1,-1131.68,-1911.44,25,0
    >>Kill |cRXP_ENEMY_Venture Co. Workers|r and |cRXP_ENEMY_Venture Co. Supervisors|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step
    #xprate <1.5
    #loop
	.goto 1412/1,-1103.94,-1901.5,25,0
	.goto 1412/1,-1039.72,-1911.44,25,0
	.goto 1412/1,-1008.9,-1924.11,25,0
	.goto 1412/1,-1018.14,-1946.03,25,0
	.goto 1412/1,-1041.78,-1955.96,25,0
	.goto 1412/1,-1137.85,-1942.26,25,0
	.goto 1412/1,-1131.68,-1911.44,25,0
    .xp 11+7150 >> Grind to 7150+/8700xp
step
    #xprate >1.49
    #loop
	.goto 1412/1,-1103.94,-1901.5,25,0
	.goto 1412/1,-1039.72,-1911.44,25,0
	.goto 1412/1,-1008.9,-1924.11,25,0
	.goto 1412/1,-1018.14,-1946.03,25,0
	.goto 1412/1,-1041.78,-1955.96,25,0
	.goto 1412/1,-1137.85,-1942.26,25,0
	.goto 1412/1,-1131.68,-1911.44,25,0
    .xp 11+6375 >> Grind to 6375+/8700xp
step
    #loop
    .goto 1412/1,-784.9,-2350.18,0
    .goto 1412/1,-597.9,-2301.54,50,0
    .goto 1412/1,-674.96,-2336.14,50,0
    .goto 1412/1,-784.9,-2350.18,50,0
    .goto 1412/1,-904.6,-2371.07,50,0
    .goto 1412/1,-1016.6,-2410.12,50,0
    .goto 1412/1,-784.9,-2350.18,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_He patrols along the eastern road|r
    .turnin 764 >>Turn in The Venture Co.
    .turnin 765 >>Turn in Supervisor Fizsprocket
	.unitscan Morin Cloudstalker
step << Shaman
    .goto 1412/1,-437.61,-2298.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm|r
    .train 547 >> Train your class spells
    .target Narm Skychaser
    .xp <12,1
step << Druid
    .goto 1412/1,-442.74,-2315.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gennia|r
    .train 8936 >>Train your class spells
    .target Gennia Runetotem
    .xp <12,1
step << Warrior
    .goto 1412/1,-496.17,-2347.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krang|r
    .train 5242 >> Train your class spells
    .target Krang Stonehoof
    .xp <12,1
step << Hunter
    .goto 1412/1,-408.32,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .train 14281 >> Train your class spells
    .target Yaw Sharpmane
    .xp <12,1
step
    #completewith HidesTurnIn
    .hs >> Hearth to The Crossroads
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
    .cooldown item,6948,>0
step
    #completewith next
    .subzone 378 >> Travel to Camp Taurajo
    .cooldown item,6948,<0,1
step
    .goto 1413/1,-1881.35,-2383.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fly Crossroads >>Fly to The Crossroads
    .target Omusa Thunderhorn
    .cooldown item,6948,<0,1
step
    #label HidesTurnIn
    .goto 1413/1,-2566.36,-350.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jahan|r
    .turnin 6364 >>Turn in Return to Jahan
    .target Jahan Hawkwing
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Accept Wharfmaster Dizzywig
    .target Apothecary Helbrim
step
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Accept Disrupt the Attacks
    .accept 5041 >>Accept Supplies for the Crossroads
    .target Thork
step
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_He is at the top of the tower|r
    .accept 867 >>Accept Harpy Raiders
    .target Darsok Swiftdagger
step
    .goto 1413/1,-2669.72,-481.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .turnin 860 >>Turn in Sergra Darkthorn
    .accept 844 >>Accept Plainstrider Menace
    .target Sergra Darkthorn
step
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Accept Raptor Thieves
    .target Gazrog
step << Shaman
    #completewith next
    >>Check for |cRXP_PICK_Chen's Empty Keg|r next to |cRXP_FRIENDLY_Kranal|r. Loot it and start the quest
    >>|cRXP_WARN_You can get it later if it's not there|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Accept Chen's Empty Keg
    .use 4926
step << Shaman
    .goto 1413/1,-3037.56,264.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kranal|r
    .turnin 2984 >>Turn in Call of Fire
    .accept 1524 >>Accept Call of Fire
    .target Kranal Fiss
step << Shaman
    #completewith next
    .goto 1411/1,-3905.13,-228.41,10,0
    .goto 1411/1,-3899.31,-241.45,8,0
    .goto 1411/1,-3899.31,-241.45,8,0
    .goto 1411/1,-3906.71,-270.71,8,0
    .goto 1411/1,-3910.94,-247.45,8,0
    .goto 1411/1,-3931.56,-240.75,8,0
    .goto 1411/1,-3964.35,-242.51,8,0
    .goto 1411/1,-3974.39,-228.76,8,0
    .goto 1411/1,-4020.92,-219.95,8,0
    .goto 1411/1,-4034.67,-232.64,8,0
    .goto 1411/1,-4033.08,-255.91,10 >> Travel the path up the mountain to |cRXP_FRIENDLY_Telf|r
    >>|cRXP_WARN_Be careful to not fall of the mountain, the path is very narrow. You could die if you fall|r
step << Shaman
    #label CallofFire2
    .goto 1411/1,-3999.24,-268.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Turn in Call of Fire
    .accept 1525 >>Accept Call of Fire
    .target Telf Joolam
step << Warrior
    .goto 1413/1,-3598.95,186.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uzzek|r
    .turnin 1505 >>Turn in Veteran Uzzek
    .accept 1498 >>Accept Path of Defense
    .target Uzzek
step << Warrior
    #loop
    .goto 1411/1,-4042.6,812.52,0
    .goto 1411/1,-4030.44,724.04,40,0
    .goto 1411/1,-4042.6,812.52,40,0
    .goto 1411/1,-4030.44,875.62,40,0
    .goto 1411/1,-4045.25,925.32,40,0
    .goto 1411/1,-4077.5,960.22,40,0
    .goto 1411/1,-4210.22,952.11,40,0
    .goto 1411/1,-4042.6,812.52,40,0
    >>Kill |cRXP_ENEMY_Lightning Hides|r. Loot them for their |cRXP_ENEMY_Scales|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
step << Warrior
    .goto 1413/1,-3598.95,186.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Turn in Path of Defense
    .accept 1502 >>Accept Thun'grim Firegaze
    .target Uzzek

]])


local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end


RXPGuides.RegisterGuide([[
#forever
<< Horde
#xprate >1.99
#version 1
#group RestedXP Forever Guide (H)
#subgroup Speedrun Guide 1-22
--#groupid RXP-SRGCE-H1
#name 1-7 Mulgore
#next 7-13 Mulgore
#defaultfor Tauren


step << !Tauren
    #completewith next
    .goto 1412/1,-259.85,-2914.28
    +|cRXP_WARN_You have selected a guide meant for Tauren. This zone will NOT work well for you due to missing one of the main questlines that are gated for Tauren only. It is recommended you choose the same starter zone that you start in|r
step
    .goto 1412/1,-259.85,-2914.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull|r
    .accept 747 >>Accept The Hunt Begins
    .target Grull Hawkwind
step
    #season 2
    .goto 1412/1,-230.56,-2899.21
    >> |Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Rune Broker|r
    >> |cRXP_WARN_MAKE SURE NOT TO VENDOR GEAR THAT CAN BE EQUIPPED|r
    >> |cRXP_BUY_Sell your|r |T135005:0|t[Shirt] |cRXP_BUY_and one of your|r |T133964:0|t[Hunks of Bread] |cRXP_WARN_(they can be split by shift-clicking)|r |cRXP_BUY_and buy the |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r] and |T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r] from him|r << Warrior
    >> |cRXP_BUY_Sell your|r |T135005:0|t[Shirt] |cRXP_BUY_and one of your|r |T134534:0|t[Mushroom Caps] |cRXP_WARN_(they can be split by shift-clicking)|r |cRXP_BUY_and buy the |T134920:0|t[|cRXP_FRIENDLY_Kajaric Icon|r] |cRXP_BUY_and|r |T134918:0|t[|cRXP_FRIENDLY_Dyadic Icon|r] |cRXP_BUY_from him|r << Shaman
    >> |cRXP_BUY_Sell your|r |T135005:0|t[Shirt] |cRXP_BUY_and|r |T132794:0|t[Water] |cRXP_BUY_and buy the following runes:|r  << Hunter
    >> |cRXP_BUY_Sell your|r |T133975:0|t[Apples] |cRXP_BUY_and buy the following runes:|r << Druid
    >> |cRXP_BUY_Vendor trash and buy all of the following runes:|r << Shaman
    .collect 204716,1 << Warrior --Rune of Frenzied Assault
    .collect 204806,1 << Warrior --Rune of Victory Rush
    .collect 209852,1 << Hunter --Rune of Kill Command
    .collect 206168,1 << Hunter --Rune of the Chimera
    .collect 226401,1 << Hunter --Treatise on the Heart of the Lion
    .collect 216770,1 << Hunter --Treatise on Aspect of the Viper
    .collect 206387,1 << Shaman --Kajaric Icon
    .collect 206381,1 << Shaman --Dyadic Icon
    .collect 208414,1 << Druid --Lunar Idol
    .collect 210500,1 << Druid --Rune of the Stars
    .collect 206989,1 << Druid --Rune of the Sun
    .collect 227749,1 << Druid --Rune of the Falling Star
    >>You will get the rest of your runes very soon
    .target Rune Broker
    .skipgossip
step
    #season 2
    #sticky
    #optional
    .use 204716 << Warrior --Rune of Frenzied Assault
    .use 204806 << Warrior --Rune of Victory Rush
    .use 209852 << Hunter --Rune of Kill Command
    .use 206168 << Hunter --Rune of the Chimera
    .use 226401 << Hunter --Treatise on the Heart of the Lion
    .use 216770 << Hunter --Treatise on Aspect of the Viper
    .use 206387 << Shaman --Kajaric Icon
    .use 208414 << Druid --Lunar Idol
    .use 210500 << Druid --Rune of the Stars
    .use 206989 << Druid --Rune of the Sun
    .use 227749 << Druid --Rune of the Falling Star
    .equip 18 >> Equip the |T134920:0|t[|cRXP_FRIENDLY_Kajaric Icon|r], you can use it after 30 seconds to train |T237582:0|t[Lava Burst] << Shaman
    .equip 18 >> Equip the |T134903:0|t[|cRXP_FRIENDLY_Lunar Idol|r], you can use it after 30 seconds to train |T237472:0|t[Fury of Stormrage] << Druid
    .train 425447 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r] << Warrior
    .train 403470 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Victory Rush|r] to train |T132342:0|t[Victory Rush], you will engrave it soon << Warrior
    .train 410111 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Kill Command|r] to train |T236174:0|t[Kill Shot] << Hunter
    .train 410121 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Chimera|r] to train |T236176:0|t[Chimera Shot] << Hunter
    .train 409580 >> Use the |T133739:0|t[|cRXP_FRIENDLY_Treatise on the Heart of the Lion|r] to train |T132185:0|t[Heart of the Lion] << Hunter
    .train 415423 >> Use the |T133739:0|t[|cRXP_FRIENDLY_Treatise on Aspect of the Viper|r] to train |T132160:0|t[Heart of the Viper] << Hunter
    .train 424718 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Stars|r] to train |T135730:0|t[Starsurge] << Druid
    .train 416044 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Sun|r] to train |T236216:0|t[Sunfire] << Druid
    .train 439770 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of the Falling Star|r] to train |T236168:0|t[Starfall] << Druid
    .engrave 7 >> Engrave |T236174:0|t[Kill Shot] on your pants << Hunter
    .engrave 7 >> Engrave |T236317:0|t[Frenzied Assault] on your pants << Warrior
    .engrave 7 >> Engrave |T135730:0|t[Starsurge] on your pants << Druid
step << Hunter
    #season 2
    #optional
    #sticky
    .aura 409583 >> Remember to activate your |T132185:0|t[Heart of the Lion]
step << Shaman
    #season 2
    #optional
    #label LavaBurst
    #sticky
    .train 410095 >> Use the |T134920:0|t[|cRXP_FRIENDLY_Kajaric Icon|r] from your character panel to train |T237582:0|t[Lava Burst]
step << Druid
    #season 2
    #optional
    #sticky
    .train 410061 >> Use the |T134903:0|t[|cRXP_FRIENDLY_Lunar Idol|r] from your character panel to train |T237472:0|t[Fury of Stormrage]
    .engrave 5 >> Engrave your chest with |T237472:0|t[Fury of Stormrage]
step << Shaman
    #season 2
    #optional
    #requires LavaBurst
    #label Overload
    #sticky
    .equip 18,206381 >> Equip the |T134918:0|t[|cRXP_FRIENDLY_Dyadic Icon|r]
    .train 410094 >> Use it after 30 seconds to train |T136050:0|t[Overload]
    .use 206381
step
    .goto 1412/1,-221.83,-2878.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Hawkwind|r
    .accept 752 >>Accept A Humble Task
    .target Chief Hawkwind
step << Warrior/Shaman
    #season 0
    #completewith next
    .goto 1412/1,-317.9,-2852.63,30,0
    +|cRXP_WARN_Kill |cRXP_ENEMY_Plainstriders|r. Loot them until you have 10 copper worth of vendor items (including your armor)|r << Warrior/Shaman
    .mob Plainstrider
    .money >0.01
step
    #season 2
    .goto 1412/1,-317.9,-2852.63
    .xp 2 >>|cRXP_WARN_Kill 4 |cRXP_ENEMY_Plainstriders|r to reach level 2. Loot them until you have 10 copper worth of vendor items|r << !Shaman !Druid
    .xp 2 >>|cRXP_WARN_Kill 4 |cRXP_ENEMY_Plainstriders|r to reach level 2. Loot them until you have 42 copper worth of vendor items|r << Shaman
    .xp 2 >>|cRXP_WARN_Kill 4 |cRXP_ENEMY_Plainstriders|r to reach level 2. Loot them until you have 20 copper worth of vendor items|r << Druid
    .mob Plainstrider
step << Shaman/Druid
    #season 2
    .goto 1412/1,-333.83,-2872.15,50,0
    #completewith next
    +|cRXP_WARN_Keep killing |cRXP_ENEMY_Plainstriders|r until you have 42 copper worth of vendor items|r << Shaman
    +|cRXP_WARN_Keep killing |cRXP_ENEMY_Plainstriders|r until you have 20 copper worth of vendor items|r << Druid
    .money >0.0042 << Shaman
    .money >0.002 << Druid
step << Druid
    #season 2
    .goto 1412/1,-268.07,-2873.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .accept 77648 >>Accept Relics of the Tauren
    .turnin 77648 >>Turn in Relics of the Tauren
    .target Gart Mistrunner
step << Warrior/Shaman
    #season 0
    .goto 1412/1,-279.37,-2893.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kawnie|r
    .vendor >> Vendor Trash
    .target Kawnie Softbreeze
    .money >0.01
step << Warrior/Shaman
    #season 2
    .goto 1412/1,-279.37,-2893.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kawnie|r
    >>|cRXP_WARN_MAKE SURE NOT TO VENDOR GEAR THAT CAN BE EQUIPPED|r
    .vendor >> Vendor Trash
    .target Kawnie Softbreeze
    .money >0.01
step << Warrior
    #season 0
    .goto 1412/1,-213.61,-2880.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt|r
    .train 6673 >>Train |T132333:0|t[Battle Shout]
    .target Harutt Thunderhorn
step << Warrior
    #season 2
    .goto 1412/1,-213.61,-2880.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt|r
    .train 6673 >>Train |T132333:0|t[Battle Shout]
    .accept 77651 >>Accept Into the Brambles
    .turnin 77651 >>Turn in Into the Brambles
    .target Harutt Thunderhorn
step << Shaman
    #season 0
    .goto 1412/1,-264.47,-2874.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meela|r
    .train 8017 >>Train |T136086:0|t[Rockbiter Weapon]
    .target Meela Dawnstrider
step << Shaman
    #season 2
    .goto 1412/1,-264.47,-2874.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meela|r
    .train 8017 >>Train |T136086:0|t[Rockbiter Weapon]
    .accept 77652 >>Accept Icons of Power
    .turnin 77652 >>Turn in Icons of Power
    .target Meela Dawnstrider
step << Shaman/Druid
    #season 2
    .goto 1412/1,-220.29,-2918.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Varia|r
    >>|cRXP_BUY_Vendor trash|r |cRXP_WARN_MAKE SURE NOT TO VENDOR GEAR THAT CAN BE EQUIPPED|r << Druid
    >>|cRXP_BUY_Buy a pair of|r |T132952:0|t[Dirty Leather Gloves] |cRXP_BUY_to engrave a rune on|r
    .collect 714,1 -- Dirty Leather Gloves
    .target Varia Hardhide
step << Hunter
    #season 2
    .goto 1412/1,-225.94,-2865.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanka|r
    .accept 77649 >>Accept A Hunter's Strength
    .turnin 77649 >>Turn in A Hunter's Strength
    .target Lanka Farshot
step << Warrior/Shaman/Druid
    #season 2
    .equip 10 >> Equip the |T132938:0|t[Tarnished Chain Gloves] << Warrior
    .equip 10 >> Equip the |T132952:0|t[Dirty Leather Gloves] << Shaman/Druid
    .engrave 10 >> Engrave |T132342:0|t[Victory Rush] on your gloves << Warrior
    .equip 5 >> Equip the |T135010:0|t[Cracked Leather Vest] << Shaman
    .engrave 5 >> Engrave |T136050:0|t[Overload] on your chest << Shaman
    .engrave 10 >> Engrave |T237582:0|t[Lava Burst] on your gloves << Shaman
    .engrave 10 >> Engrave |T236216:0|t[Sunfire] on your gloves << Druid
    .use 2127 << Shaman/Druid --Cracked Leather Vest
    .use 2385 << Warrior -- Tarnished Chain Gloves
    .use 714 << Shaman --Dirty Leather Gloves
step << Hunter
    #season 2
    .goto 1412/1,-230.56,-2899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Rune Broker|r
    >>|cRXP_WARN_MAKE SURE NOT TO VENDOR GEAR THAT CAN BE EQUIPPED|r
    .vendor >>|cRXP_BUY_Vendor trash and buy all of the following runes:|r << Hunter
    .collect 210818,1 << Hunter --Rune of Lone Wolf
    .collect 213124,1 << Hunter --Rune of Close Combat
    .collect 226252,1 << Hunter --Rune of the Guerrilla
    >>|cRXP_WARN_You will get the rest of your runes later|r
    .target Rune Broker
    .skipgossip
step << Hunter
    #season 2
    .train 410122 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Lone Wolf|r] to train |T132266:0|t[Lone Wolf] << Hunter
    .train 416086 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Close Combat|r] to train |T132394:0|t[Melee Specialist] << Hunter
    .train 440563 >> Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Guerrilla|r] to train |T132171:0|t[Hit and Run] << Hunter
    .use 210818 << Hunter --Rune of Lone Wolf
    .use 213124 << Hunter --Rune of Close Combat
    .use 226252 << Hunter --Rune of the Guerrilla
step << Hunter
    .equip 10 >> Equip the |T132952:0|t[Cracked Leather Gloves]
    .engrave 10 >> Engrave |T236176:0|t[Chimera Shot] on your gloves
    .use 2125 --Cracked Leather Gloves
step << Hunter
    #sticky
    #optional
    >> |cRXP_WARN_Be on the lookout for any|r Chest/Belt/Cloak |cRXP_WARN_drops|r|cRXP_WARN_. Equip them and engrave the respective runes|r
    .engrave 5 >> Engrave |T132266:0|t[Lone Wolf] on your |T132724:0|t[Chest]
    .engrave 6 >> Engrave |T132394:0|t[Melee Specialist] on your |T132513:0|t[Belt]
    .engrave 15 >> Engrave |T132171:0|t[Hit and Run] on your |T133771:0|t[Cloak]
step << Druid
    #sticky
    #optional
    >> |cRXP_WARN_Be on the lookout for any|r Cloak |cRXP_WARN_drops|r|cRXP_WARN_. Equip it and engrave|r |T236168:0|t[Starfall] |cRXP_WARN_on it|r
    .engrave 15 >> Engrave |T236168:0|t[Starfall] on your |T133771:0|t[Cloak]
step
    #completewith next
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Meat|r and |cRXP_LOOT_Feathers|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob Plainstrider
step
    .goto 1412/1,-522.37,-3052.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Greatmother Hawkwind|r
    .turnin 752 >>Turn in A Humble Task
    .accept 753 >>Accept A Humble Task
    .target Greatmother Hawkwind
step
    .goto 1412/1,-532.14,-3059.84
    >>Loot the |cRXP_LOOT_Water Pitcher|r on the well behind |cRXP_FRIENDLY_Hawkwind|r
    .complete 753,1 --Water Pitcher (1)
step
    #loop
    .goto 1412/1,-385.2,-3117.38,0
    .goto 1412/1,-532.65,-2991.68,50,0
    .goto 1412/1,-573.24,-2967.71,50,0
    .goto 1412/1,-564.5,-2864.96,50,0
    .goto 1412/1,-440.17,-2916.33,50,0
    .goto 1412/1,-371.85,-2894.41,50,0
    .goto 1412/1,-303.52,-3026.27,50,0
    .goto 1412/1,-292.73,-3094.77,50,0
    .goto 1412/1,-385.2,-3117.38,50,0
    >>Kill |cRXP_ENEMY_Plainstriders|r. Loot them for their |cRXP_LOOT_Meat|r and |cRXP_LOOT_Feathers|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob Plainstrider
step
    .goto 1412/1,-259.85,-2914.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull|r
    .turnin 747,1 >>Turn in The Hunt Begins << Druid
    .turnin 747 >>Turn in The Hunt Begins << !Druid
    .accept 3091 >>Accept Simple Note << Warrior
    .accept 3092 >>Accept Etched Note << Hunter
    .accept 3093 >>Accept Rune-Inscribed Note << Shaman
    .accept 3094 >>Accept Verdant Note << Druid
    .accept 750 >>Accept The Hunt Continues
    .target Grull Hawkwind
step
    .goto 1412/1,-279.37,-2893.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kawnie|r
    >>|cRXP_BUY_Buy|r |T132384:0|t[Light Shots] |cRXP_BUY_from her|r << Hunter
    .collect 2516,1000,750,1 << Hunter --Light Shot (1000)
    .vendor >> Vendor Trash
    .target Kawnie Softbreeze
step
    .goto 1412/1,-221.83,-2878.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Chief Hawkwind|r
    .turnin 753 >>Turn in A Humble Task
    .accept 755 >>Accept Rites of the Earthmother
    .target Chief Hawkwind
step << Shaman
    .goto 1412/1,-216.18,-2926.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Marjak|r|cRXP_BUY_. Buy a|r |T135139:0|t[Short Staff] |cRXP_BUY_from him|r
    .collect 2132,1,750,1 --Collect Short Staff (1)
    .money <0.0102
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
    .target Marjak Keenblade
step << Shaman
    #optional
    #completewith RitesoftheEarthmother
    +|cRXP_WARN_Equip the|r |T135139:0|t[Short Staff]
    .use 2132
    .itemcount 2132,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
step
    #completewith next
    >>Kill |cRXP_ENEMY_Mountain Cougars|r. Loot them for their |cRXP_LOOT_Pelts|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob Mountain Cougar
step
    #label RitesoftheEarthmother
    .goto 1412/1,-139.63,-3430.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seer Graytongue|r
    -->>|cRXP_WARN_Grind mobs on the way|r
    .turnin 755 >>Turn in Rites of the Earthmother
    .accept 757 >>Accept Rite of Strength
    .target Seer Graytongue
step
    #loop
    .goto 1412/1,-243.41,-3384.87,0
    .goto 1412/1,-172.0,-3330.07,50,0
    .goto 1412/1,-245.46,-3409.53,50,0
    .goto 1412/1,-306.09,-3373.23,50,0
    .goto 1412/1,-333.31,-3405.08,50,0
    .goto 1412/1,-420.65,-3418.09,50,0
    .goto 1412/1,-482.3,-3379.05,50,0
    .goto 1412/1,-571.18,-3368.09,50,0
    .goto 1412/1,-474.6,-3338.29,50,0
    .goto 1412/1,-369.79,-3308.84,50,0
    .goto 1412/1,-267.04,-3351.65,50,0
    .goto 1412/1,-243.41,-3384.87,50,0
    >>Kill |cRXP_ENEMY_Mountain Cougars|r. Loot them for their |cRXP_LOOT_Pelts|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob Mountain Cougar
step
    #optional
    #loop
	.goto 1412/1,-292.73,-3285.2,40,0
	.goto 1412/1,-362.6,-3281.44,40,0
	.goto 1412/1,-452.5,-3246.84,40,0
	.goto 1412/1,-554.23,-3213.96,40,0
	.goto 1412/1,-572.72,-3139.98,40,0
	.goto 1412/1,-626.67,-3065.32,40,0
	.goto 1412/1,-616.9,-2998.53,40,0
	.goto 1412/1,-606.63,-2923.52,40,0
	.goto 1412/1,-621.01,-2847.15,40,0
	.goto 1412/1,-537.27,-2887.22,40,0
	.goto 1412/1,-461.75,-2869.75,40,0
	.goto 1412/1,-387.77,-2851.94,40,0
	.goto 1412/1,-356.43,-2951.61,40,0
	.goto 1412/1,-307.11,-3026.96,40,0
	.goto 1412/1,-265.5,-3086.55,40,0
	.goto 1412/1,-217.21,-3146.15,40,0
	.goto 1412/1,-207.45,-3221.16,40,0
    .xp 3+850 >> Grind to 850+/1400xp
    .mob Plainstrider
step << Warrior/Druid
    #completewith GrullTurnin2
    +|cRXP_WARN_Grind |cRXP_ENEMY_Plainstriders|r. Loot them until you have 2 silver worth of vendor items|r
    .mob Plainstrider
	.money >0.02
step << !Warrior !Druid
    #completewith next
    +|cRXP_WARN_Grind |cRXP_ENEMY_Plainstriders|r. Loot them until you have 1 silver worth of vendor items|r
    .mob Plainstrider
    .money >0.01
step
    #label GrullTurnin2
    .goto 1412/1,-259.85,-2914.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull|r
    .turnin 750 >>Turn in The Hunt Continues
    .accept 780 >>Accept The Battleboars
    .target Grull Hawkwind
step
    .goto 1412/1,-279.37,-2893.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kawnie|r
    .vendor >> Vendor Trash
    .target Kawnie Softbreeze
step
    .goto 1412/1,-247.0,-2899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brave|r
    .accept 3376 >>Accept Break Sharptusk!
    .target Brave Windfeather
step << Warrior
    #season 2
    .goto 1412/1,-213.61,-2880.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Turn in Simple Note
    .train 100 >> Train |T132337:0|t[Charge]
    .train 772 >> Train |T132155:0|t[Rend]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 2
    .goto 1412/1,-213.61,-2880.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Turn in Simple Note
    .train 772 >> Train |T132155:0|t[Rend]
    .target Harutt Thunderhorn
step << Warrior
    #season 0
    .goto 1412/1,-213.61,-2880.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Turn in Simple Note
    .train 100 >> Train |T132337:0|t[Charge]
    .train 772 >> Train |T132155:0|t[Rend]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 0
    .goto 1412/1,-213.61,-2880.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Turn in Simple Note
    .train 772 >> Train |T132155:0|t[Rend]
    .target Harutt Thunderhorn
step << Hunter
    #season 2
    .goto 1412/1,-225.94,-2865.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanka|r
    .turnin 3092 >>Turn in Etched Note
    .train 1978 >> Train |T132204:0|t[Serpent Sting]
    .target Lanka Farshot
step << Hunter
    #season 0
    .goto 1412/1,-225.94,-2865.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanka|r
    .turnin 3092 >>Turn in Etched Note
    .train 1978 >> Train |T132204:0|t[Serpent Sting]
    .target Lanka Farshot
step << Druid
    #season 2
    .goto 1412/1,-268.58,-2873.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .turnin 3094 >>Turn in Verdant Note
    .train 8921 >> Train |T136096:0|t[Moonfire]
    .target Gart Mistrunner
step << Druid
    #season 0
    .goto 1412/1,-268.58,-2873.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .turnin 3094 >>Turn in Verdant Note
    .train 8921 >> Train |T136096:0|t[Moonfire]
    .target Gart Mistrunner
step << Shaman
    .goto 1412/1,-250.09,-2882.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ravenfeather|r
    .accept 1519 >>Accept Call of Earth
    .target Seer Ravenfeather
step << Shaman
    #season 2
    .goto 1412/1,-264.47,-2874.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meela|r
    .turnin 3093 >>Turn in Rune-Inscribed Note
    .train 8042 >>Train |T136026:0|t[Earth Shock]
    .target Meela Dawnstrider
step << Shaman
    #season 0
    .goto 1412/1,-264.47,-2874.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meela|r
    .turnin 3093 >>Turn in Rune-Inscribed Note
    .train 8042 >>Train |T136026:0|t[Earth Shock]
    .target Meela Dawnstrider
step
    #loop
    .goto 1412/1,-828.57,-3199.92,0
    .goto 1412/1,-659.55,-2989.63,50,0
    .goto 1412/1,-736.09,-3007.09,50,0
    .goto 1412/1,-815.21,-3022.51,50,0
    .goto 1412/1,-853.74,-3070.11,50,0
    .goto 1412/1,-810.07,-3145.12,50,0
    .goto 1412/1,-830.62,-3202.32,50,0
    .goto 1412/1,-818.81,-3276.98,50,0
    .goto 1412/1,-866.07,-3330.41,50,0
    .goto 1412/1,-927.72,-3330.41,50,0
    .goto 1412/1,-915.91,-3244.79,50,0
    .goto 1412/1,-896.38,-3197.52,50,0
    .goto 1412/1,-828.57,-3199.92,50,0
    >>Kill |cRXP_ENEMY_Battleboars|r. Loot them for their |cRXP_LOOT_Flanks|r and |cRXP_LOOT_Snouts|r
    .complete 780,2 --Battleboar Flank (8)
    .complete 780,1 --Battleboar Snout (8)
    .mob Battleboar
step
    #completewith BristlebackBelts
    .goto 1412/1,-1017.63,-3126.97,30 >>Travel through the cave
step
    #completewith DirtyMap
    >>Kill |cRXP_ENEMY_Bristleback Quilboars|r. Loot them for their |cRXP_LOOT_Belts|r
    .complete 757,1 --Bristleback Belt (12)
    .mob Bristleback Quilboar
step << Shaman
    #completewith DirtyMap
    >>Kill |cRXP_ENEMY_Bristleback Shamans|r. Loot them for their |cRXP_LOOT_Salves|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    .goto 1412/1,-1062.33,-3048.54,35,0
    .goto 1412/1,-1155.31,-3056.41,35,0
    .goto 1412/1,-1162.51,-2971.13,35,0
    .goto 1412/1,-1276.56,-2933.11
    >>Kill |cRXP_ENEMY_Chief Sharptusk Thornmantle|r inside the big hut. Loot him for his |cRXP_LOOT_Head|r
    .complete 3376,1 --Chief Sharptusk Thornmantle's Head (1)
    .mob Chief Sharptusk Thornmantle
step
    #completewith next
    .goto 1412/1,-1201.04,-3105.39,40 >>Enter the Cave
step
    #label DirtyMap
    .goto 1412/1,-1201.04,-3105.390
    >>Loot the |T134269:0|t[|cRXP_LOOT_Dirt-stained Map|r] on the ground. Use it to start the quest
    .collect 4851,1,781 --Collect Dirt-Stained Map
    .accept 781 >>Accept Attack on Camp Narache
    .use 4851
step << Shaman
    #completewith next
    >>Kill |cRXP_ENEMY_Bristleback Shamans|r. Loot them for their |cRXP_LOOT_Salves|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    #label BristlebackBelts
    #loop
    .goto 1412/1,-1236.49,-2956.06,0
    .goto 1412/1,-1230.32,-2898.18,40,0
    .goto 1412/1,-1184.60,-2907.08,40,0
    .goto 1412/1,-1101.88,-2917.70,40,0
    .goto 1412/1,-1115.76,-2974.90,40,0
    .goto 1412/1,-1164.56,-2996.48,40,0
    .goto 1412/1,-1250.36,-2979.01,40,0
    .goto 1412/1,-1333.59,-2948.87,40,0
    .goto 1412/1,-1236.49,-2956.06,40,0
    >>Kill |cRXP_ENEMY_Bristleback Quilboars|r. Loot them for their |cRXP_LOOT_Belts|r
    .complete 757,1 --Bristleback Belt (12)
    .mob Bristleback Quilboar
step << Shaman
    #loop
    .goto 1412/1,-1232.89,-3017.71,0
    .goto 1412/1,-1226.73,-3053.33,40,0
    .goto 1412/1,-1232.89,-3011.89,40,0
    .goto 1412/1,-1291.46,-2964.97,40,0
    .goto 1412/1,-1345.40,-2938.59,40,0
    .goto 1412/1,-1339.24,-2913.590,40,0
    .goto 1412/1,-1217.99,-2884.48,40,0
    .goto 1412/1,-1232.89,-3017.71,40,0
    >>Kill |cRXP_ENEMY_Bristleback Shamans|r. Loot them for their |cRXP_LOOT_Salves|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    #completewith next
    .hs >> Hearth to Camp Narache
    .use 6948
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull|r, |cRXP_FRIENDLY_Brave|r and |cRXP_FRIENDLY_Hawkwind|r << !Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grull|r, |cRXP_FRIENDLY_Brave|r, |cRXP_FRIENDLY_Seer|r and |cRXP_FRIENDLY_Hawkwind|r << Shaman
    .turnin 780 >>Turn in The Battleboars
    .target +Grull Hawkwind
    .goto 1412/1,-259.85,-2914.28
    .turnin 3376 >>Turn in Break Sharptusk!
    .target +Brave Windfeather
    .goto 1412/1,-247.0,-2899.21
    .turnin 1519 >>Turn in Call of Earth << Shaman
    .accept 1520 >>Accept Call of Earth << Shaman
    .target +Seer Ravenfeather << Shaman
    .goto 1412/1,-250.09,-2882.08 << Shaman
    .turnin 781 >>Turn in Attack on Camp Narache
    .turnin 757 >>Turn in Rite of Strength
    .accept 763 >>Accept Rites of the Earthmother
    .target +Chief Hawkwind
    .goto 1412/1,-221.83,-2878.31
step << Shaman
    #completewith CallofEarth
    #label Rock
    .goto 1412/1,-712.98,-3018.05,30 >> Travel toward the rock
step << Shaman
    #completewith next
    #requires Rock
    .cast 8202 >>|cRXP_WARN_Use the|r |T134743:0|t[Earth Sapta]
    .use 6635
step << Shaman
    .goto 1412/1,-712.98,-3018.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Manifestation|r
    .turnin 1520 >>Turn in Call of Earth
    .accept 1521 >>Accept Call of Earth
    .target Minor Manifestation of Earth
step << Shaman
    .goto 1412/1,-250.09,-2882.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ravenfeather|r
    .turnin 1521 >>Turn in Call of Earth
    .target Seer Ravenfeather
step << Shaman
    #season 2
    .goto 1412/1,-264.47,-2874.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meela|r
    .turnin 77652 >>Turn in Icons of Power
    .train 332 >>Train |T136052:0|t[Healing Wave]
    .target Shikrik
    .target Meela Dawnstrider
step << Shaman
    #season 0
    .goto 1412/1,-264.47,-2874.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Meela|r
    .train 332 >>Train |T136052:0|t[Healing Wave]
    .target Shikrik
    .target Meela Dawnstrider
step << Hunter
    #season 2
    .goto 1412/1,-225.94,-2865.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanka|r
    .train 1130 >>Train |T132212:0|t[Hunter's Mark]
    .target Lanka Farshot
    .money <0.02
step << Hunter
    #season 0
    .goto 1412/1,-225.94,-2865.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanka|r
    .train 1130 >>Train |T132212:0|t[Hunter's Mark]
    .train 3044 >>Train |T132218:0|t[Arcane Shot]
    .target Lanka Farshot
    .money <0.02
step << Hunter
    #season 0
    .goto 1412/1,-225.94,-2865.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lanka|r
    .train 3044 >>Train |T132218:0|t[Arcane Shot]
    .target Lanka Farshot
step << Druid
    #season 2
    .goto 1412/1,-268.58,-2873.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .train 467 >>Train |T136104:0|t[Thorns]
    .train 5177 >>Train |T136006:0|t[Wrath]
    .target Gart Mistrunner
    .money <0.02
step << Druid
    #season 0
    .goto 1412/1,-268.58,-2873.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .train 467 >>Train |T136104:0|t[Thorns]
    .train 5177 >>Train |T136006:0|t[Wrath]
    .target Gart Mistrunner
    .money <0.02
step << Druid
    #season 0
    .goto 1412/1,-268.58,-2873.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gart|r
    .train 5177 >>Train |T136006:0|t[Wrath]
    .target Gart Mistrunner
step << Warrior
    #season 2
    .goto 1412/1,-213.61,-2880.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Train |T132269:0|t[Parry]
    .train 6343 >>Train |T136105:0|t[Thunder Clap]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 2
    .goto 1412/1,-213.61,-2880.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Train |T132269:0|t[Parry]
    .target Harutt Thunderhorn
step << Warrior
    #season 0
    .goto 1412/1,-213.61,-2880.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Train |T132269:0|t[Parry]
    .train 6343 >>Train |T136105:0|t[Thunder Clap]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    #season 0
    .goto 1412/1,-213.61,-2880.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Train |T132269:0|t[Parry]
    .target Harutt Thunderhorn
step
    #season 2
    .goto 1412/1,-230.56,-2899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Rune Broker|r
    >>|cRXP_WARN_MAKE SURE NOT TO VENDOR GEAR THAT CAN BE EQUIPPED|r
    .vendor >> |cRXP_BUY_Vendor trash and buy all the |T134419:0|t|cRXP_WARN_[Runes]|r that you need from him|r
    .target Rune Broker
    .skipgossip
step
    .goto 1412/1,69.47,-3065.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Antur|r
    .accept 1656 >>Accept A Task Unfinished
    .target Antur Fallow
]])


RXPGuides.RegisterGuide([[
#forever
<< Horde
#xprate >1.99
#version 1
#group RestedXP Forever Guide (H)
#subgroup Speedrun Guide 1-22
--#groupid RXP-SRGCE-H1
#name 7-13 Mulgore
#next 13-20 The Barrens
#defaultfor Tauren


step << Druid
    #season 2
    .goto 1412/1,212.80,-2655.69
    >>|cRXP_WARN_Cast|r |T136096:0|t[Moonfire] |cRXP_WARN_on the three|r |cRXP_ENEMY_Lunar Stones|r|cRXP_WARN_. A chest will appear in between the stones|r
    >>Open the |cRXP_PICK_Lunar Chest|r for |T134419:0|t[|cRXP_FRIENDLY_Rune of the Sun|r]
    .collect 206989,1 --Rune of the Sun (1)
    .mob Lunar Stone
    .train 416044,1
step << Druid
    #season 2
    .train 416044 >> |cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Sun|r] |cRXP_WARN_to train|r |T236216:0|t[Sunfire]
    .use 206989
    .itemcount 206989,1
step
	#completewith BloodhoofHome
	#softcore
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
	#hardcore
	#completewith BloodhoofHome
    .goto 1412/1,-384.69,-2351.89,120 >> Run to Bloodhoof Village
    .subzoneskip 222
step
    #softcore
    .goto 1412/1,-365.17,-2227.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .accept 766 >>Accept Mazzranache
    .target Maur Raincaller
step
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruul|r and |cRXP_FRIENDLY_Baine|r
    .accept 743 >>Accept Dangers of the Windfury
    .target +Ruul Eagletalon
    .goto 1412/1,-385.2,-2396.76
    .turnin 763 >>Turn in Rites of the Earthmother
    .accept 745 >>Accept Sharing the Land
    .accept 767 >>Accept Rite of Vision
    .accept 746 >>Accept Dwarven Digging
    .target +Baine Bloodhoof
    .goto 1412/1,-392.91,-2333.40
step
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ruul|r and |cRXP_FRIENDLY_Baine|r
    .accept 743 >>Accept Dangers of the Windfury
    .target +Ruul Eagletalon
    .goto 1412/1,-385.2,-2396.76
    .turnin 763 >>Turn in Rites of the Earthmother
    .accept 767 >>Accept Rite of Vision
    .accept 746 >>Accept Dwarven Digging
    .target +Baine Bloodhoof
    .goto 1412/1,-392.91,-2333.40
step
    #label BloodhoofHome
    .goto 1412/1,-347.7,-2365.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kauth|r
    .turnin 1656 >>Turn in A Task Unfinished
    .home >>Set your Hearthstone to Bloodhoof Village
    .target Innkeeper Kauth
    .bindlocation 222
    .subzoneskip 222,1
step << Shaman/Druid
    .goto 1412/1,-297.87,-2279.970
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135145:0|t[Walking Stick] (5s 04c). You'll come back later if you don't have enough yet
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto 1412/1,-297.87,-2279.970
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Buy a|r |T135145:0|t[Walking Stick] |cRXP_BUY_from him|r
    .collect 2495,1,761,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto 1412/1,-297.87,-2279.970
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T133053:0|t[Wooden Mallet] (7s 1c). You'll come back later if you don't have enough yet
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto 1412/1,-297.87,-2279.970
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Buy a|r |T133053:0|t[Wooden Mallet] |cRXP_BUY_from him|r
    .collect 2493,1,761,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 1412/1,-289.65,-2275.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kennah|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135611:0|t[Ornate Blunderbuss] (4s 14c). You'll come back later if you don't have enough yet
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto 1412/1,-289.65,-2275.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Buy a|r |T135611:0|t[Ornate Blunderbuss] |cRXP_BUY_from him|r
    .collect 2509,1,761,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto 1412/1,-289.65,-2275.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kennah|r
    >>|cRXP_BUY_Buy|r |T132384:0|t[Light Shots] |cRXP_BUY_from him|r << Hunter
    .collect 2516,1000,750,1 << Hunter --Light Shot (1000)
    .target Kennah Hawkseye
step << Shaman/Druid
    #optional
    #completewith Well
    +|cRXP_WARN_Equip the|r |T135145:0|t[Walking Stick]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #optional
    #completewith Well
    +|cRXP_WARN_Equip the|r |T133053:0|t[Wooden Mallet]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #optional
    #completewith Well
    +|cRXP_WARN_Equip the|r |T135611:0|t[Ornate Blunderbuss]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r, |cRXP_FRIENDLY_Zarlman|r, |cRXP_FRIENDLY_Harken|r and |cRXP_FRIENDLY_Mull|r
    .accept 766 >>Accept Mazzranache
    .target +Maur Raincaller
    .goto 1412/1,-365.17,-2227.56
    .turnin 767 >>Turn in Rite of Vision
    .accept 771 >>Accept Rite of Vision
    .target +Zarlman Two-Moons
    .goto 1412/1,-405.75,-2243.32
    .accept 761 >>Accept Swoop Hunting
    .target +Harken Windtotem
    .goto 1412/1,-454.56,-2304.63
    .accept 748 >>Accept Poison Water
    .target +Mull Thunderhorn
    .goto 1412/1,-445.31,-2341.620
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r, |cRXP_FRIENDLY_Zarlman|r and |cRXP_FRIENDLY_Harken|r
    .accept 766 >>Accept Mazzranache
    .target +Maur Raincaller
    .goto 1412/1,-365.17,-2227.56
    .turnin 767 >>Turn in Rite of Vision
    .accept 771 >>Accept Rite of Vision
    .target +Zarlman Two-Moons
    .goto 1412/1,-405.75,-2243.32
    .accept 761 >>Accept Swoop Hunting
    .target +Harken Windtotem
    .goto 1412/1,-454.56,-2304.63
step
    #sticky
    #completewith Well
    >>|cRXP_WARN_Get the items for Mazzranache as you quest throughout the zone|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Tauren
    #completewith Ambercorns
    >>Kill |cRXP_ENEMY_Prairie Wolves|r and |cRXP_ENEMY_Adult Plainstriders|r. Loot them for their |cRXP_LOOT_Paws|r and |cRXP_LOOT_Talons|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob +Prairie Wolf
    .complete 748,2 --Plainstrider Talon (4)
    .mob +Adult Plainstrider
step << Hunter
    #season 2
    .goto 1412/1,-984.24,-2134.75
    >>Cast |T132212:0|t[Hunter's Mark] on the |cRXP_ENEMY_Rustling Bush|r
    >>Kill the |cRXP_ENEMY_Venture Co. Poacher|r that spawns. Loot him for |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Venture Co. Poacher
    .train 410113,1
step << Hunter
    #season 2
    .train 410113 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Marksmanship|r]
    .use 206155
    .itemcount 206155,1
step
    #label Ambercorns
    #loop
    .goto 1412/1,-539.33,-2550.2,0
    .goto 1412/1,-454.56,-2479.99,15,0
    .goto 1412/1,-539.33,-2550.2,15,0
    .goto 1412/1,-619.47,-2459.78,15,0
    .goto 1412/1,-578.89,-2706.72,15,0
    .goto 1412/1,-539.33,-2550.2,15,0
    >>Collect the |cRXP_PICK_Ambercorns|r. They can be found under the trees on the ground
    .complete 771,2 --Ambercorn (2)
step
	#completewith next
	>>Kill |cRXP_ENEMY_Swoops|r throughout Mulgore. Loot them for their |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step << Tauren
    #loop
	.goto 1412/1,-562.96,-2556.02,0
	.goto 1412/1,-562.96,-2556.02,50,0
	.goto 1412/1,-575.29,-2452.24,50,0
	.goto 1412/1,-664.17,-2398.47,50,0
	.goto 1412/1,-725.31,-2385.46,50,0
	.goto 1412/1,-812.13,-2422.79,50,0
	.goto 1412/1,-852.72,-2496.77,50,0
	.goto 1412/1,-830.11,-2594.38,50,0
	.goto 1412/1,-778.74,-2658.43,50,0
	.goto 1412/1,-640.54,-2672.81,50,0
	.goto 1412/1,-541.38,-2678.64,50,0
	.goto 1412/1,-448.91,-2650.89,50,0
	.goto 1412/1,-314.31,-2660.14,50,0
	.goto 1412/1,-447.88,-2580.34,50,0
    >>Kill |cRXP_ENEMY_Prairie Wolves|r and |cRXP_ENEMY_Adult Plainstriders|r. Loot them for their |cRXP_LOOT_Paws|r and |cRXP_LOOT_Talons|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob +Prairie Wolf
    .complete 748,2 --Plainstrider Talon (4)
    .mob +Adult Plainstrider
step << Tauren
    .goto 1412/1,-445.31,-2341.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull|r
    .turnin 748 >>Turn in Poison Water
    .timer 8,Poison Water RP
    .accept 754 >>Accept Winterhoof Cleansing
    .target Mull Thunderhorn
step << Tauren
    #completewith next
    >>Collect the |cRXP_PICK_Well Stones|r around the Well
    .complete 771,1 --Well Stone (2)
step << Tauren
    #label Well
    .goto 1412/1,-709.89,-2543.01
    >>|cRXP_WARN_Use the|r |T135139:0|t[Winterhoof Cleansing Totem] |cRXP_WARN_at the Well|r
    .complete 754,1 --Cleanse the Winterhoof Water Well (1)
step
    #label Stones
    #loop
    .goto 1412/1,-729.42,-2547.12,0
    .goto 1412/1,-692.94,-2525.88,10,0
    .goto 1412/1,-710.92,-2519.37,10,0
    .goto 1412/1,-725.31,-2531.36,10,0
    .goto 1412/1,-729.42,-2547.12,10,0
    >>Collect the |cRXP_PICK_Well Stones|r around the Well
    .complete 771,1 --Well Stone (2)
step
    #xprate <2.1
    #completewith Gnolls
    >>|cRXP_WARN_Get the items for Mazzranache as you quest throughout the zone|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Warrior
    #xprate <2.1
    #season 2
    #loop
    .goto 1412/1,-700.65,-2773.17,0
    .goto 1412/1,-433.50,-2738.92,0
    .goto 1412/1,-700.65,-2773.17,90,0
    .goto 1412/1,-433.50,-2738.92,90,0
    >>Go back and forth between the two camps. Kill |cRXP_ENEMY_Palemane Tanners|r, |cRXP_ENEMY_Palemane Skinners|r and |cRXP_ENEMY_Palemane Poachers|r. Loot them for a |cRXP_LOOT_Severed Gnoll Head|r
    >>|cRXP_WARN_Be careful of|r |cRXP_ENEMY_Snagglespear|r |cRXP_WARN_(Level 9 rare). He's too difficult to kill.|r
    .complete 745,1 --Palemane Tanner (10)
    .mob +Palemane Tanner
    .complete 745,2 --Palemane Skinner (8)
    .mob +Palemane Skinner
    .complete 745,3 --Palemane Poacher (5)
    .mob +Palemane Poacher
    .collect 204478,1 --Severed Gnoll Head (1)
    .unitscan Snagglespear
    .train 403475,1
step
    #xprate <2.1
    #label Gnolls
    #loop
    .goto 1412/1,-700.65,-2773.17,0
    .goto 1412/1,-433.50,-2738.92,0
    .goto 1412/1,-700.65,-2773.17,90,0
    .goto 1412/1,-433.50,-2738.92,90,0
    >>Go back and forth between the two camps. Kill |cRXP_ENEMY_Palemane Tanners|r, |cRXP_ENEMY_Palemane Skinners|r and |cRXP_ENEMY_Palemane Poachers|r
    >>|cRXP_WARN_Be careful of|r |cRXP_ENEMY_Snagglespear|r |cRXP_WARN_(Level 9 rare). He's too difficult to kill.|r
    .complete 745,1 --Palemane Tanner (10)
    .mob +Palemane Tanner
    .complete 745,2 --Palemane Skinner (8)
    .mob +Palemane Skinner
    .complete 745,3 --Palemane Poacher (5)
    .mob +Palemane Poacher
    .unitscan Snagglespear
step
    .goto 1412/1,-399.07,-2378.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jhawna|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from her|r << Shaman/Druid
    >>|cRXP_BUY_Buy|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_from her|r << Warrior
    .vendor >> Vendor trash
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Jhawna Oatwind
    .money <0.025
step << Tauren
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull|r and |cRXP_FRIENDLY_Baine|r
    .turnin 754 >>Turn in Winterhoof Cleansing
    .accept 756 >>Accept Thunderhorn Totem
    .target +Mull Thunderhorn
    .goto 1412/1,-445.31,-2341.620
    .turnin 745 >>Turn in Sharing the Land
    .target +Baine Bloodhoof
    .goto 1412/1,-392.91,-2333.40
step << !Tauren
    #xprate <2.1
    .goto 1412/1,-392.91,-2333.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull|r and |cRXP_FRIENDLY_Baine|r
    .turnin 745 >>Turn in Sharing the Land
    .target Baine Bloodhoof
step << Tauren
    #xprate >2.09
    .goto 1412/1,-445.31,-2341.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull|r
    .turnin 754 >>Turn in Winterhoof Cleansing
    .target Mull Thunderhorn
step << Warrior
    .goto 1412/1,-356.43,-2357.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vira|r
    .train 3273 >>Train |T135966:0|t[First Aid]
    .money <0.01
    .target Vira Younghoof
step << Shaman/Druid
    .goto 1412/1,-297.87,-2279.970
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135145:0|t[Walking Stick] (5s 04c). You'll come back later if you don't have enough yet
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto 1412/1,-297.87,-2279.970
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Buy a|r |T135145:0|t[Walking Stick] |cRXP_BUY_from him|r
    .collect 2495,1,749,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto 1412/1,-297.87,-2279.970
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T133053:0|t[Wooden Mallet] (7s 1c). You'll come back later if you don't have enough yet
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto 1412/1,-297.87,-2279.970
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Buy a|r |T133053:0|t[Wooden Mallet] |cRXP_BUY_from him|r
    .collect 2493,1,749,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 1412/1,-289.65,-2275.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kennah|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135611:0|t[Ornate Blunderbuss] (4s 14c). You'll come back later if you don't have enough yet
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto 1412/1,-289.65,-2275.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Buy a|r |T135611:0|t[Ornate Blunderbuss] |cRXP_BUY_from him|r
    .collect 2509,1,749,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Shaman/Druid
    #optional
    #completewith Clawsx
    +|cRXP_WARN_Equip the|r |T135145:0|t[Walking Stick]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #optional
    #completewith Clawsx
    +|cRXP_WARN_Equip the|r |T133053:0|t[Wooden Mallet]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #optional
    #completewith Clawsx
    +|cRXP_WARN_Equip the|r |T135611:0|t[Ornate Blunderbuss]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #label Vision
    .goto 1412/1,-405.75,-2243.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zarlman|r
    >>|cRXP_WARN_Do not follow the wolf that spawns|r
    .turnin 771 >>Turn in Rite of Vision
    .accept 772 >>Accept Rite of Vision
    .target Zarlman Two-Moons
step << Hunter
    #xprate <2.1
    .goto 1412/1,-408.32,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Train your class spells
    .target Yaw Sharpmane
    .xp <8,1
step << Druid
    #xprate <2.1
    .goto 1412/1,-442.74,-2315.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gennia|r
    .train 5186 >>Train your class spells
    .target Gennia Runetotem
    .xp <8,1
step << Warrior
    #xprate <2.1
    .goto 1412/1,-496.17,-2347.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krang|r
    .train 284 >> Train your class spells
    .target Krang Stonehoof
    .xp <8,1
step << Shaman
    #xprate <2.1
    .goto 1412/1,-437.61,-2298.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm|r
    .train 8044 >> Train your class spells
    .target Narm Skychaser
    .xp <8,1
step
    #xprate <2.1
    #loop
    .goto 1412/1,-784.9,-2350.18,0
    .goto 1412/1,-597.9,-2301.54,50,0
    .goto 1412/1,-674.96,-2336.14,50,0
    .goto 1412/1,-784.9,-2350.18,50,0
    .goto 1412/1,-904.6,-2371.07,50,0
    .goto 1412/1,-1016.6,-2410.12,50,0
    .goto 1412/1,-784.9,-2350.18,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_He patrols along the eastern road|r
    .accept 749 >>Accept The Ravaged Caravan
	.unitscan Morin Cloudstalker
step
    #xprate <2.1
    #completewith Clawsx
    >>|cRXP_WARN_Get the items for Mazzranache as you quest throughout the zone|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <2.1
	#completewith Clawsx
	>>Kill |cRXP_ENEMY_Swoops|r throughout Mulgore. Loot them for their |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step << Tauren
    #xprate <2.1
    #completewith next
    >>Kill |cRXP_ENEMY_Stalkers|r and |cRXP_ENEMY_Cougars|r. Loot them for their |cRXP_LOOT_Claws|r
    .complete 756,1 --Stalker Claws (6)
    .mob +Prairie Stalker
    .complete 756,2 --Cougar Claws (6)
    .mob +Flatland Cougar
step
    #xprate <2.1
    .goto 1412/1,-712.98,-1922.74
    >>Click the |cRXP_PICK_Sealed Supply Crate|r
    .turnin 749 >>Turn in The Ravaged Caravan
    .accept 751 >>Accept The Ravaged Caravan
step << Tauren
    #xprate <2.1
	#label Clawsx
    #loop
    .goto 1412/1,-936.97,-1937.47,0
    .goto 1412/1,-936.97,-1937.47,60,0
    .goto 1412/1,-752.02,-1646.34,60,0
    .goto 1412/1,-335.88,-2009.39,60,0
    >>Kill |cRXP_ENEMY_Stalkers|r and |cRXP_ENEMY_Cougars|r. Loot them for their |cRXP_LOOT_Claws|r
    .complete 756,1 --Stalker Claws (6)
    .mob +Prairie Stalker
    .complete 756,2 --Cougar Claws (6)
    .mob +Flatland Cougar
step
    #xprate <2.1
    #softcore
	#completewith Thunderhorn
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    #xprate <2.1
    #hardcore
    #completewith Thunderhorn
    .goto 1412/1,-341.02,-2173.79,150 >> Travel back to Bloodhoof Village
    .subzoneskip 222
step << Hunter
    #xprate <2.1
    .goto 1412/1,-408.32,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Train your class spells
    .target Yaw Sharpmane
    .xp <8,1
step
    #xprate <2.1
    #label Mazzturnin
    .goto 1412/1,-365.17,-2227.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Turn in Mazzranache
    .target Maur Raincaller
    .isQuestComplete 766
step << Shaman/Druid
    #xprate <2.1
    .goto 1412/1,-297.87,-2279.970
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135145:0|t[Walking Stick] (5s 04c). You'll come back later if you don't have enough yet
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    #xprate <2.1
    .goto 1412/1,-297.87,-2279.970
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Buy a|r |T135145:0|t[Walking Stick] |cRXP_BUY_from him|r
    .collect 2495,1,743,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #xprate <2.1
    .goto 1412/1,-297.87,-2279.970
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T133053:0|t[Wooden Mallet] (7s 1c). You'll come back later if you don't have enough yet
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    #xprate <2.1
    .goto 1412/1,-297.87,-2279.970
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Buy a|r |T133053:0|t[Wooden Mallet] |cRXP_BUY_from him|r
    .collect 2493,1,743,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #xprate <2.1
    .goto 1412/1,-289.65,-2275.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kennah|r
    .vendor >> Vendor trash. Sell your weapon if it gives you enough money for a |T135611:0|t[Ornate Blunderbuss] (4s 14c). You'll come back later if you don't have enough yet
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    #xprate <2.1
    .goto 1412/1,-289.65,-2275.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Buy a|r |T135611:0|t[Ornate Blunderbuss] |cRXP_BUY_from him|r
    .collect 2509,1,743,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    #xprate <2.1
    .goto 1412/1,-308.14,-2248.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Moorat|r
    .collect 2516,1000,743,1 << Hunter --Light Shot (1000)
    .target Moorat Longstride
    .itemcount 2512,<800 << Hunter
step << Shaman/Druid
    #xprate <2.1
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_Equip the|r |T135145:0|t[Walking Stick]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #xprate <2.1
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_Equip the|r |T133053:0|t[Wooden Mallet]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #xprate <2.1
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_Equip the|r |T135611:0|t[Ornate Blunderbuss]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #xprate <2.1
    #completewith Thunderhorn
    .goto 1412/1,-310.2,-2284.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harant|r
    .vendor >> Vendor trash and repair
    .target Harant Ironbrace
step
    #xprate <2.1
    .goto 1412/1,-454.56,-2304.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Harken|r
    .turnin 761 >>Turn in Swoop Hunting
    .target Harken Windtotem
    .isQuestComplete 761
step << Tauren
    #xprate <2.1
    .goto 1412/1,-445.31,-2341.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull|r
    .turnin 756 >>Turn in Thunderhorn Totem
    .timer 8,Thunderhorn Totem RP
    .accept 758 >>Accept Thunderhorn Cleansing
    .target Mull Thunderhorn
step
    #optional
    #label Thunderhorn
step << Shaman
    .goto 1412/1,-437.61,-2298.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm|r
    .train 8044 >> Train your class spells
    .target Narm Skychaser
    .xp <8,1
    .xp >10,1
step << Shaman
    #optional
    .goto 1412/1,-437.61,-2298.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm|r
    .accept 2984 >>Accept Call of Fire
    .trainer >> Train your class spells
    .target Narm Skychaser
    .xp <10,1
step << Druid
    .goto 1412/1,-442.74,-2315.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gennia|r
    .train 5186 >>Train your class spells
    .target Gennia Runetotem
    .xp <8,1
    .xp >10,1
step << Druid
    #optional
    .goto 1412/1,-442.74,-2315.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gennia|r
    .trainer >> Train your class spells
    .accept 5928 >> Accept Heeding the Call
    .target Gennia Runetotem
    .isQuestAvailable 5928
    .xp <10,1
step << Warrior
    .goto 1412/1,-496.17,-2347.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krang|r
    .train 284 >> Train your class spells
    .target Krang Stonehoof
    .xp <8,1
    .xp >10,1
step << Warrior
    #optional
    .goto 1412/1,-496.17,-2347.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krang|r
    .trainer >> Train your class spells
    .accept 1505 >>Accept Veteran Uzzek
    .target Krang Stonehoof
    .xp <10,1
step << Hunter
    .goto 1412/1,-408.32,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Train your class spells
    .target Yaw Sharpmane
    .xp <8,1
    .xp >10,1
step << Hunter
    #optional
    .goto 1412/1,-408.32,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .accept 6061 >>Accept Taming the Beast
    .trainer >> Train your class spells
    .target Yaw Sharpmane
    .xp <10,1
step << Hunter
    #optional
    #loop
    .goto 1412/1,24.77,-2239.89,0
    .goto 1412/1,-154.53,-2152.56,50,0
    .goto 1412/1,-44.59,-2177.22,50,0
    .goto 1412/1,24.77,-2239.89,50,0
    .use 15914 >> |cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on an|r |cRXP_ENEMY_Adult Plainstrider|r |cRXP_WARN_at max range|r
    .complete 6061,1 --Tame an Adult Plainstrider (1)
    .mob Adult Plainstrider
    .isOnQuest 6061
step << Hunter
    #optional
    .goto 1412/1,-408.32,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .turnin 6061 >>Turn in Taming the Beast
    .accept 6087 >>Accept Taming the Beast
    .target Yaw Sharpmane
    .isQuestComplete 6061
step << Hunter
    #optional
    .goto 1412/1,-408.32,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .accept 6087 >>Accept Taming the Beast
    .target Yaw Sharpmane
    .isQuestTurnedIn 6061
step << Hunter
    #optional
    #loop
    .goto 1412/1,-494.63,-1720.66,0
    .goto 1412/1,-375.96,-1990.55,50,0
    .goto 1412/1,-348.73,-1890.2,50,0
    .goto 1412/1,-427.33,-1823.41,50,0
    .goto 1412/1,-494.63,-1720.66,50,0
    .use 15915 >> |cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Prairie Stalker|r |cRXP_WARN_at max range|r
    .complete 6087,1 --Tame a Prairie Stalker (1)
    .mob Prairie Stalker
    .isQuestTurnedIn 6061
step << Hunter
    #optional
    .goto 1412/1,-408.32,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .turnin 6087 >>Turn in Taming the Beast
    .accept 6088 >>Accept Taming the Beast
    .target Yaw Sharpmane
    .isQuestTurnedIn 6061
step << Hunter
    #optional
    #loop
    .goto 1412/1,-379.55,-1688.47,0
    .goto 1412/1,-379.55,-1688.47,80,0
    .goto 1412/1,-285.02,-1652.85,80,0
    .goto 1412/1,-601.49,-1793.62,80,0
    .use 15916 >> |cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Swoop|r |cRXP_WARN_at max range and re-cast it immediately if they knock you down|r
    >>|cRXP_WARN_If you fail and run out of Taming Rod Charges, abandon the quest, then pick it up again and come back|r
    .complete 6088,1 --Tame a Swoop (1)
    .mob Swoop
    .isQuestTurnedIn 6061
step << Hunter
    #optional
    .goto 1412/1,-408.32,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .turnin 6088 >>Turn in Taming the Beast
    .accept 6089 >>Accept Training the Beast
    .target Yaw Sharpmane
    .isQuestTurnedIn 6061
step
    .goto 1412/1,-347.7,-2364.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Kauth|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r << Shaman/Druid
    >>|cRXP_BUY_Buy|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_from him|r << Warrior
    .vendor >> Vendor Trash << !Hunter
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Innkeeper Kauth
    .money <0.025
step
    #completewith Burial
    >>|cRXP_WARN_Finish getting the items for Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
	#completewith Burial
	>>Kill |cRXP_ENEMY_Swoops|r throughout Mulgore. Loot them for their |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step << Tauren
    #xprate <2.1
    #label ThunderhornCleanse
    .goto 1412/1,-237.76,-1826.50
    >>|cRXP_WARN_Use the|r |T135139:0|t[Thunderhorn Cleansing Totem] |cRXP_WARN_at the Well|r
    .complete 758,1 --Cleanse the Thunderhorn Water Well (1)
step << Shaman
    #season 2
    #completewith next
    >>Kill |cRXP_ENEMY_Bael'dun Diggers|r and |cRXP_ENEMY_Bael'dun Appraisers|r. Loot them for the |cRXP_LOOT_Artifact Storage Key|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
step
    .goto 1412/1,441.42,-1980.96
    >>Kill |cRXP_ENEMY_Bael'dun Diggers|r and |cRXP_ENEMY_Bael'dun Appraisers|r. Loot them for their |cRXP_LOOT_Prospector's Picks|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Bael'dun Appraisers|r cast|r |T135929:0|t[Lesser Heal] |cRXP_WARN_(Ranged Cast: Heals themselves or a nearby mob below 50% health for about 75 health)|r
    .use 4702 >> Smash the |T134707:0|t[Picks] at the Forge
    .complete 746,1 --Broken Tools (5)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
step << Shaman
    #season 2
    #loop
    .goto 1412/1,284.21,-1901.16,0
    .goto 1412/1,284.21,-1901.16,40,0
    .goto 1412/1,320.69,-1972.06,40,0
    .goto 1412/1,374.12,-1949.80,40,0
    .goto 1412/1,410.08,-1991.24,40,0
    .goto 1412/1,448.10,-1988.16,40,0
    .goto 1412/1,456.32,-1925.14,40,0
    .goto 1412/1,424.98,-1923.42,40,0
    .goto 1412/1,347.4,-1906.3,40,0
    >>Kill |cRXP_ENEMY_Bael'dun Diggers|r and |cRXP_ENEMY_Bael'dun Appraisers|r. Loot them for the |cRXP_LOOT_Artifact Storage Key|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Bael'dun Appraisers|r cast|r |T135929:0|t[Lesser Heal] |cRXP_WARN_(Ranged Cast: Heals themselves or a nearby mob below 50% health for about 75 health)|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
step << Shaman
    #season 2
    .goto 1412/1,426.52,-1969.66
    >>Open the |cRXP_PICK_Artifact Storage|r chest. Loot it for the |T134918:0|t|cRXP_LOOT_[Sulfurous Icon]|r
    .collect 206388,1 --Sulfurous Icon (1)
    .train 425344,1
step << Shaman
    #season 2
    .equip 18,206388 >> |cRXP_WARN_Equip the|r |T134918:0|t|cRXP_LOOT_[Sulfurous Icon]|r
    .use 206388
    .itemcount 206388,1 --Sulfurous Icon (1)
    .train 425344,1
step << Shaman
    #season 2
    #label MoltenBlast
    #completewith Burial
    .aura 408828 >>|cRXP_WARN_Kill enemies having dealt damage using|r |T136026:0|t[Earth Shock] |cRXP_WARN_on them at least once. Do this 10 times to gain the|r |T136116:0|t[Inspired] |cRXP_WARN_buff|r
    >>|cRXP_WARN_NOTE: You must do this on enemies that can provide experience to gain stacks|r
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
step << Warrior
    #xprate <2.1
    #season 2
    #loop
	.goto 1412/1,417.27,-1653.53,0
	.goto 1412/1,297.06,-1769.98,50,0
	.goto 1412/1,353.57,-1744.30,50,0
	.goto 1412/1,418.30,-1748.41,50,0
	.goto 1412/1,451.18,-1714.50,50,0
	.goto 1412/1,449.13,-1672.71,50,0
	.goto 1412/1,417.27,-1653.53,50,0
	.goto 1412/1,381.31,-1682.99,50,0
	.goto 1412/1,323.26,-1687.440,50,0
	.goto 1412/1,310.41,-1651.82,50,0
	.goto 1412/1,276.51,-1684.36,50,0
	.goto 1412/1,275.48,-1721.35,50,0
    >>Kill |cRXP_ENEMY_Windfury Wind Witches|r and |cRXP_ENEMY_Windfury Harpies|r. Loot them for their |cRXP_LOOT_Talons|r and a |cRXP_LOOT_Severed Harpy Head|r
    .complete 743,1 --Windfury Talon (8)
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
    .train 403475,1
step
    #loop
	.goto 1412/1,417.27,-1653.53,0
	.goto 1412/1,297.06,-1769.98,50,0
	.goto 1412/1,353.57,-1744.30,50,0
	.goto 1412/1,418.30,-1748.41,50,0
	.goto 1412/1,451.18,-1714.50,50,0
	.goto 1412/1,449.13,-1672.71,50,0
	.goto 1412/1,417.27,-1653.53,50,0
	.goto 1412/1,381.31,-1682.99,50,0
	.goto 1412/1,323.26,-1687.440,50,0
	.goto 1412/1,310.41,-1651.82,50,0
	.goto 1412/1,276.51,-1684.36,50,0
	.goto 1412/1,275.48,-1721.35,50,0
    >>Kill |cRXP_ENEMY_Windfury Wind Witches|r and |cRXP_ENEMY_Windfury Harpies|r. Loot them for their |cRXP_LOOT_Talons|r
    .complete 743,1 --Windfury Talon (8)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
step
    #completewith next
    .goto 1412/1,333.53,-1523.73,50 >> Enter the cave just North of the Windfury Harpies
step
    #xprate <2.1
	#label Burial
    .goto 1412/1,366.93,-1509.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wiserunner|r
    .turnin 772 >>Turn in Rite of Vision
    .accept 773 >>Accept Rite of Wisdom
    .target Seer Wiserunner
step
    #xprate >2.09
	#label Burial
    .goto 1412/1,366.93,-1509.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Wiserunner|r
    .turnin 772 >>Turn in Rite of Vision
    .target Seer Wiserunner
step << Shaman
    #season 2
    #requires MoltenBlast
    .cast 402265 >>|cRXP_WARN_Use the|r |T134918:0|t|cRXP_LOOT_[Sulfurous Icon]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves: Molten Blast]
    .use 206388
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <3,1
step
    #completewith SacredBurial
    .destroy 4823 >> |cRXP_WARN_You can delete|r |T134712:0|t[Water of the Seers] |cRXP_WARN_from your bags, as it's no longer needed|r
step << Druid/Hunter/Shaman
    #completewith next
    .goto 1456/1,182.67,-1314.05
    .zone Thunder Bluff >>Travel to Thunder Bluff
    .isOnQuest 6089 << Hunter
    .xp <10,1 << Druid
step << Shaman
    #season 2
    .goto 1456/1,104.91,-1308.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    >>|cRXP_WARN_He is|r |T132320:0|t[Stealthed]
    .accept 76156 >>Accept Stalk With The Earthmother
    .target Boarton Shadetotem
    .train 410104,1
step << Druid
    .goto 1456/1,38.32,-1300.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Pala|r
    .home >>Set your Hearthstone to Thunder Bluff
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 5932
    .xp <10,1
step << Druid
    .goto 1456/1,-298.5,-1049.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hamuul Runetotem|r
    .accept 886 >>Accept The Barrens Oases
    .target Arch Druid Hamuul Runetotem
    .xp <10,1
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
    .goto 1456/1,-283.89,-1039.96
    .turnin 5928 >>Turn in Heeding the Call
    .accept 5922 >>Accept Moonglade
    .target Turak Runetotem
    .isOnQuest 5928
step << Druid
    .goto 1456/1,-283.89,-1039.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
    .accept 5922 >>Accept Moonglade
    .target Turak Runetotem
    .xp <10,1
step << Druid
    #completewith GreatBearS
    .cast 18960 >>Cast |T135758:0|t[Teleport: Moonglade]
    .zoneskip Moonglade
step << Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite|r
    .turnin 5922 >>Turn in Moonglade
    .accept 5930 >>Accept Great Bear Spirit
    .target Dendrite Starblaze
    .isOnQuest 5922
step << Druid
    #label GreatBearS
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite|r
    .accept 5930 >>Accept Great Bear Spirit
    .target Dendrite Starblaze
    .isQuestTurnedIn 5922
step << Druid
    .goto 1450/1,-2286.12,8068.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Great Bear Spirit|r
    .complete 5930,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear. (1)
    .target Great Bear Spirit
    .skipgossip
    .isQuestTurnedIn 5922
step << Druid
    #completewith next
    .cast 18960 >>Cast |T135758:0|t[Teleport: Moonglade]
step << Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite|r
    .turnin 5930 >>Turn in Great Bear Spirit
    .accept 5932 >>Accept Back to Thunder Bluff
    .target Dendrite Starblaze
    .isQuestTurnedIn 5922
step << Druid
    #completewith DruidBearForm
    .hs >> Hearth to Thunder Bluff
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .isQuestTurnedIn 5922
step << Druid
    #completewith next
    .goto 1450/1,-2403.61,7785.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >> Fly to Thunder Bluff
    .target Bunthen Plainswind
    .cooldown item,6948,<0
step << Druid
    #label DruidBearForm
    .goto 1456/1,-283.89,-1039.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
    .turnin 5932 >>Turn in Back to Thunder Bluff
    .accept 6002 >>Accept Body and Heart
    .target Turak Runetotem
    .isQuestTurnedIn 5922
step << Hunter
	.goto 1456/1,-82.45,-1472.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holt|r
	.turnin 6089 >> Turn in Training the Beast
    .target Holt Thunderhorn
    .isOnQuest 6089
step << Hunter
    .goto 1456/1,-47.79,-1434.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hesuwa|r
    .train 24547 >>Train your pet spells
    .target Hesuwa Thunderhorn
    .isQuestTurnedIn 6089
step << Hunter
    #completewith SacredBurial
    +|cRXP_WARN_Drag|r |T132162:0|t[Beast Training] |cRXP_WARN_onto your Action Bars. Teach skills to your pet|r
    .isQuestTurnedIn 6089
step << Druid/Hunter/Shaman
    #xprate <2.1
    .goto 1456/1,-44.98,-1043.58,30,0
    .goto 1412/1,-1026.88,-1150.40
    .zone Mulgore >>Exit Thunder Bluff by the Northern lift
    .zoneskip Thunder Bluff,1
    .isQuestTurnedIn 6089 << Hunter
    .isQuestTurnedIn 5932 << Druid
step << Hunter
    #xprate <2.1
    #completewith SacredBurial
    .cast 1515 >>Tame a |cRXP_ENEMY_Prairie Wolf Alpha|r
    >>|cRXP_WARN_This will allow you to train|r |T132278:0|t[Bite Rank 2]
    .mob Prairie Wolf Alpha
step
    #xprate <2.1
    #completewith SacredBurial
    >>|cRXP_WARN_Finish getting the items for Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <2.1
    #completewith SacredBurial
    >>Keep an eye out for |cRXP_ENEMY_Ghost Howl|r. Loot him for his |T134358:0|t[|cRXP_LOOT_Demon Scarred Cloak|r]. Use it to start the quest
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Ghost Howl|r is difficult due to being level 12|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .accept 770 >>Accept The Demon Scarred Cloak
    .use 4854
    .unitscan Ghost Howl
step
    #xprate <2.1
	#completewith next
	>>Kill |cRXP_ENEMY_Swoops|r throughout Mulgore. Loot them for their |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    #xprate <2.1
    .goto 1412/1,-1026.88,-1150.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raintotem|r
    .accept 833 >>Accept A Sacred Burial
    .target Lorekeeper Raintotem
step
    #optional
    #label SacredBurial
step << Warrior
    #xprate <2.1
    #season 2
    #completewith RiteofWisdom
    >>Kill |cRXP_ENEMY_Bristleback Interlopers|r. Loot them for a |cRXP_LOOT_Severed Quilboar Head|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob Bristleback Interloper
    .train 403475,1
step
    #xprate <2.1
    #completewith next
    >>Kill |cRXP_ENEMY_Bristleback Interlopers|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    #xprate <2.1
    #label RiteofWisdom
    .goto 1412/1,-1109.08,-992.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Ancestral Spirit|r
    .turnin 773 >>Turn in Rite of Wisdom
    .accept 775 >>Accept Journey into Thunder Bluff
    .target Ancestral Spirit
step << Warrior
    #xprate <2.1
    #season 2
    #loop
	.goto 1412/1,-1026.88,-1150.40,0
	.goto 1412/1,-1026.88,-1150.40,25,0
	.goto 1412/1,-1093.15,-1058.27,25,0
	.goto 1412/1,-1125.52,-1043.20,25,0
	.goto 1412/1,-1146.58,-1028.13,25,0
	.goto 1412/1,-1153.77,-988.40,25,0
	.goto 1412/1,-1117.81,-940.790,25,0
	.goto 1412/1,-1057.19,-940.790,25,0
	.goto 1412/1,-1042.80,-994.22,25,0
	.goto 1412/1,-1055.65,-1025.05,25,0
	.goto 1412/1,-1092.12,-1056.56,25,0
    >>Kill |cRXP_ENEMY_Bristleback Interlopers|r. Loot them for a |cRXP_LOOT_Severed Quilboar Head|r
    .complete 833,1 --Bristleback Interloper (8)
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob Bristleback Interloper
    .train 403475,1
step
    #xprate <2.1
    #loop
	.goto 1412/1,-1026.88,-1150.40,0
	.goto 1412/1,-1026.88,-1150.40,25,0
	.goto 1412/1,-1093.15,-1058.27,25,0
	.goto 1412/1,-1125.52,-1043.20,25,0
	.goto 1412/1,-1146.58,-1028.13,25,0
	.goto 1412/1,-1153.77,-988.40,25,0
	.goto 1412/1,-1117.81,-940.790,25,0
	.goto 1412/1,-1057.19,-940.790,25,0
	.goto 1412/1,-1042.80,-994.22,25,0
	.goto 1412/1,-1055.65,-1025.05,25,0
	.goto 1412/1,-1092.12,-1056.56,25,0
    >>Kill |cRXP_ENEMY_Bristleback Interlopers|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    #xprate <2.1
    .goto 1412/1,-1026.88,-1150.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raintotem|r
    .turnin 833 >>Turn in A Sacred Burial
    .target Lorekeeper Raintotem
step
    #xprate <2.1
    #completewith next
    >>|cRXP_WARN_Finish getting the items for Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #xprate <2.1
    #loop
	.goto 1412/1,-572.21,-903.12,0
	.goto 1412/1,-1009.92,-1073.0,60,0
	.goto 1412/1,-906.66,-926.41,60,0
	.goto 1412/1,-788.5,-912.36,60,0
	.goto 1412/1,-674.44,-866.81,60,0
	.goto 1412/1,-572.21,-903.12,60,0
	.goto 1412/1,-512.61,-983.26,60,0
	.goto 1412/1,-511.59,-1084.3,60,0
	.goto 1412/1,-496.17,-1166.84,60,0
	.goto 1412/1,-506.45,-1236.71,60,0
	.goto 1412/1,-561.42,-1278.84,60,0
	.goto 1412/1,-635.91,-1302.81,60,0
	.goto 1412/1,-737.12,-1315.14,60,0
	.goto 1412/1,-836.79,-1312.4,60,0
	.goto 1412/1,-920.02,-1316.86,60,0
	.goto 1412/1,-972.42,-1249.73,60,0
	.goto 1412/1,-1063.35,-1159.31,60,0
	.goto 1412/1,-1009.92,-1073.0,60,0
	>>Kill |cRXP_ENEMY_Swoops|r. Loot them for their |cRXP_LOOT_Quills|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    #xprate <2.1
    #loop
    .goto 1412/1,-780.79,-1385.36,0
    .goto 1412/1,-780.79,-1385.36,60,0
    .goto 1412/1,-718.11,-1670.32,60,0
    .goto 1412/1,-684.72,-1819.65,60,0
    .goto 1412/1,-903.58,-1946.37,60,0
    .goto 1412/1,-985.26,-2080.97,60,0
    .goto 1412/1,-989.37,-2262.5,60,0
    .goto 1412/1,-452.5,-1808.69,60,0
    >>|cRXP_WARN_Finish getting the items for Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .mob +Prairie Wolf Alpha
    .mob +Prairie Stalker
    .mob +Prairie Wolf Alpha
    .complete 766,2 --Flatland Cougar Femur (1)
    .mob +Flatland Cougar
    .complete 766,3 --Plainstrider Scale (1)
    .mob +Elder Plainstrider
    .mob +Adult Plainstrider
    .complete 766,4 --Swoop Gizzard (1)
    .mob +Taloned Swoop
    .mob +Swoop
    .mob +Wiry Swoop
step << skip --Cannon removed from game
    #season 2
    #softcore
    #completewith Bloodhoofturnins1
    .goto 1456/1,86.95,-1320.80
    +Click the |cRXP_PICK_Ultra Cannon|r to blast yourself back to Bloodhoof Village
    >>|cRXP_WARN_You will die upon arrival but can respawn instantly|r
    >>|cRXP_WARN_Remove your|r |T135992:0|t[Magic Wings] |cRXP_WARN_buff when it has 2 seconds remaining to try and land in the river to avoid death
    .zoneskip Thunder Bluff,1
step
    #completewith Bloodhoofturnins1
    .zone Mulgore >>Exit Thunder Bluff
    .zoneskip Thunder Bluff,1
step
    #softcore
    #completewith Bloodhoofturnins1
    .goto 1412/1,-429.39,-1603.53
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
    >>|cRXP_WARN_Make sure you die at the waypoint arrow or further south of it|r
    .zoneskip Thunder Bluff
step
    #hardcore
    #completewith Bloodhoofturnins1
    .goto 1412/1,-383.66,-2230.99,120 >> Travel back to Bloodhoof Village
    .subzoneskip 222
step
    .goto 1412/1,-365.17,-2227.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Turn in Mazzranache
    .target Maur Raincaller
    .isQuestComplete 766
step
    .goto 1412/1,-353.86,-2336.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skorn|r
    .turnin 770 >>Turn in The Demon Scarred Cloak
    .target Skorn Whitecloud
    .isOnQuest 770
step << Warrior
    #xprate <2.1
    #season 2
    .goto 1412/1,-330.23,-2388.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Vateya|r in Bloodhoof Village
    >>Turn in the |cRXP_LOOT_Heads|r you've collected in exchange for |T134455:0|t[Rune Fragments]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vateya Timberhoof
    .train 403475,1
step << Warrior
    #xprate <2.1
    #season 2
    .use 204688 >>Use the |T134455:0|t[Rune Fragments] to create |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step << Warrior
    #xprate <2.1
    #season 2
    .train 403475 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastate|r]
    .use 204703
    .itemcount 204703,1
step << Tauren
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r, |cRXP_FRIENDLY_Mull|r and |cRXP_FRIENDLY_Harken|r
    .turnin 746 >>Turn in Dwarven Digging
    .target +Baine Bloodhoof
    .goto 1412/1,-392.91,-2333.40
    .turnin 743 >>Turn in Dangers of the Windfury
    .target +Ruul Eagletalon
    .goto 1412/1,-384.69,-2397.10
    .turnin 758 >>Turn in Thunderhorn Cleansing
    --.accept 759 >>Accept Wildmane Totem
    .target +Mull Thunderhorn
    .goto 1412/1,-445.83,-2340.93
    .turnin 761 >>Turn in Swoop Hunting
    .target +Harken Windtotem
    .goto 1412/1,-454.56,-2304.63
    .isQuestComplete 761
step << !Tauren
    #xprate <2.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r and |cRXP_FRIENDLY_Harken|r
    .turnin 746 >>Turn in Dwarven Digging
    .target +Baine Bloodhoof
    .goto 1412/1,-392.91,-2333.40
    .turnin 743 >>Turn in Dangers of the Windfury
    .target +Ruul Eagletalon
    .goto 1412/1,-384.69,-2397.10
    .turnin 761 >>Turn in Swoop Hunting
    .target +Harken Windtotem
    .goto 1412/1,-454.56,-2304.63
    .isQuestComplete 761
step << Tauren
    #xprate <2.1
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine|r and |cRXP_FRIENDLY_Ruul|r
    .turnin 746 >>Turn in Dwarven Digging
    .target +Baine Bloodhoof
    .goto 1412/1,-392.91,-2333.40
    .turnin 743 >>Turn in Dangers of the Windfury
    .target +Ruul Eagletalon
    .goto 1412/1,-384.69,-2397.10
    .turnin 758 >>Turn in Thunderhorn Cleansing
    --.accept 759 >>Accept Wildmane Totem
    .target +Mull Thunderhorn
    .goto 1412/1,-445.83,-2340.93
step << !Tauren
    #xprate <2.1
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine|r and |cRXP_FRIENDLY_Ruul|r
    .turnin 746 >>Turn in Dwarven Digging
    .target +Baine Bloodhoof
    .goto 1412/1,-392.91,-2333.40
    .turnin 743 >>Turn in Dangers of the Windfury
    .target +Ruul Eagletalon
    .goto 1412/1,-384.69,-2397.10
step
    #xprate >2.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r and |cRXP_FRIENDLY_Harken|r
    .turnin 746 >>Turn in Dwarven Digging
    .target +Baine Bloodhoof
    .goto 1412/1,-392.91,-2333.40
    .turnin 743 >>Turn in Dangers of the Windfury
    .target +Ruul Eagletalon
    .goto 1412/1,-384.69,-2397.10
    .turnin 761 >>Turn in Swoop Hunting
    .target +Harken Windtotem
    .goto 1412/1,-454.56,-2304.63
    .isQuestComplete 761
step
    #xprate >2.09
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Baine|r and |cRXP_FRIENDLY_Ruul|r
    .turnin 746 >>Turn in Dwarven Digging
    .target +Baine Bloodhoof
    .goto 1412/1,-392.91,-2333.40
    .turnin 743 >>Turn in Dangers of the Windfury
    .target +Ruul Eagletalon
    .goto 1412/1,-384.69,-2397.10
step
    #completewith AlphaTeeth
    .destroy 4702 >> |cRXP_WARN_You can delete|r |T134707:0|t[Prospector's Picks] |cRXP_WARN_from your bags, as they're no longer needed|r
step << Hunter
    .goto 1412/1,-289.65,-2275.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Kennah|r
    >>|cRXP_BUY_Buy|r |T132384:0|t[Heavy Shots] |cRXP_BUY_from him|r << Hunter
    .collect 2519,1000,6061,1 << Hunter --Heavy Shot (1000)
    .target Kennah Hawkseye
step << Warrior
    .goto 1412/1,-496.17,-2347.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krang|r
    .train 2687 >>Train your class spells
    .accept 1505 >>Accept Veteran Uzzek
    .target Krang Stonehoof
step << Warrior
    #optional
    .goto 1412/1,-496.17,-2347.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Krang|r
    .train 7384 >>Train your class spells
    .target Krang Stonehoof
    .xp <12,1
step << Shaman
    .goto 1412/1,-437.61,-2298.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm|r
    .train 8050 >>Train your class spells
    .accept 2984 >>Accept Call of Fire
    .target Narm Skychaser
step << Shaman
    #optional
    .goto 1412/1,-437.61,-2298.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Narm|r
    .train 547 >>Train your class spells
    .target Narm Skychaser
    .xp <12,1
step << Hunter
    .goto 1412/1,-408.32,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .accept 6061 >>Accept Taming the Beast
    .train 13165 >>Train your class spells
    .target Yaw Sharpmane
    .isQuestAvailable 6061
step << Hunter
    #optional
    .goto 1412/1,-408.32,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .train 14281 >> Train your class spells
    .target Yaw Sharpmane
    .xp <12,1
step << Druid
    .goto 1412/1,-442.74,-2315.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gennia|r
    .train 8924 >> Train your class spells
    .accept 5928 >> Accept Heeding the Call
    .target Gennia Runetotem
    .isQuestAvailable 5928
step << Druid
    #optional
    .goto 1412/1,-442.74,-2315.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gennia|r
    .train 8936 >> Train your class spells
    .target Gennia Runetotem
    .xp <12,1
step << Hunter
    #loop
    .goto 1412/1,24.77,-2239.89,0
    .goto 1412/1,-154.53,-2152.56,50,0
    .goto 1412/1,-44.59,-2177.22,50,0
    .goto 1412/1,24.77,-2239.89,50,0
    .use 15914 >> |cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on an|r |cRXP_ENEMY_Adult Plainstrider|r |cRXP_WARN_at max range|r
    .complete 6061,1 --Tame an Adult Plainstrider (1)
    .mob Adult Plainstrider
step << Hunter
    .goto 1412/1,-408.32,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .turnin 6061 >>Turn in Taming the Beast
    .accept 6087 >>Accept Taming the Beast
    .target Yaw Sharpmane
step << Hunter
    #loop
    .goto 1412/1,-494.63,-1720.66,0
    .goto 1412/1,-375.96,-1990.55,50,0
    .goto 1412/1,-348.73,-1890.2,50,0
    .goto 1412/1,-427.33,-1823.41,50,0
    .goto 1412/1,-494.63,-1720.66,50,0
    .use 15915 >> |cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Prairie Stalker|r |cRXP_WARN_at max range|r
    .complete 6087,1 --Tame a Prairie Stalker (1)
    .mob Prairie Stalker
step << Hunter
    .goto 1412/1,-408.32,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .turnin 6087 >>Turn in Taming the Beast
    .accept 6088 >>Accept Taming the Beast
    .target Yaw Sharpmane
step << Hunter
    #loop
    .goto 1412/1,-379.55,-1688.47,0
    .goto 1412/1,-379.55,-1688.47,80,0
    .goto 1412/1,-285.02,-1652.85,80,0
    .goto 1412/1,-601.49,-1793.62,80,0
    .use 15916 >> |cRXP_WARN_Use your|r |T132164:0|t[Taming Rod] |cRXP_WARN_on a|r |cRXP_ENEMY_Swoop|r |cRXP_WARN_at max range and re-cast it immediately if they knock you down|r
    >>|cRXP_WARN_If you fail and run out of Taming Rod Charges, abandon the quest, then pick it up again and come back|r
    .complete 6088,1 --Tame a Swoop (1)
    .mob Swoop
step << Hunter
    .goto 1412/1,-408.32,-2180.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Yaw|r
    .turnin 6088 >>Turn in Taming the Beast
    .accept 6089 >>Accept Training the Beast
    .target Yaw Sharpmane
step
    .goto 1412/1,-399.07,-2378.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jhawna|r
    >>|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from her|r << Shaman/Druid
    >>|cRXP_BUY_Buy|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_from her|r << Warrior
    .collect 1179,20,818,1 << Shaman/Druid --Ice Cold Milk (20)
    .collect 4541,20,818,1 << Warrior --Freshly Baked Bread (20)
    .target Innkeeper Grosk
    .money <0.05
    .target Jhawna Oatwind
step << skip
    .goto 1412/1,-353.86,-2336.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Skorn|r
    .accept 861 >>Accept The Hunter's Way
    .target Skorn Whitecloud
step
    #xprate >2.09
    #loop
    .goto 1412/1,-784.9,-2350.18,0
    .goto 1412/1,-597.9,-2301.54,50,0
    .goto 1412/1,-674.96,-2336.14,50,0
    .goto 1412/1,-784.9,-2350.18,50,0
    .goto 1412/1,-904.6,-2371.07,50,0
    .goto 1412/1,-1016.6,-2410.12,50,0
    .goto 1412/1,-784.9,-2350.18,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_He patrols along the eastern road|r
    .accept 749 >>Accept The Ravaged Caravan
	.unitscan Morin Cloudstalker
step << Hunter
    #xprate >2.09
    #loop
    .goto 1412/1,-1403.97,-2457.38,0
    .goto 1412/1,-1403.97,-2457.38,50,0
    .goto 1412/1,-1360.3,-2568.01,50,0
    .goto 1412/1,-1232.89,-2544.03,50,0
    .goto 1412/1,-1127.57,-2516.98,50,0
    .goto 1412/1,-1117.3,-2373.13,50,0
    .goto 1412/1,-1218.51,-2345.38,50,0
    .goto 1412/1,-1320.23,-2306.34,50,0
    .goto 1412/1,-1426.06,-2295.72,50,0
    .goto 1412/1,-1360.3,-2568.01,50,0
    .train 16828 >>|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Prairie Wolf Alpha|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 3)]
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Click here for more info about pet training|r
    .mob Prairie Wolf Alpha
step
    #xprate >2.09
    .goto 1412/1,-712.98,-1922.74
    >>Click the |cRXP_PICK_Sealed Supply Crate|r
    .turnin 749 >>Turn in The Ravaged Caravan
    .accept 751 >>Accept The Ravaged Caravan
step
    #loop
    .goto 1412/1,-784.9,-2350.18,0
    .goto 1412/1,-597.9,-2301.54,50,0
    .goto 1412/1,-674.96,-2336.14,50,0
    .goto 1412/1,-784.9,-2350.18,50,0
    .goto 1412/1,-904.6,-2371.07,50,0
    .goto 1412/1,-1016.6,-2410.12,50,0
    .goto 1412/1,-784.9,-2350.18,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_He patrols along the eastern road|r
    .turnin 751 >> Turn in The Ravaged Caravan
    .accept 764 >> Accept The Venture Co
    .accept 765 >> Accept Supervisor Fizsprocket
	.unitscan Morin Cloudstalker
step
    #season 2
    #completewith Fizsprocket1
    .goto 1412/1,-1112.16,-1892.6,20 >> Travel to The Venture Co. Mine
step << Shaman
    #season 2
    #completewith VentureCoKills
    >>Open the |cRXP_PICK_Blasting Supplies|r inside the mine and outside on the other side. Loot them for the |cRXP_LOOT_Seaforium Mining Charges|r
    >>|cRXP_WARN_Stay on the upper levels of the cave if possible|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
step
    #completewith next
    >>Kill |cRXP_ENEMY_Venture Co. Workers|r and |cRXP_ENEMY_Venture Co. Supervisors|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step
    #label Fizsprocket1
    .goto 1412/1,-1288.89,-1756.97
    >>Kill |cRXP_ENEMY_Supervisor Fizsprocket|r. Loot him for his |cRXP_LOOT_Clipboard|r
    >>|cRXP_WARN_Run into the mine and hug the right/east side to reach him|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Supervisor Fizsprocket
step
    #label VentureCoKills
    #loop
	.goto 1412/1,-1103.94,-1901.5,0
	.goto 1412/1,-1103.94,-1901.5,25,0
	.goto 1412/1,-1039.72,-1911.44,25,0
	.goto 1412/1,-1008.9,-1924.11,25,0
	.goto 1412/1,-1018.14,-1946.03,25,0
	.goto 1412/1,-1041.78,-1955.96,25,0
	.goto 1412/1,-1137.85,-1942.26,25,0
	.goto 1412/1,-1131.68,-1911.44,25,0
    >>Kill |cRXP_ENEMY_Venture Co. Workers|r and |cRXP_ENEMY_Venture Co. Supervisors|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step << Shaman
    #season 2
    #loop
    .goto 1412/1,-1228.27,-1778.89,15,0
    .goto 1412/1,-1178.95,-1739.16,15,0
    .goto 1412/1,-1054.11,-1738.13,15,0
    .goto 1412/1,-1118.84,-1688.47,15,0
    .goto 1412/1,-1214.91,-1618.60,15,0
    .goto 1412/1,-1208.74,-1670.320,15,0
--  .goto Mulgore,66.53,39.47,15,0 --Very deep inside the top of the mine, skipping
    .goto 1412/1,-1085.44,-1540.17,15,0
    .goto 1412/1,-1016.09,-1507.63,15,0 --Outside
    .goto 1412/1,-1122.95,-1476.80,15,0 --Outside
    >>Open the |cRXP_PICK_Blasting Supplies|r inside the mine and outside on the other side. Loot them for the |cRXP_LOOT_Seaforium Mining Charges|r
    >>|cRXP_WARN_Stay on the upper levels of the cave if possible|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
step
    #loop
    .goto 1412/1,-784.9,-2350.18,0
    .goto 1412/1,-597.9,-2301.54,50,0
    .goto 1412/1,-674.96,-2336.14,50,0
    .goto 1412/1,-784.9,-2350.18,50,0
    .goto 1412/1,-904.6,-2371.07,50,0
    .goto 1412/1,-1016.6,-2410.12,50,0
    .goto 1412/1,-784.9,-2350.18,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_He patrols along the eastern road|r
    .turnin 764 >>Turn in The Venture Co.
    .turnin 765 >>Turn in Supervisor Fizsprocket
	.unitscan Morin Cloudstalker
step << Druid
    #season 2
    #loop
    .goto 1412/1,-1360.3,-2568.01,0
    .goto 1412/1,-1403.97,-2457.38,50,0
    .goto 1412/1,-1360.3,-2568.01,50,0
    .goto 1412/1,-1232.89,-2544.03,50,0
    .goto 1412/1,-1127.57,-2516.98,50,0
    .goto 1412/1,-1117.3,-2373.13,50,0
    .goto 1412/1,-1218.51,-2345.38,50,0
    .goto 1412/1,-1320.23,-2306.34,50,0
    .goto 1412/1,-1426.06,-2295.72,50,0
    >>Kill |cRXP_ENEMY_Flatland Prowlers|r and |cRXP_ENEMY_Prairie Wolf Alphas|r. Loot them for |T134903:0|t[|cRXP_FRIENDLY_Idol of Ursine Rage|r]
    .collect 206954,1 --Idol of Ursine Rage (1)
    .mob Flatland Prowler
    .mob Prairie Wolf Alpha
    .train 410025,1
step << Druid
    #season 2
    .equip 18,206954 >> |cRXP_WARN_Equip the|r |T134903:0|t[|cRXP_FRIENDLY_Idol of Ursine Rage|r]
    .use 206954
    .train 410025,1
    .itemcount 206954,1
step << Druid
    #season 2
    #completewith next
    +|cRXP_WARN_Maintain 50+ rage for at least 60 seconds to be able to learn|r |T132135:0|t[Mangle]
step << Druid
    #season 2
    .train 410025 >> |cRXP_WARN_Use the|r |T134903:0|t[|cRXP_FRIENDLY_Idol of Ursine Rage|r] |cRXP_WARN_to train|r |T132135:0|t[Mangle]
    .use 206954
    .itemcount 206954,1
step << skip
    #label AlphaTeeth
    .goto 1412/1,-1403.97,-2457.38,50,0
    .goto 1412/1,-1360.3,-2568.01,50,0
    .goto 1412/1,-1232.89,-2544.03,50,0
    .goto 1412/1,-1127.57,-2516.98,50,0
    .goto 1412/1,-1117.3,-2373.13,50,0
    .goto 1412/1,-1218.51,-2345.38,50,0
    .goto 1412/1,-1320.23,-2306.34,50,0
    .goto 1412/1,-1426.06,-2295.72,50,0
    .goto 1412/1,-1360.3,-2568.01
    >>Kill |cRXP_ENEMY_Prairie Wolf Alphas|r in the area. Loot them for their |cRXP_LOOT_Teeth|r
    .complete 759,1 --Prairie Alpha Tooth (8)
    .mob Prairie Wolf Alpha
step << skip
    #softcore
	#completewith Thunderhorn2
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step << skip
    #hardcore
    #completewith Thunderhorn2
    .goto 1412/1,-341.02,-2173.79,150 >> Travel back to Bloodhoof Village
step << skip
    #label Thunderhorn2
    .goto 1412/1,-445.31,-2341.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mull|r
    .turnin 759 >>Turn in Wildmane Totem
    .accept 760 >>Accept Wildmane Cleansing
    .target Mull Thunderhorn
step
    .goto 1412/1,-1527.78,-2341.62,100,0
    .zone The Barrens >> Travel to The Barrens
    .isQuestAvailable 5922
step << Druid
    .goto 1413/1,-1881.35,-2383.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Get the Camp Taurajo flight path
    .fly Thunder Bluff >>Fly to Thunder Bluff
    .target Omusa Thunderhorn
    .isQuestAvailable 5922
step << Druid
    .goto 1456/1,38.32,-1300.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Pala|r
    .home >>Set your Hearthstone to Thunder Bluff
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 5922
step << Druid
    .goto 1456/1,-298.5,-1049.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hamuul Runetotem|r
    .accept 886 >>Accept The Barrens Oases
    .target Arch Druid Hamuul Runetotem
    .isQuestAvailable 5922
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
    .goto 1456/1,-283.89,-1039.96
    .turnin 5928 >>Turn in Heeding the Call
    .accept 5922 >>Accept Moonglade
    .target Arch Druid Hamuul Runetotem
    .target Turak Runetotem
    .isOnQuest 5928
step << Druid
    .goto 1456/1,-283.89,-1039.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
    .accept 5922 >>Accept Moonglade
    .target Arch Druid Hamuul Runetotem
    .target Turak Runetotem
step << Druid
    #completewith next
    .cast 18960 >>Cast |T135758:0|t[Teleport: Moonglade]
    .zoneskip Moonglade
step << Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite|r
    .turnin 5922 >>Turn in Moonglade
    .accept 5930 >>Accept Great Bear Spirit
    .target Dendrite Starblaze
step << Druid
    .goto 1450/1,-2286.12,8068.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Great Bear Spirit|r
    .complete 5930,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear. (1)
    .target Great Bear Spirit
    .skipgossip
step << Druid
    #completewith next
    .cast 18960 >>Cast |T135758:0|t[Teleport: Moonglade]
step << Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite|r
    .turnin 5930 >>Turn in Great Bear Spirit
    .accept 5932 >>Accept Back to Thunder Bluff
    .target Dendrite Starblaze
step << Druid
    #completewith DruidBearForm
    .hs >> Hearth to Thunder Bluff
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
step << Druid
    #completewith next
    .goto 1450/1,-2403.61,7785.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >> Fly to Thunder Bluff
    .target Bunthen Plainswind
    .zoneskip Thunder Bluff
    .cooldown item,6948,<0
step << Druid
    #label DruidBearForm
    .goto 1456/1,-283.89,-1039.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
    .turnin 5932 >>Turn in Back to Thunder Bluff
    .accept 6002 >>Accept Body and Heart
    .target Turak Runetotem
step << Druid
    #completewith next
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Fly to Camp Taurajo
    .target Tal
    .zoneskip Thunder Bluff,1
step << Druid
    .goto 1413/1,-1633.08,-2499.35
    .use 15710 >>Run to the Moonkin Stone and use the |T132857:0|t[Cenarion Lunardust]. Kill |cRXP_ENEMY_Lunaclaw|r
    >>|cRXP_WARN_Steer clear of the|r |cRXP_ENEMY_Thunderheads|r |cRXP_WARN_in the area|r
    .complete 6002,1 --Face Lunaclaw and earn the strength of body and heart it possesses. (1)
    .use 15710
    .mob Lunaclaw
step << !Druid
    .goto 1413/1,-1881.35,-2383.82
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Get the Camp Taurajo flight path
	.target Omusa Thunderhorn
    .isQuestAvailable 5922
step << Tauren
    .goto 1413/1,-1926.95,-2346.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kirge Sternhorn|r
    .accept 854 >>Accept Journey to the Crossroads
    .target Kirge Sternhorn
step
    #completewith next
    .subzone 380 >>Travel north toward The Crossroads
step
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .turnin 886 >>Turn in The Barrens Oases << Druid
    .accept 870 >>Accept The Forgotten Pools
    .target Tonga Runetotem
step
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Innkeeper Boorand|r
    .home >>Set your Hearthstone to Crossroads
    .target Innkeeper Boorand Plainswind
    .bindlocation 380,1
    .subzoneskip 380
step << Tauren
    .goto 1413/1,-2595.75,-468.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r
    .turnin 854 >>Turn in Journey to the Crossroads
    .target Thork
step
    .goto 1413/1,-2566.36,-350.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jahan|r
    .accept 6361 >>Accept A Bundle of Hides
    .target Jahan Hawkwing
step
    #xprate <2.1
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    .accept 848 >>Accept Fungal Spores
    .accept 1492 >>Accept Wharfmaster Dizzywig
    .target Apothecary Helbrim
step
    #xprate <2.1
    #completewith next
    >>Collect |cRXP_LOOT_Laden Mushrooms|r around The Forgotten Pools
    >>|cRXP_WARN_Keep maximum distance from |cRXP_ENEMY_Kolkar|r |cRXP_WARN_as you loot the mushrooms. They are level 12-14|r
    >>|cRXP_WARN_The follow-up of this quest has the powerful |cRXP_FRIENDLY_Cauldron Stirrer|r |cRXP_WARN_as a reward. You can skip this quest for now if you do not intend to use it|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #xprate <2.1
    .goto 1413/1,-1943.16,89.64
    >>Dive underwater to the |cRXP_PICK_Bubbling Fissure|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #xprate <2.1
    #loop
    .goto 1413/1,-1957.35,38.29,0
    .goto 1413/1,-1957.35,38.29,40,0
    .goto 1413/1,-1957.35,126.12,40,0
    .goto 1413/1,-1896.55,92.34,40,0
    .goto 1413/1,-1825.62,-36.03,40,0
    >>Collect |cRXP_LOOT_Laden Mushrooms|r around The Forgotten Pools
    >>|cRXP_WARN_Keep maximum distance from |cRXP_ENEMY_Kolkar|r |cRXP_WARN_in the area. They are level 12-14|r
    >>|cRXP_WARN_The follow-up of this quest has the powerful |cRXP_FRIENDLY_Cauldron Stirrer|r |cRXP_WARN_as a reward. You can skip this quest for now if you do not intend to use it|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #xprate <2.1
    #softcore
	#completewith ZamahPickup
    .deathskip >> Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r
step
    #xprate <2.1
    #hardcore
    #completewith ZamahPickup
    .subzone 380 >> Travel back to the Crossroads
step
    #xprate <2.1
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>Turn in The Forgotten Pools
    .accept 877 >>Accept The Stagnant Oasis
    .target Tonga Runetotem
    .isQuestComplete 870
step
    #xprate <2.1
    #optional
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>Turn in The Forgotten Pools
    .accept 877 >>Accept The Stagnant Oasis
    .target Tonga Runetotem
    .isQuestTurnedIn 877
step
    #xprate <2.1
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_WARN_Wait for the RP to finish|r
    >>|cRXP_WARN_This starts a 45-minute timed quest|r
    .turnin 848 >>Turn in Fungal Spores
    .timer 7,Fungal Spores RP
    .accept 853 >>Accept Apothecary Zamah
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #xprate <2.1
    #optional
    #label ZamahPickup
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_WARN_This starts a 45-minute timed quest|r
    .accept 853 >>Accept Apothecary Zamah
    .target Apothecary Helbrim
    .isQuestTurnedIn 848
step
    #xprate <2.1
    #sticky
    #completewith CauldronStirrer
    +|cRXP_WARN_You are on a timed quest, don't go afk. It will get turned in around 5-10 minutes after pick-up|r
    .isOnQuest 853
step
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .turnin 6361 >>Turn in A Bundle of Hides
    .accept 6362 >>Accept Ride to Thunder Bluff
    .target Devrak
step
    #completewith CauldronStirrer
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >>Fly to Thunder Bluff
    .target Devrak
    .zoneskip Thunder Bluff
step
    .goto 1456/1,40.72,-1238.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Turn in Ride to Thunder Bluff
    .accept 6363 >>Accept Tal the Wind Rider Master
    .target Ahanu
step
    .goto 1456/1,-123.15,-1412.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor|r
    .turnin 861 >>Turn in The Hunter's Way
    .accept 860 >>Accept Sergra Darkthorn
    .target Melor Stonehoof
    .isQuestComplete 861
step
    .goto 1456/1,-123.15,-1412.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Melor|r
    .accept 860 >>Accept Sergra Darkthorn
    .target Melor Stonehoof
    .isQuestTurnedIn 861
step << Hunter
	.goto 1456/1,-82.45,-1472.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holt|r
	.turnin 6089 >> Turn in Training the Beast
    .target Holt Thunderhorn
step << Hunter
    #optional
	.goto 1456/1,-82.45,-1472.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Holt|r
    .train 14281 >> Train your class spells
    .target Holt Thunderhorn
    .xp <12,1
step << Hunter
    .goto 1456/1,-47.79,-1434.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hesuwa|r
    >>|cRXP_WARN_Drag|r |T132162:0|t[Beast Training] |cRXP_WARN_onto your Action Bars. Teach skills to your pet|r
    .train 24547 >>Train your pet spells
    .target Hesuwa Thunderhorn
step << Warrior
    #optional
    .goto 1456/1,-84.43,-1444.940
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ker|r
    .train 7384 >> Train your class spells
    .target Ker Ragetotem
    .xp <12,1
step << Druid
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Train Two-Handed Maces
    .target Ansekhwa
    .money <0.1154
step << Warrior/Hunter
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Train Staves
    .target Ansekhwa
step << Shaman
    #season 2
    .goto 1456/1,122.13,-1263.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eyahn|r
    .accept 744 >>Accept Preparation for Ceremony
    .target Eyahn Eagletalon
step << Shaman
    #season 2
    .goto 1456/1,104.91,-1308.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    >>|cRXP_WARN_He is|r |T132320:0|t[Stealthed]
    .turnin 76156 >>Turn in Stalk With The Earthmother
    .accept 76160 >>Accept Stalk With The Earthmother
    .target Boarton Shadetotem
    .train 410104,1
step
    #xprate <2.1
    #completewith next
    .goto 1456/1,222.96,-1079.42,40,0
    .goto 1456/1,219.09,-1051.44,10 >> Travel to the Spirit Rise and enter the pools of vision
step
    #xprate <2.1
    #label CauldronStirrer
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >>Turn in Apothecary Zamah
    .target Apothecary Zamah
    .isOnQuest 853
step
    #xprate <2.1
    #optional
    #completewith ReturntoJahan
    +|cRXP_WARN_Equip the|r |T135145:0|t[Cauldron Stirrer]
    .use 5340
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
    .itemcount 5340,1
step << Shaman
    #optional
    .goto 1456/1,269.92,-980.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tigor|r
    .train 547 >> Train your class spells
    .target Tigor Skychaser
    .xp <12,1
step << Warrior
    #season 2
    #completewith next
    .goto 1456/1,216.80,-975.25,-1
    .goto 1456/1,243.31,-979.77,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Netali|r and |cRXP_FRIENDLY_Mooart|r on the Spirit Rise
    +Kill |cRXP_FRIENDLY_Mooart|r when he becomes hostile
    .target Netali Proudwind
    .target Mooart
    .skipgossip
    --Gossipoption
step << Warrior
    #season 2
    .goto 1456/1,216.80,-975.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Netali|r
    >>Receive the |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r] from her
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>Use the |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenzied Assault|r]
    .use 204716
    .itemcount 204716,1
step
    #label ReturntoJahan
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Turn in Tal the Wind Rider Master
    .accept 6364 >>Accept Return to Jahan
    .target Tal
step
    #xprate <2.1
    .goto 1456/1,-109.58,-1209.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Cairne|r
    .turnin 775 >>Turn in Journey into Thunder Bluff
    --.accept 776 >>Accept Rites of the Earthmother
    .target Cairne Bloodhoof
step << Druid
    .goto 1456/1,-281.56,-1039.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
    .turnin 6002 >>Turn in Body and Heart
    .target Turak Runetotem
step << Druid
    #optional
    .goto 1456/1,-281.56,-1039.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Turak|r
    .train 8936 >> Train your class spells
    .target Turak Runetotem
    .xp <12,1
step
    .goto 1456/1,-218.13,-1055.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rahauro|r
    .accept 5722 >> Accept Searching for the Lost Satchel
    .accept 5723 >> Accept Testing an Enemy's Strength
    .target Rahauro
    .dungeon RFC
step
    #ah
    .goto 1456/1,52.93,-1150.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mooranta|r
    >>|cRXP_WARN_This will unlock an easy quest. If you already have 2 professions, skip this step|r
    .train 8613 >>Train |T134366:0|t[Skinning]
    .target Mooranta
step
    #optional
    #ah
    .goto 1456/1,53.35,-1161.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veren|r
    .accept 768 >> Accept Gathering Leather
    .target Veren Tallstrider
    .skill skinning,<1,1
step
    #optional
    #ah
    .goto 1456/1,95.1,-1210.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Stampi|r
    >>|cRXP_BUY_Buy Twelve|r |T134252:0|t[Light Leather] |cRXP_BUY_from the Auction House|r
    .collect 2318,12,768,1 --Light Leather (12)
    .target Auctioneer Stampi
    .skill skinning,<1,1
step
    #optional
    #ah
    .goto 1456/1,53.35,-1161.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Veren|r
    .turnin 768 >> Turn in Gathering Leather
    .target Veren Tallstrider
    .skill skinning,<1,1
step << Hunter
    .goto 1456/1,-29.42,-1182.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kaga|r
    >>|cRXP_BUY_Buy|r |T133972:0|t[Tough Jerky] |cRXP_BUY_from her to feed your pet|r
    .collect 117,5,744,1 --Tough Jerky (5)
    .target Kaga Mistrunner
step << Shaman
    #season 2
    #completewith next
    >>Kill |cRXP_ENEMY_Windfury Sorceresses|r. Loot them for their |cRXP_LOOT_Azure Feather|r
    >>Kill |cRXP_ENEMY_Windfury Matriarchs|r. Loot them for their |cRXP_LOOT_Bronze Feathers|r
    .complete 744,1 --Azure Feather (6)
    .mob +Windfury Sorceress
    .complete 744,2 --Bronze Feather (6)
    .mob +Windfury Matriarch
    .train 410104,1
step << Shaman
    #season 2
    #loop
    .goto 1412/1,137.79,-696.25,0
    .goto 1412/1,54.57,-821.94,10,0
    .goto 1412/1,106.46,-644.87,10,0
    .goto 1412/1,95.15,-622.61,10,0
    .goto 1412/1,67.41,-550.340,10,0
    .goto 1412/1,92.58,-528.76,10,0
    .goto 1412/1,128.55,-615.07,10,0
    .goto 1412/1,131.12,-629.46,10,0
    .goto 1412/1,208.69,-656.86,10,0
    .goto 1412/1,188.14,-663.71,10,0
    .goto 1412/1,187.63,-704.470,10,0
    .goto 1412/1,170.16,-712.69,10,0
    .goto 1412/1,165.02,-727.07,10,0
    .goto 1412/1,137.79,-696.25,10,0
    >>Loot |cRXP_LOOT_Windfury Cones|r on the ground
    .collect 206170,8,76160,1 --Windfury Cone (8)
    .train 410104,1
step << Shaman
    #season 2
    #loop
    .goto 1412/1,419.33,-1238.77,0
    .goto 1412/1,496.39,-940.79,0
    .goto 1412/1,419.33,-1238.77,40,0
    .goto 1412/1,496.39,-940.79,40,0
    >>Kill |cRXP_ENEMY_Windfury Sorceresses|r. Loot them for their |cRXP_LOOT_Azure Feathers|r
    >>Kill |cRXP_ENEMY_Windfury Matriarchs|r. Loot them for their |cRXP_LOOT_Bronze Feathers|r
    .complete 744,1 --Azure Feather (6)
    .mob +Windfury Sorceress
    .complete 744,2 --Bronze Feather (6)
    .mob +Windfury Matriarch
step << Shaman
    #season 2
    #completewith next
    .zone Thunder Bluff >> Travel back to Thunder Bluff
step << Shaman
    #season 2
    .goto 1456/1,122.13,-1263.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eyahn|r
    .turnin 744 >>Turn in Preparation for Ceremony
    .target Eyahn Eagletalon
step << Shaman
    #season 2
    .goto 1456/1,104.91,-1308.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    >>|cRXP_WARN_He is|r |T132320:0|t[Stealthed]
    .turnin 76160 >>Turn in Stalk With The Earthmother
    .accept 76240 >>Accept Stalk With The Earthmother
    .target Boarton Shadetotem
    .train 410104,1
step << Shaman
    #season 2
    #ah
    .goto 1456/1,44.58,-1263.320,0
    .goto 1456/1,94.89,-1210.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Auctioneer Stampi|r
    >>|cRXP_BUY_Buy a|r |T133894:0|t[Raw Brilliant Smallfish] |cRXP_BUY_from the Auction House|r
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .target Auctioneer Stampi
    .train 410104,1
step << Shaman
    #season 2
    #ssf
    #completewith Sewa
    .goto 1456/1,35.18,-1208.98,12,0
    .goto 1456/1,25.16,-1198.40,4,0
    .goto 1456/1,31.43,-1192.07,4,0
    .goto 1456/1,36.02,-1196.11,4,0
    .goto 1456/1,32.99,-1201.400,4,0
    .goto 1456/1,-65.54,-1177.18,15 >>Travel toward |cRXP_FRIENDLY_Sewa Mistrunner|r
    .train 410104,1
step << Shaman
    #season 2
    #ssf
    #sticky
    #label Kah
    .goto 1456/1,-69.19,-1172.80,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kah Mistrunner|r
    .train 7734 >>Train |T136245:0|t[Fishing]
    .target Kah Mistrunner
    .train 410104,1
step << Shaman
    #season 2
    #ssf
    #label Sewa
    .goto 1456/1,-65.54,-1177.18,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sewa Mistrunner|r
    >>|cRXP_BUY_Buy a|r |T132932:0|t[Fishing Pole] |cRXP_BUY_and|r |T134335:0|t[Shiny Bauble] |cRXP_BUY_from her|r
    .collect 6256,1 --Fishing Pole (1)
    .collect 6529,1 --Shiny Bauble (1)
    .target Sewa Mistrunner
    .train 410104,1
step << Shaman
    #season 2
    #ssf
    #completewith Fish
    #requires Kah
    #label Pole
    .equip 16,6256 >> |cRXP_WARN_Equip the|r |T132932:0|t[Fishing Pole]
    .use 6256
    .train 410104,1
step << Shaman
    #season 2
    #ssf
    #completewith Fish
    #requires Pole
    .aura 8087 >> |cRXP_WARN_Attach the|r |T134335:0|t[Shiny Bauble] |cRXP_WARN_to your|r |T132932:0|t[Fishing Pole]
    .use 6529
    .train 410104,1
step << Shaman
    #season 2
    #ssf
    #label Fish
    #requires Kah
    .goto 1456/1,94.78,-1257.41
    >>Fish in the pond until you get a |T133894:0|t[|cRXP_LOOT_Raw Brilliant Smallfish|r]
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .train 410104,1
step << Shaman
    #season 2
    >>Use the |T132147:0|t[Knife Set] to create |T134007:0|t[Fish Chunks]
    .complete 76240,1 --Fish Chunks (1)
    .use 206344
    .train 410104,1
step << Shaman
    #season 2
    .goto 1456/1,104.91,-1308.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Boarton Shadetotem|r
    >>|cRXP_WARN_He is|r |T132320:0|t[Stealthed]
    .turnin 76240 >>Turn in Stalk With The Earthmother
-- .train 410104 >>|cRXP_WARN_You will train|r |T236289:0|t[Lava Lash] |cRXP_WARN_and|r |T132147:0|t[Dual Wield] |cRXP_WARN_upon turnin|r
    .target Boarton Shadetotem
    .train 410104,1
step
    #completewith HidesTurnIn
    .hs >> Hearth to The Crossroads
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step
    #completewith next
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Fly to Crossroads
    .target Tal
    .zoneskip The Barrens
    .cooldown item,6948,<0
step
    #label HidesTurnIn
    .goto 1413/1,-2566.36,-350.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Jahan|r
    .turnin 6364 >>Turn in Return to Jahan
    .target Jahan Hawkwing
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Accept Wharfmaster Dizzywig
    .target Apothecary Helbrim
step
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Accept Disrupt the Attacks
    .accept 5041 >>Accept Supplies for the Crossroads
    .target Thork
step
    #xprate <2.1
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_He is at the top of the tower|r
    .accept 867 >>Accept Harpy Raiders
    .target Darsok Swiftdagger
step
    #optional
    .goto 1413/1,-2669.72,-481.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .turnin 860 >>Turn in Sergra Darkthorn
    .accept 844 >>Accept Plainstrider Menace
    .target Sergra Darkthorn
    .isOnQuest 860
step
    .goto 1413/1,-2669.72,-481.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sergra|r
    .accept 844 >>Accept Plainstrider Menace
    .target Sergra Darkthorn
step
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Accept Raptor Thieves
    .target Gazrog
step << Tauren Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Talk to|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Buy a|r |T135613:0|t[Hunter's Boomstick] |cRXP_BUY_from him|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .money <0.1324
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step << Tauren Hunter
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_Equip the|r |T135613:0|t[Hunter's Boomstick]
    .use 2511
    .itemcount 2511,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Shaman
    #completewith next
    >>Check for |cRXP_PICK_Chen's Empty Keg|r next to |cRXP_FRIENDLY_Kranal|r. Loot it and start the quest
    >>|cRXP_WARN_You can get it later if it's not there|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Accept Chen's Empty Keg
    .use 4926
step << Shaman
    .goto 1413/1,-3037.56,264.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kranal|r
    .turnin 2984 >>Turn in Call of Fire
    .accept 1524 >>Accept Call of Fire
    .target Kranal Fiss
step << Shaman
    #completewith next
    .goto 1411/1,-3905.13,-228.41,10,0
    .goto 1411/1,-3899.31,-241.45,8,0
    .goto 1411/1,-3899.31,-241.45,8,0
    .goto 1411/1,-3906.71,-270.71,8,0
    .goto 1411/1,-3910.94,-247.45,8,0
    .goto 1411/1,-3931.56,-240.75,8,0
    .goto 1411/1,-3964.35,-242.51,8,0
    .goto 1411/1,-3974.39,-228.76,8,0
    .goto 1411/1,-4020.92,-219.95,8,0
    .goto 1411/1,-4034.67,-232.64,8,0
    .goto 1411/1,-4033.08,-255.91,10 >> Travel the path up the mountain to |cRXP_FRIENDLY_Telf|r
    >>|cRXP_WARN_Be careful to not fall of the mountain, the path is very narrow. You could die if you fall|r
step << Shaman
    #label CallofFire2
    .goto 1411/1,-3999.24,-268.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Turn in Call of Fire
    .accept 1525 >>Accept Call of Fire
    .target Telf Joolam
step << Shaman
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Accept Conscript of the Horde
    .target Takrin Pathseeker
step << Shaman
    #completewith next
    .goto 1411/1,-4834.14,418.07,30,0
    .goto 1411/1,-4754.3,796.66,20 >> Go into Dustwind Cave
step << Shaman
    #loop
    .goto 1411/1,-4774.39,780.80,0
    .goto 1411/1,-4774.39,780.80,20,0
    .goto 1411/1,-4749.01,822.39,12,0
    .goto 1411/1,-4767.52,825.92,12,0
    .goto 1411/1,-4772.28,848.12,12,0
    .goto 1411/1,-4756.41,863.630,12,0
    .goto 1411/1,-4715.70,861.87,12,0
    .goto 1411/1,-4706.71,902.41,12,0
    >>Kill |cRXP_ENEMY_Cultists|r. Loot them for a |cRXP_LOOT_Reagent Pouch|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step << Shaman
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Turn in Conscript of the Horde
    .accept 842 >>Accept Crossroads Conscription
    .target Kargal Battlescar
step << Warrior
    .goto 1413/1,-3598.95,186.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uzzek|r
    .turnin 1505 >>Turn in Veteran Uzzek
    .accept 1498 >>Accept Path of Defense
    .target Uzzek
step << Warrior
    #loop
    .goto 1411/1,-4042.6,812.52,0
    .goto 1411/1,-4030.44,724.04,40,0
    .goto 1411/1,-4042.6,812.52,40,0
    .goto 1411/1,-4030.44,875.62,40,0
    .goto 1411/1,-4045.25,925.32,40,0
    .goto 1411/1,-4077.5,960.22,40,0
    .goto 1411/1,-4210.22,952.11,40,0
    .goto 1411/1,-4042.6,812.52,40,0
    >>Kill |cRXP_ENEMY_Lightning Hides|r. Loot them for their |cRXP_ENEMY_Scales|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
step << Warrior
    .goto 1413/1,-3598.95,186.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Turn in Path of Defense
    .accept 1502 >>Accept Thun'grim Firegaze
    .target Uzzek
step
    #optional
    .abandon 761 >>Abandon Swoop Hunting
step
    #optional
    .abandon 766 >>Abandon Mazzranache
]])
