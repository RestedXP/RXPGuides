local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

if GetLocale() == "zhCN" then return end
RXPGuides.RegisterGuide([[
#classic
#tbc
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
    .goto Elwynn Forest,48.45,45.80,50,0
    +|cRXP_WARN_Kill |cRXP_ENEMY_Young Wolves|r. Loot them until you have 10 copper worth of vendor items|r
    .mob Young Wolf
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willem|r
    .accept 783 >> Accept A Threat Within
    .target Deputy Willem
step
    .goto Elwynn Forest,47.48,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danil|r
    .vendor >> Vendor Trash until you have 10+ copper
    .target Brother Danil
step
    .goto Elwynn Forest,48.26,41.93,15,0
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_McBride|r inside
    .turnin 783 >> Turn in A Threat Within
    .accept 7 >> Accept Kobold Camp Cleanup
    .target Marshal McBride
step
    #completewith next
    .goto Elwynn Forest,48.97,41.14,10,0
    .goto Elwynn Forest,49.26,40.67,10,0
    .goto Elwynn Forest,49.66,40.15,10,0
    .goto Elwynn Forest,49.44,39.89,5,0
    >>Jump from the stairs to the rail
    .goto Elwynn Forest,49.66,39.41,10 >>Travel toward |cRXP_FRIENDLY_Khelden|r upstairs
step
    .goto Elwynn Forest,49.66,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khelden|r
    .train 1459 >> Train |T135932:0|t[Arcane Intellect]
    .target Khelden Bremen
step
    #completewith next
    .goto Elwynn Forest,49.66,40.15,10,0
    .goto Elwynn Forest,49.26,40.67,10,0
    .goto Elwynn Forest,48.97,41.14,10,0
    .goto Elwynn Forest,48.171,42.943,10 >>Travel toward |cRXP_FRIENDLY_Willem|r
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willem|r
    .accept 5261 >> Accept Eagan Peltskinner
    .target Deputy Willem
step
    #completewith next
    .goto Elwynn Forest,46.10,42.57,70,0
    .goto Elwynn Forest,46.59,39.35
    +|cRXP_WARN_Kill |cRXP_ENEMY_Young Wolves|r. Loot them until you have 50 copper worth of vendor items (including your armor)|r
    .mob Young Wolf
step
    .goto Elwynn Forest,47.48,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danil|r
    >>|cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .vendor >> Vendor Trash
    .collect 159,10,7,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto Elwynn Forest,48.94,40.16
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
	.goto Elwynn Forest,47.01,35.68,35,0
	.goto Elwynn Forest,47.70,35.04,35,0
	.goto Elwynn Forest,49.81,35.14,35,0
	.goto Elwynn Forest,49.82,36.23,35,0
	.goto Elwynn Forest,49.18,37.16,35,0
	.goto Elwynn Forest,47.01,35.68,35,0
    >>Kill |cRXP_ENEMY_Kobold Vermin|r
    >>|cRXP_WARN_Kill Level 1 |cRXP_ENEMY_Kobold Vermin|r if possible|r
    .complete 7,1 --Kill Kobold Vermin (x10)
	.mob Kobold Vermin
step
#loop
	.line Elwynn Forest,49.32,37.91,48.24,37.88,46.18,37.29,45.69,39.05,46.03,40.91,48.04,39.55,49.32,37.91
	.goto Elwynn Forest,49.32,37.91,35,0
	.goto Elwynn Forest,48.24,37.88,35,0
	.goto Elwynn Forest,46.18,37.29,35,0
	.goto Elwynn Forest,45.69,39.05,35,0
	.goto Elwynn Forest,46.03,40.91,35,0
	.goto Elwynn Forest,48.04,39.55,35,0
	.goto Elwynn Forest,49.32,37.91,35,0
    >>Kill |cRXP_LOOT_Young Wolves|r and |cRXP_LOOT_Timber Wolves|r. Loot them for their |cRXP_LOOT_Tough Wolf Meat|r
    >>Focus on the |cRXP_LOOT_Young Wolves|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
	.mob Young Wolf
    .mob Timber Wolf
step
    .goto Elwynn Forest,48.94,40.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eagan|r
    .turnin 33,1 >> Turn in Wolves Across The Border
    .target Eagan Peltskinner
step
    .goto Elwynn Forest,47.48,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danil|r
    |cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .vendor >>Vendor Trash
    .collect 159,10,15,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_McBride|r inside
    .turnin 7 >> Turn in Kobold Camp Cleanup
    .accept 15 >> Accept Investigate Echo Ridge
    .accept 3104 >> Accept Glyphic Letter
    .target Marshal McBride
step
#loop
	.line Elwynn Forest,47.25,36.41,47.39,35.77,47.35,34.06,46.29,32.42,47.75,32.77,50.11,34.98,47.25,36.41
	.goto Elwynn Forest,47.25,36.41,35,0
	.goto Elwynn Forest,47.39,35.77,35,0
	.goto Elwynn Forest,47.35,34.06,35,0
	.goto Elwynn Forest,46.29,32.42,35,0
	.goto Elwynn Forest,47.75,32.77,35,0
	.goto Elwynn Forest,50.11,34.98,35,0
	.goto Elwynn Forest,47.25,36.41,35,0
    >>Kill |cRXP_ENEMY_Kobold Workers|r
    .complete 15,1 --Kill Kobold Worker (x10)
	.mob Kobold Worker
step
#loop
	.line Elwynn Forest,49.32,37.91,48.24,37.88,46.18,37.29,45.69,39.05,46.03,40.91,48.04,39.55,49.32,37.91
	.goto Elwynn Forest,49.32,37.91,35,0
	.goto Elwynn Forest,48.24,37.88,35,0
	.goto Elwynn Forest,46.18,37.29,35,0
	.goto Elwynn Forest,45.69,39.05,35,0
	.goto Elwynn Forest,46.03,40.91,35,0
	.goto Elwynn Forest,48.04,39.55,35,0
	.goto Elwynn Forest,49.32,37.91,35,0
    .xp 3+1110 >> Grind to 1110+/1400xp
	.mob Young Wolf
	.mob Kobold Vermin
    .mob Timber Wolf
 step
    .goto Elwynn Forest,47.48,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danil|r
    >>|cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .vendor >>Vendor Trash
    .collect 159,10,15,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_McBridge|r inside
    .turnin 15 >> Turn in Investigate Echo Ridge
    .accept 21 >> Accept Skirmish at Echo Ridge
    .target Marshal McBride
step
    #completewith next
    .goto Elwynn Forest,48.97,41.14,10,0
    .goto Elwynn Forest,49.26,40.67,10,0
    .goto Elwynn Forest,49.66,40.15,10,0
    .goto Elwynn Forest,49.44,39.89,5,0
    >>Jump from the stairs to the rail
    .goto Elwynn Forest,49.66,39.41,10 >>Travel toward |cRXP_FRIENDLY_Khelden|r upstairs
step
    #season 0
    .goto Elwynn Forest,49.66,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khelden|r
    .turnin 3104 >> Turn in Glyphic Letter
    .train 116 >> Train |T135846:0|t[Frostbolt]
    .target Khelden Bremen
step
    #season 2
    .goto Elwynn Forest,49.66,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khelden|r
    .accept 77620 >> Accept Spell Research << Human
    .turnin 3104 >> Turn in Glyphic Letter
    .train 116 >> Train |T135846:0|t[Frostbolt]
    .target Khelden Bremen
step
    #completewith next
    .goto Elwynn Forest,49.66,40.15,10,0
    .goto Elwynn Forest,49.26,40.67,10,0
    .goto Elwynn Forest,48.97,41.14,10,0
    .goto Elwynn Forest,48.171,42.943,10 >>Travel toward |cRXP_FRIENDLY_Willem|r
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willem|r
    .accept 18 >> Accept Brotherhood of Thieves
    .target Deputy Willem
step
    #season 2
    #loop
    #label CALEENCI
    #completewith RedBurlapBandana
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
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
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
#loop
	.line Elwynn Forest,51.14,49.29,52.55,48.75,53.81,48.09,54.58,49.02,55.15,47.86,54.76,45.96,53.81,44.79,,51.14,49.29
	.goto Elwynn Forest,51.14,49.29,35,0
	.goto Elwynn Forest,52.55,48.75,35,0
	.goto Elwynn Forest,53.81,48.09,35,0
	.goto Elwynn Forest,54.58,49.02,35,0
	.goto Elwynn Forest,55.15,47.86,35,0
	.goto Elwynn Forest,54.76,45.96,35,0
	.goto Elwynn Forest,53.81,44.79,35,0
	.goto Elwynn Forest,51.14,49.29,35,0
    >>Kill |cRXP_ENEMY_Defias Thugs|r. Loot them for |cRXP_LOOT_Red Burlap Bandanas|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob Defias Thug
step
    #optional
    #season 2
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,50,0
    .goto Elwynn Forest,53.89,50.52,50,0
    .goto Elwynn Forest,55.09,49.00,50,0
    .goto Elwynn Forest,55.43,45.87,50,0
    .goto Elwynn Forest,53.86,47.05,50,0
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
    .goto Elwynn Forest,48.171,42.943
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
    .goto Elwynn Forest,47.48,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Danil|r
    >>|cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .vendor >> Vendor Trash
    .collect 159,10,21,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    #completewith next
    .goto Elwynn Forest,47.76,31.62,40 >>Go inside the mine
step
    #label Laborer
    .goto Elwynn Forest,47.99,30.66,40,0
    .goto Elwynn Forest,48.32,28.84,40,0
    .goto Elwynn Forest,48.58,26.57,40,0
    .goto Elwynn Forest,49.95,25.74,40,0
    .goto Elwynn Forest,50.27,26.83
    >>Kill |cRXP_ENEMY_Kobold Laborers|r
    .complete 21,1 --Kill Kobold Laborer (x12)
	.mob Kobold Laborer
step
    .goto Elwynn Forest,50.70,39.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milly|r
    .turnin 3903 >> Turn in Milly Osworth
    .accept 3904 >> Accept Milly's Harvest
    .target Milly Osworth
step
    #completewith Harvest
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto Elwynn Forest,53.68,47.29,35,0
	.goto Elwynn Forest,52.82,48.78,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,53.85,50.68,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,53.68,47.29,35,0
    .xp 5+1175 >> Grind to 1175+/2800xp
    .mob Defias Thug
step
    #completewith next
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto Elwynn Forest,53.68,47.29,35,0
	.goto Elwynn Forest,52.82,48.78,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,53.85,50.68,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,53.68,47.29,35,0
    >>Loot the |cRXP_PICK_Buckets of Grapes|r on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto Elwynn Forest,57.52,48.25
    >>Kill |cRXP_ENEMY_Garrick Padfoot|r. Loot him for |cRXP_LOOT_Garrick's Head|r
    .complete 6,1 --Collect Garrick's Head (x1)
	.mob Garrick Padfoot
step
    #label Harvest
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto Elwynn Forest,53.68,47.29,35,0
	.goto Elwynn Forest,52.82,48.78,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,53.85,50.68,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,53.68,47.29,35,0
    >>Loot the |cRXP_PICK_Buckets of Grapes|r on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto Elwynn Forest,53.68,47.29,35,0
	.goto Elwynn Forest,52.82,48.78,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,53.85,50.68,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,53.68,47.29,35,0
    .xp 5+1175 >> Grind to 1175+/2800xp
    .mob Defias Thug
step
    .goto Elwynn Forest,50.70,39.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Milly|r
    .turnin 3904 >>Turn in Milly's Harvest
    .accept 3905 >>Accept Grape Manifest
    .target Milly Osworth
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Willem|r
    .turnin 6,1 >> Turn in Bounty on Garrick Padfoot
    .target Deputy Willem
step
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_McBride|r inside
    .turnin 21,3 >> Turn in Skirmish at Echo Ridge
    .accept 54 >> Accept Report to Goldshire
    .target Marshal McBride
step
    #completewith next
    .goto Elwynn Forest,49.18,41.84,10,0
    .goto Elwynn Forest,49.55,41.56,10,0
    .goto Elwynn Forest,49.39,40.98,10,0
    .goto Elwynn Forest,48.98,41.17,10,0
    .goto Elwynn Forest,49.20,41.81,10,0
    .goto Elwynn Forest,49.57,41.46,10,0
    .goto Elwynn Forest,49.33,40.93,10,0
    >>Go upstairs
    .goto Elwynn Forest,49.471,41.586,10 >> Travel toward |cRXP_FRIENDLY_Neals|r
step
    .goto Elwynn Forest,49.471,41.586
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
    .goto Elwynn Forest,49.661,39.402,12 >>Go downstairs, then travel toward |cRXP_FRIENDLY_Khelden Bremen|r
    .isQuestComplete 77620
step << Human
    #season 2
    .goto Elwynn Forest,49.661,39.402
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Khelden Bremen|r inside
    .turnin 77620 >> Turn in Spell Research
    .target Khelden Bremen
    .isQuestComplete 77620
step
    .goto Elwynn Forest,45.56,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falkhaan|r
    .accept 2158 >> Accept Rest and Relaxation
    .target Falkhaan Isenstrider
step
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dughan|r
    .turnin 54 >> Turn in Report to Goldshire
    .accept 62 >> Accept The Fargodeep Mine
    .target Marshal Dughan
step
    .goto Elwynn Forest,43.283,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William|r through the wall as you enter the Inn
    .accept 60 >> Accept Kobold Candles
    .target William Pestle
step
    #completewith next
    .home >> Set your Hearthstone to Goldshire
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farley|r
step
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farley|r
    .turnin 2158,2 >> Turn in Rest and Relaxation
    .vendor 295 >> Vendor Trash. |cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_down to 2 silver|r
    .target Innkeeper Farley
step
    .goto Elwynn Forest,43.25,66.25
    >>Jump onto the Chandelier downstairs
    >>Talk to |cRXP_FRIENDLY_Zaldimar|r through the wall
    .trainer >> Train your class spells (Fireball R2, Fire Blast)
	.target Zaldimar Wefhellt
step
    .goto Elwynn Forest,42.14,67.26
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
    .goto Elwynn Forest,34.486,84.253
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
    .goto Elwynn Forest,43.132,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billy|r
    .turnin 85 >> Turn in Lost Necklace
    .accept 86 >> Accept Pie for Billy
    .target Billy Maclure
step
    #label BoarMeat1
    .goto Elwynn Forest,43.16,89.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybell|r inside
    .accept 106 >> Accept Young Lovers
    .target Maybell Maclure
step
    .goto Elwynn Forest,42.36,89.37
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
	.goto Elwynn Forest,31.15,85.36,35,0
	.goto Elwynn Forest,33.08,86.64,35,0
	.goto Elwynn Forest,33.51,85.22,35,0
	.goto Elwynn Forest,32.17,83.88,35,0
	.goto Elwynn Forest,31.15,85.36,35,0
    >>Kill |cRXP_ENEMY_Stonetusk Boars|r. Loot them for |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    .collect 769,4,86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Bernice|r and then |cRXP_FRIENDLY_Gramma|r inside
    .turnin 86 >> Turn in Pie for Billy
    .accept 84 >> Accept Back to Billy
    .target +"Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
    .turnin 111 >> Turn in Speak with Gramma
    .accept 107 >> Accept Note to William
    .target +Gramma Stonefield
    .goto Elwynn Forest,34.94,83.86
step
    #completewith next
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r. Loot them for |cRXP_LOOT_Gold Dust|r and |cRXP_LOOT_Kobold Candles|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
step
    .goto Elwynn Forest,43.132,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Billy|r
    .turnin 84 >> Turn in Back to Billy
    .accept 87 >> Accept Goldtooth
    .target Billy Maclure
step
    .goto Elwynn Forest,42.36,89.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Buy as much|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_as you can afford from him|r
    .vendor 258 >>Vendor Trash
    .target Joshua Maclure
    .itemcount 1179,<8
step
    #completewith Mine
    .goto Elwynn Forest,39.00,82.27,15 >>Enter the Fargodeep Mine
step
    #completewith Goldtooth
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for |cRXP_LOOT_Gold Dust|r and |cRXP_LOOT_Kobold Candles|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label Mine
    .goto Elwynn Forest,39.07,80.87,12,0
    .goto Elwynn Forest,39.71,79.92
    >>Enter one of the larger open spaces in Fargodeep Mine
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #completewith next
    .goto Elwynn Forest,39.95,78.81,12,0
    .goto Elwynn Forest,40.43,78.33,12,0
    .goto Elwynn Forest,41.73,78.03,40 >>Travel toward |cRXP_ENEMY_Goldtooth|r
step
    #label Goldtooth
    .goto Elwynn Forest,41.73,78.03
    >>Kill |cRXP_ENEMY_Goldtooth|r. Loot him for |cRXP_LOOT_Bernice's Necklace|r
    .complete 87,1 --Collect Bernice's Necklace (x1)
    .mob Goldtooth
step
#loop
	.line Elwynn Forest,39.14,82.87,39.16,84.79,37.81,85.40,36.76,83.19,38.02,81.70,39.14,82.87
	.goto Elwynn Forest,39.14,82.87,35,0
	.goto Elwynn Forest,39.16,84.79,35,0
	.goto Elwynn Forest,37.81,85.40,35,0
	.goto Elwynn Forest,36.76,83.19,35,0
	.goto Elwynn Forest,38.02,81.70,35,0
	.goto Elwynn Forest,39.14,82.87,35,0
    >>Kill |cRXP_ENEMY_Kobold Tunnelers|r and |cRXP_ENEMY_Kobold Miners|r. Loot them for |cRXP_LOOT_Gold Dust|r and |cRXP_LOOT_Kobold Candles|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
    .mob Kobold Miner
step << skip
    #completewith next
    .goto Elwynn Forest,41.29,79.85,-1
    .goto Elwynn Forest,41.75,78.49,-1
    .goto Elwynn Forest,41.91,77.81,-1
    .goto Elwynn Forest,40.15,80.12,-1
    .goto Elwynn Forest,39.90,81.46,-1
    .goto Elwynn Forest,40.86,81.24,-1
    .goto Elwynn Forest,40.32,79.31,-1
    .goto Elwynn Forest,39.30,60.48,30 >>|cRXP_WARN_Perform a Logout Skip inside the cave by jumping on top of a shredder, the floating logs, the crates, or the minecart light inside the cave, then log out and back in|r
    >>|cRXP_WARN_Alternatively, run back to Goldshire|r
    >>|cRXP_WARN_NOTE: Itemrack currently can cause problems after logout skipping where your ingame UI freezes. Make sure to disable the addon or make a /reload macro you can click when/if that happens|r
    .link https://www.youtube.com/watch?v=SWBtPqm5M0Q >>|cRXP_WARN_CLICK HERE to learn how to logout skip|r
step
    #completewith next
    .subzone 87 >> Return to Goldshire
step
    .goto Elwynn Forest,42.14,67.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Remy|r
    .turnin 47 >> Turn in Gold Dust Exchange
    .accept 40 >> Accept A Fishy Peril
    .target Remy "Two Times"
step
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dughan|r
    .turnin 40 >> Turn in A Fishy Peril
    .accept 35 >> Accept Further Concerns
    .turnin 62 >> Turn in The Fargodeep Mine
    .accept 76 >> Accept The Jasperlode Mine
    .target Marshal Dughan
step
    .goto Elwynn Forest,43.283,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_William|r through the wall as you enter the Inn
    .turnin 60 >> Turn in Kobold Candles
    .accept 61 >> Accept Shipment to Stormwind
    .turnin 107 >> Turn in Note to William
    .accept 112 >> Accept Collecting Kelp
    .target William Pestle
step
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farley|r
    >>|cRXP_BUY_Buy 35|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .vendor >>Vendor Trash
    .collect 1179,35,432,1 --Ice Cold Milk (35)
    .target Innkeeper Farley
step
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brog|r
    .vendor >>|cRXP_BUY_Buy a|r |T133634:0|t[Small Brown Pouch] |cRXP_BUY_from him|r
	.target Brog Hamfist
    .money <0.05
step
    #completewith next
    .goto Elwynn Forest,43.24,65.96,10,0
    .goto Elwynn Forest,42.88,65.52,12 >> Exit the Inn
step
    .goto Elwynn Forest,50.45,62.69,50,0
    .goto Elwynn Forest,51.09,64.75,50,0
    .goto Elwynn Forest,52.66,64.95,50,0
    .goto Elwynn Forest,54.10,62.74,50,0
    .goto Elwynn Forest,57.48,63.21,50,0
    .goto Elwynn Forest,56.37,66.50
    >>Kill |cRXP_ENEMY_Murloc Steamrunners|r and |cRXP_ENEMY_Murlocs|r. Loot them for |cRXP_LOOT_Crystal Kelp Frond|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Murloc Steamrunners|r have|r |T132307:0|t[Increased Movespeed]
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc Streamrunner
	.mob Murloc
step
    #completewith next
    .goto Elwynn Forest,61.66,53.96,12 >>Enter the Jasperlode Mine
step
    .goto Elwynn Forest,61.19,51.47,12,0
    .goto Elwynn Forest,60.68,50.84,12,0
    .goto Elwynn Forest,60.40,50.16
    >>Follow the middle path of the cave
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Kobold Geomancers|r cast|r |T135812:0|t[Fireball] |cRXP_WARN_(Ranged Cast: Deals about 30 damage)|r
    .complete 76,1 --Scout through the Jasperlode Mine
step
    #completewith next
    .goto Elwynn Forest,60.68,50.84,12,0
    .goto Elwynn Forest,61.19,51.47,12,0
    .goto Elwynn Forest,61.81,53.89,15 >>Exit the Jasperlode Mine
step
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas|r
    .turnin 35 >> Turn in Further Concerns
    .accept 37 >> Accept Find the Lost Guards
    .accept 52 >> Accept Protect the Frontier
    .target Guard Thomas
step
    #completewith next
    .goto Elwynn Forest,74.89,67.20,45,0
    .goto Elwynn Forest,72.59,65.60,45,0
    .goto Elwynn Forest,71.61,60.82,50,0
    >>Kill all |cRXP_ENEMY_Young Forest Bears|r you see and |cRXP_ENEMY_Prowlers|r
    .complete 52,2 --Kill Young Forest Bear (x5)
    .unitscan +Young Forest Bear
    .complete 52,1 --Kill Prowler (x8)
	.mob +Prowler
step
    .goto Elwynn Forest,72.65,60.33
	>>Click the |cRXP_PICK_half-eaten body|r on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    .turnin 37 >> Turn in Find the Lost Guards
    .accept 45 >> Accept Discover Rolf's Fate
step
    #completewith Bears
    .goto Elwynn Forest,78.78,60.94,70,0
    >>Kill all |cRXP_ENEMY_Young Forest Bears|r you see and |cRXP_ENEMY_Prowlers|r
    .complete 52,2 --Kill Young Forest Bear (x5)
    .unitscan +Young Forest Bear
    .complete 52,1 --Kill Prowler (x8)
	.mob +Prowler
step
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raelen|r
    .accept 5545 >> Accept A Bundle of Trouble
    .target Supervisor Raelen
step
    #completewith next
    >>Loot the |cRXP_PICK_Bundles Of Wood|r at the base of the trees
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    .goto Elwynn Forest,79.79,55.51,45 >> Travel toward |cRXP_PICK_Rolf's Corpse|r
    .isOnQuest 45
step
    .goto Elwynn Forest,79.79,55.51
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
	.goto Elwynn Forest,80.48,55.18,35,0
	.goto Elwynn Forest,80.88,53.88,35,0
	.goto Elwynn Forest,79.68,52.31,35,0
	.goto Elwynn Forest,80.86,52.17,35,0
	.goto Elwynn Forest,80.88,53.88,35,0
	.goto Elwynn Forest,80.48,55.18,35,0
	.goto Elwynn Forest,79.76,56.70,35,0
	.goto Elwynn Forest,80.15,60.03,35,0
	.goto Elwynn Forest,80.24,61.46,35,0
	.goto Elwynn Forest,81.27,61.59,35,0
	.goto Elwynn Forest,81.58,62.64,35,0
	.goto Elwynn Forest,82.79,60.12,35,0
	.goto Elwynn Forest,83.25,61.12,35,0
	.goto Elwynn Forest,83.48,59.19,35,0
	.goto Elwynn Forest,81.77,59.17,35,0
	.goto Elwynn Forest,80.48,55.18,35,0
    >>Loot the |cRXP_PICK_Bundles Of Wood|r at the base of the trees
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Raelen|r
    .turnin 5545 >> Turn in A Bundle of Trouble
    .target Supervisor Raelen
step
    #label Bears
    .goto Elwynn Forest,79.457,68.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara|r
    .accept 83 >> Accept Red Linen Goods
    .target Sara Timberlain
step
    .goto Elwynn Forest,75.05,72.54,0
    .goto Elwynn Forest,74.89,67.20,45,0
    .goto Elwynn Forest,75.75,74.57,45,0
    .goto Elwynn Forest,76.66,76.68,45,0
    .goto Elwynn Forest,79.27,79.44,45,0
    .goto Elwynn Forest,81.57,76.85,45,0
    .goto Elwynn Forest,74.89,67.20,45,0
    .goto Elwynn Forest,75.75,74.57,45,0
    .goto Elwynn Forest,76.66,76.68,45,0
    .goto Elwynn Forest,79.27,79.44,45,0
    .goto Elwynn Forest,81.57,76.85
    >>Kill all |cRXP_ENEMY_Young Forest Bears|r you see and |cRXP_ENEMY_Prowlers|r
    >>|cRXP_WARN_Deal 51%+ damage to |cRXP_ENEMY_Young Forest Bears|r and |cRXP_ENEMY_Prowlers|r, then pull them to the |cRXP_FRIENDLY_Stormwind Guard|r to kill them more efficiently|r
    .complete 52,2 --Kill Young Forest Bear (x5)
    .complete 52,1 --Kill Prowler (x8)
    .unitscan Young Forest Bear
    .mob Prowler
step
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas|r
    .turnin 52 >> Turn in Protect the Frontier
    .turnin 71 >> Turn in Report to Thomas
    .accept 39 >> Accept Deliver Thomas' Report
    .accept 109 >> Accept Report to Gryan Stoutmantle
    .target Guard Thomas
    .xp <9,1
step
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thomas|r
    .turnin 52 >> Turn in Protect the Frontier
    .turnin 71 >> Turn in Report to Thomas
    .accept 39 >> Accept Deliver Thomas' Report
    .target Guard Thomas
step
#loop
	.line Elwynn Forest,70.45,76.94,68.68,76.69,68.23,77.78,67.80,80.76,68.49,82.68,70.71,81.48,70.63,80.66,71.51,78.96,70.95,77.25,71.38,76.77,70.95,77.25,70.45,76.94
	.goto Elwynn Forest,70.45,76.94,40,0
	.goto Elwynn Forest,68.68,76.69,40,0
	.goto Elwynn Forest,68.23,77.78,40,0
	.goto Elwynn Forest,67.80,80.76,40,0
	.goto Elwynn Forest,68.49,82.68,40,0
	.goto Elwynn Forest,70.71,81.48,40,0
	.goto Elwynn Forest,70.63,80.66,40,0
	.goto Elwynn Forest,71.51,78.96,40,0
	.goto Elwynn Forest,70.95,77.25,40,0
	.goto Elwynn Forest,71.38,76.77,40,0
	.goto Elwynn Forest,70.95,77.25,40,0
	.goto Elwynn Forest,70.45,76.94,40,0
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
    .goto Elwynn Forest,69.89,79.52
    >>Kill |cRXP_ENEMY_Princess|r. Loot her for the |cRXP_LOOT_Brass Collar|r
    >>|cRXP_WARN_Remember to kite her using the fence|r
    .complete 88,1 --Collect Brass Collar (x1)
    .mob Princess
step
    .goto Elwynn Forest,79.457,68.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sara|r
    .turnin 83 >> Turn in Red Linen Goods
    .target Sara Timberlain
    .isQuestComplete 83
step << skip
    .goto Redridge Mountains,9.62,71.36
    .zone Redridge Mountains >> Travel into Redridge Mountains
    .isOnQuest 88
step << skip
    #completewith next
    +|cRXP_WARN_Carefully follow the road to |cRXP_FRIENDLY_Ariena|r. Avoid |cRXP_ENEMY_Tarantulas|r and |cRXP_ENEMY_Black Dragon Whelps|r en route|r
    .mob Black Dragon Whelp
    .mob Tarantula
step << skip
    .goto Redridge Mountains,30.59,59.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ariena|r
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
    .target Ariena Stormfeather
step
    #completewith next
    .hs >> Hearth to Goldshire
step
    .goto Elwynn Forest,43.283,65.721
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
    .goto Elwynn Forest,42.105,65.927
    .accept 1097 >> Accept Elmore's Task
    .target +Smith Argus
    .goto Elwynn Forest,41.706,65.544
step
    .goto Elwynn Forest,43.16,89.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Maybell|r inside
    .turnin 114 >> Turn in The Escape
    .target Maybell Maclure
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ma|r and |cRXP_FRIENDLY_Bernice|r
    .turnin 88,3 >> Turn in Princess Must Die!
    .target +Ma Stonefield
    .goto Elwynn Forest,34.660,84.482
    .turnin 87 >> Turn in Goldtooth
    .goto Elwynn Forest,34.486,84.253
    .target +"Auntie" Bernice Stonefield
step
#loop
	.line Elwynn Forest,31.15,85.36,33.08,86.64,33.51,85.22,32.17,83.88,31.15,85.36
	.goto Elwynn Forest,31.15,85.36,35,0
	.goto Elwynn Forest,33.08,86.64,35,0
	.goto Elwynn Forest,33.51,85.22,35,0
	.goto Elwynn Forest,32.17,83.88,35,0
	.goto Elwynn Forest,31.15,85.36,35,0
    .xp 9+4825 >> Grind to 4225+/6500xp
    .mob Stonetusk Boar
    .isOnQuest 184
step
#loop
	.line Elwynn Forest,31.15,85.36,33.08,86.64,33.51,85.22,32.17,83.88,31.15,85.36
	.goto Elwynn Forest,31.15,85.36,35,0
	.goto Elwynn Forest,33.08,86.64,35,0
	.goto Elwynn Forest,33.51,85.22,35,0
	.goto Elwynn Forest,32.17,83.88,35,0
	.goto Elwynn Forest,31.15,85.36,35,0
    .xp 9+4825 >> Grind to 4825+/6500xp
    .mob Stonetusk Boar
    .itemcount 1972,<1
step
    .goto Elwynn Forest,24.23,74.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Rainer|r
    .turnin 239 >> Turn in Westbrook Garrison Needs Help!
    .target Deputy Rainer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r and |cRXP_FRIENDLY_Verna|r
    .accept 64 >> Accept The Forgotten Heirloom
    .turnin 184 >> Turn in Furlbrow's Deed
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .accept 36 >> Accept Westfall Stew
    .accept 151 >> Accept Poor Old Blanchy
    .goto Westfall,59.91,19.41
    .target +Verna Furlbrow
    .isOnQuest 184
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Furlbrow|r and |cRXP_FRIENDLY_Verna|r
    .accept 64 >> Accept The Forgotten Heirloom
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .accept 36 >> Accept Westfall Stew
    .accept 151 >> Accept Poor Old Blanchy
    .target +Verna Furlbrow
    .goto Westfall,59.91,19.41
step
    #completewith next
    >>Open the |cRXP_PICK_Sacks of Oats|r on the ground. Loot them for |cRXP_LOOT_Handfuls of Oats|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 151,1 --Handful of Oats (8)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Farmer Saldean|r and then |cRXP_FRIENDLY_Salma|r inside
    .accept 9 >>Accept The Killing Fields
    .target +Farmer Saldean
    .goto Westfall,56.04,31.23
    .turnin 36 >> Turn in Westfall Stew
    .accept 38 >> Accept Westfall Stew
    .accept 22 >> Accept Goretusk Liver Pie
    .target +Salma Saldean
    .goto Westfall,56.42,30.52
step
    #completewith next
    >>|cRXP_WARN_Be VERY careful of |cRXP_ENEMY_Harvest Watchers|r and |cRXP_ENEMY_Harvest Golems|r en route|r
    .goto Westfall,56.33,47.52,20 >>Travel toward |cRXP_FRIENDLY_Gryan|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Gryan|r, |cRXP_FRIENDLY_Danuvin|r, and then |cRXP_FRIENDLY_Lewis|r inside
    .turnin 109 >> Turn in Report to Gryan Stoutmantle
    .accept 12 >> Accept The People's Militia
    .target +Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .accept 102 >> Accept Patrolling Westfall
    .target +Captain Danuvin
    .goto Westfall,56.42,47.62
    .accept 6181 >> Accept A Swift Message
    .goto Westfall,57.002,47.169
    .target +Quartermaster Lewis
step
    .goto Westfall,56.56,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >> Turn in A Swift Message
    .accept 6281 >> Accept Continue To Stormwind
    .target Thor
step
    #completewith next
    .goto Westfall,56.56,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind
	.target Thor
step
    #completewith next
    .goto StormwindClassic,63.10,65.18,20,0
    .goto StormwindClassic,58.13,59.40,20,0
    .goto StormwindClassic,57.06,61.83,20,0
    .goto StormwindClassic,56.55,64.79,12,0
    .goto StormwindClassic,56.20,64.60,12 >>Travel toward |cRXP_FRIENDLY_Morgan|r
step
    .goto StormwindClassic,56.20,64.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Morgan|r
    .turnin 61,1 >> Turn in Shipment to Stormwind
    .target Morgan Pestle
step
    .goto StormwindClassic,52.62,65.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Allison|r
    .home >> Set your Hearthstone to Stormwind City
    .target Innkeeper Allison
step << skip
    #completewith next
    .goto Stormwind City,51.68,59.86,8,0
    .goto Stormwind City,51.83,60.41,4,0
    .goto Stormwind City,51.59,60.15,6,0
    .goto Stormwind City,39.17,76.58,12,0
    >>|cRXP_WARN_Jump up onto the torch, then drop down to get under Stormwind|r
    >>|cRXP_WARN_With Shadows on "Fair" or "Low", get in the middle of Derek the Dinosaur's feet (the lighter part of the dirt) just before the blue void, then walk straight forward|r
    .goto Stormwind City,38.61,79.39,10 >>Travel toward |cRXP_FRIENDLY_Jennea|r
step << skip
    .goto Stormwind City,38.61,79.39
    >>Talk to |cRXP_FRIENDLY_Jennea|r
    .trainer >> Train your class spells (Frost Armor r2, Frost Nova, Polymorph, Conjure Water r1 & r2)
    >>Total Cost: 15s
    >>Remember you may want money for Healing Potions (3s each), Bronze Tube (8s each), and level 5 food (20c per 5)
    .target Jennea Cannon
step << skip
    #completewith next
    .goto Stormwind City,36.30,82.90,6 >>Go through the green portal
step << skip
    #completewith next
    .goto Stormwind City,42.07,79.44,30,0
    .goto Stormwind City,45.12,75.37,30,0
    .goto Stormwind City,44.33,70.20,30,0
    .goto Stormwind City,46.20,67.09,30,0
    .goto Stormwind City,49.44,63.25,30,0
    .goto Stormwind City,52.20,61.49,30,0
    .goto Stormwind City,55.46,65.26,10 >>Travel toward |cRXP_FRIENDLY_Keldric|r
step
    .goto Stormwind City,55.46,65.26
    >>Talk to |cRXP_FRIENDLY_Keldric|r through the wall
    >>|cRXP_WARN_NOTE: To do this, bind "Interact with Target" under Gameplay -> Controls in the Options menu|r
    .vendor 1257 >> |cRXP_BUY_Buy|r |T134830:0|t[Lesser Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .target Keldric Boucher
step
    #completewith next
    .goto StormwindClassic,57.32,59.15,10,0
    .goto StormwindClassic,58.17,57.90,12,0
    .goto StormwindClassic,57.81,54.73,12,0
    .goto StormwindClassic,60.05,51.60,12,0
    .goto StormwindClassic,67.54,46.88,12,0
    .goto StormwindClassic,71.01,48.62,12,0
    .goto StormwindClassic,74.31,47.22,12 >>Travel toward |cRXP_FRIENDLY_Osric|r
step
    .goto StormwindClassic,74.31,47.22
    >>Talk to |cRXP_FRIENDLY_Osric|r
    .turnin 6281 >> Turn in Continue to Stormwind
    .accept 6261 >> Accept Dungar Longdrink
    .target Osric Strang
step
    #completewith next
    .goto StormwindClassic,69.20,40.75,15,0
    .goto StormwindClassic,67.03,40.27,15,0
    .goto StormwindClassic,64.49,36.75,15,0
    .goto StormwindClassic,64.97,29.32,15,0
    .goto StormwindClassic,51.89,13.19,12,0
    .goto StormwindClassic,51.76,12.08,12 >>Travel toward |cRXP_FRIENDLY_Grimand|r
step
    .goto StormwindClassic,51.76,12.08
    >>Talk to |cRXP_FRIENDLY_Grimand|r
    .turnin 1097 >> Turn in Elmore's Task
    .accept 353 >> Accept Stormpike's Delivery
    .target Grimand Elmore
step
    .goto Stormwind City,55.25,7.07
    >>Talk to |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him if its up|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
    .money <0.08
step
    #completewith next
    .goto Stormwind City,63.89,8.25,20 >> Travel to the Deeprun Tram
step
    #completewith next
    +|cRXP_WARN_Ride the Deeprun Tram whilst spam casting|r |T132794:0|t[Conjure Water r2]
step
    #label Monty
    .goto Ironforge,76.41,51.22,30,0
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
    .goto Ironforge,67.83,42.47
    >>Talk to |cRXP_FRIENDLY_Cogspinner|r
    .vendor 5175 >>|cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him if its up|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith next
    .goto Ironforge,69.93,34.13,30,0
    .goto Ironforge,63.03,30.09,30,0
    .goto Ironforge,57.78,35.11,30,0
    .goto Ironforge,55.49,47.74,10 >>Travel toward |cRXP_FRIENDLY_Gryth|r
step
    .goto Ironforge,55.50,47.74
    >>Talk to |cRXP_FRIENDLY_Gryth|r
    .fp Ironforge >> Get the Ironforge flight path
    .target Gryth Thurden
step
    #completewith next
    .goto Ironforge,49.11,56.02,30,0
    .goto Ironforge,44.08,46.60,20,0
    .goto Ironforge,40.84,44.59,20,0
    .goto Ironforge,35.30,32.76,20,0
    .goto Ironforge,27.60,11.06,20,0
    .goto Ironforge,27.17,8.58,10 >>Travel toward |cRXP_FRIENDLY_Dink|r
step
    .goto Ironforge,27.17,8.58
    >>Talk to |cRXP_FRIENDLY_Dink|r
    .trainer >> Train your class spells (Frost Armor r2, Frost Nova, Polymorph, Conjure Water r1 & r2)
    >>Total Cost: 15s
    >>Remember you may want money for Healing Potions (3s each), Bronze Tube (8s each), and level 5 food (20c per 5)
    .target Dink
step
    #completewith next
    .goto Ironforge,27.25,12.79,20,0
    .goto Ironforge,22.59,38.13,20,0
    .goto Ironforge,20.40,53.19,20,0
    >>Go inside the building
    .goto Ironforge,18.14,51.45,10 >>Travel toward |cRXP_FRIENDLY_Firebrew|r
step
    #label IFHS
    .goto Ironforge,18.14,51.45
    >>Talk to |cRXP_FRIENDLY_Firebrew|r
    .home >> Set your Hearthstone to Ironforge
    .target Innkeeper Firebrew
step
    #completewith BankDeposit
    .goto Ironforge,33.05,63.11,20,0
    .goto Ironforge,35.93,60.13,30 >>Enter the Ironforge Bank
step
    .goto Ironforge,35.93,60.13
    >>Talk to |cRXP_FRIENDLY_Bailey|r
    .bankdeposit 4371,16115 >> Deposit the following items into the bank:
    >>|T133024:0|t[Bronze Tube]
    >>|T132763:0|t[Osric's Crate]
    .target Bailey Stonemantle
step << skip
    .goto Ironforge,36.35,57.88
    .goto Dun Morogh,53.03,35.71,10 >>|cRXP_WARN_Jump on top of the sides of the vault. Logout skip to Dun Morogh|r
    .isQuestAvailable 314
step
    .goto Ironforge,15.16,85.70,20,0
    .goto Dun Morogh,59.84,49.56
    .zone Dun Morogh >> Exit Ironforge
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Human Mage
#name 10-11 ADV Dun Morogh Human Mage AoE
#version 2
#group RestedXP ADV AoE Alliance Mage
#defaultfor Human Mage
#next 10-12 ADV Darkshore 1 Mage AoE

step
    #completewith Rudra
    #label Dirt
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>Go up the dirt path
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Kite |cRXP_ENEMY_Vagash|r down to|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_CLICK HERE If you're struggling|r
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.08,49.85
    >>Talk to |cRXP_FRIENDLY_Rudra|r
    .accept 314 >> Accept Protecting the Herd
    .target Rudra Amberstill
step
    .goto Dun Morogh,62.57,46.14,0
    .goto Dun Morogh,62.78,54.60,40,0
    .goto Dun Morogh,62.82,55.73
    >>Kill |cRXP_ENEMY_Vagash|r. Loot him for the |cRXP_LOOT_Fang of Vagash|r
    >>|cRXP_WARN_Kite |cRXP_ENEMY_Vagash|r down to the |cRXP_FRIENDLY_Dun Morogh Mountaineer|r south of the ranch. Make sure you do 51%+ damage to him|r
    >>|cRXP_WARN_Remember to get The Tundrid Hills explore xp and pull the |cRXP_ENEMY_Snow Leopard|r to the |cRXP_FRIENDLY_Dun Morogh Mountaineer|r if convenient|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto Dun Morogh,63.08,49.85
    >>Talk to |cRXP_FRIENDLY_Rudra|r
    .turnin 314,3 >> Turn in Protecting the Herd
    .target Rudra Amberstill
step
    #completewith Ghilm
    +|cRXP_WARN_Remember to save|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_you get for leveling|r |T133971:0|t[Cooking] |cRXP_WARN_to 50 later|r
step
    #completewith next
    .goto Dun Morogh,66.34,50.92,50,0
    .goto Dun Morogh,67.72,53.66,30,0
    +|cRXP_WARN_Kite the |cRXP_ENEMY_Ice Claw Bear|r to the |cRXP_FRIENDLY_Ironforge Mountaineer|r (make sure to deal 51%+ damage to get credit)|r
    >>|cRXP_WARN_Be careful as they cast|r |T135853:0|t[Ice Claw] |cRXP_WARN_(Melee Instant: Deals an additional 4 melee damage)|r
    .mob Ice Claw Bear
step
    #sticky
    #label Ghilm
    .goto Dun Morogh,68.40,54.45,0,0
    >>Talk to |cRXP_FRIENDLY_Ghilm|r
    .train 2550 >> Train |T133971:0|t[Cooking]
    .target Cook Ghilm
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
    >>Talk to |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Buy 15|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .collect 1179,15,432,1 --Ice Cold Milk (15)
    .target Kazan Mogosh
    .money <0.0395
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
    >>Talk to |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Buy 10|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .collect 1179,10,432,1 --Ice Cold Milk (10)
    .target Kazan Mogosh
    .money <0.0260
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
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
    .goto Dun Morogh,68.67,55.97
    .accept 432 >> Accept Those Blasted Troggs!
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
step
    #completewith Bonesnappers
    >>Kill |cRXP_ENEMY_Rockjaw Skullthumpers|r
    >>|cRXP_WARN_Don't go out of your way to kill them|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #completewith next
    .goto Dun Morogh,70.74,56.23,30 >>Enter the cave
step
    #label Bonesnappers
    .goto Dun Morogh,70.98,54.31,40,0
    .goto Dun Morogh,70.83,53.17,40,0
    .goto Dun Morogh,71.94,50.48,40,0
    .goto Dun Morogh,72.55,51.50,40,0
    .goto Dun Morogh,72.62,52.56
    >>Kill |cRXP_ENEMY_Rockjaw Bonesnappers|r inside the cave
    >>|cRXP_WARN_Be careful as they cast|r |T132154:0|t[Knockdown] |cRXP_WARN_(Melee Instant: Stuns for 2 seconds)|r
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Bonesnapper
step
    .goto Dun Morogh,70.74,56.23,30,0
#loop
	.line Dun Morogh,69.93,57.29,70.57,58.61,69.68,59.37,68.36,59.57,69.16,57.51,69.93,57.29
	.goto Dun Morogh,69.93,57.29,30,0
	.goto Dun Morogh,70.57,58.61,30,0
	.goto Dun Morogh,69.68,59.37,30,0
	.goto Dun Morogh,68.36,59.57,30,0
	.goto Dun Morogh,69.16,57.51,30,0
	.goto Dun Morogh,69.93,57.29,30,0
    >>Kill |cRXP_ENEMY_Rockjaw Skullthumpers|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #sticky
    #label Frast
    .goto Dun Morogh,68.87,55.96,0,0
    >>Talk to |cRXP_FRIENDLY_Frast|r
    .vendor >> Vendor Trash
    .target Frast Dokner
    .isQuestAvailable 419
step
    >>Talk to |cRXP_FRIENDLY_Stonebrow|r and |cRXP_FRIENDLY_Mehr|r
    .turnin 432 >> Turn in Those Blasted Troggs!
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> Turn in The Public Servant
    .goto Dun Morogh,68.67,55.97
    .target +Senator Mehr Stonehallow
step
    #requires Frast
    .goto Dun Morogh,69.33,55.46
    >>Talk to |cRXP_FRIENDLY_Dank|r
    .train 2575 >> Train |T136248:0|t[Mining]
    .target Dank Drizzlecut
step
    #label Shortcut1
    #completewith Pilot
    .goto Dun Morogh,70.35,55.28,5,0
    .link https://youtu.be/G2IscpFZVeQ?t=4034 >>|cRXP_WARN_CLICK HERE if you're struggling|r
    .goto Dun Morogh,70.52,54.75,12 >>Take the shortcut up behind |cRXP_FRIENDLY_Dank|r
step
    #completewith Pilot
    #requires Shortcut1
    #label Shortcut2
    .goto Dun Morogh,70.97,50.70,50,0
    .goto Dun Morogh,72.90,49.79,50,0
    .goto Dun Morogh,77.11,48.82,50 >>|cRXP_WARN_Kite the nearby |cRXP_ENEMY_Rockjaw Ambushers|r to the |cRXP_FRIENDLY_Ironforge Mountaineers|r that can patrol on the road (make sure to deal 51%+ damage to get credit)|r
    .mob Rockjaw Ambusher
    .unitscan Ironforge Mountaineer
step
    #requires Shortcut2
    #completewith next
    .goto Dun Morogh,81.23,42.66,50,0
    .goto Dun Morogh,83.01,40.31,30 >>Kite a |cRXP_ENEMY_Scarred Crag Boar|r through the tunnel
    >>|cRXP_WARN_Be careful as they cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)|r
    .mob Scarred Crag Boar
step
    #label Pilot
    .goto Dun Morogh,83.89,39.19
    >>Talk to |cRXP_FRIENDLY_Hammerfoot|r
    .accept 419 >> Accept The Lost Pilot
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,81.37,37.02,30,0
    .goto Dun Morogh,79.67,36.17
    >>Click the |cRXP_PICK_Dwarven Corpse|r on the ground
    >>|cRXP_WARN_MAKE SURE You have a free inventory slot. |cRXP_ENEMY_Mangeclaw|r will not come down if you do not accept the next quest|r
    >>|cRXP_WARN_REMEMBER You're kiting |cRXP_ENEMY_Mangeclaw|r back to |cRXP_FRIENDLY_Hammerfoot|r
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step
    .goto Dun Morogh,78.41,37.80,60,0
    .goto Dun Morogh,83.89,39.19
    >>Kill |cRXP_ENEMY_Mangeclaw|r. Loot him for the |cRXP_LOOT_Mangy Claw|r
    >>|cRXP_WARN_Kite him all the way over to |cRXP_FRIENDLY_Hammerfoot|r (make sure to deal 51%+ damage to get credit)|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,83.892,39.188
    >>Talk to |cRXP_FRIENDLY_Hammerfoot|r
    .turnin 417,1 >> Turn in A Pilot's Revenge
    .target Pilot Hammerfoot
step
    #label Tunnel1
    #completewith Barleybrew
    .goto Dun Morogh,83.01,40.31,30,0
    .goto Dun Morogh,81.23,42.66,30 >>Run back through the tunnel
step
    #requires Tunnel1
    #completewith Barleybrew
    .goto Dun Morogh,79.61,49.94,20,0
    .goto Dun Morogh,81.10,49.76,20,0
    .goto Dun Morogh,81.60,50.01,20,0
    .goto Dun Morogh,83.59,49.18,20,0
    >>Kite a |cRXP_ENEMY_Scarred Crag Boar|r en route
    .goto Dun Morogh,84.26,48.93,20 >>Do the Mountain Skip. Remember to drop down carefully
    .mob Scarred Crag Boar
step
    .goto Loch Modan,19.01,61.88
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
    .goto Loch Modan,22.071,73.127
    >>Talk to |cRXP_FRIENDLY_Cobbleflint|r
    .accept 224 >> Accept In Defense of the King's Lands
    .target Mountaineer Cobbleflint
step
    #optional
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >> Enter the Bunker. Go to the top floor
step
    #label Rugelfuss
    .goto Loch Modan,23.233,73.675
    >>Talk to |cRXP_FRIENDLY_Rugelfuss|r
    .accept 267 >> Accept The Trogg Threat
    .target Captain Rugelfuss
step << skip
    #completewith next
    .goto Loch Modan,21.49,68.14,20,0
    .goto Loch Modan,20.86,64.46,20,0
    .goto Loch Modan,19.50,62.56,30 >>Go back into the Tunnel
step << skip
    .goto Loch Modan,18.84,61.48
    .link https://www.youtube.com/watch?v=AOAlX9B5aO0 >>|cRXP_WARN_CLICK HERE If you're struggling|r
    .goto Loch Modan,32.19,46.95,30 >>|cRXP_WARN_Jumping Logout Skip from the Brazier inside the tunnel to Thelsamar|r
    .isOnQuest 267
step
    #completewith next
    .subzone 144 >> Travel to Thelsamar
step
    .goto Loch Modan,32.93,49.51,40,0
    .goto Loch Modan,34.49,47.44,40,0
    .goto Loch Modan,37.05,46.11,40,0
    .goto Loch Modan,37.39,45.17,40,0
    .goto Loch Modan,37.12,42.79
    >>Talk to |cRXP_FRIENDLY_Kadrell|r
    >>|cRXP_FRIENDLY_Kadrell|r |cRXP_WARN_patrols along the main Thelsamar road|r
    .accept 416 >> Accept Rat Catching
    .accept 1339 >> Accept Mountaineer Stormpike's Task
    .target Mountaineer Kadrell
step
    #completewith next
    .goto Loch Modan,33.94,50.96
    >>Talk to |cRXP_FRIENDLY_Thorgrum|r
    .fp Thelsamar >> Get the Thelsamar flight path
    .fly Ironforge >> Fly to Ironforge
    .target Thorgrum Borrelson
step
    .zone Ironforge >> Travel to Ironforge
    .isOnQuest 416
step << skip
    #completewith next
    .goto Ironforge,43.83,59.58,20,0
    .goto Ironforge,38.27,71.43,20,0
    .goto Ironforge,33.70,76.24,10 >>|cRXP_WARN_Travel toward the Logout Skip spot|r
step << skip
    .goto Ironforge,33.70,76.24
    .zone Dun Morogh >>|cRXP_WARN_Position your character until it looks like they're floating on the edge of the metal railing. Logout skip to Dun Morogh|r
    .isOnQuest 416
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
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
    .goto Dun Morogh,29.927,71.201
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
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Adlin Pridedrift|r
    >>Vendor Trash
    >>|cRXP_BUY_Buy 15|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Grind extra |cRXP_ENEMY_Ragged Young Wolves|r if you don't have enough money|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step
    #season 2
    .goto Dun Morogh,30.087,71.563
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
    .goto Dun Morogh,29.927,71.201
    .accept 170 >> Accept A New Threat
    .goto Dun Morogh,29.71,71.25
    .target +Balir Frosthammer
step
    #xprate >1.09
    .goto Dun Morogh,29.927,71.201
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
    .goto Dun Morogh,26.733,72.552
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
    .goto Dun Morogh,28.709,66.366
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
    .goto Dun Morogh,22.601,71.433
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
    .goto Dun Morogh,22.601,71.433
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
    .goto Dun Morogh,26.73,79.72,30 >>Enter the cave
    .isOnQuest 182
step
    .goto Dun Morogh,27.30,80.85,20,0
    .goto Dun Morogh,28.29,79.85,20,0
    .goto Dun Morogh,29.34,79.09,30,0
    .goto Dun Morogh,28.29,79.85,20,0
    .goto Dun Morogh,27.30,80.85,20,0
    .goto Dun Morogh,28.29,79.85,20,0
    .goto Dun Morogh,29.34,79.09,30,0
    .goto Dun Morogh,28.29,79.85,20,0
    .goto Dun Morogh,27.30,80.85,20,0
    .goto Dun Morogh,28.29,79.85,20,0
    .goto Dun Morogh,29.34,79.09,30,0
    .goto Dun Morogh,28.29,79.85
    >>Kill |cRXP_ENEMY_Frostmane Troll Whelps|r inside the cave
    >>|cRXP_WARN_Clear a path to just before the Frozen Lake room|r
    .complete 182,1,10 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step
    .goto Dun Morogh,28.29,79.85,50,0
    .goto Dun Morogh,27.30,80.85,40,0
    .goto Dun Morogh,25.78,78.31,40,0
    .goto Dun Morogh,27.12,78.68,40,0
    .goto Dun Morogh,25.95,80.39,40,0
    .goto Dun Morogh,25.78,78.31
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
    .goto Dun Morogh,25.076,75.713,-1
    .target +Grelin Whitebeard
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .goto Dun Morogh,24.98,75.96,-1
    .target +Nori Pridedrift
step
    >>Talk to |cRXP_FRIENDLY_Grelin Whitebeard|r
    >>|cRXP_WARN_Make sure you have 3 inventory slots for these turnins/accepts|r
    .turnin 182,4 >> Turn in The Troll Cave
    .accept 218 >> Accept The Stolen Journal
    .goto Dun Morogh,25.076,75.713
    .target +Grelin Whitebeard
step
    .goto Dun Morogh,26.73,79.72,40,0
    .goto Dun Morogh,29.34,79.09,30,0
    .goto Dun Morogh,29.67,79.68,10 >>|cRXP_WARN_Enter the Cave. Run through the path you cleared (without fighting if possible) toward the Frozen Lake inside|r
    .isOnQuest 218
step
    .goto Dun Morogh,30.48,80.16
    >>|cRXP_WARN_Kill the |cRXP_ENEMY_Frostmane Troll Whelp|r in front of you|r
    >>Kill |cRXP_ENEMY_Grik'nir the Cold|r. Loot him for |cRXP_LOOT_Grelin Whitebeard's Journal|r
    >>|cRXP_WARN_Be careful as he casts|r |T135849:0|t[Frost Shock] |cRXP_WARN_(Range Instant: Deals 10 Frost damage and slows movespeed by 50% for 8 seconds)|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
step << skip
    #completewith Rybrad
    #label LogoutSkip1
    .goto Dun Morogh,29.63,79.50
    .goto Dun Morogh,29.76,69.66,30 >>|cRXP_WARN_Position your character until it looks like they're floating on the edge of the cliff above the Frozen Lake, then logout skip back to Anvilmar|r
    .isOnQuest 218
step
    >>Talk to |cRXP_FRIENDLY_Grelin Whitebeard|r and |cRXP_FRIENDLY_Nori Pridedrift|r
    .turnin 218 >> Turn in The Stolen Journal
    .accept 282 >> Accept Senir's Observations
    .goto Dun Morogh,25.076,75.713,-1
    .target +Grelin Whitebeard
    .accept 3364 >> Accept Scalding Mornbrew Delivery
    .goto Dun Morogh,24.98,75.96,-1
    .target +Nori Pridedrift
step
    #completewith Rybrad
    #requires LogoutSkip1
    #label LogoutSkip2
    .goto Dun Morogh,28.79,69.04,20,0
    .goto Dun Morogh,28.63,68.43,10 >>Enter Anvilmar
    .isOnQuest 218,3364
step
    #label Rybrad
    .goto Dun Morogh,28.66,67.74
    >>Talk to |cRXP_FRIENDLY_Rybrad Coldbank|r
    .vendor >> Vendor Trash
    .target Rybrad Coldbank
    .isOnQuest 218,3364
step
    >>Talk to |cRXP_FRIENDLY_Durnan Furcutter|r and |cRXP_FRIENDLY_Marryk Nurribit|r
    .turnin 3364 >> Turn in Scalding Mornbrew Delivery
    .accept 3365 >> Accept Bring Back the Mug
    .goto Dun Morogh,28.77,66.37
    .target +Durnan Furcutter
    .turnin 3114 >> Turn in Glyphic Memorandum
    .trainer >> Train your class spells (Arcane Intellect, Frostbolt)
    .goto Dun Morogh,28.709,66.366
    .target +Marryk Nurribit
    .isQuestAvailable 420
step
    #optional
    #xprate <1.1
    .goto Dun Morogh,29.71,71.25
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
    -- .goto Dun Morogh,25.076,75.713
    -- .target +Grelin Whitebeard
    .turnin 3365 >> Turn in Bring Back the Mug
    .goto Dun Morogh,24.98,75.96
    .target +Nori Pridedrift
step
    #xprate <1.1
    #requires TroggEnd
    .goto Dun Morogh,29.71,71.25
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
    .goto Dun Morogh,33.484,71.841
    .target +Mountaineer Thalos
    .accept 2160 >> Accept Supplies to Tannok
    .goto Dun Morogh,33.85,72.24
    .target +Hands Springsprocket
step
    #xprate <1.1
    #optional
    #completewith StockingJ
    .abandon 170 >> Abandon A New Threat
step
    .goto Dun Morogh,34.32,70.95,15,0
    .goto Dun Morogh,35.65,65.79,15 >> Travel through Coldridge Pass
    .subzoneskip 800,1
    .isOnQuest 2160
step
    #completewith StockingJ
    .goto Dun Morogh,36.51,62.94,40,0
    >>Kill |cRXP_ENEMY_Crag Boars|r. Loot them for |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r and |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_Be careful as they cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 25-70 melee damage on hit. Only castable at range)|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
step
    .goto Dun Morogh,37.97,61.87,30,0
    .goto Dun Morogh,39.89,59.26,45 >> |cRXP_WARN_Deal 51%+ damage to nearby |cRXP_ENEMY_Juvenile Snow Leopards|r and |cRXP_ENEMY_Young Black Bears|r, then pull them to the |cRXP_FRIENDLY_Ironforge Mountaineer|r to kill them more efficiently|r
    .mob Juvenile Snow Leopard
    .mob Young Black Bear
    .target Ironforge Mountaineer
    .isOnQuest 2160
step
    #completewith next
    .goto Dun Morogh,43.44,55.64,50,0
    .goto Dun Morogh,44.14,52.64,50,0
    .goto Dun Morogh,46.021,51.676,20 >>Travel toward |cRXP_FRIENDLY_Tharek|r
step
    .goto Dun Morogh,46.021,51.676
    >>Talk to |cRXP_FRIENDLY_Tharek|r
    .accept 400 >> Accept Tools for Steelgrill
    .target Tharek Blackstone
step
    #label StockingJ
    .goto Dun Morogh,49.426,48.410
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
    .goto Dun Morogh,49.622,48.612
    .turnin 400 >> Turn in Tools for Steelgrill
    .target +Beldin Steelgrill
    .goto Dun Morogh,50.45,49.09
    .accept 5541 >> Accept Ammo for Rumbleshot
    .vendor >> Vendor Trash
    .goto Dun Morogh,50.084,49.420
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
    .goto Dun Morogh,50.39,51.67,50,0
    .goto Dun Morogh,50.37,53.05,50,0
    .goto Dun Morogh,49.18,50.97,50,0
    .goto Dun Morogh,45.37,49.50,50,0
    .goto Dun Morogh,43.69,52.05,50,0
    .goto Dun Morogh,45.18,54.38,50,0
    .goto Dun Morogh,45.16,57.81,50,0
    .goto Dun Morogh,50.39,51.67,50,0
    .goto Dun Morogh,50.37,53.05,50,0
    .goto Dun Morogh,49.18,50.97,50,0
    .goto Dun Morogh,45.37,49.50,50,0
    .goto Dun Morogh,43.69,52.05,50,0
    .goto Dun Morogh,45.18,54.38,50,0
    .goto Dun Morogh,45.16,57.81,50,0
    .goto Dun Morogh,50.39,51.67,50,0
    .goto Dun Morogh,50.37,53.05,50,0
    .goto Dun Morogh,49.18,50.97,50,0
    .goto Dun Morogh,45.37,49.50,50,0
    .goto Dun Morogh,43.69,52.05,50,0
    .goto Dun Morogh,45.18,54.38
    >>Kill |cRXP_ENEMY_Young Black Bears|r and |cRXP_ENEMY_Ice Claw Bears|r. Loot them for their |cRXP_LOOT_Thick Bear Fur|r
    >>|cRXP_WARN_Kite |cRXP_ENEMY_Young Black Bears|r and |cRXP_ENEMY_Ice Claw Bears|r to nearby |cRXP_FRIENDLY_Ironforge Mountaineers|r (make sure to deal 51%+ damage to get credit)|r
    >>|cRXP_WARN_Be careful as they cast|r |T135853:0|t[Ice Claw] |cRXP_WARN_(Melee Instant: Deals an additional 4 melee damage)|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob Young Black Bear
    .mob Ice Claw Bear
step
#loop
	.line Dun Morogh,51.70,49.66,51.08,52.42,51.43,53.21,50.06,51.66,49.56,50.82,48.12,49.10,48.21,46.93,45.48,50.04,44.07,52.50,43.69,55.59,42.78,56.86,44.45,59.33,46.31,61.85,46.26,59.49,48.08,59.05,49.40,58.97,48.30,56.86,49.09,54.74,49.61,54.32,51.43,53.21
	.goto Dun Morogh,51.70,49.66,40,0
	.goto Dun Morogh,51.08,52.42,40,0
	.goto Dun Morogh,51.43,53.21,40,0
	.goto Dun Morogh,50.06,51.66,40,0
	.goto Dun Morogh,49.56,50.82,40,0
	.goto Dun Morogh,48.12,49.10,40,0
	.goto Dun Morogh,48.21,46.93,40,0
	.goto Dun Morogh,45.48,50.04,40,0
	.goto Dun Morogh,44.07,52.50,40,0
	.goto Dun Morogh,43.69,55.59,40,0
	.goto Dun Morogh,42.78,56.86,40,0
	.goto Dun Morogh,44.45,59.33,40,0
	.goto Dun Morogh,46.31,61.85,40,0
	.goto Dun Morogh,46.26,59.49,40,0
	.goto Dun Morogh,48.08,59.05,40,0
	.goto Dun Morogh,49.40,58.97,40,0
	.goto Dun Morogh,48.30,56.86,40,0
	.goto Dun Morogh,49.09,54.74,40,0
	.goto Dun Morogh,49.61,54.32,40,0
	.goto Dun Morogh,51.43,53.21,40,0
    >>Kill |cRXP_ENEMY_Crag Boars|r and |cRXP_ENEMY_Large Crag Boars|r. Loot them for |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r and |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_Be careful as they cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 25-70 melee damage on hit. Only castable at range)|r
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob Crag Boar
    .mob Large Crag Boar
step
    .goto Dun Morogh,49.426,48.410
    >>Talk to |cRXP_FRIENDLY_Bellowfiz|r
    .turnin 317 >> Turn in Stocking Jetsteam
    .accept 318 >> Accept Evershine
    .target Pilot Bellowfiz
step
#loop
	.line Dun Morogh,51.70,49.66,51.08,52.42,51.43,53.21,50.06,51.66,49.56,50.82,48.12,49.10,48.21,46.93,45.48,50.04,44.07,52.50,43.69,55.59,42.78,56.86,44.45,59.33,46.31,61.85,46.26,59.49,48.08,59.05,49.40,58.97,48.30,56.86,49.09,54.74,49.61,54.32,51.43,53.21
	.goto Dun Morogh,51.70,49.66,40,0
	.goto Dun Morogh,51.08,52.42,40,0
	.goto Dun Morogh,51.43,53.21,40,0
	.goto Dun Morogh,50.06,51.66,40,0
	.goto Dun Morogh,49.56,50.82,40,0
	.goto Dun Morogh,48.12,49.10,40,0
	.goto Dun Morogh,48.21,46.93,40,0
	.goto Dun Morogh,45.48,50.04,40,0
	.goto Dun Morogh,44.07,52.50,40,0
	.goto Dun Morogh,43.69,55.59,40,0
	.goto Dun Morogh,42.78,56.86,40,0
	.goto Dun Morogh,44.45,59.33,40,0
	.goto Dun Morogh,46.31,61.85,40,0
	.goto Dun Morogh,46.26,59.49,40,0
	.goto Dun Morogh,48.08,59.05,40,0
	.goto Dun Morogh,49.40,58.97,40,0
	.goto Dun Morogh,48.30,56.86,40,0
	.goto Dun Morogh,49.09,54.74,40,0
	.goto Dun Morogh,49.61,54.32,40,0
	.goto Dun Morogh,51.43,53.21,40,0
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
    .goto Dun Morogh,46.83,52.36
    >>Talk to |cRXP_FRIENDLY_Ragnar|r
    .accept 384 >> Accept Beer Basted Boar Ribs
    .target Ragnar Thunderbrew
step
    #completewith next
    .goto Dun Morogh,46.97,51.99,10,0
    .goto Dun Morogh,47.50,52.08,12 >>Go inside
step
    .goto Dun Morogh,47.217,52.195
    >>Talk to |cRXP_FRIENDLY_Tannok|r
    .turnin 2160,2 >> Turn in Supplies to Tannok
    .target Tannok Frosthammer
    .xp >6,1
step
    #completewith next
    .goto Dun Morogh,46.97,51.99,10,0
    .goto Dun Morogh,47.50,52.08,12 >>Go inside
step
    #sticky
    #label Tannok
    .goto Dun Morogh,47.217,52.195,0,0
    >>Talk to |cRXP_FRIENDLY_Tannok|r
    .turnin 2160,2 >> Turn in Supplies to Tannok
    .target Tannok Frosthammer
step
    .goto Dun Morogh,47.50,52.08
    >>Talk to |cRXP_FRIENDLY_Magis|r upstairs
    .trainer >> Train your class spells (Fireball R2, Fire Blast)
    .target Magis Sparkmantle
    .isQuestAvailable 312
step
    #completewith Golorn
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    .home >> Set your Hearthstone to Thunderbrew Distillery
    .target Innkeeper Belm
    .isQuestAvailable 312
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Buy a|r |T132800:0|t[Rhapsody Malt] |cRXP_BUY_from him|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6
    .money <0.0050
step
    #requires Tannok
    .goto Dun Morogh,46.83,52.36
    >>Talk to |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >> Turn in Beer Basted Boar Ribs
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Buy 20|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .collect 1179,20,312,1 --Ice Cold Milk (20)
    .target Innkeeper Belm
    .money <0.0582
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Buy 15|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .collect 1179,15,312,1 --Ice Cold Milk (15)
    .target Innkeeper Belm
    .money <0.0457
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Buy 10|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Innkeeper Belm
    .money <0.0332
step
    #label InnLS1
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Buy 5|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .collect 1179,5,312,1 --Ice Cold Milk (5)
    .target Innkeeper Belm
    .money <0.0207
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Buy 20|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,20,312,1 --Refreshing Spring Water (20)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0182
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Buy 15|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,15,312,1 --Refreshing Spring Water (15)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0157
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,10,312,1 --Refreshing Spring Water (10)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0132
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Buy 5|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .collect 159,5,312,1 --Refreshing Spring Water (5)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0107
step << skip
    #completewith SenirO
    .goto Dun Morogh,47.46,52.60,-1
    .goto Dun Morogh,47.13,54.91,35 >>|cRXP_WARN_Jump up on top of the barrels on the wall behind |cRXP_FRIENDLY_Belm|r. Logout Skip to Kharanos|r
step
    #sticky
    #label Golorn
    .goto Dun Morogh,46.77,53.72,-1
    >>Talk to |cRXP_FRIENDLY_Golorn|r
    >>|cRXP_BUY_Buy a|r |T135637:0|t[Skinning Knife] |cRXP_BUY_from him|r
    .collect 7005,1,312,1 --Skinning Knife (1)
    .target Golorn Frostbeard
step
    #label SenirO
    .goto Dun Morogh,46.726,53.826,-1
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
	.goto Dun Morogh,42.57,54.80,10,0
	.goto Dun Morogh,41.89,54.51,10,0
	.goto Dun Morogh,42.13,52.68,10,0
	.goto Dun Morogh,42.46,51.96,10,0
	.goto Dun Morogh,41.91,51.43,10,0
	.goto Dun Morogh,42.46,51.96,10,0
	.goto Dun Morogh,42.13,52.68,10,0
	.goto Dun Morogh,42.57,54.80,10,0
    >>Kill |cRXP_ENEMY_Young Wendigos|r and |cRXP_ENEMY_Wendigos|r. Loot them for their |cRXP_LOOT_Wendigo Manes|r
    >>|cRXP_WARN_Be careful as they cast|r |T135848:0|t[Frost Breath] |cRXP_WARN_(Melee Cast: Deals 6-10 Frost damage) and have increased|r |T135849:0|t[Frost Resistance]
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Young Wendigo
    .mob Wendigo
step
    .goto Dun Morogh,44.13,56.95
    >>Open the |cRXP_PICK_Ammo Crate|r on the ground. Loot it for |cRXP_LOOT_Rumbleshot's Ammo|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #completewith Ammo
    .goto Dun Morogh,40.60,62.24,45,0
    >>Kill |cRXP_ENEMY_Crag Boars|r and |cRXP_ENEMY_Juvenile Snow Leopards|r en route
    >>Loot the |cRXP_ENEMY_Crag Boars|r for their |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Crag Boars|r cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 25-70 melee damage on hit. Only castable at range)|r
    .complete 384,1 --Crag Boar Rib (6)
    .disablecheckbox
    .goto Dun Morogh,40.682,65.130,20 >>Travel toward |cRXP_FRIENDLY_Hegnar|r
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .xp >7-1000,1
    .isQuestAvailable 384
step
    #completewith Ammo
    .goto Dun Morogh,40.60,62.24,45,0
    >>Kill |cRXP_ENEMY_Crag Boars|r and |cRXP_ENEMY_Juvenile Snow Leopards|r en route
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Crag Boars|r cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 25-70 melee damage on hit. Only castable at range)|r
    .goto Dun Morogh,40.682,65.130,20 >>Travel toward |cRXP_FRIENDLY_Hegnar|r
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .xp >7-1000,1
    .isQuestTurnedIn 384
