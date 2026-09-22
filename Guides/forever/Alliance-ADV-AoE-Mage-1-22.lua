local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

local L = GetLocale() if L and RXP.enabledLocale[L] then return end
RXPGuides.RegisterGuide([[
#forever
<< Human Mage
#name 1-10 ADV Elwynn Forest Human Mage AoE
#version 2
#group RestedXP ADV AoE Alliance Mage
#defaultfor Human Mage
#next 10-11 ADV Dun Morogh Human Mage AoE


step << !Human Mage
    #season 2
    #completewith next
    +In Season of Discovery, you should NOT start outside of your race's starter zone as a Mage, as you will be unable to get your first rune here (|T133816:0|t[Engrave Gloves - Ice Lance])
step
    #completewith next
    +You have selected the Advanced guide. This is the fastest guide for the fastest class in the game (Alliance Mage). As such, there will be a lot of niche mechanics used as well as highly difficult AoE pulls. Stay persistent while you learn! Good Luck!
step
    #completewith next
    .goto 1429/0,-146.20,-8999.660,50,0
    +|cRXP_WARN_Kill |cRXP_ENEMY_Young Wolves|r. Loot them until you have 10 copper worth of vendor items|r
    .mob Young Wolf
step
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willem|r
    .accept 783 >> Accept A Threat Within
    .target Deputy Willem
step
    .goto 1429/0,-112.54,-8899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danil|r
    .vendor >> Vendor Trash until you have 10+ copper
    .target Brother Danil
step
    .goto 1429/0,-139.61,-8910.09,15,0
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_McBride|r inside
    .turnin 783 >> Turn in A Threat Within
    .accept 7 >> Accept Kobold Camp Cleanup
    .target Marshal McBride
step
    #completewith next
    .goto 1429/0,-164.25,-8891.80,10,0
    .goto 1429/0,-174.32,-8880.92,10,0
    .goto 1429/0,-188.20,-8868.89,10,0
    .goto 1429/0,-180.56,-8862.87,5,0
    >>Jump from the stairs to the rail
    .goto 1429/0,-188.20,-8851.76,10 >>Travel toward |cRXP_FRIENDLY_Khelden|r upstairs
step
    .goto 1429/0,-188.20,-8851.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khelden|r
    .train 1459 >> Train |T135932:0|t[Arcane Intellect]
    .target Khelden Bremen
step
    #completewith next
    .goto 1429/0,-188.20,-8868.89,10,0
    .goto 1429/0,-174.32,-8880.92,10,0
    .goto 1429/0,-164.25,-8891.80,10,0
    .goto 1429/0,-136.52,-8933.53,10 >>Travel toward |cRXP_FRIENDLY_Willem|r
step
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willem|r
    .accept 5261 >> Accept Eagan Peltskinner
    .target Deputy Willem
step
    #completewith next
    .goto 1429/0,-64.64,-8924.9,70,0
    .goto 1429/0,-81.64,-8850.37
    +|cRXP_WARN_Kill |cRXP_ENEMY_Young Wolves|r. Loot them until you have 50 copper worth of vendor items (including your armor)|r
    .mob Young Wolf
step
    .goto 1429/0,-112.54,-8899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danil|r
    >>|cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .vendor >> Vendor Trash
    .collect 159,10,7,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto 1429/0,-163.21,-8869.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eagan|r
    .turnin 5261 >> Turn in Eagan Peltskinner
    .accept 33 >> Accept Wolves Across The Border
    .target Eagan Peltskinner
step
    #completewith next
    >>Kill |cRXP_LOOT_Young Wolves|r and |cRXP_LOOT_Timber Wolves|r. Loot them for their |cRXP_LOOT_Tough Wolf Meat|r
    >>Focus on the |cRXP_LOOT_Young Wolves|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
	.mob Young Wolf
    .mob Timber Wolf
step
#loop
	.line Elwynn Forest,47.01,35.68,47.70,35.04,49.81,35.14,49.82,36.23,49.18,37.16,47.01,35.68
	.goto 1429/0,-96.22,-8765.43,35,0
	.goto 1429/0,-120.17,-8750.61,35,0
	.goto 1429/0,-193.41,-8752.93,35,0
	.goto 1429/0,-193.75,-8778.16,35,0
	.goto 1429/0,-171.54,-8799.68,35,0
	.goto 1429/0,-96.22,-8765.43,35,0
    >>Kill |cRXP_ENEMY_Kobold Vermin|r
    >>|cRXP_WARN_Kill Level 1 |cRXP_ENEMY_Kobold Vermin|r if possible|r
    .complete 7,1 --Kill Kobold Vermin (x10)
	.mob Kobold Vermin
step
#loop
	.line Elwynn Forest,49.32,37.91,48.24,37.88,46.18,37.29,45.69,39.05,46.03,40.91,48.04,39.55,49.32,37.91
	.goto 1429/0,-176.40,-8817.04,35,0
	.goto 1429/0,-138.91,-8816.35,35,0
	.goto 1429/0,-67.41,-8802.69,35,0
	.goto 1429/0,-50.41,-8843.43,35,0
	.goto 1429/0,-62.21,-8886.48,35,0
	.goto 1429/0,-131.97,-8855.00,35,0
	.goto 1429/0,-176.40,-8817.04,35,0
    >>Kill |cRXP_LOOT_Young Wolves|r and |cRXP_LOOT_Timber Wolves|r. Loot them for their |cRXP_LOOT_Tough Wolf Meat|r
    >>Focus on the |cRXP_LOOT_Young Wolves|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
	.mob Young Wolf
    .mob Timber Wolf
step
    .goto 1429/0,-163.21,-8869.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eagan|r
    .turnin 33,1 >> Turn in Wolves Across The Border
    .target Eagan Peltskinner
step
    .goto 1429/0,-112.54,-8899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danil|r
    |cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .vendor >>Vendor Trash
    .collect 159,10,15,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_McBride|r inside
    .turnin 7 >> Turn in Kobold Camp Cleanup
    .accept 15 >> Accept Investigate Echo Ridge
    .accept 3104 >> Accept Glyphic Letter
    .target Marshal McBride
step
#loop
	.line Elwynn Forest,47.25,36.41,47.39,35.77,47.35,34.06,46.29,32.42,47.75,32.77,50.11,34.98,47.25,36.41
	.goto 1429/0,-104.55,-8782.32,35,0
	.goto 1429/0,-109.41,-8767.51,35,0
	.goto 1429/0,-108.02,-8727.93,35,0
	.goto 1429/0,-71.23,-8689.97,35,0
	.goto 1429/0,-121.91,-8698.07,35,0
	.goto 1429/0,-203.82,-8749.22,35,0
	.goto 1429/0,-104.55,-8782.32,35,0
    >>Kill |cRXP_ENEMY_Kobold Workers|r
    .complete 15,1 --Kill Kobold Worker (x10)
	.mob Kobold Worker
step
#loop
	.line Elwynn Forest,49.32,37.91,48.24,37.88,46.18,37.29,45.69,39.05,46.03,40.91,48.04,39.55,49.32,37.91
	.goto 1429/0,-176.40,-8817.04,35,0
	.goto 1429/0,-138.91,-8816.35,35,0
	.goto 1429/0,-67.41,-8802.69,35,0
	.goto 1429/0,-50.41,-8843.43,35,0
	.goto 1429/0,-62.21,-8886.48,35,0
	.goto 1429/0,-131.97,-8855.00,35,0
	.goto 1429/0,-176.40,-8817.04,35,0
    .xp 3+1110 >> Grind to 1110+/1400xp
	.mob Young Wolf
	.mob Kobold Vermin
    .mob Timber Wolf
 step
    .goto 1429/0,-112.54,-8899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danil|r
    >>|cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .vendor >>Vendor Trash
    .collect 159,10,15,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_McBride|r inside
    .turnin 15 >> Turn in Investigate Echo Ridge
    .accept 21 >> Accept Skirmish at Echo Ridge
    .target Marshal McBride
step
    #completewith next
    .goto 1429/0,-164.25,-8891.80,10,0
    .goto 1429/0,-174.32,-8880.92,10,0
    .goto 1429/0,-188.20,-8868.89,10,0
    .goto 1429/0,-180.56,-8862.87,5,0
    >>Jump from the stairs to the rail
    .goto 1429/0,-188.20,-8851.76,10 >>Travel toward |cRXP_FRIENDLY_Khelden|r upstairs
step
    #season 0
    .goto 1429/0,-188.20,-8851.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khelden|r
    .turnin 3104 >> Turn in Glyphic Letter
    .train 116 >> Train |T135846:0|t[Frostbolt]
    .target Khelden Bremen
step
    #season 2
    .goto 1429/0,-188.20,-8851.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khelden|r
    .accept 77620 >> Accept Spell Research << Human
    .turnin 3104 >> Turn in Glyphic Letter
    .train 116 >> Train |T135846:0|t[Frostbolt]
    .target Khelden Bremen
step
    #completewith next
    .goto 1429/0,-188.20,-8868.89,10,0
    .goto 1429/0,-174.32,-8880.92,10,0
    .goto 1429/0,-164.25,-8891.80,10,0
    .goto 1429/0,-136.52,-8933.53,10 >>Travel toward |cRXP_FRIENDLY_Willem|r
step
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willem|r
    .accept 18 >> Accept Brotherhood of Thieves
    .target Deputy Willem
step
    #season 2
    #loop
    #label CALEENCI
    #completewith RedBurlapBandana
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    >>Kill |cRXP_ENEMY_Defias Thugs|r. Loot them for the |T134939:0|t|cRXP_LOOT_[Spell Notes: CALE ENCI]|r
    >>|cRXP_WARN_NOTE: You will be unable to train|r |T133816:0|t[Engrave Gloves - Ice Lance] |cRXP_WARN_here as you can only get a|r |T133736:0|t[Comprehension Primer] |cRXP_WARN_in your race's starting zone|r << !Human
    .collect 203751,1,77620,1 -- Spell Notes: CALE ENCI (1)
    .mob Defias Thug
    .train 401760,1
step << Human
    #season 2
    #requires CALEENCI
    #completewith RedBurlapBandana
    .train 401760 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_LOOT_[Spell Notes: CALE ENCI]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Ice Lance]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step
    #loop
    #label RedBurlapBandana
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    .goto 1429/0,-288.51,-9068.87,30,0
    .goto 1429/0,-335.02,-9108.91,30,0
    .goto 1429/0,-376.67,-9073.73,30,0
    .goto 1429/0,-388.47,-9001.28,30,0
    .goto 1429/0,-333.97,-9028.59,30,0
#loop
	.line Elwynn Forest,51.14,49.29,52.55,48.75,53.81,48.09,54.58,49.02,55.15,47.86,54.76,45.96,53.81,44.79,,51.14,49.29
	.goto 1429/0,-239.57,-9080.44,35,0
	.goto 1429/0,-288.51,-9067.94,35,0
	.goto 1429/0,-332.24,-9052.67,35,0
	.goto 1429/0,-358.96,-9074.19,35,0
	.goto 1429/0,-378.75,-9047.34,35,0
	.goto 1429/0,-365.21,-9003.37,35,0
	.goto 1429/0,-332.24,-8976.29,35,0
	.goto 1429/0,-239.57,-9080.44,35,0
    >>Kill |cRXP_ENEMY_Defias Thugs|r. Loot them for |cRXP_LOOT_Red Burlap Bandanas|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob Defias Thug
step
    #optional
    #season 2
    #loop
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    .goto 1429/0,-288.51,-9068.87,50,0
    .goto 1429/0,-335.02,-9108.91,50,0
    .goto 1429/0,-376.67,-9073.73,50,0
    .goto 1429/0,-388.47,-9001.28,50,0
    .goto 1429/0,-333.97,-9028.59,50,0
    >>Kill |cRXP_ENEMY_Defias Thugs|r. Loot them for the |T134939:0|t|cRXP_LOOT_[Spell Notes: CALE ENCI]|r
    >>|cRXP_WARN_NOTE: You will be unable to train|r |T133816:0|t[Engrave Gloves - Ice Lance] |cRXP_WARN_here as you can only get a|r |T133736:0|t[Comprehension Primer] |cRXP_WARN_in your race's starting zone|r << !Human
    .collect 203751,1,77620,1 -- Spell Notes: CALE ENCI (1)
    .mob Defias Thug
    .train 401760,1
step << Human
    #optional
    #season 2
    .train 401760 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_LOOT_[Spell Notes: CALE ENCI]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Ice Lance]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willem|r
    .turnin 18,5 >> Turn in Brotherhood of Thieves
    .accept 6 >> Accept Bounty on Garrick Padfoot
    .accept 3903 >> Accept Milly Osworth
    .target Deputy Willem
step
    #completewith Laborer
    +Equip the |T135145:0|t[Militia Quarterstaff]
    .use 1159
    .itemcount 1159,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.7
step
    .goto 1429/0,-112.54,-8899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danil|r
    >>|cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .vendor >> Vendor Trash
    .collect 159,10,21,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    #completewith next
    .goto 1429/0,-122.25,-8671.45,40 >>Go inside the mine
step
    #label Laborer
    .goto 1429/0,-130.24,-8649.23,40,0
    .goto 1429/0,-141.69,-8607.11,40,0
    .goto 1429/0,-150.71,-8554.57,40,0
    .goto 1429/0,-198.26,-8535.36,40,0
    .goto 1429/0,-209.37,-8560.59
    >>Kill |cRXP_ENEMY_Kobold Laborers|r
    .complete 21,1 --Kill Kobold Laborer (x12)
	.mob Kobold Laborer
step
    .goto 1429/0,-224.3,-8850.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milly|r
    .turnin 3903 >> Turn in Milly Osworth
    .accept 3904 >> Accept Milly's Harvest
    .target Milly Osworth
step
    #completewith Harvest
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto 1429/0,-327.73,-9034.15,35,0
	.goto 1429/0,-297.88,-9068.64,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-333.63,-9112.61,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-327.73,-9034.15,35,0
    .xp 5+1175 >> Grind to 1175+/2800xp
    .mob Defias Thug
step
    #completewith next
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto 1429/0,-327.73,-9034.15,35,0
	.goto 1429/0,-297.88,-9068.64,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-333.63,-9112.61,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-327.73,-9034.15,35,0
    >>Loot the |cRXP_PICK_Buckets of Grapes|r on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto 1429/0,-461.01,-9056.37
    >>Kill |cRXP_ENEMY_Garrick Padfoot|r. Loot him for |cRXP_LOOT_Garrick's Head|r
    .complete 6,1 --Collect Garrick's Head (x1)
	.mob Garrick Padfoot
step
    #label Harvest
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto 1429/0,-327.73,-9034.15,35,0
	.goto 1429/0,-297.88,-9068.64,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-333.63,-9112.61,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-327.73,-9034.15,35,0
    >>Loot the |cRXP_PICK_Buckets of Grapes|r on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto 1429/0,-327.73,-9034.15,35,0
	.goto 1429/0,-297.88,-9068.64,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-333.63,-9112.61,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-327.73,-9034.15,35,0
    .xp 5+1175 >> Grind to 1175+/2800xp
    .mob Defias Thug
step
    .goto 1429/0,-224.3,-8850.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milly|r
    .turnin 3904 >>Turn in Milly's Harvest
    .accept 3905 >>Accept Grape Manifest
    .target Milly Osworth
step
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willem|r
    .turnin 6,1 >> Turn in Bounty on Garrick Padfoot
    .target Deputy Willem
step
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_McBride|r inside
    .turnin 21,3 >> Turn in Skirmish at Echo Ridge
    .accept 54 >> Accept Report to Goldshire
    .target Marshal McBride
step
    #completewith next
    .goto 1429/0,-171.54,-8908.00,10,0
    .goto 1429/0,-184.38,-8901.52,10,0
    .goto 1429/0,-178.83,-8888.10,10,0
    .goto 1429/0,-164.60,-8892.50,10,0
    .goto 1429/0,-172.23,-8907.31,10,0
    .goto 1429/0,-185.08,-8899.21,10,0
    .goto 1429/0,-176.75,-8886.94,10,0
    >>Go upstairs
    .goto 1429/0,-181.64,-8902.13,10 >> Travel toward |cRXP_FRIENDLY_Neals|r
step
    .goto 1429/0,-181.64,-8902.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Neals|r
    .turnin 3905,1 >>Turn in Grape Manifest
    .target Brother Neals
step << Human
    #season 2
    #optional
    #completewith next
    .goto 1429,48.79,41.58,12,0
    .goto 1429,48.975,41.146,12,0
    .goto 1429,49.262,40.633,12,0
    .goto 1429,49.510,40.095,6,0
    .goto 1429,49.691,40.230,6,0
    .goto 1429,49.595,40.673,6,0
    .goto 1429,49.324,40.492,6,0
    .goto 1429,49.436,39.881,10,0
    .goto 1429/0,-188.23,-8851.58,12 >>Go downstairs, then travel toward |cRXP_FRIENDLY_Khelden Bremen|r
    .isQuestComplete 77620
step << Human
    #season 2
    .goto 1429/0,-188.23,-8851.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khelden Bremen|r inside
    .turnin 77620 >> Turn in Spell Research
    .target Khelden Bremen
    .isQuestComplete 77620
step
    .goto 1429/0,-45.90,-9044.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falkhaan|r
    .accept 2158 >> Accept Rest and Relaxation
    .target Falkhaan Isenstrider
step
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dughan|r
    .turnin 54 >> Turn in Report to Goldshire
    .accept 62 >> Accept The Fargodeep Mine
    .target Marshal Dughan
step
    .goto 1429/0,33.14,-9460.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William|r through the wall as you enter the Inn
    .accept 60 >> Accept Kobold Candles
    .target William Pestle
step
    #completewith next
    .home >> Set your Hearthstone to Goldshire
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farley|r
step
    .goto 1429/0,16.20,-9462.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farley|r
    .turnin 2158,2 >> Turn in Rest and Relaxation
    .vendor 295 >> Vendor Trash. |cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_down to 2 silver|r
    .target Innkeeper Farley
step
    .goto 1429/0,34.28,-9472.99
    >>Jump onto the Chandelier downstairs
    >>Talk to |cRXP_FRIENDLY_Zaldimar|r through the wall
    .trainer >> Train your class spells (Fireball R2, Fire Blast)
	.target Zaldimar Wefhellt
step
    .goto 1429/0,72.81,-9496.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy|r
    .accept 47 >> Accept Gold Dust Exchange
    .target Remy "Two Times"
step
    #completewith BoarMeat1
    >>Kill |cRXP_ENEMY_Stonetusk Boars|r. Loot them for |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 769,4,86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bernice|r and |cRXP_FRIENDLY_Ma|r
    .accept 85 >> Accept Lost Necklace
    .target +"Auntie" Bernice Stonefield
    .goto 1429/0,338.47,-9889.69
    .accept 88 >> Accept Princess Must Die!
	.goto Elwynn Forest,34.660,84.482
    .target +Ma Stonefield
step
    #completewith next
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r. Loot them for |cRXP_LOOT_Gold Dust|r and |cRXP_LOOT_Kobold Candles|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
step
    .goto 1429/0,38.38,-9923.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billy|r
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
    .target Billy Maclure
step
    #label BoarMeat1
    .goto 1429/0,37.40,-10014.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybell|r inside
    .accept 106 >> Accept Young Lovers
    .target Maybell Maclure
step
    .goto 1429/0,65.17,-10008.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Buy as much|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_as you can afford from him|r
    .vendor 258 >>Vendor Trash
    .target Joshua Maclure
step
    #completewith next
    >>Kill |cRXP_ENEMY_Stonetusk Boars|r. Loot them for |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 769,4,86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    .goto Elwynn Forest,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Tommy|r
    .turnin 106 >> Turn in Young Lovers
    .accept 111 >> Accept Speak with Gramma
    .target Tommy Joe Stonefield
step
#loop
	.line Elwynn Forest,31.15,85.36,33.08,86.64,33.51,85.22,32.17,83.88,31.15,85.36
	.goto 1429/0,454.25,-9915.31,35,0
	.goto 1429/0,387.26,-9944.94,35,0
	.goto 1429/0,372.34,-9912.07,35,0
	.goto 1429/0,418.85,-9881.06,35,0
	.goto 1429/0,454.25,-9915.31,35,0
    >>Kill |cRXP_ENEMY_Stonetusk Boars|r. Loot them for |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 769,4,86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    .goto 1429/0,338.47,-9889.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bernice|r and then |cRXP_FRIENDLY_Gramma|r inside
    .turnin 86 >> Turn in Pie for Billy
    .accept 84 >> Accept Back to Billy
    .target +"Auntie" Bernice Stonefield
    .goto 1429/0,338.47,-9889.69
    .turnin 111 >> Turn in Speak with Gramma
    .accept 107 >> Accept Note to William
    .target +Gramma Stonefield
    .goto 1429/0,322.71,-9880.59
step
    #completewith next
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r. Loot them for |cRXP_LOOT_Gold Dust|r and |cRXP_LOOT_Kobold Candles|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
step
    .goto 1429/0,38.38,-9923.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billy|r
    .turnin 84 >> Turn in Back to Billy
    .accept 87 >> Accept Goldtooth
    .target Billy Maclure
step
    .goto 1429/0,65.17,-10008.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Buy as much|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_as you can afford from him|r
    .vendor 258 >>Vendor Trash
    .target Joshua Maclure
    .itemcount 1179,<8
step
    #completewith Mine
    .goto 1429/0,181.79,-9843.79,15 >>Enter the Fargodeep Mine
step
    #completewith Goldtooth
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for |cRXP_LOOT_Gold Dust|r and |cRXP_LOOT_Kobold Candles|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label Mine
    .goto 1429/0,179.36,-9811.39,12,0
    .goto 1429/0,157.15,-9789.40
    >>Enter one of the larger open spaces in Fargodeep Mine
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #completewith next
    .goto 1429/0,148.82,-9763.71,12,0
    .goto 1429/0,132.16,-9752.60,12,0
    .goto 1429/0,87.04,-9745.65,40 >>Travel toward |cRXP_ENEMY_Goldtooth|r
step
    #label Goldtooth
    .goto 1429/0,87.04,-9745.65
    >>Kill |cRXP_ENEMY_Goldtooth|r. Loot him for |cRXP_LOOT_Bernice's Necklace|r
    .complete 87,1 --Collect Bernice's Necklace (x1)
    .mob Goldtooth
step
#loop
	.line Elwynn Forest,39.14,82.87,39.16,84.79,37.81,85.40,36.76,83.19,38.02,81.70,39.14,82.87
	.goto 1429/0,176.93,-9857.68,35,0
	.goto 1429/0,176.24,-9902.12,35,0
	.goto 1429/0,223.09,-9916.240,35,0
	.goto 1429/0,259.54,-9865.09,35,0
	.goto 1429/0,215.81,-9830.600,35,0
	.goto 1429/0,176.93,-9857.68,35,0
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for |cRXP_LOOT_Gold Dust|r and |cRXP_LOOT_Kobold Candles|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
    .mob Kobold Miner
step << skip
    #completewith next
    .goto 1429/0,102.31,-9787.78,-1
    .goto 1429/0,86.34,-9756.30,-1
    .goto 1429/0,80.79,-9740.56,-1
    .goto 1429/0,141.88,-9794.03,-1
    .goto 1429/0,150.55,-9825.04,-1
    .goto 1429/0,117.23,-9819.95,-1
    .goto 1429/0,135.98,-9775.28,-1
    .goto 1429/0,171.38,-9339.44,30 >>|cRXP_WARN_Perform a Logout Skip inside the cave by jumping on top of a shredder, the floating logs, the crates, or the minecart light inside the cave, then log out and back in|r
    >>|cRXP_WARN_Alternatively, run back to Goldshire|r
    >>|cRXP_WARN_NOTE: Itemrack currently can cause problems after logout skipping where your ingame UI freezes. Make sure to disable the addon or make a /reload macro you can click when/if that happens|r
    .link https://www.youtube.com/watch?v=SWBtPqm5M0Q >>|cRXP_WARN_CLICK HERE to learn how to logout skip|r
step
    #completewith next
    .subzone 87 >> Return to Goldshire
step
    .goto 1429/0,72.81,-9496.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy|r
    .turnin 47 >> Turn in Gold Dust Exchange
    .accept 40 >> Accept A Fishy Peril
    .target Remy "Two Times"
step
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dughan|r
    .turnin 40 >> Turn in A Fishy Peril
    .accept 35 >> Accept Further Concerns
    .turnin 62 >> Turn in The Fargodeep Mine
    .accept 76 >> Accept The Jasperlode Mine
    .target Marshal Dughan
step
    .goto 1429/0,33.14,-9460.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William|r through the wall as you enter the Inn
    .turnin 60 >> Turn in Kobold Candles
    .accept 61 >> Accept Shipment to Stormwind
    .turnin 107 >> Turn in Note to William
    .accept 112 >> Accept Collecting Kelp
    .target William Pestle
step
    .goto 1429/0,16.20,-9462.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farley|r
    >>|cRXP_BUY_Buy 35|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .vendor >>Vendor Trash
    .collect 1179,35,432,1 --Ice Cold Milk (35)
    .target Innkeeper Farley
step
    .goto 1429/0,9.64,-9465.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brog|r
    .vendor >>|cRXP_BUY_Buy a|r |T133634:0|t[Small Brown Pouch] |cRXP_BUY_from him|r
	.target Brog Hamfist
    .money <0.05
step
    #completewith next
    .goto 1429/0,34.63,-9466.28,10,0
    .goto 1429/0,47.12,-9456.10,12 >> Exit the Inn
step
    .goto 1429/0,-215.62,-9390.60,50,0
    .goto 1429/0,-237.83,-9438.28,50,0
    .goto 1429/0,-292.32,-9442.91,50,0
    .goto 1429/0,-342.3,-9391.75,50,0
    .goto 1429/0,-459.62,-9402.63,50,0
    .goto 1429/0,-421.09,-9478.780
    >>Kill |cRXP_ENEMY_Murloc Streamrunners|r and |cRXP_ENEMY_Murlocs|r. Loot them for |cRXP_LOOT_Crystal Kelp Frond|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Murloc Streamrunners|r have|r |T132307:0|t[Increased Movespeed]
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc Streamrunner
	.mob Murloc
step
    #completewith next
    .goto 1429/0,-604.70,-9188.53,12 >>Enter the Jasperlode Mine
step
    .goto 1429/0,-588.39,-9130.90,12,0
    .goto 1429/0,-570.68,-9116.32,12,0
    .goto 1429/0,-560.97,-9100.58
    >>Follow the middle path of the cave
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Kobold Geomancers|r cast|r |T135812:0|t[Fireball] |cRXP_WARN_(Ranged Cast: Deals about 30 damage)|r
    .complete 76,1 --Scout through the Jasperlode Mine
step
    #completewith next
    .goto 1429/0,-570.68,-9116.32,12,0
    .goto 1429/0,-588.39,-9130.90,12,0
    .goto 1429/0,-609.91,-9186.91,15 >>Exit the Jasperlode Mine
step
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas|r
    .turnin 35 >> Turn in Further Concerns
    .accept 37 >> Accept Find the Lost Guards
    .accept 52 >> Accept Protect the Frontier
    .target Guard Thomas
step
    #completewith next
    .goto 1429/0,-1063.89,-9494.980,45,0
    .goto 1429/0,-984.06,-9457.950,45,0
    .goto 1429/0,-950.05,-9347.31,50,0
    >>Kill all |cRXP_ENEMY_Young Forest Bears|r you see and |cRXP_ENEMY_Prowlers|r
    .complete 52,2 --Kill Young Forest Bear (x5)
    .unitscan +Young Forest Bear
    .complete 52,1 --Kill Prowler (x8)
	.mob +Prowler
step
    .goto 1429/0,-986.14,-9335.97
	>>Click the |cRXP_PICK_half-eaten body|r on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    .turnin 37 >> Turn in Find the Lost Guards
    .accept 45 >> Accept Discover Rolf's Fate
step
    #completewith Bears
    .goto 1429/0,-1198.91,-9350.09,70,0
    >>Kill all |cRXP_ENEMY_Young Forest Bears|r you see and |cRXP_ENEMY_Prowlers|r
    .complete 52,2 --Kill Young Forest Bear (x5)
    .unitscan +Young Forest Bear
    .complete 52,1 --Kill Prowler (x8)
	.mob +Prowler
step
    .goto 1429/0,-1289.22,-9469.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raelen|r
    .accept 5545 >> Accept A Bundle of Trouble
    .target Supervisor Raelen
step
    #completewith next
    >>Loot the |cRXP_PICK_Bundles Of Wood|r at the base of the trees
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    .goto 1429/0,-1233.96,-9224.41,45 >> Travel toward |cRXP_PICK_Rolf's Corpse|r
    .isOnQuest 45
step
    .goto 1429/0,-1233.96,-9224.41
    >>Kill the |cRXP_ENEMY_Murloc Lurkers|r and |cRXP_ENEMY_Murloc Foragers|r guarding |cRXP_PICK_Rolf's Corpse|r
    >>|cRXP_WARN_You may have to kill one then reset|r
    >>Be careful as |cRXP_ENEMY_Murloc Lurkers|r cast |T132090:0|t[Backstab] |cRXP_WARN_(Melee Instant: Deals double damage from behind) and |cRXP_ENEMY_Murloc Foragers|r cast|r |T135915:0|t[Drink Minor Potion] |cRXP_WARN_(Self Cast: Heals for about 65 damage)|r
	>>Click the |cRXP_PICK_Rolf's Corpse|r on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    .turnin 45 >> Turn in Discover Rolf's Fate
    .accept 71 >> Accept Report to Thomas
step
#loop
	.line Elwynn Forest,80.48,55.18,80.88,53.88,79.68,52.31,80.86,52.17,80.88,53.88,80.48,55.18,79.76,56.70,80.15,60.03,80.24,61.46,81.27,61.59,81.58,62.64,82.79,60.12,83.25,61.12,83.48,59.19,81.77,59.17,80.48,55.18
	.goto 1429/0,-1257.91,-9216.77,35,0
	.goto 1429/0,-1271.79,-9186.68,35,0
	.goto 1429/0,-1230.14,-9150.34,35,0
	.goto 1429/0,-1271.10,-9147.10,35,0
	.goto 1429/0,-1271.79,-9186.68,35,0
	.goto 1429/0,-1257.91,-9216.77,35,0
	.goto 1429/0,-1232.92,-9251.950,35,0
	.goto 1429/0,-1246.46,-9329.03,35,0
	.goto 1429/0,-1249.58,-9362.13,35,0
	.goto 1429/0,-1285.33,-9365.14,35,0
	.goto 1429/0,-1296.09,-9389.44,35,0
	.goto 1429/0,-1338.09,-9331.11,35,0
	.goto 1429/0,-1354.05,-9354.26,35,0
	.goto 1429/0,-1362.03,-9309.59,35,0
	.goto 1429/0,-1302.68,-9309.12,35,0
	.goto 1429/0,-1257.91,-9216.77,35,0
    >>Loot the |cRXP_PICK_Bundles Of Wood|r at the base of the trees
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    .goto 1429/0,-1289.22,-9469.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raelen|r
    .turnin 5545 >> Turn in A Bundle of Trouble
    .target Supervisor Raelen
step
    #label Bears
    .goto 1429/0,-1222.40,-9531.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara|r
    .accept 83 >> Accept Red Linen Goods
    .target Sara Timberlain
step
    .goto 1429/0,-1069.44,-9618.58,0
    .goto 1429/0,-1063.89,-9494.980,45,0
    .goto 1429/0,-1093.74,-9665.57,45,0
    .goto 1429/0,-1125.32,-9714.41,45,0
    .goto 1429/0,-1215.91,-9778.29,45,0
    .goto 1429/0,-1295.74,-9718.34,45,0
    .goto 1429/0,-1063.89,-9494.980,45,0
    .goto 1429/0,-1093.74,-9665.57,45,0
    .goto 1429/0,-1125.32,-9714.41,45,0
    .goto 1429/0,-1215.91,-9778.29,45,0
    .goto 1429/0,-1295.74,-9718.34
    >>Kill all |cRXP_ENEMY_Young Forest Bears|r you see and |cRXP_ENEMY_Prowlers|r
    >>|cRXP_WARN_Deal 51%+ damage to |cRXP_ENEMY_Young Forest Bears|r and |cRXP_ENEMY_Prowlers|r, then pull them to the |cRXP_FRIENDLY_Stormwind Guard|r to kill them more efficiently|r
    .complete 52,2 --Kill Young Forest Bear (x5)
    .complete 52,1 --Kill Prowler (x8)
    .unitscan Young Forest Bear
    .mob Prowler
step
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas|r
    .turnin 52 >> Turn in Protect the Frontier
    .turnin 71 >> Turn in Report to Thomas
    .accept 39 >> Accept Deliver Thomas' Report
    .accept 109 >> Accept Report to Gryan Stoutmantle
    .target Guard Thomas
    .xp <9,1
step
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas|r
    .turnin 52 >> Turn in Protect the Frontier
    .turnin 71 >> Turn in Report to Thomas
    .accept 39 >> Accept Deliver Thomas' Report
    .target Guard Thomas
step
#loop
	.line Elwynn Forest,70.45,76.94,68.68,76.69,68.23,77.78,67.80,80.76,68.49,82.68,70.71,81.48,70.63,80.66,71.51,78.96,70.95,77.25,71.38,76.77,70.95,77.25,70.45,76.94
	.goto 1429/0,-909.79,-9720.42,40,0
	.goto 1429/0,-848.35,-9714.64,40,0
	.goto 1429/0,-832.73,-9739.87,40,0
	.goto 1429/0,-817.81,-9808.84,40,0
	.goto 1429/0,-841.76,-9853.28,40,0
	.goto 1429/0,-918.81,-9825.51,40,0
	.goto 1429/0,-916.03,-9806.53,40,0
	.goto 1429/0,-946.58,-9767.18,40,0
	.goto 1429/0,-927.14,-9727.60,40,0
	.goto 1429/0,-942.06,-9716.49,40,0
	.goto 1429/0,-927.14,-9727.60,40,0
	.goto 1429/0,-909.79,-9720.42,40,0
    >>Kill |cRXP_ENEMY_Defias Bandits|r. Loot them for |cRXP_LOOT_Red Linen Bandanas|r and the |T134939:0|t[|cRXP_LOOT_Westfall Deed|r]
    >>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Westfall Deed|r] to start the quest|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .collect 1972,1,184,1 --Collect Westfall Deed (x1)
    .disablecheckbox
	.mob Defias Bandit
    .isOnQuest 83
step
    #label Deed
    >>|cRXP_WARN_Use the |T134939:0|t[|cRXP_LOOT_Westfall Deed|r] to start the quest|r
    .accept 184 >> Accept Furlbrow's Deed
    .itemcount 1972,1
step
    .goto 1429/0,-890.35,-9780.14
    >>Kill |cRXP_ENEMY_Princess|r. Loot her for the |cRXP_LOOT_Brass Collar|r
    >>|cRXP_WARN_Remember to kite her using the fence|r
    .complete 88,1 --Collect Brass Collar (x1)
    .mob Princess
step
    .goto 1429/0,-1222.40,-9531.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara|r
    .turnin 83 >> Turn in Red Linen Goods
    .target Sara Timberlain
    .isQuestComplete 83
step << skip
    .goto 1433/0,-1779.67,-9608.23
    .zone Redridge Mountains >> Travel into Redridge Mountains
    .isOnQuest 88
step << skip
    #completewith next
    +|cRXP_WARN_Carefully follow the road to |cRXP_FRIENDLY_Ariena|r. Avoid |cRXP_ENEMY_Tarantulas|r and |cRXP_ENEMY_Black Dragon Whelps|r en route|r
    .mob Black Dragon Whelp
    .mob Tarantula
step << skip
    .goto 1433/0,-2234.89,-9435.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena|r
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
    .target Ariena Stormfeather
step
    #completewith next
    .hs >> Hearth to Goldshire
step
    .goto 1429/0,33.14,-9460.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William|r
    .turnin 112 >> Turn in Collecting Kelp
    .accept 114 >> Accept The Escape
    .target William Pestle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dughan|r and |cRXP_FRIENDLY_Argus|r
    .turnin 39 >> Turn in Deliver Thomas' Report
    .turnin 76 >> Turn in The Jasperlode Mine
    .accept 239 >> Accept Westbrook Garrison Needs Help!
    .accept 109 >> Accept Report to Gryan Stoutmantle
    .target +Marshal Dughan
    .goto 1429/0,74.02,-9465.52
    .accept 1097 >> Accept Elmore's Task
    .target +Smith Argus
    .goto 1429/0,87.87,-9456.65
step
    .goto 1429/0,37.40,-10014.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybell|r inside
    .turnin 114 >> Turn in The Escape
    .target Maybell Maclure
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma|r and |cRXP_FRIENDLY_Bernice|r
    .turnin 88,3 >> Turn in Princess Must Die!
    .target +Ma Stonefield
    .goto Elwynn Forest,34.660,84.482
    .turnin 87 >> Turn in Goldtooth
    .goto 1429/0,338.47,-9889.69
    .target +"Auntie" Bernice Stonefield
step
#loop
	.line Elwynn Forest,31.15,85.36,33.08,86.64,33.51,85.22,32.17,83.88,31.15,85.36
	.goto 1429/0,454.25,-9915.31,35,0
	.goto 1429/0,387.26,-9944.94,35,0
	.goto 1429/0,372.34,-9912.07,35,0
	.goto 1429/0,418.85,-9881.06,35,0
	.goto 1429/0,454.25,-9915.31,35,0
    .xp 9+4825 >> Grind to 4225+/6500xp
    .mob Stonetusk Boar
    .isOnQuest 184
step
#loop
	.line Elwynn Forest,31.15,85.36,33.08,86.64,33.51,85.22,32.17,83.88,31.15,85.36
	.goto 1429/0,454.25,-9915.31,35,0
	.goto 1429/0,387.26,-9944.94,35,0
	.goto 1429/0,372.34,-9912.07,35,0
	.goto 1429/0,418.85,-9881.06,35,0
	.goto 1429/0,454.25,-9915.31,35,0
    .xp 9+4825 >> Grind to 4825+/6500xp
    .mob Stonetusk Boar
    .itemcount 1972,<1
step
    .goto 1429/0,694.43,-9662.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rainer|r
    .turnin 239 >> Turn in Westbrook Garrison Needs Help!
    .target Deputy Rainer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r and |cRXP_FRIENDLY_Verna|r
    .accept 64 >> Accept The Forgotten Heirloom
    .turnin 184 >> Turn in Furlbrow's Deed
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .accept 36 >> Accept Westfall Stew
    .accept 151 >> Accept Poor Old Blanchy
    .goto 1436/0,919.82,-9852.90
    .target +Verna Furlbrow
    .isOnQuest 184
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r and |cRXP_FRIENDLY_Verna|r
    .accept 64 >> Accept The Forgotten Heirloom
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .accept 36 >> Accept Westfall Stew
    .accept 151 >> Accept Poor Old Blanchy
    .target +Verna Furlbrow
    .goto 1436/0,919.82,-9852.90
step
    #completewith next
    >>Open the |cRXP_PICK_Sacks of Oats|r on the ground. Loot them for |cRXP_LOOT_Handfuls of Oats|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 151,1 --Handful of Oats (8)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r and then |cRXP_FRIENDLY_Salma|r inside
    .accept 9 >>Accept The Killing Fields
    .target +Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 36 >> Turn in Westfall Stew
    .accept 38 >> Accept Westfall Stew
    .accept 22 >> Accept Goretusk Liver Pie
    .target +Salma Saldean
    .goto 1436/0,1041.97,-10112.13
step
    #completewith next
    >>|cRXP_WARN_Be VERY careful of |cRXP_ENEMY_Harvest Watchers|r and |cRXP_ENEMY_Harvest Golems|r en route|r
    .goto 1436/0,1045.12,-10508.80,20 >>Travel toward |cRXP_FRIENDLY_Gryan|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan|r, |cRXP_FRIENDLY_Danuvin|r, and then |cRXP_FRIENDLY_Lewis|r inside
    .turnin 109 >> Turn in Report to Gryan Stoutmantle
    .accept 12 >> Accept The People's Militia
    .target +Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .accept 102 >> Accept Patrolling Westfall
    .target +Captain Danuvin
    .goto 1436/0,1041.97,-10511.13
    .accept 6181 >> Accept A Swift Message
    .goto 1436/0,1021.60,-10500.61
    .target +Quartermaster Lewis
step
    .goto 1436/0,1037.07,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >> Turn in A Swift Message
    .accept 6281 >> Accept Continue To Stormwind
    .target Thor
step
    #completewith next
    .goto 1436/0,1037.07,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind
	.target Thor
step
    #completewith next
    .goto 1453/0,532.74,-8863.09,20,0
    .goto 1453/0,599.55,-8811.28,20,0
    .goto 1453/0,613.93,-8833.07,20,0
    .goto 1453/0,620.79,-8859.6,12,0
    .goto 1453/0,625.49,-8857.89,12 >>Travel toward |cRXP_FRIENDLY_Morgan|r
step
    .goto 1453/0,625.49,-8857.890
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan|r
    .turnin 61,1 >> Turn in Shipment to Stormwind
    .target Morgan Pestle
step
    .goto 1453/0,635.44,-8863.81
    >>Talk to |cRXP_FRIENDLY_Keldric|r
    .vendor 1257 >> |cRXP_BUY_Buy|r |T134830:0|t[Lesser Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .target Keldric Boucher
step << skip
    #completewith next
    .goto 1453/0,686.25,-8815.41,8,0
    .goto 1453/0,684.24,-8820.34,4,0
    .goto 1453/0,687.46,-8818.01,6,0
    .goto 1453/0,854.42,-8965.28,12,0
    >>|cRXP_WARN_Jump up onto the torch, then drop down to get under Stormwind|r
    >>|cRXP_WARN_With Shadows on "Fair" or "Low", get in the middle of Derek the Dinosaur's feet (the lighter part of the dirt) just before the blue void, then walk straight forward|r
    .goto 1453/0,861.95,-8990.47,10 >>Travel toward |cRXP_FRIENDLY_Jennea|r
step << skip
    .goto 1453/0,861.95,-8990.47
    >>Talk to |cRXP_FRIENDLY_Jennea|r
    .trainer >> Train your class spells (Frost Armor r2, Frost Nova, Polymorph, Conjure Water r1 & r2)
    >>Total Cost: 15s
    >>Remember you may want money for Healing Potions (3s each), Bronze Tube (8s each), and level 5 food (20c per 5)
    .target Jennea Cannon
step << skip
    #completewith next
    .goto 1453/0,893.0,-9021.93,6 >>Go through the green portal
step
    #completewith next
    .goto 1453/0,610.44,-8809.04,10,0
    .goto 1453/0,599.01,-8797.84,12,0
    .goto 1453/0,603.85,-8769.42,12,0
    .goto 1453/0,573.74,-8741.37,12,0
    .goto 1453/0,473.05,-8699.06,12,0
    .goto 1453/0,426.4,-8714.66,12,0
    .goto 1453/0,382.04,-8702.11,12 >>Travel toward |cRXP_FRIENDLY_Osric|r
step
    .goto 1453/0,382.04,-8702.11
    >>Talk to |cRXP_FRIENDLY_Osric|r
    .turnin 6281 >> Turn in Continue to Stormwind
    .accept 6261 >> Accept Dungar Longdrink
    .target Osric Strang
step
    #completewith next
    .goto 1453/0,450.74,-8644.11,15,0
    .goto 1453/0,479.91,-8639.81,15,0
    .goto 1453/0,514.05,-8608.26,15,0
    .goto 1453/0,507.6,-8541.66,15,0
    .goto 1453/0,683.43,-8397.08,12,0
    .goto 1453/0,685.18,-8387.13,12 >>Travel toward |cRXP_FRIENDLY_Grimand|r
step
    .goto 1453/0,685.18,-8387.13
    >>Talk to |cRXP_FRIENDLY_Grimand|r
    .turnin 1097 >> Turn in Elmore's Task
    .accept 353 >> Accept Stormpike's Delivery
    .target Grimand Elmore
step
    .goto 1453/0,638.26,-8342.22
    >>Talk to |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him if its up|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
    .money <0.08
step
    #completewith next
    .goto 1453/0,522.12,-8352.80,20 >> Travel to the Deeprun Tram
step
    #completewith next
    +|cRXP_WARN_Ride the Deeprun Tram whilst spam casting|r |T132794:0|t[Conjure Water r2]
step
    #label Monty
    .goto 1455/0,-1317.71,-4839.48,30,0
    >>Talk to |cRXP_FRIENDLY_Monty|r after taking the tram
    .accept 6661 >> Accept Deeprun Rat Roundup
    .target Monty
step
    >>Use the |T133942:0|t[Rat Catcher's Flute] on the |cRXP_FRIENDLY_Deeprun Rats|r in the Deeprun Tram
    .complete 6661,1 --Rats Captured (x5)
    .target Deeprun Rat
    .use 17117
step
    >>Talk to |cRXP_FRIENDLY_Monty|r
--  >>|cRXP_WARN_Wait out the RP|r
    .turnin 6661 >> Turn in Deeprun Rat Roundup
    .target Monty
    .zoneskip Stormwind City
step
    .zone Ironforge >> Enter Ironforge
    .isQuestAvailable 314
step
    .goto 1455/0,-1249.87,-4793.31
    >>Talk to |cRXP_FRIENDLY_Cogspinner|r
    .vendor 5175 >>|cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him if its up|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith next
    .goto 1455/0,-1266.48,-4749.31,30,0
    .goto 1455/0,-1211.92,-4728.00,30,0
    .goto 1455/0,-1170.41,-4754.48,30,0
    .goto 1455/0,-1152.31,-4821.12,10 >>Travel toward |cRXP_FRIENDLY_Gryth|r
step
    .goto 1455/0,-1152.39,-4820.914
    >>Talk to |cRXP_FRIENDLY_Gryth|r
    .fp Ironforge >> Get the Ironforge flight path
    .target Gryth Thurden
step
    #completewith next
    .goto 1455/0,-1101.87,-4864.81,30,0
    .goto 1455/0,-1062.10,-4815.100,20,0
    .goto 1455/0,-1036.48,-4804.50,20,0
    .goto 1455/0,-992.68,-4742.08,20,0
    .goto 1455/0,-931.8,-4627.59,20,0
    .goto 1455/0,-928.40,-4614.51,10 >>Travel toward |cRXP_FRIENDLY_Dink|r
step
    .goto 1455/0,-928.40,-4614.51
    >>Talk to |cRXP_FRIENDLY_Dink|r
    .trainer >> Train your class spells (Frost Armor r2, Frost Nova, Polymorph, Conjure Water r1 & r2)
    >>Total Cost: 15s
    >>Remember you may want money for Healing Potions (3s each), Bronze Tube (8s each), and level 5 food (20c per 5)
    .target Dink
step
    #completewith next
    .goto 1455/0,-929.04,-4636.72,20,0
    .goto 1455/0,-892.19,-4770.42,20,0
    .goto 1455/0,-874.88,-4849.87,20,0
    >>Go inside the building
    .goto 1455/0,-857.01,-4840.69,10 >>Travel toward |cRXP_FRIENDLY_Firebrew|r
step
    #label IFHS
    .goto 1455/0,-857.01,-4840.69
    >>Talk to |cRXP_FRIENDLY_Firebrew|r
    .home >> Set your Hearthstone to Ironforge
    .target Innkeeper Firebrew
step
    #completewith BankDeposit
    .goto 1455/0,-974.89,-4902.21,20,0
    .goto 1455/0,-997.66,-4886.49,30 >>Enter the Ironforge Bank
step
    .goto 1455/0,-997.66,-4886.49
    >>Talk to |cRXP_FRIENDLY_Bailey|r
    .bankdeposit 4371,16115 >> Deposit the following items into the bank:
    >>|T133024:0|t[Bronze Tube]
    >>|T132763:0|t[Osric's Crate]
    .target Bailey Stonemantle
step << skip
    .goto 1455/0,-1000.98,-4874.62
    .goto 1426/0,-809.64,-5049.56,10 >>|cRXP_WARN_Jump on top of the sides of the vault. Logout skip to Dun Morogh|r
    .isQuestAvailable 314
step
    .goto 1455/0,-833.45,-5021.400,20,0
    .goto 1426/0,-1145.04,-5504.30
    .zone Dun Morogh >> Exit Ironforge
]])

RXPGuides.RegisterGuide([[
#forever
<< Human Mage
#name 10-11 ADV Dun Morogh Human Mage AoE
#version 2
#group RestedXP ADV AoE Alliance Mage
#defaultfor Human Mage
#next 10-12 ADV Darkshore 1 Mage AoE

step
    #completewith Rudra
    #label Dirt
    .goto 1426/0,-1145.04,-5504.30,40,0
    .goto 1426/0,-1219.90,-5422.55,40 >>Go up the dirt path
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Kite |cRXP_ENEMY_Vagash|r down to|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_CLICK HERE If you're struggling|r
    .mob Vagash
step
    #label Rudra
    .goto 1426/0,-1304.61,-5513.82
    >>Talk to |cRXP_FRIENDLY_Rudra|r
    .accept 314 >> Accept Protecting the Herd
    .target Rudra Amberstill
step
    .goto 1426/0,-1279.49,-5392.01,0
    .goto 1426/0,-1289.83,-5669.780,40,0
    .goto 1426/0,-1291.80,-5706.89
    >>Kill |cRXP_ENEMY_Vagash|r. Loot him for the |cRXP_LOOT_Fang of Vagash|r
    >>|cRXP_WARN_Kite |cRXP_ENEMY_Vagash|r down to the |cRXP_FRIENDLY_Dun Morogh Mountaineer|r south of the ranch. Make sure you do 51%+ damage to him|r
    >>|cRXP_WARN_Remember to get The Tundrid Hills explore xp and pull the |cRXP_ENEMY_Snow Leopard|r to the |cRXP_FRIENDLY_Dun Morogh Mountaineer|r if convenient|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto 1426/0,-1304.61,-5513.82
    >>Talk to |cRXP_FRIENDLY_Rudra|r
    .turnin 314,3 >> Turn in Protecting the Herd
    .target Rudra Amberstill
step
    #completewith Ghilm
    +|cRXP_WARN_Remember to save|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_you get for leveling|r |T133971:0|t[Cooking] |cRXP_WARN_to 50 later|r
step
    #completewith next
    .goto 1426/0,-1465.16,-5548.96,50,0
    .goto 1426/0,-1533.13,-5638.92,30,0
    +|cRXP_WARN_Kite the |cRXP_ENEMY_Ice Claw Bear|r to the |cRXP_FRIENDLY_Ironforge Mountaineer|r (make sure to deal 51%+ damage to get credit)|r
    >>|cRXP_WARN_Be careful as they cast|r |T135853:0|t[Ice Claw] |cRXP_WARN_(Melee Instant: Deals an additional 4 melee damage)|r
    .mob Ice Claw Bear
step
    #sticky
    #label Ghilm
    .goto 1426/0,-1566.62,-5664.86,0,0
    >>Talk to |cRXP_FRIENDLY_Ghilm|r
    .train 2550 >> Train |T133971:0|t[Cooking]
    .target Cook Ghilm
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
    >>Talk to |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Buy 15|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .collect 1179,15,432,1 --Ice Cold Milk (15)
    .target Kazan Mogosh
    .money <0.0395
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
    >>Talk to |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Buy 10|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .collect 1179,10,432,1 --Ice Cold Milk (10)
    .target Kazan Mogosh
    .money <0.0260
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
    >>Talk to |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Buy 5|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .collect 1179,5,432,1 --Ice Cold Milk (5)
    .target Kazan Mogosh
    .money <0.0135
step
    #requires Ghilm
    >>Talk to |cRXP_FRIENDLY_Mehr|r and |cRXP_FRIENDLY_Stonebrow|r
    .accept 433 >> Accept The Public Servant
    .target +Senator Mehr Stonehallow
    .goto 1426/0,-1579.91,-5714.77
    .accept 432 >> Accept Those Blasted Troggs!
    .goto 1426/0,-1600.30,-5726.590
    .target +Foreman Stonebrow
step
    #completewith Bonesnappers
    >>Kill |cRXP_ENEMY_Rockjaw Skullthumpers|r
    >>|cRXP_WARN_Don't go out of your way to kill them|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #completewith next
    .goto 1426/0,-1681.86,-5723.30,30 >>Enter the cave
step
    #label Bonesnappers
    .goto 1426/0,-1693.68,-5660.26,40,0
    .goto 1426/0,-1686.29,-5622.83,40,0
    .goto 1426/0,-1740.96,-5534.51,40,0
    .goto 1426/0,-1771.00,-5568.000,40,0
    .goto 1426/0,-1774.45,-5602.80
    >>Kill |cRXP_ENEMY_Rockjaw Bonesnappers|r inside the cave
    >>|cRXP_WARN_Be careful as they cast|r |T132154:0|t[Knockdown] |cRXP_WARN_(Melee Instant: Stuns for 2 seconds)|r
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Bonesnapper
step
    .goto 1426/0,-1681.86,-5723.30,30,0
#loop
	.line Dun Morogh,69.93,57.29,70.57,58.61,69.68,59.37,68.36,59.57,69.16,57.51,69.93,57.29
	.goto 1426/0,-1641.97,-5758.11,30,0
	.goto 1426/0,-1673.49,-5801.45,30,0
	.goto 1426/0,-1629.66,-5826.40,30,0
	.goto 1426/0,-1564.65,-5832.97,30,0
	.goto 1426/0,-1604.05,-5765.33,30,0
	.goto 1426/0,-1641.97,-5758.11,30,0
    >>Kill |cRXP_ENEMY_Rockjaw Skullthumpers|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #sticky
    #label Frast
    .goto 1426/0,-1589.76,-5714.44,0,0
    >>Talk to |cRXP_FRIENDLY_Frast|r
    .vendor >> Vendor Trash
    .target Frast Dokner
    .isQuestAvailable 419
step
    >>Talk to |cRXP_FRIENDLY_Stonebrow|r and |cRXP_FRIENDLY_Mehr|r
    .turnin 432 >> Turn in Those Blasted Troggs!
    .target +Foreman Stonebrow
    .goto 1426/0,-1600.30,-5726.590
    .turnin 433 >> Turn in The Public Servant
    .goto 1426/0,-1579.91,-5714.77
    .target +Senator Mehr Stonehallow
step
    #requires Frast
    .goto 1426/0,-1612.42,-5698.02
    >>Talk to |cRXP_FRIENDLY_Dank|r
    .train 2575 >> Train |T136248:0|t[Mining]
    .target Dank Drizzlecut
step
    #label Shortcut1
    #completewith Pilot
    .goto 1426/0,-1662.65,-5692.11,5,0
    .link https://youtu.be/G2IscpFZVeQ?t=4034 >>|cRXP_WARN_CLICK HERE if you're struggling|r
    .goto 1426/0,-1671.03,-5674.71,12 >>Take the shortcut up behind |cRXP_FRIENDLY_Dank|r
step
    #completewith Pilot
    #requires Shortcut1
    #label Shortcut2
    .goto 1426/0,-1693.19,-5541.730,50,0
    .goto 1426/0,-1788.24,-5511.85,50,0
    .goto 1426/0,-1995.58,-5480.01,50 >>|cRXP_WARN_Kite the nearby |cRXP_ENEMY_Rockjaw Ambushers|r to the |cRXP_FRIENDLY_Ironforge Mountaineers|r that can patrol on the road (make sure to deal 51%+ damage to get credit)|r
    .mob Rockjaw Ambusher
    .unitscan Ironforge Mountaineer
step
    #requires Shortcut2
    #completewith next
    .goto 1426/0,-2198.49,-5277.75,50,0
    .goto 1426/0,-2286.16,-5200.59,30 >>Kite a |cRXP_ENEMY_Scarred Crag Boar|r through the tunnel
    >>|cRXP_WARN_Be careful as they cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)|r
    .mob Scarred Crag Boar
step
    #label Pilot
    .goto 1426/0,-2329.50,-5163.82
    >>Talk to |cRXP_FRIENDLY_Hammerfoot|r
    .accept 419 >> Accept The Lost Pilot
    .target Pilot Hammerfoot
step
    .goto 1426/0,-2205.39,-5092.57,30,0
    .goto 1426/0,-2121.66,-5064.66
    >>Click the |cRXP_PICK_Dwarven Corpse|r on the ground
    >>|cRXP_WARN_MAKE SURE You have a free inventory slot. |cRXP_ENEMY_Mangeclaw|r will not come down if you do not accept the next quest|r
    >>|cRXP_WARN_REMEMBER You're kiting |cRXP_ENEMY_Mangeclaw|r back to |cRXP_FRIENDLY_Hammerfoot|r
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step
    .goto 1426/0,-2059.61,-5118.180,60,0
    .goto 1426/0,-2329.50,-5163.82
    >>Kill |cRXP_ENEMY_Mangeclaw|r. Loot him for the |cRXP_LOOT_Mangy Claw|r
    >>|cRXP_WARN_Kite him all the way over to |cRXP_FRIENDLY_Hammerfoot|r (make sure to deal 51%+ damage to get credit)|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
    .target Pilot Hammerfoot
step
    .goto 1426/0,-2329.60,-5163.76
    >>Talk to |cRXP_FRIENDLY_Hammerfoot|r
    .turnin 417,1 >> Turn in A Pilot's Revenge
    .target Pilot Hammerfoot
step
    #label Tunnel1
    #completewith Barleybrew
    .goto 1426/0,-2286.16,-5200.59,30,0
    .goto 1426/0,-2198.49,-5277.75,30 >>Run back through the tunnel
step
    #requires Tunnel1
    #completewith Barleybrew
    .goto 1426/0,-2118.71,-5516.78,20,0
    .goto 1426/0,-2192.09,-5510.87,20,0
    .goto 1426/0,-2216.72,-5519.08,20,0
    .goto 1426/0,-2314.72,-5491.83,20,0
    >>Kite a |cRXP_ENEMY_Scarred Crag Boar|r en route
    .goto 1426/0,-2347.72,-5483.62,20 >>Do the Mountain Skip. Remember to drop down carefully
    .mob Scarred Crag Boar
step
    .goto 1432/0,-2518.11,-5625.83
    >>Kite a |cRXP_ENEMY_Scarred Crag Boar|r through the tunnel
    >>|cRXP_WARN_Be careful as they cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)|r
    .zone Loch Modan >> Travel through the tunnel to Loch Modan
    .mob Scarred Crag Boar
step
    #completewith Rugelfuss
    +|cRXP_WARN_Try to kite a nearby |cRXP_ENEMY_Elder Black Bear|r or |cRXP_ENEMY_Forest Lurker|r into the Bunker with you (remember to deal 51%+ damage to get credit)|r
    >>|cRXP_WARN_Loot the |cRXP_ENEMY_Elder Black Bears|r for their|r |T134027:0|t[|cRXP_LOOT_Bear Meat|r]
    >>|cRXP_WARN_Loot the |cRXP_ENEMY_Forest Lurkers|r for their|r |T134437:0|t[|cRXP_LOOT_Spider Ichor|r]
    >>|cRXP_FRIENDLY_Cobbleflint|r|cRXP_WARN_, |cRXP_FRIENDLY_Gravelgaw|r, and |cRXP_FRIENDLY_Wallbang|r won't assist you|r
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .disablecheckbox
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .disablecheckbox
    .mob Elder Black Bear
    .mob Forest Lurker
step
    #label Cobbleflint
    .goto 1432/0,-2602.54,-5832.73
    >>Talk to |cRXP_FRIENDLY_Cobbleflint|r
    .accept 224 >> Accept In Defense of the King's Lands
    .target Mountaineer Cobbleflint
step
    #optional
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >> Enter the Bunker. Go to the top floor
step
    #label Rugelfuss
    .goto 1432/0,-2634.59,-5842.81
    >>Talk to |cRXP_FRIENDLY_Rugelfuss|r
    .accept 267 >> Accept The Trogg Threat
    .target Captain Rugelfuss
step << skip
    #completewith next
    .goto 1432/0,-2586.52,-5740.99,20,0
    .goto 1432/0,-2569.14,-5673.30,20,0
    .goto 1432/0,-2531.62,-5638.34,30 >>Go back into the Tunnel
step << skip
    .goto 1432/0,-2513.42,-5618.48
    .link https://www.youtube.com/watch?v=AOAlX9B5aO0 >>|cRXP_WARN_CLICK HERE If you're struggling|r
    .goto 1432/0,-2881.66,-5351.18,30 >>|cRXP_WARN_Jumping Logout Skip from the Brazier inside the tunnel to Thelsamar|r
    .isOnQuest 267
step
    #completewith next
    .subzone 144 >> Travel to Thelsamar
step
    .goto 1432/0,-2902.07,-5398.28,40,0
    .goto 1432/0,-2945.10,-5360.20,40,0
    .goto 1432/0,-3015.71,-5335.73,40,0
    .goto 1432/0,-3025.09,-5318.44,40,0
    .goto 1432/0,-3017.64,-5274.66
    >>Talk to |cRXP_FRIENDLY_Kadrell|r
    >>|cRXP_FRIENDLY_Kadrell|r |cRXP_WARN_patrols along the main Thelsamar road|r
    .accept 416 >> Accept Rat Catching
    .accept 1339 >> Accept Mountaineer Stormpike's Task
    .target Mountaineer Kadrell
step
    #completewith next
    .goto 1432/0,-2929.93,-5424.95
    >>Talk to |cRXP_FRIENDLY_Thorgrum|r
    .fp Thelsamar >> Get the Thelsamar flight path
    .fly Ironforge >> Fly to Ironforge
    .target Thorgrum Borrelson
step
    .zone Ironforge >> Travel to Ironforge
    .isOnQuest 416
step << skip
    #completewith next
    .goto 1455/0,-1060.12,-4883.59,20,0
    .goto 1455/0,-1016.16,-4946.11,20,0
    .goto 1455/0,-980.03,-4971.49,10 >>|cRXP_WARN_Travel toward the Logout Skip spot|r
step << skip
    .goto 1455/0,-980.03,-4971.49
    .zone Dun Morogh >>|cRXP_WARN_Position your character until it looks like they're floating on the edge of the metal railing. Logout skip to Dun Morogh|r
    .isOnQuest 416
]])

RXPGuides.RegisterGuide([[
#forever
<< Gnome Mage
#name 1-10 ADV Dun Morogh Gnome Mage AoE
#version 2
#group RestedXP ADV AoE Alliance Mage
#defaultfor Gnome Mage
#next 10-12 ADV Darkshore 1 Mage AoE


step << !Gnome Mage
    #season 2
    #completewith next
    +In Season of Discovery, you should NOT start outside of your race's starter zone as a Mage, as you will be unable to get your first rune here (|T133816:0|t[Engrave Gloves - Ice Lance])
step
    #completewith next
    +You have selected the Advanced guide. This is the fastest guide for the fastest class in the game (Alliance Mage). As such, there will be a lot of niche mechanics used as well as highly difficult AoE pulls. Stay persistent while you learn! Good Luck!
step
    #completewith Adlin
	.destroy 6948 >> Delete the |T134414:0|t[Hearthstone] from your bags, as it's no longer needed
step
    .goto 1426/0,328.18,-6214.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .accept 179 >> Accept Dwarven Outfitters
    .target Sten Stoutarm
step
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    >>Kill |cRXP_ENEMY_Ragged Young Wolves|r. Loot them for their |cRXP_LOOT_Tough Wolf Meat|r
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob Ragged Young Wolf
step
    #season 0
    #sticky
    #label Adlin
    .goto 1426/0,320.30,-6226.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Vendor Trash
    >>|cRXP_BUY_Buy 15|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Grind extra |cRXP_ENEMY_Ragged Young Wolves|r if you don't have enough money|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step
    #season 2
    .goto 1426/0,320.30,-6226.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Vendor Trash
    >>|cRXP_BUY_Buy 15|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Grind extra |cRXP_ENEMY_Ragged Young Wolves|r if you don't have enough money|r
    >>|cRXP_WARN_Make sure you save 10c for later|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step
    #xprate <1.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sten Stoutarm|r and |cRXP_FRIENDLY_Balir Frosthammer|r
    .turnin 179,3 >> Turn in Dwarven Outfitters
    .accept 233 >> Accept Coldridge Valley Mail Delivery
    .accept 3114 >> Accept Glyphic Memorandum
    .target +Sten Stoutarm
    .goto 1426/0,328.18,-6214.85
    .accept 170 >> Accept A New Threat
    .goto 1426/0,338.87,-6216.46
    .target +Balir Frosthammer
step
    #xprate >1.09
    .goto 1426/0,328.18,-6214.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sten Stoutarm|r
    .turnin 179,3 >> Turn in Dwarven Outfitters
    .accept 233 >> Accept Coldridge Valley Mail Delivery
    .accept 3114 >> Accept Glyphic Memorandum
    .target Sten Stoutarm
step
    #season 2
    #xprate <1.1
    #completewith EnterAnvilmar
    .goto 1426,27.096,72.545,0
    .goto 1426,26.620,73.548,0
    .goto 1426,25.722,72.261,0
    .goto 1426,24.878,72.329,0
    .goto 1426,24.100,73.749,0
    .goto 1426,24.920,74.697,0
    .goto 1426,21.813,72.584,0
    .goto 1426,19.578,72.086,0
    .goto 1426,20.627,70.415,0
    >>Kill |cRXP_ENEMY_Rockjaw Troggs|r and |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
    .isOnQuest 170
step
    #season 2
    .goto 1426/0,485.48,-6259.21
    >>Open the |cRXP_PICK_Rockjaw Footlocker|r on the ground. Loot it for the |T134939:0|t|cRXP_LOOT_[Spell Notes: CALE ENCI]|r
    >>|cRXP_WARN_NOTE: You will be unable to train|r |T133816:0|t[Engrave Gloves - Ice Lance] |cRXP_WARN_here as you can only get a|r |T133736:0|t[Comprehension Primer] |cRXP_WARN_in your race's starting zone|r << !Gnome
    .collect 203751,1,77667,1 -- Spell Notes: CALE ENCI (1)
    .train 401760,1
step << Gnome
    #season 2
    .train 401760 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_LOOT_[Spell Notes: CALE ENCI]|r |cRXP_WARN_to learn|r |T133816:0|t[Engrave Gloves - Ice Lance]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step
    #season 2
    #label EnterAnvilmar
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.642,68.375,12 >> Enter Anvilmar
step
    #season 2
    .goto 1426/0,388.17,-6056.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Marryk Nurribit|r inside
    .turnin 3114 >> Turn in Glyphic Memorandum << Gnome
    .accept 77667 >> Accept Spell Research << Gnome
    .turnin 77667 >> Turn in Spell Research << Gnome
    .train 1459 >> Train |T135932:0|t[Arcane Intellect]
    .target Marryk Nurribit
step << Gnome
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >> |cRXP_WARN_Equip the|r |T132961:0|t[Tattered Cloth Gloves]
    .use 711
    .train 401760,1
step << Gnome
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>|cRXP_WARN_Engrave your|r |T132961:0|t[Tattered Cloth Gloves] with|r |T133816:0|t[Engrave Gloves - Ice Lance]
    .train 401760,1
step
    #season 2
    #optional
    #completewith Talin
    .goto 1426,28.792,68.804,12 >> Exit Anvilmar
    .subzoneskip 77,1
step
    #xprate <1.1
    #completewith Rockjaw
    .goto 1426,27.096,72.545,0
    .goto 1426,26.620,73.548,0
    .goto 1426,25.722,72.261,0
    .goto 1426,24.878,72.329,0
    .goto 1426,24.100,73.749,0
    .goto 1426,24.920,74.697,0
    .goto 1426,21.813,72.584,0
    .goto 1426,19.578,72.086,0
    .goto 1426,20.627,70.415,0
    >>Kill |cRXP_ENEMY_Rockjaw Troggs|r and |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
    .isOnQuest 170
step
    #label Talin
    .goto 1426/0,688.98,-6222.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 233 >> Turn in Coldridge Valley Mail Delivery
    .accept 183 >> Accept The Boar Hunter
    .accept 234 >> Accept Coldridge Valley Mail Delivery
    .target Talin Keeneye
step
    #loop
    .goto 1426,22.276,72.549,0
    .goto 1426,20.924,70.393,0
    .goto 1426,22.662,69.331,0
    .goto 1426,24.358,72.591,0
    .goto 1426,22.276,72.549,45,0
    .goto 1426,21.209,72.266,45,0
    .goto 1426,20.880,71.470,45,0
    .goto 1426,20.924,70.393,45,0
    .goto 1426,21.330,69.261,45,0
    .goto 1426,22.035,69.231,45,0
    .goto 1426,22.662,69.331,45,0
    .goto 1426,24.317,68.026,45,0
    .goto 1426,24.754,69.257,45,0
    .goto 1426,24.878,71.191,45,0
    .goto 1426,24.358,72.591,45,0
    >>Kill |cRXP_ENEMY_Small Crag Boars|r
    .complete 183,1 --Kill Small Crag Boar (x12)
    .mob Small Crag Boar
step
    .goto 1426/0,688.98,-6222.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talin Keeneye|r
    .turnin 183 >> Turn in The Boar Hunter
    .target Talin Keeneye
step
    #label Rockjaw
    .goto 1426,25.077,75.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .turnin 234 >> Turn in Coldridge Valley Mail Delivery
    .accept 182 >> Accept The Troll Cave
    .target Grelin Whitebeard
step
    #completewith next
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step
    .goto 1426/0,485.63,-6494.56,30 >>Enter the cave
    .isOnQuest 182
step
    .goto 1426/0,457.56,-6531.66,20,0
    .goto 1426/0,408.80,-6498.83,20,0
    .goto 1426/0,357.09,-6473.87,30,0
    .goto 1426/0,408.80,-6498.83,20,0
    .goto 1426/0,457.56,-6531.66,20,0
    .goto 1426/0,408.80,-6498.83,20,0
    .goto 1426/0,357.09,-6473.87,30,0
    .goto 1426/0,408.80,-6498.83,20,0
    .goto 1426/0,457.56,-6531.66,20,0
    .goto 1426/0,408.80,-6498.83,20,0
    .goto 1426/0,357.09,-6473.87,30,0
    .goto 1426/0,408.80,-6498.83
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps|r inside the cave
    >>|cRXP_WARN_Clear a path to just before the Frozen Lake room|r
    .complete 182,1,10 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step
    .goto 1426/0,408.80,-6498.83,50,0
    .goto 1426/0,457.56,-6531.66,40,0
    .goto 1426/0,532.42,-6448.26,40,0
    .goto 1426/0,466.42,-6460.41,40,0
    .goto 1426/0,524.05,-6516.56,40,0
    .goto 1426/0,532.42,-6448.26
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps|r en route back to |cRXP_FRIENDLY_Grelin Whitebeard|r
    .complete 182,1--Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << skip
    #completewith next
    +|cRXP_WARN_If you don't know how to logout skip, watch this video first|r
    .link https://www.youtube.com/watch?v=SWBtPqm5M0Q >>|cRXP_WARN_CLICK HERE to learn how to logout skip|r
step << skip
    >>Talk to |cRXP_FRIENDLY_Grelin Whitebeard|r and |cRXP_FRIENDLY_Nori Pridedrift|r
    >>|cRXP_WARN_Be Aware that "Scalding Mornbrew Delivery" has a 5-minute timer|r
    >>|cRXP_WARN_Make sure you have 3 inventory slots for these turnins/accepts|r
    .turnin 182,4 >> Turn in The Troll Cave
    .accept 218 >> Accept The Stolen Journal
    .goto 1426/0,567.09,-6362.99,-1
    .target +Grelin Whitebeard
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .goto 1426/0,571.82,-6371.10,-1
    .target +Nori Pridedrift
step
    >>Talk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    >>|cRXP_WARN_Make sure you have 3 inventory slots for these turnins/accepts|r
    .turnin 182,4 >> Turn in The Troll Cave
    .accept 218 >> Accept The Stolen Journal
    .goto 1426/0,567.09,-6362.99
    .target +Grelin Whitebeard
step
    .goto 1426/0,485.63,-6494.56,40,0
    .goto 1426/0,357.09,-6473.87,30,0
    .goto 1426/0,340.84,-6493.24,10 >>|cRXP_WARN_Enter the Cave. Run through the path you cleared (without fighting if possible) toward the Frozen Lake inside|r
    .isOnQuest 218
step
    .goto 1426/0,300.94,-6509.00
    >>|cRXP_WARN_Kill the |cRXP_ENEMY_Frostmane Troll Whelp|r in front of you|r
    >>Kill |cRXP_ENEMY_Grik'nir the Cold|r. Loot him for |cRXP_LOOT_Grelin Whitebeard's Journal|r
    >>|cRXP_WARN_Be careful as he casts|r |T135849:0|t[Frost Shock] |cRXP_WARN_(Range Instant: Deals 10 Frost damage and slows movespeed by 50% for 8 seconds)|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
step << skip
    #completewith Rybrad
    #label LogoutSkip1
    .goto 1426/0,342.81,-6487.330
    .goto 1426/0,336.40,-6164.25,30 >>|cRXP_WARN_Position your character until it looks like they're floating on the edge of the cliff above the Frozen Lake, then logout skip back to Anvilmar|r
    .isOnQuest 218
step
    >>Talk to |cRXP_FRIENDLY_Grelin Whitebeard|r and |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 218 >> Turn in The Stolen Journal
    .accept 282 >> Accept Senir's Observations
    .goto 1426/0,567.09,-6362.99,-1
    .target +Grelin Whitebeard
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .goto 1426/0,571.82,-6371.10,-1
    .target +Nori Pridedrift
step
    #completewith Rybrad
    #requires LogoutSkip1
    #label LogoutSkip2
    .goto 1426/0,384.18,-6143.90,20,0
    .goto 1426/0,392.06,-6123.87,10 >>Enter Anvilmar
    .isOnQuest 218,3364
step
    #label Rybrad
    .goto 1426/0,390.58,-6101.21
    >>Talk to |cRXP_FRIENDLY_Rybrad Coldbank|r
    .vendor >> Vendor Trash
    .target Rybrad Coldbank
    .isOnQuest 218,3364
step
    >>Talk to |cRXP_FRIENDLY_Durnan Furcutter|r and |cRXP_FRIENDLY_Marryk Nurribit|r
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
    .goto 1426/0,385.16,-6056.23
    .target +Durnan Furcutter
    .turnin 3114 >> Turn in Glyphic Memorandum
    .trainer >> Train your class spells (Arcane Intellect, Frostbolt)
    .goto 1426/0,388.17,-6056.10
    .target +Marryk Nurribit
    .isQuestAvailable 420
step
    #optional
    #xprate <1.1
    .goto 1426/0,338.87,-6216.46
    >>Talk to |cRXP_FRIENDLY_Balir Frosthammer|r
    .turnin 170,3 >> Turn in A New Threat
    .target Balir Frosthammer
    .isQuestComplete 170
step
    #xprate <1.1
    #sticky
    #label TroggEnd
    .goto 1426,27.858,76.482,0
    .goto 1426,30.727,76.831,0
    .goto 1426,29.280,75.500,0
    .waypoint 1426,27.858,76.482,50,0
    .waypoint 1426,28.946,77.153,50,0
    .waypoint 1426,29.716,77.605,50,0
    .waypoint 1426,30.727,76.831,50,0
    .waypoint 1426,32.814,75.221,50,0
    .waypoint 1426,31.138,74.048,50,0
    .waypoint 1426,30.077,74.479,50,0
    .waypoint 1426,29.280,75.500,50,0
    >>|cRXP_WARN_Kill ALL |cRXP_ENEMY_Rockjaw Troggs|r you see and|r |cRXP_ENEMY_Burly Rockjaw Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
    .isOnQuest 170
step
    #label StolenJ
    >>Talk to |cRXP_FRIENDLY_Nori Pridedrift|r
    -- >>Talk to |cRXP_FRIENDLY_Grelin Whitebeard|r and |cRXP_FRIENDLY_Nori Pridedrift|r
    -- .turnin 218,2 >> Turn in The Stolen Journal
    -- .accept 282 >> Accept Senir's Observations
    -- .goto 1426/0,567.09,-6362.99
    -- .target +Grelin Whitebeard
    .turnin 3365 >> Turn in Bring Back the Mug
    .goto 1426/0,571.82,-6371.10
    .target +Nori Pridedrift
step
    #xprate <1.1
    #requires TroggEnd
    .goto 1426/0,338.87,-6216.46
    >>Talk to |cRXP_FRIENDLY_Balir Frosthammer|r
    .turnin 170,3 >> Turn in A New Threat
    .target Balir Frosthammer
    .isQuestComplete 170
step
    #requires TroggEnd
    #label Observations
    >>Talk to |cRXP_FRIENDLY_Mountaineer Thalos|r and |cRXP_FRIENDLY_Hands Springsprocket|r
    .turnin 282 >> Turn in Senir's Observations
    .accept 420 >> Accept Senir's Observations
    .goto 1426/0,153.00,-6235.86
    .target +Mountaineer Thalos
    .accept 2160 >> Accept Supplies to Tannok
    .goto 1426/0,134.97,-6248.96
    .target +Hands Springsprocket
step
    #xprate <1.1
    #optional
    #completewith StockingJ
    .abandon 170 >> Abandon A New Threat
step
    .goto 1426/0,111.82,-6206.61,15,0
    .goto 1426/0,46.32,-6037.19,15 >> Travel through Coldridge Pass
    .subzoneskip 800,1
    .isOnQuest 2160
step
    #completewith StockingJ
    .goto 1426/0,3.97,-5943.61,40,0
    >>Kill |cRXP_ENEMY_Crag Boars|r. Loot them for |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r and |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_Be careful as they cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 25-70 melee damage on hit. Only castable at range)|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
step
    .goto 1426/0,-67.94,-5908.48,30,0
    .goto 1426/0,-162.50,-5822.79,45 >> |cRXP_WARN_Deal 51%+ damage to nearby |cRXP_ENEMY_Juvenile Snow Leopards|r and |cRXP_ENEMY_Young Black Bears|r, then pull them to the |cRXP_FRIENDLY_Ironforge Mountaineer|r to kill them more efficiently|r
    .mob Juvenile Snow Leopard
    .mob Young Black Bear
    .target Ironforge Mountaineer
    .isOnQuest 2160
step
    #completewith next
    .goto 1426/0,-337.34,-5703.93,50,0
    .goto 1426/0,-371.81,-5605.43,50,0
    .goto 1426/0,-464.45,-5573.78,20 >>Travel toward |cRXP_FRIENDLY_Tharek|r
step
    .goto 1426/0,-464.45,-5573.78
    >>Talk to |cRXP_FRIENDLY_Tharek|r
    .accept 400 >> Accept Tools for Steelgrill
    .target Tharek Blackstone
step
    #label StockingJ
    .goto 1426/0,-632.15,-5466.540
    >>Kite |cRXP_ENEMY_Young Black Bears|r en route |cRXP_WARN_(make sure to deal 51%+ damage to get credit)|r
    >>Talk to |cRXP_FRIENDLY_Bellowfiz|r
    .accept 317 >> Accept Stocking Jetsteam
    .mob Young Black Bear
    .target Pilot Bellowfiz
step
    >>Talk to |cRXP_FRIENDLY_Stonegear|r, |cRXP_FRIENDLY_Beldin|r, and |cRXP_FRIENDLY_Loslor|r
    >>|cRXP_WARN_Kite |cRXP_ENEMY_Young Black Bears|r to the |cRXP_FRIENDLY_Ironforge Mountaineer|r if you pulled any (make sure to deal 51%+ damage to get credit)|r
    .accept 313 >> Accept The Grizzled Den
    .target +Pilot Stonegear
    .goto 1426/0,-641.80,-5473.18
    .turnin 400 >> Turn in Tools for Steelgrill
    .target +Beldin Steelgrill
    .goto 1426/0,-682.58,-5488.87
    .accept 5541 >> Accept Ammo for Rumbleshot
    .vendor >> Vendor Trash
    .goto 1426/0,-664.55,-5499.710
    .target +Loslor Rudge
    .isQuestAvailable 312
step
    #completewith next
    >>Kill |cRXP_ENEMY_Crag Boars|r and |cRXP_ENEMY_Large Crag Boars|r. Loot them for |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r and |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_Be careful as they cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 25-70 melee damage on hit. Only castable at range)|r
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step
    .goto 1426/0,-679.62,-5573.58,50,0
    .goto 1426/0,-678.64,-5618.89,50,0
    .goto 1426/0,-620.03,-5550.60,50,0
    .goto 1426/0,-432.39,-5502.330,50,0
    .goto 1426/0,-349.65,-5586.06,50,0
    .goto 1426/0,-423.03,-5662.56,50,0
    .goto 1426/0,-422.05,-5775.18,50,0
    .goto 1426/0,-679.62,-5573.58,50,0
    .goto 1426/0,-678.64,-5618.89,50,0
    .goto 1426/0,-620.03,-5550.60,50,0
    .goto 1426/0,-432.39,-5502.330,50,0
    .goto 1426/0,-349.65,-5586.06,50,0
    .goto 1426/0,-423.03,-5662.56,50,0
    .goto 1426/0,-422.05,-5775.18,50,0
    .goto 1426/0,-679.62,-5573.58,50,0
    .goto 1426/0,-678.64,-5618.89,50,0
    .goto 1426/0,-620.03,-5550.60,50,0
    .goto 1426/0,-432.39,-5502.330,50,0
    .goto 1426/0,-349.65,-5586.06,50,0
    .goto 1426/0,-423.03,-5662.56
    >>Kill |cRXP_ENEMY_Young Black Bears|r and |cRXP_ENEMY_Ice Claw Bears|r. Loot them for their |cRXP_LOOT_Thick Bear Fur|r
    >>|cRXP_WARN_Kite |cRXP_ENEMY_Young Black Bears|r and |cRXP_ENEMY_Ice Claw Bears|r to nearby |cRXP_FRIENDLY_Ironforge Mountaineers|r (make sure to deal 51%+ damage to get credit)|r
    >>|cRXP_WARN_Be careful as they cast|r |T135853:0|t[Ice Claw] |cRXP_WARN_(Melee Instant: Deals an additional 4 melee damage)|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob Young Black Bear
    .mob Ice Claw Bear
step
#loop
	.line Dun Morogh,51.70,49.66,51.08,52.42,51.43,53.21,50.06,51.66,49.56,50.82,48.12,49.10,48.21,46.93,45.48,50.04,44.07,52.50,43.69,55.59,42.78,56.86,44.45,59.33,46.31,61.85,46.26,59.49,48.08,59.05,49.40,58.97,48.30,56.86,49.09,54.74,49.61,54.32,51.43,53.21
	.goto 1426/0,-744.14,-5507.59,40,0
	.goto 1426/0,-713.61,-5598.21,40,0
	.goto 1426/0,-730.84,-5624.15,40,0
	.goto 1426/0,-663.37,-5573.25,40,0
	.goto 1426/0,-638.75,-5545.67,40,0
	.goto 1426/0,-567.83,-5489.200,40,0
	.goto 1426/0,-572.26,-5417.95,40,0
	.goto 1426/0,-437.81,-5520.06,40,0
	.goto 1426/0,-368.36,-5600.830,40,0
	.goto 1426/0,-349.65,-5702.29,40,0
	.goto 1426/0,-304.83,-5743.99,40,0
	.goto 1426/0,-387.08,-5825.09,40,0
	.goto 1426/0,-478.68,-5907.83,40,0
	.goto 1426/0,-476.22,-5830.34,40,0
	.goto 1426/0,-565.86,-5815.89,40,0
	.goto 1426/0,-630.87,-5813.27,40,0
	.goto 1426/0,-576.69,-5743.99,40,0
	.goto 1426/0,-615.60,-5674.38,40,0
	.goto 1426/0,-641.21,-5660.59,40,0
	.goto 1426/0,-730.84,-5624.15,40,0
    >>Kill |cRXP_ENEMY_Crag Boars|r and |cRXP_ENEMY_Large Crag Boars|r. Loot them for |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r and |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_Be careful as they cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 25-70 melee damage on hit. Only castable at range)|r
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob Crag Boar
    .mob Large Crag Boar
step
    .goto 1426/0,-632.15,-5466.540
    >>Talk to |cRXP_FRIENDLY_Bellowfiz|r
    .turnin 317 >> Turn in Stocking Jetsteam
    .accept 318 >> Accept Evershine
    .target Pilot Bellowfiz
step
#loop
	.line Dun Morogh,51.70,49.66,51.08,52.42,51.43,53.21,50.06,51.66,49.56,50.82,48.12,49.10,48.21,46.93,45.48,50.04,44.07,52.50,43.69,55.59,42.78,56.86,44.45,59.33,46.31,61.85,46.26,59.49,48.08,59.05,49.40,58.97,48.30,56.86,49.09,54.74,49.61,54.32,51.43,53.21
	.goto 1426/0,-744.14,-5507.59,40,0
	.goto 1426/0,-713.61,-5598.21,40,0
	.goto 1426/0,-730.84,-5624.15,40,0
	.goto 1426/0,-663.37,-5573.25,40,0
	.goto 1426/0,-638.75,-5545.67,40,0
	.goto 1426/0,-567.83,-5489.200,40,0
	.goto 1426/0,-572.26,-5417.95,40,0
	.goto 1426/0,-437.81,-5520.06,40,0
	.goto 1426/0,-368.36,-5600.830,40,0
	.goto 1426/0,-349.65,-5702.29,40,0
	.goto 1426/0,-304.83,-5743.99,40,0
	.goto 1426/0,-387.08,-5825.09,40,0
	.goto 1426/0,-478.68,-5907.83,40,0
	.goto 1426/0,-476.22,-5830.34,40,0
	.goto 1426/0,-565.86,-5815.89,40,0
	.goto 1426/0,-630.87,-5813.27,40,0
	.goto 1426/0,-576.69,-5743.99,40,0
	.goto 1426/0,-615.60,-5674.38,40,0
	.goto 1426/0,-641.21,-5660.59,40,0
	.goto 1426/0,-730.84,-5624.15,40,0
    .xp 5+2690 >> Grind to 2690+/2800xp
    .mob Young Black Bear
    .mob Crag Boar
step
    #completewith InnLS1
    +|cRXP_WARN_Unequip your current|r |T135148:0|t[Staff]
    -- +|cRXP_WARN_Remember the Inn Logout Skip soon. Unequip your current|r |T135148:0|t[Staff]
    -- >>|cRXP_WARN_NOTE: Itemrack currently can cause problems after logout skipping where your ingame UI freezes. Make sure to disable the addon or make a /reload command you can click when/if that happens|r
step
    #completewith Tannok
    .cast 1459 >> Rebuff |T135932:0|t[Arcane Intellect]
    .cast 168 >> Rebuff |T135843:0|t[Frost Armor]
step
    .goto 1426/0,-504.29,-5596.24
    >>Talk to |cRXP_FRIENDLY_Ragnar|r
    .accept 384 >> Accept Beer Basted Boar Ribs
    .target Ragnar Thunderbrew
step
    #completewith next
    .goto 1426/0,-511.19,-5584.09,10,0
    .goto 1426/0,-537.29,-5587.04,12 >>Go inside
step
    .goto 1426/0,-523.35,-5590.82
    >>Talk to |cRXP_FRIENDLY_Tannok|r
    .turnin 2160,2 >> Turn in Supplies to Tannok
    .target Tannok Frosthammer
    .xp >6,1
step
    #completewith next
    .goto 1426/0,-511.19,-5584.09,10,0
    .goto 1426/0,-537.29,-5587.04,12 >>Go inside
step
    #sticky
    #label Tannok
    .goto 1426/0,-523.35,-5590.82,0,0
    >>Talk to |cRXP_FRIENDLY_Tannok|r
    .turnin 2160,2 >> Turn in Supplies to Tannok
    .target Tannok Frosthammer
step
    .goto 1426/0,-537.29,-5587.04
    >>Talk to |cRXP_FRIENDLY_Magis|r upstairs
    .trainer >> Train your class spells (Fireball R2, Fire Blast)
    .target Magis Sparkmantle
    .isQuestAvailable 312
step
    #completewith Golorn
    .goto 1426/0,-531.38,-5601.49
    >>Talk to |cRXP_FRIENDLY_Belm|r
    .home >> Set your Hearthstone to Thunderbrew Distillery
    .target Innkeeper Belm
    .isQuestAvailable 312
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Buy a|r |T132800:0|t[Rhapsody Malt] |cRXP_BUY_from him|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6
    .money <0.0050
step
    #requires Tannok
    .goto 1426/0,-504.29,-5596.24
    >>Talk to |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >> Turn in Beer Basted Boar Ribs
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Buy 20|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .collect 1179,20,312,1 --Ice Cold Milk (20)
    .target Innkeeper Belm
    .money <0.0582
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Buy 15|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .collect 1179,15,312,1 --Ice Cold Milk (15)
    .target Innkeeper Belm
    .money <0.0457
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Buy 10|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Innkeeper Belm
    .money <0.0332
step
    #label InnLS1
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Buy 5|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .collect 1179,5,312,1 --Ice Cold Milk (5)
    .target Innkeeper Belm
    .money <0.0207
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Buy 20|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,20,312,1 --Refreshing Spring Water (20)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0182
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Buy 15|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,15,312,1 --Refreshing Spring Water (15)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0157
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,10,312,1 --Refreshing Spring Water (10)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0132
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Buy 5|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,5,312,1 --Refreshing Spring Water (5)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0107
step << skip
    #completewith SenirO
    .goto 1426/0,-535.32,-5604.120,-1
    .goto 1426/0,-519.07,-5679.96,35 >>|cRXP_WARN_Jump up on top of the barrels on the wall behind |cRXP_FRIENDLY_Belm|r. Logout Skip to Kharanos|r
step
    #sticky
    #label Golorn
    .goto 1426/0,-501.34,-5640.89,-1
    >>Talk to |cRXP_FRIENDLY_Golorn|r
    >>|cRXP_BUY_Buy a|r |T135637:0|t[Skinning Knife] |cRXP_BUY_from him|r
    .collect 7005,1,312,1 --Skinning Knife (1)
    .target Golorn Frostbeard
step
    #label SenirO
    .goto 1426/0,-499.17,-5644.37,-1
    >>Talk to |cRXP_FRIENDLY_Senir|r
    .turnin 420 >> Turn in Senir's Observations
    .target Senir Whitebeard
step
    #completewith next
    #requires Golorn
    +Equip the |T135637:0|t[Skinning Knife]
    .use 7005
    .itemcount 7005,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.2
step
    #requires Golorn
#loop
	.line Dun Morogh,42.57,54.80,41.89,54.51,42.13,52.68,42.46,51.96,41.91,51.43,42.46,51.96,42.13,52.68,42.57,54.80
	.goto 1426/0,-294.49,-5676.350,10,0
	.goto 1426/0,-261.00,-5666.83,10,0
	.goto 1426/0,-272.82,-5606.74,10,0
	.goto 1426/0,-289.07,-5583.10,10,0
	.goto 1426/0,-261.98,-5565.70,10,0
	.goto 1426/0,-289.07,-5583.10,10,0
	.goto 1426/0,-272.82,-5606.74,10,0
	.goto 1426/0,-294.49,-5676.350,10,0
    >>Kill |cRXP_ENEMY_Young Wendigos|r and |cRXP_ENEMY_Wendigos|r. Loot them for their |cRXP_LOOT_Wendigo Manes|r
    >>|cRXP_WARN_Be careful as they cast|r |T135848:0|t[Frost Breath] |cRXP_WARN_(Melee Cast: Deals 6-10 Frost damage) and have increased|r |T135849:0|t[Frost Resistance]
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Young Wendigo
    .mob Wendigo
step
    .goto 1426/0,-371.32,-5746.94
    >>Open the |cRXP_PICK_Ammo Crate|r on the ground. Loot it for |cRXP_LOOT_Rumbleshot's Ammo|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #completewith Ammo
    .goto 1426/0,-197.47,-5920.63,45,0
    >>Kill |cRXP_ENEMY_Crag Boars|r and |cRXP_ENEMY_Juvenile Snow Leopards|r en route
    >>Loot the |cRXP_ENEMY_Crag Boars|r for their |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Crag Boars|r cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 25-70 melee damage on hit. Only castable at range)|r
    .complete 384,1 --Crag Boar Rib (6)
    .disablecheckbox
    .goto 1426/0,-201.51,-6015.520,20 >>Travel toward |cRXP_FRIENDLY_Hegnar|r
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .xp >7-1000,1
    .isQuestAvailable 384
step
    #completewith Ammo
    .goto 1426/0,-197.47,-5920.63,45,0
    >>Kill |cRXP_ENEMY_Crag Boars|r and |cRXP_ENEMY_Juvenile Snow Leopards|r en route
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Crag Boars|r cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 25-70 melee damage on hit. Only castable at range)|r
    .goto 1426/0,-201.51,-6015.520,20 >>Travel toward |cRXP_FRIENDLY_Hegnar|r
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .xp >7-1000,1
    .isQuestTurnedIn 384
step
    #completewith next
    .goto 1426/0,-197.47,-5920.63,45,0
    .goto 1426/0,-201.51,-6015.520,20 >>Travel toward |cRXP_FRIENDLY_Hegnar|r
    .xp <7-1000,1
step
    #label Ammo
    .goto 1426/0,-201.51,-6015.520
    >>Talk to |cRXP_FRIENDLY_Hegnar|r
    .turnin 5541 >> Turn in Ammo for Rumbleshot
    .vendor >> Vendor Trash
    .target Hegnar Rumbleshot
    .isQuestAvailable 312
step
    #completewith TundraOne
    .goto 1426/0,-68.43,-5909.470,50,0
    .goto 1426/0,72.92,-5741.36,45,0
    .goto 1426/0,47.80,-5674.05,50,0
    .goto 1426/0,10.37,-5600.51,40,0
    >>|cRXP_WARN_Deal 51%+ damage to nearby |cRXP_ENEMY_Juvenile Snow Leopards|r and |cRXP_ENEMY_Young Black Bears|r, then pull them to the |cRXP_FRIENDLY_Ironforge Mountaineer|r to kill them more efficiently|r
    >>Kill |cRXP_ENEMY_Large Crag Boars|r and |cRXP_ENEMY_Crag Boars|r en route. Loot them for their |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Large Crag Boars|r and |cRXP_ENEMY_Crag Boars|r cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 25-70 melee damage on hit. Only castable at range)|r
    .complete 384,1 --Crag Boar Rib (6)
    .disablecheckbox
    .xp 7 >> Grind to Level 7 en route to |cRXP_FRIENDLY_Tundra|r before talking to him
    .target Ironforge Mountaineer
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .isQuestAvailable 384
step
    #completewith next
    .goto 1426/0,-68.43,-5909.470,50,0
    .goto 1426/0,72.92,-5741.36,45,0
    .goto 1426/0,47.80,-5674.05,50,0
    .goto 1426/0,10.37,-5600.51,40,0
    >>|cRXP_WARN_Deal 51%+ damage to nearby |cRXP_ENEMY_Juvenile Snow Leopards|r and |cRXP_ENEMY_Young Black Bears|r, then pull them to the |cRXP_FRIENDLY_Ironforge Mountaineer|r to kill them more efficiently|r
    >>Kill |cRXP_ENEMY_Large Crag Boars|r and |cRXP_ENEMY_Crag Boars|r en route
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Large Crag Boars|r and |cRXP_ENEMY_Crag Boars|r cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 25-70 melee damage on hit. Only castable at range)|r
    .xp 7 >> Grind to Level 7 en route to |cRXP_FRIENDLY_Tundra|r before talking to him
    .target Ironforge Mountaineer
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .isQuestTurnedIn 384
step
    #label TundraOne
    .goto 1426/0,99.51,-5573.25
    >>Talk to |cRXP_FRIENDLY_Tundra|r
    .accept 312 >> Accept Tundra MacGrann's Stolen Stash
    .target Tundra MacGrann
step
    #completewith next
    +|cRXP_WARN_Kite an |cRXP_ENEMY_Ice Claw Bear|r toward|r |cRXP_FRIENDLY_Rejold|r
    >>|cRXP_WARN_Try to accept the quest before the |cRXP_ENEMY_Ice Claw Bear|r dies to get quest credit|r
    >>|cRXP_WARN_Be careful as they cast|r |T135853:0|t[Ice Claw] |cRXP_WARN_(Melee Instant: Deals an additional 4 melee damage)|r
    >>|cRXP_WARN_Make sure to deal 51%+ damage to get credit|r
    .mob Ice Claw Bear
step
    >>Talk to |cRXP_FRIENDLY_Rejold|r and |cRXP_FRIENDLY_Marleth|r
    .turnin 318 >> Turn in Evershine
    .accept 319 >> Accept A Favor for Evershine
    .accept 315 >> Accept The Perfect Stout
    .target +Rejold Barleybrew
    .goto 1426/0,315.23,-5378.55
    .accept 310 >> Accept Bitter Rivals
    .goto 1426/0,315.42,-5372.02
    .target +Marleth Barleybrew
step
    .goto 1426/0,302.42,-5387.74,0,0
    >>Talk to |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_Buy up to 10 more|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .vendor >> Vendor Trash
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Keeg Gibn
    .itemcount 1179,10
    .money <0.0350
    .isOnQuest 319
step
    .goto 1426/0,302.42,-5387.74,0,0
    >>Talk to |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_Buy up to 5 more|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .vendor >> Vendor Trash
    .collect 1179,5,312,1 --Ice Cold Milk (5)
    .target Keeg Gibn
    .itemcount 1179,5
    .money <0.0225
    .isOnQuest 319
step
    #completewith CaveLS
    .goto 1426/0,151.72,-5436.670,50,0
    .goto 1426/0,-12.78,-5370.34,50,0
    >>Kill |cRXP_ENEMY_Ice Claw Bears|r, |cRXP_ENEMY_Elder Crag Boars|r, and |cRXP_ENEMY_Snow Leopards|r en route to the Cave. Loot the |cRXP_ENEMY_Elder Crag Boars|r for |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_Focus on the|r |cRXP_ENEMY_Snow Leopards|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Ice Claw Bears|r cast|r |T135853:0|t[Ice Claw] |cRXP_WARN_(Melee Instant: Deals an additional 4 melee damage), and |cRXP_ENEMY_Elder Crag Boars|r cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 25-70 melee damage on hit. Only castable at range)|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .complete 384,1 --Crag Boar Rib (6)
    .mob +Elder Crag Boar
    .isQuestAvailable 384
step
    #completewith CaveLS
    .goto 1426/0,151.72,-5436.670,50,0
    .goto 1426/0,-12.78,-5370.34,50,0
    >>Kill |cRXP_ENEMY_Ice Claw Bears|r, |cRXP_ENEMY_Elder Crag Boars|r, and |cRXP_ENEMY_Snow Leopards|r en route to the Cave
    >>|cRXP_WARN_Focus on the|r |cRXP_ENEMY_Snow Leopards|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Ice Claw Bears|r cast|r |T135853:0|t[Ice Claw] |cRXP_WARN_(Melee Instant: Deals an additional 4 melee damage), and |cRXP_ENEMY_Elder Crag Boars|r cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 25-70 melee damage on hit. Only castable at range)|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .isQuestTurnedIn 384
step << skip
    #completewith next
    .goto 1426/0,-69.42,-5281.36,30 >> Go inside the Cave
    .isOnQuest 319
step << skip
    #label CaveLS
    .goto 1426/0,-85.18,-5300.74
    .goto 1426/0,-519.07,-5679.96,30 >> |cRXP_WARN_Perform a Logout Skip inside the cave to teleport back to Kharanos|r
    .isOnQuest 319
step
    .goto 1426/0,-499.17,-5644.37
    >>Talk to |cRXP_FRIENDLY_Senir|r
    .accept 287 >> Accept Frostmane Hold
    .target Senir Whitebeard
step
    #completewith Rhapsody1
    .goto 1426/0,-511.19,-5584.09,10,0
    .goto 1426/0,-522.02,-5585.07,12 >>Go inside
step
    .goto 1426/0,-531.38,-5601.49
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Buy|r |T132800:0|t[Rhapsody Malt] |cRXP_BUY_and|r |T132800:0|t[Thunder Ale] |cRXP_BUY_from him|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311,1 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .itemcount 2886,6
    .isQuestAvailable 384
step
    #label Rhapsody1
    .goto 1426/0,-531.38,-5601.49
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Buy a|r |T132800:0|t[Thunder Ale] |cRXP_BUY_from him|r
    .collect 2686,1,311,1 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .itemcount 2886,<6
step
    #completewith next
    .goto 1426/0,-537.29,-5597.55,8,0
    .goto 1426/0,-548.13,-5598.54,8 >>Go Downstairs
step
    #completewith next
    .goto 1426/0,-544.68,-5606.09
    >>Talk to |cRXP_FRIENDLY_Jarven|r downstairs
    .turnin 308 >> Turn in Distracting Jarven
    .target Jarven Thunderbrew
step
    .goto 1426/0,-548.13,-5607.400
    >>Keep mousing over the |cRXP_PICK_Guarded Thunder Ale Barrel|r downstairs. Wait for the |cRXP_PICK_Guarded Thunder Ale Barrel|r to become Unguarded
    >>Click the |cRXP_PICK_Unguarded Thunder Ale Barrel|r
    .turnin 310 >> Turn in Bitter Rivals
    .accept 311 >> Accept Return to Marleth
step
    .goto 1426/0,-531.38,-5601.49
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Buy up to 10 more|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Innkeeper Belm
    .money <0.0250
step
    .goto 1426/0,-531.38,-5601.49
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Buy up to 5 more|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .collect 1179,5,312,1 --Ice Cold Milk (5)
    .target Innkeeper Belm
    .money <0.0125
step
    .goto 1426/0,-522.02,-5585.07,12,0
    .goto 1426/0,-511.19,-5584.09,10,0
    .goto 1426/0,-504.29,-5596.24,20 >>Exit the Inn
    .isOnQuest 287
step
    .goto 1426/0,-504.29,-5596.24
    >>Talk to |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >> Turn in Beer Basted Boar Ribs
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    #completewith next
    .goto 1426/0,-495.43,-5434.04,40,0
    +|cRXP_WARN_Deal 51%+ damage to nearby |cRXP_ENEMY_Snow Tracker Wolves|r, |cRXP_ENEMY_Winter Wolves|r, and |cRXP_ENEMY_Young Black Bears|r. Pull them to the |cRXP_FRIENDLY_Ironforge Mountaineer|r to kill them more efficiently|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Snow Tracker Wolves|r have|r |T132150:0|t[Increased Aggro Range] |cRXP_WARN_(Aggro range is increased by about 8 yards)|r
    .mob Snow Tracker Wolf
    .mob Winter Wolf
    .mob Young Black Bear
    .target Ironforge Mountaineer
step
    .goto 1426/0,-311.23,-5360.16,25,0
    .goto 1426/0,-282.18,-5363.45,45 >> Run up the ramp toward the |cRXP_ENEMY_Frostmane Seers|r
    .isOnQuest 315
step
    #requires SeerRamp
    #completewith next
    >>Kill the |cRXP_ENEMY_Frostmane Headhunter|r patrol
    >>|cRXP_WARN_Be careful, as he patrols between all the stationary|r |cRXP_ENEMY_Frostmane Seers|r
    >>|cRXP_WARN_Be careful as they cast|r |T132222:0|t[Shoot] |cRXP_WARN_(Ranged Cast: Deals 8-15 damage)|r
    .complete 287,1 --Kill Frostmane Headhunters (5)
    .mob Frostmane Headhunter
step
    #label ShimmerB
    .goto 1426/0,-269.86,-5370.34,40,0
    .goto 1426/0,-271.83,-5342.43,40,0
    .goto 1426/0,-250.16,-5306.32,40,0
    .goto 1426/0,-230.46,-5333.90,20,0
    .goto 1426/0,-240.81,-5354.91,30,0
    .goto 1426/0,-221.11,-5349.99,30,0
    .goto 1426/0,-224.06,-5372.31,40,0
    .goto 1426/0,-184.66,-5283.66,40,0
    .goto 1426/0,-151.66,-5186.15,20,0
    .goto 1426/0,-164.96,-5114.900,20,0
    .goto 1426/0,-258.54,-5046.93
    >>Kill |cRXP_ENEMY_Frostmane Seers|r. Loot them for their |cRXP_LOOT_Shimmerweed|r
    >>Open the |cRXP_PICK_Shimmerweed Baskets|r on the ground. Loot them for their |cRXP_LOOT_Shimmerweed|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    >>|cRXP_WARN_Be careful as they cast|r |T136048:0|t[Lightning Bolt] |cRXP_WARN_(Ranged Cast: Deals 15-30 Nature damage)|r
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step
    #completewith IBCave
    >>Kill |cRXP_ENEMY_Large Crag Boars|r and |cRXP_ENEMY_Elder Crag Boars|r. Loot them for their |cRXP_LOOT_Crag Boar Ribs|r
    .complete 384,1 --Crag Boar Rib (6)
    .mob Large Crag Boar
    .mob Elder Crag Boar
step
    #completewith next
    .goto 1426/0,-190.08,-5427.80,40,0
    .goto 1426/0,-55.63,-5580.48,40,0
    >>Kill the two |cRXP_ENEMY_Elder Crag Boars|r en route to the cave (if they're up)
    >>|cRXP_WARN_Be careful as they cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 25-85 melee damage on hit. Only castable at range)|r
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob Elder Crag Boar
step
    #label IBCave
    .goto 1426/0,-62.03,-5640.56,50 >>Travel toward the Cave
    .isOnQuest 312
step
    #completewith next
    +|cRXP_WARN_After looting it, remember to jump-turn his attacks to avoid the Daze and to jump on the tree log to temporarily evade him|r
step
    .goto 1426/0,-94.53,-5647.79
    >>|cRXP_WARN_If |cRXP_ENEMY_Old Icebeard|r is in the cave, kite him up the side of the cave, then all the way above it. Wait for him to get close, then jump back down then go toward the back of the cave|r
    >>Open |cRXP_PICK_MacGrann's Meat Locker|r on the ground. Loot it for |cRXP_LOOT_Macgrann's Dried Meats|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3120 >>|cRXP_WARN_CLICK HERE If you're struggling|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
    .mob Old Icebeard
step
    .goto 1426/0,99.51,-5573.25
    >>Talk to |cRXP_FRIENDLY_Tundra|r
    .turnin 312,1 >> Turn in Tundra MacGrann's Stolen Stash
    .target Tundra MacGrann
step
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16,40,0
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16
    >>Kill |cRXP_ENEMY_Ice Claw Bears|r, |cRXP_ENEMY_Elder Crag Boars|r, and |cRXP_ENEMY_Snow Leopards|r. Loot the |cRXP_ENEMY_Elder Crag Boars|r for |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_Remember to kite an |cRXP_ENEMY_Ice Claw Bear|r or |cRXP_ENEMY_Snow Leopards|r back to the questgiver if possible|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Ice Claw Bears|r cast|r |T135853:0|t[Ice Claw] |cRXP_WARN_(Melee Instant: Deals an additional 4 melee damage), and |cRXP_ENEMY_Elder Crag Boars|r cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 35-85 melee damage on hit. Only castable at range)|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .complete 384,1 --Crag Boar Rib (6)
    .disablecheckbox
    .mob Elder Crag Boar
    .isQuestAvailable 384
step
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16,40,0
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16
    >>Kill |cRXP_ENEMY_Ice Claw Bears|r, |cRXP_ENEMY_Elder Crag Boars|r, and |cRXP_ENEMY_Snow Leopards|r
    >>|cRXP_WARN_Remember to kite an |cRXP_ENEMY_Ice Claw Bear|r or |cRXP_ENEMY_Snow Leopards|r back to the questgiver if possible|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Ice Claw Bears|r cast|r |T135853:0|t[Ice Claw] |cRXP_WARN_(Melee Instant: Deals an additional 4 melee damage), and |cRXP_ENEMY_Elder Crag Boars|r cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 35-85 melee damage on hit. Only castable at range)|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .isQuestTurnedIn 384
step
    >>Talk to |cRXP_FRIENDLY_Rejold|r and |cRXP_FRIENDLY_Marleth|r
    .turnin 315,1 >> Turn in The Perfect Stout
    .accept 413 >> Accept Shimmer Stout
    .turnin 319 >> Turn in A Favor for Evershine
    .accept 320 >> Accept Return to Bellowfiz
    .goto 1426/0,315.28,-5378.39
    .turnin 311 >> Turn in Return to Marleth
    .goto 1426/0,315.42,-5372.02
    .target Rejold Barleybrew
step
    .goto 1426/0,302.42,-5387.74
    >>Talk to |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_Buy up to 10 more|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .collect 1179,10,287,1 --Ice Cold Milk (10)
    .target Keeg Gibn
    .money <0.0250
step
    .goto 1426/0,302.42,-5387.74
    >>Talk to |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_Buy up to 5 more|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .collect 1179,5,287,1 --Ice Cold Milk (5)
    .target Keeg Gibn
    .money <0.0125
step
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16,40,0
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16
    >>Kill |cRXP_ENEMY_Elder Crag Boars|r. Loot them for their |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_Be careful as they cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 35-85 melee damage on hit. Only castable at range)|r
    .complete 384,1 --Crag Boar Rib (6)
    .mob Elder Crag Boar
step
    #completewith Explore
    .goto 1426/0,564.92,-5503.65,35,0
    .goto 1426/0,573.79,-5538.78,12 >>Enter the cave from the north side
step
    .goto 1426/0,605.80,-5545.020,40,0
    .goto 1426/0,654.07,-5563.40
    >>Kill |cRXP_ENEMY_Frostmane Headhunters|r inside the cave
    >>|cRXP_WARN_Be careful as they cast|r |T132222:0|t[Shoot] |cRXP_WARN_(Ranged Cast: Deals 8-15 damage)|r
    >>|cRXP_WARN_Be careful of the patrolling |cRXP_ENEMY_Frostmane Headhunter|r inside|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #label Explore
    .goto 1426/0,668.84,-5585.73,8,0
    .goto 1426/0,674.26,-5587.37
    >>|cRXP_WARN_Carefully WALK down onto the nook below (do NOT fall down). Walk carefully down the nook until you get credit|r
    >>|cRXP_WARN_Be careful of the |cRXP_ENEMY_Frostmane Hideskinner|r below, as he may be able to attack you on the nook if he's close to it|r
    >>|cRXP_WARN_Get ready to cast|r |T134414:0|t[Hearthstone]
    .link https://youtu.be/Zg4FNWw-P5k?t=3619 >>|cRXP_WARN_CLICK HERE If you're struggling|r
    .complete 287,2 --Fully explore Frostmane Hold
step << skip
    #completewith next
    +|cRXP_WARN_Remember the Inn Logout Skip soon!|r
step
    #completewith Senir2
    .hs >> Hearth to Kharanos
step
    .goto 1426/0,-531.38,-5601.49
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Buy a|r |T132800:0|t[Rhapsody Malt] |cRXP_BUY_from him|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
step
    .goto 1426/0,-537.29,-5587.04
    >>Talk to |cRXP_FRIENDLY_Magis|r upstairs
    .trainer >> Train your class spells (Frostbolt r2, Polymorph)
    .target Magis Sparkmantle
    .isQuestAvailable 314
step
    #completewith Senir2
    +|cRXP_WARN_Remember to save|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_you get for leveling|r |T133971:0|t[Cooking] |cRXP_WARN_to 50 later|r
step
    .goto 1426/0,-504.29,-5596.24
    >>Talk to |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >> Turn in Beer Basted Boar Ribs
    .target Ragnar Thunderbrew
step
    #label Senir2
    .goto 1426/0,-499.17,-5644.37
    >>Talk to |cRXP_FRIENDLY_Senir|r
    .turnin 287,2 >> Turn in Frostmane Hold
    .accept 291 >> Accept The Reports
    .target Senir Whitebeard
step
    #completewith next
    .cast 1459 >> Rebuff |T135932:0|t[Arcane Intellect]
    .cast 168 >> Rebuff |T135843:0|t[Frost Armor]
step
    >>Talk to |cRXP_FRIENDLY_Bellowfiz|r and |cRXP_FRIENDLY_Stonegear|r
    .turnin 320,2 >> Turn in Return to Bellowfiz
    .target +Pilot Bellowfiz
    .goto 1426/0,-632.15,-5466.540
    .turnin 313 >> Turn in The Grizzled Den
    .goto 1426/0,-641.80,-5473.18
    .target +Pilot Stonegear
step
    #completewith next
    +|cRXP_WARN_Deal 51%+ damage to nearby |cRXP_ENEMY_Winter Wolves|r, then pull them to the |cRXP_FRIENDLY_Ironforge Mountaineers|r that CAN be patrolling on the road to kill them more efficiently|r
    >>|cRXP_WARN_If you don't see the |cRXP_FRIENDLY_Ironforge Mountaineers|r, skip this step|r
    .mob Winter Wolf
    .target Ironforge Mountaineer
step
    #completewith Rudra
    #label Dirt
    .goto 1426/0,-1145.04,-5504.30,40,0
    .goto 1426/0,-1219.90,-5422.55,40 >>Go up the dirt path
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_CLICK HERE If you're struggling|r
    +|cRXP_WARN_Kite |cRXP_ENEMY_Vagash|r down to|r |cRXP_FRIENDLY_Rudra|r
    .mob Vagash
step
    #label Rudra
    .goto 1426/0,-1304.61,-5513.82
    >>Talk to |cRXP_FRIENDLY_Rudra|r
    .accept 314 >> Accept Protecting the Herd
    .target Rudra Amberstill
step
    .goto 1426/0,-1279.49,-5392.01,0
    .goto 1426/0,-1289.83,-5669.780,40,0
    .goto 1426/0,-1291.80,-5706.89
    >>Kill |cRXP_ENEMY_Vagash|r. Loot him for the |cRXP_LOOT_Fang of Vagash|r
    >>|cRXP_WARN_Kite |cRXP_ENEMY_Vagash|r down to the |cRXP_FRIENDLY_Dun Morogh Mountaineer|r south of the ranch. Make sure you do 51%+ damage to him|r
    >>|cRXP_WARN_Remember to get The Tundrid Hills explore xp and pull the |cRXP_ENEMY_Snow Leopard|r to the |cRXP_FRIENDLY_Dun Morogh Mountaineer|r if convenient|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_CLICK HERE If you're struggling|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto 1426/0,-1304.61,-5513.82
    >>Talk to |cRXP_FRIENDLY_Rudra|r
    .turnin 314,3 >> Turn in Protecting the Herd
    .target Rudra Amberstill
step << skip
    #completewith Ghilm
    +|cRXP_WARN_Remember to save|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_you get for leveling|r |T133971:0|t[Cooking] |cRXP_WARN_to 50 later|r
step
    #completewith next
    .goto 1426/0,-1465.16,-5548.96,50,0
    .goto 1426/0,-1533.13,-5638.92,30,0
    +|cRXP_WARN_Kite the |cRXP_ENEMY_Ice Claw Bear|r to the |cRXP_FRIENDLY_Ironforge Mountaineer|r (make sure to deal 51%+ damage to get credit)|r
    >>|cRXP_WARN_Be careful as they cast|r |T135853:0|t[Ice Claw] |cRXP_WARN_(Melee Instant: Deals an additional 4 melee damage)|r
    .mob Ice Claw Bear
step
    #sticky
    #label Ghilm
    .goto 1426/0,-1566.62,-5664.86,0,0
    >>Talk to |cRXP_FRIENDLY_Ghilm|r
    .train 2550 >> Train |T133971:0|t[Cooking]
    .target Cook Ghilm
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
    >>Talk to |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Buy 15|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .collect 1179,15,432,1 --Ice Cold Milk (15)
    .target Kazan Mogosh
    .money <0.0395
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
    >>Talk to |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Buy 10|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .collect 1179,10,432,1 --Ice Cold Milk (10)
    .target Kazan Mogosh
    .money <0.0260
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
    >>Talk to |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Buy 5|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .collect 1179,5,432,1 --Ice Cold Milk (5)
    .target Kazan Mogosh
    .money <0.0135
step
    #requires Ghilm
    >>Talk to |cRXP_FRIENDLY_Mehr|r and |cRXP_FRIENDLY_Stonebrow|r
    .accept 433 >> Accept The Public Servant
    .target +Senator Mehr Stonehallow
    .goto 1426/0,-1579.91,-5714.77
    .accept 432 >> Accept Those Blasted Troggs!
    .goto 1426/0,-1600.30,-5726.590
    .target +Foreman Stonebrow
step
    #completewith Bonesnappers
    >>Kill |cRXP_ENEMY_Rockjaw Skullthumpers|r
    >>|cRXP_WARN_Don't go out of your way to kill them|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #completewith next
    .goto 1426/0,-1681.86,-5723.30,30 >>Enter the cave
step
    #label Bonesnappers
    .goto 1426/0,-1693.68,-5660.26,40,0
    .goto 1426/0,-1686.29,-5622.83,40,0
    .goto 1426/0,-1740.96,-5534.51,40,0
    .goto 1426/0,-1771.00,-5568.000,40,0
    .goto 1426/0,-1774.45,-5602.80
    >>Kill |cRXP_ENEMY_Rockjaw Bonesnappers|r inside the cave
    >>|cRXP_WARN_Be careful as they cast|r |T132154:0|t[Knockdown] |cRXP_WARN_(Melee Instant: Stuns for 2 seconds)|r
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Bonesnapper
step
    .goto 1426/0,-1681.86,-5723.30,30,0
#loop
	.line Dun Morogh,69.93,57.29,70.57,58.61,69.68,59.37,68.36,59.57,69.16,57.51,69.93,57.29
	.goto 1426/0,-1641.97,-5758.11,30,0
	.goto 1426/0,-1673.49,-5801.45,30,0
	.goto 1426/0,-1629.66,-5826.40,30,0
	.goto 1426/0,-1564.65,-5832.97,30,0
	.goto 1426/0,-1604.05,-5765.33,30,0
	.goto 1426/0,-1641.97,-5758.11,30,0
    >>Kill |cRXP_ENEMY_Rockjaw Skullthumpers|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #sticky
    #label Frast
    .goto 1426/0,-1589.76,-5714.44,0,0
    >>Talk to |cRXP_FRIENDLY_Frast|r
    .vendor >> Vendor Trash
    .target Frast Dokner
step
    >>Talk to |cRXP_FRIENDLY_Stonebrow|r and |cRXP_FRIENDLY_Mehr|r
    .turnin 432 >> Turn in Those Blasted Troggs!
    .target +Foreman Stonebrow
    .goto 1426/0,-1600.30,-5726.590
    .turnin 433 >> Turn in The Public Servant
    .goto 1426/0,-1579.91,-5714.77
    .target +Senator Mehr Stonehallow
step
    #requires Frast
    .goto 1426/0,-1612.42,-5698.02
    >>Talk to |cRXP_FRIENDLY_Dank|r
    .train 2575 >> Train |T136248:0|t[Mining]
    .target Dank Drizzlecut
step
    #label Shortcut1
    #completewith Pilot
    .goto 1426/0,-1662.65,-5692.11,5,0
    .link https://youtu.be/G2IscpFZVeQ?t=4034 >>|cRXP_WARN_CLICK HERE if you're struggling|r
    .goto 1426/0,-1671.03,-5674.71,12 >>Take the shortcut up behind |cRXP_FRIENDLY_Dank|r
step
    #completewith Pilot
    #requires Shortcut1
    #label Shortcut2
    .goto 1426/0,-1693.19,-5541.730,50,0
    .goto 1426/0,-1788.24,-5511.85,50,0
    .goto 1426/0,-1995.58,-5480.01,50 >>|cRXP_WARN_Kite the nearby |cRXP_ENEMY_Rockjaw Ambushers|r to the |cRXP_FRIENDLY_Ironforge Mountaineers|r that can patrol on the road (make sure to deal 51%+ damage to get credit)|r
    .mob Rockjaw Ambusher
    .unitscan Ironforge Mountaineer
step
    #requires Shortcut2
    #completewith next
    .goto 1426/0,-2198.49,-5277.75,50,0
    .goto 1426/0,-2286.16,-5200.59,30 >>Kite a |cRXP_ENEMY_Scarred Crag Boar|r through the tunnel
    >>|cRXP_WARN_Be careful as they cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)|r
    .mob Scarred Crag Boar
step
    #label Pilot
    .goto 1426/0,-2329.50,-5163.82
    >>Talk to |cRXP_FRIENDLY_Hammerfoot|r
    .accept 419 >> Accept The Lost Pilot
    .target Pilot Hammerfoot
    .isQuestAvailable 419
step
    .goto 1426/0,-2205.39,-5092.57,30,0
    .goto 1426/0,-2121.66,-5064.66
    >>Click the |cRXP_PICK_Dwarven Corpse|r on the ground
    >>|cRXP_WARN_MAKE SURE You have a 1 free inventory slot for this turnin|r
    >>|cRXP_WARN_Remember you're going to kite |cRXP_ENEMY_Mangeclaw|r back to |cRXP_FRIENDLY_Hammerfoot|r
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step
    .goto 1426/0,-2059.61,-5118.180,60,0
    .goto 1426/0,-2329.50,-5163.82
    >>Kill |cRXP_ENEMY_Mangeclaw|r. Loot him for the |cRXP_LOOT_Mangy Claw|r
    >>|cRXP_WARN_Kite him all the way over to |cRXP_FRIENDLY_Hammerfoot|r (make sure to deal 51%+ damage to get credit)|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
    .target Pilot Hammerfoot
step
    .goto 1426/0,-2329.60,-5163.76
    >>Talk to |cRXP_FRIENDLY_Hammerfoot|r
    .turnin 417,1 >> Turn in A Pilot's Revenge
    .target Pilot Hammerfoot
step
    #label Tunnel1
    #completewith Barleybrew
    .goto 1426/0,-2286.16,-5200.59,30,0
    .goto 1426/0,-2198.49,-5277.75,30 >>Run back through the tunnel
step
    .goto 1426/0,-2075.37,-5511.20
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Scarred Crag Boars|r and |cRXP_ENEMY_Elder Crag Boars|r cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range), and |cRXP_ENEMY_Ice Claw Bears|r cast|r |T135853:0|t[Ice Claw] |cRXP_WARN_(Melee Instant: Deals an additional 4 melee damage)|r
    .xp 9+5450 >> Grind to 5450+/6500xp
    .mob Ice Claw Bear
    .mob Elder Crag Boar
    .mob Scarred Crag Boar
step
    #requires Tunnel1
    #label Tunnel2
    #completewith Barleybrew
    .goto 1426/0,-2118.71,-5516.78,20,0
    .goto 1426/0,-2192.09,-5510.87,20,0
    .goto 1426/0,-2216.72,-5519.08,20,0
    .goto 1426/0,-2314.72,-5491.83,20,0
    >>Kite a |cRXP_ENEMY_Scarred Crag Boar|r en route
    >>|cRXP_WARN_Be careful as they cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)|r
    .goto 1426/0,-2347.72,-5483.62,20 >>Do the Mountain Skip. Remember to drop down carefully
    .mob Scarred Crag Boar
step
    #requires Tunnel2
    #completewith next
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Scarred Crag Boars|r cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)|r
    .xp 9+5990 >> Grind to 5990+/6500xp
    .mob Scarred Crag Boar
step
    #label Barleybrew
    .goto 1426/0,-2447.11,-5479.74
    >>Talk to |cRXP_FRIENDLY_Barleybrew|r
    .turnin 413 >> Turn in Shimmer Stout
    .accept 414 >> Accept Stout to Kadrell
    .target Mountaineer Barleybrew
step
    .goto 1426/0,-2469.86,-5504.96,40,0
    .goto 1426/0,-2451.15,-5432.07
    .xp 9+6320 >> Grind to 6320+/6500xp
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Scarred Crag Boars|r cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)|r
    .mob Scarred Crag Boar
step
    #label CragB1
    #completewith Cobbleflint
    .goto 1432/0,-2447.50,-5564.39,20,0
    .goto 1432/0,-2534.11,-5642.02,30 >>Kite a |cRXP_ENEMY_Scarred Crag Boar|r through the tunnel
    >>|cRXP_WARN_Be careful as they cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)|r
    .mob Scarred Crag Boar
step
#loop
	.line Loch Modan,21.14,71.62,19.06,75.46,20.91,77.67,21.14,71.62
	.goto 1432/0,-2576.86,-5805.01,35,0
	.goto 1432/0,-2519.49,-5875.65,35,0
	.goto 1432/0,-2570.52,-5916.30,35,0
	.goto 1432/0,-2576.86,-5805.01,35,0
    .xp 10 >> Grind to Level 10
    .mob Elder Black Bear
    .mob Forest Lurker
step
    #requires CragB1
    #completewith Rugelfuss
    +|cRXP_WARN_Try to kite a nearby |cRXP_ENEMY_Elder Black Bear|r or |cRXP_ENEMY_Forest Lurker|r into the Bunker with you (remember to deal 51%+ damage to get credit)|r
    >>|cRXP_WARN_Loot the |cRXP_ENEMY_Elder Black Bears|r for their|r |T134027:0|t[|cRXP_LOOT_Bear Meat|r]
    >>|cRXP_WARN_Loot the |cRXP_ENEMY_Forest Lurkers|r for their|r |T134437:0|t[|cRXP_LOOT_Spider Ichor|r]
    >>|cRXP_FRIENDLY_Cobbleflint|r|cRXP_WARN_, |cRXP_FRIENDLY_Gravelgaw|r, and |cRXP_FRIENDLY_Wallbang|r won't assist you|r
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .disablecheckbox
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .disablecheckbox
    .mob Elder Black Bear
    .mob Forest Lurker
step
    #label Cobbleflint
    .goto 1432/0,-2602.54,-5832.73
    >>Talk to |cRXP_FRIENDLY_Cobbleflint|r
    .accept 224 >> Accept In Defense of the King's Lands
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >> Enter the Bunker. Go to the top floor
step
    #label Rugelfuss
    .goto 1432/0,-2634.59,-5842.81
    >>Talk to |cRXP_FRIENDLY_Rugelfuss|r
    .accept 267 >> Accept The Trogg Threat
    .target Captain Rugelfuss
step << skip
    #completewith next
    .goto 1432/0,-2586.52,-5740.99,20,0
    .goto 1432/0,-2569.14,-5673.30,20,0
    .goto 1432/0,-2531.62,-5638.34,30 >>Go back into the Tunnel
step << skip
    .goto 1432/0,-2513.42,-5618.48
    .link https://www.youtube.com/watch?v=AOAlX9B5aO0 >>|cRXP_WARN_CLICK HERE If you're struggling|r
    .goto 1432/0,-2881.66,-5351.18,30 >>|cRXP_WARN_Jumping Logout Skip from the Brazier inside the tunnel to Thelsamar|r
    .isOnQuest 414
step
    .goto 1432/0,-2902.07,-5398.28,40,0
    .goto 1432/0,-2945.10,-5360.20,40,0
    .goto 1432/0,-3015.71,-5335.73,40,0
    .goto 1432/0,-3025.09,-5318.44,40,0
    .goto 1432/0,-3017.64,-5274.66
    >>Talk to |cRXP_FRIENDLY_Kadrell|r
    >>|cRXP_FRIENDLY_Kadrell|r |cRXP_WARN_patrols along the main Thelsamar road|r
    .turnin 414 >>Turn in Stout to Kadrell
    .accept 416 >> Accept Rat Catching
    .accept 1339 >> Accept Mountaineer Stormpike's Task
    .target Mountaineer Kadrell
step
    .goto 1432/0,-3019.30,-5354.50,10,0
    .goto 1432/0,-3014.88,-5366.820
    >>Talk to |cRXP_FRIENDLY_Brock|r
    >>|cRXP_WARN_He can be inside or outside the building|r
    .accept 6387 >>Accept Honor Students
    .target Brock Stoneseeker
step
    .goto 1432/0,-2929.93,-5424.95
    >>Talk to |cRXP_FRIENDLY_Thorgrum|r
    .fp Thelsamar >> Get the Thelsamar flight path
    .turnin 6387 >>Turn in Honor Students
    .accept 6391 >>Accept Ride to Ironforge
    .target Thorgrum Borrelson
step
    #completewith next
    .goto 1432/0,-2929.93,-5424.95
    >>Talk to |cRXP_FRIENDLY_Thorgrum|r
    .fly Ironforge >> Fly to Ironforge
    .target Thorgrum Borrelson
--VV Merge with step above
step
    .zone Ironforge >> Travel to Ironforge
    .isOnQuest 6391
step
    #completewith next
    .goto 1455/0,-1154.84,-4771.58,30,0
    .goto 1455/0,-1123.37,-4726.31,15,0
    .goto 1455/0,-1106.29,-4718.18,12,0
    >>Go inside the building
    .goto 1455/0,-1121.08,-4708.000,10 >>Travel toward |cRXP_FRIENDLY_Golnir|r
step
    .goto 1455/0,-1121.08,-4708.000
    >>Talk to |cRXP_FRIENDLY_Golnir|r
    .turnin 6391 >>Turn in Ride to Ironforge
    .accept 6388 >>Accept Gryth Thurden
    .vendor >> Vendor Trash
    .target Golnir Bouldertoe
    .isOnQuest 291
step
    #completewith next
    .goto 1455/0,-1106.29,-4718.18,12,0
    .goto 1455/0,-1154.84,-4771.58,30,0
    >>Exit the building
    .goto 1455/0,-1152.31,-4821.12,10 >>Travel toward |cRXP_FRIENDLY_Gryth|r
step
    .goto 1455/0,-1152.39,-4820.914
    >>Talk to |cRXP_FRIENDLY_Gryth|r
    .turnin 6388 >>Turn in Gryth Thurden
--   .accept 6392 >>Accept Return to Brock
-- .fly Thelsamar >> Fly to Thelsamar
    .target Gryth Thurden
step
    #completewith next
    .goto 1455/0,-1148.99,-4840.22,30,0
    .goto 1455/0,-1101.87,-4864.81,30,0
    .goto 1455/0,-1082.58,-4836.00,20,0
    .goto 1455/0,-1062.42,-4835.00,20,0
    .goto 1455/0,-1026.28,-4872.56,10 >>Travel toward |cRXP_FRIENDLY_Barin|r
step
    .goto 1455/0,-1026.28,-4872.56
    >>Talk to |cRXP_FRIENDLY_Barin|r
    .turnin 291 >>Turn in The Reports
    .target Senator Barin Redstone
step
    #completewith next
    .goto 1455/0,-1064.87,-4828.19,20,0
    .goto 1455/0,-1062.10,-4815.100,20,0
    .goto 1455/0,-1036.48,-4804.50,20,0
    .goto 1455/0,-992.68,-4742.08,20,0
    .goto 1455/0,-931.8,-4627.59,20,0
    .goto 1455/0,-928.40,-4614.51,10 >>Travel toward |cRXP_FRIENDLY_Dink|r
step
    .goto 1455/0,-928.40,-4614.51
    >>Talk to |cRXP_FRIENDLY_Dink|r
    .trainer >> Train your class spells (Frost Armor r2, Frost Nova, Polymorph, Conjure Water r1 & r2)
    >>Total Cost: 15s
    >>Remember you may want money for Healing Potions (3s each), Bronze Tube (8s each), and level 5 food (20c per 5)
    .target Dink
step << skip
    #completewith IFHS
    +|cRXP_WARN_Remember to Logout Skip on the Candles after setting your|r |T134414:0|t[Hearthstone]
step
    #completewith next
    --.goto 1455/0,-929.04,-4636.72,20,0
    --.goto 1455/0,-892.19,-4770.42,20,0
    --.goto Ironforge,20.40,53.19,20,0
    >>Go inside the building
    .goto 1455/0,-857.01,-4840.69,10 >>Travel toward |cRXP_FRIENDLY_Firebrew|r
step
    #label IFHS
    .goto 1455/0,-857.01,-4840.69
    >>Talk to |cRXP_FRIENDLY_Firebrew|r
    .home >> Set your Hearthstone to Ironforge
    .target Innkeeper Firebrew
step << skip
    .goto 1455/0,-864.68,-4847.820
    .zone Dun Morogh >>|cRXP_WARN_Jump on top of the Candles on the table. Logout skip to Dun Morogh|r
    .isOnQuest 416
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance Mage
#name 10-12 ADV Darkshore 1 Mage AoE
#version 2
#group RestedXP ADV AoE Alliance Mage
#defaultfor Human Mage/Gnome Mage
#next 12-14 ADV Loch Modan Mage AoE

step
    #completewith DeathlessSkip
    .goto 1455/0,-833.45,-5021.400,20,0
    .goto 1426/0,-1145.04,-5504.30
    .zone Dun Morogh >> Exit Ironforge
step
    #completewith next
    .goto 1426/0,-831.81,-5108.330,30,0
    .goto 1426/0,-859.39,-5144.450,30,0
    .goto 1426/0,-1124.84,-5283.99,150 >> Travel to the skip spot. Hug the left side of the mountain en route
step
    #label DeathlessSkip
    .goto 1426/0,-1161.78,-5289.24,12,0
    .goto 1426/0,-1173.60,-5313.54,12,0
    .goto 1426/0,-1187.88,-5327.66,4,0
    .goto 1426/0,-1199.70,-5327.00,6,0
    .goto 1426/0,-1224.33,-5245.58,10,0
    .goto 1426/0,-1239.60,-5239.670,4,0
    .goto 1426/0,-1243.54,-5243.93,4,0
    .goto 1426/0,-1251.91,-5233.100,8,0
    .goto 1426/0,-1241.07,-5180.89,15,0
    .goto 1426/0,-1225.81,-5086.99,12,0
    .goto 1426/0,-1224.82,-4952.70,15,0
    .goto 1426/0,-1220.88,-4826.62,30,0
    .goto 1426/0,-1197.73,-4626.34,30,0
    .goto 1426/0,-1178.03,-4408.980,5,0
    .goto 1426/0,-1178.53,-4396.18,5,0
    .goto 1426/0,-1189.36,-4374.84,15,0
    .goto 1426/0,-1173.11,-4348.24,8,0
    .goto 1426/0,-1184.44,-4333.14,6,0
    .goto 1426/0,-1221.87,-4312.78,10,0
    .goto 1426/0,-1227.78,-4290.13,8,0
    >>|cRXP_WARN_Do the Deathless Dun Morogh -> Wetlands skip|r
    >>|cRXP_WARN_Eat to full after each fall if you don't feel confident|r
    .link https://youtu.be/QcEUvwu49KI?t=73 >> |cRXP_WARN_CLICK HERE for reference (it is HEAVILY advised you do so)|r
    .goto 1426/0,-1184.93,-4250.73,20 >>Carefully drop down the mountain side
    .isQuestAvailable 983
step
    .goto 1426/0,-1192.32,-4216.25,10,0
    .goto 1426/0,-1182.96,-4196.55,8,0
    .goto 1437/0,-1166.63,-4147.02,12,0
    .goto 1437/0,-1162.91,-4104.03,12,0
    .goto 1437/0,-1154.64,-4060.48,12,0
    .goto 1437/0,-1118.24,-4031.81,15,0
    .goto 1437/0,-1092.6,-4013.35,12,0
    .goto 1437/0,-1049.60,-3998.74,12,0
    .goto 1437/0,-1012.79,-3978.34,20,0
    .goto 1437/0,-1022.72,-3952.43,20,0
    .goto 1437/0,-1014.03,-3904.2,12,0
    >>|cRXP_WARN_Do the Deathless Dun Morogh -> Wetlands skip|r
    >>|cRXP_WARN_Be careful of |cRXP_ENEMY_Sludginn|r (rare) before you drop down toward the coast (if he's up)|r
    >>|cRXP_WARN_Be careful of the |cRXP_ENEMY_Bluegill Raiders|r to the west when you reach the sea|r
    >>|cRXP_WARN_Avoid the |cRXP_ENEMY_Young Wetlands Crocolisks|r when crossing the sea. Wait for them to patrol away|r
    .link https://youtu.be/QcEUvwu49KI?t=336 >> |cRXP_WARN_CLICK HERE for reference (it is HEAVILY advised you do so)|r
    .goto 1437/0,-914.37,-3828.40,15 >> Travel to Menethil Harbor
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
    .unitscan Sludginn
    .isQuestAvailable 983
step
    #completewith next
    .goto 1437/0,-836.21,-3796.15,10,0
    .goto 1437/0,-829.18,-3804.420,10 >>Go inside the Inn
step
    .goto 1437/0,-823.8,-3807.180
    >>Jump onto the Chandelier downstairs
    >>Talk to |cRXP_FRIENDLY_Samor|r through the wall
    >>|cRXP_WARN_NOTE: To do this, bind "Interact with Target" under Gameplay -> Controls in the Options menu|r
    >>|cRXP_WARN_If the Boat has just arrived, skip this step|r
    .vendor 1457 >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .target Samor Festivus
    .money <0.03
step
    .goto 1437/0,-782.03,-3793.12
    >>Talk to |cRXP_FRIENDLY_Shellei|r
    .fp Menethil Harbor >> Get the Menethil Harbor flight path
    .target Shellei Brondir
step
    #completewith DarkshoreBoat
    .goto 1437/0,-715.87,-3697.48
    >>|cRXP_WARN_If the Boat has just arrived, skip this step|r
    +|cRXP_WARN_Cook any|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_you have from outside (there's a campfire inside)|r
    .itemcount 769,1
step
    .goto 1437/0,-715.87,-3697.48
    >>Talk to |cRXP_FRIENDLY_Dewin|r through the wall
    >>|cRXP_WARN_If the Boat has just arrived, skip this step|r
    .vendor 1453 >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .target Dewin Shimmerdawn
    .money <0.03
step
    #completewith Darkshore
    #label DarkshoreBoat
    .goto 1437/0,-641.43,-3758.94,20,0
    .goto 1437/0,-575.68,-3719.53,20 >>Travel toward the Darkshore Boat
step
    #completewith next
    #requires DarkshoreBoat
    +|cRXP_WARN_Start spam casting|r |T132794:0|t[Conjure Water r2] |cRXP_WARN_to conjure as much water as possible|r
step
    #label Darkshore
    .goto 1437/0,-565.34,-3724.77
    .zone Darkshore >> Take the boat to Darkshore
step
    #label Darkshoreshore
    #completewith Wizbang
    .goto 1439/1,601.35,6358.29,60 >>Jump off the boat when you're closest to the shore
step
    #requires Darkshoreshore
    #completewith Wizbang
    +|cRXP_WARN_Kite 2-3 |cRXP_ENEMY_Pygmy Tide Crawlers|r toward |cRXP_FRIENDLY_Wizbang|r (Remember to use|r |T135848:0|t[Frost Nova]|cRXP_WARN_) Kill them when you accept the quest|r
    .mob Pygmy Tide Crawler
step
    #requires Darkshoreshore
    #completewith next
    .goto 1439/1,533.23,6399.77,0,0
    >>Talk to |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Buy up to 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    .vendor >> Vendor Trash
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
step
    #requires Darkshoreshore
    #completewith next
    .goto 1439/1,536.51,6389.29,20,0
    .goto 1439/1,528.65,6404.14,10,0
    .goto 1439/1,537.16,6417.68,10,0
    >>Go upstairs to the top floor
    .goto 1439/1,519.48,6405.89,8 >>Travel toward |cRXP_FRIENDLY_Wizbang|r
step
    #label Wizbang
    .goto 1439/1,519.48,6405.89
    >>Talk to |cRXP_FRIENDLY_Wizbang|r
    .accept 983 >>Accept Buzzbox 827
    .target Wizbang Cranktoggle
step
    #completewith next
    >>Kill the |cRXP_ENEMY_Pygmy Tide Crawlers|r you kited. Loot them for their |cRXP_LOOT_Crawler Legs|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    #completewith next
    .goto 1439/1,489.35,6450.43,20,0
    .goto 1439/1,470.35,6525.530,20,0
    .goto 1439/1,492.62,6580.99,10 >>Travel toward |cRXP_FRIENDLY_Thundris|r
step
    #sticky
    #label DalmondBags
    .goto 1439/1,488.69,6564.830
    >>Talk to |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Buy as many|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_as you need/can|r
    .target Dalmond
    .money <0.0500
    .isQuestAvailable 954
step
    .goto 1439/1,492.62,6580.99
    >>Talk to |cRXP_FRIENDLY_Thundris|r
    .accept 954 >>Accept Bashal'Aran
    .accept 958 >>Accept Tools of the Highborne
    .target Thundris Windweaver
	.skill cooking,10,1
step
    >>Talk to |cRXP_FRIENDLY_Thundris|r and |cRXP_FRIENDLY_Alanndarian|r
    .accept 954 >>Accept Bashal'Aran
    .accept 958 >>Accept Tools of the Highborne
    .target +Thundris Windweaver
    .goto 1439/1,492.62,6580.99
    .accept 2178 >>Accept Easy Strider Living
    .goto 1439/1,472.97,6557.85
    .target +Alanndarian Nightsong
	.skill cooking,<10,1
step
    #requires DalmondBags
    #completewith next
    .goto 1439/1,462.49,6525.97,20,0
    .goto 1439/1,414.68,6472.70,20,0
    .goto 1439/1,383.89,6445.62,20,0
    .goto 1439/1,362.93,6434.27,12 >>Travel toward |cRXP_FRIENDLY_Terenthis|r
step
    #requires DalmondBags
    >>Talk to |cRXP_FRIENDLY_Terenthis|r and |cRXP_FRIENDLY_Tharnariun|r
    .accept 984 >>Accept How Big a Threat?
    .target +Terenthis
    .goto 1439/1,362.93,6434.27
    .accept 2118 >>Accept Plagued Lands
    .goto 1439/1,397.65,6437.76
    .target +Tharnariun Treetender
 step
    .goto 1439/1,533.23,6399.77
    >>Talk to |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Buy up to 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    .vendor >> Vendor Trash
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
    .itemcount 4592,<20
step
    #completewith next
    .goto 1439/1,569.26,6373.14,50,0
    .goto 1439/1,596.11,6334.27,50,0
    .goto 1439/1,592.84,6265.72,50,0
    .goto 1439/1,600.70,6228.600,50,0
    .goto 1439/1,567.29,6154.370,50,0
    >>Kill |cRXP_ENEMY_Pygmy Tide Crawlers|r. Loot them for their |cRXP_LOOT_Crawler Legs|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    #completewith next
    .goto 1439/1,437.60,6025.99,75,0
    >>|cRXP_WARN_Use|r |T134335:0|t[Tharnariun's Hope] |cRXP_WARN_on a |cRXP_ENEMY_Rabid Thistle Bear|r. It has a 50-yard range|r
    >>|cRXP_WARN_Be careful as they cast|r |T135914:0|t[Rabies] |cRXP_WARN_(Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .use 7586
    .unitscan Rabid Thistle Bear
step
    .goto 1439/1,393.72,5993.24
    >>Run toward the Furbolg Camp
    >>|cRXP_WARN_Do not attempt to fight the|r |cRXP_ENEMY_Blackwood Windtalker|r
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    .goto 1439/1,411.40,5873.15,60,0
    .goto 1439/1,400.27,5788.0,60,0
    .goto 1439/1,427.78,5680.58,60,0
    .goto 1439/1,415.33,5434.30
    >>|cRXP_WARN_Use|r |T134335:0|t[Tharnariun's Hope] |cRXP_WARN_on a |cRXP_ENEMY_Rabid Thistle Bear|r. It has a 50-yard range|r
    >>|cRXP_WARN_Be careful as they cast|r |T135914:0|t[Rabies] |cRXP_WARN_(Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .use 7586
    .unitscan Rabid Thistle Bear
step
    .goto 1439/1,302.02,5726.433
    >>Talk to |cRXP_FRIENDLY_Tysha|r
    .accept 953 >>Accept The Fall of Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #completewith Relics
    +|cRXP_WARN_Avoid pulling |cRXP_ENEMY_Lady Moongazer|r (rare) if she's up|r
    .unitscan Lady Moongazer
step
    #completewith Fall
    >>Kill |cRXP_ENEMY_Cursed Highbornes|r and |cRXP_ENEMY_Writhing Highbornes|r. Loot them for |cRXP_LOOT_Highborne Relics|r
    >>|cRXP_WARN_Kill |cRXP_ENEMY_Wailing Highbornes|r only if they're in your way|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    .goto 1439/1,148.09,5575.78
    >>Click |cRXP_PICK_The Fall of Ameth'Aran|r on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto 1439/1,105.52,5770.100
    >>Click |cRXP_PICK_The Lay of Ameth'Aran|r on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
    #label Fall
    .goto 1439/1,302.02,5726.433
    >>Talk to |cRXP_FRIENDLY_Tysha|r
    .turnin 953 >>Turn in The Fall of Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #label Relics
    .goto 1439/1,206.39,5802.41,50,0
    .goto 1439/1,117.96,5820.32,50,0
    .goto 1439/1,71.46,5788.00,50,0
    .goto 1439/1,87.18,5713.77,50,0
    .goto 1439/1,93.07,5585.83,50,0
    .goto 1439/1,165.78,5564.870,50,0
    .goto 1439/1,242.41,5641.72,50,0
    .goto 1439/1,206.39,5802.41
    >>Kill |cRXP_ENEMY_Cursed Highbornes|r and |cRXP_ENEMY_Writhing Highbornes|r
    >>|cRXP_WARN_Kill |cRXP_ENEMY_Wailing Highbornes|r only if they're in your way|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    #completewith next
    +|cRXP_WARN_Kite 2-3 |cRXP_ENEMY_Vile Sprites|r toward |cRXP_FRIENDLY_Asterion|r (Remember to use|r |T135848:0|t[Frost Nova]|cRXP_WARN_) Kill them when you accept the quest|r
    .mob Vile Sprite
step
    .goto 1439/1,48.53,6748.67
    >>Talk to |cRXP_FRIENDLY_Asterion|r
    .turnin 954 >> Turn in Bashal'Aran
    .accept 955 >> Accept Bashal'Aran
    .target Asterion
step
    #completewith BashalF
    +|cRXP_WARN_Be careful as |cRXP_ENEMY_Licillin|r (rare) may be up|r
    >>|cRXP_WARN_He casts|r |T136197:0|t[Shadow Bolt] |cRXP_WARN_(Ranged Cast: Deals 55-70 Shadow damage)|r
    .unitscan Licillin
step
#loop
	.line Darkshore,44.57,36.57,44.47,38.11,44.02,38.55,45.01,39.62,45.61,38.81,45.18,37.51,45.86,36.96,46.91,37.11,45.47,36.01,44.57,36.57
	.goto 1439/1,22.33,6736.44,35,0
	.goto 1439/1,28.88,6669.20,35,0
	.goto 1439/1,58.36,6649.98,35,0
	.goto 1439/1,-6.49,6603.26,35,0
	.goto 1439/1,-45.79,6638.63,35,0
	.goto 1439/1,-17.62,6695.40,35,0
	.goto 1439/1,-62.16,6719.41,35,0
	.goto 1439/1,-130.94,6712.86,35,0
	.goto 1439/1,-36.62,6760.90,35,0
	.goto 1439/1,22.33,6736.44,35,0
    >>Kill |cRXP_ENEMY_Vile Sprites|r and |cRXP_ENEMY_Wild Grells|r. Loot them for their |cRXP_LOOT_Grell Earrings|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Vile Sprites|r cast|r |T136016:0|t[Poison] |cRXP_WARN_(Melee Instant: Deals 3 damage every 3 seconds for 15 seconds) and |cRXP_ENEMY_Wild Grells|r cast|r |T136215:0|t[Crazed] |cRXP_WARN_(Self Instant: Increases attack speed by 20% at <20% health)|r
    .complete 955,1 --Grell Earring (8)
    .mob Vile Sprite
    .mob Wild Grell
step
    .goto 1439/1,48.53,6748.67
    >>Talk to |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Turn in Bashal'Aran
    .accept 956 >> Accept Bashal'Aran
    .target Asterion
step
    .goto 1439/1,-38.58,6739.5,45,0
    .goto 1439/1,-66.75,6683.61,45,0
    .goto 1439/1,-67.40,6672.25,45,0
    .goto 1439/1,-34.00,6601.51,45,0
    .goto 1439/1,-115.22,6626.40,45,0
    .goto 1439/1,-160.41,6690.16,45,0
    .goto 1439/1,-187.27,6708.930,45,0
    .goto 1439/1,-165.65,6728.15,45,0
    .goto 1439/1,-38.58,6739.5,45,0
    .goto 1439/1,-66.75,6683.61,45,0
    .goto 1439/1,-67.40,6672.25,45,0
    .goto 1439/1,-34.00,6601.51,45,0
    .goto 1439/1,-115.22,6626.40,45,0
    .goto 1439/1,-160.41,6690.16,45,0
    .goto 1439/1,-187.27,6708.930,45,0
    .goto 1439/1,-165.65,6728.15
    >>Kill |cRXP_ENEMY_Deth'ryll Satyrs|r. Loot them for the |cRXP_LOOT_Ancient Moonstone Seal|r
    >>|cRXP_WARN_Be careful as they cast|r |T132222:0|t[Shoot] |cRXP_WARN_(Ranged Cast: Deals 15-25 damage)|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
step
#loop
	.line Darkshore,44.57,36.57,44.47,38.11,44.02,38.55,45.01,39.62,45.61,38.81,45.18,37.51,45.86,36.96,46.91,37.11,45.47,36.01,44.57,36.57
	.goto 1439/1,22.33,6736.44,35,0
	.goto 1439/1,28.88,6669.20,35,0
	.goto 1439/1,58.36,6649.98,35,0
	.goto 1439/1,-6.49,6603.26,35,0
	.goto 1439/1,-45.79,6638.63,35,0
	.goto 1439/1,-17.62,6695.40,35,0
	.goto 1439/1,-62.16,6719.41,35,0
	.goto 1439/1,-130.94,6712.86,35,0
	.goto 1439/1,-36.62,6760.90,35,0
	.goto 1439/1,22.33,6736.44,35,0
    .xp 11+1100 >> Grind to 1100+/8800xp
    .mob Vile Sprite
    .mob Wild Grell
--910+900+750+975+850 = 4385 (Turnins starting from Bashal Seal turnin)
--675+975 = 1650 (Turtle turnins)
step
    #label BashalF
    .goto 1439/1,48.53,6748.67
    >>Talk to |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Turn in Bashal'Aran
    .accept 957 >> Accept Bashal'Aran
    .target Asterion
step
    #sticky
    #label DalmondBags1
    .goto 1439/1,488.69,6564.830,0,0
    >>Talk to |cRXP_FRIENDLY_Dalmond|r
    .vendor >> Vendor Trash
    .target Dalmond
    .isQuestAvailable 3524
step
    .goto 1439/1,491.97,6582.303
    >>Talk to |cRXP_FRIENDLY_Thundris|r
    .turnin 958 >>Turn in Tools of the Highborne
    .target Thundris Windweaver
step
    #requires DalmondBags1
    .goto 1439/1,472.97,6557.85
    >>Talk to |cRXP_FRIENDLY_Alanndarian|r
    .turnin 2178 >>Turn in Easy Strider Living
    .target Alanndarian Nightsong
    .itemcount 5469,5
    .skill cooking,<10,1
step
    >>Talk to |cRXP_FRIENDLY_Terenthis|r and |cRXP_FRIENDLY_Tharnariun|r
    .turnin 984 >> Turn in How Big a Threat?
    .accept 985 >> Accept How Big a Threat?
    .accept 4761 >> Accept Thundris Windweaver
    .target +Terenthis
    .goto 1439/1,362.93,6434.27
    .turnin 2118 >> Turn in Plagued Lands
    .accept 2138 >> Accept Cleansing of the Infected
    .goto 1439/1,397.65,6437.76
    .target +Tharnariun Treetender
step
    #sticky
    #label Gwennyth
    .goto 1439/1,543.06,6342.57
    >>Talk to |cRXP_FRIENDLY_Gwennyth|r
    .accept 3524 >>Accept Washed Ashore
    .target Gwennyth Bly'Leggonde
step
    .goto 1439/1,561.40,6343.01
    >>Talk to |cRXP_FRIENDLY_Caylais|r
    .fp Auberdine >> Get the Auberdine flight path
    .target Caylais Moonfeather
step
    #requires Gwennyth
    #completewith Bones
    .goto 1439/1,569.26,6373.14,50,0
    .goto 1439/1,596.11,6334.27,50,0
    .goto 1439/1,592.84,6265.72,50,0
    .goto 1439/1,600.70,6228.600,50,0
    .goto 1439/1,567.29,6154.370,50,0
    >>Kill |cRXP_ENEMY_Pygmy Tide Crawlers|r and |cRXP_ENEMY_Young Reef Crawlers|r. Loot them for their |cRXP_LOOT_Crawler Legs|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #requires Gwennyth
    #completewith next
    >>|cRXP_WARN_Save the|r |T133884:0|t[Murloc Eyes] |cRXP_WARN_you loot from the |cRXP_ENEMY_Greymist Coastrunners|r and|r |cRXP_ENEMY_Greymist Raiders|r
    .collect 730,3,38,1 --Murloc Eyes (3)
    .mob Greymist Coastrunner
    .mob Greymist Raider
step
    #requires Gwennyth
    #label Bones
    .goto 1439/1,558.78,6111.57
    >>Loot the |cRXP_LOOT_Beached Sea Creature|r
    >>|cRXP_WARN_Be careful as the nearby |cRXP_ENEMY_Greymist Coastrunners|r have|r |T132307:0|t[Increased Movespeed]
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    .goto 1439/1,569.26,6373.14
    >>Kill |cRXP_ENEMY_Pygmy Tide Crawlers|r and |cRXP_ENEMY_Young Reef Crawlers|r. Loot them for their |cRXP_LOOT_Crawler Legs|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    .goto 1439/1,541.75,6313.31
    >>Click |cRXP_PICK_Buzzbox 827|r
    .turnin 983 >>Turn in Buzzbox 827
    .accept 1001 >>Accept Buzzbox 411
step
    .goto 1439/1,536.51,6365.28,12,0
    .goto 1439/1,543.06,6342.57
    >>Talk to |cRXP_FRIENDLY_Gwennyth|r
    .turnin 3524 >>Turn in Washed Ashore
    .accept 4681 >>Accept Washed Ashore
    .target Gwennyth Bly'Leggonde
 step
    .goto 1439/1,533.23,6399.77
    >>Talk to |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Buy up to 40|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    .collect 4592,40,4681,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto 1439/1,539.13,6409.82,12,0
    .goto 1439/1,600.70,6425.100
    >>Talk to |cRXP_FRIENDLY_Cerellean|r
    .accept 963 >>Accept For Love Eternal
    .target Cerellean Whiteclaw
step
    #completewith Gwen
    >>Kill |cRXP_ENEMY_Darkshore Threshers|r
    >>|cRXP_WARN_Do NOT go out of your way for these|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
step
    #completewith next
    .goto 1439/1,786.06,6488.85,15,0
    .goto 1439/1,818.81,6419.86,25 >> Run along the dock toward the |cRXP_LOOT_Sea Turtle Remains|r
step
    .goto 1439/1,854.84,6310.26
    >>Swim underwater
    >>Loot the |cRXP_LOOT_Sea Turtle Remains|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto 1439/1,575.81,6381.430,50,0
    .goto 1439/1,596.77,6329.91,50,0
    .goto 1439/1,581.05,6209.82,50,0
    .goto 1439/1,575.15,6144.32,50,0
    .goto 1439/1,545.68,6010.270,50,0
    .goto 1439/1,634.10,5983.63,50,0
    .goto 1439/1,634.76,5915.51,50,0
    .goto 1439/1,537.82,5840.4,50,0
    .goto 1439/1,575.81,6381.430,50,0
    .goto 1439/1,596.77,6329.91,50,0
    .goto 1439/1,581.05,6209.82,50,0
    .goto 1439/1,575.15,6144.32,50,0
    .goto 1439/1,545.68,6010.270,50,0
    .goto 1439/1,634.10,5983.63,50,0
    .goto 1439/1,634.76,5915.51,50,0
    .goto 1439/1,537.82,5840.40
    .xp 11+7825 >> Grind to 7825+/8800xp
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #label Gwen
    .goto 1439/1,539.78,6364.84,12,0
    .goto 1439/1,543.06,6342.57
    >>Talk to |cRXP_FRIENDLY_Gwennyth|r
    .turnin 4681,1 >> Turn in Washed Ashore
    .target Gwennyth Bly'Leggonde
step << skip
    #completewith next
    +Equip your new creps (Equip the |T132537:0|t[Sandcomber Boots])
    .use 15398
    .itemcount 15398,1
    .itemStat 8,LEVEL,<14
step
    .goto 1439/1,515.55,6406.32
    >>|cRXP_WARN_===PAY ATTENTION===|r
    >>|cRXP_WARN_Talk to|r |cRXP_FRIENDLY_Shaussiy|r
    >>|cRXP_WARN_If this is your first time doing a Hearthstone Batch, watch the guide for it below|r
    >>|cRXP_WARN_Open the "Set Hearthstone" menu, then cast|r |T134414:0|t[Hearthstone]
    .hs >> |cRXP_WARN_Hearthstone BATCH from Auberdine to Ironforge|r
    .link https://www.youtube.com/watch?v=Is-h2TJpL3M >> |cRXP_WARN_CLICK HERE (it is HEAVILY advised you do so). Make sure you've set and tested your Batching Window Size prior to reduce risk of failure|r
    .target Innkeeper Shaussiy
    .zoneskip Ironforge
step
    .goto 1455/0,-928.40,-4614.51
    >>Talk to |cRXP_FRIENDLY_Dink|r
    .trainer >> Train your class spells (Fireball r3, Dampen Magic)
    >>Total Cost: 12s
    >>Remember you may want money for a |T133024:0|t[Bronze Tube] (8s each) and Thelsamar flying (1s 10c)
    .target Dink
step << skip
    .goto 1455/0,-928.80,-4614.51,-1
    .goto 1455/0,-1249.87,-4793.31,-1
    .vendor 5175 >> Logout skip on the pillar above |cRXP_FRIENDLY_Dink|r to check |cRXP_FRIENDLY_Cogspinner|r for a |T133024:0|t[Bronze Tube] if you wish
    .itemcount 4371,<1
    .isQuestAvailable 418
step
    #completewith next
    +|cRXP_WARN_Start spam casting|r |T132794:0|t[Conjure Water r2] |cRXP_WARN_to conjure as much water as possible before taking the flight|r
step << Gnome
    .goto 1455/0,-1152.39,-4820.914
    >>Talk to |cRXP_FRIENDLY_Gryth|r
    .accept 6392 >>Accept Return to Brock
    .target Gryth Thurden
step
    .goto 1455/0,-1152.39,-4820.914
    >>Talk to |cRXP_FRIENDLY_Gryth|r
    .fly Thelsamar >> Fly to Thelsamar
    .target Gryth Thurden
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance Mage
#name 10-12 LAUNCH ADV Darkshore 1 Mage AoE
#version 2
#group RestedXP ADV AoE Alliance Mage
#defaultfor none
#next 12-14 ADV Loch Modan Mage AoE

--VV Make this an alternative route that must be manually selected
step
    #completewith next
    +|cRXP_WARN_NOTE: The Launch route contains quests that are VERY difficult to do solo. This is specifically for either heavily crowded servers where you can group up for the harder quests, OR players who have mob taggers|r
step
    #completewith next
    .goto 1426/0,-831.81,-5108.330,30,0
    .goto 1426/0,-859.39,-5144.450,30,0
    .goto 1426/0,-1124.84,-5283.99,150 >> Travel to the skip spot. Hug the left side of the mountain en route
step
    .goto 1426/0,-1161.78,-5289.24,12,0
    .goto 1426/0,-1173.60,-5313.54,12,0
    .goto 1426/0,-1187.88,-5327.66,4,0
    .goto 1426/0,-1199.70,-5327.00,6,0
    .goto 1426/0,-1224.33,-5245.58,10,0
    .goto 1426/0,-1239.60,-5239.670,4,0
    .goto 1426/0,-1243.54,-5243.93,4,0
    .goto 1426/0,-1251.91,-5233.100,8,0
    .goto 1426/0,-1241.07,-5180.89,15,0
    .goto 1426/0,-1225.81,-5086.99,12,0
    .goto 1426/0,-1224.82,-4952.70,15,0
    .goto 1426/0,-1220.88,-4826.62,30,0
    .goto 1426/0,-1197.73,-4626.34,30,0
    .goto 1426/0,-1178.03,-4408.980,5,0
    .goto 1426/0,-1178.53,-4396.18,5,0
    .goto 1426/0,-1189.36,-4374.84,15,0
    .goto 1426/0,-1173.11,-4348.24,8,0
    .goto 1426/0,-1184.44,-4333.14,6,0
    .goto 1426/0,-1221.87,-4312.78,10,0
    .goto 1426/0,-1227.78,-4290.13,8,0
    >>|cRXP_WARN_Do the Deathless Dun Morogh -> Wetlands skip|r
    >>|cRXP_WARN_Eat to full after each fall if you don't feel confident|r
    .link https://youtu.be/QcEUvwu49KI?t=73 >> |cRXP_WARN_CLICK HERE for reference (it is HEAVILY advised you do so)|r
    .goto 1426/0,-1184.93,-4250.73,20 >>Carefully drop down the mountain side
    .isQuestAvailable 983
step
    .goto 1426/0,-1192.32,-4216.25,10,0
    .goto 1426/0,-1182.96,-4196.55,8,0
    .goto 1437/0,-1166.63,-4147.02,12,0
    .goto 1437/0,-1162.91,-4104.03,12,0
    .goto 1437/0,-1154.64,-4060.48,12,0
    .goto 1437/0,-1118.24,-4031.81,15,0
    .goto 1437/0,-1092.6,-4013.35,12,0
    .goto 1437/0,-1049.60,-3998.74,12,0
    .goto 1437/0,-1012.79,-3978.34,20,0
    .goto 1437/0,-1022.72,-3952.43,20,0
    .goto 1437/0,-1014.03,-3904.2,12,0
    >>|cRXP_WARN_Do the Deathless Dun Morogh -> Wetlands skip|r
    >>|cRXP_WARN_Be careful of |cRXP_ENEMY_Sludginn|r (rare) before you drop down toward the coast (if he's up)|r
    >>|cRXP_WARN_Be careful of the |cRXP_ENEMY_Bluegill Raiders|r to the west when you reach the sea|r
    >>|cRXP_WARN_Avoid the |cRXP_ENEMY_Young Wetlands Crocolisks|r when crossing the sea. Wait for them to patrol away|r
    .link https://youtu.be/QcEUvwu49KI?t=336 >> |cRXP_WARN_CLICK HERE for reference (it is HEAVILY advised you do so)|r
    .goto 1437/0,-914.37,-3828.40,15 >> Travel to Menethil Harbor
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
    .unitscan Sludginn
    .isQuestAvailable 983
--VV Custom Video
step
    #completewith next
    .goto 1437/0,-836.21,-3796.15,10,0
    .goto 1437/0,-829.18,-3804.420,10 >>Go inside the Inn
step
    .goto 1437/0,-823.8,-3807.180
    >>Jump onto the Chandelier downstairs
    >>Talk to |cRXP_FRIENDLY_Samor|r through the wall
    >>|cRXP_WARN_NOTE: To do this, bind "Interact with Target" under Gameplay -> Controls in the Options menu|r
    >>|cRXP_WARN_If the Boat has just arrived, skip this step|r
    .vendor 1457 >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .target Samor Festivus
    .money <0.03
step
    .goto 1437/0,-782.03,-3793.12
    >>Talk to |cRXP_FRIENDLY_Shellei|r
    .fp Menethil Harbor >> Get the Menethil Harbor flight path
    .target Shellei Brondir
step
    #completewith DarkshoreBoat
    .goto 1437/0,-715.87,-3697.48
    >>|cRXP_WARN_If the Boat has just arrived, skip this step|r
    +|cRXP_WARN_Cook any|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_you have from outside (there's a campfire inside)|r
    .itemcount 769,1
step
    .goto 1437/0,-715.87,-3697.48
    >>Talk to |cRXP_FRIENDLY_Dewin|r through the wall
    >>|cRXP_WARN_If the Boat has just arrived, skip this step|r
    .vendor 1453 >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .target Dewin Shimmerdawn
    .money <0.03
step
    #completewith Darkshore
    #label DarkshoreBoat
    .goto 1437/0,-641.43,-3758.94,20,0
    .goto 1437/0,-575.68,-3719.53,20 >>Travel toward the Darkshore Boat
step
    #completewith next
    #requires DarkshoreBoat
    +|cRXP_WARN_Start spam casting|r |T132794:0|t[Conjure Water r2] |cRXP_WARN_to conjure as much water as possible|r
step
    #label Darkshore
    .goto 1437/0,-565.34,-3724.77
    .zone Darkshore >> Take the boat to Darkshore
step
    #label Darkshoreshore
    #completewith Wizbang
    .goto 1439/1,601.35,6358.29,60 >>Jump off the boat when you're closest to the shore
step
    #requires Darkshoreshore
    #completewith Wizbang
    +|cRXP_WARN_Kite 2-3 |cRXP_ENEMY_Pygmy Tide Crawlers|r toward |cRXP_FRIENDLY_Wizbang|r (Remember to use|r |T135848:0|t[Frost Nova]|cRXP_WARN_) Kill them when you accept the quest|r
    .mob Pygmy Tide Crawler
step
    #requires Darkshoreshore
    #completewith next
    .goto 1439/1,533.23,6399.77,0,0
    >>Talk to |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Buy up to 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    .vendor >> Vendor Trash
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
step
    #requires Darkshoreshore
    #completewith next
    .goto 1439/1,536.51,6389.29,20,0
    .goto 1439/1,528.65,6404.14,10,0
    .goto 1439/1,537.16,6417.68,10,0
    >>Go upstairs to the top floor
    .goto 1439/1,519.48,6405.89,8 >>Travel toward |cRXP_FRIENDLY_Wizbang|r
step
    #label Wizbang
    .goto 1439/1,519.48,6405.89
    >>Talk to |cRXP_FRIENDLY_Wizbang|r
    .accept 983 >>Accept Buzzbox 827
    .target Wizbang Cranktoggle
step
    #completewith DalmondBags
    >>Kill the |cRXP_ENEMY_Pygmy Tide Crawlers|r you kited. Loot them for their |cRXP_LOOT_Crawler Legs|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    .goto 1439/1,533.23,6399.77
    >>Talk to |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Buy up to 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    .vendor >> Vendor Trash
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
    .itemcount 4592,<20
step << skip
    #requires DalmondBags
    #completewith next
    .goto 1439/1,462.49,6525.97,20,0
    .goto 1439/1,414.68,6472.70,20,0
    .goto 1439/1,383.89,6445.62,20,0
    .goto 1439/1,362.93,6434.27,12 >>Travel toward |cRXP_FRIENDLY_Terenthis|r
step
    >>Talk to |cRXP_FRIENDLY_Terenthis|r and |cRXP_FRIENDLY_Tharnariun|r
    .accept 984 >>Accept How Big a Threat?
    .target +Terenthis
    .goto 1439/1,362.93,6434.27,-1
    .accept 2118 >>Accept Plagued Lands
    .goto 1439/1,397.65,6437.76,-1
    .target +Tharnariun Treetender
step << skip
    #completewith next
    .goto 1439/1,489.35,6450.43,20,0
    .goto 1439/1,470.35,6525.530,20,0
    .goto 1439/1,492.62,6580.99,10 >>Travel toward |cRXP_FRIENDLY_Thundris|r
step
    #sticky
    #label DalmondBags
    .goto 1439/1,488.69,6564.830
    >>Talk to |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Buy as many|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_as you need/can|r
    .target Dalmond
    .money <0.0500
    .isQuestAvailable 954
step
    .goto 1439/1,492.62,6580.99
    >>Talk to |cRXP_FRIENDLY_Thundris|r
    .accept 954 >>Accept Bashal'Aran
    .accept 958 >>Accept Tools of the Highborne
    .target Thundris Windweaver
	.skill cooking,10,1
step
    >>Talk to |cRXP_FRIENDLY_Thundris|r and |cRXP_FRIENDLY_Alanndarian|r
    .accept 954 >>Accept Bashal'Aran
    .accept 958 >>Accept Tools of the Highborne
    .target +Thundris Windweaver
    .goto 1439/1,492.62,6580.99,-1
    .accept 2178 >>Accept Easy Strider Living
    .goto 1439/1,472.97,6557.85,-1
    .target +Alanndarian Nightsong
	.skill cooking,<10,1
step
    .goto 1439/1,-117.84,6820.72
    >>|cRXP_WARN_If you find a |cRXP_ENEMY_Rabid Thistle Bear|r, use|r |T134335:0|t[Tharnariun's Hope] |cRXP_WARN_then aggro it|r
    >>|cRXP_WARN_Be careful as they cast|r |T135914:0|t[Rabies] |cRXP_WARN_(Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .use 7586
    .unitscan Rabid Thistle Bear
step
    #completewith next
    +|cRXP_WARN_Kite 2-3 |cRXP_ENEMY_Vile Sprites|r toward |cRXP_FRIENDLY_Asterion|r (Remember to use|r |T135848:0|t[Frost Nova]|cRXP_WARN_) Kill them when you accept the quest|r
    .mob Vile Sprite
step
    #label Bash1
    .goto 1439/1,48.53,6748.67
    >>Talk to |cRXP_FRIENDLY_Asterion|r
    .turnin 954 >> Turn in Bashal'Aran
    .accept 955 >> Accept Bashal'Aran
    .target Asterion
step
    #completewith BashalF
    +|cRXP_WARN_Be careful as |cRXP_ENEMY_Licillin|r (rare) may be up|r
    >>|cRXP_WARN_He casts|r |T136197:0|t[Shadow Bolt] |cRXP_WARN_(Ranged Cast: Deals 55-70 Shadow damage)|r
    .unitscan Licillin
step
#loop
	.line Darkshore,44.57,36.57,44.47,38.11,44.02,38.55,45.01,39.62,45.61,38.81,45.18,37.51,45.86,36.96,46.91,37.11,45.47,36.01,44.57,36.57
	.goto 1439/1,22.33,6736.44,35,0
	.goto 1439/1,28.88,6669.20,35,0
	.goto 1439/1,58.36,6649.98,35,0
	.goto 1439/1,-6.49,6603.26,35,0
	.goto 1439/1,-45.79,6638.63,35,0
	.goto 1439/1,-17.62,6695.40,35,0
	.goto 1439/1,-62.16,6719.41,35,0
	.goto 1439/1,-130.94,6712.86,35,0
	.goto 1439/1,-36.62,6760.90,35,0
	.goto 1439/1,22.33,6736.44,35,0
    >>Kill |cRXP_ENEMY_Vile Sprites|r and |cRXP_ENEMY_Wild Grells|r. Loot them for their |cRXP_LOOT_Grell Earrings|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Vile Sprites|r cast|r |T136016:0|t[Poison] |cRXP_WARN_(Melee Instant: Deals 3 damage every 3 seconds for 15 seconds) and |cRXP_ENEMY_Wild Grells|r cast|r |T136215:0|t[Crazed] |cRXP_WARN_(Self Instant: Increases attack speed by 20% at <20% health)|r
    .complete 955,1 --Grell Earring (8)
    .mob Vile Sprite
    .mob Wild Grell
step
    .goto 1439/1,48.53,6748.67
    >>Talk to |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Turn in Bashal'Aran
    .accept 956 >> Accept Bashal'Aran
    .target Asterion
step
    .goto 1439/1,-38.58,6739.5,45,0
    .goto 1439/1,-66.75,6683.61,45,0
    .goto 1439/1,-67.40,6672.25,45,0
    .goto 1439/1,-34.00,6601.51,45,0
    .goto 1439/1,-115.22,6626.40,45,0
    .goto 1439/1,-160.41,6690.16,45,0
    .goto 1439/1,-187.27,6708.930,45,0
    .goto 1439/1,-165.65,6728.15,45,0
    .goto 1439/1,-38.58,6739.5,45,0
    .goto 1439/1,-66.75,6683.61,45,0
    .goto 1439/1,-67.40,6672.25,45,0
    .goto 1439/1,-34.00,6601.51,45,0
    .goto 1439/1,-115.22,6626.40,45,0
    .goto 1439/1,-160.41,6690.16,45,0
    .goto 1439/1,-187.27,6708.930,45,0
    .goto 1439/1,-165.65,6728.15
    >>Kill |cRXP_ENEMY_Deth'ryll Satyrs|r. Loot them for the |cRXP_LOOT_Ancient Moonstone Seal|r
    >>|cRXP_WARN_Be careful as they cast|r |T132222:0|t[Shoot] |cRXP_WARN_(Ranged Cast: Deals 15-25 damage)|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
step
    #label BashalF
    .goto 1439/1,48.53,6748.67
    >>Talk to |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Turn in Bashal'Aran
    .accept 957 >> Accept Bashal'Aran
    .target Asterion
step
    .goto 1439/1,397.65,6437.76
    .xp 10+6625 >> Grind to 6625+/7600xp en route back to |cRXP_FRIENDLY_Tharnariun|r
step
    .goto 1439/1,397.65,6437.76
    >>Talk to |cRXP_FRIENDLY_Tharnariun|r
    .turnin 2118 >> Turn in Plagued Lands
    .accept 2138 >> Accept Cleansing of the Infected
    .target Tharnariun Treetender
step
    .goto 1439/1,539.13,6409.82,12,0
    .goto 1439/1,600.70,6425.100
    >>Talk to |cRXP_FRIENDLY_Cerellean|r
    .accept 963 >>Accept For Love Eternal
    .target Cerellean Whiteclaw
step
    #completewith next
    >>Kill |cRXP_ENEMY_Pygmy Tide Crawlers|r. Loot them for their |cRXP_LOOT_Crawler Legs|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    #sticky
    #label Gwennyth
    .goto 1439/1,543.06,6342.57
    >>Talk to |cRXP_FRIENDLY_Gwennyth|r
    .accept 3524 >>Accept Washed Ashore
    .target Gwennyth Bly'Leggonde
step
    .goto 1439/1,561.40,6343.01
    >>Talk to |cRXP_FRIENDLY_Caylais|r
    .fp Auberdine >> Get the Auberdine flight path
    .target Caylais Moonfeather
step
    #requires Gwennyth
    #completewith Bones
    .goto 1439/1,569.26,6373.14,50,0
    .goto 1439/1,596.11,6334.27,50,0
    .goto 1439/1,592.84,6265.72,50,0
    .goto 1439/1,600.70,6228.600,50,0
    .goto 1439/1,567.29,6154.370,50,0
    >>Kill |cRXP_ENEMY_Pygmy Tide Crawlers|r and |cRXP_ENEMY_Young Reef Crawlers|r. Loot them for their |cRXP_LOOT_Crawler Legs|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #requires Gwennyth
    #completewith next
    >>|cRXP_WARN_Save the|r |T133884:0|t[Murloc Eyes] |cRXP_WARN_you loot from the |cRXP_ENEMY_Greymist Coastrunners|r and|r |cRXP_ENEMY_Greymist Raiders|r
    .collect 730,3,38,1 --Murloc Eyes (3)
    .mob Greymist Coastrunner
    .mob Greymist Raider
step
    #requires Gwennyth
    #label Bones
    .goto 1439/1,558.78,6111.57
    >>Loot the |cRXP_LOOT_Beached Sea Creature|r
    >>|cRXP_WARN_Be careful as the nearby |cRXP_ENEMY_Greymist Coastrunners|r have|r |T132307:0|t[Increased Movespeed]
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    .goto 1439/1,569.26,6373.14
    >>Kill |cRXP_ENEMY_Pygmy Tide Crawlers|r and |cRXP_ENEMY_Young Reef Crawlers|r. Loot them for their |cRXP_LOOT_Crawler Legs|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #requires Gwennyth
    .goto 1439/1,393.72,5993.24
    >>Run toward the Furbolg Camp
    >>|cRXP_WARN_Do not attempt to fight the|r |cRXP_ENEMY_Blackwood Windtalker|r
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    .goto 1439/1,302.02,5726.433
    >>Talk to |cRXP_FRIENDLY_Tysha|r
    .accept 953 >>Accept The Fall of Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #completewith Anaya
    +|cRXP_WARN_Avoid pulling |cRXP_ENEMY_Lady Moongazer|r (rare) if she's up|r
    .unitscan Lady Moongazer
 step
    #completewith Relics
    .goto 1439/1,161.19,5684.51,0
    >>Kill |cRXP_ENEMY_Anaya Dawnrunner|r. Loot her for |cRXP_LOOT_Anaya's Pendant|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #completewith Fall
    >>Kill |cRXP_ENEMY_Cursed Highbornes|r and |cRXP_ENEMY_Writhing Highbornes|r. Loot them for |cRXP_LOOT_Highborne Relics|r
    >>|cRXP_WARN_Kill |cRXP_ENEMY_Wailing Highbornes|r only if they're in your way|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    .goto 1439/1,166.43,5633.86
    >>Click the |cRXP_PICK_Ancient Flame|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto 1439/1,148.09,5575.78
    >>Click |cRXP_PICK_The Fall of Ameth'Aran|r on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto 1439/1,105.52,5770.100
    >>Click |cRXP_PICK_The Lay of Ameth'Aran|r on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
    #label Fall
    .goto 1439/1,302.02,5726.433
    >>Talk to |cRXP_FRIENDLY_Tysha|r
    .turnin 953 >>Turn in The Fall of Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #label Relics
    .goto 1439/1,206.39,5802.41,50,0
    .goto 1439/1,117.96,5820.32,50,0
    .goto 1439/1,71.46,5788.00,50,0
    .goto 1439/1,87.18,5713.77,50,0
    .goto 1439/1,93.07,5585.83,50,0
    .goto 1439/1,165.78,5564.870,50,0
    .goto 1439/1,242.41,5641.72,50,0
    .goto 1439/1,206.39,5802.41
    >>Kill |cRXP_ENEMY_Cursed Highbornes|r and |cRXP_ENEMY_Writhing Highbornes|r
    >>|cRXP_WARN_Kill |cRXP_ENEMY_Wailing Highbornes|r only if they're in your way|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    #label Anaya
    .goto 1439/1,161.19,5684.51
    >>Kill |cRXP_ENEMY_Anaya Dawnrunner|r. Loot her for |cRXP_LOOT_Anaya's Pendant|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #completewith next
    .goto 1439/1,-22.21,5999.79,30 >>Go inside the cave
    >>|cRXP_WARN_Avoid |cRXP_ENEMY_Thistle Bears|r, |cRXP_ENEMY_Moonkins|r, and |cRXP_ENEMY_Raging Moonkins|r en route (if possible)|r
    .isOnQuest 958
step
    .goto 1439/1,-54.96,6015.51
    .goto 1439/1,210.32,6739.501,30 >>|cRXP_WARN_Kill the |cRXP_ENEMY_Moonkin Oracle|r inside the cave --, then drink Logout Skip by logging out on top of the Mushroom at the back of the cave|r
    >>|cRXP_WARN_Be careful as it casts|r |T136006:0|t[Wrath] |cRXP_WARN_(Ranged Cast: Deals 30-45 Nature damage),|r |T136096:0|t[Moonfire] |cRXP_WARN_(Ranged Instant: Deals 20-30 Nature damage, then 44 Nature damage over 12 seconds), and|r |T136085:0|t[Regrowth] |cRXP_WARN_(Self Cast: Heals for about 150 damage. Rare, but run if this happens)|r
    >>|cRXP_WARN_You can LoS his|r |T136006:0|t[Wrath] |cRXP_WARN_behind the rocks inside the mouth of the cave|r
    .mob Moonkin Oracle
    .isOnQuest 958
step
    .goto 1439/1,47.88,6748.67
    >>Talk to |cRXP_FRIENDLY_Asterion|r
    .turnin 957,3 >>Turn in Bashal'Aran
    .target Asterion
step
    #sticky
    #label DalmondBags1
    .goto 1439/1,488.69,6564.830,0,0
    >>Talk to |cRXP_FRIENDLY_Dalmond|r
    .vendor >> Vendor Trash
    .target Dalmond
    .isQuestAvailable 3524
step
    .goto 1439/1,491.97,6582.303
    >>Talk to |cRXP_FRIENDLY_Thundris|r
    .turnin 958 >>Turn in Tools of the Highborne
    .target Thundris Windweaver
step
    #requires DalmondBags1
    .goto 1439/1,472.97,6557.85
    >>Talk to |cRXP_FRIENDLY_Alanndarian|r
    .turnin 2178 >>Turn in Easy Strider Living
    .target Alanndarian Nightsong
    .itemcount 5469,5
    .skill cooking,<10,1
step
    .goto 1439/1,362.93,6434.27
    >>Talk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Turn in How Big a Threat?
    .accept 985 >> Accept How Big a Threat?
    .accept 4761 >> Accept Thundris Windweaver
    .target Terenthis
step
    .goto 1439/1,541.75,6313.31
    >>Click |cRXP_PICK_Buzzbox 827|r
    .turnin 983 >>Turn in Buzzbox 827
    .accept 1001 >>Accept Buzzbox 411
step
    .goto 1439/1,536.51,6365.28,12,0
    .goto 1439/1,543.06,6342.57
    >>Talk to |cRXP_FRIENDLY_Gwennyth|r
    .turnin 3524 >>Turn in Washed Ashore
    .accept 4681 >>Accept Washed Ashore
    .target Gwennyth Bly'Leggonde
 step
    .goto 1439/1,533.23,6399.77
    >>Talk to |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Buy up to 40|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    .collect 4592,40,4681,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto 1439/1,539.13,6409.82,12,0
    .goto 1439/1,600.70,6425.100
    >>Talk to |cRXP_FRIENDLY_Cerellean|r
    .turnin 963 >>Turn in For Love Eternal
    .target Cerellean Whiteclaw
step
    #completewith Gwen
    >>Kill |cRXP_ENEMY_Darkshore Threshers|r
    >>|cRXP_WARN_Do NOT go out of your way for these|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
step
    #completewith next
    .goto 1439/1,786.06,6488.85,15,0
    .goto 1439/1,818.81,6419.86,25 >> Run along the dock toward the |cRXP_LOOT_Sea Turtle Remains|r
step
    .goto 1439/1,854.84,6310.26
    >>Swim underwater
    >>Loot the |cRXP_LOOT_Sea Turtle Remains|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto 1439/1,575.81,6381.430,50,0
    .goto 1439/1,596.77,6329.91,50,0
    .goto 1439/1,581.05,6209.82,50,0
    .goto 1439/1,575.15,6144.32,50,0
    .goto 1439/1,545.68,6010.270,50,0
    .goto 1439/1,634.10,5983.63,50,0
    .goto 1439/1,634.76,5915.51,50,0
    .goto 1439/1,537.82,5840.4,50,0
    .goto 1439/1,575.81,6381.430,50,0
    .goto 1439/1,596.77,6329.91,50,0
    .goto 1439/1,581.05,6209.82,50,0
    .goto 1439/1,575.15,6144.32,50,0
    .goto 1439/1,545.68,6010.270,50,0
    .goto 1439/1,634.10,5983.63,50,0
    .goto 1439/1,634.76,5915.51,50,0
    .goto 1439/1,537.82,5840.40
    .xp 11+7825 >> Grind to 7825+/8800xp
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #label Gwen
    .goto 1439/1,539.78,6364.84,12,0
    .goto 1439/1,543.06,6342.57
    >>Talk to |cRXP_FRIENDLY_Gwennyth|r
    .turnin 4681,1 >> Turn in Washed Ashore
    .target Gwennyth Bly'Leggonde
step << skip
    #completewith next
    +Equip your new creps (Equip the |T132537:0|t[Sandcomber Boots])
    .use 15398
    .itemcount 15398,1
    .itemStat 8,LEVEL,<14
step
    .goto 1439/1,515.55,6406.32
    >>|cRXP_WARN_===PAY ATTENTION===|r
    >>|cRXP_WARN_Talk to|r |cRXP_FRIENDLY_Shaussiy|r
    >>|cRXP_WARN_If this is your first time doing a Hearthstone Batch, watch the guide for it below|r
    >>|cRXP_WARN_Open the "Set Hearthstone" menu, then cast|r |T134414:0|t[Hearthstone]
    .hs >> |cRXP_WARN_Hearthstone BATCH from Auberdine to Ironforge|r
    .link https://www.youtube.com/watch?v=Is-h2TJpL3M >> |cRXP_WARN_CLICK HERE (it is HEAVILY advised you do so). Make sure you've set and tested your Batching Window Size prior to reduce risk of failure|r
    .target Innkeeper Shaussiy
    .zoneskip Ironforge
step
    .goto 1455/0,-928.40,-4614.51
    >>Talk to |cRXP_FRIENDLY_Dink|r
    .trainer >> Train your class spells (Fireball r3, Dampen Magic)
    >>Total Cost: 12s
    >>Remember you may want money for a |T133024:0|t[Bronze Tube] (8s each) and Thelsamar flying (1s 10c)
    .target Dink
step << skip
    .goto 1455/0,-928.80,-4614.51,-1
    .goto 1455/0,-1249.87,-4793.31,-1
    .vendor 5175 >> Logout skip on the pillar above |cRXP_FRIENDLY_Dink|r to check |cRXP_FRIENDLY_Cogspinner|r for a |T133024:0|t[Bronze Tube] if you wish
    .itemcount 4371,<1
    .isQuestAvailable 418
step
    #completewith next
    +|cRXP_WARN_Start spam casting|r |T132794:0|t[Conjure Water r2] |cRXP_WARN_to conjure as much water as possible before taking the flight|r
step << Gnome
    .goto 1455/0,-1152.39,-4820.914
    >>Talk to |cRXP_FRIENDLY_Gryth|r
    .accept 6392 >>Accept Return to Brock
    .target Gryth Thurden
step
    .goto 1455/0,-1152.39,-4820.914
    >>Talk to |cRXP_FRIENDLY_Gryth|r
    .fly Thelsamar >> Fly to Thelsamar
    .target Gryth Thurden
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance Mage
#name 12-14 ADV Loch Modan Mage AoE
#version 2
#group RestedXP ADV AoE Alliance Mage
#defaultfor Human Mage/Gnome Mage
#next 14-16 ADV Darkshore 2 Mage AoE
step
    #completewith next
    +|cRXP_WARN_As you quest through Loch Modan, save ALL of the |T133970:0|t[|cRXP_LOOT_Chunks of Boar Meat]|r you loot for later|r
step
    .zone Loch Modan >> Travel to Loch Modan
    .isOnQuest 6392 << Gnome
step
    .goto 1432/0,-2602.54,-5832.73
    >>Talk to |cRXP_FRIENDLY_Cobbleflint|r
    .accept 224 >> Accept In Defense of the King's Lands
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >> Enter the Bunker. Go to the top floor
step
    .goto 1432/0,-2634.59,-5842.81
    >>Talk to |cRXP_FRIENDLY_Rugelfuss|r
    .accept 267 >> Accept The Trogg Threat
    .target Captain Rugelfuss
step
    #completewith Rugel2
    >>Kill |cRXP_ENEMY_Mountain Boars|r. Loot them for their |cRXP_LOOT_Boar Intestines|r
    >>Kill |cRXP_ENEMY_Elder Black Bears|r. Loot them for their |cRXP_LOOT_Bear Meat|r
    >>Kill |cRXP_ENEMY_Forest Lurkers|r. Loot them for their |cRXP_LOOT_Spider Ichor|r
    >>|cRXP_WARN_Remember to kite them to |cRXP_FRIENDLY_Mountaineers|r if needed|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Mountain Boars|r cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .goto 1432/0,-2729.40,-5534.96
    >>Kill |cRXP_ENEMY_Stonesplinter Troggs|r and |cRXP_ENEMY_Stonesplinter Scouts|r. Loot them for their |cRXP_LOOT_Trogg Stone Teeth|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Stonesplinter Scouts|r cast|r |T132222:0|t[Shoot] |cRXP_WARN_(Ranged Cast: Deals 14-20 damage)|r
    >>|cRXP_WARN_This is a hyperspawn area. You should not need to move from here|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step
    .goto 1432/0,-2602.54,-5832.73
    >>Talk to |cRXP_FRIENDLY_Cobbleflint|r
    .turnin 224 >> Turn in In Defense of the King's Lands
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >> Enter the Bunker. Go to the top floor
step
    #label Rugel2
    .goto 1432/0,-2634.59,-5842.81
    >>Talk to |cRXP_FRIENDLY_Rugelfuss|r
    .turnin 267 >> Turn in The Trogg Threat
    .target Captain Rugelfuss
step << skip
    #completewith next
    .goto 1432/0,-2586.52,-5740.99,20,0
    .goto 1432/0,-2569.14,-5673.30,20,0
    .goto 1432/0,-2531.62,-5638.34,30 >>Go back into the Tunnel
step << skip
    .goto 1432/0,-2513.42,-5618.48
    .goto 1432/0,-2881.66,-5351.18,30 >>Jumping Logout Skip from the Brazier inside the tunnel to Thelsamar
    .isOnQuest 1339
step
    #completewith next
    >>Kill |cRXP_ENEMY_Mountain Boars|r. Loot them for their |cRXP_LOOT_Boar Intestines|r
    >>Kill |cRXP_ENEMY_Elder Black Bears|r. Loot them for their |cRXP_LOOT_Bear Meat|r
    >>Kill |cRXP_ENEMY_Forest Lurkers|r. Loot them for their |cRXP_LOOT_Spider Ichor|r
    >>|cRXP_WARN_Remember to kite them to |cRXP_FRIENDLY_Mountaineers|r if needed|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Mountain Boars|r cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .goto 1432/0,-2643.89,-4817.34,30 >>Travel to Algaz Station
    .isOnQuest 1339
step
    .goto 1432/0,-2659.34,-4822.300
    >>Talk to |cRXP_FRIENDLY_Gothor|r
    .vendor >>Vendor Trash
    .target Gothor Brumn
    .isOnQuest 1339
step
    .goto 1432/0,-2676.82,-4825.93
    >>Go Upstairs
    >>Talk to |cRXP_FRIENDLY_Stormpike|r
    .turnin 353 >> Turn in Stormpike's Delivery << Human
    .turnin 1339 >> Turn in Mountaineer Stormpike's Task
    .accept 1338 >> Accept Stormpike's Order
    .accept 307 >> Accept Filthy Paws
    .target Mountaineer Stormpike
step
    #completewith Entrance
    >>Kill |cRXP_ENEMY_Mountain Boars|r. Loot them for their |cRXP_LOOT_Boar Intestines|r
    >>Kill |cRXP_ENEMY_Elder Black Bears|r. Loot them for their |cRXP_LOOT_Bear Meat|r
    >>Kill |cRXP_ENEMY_Forest Lurkers|r. Loot them for their |cRXP_LOOT_Spider Ichor|r
    >>|cRXP_WARN_Remember to kite them to |cRXP_FRIENDLY_Mountaineers|r if needed|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Mountain Boars|r cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    #completewith Exit
    >>Kill |cRXP_ENEMY_Tunnel Rats|r. Loot them for their |cRXP_LOOT_Tunnel Rat Ears|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Kobold
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
step
    #label Entrance
    .goto 1432/0,-2972.13,-4836.10,40 >>Travel to the entrance of the Mine
    .isOnQuest 307
step
    #label Gear
    .goto 1432/0,-2971.58,-4854.31,12,0
    .goto 1432/0,-2998.33,-4868.66,12,0
    .goto 1432/0,-2965.79,-4891.84,12,0
    .goto 1432/0,-2983.99,-4892.58,12,0
    .goto 1432/0,-2955.86,-4919.99,12,0
    .goto 1432/0,-2989.51,-4910.05,12,0
    .goto 1432/0,-2993.09,-4945.19,12,0
    .goto 1432/0,-2957.24,-4945.37,12,0
    .goto 1432/0,-2971.58,-4854.31,12,0
    .goto 1432/0,-2998.33,-4868.66,12,0
    .goto 1432/0,-2965.79,-4891.84,12,0
    .goto 1432/0,-2983.99,-4892.58,12,0
    .goto 1432/0,-2955.86,-4919.99,12,0
    .goto 1432/0,-2989.51,-4910.05,12,0
    .goto 1432/0,-2993.09,-4945.19,12,0
    .goto 1432/0,-2957.24,-4945.37
    >>Loot the |cRXP_LOOT_Miners' Gear|r on the ground. |cRXP_WARN_They share spawnpoints|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Tunnel Rat Geomancers|r cast|r |T135824:0|t[Quick Flame Ward] |cRXP_WARN_(Self Cast: Gives 10-second fire immunity) and|r |T135824:0|t[Fire Blast] |cRXP_WARN_(Ranged Instant: Deals 20-30 Fire damage)
    .complete 307,1 --Collect Miners' Gear (x4)
--VV Rat Diggers
step
    #label Exit
    .goto 1432/0,-2972.13,-4836.10,40 >>Exit the Mine
    .isOnQuest 307
step
#loop
	.line Loch Modan,34.38,17.67,35.44,15.34,37.15,10.53,39.38,10.92,38.46,14.43,39.67,18.12,39.84,24.83,37.34,26.82,37.15,24.53,38.85,21.25,37.89,18.88,34.38,17.67
	.goto 1432/0,-2942.06,-4812.55,40,0
	.goto 1432/0,-2971.30,-4769.69,40,0
	.goto 1432/0,-3018.47,-4681.21,40,0
	.goto 1432/0,-3079.98,-4688.38,40,0
	.goto 1432/0,-3054.60,-4752.95,40,0
	.goto 1432/0,-3087.98,-4820.83,40,0
	.goto 1432/0,-3092.67,-4944.27,40,0
	.goto 1432/0,-3023.71,-4980.88,40,0
	.goto 1432/0,-3018.47,-4938.75,40,0
	.goto 1432/0,-3065.36,-4878.41,40,0
	.goto 1432/0,-3038.88,-4834.81,40,0
	.goto 1432/0,-2942.06,-4812.55,40,0
    >>Kill |cRXP_ENEMY_Tunnel Rat Scouts|r, |cRXP_ENEMY_Tunnel Rat Vermin|r, |cRXP_ENEMY_Tunnel Rat Kobolds|r, and |cRXP_ENEMY_Tunnel Rat Foragers|r. Loot them for their |cRXP_LOOT_Tunnel Rat Ears|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Tunnel Rat Kobolds|r cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds)|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Kobold
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Forager
step
    #completewith next
    >>Kill |cRXP_ENEMY_Mountain Boars|r. Loot them for their |cRXP_LOOT_Boar Intestines|r
    >>Kill |cRXP_ENEMY_Elder Black Bears|r. Loot them for their |cRXP_LOOT_Bear Meat|r
    >>Kill |cRXP_ENEMY_Forest Lurkers|r. Loot them for their |cRXP_LOOT_Spider Ichor|r
    >>|cRXP_WARN_Remember to kite them to |cRXP_FRIENDLY_Mountaineers|r if needed|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Mountain Boars|r cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .goto 1432/0,-2643.89,-4817.34,30 >>Travel to Algaz Station
    .isOnQuest 307
step
    .goto 1432/0,-2659.34,-4822.300
    >>Talk to |cRXP_FRIENDLY_Gothor|r
    .vendor >>Vendor Trash
    .target Gothor Brumn
    .isOnQuest 307
step
    .goto 1432/0,-2676.82,-4825.93
    >>Go Upstairs
    >>Talk to |cRXP_FRIENDLY_Stormpike|r
    .turnin 307,2 >> Turn in Filthy Paws
    .target Mountaineer Stormpike
step
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto 1432/0,-2849.11,-4944.45,35,0
	.goto 1432/0,-2895.45,-5014.91,35,0
	.goto 1432/0,-2957.24,-5067.89,35,0
	.goto 1432/0,-3008.26,-5098.06,35,0
	.goto 1432/0,-3087.43,-5091.25,35,0
	.goto 1432/0,-3046.05,-5189.48,35,0
	.goto 1432/0,-2918.62,-5233.08,35,0
	.goto 1432/0,-2817.66,-5471.86,35,0
	.goto 1432/0,-2809.66,-5343.64,35,0
	.goto 1432/0,-2819.87,-5220.39,35,0
	.goto 1432/0,-2740.98,-5225.170,35,0
	.goto 1432/0,-2794.49,-5102.66,35,0
	.goto 1432/0,-2743.74,-5021.16,35,0
	.goto 1432/0,-2704.57,-4958.430,35,0
	.goto 1432/0,-2645.82,-4895.890,35,0
	.goto 1432/0,-2849.11,-4944.45,35,0
    >>Kill |cRXP_ENEMY_Mountain Boars|r. Loot them for their |cRXP_LOOT_Boar Intestines|r
    >>Kill |cRXP_ENEMY_Elder Black Bears|r. Loot them for their |cRXP_LOOT_Bear Meat|r
    >>Kill |cRXP_ENEMY_Forest Lurkers|r. Loot them for their |cRXP_LOOT_Spider Ichor|r
    >>|cRXP_WARN_Remember to kite them to |cRXP_FRIENDLY_Mountaineers|r if needed|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Mountain Boars|r cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .xp <13+5500,1 << Gnome
step
    #completewith Boast
    >>Kill |cRXP_ENEMY_Mangy Mountain Boars|r and |cRXP_ENEMY_Mountain Boars|r. Loot them for their |cRXP_LOOT_Boar Intestines|r
    >>Kill |cRXP_ENEMY_Grizzled Black Bears|r and |cRXP_ENEMY_Elder Black Bears|r. Loot them for their |cRXP_LOOT_Bear Meat|r
    >>Kill |cRXP_ENEMY_Cliff Lurkers|r and |cRXP_ENEMY_Forest Lurkers|r. Loot them for their |cRXP_LOOT_Spider Ichor|r
    >>|cRXP_WARN_Remember to kite them to |cRXP_FRIENDLY_Mountaineers|r if needed|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Mountain Boars|r cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mangy Mountain Boar
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Grizzled Black Bear
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Cliff Lurker
    .mob +Forest Lurker
    .xp >13+5500,1 << Gnome
step
    .goto 1432/0,-3019.30,-5354.50,10,0
    >>Talk to |cRXP_FRIENDLY_Brock|r and |cRXP_FRIENDLY_Jern|r
    >>|cRXP_WARN_They can be inside or outside the building|r
    .turnin 6392 >>Turn in Return to Brock << Gnome
    .target +Brock Stoneseeker
    .goto 1432/0,-3014.88,-5366.820
    .accept 436 >> Accept Ironband's Excavation
    .goto 1432/0,-3020.68,-5358.91
    .target +Jern Hornhelm
    .xp >13+5500,1 << Gnome
step
    .goto 1432/0,-3020.68,-5358.91
    >>Talk to |cRXP_FRIENDLY_Jern|r
    >>|cRXP_WARN_He can be inside or outside the building|r
    .accept 436 >> Accept Ironband's Excavation
    .target Jern Hornhelm
    .xp >13+6550,1 << Gnome
    .isQuestTurnedIn 6392
step << Human
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto 1432/0,-2849.11,-4944.45,50,0
	.goto 1432/0,-2895.45,-5014.91,50,0
	.goto 1432/0,-2957.24,-5067.89,50,0
	.goto 1432/0,-3008.26,-5098.06,50,0
	.goto 1432/0,-3087.43,-5091.25,50,0
	.goto 1432/0,-3046.05,-5189.48,50,0
	.goto 1432/0,-2918.62,-5233.08,50,0
	.goto 1432/0,-2817.66,-5471.86,50,0
	.goto 1432/0,-2809.66,-5343.64,50,0
	.goto 1432/0,-2819.87,-5220.39,50,0
	.goto 1432/0,-2740.98,-5225.170,50,0
	.goto 1432/0,-2794.49,-5102.66,50,0
	.goto 1432/0,-2743.74,-5021.16,50,0
	.goto 1432/0,-2704.57,-4958.430,50,0
	.goto 1432/0,-2645.82,-4895.890,50,0
	.goto 1432/0,-2849.11,-4944.45,50,0
    .xp 13+8675 >> Grind to 8675+/11400xp
step << Gnome
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto 1432/0,-2849.11,-4944.45,50,0
	.goto 1432/0,-2895.45,-5014.91,50,0
	.goto 1432/0,-2957.24,-5067.89,50,0
	.goto 1432/0,-3008.26,-5098.06,50,0
	.goto 1432/0,-3087.43,-5091.25,50,0
	.goto 1432/0,-3046.05,-5189.48,50,0
	.goto 1432/0,-2918.62,-5233.08,50,0
	.goto 1432/0,-2817.66,-5471.86,50,0
	.goto 1432/0,-2809.66,-5343.64,50,0
	.goto 1432/0,-2819.87,-5220.39,50,0
	.goto 1432/0,-2740.98,-5225.170,50,0
	.goto 1432/0,-2794.49,-5102.66,50,0
	.goto 1432/0,-2743.74,-5021.16,50,0
	.goto 1432/0,-2704.57,-4958.430,50,0
	.goto 1432/0,-2645.82,-4895.890,50,0
	.goto 1432/0,-2849.11,-4944.45,50,0
    .xp 13+6545 >> Grind to 6545+/11400xp
    .xp <13+5500,1
    .isOnQuest 6392
step << Gnome
    #completewith next
    .goto 1432/0,-3266.44,-5656.19,50,0
    .goto 1432/0,-3354.99,-5726.64,50,0
    .goto 1432/0,-3425.60,-5738.42,50,0
    .goto 1432/0,-3781.98,-5702.54,20 >>Travel toward |cRXP_FRIENDLY_Aldren|r
step << Gnome
    #completewith Boast
    .goto 1432/0,-3781.98,-5702.54
    >>Talk to |cRXP_FRIENDLY_Aldren|r
    .vendor 1214 >> |cRXP_BUY_Buy the |r |T132491:0|t[Wise Man's Belt] |cRXP_BUY_from him (if it's up)|r
    .isQuestAvailable 298
step << Gnome
    >>Talk to |cRXP_FRIENDLY_Ironband|r and |cRXP_FRIENDLY_Magmar|r
    .accept 298 >> Accept Excavation Progress Report
    .target +Prospector Ironband
    .goto 1432/0,-3812.59,-5694.63
    .turnin 436 >> Turn in Ironband's Excavation
    .goto 1432/0,-3783.63,-5713.77
    .target +Magmar Fellhew
    .isOnQuest 436
step << Gnome
    #label ExcavationP
    .goto 1432/0,-3812.59,-5694.63
    >>Talk to |cRXP_FRIENDLY_Ironband|r
    .accept 298 >> Accept Excavation Progress Report
    .target Prospector Ironband
    .isQuestTurnedIn 436
step << Gnome
    #completewith next
    .goto 1432/0,-3816.18,-5786.250,30,0
    .goto 1432/0,-4013.68,-5791.58,40,0
    .goto 1432/0,-4124.56,-5742.100,40,0
    .goto 1432/0,-4258.62,-5650.48,15,0
    .goto 1432/0,-4296.41,-5694.63,20 >>Travel to |cRXP_FRIENDLY_Daryl|r
step << Gnome
    #label Boast
    .goto 1432/0,-4296.41,-5694.63
    >>Talk to |cRXP_FRIENDLY_Daryl|r
    .accept 257 >> Accept A Hunter's Boast
    .target Daryl The Youngling
    .isOnQuest 298
step << Gnome
#loop
	.line Loch Modan,79.89,65.91,76.70,74.44,74.74,69.21,77.03,60.55,76.09,57.94,77.39,55.98,79.63,59.85,79.89,65.91
	.goto 1432/0,-4197.38,-5699.97,45,0
	.goto 1432/0,-4109.39,-5856.89,45,0
	.goto 1432/0,-4055.33,-5760.68,45,0
	.goto 1432/0,-4118.49,-5601.37,45,0
	.goto 1432/0,-4092.57,-5553.35,45,0
	.goto 1432/0,-4128.42,-5517.30,45,0
	.goto 1432/0,-4190.21,-5588.49,45,0
	.goto 1432/0,-4197.38,-5699.97,45,0
    >>Kill |cRXP_ENEMY_Mountain Buzzards|r
    .complete 257,1 --Mountain Buzzard (6)
    .mob Mountain Buzzard
    .isOnQuest 257
step << Gnome
    #completewith next
    .goto 1432/0,-4258.62,-5650.48,15,0
    .goto 1432/0,-4296.41,-5694.63,20 >>Travel to |cRXP_FRIENDLY_Daryl|r
step << Gnome
    .goto 1432/0,-4296.41,-5694.63
    >>Talk to |cRXP_FRIENDLY_Daryl|r
    .turnin 257,2 >> Turn in A Hunter's Boast
    .target Daryl The Youngling
    .isQuestComplete 257
step << Gnome
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto 1432/0,-2849.11,-4944.45,50,0
	.goto 1432/0,-2895.45,-5014.91,50,0
	.goto 1432/0,-2957.24,-5067.89,50,0
	.goto 1432/0,-3008.26,-5098.06,50,0
	.goto 1432/0,-3087.43,-5091.25,50,0
	.goto 1432/0,-3046.05,-5189.48,50,0
	.goto 1432/0,-2918.62,-5233.08,50,0
	.goto 1432/0,-2817.66,-5471.86,50,0
	.goto 1432/0,-2809.66,-5343.64,50,0
	.goto 1432/0,-2819.87,-5220.39,50,0
	.goto 1432/0,-2740.98,-5225.170,50,0
	.goto 1432/0,-2794.49,-5102.66,50,0
	.goto 1432/0,-2743.74,-5021.16,50,0
	.goto 1432/0,-2704.57,-4958.430,50,0
	.goto 1432/0,-2645.82,-4895.890,50,0
	.goto 1432/0,-2849.11,-4944.45,50,0
    >>Kill |cRXP_ENEMY_Mangy Mountain Boars|r and |cRXP_ENEMY_Mountain Boars|r. Loot them for their |cRXP_LOOT_Boar Intestines|r
    >>Kill |cRXP_ENEMY_Grizzled Black Bears|r and |cRXP_ENEMY_Elder Black Bears|r. Loot them for their |cRXP_LOOT_Bear Meat|r
    >>Kill |cRXP_ENEMY_Cliff Lurkers|r and |cRXP_ENEMY_Forest Lurkers|r. Loot them for their |cRXP_LOOT_Spider Ichor|r
    >>|cRXP_WARN_Remember to kite them to |cRXP_FRIENDLY_Mountaineers|r if needed|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Mountain Boars|r cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mangy Mountain Boar
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Grizzled Black Bear
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Cliff Lurker
    .mob +Forest Lurker
step << Gnome
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto 1432/0,-2849.11,-4944.45,50,0
	.goto 1432/0,-2895.45,-5014.91,50,0
	.goto 1432/0,-2957.24,-5067.89,50,0
	.goto 1432/0,-3008.26,-5098.06,50,0
	.goto 1432/0,-3087.43,-5091.25,50,0
	.goto 1432/0,-3046.05,-5189.48,50,0
	.goto 1432/0,-2918.62,-5233.08,50,0
	.goto 1432/0,-2817.66,-5471.86,50,0
	.goto 1432/0,-2809.66,-5343.64,50,0
	.goto 1432/0,-2819.87,-5220.39,50,0
	.goto 1432/0,-2740.98,-5225.170,50,0
	.goto 1432/0,-2794.49,-5102.66,50,0
	.goto 1432/0,-2743.74,-5021.16,50,0
	.goto 1432/0,-2704.57,-4958.430,50,0
	.goto 1432/0,-2645.82,-4895.890,50,0
	.goto 1432/0,-2849.11,-4944.45,50,0
    .xp 13+6780 >> Grind to 6780+/11400xp
    .isOnQuest 298
step
    #sticky
    #label Kadrell
    .goto 1432/0,-2902.07,-5398.28,40,0
    .goto 1432/0,-2945.10,-5360.20,40,0
    .goto 1432/0,-3015.71,-5335.73,40,0
    .goto 1432/0,-3025.09,-5318.44,40,0
    .goto 1432/0,-3017.64,-5274.66
    >>Talk to |cRXP_FRIENDLY_Kadrell|r
    >>|cRXP_FRIENDLY_Kadrell|r |cRXP_WARN_patrols along the main Thelsamar road|r
    .turnin 416,2 >> Turn in Rat Catching
    .target Mountaineer Kadrell
step << Gnome
    .goto 1432/0,-3019.30,-5354.50,10,0
    >>Talk to |cRXP_FRIENDLY_Brock|r and |cRXP_FRIENDLY_Jern|r
    >>|cRXP_WARN_They can be inside or outside the building|r
    .turnin 6392 >>Turn in Return to Brock
    .target +Brock Stoneseeker
    .goto 1432/0,-3014.88,-5366.820
    .turnin 298 >> Turn in Excavation Progress Report
    .accept 301 >> Accept Report to Ironforge
    .goto 1432/0,-3020.68,-5358.91
    .target +Jern Hornhelm
    .isOnQuest 298
step << Gnome
    .goto 1432/0,-3019.30,-5354.50,10,0
    >>Talk to |cRXP_FRIENDLY_Brock|r and |cRXP_FRIENDLY_Jern|r
    >>|cRXP_WARN_They can be inside or outside the building|r
    .turnin 6392 >>Turn in Return to Brock
    .target Brock Stoneseeker
    .goto 1432/0,-3014.88,-5366.820
    .accept 301 >> Accept Report to Ironforge
    .goto 1432/0,-3020.68,-5358.91
    .target +Jern Hornhelm
    .isQuestTurnedIn 298
step << Gnome
    .goto 1432/0,-3019.30,-5354.50,10,0
    .goto 1432/0,-3014.88,-5366.820
    >>Talk to |cRXP_FRIENDLY_Brock|r
    >>|cRXP_WARN_He can be inside or outside the building|r
    .turnin 6392 >>Turn in Return to Brock
    .target Brock Stoneseeker
step
    #completewith next
    .goto 1432/0,-2966.06,-5365.72,12,0
    .goto 1432/0,-2969.92,-5377.12,12,0
    >>Go inside the Inn
    .goto 1432/0,-2954.42,-5394.10,10 >>Travel toward |cRXP_FRIENDLY_Vidra|r
step
    .goto 1432/0,-2954.42,-5394.10
    >>Talk to |cRXP_FRIENDLY_Vidra|r
    .accept 418 >> Accept Thelsamar Blood Sausages
    .turnin 418 >> Turn in Thelsamar Blood Sausages
    .target Vidra Hearthstove
step
    .goto 1432/0,-2952.55,-5381.91
    >>|cRXP_WARN_Do NOT get rid of any of your extra|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    .skill cooking,10 >> Cook |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r into |T133974:0|t[Roasted Boar Meat] until your |T133971:0|t[Cooking] skill reaches 10
step
    .goto 1432/0,-2952.55,-5381.91
    >>Talk to |cRXP_FRIENDLY_Yanni|r
    >>|cRXP_BUY_Buy as many|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_as you need/can|r
    >>|cRXP_WARN_Do NOT go below 45 Silver|r
    .vendor >> Vendor Trash
    .isOnQuest 1338
step
    #completewith next
    #requires Kadrell
    +|cRXP_WARN_Start spam casting|r |T132794:0|t[Conjure Water r2] |cRXP_WARN_to conjure as much water as possible before taking the flight|r
step
    #requires Kadrell
    .goto 1432/0,-2929.93,-5424.95
    >>Talk to |cRXP_FRIENDLY_Thorgrum|r
    .fly Ironforge >> Fly to Ironforge
    .target Thorgrum Borrelson
    .isOnQuest 1338
--VV WIP. Report to Ironforge needed
step << Gnome
    .goto 1455/0,-1303.71,-4631.08
    >>Talk to |cRXP_FRIENDLY_Stormpike|r
    .turnin 301 >> Turn in Report to Ironforge
    .target Prospector Stormpike
    .isOnQuest 301
step << skip
    #completewith Monty
    .goto 1455/0,-1305.14,-4615.09,-1
    .goto 1455/0,-1158.00,-4816.48,-1
    .goto 1455/0,-1317.71,-4839.48,30 >>Logout Skip to the outside of the Deeprun Tram
step
    .goto 1455/0,-1249.87,-4793.31
    >>Talk to |cRXP_FRIENDLY_Cogspinner|r
    .vendor 5175 >>|cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him if its up|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
step << Gnome
    #label Monty
    .goto 1455/0,-1317.71,-4839.48,30,0
    >>Go inside the Deeprun Tram
    >>Talk to |cRXP_FRIENDLY_Monty|r
    .accept 6661 >> Accept Deeprun Rat Roundup
    .target Monty
step << Gnome
    >>Use the |T133942:0|t[Rat Catcher's Flute] on the |cRXP_FRIENDLY_Deeprun Rats|r in the Deeprun Tram
    .complete 6661,1 --Rats Captured (x5)
    .target Deeprun Rat
    .use 17117
step
    >>Talk to |cRXP_FRIENDLY_Monty|r
    >>|cRXP_WARN_Wait out the RP|r << Gnome
    .turnin 6661 >> Turn in Deeprun Rat Roundup << Gnome
    .timer 13,Deeprun Rat Roundup RP << Gnome
    .accept 6662 >> Accept Me Brother, Nipsy
    .target Monty
    .zoneskip Stormwind City
step
    >>|cRXP_WARN_Ride the Deeprun Tram whilst spam casting|r |T132794:0|t[Conjure Water r2]
    >>Talk to |cRXP_FRIENDLY_Nipsy|r on the other side of the Deeprun Tram
    .turnin 6662 >> Turn in Me Brother, Nipsy
    .target Nipsy
    .isOnQuest 6662
step
    #label Monty << Human
    .zone Stormwind City >> Enter Stormwind City
    .isOnQuest 1338
step
    #completewith next
    .goto 1453/0,574.95,-8388.30,20,0
    .goto 1453/0,614.33,-8380.77,20,0
    .goto 1453/0,638.26,-8342.22,15 >>Travel toward |cRXP_FRIENDLY_Billibub|r
step
    .goto 1453/0,638.26,-8342.22
    >>Talk to |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him if its up|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
step
    .goto 1453/0,600.08,-8427.20
    >>Talk to |cRXP_FRIENDLY_Furen|r
    .turnin 1338 >> Turn in Stormpike's Order
    .target Furen Longbeard
step
    #completewith next
    .goto 1453/0,663.94,-8451.76,20,0
    .goto 1453/0,686.79,-8473.27,20,0
    .goto 1453/0,678.86,-8562.64,20,0
    .goto 1453/0,711.26,-8587.38,20,0
    .goto 1453/0,737.60,-8557.89,12,0
    .goto 1453/0,719.86,-8550.36,12 >>Travel toward |cRXP_FRIENDLY_Baros|r
step
    .goto 1453/0,719.86,-8550.36
    >>Go inside the building
    >>Talk to |cRXP_FRIENDLY_Baros|r
    .accept 399 >> Accept Humble Beginnings
    .target Baros Alexston
step
    #completewith next
    .goto 1453/0,739.49,-8661.68,15,0
    .goto 1453/0,720.67,-8699.06,15,0
    .goto 1453/0,728.33,-8718.06,15,0
    .goto 1453/0,699.16,-8743.88,15,0
    .goto 1453/0,674.29,-8775.79,15,0
    .goto 1453/0,686.25,-8815.41,8,0
    .goto 1453/0,684.24,-8820.34,4,0
    .goto 1453/0,687.46,-8818.01,6,0
    .goto 1453/0,854.42,-8965.28,12,0
    >>|cRXP_WARN_Jump up onto the torch, then drop down to get under Stormwind|r
    >>|cRXP_WARN_With Shadows on "Fair" or "Low", get in the middle of Derek the Dinosaur's feet (the lighter part of the dirt) just before the blue void, then walk straight forward|r
    >>|cRXP_WARN_NOTE: There is a small chance of dying using this method. You can also walk to the Mage Tower normally if you wish|r
    .link https://youtu.be/gV8-wgQEomc >> CLICK HERE for a guide
    .goto 1453/0,861.95,-8990.47,10 >>Travel toward |cRXP_FRIENDLY_Jennea|r
step
    .goto 1453/0,861.95,-8990.47
    >>Talk to |cRXP_FRIENDLY_Jennea|r
    .accept 1861 >> Accept Mirror Lake << Gnome
    .trainer >> Train your class spells (Fire Blast r2, Arcane Intellect r2, Arcane Explosion)
    >>Total Cost: 27s
    >>Remember you may want money for Potions (1-3s each) and Scrolls (50c-3s each)
    .target Jennea Cannon
step
    #completewith next
    .goto 1453/0,887.22,-9017.80,10,0
    .goto 1453/0,871.36,-9013.14,10,0
    .goto 1453/0,868.8,-9004.27,8,0
    .goto 1453/0,877.00,-9008.03,6,0
    .goto 1453/0,863.96,-9001.40,8,0
    .goto 1453/0,928.62,-9010.10,15,0
    .goto 1453/0,962.63,-8990.73,15,0
    .goto 1453/0,949.86,-9009.380,10,0
    .goto 1453/0,942.34,-9001.49,8,0
    >>Exit the Mage Tower
    .goto 1453/0,948.65,-8994.50,10 >>Travel toward |cRXP_FRIENDLY_Charys|r
step
    .goto 1453/0,948.65,-8994.50
    >>Enter the building
    >>Talk to |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >> |cRXP_BUY_Buy|r |T134851:0|t[Lesser Mana Potions] |cRXP_BUY_and|r |T134831:0|t[Healing Potions] |cRXP_BUY_from her (if they're up)|r
    .money <0.0120
    .target Charys Yserian
step
    #completewith next
    .goto 1453/0,852.40,-8920.10,20,0
    .goto 1453/0,829.01,-8901.28,20,0
    .goto 1453/0,789.22,-8904.59,20,0
    .goto 1453/0,758.31,-8878.78,20,0
    .goto 1453/0,810.33,-8832.44,20,0
    .goto 1453/0,827.54,-8850.19,15,0
    .goto 1453/0,822.16,-8865.60,10 >>Travel toward |cRXP_FRIENDLY_Adair|r
    .money <0.0090
step
    .goto 1453/0,822.16,-8865.60
    >>Enter the building
    >>Talk to |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >> |cRXP_BUY_Buy non-intellect|r |T134943:0|t[Scrolls] |cRXP_BUY_from him (if they're up)|r
    .money <0.0090
    .target Adair Gilroy
step << skip
    #completewith next
    .goto 1453/0,661.38,-8858.16,12,0
    .goto 1453/0,680.61,-8829.39,12,0
    .goto 1453/0,717.44,-8847.32,12,0
    .goto 1453/0,693.24,-8891.51,12,0
    .goto 1453/0,681.28,-8888.01,10 >>Travel toward |cRXP_FRIENDLY_Roberto|r
step << skip
    .goto 1453/0,681.28,-8888.01
    >>Go inside the building
    >>Talk to |cRXP_FRIENDLY_Roberto|r
    >>|cRXP_BUY_Buy a|r |T132620:0|t[Cask of Merlot] |cRXP_BUY_from him|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    .goto 1453/0,680.61,-8828.67,15,0
    .goto 1453/0,635.44,-8863.81,8 >>Travel toward |cRXP_FRIENDLY_Keldric|r
    .money <0.01
step
    .goto 1453/0,635.44,-8863.81
    >>Talk to |cRXP_FRIENDLY_Keldric|r through the wall
    .vendor 1257 >> |cRXP_BUY_Buy|r |T134830:0|t[Lesser Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .money <0.01
    .target Keldric Boucher
step
    #completewith Bank
    .goto 1453/0,637.59,-8889.81,10 >>Enter the Stormwind Bank
step
    .goto 1453/0,614.33,-8932.92
    >>Talk to |cRXP_FRIENDLY_Newton|r
    .bankdeposit 769,4371,730,7207,1941,1711,1478,1712,3012,1180,1181,3013,6889 >> Deposit the following items into the bank:
    >>|T133970:0|t[Chunk of Boar Meat]
    >>|T133024:0|t[Bronze Tube]
    >>|T133884:0|t[Murloc Eyes]
    >>|T132788:0|t[Jennea's Flask]
    >>|T132620:0|t[Cask of Merlot]
    >>|T134943:0|t[Scrolls]
    >>|T132832:0|t[Small Egg]
    .target Newton Burnside
--   .itemcount 769,1
--   .itemcount 4371,1
-- .itemcount 730,1
--  .itemcount 7207,1
-- 1711 level 20 scroll
--VV Vendor Crisp Spider Meat for now
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 769,4371,7207 >> Deposit the following items into the bank:
    >>|T133970:0|t[Chunk of Boar Meat]
    >>|T133024:0|t[Bronze Tube]
    >>|T132788:0|t[Jennea's Flask]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 4371,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 769,730,7207 >> Deposit the following items into the bank:
    >>|T133970:0|t[Chunk of Boar Meat]
    >>|T133884:0|t[Murloc Eyes]
    >>|T132788:0|t[Jennea's Flask]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 4371,730,7207 >> Deposit the following items into the bank:
    >>|T133024:0|t[Bronze Tube]
    >>|T133884:0|t[Murloc Eyes]
    >>|T132788:0|t[Jennea's Flask]
    .target Newton Burnside
    .itemcount 4371,1
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 769,7207 >> Deposit the following items into the bank:
    >>|T133970:0|t[Chunk of Boar Meat]
    >>|T132788:0|t[Jennea's Flask]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 4371,7207 >> Deposit the following items into the bank:
    >>|T133024:0|t[Bronze Tube]
    >>|T132788:0|t[Jennea's Flask]
    .target Newton Burnside
    .itemcount 4371,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 730,7207 >> Deposit the following items into the bank:
    >>|T133884:0|t[Murloc Eyes]
    >>|T132788:0|t[Jennea's Flask]
    .target Newton Burnside
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 7207 >> Deposit the following item into the bank:
    >>|T132788:0|t[Jennea's Flask]
    .target Newton Burnside
    .itemcount 7207,1
step
    #completewith next
    .goto 1453/0,662.46,-8860.76,10,0
    >>Enter the Inn
    .goto 1453/0,673.75,-8867.93,10 >>Travel Toward |cRXP_FRIENDLY_Allison|r
    .target Innkeeper Allison
step
    .goto 1453/0,673.75,-8867.93
    >>|cRXP_WARN_===PAY ATTENTION===|r
    >>|cRXP_WARN_Talk to|r |cRXP_FRIENDLY_Allison|r
    >>|cRXP_WARN_Open the "Set Hearthstone" menu, then cast|r |T134414:0|t[Hearthstone]
    .hs >> |cRXP_WARN_Hearthstone BATCH from Stormwind to Auberdine|r
    .target Innkeeper Allison
    .zoneskip Darkshore

]])
RXPGuides.RegisterGuide([[
#forever
<< Alliance Mage
#name 14-16 ADV Darkshore 2 Mage AoE
#version 2
#group RestedXP ADV AoE Alliance Mage
#defaultfor Human Mage/Gnome Mage
#next 16-18 ADV Westfall Mage AoE


step
    #completewith DeepO
    +|cRXP_WARN_Save any |T132917:0|t[Light Feathers] you get for later|r
step
    .goto 1439/1,533.23,6399.77
    >>Talk to |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Buy up to 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    .collect 4592,20,982,1 --Longjaw Mud Snapper (20)
    .target Laird
    .isQuestAvailable 982
step
    >>Talk to |cRXP_FRIENDLY_Barithras|r and |cRXP_FRIENDLY_Glynda|r
    .accept 947 >>Accept Cave Mushrooms
    .target +Barithras Moonshade
    .goto 1439/1,497.21,6427.72
    .accept 4811 >>Accept The Red Crystal
    .goto 1439/1,473.63,6439.07
    .target +Sentinel Glynda Nal'Shea
step
    #label DeepO
    .goto 1439/1,445.46,6536.01
    >>Talk to |cRXP_FRIENDLY_Gorbold|r
    .accept 982 >> Accept Deep Ocean, Vast Sea
    .target Gorbold Steelhand
step
    .goto 1439/1,492.62,6580.99
    >>Talk to |cRXP_FRIENDLY_Thundris|r
    .turnin 4761 >> Turn in Thundris Windweaver
    .accept 4762 >> Accept The Cliffspring River
    .target Thundris Windweaver
step
    #completewith MistV
    .goto 1439/1,592.18,6666.14,50,0
    .goto 1439/1,565.33,6925.96,50,0
    .goto 1439/1,478.21,6985.78,50,0
    >>Kill |cRXP_ENEMY_Darkshore Threshers|r in the water. Loot them for their |cRXP_LOOT_Thresher Eyes|r
   .complete 1001,1 --Thresher Eye (3)
   .mob Darkshore Thresher
step
   .goto 1439/1,438.91,7077.48
--  .goto 1439/1,437.60,7076.17
    >>Loot the |cRXP_LOOT_Silver Dawning Lockbox|r through the wall of the boat
    >>|cRXP_WARN_Use your "Interact with Target" keybind underwater next to the arrow location|r
    >>|cRXP_WARN_This has a 5 second cast time|r
   .complete 982,1 --Silver Dawning's Lockbox (1)
step
   #label MistV
   .goto 1439/1,349.18,7133.81
--  .goto 1439/1,345.90,7134.68
   >>Loot the |cRXP_LOOT_Mist Veil Lockbox|r through the wall of the boat
   >>|cRXP_WARN_Use your "Interact with Target" keybind underwater next to the arrow location|r
   >>|cRXP_WARN_This has a 5 second cast time|r
   .complete 982,2 --Mist Veil's Lockbox (1)
step
   .goto 1439/1,292.85,7083.16,50,0
   .goto 1439/1,592.18,6666.14,50,0
   .goto 1439/1,565.33,6925.96,50,0
   .goto 1439/1,478.21,6985.78,50,0
   .goto 1439/1,292.85,7083.16,50,0
   .goto 1439/1,592.18,6666.14,50,0
   .goto 1439/1,565.33,6925.96,50,0
   .goto 1439/1,478.21,6985.78
   >>Kill |cRXP_ENEMY_Darkshore Threshers|r in the water. Loot them for their |cRXP_LOOT_Thresher Eyes|r
   .complete 1001,1 --Thresher Eye (3)
   .mob Darkshore Thresher
step
   #completewith next
   +|cRXP_WARN_Save the|r |T133884:0|t[Murloc Eyes] |cRXP_WARN_you loot from the|r |cRXP_ENEMY_Greymist Coastrunners|r |cRXP_WARN_and|r |cRXP_ENEMY_Greymist Seers|r
step
   .goto 1439/1,196.56,6958.71
   >>Loot the |cRXP_LOOT_Beached Sea Creature|r on the ground
   >>|cRXP_WARN_This has a 5 second cast time|r
   .accept 4723 >> Accept Beached Sea Creature
step
   .goto 1439/1,193.29,7084.03
   >>Click |cRXP_PICK_Buzzbox 411|r
   .turnin 1001 >> Turn in Buzzbox 411
   .accept 1002 >> Accept Buzzbox 323
step
    #completewith SeaTurtle1
    .goto 1439/1,81.28,7118.96,50,0
    >>AoE |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgeling
step
    #completewith SeaTurtle1
    >>Kill |cRXP_ENEMY_Moonstalker Runts|r and |cRXP_ENEMY_Moonstalkers|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #completewith next
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r
    >>|cRXP_WARN_Be careful as they cast|r |T135914:0|t[Rabies] |cRXP_WARN_(Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)|r
    .complete 2138,1 --Rabid Thistle Bear (20)
    .mob Rabid Thistle Bear
step
    #label SeaTurtle1
    .goto 1439/1,46.57,7433.8,80 >>Travel toward the |cRXP_LOOT_Beached Sea Turtle|r
    .isQuestAvailable 4725
step
    #completewith next
    +Save the |T133884:0|t[Murloc Eyes] you loot from the |cRXP_ENEMY_Greymist Warriors|r and |cRXP_ENEMY_Greymist Netters|r
step
    .goto 1439/1,46.57,7433.800
    >>Loot the |cRXP_LOOT_Beached Sea Turtle|r on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    .accept 4725 >> Accept Beached Sea Turtle
step
    #completewith River
    >>Kill |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgeling
step
    #completewith River
    >>Kill |cRXP_ENEMY_Moonstalker Runts|r and |cRXP_ENEMY_Moonstalkers|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #completewith RedC
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r
    >>|cRXP_WARN_Be careful as they cast|r |T135914:0|t[Rabies] |cRXP_WARN_(Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)|r
    .complete 2138,1 --Rabid Thistle Bear (20)
    .mob Rabid Thistle Bear
step
    #label River
    .goto 1439/1,-383.77,7222.89
    >>Use the |T134865:0|t[Empty Sampling Tube] in the water
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350
step
    #completewith RedC
    >>Kill |cRXP_ENEMY_Foreststriders|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider
step
    #completewith RedC
    >>Kill |cRXP_ENEMY_Moonstalker Runts|r and |cRXP_ENEMY_Moonstalkers|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #label RedC
    .goto 1439/1,-144.04,6209.82,400 >>Travel toward |cRXP_PICK_The Red Crystal|r
    .isOnQuest 4811
step
    #completewith Bash
    >>Kill |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #completewith Bash
    >>Kill |cRXP_ENEMY_Moonstalker Runts|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
step
    .goto 1439/1,-144.04,6209.82
    >>Run up to |cRXP_PICK_The Red Crystal|r
    >>|cRXP_WARN_Remember to pull the |cRXP_ENEMY_Raging Moonkins|r that are leashed together|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range (1)
step
    #label Bash
    .goto 1439/1,166.43,5633.86,175 >>Travel toward the |cRXP_PICK_Ancient Flame|r
    .isOnQuest 957
step
    #completewith next
    .goto 1439/1,161.19,5684.51,0
    >>Kill |cRXP_ENEMY_Anaya Dawnrunner|r. Loot her for |cRXP_LOOT_Anaya's Pendant|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    .goto 1439/1,166.43,5633.86
    >>Click the |cRXP_PICK_Ancient Flame|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto 1439/1,161.19,5684.51,50,0
    .goto 1439/1,108.79,5608.10,50,0
    .goto 1439/1,155.95,5757.00,50,0
    .goto 1439/1,161.19,5684.51,50,0
    .goto 1439/1,108.79,5608.10,50,0
    .goto 1439/1,155.95,5757.00,50,0
    .goto 1439/1,161.19,5684.51,50,0
    .goto 1439/1,108.79,5608.10
    >>Kill |cRXP_ENEMY_Anaya Dawnrunner|r. Loot her for |cRXP_LOOT_Anaya's Pendant|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #completewith RBears
    >>Kill |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #completewith RBears
    >>Kill |cRXP_ENEMY_Moonstalker Runts|r and |cRXP_ENEMY_Moonstalkers|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #completewith next
    +Save the |T133884:0|t[Murloc Eyes] you loot from the |cRXP_ENEMY_Greymist Coastrunners|r and |cRXP_ENEMY_Greymist Seers|r
step
    #label BeachedST
    .goto 1439/1,511.62,5618.58
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .accept 4722 >> Accept Beached Sea Turtle
step
#loop
	.line Darkshore,38.74,58.10,39.91,58.50,39.23,63.60,39.87,66.31,39.98,70.55,37.40,70.05,38.63,67.72,38.50,63.73,38.74,58.10
	.goto 1439/1,404.20,5796.300,45,0
	.goto 1439/1,327.56,5778.830,45,0
	.goto 1439/1,372.10,5556.130,45,0
	.goto 1439/1,330.18,5437.80,45,0
	.goto 1439/1,322.98,5252.65,45,0
	.goto 1439/1,491.97,5274.48,45,0
	.goto 1439/1,411.40,5376.23,45,0
	.goto 1439/1,419.92,5550.46,45,0
	.goto 1439/1,404.20,5796.300,45,0
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r
    >>|cRXP_WARN_Be careful as they cast|r |T135914:0|t[Rabies] |cRXP_WARN_(Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)|r
    .complete 2138,1 --Rabid Thistle Bear (20)
    .mob Rabid Thistle Bear
step
    #label RBears
#loop
	.line Darkshore,39.26,56.72,40.21,56.23,39.96,55.22,39.90,54.38,40.24,53.47,39.21,53.01,39.90,54.38
	.goto 1439/1,370.14,5856.56,50,0
	.goto 1439/1,307.91,5877.96,50,0
	.goto 1439/1,324.29,5922.06,50,0
	.goto 1439/1,328.22,5958.74,50,0
	.goto 1439/1,305.95,5998.48,50,0
	.goto 1439/1,373.41,6018.56,50,0
	.goto 1439/1,328.22,5958.74,50,0
    >>Kill |cRXP_ENEMY_Blackwood Pathfinders|r and |cRXP_ENEMY_Blackwood Windtalkers|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Blackwood Pathfinders|r cast|r |T132152:0|t[Thrash] |cRXP_WARN_(Charges 2 extra attacks every 10 seconds), and |cRXP_ENEMY_Blackwood Windtalkers|r cast|r |T136022:0|t[Gust of Wind] |cRXP_WARN_(melee-range aoe stun)|r
    .complete 985,1 --Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 --Blackwood Windtalker (5)
    .mob +Blackwood Windtalker
step
    #completewith Auberdine
    >>Kill |cRXP_ENEMY_Moonstalker Runts|r Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
step
#loop
	.line Darkshore,38.63,51.25,38.33,50.00,38.18,48.42,38.73,47.62,39.49,47.65,41.40,47.13,41.67,49.47,41.45,50.84,38.63,51.25
	.goto 1439/1,411.40,6095.42,50,0
	.goto 1439/1,431.05,6150.00,50,0
	.goto 1439/1,440.88,6218.99,50,0
	.goto 1439/1,404.85,6253.93,50,0
	.goto 1439/1,355.07,6252.62,50,0
	.goto 1439/1,229.97,6275.32,50,0
	.goto 1439/1,212.28,6173.14,50,0
	.goto 1439/1,226.69,6113.32,50,0
	.goto 1439/1,411.40,6095.42,50,0
    >>Kill |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #label Auberdine
    .goto 1439/1,543.06,6342.57,150 >>Travel toward |cRXP_FRIENDLY_Gwennyth|r
    .isOnQuest 982
step
    .goto 1439/1,536.51,6365.28,12,0
    .goto 1439/1,543.06,6342.57
    >>Talk to |cRXP_FRIENDLY_Gwennyth|r
    .turnin 4722 >> Turn in Beached Sea Turtle
    .turnin 4723 >> Turn in Beached Sea Creature
    .turnin 4725 >> Turn in Beached Sea Turtle
    .target Gwennyth Bly'Leggonde
--Fruit of the Sea at 18
step
    .goto 1439/1,533.23,6399.77
    >>Talk to |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Buy up to 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    .vendor >> Vendor Trash
    .collect 4592,20,4763,1 --Longjaw Mud Snapper (40)
    .target Laird
    .isOnQuest 982
step
    .goto 1439/1,539.13,6409.82,12,0
    .goto 1439/1,600.70,6425.100
    >>Talk to |cRXP_FRIENDLY_Cerellean|r
    .turnin 963 >>Turn in For Love Eternal
    .target Cerellean Whiteclaw
step
    #completewith CliffRi
    +Equip the |T134797:0|t[Tear of Grief]
    .use 5611
    .itemcount 5611,1
    .itemStat 17,LEVEL,<16
step
    .goto 1439/1,533.23,6399.77
    >>Talk to |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Buy 15|r |T132796:0|t[Melon Juice] |cRXP_BUY_from her|r
    .collect 1205,15,4763,1 --Melon Juice (15)
    .target Allyndia
    .money <0.1500
step
    .goto 1439/1,533.23,6399.77
    >>Talk to |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Buy 10|r |T132796:0|t[Melon Juice] |cRXP_BUY_from her|r
    .collect 1205,10,4763,1 --Melon Juice (10)
    .target Allyndia
    .money <0.1000
step
    .goto 1439/1,533.23,6399.77
    >>Talk to |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Buy 5|r |T132796:0|t[Melon Juice] |cRXP_BUY_from her|r
    .collect 1205,5,4763,1 --Melon Juice (5)
    .target Allyndia
    .money <0.0500
step
    #completewith next
    .goto 1439/1,488.69,6451.300,20,0
    .goto 1439/1,487.38,6481.870,20,0
    .goto 1439/1,489.35,6506.32,15 >>Travel toward |cRXP_FRIENDLY_Hollee|r
step
    .goto 1439/1,489.35,6506.32
    >>Talk to |cRXP_FRIENDLY_Hollee|r
    .accept 729 >>Accept The Absent Minded Prospector
    .target Archaeologist Hollee
step
    .goto 1439/1,488.69,6564.830
    >>Talk to |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Buy as many|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_as you need/can|r
    .target Dalmond
    .money <0.0500
    .money >0.2500
step
    .goto 1439/1,488.69,6564.830
    >>Talk to |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Buy a|r |T133634:0|t[Brown Leather Satchel] |cRXP_BUY_from him|r
    .target Dalmond
    .money <0.2500
step
    #label CliffRi
    .goto 1439/1,492.62,6580.99
    >>Talk to |cRXP_FRIENDLY_Thundris|r
    .turnin 4762 >> Turn in The Cliffspring River
    .accept 4763 >> Accept The Blackwood Corrupted
    .target Thundris Windweaver
step
    .goto 1439/1,472.97,6557.85
    >>Talk to |cRXP_FRIENDLY_Alanndarian|r
    .accept 2178 >>Accept Easy Strider Living
    .turnin 2178 >>Turn in Easy Strider Living
    .target Alanndarian Nightsong
step
    #label DeepO
    .goto 1439/1,445.46,6536.01
    >>Talk to |cRXP_FRIENDLY_Gorbold|r
    .turnin 982,2 >> Turn in Deep Ocean, Vast Sea
    .target Gorbold Steelhand
step
    #completewith next
    .goto 1439/1,476.25,6479.25,15,0
    .goto 1439/1,478.21,6446.50,15,0
    .goto 1439/1,473.63,6439.07,20 >>Travel toward Glynda
step
    .goto 1439/1,473.63,6439.07
    >>Talk to |cRXP_FRIENDLY_Glynda|r
    .turnin 4811 >>Turn in The Red Crystal
    .accept 4812 >>Accept As Water Cascades
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439/1,465.11,6416.80
    >>Use the |T133748:0|t[Empty Cleansing Bowl] and |T134865:0|t[Empty Water Tube] at the Moonwell
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .collect 14339,1,4812,1 --Moonwell Water Tube (1)
    .use 12346
    .use 14338
step
    >>Talk to |cRXP_FRIENDLY_Tharnariun|r, |cRXP_FRIENDLY_Terenthis|r, and then |cRXP_FRIENDLY_Elissa|r upstairs
    .turnin 2138 >>Turn in Cleansing of the Infected
    .accept 2139 >>Accept Tharnariun's Hope
    .target +Tharnariun Treetender
    .goto 1439/1,397.65,6437.33
    .turnin 985 >> Turn in How Big a Threat?
    .accept 986 >> Accept A Lost Master
    .target +Terenthis
    .goto 1439/1,362.93,6434.27
    .accept 965 >>Accept The Tower of Althalaxx
    .goto 1439/1,369.48,6449.99,8,0
    .goto 1439/1,384.55,6431.65
    .target +Sentinel Elissa Starbreeze
step << Gnome
    #completewith next
    +Equip the |T132491:0|t[Wise Man's Belt]
    .use 4786
    .itemcount 4786,1
    .itemStat 6,LEVEL,<20
step
    .goto 1439/1,-157.79,6206.770
    >>Click |cRXP_PICK_The Red Crystal|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    >>|cRXP_WARN_Remember to pull the |cRXP_ENEMY_Raging Moonkins|r that are leashed together|r
    .turnin 4812 >> Turn in As Water Cascades
    .accept 4813 >> Accept The Fragments Within
step
    #completewith GrainSample
    >>Kill |cRXP_ENEMY_Moonstalker Runts|r and |cRXP_ENEMY_Moonstalkers|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    .goto 1439/1,47.88,6748.67
    >>Talk to |cRXP_FRIENDLY_Asterion|r
    .turnin 957,3 >>Turn in Bashal'Aran
    .target Asterion
step
    #label GrainSample
    .goto 1439/1,-376.56,6805.87
    >>Open the |cRXP_PICK_Blackwood Grain Stores|r. Loot it for the |cRXP_LOOT_Blackwood Grain Sample|r
    >>|cRXP_WARN_Aggro the Mobs protecting it, cast|r |T135848:0|t[Frost Nova]|cRXP_WARN_, loot the |cRXP_LOOT_Blackwood Grain Sample|r, then run away toward |cRXP_ENEMY_Den Mother|r from the mobs that spawn|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .collect 12342,1,4673,1 --Blackwood Grain Sample (1)
step
    #completewith next
    >>Kill |cRXP_ENEMY_Moonstalkers|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    #completewith DenM
    .goto 1439/1,-485.95,6763.95,20,0
    .goto 1439/1,-489.88,6724.22,20,0
    .goto 1439/1,-436.82,6694.96,30 >>Travel toward |cRXP_ENEMY_Den Mother|r
step
    .goto 1439/1,-432.24,6664.39
    >>Kill |cRXP_ENEMY_Den Mother|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Den Mother|r and her |cRXP_ENEMY_Thistle Cubs|r cast|r |T132141:0|t[Ravage] |cRXP_WARN_(2 second stun)|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .itemcount 4358,<1
step
    #label DenM
    .goto 1439/1,-432.24,6664.39
    >>Kill |cRXP_ENEMY_Den Mother|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Den Mother|r and her |cRXP_ENEMY_Thistle Cubs|r cast|r |T132141:0|t[Ravage] |cRXP_WARN_(2 second stun)|r
    >>|cRXP_WARN_Split Pull |cRXP_ENEMY_Den Mother|r with your|r |T133714:0|t[Rough Dynamite]
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .itemcount 4358,1
step
    #completewith Talisman
    >>Kill |cRXP_ENEMY_Moonstalkers|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    .goto 1439/1,-451.23,6870.06
    >>Open the |cRXP_PICK_Blackwood Nut Stores|r. Loot it for the |cRXP_LOOT_Blackwood Nut Sample|r :3
    >>|cRXP_WARN_Aggro the Mobs protecting it, cast|r |T135848:0|t[Frost Nova]|cRXP_WARN_, loot the |cRXP_LOOT_Blackwood Nut Sample|r, then run north|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .collect 12343,1,4673,1 --Blackwood Nut Sample (1)
step
    .goto 1439/1,-520.01,6873.99
    >>Open the |cRXP_PICK_Blackwood Fruit Stores|r. Loot it for the |cRXP_LOOT_Blackwood Fruit Sample|r
    >>Kill the |cRXP_ENEMY_Blackwood Warriors|r that aggro
    >>|cRXP_WARN_This has a 5 second cast time|r
    .collect 12341,1,4673,1 --Blackwood Fruit Sample (1)
step
    #completewith next
    .goto 1439/1,-497.74,6887.53
    .cast 16072 >>Use the |T134712:0|t[Filled Cleansing Bowl] near the campfire to summon |cRXP_ENEMY_Xabraxxis|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .timer 20,The Blackwood Corrupted RP
    .use 12347
step
    #label Talisman
    .goto 1439/1,-480.05,6888.84
    >>|cRXP_WARN_Wait out the RP|r
    >>Kill |cRXP_ENEMY_Xabraxxis|r
    >>Loot |cRXP_PICK_Xabraxxis' Demon Bag|r that drops on the ground. Loot it for the |cRXP_LOOT_Talisman of Corruption|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 4763,1 --Talisman of Corruption (1)
    .mob Xabraxxis
step
    .goto 1439/1,-417.83,7262.19
    >>Click |cRXP_PICK_Buzzbox 323|r
    .turnin 1002 >> Turn in Buzzbox 323
    .accept 1003 >> Accept Buzzbox 525
    .isQuestComplete 1002
step
    .goto 1439/1,-417.83,7262.19
    >>Click |cRXP_PICK_Buzzbox 323|r
    .accept 1003 >> Accept Buzzbox 525
    .isQuestTurnedIn 1002
step
    #completewith next
    .goto 1439/1,-578.30,6956.96,60,0
    .goto 1439/1,-629.39,7042.98,60,0
    .goto 1439/1,-538.35,7099.75,60,0
    .goto 1439/1,-499.70,7221.14,60,0
    .goto 1439/1,-674.59,7333.80,60,0
    .goto 1439/1,-637.91,7415.02,60,0
    >>Kill |cRXP_ENEMY_Moonstalkers|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    .goto 1439/1,-537.04,7542.970
    >>Loot the |cRXP_LOOT_Beached Sea Turtle|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .accept 4727 >>Accept Beached Sea Turtle
step
    .goto 1439/1,-578.30,6956.96,60,0
    .goto 1439/1,-629.39,7042.98,60,0
    .goto 1439/1,-538.35,7099.75,60,0
    .goto 1439/1,-499.70,7221.14,60,0
    .goto 1439/1,-674.59,7333.80,60,0
    .goto 1439/1,-637.91,7415.02,60,0
    .goto 1439/1,-578.30,6956.96,60,0
    .goto 1439/1,-629.39,7042.98,60,0
    .goto 1439/1,-538.35,7099.75,60,0
    .goto 1439/1,-499.70,7221.14,60,0
    .goto 1439/1,-674.59,7333.80,60,0
    .goto 1439/1,-637.91,7415.02
    >>Kill |cRXP_ENEMY_Moonstalkers|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    .goto 1439/1,-417.83,7262.19
    >>Click |cRXP_PICK_Buzzbox 323|r
    .turnin 1002 >> Turn in Buzzbox 323
    .accept 1003 >> Accept Buzzbox 525
step
    .goto 1439/1,-658.87,7246.47
    >>Talk to |cRXP_FRIENDLY_Balthule|r
    .turnin 965 >>Turn in The Tower of Althalaxx
    .accept 966 >>Accept The Tower of Althalaxx
    .target Balthule Shadowstrike
step
    .goto 1439/1,-684.41,7176.60,50,0
    .goto 1439/1,-749.91,7153.90,50,0
    .goto 1439/1,-875.02,7228.570,50,0
    .goto 1439/1,-684.41,7176.60,50,0
    .goto 1439/1,-749.91,7153.90
    >>Kill |cRXP_ENEMY_Dark Strand Fanatics|r. Loot them for |cRXP_LOOT_Worn Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
    .goto 1439/1,-658.87,7246.47
    >>Talk to |cRXP_FRIENDLY_Balthule|r
    .turnin 966 >>Turn in The Tower of Althalaxx
    .accept 967 >>Accept The Tower of Althalaxx
    .target Balthule Shadowstrike
step
    #label CapCave
    #completewith CapCave1
    .goto 1439/1,-660.83,6873.99,30 >>Go inside the Cave
step << skip
    #requires CapCave
    #completewith CapCave1
    +|cRXP_WARN_Remember the Cave Logout Skip soon|r
step
    #completewith next
    .goto 1439/1,-663.45,6877.49,8,0
    .goto 1439/1,-679.17,6848.67,8,0
    .goto 1439/1,-666.73,6819.41,8,0
    .goto 1439/1,-680.48,6779.67,8,0
    >>Loot the blue |cRXP_LOOT_Scaber Stalks|r on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 947,1,4 --Scaber Stalk (5)
step
    .goto 1439/1,-690.31,6751.29,12,0
    .goto 1439/1,-706.68,6748.23,12,0
    .goto 1439/1,-719.13,6787.530,12,0
    >>Stay on the upper level of the cave. Drop down if there's no |cRXP_LOOT_Death Cap|r on the upper level
    >>Loot the orange |cRXP_LOOT_Death Cap|r on the ground at the end of the top path of the cave
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 947,2 --Death Cap (1)
step
    #label CapCave1
    .goto 1439/1,-663.45,6877.49,8,0
    .goto 1439/1,-679.17,6848.67,8,0
    .goto 1439/1,-666.73,6819.41,8,0
    .goto 1439/1,-680.48,6779.67
    >>Loot the first |cRXP_LOOT_Scaber Stalks|r at the mouth of the cave after looting the |cRXP_LOOT_Death Cap|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 947,1 --Scaber Stalk (5)
step << skip
    .goto 1439/1,-658.21,6825.96
    .goto 1439/1,210.32,6739.501,30 >> |cRXP_WARN_Perform a Logout Skip inside the cave|r
    .isOnQuest 4763
step
    #completewith next
    .subzone 442 >> Travel to Auberdine
    .isOnQuest 4763
step
    .goto 1439/1,492.62,6580.99
    >>Talk to |cRXP_FRIENDLY_Thundris|r
    .turnin 4763,1 >> Turn in The Blackwood Corrupted
    .target Thundris Windweaver
step
    .goto 1439/1,488.69,6564.830
    >>Talk to |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Buy a|r |T133634:0|t[Brown Leather Satchel] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Do NOT go below 30 Silver|r
    .target Dalmond
step
    .goto 1439/1,397.65,6437.33
    >>Talk to |cRXP_FRIENDLY_Tharnariun|r
    .turnin 2139,1 >>Turn in Tharnariun's Hope
    .target Tharnariun Treetender
step
    >>Talk to |cRXP_FRIENDLY_Glynda|r, |cRXP_FRIENDLY_Barithras|r, and the |cRXP_PICK_Wanted Poster|r
    .turnin 4813,2 >>Turn in The Fragments Within
    .target +Sentinel Glynda Nal'Shea
    .goto 1439/1,473.63,6439.07
    .turnin 947 >>Turn in Cave Mushrooms
    .accept 948 >>Accept Onu
    .target +Barithras Moonshade
    .goto 1439/1,497.21,6427.72
    .accept 4740 >> Accept WANTED: Murkdeep!
    .goto 1439/1,503.76,6402.39
step
    .goto 1439/1,533.23,6399.77
    >>Talk to |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Buy up to 40|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    .collect 4592,40,729,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto 1439/1,543.06,6342.57
    >>Talk to |cRXP_FRIENDLY_Gwennyth|r
    .turnin 4727 >> Turn in Beached Sea Turtle
    .target Gwennyth Bly'Leggonde
step
    .goto 1439/1,515.55,6406.32
    >>|cRXP_WARN_===PAY ATTENTION===|r
    >>|cRXP_WARN_Talk to|r |cRXP_FRIENDLY_Shaussiy|r
    >>|cRXP_WARN_Open the "Set Hearthstone" menu, then cast|r |T134414:0|t[Hearthstone]
    .hs >> |cRXP_WARN_Hearthstone BATCH from Auberdine to Stormwind City|r
    .target Innkeeper Shaussiy
    .zoneskip Stormwind City
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance Mage
#name 16-18 ADV Westfall Mage AoE
#version 2
#group RestedXP ADV AoE Alliance Mage
#defaultfor Human Mage/Gnome Mage
#next 18-20 ADV Darkshore 3 Mage AoE

step
    #completewith JenneaT
    +|cRXP_WARN_NOTE: You need 12 stacks of each cloth (|r|T132911:0|t[Wool Cloth]|cRXP_WARN_,|r |T132905:0|t[Silk Cloth]|cRXP_WARN_,|r |T132892:0|t[Mageweave Cloth]|cRXP_WARN_,|r and |T132903:0|t[Runecloth]|cRXP_WARN_) to do the cloth turnins later. You'll get these naturally as you level|r
step << skip
    #completewith next
    .goto 1453/0,661.38,-8858.16,12,0
    .goto 1453/0,680.61,-8829.39,12,0
    .goto 1453/0,717.44,-8847.32,12,0
    .goto 1453/0,693.24,-8891.51,12,0
    .goto 1453/0,681.28,-8888.01,10 >>Travel toward |cRXP_FRIENDLY_Roberto|r
step << skip
    .goto 1453/0,681.28,-8888.01
    >>Go inside the building
    >>Talk to |cRXP_FRIENDLY_Roberto|r
    >>|cRXP_BUY_Buy a|r |T132620:0|t[Cask of Merlot] |cRXP_BUY_from him|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #sticky
    #label Bank2
    >>Talk to |cRXP_FRIENDLY_Newton|r
    .bankdeposit 17056,5354,2592,6889 >> Deposit the following items into the bank:
    >>|T132917:0|t[Light Feather]
    >>|T133469:0|t[Letter to Delgren]
    >>|T132911:0|t[Wool Cloth]
    >>|T132832:0|t[Small Egg]
    .target Newton Burnside
step
    .goto 1453/0,614.33,-8932.92
    >>Talk to |cRXP_FRIENDLY_Newton|r
    .bankwithdraw 730,7207 >> Withdraw the following items from your bank: << Gnome
    .bankwithdraw 730,16115 >> Withdraw the following items from your bank: << Human
    >>|T133884:0|t[Murloc Eyes]
    >>|T132788:0|t[Jennea's Flask] << Gnome
    >>|T132763:0|t[Osric's Crate] << Human
    .target Newton Burnside
step
    #requires Bank2
    #completewith next
    .goto 1453/0,686.25,-8815.41,8,0
    .goto 1453/0,684.24,-8820.34,4,0
    .goto 1453/0,687.46,-8818.01,6,0
    .goto 1453/0,854.42,-8965.28,12,0
    >>|cRXP_WARN_Jump up onto the torch, then drop down to get under Stormwind|r
    >>|cRXP_WARN_With Shadows on "Fair" or "Low", get in the middle of Derek the Dinosaur's feet (the lighter part of the dirt) just before the blue void, then walk straight forward|r
    >>|cRXP_WARN_NOTE: There is a small chance of dying using this method. You can also walk to the Mage Tower normally if you wish|r
    .link https://youtu.be/gV8-wgQEomc >> CLICK HERE for a guide
    .goto 1453/0,861.95,-8990.47,10 >>Travel toward |cRXP_FRIENDLY_Jennea|r
step
    #requires Bank2
    #label JenneaT
    .goto 1453/0,861.95,-8990.47
    >>Talk to |cRXP_FRIENDLY_Jennea|r
    .trainer >> Train your class spells (Flamestrike)
    >>Total Cost: 15s
    .target Jennea Cannon
step
    .goto 1453/0,635.44,-8863.81
    >>Talk to |cRXP_FRIENDLY_Keldric|r through the wall
    .vendor 1257 >> |cRXP_BUY_Buy|r |T134830:0|t[Lesser Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .target Keldric Boucher
    .money <0.14
step
    #completewith next
    .goto 1453/0,618.90,-8796.58,12,0
    .goto 1453/0,612.99,-8795.96,10 >>Travel toward |cRXP_FRIENDLY_Woo Ping|r
step
    .goto 1453/0,612.99,-8795.96
    >>Talk to |cRXP_FRIENDLY_Woo Ping|r
    .train 1180 >> Train |T132321:0|t[Daggers]
    .target Woo Ping
step
    #completewith next
    .goto 1453/0,612.45,-8806.18,12,0
    .goto 1453/0,528.43,-8850.28,20,0
    .goto 1453/0,532.20,-8863.72,15,0
    .goto 1453/0,490.12,-8835.67,10 >>Travel toward |cRXP_FRIENDLY_Dungar|r
step << Human
    .goto 1453/0,490.12,-8835.67
    >>Talk to |cRXP_FRIENDLY_Dungar|r
    .turnin 6261 >> Turn in Dungar Longdrink
    .accept 6285 >> Accept Return to Lewis
    .target Dungar Longdrink
step
    #completewith next << Human
    .goto 1453/0,490.12,-8835.67
    >>Talk to |cRXP_FRIENDLY_Dungar|r
    .fp Stormwind City >> Get the Stormwind City flight path << Gnome
    .fly Westfall >> Fly to Westfall << Human
    .target Dungar Longdrink
    .zoneskip Westfall << Human
step << Gnome
    #completewith next
    #label Stormwind1
    .goto 1453/0,494.56,-8865.78,12,0
    .goto 1453/0,495.77,-8870.44,8,0
    .goto 1453/0,504.24,-8956.31,40 >>Drop down to the ledge below |cRXP_FRIENDLY_Dungar|r
step << Gnome
    #completewith next
    .goto 1429/0,421.28,-9104.28,40 >>Exit Stormwind
step << skip
    #completewith next
    #requires Stormwind1
    .goto 1429/0,44.35,-9458.41,30 >>Travel toward the Goldshire Inn
step << skip
    #label GoldshireTrain
    .goto 1429/0,34.28,-9472.99
    >>Jump onto the Chandelier downstairs if you don't have train, otherwise jump up from the Chair
    >>Talk to |cRXP_FRIENDLY_Zaldimar|r through the wall
    .accept 1919 >> Accept Report to Jennea
    .trainer >> Train your class spells (Flamestrike)
    >>Total Cost: 15s
step << skip
    .goto 1429/0,8.25,-9460.03
    >>Talk to |cRXP_FRIENDLY_Dobbins|r
    >>|cRXP_BUY_Buy a|r |T132794:0|t[Skin of Sweet Rum] |cRXP_BUY_from him|r
    .collect 1939,1,116,1 --Skin of Sweet Rum
    .target Barkeep Dobbins
step << skip
    .goto 1429/0,16.23,-9462.580
    >>Talk to |cRXP_FRIENDLY_Farley|r
    >>|cRXP_BUY_Buy 45|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r
    .collect 1205,45,64,1 --Melon Juice (45)
    .target Innkeeper Farley
    .money <0.45
step << Gnome
    .goto 1429/0,529.57,-9363.050
    >>Use |T132788:0|t[Jennea's Flask] at the waterfall
    >>|cRXP_WARN_This has a 5 second cast time|r
    .use 7207
    .complete 1861,1 --Mirror Lake Water Sample (1)
step
    >>Talk to |cRXP_FRIENDLY_Farmer Furlbrow|r and |cRXP_FRIENDLY_Verna|r
    .accept 64 >> Accept The Forgotten Heirloom
    .accept 109 >> Accept Report to Gryan Stoutmantle
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .accept 36 >> Accept Westfall Stew
    .accept 151 >> Accept Poor Old Blanchy
    .goto 1436/0,919.82,-9852.90
    .target +Verna Furlbrow
step << Gnome
    #completewith Gryan
    >>Open the |cRXP_PICK_Sacks of Oats|r on the ground. Loot them for |cRXP_LOOT_Handfuls of Oats|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 151,1 --Handful of Oats (8)
step
    >>Talk to |cRXP_FRIENDLY_Farmer Saldean|r and then |cRXP_FRIENDLY_Salma|r inside
    .accept 9 >> Accept The Killing Fields
    .target +Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 36 >> Turn in Westfall Stew
    .accept 38 >> Accept Westfall Stew
    .accept 22 >> Accept Goretusk Liver Pie
    .goto 1436/0,1041.97,-10112.13
    .target +Salma Saldean
step << Gnome
    #completewith Gryan
    .goto 1436/0,1142.77,-10140.13,60,0
    >>AoE |cRXP_ENEMY_Harvest Watchers|r and |cRXP_ENEMY_Harvest Golems|r. Loot them for their |cRXP_LOOT_Flasks of Oil|r and |cRXP_LOOT_Hops|r
    >>|cRXP_WARN_Remember to|r |T135826:0|t[Flamestrike]|cRXP_WARN_/|r|T136116:0|t[Arcane Explosion] |cRXP_WARN_AoE now|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5,103,1 --Flask of Oil (5)
    .collect 1274,5,117,1 --Hops (5)
    .mob Harvest Watcher
    .mob Harvest Golem
step << Gnome
    #completewith next
    >>AoE |cRXP_ENEMY_Young Goretusks|r. Loot them for their |cRXP_LOOT_Goretusk Livers|r and |cRXP_LOOT_Goretusk Snouts|r
    >>AoE |cRXP_ENEMY_Young Fleshrippers|r. Loot them for their |cRXP_LOOT_Stringy Vulture Meat|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
step
    #label Gryan << Gnome
	>> Talk to |cRXP_FRIENDLY_Gryan|r and |cRXP_FRIENDLY_Danuvin|r << Gnome
	>> Talk to |cRXP_FRIENDLY_Gryan|r and then |cRXP_FRIENDLY_Lewis|r inside << Human
    .turnin 109 >> Turn in Report to Gryan Stoutmantle << Gnome
    .accept 65 >> Accept The Defias Brotherhood
    .accept 12 >> Accept The People's Militia << Gnome
    .target +Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 6285 >> Turn in Return to Lewis << Human
    .goto 1436/0,1021.60,-10500.61 << Human
    .accept 102 >> Accept Patrolling Westfall << Gnome
    .goto 1436/0,1041.97,-10511.13 << Gnome
	.target +Captain Danuvin << Gnome
    .target +Quartermaster Lewis << Human
step
    .goto 1436/0,1127.37,-10636.43
	>>Talk to |cRXP_FRIENDLY_Galiaan|r
    .accept 153 >> Accept Red Leather Bandanas
	.target Scout Galiaan
step
    .goto 1436/0,1166.57,-10653.47
	>>Talk to |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Buy 45|r |T132796:0|t[Melon Juice] |cRXP_BUY_from her|r
    .collect 1205,45,64,1 --Melon Juice (45)
	.target Innkeeper Heather
    .money <0.45
step
    .goto 1436/0,1166.57,-10653.47
	>>Talk to |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Buy 40|r |T132796:0|t[Melon Juice] |cRXP_BUY_from her|r
    .collect 1205,40,64,1 --Melon Juice (40)
	.target Innkeeper Heather
    .money <0.40
step
    .goto 1436/0,1166.57,-10653.47
	>>Talk to |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Buy 35|r |T132796:0|t[Melon Juice] |cRXP_BUY_from her|r
    .collect 1205,35,64,1 --Melon Juice (35)
	.target Innkeeper Heather
    .money <0.35
step
    .goto 1436/0,1166.57,-10653.47
	>>Talk to |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Buy 30|r |T132796:0|t[Melon Juice] |cRXP_BUY_from her|r
    .collect 1205,30,64,1 --Melon Juice (30)
	.target Innkeeper Heather
    .money <0.30
step
    .goto 1436/0,1166.57,-10653.47
	>>Talk to |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Buy 25|r |T132796:0|t[Melon Juice] |cRXP_BUY_from her|r
    .collect 1205,25,64,1 --Melon Juice (25)
	.target Innkeeper Heather
    .money <0.25
step
    .goto 1436/0,1166.57,-10653.47
	>>Talk to |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Buy 20|r |T132796:0|t[Melon Juice] |cRXP_BUY_from her|r
    .collect 1205,20,64,1 --Melon Juice (20)
	.target Innkeeper Heather
    .money <0.20
step
    .goto 1436/0,1166.57,-10653.47
	>>Talk to |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Buy 15|r |T132796:0|t[Melon Juice] |cRXP_BUY_from her|r
    .collect 1205,15,64,1 --Melon Juice (15)
	.target Innkeeper Heather
    .money <0.15
step
    .goto 1436/0,1166.57,-10653.47
	>>Talk to |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Buy 10|r |T132796:0|t[Melon Juice] |cRXP_BUY_from her|r
    .collect 1205,10,64,1 --Melon Juice (10)
	.target Innkeeper Heather
    .money <0.10
step
    .goto 1436/0,1166.57,-10653.47
	>>Talk to |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Buy 5|r |T132796:0|t[Melon Juice] |cRXP_BUY_from her|r
    .collect 1205,5,64,1 --Melon Juice (5)
	.target Innkeeper Heather
    .money <0.05
step
    #completewith Grayson
    >>Open the |cRXP_PICK_Sacks of Oats|r on the ground. Loot them for |cRXP_LOOT_Handfuls of Oats|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith Oil
    >>AoE |cRXP_ENEMY_Goretusks|r. Loot them for their |cRXP_LOOT_Goretusk Livers|r and |cRXP_LOOT_Goretusk Snouts|r
    >>AoE |cRXP_ENEMY_Fleshrippers|r. Loot them for their |cRXP_LOOT_Stringy Vulture Meat|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Goretusk
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Goretusk
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Fleshripper
step
    #completewith Compass
    .goto 1436/0,1635.92,-10621.27,60,0
    >>AoE |cRXP_ENEMY_Harvest Watchers|r. Loot them for their |cRXP_LOOT_Flasks of Oil|r and |cRXP_LOOT_Hops|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5,103,1 --Flask of Oil (5)
    .collect 1274,5,117,1 --Hops (5)
    .mob Harvest Watcher
step
    #completewith Oil
    >>AoE the |cRXP_ENEMY_Defias|r. Loot them for their |cRXP_LOOT_Red Leather Bandanas|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Smuggler
    .mob Defias Trapper
    .mob Defias Looter
    .mob Defias Pillager
step
    #label Compass
    .goto 1436/0,1748.27,-10672.13
    >>Open |cRXP_PICK_Alexston's Chest|r. Loot it for |cRXP_LOOT_A Simple Compass|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 399,1 --A Simple Compass (1)
step
    #label Oil
    .goto 1436/0,1708.02,-10578.80,60,0
    .goto 1436/0,1772.07,-10493.63,60,0
    .goto 1436/0,1839.27,-10496.90,60,0
    .goto 1436/0,1863.07,-10251.20,60,0
    .goto 1436/0,1635.92,-10621.27,60,0
    .goto 1436/0,1708.02,-10578.80,60,0
    .goto 1436/0,1772.07,-10493.63,60,0
    .goto 1436/0,1839.27,-10496.90,60,0
    .goto 1436/0,1863.07,-10251.20,60,0
    .goto 1436/0,1635.92,-10621.27
    >>AoE |cRXP_ENEMY_Harvest Watchers|r and |cRXP_ENEMY_Harvest Golems|r. Loot them for their |cRXP_LOOT_Flasks of Oil|r and |cRXP_LOOT_Hops|r
    .collect 814,5,103,1 --Flask of Oil (5)
    .collect 1274,5,117,1 --Hops (5)
    .mob Harvest Watcher
    .mob Harvest Golem
step
    #completewith next
    +|cRXP_WARN_Keep an eye out for |cRXP_ENEMY_Old Murk-Eye|r. Try to stay close to the edge of the ridge as to not miss him|r
    .unitscan Old Murk-Eye
step
    .goto 1436/0,1952.67,-10751.7,60,0
    .goto 1436/0,1991.52,-10927.40,60,0
    .goto 1436/0,1874.97,-10996.000,60,0
    .goto 1436/0,1929.22,-11019.80,60,0
    .goto 1436/0,1917.67,-11086.77,30 >> AoE the Gnoll Camps
    >>AoE |cRXP_ENEMY_Riverpaw Herbalists|r, |cRXP_ENEMY_Riverpaw Mongrels|r, and |cRXP_ENEMY_Riverpaw Brutes|r. Loot them for their |cRXP_LOOT_Gnoll Paws|r
    >>If you find |cRXP_ENEMY_Old Murk-Eye|r, skip this step
    .complete 102,1 --Gnoll Paws (8)
    .mob Riverpaw Herbalist
    .mob Riverpaw Mongrel
    .mob Riverpaw Brute
step
    #completewith next
    +|cRXP_WARN_Find |cRXP_ENEMY_Old Murk-Eye|r. Kite him toward|r |cRXP_FRIENDLY_Grayson|r
    .unitscan Old Murk-Eye
step
    #label Grayson
    .goto 1436/0,1965.97,-11407.13
    >>Talk to |cRXP_FRIENDLY_Grayson|r
    .accept 104 >> Accept The Coastal Menace
    .target Captain Grayson
step
    .goto 1436/0,1829.47,-11357.20,70,0
    .goto 1436/0,1795.87,-11402.47,70,0
    .goto 1436/0,1778.37,-11374.70,70,0
    .goto 1436/0,1829.47,-11357.20,70,0
    .goto 1436/0,1900.52,-11319.87,70,0
    .goto 1436/0,1955.12,-11284.17,70,0
    .goto 1436/0,1984.17,-11236.33,70,0
    .goto 1436/0,1999.57,-11160.50,70,0
    .goto 1436/0,2009.37,-11093.53,70,0
    .goto 1436/0,2042.27,-11064.37,70,0
    .goto 1436/0,2062.22,-11032.40,70,0
    .goto 1436/0,2076.57,-10959.13,70,0
    .goto 1436/0,2097.22,-10934.40,70,0
    .goto 1436/0,1829.47,-11357.20,70,0
    .goto 1436/0,1795.87,-11402.47,70,0
    .goto 1436/0,1778.37,-11374.70,70,0
    .goto 1436/0,1829.47,-11357.20,70,0
    .goto 1436/0,1900.52,-11319.87,70,0
    .goto 1436/0,1955.12,-11284.17,70,0
    .goto 1436/0,1984.17,-11236.33,70,0
    .goto 1436/0,1999.57,-11160.50,70,0
    .goto 1436/0,2009.37,-11093.53,70,0
    .goto 1436/0,2042.27,-11064.37,70,0
    .goto 1436/0,2062.22,-11032.40,70,0
    .goto 1436/0,2076.57,-10959.13,70,0
    .goto 1436/0,2097.22,-10934.40
    >>AoE |cRXP_ENEMY_Old Murk-Eye|r. Loot him for the |cRXP_LOOT_Scale of Old Murk-Eye|r
    .complete 104,1 --Scale of Old Murk-Eye
    .unitscan Old Murk-Eye
step
    .goto 1436/0,1965.97,-11407.13
    >>Talk to |cRXP_FRIENDLY_Grayson|r
    .accept 103 >> Accept Keeper of the Flame
    .turnin 103,1 >> Turn in Keeper of the Flame
    .turnin 104,3 >> Turn in The Coastal Menace
    .target Captain Grayson
step
    #completewith next
    >>AoE |cRXP_ENEMY_Defias Knuckledusters|r and |cRXP_ENEMY_Defias Highwaymen|r. Loot them for their |cRXP_LOOT_Red Leather Bandanas|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Defias Highwaymen|r cast|r |T132090:0|t[Backstab] |cRXP_WARN_(deals double damage from behind)|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Knuckleduster
    .mob Defias Highwaymen
step
    .goto 1436/0,1454.97,-11272.73
    >>Talk to |cRXP_FRIENDLY_Grimbooze|r
    .accept 117 >> Accept Thunderbrew
    .turnin 117 >> Turn in Thunderbrew
    .target Grimbooze Thunderbrew
step
    #completewith next
    .goto 1436/0,1309.72,-11213.000,60,0
    .goto 1436/0,1206.12,-11142.30,60,0
    .goto 1436/0,1177.07,-11100.30,60,0
    >>AoE |cRXP_ENEMY_Defias Knuckledusters|r and |cRXP_ENEMY_Defias Highwaymen|r. Loot them for their |cRXP_LOOT_Red Leather Bandanas|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Defias Highwaymen|r cast|r |T132090:0|t[Backstab] |cRXP_WARN_(deals double damage from behind)|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Knuckleduster
    .mob Defias Highwaymen
step
    .goto 1436/0,1193.87,-11078.60,60 >> Travel toward the end of The Dagger Hills
    .isOnQuest 153
step
    #completewith Footpads
    >>Open the |cRXP_PICK_Sacks of Oats|r on the ground. Loot them for |cRXP_LOOT_Handfuls of Oats|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith AoE1
    >>AoE |cRXP_ENEMY_Goretusks|r. Loot them for their |cRXP_LOOT_Goretusk Livers|r and |cRXP_LOOT_Goretusk Snouts|r
    >>AoE |cRXP_ENEMY_Fleshrippers|r. Loot them for their |cRXP_LOOT_Stringy Vulture Meat|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Great Goretusk
    .mob +Goretusk
    .mob +Young Goretusk
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Great Goretusk
    .mob +Goretusk
    .mob +Young Goretusk
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Fleshripper
step
    #completewith next
    >>AoE |cRXP_ENEMY_Defias Trappers|r and |cRXP_ENEMY_Defias Smugglers|r. Loot them for their |cRXP_LOOT_Red Leather Bandanas|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Defias Trappers|r cast|r |T132090:0|t[Backstab] |cRXP_WARN_(deals double damage from behind) and|r |T132149:0|t[Net] |cRXP_WARN_(Immobilizes for 9 seconds)|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Trapper
    .mob Defias Smuggler
step
    #label AoE1
    .goto 1436/0,1383.92,-10636.43,60,0
    .goto 1436/0,1328.97,-10454.90,60,0
    .goto 1436/0,1414.72,-10314.43,60,0
    .goto 1436/0,1389.52,-10270.330,60,0
    .goto 1436/0,1457.77,-10209.90,150 >> Travel toward The Molsen Farm
    .isOnQuest 153
step
    #completewith Watch
    .goto 1436/0,1457.77,-10209.90,60,0
    >>AoE |cRXP_ENEMY_Harvest Watchers|r
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    #completewith Furlbrows
    >>AoE |cRXP_ENEMY_Young Goretusks|r. Loot them for their |cRXP_LOOT_Goretusk Livers|r and |cRXP_LOOT_Goretusk Snouts|r
    >>AoE |cRXP_ENEMY_Fleshrippers|r and |cRXP_ENEMY_Young Fleshrippers|r. Loot them for their |cRXP_LOOT_Stringy Vulture Meat|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Fleshripper
    .mob +Young Fleshripper
step
    .goto 1436/0,1471.77,-10022.07,60,0
    .goto 1436/0,1402.12,-10018.80,60,0
    .goto 1436/0,1310.77,-9885.10
    >>AoE |cRXP_ENEMY_Defias Trappers|r and |cRXP_ENEMY_Defias Smugglers|r. Loot them for their |cRXP_LOOT_Red Leather Bandanas|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Defias Trappers|r cast|r |T132090:0|t[Backstab] |cRXP_WARN_and|r |T132149:0|t[Net]
    >>|cRXP_WARN_Skip this step if you're not at least 10/15 on both |cRXP_ENEMY_Defias Trappers|r and|r |cRXP_ENEMY_Defias Smugglers|r
    .complete 153,1,1 --Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
    .complete 12,1 --Defias Trapper (15)
    .mob +Defias Trapper
    .complete 12,2 --Defias Smuggler (15)
    .mob +Defias Smuggler
step
    #completewith next
    .goto 1436/0,1310.77,-9885.10,60,0
    >>AoE |cRXP_ENEMY_Defias Trappers|r and |cRXP_ENEMY_Defias Smugglers|r. Loot them for their |cRXP_LOOT_Red Leather Bandanas|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Defias Trappers|r cast|r |T132090:0|t[Backstab] |cRXP_WARN_and|r |T132149:0|t[Net]
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Trapper
    .mob Defias Smuggler
step
    #label Watch
    .goto 1436/0,1290.12,-9849.40
    >>Open |cRXP_PICK_Furlbrow's Wardrobe|r. Loot it for |cRXP_LOOT_Furlbrow's Pocket Watch|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 64,1 --Furlbrow's Pocket Watch (1)
step
    #completewith Oats
    .goto 1436/0,1249.17,-9898.87,60,0
    .goto 1436/0,1207.17,-9940.4,60,0
    >>AoE |cRXP_ENEMY_Harvest Watchers|r
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    .goto 1436/0,1195.97,-9750.00,60,0
    .goto 1436/0,1024.12,-9697.50
    >>AoE |cRXP_ENEMY_Riverpaw Scouts|r and |cRXP_ENEMY_Riverpaw Gnolls|r. Loot them for their |cRXP_LOOT_Gnoll Paws|r
    .complete 102,1 --Gnoll Paws (8)
    .mob Riverpaw Scout
    .mob Riverpaw Gnoll
step
    .goto 1436/0,1184.07,-9623.77,60,0
    .goto 1436/0,1133.67,-9649.43,60,0
    .goto 1436/0,1058.07,-9591.80
    >>AoE |cRXP_ENEMY_Murloc Coastrunners|r and |cRXP_ENEMY_Murloc Raiders|r. Loot them for their |cRXP_LOOT_Murloc Eyes|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .mob Murloc Coastrunner
    .mob Murloc Raider
step
    #label Footpads
    .goto 1436/0,1037.07,-9849.17
    >>AoE |cRXP_ENEMY_Defias Footpads|r Loot them for their |cRXP_LOOT_Red Leather Bandanas|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Defias Footpads|r cast|r |T132090:0|t[Backstab]
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Footpad
step
    #label Oats
    .goto 1436/0,1037.07,-9849.17
    >>Open the |cRXP_PICK_Sacks of Oats|r on the ground. Loot them for |cRXP_LOOT_Handfuls of Oats|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 151,1 --Handful of Oats (8)
step
    #label Furlbrows
    >>Talk to |cRXP_FRIENDLY_Farmer Furlbrow|r and |cRXP_FRIENDLY_Verna|r
    .turnin 64 >> Turn in The Forgotten Heirloom
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .turnin 151 >> Turn in Poor Old Blanchy
    .goto 1436/0,919.82,-9852.90
    .target +Verna Furlbrow
step
    .goto 1436/0,926.47,-10207.80,80,0
    .goto 1436/0,908.27,-10506.000
    >>AoE |cRXP_ENEMY_Goretusks|r and |cRXP_ENEMY_Young Goretusks|r. Loot them for their |cRXP_LOOT_Goretusk Livers|r and |cRXP_LOOT_Goretusk Snouts|r
    >>AoE |cRXP_ENEMY_Fleshrippers|r and |cRXP_ENEMY_Young Fleshrippers|r. Loot them for their |cRXP_LOOT_Stringy Vulture Meat|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Goretusk
    .mob +Young Goretusk
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Goretusk
    .mob +Young Goretusk
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Fleshripper
    .mob +Young Fleshripper
step
    .goto 1436/0,1167.27,-10110.73,60,0
    .goto 1436/0,1207.17,-9940.40
    >>AoE |cRXP_ENEMY_Harvest Watchers|r
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    .goto 1436/0,1207.17,-9940.40
    .xp 17+11890 >> Grind to 11890+/17700xp
    .isQuestComplete 12
step
    .goto 1436/0,1207.17,-9940.40
    >>|cRXP_WARN_Skip this step if you've finished the objective of The People's Militia|r
    .xp 17+12800 >> Grind to 12800+/17700xp
step
    >>Talk to |cRXP_FRIENDLY_Farmer Saldean|r and then |cRXP_FRIENDLY_Salma|r inside
    .turnin 9,1 >> Turn in The Killing Fields
    .vendor >> Vendor Trash
    .target +Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 22 >> Turn in Goretusk Liver Pie
    .turnin 38 >> Turn in Westfall Stew
    .goto 1436/0,1041.97,-10112.13
    .target +Salma Saldean
step
	>> Talk to |cRXP_FRIENDLY_Gryan|r and |cRXP_FRIENDLY_Danuvin|r
    .turnin 12 >> Turn in The People's Militia
    .target +Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 102,1 >> Turn in Patrolling Westfall
    .goto 1436/0,1041.97,-10511.13
	.target +Captain Danuvin
    .isQuestComplete 12
step
    .goto 1436/0,1041.97,-10511.13
	>> Talk to |cRXP_FRIENDLY_Danuvin|r
    .turnin 102,1 >> Turn in Patrolling Westfall
	.target Captain Danuvin
step
    .goto 1436/0,1127.37,-10636.43
	>>Talk to |cRXP_FRIENDLY_Galiaan|r
    .turnin 153,2 >> Turn in Red Leather Bandanas
	.target Scout Galiaan
step
    #completewith next
    +|cRXP_WARN_Start spam casting|r |T132794:0|t[Conjure Water r2] |cRXP_WARN_to conjure as much water as possible before taking the flight|r
step
    #completewith next
    .goto 1436/0,1037.07,-10628.27
	>>Talk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind
	.target Thor
step
    #completewith next
    .goto 1453/0,686.25,-8815.41,8,0
    .goto 1453/0,684.24,-8820.34,4,0
    .goto 1453/0,687.46,-8818.01,6,0
    .goto 1453/0,854.42,-8965.28,12,0
    >>|cRXP_WARN_Jump up onto the torch, then drop down to get under Stormwind|r
    >>|cRXP_WARN_With Shadows on "Fair" or "Low", get in the middle of Derek the Dinosaur's feet (the lighter part of the dirt) just before the blue void, then walk straight forward|r
    >>|cRXP_WARN_NOTE: There is a small chance of dying using this method. You can also walk to the Mage Tower normally if you wish|r
    .link https://youtu.be/gV8-wgQEomc >> CLICK HERE for a guide
    .goto 1453/0,861.95,-8990.47,10 >>Travel toward |cRXP_FRIENDLY_Jennea|r
step
    .goto 1453/0,861.95,-8990.47
    >>Talk to |cRXP_FRIENDLY_Jennea|r
    .turnin 1861,1 >> Turn in Mirror Lake
--   .turnin 1919 >> Turn in Report to Jennea
    .trainer >> Train your class spells (Fireball r4)
    >>Total Cost: 18s
    .target Jennea Cannon
step
    #completewith next
    .goto 1453/0,887.22,-9017.80,10,0
    .goto 1453/0,871.36,-9013.14,10,0
    .goto 1453/0,868.8,-9004.27,8,0
    .goto 1453/0,877.00,-9008.03,6,0
    .goto 1453/0,863.96,-9001.40,8,0
    .goto 1453/0,928.62,-9010.10,15,0
    .goto 1453/0,962.63,-8990.73,15,0
    .goto 1453/0,949.86,-9009.380,10,0
    .goto 1453/0,942.34,-9001.49,8,0
    >>Exit the Mage Tower
    .goto 1453/0,948.65,-8994.50,10 >>Travel toward |cRXP_FRIENDLY_Charys|r
step
    .goto 1453/0,948.65,-8994.50
    >>Enter the building
    >>Talk to |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >> |cRXP_BUY_Buy|r |T134851:0|t[Lesser Mana Potions] |cRXP_BUY_and|r |T134831:0|t[Healing Potions] |cRXP_BUY_from her (if they're up)|r
    .target Charys Yserian
step
    #completewith next
    .goto 1453/0,958.74,-8987.870,20,0
    .goto 1453/0,941.80,-8918.49,20,0
    .goto 1453/0,916.79,-8891.960,20,0
    .goto 1453/0,948.65,-8816.30,20,0
    .goto 1453/0,946.64,-8803.31,20,0
    .goto 1453/0,970.57,-8772.740,20,0
    .goto 1453/0,1030.92,-8747.20,20,0
    .goto 1453/0,1049.34,-8750.330,20,0
    .goto 1453/0,1093.16,-8779.020,10 >>Travel toward |cRXP_FRIENDLY_Argos|r
step
    .goto 1453/0,1093.16,-8779.020
    >>Talk to |cRXP_FRIENDLY_Argos|r
    .accept 3765 >> Accept The Corruption Abroad
    .target Argos Nightwhisper
step
    .goto 1453/0,822.16,-8865.60
    >>Enter the building
    >>Talk to |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >> |cRXP_BUY_Buy non-intellect|r |T134943:0|t[Scrolls] |cRXP_BUY_from him (if they're up)|r
    .target Adair Gilroy
step
    #completewith next
    .goto 1453/0,661.38,-8858.16,12,0
    .goto 1453/0,680.61,-8829.39,12,0
    .goto 1453/0,717.44,-8847.32,12,0
    .goto 1453/0,693.24,-8891.51,12,0
    .goto 1453/0,681.28,-8888.01,10 >>Travel toward |cRXP_FRIENDLY_Roberto|r
step
    .goto 1453/0,681.28,-8888.01
    >>Go inside the building
    >>Talk to |cRXP_FRIENDLY_Roberto|r
    >>|cRXP_BUY_Buy a|r |T132620:0|t[Cask of Merlot] |cRXP_BUY_from him|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    .goto 1453/0,680.61,-8828.67,15,0
    .goto 1453/0,635.44,-8863.81,8 >>Travel toward |cRXP_FRIENDLY_Keldric|r
step
    .goto 1453/0,635.44,-8863.81
    >>Talk to |cRXP_FRIENDLY_Keldric|r through the wall
    .vendor 1257 >> |cRXP_BUY_Buy|r |T134830:0|t[Lesser Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .target Keldric Boucher
step
    #completewith Bank3
    .goto 1453/0,637.59,-8889.81,10 >>Enter the Stormwind Bank
step
    #sticky
    #label Bank4
    .goto 1453/0,614.33,-8932.92
    >>Talk to |cRXP_FRIENDLY_Newton|r
    .bankwithdraw 769,5354,6889 >> Withdraw the following items from your bank:
    >>|T133970:0|t[Chunk of Boar Meat]
    >>|T133469:0|t[Letter to Delgren]
    >>|T132832:0|t[Small Egg]
step
    #label Bank3
    .goto 1453/0,614.33,-8932.92
    >>Talk to |cRXP_FRIENDLY_Newton|r
    >>|cRXP_WARN_NOTE: You need 12 stacks of each cloth (|r|T132911:0|t[Wool Cloth]|cRXP_WARN_,|r |T132905:0|t[Silk Cloth]|cRXP_WARN_,|r |T132892:0|t[Mageweave Cloth]|cRXP_WARN_,|r and |T132903:0|t[Runecloth]|cRXP_WARN_) to do the cloth turnins later. You'll get these naturally as you level|r
    .bankdeposit 2998,4371,1711,1478,1712,3012,1180,1181,3013,17056,2592,2998,1941 >> Deposit the following items into the bank:
    >>|T133024:0|t[Bronze Tube]
    >>|T134943:0|t[Scrolls]
    >>|T132917:0|t[Light Feather]
    >>|T132911:0|t[Wool Cloth]
    >>|T134377:0|t[A Simple Compass]
    >>|T132620:0|t[Cask of Merlot]
    .target Newton Burnside
--   .itemcount 769,1
--   .itemcount 4371,1
-- .itemcount 730,1
--  .itemcount 7207,1
-- 1711 level 20 scroll
--VV Vendor Crisp Spider Meat for now
step
    #completewith next
    .goto 1453/0,662.46,-8860.76,10,0
    >>Enter the Inn
    .goto 1453/0,673.75,-8867.93,10 >>Travel Toward |cRXP_FRIENDLY_Allison|r
    .target Innkeeper Allison
step
    .goto 1453/0,673.75,-8867.93
    >>|cRXP_WARN_===PAY ATTENTION===|r
    >>|cRXP_WARN_Talk to|r |cRXP_FRIENDLY_Allison|r
    >>|cRXP_WARN_Open the "Set Hearthstone" menu, then cast|r |T134414:0|t[Hearthstone]
    .hs >> |cRXP_WARN_Hearthstone BATCH from Stormwind to Auberdine|r
    .target Innkeeper Allison
    .zoneskip Darkshore
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance Mage
#name 18-20 ADV Darkshore 3 Mage AoE
#version 2
#group RestedXP ADV AoE Alliance Mage
#defaultfor Human Mage/Gnome Mage
#next 20-22 ADV Redridge 1 Mage AoE

step
    .goto 1439/1,529.30,6415.93
    >>Talk to |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Buy 45|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r
    .collect 1205,45,4740,1 --Melon Juice (45)
    .target Taldan
    .money <0.45
step
    .goto 1439/1,529.30,6415.93
    >>Talk to |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Buy 40|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r
    .collect 1205,40,4740,1 --Melon Juice (40)
    .target Taldan
    .money <0.40
step
    .goto 1439/1,529.30,6415.93
    >>Talk to |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Buy 35|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r
    .collect 1205,35,4740,1 --Melon Juice (35)
    .target Taldan
    .money <0.35
step
    .goto 1439/1,529.30,6415.93
    >>Talk to |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Buy 30|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r
    .collect 1205,30,4740,1 --Melon Juice (30)
    .target Taldan
    .money <0.30
step
    .goto 1439/1,529.30,6415.93
    >>Talk to |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Buy 25|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r
    .collect 1205,25,4740,1 --Melon Juice (25)
    .target Taldan
    .money <0.25
step
    .goto 1439/1,529.30,6415.93
    >>Talk to |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Buy 20|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r
    .collect 1205,20,4740,1 --Melon Juice (20)
    .target Taldan
    .money <0.20
step
    .goto 1439/1,529.30,6415.93
    >>Talk to |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Buy 15|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r
    .collect 1205,15,4740,1 --Melon Juice (15)
    .target Taldan
    .money <0.15
step
    .goto 1439/1,529.30,6415.93
    >>Talk to |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Buy 10|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r
    .collect 1205,10,4740,1 --Melon Juice (10)
    .target Taldan
    .money <0.10
step
    .goto 1439/1,529.30,6415.93
    >>Talk to |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Buy 5|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r
    .collect 1205,5,4740,1 --Melon Juice (5)
    .target Taldan
    .money <0.05
step
    .goto 1439/1,533.23,6399.77
    >>Talk to |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Buy up to 40|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    .collect 4592,40,4740,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    >>REMOVE THIS STEP LATER
    .accept 4740 >> Accept WANTED: Murkdeep!
    .goto 1439/1,503.76,6402.39
step
    .goto 1439/1,577.77,6371.39
    >>Talk to |cRXP_FRIENDLY_Gubber|r
    .accept 1138 >>Accept Fruit of the Sea
    .target Gubber Blump
step
    .goto 1439/1,89.14,5002.00
    >>Talk to |cRXP_FRIENDLY_Onu|r
    .turnin 948 >> Turn in Onu
    .accept 944 >> Accept The Master's Glaive
    .target Onu
step
    .goto 1439/1,33.47,4996.33
    >>Talk to |cRXP_FRIENDLY_Kerlonian|r
    >>|cRXP_WARN_If |cRXP_FRIENDLY_Kerlonian|r is not there, skip this step|r
    .accept 5321 >>Accept The Sleeper Has Awakened
    .target Kerlonian Evershade
step
    .goto 1439/1,34.12,5001.570
    >>Open |cRXP_PICK_Kerlonian's Chest|r. Loot it for the |cRXP_LOOT_Horn of Awakening|r
    >>|cRXP_WARN_Use the|r |T134229:0|t[|cRXP_LOOT_Horn of Awakening|r] |cRXP_WARN_on |cRXP_FRIENDLY_Kerlonian|r when he falls asleep|r
    >>|cRXP_WARN_These both have a 5 second cast time|r
    .complete 5321,1 --Horn of Awakening (1)
    .isOnQuest 5321
step
    #completewith Glaive1
    >>AoE |cRXP_ENEMY_Moonstalker Sires|r. Loot them for their |cRXP_LOOT_Fine Moonstalker Pelts|r
    >>|cRXP_ENEMY_Moonstalker Sires|r share spawns with |cRXP_ENEMY_Grizzled Thistle Bears|r and |cRXP_ENEMY_Giant Foreststriders|r
   .complete 986,1 --Fine Moonstalker Pelt (5)
   .mob Moonstalker Sire
   .use 13536
   .isOnQuest 5321
step
    #completewith next
    >>AoE |cRXP_ENEMY_Grizzled Thistle Bears|r. Loot them for their |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_Grizzled Thistle Bears|r share spawns with |cRXP_ENEMY_Moonstalker Sires|r and |cRXP_ENEMY_Giant Foreststriders|r
   .complete 1003,1 --Grizzled Scalp (4)
   .mob Grizzled Thistle Bear
   .use 13536
   .isOnQuest 5321
step
    #label Glaive1
   .goto 1439/1,410.09,4519.49
    >>Travel to The Master's Glaive
   .complete 944,1 --Enter the Master's Glaive (1)
   .use 13536
   .isOnQuest 5321
step
    #completewith Therylune1
    >>AoE |cRXP_ENEMY_Twilight Disciples|r and |cRXP_ENEMY_Twilight Thugs|r. Loot them for the |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r]
    >>|cRXP_WARN_Use the |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r] to start the quest|r
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .accept 968 >> Accept The Powers Below
    .mob Twilight Disciple
    .mob Twilight Thug
    .use 13536
    .isOnQuest 5321
step
    #completewith next
    .goto 1439/1,410.09,4519.49
    >>Place the |T134715:0|t[Phial of Scrying] on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    >>Click the |cRXP_PICK_Phial of Scrying|r on the ground
    .turnin 944 >> Turn in The Master's Glaive
    .accept 949 >> Accept The Twilight Camp
    .use 13536
    .use 5251
    .isOnQuest 5321
step
   .goto 1439/1,410.09,4519.49
    >>Talk to |cRXP_FRIENDLY_Therylune|r
    >>|cRXP_WARN_If |cRXP_FRIENDLY_Therylune|r is not there, AoE |cRXP_ENEMY_Twilight Disciples|r and |cRXP_ENEMY_Twilight Thugs|r for |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r] until she's up|r
   .accept 945 >> Accept Therylune's Escape
   .target Therylune
   .use 13536
   .isOnQuest 5321
step
    #completewith Tome1
    >>Escort |cRXP_FRIENDLY_Therylune|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .use 13536
    .target Therylune
    .isOnQuest 5321
step
   .goto 1439/1,416.64,4576.69
   >>Place the |T134715:0|t[Phial of Scrying] on the ground
   >>|cRXP_WARN_This has a 5 second cast time|r
   >>Click the |cRXP_PICK_Phial of Scrying|r on the ground
   .turnin 944 >> Turn in The Master's Glaive
   .accept 949 >> Accept The Twilight Camp
   .use 13536
   .use 5251
   .isOnQuest 5321
step
    #label Tome1
   .goto 1439/1,416.64,4576.69
    >>Click the |cRXP_PICK_Twilight Tome|r
   .turnin 949 >> Turn in The Twilight Camp
   .accept 950 >> Accept Return to Onu
   .use 13536
   .isOnQuest 5321
step
   #label Therylune1
   >>Escort |cRXP_FRIENDLY_Therylune|r
   >>|cRXP_WARN_Make sure |cRXP_FRIENDLY_Therylune|r stays in render range or you will fail the quest|r
   .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
   .use 13536
   .target Therylune
   .isOnQuest 950
step
    #completewith Remtravel1
    >>AoE |cRXP_ENEMY_Moonstalker Sires|r. Loot them for their |cRXP_LOOT_Fine Moonstalker Pelts|r
    >>|cRXP_ENEMY_Moonstalker Sires|r share spawns with |cRXP_ENEMY_Grizzled Thistle Bears|r and |cRXP_ENEMY_Giant Foreststriders|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .use 13536
    .isOnQuest 950
step
    #completewith next
    >>AoE |cRXP_ENEMY_Grizzled Thistle Bears|r. Loot them for their |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_Grizzled Thistle Bears|r share spawns with |cRXP_ENEMY_Moonstalker Sires|r and |cRXP_ENEMY_Giant Foreststriders|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
    .isOnQuest 950
step
    #label Remtravel1
    .goto 1439/1,602.01,4678.87
    >>Talk to |cRXP_FRIENDLY_Remtravel|r to start the escort
    .turnin 729 >> Turn in The Absent Minded Prospector
    .accept 731 >> Accept The Absent Minded Prospector
    .target Prospector Remtravel
    .use 13536
    .isOnQuest 950
step
    .goto 1439/1,626.24,4633.89,40,0
    .goto 1439/1,569.26,4572.76,40,0
    .goto 1439/1,626.24,4633.89,40,0
    .goto 1439/1,602.01,4678.87,40,0
    .goto 1439/1,892.83,4517.30
    >>Escort |cRXP_FRIENDLY_Remtravel|r
    >>When the |cRXP_ENEMY_Gravelflint Bonesnapper|r and |cRXP_ENEMY_Gravelflint Geomancer|r spawn, let the |cRXP_ENEMY_Gravelflint Geomancer|r cast |T135812:0|t[Fireball] on |cRXP_FRIENDLY_Remtravel|r, then cast |T136071:0|t[Polymorph] on it. Kill the |cRXP_ENEMY_Gravelflint Bonesnapper|r and then the |cRXP_ENEMY_Gravelflint Geomancer|r
    .complete 731,1 --Escort Prospector Remtravel (1)
    .target Prospector Remtravel
    .mob Gravelflint Geomancer
    .mob Gravelflint Bonesnapper
    .use 13536
    .isOnQuest 950
step
    #completewith SeaC
    >>AoE |cRXP_ENEMY_Moonstalker Sires|r. Loot them for their |cRXP_LOOT_Fine Moonstalker Pelts|r
    >>|cRXP_ENEMY_Moonstalker Sires|r share spawns with |cRXP_ENEMY_Grizzled Thistle Bears|r and |cRXP_ENEMY_Giant Foreststriders|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .use 13536
    .isOnQuest 950
step
    #completewith SeaC
    >>AoE |cRXP_ENEMY_Grizzled Thistle Bears|r. Loot them for their |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_Grizzled Thistle Bears|r share spawns with |cRXP_ENEMY_Moonstalker Sires|r and |cRXP_ENEMY_Giant Foreststriders|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
    .isOnQuest 950
step
    #completewith next
    +Don't re-awaken |cRXP_FRIENDLY_Kerlonian|r from now on
    >>Keep an eye out for |cRXP_ENEMY_Strider Clutchmother|r
    .unitscan Strider Clutchmother
    .isOnQuest 950
step
    #label SeaC
    .goto 1439/1,892.83,4517.30
    >>Loot the |cRXP_LOOT_Beached Sea Creature|r on the ground
    >>|cRXP_WARN_Loot it at the Neck|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .accept 4733 >>Accept Beached Sea Creature
    .isOnQuest 950
step
    #completewith next
    .abandon 5321 >> Abandon The Sleeper has Awakened
    .isOnQuest 950
step
    .goto 1439/1,896.76,4597.21
    >>Loot the |cRXP_LOOT_Beached Sea Turtle|r on the ground
    >>|cRXP_WARN_The Turtle Shell has LoS|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .accept 4732 >>Accept Beached Sea Turtle
    .isOnQuest 950
step
    #completewith SeaCreature
    >>AoE |cRXP_ENEMY_Encrusted Tide Crawlers|r. Loot them for their |cRXP_LOOT_Fine Crab Chunks|r
   .complete 1138,1 --Fine Crab Chunks (6)
   .mob Encrusted Tide Crawler
   .isOnQuest 950
step
    .goto 1439/1,865.32,4678.432
    >>Loot the |cRXP_LOOT_Beached Sea Turtle|r on the ground
    >>|cRXP_WARN_The Turtle Shell has LoS|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .accept 4731 >>Accept Beached Sea Turtle
    .isOnQuest 950
step
    #label SeaCreature
    .goto 1439/1,799.82,4808.12
    >>Loot the |cRXP_LOOT_Beached Sea Creature|r on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    .accept 4730 >>Accept Beached Sea Creature
    .isOnQuest 950
step
    #completewith next
    >>AoE |cRXP_ENEMY_Reef Crawlers|r. Loot them for their |cRXP_LOOT_Fine Crab Chunks|r
   .complete 1138,1 --Fine Crab Chunks (6)
   .mob Reef Crawler
   .isOnQuest 950
step
   .goto 1439/1,549.61,4990.65
   >>Clear the Murloc Camp without moving to the center of the camp
   >>Once you clear everything, move to the center of the camp to summon 3 waves (3 Coastrunners, 2 Warriors, Murkdeep and a Hunter)
   >>|cRXP_WARN_If you're lucky, |cRXP_ENEMY_Murkdeep|r might already be up about 30 yards off the shore to the west (if someone died on him before)|r
   .complete 4740,1 --Murkdeep (1)
   .unitscan Murkdeep
   .isOnQuest 950
step
    #completewith next
    .goto 1439/1,586.29,5048.73,60,0
    .goto 1439/1,583.01,5124.71,60,0
    .goto 1439/1,647.86,5180.600,60,0
    .goto 1439/1,621.66,5210.29,60,0
    >>AoE |cRXP_ENEMY_Reef Crawlers|r. Loot them for their |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
    .isOnQuest 950
step
    .goto 1439/1,585.63,5237.370
    >>Loot the |cRXP_LOOT_Beached Sea Creature|r on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    .accept 4728 >>Accept Beached Sea Creature
    .isOnQuest 950
step
    .goto 1439/1,621.66,5210.29,60,0
    .goto 1439/1,647.86,5180.600,60,0
    .goto 1439/1,583.01,5124.71,60,0
    .goto 1439/1,586.29,5048.73,60,0
    .goto 1439/1,609.21,4921.66,60,0
    .goto 1439/1,631.48,4858.78,60,0
    .goto 1439/1,702.88,4809.00
    >>AoE |cRXP_ENEMY_Reef Crawlers|r. Loot them for their |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
    .isOnQuest 950
step
    #completewith SeaCreatureGiga
    >>AoE |cRXP_ENEMY_Moonstalker Sires|r. Loot them for their |cRXP_LOOT_Fine Moonstalker Pelts|r
    >>|cRXP_ENEMY_Moonstalker Sires|r share spawns with |cRXP_ENEMY_Grizzled Thistle Bears|r and |cRXP_ENEMY_Giant Foreststriders|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .use 13536
step
    #completewith SeaCreatureGiga
    >>AoE |cRXP_ENEMY_Grizzled Thistle Bears|r. Loot them for their |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_Grizzled Thistle Bears|r share spawns with |cRXP_ENEMY_Moonstalker Sires|r and |cRXP_ENEMY_Giant Foreststriders|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
step
    #label Onu2
    .goto 1439/1,89.14,5002.00
    >>Talk to |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Turn in Return to Onu
    .target Onu
    .isQuestComplete 950
step
    #label SeaCreatureGiga
    .goto 1439/1,585.63,5237.370
    >>Loot the |cRXP_LOOT_Beached Sea Creature|r on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    .accept 4728 >>Accept Beached Sea Creature
step
    #completewith next
    .goto 1439/1,621.66,5210.29,60,0
    .goto 1439/1,647.86,5180.600,60,0
    .goto 1439/1,583.01,5124.71,60,0
    .goto 1439/1,586.29,5048.73,60,0
    >>AoE |cRXP_ENEMY_Reef Crawlers|r. Loot them for their |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto 1439/1,549.61,4990.65
    >>Clear the Murloc Camp without moving to the center of the camp
    >>Once you clear everything, move to the center of the camp to summon 3 waves (3 Coastrunners, 2 Warriors, Murkdeep and a Hunter)
    >>|cRXP_WARN_If you're lucky, |cRXP_ENEMY_Murkdeep|r might already be up about 30 yards off the shore to the west (if someone died on him before)|r
    .complete 4740,1 --Murkdeep (1)
    .unitscan Murkdeep
step
    #completewith next
    .goto 1439/1,609.21,4921.66,60,0
    .goto 1439/1,631.48,4858.78,60,0
    .goto 1439/1,702.88,4809.00,60,0
    >>AoE |cRXP_ENEMY_Reef Crawlers|r. Loot them for their |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto 1439/1,799.82,4808.12
    >>Loot the |cRXP_LOOT_Beached Sea Creature|r on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    .accept 4730 >>Accept Beached Sea Creature
step
    .goto 1439/1,793.27,4764.89,60,0
    .goto 1439/1,840.43,4696.77
    >>AoE |cRXP_ENEMY_Encrusted Tide Crawlers|r. Loot them for their |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
step
    .goto 1439/1,865.32,4678.432
    >>Loot the |cRXP_LOOT_Beached Sea Turtle|r on the ground
    >>|cRXP_WARN_The Turtle Shell has LoS|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .accept 4731 >>Accept Beached Sea Turtle
step
    .goto 1439/1,896.76,4597.21
    >>Loot the |cRXP_LOOT_Beached Sea Turtle|r on the ground
    >>|cRXP_WARN_The Turtle Shell has LoS|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .accept 4732 >>Accept Beached Sea Turtle
step
    .goto 1439/1,892.83,4517.30
    >>Loot the |cRXP_LOOT_Beached Sea Creature|r on the ground
    >>|cRXP_WARN_Loot it at the Neck|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .accept 4733 >>Accept Beached Sea Creature
step
    #completewith Remtravel3
    >>AoE |cRXP_ENEMY_Moonstalker Sires|r. Loot them for their |cRXP_LOOT_Fine Moonstalker Pelts|r
    >>|cRXP_ENEMY_Moonstalker Sires|r share spawns with |cRXP_ENEMY_Grizzled Thistle Bears|r and |cRXP_ENEMY_Giant Foreststriders|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .use 13536
step
    #completewith Remtravel3
    >>AoE |cRXP_ENEMY_Grizzled Thistle Bears|r. Loot them for their |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_Grizzled Thistle Bears|r share spawns with |cRXP_ENEMY_Moonstalker Sires|r and |cRXP_ENEMY_Giant Foreststriders|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
step
    #completewith next
    +Don't re-awaken |cRXP_FRIENDLY_Kerlonian|r from now on
    >>Keep an eye out for |cRXP_ENEMY_Strider Clutchmother|r
    .unitscan Strider Clutchmother
 step
    #label Remtravel3
    .goto 1439/1,602.01,4678.87
    >>Talk to |cRXP_FRIENDLY_Remtravel|r to start the escort
    .turnin 729 >> Turn in The Absent Minded Prospector
    .accept 731 >> Accept The Absent Minded Prospector
    .target Prospector Remtravel
step
    .goto 1439/1,626.24,4633.89,40,0
    .goto 1439/1,569.26,4572.76,40,0
    .goto 1439/1,626.24,4633.89,40,0
    .goto 1439/1,602.01,4678.87,40,0
    .goto 1439/1,410.09,4519.49
    >>Escort |cRXP_FRIENDLY_Remtravel|r
    >>When the |cRXP_ENEMY_Gravelflint Bonesnapper|r and |cRXP_ENEMY_Gravelflint Geomancer|r spawn, let the |cRXP_ENEMY_Gravelflint Geomancer|r cast |T135812:0|t[Fireball] on |cRXP_FRIENDLY_Remtravel|r, then cast |T136071:0|t[Polymorph] on it. Kill the |cRXP_ENEMY_Gravelflint Bonesnapper|r and then the |cRXP_ENEMY_Gravelflint Geomancer|r
    .complete 731,1 --Escort Prospector Remtravel (1)
    .target Prospector Remtravel
    .mob Gravelflint Geomancer
    .mob Gravelflint Bonesnapper
step
    #completewith Glaive2
    >>AoE |cRXP_ENEMY_Moonstalker Sires|r. Loot them for their |cRXP_LOOT_Fine Moonstalker Pelts|r
    >>|cRXP_ENEMY_Moonstalker Sires|r share spawns with |cRXP_ENEMY_Grizzled Thistle Bears|r and |cRXP_ENEMY_Giant Foreststriders|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
step
    #completewith next
    >>AoE |cRXP_ENEMY_Grizzled Thistle Bears|r. Loot them for their |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_Grizzled Thistle Bears|r share spawns with |cRXP_ENEMY_Moonstalker Sires|r and |cRXP_ENEMY_Giant Foreststriders|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
step
    #label Glaive2
   .goto 1439/1,410.09,4519.49
    >>Travel to The Master's Glaive
   .complete 944,1 --Enter the Master's Glaive (1)
step
    #completewith Therylune2
    >>AoE |cRXP_ENEMY_Twilight Disciples|r and |cRXP_ENEMY_Twilight Thugs|r. Loot them for the |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r]
    >>|cRXP_WARN_Use the |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r] to start the quest|r
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .accept 968 >> Accept The Powers Below
    .mob Twilight Disciple
    .mob Twilight Thug
step
    #completewith next
    .goto 1439/1,410.09,4519.49
    >>Place the |T134715:0|t[Phial of Scrying] on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    >>Click the |cRXP_PICK_Phial of Scrying|r on the ground
    .turnin 944 >> Turn in The Master's Glaive
    .accept 949 >> Accept The Twilight Camp
    .use 5251
step
    .goto 1439/1,410.09,4519.49
    >>Talk to |cRXP_FRIENDLY_Therylune|r
    >>|cRXP_WARN_If |cRXP_FRIENDLY_Therylune|r is not there, AoE |cRXP_ENEMY_Twilight Disciples|r and |cRXP_ENEMY_Twilight Thugs|r for |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r] until she's up|r
    .accept 945 >> Accept Therylune's Escape
    .target Therylune
step
    #completewith Tome2
    >>Escort |cRXP_FRIENDLY_Therylune|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .target Therylune
step
    .goto 1439/1,416.64,4576.69
    >>Place the |T134715:0|t[Phial of Scrying] on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    >>Click the |cRXP_PICK_Phial of Scrying|r on the ground
    .turnin 944 >> Turn in The Master's Glaive
    .accept 949 >> Accept The Twilight Camp
    .use 5251
step
    #label Tome2
    .goto 1439/1,416.64,4576.69
    >>Click the |cRXP_PICK_Twilight Tome|r
    .turnin 949 >> Turn in The Twilight Camp
    .accept 950 >> Accept Return to Onu
    .use 13536
step
    #label Therylune2
    >>Escort |cRXP_FRIENDLY_Therylune|r
    >>|cRXP_WARN_Make sure |cRXP_FRIENDLY_Therylune|r stays in render range or you will fail the quest|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .use 13536
    .target Therylune
step
    #completewith Onu3
    >>AoE |cRXP_ENEMY_Moonstalker Sires|r. Loot them for their |cRXP_LOOT_Fine Moonstalker Pelts|r
    >>|cRXP_ENEMY_Moonstalker Sires|r share spawns with |cRXP_ENEMY_Grizzled Thistle Bears|r and |cRXP_ENEMY_Giant Foreststriders|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
step
    #completewith Onu3
    #label Scalps2
    >>AoE |cRXP_ENEMY_Grizzled Thistle Bears|r. Loot them for their |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_Grizzled Thistle Bears|r share spawns with |cRXP_ENEMY_Moonstalker Sires|r and |cRXP_ENEMY_Giant Foreststriders|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
step
    #requires Scalps2
    #completewith next
    .goto 1439/1,229.97,4815.55,-1
    >>Click |cRXP_PICK_Buzzbox 525|r
    .turnin 1003 >> Turn in Buzzbox 525
step
    #label Onu3
    .goto 1439/1,89.14,5002.00,-1
    >>Talk to |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Turn in Return to Onu
    .target Onu
step
    .goto 1439/1,33.47,4996.33
    >>Talk to |cRXP_FRIENDLY_Kerlonian|r
    >>|cRXP_WARN_If |cRXP_FRIENDLY_Kerlonian|r is not there, skip this step|r
    .accept 5321 >>Accept The Sleeper Has Awakened
    .target Kerlonian Evershade
step
    .goto 1439/1,34.12,5001.570
    >>Open |cRXP_PICK_Kerlonian's Chest|r. Loot it for the |cRXP_LOOT_Horn of Awakening|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 5321,1 --Horn of Awakening (1)
    .isOnQuest 5321
step
    #completewith 525
    >>AoE |cRXP_ENEMY_Moonstalker Sires|r. Loot them for their |cRXP_LOOT_Fine Moonstalker Pelts|r
    >>|cRXP_ENEMY_Moonstalker Sires|r share spawns with |cRXP_ENEMY_Grizzled Thistle Bears|r and |cRXP_ENEMY_Giant Foreststriders|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
step
    .goto 1439/1,63.60,4833.89,60,0
    .goto 1439/1,119.27,4764.89,60,0
    .goto 1439/1,217.52,4686.29,60,0
    .goto 1439/1,311.84,4708.13,60,0
    .goto 1439/1,406.82,4733.45,60,0
    .goto 1439/1,444.15,4850.92,60,0
    .goto 1439/1,287.61,4815.11,60,0
    .goto 1439/1,63.60,4833.89,60,0
    .goto 1439/1,119.27,4764.89,60,0
    .goto 1439/1,217.52,4686.29,60,0
    .goto 1439/1,311.84,4708.13,60,0
    .goto 1439/1,406.82,4733.45,60,0
    .goto 1439/1,444.15,4850.92,60,0
    .goto 1439/1,287.61,4815.11
    >>AoE |cRXP_ENEMY_Grizzled Thistle Bears|r. Loot them for their |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_Grizzled Thistle Bears|r share spawns with |cRXP_ENEMY_Moonstalker Sires|r and |cRXP_ENEMY_Giant Foreststriders|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
step
    #label 525
    .goto 1439/1,229.97,4815.55
    >>Click |cRXP_PICK_Buzzbox 525|r
    .turnin 1003 >> Turn in Buzzbox 525
    .use 13536
step
    .goto 1439/1,249.62,4657.91,70,0
    .goto 1439/1,296.78,4381.94,70,0
    .goto 1439/1,545.68,4379.32,70,0
    .goto 1439/1,537.82,4202.47,70,0
    .goto 1439/1,140.89,4372.770,70,0
    .goto 1439/1,205.73,4495.91,70,0
    .goto 1439/1,22.33,4271.02,70,0
    .goto 1439/1,249.62,4657.91,70,0
    .goto 1439/1,296.78,4381.94,70,0
    .goto 1439/1,545.68,4379.32,70,0
    .goto 1439/1,537.82,4202.47,70,0
    .goto 1439/1,140.89,4372.770,70,0
    .goto 1439/1,205.73,4495.91,70,0
    .goto 1439/1,22.33,4271.02
    >>AoE |cRXP_ENEMY_Moonstalker Matriarchs|r and |cRXP_ENEMY_Moonstalker Sires|r. Loot them for their |cRXP_LOOT_Fine Moonstalker Pelts|r
    >>|cRXP_ENEMY_Moonstalker Sires|r share spawns with |cRXP_ENEMY_Grizzled Thistle Bears|r and |cRXP_ENEMY_Giant Foreststriders|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire
    .unitscan Moonstalker Matriarch
    .use 13536
step
    #completewith Sleeper
    .xp 19+4635 >> Grind to 4635+/21300xp
    .isOnQuest 5321
step
    #completewith Delgren
    >>AoE |cRXP_ENEMY_Ghostpaw Runners|r. Loot them for their |cRXP_LOOT_Lean Wolf Flanks|r
    .collect 1015,10,90,1 --Lean Wolf Flank (10)
    .mob Ghostpaw Runner
step
    #label Sleeper
    .goto 1440/1,128.01,3305.31
    >>Talk to |cRXP_FRIENDLY_Liladris|r
    .turnin 5321,1 >>Turn in The Sleeper Has Awakened
    .target Liladris Moonriver
    .use 13536
    .isOnQuest 5321
step
    #label Delgren
    .goto 1440/1,189.71,3185.390
    >>Talk to |cRXP_FRIENDLY_Delgren|r
    .turnin 967 >>Turn in The Tower of Althalaxx
    .target Delgren the Purifier
step
    .goto 1440/1,394.43,2677.63
    >>Talk to |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Turn in Therylune's Escape
    .target Therysil
step
    .goto 1440/1,-284.31,2828.30
    .xp 19+8720 >> Grind to 8720+/21300xp
step << skip
    #completewith next
    +|cRXP_WARN_Start spam casting|r |T132794:0|t[Conjure Water r2] |cRXP_WARN_to conjure as much water as possible before taking the flight|r
step
    #completewith next
    .goto 1440/1,-284.31,2828.30
    >>Talk to |cRXP_FRIENDLY_Daelyshia|r
    .fly Auberdine >> Fly to Auberdine
    .target Daelyshia
step
    >>Talk to |cRXP_FRIENDLY_Gwennyth|r and |cRXP_FRIENDLY_Gubber|r
    .turnin 4728 >>Turn in Beached Sea Creature
    .turnin 4730 >>Turn in Beached Sea Creature
    .turnin 4731 >>Turn in Beached Sea Turtle
    .turnin 4732 >>Turn in Beached Sea Turtle
    .turnin 4733 >>Turn in Beached Sea Creature
    .target +Gwennyth Bly'Leggonde
    .goto 1439/1,543.06,6342.130
    .turnin 1138,2 >>Turn in Fruit of the Sea
    .goto 1439/1,577.77,6371.39
    .target +Gubber Blump
step
    .goto 1439/1,470.35,6439.07
    >>Talk to |cRXP_FRIENDLY_Glynda|r
    .turnin 4740 >>Turn in WANTED: Murkdeep!
    .target Sentinel Glynda Nal'Shea
step
    >>Talk to |cRXP_FRIENDLY_Terenthis|r and |cRXP_FRIENDLY_Gershala|r
    .turnin 986 >>Turn in A Lost Master
    --.accept 993 >>Accept A Lost Master
    .target +Terenthis
    .goto 1439/1,362.93,6434.71
    .turnin 3765 >> Turn in The Corruption Abroad
    .goto 1439/1,431.71,6453.92
    .target +Gershala Nightwhisper
step
    .goto 1439/1,445.46,6536.01
    >>Talk to |cRXP_FRIENDLY_Gorbold|r
    >>|cRXP_BUY_Buy 20|r |T134059:0|t[Mild Spices] |cRXP_BUY_from him|r
    .collect 2678,20,90,1 --Mild Spices (20)
    .target Gorbold Steelhand
    .itemcount 6889,20
    .skill cooking,50,1
step
    .goto 1439/1,445.46,6536.01
    >>Talk to |cRXP_FRIENDLY_Gorbold|r
    >>|cRXP_BUY_Buy 15|r |T134059:0|t[Mild Spices] |cRXP_BUY_from him|r
    .collect 2678,15,90,1 --Mild Spices (15)
    .target Gorbold Steelhand
    .itemcount 6889,15
    .skill cooking,50,1
step
    .goto 1439/1,445.46,6536.01
    >>Talk to |cRXP_FRIENDLY_Gorbold|r
    >>|cRXP_BUY_Buy 10|r |T134059:0|t[Mild Spices] |cRXP_BUY_from him|r
    .collect 2678,10,90,1 --Mild Spices (10)
    .target Gorbold Steelhand
    .itemcount 6889,10
    .skill cooking,50,1
step
    .goto 1439/1,445.46,6536.01
    >>Talk to |cRXP_FRIENDLY_Gorbold|r
    >>|cRXP_BUY_Buy 5|r |T134059:0|t[Mild Spices] |cRXP_BUY_from him|r
    .collect 2678,5,90,1 --Mild Spices (5)
    .target Gorbold Steelhand
    .itemcount 6889,5
    .skill cooking,50,1
step
    .goto 1439/1,488.69,6564.830
    >>Talk to |cRXP_FRIENDLY_Dalmond|r
    >>|cRXP_BUY_Buy a|r |T135435:0|t[Simple Wood] |cRXP_BUY_and|r |T135237:0|t[Flint and Tinder] |cRXP_BUY_from him|r
    .collect 4470,1,90,1 --Simple Wood (1)
    .collect 4471,1,90,1 --Flint and Tinder (1)
    .target Dalmond
    .skill cooking,50,1
step
    .goto 1439/1,489.35,6506.32
    >>Talk to |cRXP_FRIENDLY_Hollee|r
    .turnin 731 >> Turn in The Absent Minded Prospector
    .accept 741 >> Accept The Absent Minded Prospector
    .target Archaeologist Hollee
step
    #completewith Teldrassil
    #label BoatT
    .goto 1439/1,487.38,6479.68,20,0
    .goto 1439/1,489.35,6454.36,20,0
    .goto 1439/1,527.99,6409.82,20,0
    .goto 1439/1,782.79,6504.57,20,0
    .goto 1439/1,765.10,6590.60,50 >>Travel toward the Darnassus Boat
step
    #completewith Teldrassil
    #requires BoatT
    .cast 818 >> Cast |T135805:0|t[Basic Campfire] on the Boat (or Dock if the boat isn't visible yet)
    >>|cRXP_WARN_This has a 5 second cast time|r
    .skill cooking,50,1
step
    #completewith Teldrassil
    #requires BoatT
    #label BoarM
    +Cook any |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r into |T133974:0|t[Roasted Boar Meat]
    .itemcount 769,1
    .skill cooking,50,1
step
    #completewith next
    #requires BoarM
    +|cRXP_WARN_Start spam casting|r |T132794:0|t[Conjure Water r2] |cRXP_WARN_to conjure as much water as possible|r
step
    #label Teldrassil
    .goto 1438/1,1018.75,8564.77,100 >> Take the Boat to Teldrassil
step
    #completewith next
    .goto 1438/1,987.69,8651.99,60,0
    .goto 1438/1,922.52,8678.46,40,0
    .goto 1438/1,888.40,8676.08,20,0
    .goto 1438/1,841.05,8641.121,20 >>Travel toward |cRXP_FRIENDLY_Vesprystus|r
step
    .goto 1438/1,841.05,8641.121
    >>Talk to |cRXP_FRIENDLY_Vesprystus|r
    .fp Rut'theran >> Get the Rut'theran Village flight path
    .target Vesprystus
step
    #completewith next
    .goto 1438,55.885,89.350
    .zone Darnassus >> Go through the purple portal into Darnassus
step
    #completewith next
    .goto 1457/1,2536.83,9898.58,30,0
    .goto 1457/1,2534.08,9772.82,30,0
    .goto 1457/1,2549.00,9727.09,30,0
    .goto 1457/1,2607.74,9642.04,20 >>Travel toward |cRXP_FRIENDLY_Greywhisker|r
step
    .goto 1457/1,2607.74,9642.04
    >>Talk to |cRXP_FRIENDLY_Greywhisker|r
    .turnin 741,3 >>Turn in The Absent Minded Prospector
    .accept 942 >>Accept The Absent Minded Prospector
    .target Chief Archaeologist Greywhisker

]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance Mage
#name 20-22 ADV Redridge 1 Mage AoE
#version 2
#group RestedXP ADV AoE Alliance Mage
#defaultfor Human Mage/Gnome Mage
#next 22-26 ADV Wetlands 1 Mage AoE

step
    #completewith next
    .hs >> Hearth to Stormwind City
    .zoneskip Stormwind City
step
    .goto 1453/0,635.44,-8863.81
    >>Talk to |cRXP_FRIENDLY_Keldric|r through the wall
    .vendor 1257 >> Vendor Trash. |cRXP_BUY_Buy|r |T134830:0|t[Lesser Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .target Keldric Boucher
step
    #completewith Bank
    .goto 1453/0,637.59,-8889.81,10 >>Enter the Stormwind Bank
step
    #sticky
    #label Bank1
    .goto 1453/0,614.33,-8932.92
    >>Talk to |cRXP_FRIENDLY_Newton|r
    .bankwithdraw 4371,1941,1711,1478,1712,3012,1180,1181,3013,2998 >> Withdraw the following items from your bank:
    >>|T133024:0|t[Bronze Tube]
    >>|T134943:0|t[Scrolls]
    >>|T132620:0|t[Cask of Merlot]
    >>|T134377:0|t[A Simple Compass]
    .target Newton Burnside
step
    #label Bank
    .goto 1453/0,614.33,-8932.92
    >>Talk to |cRXP_FRIENDLY_Newton|r
    >>|cRXP_WARN_NOTE: You need 12 stacks of each cloth (|r|T132911:0|t[Wool Cloth]|cRXP_WARN_,|r |T132905:0|t[Silk Cloth]|cRXP_WARN_,|r |T132892:0|t[Mageweave Cloth]|cRXP_WARN_,|r and |T132903:0|t[Runecloth]|cRXP_WARN_) to do the cloth turnins later. You'll get these naturally as you level|r
    .bankdeposit 17056,2592,1015,4654 >> Deposit the following items into the bank:
    >>|T132917:0|t[Light Feather]
    >>|T132911:0|t[Wool Cloth]
    >>|T133970:0|t[Lean Wolf Flank]
    >>|T134431:0|t[Mysterious Fossil]
    .target Newton Burnside
step
    #completewith next
    #requires Bank1
    .goto 1453/0,679.80,-8829.57,12,0
    .goto 1453/0,716.77,-8847.23,12,0
    .goto 1453/0,693.24,-8891.33,12 >>Travel toward |cRXP_FRIENDLY_Roberto|r
step
    #requires Bank1
    .goto 1453/0,681.28,-8888.01
    >>Go inside the building
    >>Talk to |cRXP_FRIENDLY_Roberto|r
    >>|cRXP_BUY_Buy a|r |T132620:0|t[Cask of Merlot] |cRXP_BUY_from him|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    #requires Bank1
    .goto 1453/0,686.25,-8815.41,8,0
    .goto 1453/0,684.24,-8820.34,4,0
    .goto 1453/0,687.46,-8818.01,6,0
    .goto 1453/0,854.42,-8965.28,12,0
    >>|cRXP_WARN_Jump up onto the torch, then drop down to get under Stormwind|r
    >>|cRXP_WARN_With Shadows on "Fair" or "Low", get in the middle of Derek the Dinosaur's feet (the lighter part of the dirt) just before the blue void, then walk straight forward|r
    >>|cRXP_WARN_NOTE: There is a small chance of dying using this method. You can also walk to the Mage Tower normally if you wish|r
    .link https://youtu.be/gV8-wgQEomc >> CLICK HERE for a guide
    .goto 1453/0,861.95,-8990.47,10 >>Travel toward |cRXP_FRIENDLY_Larimaine|r
step
    #requires Bank1
    .goto 1453/0,847.43,-8991.99
    >>Talk to |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >> Train |T135763:0|t[Teleport: Stormwind]
    >>Total Cost: 20s
    .target Larimaine Purdue
step
    .goto 1453/0,861.95,-8990.47
    >>Talk to |cRXP_FRIENDLY_Jennea|r
    .trainer >> Train your class spells (Blink, Evocation, Frost Armor r3, Mana Shield, Conjure Water r3)
    >>|cRXP_WARN_Do NOT train Blizzard yet|r
    >>Total Cost: 1g
    .target Jennea Cannon
step
    #completewith Charys
    .goto 1453/0,887.22,-9017.80,10,0
    .goto 1453/0,871.36,-9013.14,10,0
    .goto 1453/0,868.8,-9004.27,8,0
    .goto 1453/0,877.00,-9008.03,6,0
    .goto 1453/0,863.96,-9001.40,8,0
    .goto 1453/0,928.62,-9010.10,15,0
    .goto 1453/0,962.63,-8990.73,15,0
    .goto 1453/0,949.86,-9009.380,10,0
    .goto 1453/0,942.34,-9001.49,8,0
    >>Exit the Mage Tower
    .goto 1453/0,948.65,-8994.50,10 >>Travel toward |cRXP_FRIENDLY_Charys|r
step
    .goto 1453/0,948.65,-8994.50
    >>Enter the building
    >>Talk to |cRXP_FRIENDLY_Charys|r
    >>|cRXP_BUY_Buy 2|r |T134419:0|t[Runes of Teleportation]|cRXP_BUY_,|r |T134851:0|t[Lesser Mana Potions]|cRXP_BUY_,|r |T134831:0|t[Healing Potions]|cRXP_BUY_, and a|r |T132515:0|t[Cloth Belt] |cRXP_BUY_from her (if they're up)|r
    >>|cRXP_WARN_DON'T go below 18s 31c|r
    .collect 17031,2,344,1 --Rune of Teleportation (2)
    .target Charys Yserian
    .itemcount 4371,1
step
    #label Charys
    .goto 1453/0,948.65,-8994.50
    >>Enter the building
    >>Talk to |cRXP_FRIENDLY_Charys|r
    >>|cRXP_BUY_Buy two|r |T134419:0|t[Runes of Teleportation]|cRXP_BUY_,|r |T134851:0|t[Lesser Mana Potions]|cRXP_BUY_,|r |T134831:0|t[Healing Potions]|cRXP_BUY_, and a|r |T132515:0|t[Cloth Belt] |cRXP_BUY_from her (if they're up)|r
    >>|cRXP_WARN_DON'T go below 26s 31c|r
    .collect 17031,2,344,1 --Rune of Teleportation (2)
    .target Charys Yserian
    .itemcount 4371,<1
step
    #completewith Adair
    .goto 1453/0,852.40,-8920.10,20,0
    .goto 1453/0,829.01,-8901.28,20,0
    .goto 1453/0,789.22,-8904.59,20,0
    .goto 1453/0,758.31,-8878.78,20,0
    .goto 1453/0,810.33,-8832.44,20,0
    .goto 1453/0,827.54,-8850.19,15,0
    .goto 1453/0,822.16,-8865.60,10 >>Travel toward |cRXP_FRIENDLY_Adair|r
step
    .goto 1453/0,822.16,-8865.60
    >>Enter the building
    >>Talk to |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >> |cRXP_BUY_Buy non-intellect|r |T134943:0|t[Scrolls] |cRXP_BUY_from him (if they're up)|r
    >>|cRXP_WARN_DON'T go below 18s 31c|r
    .money <0.1831
    .target Adair Gilroy
step
    #label Adair
    .goto 1453/0,822.16,-8865.60
    >>Enter the building
    >>Talk to |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >> |cRXP_BUY_Buy non-intellect|r |T134943:0|t[Scrolls] |cRXP_BUY_from him (if they're up)|r
    >>|cRXP_WARN_DON'T go below 26s 31c|r
    .money <0.2631
    .target Adair Gilroy
step
    #completewith next
    .goto 1453/0,872.30,-8803.220,5,0
    .goto 1453/0,872.70,-8682.39,20 >>Run up the edge of the wall instead of going around
step
    .goto 1453/0,766.64,-8623.23
    >>Talk to |cRXP_FRIENDLY_Kristoff|r
    .accept 343 >> Accept Speaking of Fortitude
    .target Brother Kristoff
step
    #completewith next
    .goto 1453/0,737.74,-8571.69,15,0
    .goto 1453/0,736.26,-8558.06,12,0
    .goto 1453/0,719.86,-8550.36,12 >>Travel toward |cRXP_FRIENDLY_Baros|r
step
    .goto 1453/0,719.86,-8550.36
    >>Go inside the building
    >>Talk to |cRXP_FRIENDLY_Baros|r
    .turnin 399 >> Turn in Humble Beginnings
    .target Baros Alexston
step
    .goto 1453/0,638.26,-8342.22
    >>Talk to |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him if its up|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
step
    #completewith next
    .goto 1453/0,453.16,-8533.33,30,0
    .goto 1453/0,405.03,-8486.89,20,0
    .goto 1453/0,442.94,-8427.47,20,0
    .goto 1453/0,435.41,-8381.66,20,0
    .goto 1453/0,383.66,-8345.63,12 >>Travel toward |cRXP_FRIENDLY_Milton|r
step
    .goto 1453/0,383.66,-8345.63
    >>Talk to |cRXP_FRIENDLY_Milton|r
    .turnin 343 >> Turn in Speaking of Fortitude
    .accept 344 >> Accept Brother Paxton
    .target Milton Sheaf
step
    #completewith next
    .goto 1453/0,435.41,-8381.66,20,0
    .goto 1453/0,442.94,-8427.47,20,0
    .goto 1453/0,405.03,-8486.89,20,0
    .goto 1453/0,450.74,-8539.51,30,0
    .goto 1453/0,551.02,-8658.37,20,0
    .goto 1453/0,509.88,-8819.71,12,0
    .goto 1453/0,518.35,-8822.040,12 >>Travel toward |cRXP_FRIENDLY_Felicia|r
step
    .goto 1453/0,518.35,-8822.040
    >>Talk to |cRXP_FRIENDLY_Felicia|r
    >>|cRXP_BUY_Buy the|r |T133849:0|t[Stormwind Seasoning Herbs] |cRXP_BUY_from her|r
    .collect 2665,1,90,1 --Stormwind Seasoning Herbs
    .target Felicia Gump
step
    #completewith next
    .goto 1453/0,508.41,-8803.04,30,0
    .goto 1453/0,575.62,-8741.370,30,0
    .goto 1453/0,603.58,-8771.67,30,0
    .goto 1453/0,530.45,-8847.41,20,0
    .goto 1453/0,532.33,-8863.54,20,0
    .goto 1453/0,494.56,-8865.78,12,0
    .goto 1453/0,495.77,-8870.44,8,0
    .goto 1453/0,504.24,-8956.31,40 >>Drop down to the ledge below |cRXP_FRIENDLY_Dungar|r
step
    #completewith next
    .goto 1429/0,44.35,-9458.41,30 >>Travel toward the Goldshire Inn
step << skip
    #completewith Paxton
    #requires PaxtonT
    .goto 1429/0,398.72,-9085.76,50,0
    .goto 1429/0,125.22,-9079.98,20,0
    .goto 1429/0,-139.95,-8910.09,50,0
    .goto 1429/0,-158.00,-8901.52,10,0
    .goto 1429/0,-174.32,-8881.39,10,0
    >>Take the Mountain Path toward |cRXP_FRIENDLY_Paxton|r
    .goto 1429/0,-186.46,-8874.91,10 >>Travel toward |cRXP_FRIENDLY_Paxton|r
step
    .goto 1429/0,8.25,-9460.03
    >>Talk to |cRXP_FRIENDLY_Dobbins|r
    >>|cRXP_BUY_Buy a|r |T132794:0|t[Skin of Sweet Rum] |cRXP_BUY_from him|r
    .collect 1939,1,116,1 --Skin of Sweet Rum
    .target Barkeep Dobbins
step
    #sticky
    #label FarleyHome
    .goto 1429/0,16.23,-9462.580,0,0
    >>Talk to |cRXP_FRIENDLY_Farley|r
    .home >> Set your Hearthstone to Goldshire
    .target Innkeeper Farley
step
    #completewith next
    #requires FarleyHome
    .goto 1429/0,-158.00,-8901.52,10,0
    .goto 1429/0,-174.32,-8881.39,10,0
    .goto 1429/0,-186.46,-8874.91,10 >>Travel toward |cRXP_FRIENDLY_Paxton|r
step
    #requires FarleyHome
    .goto 1429/0,-186.46,-8874.91
    >>Talk to |cRXP_FRIENDLY_Paxton|r
    .turnin 344 >> Turn in Brother Paxton
    .accept 345 >> Accept Ink Supplies
    .target Brother Paxton
step
    #completewith Theo
    .goto 1429/0,-174.32,-8881.39,10,0
    .goto 1429/0,-158.00,-8901.52,10,0
    .goto 1429/0,-140.30,-8916.57,10,0
    .goto 1429/0,-464.48,-9142.47,30,0
    .goto 1429/0,-701.54,-9538.960,15 >>Take the Mountain Path toward the Tower of Azora
step
    #sticky
    #label Dawn
    .goto 1429/0,-716.46,-9541.04,0,0
    >>Talk to |cRXP_FRIENDLY_Dawn|r upstairs
    .vendor 958 >> |cRXP_BUY_Buy non-intellect|r |T134943:0|t[Scrolls]|cRXP_BUY_,|r |T134850:0|t[Minor Mana Potions]|cRXP_BUY_, and|r |T134830:0|t[Lesser Healing Potions] |cRXP_BUY_from her (if they're up)|r
    >>|cRXP_WARN_DON'T go below 11s 38c|r
    .money <0.1138
    .target Dawn Brightstar
    .itemcount 4371,1
step
    #sticky
    #label Dawn2
    .goto 1429/0,-716.46,-9541.04,0,0
    >>Talk to |cRXP_FRIENDLY_Dawn|r upstairs
    .vendor 958 >> |cRXP_BUY_Buy non-intellect|r |T134943:0|t[Scrolls]|cRXP_BUY_,|r |T134850:0|t[Minor Mana Potions]|cRXP_BUY_, and|r |T134830:0|t[Lesser Healing Potions] |cRXP_BUY_from her (if they're up)|r
    >>|cRXP_WARN_DON'T go below 19s 38c|r
    .money <0.1938
    .target Dawn Brightstar
    .itemcount 4371,<1
step
    #label Theo
    .goto 1429/0,-728.26,-9553.08
    >>Go upstairs
    >>Talk to |cRXP_FRIENDLY_Theocritus|r
    .accept 94 >> Accept A Watchful Eye
    .target Theocritus
step
    #requires Dawn
step
    #completewith next
    #requires Dawn2
    .goto 1431/0,-1159.00,-10544.31,20,0
    .goto 1431/0,-1164.94,-10533.15,10 >>Go Inside the Inn
step
    #requires Dawn2
    .goto 1431/0,-1159.54,-10509.03
    >>Talk to |cRXP_FRIENDLY_Hann|r
    >>|cRXP_BUY_Buy the|r |T132798:0|t[Bottle of Moonshine] |cRXP_BUY_from him|r
    .collect 1942,1,116,1 --Bottle of Moonshine (1)
    .target Barkeep Hann
step
    #completewith Viktori
    .goto 1431/0,-1164.94,-10533.15,10,0
    .goto 1431/0,-1159.00,-10544.31,10 >>Exit the Inn
step
    #completewith next
    .goto 1431/0,-1197.61,-10585.35,12 >>Go inside the building
step
    .goto 1431/0,-1200.85,-10593.99
    >>Talk to |cRXP_FRIENDLY_Elaine|r
    .accept 163 >>Accept Raven Hill
    .accept 164 >>Accept Deliveries to Sven
    .accept 165 >>Accept The Hermit
    .target Elaine Carevin
step
    .goto 1431/0,-1272.67,-10586.073
    >>Talk to |cRXP_FRIENDLY_Herble|r
    .vendor 3133 >>|cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him if its up|r
    .target Herble Baubbletump
    .itemcount 4371,<1
step
    .goto 1431/0,-1320.73,-10581.75
    >>Talk to |cRXP_FRIENDLY_Viktori|r
    .accept 174 >> Accept Look To The Stars
    .turnin 174 >> Turn in Look To The Stars
    .accept 175 >> Accept Look To The Stars
    .target Viktori Prism'Antras
    .itemcount 4371,1
step
    #label Viktori
    .goto 1431/0,-1320.73,-10581.75
    >>Talk to |cRXP_FRIENDLY_Viktori|r
    .accept 175 >> Accept Look To The Stars
    .target Viktori Prism'Antras
    .isQuestTurnedIn 174
step
    .goto 1431/0,-1366.09,-10779.03
    >>Talk to |cRXP_FRIENDLY_Mary|r
    .turnin 175 >> Turn in Look To The Stars
    .accept 177 >> Accept Look To The Stars
    .target Blind Mary
    .isQuestTurnedIn 174
step
    .goto 1431/0,-1258.63,-10513.89
    >>Talk to |cRXP_FRIENDLY_Felicia|r
    .fp Duskwood >> Get the Duskwood flight path
    .target Felicia Mane
step
    #completewith Kzixx
    .goto 1431/0,-1236.49,-10139.49,60,0
    .goto 1431/0,-1375.81,-10072.35,20 >>Travel toward |cRXP_FRIENDLY_Kzixx|r
step
    .goto 1431/0,-1375.81,-10072.35
    >>Talk to |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Buy|r |T134851:0|t[Lesser Mana Potions] |cRXP_BUY_and|r  |T134831:0|t[Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .itemcount 4827,1
    .target Kzixx
step
    .goto 1431/0,-1375.81,-10072.35
    >>Talk to |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Buy|r |T134851:0|t[Lesser Mana Potions] |cRXP_BUY_and|r  |T134831:0|t[Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .itemcount 4828,1
    .target Kzixx
step
    .goto 1431/0,-1375.81,-10072.35
    >>Talk to |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Buy|r |T134851:0|t[Lesser Mana Potions] |cRXP_BUY_and|r  |T134831:0|t[Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .itemcount 4829,1
    .target Kzixx
step
    #label Kzixx
    .goto 1431/0,-1375.81,-10072.35
    >>Talk to |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Buy|r |T134851:0|t[Lesser Mana Potions]|cRXP_BUY_,|r |T134831:0|t[Healing Potions]|cRXP_BUY_, and a|r |T132515:0|t[Cloth Belt] |cRXP_BUY_from him (if they're up, and if needed)|r
    .itemcount 4827,<1
    .itemcount 4828,<1
    .itemcount 4829,<1
    .target Kzixx
step
    #completewith Gnolls
    >>AoE |cRXP_ENEMY_Tarantulas|r. Loot them for |cRXP_LOOT_Crisp Spider Meat|r
    >>AoE |cRXP_ENEMY_Great Goretusks|r. Loot them for |cRXP_LOOT_Great Goretusk Snouts|r and |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
    .mob +Tarantula
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob +Great Goretusk
    .collect 769,50,90,1,1 --Chunk of Boar Meat (50)
    .mob +Great Goretusk
    .skill cooking,50,1
step
    #completewith Gnolls
    >>AoE |cRXP_ENEMY_Tarantulas|r. Loot them for |cRXP_LOOT_Crisp Spider Meat|r
    >>AoE |cRXP_ENEMY_Great Goretusks|r. Loot them for |cRXP_LOOT_Great Goretusk Snouts|r
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
    .mob +Tarantula
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob +Great Goretusk
    .skill cooking,<50,1
step
    .goto 1433/0,-1907.75,-9625.90,60,0
    .goto 1433/0,-1893.64,-9592.880,60,0
    .goto 1433/0,-1938.36,-9591.440
    >>Talk to |cRXP_FRIENDLY_Parker|r
    .accept 244 >>Accept Encroaching Gnolls
    .target Guard Parker
step << skip
    #label AoE1
    .goto 1433/0,-1912.31,-9479.51,60 >>AoE the |cRXP_ENEMY_Redridge Mongrels|r and |cRXP_ENEMY_Redridge Thrashers|r
    .isOnQuest 244
step << skip
    #completewith Gnolls
    >>AoE |cRXP_ENEMY_Great Goretusks|r. Loot them for |cRXP_LOOT_Great Goretusk Snouts|r and |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .collect 769,50,90,1,1 --Chunk of Boar Meat (50)
    .mob Great Goretusk
    .skill cooking,50,1
step << skip
    #completewith next
    >>AoE |cRXP_ENEMY_Great Goretusks|r. Loot them for |cRXP_LOOT_Great Goretusk Snouts|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
    .skill cooking,50
step
    #label Gnolls
    .goto 1433/0,-2238.15,-9443.60
    >>Talk to |cRXP_FRIENDLY_Feldon|r
    .turnin 244 >>Turn in Encroaching Gnolls
    .accept 246 >>Accept Assessing the Threat
    .target Deputy Feldon
step
    .goto 1433/0,-2234.89,-9435.060
    >>Talk to |cRXP_FRIENDLY_Ariena|r
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
step
    >>Talk to |cRXP_FRIENDLY_Marris|r and |cRXP_FRIENDLY_Oslow|r
    .accept 20 >>Accept Blackrock Menace
    .target +Marshal Marris
    .goto 1433/0,-2298.28,-9283.90
    .accept 125 >>Accept The Lost Tools
    .turnin 345 >>Turn in Ink Supplies
    .accept 347 >>Accept Rethban Ore
    .goto 1433/0,-2268.54,-9279.27
    .target +Foreman Oslow
step
    .goto 1433/0,-2219.70,-9260.73
    >>Talk to |cRXP_FRIENDLY_Karen|r
    >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from her|r
    >>|cRXP_WARN_You'll need this for later|r
    .collect 2901,1,125,1 --Mining Pick (1)
    .target Karen Taylor
step
    >>Talk to |cRXP_FRIENDLY_Conacher|r
--  .accept 120 >>Accept Messenger to Stormwind
--  .goto 1433/0,-2221.87,-9218.60
    .accept 91 >>Accept Solomon's Law
    .goto 1433/0,-2216.00,-9215.85
--  .target Magistrate Solomon
    .target Bailiff Conacher
step
    >>Talk to |cRXP_FRIENDLY_Baren|r and the |cRXP_PICK_Wanted Poster|r
    .accept 127 >>Accept Selling Fish
    .goto 1433/0,-2172.59,-9261.02
    .accept 180 >>Accept Wanted: Lieutenant Fangore
    .goto 1433/0,-2151.53,-9247.12
    .target Dockmaster Baren
step
    #sticky
    #label Darcy1
    .goto 1433/0,-2155.22,-9225.84,0,0
    >>Go Inside the Inn
    >>Talk to |cRXP_FRIENDLY_Darcy|r
    .accept 129 >>Accept A Free Lunch
    .target Darcy
step
    .goto 1433/0,-2145.89,-9211.36
    >>Inside the Inn
    >>Talk to |cRXP_FRIENDLY_Daniels|r
    .accept 116 >>Accept Dry Times
    .turnin 116 >>Turn in Dry Times
    .target Barkeep Daniels
step
    .goto 1433/0,-2145.45,-9231.34
    >>Inside the Inn
    >>Talk to |cRXP_FRIENDLY_Wiley|r by jumping from the bannister downstairs
    .turnin 65 >>Turn in The Defias Brotherhood
--  .accept 132 >>Accept The Defias Brotherhood
    .target Wiley the Black
step
    .goto 1433/0,-2207.32,-9351.66
    >>Talk to |cRXP_FRIENDLY_Shawn|r
    .accept 3741 >>Accept Hilary's Necklace
    .target Shawn
step
    .goto 1433/0,-2250.09,-9360.78,90,0
    .goto 1433/0,-2174.32,-9386.56,90,0
    .goto 1433/0,-2147.41,-9308.08,90,0
    .goto 1433/0,-2090.96,-9373.82,90,0
    .goto 1433/0,-1986.76,-9324.30,90,0
    .goto 1433/0,-2246.40,-9359.92,90,0
    .goto 1433/0,-2309.57,-9376.28,90,0
    .goto 1433/0,-2397.70,-9363.97
    >>|cRXP_WARN_Swim underwater and check the spawn locations. There are 8 locations with 2 spawns up at once|r
    >>Open the |cRXP_PICK_Glinting Mud|r. Loot it for |cRXP_LOOT_Hilary's Necklace|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 3741,1 --Hilary's Necklace (1)
step
    .goto 1433/0,-2205.58,-9351.52
    >>Talk to |cRXP_FRIENDLY_Hilary|r
    .turnin 3741 >>Turn in Hilary's Necklace
    .target Hilary
step
    #completewith Gnolls2
    >>AoE |cRXP_ENEMY_Great Goretusks|r. Loot them for |cRXP_LOOT_Great Goretusk Snouts|r and |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .collect 769,50,90,1,1 --Chunk of Boar Meat (50)
    .mob Great Goretusk
    .skill cooking,50,1
step
    #completewith next
    >>AoE |cRXP_ENEMY_Great Goretusks|r. Loot them for |cRXP_LOOT_Great Goretusk Snouts|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
    .skill cooking,<50,1
step
    #label Gnolls2
    .goto 1433/0,-1912.31,-9479.51
    >>AoE the |cRXP_ENEMY_Redridge Mongrels|r and |cRXP_ENEMY_Redridge Thrashers|r
    .complete 246,1,1 --Redridge Mongrel (1)
    .mob Redridge Mongrel
    .mob Redridge Thrasher
step
    #completewith Gnolls3
    >>AoE |cRXP_ENEMY_Tarantulas|r. Loot them for |cRXP_LOOT_Crisp Spider Meat|r
    >>AoE |cRXP_ENEMY_Great Goretusks|r. Loot them for |cRXP_LOOT_Great Goretusk Snouts|r and |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
    .mob +Tarantula
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob +Great Goretusk
    .collect 769,50,90,1,1 --Chunk of Boar Meat (50)
    .mob +Great Goretusk
    .skill cooking,50,1
step
    #completewith Gnolls3
    >>AoE |cRXP_ENEMY_Tarantulas|r. Loot them for |cRXP_LOOT_Crisp Spider Meat|r
    >>AoE |cRXP_ENEMY_Great Goretusks|r. Loot them for |cRXP_LOOT_Great Goretusk Snouts|r
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
    .mob +Tarantula
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob +Great Goretusk
    .skill cooking,<50,1
step
    .goto 1433/0,-1907.75,-9625.90,60,0
    .goto 1433/0,-1893.64,-9592.880,60,0
    .goto 1433/0,-1938.36,-9591.440
    >>Talk to |cRXP_FRIENDLY_Parker|r
    .turnin 129 >>Turn in A Free Lunch
    .accept 130 >>Accept Visit the Herbalist
    .target Guard Parker
step
    #label Gnolls3
    .goto 1433/0,-2209.06,-9790.24,60,0
    .goto 1433/0,-2242.71,-9792.700,60,0
    .goto 1433/0,-2271.14,-9774.31,60,0
    .goto 1433/0,-2321.94,-9776.63,60,0
    .goto 1433/0,-2512.32,-9603.17,60,0
    .goto 1433/0,-2209.06,-9790.24,60,0
    .goto 1433/0,-2242.71,-9792.700,60,0
    .goto 1433/0,-2271.14,-9774.31,60,0
    .goto 1433/0,-2321.94,-9776.63,60,0
    .goto 1433/0,-2512.32,-9603.17
    >>AoE the |cRXP_ENEMY_Redridge Mongrels|r, |cRXP_ENEMY_Redridge Thrashers|r, and |cRXP_ENEMY_Redridge Poachers|r
    >>|cRXP_WARN_Remember to deadzone the|r |cRXP_ENEMY_Redridge Poachers|r
    .complete 246,1 --Redridge Mongrel (10)
    .mob +Redridge Mongrel
    .complete 246,2 --Redridge Poacher (6)
    .mob +Redridge Poacher
step
    .goto 1433/0,-2238.15,-9443.60
    >>Talk to |cRXP_FRIENDLY_Feldon|r
    .turnin 246 >>Turn in Assessing the Threat
    .target Deputy Feldon
step
    .goto 1433/0,-2472.16,-9366.72,-1
    >>Go underwater
    >>Open the |cRXP_PICK_Sunken Chest|r. Loot it for |cRXP_LOOT_Oslow's Toolbox|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 125,1 --Oslow's Toolbox (1)
step
    #completewith next
    .goto 1433/0,-2445.68,-9240.75,60,0
    >>AoE |cRXP_ENEMY_Murloc Flesheaters|r and |cRXP_ENEMY_Murloc Scouts|r. Loot them for some of the |cRXP_LOOT_Spotted Sunfish|r and |cRXP_LOOT_Murloc Fins|r
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
    .mob Murloc Flesheater
    .mob Murloc Scout
step
    .goto 1433/0,-2268.54,-9279.12
    >>Talk to |cRXP_FRIENDLY_Oslow|r
    .turnin 125 >>Turn in The Lost Tools
    .accept 89 >>Accept The Everstill Bridge
    .target Foreman Oslow
step
    .goto 1433/0,-2240.10,-9248.14
    >>Talk to |cRXP_FRIENDLY_Dorin|r
    .vendor >> Vendor Trash
    .target Dorin Songblade
    .isOnQuest 89
step << skip
    #completewith next
    .goto 1433/0,-2205.58,-9232.350,10,0
    .goto 1433/0,-2197.99,-9224.68,8 >>Go inside the Town Hall
step
    .goto 1433/0,-2377.51,-9229.460,60,0
    .goto 1433/0,-2403.56,-9173.57,60,0
    .goto 1433/0,-2415.07,-9034.28,60,0
    .goto 1433/0,-2509.72,-9067.73,60,0
    .goto 1433/0,-2599.16,-9078.44,60,0
    .goto 1433/0,-2772.39,-9226.85,60,0
    .goto 1433/0,-2808.64,-9313.58,60,0
    .goto 1433/0,-2791.71,-9355.86,60,0
    .goto 1433/0,-2838.17,-9350.50,60,0
    .goto 1433/0,-2840.12,-9220.92,60,0
    .goto 1433/0,-2854.01,-9211.65,60,0
    .goto 1433/0,-2867.69,-9183.27,60,0
    .goto 1433/0,-2924.13,-9179.65,60,0
    .goto 1433/0,-2928.91,-9231.77,60,0
    >>AoE |cRXP_ENEMY_Blackrock Outrunners|r, |cRXP_ENEMY_Blackrock Renegades|r and |cRXP_ENEMY_Blackrock Grunts|r. Loot them for their |cRXP_LOOT_Battleworn Axes|r
    >>AoE |cRXP_ENEMY_Murloc Tidecallers|r and |cRXP_ENEMY_Murloc Scouts|r. Loot them for their |cRXP_LOOT_Spotted Sunfish|r and |cRXP_LOOT_Murloc Fins|r
    >>AoE |cRXP_ENEMY_Dire Condors|r. Loot them for their |cRXP_LOOT_Tough Condor Meat|r
    >>AoE |cRXP_ENEMY_Greater Tarantulas|r. Loot them for their |cRXP_LOOT_Crisp Spider Meat|r
    >>AoE |cRXP_ENEMY_Great Goretusks|r. Loot them for |cRXP_LOOT_Great Goretusk Snouts|r
    >>AoE |cRXP_ENEMY_Redridge Mystics|r and |cRXP_ENEMY_Redridge Brutes|r Loot them for their |cRXP_LOOT_Iron Pikes|r and |cRXP_LOOT_Iron Rivets|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Blackrock Outrunners|r cast|r |T132149:0|t[Net]|cRXP_WARN_, |cRXP_ENEMY_Dire Condors|r cast|r |T132154:0|t[Knockdown]
    .complete 20,1 --Blackrock Axe (10)
#loop
	.line Redridge Mountains,37.16,45.20,38.36,41.34,40.09,40.64,42.89,39.26,59.36,44.56,59.79,42.05,62.58,41.46,62.57,45.48,59.36,44.56
	.goto 1433/0,-2377.51,-9229.460,30,0
	.goto 1433/0,-2403.56,-9173.57,30,0
	.goto 1433/0,-2441.12,-9163.43,30,0
	.goto 1433/0,-2501.90,-9143.45,30,0
	.goto 1433/0,-2859.44,-9220.19,30,0
	.goto 1433/0,-2868.77,-9183.85,30,0
	.goto 1433/0,-2929.34,-9175.31,30,0
	.goto 1433/0,-2929.12,-9233.51,30,0
	.goto 1433/0,-2859.44,-9220.19,30,0
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
    .goto 1433/0,-2831.22,-9328.06,40,0
    .goto 1433/0,-2809.95,-9313.87,40,0
    .goto 1433/0,-2789.11,-9350.36,40,0
    .goto 1433/0,-2831.22,-9328.06
    .collect 1080,5,92,1 --Tough Condor Meat (5)
#loop
	.line Redridge Mountains,43.25,34.03,47.37,34.77,47.37,34.77,49.97,33.60,51.90,39.75,54.81,40.66,54.70,44.93,57.63,46.48
	.goto 1433/0,-2509.72,-9067.73,30,0
	.goto 1433/0,-2599.16,-9078.44,30,0
	.goto 1433/0,-2599.16,-9078.44,30,0
	.goto 1433/0,-2655.60,-9061.500,30,0
	.goto 1433/0,-2697.5,-9150.55,30,0
	.goto 1433/0,-2760.67,-9163.72,30,0
	.goto 1433/0,-2758.28,-9225.55,30,0
	.goto 1433/0,-2821.88,-9247.99,30,0
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
#loop
	.line Redridge Mountains,52.26,36.56,54.08,38.28,54.98,40.31,56.79,41.36,57.26,47.60,54.76,45.58,52.67,42.73,50.50,41.55,52.26,36.56
	.goto 1433/0,-2705.31,-9104.36,30,0
	.goto 1433/0,-2744.82,-9129.26,30,0
	.goto 1433/0,-2764.36,-9158.65,30,0
	.goto 1433/0,-2803.65,-9173.86,30,0
	.goto 1433/0,-2813.85,-9264.210,30,0
	.goto 1433/0,-2759.58,-9234.96,30,0
	.goto 1433/0,-2714.21,-9193.69,30,0
	.goto 1433/0,-2667.1,-9176.61,30,0
	.goto 1433/0,-2705.31,-9104.36,30,0
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .disablecheckbox
    .complete 89,1 --Iron Pike (5)
    .disablecheckbox
    .complete 89,2 --Iron Rivet (5)
    .disablecheckbox
    .goto 1433/0,-2415.07,-9034.28
    .mob Blackrock Outrunner
    .mob Blackrock Grunt
    .mob Blackrock Renegade
    .mob Murloc Scout
    .mob Murloc Tidecaller
    .mob Dire Condor
    .mob Greater Tarantula
    .mob Great Goretusk
    .mob Redridge Mystic
    .mob Redridge Brute
step
    #completewith Herbalist
    .goto 1433/0,-2366.23,-9110.87,60,0
    .goto 1433/0,-2270.06,-9155.47,60,0
    >>AoE |cRXP_ENEMY_Redridge Mystics|r and |cRXP_ENEMY_Redridge Brutes|r Loot them for their |cRXP_LOOT_Iron Pikes|r and |cRXP_LOOT_Iron Rivets|r
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .mob Redridge Mystic
    .mob Redridge Brute
step
    .goto 1433/0,-2063.18,-9209.62
    >>Go inside
    >>Talk to |cRXP_FRIENDLY_Breanna|r
    .accept 92 >> Accept Redridge Goulash
    .turnin 92 >> Turn in Redridge Goulash
    .target Chef Breanna
    .itemcount 1080,5
    .itemcount 1081,5
    .itemcount 2296,5
step
    #label Herbalist
    .goto 1433/0,-2045.38,-9245.82
    >>Talk to |cRXP_FRIENDLY_Martie|r
    .turnin 130 >>Turn in Visit the Herbalist
    .accept 131 >>Accept Delivering Daffodils
    .accept 34 >>Accept An Unwelcome Guest
    .target Martie Jainrose
step
    #completewith next
    .goto 1433/0,-1955.50,-9381.63,60,0
    .goto 1433/0,-1920.12,-9343.55,60,0
    >>AoE |cRXP_ENEMY_Great Goretusks|r. Loot them for |cRXP_LOOT_Great Goretusk Snouts|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
step
    .goto 1433/0,-1910.79,-9288.97
    >>Kill |cRXP_ENEMY_Bellygrub|r
    >>|cRXP_WARN_Kite her toward the fence north of |cRXP_FRIENDLY_Lamar|r. Jump back and forth to safespot her without taking any damage|r
    >>Be careful as |cRXP_ENEMY_Bellygrub|r casts |T132337:0|t[Charge] and |T136025:0|t[Tremor]
    .complete 34,1 --Bellygrub's Tusk (1)
    .mob Bellygrub
    .target Lamar Veisilli
step
    .goto 1433/0,-2045.38,-9245.82
    >>Talk to |cRXP_FRIENDLY_Martie|r
    .turnin 34 >>Turn in An Unwelcome Guest
    .target Martie Jainrose
step
    .goto 1433/0,-1950.08,-9206.58,60,0
    .goto 1433/0,-2024.97,-9145.04,60,0
    .goto 1433/0,-1955.50,-9381.63,60,0
    .goto 1433/0,-1920.12,-9343.55,60,0
    .goto 1433/0,-1950.08,-9206.58,60,0
    .goto 1433/0,-2024.97,-9145.04,60,0
    .goto 1433/0,-1955.50,-9381.63,60,0
    .goto 1433/0,-1920.12,-9343.55
    >>AoE |cRXP_ENEMY_Great Goretusks|r. Loot them for |cRXP_LOOT_Great Goretusk Snouts|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
step
    #completewith next
    .goto 1433/0,-2034.31,-9101.17,60,0
    >>AoE |cRXP_ENEMY_Redridge Mystics|r and |cRXP_ENEMY_Redridge Brutes|r Loot them for their |cRXP_LOOT_Iron Pikes|r and |cRXP_LOOT_Iron Rivets|r
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .mob Redridge Mystic
    .mob Redridge Brute
step
    .goto 1433/0,-1994.15,-9037.03,60,0
    .goto 1433/0,-2017.59,-8984.62,40 >>Travel to the Rethban Caverns
    .isOnQuest 347
step
#loop
	.line Redridge Mountains,18.95,24.50,21.62,23.72,21.89,15.06,20.21,13.25,18.82,15.03,16.06,17.08,17.48,19.55,16.05,21.04,18.95,24.50
	.goto 1433/0,-1982.21,-8929.740,20,0
	.goto 1433/0,-2040.17,-8918.45,20,0
	.goto 1433/0,-2046.03,-8793.06,20,0
	.goto 1433/0,-2009.56,-8766.85,20,0
	.goto 1433/0,-1979.38,-8792.62,20,0
	.goto 1433/0,-1919.47,-8822.30,20,0
	.goto 1433/0,-1950.29,-8858.07,20,0
	.goto 1433/0,-1919.25,-8879.64,20,0
	.goto 1433/0,-1982.21,-8929.740,20,0
    >>AoE |cRXP_ENEMY_Redridge Drudgers|r. Loot them for their |cRXP_LOOT_Rethban Ore|r, |cRXP_LOOT_Iron Pikes|r, and |cRXP_LOOT_Iron Rivets|r
    >>AoE |cRXP_ENEMY_Redridge Bashers|r. Loot them for their |cRXP_LOOT_Iron Pikes|r and |cRXP_LOOT_Iron Rivets|r
    >>Mine the |cRXP_PICK_Copper Veins|r in the cave. Loot them for the |cRXP_LOOT_Rethban Ore|r
    .complete 347,1 --Rethban Ore (5)
    .mob +Redridge Drudger
    .complete 89,1 --Iron Pike (5)
    .mob +Redridge Basher
    .complete 89,2 --Iron Rivet (5)
    .mob +Redridge Basher
step
#loop
	.line Redridge Mountains,18.95,24.50,21.62,23.72,21.89,15.06,20.21,13.25,18.82,15.03,16.06,17.08,17.48,19.55,16.05,21.04,18.95,24.50
	.goto 1433/0,-1982.21,-8929.740,20,0
	.goto 1433/0,-2040.17,-8918.45,20,0
	.goto 1433/0,-2046.03,-8793.06,20,0
	.goto 1433/0,-2009.56,-8766.85,20,0
	.goto 1433/0,-1979.38,-8792.62,20,0
	.goto 1433/0,-1919.47,-8822.30,20,0
	.goto 1433/0,-1950.29,-8858.07,20,0
	.goto 1433/0,-1919.25,-8879.64,20,0
	.goto 1433/0,-1982.21,-8929.740,20,0
    .xp 21+14365 >> Grind to 14365+/25200xp
    .isQuestAvailable 92
step
#loop
	.line Redridge Mountains,18.95,24.50,21.62,23.72,21.89,15.06,20.21,13.25,18.82,15.03,16.06,17.08,17.48,19.55,16.05,21.04,18.95,24.50
	.goto 1433/0,-1982.21,-8929.740,20,0
	.goto 1433/0,-2040.17,-8918.45,20,0
	.goto 1433/0,-2046.03,-8793.06,20,0
	.goto 1433/0,-2009.56,-8766.85,20,0
	.goto 1433/0,-1979.38,-8792.62,20,0
	.goto 1433/0,-1919.47,-8822.30,20,0
	.goto 1433/0,-1950.29,-8858.07,20,0
	.goto 1433/0,-1919.25,-8879.64,20,0
	.goto 1433/0,-1982.21,-8929.740,20,0
    .xp 21+15715 >> Grind to 15715+/25200xp
    .isQuestTurnedIn 92
step << skip
    #completewith next
    .goto 1433/0,-1978.73,-8775.39,-1
    .goto 1433/0,-2049.28,-8823.17,-1
    .goto 1433/0,-1970.27,-8924.38,-1
    .goto 1433/0,-2033.00,-8923.37,-1
    .goto 1433/0,-1930.76,-8878.63,-1
    .goto 1433/0,-2305.01,-9271.01,30 >>Logout Skip out of the cave (on the EAST side) back to Lakeshire
step
    #completewith next
    .subzone 69 >> Return to Lakeshire
step
    >>Talk to |cRXP_FRIENDLY_Marris|r and |cRXP_FRIENDLY_Oslow|r
    .turnin 20 >>Turn in Blackrock Menace
    .accept 19 >>Accept Tharil'zun
    .target +Marshal Marris
    .goto 1433/0,-2298.28,-9283.90
    .turnin 89,1 >>Turn in The Everstill Bridge
    .goto 1433/0,-2268.54,-9279.27
    .target +Foreman Oslow
step
    .goto 1433/0,-2242.49,-9259.00
    >>Talk to |cRXP_FRIENDLY_Verner|r
    .accept 118 >>Accept The Price of Shoes
    .target Verner Osgood
step
    .goto 1433/0,-2172.59,-9261.02
    >>Talk to |cRXP_FRIENDLY_Baren|r
    .turnin 127 >> Turn in Selling Fish
    .accept 150 >> Accept Murloc Poachers
    .turnin 150 >> Turn in Murloc Poachers
    .goto 1433/0,-2172.59,-9261.02
    .target Dockmaster Baren
step
    #sticky
    #label Kimberly
    .goto 1433/0,-2158.69,-9234.38,0,0
    .vendor >> Vendor Trash. You can sell the |T134708:0|t[Mining Pick] now if you wish
    .target Kimberly Hiett
step
    .goto 1433/0,-2155.22,-9225.84
    >>Go Inside the Inn
    >>Talk to |cRXP_FRIENDLY_Darcy|r
    .turnin 131 >>Turn in Delivering Daffodils
    .target Darcy
step
    #completewith next
    .goto 1433/0,-2146.54,-9246.54,12,0
    .goto 1433/0,-2067.09,-9220.34,12,0
    >>Travel toward |cRXP_FRIENDLY_Breanna|r
step
    .goto 1433/0,-2063.18,-9209.62
    >>Go inside
    >>Talk to |cRXP_FRIENDLY_Breanna|r
    .accept 92 >> Accept Redridge Goulash
    .turnin 92 >> Turn in Redridge Goulash
    .target Chef Breanna
step
    #completewith next
    .hs >> Hearth to Goldshire
step
    .goto 1429/0,87.73,-9456.79
    >>Talk to |cRXP_FRIENDLY_Argus|r
    .turnin 118 >>Turn in The Price of Shoes
    .accept 119 >>Accept Return to Verner
    .target Smith Argus
step
    #completewith next
    .goto 1429/0,-158.00,-8901.52,10,0
    .goto 1429/0,-174.32,-8881.39,10,0
    .goto 1429/0,-186.46,-8874.91,10 >>Travel toward |cRXP_FRIENDLY_Paxton|r
step
    .goto 1429/0,-186.46,-8874.91
    >>Talk to |cRXP_FRIENDLY_Paxton|r
    .turnin 347 >> Turn in Rethban Ore
    .accept 346 >> Accept Return to Kristoff
    .target Brother Paxton
step
    #completewith CharysEnd
    .cast 3561 >> Cast |T135763:0|t[Teleport: Stormwind]
    .zoneskip Stormwind City
step
    #completewith CharysEnd
    >>|cRXP_WARN_===PAY ATTENTION===|r
    +|cRXP_WARN_Respec to the Frost AoE spec|r
    .xp <22,1
step
    .goto 1453/0,867.06,-9012.61
    >>Talk to |cRXP_FRIENDLY_Dumas|r
    .train 10 >> Train Blizzard
    .target Maginor Dumas
    .xp <22,1
step
    #completewith CharysEnd
    .goto 1453/0,887.22,-9017.80,10,0
    .goto 1453/0,871.36,-9013.14,10,0
    .goto 1453/0,868.8,-9004.27,8,0
    .goto 1453/0,877.00,-9008.03,6,0
    .goto 1453/0,863.96,-9001.40,8,0
    .goto 1453/0,928.62,-9010.10,15,0
    .goto 1453/0,962.63,-8990.73,15,0
    .goto 1453/0,949.86,-9009.380,10,0
    .goto 1453/0,942.34,-9001.49,8,0
    >>Exit the Mage Tower
    .goto 1453/0,948.65,-8994.50,10 >>Travel toward |cRXP_FRIENDLY_Charys|r
step
    #completewith BankDeposit
    +|cRXP_WARN_DON'T Go below 1g 43s 30c|r
    .xp >22,1
step
    .goto 1453/0,948.65,-8994.50
    >>Enter the building
    >>Talk to |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Buy|r |T134851:0|t[Lesser Mana Potions] |cRXP_BUY_and|r  |T134831:0|t[Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .itemcount 4827,1
    .target Charys Yserian
step
    .goto 1453/0,948.65,-8994.50
    >>Enter the building
    >>Talk to |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Buy|r |T134851:0|t[Lesser Mana Potions] |cRXP_BUY_and|r  |T134831:0|t[Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .itemcount 4828,1
    .target Charys Yserian
step
    .goto 1453/0,948.65,-8994.50
    >>Enter the building
    >>Talk to |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Buy|r |T134851:0|t[Lesser Mana Potions] |cRXP_BUY_and|r  |T134831:0|t[Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .itemcount 4829,1
    .target Charys Yserian
step
    #label CharysEnd
    .goto 1453/0,948.65,-8994.50
    >>Enter the building
    >>Talk to |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Buy|r |T134851:0|t[Lesser Mana Potions]|cRXP_BUY_,|r |T134831:0|t[Healing Potions]|cRXP_BUY_, and a|r |T132515:0|t[Cloth Belt] |cRXP_BUY_from him (if they're up, and if needed)|r
    .itemcount 4827,<1
    .itemcount 4828,<1
    .itemcount 4829,<1
    .target Charys Yserian
step
    #completewith next
    .goto 1453/0,852.40,-8920.10,20,0
    .goto 1453/0,829.01,-8901.28,20,0
    .goto 1453/0,789.22,-8904.59,20,0
    .goto 1453/0,758.31,-8878.78,20,0
    .goto 1453/0,810.33,-8832.44,20,0
    .goto 1453/0,827.54,-8850.19,15,0
    .goto 1453/0,822.16,-8865.60,10 >>Travel toward |cRXP_FRIENDLY_Adair|r
step
    #label AdairX
    .goto 1453/0,822.16,-8865.60
    >>Enter the building
    >>Talk to |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >> |cRXP_BUY_Buy non-intellect|r |T134943:0|t[Scrolls] |cRXP_BUY_from him (if they're up)|r
    .target Adair Gilroy
step
    #completewith next
    .goto 1453/0,872.30,-8803.220,5,0
    .goto 1453/0,872.70,-8682.39,20 >>Run up the edge of the wall instead of going around
step
    .goto 1453/0,766.64,-8623.23
    >>Talk to |cRXP_FRIENDLY_Kristoff|r
    .turnin 346 >> Turn in Return to Kristoff
    .target Brother Kristoff
step
    .goto 1453/0,638.26,-8342.22
    >>Talk to |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him if its up|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith next
    .goto 1453/0,522.12,-8352.80,20 >> Travel to the Deeprun Tram
step
    #completewith next
    +|cRXP_WARN_Ride the Deeprun Tram whilst spam casting|r |T132816:0|t[Conjure Water r3]
step
    .zone Ironforge >> Take the Deeprun Tram to Ironforge
step
    .goto 1455/0,-1249.87,-4793.31
    >>Talk to |cRXP_FRIENDLY_Cogspinner|r
    .vendor 5175>>|cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him if its up|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith BankDeposit
    .goto 1455/0,-977.98,-4904.59,30 >>Enter the Ironforge Bank
step
    .goto 1455/0,-997.66,-4886.49
    >>Talk to |cRXP_FRIENDLY_Bailey|r
    >>|cRXP_WARN_NOTE: You need 12 stacks of each cloth (|r|T132911:0|t[Wool Cloth]|cRXP_WARN_,|r |T132905:0|t[Silk Cloth]|cRXP_WARN_,|r |T132892:0|t[Mageweave Cloth]|cRXP_WARN_,|r and |T132903:0|t[Runecloth]|cRXP_WARN_) to do the cloth turnins later. You'll get these naturally as you level|r
    .bankdeposit 17056,2592,1015,1083,2665,1922,1284 >> Deposit the following items into the bank:
    >>|T132917:0|t[Light Feather]
    >>|T132911:0|t[Wool Cloth]
    >>|T133970:0|t[Lean Wolf Flank]
    >>|T133277:0|t[Glyph of Azora]
    >>|T133849:0|t[Stormwind Seasoning Herbs]
    >>|T133629:0|t[Supplies for Sven]
    >>|T132761:0|t[Crate of Horseshoes]
    .target Bailey Stonemantle
step
    #label BankDeposit
    .goto 1455/0,-997.66,-4886.49
    .bankwithdraw 4654 >> Withdraw the following items from your bank:
    >>|T134431:0|t[Mysterious Fossil]
    .target Bailey Stonemantle
step
    .goto 1455/0,-915.2,-4606.38
    >>Talk to |cRXP_FRIENDLY_Milstaff|r
    .train 3562 >> Train |T135757:0|t[Teleport: Ironforge]
    .target Milstaff Stormeye
step
    #completewith FlyMene
    >>|cRXP_WARN_===PAY ATTENTION===|r
    +|cRXP_WARN_Respec to the Frost AoE spec|r
step
    .goto 1455/0,-928.48,-4614.620
    >>Talk to |cRXP_FRIENDLY_Dink|r
    .train 10 >> Train Blizzard
    .target Dink
step
    #completewith next
    +|cRXP_WARN_Start spam casting|r |T132816:0|t[Conjure Water r3] |cRXP_WARN_to conjure as much water as possible before taking the flight|r
step
    #completewith next
    #label FlyMene
    .goto 1455/0,-1152.39,-4820.914
    >>Talk to |cRXP_FRIENDLY_Gryth|r
    .fly Menethil >> Fly to Menethil Harbor
    .target Gryth Thurden
step
    .zone Wetlands >> Travel to Wetlands
]])