step
    #completewith next
    .goto Dun Morogh,40.60,62.24,45,0
    .goto Dun Morogh,40.682,65.130,20 >>Travel toward |cRXP_FRIENDLY_Hegnar|r
    .xp <7-1000,1
step
    #label Ammo
    .goto Dun Morogh,40.682,65.130
    >>Talk to |cRXP_FRIENDLY_Hegnar|r
    .turnin 5541 >> Turn in Ammo for Rumbleshot
    .vendor >> Vendor Trash
    .target Hegnar Rumbleshot
    .isQuestAvailable 312
step
    #completewith TundraOne
    .goto Dun Morogh,37.98,61.90,50,0
    .goto Dun Morogh,35.11,56.78,45,0
    .goto Dun Morogh,35.62,54.73,50,0
    .goto Dun Morogh,36.38,52.49,40,0
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
    .goto Dun Morogh,37.98,61.90,50,0
    .goto Dun Morogh,35.11,56.78,45,0
    .goto Dun Morogh,35.62,54.73,50,0
    .goto Dun Morogh,36.38,52.49,40,0
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
    .goto Dun Morogh,34.57,51.66
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
    .goto Dun Morogh,30.19,45.73
    .accept 310 >> Accept Bitter Rivals
    .goto Dun Morogh,30.186,45.531
    .target +Marleth Barleybrew
step
    .goto Dun Morogh,30.45,46.01,0,0
    >>Talk to |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_Buy up to 10 more|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .vendor >> Vendor Trash
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Keeg Gibn
    .itemcount 1179,10
    .money <0.0350
    .isOnQuest 319
step
    .goto Dun Morogh,30.45,46.01,0,0
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
    .goto Dun Morogh,33.51,47.50,50,0
    .goto Dun Morogh,36.85,45.48,50,0
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
    .goto Dun Morogh,33.51,47.50,50,0
    .goto Dun Morogh,36.85,45.48,50,0
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
    .goto Dun Morogh,38.00,42.77,30 >> Go inside the Cave
    .isOnQuest 319
step << skip
    #label CaveLS
    .goto Dun Morogh,38.32,43.36
    .goto Dun Morogh,47.13,54.91,30 >> |cRXP_WARN_Perform a Logout Skip inside the cave to teleport back to Kharanos|r
    .isOnQuest 319
step
    .goto Dun Morogh,46.726,53.826
    >>Talk to |cRXP_FRIENDLY_Senir|r
    .accept 287 >> Accept Frostmane Hold
    .target Senir Whitebeard
step
    #completewith Rhapsody1
    .goto Dun Morogh,46.97,51.99,10,0
    .goto Dun Morogh,47.19,52.02,12 >>Go inside
step
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Buy|r |T132800:0|t[Rhapsody Malt] |cRXP_BUY_and|r |T132800:0|t[Thunder Ale] |cRXP_BUY_from him|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311,1 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .itemcount 2886,6
    .isQuestAvailable 384
step
    #label Rhapsody1
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Buy a|r |T132800:0|t[Thunder Ale] |cRXP_BUY_from him|r
    .collect 2686,1,311,1 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .itemcount 2886,<6
step
    #completewith next
    .goto Dun Morogh,47.50,52.40,8,0
    .goto Dun Morogh,47.72,52.43,8 >>Go Downstairs
step
    #completewith next
    .goto Dun Morogh,47.65,52.66
    >>Talk to |cRXP_FRIENDLY_Jarven|r downstairs
    .turnin 308 >> Turn in Distracting Jarven
    .target Jarven Thunderbrew
step
    .goto Dun Morogh,47.72,52.70
    >>Keep mousing over the |cRXP_PICK_Guarded Thunder Ale Barrel|r downstairs. Wait for the |cRXP_PICK_Guarded Thunder Ale Barrel|r to become Unguarded
    >>Click the |cRXP_PICK_Unguarded Thunder Ale Barrel|r
    .turnin 310 >> Turn in Bitter Rivals
    .accept 311 >> Accept Return to Marleth
step
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Buy up to 10 more|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Innkeeper Belm
    .money <0.0250
step
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Buy up to 5 more|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .collect 1179,5,312,1 --Ice Cold Milk (5)
    .target Innkeeper Belm
    .money <0.0125
step
    .goto Dun Morogh,47.19,52.02,12,0
    .goto Dun Morogh,46.97,51.99,10,0
    .goto Dun Morogh,46.83,52.36,20 >>Exit the Inn
    .isOnQuest 287
step
    .goto Dun Morogh,46.83,52.36
    >>Talk to |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >> Turn in Beer Basted Boar Ribs
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    #completewith next
    .goto Dun Morogh,46.65,47.42,40,0
    +|cRXP_WARN_Deal 51%+ damage to nearby |cRXP_ENEMY_Snow Tracker Wolves|r, |cRXP_ENEMY_Winter Wolves|r, and |cRXP_ENEMY_Young Black Bears|r. Pull them to the |cRXP_FRIENDLY_Ironforge Mountaineer|r to kill them more efficiently|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Snow Tracker Wolves|r have|r |T132150:0|t[Increased Aggro Range] |cRXP_WARN_(Aggro range is increased by about 8 yards)|r
    .mob Snow Tracker Wolf
    .mob Winter Wolf
    .mob Young Black Bear
    .target Ironforge Mountaineer
step
    .goto Dun Morogh,42.91,45.17,25,0
    .goto Dun Morogh,42.32,45.27,45 >> Run up the ramp toward the |cRXP_ENEMY_Frostmane Seers|r
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
    .goto Dun Morogh,42.07,45.48,40,0
    .goto Dun Morogh,42.11,44.63,40,0
    .goto Dun Morogh,41.67,43.53,40,0
    .goto Dun Morogh,41.27,44.37,20,0
    .goto Dun Morogh,41.48,45.01,30,0
    .goto Dun Morogh,41.08,44.86,30,0
    .goto Dun Morogh,41.14,45.54,40,0
    .goto Dun Morogh,40.34,42.84,40,0
    .goto Dun Morogh,39.67,39.87,20,0
    .goto Dun Morogh,39.94,37.70,20,0
    .goto Dun Morogh,41.84,35.63
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
    .goto Dun Morogh,40.45,47.23,40,0
    .goto Dun Morogh,37.72,51.88,40,0
    >>Kill the two |cRXP_ENEMY_Elder Crag Boars|r en route to the cave (if they're up)
    >>|cRXP_WARN_Be careful as they cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 25-85 melee damage on hit. Only castable at range)|r
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob Elder Crag Boar
step
    #label IBCave
    .goto Dun Morogh,37.85,53.71,50 >>Travel toward the Cave
    .isOnQuest 312
step
    #completewith next
    +|cRXP_WARN_After looting it, remember to jump-turn his attacks to avoid the Daze and to jump on the tree log to temporarily evade him|r
step
    .goto Dun Morogh,38.51,53.93
    >>|cRXP_WARN_If |cRXP_ENEMY_Old Icebeard|r is in the cave, kite him up the side of the cave, then all the way above it. Wait for him to get close, then jump back down then go toward the back of the cave|r
    >>Open |cRXP_PICK_MacGrann's Meat Locker|r on the ground. Loot it for |cRXP_LOOT_Macgrann's Dried Meats|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3120 >>|cRXP_WARN_CLICK HERE If you're struggling|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
    .mob Old Icebeard
step
    .goto Dun Morogh,34.57,51.66
    >>Talk to |cRXP_FRIENDLY_Tundra|r
    .turnin 312,1 >> Turn in Tundra MacGrann's Stolen Stash
    .target Tundra MacGrann
step
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17,40,0
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17
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
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17,40,0
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17
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
    .goto Dun Morogh,30.189,45.725
    .turnin 311 >> Turn in Return to Marleth
    .goto Dun Morogh,30.186,45.531
    .target Rejold Barleybrew
step
    .goto Dun Morogh,30.45,46.01
    >>Talk to |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_Buy up to 10 more|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .collect 1179,10,287,1 --Ice Cold Milk (10)
    .target Keeg Gibn
    .money <0.0250
step
    .goto Dun Morogh,30.45,46.01
    >>Talk to |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_Buy up to 5 more|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .collect 1179,5,287,1 --Ice Cold Milk (5)
    .target Keeg Gibn
    .money <0.0125
step
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17,40,0
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17
    >>Kill |cRXP_ENEMY_Elder Crag Boars|r. Loot them for their |cRXP_LOOT_Crag Boar Ribs|r
    >>|cRXP_WARN_Be careful as they cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 35-85 melee damage on hit. Only castable at range)|r
    .complete 384,1 --Crag Boar Rib (6)
    .mob Elder Crag Boar
step
    #completewith Explore
    .goto Dun Morogh,25.12,49.54,35,0
    .goto Dun Morogh,24.94,50.61,12 >>Enter the cave from the north side
step
    .goto Dun Morogh,24.29,50.80,40,0
    .goto Dun Morogh,23.31,51.36
    >>Kill |cRXP_ENEMY_Frostmane Headhunters|r inside the cave
    >>|cRXP_WARN_Be careful as they cast|r |T132222:0|t[Shoot] |cRXP_WARN_(Ranged Cast: Deals 8-15 damage)|r
    >>|cRXP_WARN_Be careful of the patrolling |cRXP_ENEMY_Frostmane Headhunter|r inside|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #label Explore
    .goto Dun Morogh,23.01,52.04,8,0
    .goto Dun Morogh,22.90,52.09
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
    .goto Dun Morogh,47.38,52.52
    >>Talk to |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Buy a|r |T132800:0|t[Rhapsody Malt] |cRXP_BUY_from him|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
step
    .goto Dun Morogh,47.50,52.08
    >>Talk to |cRXP_FRIENDLY_Magis|r upstairs
    .trainer >> Train your class spells (Frostbolt r2, Polymorph)
    .target Magis Sparkmantle
    .isQuestAvailable 314
step
    #completewith Senir2
    +|cRXP_WARN_Remember to save|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_you get for leveling|r |T133971:0|t[Cooking] |cRXP_WARN_to 50 later|r
step
    .goto Dun Morogh,46.83,52.36
    >>Talk to |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >> Turn in Beer Basted Boar Ribs
    .target Ragnar Thunderbrew
step
    #label Senir2
    .goto Dun Morogh,46.726,53.826
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
    .goto Dun Morogh,49.426,48.410
    .turnin 313 >> Turn in The Grizzled Den
    .goto Dun Morogh,49.622,48.612
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
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>Go up the dirt path
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_CLICK HERE If you're struggling|r
    +|cRXP_WARN_Kite |cRXP_ENEMY_Vagash|r down to|r |cRXP_FRIENDLY_Rudra|r
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.08,49.85
    >>Talk to |cRXP_FRIENDLY_Rudra|r
    .accept 314 >> Accept Protecting the Herd
    .target Rudra Amberstill
step
    .goto Dun Morogh,62.57,46.14,0
    .goto Dun Morogh,62.78,54.60,40,0
    .goto Dun Morogh,62.82,55.73
    >>Kill |cRXP_ENEMY_Vagash|r. Loot him for the |cRXP_LOOT_Fang of Vagash|r
    >>|cRXP_WARN_Kite |cRXP_ENEMY_Vagash|r down to the |cRXP_FRIENDLY_Dun Morogh Mountaineer|r south of the ranch. Make sure you do 51%+ damage to him|r
    >>|cRXP_WARN_Remember to get The Tundrid Hills explore xp and pull the |cRXP_ENEMY_Snow Leopard|r to the |cRXP_FRIENDLY_Dun Morogh Mountaineer|r if convenient|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_CLICK HERE If you're struggling|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto Dun Morogh,63.08,49.85
    >>Talk to |cRXP_FRIENDLY_Rudra|r
    .turnin 314,3 >> Turn in Protecting the Herd
    .target Rudra Amberstill
step << skip
    #completewith Ghilm
    +|cRXP_WARN_Remember to save|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_you get for leveling|r |T133971:0|t[Cooking] |cRXP_WARN_to 50 later|r
step
    #completewith next
    .goto Dun Morogh,66.34,50.92,50,0
    .goto Dun Morogh,67.72,53.66,30,0
    +|cRXP_WARN_Kite the |cRXP_ENEMY_Ice Claw Bear|r to the |cRXP_FRIENDLY_Ironforge Mountaineer|r (make sure to deal 51%+ damage to get credit)|r
    >>|cRXP_WARN_Be careful as they cast|r |T135853:0|t[Ice Claw] |cRXP_WARN_(Melee Instant: Deals an additional 4 melee damage)|r
    .mob Ice Claw Bear
step
    #sticky
    #label Ghilm
    .goto Dun Morogh,68.40,54.45,0,0
    >>Talk to |cRXP_FRIENDLY_Ghilm|r
    .train 2550 >> Train |T133971:0|t[Cooking]
    .target Cook Ghilm
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
    >>Talk to |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Buy 15|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .collect 1179,15,432,1 --Ice Cold Milk (15)
    .target Kazan Mogosh
    .money <0.0395
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
    >>Talk to |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Buy 10|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r
    .collect 1179,10,432,1 --Ice Cold Milk (10)
    .target Kazan Mogosh
    .money <0.0260
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
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
    .goto Dun Morogh,68.67,55.97
    .accept 432 >> Accept Those Blasted Troggs!
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
step
    #completewith Bonesnappers
    >>Kill |cRXP_ENEMY_Rockjaw Skullthumpers|r
    >>|cRXP_WARN_Don't go out of your way to kill them|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #completewith next
    .goto Dun Morogh,70.74,56.23,30 >>Enter the cave
step
    #label Bonesnappers
    .goto Dun Morogh,70.98,54.31,40,0
    .goto Dun Morogh,70.83,53.17,40,0
    .goto Dun Morogh,71.94,50.48,40,0
    .goto Dun Morogh,72.55,51.50,40,0
    .goto Dun Morogh,72.62,52.56
    >>Kill |cRXP_ENEMY_Rockjaw Bonesnappers|r inside the cave
    >>|cRXP_WARN_Be careful as they cast|r |T132154:0|t[Knockdown] |cRXP_WARN_(Melee Instant: Stuns for 2 seconds)|r
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Bonesnapper
step
    .goto Dun Morogh,70.74,56.23,30,0
#loop
	.line Dun Morogh,69.93,57.29,70.57,58.61,69.68,59.37,68.36,59.57,69.16,57.51,69.93,57.29
	.goto Dun Morogh,69.93,57.29,30,0
	.goto Dun Morogh,70.57,58.61,30,0
	.goto Dun Morogh,69.68,59.37,30,0
	.goto Dun Morogh,68.36,59.57,30,0
	.goto Dun Morogh,69.16,57.51,30,0
	.goto Dun Morogh,69.93,57.29,30,0
    >>Kill |cRXP_ENEMY_Rockjaw Skullthumpers|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #sticky
    #label Frast
    .goto Dun Morogh,68.87,55.96,0,0
    >>Talk to |cRXP_FRIENDLY_Frast|r
    .vendor >> Vendor Trash
    .target Frast Dokner
step
    >>Talk to |cRXP_FRIENDLY_Stonebrow|r and |cRXP_FRIENDLY_Mehr|r
    .turnin 432 >> Turn in Those Blasted Troggs!
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> Turn in The Public Servant
    .goto Dun Morogh,68.67,55.97
    .target +Senator Mehr Stonehallow
step
    #requires Frast
    .goto Dun Morogh,69.33,55.46
    >>Talk to |cRXP_FRIENDLY_Dank|r
    .train 2575 >> Train |T136248:0|t[Mining]
    .target Dank Drizzlecut
step
    #label Shortcut1
    #completewith Pilot
    .goto Dun Morogh,70.35,55.28,5,0
    .link https://youtu.be/G2IscpFZVeQ?t=4034 >>|cRXP_WARN_CLICK HERE if you're struggling|r
    .goto Dun Morogh,70.52,54.75,12 >>Take the shortcut up behind |cRXP_FRIENDLY_Dank|r
step
    #completewith Pilot
    #requires Shortcut1
    #label Shortcut2
    .goto Dun Morogh,70.97,50.70,50,0
    .goto Dun Morogh,72.90,49.79,50,0
    .goto Dun Morogh,77.11,48.82,50 >>|cRXP_WARN_Kite the nearby |cRXP_ENEMY_Rockjaw Ambushers|r to the |cRXP_FRIENDLY_Ironforge Mountaineers|r that can patrol on the road (make sure to deal 51%+ damage to get credit)|r
    .mob Rockjaw Ambusher
    .unitscan Ironforge Mountaineer
step
    #requires Shortcut2
    #completewith next
    .goto Dun Morogh,81.23,42.66,50,0
    .goto Dun Morogh,83.01,40.31,30 >>Kite a |cRXP_ENEMY_Scarred Crag Boar|r through the tunnel
    >>|cRXP_WARN_Be careful as they cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)|r
    .mob Scarred Crag Boar
step
    #label Pilot
    .goto Dun Morogh,83.89,39.19
    >>Talk to |cRXP_FRIENDLY_Hammerfoot|r
    .accept 419 >> Accept The Lost Pilot
    .target Pilot Hammerfoot
    .isQuestAvailable 419
step
    .goto Dun Morogh,81.37,37.02,30,0
    .goto Dun Morogh,79.67,36.17
    >>Click the |cRXP_PICK_Dwarven Corpse|r on the ground
    >>|cRXP_WARN_MAKE SURE You have a 1 free inventory slot for this turnin|r
    >>|cRXP_WARN_Remember you're going to kite |cRXP_ENEMY_Mangeclaw|r back to |cRXP_FRIENDLY_Hammerfoot|r
    .turnin 419 >> Turn in The Lost Pilot
    .accept 417 >> Accept A Pilot's Revenge
step
    .goto Dun Morogh,78.41,37.80,60,0
    .goto Dun Morogh,83.89,39.19
    >>Kill |cRXP_ENEMY_Mangeclaw|r. Loot him for the |cRXP_LOOT_Mangy Claw|r
    >>|cRXP_WARN_Kite him all the way over to |cRXP_FRIENDLY_Hammerfoot|r (make sure to deal 51%+ damage to get credit)|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,83.892,39.188
    >>Talk to |cRXP_FRIENDLY_Hammerfoot|r
    .turnin 417,1 >> Turn in A Pilot's Revenge
    .target Pilot Hammerfoot
step
    #label Tunnel1
    #completewith Barleybrew
    .goto Dun Morogh,83.01,40.31,30,0
    .goto Dun Morogh,81.23,42.66,30 >>Run back through the tunnel
step
    .goto Dun Morogh,78.73,49.77
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Scarred Crag Boars|r and |cRXP_ENEMY_Elder Crag Boars|r cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range), and |cRXP_ENEMY_Ice Claw Bears|r cast|r |T135853:0|t[Ice Claw] |cRXP_WARN_(Melee Instant: Deals an additional 4 melee damage)|r
    .xp 9+5450 >> Grind to 5450+/6500xp
    .mob Ice Claw Bear
    .mob Elder Crag Boar
    .mob Scarred Crag Boar
step
    #requires Tunnel1
    #label Tunnel2
    #completewith Barleybrew
    .goto Dun Morogh,79.61,49.94,20,0
    .goto Dun Morogh,81.10,49.76,20,0
    .goto Dun Morogh,81.60,50.01,20,0
    .goto Dun Morogh,83.59,49.18,20,0
    >>Kite a |cRXP_ENEMY_Scarred Crag Boar|r en route
    >>|cRXP_WARN_Be careful as they cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)|r
    .goto Dun Morogh,84.26,48.93,20 >>Do the Mountain Skip. Remember to drop down carefully
    .mob Scarred Crag Boar
step
    #requires Tunnel2
    #completewith next
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Scarred Crag Boars|r cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)|r
    .xp 9+5990 >> Grind to 5990+/6500xp
    .mob Scarred Crag Boar
step
    #label Barleybrew
    .goto Dun Morogh,86.278,48.812
    >>Talk to |cRXP_FRIENDLY_Barleybrew|r
    .turnin 413 >> Turn in Shimmer Stout
    .accept 414 >> Accept Stout to Kadrell
    .target Mountaineer Barleybrew
step
    .goto Dun Morogh,86.74,49.58,40,0
    .goto Dun Morogh,86.36,47.36
    .xp 9+6320 >> Grind to 6320+/6500xp
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Scarred Crag Boars|r cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)|r
    .mob Scarred Crag Boar
step
    #label CragB1
    #completewith Cobbleflint
    .goto Loch Modan,16.45,58.54,20,0
    .goto Loch Modan,19.59,62.76,30 >>Kite a |cRXP_ENEMY_Scarred Crag Boar|r through the tunnel
    >>|cRXP_WARN_Be careful as they cast|r |T132337:0|t[Charge] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)|r
    .mob Scarred Crag Boar
step
#loop
	.line Loch Modan,21.14,71.62,19.06,75.46,20.91,77.67,21.14,71.62
	.goto Loch Modan,21.14,71.62,35,0
	.goto Loch Modan,19.06,75.46,35,0
	.goto Loch Modan,20.91,77.67,35,0
	.goto Loch Modan,21.14,71.62,35,0
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
    .goto Loch Modan,22.071,73.127
    >>Talk to |cRXP_FRIENDLY_Cobbleflint|r
    .accept 224 >> Accept In Defense of the King's Lands
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >> Enter the Bunker. Go to the top floor
step
    #label Rugelfuss
    .goto Loch Modan,23.233,73.675
    >>Talk to |cRXP_FRIENDLY_Rugelfuss|r
    .accept 267 >> Accept The Trogg Threat
    .target Captain Rugelfuss
step << skip
    #completewith next
    .goto Loch Modan,21.49,68.14,20,0
    .goto Loch Modan,20.86,64.46,20,0
    .goto Loch Modan,19.50,62.56,30 >>Go back into the Tunnel
step << skip
    .goto Loch Modan,18.84,61.48
    .link https://www.youtube.com/watch?v=AOAlX9B5aO0 >>|cRXP_WARN_CLICK HERE If you're struggling|r
    .goto Loch Modan,32.19,46.95,30 >>|cRXP_WARN_Jumping Logout Skip from the Brazier inside the tunnel to Thelsamar|r
    .isOnQuest 414
step
    .goto Loch Modan,32.93,49.51,40,0
    .goto Loch Modan,34.49,47.44,40,0
    .goto Loch Modan,37.05,46.11,40,0
    .goto Loch Modan,37.39,45.17,40,0
    .goto Loch Modan,37.12,42.79
    >>Talk to |cRXP_FRIENDLY_Kadrell|r
    >>|cRXP_FRIENDLY_Kadrell|r |cRXP_WARN_patrols along the main Thelsamar road|r
    .turnin 414 >>Turn in Stout to Kadrell
    .accept 416 >> Accept Rat Catching
    .accept 1339 >> Accept Mountaineer Stormpike's Task
    .target Mountaineer Kadrell
step
    .goto Loch Modan,37.18,47.13,10,0
    .goto Loch Modan,37.02,47.80
    >>Talk to |cRXP_FRIENDLY_Brock|r
    >>|cRXP_WARN_He can be inside or outside the building|r
    .accept 6387 >>Accept Honor Students
    .target Brock Stoneseeker
step
    .goto Loch Modan,33.94,50.96
    >>Talk to |cRXP_FRIENDLY_Thorgrum|r
    .fp Thelsamar >> Get the Thelsamar flight path
    .turnin 6387 >>Turn in Honor Students
    .accept 6391 >>Accept Ride to Ironforge
    .target Thorgrum Borrelson
step
    #completewith next
    .goto Loch Modan,33.94,50.96
    >>Talk to |cRXP_FRIENDLY_Thorgrum|r
    .fly Ironforge >> Fly to Ironforge
    .target Thorgrum Borrelson
--VV Merge with step above
step
    .zone Ironforge >> Travel to Ironforge
    .isOnQuest 6391
step
    #completewith next
    .goto Ironforge,55.81,38.35,30,0
    .goto Ironforge,51.83,29.77,15,0
    .goto Ironforge,49.67,28.23,12,0
    >>Go inside the building
    .goto Ironforge,51.54,26.30,10 >>Travel toward |cRXP_FRIENDLY_Golnir|r
step
    .goto Ironforge,51.54,26.30
    >>Talk to |cRXP_FRIENDLY_Golnir|r
    .turnin 6391 >>Turn in Ride to Ironforge
    .accept 6388 >>Accept Gryth Thurden
    .vendor >> Vendor Trash
    .target Golnir Bouldertoe
    .isOnQuest 291
step
    #completewith next
    .goto Ironforge,49.67,28.23,12,0
    .goto Ironforge,55.81,38.35,30,0
    >>Exit the building
    .goto Ironforge,55.49,47.74,10 >>Travel toward |cRXP_FRIENDLY_Gryth|r
step
    .goto Ironforge,55.50,47.74
    >>Talk to |cRXP_FRIENDLY_Gryth|r
    .turnin 6388 >>Turn in Gryth Thurden
--   .accept 6392 >>Accept Return to Brock
-- .fly Thelsamar >> Fly to Thelsamar
    .target Gryth Thurden
step
    #completewith next
    .goto Ironforge,55.07,51.36,30,0
    .goto Ironforge,49.11,56.02,30,0
    .goto Ironforge,46.67,50.56,20,0
    .goto Ironforge,44.12,50.37,20,0
    .goto Ironforge,39.55,57.49,10 >>Travel toward |cRXP_FRIENDLY_Barin|r
step
    .goto Ironforge,39.55,57.49
    >>Talk to |cRXP_FRIENDLY_Barin|r
    .turnin 291 >>Turn in The Reports
    .target Senator Barin Redstone
step
    #completewith next
    .goto Ironforge,44.43,49.08,20,0
    .goto Ironforge,44.08,46.60,20,0
    .goto Ironforge,40.84,44.59,20,0
    .goto Ironforge,35.30,32.76,20,0
    .goto Ironforge,27.60,11.06,20,0
    .goto Ironforge,27.17,8.58,10 >>Travel toward |cRXP_FRIENDLY_Dink|r
step
    .goto Ironforge,27.17,8.58
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
    --.goto Ironforge,27.25,12.79,20,0
    --.goto Ironforge,22.59,38.13,20,0
    --.goto Ironforge,20.40,53.19,20,0
    >>Go inside the building
    .goto Ironforge,18.14,51.45,10 >>Travel toward |cRXP_FRIENDLY_Firebrew|r
step
    #label IFHS
    .goto Ironforge,18.14,51.45
    >>Talk to |cRXP_FRIENDLY_Firebrew|r
    .home >> Set your Hearthstone to Ironforge
    .target Innkeeper Firebrew
step << skip
    .goto Ironforge,19.11,52.80
    .zone Dun Morogh >>|cRXP_WARN_Jump on top of the Candles on the table. Logout skip to Dun Morogh|r
    .isOnQuest 416
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 10-12 ADV Darkshore 1 Mage AoE
#version 2
#group RestedXP ADV AoE Alliance Mage
#defaultfor Human Mage/Gnome Mage
#next 12-14 ADV Loch Modan Mage AoE

step
    #completewith DeathlessSkip
    .goto Ironforge,15.16,85.70,20,0
    .goto Dun Morogh,59.84,49.56
    .zone Dun Morogh >> Exit Ironforge
step
    #completewith next
    .goto Dun Morogh,53.48,37.50,30,0
    .goto Dun Morogh,54.04,38.60,30,0
    .goto Dun Morogh,59.43,42.85,150 >> Travel to the skip spot. Hug the left side of the mountain en route
step
    #label DeathlessSkip
    .goto Dun Morogh,60.18,43.01,12,0
    .goto Dun Morogh,60.42,43.75,12,0
    .goto Dun Morogh,60.71,44.18,4,0
    .goto Dun Morogh,60.95,44.16,6,0
    .goto Dun Morogh,61.45,41.68,10,0
    .goto Dun Morogh,61.76,41.50,4,0
    .goto Dun Morogh,61.84,41.63,4,0
    .goto Dun Morogh,62.01,41.30,8,0
    .goto Dun Morogh,61.79,39.71,15,0
    .goto Dun Morogh,61.48,36.85,12,0
    .goto Dun Morogh,61.46,32.76,15,0
    .goto Dun Morogh,61.38,28.92,30,0
    .goto Dun Morogh,60.91,22.82,30,0
    .goto Dun Morogh,60.51,16.20,5,0
    .goto Dun Morogh,60.52,15.81,5,0
    .goto Dun Morogh,60.74,15.16,15,0
    .goto Dun Morogh,60.41,14.35,8,0
    .goto Dun Morogh,60.64,13.89,6,0
    .goto Dun Morogh,61.40,13.27,10,0
    .goto Dun Morogh,61.52,12.58,8,0
    >>|cRXP_WARN_Do the Deathless Dun Morogh -> Wetlands skip|r
    >>|cRXP_WARN_Eat to full after each fall if you don't feel confident|r
    .link https://youtu.be/QcEUvwu49KI?t=73 >> |cRXP_WARN_CLICK HERE for reference (it is HEAVILY advised you do so)|r
    .goto Dun Morogh,60.65,11.38,20 >>Carefully drop down the mountain side
    .isQuestAvailable 983
step
    .goto Dun Morogh,60.80,10.33,10,0
    .goto Dun Morogh,60.61,9.73,8,0
    .goto Wetlands,18.79,72.53,12,0
    .goto Wetlands,18.70,70.97,12,0
    .goto Wetlands,18.50,69.39,12,0
    .goto Wetlands,17.62,68.35,15,0
    .goto Wetlands,17.00,67.68,12,0
    .goto Wetlands,15.96,67.15,12,0
    .goto Wetlands,15.07,66.41,20,0
    .goto Wetlands,15.31,65.47,20,0
    .goto Wetlands,15.10,63.72,12,0
    >>|cRXP_WARN_Do the Deathless Dun Morogh -> Wetlands skip|r
    >>|cRXP_WARN_Be careful of |cRXP_ENEMY_Sludginn|r (rare) before you drop down toward the coast (if he's up)|r
    >>|cRXP_WARN_Be careful of the |cRXP_ENEMY_Bluegill Raiders|r to the west when you reach the sea|r
    >>|cRXP_WARN_Avoid the |cRXP_ENEMY_Young Wetlands Crocolisks|r when crossing the sea. Wait for them to patrol away|r
    .link https://youtu.be/QcEUvwu49KI?t=336 >> |cRXP_WARN_CLICK HERE for reference (it is HEAVILY advised you do so)|r
    .goto Wetlands,12.69,60.97,15 >> Travel to Menethil Harbor
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
    .unitscan Sludginn
    .isQuestAvailable 983
step
    #completewith next
    .goto Wetlands,10.80,59.80,10,0
    .goto Wetlands,10.63,60.10,10 >>Go inside the Inn
step
    .goto Wetlands,10.50,60.20
    >>Jump onto the Chandelier downstairs
    >>Talk to |cRXP_FRIENDLY_Samor|r through the wall
    >>|cRXP_WARN_NOTE: To do this, bind "Interact with Target" under Gameplay -> Controls in the Options menu|r
    >>|cRXP_WARN_If the Boat has just arrived, skip this step|r
    .vendor 1457 >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .target Samor Festivus
    .money <0.03
step
    .goto Wetlands,9.49,59.69
    >>Talk to |cRXP_FRIENDLY_Shellei|r
    .fp Menethil Harbor >> Get the Menethil Harbor flight path
    .target Shellei Brondir
step
    #completewith DarkshoreBoat
    .goto Wetlands,7.89,56.22
    >>|cRXP_WARN_If the Boat has just arrived, skip this step|r
    +|cRXP_WARN_Cook any|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_you have from outside (there's a campfire inside)|r
    .itemcount 769,1
step
    .goto Wetlands,7.89,56.22
    >>Talk to |cRXP_FRIENDLY_Dewin|r through the wall
    >>|cRXP_WARN_If the Boat has just arrived, skip this step|r
    .vendor 1453 >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .target Dewin Shimmerdawn
    .money <0.03
step
    #completewith Darkshore
    #label DarkshoreBoat
    .goto Wetlands,6.09,58.45,20,0
    .goto Wetlands,4.50,57.02,20 >>Travel toward the Darkshore Boat
step
    #completewith next
    #requires DarkshoreBoat
    +|cRXP_WARN_Start spam casting|r |T132794:0|t[Conjure Water r2] |cRXP_WARN_to conjure as much water as possible|r
step
    #label Darkshore
    .goto Wetlands,4.25,57.21
    .zone Darkshore >> Take the boat to Darkshore
step
    #label Darkshoreshore
    #completewith Wizbang
    .goto Darkshore,35.73,45.23,60 >>Jump off the boat when you're closest to the shore
step
    #requires Darkshoreshore
    #completewith Wizbang
    +|cRXP_WARN_Kite 2-3 |cRXP_ENEMY_Pygmy Tide Crawlers|r toward |cRXP_FRIENDLY_Wizbang|r (Remember to use|r |T135848:0|t[Frost Nova]|cRXP_WARN_) Kill them when you accept the quest|r
    .mob Pygmy Tide Crawler
step
    #requires Darkshoreshore
    #completewith next
    .goto Darkshore,36.77,44.28,0,0
    >>Talk to |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Buy up to 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    .vendor >> Vendor Trash
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
step
    #requires Darkshoreshore
    #completewith next
    .goto Darkshore,36.72,44.52,20,0
    .goto Darkshore,36.84,44.18,10,0
    .goto Darkshore,36.71,43.87,10,0
    >>Go upstairs to the top floor
    .goto Darkshore,36.98,44.14,8 >>Travel toward |cRXP_FRIENDLY_Wizbang|r
step
    #label Wizbang
    .goto Darkshore,36.98,44.14
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
    .goto Darkshore,37.44,43.12,20,0
    .goto Darkshore,37.73,41.40,20,0
    .goto Darkshore,37.39,40.13,10 >>Travel toward |cRXP_FRIENDLY_Thundris|r
step
    #sticky
    #label DalmondBags
    .goto Darkshore,37.45,40.50
    >>Talk to |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Buy as many|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_as you need/can|r
    .target Dalmond
    .money <0.0500
    .isQuestAvailable 954
step
    .goto Darkshore,37.39,40.13
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
    .goto Darkshore,37.39,40.13
    .accept 2178 >>Accept Easy Strider Living
    .goto Darkshore,37.69,40.66
    .target +Alanndarian Nightsong
	.skill cooking,<10,1
step
    #requires DalmondBags
    #completewith next
    .goto Darkshore,37.85,41.39,20,0
    .goto Darkshore,38.58,42.61,20,0
    .goto Darkshore,39.05,43.23,20,0
    .goto Darkshore,39.37,43.49,12 >>Travel toward |cRXP_FRIENDLY_Terenthis|r
step
    #requires DalmondBags
    >>Talk to |cRXP_FRIENDLY_Terenthis|r and |cRXP_FRIENDLY_Tharnariun|r
    .accept 984 >>Accept How Big a Threat?
    .target +Terenthis
    .goto Darkshore,39.37,43.49
    .accept 2118 >>Accept Plagued Lands
    .goto Darkshore,38.84,43.41
    .target +Tharnariun Treetender
 step
    .goto Darkshore,36.77,44.28
    >>Talk to |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Buy up to 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    .vendor >> Vendor Trash
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
    .itemcount 4592,<20
step
    #completewith next
    .goto Darkshore,36.22,44.89,50,0
    .goto Darkshore,35.81,45.78,50,0
    .goto Darkshore,35.86,47.35,50,0
    .goto Darkshore,35.74,48.20,50,0
    .goto Darkshore,36.25,49.90,50,0
    >>Kill |cRXP_ENEMY_Pygmy Tide Crawlers|r. Loot them for their |cRXP_LOOT_Crawler Legs|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    #completewith next
    .goto Darkshore,38.23,52.84,75,0
    >>|cRXP_WARN_Use|r |T134335:0|t[Tharnariun's Hope] |cRXP_WARN_on a |cRXP_ENEMY_Rabid Thistle Bear|r. It has a 50-yard range|r
    >>|cRXP_WARN_Be careful as they cast|r |T135914:0|t[Rabies] |cRXP_WARN_(Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .use 7586
    .unitscan Rabid Thistle Bear
step
    .goto Darkshore,38.90,53.59
    >>Run toward the Furbolg Camp
    >>|cRXP_WARN_Do not attempt to fight the|r |cRXP_ENEMY_Blackwood Windtalker|r
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    .goto Darkshore,38.63,56.34,60,0
    .goto Darkshore,38.80,58.29,60,0
    .goto Darkshore,38.38,60.75,60,0
    .goto Darkshore,38.57,66.39
    >>|cRXP_WARN_Use|r |T134335:0|t[Tharnariun's Hope] |cRXP_WARN_on a |cRXP_ENEMY_Rabid Thistle Bear|r. It has a 50-yard range|r
    >>|cRXP_WARN_Be careful as they cast|r |T135914:0|t[Rabies] |cRXP_WARN_(Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .use 7586
    .unitscan Rabid Thistle Bear
step
    .goto Darkshore,40.30,59.73
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
    .goto Darkshore,42.65,63.15
    >>Click |cRXP_PICK_The Fall of Ameth'Aran|r on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto Darkshore,43.30,58.70
    >>Click |cRXP_PICK_The Lay of Ameth'Aran|r on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
    #label Fall
    .goto Darkshore,40.30,59.73
    >>Talk to |cRXP_FRIENDLY_Tysha|r
    .turnin 953 >>Turn in The Fall of Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #label Relics
    .goto Darkshore,41.76,57.96,50,0
    .goto Darkshore,43.11,57.55,50,0
    .goto Darkshore,43.82,58.29,50,0
    .goto Darkshore,43.58,59.99,50,0
    .goto Darkshore,43.49,62.92,50,0
    .goto Darkshore,42.38,63.40,50,0
    .goto Darkshore,41.21,61.64,50,0
    .goto Darkshore,41.76,57.96
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
    .goto Darkshore,44.17,36.29
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
	.goto Darkshore,44.57,36.57,35,0
	.goto Darkshore,44.47,38.11,35,0
	.goto Darkshore,44.02,38.55,35,0
	.goto Darkshore,45.01,39.62,35,0
	.goto Darkshore,45.61,38.81,35,0
	.goto Darkshore,45.18,37.51,35,0
	.goto Darkshore,45.86,36.96,35,0
	.goto Darkshore,46.91,37.11,35,0
	.goto Darkshore,45.47,36.01,35,0
	.goto Darkshore,44.57,36.57,35,0
    >>Kill |cRXP_ENEMY_Vile Sprites|r and |cRXP_ENEMY_Wild Grells|r. Loot them for their |cRXP_LOOT_Grell Earrings|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Vile Sprites|r cast|r |T136016:0|t[Poison] |cRXP_WARN_(Melee Instant: Deals 3 damage every 3 seconds for 15 seconds) and |cRXP_ENEMY_Wild Grells|r cast|r |T136215:0|t[Crazed] |cRXP_WARN_(Self Instant: Increases attack speed by 20% at <20% health)|r
    .complete 955,1 --Grell Earring (8)
    .mob Vile Sprite
    .mob Wild Grell
step
    .goto Darkshore,44.17,36.29
    >>Talk to |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Turn in Bashal'Aran
    .accept 956 >> Accept Bashal'Aran
    .target Asterion
step
    .goto Darkshore,45.50,36.50,45,0
    .goto Darkshore,45.93,37.78,45,0
    .goto Darkshore,45.94,38.04,45,0
    .goto Darkshore,45.43,39.66,45,0
    .goto Darkshore,46.67,39.09,45,0
    .goto Darkshore,47.36,37.63,45,0
    .goto Darkshore,47.77,37.20,45,0
    .goto Darkshore,47.44,36.76,45,0
    .goto Darkshore,45.50,36.50,45,0
    .goto Darkshore,45.93,37.78,45,0
    .goto Darkshore,45.94,38.04,45,0
    .goto Darkshore,45.43,39.66,45,0
    .goto Darkshore,46.67,39.09,45,0
    .goto Darkshore,47.36,37.63,45,0
    .goto Darkshore,47.77,37.20,45,0
    .goto Darkshore,47.44,36.76
    >>Kill |cRXP_ENEMY_Deth'ryll Satyrs|r. Loot them for the |cRXP_LOOT_Ancient Moonstone Seal|r
    >>|cRXP_WARN_Be careful as they cast|r |T132222:0|t[Shoot] |cRXP_WARN_(Ranged Cast: Deals 15-25 damage)|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
step
#loop
	.line Darkshore,44.57,36.57,44.47,38.11,44.02,38.55,45.01,39.62,45.61,38.81,45.18,37.51,45.86,36.96,46.91,37.11,45.47,36.01,44.57,36.57
	.goto Darkshore,44.57,36.57,35,0
	.goto Darkshore,44.47,38.11,35,0
	.goto Darkshore,44.02,38.55,35,0
	.goto Darkshore,45.01,39.62,35,0
	.goto Darkshore,45.61,38.81,35,0
	.goto Darkshore,45.18,37.51,35,0
	.goto Darkshore,45.86,36.96,35,0
	.goto Darkshore,46.91,37.11,35,0
	.goto Darkshore,45.47,36.01,35,0
	.goto Darkshore,44.57,36.57,35,0
    .xp 11+1100 >> Grind to 1100+/8800xp
    .mob Vile Sprite
    .mob Wild Grell
--910+900+750+975+850 = 4385 (Turnins starting from Bashal Seal turnin)
--675+975 = 1650 (Turtle turnins)
step
    #label BashalF
    .goto Darkshore,44.17,36.29
    >>Talk to |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Turn in Bashal'Aran
    .accept 957 >> Accept Bashal'Aran
    .target Asterion
step
    #sticky
    #label DalmondBags1
    .goto Darkshore,37.45,40.50,0,0
    >>Talk to |cRXP_FRIENDLY_Dalmond|r
    .vendor >> Vendor Trash
    .target Dalmond
    .isQuestAvailable 3524
step
    .goto Darkshore,37.40,40.13
    >>Talk to |cRXP_FRIENDLY_Thundris|r
    .turnin 958 >>Turn in Tools of the Highborne
    .target Thundris Windweaver
step
    #requires DalmondBags1
    .goto Darkshore,37.69,40.66
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
    .goto Darkshore,39.37,43.49
    .turnin 2118 >> Turn in Plagued Lands
    .accept 2138 >> Accept Cleansing of the Infected
    .goto Darkshore,38.84,43.41
    .target +Tharnariun Treetender
step
    #sticky
    #label Gwennyth
    .goto Darkshore,36.62,45.59
    >>Talk to |cRXP_FRIENDLY_Gwennyth|r
    .accept 3524 >>Accept Washed Ashore
    .target Gwennyth Bly'Leggonde
step
    .goto Darkshore,36.34,45.58
    >>Talk to |cRXP_FRIENDLY_Caylais|r
    .fp Auberdine >> Get the Auberdine flight path
    .target Caylais Moonfeather
step
    #requires Gwennyth
    #completewith Bones
    .goto Darkshore,36.22,44.89,50,0
    .goto Darkshore,35.81,45.78,50,0
    .goto Darkshore,35.86,47.35,50,0
    .goto Darkshore,35.74,48.20,50,0
    .goto Darkshore,36.25,49.90,50,0
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
    .goto Darkshore,36.38,50.88
    >>Loot the |cRXP_LOOT_Beached Sea Creature|r
    >>|cRXP_WARN_Be careful as the nearby |cRXP_ENEMY_Greymist Coastrunners|r have|r |T132307:0|t[Increased Movespeed]
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    .goto Darkshore,36.22,44.89
    >>Kill |cRXP_ENEMY_Pygmy Tide Crawlers|r and |cRXP_ENEMY_Young Reef Crawlers|r. Loot them for their |cRXP_LOOT_Crawler Legs|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    .goto Darkshore,36.64,46.26
    >>Click |cRXP_PICK_Buzzbox 827|r
    .turnin 983 >>Turn in Buzzbox 827
    .accept 1001 >>Accept Buzzbox 411
step
    .goto Darkshore,36.72,45.07,12,0
    .goto Darkshore,36.62,45.59
    >>Talk to |cRXP_FRIENDLY_Gwennyth|r
    .turnin 3524 >>Turn in Washed Ashore
    .accept 4681 >>Accept Washed Ashore
    .target Gwennyth Bly'Leggonde
 step
    .goto Darkshore,36.77,44.28
    >>Talk to |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Buy up to 40|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    .collect 4592,40,4681,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto Darkshore,36.68,44.05,12,0
    .goto Darkshore,35.74,43.70
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
    .goto Darkshore,32.91,42.24,15,0
    .goto Darkshore,32.41,43.82,25 >> Run along the dock toward the |cRXP_LOOT_Sea Turtle Remains|r
step
    .goto Darkshore,31.86,46.33
    >>Swim underwater
    >>Loot the |cRXP_LOOT_Sea Turtle Remains|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto Darkshore,36.12,44.70,50,0
    .goto Darkshore,35.80,45.88,50,0
    .goto Darkshore,36.04,48.63,50,0
    .goto Darkshore,36.13,50.13,50,0
    .goto Darkshore,36.58,53.20,50,0
    .goto Darkshore,35.23,53.81,50,0
    .goto Darkshore,35.22,55.37,50,0
    .goto Darkshore,36.70,57.09,50,0
    .goto Darkshore,36.12,44.70,50,0
    .goto Darkshore,35.80,45.88,50,0
    .goto Darkshore,36.04,48.63,50,0
    .goto Darkshore,36.13,50.13,50,0
    .goto Darkshore,36.58,53.20,50,0
    .goto Darkshore,35.23,53.81,50,0
    .goto Darkshore,35.22,55.37,50,0
    .goto Darkshore,36.70,57.09
    .xp 11+7825 >> Grind to 7825+/8800xp
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #label Gwen
    .goto Darkshore,36.67,45.08,12,0
    .goto Darkshore,36.62,45.59
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
    .goto Darkshore,37.04,44.13
    >>|cRXP_WARN_===PAY ATTENTION===|r
    >>|cRXP_WARN_Talk to|r |cRXP_FRIENDLY_Shaussiy|r
    >>|cRXP_WARN_If this is your first time doing a Hearthstone Batch, watch the guide for it below|r
    >>|cRXP_WARN_Open the "Set Hearthstone" menu, then cast|r |T134414:0|t[Hearthstone]
    .hs >> |cRXP_WARN_Hearthstone BATCH from Auberdine to Ironforge|r
    .link https://www.youtube.com/watch?v=Is-h2TJpL3M >> |cRXP_WARN_CLICK HERE (it is HEAVILY advised you do so). Make sure you've set and tested your Batching Window Size prior to reduce risk of failure|r
    .target Innkeeper Shaussiy
    .zoneskip Ironforge
step
    .goto Ironforge,27.17,8.58
    >>Talk to |cRXP_FRIENDLY_Dink|r
    .trainer >> Train your class spells (Fireball r3, Dampen Magic)
    >>Total Cost: 12s
    >>Remember you may want money for a |T133024:0|t[Bronze Tube] (8s each) and Thelsamar flying (1s 10c)
    .target Dink
step << skip
    .goto Ironforge,27.22,8.58,-1
    .goto Ironforge,67.83,42.47,-1
    .vendor 5175 >> Logout skip on the pillar above |cRXP_FRIENDLY_Dink|r to check |cRXP_FRIENDLY_Cogspinner|r for a |T133024:0|t[Bronze Tube] if you wish
    .itemcount 4371,<1
    .isQuestAvailable 418
step
    #completewith next
    +|cRXP_WARN_Start spam casting|r |T132794:0|t[Conjure Water r2] |cRXP_WARN_to conjure as much water as possible before taking the flight|r
step << Gnome
    .goto Ironforge,55.50,47.74
    >>Talk to |cRXP_FRIENDLY_Gryth|r
    .accept 6392 >>Accept Return to Brock
    .target Gryth Thurden
step
    .goto Ironforge,55.50,47.74
    >>Talk to |cRXP_FRIENDLY_Gryth|r
    .fly Thelsamar >> Fly to Thelsamar
    .target Gryth Thurden
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
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
    .goto Dun Morogh,53.48,37.50,30,0
    .goto Dun Morogh,54.04,38.60,30,0
    .goto Dun Morogh,59.43,42.85,150 >> Travel to the skip spot. Hug the left side of the mountain en route
step
    .goto Dun Morogh,60.18,43.01,12,0
    .goto Dun Morogh,60.42,43.75,12,0
    .goto Dun Morogh,60.71,44.18,4,0
    .goto Dun Morogh,60.95,44.16,6,0
    .goto Dun Morogh,61.45,41.68,10,0
    .goto Dun Morogh,61.76,41.50,4,0
    .goto Dun Morogh,61.84,41.63,4,0
    .goto Dun Morogh,62.01,41.30,8,0
    .goto Dun Morogh,61.79,39.71,15,0
    .goto Dun Morogh,61.48,36.85,12,0
    .goto Dun Morogh,61.46,32.76,15,0
    .goto Dun Morogh,61.38,28.92,30,0
    .goto Dun Morogh,60.91,22.82,30,0
    .goto Dun Morogh,60.51,16.20,5,0
    .goto Dun Morogh,60.52,15.81,5,0
    .goto Dun Morogh,60.74,15.16,15,0
    .goto Dun Morogh,60.41,14.35,8,0
    .goto Dun Morogh,60.64,13.89,6,0
    .goto Dun Morogh,61.40,13.27,10,0
    .goto Dun Morogh,61.52,12.58,8,0
    >>|cRXP_WARN_Do the Deathless Dun Morogh -> Wetlands skip|r
    >>|cRXP_WARN_Eat to full after each fall if you don't feel confident|r
    .link https://youtu.be/QcEUvwu49KI?t=73 >> |cRXP_WARN_CLICK HERE for reference (it is HEAVILY advised you do so)|r
    .goto Dun Morogh,60.65,11.38,20 >>Carefully drop down the mountain side
    .isQuestAvailable 983
step
    .goto Dun Morogh,60.80,10.33,10,0
    .goto Dun Morogh,60.61,9.73,8,0
    .goto Wetlands,18.79,72.53,12,0
    .goto Wetlands,18.70,70.97,12,0
    .goto Wetlands,18.50,69.39,12,0
    .goto Wetlands,17.62,68.35,15,0
    .goto Wetlands,17.00,67.68,12,0
    .goto Wetlands,15.96,67.15,12,0
    .goto Wetlands,15.07,66.41,20,0
    .goto Wetlands,15.31,65.47,20,0
    .goto Wetlands,15.10,63.72,12,0
    >>|cRXP_WARN_Do the Deathless Dun Morogh -> Wetlands skip|r
    >>|cRXP_WARN_Be careful of |cRXP_ENEMY_Sludginn|r (rare) before you drop down toward the coast (if he's up)|r
    >>|cRXP_WARN_Be careful of the |cRXP_ENEMY_Bluegill Raiders|r to the west when you reach the sea|r
    >>|cRXP_WARN_Avoid the |cRXP_ENEMY_Young Wetlands Crocolisks|r when crossing the sea. Wait for them to patrol away|r
    .link https://youtu.be/QcEUvwu49KI?t=336 >> |cRXP_WARN_CLICK HERE for reference (it is HEAVILY advised you do so)|r
    .goto Wetlands,12.69,60.97,15 >> Travel to Menethil Harbor
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
    .unitscan Sludginn
    .isQuestAvailable 983
--VV Custom Video
step
    #completewith next
    .goto Wetlands,10.80,59.80,10,0
    .goto Wetlands,10.63,60.10,10 >>Go inside the Inn
step
    .goto Wetlands,10.50,60.20
    >>Jump onto the Chandelier downstairs
    >>Talk to |cRXP_FRIENDLY_Samor|r through the wall
    >>|cRXP_WARN_NOTE: To do this, bind "Interact with Target" under Gameplay -> Controls in the Options menu|r
    >>|cRXP_WARN_If the Boat has just arrived, skip this step|r
    .vendor 1457 >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .target Samor Festivus
    .money <0.03
step
    .goto Wetlands,9.49,59.69
    >>Talk to |cRXP_FRIENDLY_Shellei|r
    .fp Menethil Harbor >> Get the Menethil Harbor flight path
    .target Shellei Brondir
step
    #completewith DarkshoreBoat
    .goto Wetlands,7.89,56.22
    >>|cRXP_WARN_If the Boat has just arrived, skip this step|r
    +|cRXP_WARN_Cook any|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r |cRXP_WARN_you have from outside (there's a campfire inside)|r
    .itemcount 769,1
step
    .goto Wetlands,7.89,56.22
    >>Talk to |cRXP_FRIENDLY_Dewin|r through the wall
    >>|cRXP_WARN_If the Boat has just arrived, skip this step|r
    .vendor 1453 >> |cRXP_BUY_Buy|r |T134831:0|t[Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .target Dewin Shimmerdawn
    .money <0.03
step
    #completewith Darkshore
    #label DarkshoreBoat
    .goto Wetlands,6.09,58.45,20,0
    .goto Wetlands,4.50,57.02,20 >>Travel toward the Darkshore Boat
step
    #completewith next
    #requires DarkshoreBoat
    +|cRXP_WARN_Start spam casting|r |T132794:0|t[Conjure Water r2] |cRXP_WARN_to conjure as much water as possible|r
step
    #label Darkshore
    .goto Wetlands,4.25,57.21
    .zone Darkshore >> Take the boat to Darkshore
step
    #label Darkshoreshore
    #completewith Wizbang
    .goto Darkshore,35.73,45.23,60 >>Jump off the boat when you're closest to the shore
step
    #requires Darkshoreshore
    #completewith Wizbang
    +|cRXP_WARN_Kite 2-3 |cRXP_ENEMY_Pygmy Tide Crawlers|r toward |cRXP_FRIENDLY_Wizbang|r (Remember to use|r |T135848:0|t[Frost Nova]|cRXP_WARN_) Kill them when you accept the quest|r
    .mob Pygmy Tide Crawler
step
    #requires Darkshoreshore
    #completewith next
    .goto Darkshore,36.77,44.28,0,0
    >>Talk to |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Buy up to 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    .vendor >> Vendor Trash
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
step
    #requires Darkshoreshore
    #completewith next
    .goto Darkshore,36.72,44.52,20,0
    .goto Darkshore,36.84,44.18,10,0
    .goto Darkshore,36.71,43.87,10,0
    >>Go upstairs to the top floor
    .goto Darkshore,36.98,44.14,8 >>Travel toward |cRXP_FRIENDLY_Wizbang|r
step
    #label Wizbang
    .goto Darkshore,36.98,44.14
    >>Talk to |cRXP_FRIENDLY_Wizbang|r
    .accept 983 >>Accept Buzzbox 827
    .target Wizbang Cranktoggle
step
    #completewith DalmondBags
    >>Kill the |cRXP_ENEMY_Pygmy Tide Crawlers|r you kited. Loot them for their |cRXP_LOOT_Crawler Legs|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    .goto Darkshore,36.77,44.28
    >>Talk to |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Buy up to 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    .vendor >> Vendor Trash
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
    .itemcount 4592,<20
step << skip
    #requires DalmondBags
    #completewith next
    .goto Darkshore,37.85,41.39,20,0
    .goto Darkshore,38.58,42.61,20,0
    .goto Darkshore,39.05,43.23,20,0
    .goto Darkshore,39.37,43.49,12 >>Travel toward |cRXP_FRIENDLY_Terenthis|r
step
    >>Talk to |cRXP_FRIENDLY_Terenthis|r and |cRXP_FRIENDLY_Tharnariun|r
    .accept 984 >>Accept How Big a Threat?
    .target +Terenthis
    .goto Darkshore,39.37,43.49,-1
    .accept 2118 >>Accept Plagued Lands
    .goto Darkshore,38.84,43.41,-1
    .target +Tharnariun Treetender
step << skip
    #completewith next
    .goto Darkshore,37.44,43.12,20,0
    .goto Darkshore,37.73,41.40,20,0
    .goto Darkshore,37.39,40.13,10 >>Travel toward |cRXP_FRIENDLY_Thundris|r
step
    #sticky
    #label DalmondBags
    .goto Darkshore,37.45,40.50
    >>Talk to |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Buy as many|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_as you need/can|r
    .target Dalmond
    .money <0.0500
    .isQuestAvailable 954
step
    .goto Darkshore,37.39,40.13
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
    .goto Darkshore,37.39,40.13,-1
    .accept 2178 >>Accept Easy Strider Living
    .goto Darkshore,37.69,40.66,-1
    .target +Alanndarian Nightsong
	.skill cooking,<10,1
step
    .goto Darkshore,46.71,34.64
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
    .goto Darkshore,44.17,36.29
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
	.goto Darkshore,44.57,36.57,35,0
	.goto Darkshore,44.47,38.11,35,0
	.goto Darkshore,44.02,38.55,35,0
	.goto Darkshore,45.01,39.62,35,0
	.goto Darkshore,45.61,38.81,35,0
	.goto Darkshore,45.18,37.51,35,0
	.goto Darkshore,45.86,36.96,35,0
	.goto Darkshore,46.91,37.11,35,0
	.goto Darkshore,45.47,36.01,35,0
	.goto Darkshore,44.57,36.57,35,0
    >>Kill |cRXP_ENEMY_Vile Sprites|r and |cRXP_ENEMY_Wild Grells|r. Loot them for their |cRXP_LOOT_Grell Earrings|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Vile Sprites|r cast|r |T136016:0|t[Poison] |cRXP_WARN_(Melee Instant: Deals 3 damage every 3 seconds for 15 seconds) and |cRXP_ENEMY_Wild Grells|r cast|r |T136215:0|t[Crazed] |cRXP_WARN_(Self Instant: Increases attack speed by 20% at <20% health)|r
    .complete 955,1 --Grell Earring (8)
    .mob Vile Sprite
    .mob Wild Grell
step
    .goto Darkshore,44.17,36.29
    >>Talk to |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Turn in Bashal'Aran
    .accept 956 >> Accept Bashal'Aran
    .target Asterion
step
    .goto Darkshore,45.50,36.50,45,0
    .goto Darkshore,45.93,37.78,45,0
    .goto Darkshore,45.94,38.04,45,0
    .goto Darkshore,45.43,39.66,45,0
    .goto Darkshore,46.67,39.09,45,0
    .goto Darkshore,47.36,37.63,45,0
    .goto Darkshore,47.77,37.20,45,0
    .goto Darkshore,47.44,36.76,45,0
    .goto Darkshore,45.50,36.50,45,0
    .goto Darkshore,45.93,37.78,45,0
    .goto Darkshore,45.94,38.04,45,0
    .goto Darkshore,45.43,39.66,45,0
    .goto Darkshore,46.67,39.09,45,0
    .goto Darkshore,47.36,37.63,45,0
    .goto Darkshore,47.77,37.20,45,0
    .goto Darkshore,47.44,36.76
    >>Kill |cRXP_ENEMY_Deth'ryll Satyrs|r. Loot them for the |cRXP_LOOT_Ancient Moonstone Seal|r
    >>|cRXP_WARN_Be careful as they cast|r |T132222:0|t[Shoot] |cRXP_WARN_(Ranged Cast: Deals 15-25 damage)|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
step
    #label BashalF
    .goto Darkshore,44.17,36.29
    >>Talk to |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Turn in Bashal'Aran
    .accept 957 >> Accept Bashal'Aran
    .target Asterion
step
    .goto Darkshore,38.84,43.41
    .xp 10+6625 >> Grind to 6625+/7600xp en route back to |cRXP_FRIENDLY_Tharnariun|r
step
    .goto Darkshore,38.84,43.41
    >>Talk to |cRXP_FRIENDLY_Tharnariun|r
    .turnin 2118 >> Turn in Plagued Lands
    .accept 2138 >> Accept Cleansing of the Infected
    .target Tharnariun Treetender
step
    .goto Darkshore,36.68,44.05,12,0
    .goto Darkshore,35.74,43.70
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
    .goto Darkshore,36.62,45.59
    >>Talk to |cRXP_FRIENDLY_Gwennyth|r
    .accept 3524 >>Accept Washed Ashore
    .target Gwennyth Bly'Leggonde
step
    .goto Darkshore,36.34,45.58
    >>Talk to |cRXP_FRIENDLY_Caylais|r
    .fp Auberdine >> Get the Auberdine flight path
    .target Caylais Moonfeather
step
    #requires Gwennyth
    #completewith Bones
    .goto Darkshore,36.22,44.89,50,0
    .goto Darkshore,35.81,45.78,50,0
    .goto Darkshore,35.86,47.35,50,0
    .goto Darkshore,35.74,48.20,50,0
    .goto Darkshore,36.25,49.90,50,0
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
    .goto Darkshore,36.38,50.88
    >>Loot the |cRXP_LOOT_Beached Sea Creature|r
    >>|cRXP_WARN_Be careful as the nearby |cRXP_ENEMY_Greymist Coastrunners|r have|r |T132307:0|t[Increased Movespeed]
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    .goto Darkshore,36.22,44.89
    >>Kill |cRXP_ENEMY_Pygmy Tide Crawlers|r and |cRXP_ENEMY_Young Reef Crawlers|r. Loot them for their |cRXP_LOOT_Crawler Legs|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #requires Gwennyth
    .goto Darkshore,38.90,53.59
    >>Run toward the Furbolg Camp
    >>|cRXP_WARN_Do not attempt to fight the|r |cRXP_ENEMY_Blackwood Windtalker|r
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    .goto Darkshore,40.30,59.73
    >>Talk to |cRXP_FRIENDLY_Tysha|r
    .accept 953 >>Accept The Fall of Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #completewith Anaya
    +|cRXP_WARN_Avoid pulling |cRXP_ENEMY_Lady Moongazer|r (rare) if she's up|r
    .unitscan Lady Moongazer
 step
    #completewith Relics
    .goto Darkshore,42.45,60.66,0
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
    .goto Darkshore,42.37,61.82
    >>Click the |cRXP_PICK_Ancient Flame|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto Darkshore,42.65,63.15
    >>Click |cRXP_PICK_The Fall of Ameth'Aran|r on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto Darkshore,43.30,58.70
    >>Click |cRXP_PICK_The Lay of Ameth'Aran|r on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
    #label Fall
    .goto Darkshore,40.30,59.73
    >>Talk to |cRXP_FRIENDLY_Tysha|r
    .turnin 953 >>Turn in The Fall of Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #label Relics
    .goto Darkshore,41.76,57.96,50,0
    .goto Darkshore,43.11,57.55,50,0
    .goto Darkshore,43.82,58.29,50,0
    .goto Darkshore,43.58,59.99,50,0
    .goto Darkshore,43.49,62.92,50,0
    .goto Darkshore,42.38,63.40,50,0
    .goto Darkshore,41.21,61.64,50,0
    .goto Darkshore,41.76,57.96
    >>Kill |cRXP_ENEMY_Cursed Highbornes|r and |cRXP_ENEMY_Writhing Highbornes|r
    >>|cRXP_WARN_Kill |cRXP_ENEMY_Wailing Highbornes|r only if they're in your way|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    #label Anaya
    .goto Darkshore,42.45,60.66
    >>Kill |cRXP_ENEMY_Anaya Dawnrunner|r. Loot her for |cRXP_LOOT_Anaya's Pendant|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #completewith next
    .goto Darkshore,45.25,53.44,30 >>Go inside the cave
    >>|cRXP_WARN_Avoid |cRXP_ENEMY_Thistle Bears|r, |cRXP_ENEMY_Moonkins|r, and |cRXP_ENEMY_Raging Moonkins|r en route (if possible)|r
    .isOnQuest 958
step
    .goto Darkshore,45.75,53.08
    .goto Darkshore,41.70,36.51,30 >>|cRXP_WARN_Kill the |cRXP_ENEMY_Moonkin Oracle|r inside the cave --, then drink Logout Skip by logging out on top of the Mushroom at the back of the cave|r
    >>|cRXP_WARN_Be careful as it casts|r |T136006:0|t[Wrath] |cRXP_WARN_(Ranged Cast: Deals 30-45 Nature damage),|r |T136096:0|t[Moonfire] |cRXP_WARN_(Ranged Instant: Deals 20-30 Nature damage, then 44 Nature damage over 12 seconds), and|r |T136085:0|t[Regrowth] |cRXP_WARN_(Self Cast: Heals for about 150 damage. Rare, but run if this happens)|r
    >>|cRXP_WARN_You can LoS his|r |T136006:0|t[Wrath] |cRXP_WARN_behind the rocks inside the mouth of the cave|r
    .mob Moonkin Oracle
    .isOnQuest 958
step
    .goto Darkshore,44.18,36.29
    >>Talk to |cRXP_FRIENDLY_Asterion|r
    .turnin 957,3 >>Turn in Bashal'Aran
    .target Asterion
step
    #sticky
    #label DalmondBags1
    .goto Darkshore,37.45,40.50,0,0
    >>Talk to |cRXP_FRIENDLY_Dalmond|r
    .vendor >> Vendor Trash
    .target Dalmond
    .isQuestAvailable 3524
step
    .goto Darkshore,37.40,40.13
    >>Talk to |cRXP_FRIENDLY_Thundris|r
    .turnin 958 >>Turn in Tools of the Highborne
    .target Thundris Windweaver
step
    #requires DalmondBags1
    .goto Darkshore,37.69,40.66
    >>Talk to |cRXP_FRIENDLY_Alanndarian|r
    .turnin 2178 >>Turn in Easy Strider Living
    .target Alanndarian Nightsong
    .itemcount 5469,5
    .skill cooking,<10,1
step
    .goto Darkshore,39.37,43.49
    >>Talk to |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Turn in How Big a Threat?
    .accept 985 >> Accept How Big a Threat?
    .accept 4761 >> Accept Thundris Windweaver
    .target Terenthis
step
    .goto Darkshore,36.64,46.26
    >>Click |cRXP_PICK_Buzzbox 827|r
    .turnin 983 >>Turn in Buzzbox 827
    .accept 1001 >>Accept Buzzbox 411
step
    .goto Darkshore,36.72,45.07,12,0
    .goto Darkshore,36.62,45.59
    >>Talk to |cRXP_FRIENDLY_Gwennyth|r
    .turnin 3524 >>Turn in Washed Ashore
    .accept 4681 >>Accept Washed Ashore
    .target Gwennyth Bly'Leggonde
 step
    .goto Darkshore,36.77,44.28
    >>Talk to |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Buy up to 40|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    .collect 4592,40,4681,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto Darkshore,36.68,44.05,12,0
    .goto Darkshore,35.74,43.70
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
    .goto Darkshore,32.91,42.24,15,0
    .goto Darkshore,32.41,43.82,25 >> Run along the dock toward the |cRXP_LOOT_Sea Turtle Remains|r
step
    .goto Darkshore,31.86,46.33
    >>Swim underwater
    >>Loot the |cRXP_LOOT_Sea Turtle Remains|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto Darkshore,36.12,44.70,50,0
    .goto Darkshore,35.80,45.88,50,0
    .goto Darkshore,36.04,48.63,50,0
    .goto Darkshore,36.13,50.13,50,0
    .goto Darkshore,36.58,53.20,50,0
    .goto Darkshore,35.23,53.81,50,0
    .goto Darkshore,35.22,55.37,50,0
    .goto Darkshore,36.70,57.09,50,0
    .goto Darkshore,36.12,44.70,50,0
    .goto Darkshore,35.80,45.88,50,0
    .goto Darkshore,36.04,48.63,50,0
    .goto Darkshore,36.13,50.13,50,0
    .goto Darkshore,36.58,53.20,50,0
    .goto Darkshore,35.23,53.81,50,0
    .goto Darkshore,35.22,55.37,50,0
    .goto Darkshore,36.70,57.09
    .xp 11+7825 >> Grind to 7825+/8800xp
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #label Gwen
    .goto Darkshore,36.67,45.08,12,0
    .goto Darkshore,36.62,45.59
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
    .goto Darkshore,37.04,44.13
    >>|cRXP_WARN_===PAY ATTENTION===|r
    >>|cRXP_WARN_Talk to|r |cRXP_FRIENDLY_Shaussiy|r
    >>|cRXP_WARN_If this is your first time doing a Hearthstone Batch, watch the guide for it below|r
    >>|cRXP_WARN_Open the "Set Hearthstone" menu, then cast|r |T134414:0|t[Hearthstone]
    .hs >> |cRXP_WARN_Hearthstone BATCH from Auberdine to Ironforge|r
    .link https://www.youtube.com/watch?v=Is-h2TJpL3M >> |cRXP_WARN_CLICK HERE (it is HEAVILY advised you do so). Make sure you've set and tested your Batching Window Size prior to reduce risk of failure|r
    .target Innkeeper Shaussiy
    .zoneskip Ironforge
step
    .goto Ironforge,27.17,8.58
    >>Talk to |cRXP_FRIENDLY_Dink|r
    .trainer >> Train your class spells (Fireball r3, Dampen Magic)
    >>Total Cost: 12s
    >>Remember you may want money for a |T133024:0|t[Bronze Tube] (8s each) and Thelsamar flying (1s 10c)
    .target Dink
step << skip
    .goto Ironforge,27.22,8.58,-1
    .goto Ironforge,67.83,42.47,-1
    .vendor 5175 >> Logout skip on the pillar above |cRXP_FRIENDLY_Dink|r to check |cRXP_FRIENDLY_Cogspinner|r for a |T133024:0|t[Bronze Tube] if you wish
    .itemcount 4371,<1
    .isQuestAvailable 418
step
    #completewith next
    +|cRXP_WARN_Start spam casting|r |T132794:0|t[Conjure Water r2] |cRXP_WARN_to conjure as much water as possible before taking the flight|r
step << Gnome
    .goto Ironforge,55.50,47.74
    >>Talk to |cRXP_FRIENDLY_Gryth|r
    .accept 6392 >>Accept Return to Brock
    .target Gryth Thurden
step
    .goto Ironforge,55.50,47.74
    >>Talk to |cRXP_FRIENDLY_Gryth|r
    .fly Thelsamar >> Fly to Thelsamar
    .target Gryth Thurden
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
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
    .goto Loch Modan,22.071,73.127
    >>Talk to |cRXP_FRIENDLY_Cobbleflint|r
    .accept 224 >> Accept In Defense of the King's Lands
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >> Enter the Bunker. Go to the top floor
step
    .goto Loch Modan,23.233,73.675
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
    .goto Loch Modan,26.67,56.94
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
    .goto Loch Modan,22.071,73.127
    >>Talk to |cRXP_FRIENDLY_Cobbleflint|r
    .turnin 224 >> Turn in In Defense of the King's Lands
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >> Enter the Bunker. Go to the top floor
step
    #label Rugel2
    .goto Loch Modan,23.233,73.675
    >>Talk to |cRXP_FRIENDLY_Rugelfuss|r
    .turnin 267 >> Turn in The Trogg Threat
    .target Captain Rugelfuss
step << skip
    #completewith next
    .goto Loch Modan,21.49,68.14,20,0
    .goto Loch Modan,20.86,64.46,20,0
    .goto Loch Modan,19.50,62.56,30 >>Go back into the Tunnel
step << skip
    .goto Loch Modan,18.84,61.48
    .goto Loch Modan,32.19,46.95,30 >>Jumping Logout Skip from the Brazier inside the tunnel to Thelsamar
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
    .goto Loch Modan,23.57,17.93,30 >>Travel to Algaz Station
    .isOnQuest 1339
step
    .goto Loch Modan,24.13,18.20
    >>Talk to |cRXP_FRIENDLY_Gothor|r
    .vendor >>Vendor Trash
    .target Gothor Brumn
    .isOnQuest 1339
step
    .goto Loch Modan,24.764,18.397
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
    .goto Loch Modan,35.47,18.95,40 >>Travel to the entrance of the Mine
    .isOnQuest 307
step
    #label Gear
    .goto Loch Modan,35.45,19.94,12,0
    .goto Loch Modan,36.42,20.72,12,0
    .goto Loch Modan,35.24,21.98,12,0
    .goto Loch Modan,35.90,22.02,12,0
    .goto Loch Modan,34.88,23.51,12,0
    .goto Loch Modan,36.10,22.97,12,0
    .goto Loch Modan,36.23,24.88,12,0
    .goto Loch Modan,34.93,24.89,12,0
    .goto Loch Modan,35.45,19.94,12,0
    .goto Loch Modan,36.42,20.72,12,0
    .goto Loch Modan,35.24,21.98,12,0
    .goto Loch Modan,35.90,22.02,12,0
    .goto Loch Modan,34.88,23.51,12,0
    .goto Loch Modan,36.10,22.97,12,0
    .goto Loch Modan,36.23,24.88,12,0
    .goto Loch Modan,34.93,24.89
    >>Loot the |cRXP_LOOT_Miners' Gear|r on the ground. |cRXP_WARN_They share spawnpoints|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Tunnel Rat Geomancers|r cast|r |T135824:0|t[Quick Flame Ward] |cRXP_WARN_(Self Cast: Gives 10-second fire immunity) and|r |T135824:0|t[Fire Blast] |cRXP_WARN_(Ranged Instant: Deals 20-30 Fire damage)
    .complete 307,1 --Collect Miners' Gear (x4)
--VV Rat Diggers
step
    #label Exit
    .goto Loch Modan,35.47,18.95,40 >>Exit the Mine
    .isOnQuest 307
step
#loop
	.line Loch Modan,34.38,17.67,35.44,15.34,37.15,10.53,39.38,10.92,38.46,14.43,39.67,18.12,39.84,24.83,37.34,26.82,37.15,24.53,38.85,21.25,37.89,18.88,34.38,17.67
	.goto Loch Modan,34.38,17.67,40,0
	.goto Loch Modan,35.44,15.34,40,0
	.goto Loch Modan,37.15,10.53,40,0
	.goto Loch Modan,39.38,10.92,40,0
	.goto Loch Modan,38.46,14.43,40,0
	.goto Loch Modan,39.67,18.12,40,0
	.goto Loch Modan,39.84,24.83,40,0
	.goto Loch Modan,37.34,26.82,40,0
	.goto Loch Modan,37.15,24.53,40,0
	.goto Loch Modan,38.85,21.25,40,0
	.goto Loch Modan,37.89,18.88,40,0
	.goto Loch Modan,34.38,17.67,40,0
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
    .goto Loch Modan,23.57,17.93,30 >>Travel to Algaz Station
    .isOnQuest 307
step
    .goto Loch Modan,24.13,18.20
    >>Talk to |cRXP_FRIENDLY_Gothor|r
    .vendor >>Vendor Trash
    .target Gothor Brumn
    .isOnQuest 307
step
    .goto Loch Modan,24.764,18.397
    >>Go Upstairs
    >>Talk to |cRXP_FRIENDLY_Stormpike|r
    .turnin 307,2 >> Turn in Filthy Paws
    .target Mountaineer Stormpike
step
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto Loch Modan,31.01,24.84,35,0
	.goto Loch Modan,32.69,28.67,35,0
	.goto Loch Modan,34.93,31.55,35,0
	.goto Loch Modan,36.78,33.19,35,0
	.goto Loch Modan,39.65,32.82,35,0
	.goto Loch Modan,38.15,38.16,35,0
	.goto Loch Modan,33.53,40.53,35,0
	.goto Loch Modan,29.87,53.51,35,0
	.goto Loch Modan,29.58,46.54,35,0
	.goto Loch Modan,29.95,39.84,35,0
	.goto Loch Modan,27.09,40.10,35,0
	.goto Loch Modan,29.03,33.44,35,0
	.goto Loch Modan,27.19,29.01,35,0
	.goto Loch Modan,25.77,25.60,35,0
	.goto Loch Modan,23.64,22.20,35,0
	.goto Loch Modan,31.01,24.84,35,0
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
    .goto Loch Modan,37.18,47.13,10,0
    >>Talk to |cRXP_FRIENDLY_Brock|r and |cRXP_FRIENDLY_Jern|r
    >>|cRXP_WARN_They can be inside or outside the building|r
    .turnin 6392 >>Turn in Return to Brock << Gnome
    .target +Brock Stoneseeker
    .goto Loch Modan,37.02,47.80
    .accept 436 >> Accept Ironband's Excavation
    .goto Loch Modan,37.23,47.37
    .target +Jern Hornhelm
    .xp >13+5500,1 << Gnome
step
    .goto Loch Modan,37.23,47.37
    >>Talk to |cRXP_FRIENDLY_Jern|r
    >>|cRXP_WARN_He can be inside or outside the building|r
    .accept 436 >> Accept Ironband's Excavation
    .target Jern Hornhelm
    .xp >13+6550,1 << Gnome
    .isQuestTurnedIn 6392
step << Human
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto Loch Modan,31.01,24.84,50,0
	.goto Loch Modan,32.69,28.67,50,0
	.goto Loch Modan,34.93,31.55,50,0
	.goto Loch Modan,36.78,33.19,50,0
	.goto Loch Modan,39.65,32.82,50,0
	.goto Loch Modan,38.15,38.16,50,0
	.goto Loch Modan,33.53,40.53,50,0
	.goto Loch Modan,29.87,53.51,50,0
	.goto Loch Modan,29.58,46.54,50,0
	.goto Loch Modan,29.95,39.84,50,0
	.goto Loch Modan,27.09,40.10,50,0
	.goto Loch Modan,29.03,33.44,50,0
	.goto Loch Modan,27.19,29.01,50,0
	.goto Loch Modan,25.77,25.60,50,0
	.goto Loch Modan,23.64,22.20,50,0
	.goto Loch Modan,31.01,24.84,50,0
    .xp 13+8675 >> Grind to 8675+/11400xp
step << Gnome
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto Loch Modan,31.01,24.84,50,0
	.goto Loch Modan,32.69,28.67,50,0
	.goto Loch Modan,34.93,31.55,50,0
	.goto Loch Modan,36.78,33.19,50,0
	.goto Loch Modan,39.65,32.82,50,0
	.goto Loch Modan,38.15,38.16,50,0
	.goto Loch Modan,33.53,40.53,50,0
	.goto Loch Modan,29.87,53.51,50,0
	.goto Loch Modan,29.58,46.54,50,0
	.goto Loch Modan,29.95,39.84,50,0
	.goto Loch Modan,27.09,40.10,50,0
	.goto Loch Modan,29.03,33.44,50,0
	.goto Loch Modan,27.19,29.01,50,0
	.goto Loch Modan,25.77,25.60,50,0
	.goto Loch Modan,23.64,22.20,50,0
	.goto Loch Modan,31.01,24.84,50,0
    .xp 13+6545 >> Grind to 6545+/11400xp
    .xp <13+5500,1
    .isOnQuest 6392
step << Gnome
    #completewith next
    .goto Loch Modan,46.14,63.53,50,0
    .goto Loch Modan,49.35,67.36,50,0
    .goto Loch Modan,51.91,68.00,50,0
    .goto Loch Modan,64.83,66.05,20 >>Travel toward |cRXP_FRIENDLY_Aldren|r
step << Gnome
    #completewith Boast
    .goto Loch Modan,64.83,66.05
    >>Talk to |cRXP_FRIENDLY_Aldren|r
    .vendor 1214 >> |cRXP_BUY_Buy the |r |T132491:0|t[Wise Man's Belt] |cRXP_BUY_from him (if it's up)|r
    .isQuestAvailable 298
step << Gnome
    >>Talk to |cRXP_FRIENDLY_Ironband|r and |cRXP_FRIENDLY_Magmar|r
    .accept 298 >> Accept Excavation Progress Report
    .target +Prospector Ironband
    .goto Loch Modan,65.94,65.62
    .turnin 436 >> Turn in Ironband's Excavation
    .goto Loch Modan,64.89,66.66
    .target +Magmar Fellhew
    .isOnQuest 436
step << Gnome
    #label ExcavationP
    .goto Loch Modan,65.94,65.62
    >>Talk to |cRXP_FRIENDLY_Ironband|r
    .accept 298 >> Accept Excavation Progress Report
    .target Prospector Ironband
    .isQuestTurnedIn 436
step << Gnome
    #completewith next
    .goto Loch Modan,66.07,70.60,30,0
    .goto Loch Modan,73.23,70.89,40,0
    .goto Loch Modan,77.25,68.20,40,0
    .goto Loch Modan,82.11,63.22,15,0
    .goto Loch Modan,83.48,65.62,20 >>Travel to |cRXP_FRIENDLY_Daryl|r
step << Gnome
    #label Boast
    .goto Loch Modan,83.48,65.62
    >>Talk to |cRXP_FRIENDLY_Daryl|r
    .accept 257 >> Accept A Hunter's Boast
    .target Daryl The Youngling
    .isOnQuest 298
step << Gnome
#loop
	.line Loch Modan,79.89,65.91,76.70,74.44,74.74,69.21,77.03,60.55,76.09,57.94,77.39,55.98,79.63,59.85,79.89,65.91
	.goto Loch Modan,79.89,65.91,45,0
	.goto Loch Modan,76.70,74.44,45,0
	.goto Loch Modan,74.74,69.21,45,0
	.goto Loch Modan,77.03,60.55,45,0
	.goto Loch Modan,76.09,57.94,45,0
	.goto Loch Modan,77.39,55.98,45,0
	.goto Loch Modan,79.63,59.85,45,0
	.goto Loch Modan,79.89,65.91,45,0
    >>Kill |cRXP_ENEMY_Mountain Buzzards|r
    .complete 257,1 --Mountain Buzzard (6)
    .mob Mountain Buzzard
    .isOnQuest 257
step << Gnome
    #completewith next
    .goto Loch Modan,82.11,63.22,15,0
    .goto Loch Modan,83.48,65.62,20 >>Travel to |cRXP_FRIENDLY_Daryl|r
step << Gnome
    .goto Loch Modan,83.48,65.62
    >>Talk to |cRXP_FRIENDLY_Daryl|r
    .turnin 257,2 >> Turn in A Hunter's Boast
    .target Daryl The Youngling
    .isQuestComplete 257
step << Gnome
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto Loch Modan,31.01,24.84,50,0
	.goto Loch Modan,32.69,28.67,50,0
	.goto Loch Modan,34.93,31.55,50,0
	.goto Loch Modan,36.78,33.19,50,0
	.goto Loch Modan,39.65,32.82,50,0
	.goto Loch Modan,38.15,38.16,50,0
	.goto Loch Modan,33.53,40.53,50,0
	.goto Loch Modan,29.87,53.51,50,0
	.goto Loch Modan,29.58,46.54,50,0
	.goto Loch Modan,29.95,39.84,50,0
	.goto Loch Modan,27.09,40.10,50,0
	.goto Loch Modan,29.03,33.44,50,0
	.goto Loch Modan,27.19,29.01,50,0
	.goto Loch Modan,25.77,25.60,50,0
	.goto Loch Modan,23.64,22.20,50,0
	.goto Loch Modan,31.01,24.84,50,0
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
	.goto Loch Modan,31.01,24.84,50,0
	.goto Loch Modan,32.69,28.67,50,0
	.goto Loch Modan,34.93,31.55,50,0
	.goto Loch Modan,36.78,33.19,50,0
	.goto Loch Modan,39.65,32.82,50,0
	.goto Loch Modan,38.15,38.16,50,0
	.goto Loch Modan,33.53,40.53,50,0
	.goto Loch Modan,29.87,53.51,50,0
	.goto Loch Modan,29.58,46.54,50,0
	.goto Loch Modan,29.95,39.84,50,0
	.goto Loch Modan,27.09,40.10,50,0
	.goto Loch Modan,29.03,33.44,50,0
	.goto Loch Modan,27.19,29.01,50,0
	.goto Loch Modan,25.77,25.60,50,0
	.goto Loch Modan,23.64,22.20,50,0
	.goto Loch Modan,31.01,24.84,50,0
    .xp 13+6780 >> Grind to 6780+/11400xp
    .isOnQuest 298
step
    #sticky
    #label Kadrell
    .goto Loch Modan,32.93,49.51,40,0
    .goto Loch Modan,34.49,47.44,40,0
    .goto Loch Modan,37.05,46.11,40,0
    .goto Loch Modan,37.39,45.17,40,0
    .goto Loch Modan,37.12,42.79
    >>Talk to |cRXP_FRIENDLY_Kadrell|r
    >>|cRXP_FRIENDLY_Kadrell|r |cRXP_WARN_patrols along the main Thelsamar road|r
    .turnin 416,2 >> Turn in Rat Catching
    .target Mountaineer Kadrell
step << Gnome
    .goto Loch Modan,37.18,47.13,10,0
    >>Talk to |cRXP_FRIENDLY_Brock|r and |cRXP_FRIENDLY_Jern|r
    >>|cRXP_WARN_They can be inside or outside the building|r
    .turnin 6392 >>Turn in Return to Brock
    .target +Brock Stoneseeker
    .goto Loch Modan,37.02,47.80
    .turnin 298 >> Turn in Excavation Progress Report
    .accept 301 >> Accept Report to Ironforge
    .goto Loch Modan,37.23,47.37
    .target +Jern Hornhelm
    .isOnQuest 298
step << Gnome
    .goto Loch Modan,37.18,47.13,10,0
    >>Talk to |cRXP_FRIENDLY_Brock|r and |cRXP_FRIENDLY_Jern|r
    >>|cRXP_WARN_They can be inside or outside the building|r
    .turnin 6392 >>Turn in Return to Brock
    .target Brock Stoneseeker
    .goto Loch Modan,37.02,47.80
    .accept 301 >> Accept Report to Ironforge
    .goto Loch Modan,37.23,47.37
    .target +Jern Hornhelm
    .isQuestTurnedIn 298
step << Gnome
    .goto Loch Modan,37.18,47.13,10,0
    .goto Loch Modan,37.02,47.80
    >>Talk to |cRXP_FRIENDLY_Brock|r
    >>|cRXP_WARN_He can be inside or outside the building|r
    .turnin 6392 >>Turn in Return to Brock
    .target Brock Stoneseeker
step
    #completewith next
    .goto Loch Modan,35.25,47.74,12,0
    .goto Loch Modan,35.39,48.36,12,0
    >>Go inside the Inn
    .goto Loch Modan,34.828,49.283,10 >>Travel toward |cRXP_FRIENDLY_Vidra|r
step
    .goto Loch Modan,34.828,49.283
    >>Talk to |cRXP_FRIENDLY_Vidra|r
    .accept 418 >> Accept Thelsamar Blood Sausages
    .turnin 418 >> Turn in Thelsamar Blood Sausages
    .target Vidra Hearthstove
step
    .goto Loch Modan,34.76,48.62
    >>|cRXP_WARN_Do NOT get rid of any of your extra|r |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r
    .skill cooking,10 >> Cook |T133970:0|t|cRXP_LOOT_[Chunks of Boar Meat]|r into |T133974:0|t[Roasted Boar Meat] until your |T133971:0|t[Cooking] skill reaches 10
step
    .goto Loch Modan,34.76,48.62
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
    .goto Loch Modan,33.94,50.96
    >>Talk to |cRXP_FRIENDLY_Thorgrum|r
    .fly Ironforge >> Fly to Ironforge
    .target Thorgrum Borrelson
    .isOnQuest 1338
--VV WIP. Report to Ironforge needed
step << Gnome
    .goto Ironforge,74.64,11.72
    >>Talk to |cRXP_FRIENDLY_Stormpike|r
    .turnin 301 >> Turn in Report to Ironforge
    .target Prospector Stormpike
    .isOnQuest 301
step << skip
    #completewith Monty
    .goto Ironforge,74.82,8.69,-1
    .goto Ironforge,56.21,46.86,-1
    .goto Ironforge,76.41,51.22,30 >>Logout Skip to the outside of the Deeprun Tram
step
    .goto Ironforge,67.83,42.47
    >>Talk to |cRXP_FRIENDLY_Cogspinner|r
    .vendor 5175 >>|cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him if its up|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
step << Gnome
    #label Monty
    .goto Ironforge,76.41,51.22,30,0
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
    .goto Stormwind City,59.96,12.21,20,0
    .goto Stormwind City,57.03,11.37,20,0
    .goto Stormwind City,55.25,7.07,15 >>Travel toward |cRXP_FRIENDLY_Billibub|r
step
    .goto Stormwind City,55.25,7.07
    >>Talk to |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him if its up|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
step
    .goto Stormwind City,58.09,16.55
    >>Talk to |cRXP_FRIENDLY_Furen|r
    .turnin 1338 >> Turn in Stormpike's Order
    .target Furen Longbeard
step
    #completewith next
    .goto Stormwind City,53.34,19.29,20,0
    .goto Stormwind City,51.64,21.69,20,0
    .goto Stormwind City,52.23,31.66,20,0
    .goto Stormwind City,49.82,34.42,20,0
    .goto Stormwind City,47.86,31.13,12,0
    .goto Stormwind City,49.18,30.29,12 >>Travel toward |cRXP_FRIENDLY_Baros|r
step
    .goto Stormwind City,49.18,30.29
    >>Go inside the building
    >>Talk to |cRXP_FRIENDLY_Baros|r
    .accept 399 >> Accept Humble Beginnings
    .target Baros Alexston
step
    #completewith next
    .goto Stormwind City,47.72,42.71,15,0
    .goto Stormwind City,49.12,46.88,15,0
    .goto Stormwind City,48.55,49.00,15,0
    .goto Stormwind City,50.72,51.88,15,0
    .goto Stormwind City,52.57,55.44,15,0
    .goto Stormwind City,51.68,59.86,8,0
    .goto Stormwind City,51.83,60.41,4,0
    .goto Stormwind City,51.59,60.15,6,0
    .goto Stormwind City,39.17,76.58,12,0
    >>|cRXP_WARN_Jump up onto the torch, then drop down to get under Stormwind|r
    >>|cRXP_WARN_With Shadows on "Fair" or "Low", get in the middle of Derek the Dinosaur's feet (the lighter part of the dirt) just before the blue void, then walk straight forward|r
    >>|cRXP_WARN_NOTE: There is a small chance of dying using this method. You can also walk to the Mage Tower normally if you wish|r
    .link https://youtu.be/gV8-wgQEomc >> CLICK HERE for a guide
    .goto Stormwind City,38.61,79.39,10 >>Travel toward |cRXP_FRIENDLY_Jennea|r
step
    .goto Stormwind City,38.61,79.39
    >>Talk to |cRXP_FRIENDLY_Jennea|r
    .accept 1861 >> Accept Mirror Lake << Gnome
    .trainer >> Train your class spells (Fire Blast r2, Arcane Intellect r2, Arcane Explosion)
    >>Total Cost: 27s
    >>Remember you may want money for Potions (1-3s each) and Scrolls (50c-3s each)
    .target Jennea Cannon
step
    #completewith next
    .goto Stormwind City,36.73,82.44,10,0
    .goto Stormwind City,37.91,81.92,10,0
    .goto Stormwind City,38.10,80.93,8,0
    .goto Stormwind City,37.49,81.35,6,0
    .goto Stormwind City,38.46,80.61,8,0
    .goto Stormwind City,33.65,81.58,15,0
    .goto Stormwind City,31.12,79.42,15,0
    .goto Stormwind City,32.07,81.50,10,0
    .goto Stormwind City,32.63,80.62,8,0
    >>Exit the Mage Tower
    .goto Stormwind City,32.16,79.84,10 >>Travel toward |cRXP_FRIENDLY_Charys|r
step
    .goto Stormwind City,32.16,79.84
    >>Enter the building
    >>Talk to |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >> |cRXP_BUY_Buy|r |T134851:0|t[Lesser Mana Potions] |cRXP_BUY_and|r |T134831:0|t[Healing Potions] |cRXP_BUY_from her (if they're up)|r
    .money <0.0120
    .target Charys Yserian
step
    #completewith next
    .goto Stormwind City,39.32,71.54,20,0
    .goto Stormwind City,41.06,69.44,20,0
    .goto Stormwind City,44.02,69.81,20,0
    .goto Stormwind City,46.32,66.93,20,0
    .goto Stormwind City,42.45,61.76,20,0
    .goto Stormwind City,41.17,63.74,15,0
    .goto Stormwind City,41.57,65.46,10 >>Travel toward |cRXP_FRIENDLY_Adair|r
    .money <0.0090
step
    .goto Stormwind City,41.57,65.46
    >>Enter the building
    >>Talk to |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >> |cRXP_BUY_Buy non-intellect|r |T134943:0|t[Scrolls] |cRXP_BUY_from him (if they're up)|r
    .money <0.0090
    .target Adair Gilroy
step << skip
    #completewith next
    .goto Stormwind City,53.53,64.63,12,0
    .goto Stormwind City,52.10,61.42,12,0
    .goto Stormwind City,49.36,63.42,12,0
    .goto Stormwind City,51.16,68.35,12,0
    .goto Stormwind City,52.05,67.96,10 >>Travel toward |cRXP_FRIENDLY_Roberto|r
step << skip
    .goto Stormwind City,52.05,67.96
    >>Go inside the building
    >>Talk to |cRXP_FRIENDLY_Roberto|r
    >>|cRXP_BUY_Buy a|r |T132620:0|t[Cask of Merlot] |cRXP_BUY_from him|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    .goto Stormwind City,52.10,61.34,15,0
    .goto Stormwind City,55.46,65.26,8 >>Travel toward |cRXP_FRIENDLY_Keldric|r
    .money <0.01
step
    .goto Stormwind City,55.46,65.26
    >>Talk to |cRXP_FRIENDLY_Keldric|r through the wall
    .vendor 1257 >> |cRXP_BUY_Buy|r |T134830:0|t[Lesser Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .money <0.01
    .target Keldric Boucher
step
    #completewith Bank
    .goto Stormwind City,55.30,68.16,10 >>Enter the Stormwind Bank
step
    .goto Stormwind City,57.03,72.97
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
    .goto Stormwind City,57.03,72.97
    .bankdeposit 769,4371,7207 >> Deposit the following items into the bank:
    >>|T133970:0|t[Chunk of Boar Meat]
    >>|T133024:0|t[Bronze Tube]
    >>|T132788:0|t[Jennea's Flask]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 4371,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 769,730,7207 >> Deposit the following items into the bank:
    >>|T133970:0|t[Chunk of Boar Meat]
    >>|T133884:0|t[Murloc Eyes]
    >>|T132788:0|t[Jennea's Flask]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 4371,730,7207 >> Deposit the following items into the bank:
    >>|T133024:0|t[Bronze Tube]
    >>|T133884:0|t[Murloc Eyes]
    >>|T132788:0|t[Jennea's Flask]
    .target Newton Burnside
    .itemcount 4371,1
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 769,7207 >> Deposit the following items into the bank:
    >>|T133970:0|t[Chunk of Boar Meat]
    >>|T132788:0|t[Jennea's Flask]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 4371,7207 >> Deposit the following items into the bank:
    >>|T133024:0|t[Bronze Tube]
    >>|T132788:0|t[Jennea's Flask]
    .target Newton Burnside
    .itemcount 4371,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 730,7207 >> Deposit the following items into the bank:
    >>|T133884:0|t[Murloc Eyes]
    >>|T132788:0|t[Jennea's Flask]
    .target Newton Burnside
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 7207 >> Deposit the following item into the bank:
    >>|T132788:0|t[Jennea's Flask]
    .target Newton Burnside
    .itemcount 7207,1
step
    #completewith next
    .goto Stormwind City,53.45,64.92,10,0
    >>Enter the Inn
    .goto Stormwind City,52.61,65.72,10 >>Travel Toward |cRXP_FRIENDLY_Allison|r
    .target Innkeeper Allison
step
    .goto Stormwind City,52.61,65.72
    >>|cRXP_WARN_===PAY ATTENTION===|r
    >>|cRXP_WARN_Talk to|r |cRXP_FRIENDLY_Allison|r
    >>|cRXP_WARN_Open the "Set Hearthstone" menu, then cast|r |T134414:0|t[Hearthstone]
    .hs >> |cRXP_WARN_Hearthstone BATCH from Stormwind to Auberdine|r
    .target Innkeeper Allison
    .zoneskip Darkshore

]])
RXPGuides.RegisterGuide([[
#classic
#tbc
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
    .goto Darkshore,36.77,44.28
    >>Talk to |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Buy up to 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    .collect 4592,20,982,1 --Longjaw Mud Snapper (20)
    .target Laird
    .isQuestAvailable 982
step
    >>Talk to |cRXP_FRIENDLY_Barithras|r and |cRXP_FRIENDLY_Glynda|r
    .accept 947 >>Accept Cave Mushrooms
    .target +Barithras Moonshade
    .goto Darkshore,37.32,43.64
    .accept 4811 >>Accept The Red Crystal
    .goto Darkshore,37.68,43.38
    .target +Sentinel Glynda Nal'Shea
step
    #label DeepO
    .goto Darkshore,38.11,41.16
    >>Talk to |cRXP_FRIENDLY_Gorbold|r
    .accept 982 >> Accept Deep Ocean, Vast Sea
    .target Gorbold Steelhand
step
    .goto Darkshore,37.39,40.13
    >>Talk to |cRXP_FRIENDLY_Thundris|r
    .turnin 4761 >> Turn in Thundris Windweaver
    .accept 4762 >> Accept The Cliffspring River
    .target Thundris Windweaver
step
    #completewith MistV
    .goto Darkshore,35.87,38.18,50,0
    .goto Darkshore,36.28,32.23,50,0
    .goto Darkshore,37.61,30.86,50,0
    >>Kill |cRXP_ENEMY_Darkshore Threshers|r in the water. Loot them for their |cRXP_LOOT_Thresher Eyes|r
   .complete 1001,1 --Thresher Eye (3)
   .mob Darkshore Thresher
step
   .goto Darkshore,38.21,28.76
--  .goto Darkshore,38.23,28.79
    >>Loot the |cRXP_LOOT_Silver Dawning Lockbox|r through the wall of the boat
    >>|cRXP_WARN_Use your "Interact with Target" keybind underwater next to the arrow location|r
    >>|cRXP_WARN_This has a 5 second cast time|r
   .complete 982,1 --Silver Dawning's Lockbox (1)
step
   #label MistV
   .goto Darkshore,39.58,27.47
--  .goto Darkshore,39.63,27.45
   >>Loot the |cRXP_LOOT_Mist Veil Lockbox|r through the wall of the boat
   >>|cRXP_WARN_Use your "Interact with Target" keybind underwater next to the arrow location|r
   >>|cRXP_WARN_This has a 5 second cast time|r
   .complete 982,2 --Mist Veil's Lockbox (1)
step
   .goto Darkshore,40.44,28.63,50,0
   .goto Darkshore,35.87,38.18,50,0
   .goto Darkshore,36.28,32.23,50,0
   .goto Darkshore,37.61,30.86,50,0
   .goto Darkshore,40.44,28.63,50,0
   .goto Darkshore,35.87,38.18,50,0
   .goto Darkshore,36.28,32.23,50,0
   .goto Darkshore,37.61,30.86
   >>Kill |cRXP_ENEMY_Darkshore Threshers|r in the water. Loot them for their |cRXP_LOOT_Thresher Eyes|r
   .complete 1001,1 --Thresher Eye (3)
   .mob Darkshore Thresher
step
   #completewith next
   +|cRXP_WARN_Save the|r |T133884:0|t[Murloc Eyes] |cRXP_WARN_you loot from the|r |cRXP_ENEMY_Greymist Coastrunners|r |cRXP_WARN_and|r |cRXP_ENEMY_Greymist Seers|r
step
   .goto Darkshore,41.91,31.48
   >>Loot the |cRXP_LOOT_Beached Sea Creature|r on the ground
   >>|cRXP_WARN_This has a 5 second cast time|r
   .accept 4723 >> Accept Beached Sea Creature
step
   .goto Darkshore,41.96,28.61
   >>Click |cRXP_PICK_Buzzbox 411|r
   .turnin 1001 >> Turn in Buzzbox 411
   .accept 1002 >> Accept Buzzbox 323
step
    #completewith SeaTurtle1
    .goto Darkshore,43.67,27.81,50,0
    >>AoE |cRXP_ENEMY_Foreststrider Fledgelings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
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
    .goto Darkshore,44.20,20.60,80 >>Travel toward the |cRXP_LOOT_Beached Sea Turtle|r
    .isQuestAvailable 4725
step
    #completewith next
    +Save the |T133884:0|t[Murloc Eyes] you loot from the |cRXP_ENEMY_Greymist Warriors|r and |cRXP_ENEMY_Greymist Netters|r
step
    .goto Darkshore,44.20,20.60
    >>Loot the |cRXP_LOOT_Beached Sea Turtle|r on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    .accept 4725 >> Accept Beached Sea Turtle
step
    #completewith River
    >>Kill |cRXP_ENEMY_Foreststrider Fledgelings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
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
    .goto Darkshore,50.77,25.43
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
    .goto Darkshore,47.11,48.63,400 >>Travel toward |cRXP_PICK_The Red Crystal|r
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
    .goto Darkshore,47.11,48.63
    >>Run up to |cRXP_PICK_The Red Crystal|r
    >>|cRXP_WARN_Remember to pull the |cRXP_ENEMY_Raging Moonkins|r that are leashed together|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range (1)
step
    #label Bash
    .goto Darkshore,42.37,61.82,175 >>Travel toward the |cRXP_PICK_Ancient Flame|r
    .isOnQuest 957
step
    #completewith next
    .goto Darkshore,42.45,60.66,0
    >>Kill |cRXP_ENEMY_Anaya Dawnrunner|r. Loot her for |cRXP_LOOT_Anaya's Pendant|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    .goto Darkshore,42.37,61.82
    >>Click the |cRXP_PICK_Ancient Flame|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto Darkshore,42.45,60.66,50,0
    .goto Darkshore,43.25,62.41,50,0
    .goto Darkshore,42.53,59.00,50,0
    .goto Darkshore,42.45,60.66,50,0
    .goto Darkshore,43.25,62.41,50,0
    .goto Darkshore,42.53,59.00,50,0
    .goto Darkshore,42.45,60.66,50,0
    .goto Darkshore,43.25,62.41
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
    .goto Darkshore,37.10,62.17
    >>Click the |cRXP_PICK_Beached Sea Turtle|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .accept 4722 >> Accept Beached Sea Turtle
step
#loop
	.line Darkshore,38.74,58.10,39.91,58.50,39.23,63.60,39.87,66.31,39.98,70.55,37.40,70.05,38.63,67.72,38.50,63.73,38.74,58.10
	.goto Darkshore,38.74,58.10,45,0
	.goto Darkshore,39.91,58.50,45,0
	.goto Darkshore,39.23,63.60,45,0
	.goto Darkshore,39.87,66.31,45,0
	.goto Darkshore,39.98,70.55,45,0
	.goto Darkshore,37.40,70.05,45,0
	.goto Darkshore,38.63,67.72,45,0
	.goto Darkshore,38.50,63.73,45,0
	.goto Darkshore,38.74,58.10,45,0
    >>Kill |cRXP_ENEMY_Rabid Thistle Bears|r
    >>|cRXP_WARN_Be careful as they cast|r |T135914:0|t[Rabies] |cRXP_WARN_(Instant Melee: Reduces ALL health regen by 50% for 10 Minutes)|r
    .complete 2138,1 --Rabid Thistle Bear (20)
    .mob Rabid Thistle Bear
step
    #label RBears
#loop
	.line Darkshore,39.26,56.72,40.21,56.23,39.96,55.22,39.90,54.38,40.24,53.47,39.21,53.01,39.90,54.38
	.goto Darkshore,39.26,56.72,50,0
	.goto Darkshore,40.21,56.23,50,0
	.goto Darkshore,39.96,55.22,50,0
	.goto Darkshore,39.90,54.38,50,0
	.goto Darkshore,40.24,53.47,50,0
	.goto Darkshore,39.21,53.01,50,0
	.goto Darkshore,39.90,54.38,50,0
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
	.goto Darkshore,38.63,51.25,50,0
	.goto Darkshore,38.33,50.00,50,0
	.goto Darkshore,38.18,48.42,50,0
	.goto Darkshore,38.73,47.62,50,0
	.goto Darkshore,39.49,47.65,50,0
	.goto Darkshore,41.40,47.13,50,0
	.goto Darkshore,41.67,49.47,50,0
	.goto Darkshore,41.45,50.84,50,0
	.goto Darkshore,38.63,51.25,50,0
    >>Kill |cRXP_ENEMY_Foreststrider Fledglings|r. Loot them for their |cRXP_LOOT_Strider Meat|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #label Auberdine
    .goto Darkshore,36.62,45.59,150 >>Travel toward |cRXP_FRIENDLY_Gwennyth|r
    .isOnQuest 982
step
    .goto Darkshore,36.72,45.07,12,0
    .goto Darkshore,36.62,45.59
    >>Talk to |cRXP_FRIENDLY_Gwennyth|r
    .turnin 4722 >> Turn in Beached Sea Turtle
    .turnin 4723 >> Turn in Beached Sea Creature
    .turnin 4725 >> Turn in Beached Sea Turtle
    .target Gwennyth Bly'Leggonde
--Fruit of the Sea at 18
step
    .goto Darkshore,36.77,44.28
    >>Talk to |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Buy up to 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    .vendor >> Vendor Trash
    .collect 4592,20,4763,1 --Longjaw Mud Snapper (40)
    .target Laird
    .isOnQuest 982
step
    .goto Darkshore,36.68,44.05,12,0
    .goto Darkshore,35.74,43.70
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
    .goto Darkshore,36.77,44.28
    >>Talk to |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Buy 15|r |T132796:0|t[Melon Juice] |cRXP_BUY_from her|r
    .collect 1205,15,4763,1 --Melon Juice (15)
    .target Allyndia
    .money <0.1500
step
    .goto Darkshore,36.77,44.28
    >>Talk to |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Buy 10|r |T132796:0|t[Melon Juice] |cRXP_BUY_from her|r
    .collect 1205,10,4763,1 --Melon Juice (10)
    .target Allyndia
    .money <0.1000
step
    .goto Darkshore,36.77,44.28
    >>Talk to |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Buy 5|r |T132796:0|t[Melon Juice] |cRXP_BUY_from her|r
    .collect 1205,5,4763,1 --Melon Juice (5)
    .target Allyndia
    .money <0.0500
step
    #completewith next
    .goto Darkshore,37.45,43.10,20,0
    .goto Darkshore,37.47,42.40,20,0
    .goto Darkshore,37.44,41.84,15 >>Travel toward |cRXP_FRIENDLY_Hollee|r
step
    .goto Darkshore,37.44,41.84
    >>Talk to |cRXP_FRIENDLY_Hollee|r
    .accept 729 >>Accept The Absent Minded Prospector
    .target Archaeologist Hollee
step
    .goto Darkshore,37.45,40.50
    >>Talk to |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Buy as many|r |T133634:0|t[Small Brown Pouches] |cRXP_BUY_as you need/can|r
    .target Dalmond
    .money <0.0500
    .money >0.2500
step
    .goto Darkshore,37.45,40.50
    >>Talk to |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Buy a|r |T133634:0|t[Brown Leather Satchel] |cRXP_BUY_from him|r
    .target Dalmond
    .money <0.2500
step
    #label CliffRi
    .goto Darkshore,37.39,40.13
    >>Talk to |cRXP_FRIENDLY_Thundris|r
    .turnin 4762 >> Turn in The Cliffspring River
    .accept 4763 >> Accept The Blackwood Corrupted
    .target Thundris Windweaver
step
    .goto Darkshore,37.69,40.66
    >>Talk to |cRXP_FRIENDLY_Alanndarian|r
    .accept 2178 >>Accept Easy Strider Living
    .turnin 2178 >>Turn in Easy Strider Living
    .target Alanndarian Nightsong
step
    #label DeepO
    .goto Darkshore,38.11,41.16
    >>Talk to |cRXP_FRIENDLY_Gorbold|r
    .turnin 982,2 >> Turn in Deep Ocean, Vast Sea
    .target Gorbold Steelhand
step
    #completewith next
    .goto Darkshore,37.64,42.46,15,0
    .goto Darkshore,37.61,43.21,15,0
    .goto Darkshore,37.68,43.38,20 >>Travel toward Glynda
step
    .goto Darkshore,37.68,43.38
    >>Talk to |cRXP_FRIENDLY_Glynda|r
    .turnin 4811 >>Turn in The Red Crystal
    .accept 4812 >>Accept As Water Cascades
    .target Sentinel Glynda Nal'Shea
step
    .goto Darkshore,37.81,43.89
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
    .goto Darkshore,38.84,43.42
    .turnin 985 >> Turn in How Big a Threat?
    .accept 986 >> Accept A Lost Master
    .target +Terenthis
    .goto Darkshore,39.37,43.49
    .accept 965 >>Accept The Tower of Althalaxx
    .goto Darkshore,39.27,43.13,8,0
    .goto Darkshore,39.04,43.55
    .target +Sentinel Elissa Starbreeze
step << Gnome
    #completewith next
    +Equip the |T132491:0|t[Wise Man's Belt]
    .use 4786
    .itemcount 4786,1
    .itemStat 6,LEVEL,<20
step
    .goto Darkshore,47.32,48.70
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
    .goto Darkshore,44.18,36.29
    >>Talk to |cRXP_FRIENDLY_Asterion|r
    .turnin 957,3 >>Turn in Bashal'Aran
    .target Asterion
step
    #label GrainSample
    .goto Darkshore,50.66,34.98
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
    .goto Darkshore,52.33,35.94,20,0
    .goto Darkshore,52.39,36.85,20,0
    .goto Darkshore,51.58,37.52,30 >>Travel toward |cRXP_ENEMY_Den Mother|r
step
    .goto Darkshore,51.51,38.22
    >>Kill |cRXP_ENEMY_Den Mother|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Den Mother|r and her |cRXP_ENEMY_Thistle Cubs|r cast|r |T132141:0|t[Ravage] |cRXP_WARN_(2 second stun)|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .itemcount 4358,<1
step
    #label DenM
    .goto Darkshore,51.51,38.22
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
    .goto Darkshore,51.80,33.51
    >>Open the |cRXP_PICK_Blackwood Nut Stores|r. Loot it for the |cRXP_LOOT_Blackwood Nut Sample|r :3
    >>|cRXP_WARN_Aggro the Mobs protecting it, cast|r |T135848:0|t[Frost Nova]|cRXP_WARN_, loot the |cRXP_LOOT_Blackwood Nut Sample|r, then run north|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .collect 12343,1,4673,1 --Blackwood Nut Sample (1)
step
    .goto Darkshore,52.85,33.42
    >>Open the |cRXP_PICK_Blackwood Fruit Stores|r. Loot it for the |cRXP_LOOT_Blackwood Fruit Sample|r
    >>Kill the |cRXP_ENEMY_Blackwood Warriors|r that aggro
    >>|cRXP_WARN_This has a 5 second cast time|r
    .collect 12341,1,4673,1 --Blackwood Fruit Sample (1)
step
    #completewith next
    .goto Darkshore,52.51,33.11
    .cast 16072 >>Use the |T134712:0|t[Filled Cleansing Bowl] near the campfire to summon |cRXP_ENEMY_Xabraxxis|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .timer 20,The Blackwood Corrupted RP
    .use 12347
step
    #label Talisman
    .goto Darkshore,52.24,33.08
    >>|cRXP_WARN_Wait out the RP|r
    >>Kill |cRXP_ENEMY_Xabraxxis|r
    >>Loot |cRXP_PICK_Xabraxxis' Demon Bag|r that drops on the ground. Loot it for the |cRXP_LOOT_Talisman of Corruption|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 4763,1 --Talisman of Corruption (1)
    .mob Xabraxxis
step
    .goto Darkshore,51.29,24.53
    >>Click |cRXP_PICK_Buzzbox 323|r
    .turnin 1002 >> Turn in Buzzbox 323
    .accept 1003 >> Accept Buzzbox 525
    .isQuestComplete 1002
step
    .goto Darkshore,51.29,24.53
    >>Click |cRXP_PICK_Buzzbox 323|r
    .accept 1003 >> Accept Buzzbox 525
    .isQuestTurnedIn 1002
step
    #completewith next
    .goto Darkshore,53.74,31.52,60,0
    .goto Darkshore,54.52,29.55,60,0
    .goto Darkshore,53.13,28.25,60,0
    .goto Darkshore,52.54,25.47,60,0
    .goto Darkshore,55.21,22.89,60,0
    .goto Darkshore,54.65,21.03,60,0
    >>Kill |cRXP_ENEMY_Moonstalkers|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    .goto Darkshore,53.11,18.10
    >>Loot the |cRXP_LOOT_Beached Sea Turtle|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .accept 4727 >>Accept Beached Sea Turtle
step
    .goto Darkshore,53.74,31.52,60,0
    .goto Darkshore,54.52,29.55,60,0
    .goto Darkshore,53.13,28.25,60,0
    .goto Darkshore,52.54,25.47,60,0
    .goto Darkshore,55.21,22.89,60,0
    .goto Darkshore,54.65,21.03,60,0
    .goto Darkshore,53.74,31.52,60,0
    .goto Darkshore,54.52,29.55,60,0
    .goto Darkshore,53.13,28.25,60,0
    .goto Darkshore,52.54,25.47,60,0
    .goto Darkshore,55.21,22.89,60,0
    .goto Darkshore,54.65,21.03
    >>Kill |cRXP_ENEMY_Moonstalkers|r. Loot them for their |cRXP_LOOT_Moonstalker Fangs|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    .goto Darkshore,51.29,24.53
    >>Click |cRXP_PICK_Buzzbox 323|r
    .turnin 1002 >> Turn in Buzzbox 323
    .accept 1003 >> Accept Buzzbox 525
step
    .goto Darkshore,54.97,24.89
    >>Talk to |cRXP_FRIENDLY_Balthule|r
    .turnin 965 >>Turn in The Tower of Althalaxx
    .accept 966 >>Accept The Tower of Althalaxx
    .target Balthule Shadowstrike
step
    .goto Darkshore,55.36,26.49,50,0
    .goto Darkshore,56.36,27.01,50,0
    .goto Darkshore,58.27,25.30,50,0
    .goto Darkshore,55.36,26.49,50,0
    .goto Darkshore,56.36,27.01
    >>Kill |cRXP_ENEMY_Dark Strand Fanatics|r. Loot them for |cRXP_LOOT_Worn Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
    .goto Darkshore,54.97,24.89
    >>Talk to |cRXP_FRIENDLY_Balthule|r
    .turnin 966 >>Turn in The Tower of Althalaxx
    .accept 967 >>Accept The Tower of Althalaxx
    .target Balthule Shadowstrike
step
    #label CapCave
    #completewith CapCave1
    .goto Darkshore,55.00,33.42,30 >>Go inside the Cave
step << skip
    #requires CapCave
    #completewith CapCave1
    +|cRXP_WARN_Remember the Cave Logout Skip soon|r
step
    #completewith next
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    >>Loot the blue |cRXP_LOOT_Scaber Stalks|r on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 947,1,4 --Scaber Stalk (5)
step
    .goto Darkshore,55.45,36.23,12,0
    .goto Darkshore,55.70,36.30,12,0
    .goto Darkshore,55.89,35.40,12,0
    >>Stay on the upper level of the cave. Drop down if there's no |cRXP_LOOT_Death Cap|r on the upper level
    >>Loot the orange |cRXP_LOOT_Death Cap|r on the ground at the end of the top path of the cave
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 947,2 --Death Cap (1)
step
    #label CapCave1
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58
    >>Loot the first |cRXP_LOOT_Scaber Stalks|r at the mouth of the cave after looting the |cRXP_LOOT_Death Cap|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 947,1 --Scaber Stalk (5)
step << skip
    .goto Darkshore,54.96,34.52
    .goto Darkshore,41.70,36.51,30 >> |cRXP_WARN_Perform a Logout Skip inside the cave|r
    .isOnQuest 4763
step
    #completewith next
    .subzone 442 >> Travel to Auberdine
    .isOnQuest 4763
step
    .goto Darkshore,37.39,40.13
    >>Talk to |cRXP_FRIENDLY_Thundris|r
    .turnin 4763,1 >> Turn in The Blackwood Corrupted
    .target Thundris Windweaver
step
    .goto Darkshore,37.45,40.50
    >>Talk to |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Buy a|r |T133634:0|t[Brown Leather Satchel] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Do NOT go below 30 Silver|r
    .target Dalmond
step
    .goto Darkshore,38.84,43.42
    >>Talk to |cRXP_FRIENDLY_Tharnariun|r
    .turnin 2139,1 >>Turn in Tharnariun's Hope
    .target Tharnariun Treetender
step
    >>Talk to |cRXP_FRIENDLY_Glynda|r, |cRXP_FRIENDLY_Barithras|r, and the |cRXP_PICK_Wanted Poster|r
    .turnin 4813,2 >>Turn in The Fragments Within
    .target +Sentinel Glynda Nal'Shea
    .goto Darkshore,37.68,43.38
    .turnin 947 >>Turn in Cave Mushrooms
    .accept 948 >>Accept Onu
    .target +Barithras Moonshade
    .goto Darkshore,37.32,43.64
    .accept 4740 >> Accept WANTED: Murkdeep!
    .goto Darkshore,37.22,44.22
step
    .goto Darkshore,36.77,44.28
    >>Talk to |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Buy up to 40|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    .collect 4592,40,729,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto Darkshore,36.62,45.59
    >>Talk to |cRXP_FRIENDLY_Gwennyth|r
    .turnin 4727 >> Turn in Beached Sea Turtle
    .target Gwennyth Bly'Leggonde
step
    .goto Darkshore,37.04,44.13
    >>|cRXP_WARN_===PAY ATTENTION===|r
    >>|cRXP_WARN_Talk to|r |cRXP_FRIENDLY_Shaussiy|r
    >>|cRXP_WARN_Open the "Set Hearthstone" menu, then cast|r |T134414:0|t[Hearthstone]
    .hs >> |cRXP_WARN_Hearthstone BATCH from Auberdine to Stormwind City|r
    .target Innkeeper Shaussiy
    .zoneskip Stormwind City
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
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
    .goto Stormwind City,53.53,64.63,12,0
    .goto Stormwind City,52.10,61.42,12,0
    .goto Stormwind City,49.36,63.42,12,0
    .goto Stormwind City,51.16,68.35,12,0
    .goto Stormwind City,52.05,67.96,10 >>Travel toward |cRXP_FRIENDLY_Roberto|r
step << skip
    .goto Stormwind City,52.05,67.96
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
    .goto Stormwind City,57.03,72.97
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
    .goto Stormwind City,51.68,59.86,8,0
    .goto Stormwind City,51.83,60.41,4,0
    .goto Stormwind City,51.59,60.15,6,0
    .goto Stormwind City,39.17,76.58,12,0
    >>|cRXP_WARN_Jump up onto the torch, then drop down to get under Stormwind|r
    >>|cRXP_WARN_With Shadows on "Fair" or "Low", get in the middle of Derek the Dinosaur's feet (the lighter part of the dirt) just before the blue void, then walk straight forward|r
    >>|cRXP_WARN_NOTE: There is a small chance of dying using this method. You can also walk to the Mage Tower normally if you wish|r
    .link https://youtu.be/gV8-wgQEomc >> CLICK HERE for a guide
    .goto Stormwind City,38.61,79.39,10 >>Travel toward |cRXP_FRIENDLY_Jennea|r
step
    #requires Bank2
    #label JenneaT
    .goto Stormwind City,38.61,79.39
    >>Talk to |cRXP_FRIENDLY_Jennea|r
    .trainer >> Train your class spells (Flamestrike)
    >>Total Cost: 15s
    .target Jennea Cannon
step
    .goto Stormwind City,55.46,65.26
    >>Talk to |cRXP_FRIENDLY_Keldric|r through the wall
    .vendor 1257 >> |cRXP_BUY_Buy|r |T134830:0|t[Lesser Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .target Keldric Boucher
    .money <0.14
step
    #completewith next
    .goto Stormwind City,56.69,57.76,12,0
    .goto Stormwind City,57.13,57.69,10 >>Travel toward |cRXP_FRIENDLY_Woo Ping|r
step
    .goto Stormwind City,57.13,57.69
    >>Talk to |cRXP_FRIENDLY_Woo Ping|r
    .train 1180 >> Train |T132321:0|t[Daggers]
    .target Woo Ping
step
    #completewith next
    .goto Stormwind City,57.17,58.83,12,0
    .goto Stormwind City,63.42,63.75,20,0
    .goto Stormwind City,63.14,65.25,15,0
    .goto Stormwind City,66.27,62.12,10 >>Travel toward |cRXP_FRIENDLY_Dungar|r
step << Human
    .goto Stormwind City,66.27,62.12
    >>Talk to |cRXP_FRIENDLY_Dungar|r
    .turnin 6261 >> Turn in Dungar Longdrink
    .accept 6285 >> Accept Return to Lewis
    .target Dungar Longdrink
step
    #completewith next << Human
    .goto Stormwind City,66.27,62.12
    >>Talk to |cRXP_FRIENDLY_Dungar|r
    .fp Stormwind City >> Get the Stormwind City flight path << Gnome
    .fly Westfall >> Fly to Westfall << Human
    .target Dungar Longdrink
    .zoneskip Westfall << Human
step << Gnome
    #completewith next
    #label Stormwind1
    .goto Stormwind City,65.94,65.48,12,0
    .goto Stormwind City,65.85,66.00,8,0
    .goto Stormwind City,65.22,75.58,40 >>Drop down to the ledge below |cRXP_FRIENDLY_Dungar|r
step << Gnome
    #completewith next
    .goto Elwynn Forest,32.10,50.32,40 >>Exit Stormwind
step << skip
    #completewith next
    #requires Stormwind1
    .goto Elwynn Forest,42.96,65.62,30 >>Travel toward the Goldshire Inn
step << skip
    #label GoldshireTrain
    .goto Elwynn Forest,43.25,66.25
    >>Jump onto the Chandelier downstairs if you don't have train, otherwise jump up from the Chair
    >>Talk to |cRXP_FRIENDLY_Zaldimar|r through the wall
    .accept 1919 >> Accept Report to Jennea
    .trainer >> Train your class spells (Flamestrike)
    >>Total Cost: 15s
step << skip
    .goto Elwynn Forest,44.00,65.69
    >>Talk to |cRXP_FRIENDLY_Dobbins|r
    >>|cRXP_BUY_Buy a|r |T132794:0|t[Skin of Sweet Rum] |cRXP_BUY_from him|r
    .collect 1939,1,116,1 --Skin of Sweet Rum
    .target Barkeep Dobbins
step << skip
    .goto Elwynn Forest,43.77,65.80
    >>Talk to |cRXP_FRIENDLY_Farley|r
    >>|cRXP_BUY_Buy 45|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r
    .collect 1205,45,64,1 --Melon Juice (45)
    .target Innkeeper Farley
    .money <0.45
step << Gnome
    .goto Elwynn Forest,28.98,61.50
    >>Use |T132788:0|t[Jennea's Flask] at the waterfall
    >>|cRXP_WARN_This has a 5 second cast time|r
    .use 7207
    .complete 1861,1 --Mirror Lake Water Sample (1)
step
    >>Talk to |cRXP_FRIENDLY_Farmer Furlbrow|r and |cRXP_FRIENDLY_Verna|r
    .accept 64 >> Accept The Forgotten Heirloom
    .accept 109 >> Accept Report to Gryan Stoutmantle
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .accept 36 >> Accept Westfall Stew
    .accept 151 >> Accept Poor Old Blanchy
    .goto Westfall,59.91,19.41
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
    .goto Westfall,56.04,31.23
    .turnin 36 >> Turn in Westfall Stew
    .accept 38 >> Accept Westfall Stew
    .accept 22 >> Accept Goretusk Liver Pie
    .goto Westfall,56.42,30.52
    .target +Salma Saldean
step << Gnome
    #completewith Gryan
    .goto Westfall,53.54,31.72,60,0
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
    .goto Westfall,56.33,47.52
    .turnin 6285 >> Turn in Return to Lewis << Human
    .goto Westfall,57.002,47.169 << Human
    .accept 102 >> Accept Patrolling Westfall << Gnome
    .goto Westfall,56.42,47.62 << Gnome
	.target +Captain Danuvin << Gnome
    .target +Quartermaster Lewis << Human
step
    .goto Westfall,53.98,52.99
	>>Talk to |cRXP_FRIENDLY_Galiaan|r
    .accept 153 >> Accept Red Leather Bandanas
	.target Scout Galiaan
step
    .goto Westfall,52.86,53.72
	>>Talk to |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Buy 45|r |T132796:0|t[Melon Juice] |cRXP_BUY_from her|r
    .collect 1205,45,64,1 --Melon Juice (45)
	.target Innkeeper Heather
    .money <0.45
step
    .goto Westfall,52.86,53.72
	>>Talk to |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Buy 40|r |T132796:0|t[Melon Juice] |cRXP_BUY_from her|r
    .collect 1205,40,64,1 --Melon Juice (40)
	.target Innkeeper Heather
    .money <0.40
step
    .goto Westfall,52.86,53.72
	>>Talk to |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Buy 35|r |T132796:0|t[Melon Juice] |cRXP_BUY_from her|r
    .collect 1205,35,64,1 --Melon Juice (35)
	.target Innkeeper Heather
    .money <0.35
step
    .goto Westfall,52.86,53.72
	>>Talk to |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Buy 30|r |T132796:0|t[Melon Juice] |cRXP_BUY_from her|r
    .collect 1205,30,64,1 --Melon Juice (30)
	.target Innkeeper Heather
    .money <0.30
step
    .goto Westfall,52.86,53.72
	>>Talk to |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Buy 25|r |T132796:0|t[Melon Juice] |cRXP_BUY_from her|r
    .collect 1205,25,64,1 --Melon Juice (25)
	.target Innkeeper Heather
    .money <0.25
step
    .goto Westfall,52.86,53.72
	>>Talk to |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Buy 20|r |T132796:0|t[Melon Juice] |cRXP_BUY_from her|r
    .collect 1205,20,64,1 --Melon Juice (20)
	.target Innkeeper Heather
    .money <0.20
step
    .goto Westfall,52.86,53.72
	>>Talk to |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Buy 15|r |T132796:0|t[Melon Juice] |cRXP_BUY_from her|r
    .collect 1205,15,64,1 --Melon Juice (15)
	.target Innkeeper Heather
    .money <0.15
step
    .goto Westfall,52.86,53.72
	>>Talk to |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Buy 10|r |T132796:0|t[Melon Juice] |cRXP_BUY_from her|r
    .collect 1205,10,64,1 --Melon Juice (10)
	.target Innkeeper Heather
    .money <0.10
step
    .goto Westfall,52.86,53.72
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
    .goto Westfall,39.45,52.34,60,0
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
    .goto Westfall,36.24,54.52
    >>Open |cRXP_PICK_Alexston's Chest|r. Loot it for |cRXP_LOOT_A Simple Compass|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 399,1 --A Simple Compass (1)
step
    #label Oil
    .goto Westfall,37.39,50.52,60,0
    .goto Westfall,35.56,46.87,60,0
    .goto Westfall,33.64,47.01,60,0
    .goto Westfall,32.96,36.48,60,0
    .goto Westfall,39.45,52.34,60,0
    .goto Westfall,37.39,50.52,60,0
    .goto Westfall,35.56,46.87,60,0
    .goto Westfall,33.64,47.01,60,0
    .goto Westfall,32.96,36.48,60,0
    .goto Westfall,39.45,52.34
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
    .goto Westfall,30.40,57.93,60,0
    .goto Westfall,29.29,65.46,60,0
    .goto Westfall,32.62,68.40,60,0
    .goto Westfall,31.07,69.42,60,0
    .goto Westfall,31.40,72.29,30 >> AoE the Gnoll Camps
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
    .goto Westfall,30.02,86.02
    >>Talk to |cRXP_FRIENDLY_Grayson|r
    .accept 104 >> Accept The Coastal Menace
    .target Captain Grayson
step
    .goto Westfall,33.92,83.88,70,0
    .goto Westfall,34.88,85.82,70,0
    .goto Westfall,35.38,84.63,70,0
    .goto Westfall,33.92,83.88,70,0
    .goto Westfall,31.89,82.28,70,0
    .goto Westfall,30.33,80.75,70,0
    .goto Westfall,29.50,78.70,70,0
    .goto Westfall,29.06,75.45,70,0
    .goto Westfall,28.78,72.58,70,0
    .goto Westfall,27.84,71.33,70,0
    .goto Westfall,27.27,69.96,70,0
    .goto Westfall,26.86,66.82,70,0
    .goto Westfall,26.27,65.76,70,0
    .goto Westfall,33.92,83.88,70,0
    .goto Westfall,34.88,85.82,70,0
    .goto Westfall,35.38,84.63,70,0
    .goto Westfall,33.92,83.88,70,0
    .goto Westfall,31.89,82.28,70,0
    .goto Westfall,30.33,80.75,70,0
    .goto Westfall,29.50,78.70,70,0
    .goto Westfall,29.06,75.45,70,0
    .goto Westfall,28.78,72.58,70,0
    .goto Westfall,27.84,71.33,70,0
    .goto Westfall,27.27,69.96,70,0
    .goto Westfall,26.86,66.82,70,0
    .goto Westfall,26.27,65.76
    >>AoE |cRXP_ENEMY_Old Murk-Eye|r. Loot him for the |cRXP_LOOT_Scale of Old Murk-Eye|r
    .complete 104,1 --Scale of Old Murk-Eye
    .unitscan Old Murk-Eye
step
    .goto Westfall,30.02,86.02
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
    .goto Westfall,44.62,80.26
    >>Talk to |cRXP_FRIENDLY_Grimbooze|r
    .accept 117 >> Accept Thunderbrew
    .turnin 117 >> Turn in Thunderbrew
    .target Grimbooze Thunderbrew
step
    #completewith next
    .goto Westfall,48.77,77.70,60,0
    .goto Westfall,51.73,74.67,60,0
    .goto Westfall,52.56,72.87,60,0
    >>AoE |cRXP_ENEMY_Defias Knuckledusters|r and |cRXP_ENEMY_Defias Highwaymen|r. Loot them for their |cRXP_LOOT_Red Leather Bandanas|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Defias Highwaymen|r cast|r |T132090:0|t[Backstab] |cRXP_WARN_(deals double damage from behind)|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Knuckleduster
    .mob Defias Highwaymen
step
    .goto Westfall,52.08,71.94,60 >> Travel toward the end of The Dagger Hills
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
    .goto Westfall,46.65,52.99,60,0
    .goto Westfall,48.22,45.21,60,0
    .goto Westfall,45.77,39.19,60,0
    .goto Westfall,46.49,37.30,60,0
    .goto Westfall,44.54,34.71,150 >> Travel toward The Molsen Farm
    .isOnQuest 153
step
    #completewith Watch
    .goto Westfall,44.54,34.71,60,0
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
    .goto Westfall,44.14,26.66,60,0
    .goto Westfall,46.13,26.52,60,0
    .goto Westfall,48.74,20.79
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
    .goto Westfall,48.74,20.79,60,0
    >>AoE |cRXP_ENEMY_Defias Trappers|r and |cRXP_ENEMY_Defias Smugglers|r. Loot them for their |cRXP_LOOT_Red Leather Bandanas|r
    >>|cRXP_WARN_Be careful as the |cRXP_ENEMY_Defias Trappers|r cast|r |T132090:0|t[Backstab] |cRXP_WARN_and|r |T132149:0|t[Net]
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Trapper
    .mob Defias Smuggler
step
    #label Watch
    .goto Westfall,49.33,19.26
    >>Open |cRXP_PICK_Furlbrow's Wardrobe|r. Loot it for |cRXP_LOOT_Furlbrow's Pocket Watch|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 64,1 --Furlbrow's Pocket Watch (1)
step
    #completewith Oats
    .goto Westfall,50.50,21.38,60,0
    .goto Westfall,51.70,23.16,60,0
    >>AoE |cRXP_ENEMY_Harvest Watchers|r
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    .goto Westfall,52.02,15.00,60,0
    .goto Westfall,56.93,12.75
    >>AoE |cRXP_ENEMY_Riverpaw Scouts|r and |cRXP_ENEMY_Riverpaw Gnolls|r. Loot them for their |cRXP_LOOT_Gnoll Paws|r
    .complete 102,1 --Gnoll Paws (8)
    .mob Riverpaw Scout
    .mob Riverpaw Gnoll
step
    .goto Westfall,52.36,9.59,60,0
    .goto Westfall,53.80,10.69,60,0
    .goto Westfall,55.96,8.22
    >>AoE |cRXP_ENEMY_Murloc Coastrunners|r and |cRXP_ENEMY_Murloc Raiders|r. Loot them for their |cRXP_LOOT_Murloc Eyes|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .mob Murloc Coastrunner
    .mob Murloc Raider
step
    #label Footpads
    .goto Westfall,56.56,19.25
    >>AoE |cRXP_ENEMY_Defias Footpads|r Loot them for their |cRXP_LOOT_Red Leather Bandanas|r
    >>|cRXP_WARN_Be careful as |cRXP_ENEMY_Defias Footpads|r cast|r |T132090:0|t[Backstab]
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Footpad
step
    #label Oats
    .goto Westfall,56.56,19.25
    >>Open the |cRXP_PICK_Sacks of Oats|r on the ground. Loot them for |cRXP_LOOT_Handfuls of Oats|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 151,1 --Handful of Oats (8)
step
    #label Furlbrows
    >>Talk to |cRXP_FRIENDLY_Farmer Furlbrow|r and |cRXP_FRIENDLY_Verna|r
    .turnin 64 >> Turn in The Forgotten Heirloom
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 151 >> Turn in Poor Old Blanchy
    .goto Westfall,59.91,19.41
    .target +Verna Furlbrow
step
    .goto Westfall,59.72,34.62,80,0
    .goto Westfall,60.24,47.40
    >>AoE |cRXP_ENEMY_Goretusks|r and |cRXP_ENEMY_Young Goretusks|r. Loot them for their |cRXP_LOOT_Goretusk Livers|r and |cRXP_LOOT_Goretusk Snouts|r
    >>AoE |cRXP_ENEMY_Fleshrippers|r |cRXP_ENEMY_Young Fleshrippers|r. Loot them for their |cRXP_LOOT_Stringy Vulture Meat|r
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
    .goto Westfall,52.84,30.46,60,0
    .goto Westfall,51.70,23.16
    >>AoE |cRXP_ENEMY_Harvest Watchers|r
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    .goto Westfall,51.70,23.16
    .xp 17+11890 >> Grind to 11890+/17700xp
    .isQuestComplete 12
step
    .goto Westfall,51.70,23.16
    >>|cRXP_WARN_Skip this step if you've finished the objective of The People's Militia|r
    .xp 17+12800 >> Grind to 12800+/17700xp
step
    >>Talk to |cRXP_FRIENDLY_Farmer Saldean|r and then |cRXP_FRIENDLY_Salma|r inside
    .turnin 9,1 >> Turn in The Killing Fields
    .vendor >> Vendor Trash
    .target +Farmer Saldean
    .goto Westfall,56.04,31.23
    .turnin 22 >> Turn in Goretusk Liver Pie
    .turnin 38 >> Turn in Westfall Stew
    .goto Westfall,56.42,30.52
    .target +Salma Saldean
step
	>> Talk to |cRXP_FRIENDLY_Gryan|r and |cRXP_FRIENDLY_Danuvin|r
    .turnin 12 >> Turn in The People's Militia
    .target +Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 102,1 >> Turn in Patrolling Westfall
    .goto Westfall,56.42,47.62
	.target +Captain Danuvin
    .isQuestComplete 12
step
    .goto Westfall,56.42,47.62
	>> Talk to |cRXP_FRIENDLY_Danuvin|r
    .turnin 102,1 >> Turn in Patrolling Westfall
	.target Captain Danuvin
step
    .goto Westfall,53.98,52.99
	>>Talk to |cRXP_FRIENDLY_Galiaan|r
    .turnin 153,2 >> Turn in Red Leather Bandanas
	.target Scout Galiaan
step
    #completewith next
    +|cRXP_WARN_Start spam casting|r |T132794:0|t[Conjure Water r2] |cRXP_WARN_to conjure as much water as possible before taking the flight|r
step
    #completewith next
    .goto Westfall,56.56,52.64
	>>Talk to |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Fly to Stormwind
	.target Thor
step
    #completewith next
    .goto Stormwind City,51.68,59.86,8,0
    .goto Stormwind City,51.83,60.41,4,0
    .goto Stormwind City,51.59,60.15,6,0
    .goto Stormwind City,39.17,76.58,12,0
    >>|cRXP_WARN_Jump up onto the torch, then drop down to get under Stormwind|r
    >>|cRXP_WARN_With Shadows on "Fair" or "Low", get in the middle of Derek the Dinosaur's feet (the lighter part of the dirt) just before the blue void, then walk straight forward|r
    >>|cRXP_WARN_NOTE: There is a small chance of dying using this method. You can also walk to the Mage Tower normally if you wish|r
    .link https://youtu.be/gV8-wgQEomc >> CLICK HERE for a guide
    .goto Stormwind City,38.61,79.39,10 >>Travel toward |cRXP_FRIENDLY_Jennea|r
step
    .goto Stormwind City,38.61,79.39
    >>Talk to |cRXP_FRIENDLY_Jennea|r
    .turnin 1861,1 >> Turn in Mirror Lake
--   .turnin 1919 >> Turn in Report to Jennea
    .trainer >> Train your class spells (Fireball r4)
    >>Total Cost: 18s
    .target Jennea Cannon
step
    #completewith next
    .goto Stormwind City,36.73,82.44,10,0
    .goto Stormwind City,37.91,81.92,10,0
    .goto Stormwind City,38.10,80.93,8,0
    .goto Stormwind City,37.49,81.35,6,0
    .goto Stormwind City,38.46,80.61,8,0
    .goto Stormwind City,33.65,81.58,15,0
    .goto Stormwind City,31.12,79.42,15,0
    .goto Stormwind City,32.07,81.50,10,0
    .goto Stormwind City,32.63,80.62,8,0
    >>Exit the Mage Tower
    .goto Stormwind City,32.16,79.84,10 >>Travel toward |cRXP_FRIENDLY_Charys|r
step
    .goto Stormwind City,32.16,79.84
    >>Enter the building
    >>Talk to |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >> |cRXP_BUY_Buy|r |T134851:0|t[Lesser Mana Potions] |cRXP_BUY_and|r |T134831:0|t[Healing Potions] |cRXP_BUY_from her (if they're up)|r
    .target Charys Yserian
step
    #completewith next
    .goto Stormwind City,31.41,79.10,20,0
    .goto Stormwind City,32.67,71.36,20,0
    .goto Stormwind City,34.53,68.40,20,0
    .goto Stormwind City,32.16,59.96,20,0
    .goto Stormwind City,32.31,58.51,20,0
    .goto Stormwind City,30.53,55.10,20,0
    .goto Stormwind City,26.04,52.25,20,0
    .goto Stormwind City,24.67,52.60,20,0
    .goto Stormwind City,21.41,55.80,10 >>Travel toward |cRXP_FRIENDLY_Argos|r
step
    .goto Stormwind City,21.41,55.80
    >>Talk to |cRXP_FRIENDLY_Argos|r
    .accept 3765 >> Accept The Corruption Abroad
    .target Argos Nightwhisper
step
    .goto Stormwind City,41.57,65.46
    >>Enter the building
    >>Talk to |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >> |cRXP_BUY_Buy non-intellect|r |T134943:0|t[Scrolls] |cRXP_BUY_from him (if they're up)|r
    .target Adair Gilroy
step
    #completewith next
    .goto Stormwind City,53.53,64.63,12,0
    .goto Stormwind City,52.10,61.42,12,0
    .goto Stormwind City,49.36,63.42,12,0
    .goto Stormwind City,51.16,68.35,12,0
    .goto Stormwind City,52.05,67.96,10 >>Travel toward |cRXP_FRIENDLY_Roberto|r
step
    .goto Stormwind City,52.05,67.96
    >>Go inside the building
    >>Talk to |cRXP_FRIENDLY_Roberto|r
    >>|cRXP_BUY_Buy a|r |T132620:0|t[Cask of Merlot] |cRXP_BUY_from him|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    .goto Stormwind City,52.10,61.34,15,0
    .goto Stormwind City,55.46,65.26,8 >>Travel toward |cRXP_FRIENDLY_Keldric|r
step
    .goto Stormwind City,55.46,65.26
    >>Talk to |cRXP_FRIENDLY_Keldric|r through the wall
    .vendor 1257 >> |cRXP_BUY_Buy|r |T134830:0|t[Lesser Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .target Keldric Boucher
step
    #completewith Bank3
    .goto Stormwind City,55.30,68.16,10 >>Enter the Stormwind Bank
step
    #sticky
    #label Bank4
    .goto Stormwind City,57.03,72.97
    >>Talk to |cRXP_FRIENDLY_Newton|r
    .bankwithdraw 769,5354,6889 >> Withdraw the following items from your bank:
    >>|T133970:0|t[Chunk of Boar Meat]
    >>|T133469:0|t[Letter to Delgren]
    >>|T132832:0|t[Small Egg]
step
    #label Bank3
    .goto Stormwind City,57.03,72.97
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
    .goto Stormwind City,53.45,64.92,10,0
    >>Enter the Inn
    .goto Stormwind City,52.61,65.72,10 >>Travel Toward |cRXP_FRIENDLY_Allison|r
    .target Innkeeper Allison
step
    .goto Stormwind City,52.61,65.72
    >>|cRXP_WARN_===PAY ATTENTION===|r
    >>|cRXP_WARN_Talk to|r |cRXP_FRIENDLY_Allison|r
    >>|cRXP_WARN_Open the "Set Hearthstone" menu, then cast|r |T134414:0|t[Hearthstone]
    .hs >> |cRXP_WARN_Hearthstone BATCH from Stormwind to Auberdine|r
    .target Innkeeper Allison
    .zoneskip Darkshore
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 18-20 ADV Darkshore 3 Mage AoE
#version 2
#group RestedXP ADV AoE Alliance Mage
#defaultfor Human Mage/Gnome Mage
#next 20-22 ADV Redridge 1 Mage AoE

step
    .goto Darkshore,36.83,43.91
    >>Talk to |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Buy 45|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r
    .collect 1205,45,4740,1 --Melon Juice (45)
    .target Taldan
    .money <0.45
step
    .goto Darkshore,36.83,43.91
    >>Talk to |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Buy 40|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r
    .collect 1205,40,4740,1 --Melon Juice (40)
    .target Taldan
    .money <0.40
step
    .goto Darkshore,36.83,43.91
    >>Talk to |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Buy 35|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r
    .collect 1205,35,4740,1 --Melon Juice (35)
    .target Taldan
    .money <0.35
step
    .goto Darkshore,36.83,43.91
    >>Talk to |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Buy 30|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r
    .collect 1205,30,4740,1 --Melon Juice (30)
    .target Taldan
    .money <0.30
step
    .goto Darkshore,36.83,43.91
    >>Talk to |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Buy 25|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r
    .collect 1205,25,4740,1 --Melon Juice (25)
    .target Taldan
    .money <0.25
step
    .goto Darkshore,36.83,43.91
    >>Talk to |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Buy 20|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r
    .collect 1205,20,4740,1 --Melon Juice (20)
    .target Taldan
    .money <0.20
step
    .goto Darkshore,36.83,43.91
    >>Talk to |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Buy 15|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r
    .collect 1205,15,4740,1 --Melon Juice (15)
    .target Taldan
    .money <0.15
step
    .goto Darkshore,36.83,43.91
    >>Talk to |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Buy 10|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r
    .collect 1205,10,4740,1 --Melon Juice (10)
    .target Taldan
    .money <0.10
step
    .goto Darkshore,36.83,43.91
    >>Talk to |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Buy 5|r |T132796:0|t[Melon Juice] |cRXP_BUY_from him|r
    .collect 1205,5,4740,1 --Melon Juice (5)
    .target Taldan
    .money <0.05
step
    .goto Darkshore,36.77,44.28
    >>Talk to |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Buy up to 40|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    .collect 4592,40,4740,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    >>REMOVE THIS STEP LATER
    .accept 4740 >> Accept WANTED: Murkdeep!
    .goto Darkshore,37.22,44.22
step
    .goto Darkshore,36.09,44.93
    >>Talk to |cRXP_FRIENDLY_Gubber|r
    .accept 1138 >>Accept Fruit of the Sea
    .target Gubber Blump
step
    .goto Darkshore,43.55,76.29
    >>Talk to |cRXP_FRIENDLY_Onu|r
    .turnin 948 >> Turn in Onu
    .accept 944 >> Accept The Master's Glaive
    .target Onu
step
    .goto Darkshore,44.40,76.42
    >>Talk to |cRXP_FRIENDLY_Kerlonian|r
    >>|cRXP_WARN_If |cRXP_FRIENDLY_Kerlonian|r is not there, skip this step|r
    .accept 5321 >>Accept The Sleeper Has Awakened
    .target Kerlonian Evershade
step
    .goto Darkshore,44.39,76.30
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
   .goto Darkshore,38.65,87.34
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
    .goto Darkshore,38.65,87.34
    >>Place the |T134715:0|t[Phial of Scrying] on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    >>Click the |cRXP_PICK_Phial of Scrying|r on the ground
    .turnin 944 >> Turn in The Master's Glaive
    .accept 949 >> Accept The Twilight Camp
    .use 13536
    .use 5251
    .isOnQuest 5321
step
   .goto Darkshore,38.65,87.34
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
   .goto Darkshore,38.55,86.03
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
   .goto Darkshore,38.55,86.03
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
    .goto Darkshore,35.72,83.69
    >>Talk to |cRXP_FRIENDLY_Remtravel|r to start the escort
    .turnin 729 >> Turn in The Absent Minded Prospector
    .accept 731 >> Accept The Absent Minded Prospector
    .target Prospector Remtravel
    .use 13536
    .isOnQuest 950
step
    .goto Darkshore,35.35,84.72,40,0
    .goto Darkshore,36.22,86.12,40,0
    .goto Darkshore,35.35,84.72,40,0
    .goto Darkshore,35.72,83.69,40,0
    .goto Darkshore,31.28,87.39
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
    .goto Darkshore,31.28,87.39
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
    .goto Darkshore,31.22,85.56
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
    .goto Darkshore,31.70,83.72
    >>Loot the |cRXP_LOOT_Beached Sea Turtle|r on the ground
    >>|cRXP_WARN_The Turtle Shell has LoS|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .accept 4731 >>Accept Beached Sea Turtle
    .isOnQuest 950
step
    #label SeaCreature
    .goto Darkshore,32.70,80.73
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
   .goto Darkshore,36.52,76.55
   >>Clear the Murloc Camp without moving to the center of the camp
   >>Once you clear everything, move to the center of the camp to summon 3 waves (3 Coastrunners, 2 Warriors, Murkdeep and a Hunter)
   >>|cRXP_WARN_If you're lucky, |cRXP_ENEMY_Murkdeep|r might already be up about 30 yards off the shore to the west (if someone died on him before)|r
   .complete 4740,1 --Murkdeep (1)
   .unitscan Murkdeep
   .isOnQuest 950
step
    #completewith next
    .goto Darkshore,35.96,75.22,60,0
    .goto Darkshore,36.01,73.48,60,0
    .goto Darkshore,35.02,72.20,60,0
    .goto Darkshore,35.42,71.52,60,0
    >>AoE |cRXP_ENEMY_Reef Crawlers|r. Loot them for their |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
    .isOnQuest 950
step
    .goto Darkshore,35.97,70.90
    >>Loot the |cRXP_LOOT_Beached Sea Creature|r on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    .accept 4728 >>Accept Beached Sea Creature
    .isOnQuest 950
step
    .goto Darkshore,35.42,71.52,60,0
    .goto Darkshore,35.02,72.20,60,0
    .goto Darkshore,36.01,73.48,60,0
    .goto Darkshore,35.96,75.22,60,0
    .goto Darkshore,35.61,78.13,60,0
    .goto Darkshore,35.27,79.57,60,0
    .goto Darkshore,34.18,80.71
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
    .goto Darkshore,43.55,76.29
    >>Talk to |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Turn in Return to Onu
    .target Onu
    .isQuestComplete 950
step
    #label SeaCreatureGiga
    .goto Darkshore,35.97,70.90
    >>Loot the |cRXP_LOOT_Beached Sea Creature|r on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    .accept 4728 >>Accept Beached Sea Creature
step
    #completewith next
    .goto Darkshore,35.42,71.52,60,0
    .goto Darkshore,35.02,72.20,60,0
    .goto Darkshore,36.01,73.48,60,0
    .goto Darkshore,35.96,75.22,60,0
    >>AoE |cRXP_ENEMY_Reef Crawlers|r. Loot them for their |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto Darkshore,36.52,76.55
    >>Clear the Murloc Camp without moving to the center of the camp
    >>Once you clear everything, move to the center of the camp to summon 3 waves (3 Coastrunners, 2 Warriors, Murkdeep and a Hunter)
    >>|cRXP_WARN_If you're lucky, |cRXP_ENEMY_Murkdeep|r might already be up about 30 yards off the shore to the west (if someone died on him before)|r
    .complete 4740,1 --Murkdeep (1)
    .unitscan Murkdeep
step
    #completewith next
    .goto Darkshore,35.61,78.13,60,0
    .goto Darkshore,35.27,79.57,60,0
    .goto Darkshore,34.18,80.71,60,0
    >>AoE |cRXP_ENEMY_Reef Crawlers|r. Loot them for their |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto Darkshore,32.70,80.73
    >>Loot the |cRXP_LOOT_Beached Sea Creature|r on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    .accept 4730 >>Accept Beached Sea Creature
step
    .goto Darkshore,32.80,81.72,60,0
    .goto Darkshore,32.08,83.28
    >>AoE |cRXP_ENEMY_Encrusted Tide Crawlers|r. Loot them for their |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
step
    .goto Darkshore,31.70,83.72
    >>Loot the |cRXP_LOOT_Beached Sea Turtle|r on the ground
    >>|cRXP_WARN_The Turtle Shell has LoS|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .accept 4731 >>Accept Beached Sea Turtle
step
    .goto Darkshore,31.22,85.56
    >>Loot the |cRXP_LOOT_Beached Sea Turtle|r on the ground
    >>|cRXP_WARN_The Turtle Shell has LoS|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .accept 4732 >>Accept Beached Sea Turtle
step
    .goto Darkshore,31.28,87.39
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
    .goto Darkshore,35.72,83.69
    >>Talk to |cRXP_FRIENDLY_Remtravel|r to start the escort
    .turnin 729 >> Turn in The Absent Minded Prospector
    .accept 731 >> Accept The Absent Minded Prospector
    .target Prospector Remtravel
step
    .goto Darkshore,35.35,84.72,40,0
    .goto Darkshore,36.22,86.12,40,0
    .goto Darkshore,35.35,84.72,40,0
    .goto Darkshore,35.72,83.69,40,0
    .goto Darkshore,38.65,87.34
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
   .goto Darkshore,38.65,87.34
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
    .goto Darkshore,38.65,87.34
    >>Place the |T134715:0|t[Phial of Scrying] on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    >>Click the |cRXP_PICK_Phial of Scrying|r on the ground
    .turnin 944 >> Turn in The Master's Glaive
    .accept 949 >> Accept The Twilight Camp
    .use 5251
step
    .goto Darkshore,38.65,87.34
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
    .goto Darkshore,38.55,86.03
    >>Place the |T134715:0|t[Phial of Scrying] on the ground
    >>|cRXP_WARN_This has a 5 second cast time|r
    >>Click the |cRXP_PICK_Phial of Scrying|r on the ground
    .turnin 944 >> Turn in The Master's Glaive
    .accept 949 >> Accept The Twilight Camp
    .use 5251
step
    #label Tome2
    .goto Darkshore,38.55,86.03
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
    .goto Darkshore,41.40,80.56,-1
    >>Click |cRXP_PICK_Buzzbox 525|r
    .turnin 1003 >> Turn in Buzzbox 525
step
    #label Onu3
    .goto Darkshore,43.55,76.29,-1
    >>Talk to |cRXP_FRIENDLY_Onu|r
    .turnin 950 >> Turn in Return to Onu
    .target Onu
step
    .goto Darkshore,44.40,76.42
    >>Talk to |cRXP_FRIENDLY_Kerlonian|r
    >>|cRXP_WARN_If |cRXP_FRIENDLY_Kerlonian|r is not there, skip this step|r
    .accept 5321 >>Accept The Sleeper Has Awakened
    .target Kerlonian Evershade
step
    .goto Darkshore,44.39,76.30
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
    .goto Darkshore,43.94,80.14,60,0
    .goto Darkshore,43.09,81.72,60,0
    .goto Darkshore,41.59,83.52,60,0
    .goto Darkshore,40.15,83.02,60,0
    .goto Darkshore,38.70,82.44,60,0
    .goto Darkshore,38.13,79.75,60,0
    .goto Darkshore,40.52,80.57,60,0
    .goto Darkshore,43.94,80.14,60,0
    .goto Darkshore,43.09,81.72,60,0
    .goto Darkshore,41.59,83.52,60,0
    .goto Darkshore,40.15,83.02,60,0
    .goto Darkshore,38.70,82.44,60,0
    .goto Darkshore,38.13,79.75,60,0
    .goto Darkshore,40.52,80.57
    >>AoE |cRXP_ENEMY_Grizzled Thistle Bears|r. Loot them for their |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_Grizzled Thistle Bears|r share spawns with |cRXP_ENEMY_Moonstalker Sires|r and |cRXP_ENEMY_Giant Foreststriders|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
step
    #label 525
    .goto Darkshore,41.40,80.56
    >>Click |cRXP_PICK_Buzzbox 525|r
    .turnin 1003 >> Turn in Buzzbox 525
    .use 13536
step
    .goto Darkshore,41.10,84.17,70,0
    .goto Darkshore,40.38,90.49,70,0
    .goto Darkshore,36.58,90.55,70,0
    .goto Darkshore,36.70,94.60,70,0
    .goto Darkshore,42.76,90.70,70,0
    .goto Darkshore,41.77,87.88,70,0
    .goto Darkshore,44.57,93.03,70,0
    .goto Darkshore,41.10,84.17,70,0
    .goto Darkshore,40.38,90.49,70,0
    .goto Darkshore,36.58,90.55,70,0
    .goto Darkshore,36.70,94.60,70,0
    .goto Darkshore,42.76,90.70,70,0
    .goto Darkshore,41.77,87.88,70,0
    .goto Darkshore,44.57,93.03
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
    .goto Ashenvale,27.26,35.58
    >>Talk to |cRXP_FRIENDLY_Liladris|r
    .turnin 5321,1 >>Turn in The Sleeper Has Awakened
    .target Liladris Moonriver
    .use 13536
    .isOnQuest 5321
step
    #label Delgren
    .goto Ashenvale,26.19,38.70
    >>Talk to |cRXP_FRIENDLY_Delgren|r
    .turnin 967 >>Turn in The Tower of Althalaxx
    .target Delgren the Purifier
step
    .goto Ashenvale,22.64,51.91
    >>Talk to |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Turn in Therylune's Escape
    .target Therysil
step
    .goto Ashenvale,34.41,47.99
    .xp 19+8720 >> Grind to 8720+/21300xp
step << skip
    #completewith next
    +|cRXP_WARN_Start spam casting|r |T132794:0|t[Conjure Water r2] |cRXP_WARN_to conjure as much water as possible before taking the flight|r
step
    #completewith next
    .goto Ashenvale,34.41,47.99
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
    .goto Darkshore,36.62,45.60
    .turnin 1138,2 >>Turn in Fruit of the Sea
    .goto Darkshore,36.09,44.93
    .target +Gubber Blump
step
    .goto Darkshore,37.73,43.38
    >>Talk to |cRXP_FRIENDLY_Glynda|r
    .turnin 4740 >>Turn in WANTED: Murkdeep!
    .target Sentinel Glynda Nal'Shea
step
    >>Talk to |cRXP_FRIENDLY_Terenthis|r and |cRXP_FRIENDLY_Gershala|r
    .turnin 986 >>Turn in A Lost Master
    --.accept 993 >>Accept A Lost Master
    .target +Terenthis
    .goto Darkshore,39.37,43.48
    .turnin 3765 >> Turn in The Corruption Abroad
    .goto Darkshore,38.32,43.04
    .target +Gershala Nightwhisper
step
    .goto Darkshore,38.11,41.16
    >>Talk to |cRXP_FRIENDLY_Gorbold|r
    >>|cRXP_BUY_Buy 20|r |T134059:0|t[Mild Spices] |cRXP_BUY_from him|r
    .collect 2678,20,90,1 --Mild Spices (20)
    .target Gorbold Steelhand
    .itemcount 6889,20
    .skill cooking,50,1
step
    .goto Darkshore,38.11,41.16
    >>Talk to |cRXP_FRIENDLY_Gorbold|r
    >>|cRXP_BUY_Buy 15|r |T134059:0|t[Mild Spices] |cRXP_BUY_from him|r
    .collect 2678,15,90,1 --Mild Spices (15)
    .target Gorbold Steelhand
    .itemcount 6889,15
    .skill cooking,50,1
step
    .goto Darkshore,38.11,41.16
    >>Talk to |cRXP_FRIENDLY_Gorbold|r
    >>|cRXP_BUY_Buy 10|r |T134059:0|t[Mild Spices] |cRXP_BUY_from him|r
    .collect 2678,10,90,1 --Mild Spices (10)
    .target Gorbold Steelhand
    .itemcount 6889,10
    .skill cooking,50,1
step
    .goto Darkshore,38.11,41.16
    >>Talk to |cRXP_FRIENDLY_Gorbold|r
    >>|cRXP_BUY_Buy 5|r |T134059:0|t[Mild Spices] |cRXP_BUY_from him|r
    .collect 2678,5,90,1 --Mild Spices (5)
    .target Gorbold Steelhand
    .itemcount 6889,5
    .skill cooking,50,1
step
    .goto Darkshore,37.45,40.50
    >>Talk to |cRXP_FRIENDLY_Dalmond|r
    >>|cRXP_BUY_Buy a|r |T135435:0|t[Simple Wood] |cRXP_BUY_and|r |T135237:0|t[Flint and Tinder] |cRXP_BUY_from him|r
    .collect 4470,1,90,1 --Simple Wood (1)
    .collect 4471,1,90,1 --Flint and Tinder (1)
    .target Dalmond
    .skill cooking,50,1
step
    .goto Darkshore,37.44,41.84
    >>Talk to |cRXP_FRIENDLY_Hollee|r
    .turnin 731 >> Turn in The Absent Minded Prospector
    .accept 741 >> Accept The Absent Minded Prospector
    .target Archaeologist Hollee
step
    #completewith Teldrassil
    #label BoatT
    .goto Darkshore,37.47,42.45,20,0
    .goto Darkshore,37.44,43.03,20,0
    .goto Darkshore,36.85,44.05,20,0
    .goto Darkshore,32.96,41.88,20,0
    .goto Darkshore,33.23,39.91,50 >>Travel toward the Darnassus Boat
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
    .goto Teldrassil,54.91,96.25,100 >> Take the Boat to Teldrassil
step
    #completewith next
    .goto Teldrassil,55.52,93.68,60,0
    .goto Teldrassil,56.80,92.90,40,0
    .goto Teldrassil,57.47,92.97,20,0
    .goto Teldrassil,58.40,94.01,20 >>Travel toward |cRXP_FRIENDLY_Vesprystus|r
step
    .goto Teldrassil,58.40,94.01
    >>Talk to |cRXP_FRIENDLY_Vesprystus|r
    .fp Rut'theran >> Get the Rut'theran Village flight path
    .target Vesprystus
step
    #completewith next
    .goto 1438,55.885,89.350
    .zone Darnassus >> Go through the purple portal into Darnassus
step
    #completewith next
    .goto Darnassus,37.94,48.14,30,0
    .goto Darnassus,38.20,65.96,30,0
    .goto Darnassus,36.79,72.44,30,0
    .goto Darnassus,31.24,84.49,20 >>Travel toward |cRXP_FRIENDLY_Greywhisker|r
step
    .goto Darnassus,31.24,84.49
    >>Talk to |cRXP_FRIENDLY_Greywhisker|r
    .turnin 741,3 >>Turn in The Absent Minded Prospector
    .accept 942 >>Accept The Absent Minded Prospector
    .target Chief Archaeologist Greywhisker

]])

RXPGuides.RegisterGuide([[
#classic
#tbc
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
    .goto Stormwind City,55.46,65.26
    >>Talk to |cRXP_FRIENDLY_Keldric|r through the wall
    .vendor 1257 >> Vendor Trash. |cRXP_BUY_Buy|r |T134830:0|t[Lesser Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .target Keldric Boucher
step
    #completewith Bank
    .goto Stormwind City,55.30,68.16,10 >>Enter the Stormwind Bank
step
    #sticky
    #label Bank1
    .goto Stormwind City,57.03,72.97
    >>Talk to |cRXP_FRIENDLY_Newton|r
    .bankwithdraw 4371,1941,1711,1478,1712,3012,1180,1181,3013,2998 >> Withdraw the following items from your bank:
    >>|T133024:0|t[Bronze Tube]
    >>|T134943:0|t[Scrolls]
    >>|T132620:0|t[Cask of Merlot]
    >>|T134377:0|t[A Simple Compass]
    .target Newton Burnside
step
    #label Bank
    .goto Stormwind City,57.03,72.97
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
    .goto Stormwind City,52.16,61.44,12,0
    .goto Stormwind City,49.41,63.41,12,0
    .goto Stormwind City,51.16,68.33,12 >>Travel toward |cRXP_FRIENDLY_Roberto|r
step
    #requires Bank1
    .goto Stormwind City,52.05,67.96
    >>Go inside the building
    >>Talk to |cRXP_FRIENDLY_Roberto|r
    >>|cRXP_BUY_Buy a|r |T132620:0|t[Cask of Merlot] |cRXP_BUY_from him|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    #requires Bank1
    .goto Stormwind City,51.68,59.86,8,0
    .goto Stormwind City,51.83,60.41,4,0
    .goto Stormwind City,51.59,60.15,6,0
    .goto Stormwind City,39.17,76.58,12,0
    >>|cRXP_WARN_Jump up onto the torch, then drop down to get under Stormwind|r
    >>|cRXP_WARN_With Shadows on "Fair" or "Low", get in the middle of Derek the Dinosaur's feet (the lighter part of the dirt) just before the blue void, then walk straight forward|r
    >>|cRXP_WARN_NOTE: There is a small chance of dying using this method. You can also walk to the Mage Tower normally if you wish|r
    .link https://youtu.be/gV8-wgQEomc >> CLICK HERE for a guide
    .goto Stormwind City,38.61,79.39,10 >>Travel toward |cRXP_FRIENDLY_Larimaine|r
step
    #requires Bank1
    .goto Stormwind City,39.69,79.56
    >>Talk to |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >> Train |T135763:0|t[Teleport: Stormwind]
    >>Total Cost: 20s
    .target Larimaine Purdue
step
    .goto Stormwind City,38.61,79.39
    >>Talk to |cRXP_FRIENDLY_Jennea|r
    .trainer >> Train your class spells (Blink, Evocation, Frost Armor r3, Mana Shield, Conjure Water r3)
    >>|cRXP_WARN_Do NOT train Blizzard yet|r
    >>Total Cost: 1g
    .target Jennea Cannon
step
    #completewith Charys
    .goto Stormwind City,36.73,82.44,10,0
    .goto Stormwind City,37.91,81.92,10,0
    .goto Stormwind City,38.10,80.93,8,0
    .goto Stormwind City,37.49,81.35,6,0
    .goto Stormwind City,38.46,80.61,8,0
    .goto Stormwind City,33.65,81.58,15,0
    .goto Stormwind City,31.12,79.42,15,0
    .goto Stormwind City,32.07,81.50,10,0
    .goto Stormwind City,32.63,80.62,8,0
    >>Exit the Mage Tower
    .goto Stormwind City,32.16,79.84,10 >>Travel toward |cRXP_FRIENDLY_Charys|r
step
    .goto Stormwind City,32.16,79.84
    >>Enter the building
    >>Talk to |cRXP_FRIENDLY_Charys|r
    >>|cRXP_BUY_Buy 2|r |T134419:0|t[Runes of Teleportation]|cRXP_BUY_,|r |T134851:0|t[Lesser Mana Potions]|cRXP_BUY_,|r |T134831:0|t[Healing Potions]|cRXP_BUY_, and a|r |T132515:0|t[Cloth Belt] |cRXP_BUY_from her (if they're up)|r
    >>|cRXP_WARN_DON'T go below 18s 31c|r
    .collect 17031,2,344,1 --Rune of Teleportation (2)
    .target Charys Yserian
    .itemcount 4371,1
step
    #label Charys
    .goto Stormwind City,32.16,79.84
    >>Enter the building
    >>Talk to |cRXP_FRIENDLY_Charys|r
    >>|cRXP_BUY_Buy two|r |T134419:0|t[Runes of Teleportation]|cRXP_BUY_,|r |T134851:0|t[Lesser Mana Potions]|cRXP_BUY_,|r |T134831:0|t[Healing Potions]|cRXP_BUY_, and a|r |T132515:0|t[Cloth Belt] |cRXP_BUY_from her (if they're up)|r
    >>|cRXP_WARN_DON'T go below 26s 31c|r
    .collect 17031,2,344,1 --Rune of Teleportation (2)
    .target Charys Yserian
    .itemcount 4371,<1
step
    #completewith Adair
    .goto Stormwind City,39.32,71.54,20,0
    .goto Stormwind City,41.06,69.44,20,0
    .goto Stormwind City,44.02,69.81,20,0
    .goto Stormwind City,46.32,66.93,20,0
    .goto Stormwind City,42.45,61.76,20,0
    .goto Stormwind City,41.17,63.74,15,0
    .goto Stormwind City,41.57,65.46,10 >>Travel toward |cRXP_FRIENDLY_Adair|r
step
    .goto Stormwind City,41.57,65.46
    >>Enter the building
    >>Talk to |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >> |cRXP_BUY_Buy non-intellect|r |T134943:0|t[Scrolls] |cRXP_BUY_from him (if they're up)|r
    >>|cRXP_WARN_DON'T go below 18s 31c|r
    .money <0.1831
    .target Adair Gilroy
step
    #label Adair
    .goto Stormwind City,41.57,65.46
    >>Enter the building
    >>Talk to |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >> |cRXP_BUY_Buy non-intellect|r |T134943:0|t[Scrolls] |cRXP_BUY_from him (if they're up)|r
    >>|cRXP_WARN_DON'T go below 26s 31c|r
    .money <0.2631
    .target Adair Gilroy
step
    #completewith next
    .goto Stormwind City,37.84,58.50,5,0
    .goto Stormwind City,37.81,45.02,20 >>Run up the edge of the wall instead of going around
step
    .goto Stormwind City,45.70,38.42
    >>Talk to |cRXP_FRIENDLY_Kristoff|r
    .accept 343 >> Accept Speaking of Fortitude
    .target Brother Kristoff
step
    #completewith next
    .goto Stormwind City,47.85,32.67,15,0
    .goto Stormwind City,47.96,31.15,12,0
    .goto Stormwind City,49.18,30.29,12 >>Travel toward |cRXP_FRIENDLY_Baros|r
step
    .goto Stormwind City,49.18,30.29
    >>Go inside the building
    >>Talk to |cRXP_FRIENDLY_Baros|r
    .turnin 399 >> Turn in Humble Beginnings
    .target Baros Alexston
step
    .goto Stormwind City,55.25,7.07
    >>Talk to |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him if its up|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
step
    #completewith next
    .goto Stormwind City,69.02,28.39,30,0
    .goto Stormwind City,72.60,23.21,20,0
    .goto Stormwind City,69.78,16.58,20,0
    .goto Stormwind City,70.34,11.47,20,0
    .goto Stormwind City,74.19,7.45,12 >>Travel toward |cRXP_FRIENDLY_Milton|r
step
    .goto Stormwind City,74.19,7.45
    >>Talk to |cRXP_FRIENDLY_Milton|r
    .turnin 343 >> Turn in Speaking of Fortitude
    .accept 344 >> Accept Brother Paxton
    .target Milton Sheaf
step
    #completewith next
    .goto Stormwind City,70.34,11.47,20,0
    .goto Stormwind City,69.78,16.58,20,0
    .goto Stormwind City,72.60,23.21,20,0
    .goto Stormwind City,69.20,29.08,30,0
    .goto Stormwind City,61.74,42.34,20,0
    .goto Stormwind City,64.80,60.34,12,0
    .goto Stormwind City,64.17,60.60,12 >>Travel toward |cRXP_FRIENDLY_Felicia|r
step
    .goto Stormwind City,64.17,60.60
    >>Talk to |cRXP_FRIENDLY_Felicia|r
    >>|cRXP_BUY_Buy the|r |T133849:0|t[Stormwind Seasoning Herbs] |cRXP_BUY_from her|r
    .collect 2665,1,90,1 --Stormwind Seasoning Herbs
    .target Felicia Gump
step
    #completewith next
    .goto Stormwind City,64.91,58.48,30,0
    .goto Stormwind City,59.91,51.60,30,0
    .goto Stormwind City,57.83,54.98,30,0
    .goto Stormwind City,63.27,63.43,20,0
    .goto Stormwind City,63.13,65.23,20,0
    .goto Stormwind City,65.94,65.48,12,0
    .goto Stormwind City,65.85,66.00,8,0
    .goto Stormwind City,65.22,75.58,40 >>Drop down to the ledge below |cRXP_FRIENDLY_Dungar|r
step
    #completewith next
    .goto Elwynn Forest,42.96,65.62,30 >>Travel toward the Goldshire Inn
step << skip
    #completewith Paxton
    #requires PaxtonT
    .goto Elwynn Forest,32.75,49.52,50,0
    .goto Elwynn Forest,40.63,49.27,20,0
    .goto Elwynn Forest,48.27,41.93,50,0
    .goto Elwynn Forest,48.79,41.56,10,0
    .goto Elwynn Forest,49.26,40.69,10,0
    >>Take the Mountain Path toward |cRXP_FRIENDLY_Paxton|r
    .goto Elwynn Forest,49.61,40.41,10 >>Travel toward |cRXP_FRIENDLY_Paxton|r
step
    .goto Elwynn Forest,44.00,65.69
    >>Talk to |cRXP_FRIENDLY_Dobbins|r
    >>|cRXP_BUY_Buy a|r |T132794:0|t[Skin of Sweet Rum] |cRXP_BUY_from him|r
    .collect 1939,1,116,1 --Skin of Sweet Rum
    .target Barkeep Dobbins
step
    #sticky
    #label FarleyHome
    .goto Elwynn Forest,43.77,65.80,0,0
    >>Talk to |cRXP_FRIENDLY_Farley|r
    .home >> Set your Hearthstone to Goldshire
    .target Innkeeper Farley
step
    #completewith next
    #requires FarleyHome
    .goto Elwynn Forest,48.79,41.56,10,0
    .goto Elwynn Forest,49.26,40.69,10,0
    .goto Elwynn Forest,49.61,40.41,10 >>Travel toward |cRXP_FRIENDLY_Paxton|r
step
    #requires FarleyHome
    .goto Elwynn Forest,49.61,40.41
    >>Talk to |cRXP_FRIENDLY_Paxton|r
    .turnin 344 >> Turn in Brother Paxton
    .accept 345 >> Accept Ink Supplies
    .target Brother Paxton
step
    #completewith Theo
    .goto Elwynn Forest,49.26,40.69,10,0
    .goto Elwynn Forest,48.79,41.56,10,0
    .goto Elwynn Forest,48.28,42.21,10,0
    .goto Elwynn Forest,57.62,51.97,30,0
    .goto Elwynn Forest,64.45,69.10,15 >>Take the Mountain Path toward the Tower of Azora
step
    #sticky
    #label Dawn
    .goto Elwynn Forest,64.88,69.19,0,0
    >>Talk to |cRXP_FRIENDLY_Dawn|r upstairs
    .vendor 958 >> |cRXP_BUY_Buy non-intellect|r |T134943:0|t[Scrolls]|cRXP_BUY_,|r |T134850:0|t[Minor Mana Potions]|cRXP_BUY_, and|r |T134830:0|t[Lesser Healing Potions] |cRXP_BUY_from her (if they're up)|r
    >>|cRXP_WARN_DON'T go below 11s 38c|r
    .money <0.1138
    .target Dawn Brightstar
    .itemcount 4371,1
step
    #sticky
    #label Dawn2
    .goto Elwynn Forest,64.88,69.19,0,0
    >>Talk to |cRXP_FRIENDLY_Dawn|r upstairs
    .vendor 958 >> |cRXP_BUY_Buy non-intellect|r |T134943:0|t[Scrolls]|cRXP_BUY_,|r |T134850:0|t[Minor Mana Potions]|cRXP_BUY_, and|r |T134830:0|t[Lesser Healing Potions] |cRXP_BUY_from her (if they're up)|r
    >>|cRXP_WARN_DON'T go below 19s 38c|r
    .money <0.1938
    .target Dawn Brightstar
    .itemcount 4371,<1
step
    #label Theo
    .goto Elwynn Forest,65.22,69.71
    >>Go upstairs
    >>Talk to |cRXP_FRIENDLY_Theocritus|r
    .accept 94 >> Accept A Watchful Eye
    .target Theocritus
step
    #requires Dawn
step
    #completewith next
    #requires Dawn2
    .goto Duskwood,73.79,45.98,20,0
    .goto Duskwood,74.01,45.36,10 >>Go Inside the Inn
step
    #requires Dawn2
    .goto Duskwood,73.81,44.02
    >>Talk to |cRXP_FRIENDLY_Hann|r
    >>|cRXP_BUY_Buy the|r |T132798:0|t[Bottle of Moonshine] |cRXP_BUY_from him|r
    .collect 1942,1,116,1 --Bottle of Moonshine (1)
    .target Barkeep Hann
step
    #completewith Viktori
    .goto Duskwood,74.01,45.36,10,0
    .goto Duskwood,73.79,45.98,10 >>Exit the Inn
step
    #completewith next
    .goto Duskwood,75.22,48.26,12 >>Go inside the building
step
    .goto Duskwood,75.34,48.74
    >>Talk to |cRXP_FRIENDLY_Elaine|r
    .accept 163 >>Accept Raven Hill
    .accept 164 >>Accept Deliveries to Sven
    .accept 165 >>Accept The Hermit
    .target Elaine Carevin
step
    .goto Duskwood,78.00,48.33
    >>Talk to |cRXP_FRIENDLY_Herble|r
    .vendor 3133 >>|cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him if its up|r
    .target Herble Baubbletump
    .itemcount 4371,<1
step
    .goto Duskwood,79.78,48.06
    >>Talk to |cRXP_FRIENDLY_Viktori|r
    .accept 174 >> Accept Look To The Stars
    .turnin 174 >> Turn in Look To The Stars
    .accept 175 >> Accept Look To The Stars
    .target Viktori Prism'Antras
    .itemcount 4371,1
step
    #label Viktori
    .goto Duskwood,79.78,48.06
    >>Talk to |cRXP_FRIENDLY_Viktori|r
    .accept 175 >> Accept Look To The Stars
    .target Viktori Prism'Antras
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.46,59.02
    >>Talk to |cRXP_FRIENDLY_Mary|r
    .turnin 175 >> Turn in Look To The Stars
    .accept 177 >> Accept Look To The Stars
    .target Blind Mary
    .isQuestTurnedIn 174
step
    .goto Duskwood,77.48,44.29
    >>Talk to |cRXP_FRIENDLY_Felicia|r
    .fp Duskwood >> Get the Duskwood flight path
    .target Felicia Mane
step
    #completewith Kzixx
    .goto Duskwood,76.66,23.49,60,0
    .goto Duskwood,81.82,19.76,20 >>Travel toward |cRXP_FRIENDLY_Kzixx|r
step
    .goto Duskwood,81.82,19.76
    >>Talk to |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Buy|r |T134851:0|t[Lesser Mana Potions] |cRXP_BUY_and|r  |T134831:0|t[Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .itemcount 4827,1
    .target Kzixx
step
    .goto Duskwood,81.82,19.76
    >>Talk to |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Buy|r |T134851:0|t[Lesser Mana Potions] |cRXP_BUY_and|r  |T134831:0|t[Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .itemcount 4828,1
    .target Kzixx
step
    .goto Duskwood,81.82,19.76
    >>Talk to |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Buy|r |T134851:0|t[Lesser Mana Potions] |cRXP_BUY_and|r  |T134831:0|t[Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .itemcount 4829,1
    .target Kzixx
step
    #label Kzixx
    .goto Duskwood,81.82,19.76
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
    .goto Redridge Mountains,15.52,72.58,60,0
    .goto Redridge Mountains,14.87,70.30,60,0
    .goto Redridge Mountains,16.93,70.20
    >>Talk to |cRXP_FRIENDLY_Parker|r
    .accept 244 >>Accept Encroaching Gnolls
    .target Guard Parker
step << skip
    #label AoE1
    .goto Redridge Mountains,15.73,62.47,60 >>AoE the |cRXP_ENEMY_Redridge Mongrels|r and |cRXP_ENEMY_Redridge Thrashers|r
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
    .goto Redridge Mountains,30.74,59.99
    >>Talk to |cRXP_FRIENDLY_Feldon|r
    .turnin 244 >>Turn in Encroaching Gnolls
    .accept 246 >>Accept Assessing the Threat
    .target Deputy Feldon
step
    .goto Redridge Mountains,30.59,59.40
    >>Talk to |cRXP_FRIENDLY_Ariena|r
    .fp Redridge Mountains >> Get the Redridge Mountains flight path
step
    >>Talk to |cRXP_FRIENDLY_Marris|r and |cRXP_FRIENDLY_Oslow|r
    .accept 20 >>Accept Blackrock Menace
    .target +Marshal Marris
    .goto Redridge Mountains,33.51,48.96
    .accept 125 >>Accept The Lost Tools
    .turnin 345 >>Turn in Ink Supplies
    .accept 347 >>Accept Rethban Ore
    .goto Redridge Mountains,32.14,48.64
    .target +Foreman Oslow
step
    .goto Redridge Mountains,29.89,47.36
    >>Talk to |cRXP_FRIENDLY_Karen|r
    >>|cRXP_BUY_Buy a|r |T134708:0|t[Mining Pick] |cRXP_BUY_from her|r
    >>|cRXP_WARN_You'll need this for later|r
    .collect 2901,1,125,1 --Mining Pick (1)
    .target Karen Taylor
step
    >>Talk to |cRXP_FRIENDLY_Conacher|r
--  .accept 120 >>Accept Messenger to Stormwind
--  .goto Redridge Mountains,29.99,44.45
    .accept 91 >>Accept Solomon's Law
    .goto Redridge Mountains,29.72,44.26
--  .target Magistrate Solomon
    .target Bailiff Conacher
step
    >>Talk to |cRXP_FRIENDLY_Baren|r and the |cRXP_PICK_Wanted Poster|r
    .accept 127 >>Accept Selling Fish
    .goto Redridge Mountains,27.72,47.38
    .accept 180 >>Accept Wanted: Lieutenant Fangore
    .goto Redridge Mountains,26.75,46.42
    .target Dockmaster Baren
step
    #sticky
    #label Darcy1
    .goto Redridge Mountains,26.92,44.95,0,0
    >>Go Inside the Inn
    >>Talk to |cRXP_FRIENDLY_Darcy|r
    .accept 129 >>Accept A Free Lunch
    .target Darcy
step
    .goto Redridge Mountains,26.49,43.95
    >>Inside the Inn
    >>Talk to |cRXP_FRIENDLY_Daniels|r
    .accept 116 >>Accept Dry Times
    .turnin 116 >>Turn in Dry Times
    .target Barkeep Daniels
step
    .goto Redridge Mountains,26.47,45.33
    >>Inside the Inn
    >>Talk to |cRXP_FRIENDLY_Wiley|r by jumping from the bannister downstairs
    .turnin 65 >>Turn in The Defias Brotherhood
--  .accept 132 >>Accept The Defias Brotherhood
    .target Wiley the Black
step
    .goto Redridge Mountains,29.32,53.64
    >>Talk to |cRXP_FRIENDLY_Shawn|r
    .accept 3741 >>Accept Hilary's Necklace
    .target Shawn
step
    .goto Redridge Mountains,31.29,54.27,90,0
    .goto Redridge Mountains,27.80,56.05,90,0
    .goto Redridge Mountains,26.56,50.63,90,0
    .goto Redridge Mountains,23.96,55.17,90,0
    .goto Redridge Mountains,19.16,51.75,90,0
    .goto Redridge Mountains,31.12,54.21,90,0
    .goto Redridge Mountains,34.03,55.34,90,0
    .goto Redridge Mountains,38.09,54.49
    >>|cRXP_WARN_Swim underwater and check the spawn locations. There are 8 locations with 2 spawns up at once|r
    >>Open the |cRXP_PICK_Glinting Mud|r. Loot it for |cRXP_LOOT_Hilary's Necklace|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 3741,1 --Hilary's Necklace (1)
step
    .goto Redridge Mountains,29.24,53.63
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
    .goto Redridge Mountains,15.73,62.47
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
    .goto Redridge Mountains,15.52,72.58,60,0
    .goto Redridge Mountains,14.87,70.30,60,0
    .goto Redridge Mountains,16.93,70.20
    >>Talk to |cRXP_FRIENDLY_Parker|r
    .turnin 129 >>Turn in A Free Lunch
    .accept 130 >>Accept Visit the Herbalist
    .target Guard Parker
step
    #label Gnolls3
    .goto Redridge Mountains,29.40,83.93,60,0
    .goto Redridge Mountains,30.95,84.10,60,0
    .goto Redridge Mountains,32.26,82.83,60,0
    .goto Redridge Mountains,34.60,82.99,60,0
    .goto Redridge Mountains,43.37,71.01,60,0
    .goto Redridge Mountains,29.40,83.93,60,0
    .goto Redridge Mountains,30.95,84.10,60,0
    .goto Redridge Mountains,32.26,82.83,60,0
    .goto Redridge Mountains,34.60,82.99,60,0
    .goto Redridge Mountains,43.37,71.01
    >>AoE the |cRXP_ENEMY_Redridge Mongrels|r, |cRXP_ENEMY_Redridge Thrashers|r, and |cRXP_ENEMY_Redridge Poachers|r
    >>|cRXP_WARN_Remember to deadzone the|r |cRXP_ENEMY_Redridge Poachers|r
    .complete 246,1 --Redridge Mongrel (10)
    .mob +Redridge Mongrel
    .complete 246,2 --Redridge Poacher (6)
    .mob +Redridge Poacher
step
    .goto Redridge Mountains,30.74,59.99
    >>Talk to |cRXP_FRIENDLY_Feldon|r
    .turnin 246 >>Turn in Assessing the Threat
    .target Deputy Feldon
step
    .goto Redridge Mountains,41.52,54.68,-1
    >>Go underwater
    >>Open the |cRXP_PICK_Sunken Chest|r. Loot it for |cRXP_LOOT_Oslow's Toolbox|r
    >>|cRXP_WARN_This has a 5 second cast time|r
    .complete 125,1 --Oslow's Toolbox (1)
step
    #completewith next
    .goto Redridge Mountains,40.30,45.98,60,0
    >>AoE |cRXP_ENEMY_Murloc Flesheaters|r and |cRXP_ENEMY_Murloc Scouts|r. Loot them for some of the |cRXP_LOOT_Spotted Sunfish|r and |cRXP_LOOT_Murloc Fins|r
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
    .mob Murloc Flesheater
    .mob Murloc Scout
step
    .goto Redridge Mountains,32.14,48.63
    >>Talk to |cRXP_FRIENDLY_Oslow|r
    .turnin 125 >>Turn in The Lost Tools
    .accept 89 >>Accept The Everstill Bridge
    .target Foreman Oslow
step
    .goto Redridge Mountains,30.83,46.49
    >>Talk to |cRXP_FRIENDLY_Dorin|r
    .vendor >> Vendor Trash
    .target Dorin Songblade
    .isOnQuest 89
step << skip
    #completewith next
    .goto Redridge Mountains,29.24,45.40,10,0
    .goto Redridge Mountains,28.89,44.87,8 >>Go inside the Town Hall
step
    .goto Redridge Mountains,37.16,45.20,60,0
    .goto Redridge Mountains,38.36,41.34,60,0
    .goto Redridge Mountains,38.89,31.72,60,0
    .goto Redridge Mountains,43.25,34.03,60,0
    .goto Redridge Mountains,47.37,34.77,60,0
    .goto Redridge Mountains,55.35,45.02,60,0
    .goto Redridge Mountains,57.02,51.01,60,0
    .goto Redridge Mountains,56.24,53.93,60,0
    .goto Redridge Mountains,58.38,53.56,60,0
    .goto Redridge Mountains,58.47,44.61,60,0
    .goto Redridge Mountains,59.11,43.97,60,0
    .goto Redridge Mountains,59.74,42.01,60,0
    .goto Redridge Mountains,62.34,41.76,60,0
    .goto Redridge Mountains,62.56,45.36,60,0
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
	.goto Redridge Mountains,37.16,45.20,30,0
	.goto Redridge Mountains,38.36,41.34,30,0
	.goto Redridge Mountains,40.09,40.64,30,0
	.goto Redridge Mountains,42.89,39.26,30,0
	.goto Redridge Mountains,59.36,44.56,30,0
	.goto Redridge Mountains,59.79,42.05,30,0
	.goto Redridge Mountains,62.58,41.46,30,0
	.goto Redridge Mountains,62.57,45.48,30,0
	.goto Redridge Mountains,59.36,44.56,30,0
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
    .goto Redridge Mountains,58.06,52.01,40,0
    .goto Redridge Mountains,57.08,51.03,40,0
    .goto Redridge Mountains,56.12,53.55,40,0
    .goto Redridge Mountains,58.06,52.01
    .collect 1080,5,92,1 --Tough Condor Meat (5)
#loop
	.line Redridge Mountains,43.25,34.03,47.37,34.77,47.37,34.77,49.97,33.60,51.90,39.75,54.81,40.66,54.70,44.93,57.63,46.48
	.goto Redridge Mountains,43.25,34.03,30,0
	.goto Redridge Mountains,47.37,34.77,30,0
	.goto Redridge Mountains,47.37,34.77,30,0
	.goto Redridge Mountains,49.97,33.60,30,0
	.goto Redridge Mountains,51.90,39.75,30,0
	.goto Redridge Mountains,54.81,40.66,30,0
	.goto Redridge Mountains,54.70,44.93,30,0
	.goto Redridge Mountains,57.63,46.48,30,0
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
#loop
	.line Redridge Mountains,52.26,36.56,54.08,38.28,54.98,40.31,56.79,41.36,57.26,47.60,54.76,45.58,52.67,42.73,50.50,41.55,52.26,36.56
	.goto Redridge Mountains,52.26,36.56,30,0
	.goto Redridge Mountains,54.08,38.28,30,0
	.goto Redridge Mountains,54.98,40.31,30,0
	.goto Redridge Mountains,56.79,41.36,30,0
	.goto Redridge Mountains,57.26,47.60,30,0
	.goto Redridge Mountains,54.76,45.58,30,0
	.goto Redridge Mountains,52.67,42.73,30,0
	.goto Redridge Mountains,50.50,41.55,30,0
	.goto Redridge Mountains,52.26,36.56,30,0
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .disablecheckbox
    .complete 89,1 --Iron Pike (5)
    .disablecheckbox
    .complete 89,2 --Iron Rivet (5)
    .disablecheckbox
    .goto Redridge Mountains,38.89,31.72
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
    .goto Redridge Mountains,36.64,37.01,60,0
    .goto Redridge Mountains,32.21,40.09,60,0
    >>AoE |cRXP_ENEMY_Redridge Mystics|r and |cRXP_ENEMY_Redridge Brutes|r Loot them for their |cRXP_LOOT_Iron Pikes|r and |cRXP_LOOT_Iron Rivets|r
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .mob Redridge Mystic
    .mob Redridge Brute
step
    .goto Redridge Mountains,22.68,43.83
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
    .goto Redridge Mountains,21.86,46.33
    >>Talk to |cRXP_FRIENDLY_Martie|r
    .turnin 130 >>Turn in Visit the Herbalist
    .accept 131 >>Accept Delivering Daffodils
    .accept 34 >>Accept An Unwelcome Guest
    .target Martie Jainrose
step
    #completewith next
    .goto Redridge Mountains,17.72,55.71,60,0
    .goto Redridge Mountains,16.09,53.08,60,0
    >>AoE |cRXP_ENEMY_Great Goretusks|r. Loot them for |cRXP_LOOT_Great Goretusk Snouts|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
step
    .goto Redridge Mountains,15.66,49.31
    >>Kill |cRXP_ENEMY_Bellygrub|r
    >>|cRXP_WARN_Kite her toward the fence north of |cRXP_FRIENDLY_Lamar|r. Jump back and forth to safespot her without taking any damage|r
    >>Be careful as |cRXP_ENEMY_Bellygrub|r casts |T132337:0|t[Charge] and |T136025:0|t[Tremor]
    .complete 34,1 --Bellygrub's Tusk (1)
    .mob Bellygrub
    .target Lamar Veisilli
step
    .goto Redridge Mountains,21.86,46.33
    >>Talk to |cRXP_FRIENDLY_Martie|r
    .turnin 34 >>Turn in An Unwelcome Guest
    .target Martie Jainrose
step
    .goto Redridge Mountains,17.47,43.62,60,0
    .goto Redridge Mountains,20.92,39.37,60,0
    .goto Redridge Mountains,17.72,55.71,60,0
    .goto Redridge Mountains,16.09,53.08,60,0
    .goto Redridge Mountains,17.47,43.62,60,0
    .goto Redridge Mountains,20.92,39.37,60,0
    .goto Redridge Mountains,17.72,55.71,60,0
    .goto Redridge Mountains,16.09,53.08
    >>AoE |cRXP_ENEMY_Great Goretusks|r. Loot them for |cRXP_LOOT_Great Goretusk Snouts|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
step
    #completewith next
    .goto Redridge Mountains,21.35,36.34,60,0
    >>AoE |cRXP_ENEMY_Redridge Mystics|r and |cRXP_ENEMY_Redridge Brutes|r Loot them for their |cRXP_LOOT_Iron Pikes|r and |cRXP_LOOT_Iron Rivets|r
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .mob Redridge Mystic
    .mob Redridge Brute
step
    .goto Redridge Mountains,19.50,31.91,60,0
    .goto Redridge Mountains,20.58,28.29,40 >>Travel to the Rethban Caverns
    .isOnQuest 347
step
#loop
	.line Redridge Mountains,18.95,24.50,21.62,23.72,21.89,15.06,20.21,13.25,18.82,15.03,16.06,17.08,17.48,19.55,16.05,21.04,18.95,24.50
	.goto Redridge Mountains,18.95,24.50,20,0
	.goto Redridge Mountains,21.62,23.72,20,0
	.goto Redridge Mountains,21.89,15.06,20,0
	.goto Redridge Mountains,20.21,13.25,20,0
	.goto Redridge Mountains,18.82,15.03,20,0
	.goto Redridge Mountains,16.06,17.08,20,0
	.goto Redridge Mountains,17.48,19.55,20,0
	.goto Redridge Mountains,16.05,21.04,20,0
	.goto Redridge Mountains,18.95,24.50,20,0
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
	.goto Redridge Mountains,18.95,24.50,20,0
	.goto Redridge Mountains,21.62,23.72,20,0
	.goto Redridge Mountains,21.89,15.06,20,0
	.goto Redridge Mountains,20.21,13.25,20,0
	.goto Redridge Mountains,18.82,15.03,20,0
	.goto Redridge Mountains,16.06,17.08,20,0
	.goto Redridge Mountains,17.48,19.55,20,0
	.goto Redridge Mountains,16.05,21.04,20,0
	.goto Redridge Mountains,18.95,24.50,20,0
    .xp 21+14365 >> Grind to 14365+/25200xp
    .isQuestAvailable 92
step
#loop
	.line Redridge Mountains,18.95,24.50,21.62,23.72,21.89,15.06,20.21,13.25,18.82,15.03,16.06,17.08,17.48,19.55,16.05,21.04,18.95,24.50
	.goto Redridge Mountains,18.95,24.50,20,0
	.goto Redridge Mountains,21.62,23.72,20,0
	.goto Redridge Mountains,21.89,15.06,20,0
	.goto Redridge Mountains,20.21,13.25,20,0
	.goto Redridge Mountains,18.82,15.03,20,0
	.goto Redridge Mountains,16.06,17.08,20,0
	.goto Redridge Mountains,17.48,19.55,20,0
	.goto Redridge Mountains,16.05,21.04,20,0
	.goto Redridge Mountains,18.95,24.50,20,0
    .xp 21+15715 >> Grind to 15715+/25200xp
    .isQuestTurnedIn 92
step << skip
    #completewith next
    .goto Redridge Mountains,18.79,13.84,-1
    .goto Redridge Mountains,22.04,17.14,-1
    .goto Redridge Mountains,18.40,24.13,-1
    .goto Redridge Mountains,21.29,24.06,-1
    .goto Redridge Mountains,16.58,20.97,-1
    .goto Redridge Mountains,33.82,48.07,30 >>Logout Skip out of the cave (on the EAST side) back to Lakeshire
step
    #completewith next
    .subzone 69 >> Return to Lakeshire
step
    >>Talk to |cRXP_FRIENDLY_Marris|r and |cRXP_FRIENDLY_Oslow|r
    .turnin 20 >>Turn in Blackrock Menace
    .accept 19 >>Accept Tharil'zun
    .target +Marshal Marris
    .goto Redridge Mountains,33.51,48.96
    .turnin 89,1 >>Turn in The Everstill Bridge
    .goto Redridge Mountains,32.14,48.64
    .target +Foreman Oslow
step
    .goto Redridge Mountains,30.94,47.24
    >>Talk to |cRXP_FRIENDLY_Verner|r
    .accept 118 >>Accept The Price of Shoes
    .target Verner Osgood
step
    .goto Redridge Mountains,27.72,47.38
    >>Talk to |cRXP_FRIENDLY_Baren|r
    .turnin 127 >> Turn in Selling Fish
    .accept 150 >> Accept Murloc Poachers
    .turnin 150 >> Turn in Murloc Poachers
    .goto Redridge Mountains,27.72,47.38
    .target Dockmaster Baren
step
    #sticky
    #label Kimberly
    .goto Redridge Mountains,27.08,45.54,0,0
    .vendor >> Vendor Trash. You can sell the |T134708:0|t[Mining Pick] now if you wish
    .target Kimberly Hiett
step
    .goto Redridge Mountains,26.92,44.95
    >>Go Inside the Inn
    >>Talk to |cRXP_FRIENDLY_Darcy|r
    .turnin 131 >>Turn in Delivering Daffodils
    .target Darcy
step
    #completewith next
    .goto Redridge Mountains,26.52,46.38,12,0
    .goto Redridge Mountains,22.86,44.57,12,0
    >>Travel toward |cRXP_FRIENDLY_Breanna|r
step
    .goto Redridge Mountains,22.68,43.83
    >>Go inside
    >>Talk to |cRXP_FRIENDLY_Breanna|r
    .accept 92 >> Accept Redridge Goulash
    .turnin 92 >> Turn in Redridge Goulash
    .target Chef Breanna
step
    #completewith next
    .hs >> Hearth to Goldshire
step
    .goto Elwynn Forest,41.71,65.55
    >>Talk to |cRXP_FRIENDLY_Argus|r
    .turnin 118 >>Turn in The Price of Shoes
    .accept 119 >>Accept Return to Vener
    .target Smith Argus
step
    #completewith next
    .goto Elwynn Forest,48.79,41.56,10,0
    .goto Elwynn Forest,49.26,40.69,10,0
    .goto Elwynn Forest,49.61,40.41,10 >>Travel toward |cRXP_FRIENDLY_Paxton|r
step
    .goto Elwynn Forest,49.61,40.41
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
    .goto Stormwind City,38.23,81.86
    >>Talk to |cRXP_FRIENDLY_Dumas|r
    .train 10 >> Train Blizzard
    .target Maginor Dumas
    .xp <22,1
step
    #completewith CharysEnd
    .goto Stormwind City,36.73,82.44,10,0
    .goto Stormwind City,37.91,81.92,10,0
    .goto Stormwind City,38.10,80.93,8,0
    .goto Stormwind City,37.49,81.35,6,0
    .goto Stormwind City,38.46,80.61,8,0
    .goto Stormwind City,33.65,81.58,15,0
    .goto Stormwind City,31.12,79.42,15,0
    .goto Stormwind City,32.07,81.50,10,0
    .goto Stormwind City,32.63,80.62,8,0
    >>Exit the Mage Tower
    .goto Stormwind City,32.16,79.84,10 >>Travel toward |cRXP_FRIENDLY_Charys|r
step
    #completewith BankDeposit
    +|cRXP_WARN_DON'T Go below 1g 43s 30c|r
    .xp >22,1
step
    .goto Stormwind City,32.16,79.84
    >>Enter the building
    >>Talk to |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Buy|r |T134851:0|t[Lesser Mana Potions] |cRXP_BUY_and|r  |T134831:0|t[Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .itemcount 4827,1
    .target Charys Yserian
step
    .goto Stormwind City,32.16,79.84
    >>Enter the building
    >>Talk to |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Buy|r |T134851:0|t[Lesser Mana Potions] |cRXP_BUY_and|r  |T134831:0|t[Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .itemcount 4828,1
    .target Charys Yserian
step
    .goto Stormwind City,32.16,79.84
    >>Enter the building
    >>Talk to |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Buy|r |T134851:0|t[Lesser Mana Potions] |cRXP_BUY_and|r  |T134831:0|t[Healing Potions] |cRXP_BUY_from him (if they're up)|r
    .itemcount 4829,1
    .target Charys Yserian
step
    #label CharysEnd
    .goto Stormwind City,32.16,79.84
    >>Enter the building
    >>Talk to |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Buy|r |T134851:0|t[Lesser Mana Potions]|cRXP_BUY_,|r |T134831:0|t[Healing Potions]|cRXP_BUY_, and a|r |T132515:0|t[Cloth Belt] |cRXP_BUY_from him (if they're up, and if needed)|r
    .itemcount 4827,<1
    .itemcount 4828,<1
    .itemcount 4829,<1
    .target Charys Yserian
step
    #completewith next
    .goto Stormwind City,39.32,71.54,20,0
    .goto Stormwind City,41.06,69.44,20,0
    .goto Stormwind City,44.02,69.81,20,0
    .goto Stormwind City,46.32,66.93,20,0
    .goto Stormwind City,42.45,61.76,20,0
    .goto Stormwind City,41.17,63.74,15,0
    .goto Stormwind City,41.57,65.46,10 >>Travel toward |cRXP_FRIENDLY_Adair|r
step
    #label AdairX
    .goto Stormwind City,41.57,65.46
    >>Enter the building
    >>Talk to |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >> |cRXP_BUY_Buy non-intellect|r |T134943:0|t[Scrolls] |cRXP_BUY_from him (if they're up)|r
    .target Adair Gilroy
step
    #completewith next
    .goto Stormwind City,37.84,58.50,5,0
    .goto Stormwind City,37.81,45.02,20 >>Run up the edge of the wall instead of going around
step
    .goto Stormwind City,45.70,38.42
    >>Talk to |cRXP_FRIENDLY_Kristoff|r
    .turnin 346 >> Turn in Return to Kristoff
    .target Brother Kristoff
step
    .goto Stormwind City,55.25,7.07
    >>Talk to |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him if its up|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith next
    .goto Stormwind City,63.89,8.25,20 >> Travel to the Deeprun Tram
step
    #completewith next
    +|cRXP_WARN_Ride the Deeprun Tram whilst spam casting|r |T132816:0|t[Conjure Water r3]
step
    .zone Ironforge >> Take the Deeprun Tram to Ironforge
step
    .goto Ironforge,67.83,42.47
    >>Talk to |cRXP_FRIENDLY_Cogspinner|r
    .vendor 5175>>|cRXP_BUY_Buy a|r |T133024:0|t[Bronze Tube] |cRXP_BUY_from him if its up|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith BankDeposit
    .goto Ironforge,33.44,63.56,30 >>Enter the Ironforge Bank
step
    .goto Ironforge,35.93,60.13
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
    .goto Ironforge,35.93,60.13
    .bankwithdraw 4654 >> Withdraw the following items from your bank:
    >>|T134431:0|t[Mysterious Fossil]
    .target Bailey Stonemantle
step
    .goto Ironforge,25.50,7.04
    >>Talk to |cRXP_FRIENDLY_Milstaff|r
    .train 3562 >> Train |T135757:0|t[Teleport: Ironforge]
    .target Milstaff Stormeye
step
    #completewith FlyMene
    >>|cRXP_WARN_===PAY ATTENTION===|r
    +|cRXP_WARN_Respec to the Frost AoE spec|r
step
    .goto Ironforge,27.18,8.60
    >>Talk to |cRXP_FRIENDLY_Dink|r
    .train 10 >> Train Blizzard
    .target Dink
step
    #completewith next
    +|cRXP_WARN_Start spam casting|r |T132816:0|t[Conjure Water r3] |cRXP_WARN_to conjure as much water as possible before taking the flight|r
step
    #completewith next
    #label FlyMene
    .goto Ironforge,55.50,47.74
    >>Talk to |cRXP_FRIENDLY_Gryth|r
    .fly Menethil >> Fly to Menethil Harbor
    .target Gryth Thurden
step
    .zone Wetlands >> Travel to Wetlands
]])
